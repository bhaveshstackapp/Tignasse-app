import 'package:tignasseapp/export.dart';
class Routes {}

/*goToAddQue(context){
  showDialog(
    context: context,
    builder: (BuildContext context) => AddQuestionPage(),
  );
}*/

navigatorPop(BuildContext context) {
  Navigator.pop(context);
}

logInScreenNavigator(BuildContext context) {
//  Navigator.push(context, NavigatePageRoute(context, SoundBiteTrimPage(path, t,from: from, listImages:imageList)));
  Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
}

registerScreenNavigator(BuildContext context) {
//  Navigator.push(context, NavigatePageRoute(context, SoundBiteTrimPage(path, t,from: from, listImages:imageList)));
  Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen()));
}

welComeScreenNavigator(BuildContext context) {
//  Navigator.push(context, NavigatePageRoute(context, SoundBiteTrimPage(path, t,from: from, listImages:imageList)));
  Navigator.push(context, MaterialPageRoute(builder: (context) => WelComeScreen()));
}
menuScreenNavigator(BuildContext context) {
//  Navigator.push(context, NavigatePageRoute(context, SoundBiteTrimPage(path, t,from: from, listImages:imageList)));
  Navigator.push(context, MaterialPageRoute(builder: (context) => MenuScreen()));
}
addPasswordScreenNavigator(BuildContext context) {
//  Navigator.push(context, NavigatePageRoute(context, SoundBiteTrimPage(path, t,from: from, listImages:imageList)));
  Navigator.push(context, MaterialPageRoute(builder: (context) => AddPasswordScreen()));
}
verificationCodeScreenNavigator(BuildContext context) {
//  Navigator.push(context, NavigatePageRoute(context, SoundBiteTrimPage(path, t,from: from, listImages:imageList)));
  Navigator.push(context, MaterialPageRoute(builder: (context) => VerificationCodeScreen()));
}
booksListScreenNavigator(BuildContext context) {
//  Navigator.push(context, NavigatePageRoute(context, SoundBiteTrimPage(path, t,from: from, listImages:imageList)));
  Navigator.push(context, MaterialPageRoute(builder: (context) => BooksListScreen()));
}
openBookScreenNavigator(BuildContext context) {
//  Navigator.push(context, NavigatePageRoute(context, SoundBiteTrimPage(path, t,from: from, listImages:imageList)));
  Navigator.push(context, MaterialPageRoute(builder: (context) => OpenBookScreen()));
}
openBookFullScreenNavigator(BuildContext context) {
//  Navigator.push(context, NavigatePageRoute(context, SoundBiteTrimPage(path, t,from: from, listImages:imageList)));
  Navigator.push(context, MaterialPageRoute(builder: (context) => OpenFullScreenBook()));
}
