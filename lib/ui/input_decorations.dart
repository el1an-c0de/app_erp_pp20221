import '../Screens/screens.dart';

class InputDecorations{
  static InputDecoration authInputDecoration({
    required String hintText,
    required String labelText,
    IconData? suffixIcon
  }
  ){
    return InputDecoration(
      hintText: hintText,
      labelText: labelText,
      filled: true,
      fillColor: Colors.blueGrey[50],
      labelStyle: TextStyle(fontSize: 12, color: Colors.grey,),
      hintStyle: TextStyle(fontSize: 12, color: Colors.grey,),
      contentPadding: EdgeInsets.only(left: 30),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Color.fromARGB(255, 236, 239, 241)),
        borderRadius: BorderRadius.circular(15),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Color.fromARGB(255, 236, 239, 241)),
        borderRadius: BorderRadius.circular(15),
      ),
      suffixIcon: suffixIcon != null ?
      Icon(suffixIcon, color: Colors.grey,):null,
    );
  }
}