import 'package:tignasseapp/export.dart';
import 'package:tignasseapp/screen/book/open_book/open_book_view_model.dart';

class OpenBookScreen extends StatefulWidget {
  final String productId;

  const OpenBookScreen({Key key, this.productId}) : super(key: key);

  @override
  OpenBookScreenState createState() => OpenBookScreenState();
}

class OpenBookScreenState extends State<OpenBookScreen> {
  bool isMessageShow = false;

  BookDetailsViewModel model;

  @override
  Widget build(BuildContext context) {
    model ?? (model = BookDetailsViewModel(this));

    return SafeArea(
        child: Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          CommonBackGroundImage.image1(context),
          CommonView.transparent(context, 0.5),
         SingleChildScrollView(
           child: Column(
             children: [
               headerView(),
               Center(
                 child: Align(
                   alignment: Alignment.center,
                   child: openBook(),
                 ),
               ),
               bottomView()
             ],
           ),
         ),
        ],
      ),
    ));
  }

  iconsShow(IconData icon, int i) {
    return InkResponse(
      onTap: () {
        if (i == 2) {
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
    return model.imageList.length == 0
        ? SizedBox(
            height: Utils.getDeviceHeight(context) / 1.50,
            child: Center(
                child: CircularProgressIndicator(
              valueColor: new AlwaysStoppedAnimation<Color>(Colors.white),
            )),
          )
        : GridView.builder(
            itemCount: model.imageList.length,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.only(top: 15, left: 25, right: 25, bottom: 15),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: Utils.isCheckTable() ? 5 : 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: Utils.isCheckTable() ? Utils.getDeviceWidth(context) /
                    (Utils.getDeviceHeight(context) / 1.28) : Utils.getDeviceWidth(context) /
                    (Utils.getDeviceHeight(context) / 1.60)),

//              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                  crossAxisCount: (orientation == Orientation.portrait) ? 2 : 3),
            itemBuilder: (BuildContext context, int index) {
              /* UserAlbumPictureList userAlbumList;

            if (model.albumList != null && model.albumList.length != 0) {
              userAlbumList = model.albumList[index];
            }*/

              return bookListData(index, model.imageList);
            },
          );
  }

  Widget bookListData(int index, List<String> imageList) {
    return Container(
//      height: 175,
//      width: 200,
      alignment: Alignment.center,
      margin: EdgeInsets.only(top: 0, left: 0),
      padding: EdgeInsets.only(top: 0, left: 0),
      child: InkResponse(
        onTap: () {
          if (index == -1) {
            setState(() {
              isMessageShow = true;
            });
          } else {
            openBookFullScreenNavigator(context, imageList[index]);
          }
        },
        child: model.imageList.length != 0
            ? CachedNetworkImage(
                height: Utils.isCheckTable() ? Utils.getDeviceHeight(context) / 5 : Utils.getDeviceHeight(context) / 3.5,
                width: Utils.getDeviceWidth(context) / 3.3,
                imageUrl: imageList[index],
                fit: BoxFit.fill) /*NetworkImage(imageList[index])*/
            : Image(
                height: Utils.getDeviceHeight(context) / 7,
//            width: Utils.getDeviceWidth(context) / 6,
                image: AssetImage(Utils.getAssetsImg('books_img')),
                fit: BoxFit.fill),
      ),
    );
  }

  headerView() {
    return SizedBox(
//      height: 125,
      child: Column(
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
      ),
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
