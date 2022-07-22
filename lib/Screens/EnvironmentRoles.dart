import '../Screens/screens.dart';

class EnviromentRoles extends StatefulWidget {
  EnviromentRoles({Key? key}) : super(key: key);

  @override
  State<EnviromentRoles> createState() => _LoginScreensState();
}

class _LoginScreensState extends State<EnviromentRoles> {
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
            child: _formLoginBusiness(context),
          ),
        )
      ],
    );
  }

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

  Widget _formLoginBusiness(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: Environment,
          decoration: InputDecorations.authInputDecoration(
            hintText: ' ',
            labelText: 'Environment',
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
            decoration: const ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 1.0, style: BorderStyle.solid),
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
              ),
            ),
          ),
          //borderSide :BorderSide(width:3, Color.fromARGB(255, 236, 239, 241)),
          value: selectedItem,
          items: items
              .map((item) => DropdownMenuItem<String>(
                    value: item,
                    child: Text(item,
                        style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0), fontSize: 12)),
                  ))
              .toList(),
          onChanged: (item) => setState(() => selectedItem = item),
        ),
        SizedBox(height: 30),
        TextField(
          controller: Description,
          decoration: InputDecorations.authInputDecoration(
            hintText: ' ',
            labelText: 'Description',
          ),
        ),
         SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
              ),
            ],
       );
  }
  Widget _loginWithButton({bool isActive = false}) {
    return Container(
      width: 90,
      height: 70,
      decoration: isActive
          ? BoxDecoration(
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                  color: Color.fromARGB(255, 224, 224, 224),
                  spreadRadius: 10,
                  blurRadius: 30,
                )
              ],
              borderRadius: BorderRadius.circular(15),
            )
          : BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Color.fromARGB(255, 189, 189, 189)),
            ),
      child: Center(
          child: Container(
        decoration: isActive
            ? BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(35),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromARGB(255, 189, 189, 189),
                    spreadRadius: 2,
                    blurRadius: 15,
                  )
                ],
              )
            : const BoxDecoration(),
      )),
    );
  }
}


