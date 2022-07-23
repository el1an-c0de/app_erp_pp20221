import 'package:app_erp_pp20221/Screens/screens.dart';

class DropdownButtonDecoration {
  static ShapeDecoration authDropdownButtonDecoration({Color? color}) {
    return const ShapeDecoration(
      shape: RoundedRectangleBorder(
        side: BorderSide(width: 1.0, style: BorderStyle.solid),
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
      ),
    );
  }
}
