import 'package:app_erp_pp20221/Screens/combo.dart';
import 'package:app_erp_pp20221/Screens/screen2.dart';
import 'package:app_erp_pp20221/Screens/screen3.dart';
import 'package:app_erp_pp20221/Screens/screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'JD EDWARS ENTERPRISEONE',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/SignIn',
      routes: {
        '/SignIn': ( _ ) => MyHomePage(),
        '/SignInEmpresa': ( _ ) => SignInBusiness(),
        '/screen3': ( _ ) => Screen3routes(), 
      },
      //home: MyHomePage(),
    );
  }
}


class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width / 8),
        children: [
            NavBar(),
            Login(),
            Footer(),
        ],
      ),
    );
  }
}

class SignInBusiness extends StatelessWidget{
  const SignInBusiness({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Screen2(), 
    );
  }

}


class Screen3routes extends StatelessWidget{
  const Screen3routes({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width / 8),
        children: [
            NavBar(),
            Screen2(),
            Footer(),
        ],
      ),
    );
  }

}

