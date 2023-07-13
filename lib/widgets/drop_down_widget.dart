import 'package:chat_gpt/constants/constants.dart';
import 'package:flutter/material.dart';

class DropDown extends StatefulWidget {
  const DropDown({Key? key}) : super(key: key);

  @override
  State<DropDown> createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  String currentModel="Model1";
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
        dropdownColor:scaffoldBackGround ,
        value: currentModel,
        items: modelItemList,
        onChanged: (value){
          setState(() {
            currentModel=value.toString();
          });
        });
  }
}
