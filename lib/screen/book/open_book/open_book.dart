import 'package:tignasseapp/export.dart';

class OpenBookScreen extends StatefulWidget {
  @override
  _OpenBookScreenState createState() => _OpenBookScreenState();
}

class _OpenBookScreenState extends State<OpenBookScreen> {
  bool isMessageShow = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          CommonBackGroundImage.image1(context),
          CommonView.transparent(context, 0.5),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [headerView(), openBook(), bottomView()],
          )
        ],
      ),
    ));
  }

  iconsShow(IconData icon, int i) {
    return InkResponse(
      onTap: () {

        if(i == 2) {
          navigatorPop(context);
        }

      },
      child: Container(
        height: Utils.getDeviceWidth(context) / 15,
        width: Utils.getDeviceWidth(context) / 15,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(width: 1, color: ColorRes.white)),
        child: Icon(
          icon,
          size: Utils.getDeviceWidth(context) / 25,
          color: ColorRes.white,
        ),
      ),
    );
  }

  openBook() {
    return SingleChildScrollView(
      child: GridView.builder(
        itemCount: 20,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        padding: EdgeInsets.only(top: 15, left: 25, right: 25, bottom: 5),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 5,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: Utils.getDeviceWidth(context) /
                (Utils.getDeviceHeight(context) / 1.28)),

//              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                  crossAxisCount: (orientation == Orientation.portrait) ? 2 : 3),
        itemBuilder: (BuildContext context, int index) {
          /* UserAlbumPictureList userAlbumList;

                if (model.albumList != null && model.albumList.length != 0) {
                  userAlbumList = model.albumList[index];
                }*/

          return bookListData(index);
        },
      ),
    );
  }

  Widget bookListData(int index) {
    return Container(
      height: 200,
      width: 200,
      alignment: Alignment.center,
      margin: EdgeInsets.only(top: 0, left: 0),
      padding: EdgeInsets.only(top: 0, left: 0),
      child: InkResponse(
        onTap: () {
          if (index != 0) {
            setState(() {
              isMessageShow = true;
            });
          } else if(index == 0) {
            openBookFullScreenNavigator(context);

          }
        },
        child: Image(
            image: AssetImage(Utils.getAssetsImg('books_img')),
            fit: BoxFit.fill),
      ),
    );
  }

  headerView() {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 10, top: 10, right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: [
                  Image(
                      height: Utils.getDeviceWidth(context) / 15,
                      width: Utils.getDeviceWidth(context) / 15,
                      image: AssetImage(Utils.getAssetsIcons('grid'))),
                  SizedBox(width: 5),
                  iconsShow(Icons.arrow_back, 2),
                ],
              ),
              AllText(StringRes.books,
                  color: ColorRes.white,
                  fontWeight: FontWeight.w700,
                  fontSize: Utils.getDeviceWidth(context) / 30),
              iconsShow(Icons.lock, 3),
            ],
          ),
        ),
        AllText(StringRes.tignasse,
            color: ColorRes.white,
            fontSize: Utils.getDeviceWidth(context) / 12,
            fontFamily: StringRes.roboto,
            fontWeight: FontWeight.w300),
        SizedBox(height: 10),
        AllText(StringRes.theCollections,
            color: ColorRes.white,
            fontSize: Utils.getDeviceWidth(context) / 25,
            fontFamily: StringRes.roboto,
            align: TextAlign.center,
            fontWeight: FontWeight.w500)
      ],
    );
  }

  bottomView() {
    return Column(
      children: [
        AllText(StringRes.thankYouApp,
            color: ColorRes.white,
            fontSize: Utils.getDeviceWidth(context) / 28,
            fontFamily: StringRes.roboto,
            align: TextAlign.center,
            fontWeight: FontWeight.w500),
        SizedBox(height: 10),
        AllText(StringRes.titleLine,
            color: ColorRes.white,
            fontSize: Utils.getDeviceWidth(context) / 35,
            fontFamily: StringRes.roboto,
            align: TextAlign.center,
            fontWeight: FontWeight.w500),
        Container(
          height: 1,
          color: ColorRes.white,
          width: Utils.getDeviceWidth(context),
          margin: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
        )
      ],
    );
  }
}