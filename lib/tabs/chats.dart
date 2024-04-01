import 'package:flutter/material.dart';
import 'package:whatapp_ui_design/models/chat_model.dart';

class chats extends StatelessWidget {
  const chats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: chatsData.length,
      itemBuilder: (context, i) => Column(
        children: [
          const Divider(
            height: 10,
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.grey,
              backgroundImage: NetworkImage(chatsData[i].pic),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  chatsData[i].name,
                  style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.4),
                ),
                Text(
                  chatsData[i].time,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 11,
                    letterSpacing: 1.4,
                  ),
                )
              ],
            ),
            subtitle: Text(
              chatsData[i].msg,
              style: const TextStyle(
                fontSize: 12,
                letterSpacing: 1.4,
                color: Colors.black54,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
