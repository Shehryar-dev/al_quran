
import 'package:al_quran/core/resources/constants/screen_path.dart';

class LeadingContentBody extends StatelessWidget {
  const LeadingContentBody({
    super.key,
    required this.list,
  });

  final QuranSuratListModel list;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
        radius: 20,
        backgroundColor: Colors.transparent,
        backgroundImage: AssetImage( HelperFunctions.isDarkMode(context) ? ImageString.star : ImageString.verseBorder ,),
        child: Text(list.id.toString(), style: Theme.of(context).textTheme.labelMedium!.apply(fontFamily: 'Ex-Bold', color: HelperFunctions.isDarkMode(context) ? AppColors.white : AppColors.appPurpleDark )));
  }
}
