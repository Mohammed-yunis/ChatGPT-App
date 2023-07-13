import 'package:chat_gpt/widgets/drop_down_widget.dart';
import 'package:flutter/material.dart';

import '../constants/constants.dart';
import '../widgets/text_widget.dart';

class Services{
  static Future showModelSheet(context)async{
    return await showModalBottomSheet(
      backgroundColor: scaffoldBackGround,
      context: context,
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(18.0),
          child: Row(
            children: const [
              DefaultText(label: "Chosen Model :",fontSize: 16,),
              DropDown()
            ],
          ),
        );
      },);
}
}