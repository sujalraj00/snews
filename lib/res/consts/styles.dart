import 'package:snews/res/consts/consts.dart';
import 'package:snews/res/consts/fonts.dart';

class AppStyles {

  TextStyle regular({Color? color,
      FontWeight? fontWeight = FontWeight.normal,
      String? fontfamily = Appfonts.regular,
      double? size = 14.0}) {
    return TextStyle(
        fontWeight: fontWeight,
        fontSize: size,
        color: color,
        fontFamily: fontfamily);
  }

  TextStyle semibold(
      {Color? color,
      FontWeight? fontWeight,
      String? fontfamily = Appfonts.semibold,
      double? size = 14.0}) {
    return TextStyle(
        fontWeight: fontWeight,
        fontSize: size,
        color: color,
        fontFamily: fontfamily);
  }

  TextStyle bold(
      {Color? color,
      FontWeight? fontWeight,
      String? fontfamily = Appfonts.bold,
      double? size = 14.0}) {
    return TextStyle(
        fontWeight: fontWeight,
        fontSize: size,
        color: color,
        fontFamily: fontfamily);
  }
}
