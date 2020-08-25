import 'package:flutter/material.dart';
import 'export.dart';


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
  Widget build(BuildContext context) {
    return MaterialApp(
      title: StringRes.appTitle,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: StringRes.roboto,
          primarySwatch: ColorRes.white,
          buttonTheme: ButtonThemeData(
            buttonColor: ColorRes.black, //  <-- dark color
            //  <-- this auto selects the right color
          )),
      home: SplashScreen(),
    );
  }
}
