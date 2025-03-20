import 'package:al_quran/core/resources/constants/screen_path.dart';

class SalahTimeScreen extends StatefulWidget {
  @override
  State<SalahTimeScreen> createState() => _SalahTimeScreenState();
}

class _SalahTimeScreenState extends State<SalahTimeScreen> {
 late SalahTimeBloc bloc;

 @override
  void initState() {
   bloc = SalahTimeBloc(salahRepository: getIT());
   // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => bloc..add(FetchSalahTimes()),
      child: Scaffold(
        appBar: AppBar(
          title: AppBarTitleRow(title: 'Salah Time',image: ImageString.namazIcon,),
        ),
        body: BlocBuilder<SalahTimeBloc, SalahState>(
          builder: (context, state) {
            if (state is SalahLoading) {
              return Center(
                child: Lottie.asset(ImageString.loaderAnimation,
                    width: 300,height: 300),
              );
            } else if (state is SalahLoaded) {
              return _buildSalahUI(state.prayerTimes);
            } else if (state is SalahError) {
              return Center(child: Text(state.message, style: TextStyle(color: Colors.red)));
            }
            return Center(child: Text("Fetching Salah Times...", style: Theme.of(context).textTheme.titleLarge,));
          },
        ),
      ),
    );
  }

  Widget _buildSalahUI(Map<String, String> prayerTimes) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: prayerTimes.entries.map((entry) {
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(colors: [
                  AppColors.appPurpleDark,
                  AppColors.appPurpleLight1
                ]),
                image: DecorationImage(image: AssetImage(ImageString.pattern),fit: BoxFit.cover, opacity: .5),

                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 5),
                      color:HelperFunctions.isDarkMode(context)? AppColors.scafoldDark.withOpacity(0.5) : AppColors.appPurpleLight1.withOpacity(.2),
                      spreadRadius: 5,
                      blurRadius: 5),
                ],
              ),
              margin: EdgeInsets.symmetric(vertical: 8),
              child: Card(
                color:HelperFunctions.isDarkMode(context)? AppColors.scafoldDark.withOpacity(0.05) : Colors.transparent,
                child: ListTile(
                  title: Text(entry.key, style: Theme.of(context).textTheme.titleLarge!.apply(color: Colors.white,fontFamily: 'Ex-Bold')),
                  trailing: Text(entry.value, style: Theme.of(context).textTheme.titleLarge!.apply(color: Colors.white,fontFamily: 'Ex-Bold')),
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
