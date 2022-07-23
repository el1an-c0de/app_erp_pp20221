import '../Screens/Screens.dart';

class BoxDecorations{
  static BoxDecoration authBoxDecoration({
    Color? color
  })
  {
    return BoxDecoration(
      color: Colors.blue,
      borderRadius: BorderRadius.circular(30),
      boxShadow: const [
        BoxShadow(
          color: Color.fromARGB(255, 196, 218, 233),
          spreadRadius: 10,
          blurRadius: 20,
        ),
      ],
    );
  }
}