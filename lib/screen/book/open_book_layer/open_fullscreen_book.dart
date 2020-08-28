import 'package:tignasseapp/export.dart';

class OpenFullScreenBook extends StatefulWidget {
  @override
  _OpenFullScreenBookState createState() => _OpenFullScreenBookState();
}

class _OpenFullScreenBookState extends State<OpenFullScreenBook> {

  List<String> stringRes = ["08 Etat de grace", "24 into the wild", "30 Tout en rousseur", "40 Fortes impressions", "48 Têtes chercheuses", "58 L’effet frange", "70 Accord majeur", "80 L’offensive des reflets", "90 Onde de chic"];

  bool isSideMenuShow = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            CommonBackGroundImage.image1(context),
            Container(
              height: 70,
              color: Colors.black.withOpacity(0.6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: AllText("SOMMAIRE", fontSize: 20, color: ColorRes.white)),
                  Align(
                    alignment: Alignment.topRight,
                    child: CommonView.closeIcons(context),
                  ),
                ],
              ),
            ),


            isSideMenuShow ? Container(
              height: Utils.getDeviceHeight(context),
              width: Utils.getDeviceWidth(context) / 2,
              color: Colors.black.withOpacity(0.5),
              margin: EdgeInsets.only(top: 70, bottom: 70),
              padding: EdgeInsets.only(top: 10, left: 25),
              child: ListView.builder(
                  itemCount: 9,
                  itemBuilder: (context, index) {
                return AllText(stringRes[index], color: ColorRes.white, fontSize: 16);
              }),
            ) : Container(),

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

        if(i == 1) {
          isSideMenuShow = !isSideMenuShow;
          setState(() {});
        } else if(i == 4) {


        } else  {


        }

      },
      child: Image(
          height: Utils.getDeviceWidth(context) / 10,
          width: Utils.getDeviceWidth(context) / 10,
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
