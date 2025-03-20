
import '../../../core/resources/constants/screen_path.dart';

class SuratScreen extends StatefulWidget {
  final String url;
  const SuratScreen({super.key, required this.url});

  @override
  State<SuratScreen> createState() => _SuratScreenState();
}

class _SuratScreenState extends State<SuratScreen> {
  late QuranPakSuratBloc _bloc;

  @override
  void dispose() {
    _bloc.close();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  void initState() {
    _bloc = QuranPakSuratBloc(repository: getIT(), url: widget.url);
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final darkMode = HelperFunctions.isDarkMode(context);
    return SafeArea(
      child: Scaffold(
        body: BlocProvider(
          create: (context) => _bloc..add(FetchSuratEvent()),
          child: BlocBuilder<QuranPakSuratBloc, QuranPakSuratState>(
              buildWhen: (c, p) => c.response != p.response,
              builder: (context, state) {
                final surat = state.response.data;
                switch (state.response.status) {
                  case Status.loading:
                    return Center(
                      child: Lottie.asset(ImageString.loaderAnimation,
                          width: 300, height: 300),
                    );
                  case Status.completed:
                    return SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              alignment: Alignment.bottomCenter,
                              width: double.infinity,
                              height: 80,
                              decoration: BoxDecoration(
                                color: darkMode
                                    ? AppColors.scafoldDark
                                    : AppColors.appPurpleLight1,
                                image: DecorationImage(
                                    image: AssetImage(darkMode
                                        ? ImageString.headdress3
                                        : ImageString.headdress2),
                                    fit: darkMode
                                        ? BoxFit.fitHeight
                                        : BoxFit.cover),
                              ),
                              child: GradientTextWidget(surat: surat, darkMode: darkMode)),
                          SizedBox(
                            height: DSize.spaceBtwItems,
                          ),
                          VerseList(surat: surat, darkMode: darkMode)
                        ],
                      ),
                    );
                  case Status.error:
                    return Center(
                      child: Text('Failed'),
                    );

                  default:
                    return SizedBox.shrink();
                }
              }),
        ),
      ),
    );
  }
}
