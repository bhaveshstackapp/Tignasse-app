import 'package:tignasseapp/export.dart';
class Routes {}

navigatorPop(BuildContext context) {
  Navigator.pop(context);
}

logInScreenNavigator(BuildContext context) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
}
registerScreenNavigator(BuildContext context) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen()));
}
welComeScreenNavigator(BuildContext context) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => WelComeScreen()));
}
menuScreenNavigator(BuildContext context) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => MenuScreen()));
}
addPasswordScreenNavigator(BuildContext context) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => AddPasswordScreen()));
}
verificationCodeScreenNavigator(BuildContext context, int userId) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => VerificationCodeScreen(userId: userId)));
}
booksListScreenNavigator(BuildContext context) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => BookListScreen()));
}
openBookScreenNavigator(BuildContext context, String productId) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => OpenBookScreen(productId: productId)));
}
openBookFullScreenNavigator(BuildContext context, List<String> imageUrl, int index) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => OpenFullScreenBook(imageUrl: imageUrl, index: index)));
}
forgotPasswordScreenNavigator(BuildContext context) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => ForgotPasswordScreen()));
}
forgotVerificationScreenNavigator(BuildContext context , int code) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => ForgotVerificationScreen(code: code)));
}