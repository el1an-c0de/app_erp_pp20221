import 'package:app_erp_pp20221/Screens/screens.dart';

class Screen2 extends StatelessWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

// void onSelected(BuildContext context, int item) {
//   switch (item) {
//     case 0:

//       Navigator.of(context).push(
//         MaterialPageRoute(
//           builder: (context) => Configurations()),
//       );
//       break;
//       case 1:

//       Navigator.of(context).push(
//         MaterialPageRoute(
//           builder: (context) => Configurations_business()),
//       );
//       break;
//   }
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//         centerTitle: true,
//         actions: [
//           Theme(
//             data: Theme.of(context).copyWith(
//               dividerColor: Colors.white,
//               iconTheme: IconThemeData(color: Colors.black),
//               textTheme: TextTheme().apply(bodyColor: Colors.white),
//             ),
//             child: PopupMenuButton<int>(
//               color: Colors.white,
//               onSelected: (item) => onSelected(context, item),
//               itemBuilder: (context) => [
//                 PopupMenuItem<int>(
//                   value: 0,
//                   child: Row(
//                     children: [
//                       Icon(Icons.supervised_user_circle_outlined),
//                       const SizedBox(width: 8),
//                       Text('Administrar Usuarios'),
//                     ],
//                   ),
//                 ),
//                 PopupMenuDivider(),
//                 PopupMenuItem<int>(
//                   value: 1,
//                   child: Row(
//                     children: [
//                       Icon(Icons.business_rounded),
//                       const SizedBox(width: 8),
//                       Text('Administrar Empresas'),
//                     ],
//                   ),
//                 ),
//                 PopupMenuDivider(),
//                 PopupMenuItem<int>(
//                   value: 2,
//                   child: Row(
//                     children: [
//                       Icon(Icons.logout),
//                       const SizedBox(width: 8),
//                       Text('Cerrar Sesión'),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               'Panel del Programa',
//               style: Theme.of(context).textTheme.headline4,
//             ),
//           ],
//         ),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
