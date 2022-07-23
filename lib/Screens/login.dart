import 'Screens.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Body();
  }
}

//Clase donde visualizamos los textos de inicio y llamamos al formulario de login
class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
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
          child: const SizedBox(
            width: 350,
            child:
                FormLogin(), //Llamamos a la funcion donde se encunetra el formulario de Login
          ),
        )
      ],
    );
  }
}

//Formulario de Login, con sus lables y button para dirigirnos a la siguiente vista
class FormLogin extends StatefulWidget {
  const FormLogin({Key? key}) : super(key: key);

  @override
  State<FormLogin> createState() => FormLoginState();
}

class FormLoginState extends State<FormLogin> {
  //Controladores para la validacion de cada uno de los labels
  final TextEditingController usernamecontroller = TextEditingController();

  final TextEditingController passwordcontroller = TextEditingController();

  bool ishiddenPassword = true;

  @override
  Widget build(BuildContext context) {
    return Form(
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
            prefixIcon: Icons.alternate_email_rounded,
          ),
        ),
        const SizedBox(height: 30),
        TextFormField(
          controller: passwordcontroller,
          //obscureText: ishiddenPassword, //Ocultar text del label password
          obscureText: ishiddenPassword, //Ocultar text del label password
          autocorrect: false,
          keyboardType: TextInputType.emailAddress,

          //Llamamos a la clase InputDecorations para usar el estilo de esa clase
          decoration: InputDecoration(
            hintText: '********',
            labelText: 'Enter Password',
            prefixIcon: const Icon(Icons.lock_outline_rounded),
            suffixIcon: togglePassword(),
            //--------------------DECORACIÓN DE LABEL PASSWORD
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
              borderSide:
                  const BorderSide(color: Color.fromARGB(255, 236, 239, 241)),
              borderRadius: BorderRadius.circular(15),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide:
                  const BorderSide(color: Color.fromARGB(255, 236, 239, 241)),
              borderRadius: BorderRadius.circular(15),
            ),
            //--------------------DECORACIÓN DE LABEL PASSWORD^^^^
          ),

          autovalidateMode: AutovalidateMode.onUserInteraction,

          validator: (value) => value != null && value.length < 8
              ? 'Ingresa un minimo de 8 caracteres'
              : null,
        ),
        const SizedBox(height: 40),
        ElevatedButton(
          child: const SizedBox(
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
        const SizedBox(height: 20),
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
    ));
  }

  Widget togglePassword() {
    return IconButton(
        onPressed: () {
          setState(() {
            ishiddenPassword = !ishiddenPassword;
          });
        },
        icon: ishiddenPassword
            ? const Icon(Icons.visibility)
            : const Icon(Icons.visibility_off),
        color: Colors.grey);
  }
}
