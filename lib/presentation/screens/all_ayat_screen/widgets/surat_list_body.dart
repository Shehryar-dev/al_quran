
import 'package:al_quran/core/resources/constants/screen_path.dart';
import 'package:al_quran/presentation/screens/surat_screen/surat_screen.dart';

class SuratListBody extends StatelessWidget {
  const SuratListBody({
    super.key,
    required this.list,
  });

  final QuranSuratListModel list;

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.grey,
      elevation: 0.1,
      color: HelperFunctions.isDarkMode(context) ? AppColors.scafoldDark : Colors.white,
      child: ListTile(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> SuratScreen(url: list.link)));
        },
        dense: true,
        style: ListTileStyle.list,
        contentPadding: EdgeInsets.all(DSize.defaultSpace / 3),
        leading: LeadingContentBody(list: list),
        title: Text(list.transliteration , style: Theme.of(context).textTheme.titleLarge!.apply(fontFamily: 'Ex-Medium',color: HelperFunctions.isDarkMode(context) ? AppColors.white : AppColors.appPurpleDark )),
        subtitle: SubTitleRowBody(list: list),
        trailing: Text(list.name, style: Theme.of(context).textTheme.headlineMedium!.apply(fontFamily: 'Special-F',color: AppColors.appPurpleLight1),) ,
      ),
    );
  }
}
