
import 'package:al_quran/core/resources/constants/screen_path.dart';

class CardNameBody extends StatelessWidget {
  const CardNameBody({
    super.key,
    required this.data,
  });

  final AllAsmaAlHusna data;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Positioned(
            top: 0,
            right: 0,
            child: CircleAvatar(
                backgroundColor: Colors.black,
                radius: 10,
                child: Text(data.number.toString(), style: Theme.of(context).textTheme.labelLarge!.apply(color: AppColors.white, fontFamily: 'Ex-Regular')))),
        SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(data.name, style: Theme.of(context).textTheme.headlineMedium!.apply(color: AppColors.white, fontFamily: 'IBM-Regular'),),
              Divider(height: 1,),
              SizedBox(height: DSize.sm,),
              Text(data.transliteration,style: Theme.of(context).textTheme.labelLarge!.apply(color: AppColors.white, fontFamily: 'Ex-Regular'), textAlign: TextAlign.center,),
              Divider(height: 1,),
              SizedBox(height: DSize.sm / 2,),
              Text(data.en.meaning,style: Theme.of(context).textTheme.labelSmall!.apply(color: AppColors.white, fontFamily: 'Ex-Regular'),textAlign: TextAlign.center,),
            ],
          ),
        )

      ],
    );
  }
}
