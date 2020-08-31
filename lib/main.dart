import 'package:flutter/material.dart';
import 'export.dart';
import 'services/rest_api/rest_api.dart';


void main() => setupLocator();

Future setupLocator() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Injector.getInstance();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //bgImage api
    RestApi().callgetImage().then((value) {
      if(value.statusCode==200) {
        Utils.showToast(value.body);
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: StringRes.appTitle,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: StringRes.roboto,
//          primarySwatch: ColorRes.white,
          /*buttonTheme: ButtonThemeData(
            buttonColor: ColorRes.black, //  <-- dark color
            //  <-- this auto selects the right color
          )*/
      ),
      home: SplashScreen(),
    );
  }
}
