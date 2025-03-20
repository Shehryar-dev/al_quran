
import 'package:al_quran/core/resources/constants/screen_path.dart';


class TabSection extends StatelessWidget {
  const TabSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 600,
      child: TabBarView(
          physics: NeverScrollableScrollPhysics(),
          children: [

            QuranHomeScreen(),

            SuratListScreen(),
            BookmarkScreen(),
            FeatureScreen(),
          ]),
    );
  }
}


