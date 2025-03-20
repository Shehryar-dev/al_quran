
import '../../../core/resources/constants/screen_path.dart';

class SuratListScreen extends StatefulWidget {
  const SuratListScreen({super.key});

  @override
  State<SuratListScreen> createState() => _SuratListScreenState();
}

class _SuratListScreenState extends State<SuratListScreen> {
  late SuratListBloc suratListBloc;

  @override
  void initState() {
    suratListBloc = SuratListBloc(repository: getIT());
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    suratListBloc.close();

    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return  BlocProvider(
      create: (context) => suratListBloc..add(FetchSuratList()),
      child: BlocBuilder<SuratListBloc, SuratListState>(
        buildWhen: (c, p) => c.response != p.response,
          builder: (context, state) {
            switch (state.response.status) {
              case Status.loading:
                return Center(
                  child: Lottie.asset(ImageString.loaderAnimation,
                      width: 300,height: 300),
                );
              case Status.error:
                return Center(
                  child: Text('No Data Found'),
                );
              case Status.completed:
                return SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(DSize.defaultSpace /2.5),
                        child: ListView.separated(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemBuilder: (context,index){
                              var list = state.response.data![index];
                              return SuratListBody(list: list);
                            },
                            separatorBuilder: (context,i){
                              return SizedBox(height: DSize.spaceBtwItems,);
                            }, itemCount: state.response.data!.length),
                      ),
                    ],
                  ),
                );

              default:
                return SizedBox.shrink();
            }
          }),
    );
  }
}
