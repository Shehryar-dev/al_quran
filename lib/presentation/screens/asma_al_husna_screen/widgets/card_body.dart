
import 'package:al_quran/core/resources/constants/screen_path.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    super.key,
    required this.data,
  });

  final AllAsmaAlHusna data;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: CircleBorder(),
      child: Container(

        padding: EdgeInsets.all(DSize.defaultSpace/ 1.2),
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            AppColors.appPurpleDark,
            AppColors.appPurpleLight1
          ]),
          borderRadius: BorderRadius.circular(20),

          image: DecorationImage(image: AssetImage(ImageString.pattern),fit: BoxFit.cover,opacity: .3),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 5),
                color:HelperFunctions.isDarkMode(context)? AppColors.scafoldDark.withOpacity(0.5) : AppColors.appPurpleLight1.withOpacity(.10),
                spreadRadius: 5,
                blurRadius: 5)
          ],
        ),
        child: CardNameBody(data: data),
      ),
    );
  }
}
