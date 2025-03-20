
import 'package:al_quran/core/resources/constants/screen_path.dart';

class SubTitleRowBody extends StatelessWidget {
  const SubTitleRowBody({
    super.key,
    required this.list,
  });

  final QuranSuratListModel list;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(list.type, style: Theme.of(context).textTheme.labelMedium!.apply(fontFamily: 'Ex-Medium',color: Colors.grey ),),
        SizedBox(width: DSize.spaceBtwItems,),
        Text('${list.totalVerses} verse', style: Theme.of(context).textTheme.labelMedium!.apply(fontFamily: 'Ex-Medium',color: Colors.grey ))
      ],
    );
  }
}
