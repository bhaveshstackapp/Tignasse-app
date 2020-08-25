import 'package:flutter/material.dart';

import 'dependency_injection.dart';


class CommonView {

/*  static Future<void> _handleSignIn() {
    try {
      Injector.googleSignIn.signIn();
    } catch (error) {
      print(error);
    }
  }*/

  /*static countLastSeen(String lastSeenAt) {
    print(lastSeenAt);
    int year = int.parse(lastSeenAt.substring(10, 14));
    int month = int.parse(lastSeenAt.substring(15, 17));
    int oneDate = int.parse(lastSeenAt.substring(18, 20));
    int hour = int.parse(lastSeenAt.substring(21, 23));
    int minute = int.parse(lastSeenAt.substring(24, 26));
    int second = int.parse(lastSeenAt.substring(27, 29));

    String date = Jiffy(DateTime(year, month, oneDate, hour, minute, second, 0))
        .fromNow();
//    String date = Jiffy(DateTime(2020, 06, 24, 09, 10, 00, 15)).fromNow();
    String finalDate;
    if (date[0] == 'a') {
      finalDate = date.substring(0, 0) + "1 " + date.substring(2);
    } else {
      finalDate = date;
    }
    return finalDate;
  }*/

  /*static chatScreenTime(String timeConvert) {
    DateTime utc1 = DateTime.parse(timeConvert);
    var timeGet = DateFormat.jms();
    final finalTimeGet = timeGet.format(utc1);
    return finalTimeGet;
  }*/

 /* static chatScreenDate(String dateConvert) {

    DateTime utc1 = DateTime.parse(dateConvert);
    var dateGet = DateFormat.yMMMd();
    final finalDateGet = dateGet.format(utc1);
    return finalDateGet;
  }*/

  static onlineDot() {
    return Container(
      width: 7,
      height: 7,
      alignment: Alignment.topRight,
      decoration: BoxDecoration(
          color: Colors.green, shape: BoxShape.circle),
    );
  }

 /* static googleFaceBookButton(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        FilledButton(
          text: StringRes.facebook,
          width: Utils.getDeviceWidth(context) / 2.5,
          color: indigo,
          textColor: white,
          disabledColor: Colors.red.shade100,
          disabledTextColor: primaryDark,
          onPressed: () {},
        ),
        FilledButton(
          text: StringRes.googlePlus,
          width: Utils.getDeviceWidth(context) / 2.5,
          color: orangeAccent,
          textColor: white,
          disabledColor: Colors.red.shade100,
          disabledTextColor: primaryDark,
          onPressed: () async {
            await _handleSignIn();
          },
        ),
      ],
    );
  }*/


 /* Future<FirebaseUser> handleSignIn() async {
    // hold the instance of the authenticated user
    FirebaseUser user;
    // flag to check whether we're signed in already
    bool isSignedIn = await Injector.googleSignIn.isSignedIn();
    if (isSignedIn) {
      // if so, return the current user
      user = await Injector.fireBaseAuth.currentUser();
    }
    else {
      final GoogleSignInAccount googleUser =
      await Injector.googleSignIn.signIn();
      final GoogleSignInAuthentication googleAuth =
      await googleUser.authentication;
      // get the credentials to (access / id token)
      // to sign in via Firebase Authentication
      final AuthCredential credential =
      GoogleAuthProvider.getCredential(
          accessToken: googleAuth.accessToken,
          idToken: googleAuth.idToken
      );
      user = (await Injector.fireBaseAuth.signInWithCredential(credential)).user;
    }
    return user;
  }*/

}


void commonMessage(BuildContext c, String message, {Function(String) callback, email}) {
  showDialog(
    context: c,
    builder: (BuildContext context) {
      // return object of type Dialog
      return AlertDialog(
        title: new Text(
          "Message",
          style: TextStyle(fontWeight: FontWeight.w700),
        ),
        content:
            new Text(message, style: TextStyle(fontWeight: FontWeight.w500)),
        actions: <Widget>[
          // usually buttons at the bottom of the dialog
          new FlatButton(
            child: new Text(
              "Ok",
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          SizedBox(
            width: 16,
          ),
          email == null
              ? Container()
              : new FlatButton(
                  child: new Text(
                    "Send Otp",
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                  onPressed: () async {
                    bool isSent = await callback.call(email);
                    if (isSent) {
                      Navigator.of(context).pop();
                      // var result = await Navigator.push(
                      //     context,
                      //     NavigatePageRoute(
                      //         context,
                      //         SignUpVerificationSentPage(email,
                      //             context.widget.runtimeType.toString())));
                    }
                  },
                ),
        ],
      );
    },
  );
}
