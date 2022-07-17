import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return FooterPage();
  }
}

class FooterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 125),
      child: Column(
          children: [
            Text( 'Legal Terms', style: TextStyle(fontWeight: FontWeight.bold,
                color:Colors.indigo[900])),
            Text('Copyright© 2022, Oracle and/or its affiliates. All Rights Reserved. Oracle Corporation and/or its affiliates. Other', 
            style: TextStyle(fontWeight: FontWeight.bold, color:Colors.grey))
          ],
        ),
    );
  }
}