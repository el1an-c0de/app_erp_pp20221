import 'package:app_erp_pp20221/Screens/screens.dart';

class TopAppBar extends StatelessWidget {
  const TopAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Flexible(
          child: BarChartWithTitle(
            title: "ADMINISTRACIÓN",
            subtitle: "USUARIOS",
          ),
        ),
        SizedBox(
          width: 10,
        ),
      ],
    );
  }
}
