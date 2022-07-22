import '../Screens/screens.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Body();
  }
}

//Clase donde visualizamos los textos de inicio y llamamos al formulario de login
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
            child: _formLogin(), //Llamamos a la funcion donde se encunetra el formulario de Login
          ),
        )
      ],
    );
  }
}

//Formulario de Login, con sus lables y button para dirigirnos a la siguiente vista
class _formLogin extends StatelessWidget {
  //Controladores para la validacion de cada uno de los labels
  final TextEditingController usernamecontroller = new TextEditingController();
  final TextEditingController passwordcontroller = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
        child: Column(
          children: [
            TextFormField(
              controller: usernamecontroller,
              autocorrect: false,
              keyboardType: TextInputType.emailAddress,
              //Llamamos a la clase InputDecorations para usar el estilo de esa clase
              decoration: InputDecorations.authInputDecoration(
                hintText: 'Example123',
                labelText: 'Enter User ID',
                suffixIcon: Icons.alternate_email_rounded,
              ),
            ),

            SizedBox(height: 30),

            TextFormField(
              controller: passwordcontroller,
              obscureText: true, //Ocultar text del label password
              autocorrect: false,
              keyboardType: TextInputType.emailAddress,
              //Llamamos a la clase InputDecorations para usar el estilo de esa clase
              decoration: InputDecorations.authInputDecoration(
                hintText: '********',
                labelText: 'Enter Password',
                suffixIcon: Icons.lock_outline_rounded,
              ),
              autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value)=> value != null && value.length <8
                  ? 'Ingresa un minimo de 8 caracteres' : null,
            ),

            SizedBox(height: 40),

            Container(
              child: ElevatedButton(
                child:Container(
                    width: double.infinity,
                    height: 50,
                    child: Center(child: Text("Sign In"))),
                onPressed: () => Navigator.pushNamed(context, '/EnviromentRoles'),
                //Diseño Antiguo
                // style: ElevatedButton.styleFrom(
                //   primary: Colors.blue,
                //   onPrimary: Colors.white,
                //   shape: RoundedRectangleBorder(
                //     borderRadius: BorderRadius.circular(15),
                //   ),
                // ),
              ),
              decoration: BoxDecorations.authBoxDecoration(),
            ),

            SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            ),
            TextButton(
              style: TextButton.styleFrom(
                textStyle: const TextStyle(fontSize: 12),
              ),
              onPressed: () => Navigator.pushNamed(context, '/Configurations'),
              child: const Text('Configuracion de Usuarios'),
            ),
          ],
        )
      ),
    );
  }
}