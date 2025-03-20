
import 'package:al_quran/core/resources/constants/screen_path.dart';

class CardBox extends StatelessWidget {
  final String image;
  final String title;
  final VoidCallback onTap;
  const CardBox({
    super.key, required this.image, required this.title, required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 165,
        height: 165,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(colors: [
            AppColors.appPurpleDark,
            AppColors.appPurpleLight1
          ]),
          image: DecorationImage(image: AssetImage(image),fit: BoxFit.cover, opacity: .2),

          boxShadow: [
            BoxShadow(
                offset: Offset(0, 5),
                color:HelperFunctions.isDarkMode(context)? AppColors.scafoldDark.withOpacity(0.5) : AppColors.appPurpleLight1.withOpacity(.2),
                spreadRadius: 5,
                blurRadius: 5),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width:60,
              height: 60,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColors.appWhite,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(100)
              ),
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.all(DSize.sm),
                child: Image(image: AssetImage(image)),
              ),
            ),
            Text(title, style: Theme.of(context).textTheme.titleLarge!.apply(color: Colors.white, fontFamily: 'Ex-Bold'),),
          ],
        ),
      ),
    );
  }
}