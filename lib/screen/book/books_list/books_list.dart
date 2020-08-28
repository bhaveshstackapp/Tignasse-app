import 'package:tignasseapp/export.dart';

class BooksListScreen extends StatefulWidget {
  @override
  _BooksListScreenState createState() => _BooksListScreenState();
}

class _BooksListScreenState extends State<BooksListScreen> {

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
          headerView(),
          listOfBooks(),
          alertMessageBox()
        ],
      ),
    ));
  }

  iconsShow(IconData icon, int i) {
    return InkResponse(
      onTap: () {},
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

  listOfBooks() {
    return  SingleChildScrollView(
      child: GridView.builder(
        itemCount: 12,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        padding: EdgeInsets.only(
            top: Utils.getDeviceWidth(context) / 5,
            left: 25,
            right: 25,
            bottom: 5),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: Utils.getDeviceWidth(context) /
                (Utils.getDeviceHeight(context) / 1.08)),

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
//      height: 200,
//      width: 200,
      alignment: Alignment.center,
      margin: EdgeInsets.only(top: 0, left: 0),
      padding: EdgeInsets.only(top: 0, left: 0),
      child: Column(
        children: [
          /* Container(
                        height: 100,
//                        width: Utils.getDeviceWidth(context),
//                          width: 100,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                        image: AssetImage(Utils.getAssetsImg('books_img')),
                                  colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.dstATop),
                      )))*/

          InkResponse(
            onTap: () {
              if(index != 0) {
                setState(() {
                  isMessageShow = true;
                });
              } else {
                openBookScreenNavigator(context);
              }
            },
            child: Stack(
              children: [
                Image(image: AssetImage(Utils.getAssetsImg('books_img')), fit: BoxFit.fill),
//                index == 0 ? Container() : Container(height: 148, color: Colors.black.withOpacity(0.5))
              ],
            ),
          ),

          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 20,
//                        color: Colors.deepOrangeAccent,
              color: ColorRes.black,
              padding: EdgeInsets.symmetric(horizontal: 3),
              child: Row(
//                mainAxisAlignment: MainAxisAlignment.center,
//                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Flexible(
                    child: AllText("BOOK TIGNASSE 10",
                        color: ColorRes.white,
                        maxLine: 1,
                        align: TextAlign.left,
                        overflow: TextOverflow.ellipsis,
                        fontSize: Utils.getDeviceWidth(context) / 40,
                        fontWeight: FontWeight.w800),
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: 3, bottom: 3, right: 2, left: 3),
                      child: Image(image: AssetImage(Utils.getAssetsIcons(index == 0 ? 'unlock' : 'lock'))))
//                  Icon(index == 0 ? Icons.lock_open : Icons.lock, color: ColorRes.white, size: 10)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  alertMessageBox() {
    return   Visibility(
        visible: isMessageShow,
        child: Align(
          alignment: Alignment.topCenter,
          child: Container(
            height: 60,
            margin: EdgeInsets.only(top: Utils.getDeviceHeight(context) / 5,left: 25, right: 25),
            padding: EdgeInsets.only(left: 8, right: 8),
            decoration: BoxDecoration(
                color: ColorRes.black,
                border: Border.all(width: 1, color: ColorRes.white),
                borderRadius: BorderRadius.circular(7)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AllText(StringRes.bookNotAvailable,  fontSize: Utils.getDeviceWidth(context) / 30),
                InkResponse(
                  onTap: () {
                    setState(() {
                      isMessageShow = false;
                    });
                  },
                  child: Container(
                    height: 28,
                    width: 28,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(width: 1, color: ColorRes.white),
                    ),
                    child: Icon(Icons.close, color: ColorRes.white),
                  ),
                )
              ],
            ),
          ),
        )
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
              Image(
                  height: Utils.getDeviceWidth(context) / 15,
                  width: Utils.getDeviceWidth(context) / 15,
                  image: AssetImage(Utils.getAssetsIcons('grid'))),
//              iconsShow(Icons.home, 1),
              AllText(StringRes.books,
                  color: ColorRes.white,
                  fontWeight: FontWeight.w700,
                  fontSize: Utils.getDeviceWidth(context) / 30),
              iconsShow(Icons.lock, 2),
            ],
          ),
        ),
        AllText(StringRes.tignasse,
            color: ColorRes.white,
            fontSize: Utils.getDeviceWidth(context) / 12,
            fontFamily: StringRes.roboto,
            fontWeight: FontWeight.w300),
        SizedBox(height: 10),
      ],
    );
  }

}