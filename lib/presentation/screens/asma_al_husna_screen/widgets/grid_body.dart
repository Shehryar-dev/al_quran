
import 'package:al_quran/core/resources/constants/screen_path.dart';
class GridBuilderWidget extends StatelessWidget {
  const GridBuilderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AsmaAlHusnaBloc, AsmaAlHusnaState>(
      builder: (context, state) {
        switch(state.response.status){
          case Status.loading:
            return Center(child: Lottie.asset(ImageString.loaderAnimation, width: 300,height: 300),);
          case Status.completed:
            return GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisSpacing: 5,crossAxisSpacing: 5, childAspectRatio: 1),
                itemCount: state.response.data!.data.length,
                itemBuilder: (context, index){
                  final data = state.response.data!.data[index];
                  return CardWidget(data: data);
                });
          case Status.error:
            return Center(
              child: Text('Error'),
            );
          default:
            return Center(
              child: Text('No Data Found'),
            );
        }
      },
    );
  }
}
