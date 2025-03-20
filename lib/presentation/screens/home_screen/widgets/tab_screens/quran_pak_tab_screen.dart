import 'package:al_quran/core/resources/constants/screen_path.dart';

class QuranHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Padding(
        padding:  EdgeInsets.all(DSize.spacerBtwSections),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 350,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    AppColors.appPurple,
                    AppColors.appPurpleLight1,
                    // AppColors.appPurpleDark
                  ],
                  tileMode: TileMode.mirror,
                  transform: GradientRotation(-5),
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight
                ),
                image: DecorationImage(
                  image: AssetImage(ImageString.banner3,),
                  fit: BoxFit.cover,
                  scale: 1,
                  opacity: 0.4,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  /// 🕌 Quran Kareem Title
                  Text(
                    "القرآن الكريم",
                    style: Theme.of(context)
                        .textTheme
                        .headlineLarge!
                        .apply(color: AppColors.appWhite, fontFamily: 'IBM-Bold'),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: DSize.spaceBtwItems),

                  /// 🔹 Quran Details (Surat, Ayats, Tarjuma)
                  ReusableRow(name: "Total Surahs", value: "114"),
                  Divider(height: 3,),
                  SizedBox(height: DSize.spaceBtwItems / 2),
                  ReusableRow(name: "Ayats", value: "6,236"),
                  Divider(height: 3,),

                  SizedBox(height: DSize.spaceBtwItems / 2),
                  ReusableRow(name: "Translation", value: "Urdu"),
                  Divider(height: 3,),

                  SizedBox(height: DSize.spaceBtwItems),

                  /// 📖 Quran Introduction
                  Text(
                    "قرآن پاک وہ کتاب ہے جو اللہ تعالیٰ نے اپنے آخری نبی حضرت محمدﷺ پر نازل کی، جو قیامت تک انسانوں کے لئے ہدایت کا ذریعہ ہے۔",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyLarge!.apply(color: AppColors.appWhite, fontFamily: 'Not-Regular',),
                  ),


                ],
              ),
            ),



            SizedBox(height: DSize.spaceBtwItems),

            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, RoutesNames.quranPakScreen);
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Text(
                "Start Reading Quran",
                style:  Theme.of(context).textTheme.titleLarge!.apply(color: AppColors.appWhite, fontFamily: 'Ex-Medium'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

