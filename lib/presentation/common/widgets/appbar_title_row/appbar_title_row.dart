
import 'package:al_quran/core/resources/constants/screen_path.dart';

class AppBarTitleRow extends StatelessWidget {
  const AppBarTitleRow({
    super.key, this.width = 40, required this.image, required this.title,
  });
  final double width;
  final String image, title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image(
          image: AssetImage(image),
          width: width,
          fit: BoxFit.cover,
        ),
        SizedBox(width: 10),
        Text(
          title,
          style: Theme.of(context).textTheme.headlineMedium!.apply(
            color: Colors.white,
            fontFamily: 'Lita-Regular',
          ),
        )
      ],
    );
  }
}
