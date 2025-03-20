import 'package:al_quran/core/resources/constants/screen_path.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: AppBarTitleRow(
          image: ImageString.quranPakIcon,
          title: 'Al-Quran App',
          width: 48,
        ),
        actions: [
          Center(
            child: BlocBuilder<AppBloc, AppState>(
              buildWhen: (c, p) => c.isDark != p.isDark,
              builder: (context, state) {
                return LightDarkThemeToggle(
                  value: state.isDark,
                  onChanged: (bool value) {
                    context.read<AppBloc>().add(ChangeThemeEvent(value));
                  },
                  size: 36.0,
                  themeIconType: ThemeIconType.expand,
                  color: HelperFunctions.isDarkMode(context)
                      ? AppColors.appWhite
                      : AppColors.appOrange,
                  tooltip: 'Toggle Theme',
                  duration: Duration(milliseconds: 500),
                  curve: Curves.easeInOut,
                );
              },
            ),
          ),
          SizedBox(width: DSize.spaceBtwItems / 2),
        ],
      ),
      body: DefaultTabController(
        length: 4,
        initialIndex: 0,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(DSize.defaultSpace / 1.7),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GradientText(
                  'Assalamualaikum',
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium!
                      .apply(fontFamily: 'Lita-Regular'),
                  colors: HelperFunctions.isDarkMode(context)
                      ? [AppColors.appWhite, AppColors.appPurpleLight1]
                      : [
                    AppColors.appPurpleDark,
                    AppColors.appPurple,
                    AppColors.appPurpleLight1,
                  ],
                ),
                SizedBox(height: DSize.spaceBtwItems),
                HomeScreenBanner(),
                SizedBox(height: DSize.spacerBtwSections / 2),
                TabBarHeader(),
                TabSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return HomePrimaryHeaderWidget(
        child: Padding(
      padding: const EdgeInsets.all(DSize.defaultSpace / 2),
      child: Column(
        children: [
          SizedBox(
            height: DSize.sm + 4,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Lottie.asset('assets/animations/ramadan-kareem.json',
                  width: 100, height: 100),
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Monday',
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .apply(fontFamily: 'Lita-Regular', color: Colors.white),
                  ),
                  Text(
                    '2 Ramadan',
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall!
                        .apply(fontFamily: 'Ex-Bold', color: Colors.white),
                  ),
                  Text(
                    '3-3-2025',
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall!
                        .apply(fontFamily: 'Ex-Bold', color: Colors.white),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    ));
  }
}

class HomeMainSection extends StatelessWidget {
  const HomeMainSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(DSize.defaultSpace),
      child: Column(
        children: [
          SizedBox(
            height: DSize.spacerBtwSections,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Features',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .apply(fontFamily: 'Lita-Regular'),
              ),
              InkWell(
                  onTap: () {},
                  child: Text(
                    'View All',
                    style: Theme.of(context).textTheme.titleSmall!.apply(
                        fontFamily: 'EX-Regular',
                        decoration: TextDecoration.underline),
                  ))
            ],
          ),
          SizedBox(
            height: DSize.spaceBtwItems,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 176,
                width: 176,
                child: Card(
                  borderOnForeground: true,
                  semanticContainer: true,
                  child: Container(
                    alignment: Alignment.center,
                    child: InkWell(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SuratListScreen())),
                      child: Text('All Surah List'),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 176,
                width: 176,
                child: Card(
                  borderOnForeground: true,
                  semanticContainer: true,
                  child: Container(
                    alignment: Alignment.center,
                    child: Icon(Iconsax.add),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: DSize.spaceBtwItems / 1.5,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 176,
                width: 176,
                child: Card(
                  borderOnForeground: true,
                  semanticContainer: true,
                  child: Container(
                    alignment: Alignment.center,
                    child: Icon(Iconsax.add),
                  ),
                ),
              ),
              SizedBox(
                height: 176,
                width: 176,
                child: Card(
                  borderOnForeground: true,
                  semanticContainer: true,
                  child: Container(
                    alignment: Alignment.center,
                    child: Icon(Iconsax.add),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
