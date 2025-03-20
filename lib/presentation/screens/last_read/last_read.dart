import 'package:al_quran/core/resources/constants/screen_path.dart';

class LastRead extends StatefulWidget {
  final int surahId;
  final int ayahId;
  final String? title;
  final String? image;

  const LastRead({super.key, required this.surahId, required this.ayahId, this.title, this.image});

  @override
  State<LastRead> createState() => _LastReadState();
}

class _LastReadState extends State<LastRead> {
  late ScrollController _scrollController;
  late AllSurahBloc _bloc;

  @override
  void initState() {
    _bloc = AllSurahBloc(repository: getIT());
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  Widget build(BuildContext context) {
    print('${widget.surahId} - ${widget.ayahId}');
    final isDark = HelperFunctions.isDarkMode(context);
    return BlocProvider(
      create: (context) => _bloc..add(FetchAllSurahRecord()),
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(onPressed: (){
            Navigator.pushNamedAndRemoveUntil(context, RoutesNames.homeScreen, (route)=> false);
          }, icon: Icon(Iconsax.arrow_left)),
          iconTheme: IconThemeData(color: Colors.white),
          title: AppBarTitleRow(image: widget.image ?? ImageString.bookmark, title: widget.title ?? 'Bookmark'),
        ),
        body: BlocBuilder<AllSurahBloc, AllSurahState>(
          builder: (context, state) {
            List<GlobalKey> surahKeys = List.generate(
                state.response.data?.length ?? 0, (_) => GlobalKey());

            List<List<GlobalKey>> verseKeys = List.generate(
              state.response.data?.length ?? 0,
              (surahIndex) => List.generate(
                state.response.data?[surahIndex].verses.length ?? 0,
                (_) => GlobalKey(),
              ),
            );

            void scrollToSurahAndAyah(int surahId, int ayahId) {
              WidgetsBinding.instance.addPostFrameCallback((_) {
                if (_bloc.state.response.data != null) {
                  int surahIndex = _bloc.state.response.data!
                      .indexWhere((s) => s.id == surahId);

                  if (surahIndex != -1 &&
                      surahKeys[surahIndex].currentContext != null) {
                    Scrollable.ensureVisible(
                      surahKeys[surahIndex].currentContext!,
                      duration: Duration(milliseconds: 800),
                      curve: Curves.easeInOut,
                    ).then((value) {
                      int verseIndex = _bloc
                          .state.response.data![surahIndex].verses
                          .indexWhere((v) => v.id == ayahId);
                      if (verseIndex != -1 &&
                          verseKeys[surahIndex][verseIndex].currentContext !=
                              null) {
                        Scrollable.ensureVisible(
                          verseKeys[surahIndex][verseIndex].currentContext!,
                          duration: Duration(milliseconds: 800),
                          curve: Curves.easeInOut,
                        );
                      }
                    });
                  }
                }
              });
            }

            if (state.response.status == Status.completed &&
                state.response.data != null) {
              WidgetsBinding.instance.addPostFrameCallback((_) {
                  scrollToSurahAndAyah(widget.surahId, widget.ayahId);
              });

              return ListView.separated(
                controller: _scrollController,
                itemBuilder: (_, ind) {
                  var surah = state.response.data![ind]; // Current Surah Object
                  if (surah.id >= widget.surahId) {
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
                              key: surahKeys[ind],
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(ImageString.pattern),
                                      fit: BoxFit.cover,
                                      opacity: .3),
                                  boxShadow: [
                                    BoxShadow(
                                        offset: Offset(0, 5),
                                        color: isDark
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
                          VerseListWidgets(surah: surah, isDark: isDark, verseKeys: verseKeys, index: ind,),
                        ],
                      ),
                    );
                  } else {
                    return SizedBox();
                  }
                },
                separatorBuilder: (context, index) => Divider(
                  height: 3,
                  thickness: 3,
                  color: AppColors.appPurpleDark,
                ),
                itemCount: state.response.data!.length,
                // itemCount: 1,
              );
            }
            return Center(
              child: Lottie.asset(ImageString.loaderAnimation,
                  width: 300,height: 300),
            );
          },
        ),
      ),
    );
  }
}
