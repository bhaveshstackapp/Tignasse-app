import 'package:tignasseapp/export.dart';

class Utils{

  static double getDeviceWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double getDeviceHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static getAssetsImg(String name) {
    return "assets/images/" + name + ".png";
  }

  static getAssetsIcons(String name) {
    return "assets/icons/" + name + ".png";
  }

  /* static getNetworkImg(String name) {
    return "${RestApi().baseUrl}$name";
//    return "https://safe-date.herokuapp.com$name";
  }*/

  void switchFocus(BuildContext context, FocusNode current, FocusNode next) {
    if (current.hasFocus) {
      current.unfocus();
      FocusScope.of(context).requestFocus(next);
    }
  }

  static showToast(String message) {
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 3,
        backgroundColor: ColorRes.black,
        textColor: ColorRes.white);
  }
}

openKeyBoard(BuildContext context, FocusNode focusNode) {
  FocusScope.of(context).requestFocus(focusNode);
  // SystemChannels.textInput.invokeMethod('TextInput.hide');
}

hideFocusKeyBoard(c) {
  FocusScope.of(c).requestFocus(FocusNode());
}

/*Future<bool> isConnectNetwork(BuildContext context) async {
  var connectivityResult = await connectivity.checkConnectivity();
  bool isConnect = getConnectionValue(connectivityResult);
  return isConnect;
}*/

// Method to convert the connectivity to a string value
/*bool getConnectionValue(var connectivityResult) {
  bool status = false;
  switch (connectivityResult) {
    case ConnectivityResult.mobile:
      status = true;
      break;
    case ConnectivityResult.wifi:
      status = true;
      break;
    case ConnectivityResult.none:
      status = false;
      break;
    default:
      status = false;
      break;
  }
  return status;
}

Connectivity connectivity = Connectivity();

Future<bool> isConnectNetworkWithMessage(BuildContext context) async {
  var connectivityResult = await connectivity.checkConnectivity();
  bool isConnect = getConnectionValue(connectivityResult);
  if (!isConnect) {
    commonMessage(
      context,
      "Network connection required to fetch data.",
    );
  }
  return isConnect;
}*/

/*BuildContext c;
showLoader(context,{String label}){
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      c = context;
      return LoaderPage(label: label);

    },
  );
}

hideLoader(){
  Navigator.pop(c);
}*/


