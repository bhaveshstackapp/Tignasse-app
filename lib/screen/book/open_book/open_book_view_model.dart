import 'package:tignasseapp/export.dart';
import 'package:tignasseapp/model/book_details_model.dart';

class BookDetailsViewModel {
  OpenBookScreenState state;
  BookDetailsModel modelData = BookDetailsModel();

  List<String> imageList = List();

  BookDetailsViewModel(OpenBookScreenState state) {
    this.state = state;
    bookDetailsApi();
  }

  bookDetailsApi() async {
//    LoginRequest loginRequest = LoginRequest();
//    loginRequest.email = state.emailTextFiled.text;
//    loginRequest.password = state.passWordTextFiled.text;

    //login api
//    showLoader(state.context,label: "");

    bool isConnect = await isConnectNetworkWithMessage(state.context);
    if (!isConnect) return null;

    /* if(!isConnect) {
      var data = await DataBaseSqlFLite.instance.bookDetailsShow();
      var bookDetailsData = data[0]['bookDetailsList'];
      modelData = BookDetailsModel.fromJson(json.decode(bookDetailsData));
      imageList = modelData.images;
    } else {*/
    var data = await DataBaseSqlFLite.instance.bookDetailsShow();

    if (data.length != 0 && data != null) {
      var bookDetailsData = data[0]['bookDetailsList'];
      modelData = BookDetailsModel.fromJson(json.decode(bookDetailsData));
      imageList = modelData.images;
      state.setState(() {});

    } else {
      RestApi()
          .callGetBookDetails(state.widget.productId)
          .then((response) async {
        if (response.statusCode == 200) {
//        var data = json.decode(response.body);
          await DataBaseSqlFLite.instance
              .insertBookDetails({"bookDetailsList": response.body});
          var data = await DataBaseSqlFLite.instance.bookDetailsShow();
          var bookDetailsData = data[0]['bookDetailsList'];
          modelData = BookDetailsModel.fromJson(json.decode(bookDetailsData));
          imageList = modelData.images;

//        bookListCategory = modelData.category;
//        bookList = modelData.products;
          state.setState(() {});
        }
      });
    }
  }
}
