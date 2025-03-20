import 'package:al_quran/core/resources/constants/screen_path.dart';

class AsmaAlHusnaView extends StatefulWidget {
  const AsmaAlHusnaView({super.key});

  @override
  State<AsmaAlHusnaView> createState() => _AsmaAlHusnaViewState();
}

class _AsmaAlHusnaViewState extends State<AsmaAlHusnaView> {
  late AsmaAlHusnaBloc bloc;

  @override
  void initState() {
    bloc = AsmaAlHusnaBloc(repository: getIT());
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppBarTitleRow(image: ImageString.names99Icon, title: 'Asma-Al-Husna'),
      ),
      body: BlocProvider(
        create: (context) => bloc..add(FetchAllNames()),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(DSize.defaultSpace),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GridBuilderWidget()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
