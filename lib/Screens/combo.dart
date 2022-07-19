import 'package:app_erp_pp20221/Screens/OnHover.dart';
import 'package:flutter/material.dart';

class Combo extends StatelessWidget {
  const Combo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropDownPage();
  }
}

class DropDownPage extends StatefulWidget {
  const DropDownPage({Key? key}) : super(key: key);
  @override
  _DropDownPageState createState() => _DropDownPageState();
}
class _DropDownPageState extends State<DropDownPage> {
  //list of item to show in flutter drop down 
  static final data = ['Lion', 'Tiger', 'Shark', 'Snake', 'Bear','Crocodile','Monkey'];
  String initial = data.first.toString();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: DropdownButton(
            value: initial,
            icon: Icon(Icons.keyboard_arrow_down),
            items: data.map((String items) {
              return DropdownMenuItem(
                  value: items,
                  child: OnHover(
                     //Wraping the DropDownMenuItem child so then when Items of drop down is hovering we see hovering effect
                    builder: (isHovered){
                      final color = isHovered ? Colors.blue:Colors.black;
                      return Text('$items',style: TextStyle(color: color),);
                    },
                  ));
            }).toList(),
            onChanged: (String? newvalue){
              setState(() {
                initial = newvalue!;
              });
            },
          )
      ),
    );
  }
}
 
