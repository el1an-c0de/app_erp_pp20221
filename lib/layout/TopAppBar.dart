import 'package:flutter/cupertino.dart';
import '../Widget/bar_chart_with_title.dart';

class TopAppBar extends StatelessWidget {
  const TopAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: BarChartWithTitle(
            title: "ADMINISTRACIÓN",
            subtitle: "USUARIOS",
          ),
        ),
        const SizedBox(
          width: 10,
        ),
      ],
    );
  }
}
