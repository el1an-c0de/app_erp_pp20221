import '../Screens/Screens.dart';

class InputDecorations {
  static InputDecoration authInputDecoration({
    required String hintText,
    required String labelText,
    IconData? prefixIcon,
    IconData? suffixIcon,
  }) {
    return InputDecoration(
      hintText: hintText,
      labelText: labelText,
      filled: true,
      fillColor: Colors.blueGrey[50],
      labelStyle: const TextStyle(
        fontSize: 12,
        color: Colors.grey,
      ),
      hintStyle: const TextStyle(
        fontSize: 12,
        color: Colors.grey,
      ),
      contentPadding: const EdgeInsets.only(left: 30),
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Color.fromARGB(255, 236, 239, 241)),
        borderRadius: BorderRadius.circular(15),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Color.fromARGB(255, 236, 239, 241)),
        borderRadius: BorderRadius.circular(15),
      ),
      prefixIcon: prefixIcon != null
          ? Icon(
              prefixIcon,
              color: Colors.grey,
            )
          : null,
      suffixIcon: suffixIcon != null
          ? Icon(
              suffixIcon,
              color: Colors.grey,
            )
          : null,
    );
  }
}
