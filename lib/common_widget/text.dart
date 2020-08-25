import 'package:tignasseapp/export.dart';

class AllText extends StatelessWidget {
  final String title;
  final FontWeight fontWeight;
  final double fontSize;
  final TextAlign align;
  final Color color;
  final double height;
  final int maxLine;
  final double opacity;
  final TextOverflow overflow;
  final double letterSpace;
  final String fontFamily;
  final FontStyle fontStyle;


  AllText(this.title,
      {this.fontWeight,
        this.fontSize,
        this.maxLine,
        this.opacity = 1,
        this.align = TextAlign.start,
        this.height,
        this.overflow,
        this.letterSpace = 0,
        this.fontFamily,
        this.fontStyle,
        this.color = ColorRes.lightGrey});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      maxLines: maxLine,
      textAlign: align,
      overflow: overflow,
      style: TextStyle(
        color: color.withOpacity(opacity),
        letterSpacing: letterSpace,
        fontFamily: fontFamily ?? StringRes.roboto,
        fontStyle:  fontStyle ?? FontStyle.normal,
        fontWeight: fontWeight ?? FontWeight.normal,
        fontSize: fontSize,
        height: height,
      ),
    );
  }
}
