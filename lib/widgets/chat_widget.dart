import 'package:chat_gpt/widgets/text_widget.dart';
import 'package:flutter/material.dart';

import '../constants/constants.dart';
import '../services/asset_manager.dart';

class ChatWidget extends StatelessWidget {
  const ChatWidget({Key? key, required this.msg, required this.chatIndex})
      : super(key: key);
  final String msg;
  final int chatIndex;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: chatIndex == 0 ? scaffoldBackGround : cardColor,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              chatIndex == 0 ? AssetManager.personLogo : AssetManager.chatLogo,
              width: 35,
            ),
            Expanded(
                child: DefaultText(
              label: msg,
            )),
            chatIndex == 0
                ? const SizedBox.shrink()
                : Row(
                    children: const [
                      Icon(
                        Icons.thumb_up_alt_outlined,
                        color: Colors.white,
                      ),
                      SizedBox(width: 5,),
                      Icon(
                        Icons.thumb_down_alt_outlined,
                        color: Colors.white,
                      ),
                    ],
                  ),
          ],
        ),
      ),
    );
  }
}
