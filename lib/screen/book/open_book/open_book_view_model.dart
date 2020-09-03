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

  bookDetailsApi() {
//    LoginRequest loginRequest = LoginRequest();
//    loginRequest.email = state.emailTextFiled.text;
//    loginRequest.password = state.passWordTextFiled.text;

    //login api
//    showLoader(state.context,label: "");

    RestApi().callGetBookDetails(state.widget.productId).then((response) {
      if (response.statusCode == 200) {
//        var data = json.decode(response.body);
        modelData = BookDetailsModel.fromJson(json.decode(response.body));
        imageList = modelData.images;
//        bookListCategory = modelData.category;
//        bookList = modelData.products;
        state.setState(() {
        });
      }
    });
  }


}