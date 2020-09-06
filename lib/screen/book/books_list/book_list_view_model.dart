import 'package:tignasseapp/common/sqlf_lite_db.dart';
import 'package:tignasseapp/export.dart';

class BookListViewModel {
  BookListScreenState state;
  Category bookListCategory = Category();
  List<Products> bookList = List();

  BookListViewModel(BookListScreenState state) {
    this.state = state;
    bookListApi();
  }

  bookListApi() async {
//    LoginRequest loginRequest = LoginRequest();
//    loginRequest.email = state.emailTextFiled.text;
//    loginRequest.password = state.passWordTextFiled.text;

    //login api
//    showLoader(state.context,label: "");

    bool isConnect = await isConnectNetworkWithMessage(state.context);
    if (!isConnect) return null;
    /* if(!isConnect) {
      var data = await DataBaseSqlFLite.instance.bookShow();
      var imageList0 = data[0]['bookList'];
      BookCategoryResponseModel modelData = BookCategoryResponseModel.fromJson(json.decode(imageList0));
      bookListCategory = modelData.category;
      bookList = modelData.products;
    } else  {*/
    var data = await DataBaseSqlFLite.instance.bookShow();

    if (data.length != 0 && data != null) {
      var imageList0 = data[0]['bookList'];
      BookCategoryResponseModel modelData =
          BookCategoryResponseModel.fromJson(json.decode(imageList0));
      bookListCategory = modelData.category;
      bookList = modelData.products;
      state.setState(() {});
    } else {
      RestApi().callGetBookList().then((response) async {
        if (response.statusCode == 200) {
//        var data = json.decode(response.body);
//        await DataBaseSqlFLite.instance.insertBgImage({"imageList": response.body});
          await DataBaseSqlFLite.instance
              .insertBook({"bookList": response.body});
          var data = await DataBaseSqlFLite.instance.bookShow();
          var imageList0 = data[0]['bookList'];
          BookCategoryResponseModel modelData =
              BookCategoryResponseModel.fromJson(json.decode(imageList0));
          bookListCategory = modelData.category;
          bookList = modelData.products;
          /* BookCategoryResponseModel modelData = BookCategoryResponseModel.fromJson(json.decode(response.body));
        bookListCategory = modelData.category;
        bookList = modelData.products;*/
          state.setState(() {});
        }
      });
    }
  }
}
