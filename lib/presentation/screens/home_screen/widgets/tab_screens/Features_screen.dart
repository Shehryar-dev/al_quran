import 'package:al_quran/core/resources/constants/screen_path.dart';

class FeatureScreen extends StatelessWidget {
  const FeatureScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: DSize.spacerBtwSections,),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CardBox(image: ImageString.beadsIcon, title: 'Prayer Bead',
                onTap: ()=> Navigator.pushNamed(context, RoutesNames.beadsScreen)),
            CardBox(image: ImageString.namazIcon, title: 'Salah Time', onTap: ()=>
                Navigator.pushNamed(context, RoutesNames.salahTime)),
          ],
        ),
        SizedBox(height: DSize.spaceBtwItems,),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CardBox(image: ImageString.qiblaDirectionIcon, title: 'Qibla Finder', onTap: ()=> Navigator.pushNamed(context, RoutesNames.qiblaFinderScreen)),
            CardBox(image: ImageString.names99Icon, title: 'Asma-al Husna', onTap: ()=> Navigator.pushNamed(context, RoutesNames.asmaAlHusnaScreen)),
          ],
        ),

      ],
    );
  }
}