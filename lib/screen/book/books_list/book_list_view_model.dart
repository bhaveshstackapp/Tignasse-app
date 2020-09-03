import 'package:tignasseapp/export.dart';

class BookListViewModel {
  BookListScreenState state;
  Category bookListCategory = Category();
  List<Products>  bookList = List();

  BookListViewModel(BookListScreenState state) {
    this.state = state;
    bookListApi();
  }

  bookListApi() {
//    LoginRequest loginRequest = LoginRequest();
//    loginRequest.email = state.emailTextFiled.text;
//    loginRequest.password = state.passWordTextFiled.text;

    //login api
//    showLoader(state.context,label: "");

    RestApi().callGetBookList().then((response) {

      if (response.statusCode == 200) {
//        var data = json.decode(response.body);
        BookCategoryResponseModel modelData = BookCategoryResponseModel.fromJson(json.decode(response.body));
        bookListCategory = modelData.category;
        bookList = modelData.products;
        state.setState(() {
        });
      }
    });
  }

}
