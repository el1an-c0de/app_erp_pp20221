import '../Screens/screens.dart';

class EnviromentRoles extends StatelessWidget {
  const EnviromentRoles({Key? key}) : super(key: key);

  // @override
  // State<EnviromentRoles> createState() => _LoginScreensState();
  @override
  Widget build(BuildContext context) {
    return _LoginScreensState();
  }
}

class _LoginScreensState extends StatelessWidget {
  final _formkey = GlobalKey<FormState>();

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
                style: TextStyle(fontWeight: FontWeight.bold),
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
            child: _formLoginBusiness(),
          ),
        )
      ],
    );
  }
}

class _formLoginBusiness extends StatelessWidget {
  final TextEditingController Environment = new TextEditingController();
  final TextEditingController Description = new TextEditingController();
  List<String> items = [
    "Role",
    "Todas mis Funciones",
    "Agencia Cuenca",
    "Menuadmin",
    "Sysadmin",
  ];
  String? selectedItem = "Role";

  Widget build(BuildContext context) {
    return Container(
      child: Form(
        child: Column(
          children: [
            TextFormField(
              controller: Environment,
              autocorrect: false,
              keyboardType: TextInputType.emailAddress,
              //Llamamos a la clase InputDecorations para usar el estilo de esa clase
              decoration: InputDecorations.authInputDecoration(
                hintText: 'EnvironmentExample',
                labelText: 'Environment',
                suffixIcon: Icons.supervised_user_circle,
              ),
            ),
            SizedBox(height: 30),
            DropdownButton<String>(
              borderRadius: BorderRadius.circular(15),
              iconSize: 30,
              elevation: 16,
              isExpanded: true,
              icon: Icon(Icons.business_rounded),
              iconEnabledColor: Colors.blue,
              underline: Container(
                decoration: DropdownButtonDecoration.authDropdownButtonDecoration(),
              ),
              //borderSide :BorderSide(width:3, Color.fromARGB(255, 236, 239, 241)),
              value: selectedItem,
              items: items
                  .map((item) => DropdownMenuItem<String>(
                        value: item,
                        child: Text(item,
                            style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontSize: 12)),
                      ))
                  .toList(),
              onChanged: (item) => setState(() => selectedItem = item),
            ),
            SizedBox(height: 30),
            TextFormField(
              controller: Description,
              autocorrect: false,
              keyboardType: TextInputType.emailAddress,
              //Llamamos a la clase InputDecorations para usar el estilo de esa clase
              decoration: InputDecorations.authInputDecoration(
                hintText: 'DescriptionExample',
                labelText: 'Description',
                suffixIcon: Icons.business_sharp,
              ),
            ),
            SizedBox(height: 40),
            Container(
              child: ElevatedButton(
                child: Container(
                    width: double.infinity,
                    height: 50,
                    child: Center(child: Text("Sign In"))),
                onPressed: () =>
                    Navigator.pushNamed(context, '/EnviromentRoles'),
              ),
              decoration: BoxDecorations.authBoxDecoration(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            ),
          ],
        ),
      ),
    );
  }
  setState(String? Function() param0) {}
}