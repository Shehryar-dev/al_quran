import 'package:al_quran/core/resources/constants/screen_path.dart';
import 'package:intl/intl.dart';

class TasbeehState extends StatelessWidget {
  const TasbeehState({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BeadsCounterBloc, BeadsCounterState>(
      buildWhen: (c, p)=> c.time != p.time || c.count != p.count ,
      builder: (context, state) {
        return Container(
            width: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    AppColors.appPurpleLight1,
                    AppColors.appPurpleDark
                  ],
                ),
                image: DecorationImage(image: AssetImage(ImageString.pattern),fit: BoxFit.cover,opacity: .3),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 5),
                      color:HelperFunctions.isDarkMode(context)? AppColors.scafoldDark.withOpacity(0.5) : AppColors.appPurpleLight1.withOpacity(.5),
                      spreadRadius: 5,
                      blurRadius: 5)
                ],
                borderRadius: BorderRadius.circular(20)),
            child: Padding(
              padding: const EdgeInsets.all(DSize.defaultSpace),
              child: Column(
                children: [
                  ReusableRow(name: 'Total Count Tasbeeh',value: state.count.toString(),),
                  SizedBox(
                    height: DSize.spaceBtwItems,
                  ),
                  Divider(
                    height: 3,
                  ),
                  Divider(
                    height: 3,
                  ),
                  SizedBox(
                    height: DSize.spaceBtwItems,
                  ),
                  ReusableRow(name: 'Today Tasbeeh Count', value: state.todayBeadsCount.toString()),
                  SizedBox(height: DSize.spaceBtwItems),
                  Divider(
                    height: 3,
                  ),
                  Divider(
                    height: 3,
                  ),
                  SizedBox(height: DSize.spaceBtwItems),
                  ReusableRow(name: 'Overall Tasbeeh Count', value: state.overallBeadsCount.toString()),


                  SizedBox(height: DSize.spaceBtwItems),
                  Divider(
                    height: 3,
                  ),
                  Divider(
                    height: 3,
                  ),
                  SizedBox(height: DSize.spaceBtwItems),
                  ReusableRow(name: 'Remaining Tasbeeh Count', value: '${state.count == 0  ? 100 : 100 - state.count }'),
                  SizedBox(height: DSize.spaceBtwItems),
                  Divider(
                    height: 3,
                  ),
                  Divider(
                    height: 3,
                  ),
                  SizedBox(height: DSize.spaceBtwItems),
                  ReusableRow(name: 'Current Date', value: DateFormat.yMMMEd().format(DateTime.now()).toString()),
                  SizedBox(height: DSize.spaceBtwItems),
                  Divider(
                    height: 3,
                  ),
                  Divider(
                    height: 3,
                  ),
                  SizedBox(height: DSize.spaceBtwItems),
                  ReusableRow(name: 'Current Time', value:DateFormat('hh:mm:ss a')
                      .format(DateTime.now())
                      .toString()),
                  SizedBox(height: DSize.spaceBtwItems),
                  Divider(
                    height: 3,
                  ),
                  Divider(
                    height: 3,
                  ),
                  SizedBox(height: DSize.spaceBtwItems),
                  ReusableRow(name: 'Last Tasbeeh Time', value: DateFormat('hh:mm a').format(state.time ??   DateTime.now()).toString())

                ],
              ),
            ));
      },
    );
  }
}
