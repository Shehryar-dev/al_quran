
import 'package:al_quran/core/resources/constants/screen_path.dart';

class TabBarHeader extends StatelessWidget {
  const TabBarHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TabBar(
        indicatorColor:HelperFunctions.isDarkMode(context) ? AppColors.appPurpleLight1 : AppColors.appPurpleDark,
        labelColor:HelperFunctions.isDarkMode(context) ? AppColors.white : AppColors.appPurpleDark,
        unselectedLabelColor: Colors.grey,
        splashBorderRadius: BorderRadius.circular(10),
        dividerColor: HelperFunctions.isDarkMode(context) ? AppColors.scafoldDark : AppColors.white,
        isScrollable: MediaQuery.of(context).size.width > 360 ? true : false ,
        tabAlignment: TabAlignment.center,
        labelStyle: Theme.of(context).textTheme.labelLarge!.apply(fontFamily: 'Ex-Bold'),
        tabs: [
          Tab(
            text:'Read Quran',),
          Tab(text: 'Read Surat',),
          Tab(
            text: 'BookMarks',),
          Tab(text: 'Features',),
        ]);
  }
}
