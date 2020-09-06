import 'package:flutter/material.dart';

//import 'dependency_injection.dart';


class CommonView {

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
