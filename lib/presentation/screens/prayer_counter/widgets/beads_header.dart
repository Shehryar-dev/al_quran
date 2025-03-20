
import 'package:al_quran/core/resources/constants/screen_path.dart';

class BeadsHeader extends StatelessWidget {
  const BeadsHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(ImageString.pattern),fit: BoxFit.cover, opacity: .5),
        borderRadius: BorderRadius.circular(100),
        gradient: LinearGradient(
          colors: [
            AppColors.appPurpleLight1,
            AppColors.appPurpleDark
          ],
        ),

        boxShadow: [
          BoxShadow(
              offset: Offset(0, 5),
              color: HelperFunctions.isDarkMode(context)? AppColors.scafoldDark.withOpacity(0.5) : AppColors.appPurpleLight1.withOpacity(.5),
              spreadRadius: 5,
              blurRadius: 5),
        ],
      ),
      child: BlocBuilder<BeadsCounterBloc, BeadsCounterState>(
        buildWhen: (c, p)=> c.count != p.count,
        builder: (context, state) {
          return Container(
            decoration: BoxDecoration(
              color: AppColors.brandLightPurple,
              borderRadius: BorderRadius.circular(8),
            ),
            padding:
            EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            child: Text(
              state.count.toString(),
              style: Theme.of(context).textTheme.titleLarge!.apply(
                  color: AppColors.appPurpleDark,
                  letterSpacingDelta: 2,
                  fontFamily: 'Ex-Bold'),
            ),
          );
        },
      ),
    );
  }
}