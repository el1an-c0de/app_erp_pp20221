import 'package:app_erp_pp20221/Screens/screens.dart';
import 'OnHover.dart';

class EnvironmentRoles extends StatelessWidget {
  const EnvironmentRoles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropDownPage();
  }
}

class DropDownPage extends StatefulWidget {
  const DropDownPage({Key? key}) : super(key: key);
  @override
  Body createState() => Body();
}

class Body extends State<DropDownPage> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width/7,
              vertical: MediaQuery.of(context).size.height/6
          ),
          child: Container(
            width: 950,
            child: _formLogin(context),
          ),
        )
      ],
    );
  }
}

String gender = "Role";
final _formKey = GlobalKey<FormState>();
Widget _formLogin(BuildContext context) {
  return Scaffold(
    body: Center(
      child: Form(
        key: _formKey,
        child: SizedBox(
          width: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                decoration: InputDecoration(
                  labelText: 'Environment',
                  filled: true,
                  fillColor: Colors.blueGrey[50],
                  labelStyle: TextStyle(fontSize: 12),
                  contentPadding: EdgeInsets.only(left: 30),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Color.fromARGB(255, 236, 239, 241)),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Color.fromARGB(255, 236, 239, 241)),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
              SizedBox(height: 30),
              DropdownButtonFormField(
                validator: (value) =>
                    value == "Role" ? "campo requerido" : null,
                value: gender,
                items: ["Role", "Todas mis Funciones", "Agencia Cuenca", "Menuadmin", "Sysadmin",]
                    .map((v) => DropdownMenuItem(
                          child: Text(v),
                          value: v,
                        ))
                    .toList(),
                onChanged: (String? v) {
                  setState(() {
                    gender = v!;
                  });
                },
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
          ),
        ),
      ),
    ),
  );
}

void setState(Null Function() param0) {
}

//------
