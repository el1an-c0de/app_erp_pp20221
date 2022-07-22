import '../Screens/screens.dart';

class BarChartWithTitle extends StatelessWidget {
  final String title;
  final String subtitle;

  const BarChartWithTitle({
    Key? key,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: Styles.defaultBorderRadius,
        color: Colors.blue,
        image: const DecorationImage(
            image: ExactAssetImage("images/f-panel.png"), fit: BoxFit.cover),
      ),
      padding: EdgeInsets.all(Styles.defaultPadding),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w800,
                  fontFamily: 'DejaVuSans',
                ),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 1),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            width: 200,
          ),
          const SizedBox(height: 10),
          Responsive.isDesktop(context)
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    CurrencyText(
                      subtitle: subtitle,
                    ),
                    const SizedBox(width: 8),
                  ],
                )
              : Column(
                  children: <Widget>[
                    CurrencyText(
                      subtitle: subtitle,
                    ),
                    const SizedBox(width: 8),
                  ],
                ),
          const SizedBox(
            height: 38,
          ),
        ],
      ),
    );
  }
}
