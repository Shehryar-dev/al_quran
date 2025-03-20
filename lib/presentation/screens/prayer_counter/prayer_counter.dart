import 'package:al_quran/core/resources/constants/screen_path.dart';


class PrayerCounter extends StatefulWidget {
  const PrayerCounter({super.key});

  @override
  State<PrayerCounter> createState() => _PrayerCounterState();
}

class _PrayerCounterState extends State<PrayerCounter> {
  late BeadsCounterBloc bloc;

  @override
  void initState() {
    bloc = BeadsCounterBloc();
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print('state update');
    return BlocProvider(
      create: (context) => bloc,
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.white
          ),
          title: AppBarTitleRow(image: ImageString.beadsIcon , title: 'Tasbeeh Counter'),

        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(DSize.defaultSpace),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(width: double.infinity,),
                BeadsHeader(),
                BeadsMain(),

                TasbeehState()
              ],
            ),
          ),
        ),


      ),
    );
  }
}



