


import 'package:al_quran/core/resources/constants/screen_path.dart';

class ReusableRow extends StatelessWidget {
  const ReusableRow({
    super.key,
    required this.name,
    required this.value,
  });

  final String name, value;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '$name:',
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .apply(color: AppColors.appWhite, fontFamily: 'Ex-Medium'),
        ),
        Text(
          value,
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .apply(color: AppColors.appWhite, fontFamily: 'Ex-Medium'),
        ),
      ],
    );
  }
}