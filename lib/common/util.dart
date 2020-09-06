import 'package:flutter_device_type/flutter_device_type.dart';
import 'package:tignasseapp/export.dart';
import 'package:connectivity/connectivity.dart';

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

  static isCheckTable() {

    return Device.get().isTablet;

   /* var shortestSide = MediaQuery.of(context).size.shortestSide;
    final bool useMobileLayout = shortestSide < 600;
    print(useMobileLayout);
    return useMobileLayout;*/

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

  static getOrientation(BuildContext context) {
    return MediaQuery.of(context).orientation;
  }

}

openKeyBoard(BuildContext context, FocusNode focusNode) {
  FocusScope.of(context).requestFocus(focusNode);
  // SystemChannels.textInput.invokeMethod('TextInput.hide');
}

hideFocusKeyBoard(c) {
  FocusScope.of(c).requestFocus(FocusNode());
}

BuildContext c;
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
}

Connectivity connectivity = Connectivity();
bool isConnect = false;

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
}

bool getConnectionValue(var connectivityResult) {
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

void commonMessage(BuildContext c, String message,
    {Function(String) callback, email}) {
  showDialog(
    context: c,
    barrierDismissible: false,
    builder: (BuildContext context) {
      // return object of type Dialog
      return AlertDialog(
        title: new Text(
          "Message",
          style: TextStyle(fontWeight: FontWeight.w700),
        ),
        content: Text(message, style: TextStyle(fontWeight: FontWeight.w500)),
        actions: <Widget>[
          // usually buttons at the bottom of the dialog
          FlatButton(
            child: new Text(
              "Retry",
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
            onPressed: () async {
              Navigator.of(context).pop();
              isConnect = await isConnectNetworkWithMessage(context);
            },
          ),
        ],
      );
    },
  );
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


