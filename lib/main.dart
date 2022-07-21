import 'package:app_erp_pp20221/Screens/EnvironmentRoles.dart';
import 'package:app_erp_pp20221/Screens/screens.dart';

void main() {
  runApp(MyApp());
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
        '/SignIn': (_) => MyHomePage(),
        '/EnvironmentRoles': (_) => SignInBusiness(),
        '/screen3': (_) => Screen3routes(),
        '/Configurations': (_) => Configu(),
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

class SignInBusiness1 extends StatelessWidget {
  const SignInBusiness1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width / 8),
        children: [
          NavBar(),
          SignInBusiness(),
          Footer(),
        ],
      ),
    );
  }
}

class Configu1 extends StatelessWidget {
  const Configu1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Configu(),
      ),
    );
  }
}

class SignInBusiness extends StatelessWidget {
  const SignInBusiness({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'JD EDWARS ENTERPRISEONE ENVIRONMENT AND ROLES',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: EnvironmentRoles(),
    );
  }
}

class Configu extends StatelessWidget {
  const Configu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'JD EDWARS ENTERPRISEONE ENVIRONMENT AND ROLES',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Configurations(),
    );
  }
}

class Screen3routes extends StatelessWidget {
  const Screen3routes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width / 8),
        children: [
          NavBar(),
          Screen3(),
          Footer(),
        ],
      ),
    );
  }
}
