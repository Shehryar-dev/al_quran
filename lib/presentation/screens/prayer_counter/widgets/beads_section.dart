
import 'package:al_quran/core/resources/constants/screen_path.dart';

class BeadsMain extends StatelessWidget {
  const BeadsMain({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(0, -40),
      child: Container(
        width: 150,
        height: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(50),
            bottomLeft: Radius.circular(50),
          ),
          gradient: LinearGradient(
            colors: [
              AppColors.appPurpleLight1,
              AppColors.appPurpleDark
            ],
          ),
          image: DecorationImage(image: AssetImage(ImageString.pattern),fit: BoxFit.cover,opacity: .5),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 5),
                color: HelperFunctions.isDarkMode(context)? AppColors.scafoldDark.withOpacity(0.1) : AppColors.appPurpleLight1.withOpacity(.5),
                spreadRadius: 2,
                blurRadius: 5)
          ],
        ),
        child: Column(
          children: [
            BlocBuilder<BeadsCounterBloc, BeadsCounterState>(
              buildWhen: (c, p)=> c.count != p.count,
              builder: (context, state) {
                return ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        maximumSize: Size(80, 80),
                        shape: CircleBorder(),
                        backgroundColor:
                        AppColors.appWhite.withOpacity(.5)),
                    onPressed: () {
                      context
                          .read<BeadsCounterBloc>()
                          .add(PrayersBeadsCountEvent());
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(
                          DSize.spaceBtwItems / 1.5),
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage(ImageString.pattern),fit: BoxFit.cover,opacity: .5),
                          gradient: LinearGradient(
                            colors: [
                              AppColors.appPurpleLight1,
                              AppColors.appPurpleDark,
                              // AppColors.appPurple
                            ],
                          ),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ));
              },
            ),
            SizedBox(
              height: DSize.spaceBtwItems,
            ),
            BlocBuilder<BeadsCounterBloc, BeadsCounterState>(
              buildWhen: (c, p)=> c.count != p.count,
              builder: (context, state) {
                return InkWell(
                  onTap: (){
                    context
                        .read<BeadsCounterBloc>()
                        .add(PrayersBeadsResetEvent());

                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: AppColors.brandLightPurple
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(DSize.sm - 2),
                      child: Text(
                        'Reset',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .apply(
                            color: AppColors.error,
                            fontFamily: 'Ex-Medium'
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}