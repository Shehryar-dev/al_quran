import 'dart:math';

import 'package:al_quran/core/resources/constants/screen_path.dart';


class QiblaDirectionView extends StatefulWidget {
  const QiblaDirectionView({super.key});

  @override
  State<QiblaDirectionView> createState() => _QiblaDirectionViewState();
}

class _QiblaDirectionViewState extends State<QiblaDirectionView> with SingleTickerProviderStateMixin {
  late PermissionService permissionService;

  Animation<double>? animation;
  AnimationController? _animationController;

  double begin = 0.0;

  @override
  void initState() {
    permissionService = PermissionService();

    _animationController = AnimationController(vsync: this, duration: Duration(milliseconds: 500));
    animation = Tween(begin: 0.0 ,end: 0.0).animate(_animationController!);
    // TODO: implement initState
    super.initState();
  }
  @override
  void dispose() {
    _animationController!.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppBarTitleRow(image: ImageString.qiblaDirectionIcon , title: 'Qibla Finder'),
      ),


      body: FutureBuilder(
          future: permissionService.getPermission(),
          builder: (context, snapshot){
            if(permissionService.hasPermission){
              return StreamBuilder(stream: FlutterQiblah.qiblahStream,

                  builder: (context,snapshot){

                    if(snapshot.connectionState == ConnectionState.waiting){
                      return Center(
                        child: Lottie.asset(ImageString.loaderAnimation,
                            width: 300,height: 300),
                      );
                    }

                    final qiblaFinder = snapshot.data;
                    animation = Tween(begin: begin, end: (qiblaFinder!.qiblah * (pi / 180) *  -1)).animate(_animationController!);
                    begin = (qiblaFinder.qiblah * (pi / 180) *  -1);
                    _animationController!.forward(from: 0);
                    return Padding(
                      padding: const EdgeInsets.all(DSize.defaultSpace),
                      child: Center(
                        child: QiblaFinderBody(qiblaFinder: qiblaFinder, animation: animation),
                      ),
                    );
                  });
            }else{
              return EmptyScreen();
            }
          }),
    );
  }
}
