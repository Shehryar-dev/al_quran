import 'package:al_quran/core/resources/constants/screen_path.dart';
import 'package:al_quran/presentation/screens/qibla_direction/qibla_direction_screen.dart';

class EmptyScreen extends StatelessWidget {
  const EmptyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: (){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> QiblaDirectionView()));
        },
        child: SizedBox(
            width: 300,
            height: 300,
            child: Lottie.asset(ImageString.address404)),
      ),
    );
  }
}
