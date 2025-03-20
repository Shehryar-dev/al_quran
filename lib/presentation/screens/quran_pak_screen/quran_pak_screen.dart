import 'package:al_quran/core/resources/constants/screen_path.dart';
import 'package:al_quran/presentation/screens/quran_pak_screen/widgets/verse_list.dart';


class QuranPakScreen extends StatefulWidget {
  const QuranPakScreen({super.key});

  @override
  State<QuranPakScreen> createState() => _QuranPakScreenState();
}

class _QuranPakScreenState extends State<QuranPakScreen> {
  late AllSurahBloc allSurahBloc;

  @override
  void initState() {
    allSurahBloc = AllSurahBloc(repository: getIT());
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    allSurahBloc.close();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final darkMode = HelperFunctions.isDarkMode(context);
    return Scaffold(
        appBar: AppBar(
          title: AppBarTitleRow(image: ImageString.quranPak , title: 'Quran Pak'),
        ),
        body: BlocProvider(
          create: (context) => allSurahBloc..add(FetchAllSurahRecord()),
          child: BlocBuilder<AllSurahBloc, AllSurahState>(
              buildWhen: (c, p) => c.response != p.response,
              builder: (context, state) {
                switch (state.response.status) {
                  case Status.loading:
                    return Center(
                      child: Lottie.asset(ImageString.loaderAnimation,
                          width: 300, height: 300),
                    );

                  case Status.error:
                    return Center(child: Text('No Data Found'));

                  case Status.completed:
                    return ListView.separated(
                      itemBuilder: (_, ind) {
                        var surah =
                            state.response.data![ind]; // Current Surah Object

                        return Padding(
                          padding: const EdgeInsets.all(DSize.defaultSpace / 2),
                          child: Column(
                            crossAxisAlignment:
                                CrossAxisAlignment.start, // Align text properly
                            children: [
                              SizedBox(
                                height: DSize.spaceBtwItems,
                              ),

                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image:
                                              AssetImage(ImageString.pattern),
                                          fit: BoxFit.cover,
                                          opacity: .3),
                                      boxShadow: [
                                        BoxShadow(
                                            offset: Offset(0, 5),
                                            color: darkMode
                                                ? AppColors.scafoldDark
                                                : AppColors.appPurpleLight1
                                                    .withOpacity(.3),
                                            spreadRadius: 2,
                                            blurRadius: 5)
                                      ],
                                      gradient: LinearGradient(
                                        colors: [
                                          AppColors.appPurpleLight1,
                                          AppColors.appPurpleDark
                                        ],
                                      ),
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(
                                        DSize.defaultSpace / 2),
                                    child: Center(
                                      child: Column(
                                        children: [
                                          Text(
                                            surah.transliteration.toString(),
                                            textAlign: TextAlign.end,
                                            style: Theme.of(context)
                                                .textTheme
                                                .headlineMedium!
                                                .apply(
                                                    fontFamily: 'Lita-Regular',
                                                    color: AppColors.appWhite),
                                          ),
                                          SizedBox(
                                            height: DSize.spaceBtwItems / 4,
                                          ),
                                          Text(
                                            '[${surah.name}]',
                                            textAlign: TextAlign.end,
                                            style: Theme.of(context)
                                                .textTheme
                                                .titleLarge!
                                                .apply(
                                                    fontFamily: 'Not-Bold',
                                                    color: AppColors.appWhite),
                                          ),
                                          SizedBox(
                                            height: DSize.spaceBtwItems,
                                          ),
                                          Text(
                                            '${surah.total_verses} Ayat | ${surah.type}',
                                            textAlign: TextAlign.end,
                                            style: Theme.of(context)
                                                .textTheme
                                                .titleMedium!
                                                .apply(
                                                    fontFamily: 'Ex-Medium',
                                                    color: AppColors.appWhite),
                                          ),
                                          SizedBox(
                                            height: DSize.spaceBtwItems / 4,
                                          ),
                                          Image(
                                            image: AssetImage(
                                                ImageString.bismillah),
                                            width: double.infinity,
                                            height: 200,
                                            fit: BoxFit.cover,
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),

                              SizedBox(
                                height: DSize.spaceBtwItems,
                              ),

                              // Inner ListView for Verses
                              SurahVerseList(surah: surah, darkMode: darkMode),
                            ],
                          ),
                        );
                      },
                      separatorBuilder: (context, index) => Divider(
                        height: 3,
                        thickness: 3,
                        color: AppColors.appPurpleDark,
                      ),
                      itemCount: state.response.data!.length,
                      // itemCount: 1,
                    );

                  default:
                    return SizedBox();
                }
              }),
        ));
  }
}
