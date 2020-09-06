import 'package:flutter/cupertino.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:pinch_zoom_image_last/pinch_zoom_image_last.dart';
import 'package:tignasseapp/export.dart';
import 'package:tignasseapp/screen/book/open_book_layer/open_full_book_view_model.dart';
import '../../../common/util.dart';
import 'package:vector_math/vector_math_64.dart' show Vector3;

import '../../../common/util.dart';

class OpenFullScreenBook extends StatefulWidget {
  final List<String> imageUrl;
  final int index;

  const OpenFullScreenBook({Key key, this.imageUrl, this.index}) : super(key: key);

  @override
  OpenFullScreenBookState createState() => OpenFullScreenBookState();
}

class OpenFullScreenBookState extends State<OpenFullScreenBook> {
  List<String> stringRes = [
    "08 Etat de grace",
    "24 into the wild",
    "30 Tout en rousseur",
    "40 Fortes impressions",
    "48 Têtes chercheuses",
    "58 L’effet frange",
    "70 Accord majeur",
    "80 L’offensive des reflets",
    "90 Onde de chic"
  ];

  bool isSideMenuShow = false;
  bool istrue = false;

  bool isLandScape = false;
  bool isAutoPlay = false;
  int currentIndexShow;

  @override
  void initState() {
    super.initState();
    currentIndexShow = widget.index;
  }

  @override
  dispose() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    super.dispose();
  }

  OpenFullBookViewModel model;

  @override
  Widget build(BuildContext context) {
    model ?? (model = OpenFullBookViewModel(this));

    istrue = Utils.getOrientation(context) == Orientation.portrait;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black.withOpacity(0.5),
        body: Stack(
          children: [
//            CommonBackGroundImage.networkImageBook(context, widget.imageUrl),

            Container(
              height: Utils.getDeviceHeight(context),
              child: Swiper(
                itemBuilder: (BuildContext context, int index) {
                  currentIndexShow = index;
                  return Center(
                    child: PinchZoomImage(
                      image: CachedNetworkImage(
                          imageUrl: widget.imageUrl[index], fit: BoxFit.contain),
                      zoomedBackgroundColor: Color.fromRGBO(240, 240, 240, 1.0),
                      hideStatusBarWhileZooming: true,
                    ),
                  );

           //                return new Image.network(widget.imageUrl[index], fit: BoxFit.contain);
                },
                itemCount: widget.imageUrl.length,
                index: currentIndexShow,
               autoplay: isAutoPlay,
              ),
            ),

            Container(
              height: 70,
              color: Colors.black.withOpacity(0.6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: AllText("SUMMARY",
                          fontSize: 17, color: ColorRes.white)),
                  Align(
                    alignment: Alignment.topRight,
                    child: CommonView.closeIcons(context),
                  ),
                ],
              ),
            ),
            isSideMenuShow
                ? Container(
                    height: Utils.getDeviceHeight(context),
                    width: Utils.getDeviceWidth(context) / 2,
                    color: Colors.black.withOpacity(0.5),
                    margin: EdgeInsets.only(top: 70, bottom: 70),
                    padding: EdgeInsets.only(top: 10, left: 25),
                    child: ListView.builder(
                        itemCount: 9,
                        itemBuilder: (context, index) {
                          return AllText(stringRes[index],
                              color: ColorRes.white, fontSize: 16);
                        }),
                  )
                : Container(),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 70,
                color: Colors.black.withOpacity(0.6),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SizedBox(width: 10),
                        iconsShow("scap1", 1),
                        SizedBox(width: 10),
                        iconsShow("scap2", 2),
                        SizedBox(width: 10),
                        iconsShow("scap3", 3),
                        SizedBox(width: 10),
                      ],
                    ),
                    Row(
                      children: [
                        iconsShow("refresh", 4),
//                        iconsShow(Icons.refresh, 2),
                        SizedBox(width: 10),
                        iconsShow("play", 5),
//                        iconsShow(Icons.play_arrow, 2),
                        SizedBox(width: 10),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

//
//  changeModImage() {
//    return ;
//  }

  iconsShow(String icon, int i) {
    return InkResponse(
      onTap: () {
        if (i == 1) {
          isSideMenuShow = !isSideMenuShow;
          setState(() {});
        } else if (i == 4) {
          if (isLandScape) {
            SystemChrome.setPreferredOrientations([
              DeviceOrientation.portraitUp,
              DeviceOrientation.portraitDown,
            ]);
          } else {
            SystemChrome.setPreferredOrientations([
              DeviceOrientation.landscapeRight,
              DeviceOrientation.landscapeLeft,
            ]);
          }
          isLandScape = !isLandScape;
        } else {
          setState(() {
            isAutoPlay = !isAutoPlay;
          });
        }
      },
      child: Image(
          height: istrue
              ? Utils.getDeviceWidth(context) / 10
              : Utils.getDeviceHeight(context) / 10,
          width: istrue
              ? Utils.getDeviceWidth(context) / 10
              : Utils.getDeviceHeight(context) / 10,
          image: AssetImage(Utils.getAssetsIcons(icon))),
      /*  child: Container(
        height: Utils.getDeviceWidth(context) / 8,
        width: Utils.getDeviceWidth(context) / 8,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(width: 2, color: ColorRes.white)),
        child: Icon(
          icon,
          size: Utils.getDeviceWidth(context) / 12,
          color: ColorRes.white,
        ),
      ),*/
    );
  }
}
