import 'package:tignasseapp/export.dart';

class FilledButton extends StatelessWidget {
  final double height;
  final double width;
  final String text;
  final Color textColor;
  final Color color;
  final Color disabledColor;
  final Color disabledTextColor;
  final Function onPressed;
  final FocusNode focusNode;
  final Widget child;
  final double fontSize;

  FilledButton({
    this.text,
    this.child,
    this.height,
    this.width,
    this.textColor,
    this.color,
    this.disabledColor,
    this.disabledTextColor,
    this.onPressed,
    this.focusNode,
    this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: height ?? Utils.getDeviceWidth(context) / 12,
//        width: width ?? double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 3, vertical: 0),
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: ColorRes.white),
          borderRadius: BorderRadius.all(Radius.circular(8))
        ),
        child: _button());
  }

  Widget _button() {
    return RaisedButton(
      focusNode: focusNode,

      disabledColor: disabledColor ?? ColorRes.black,
      disabledTextColor: disabledTextColor ?? Colors.white,
      highlightElevation: 0,
      onPressed: onPressed,
      textColor: textColor ?? ColorRes.white,
      child: child ?? Text(text, style: TextStyle(fontSize: fontSize)),
      color: color ?? ColorRes.black,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(2.0),
      ),
      elevation: 0,
    );
  }

/*  Widget _iOSButton() {
    var dTextColor = disabledTextColor ?? primaryDark;
    var txtColor = textColor ?? Colors.white;
    return CupertinoButton(padding: child==null? EdgeInsets.all(0):EdgeInsets.symmetric(horizontal: 10),
      disabledColor: disabledColor ?? primaryLight,
      onPressed: onPressed,
      child: child ??
          Text(
            text,
            style: TextStyle(
              color: onPressed == null ? dTextColor : txtColor,
            ),
          ),
      color: color ?? primaryDark,
      borderRadius: BorderRadius.circular(7.0),
    );
  }*/
}
