
import 'package:al_quran/core/resources/constants/screen_path.dart';

class QiblaFinderBody extends StatelessWidget {
  const QiblaFinderBody({
    super.key,
    required this.qiblaFinder,
    required this.animation,
  });

  final QiblahDirection? qiblaFinder;
  final Animation<double>? animation;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('${qiblaFinder!.direction.toInt()}°',style: Theme.of(context).textTheme.titleLarge!.apply(fontFamily: 'Ex-Regular'),),
        Container(
            padding: EdgeInsets.all(DSize.defaultSpace),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              gradient: LinearGradient(colors: [
                AppColors.appPurpleDark,
                AppColors.appPurpleLight1
              ]),
              image: DecorationImage(image: AssetImage(ImageString.pattern),fit: BoxFit.cover, opacity: .5),

              boxShadow: [
                BoxShadow(
                    offset: Offset(0, 5),
                    color:HelperFunctions.isDarkMode(context)? AppColors.scafoldDark.withOpacity(0.1) : AppColors.appPurpleLight1.withOpacity(.5),
                    spreadRadius: 5,
                    blurRadius: 5),
              ],
            ),
            child: AnimatedBuilder(animation: animation!,
                builder: (context, child)=> Transform.rotate(angle: animation!.value, child: Image(image: AssetImage('assets/images/qibla-finder.png')),)) )
      ],
    );
  }
}
