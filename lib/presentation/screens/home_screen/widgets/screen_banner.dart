import 'package:al_quran/core/resources/constants/screen_path.dart';
import 'package:al_quran/core/resources/loader/full_screen_loader.dart';

class HomeScreenBanner extends StatefulWidget {
  const HomeScreenBanner({super.key});

  @override
  State<HomeScreenBanner> createState() => _HomeScreenBannerState();
}

class _HomeScreenBannerState extends State<HomeScreenBanner> {
  late BookmarkBloc _bloc;
  @override
  void initState() {
    _bloc = BookmarkBloc();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          _bloc..add(FetchBookmarks()), // Fetch on initialization
      child: BlocBuilder<BookmarkBloc, BookmarkState>(
        buildWhen: (c, p) => c.bookmarks != p.bookmarks,
        builder: (context, state) {
          final bookmarkList = state.bookmarks;
          final lastBookmark =
              bookmarkList.isNotEmpty ? bookmarkList.last : null;

          return Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  AppColors.appPurpleLight1,
                  AppColors.appPurpleDark,
                ],
              ),
              borderRadius: BorderRadius.circular(DSize.borderRadiuslLg + 8),
            ),
            child: Material(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(DSize.borderRadiuslLg + 8),
              child: InkWell(
                onTap: () async {
                  if (lastBookmark != null) {
                    Future.delayed(const Duration(seconds: 1), () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LastRead(
                            title: 'Last Read',
                            image: ImageString.lastRead,
                            surahId: lastBookmark.surahId,
                            ayahId: lastBookmark.ayahNumber,
                          ),
                        ),
                      );
                    });
                  }
                },
                child: SizedBox(
                  child: Stack(
                    children: [
                      Positioned(
                        right: -10,
                        bottom: -47,
                        child: Opacity(
                          opacity: 0.7,
                          child: SizedBox(
                            height: 200,
                            width: 200,
                            child: Image.asset(
                              ImageString.banner,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(DSize.defaultSpace - 4),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Iconsax.book4,
                                  color: AppColors.appWhite,
                                ),
                                SizedBox(width: DSize.sm),
                                Text(
                                  'Last Read',
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium!
                                      .apply(
                                          color: AppColors.appWhite,
                                          fontFamily: 'Ex-Regular'),
                                ),
                              ],
                            ),
                            SizedBox(height: DSize.spacerBtwSections - 2),
                            Text(
                              lastBookmark?.transliteration ?? 'No Bookmark',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge!
                                  .apply(
                                      color: AppColors.appWhite,
                                      fontFamily: 'Ex-Medium'),
                            ),
                            Text(
                              lastBookmark != null
                                  ? 'Ayah no: ${lastBookmark.ayahNumber}'
                                  : '',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelLarge!
                                  .apply(
                                      color: AppColors.appWhite,
                                      fontFamily: 'Ex-Medium'),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
