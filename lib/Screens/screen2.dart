import 'package:app_erp_pp20221/Screens/screens.dart';

import 'OnHover.dart';

class Screen2 extends StatelessWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Body();
  }
  
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 600,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'ORACLE \nJD EDWARS ENTERPRISEONE',
                style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Image(image: AssetImage('images/logo-home.png'), width: 300),
              Text(
                "This system is intended for limited (autorized) use and is sibkect to company policies.",
                style: TextStyle(
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height / 6),
          child: Container(
            width: 350,
            child: _formLogin(context),
          ),
        )
      ],
      
    );
  }
  
}
Widget _formLogin(BuildContext context) {
  return Column(
    children: [
      TextField(
        decoration: InputDecoration(
          labelText: 'Environment',
          filled: true,
          fillColor: Colors.blueGrey[50],
          labelStyle: TextStyle(fontSize: 12),
          contentPadding: EdgeInsets.only(left: 30),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromARGB(255, 236, 239, 241)),
            borderRadius: BorderRadius.circular(15),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromARGB(255, 236, 239, 241)),
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
      SizedBox(height: 30),
      TextField(
        decoration: InputDecoration(
          hintText: '*******',
          counterText: 'Forgot password?',
          suffixIcon: const Icon(
            Icons.lock_outline_rounded,
            color: Colors.grey,
          ),
          filled: true,
          fillColor: Colors.blueGrey[50],
          labelStyle: TextStyle(fontSize: 12),
          contentPadding: EdgeInsets.only(left: 30),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromARGB(255, 236, 239, 241)),
            borderRadius: BorderRadius.circular(15),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromARGB(255, 236, 239, 241)),
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
      SizedBox(height: 40),
      
      Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: const [
            BoxShadow(
              color: Color.fromARGB(255, 209, 196, 233),
              spreadRadius: 10,
              blurRadius: 20,
            ),
          ],
        ),
        child: ElevatedButton(
          child: Container(
              width: double.infinity,
              height: 50,
              child: Center(child: Text("OK"))),
          onPressed: () => Navigator.pushNamed(context, '/screen3'),
          style: ElevatedButton.styleFrom(
            primary: Colors.deepPurple,
            onPrimary: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
      ),
      SizedBox(height: 40),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
      ),
    ],
  );
}

//------
