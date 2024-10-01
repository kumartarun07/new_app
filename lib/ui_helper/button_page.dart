/*
import 'package:dainik_bhashkar_app/ui_helper/custom_widget.dart';
import 'package:flutter/material.dart';

class ButtonPage extends StatelessWidget {
  TextEditingController nameCtr = TextEditingController();
  TextEditingController mobNoCtr = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("Hello",style: myTextStyle20(myColors: Colors.lightBlue,myWeight: FontWeight.w900),),
          Text("World"),
          TextField(
            decoration: myDeco(hintTxt: "Enter The Age"),
          ),
          myTextField(hintText: 'Enter The Name', myController: nameCtr),
          myTextField(hintText: 'Enter The Name', myController: mobNoCtr),
          myButton(btnName: 'Click me', callback: (){
            print(nameCtr.text);
            print(mobNoCtr.text);
          })
        ],
      ),
    );
  }
}
*/
