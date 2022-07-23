import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const FooterPage();
  }
}

class FooterPage extends StatelessWidget {
  const FooterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 125),
      child: Column(
        children: [
          Text('Legal Terms',
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.indigo[900])),
          const Text(
              'Copyright© 2022, Oracle and/or its affiliates. All Rights Reserved. Oracle Corporation and/or its affiliates. Other',
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey))
        ],
      ),
    );
  }
}
