import 'package:flutter/material.dart';
import 'package:whatapp_ui_design/models/call_model.dart';

class call extends StatelessWidget {
  const call({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: callsData.length,
      itemBuilder: (context, i) => Column(
        children: [
          const Divider(
            height: 10,
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.grey,
              backgroundImage: NetworkImage(callsData[i].pic),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  callsData[i].name,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.4,
                  ),
                ),
                Icon(i % 5 == 0 ? Icons.video_call : Icons.call)
              ],
            ),
            subtitle: Text(
              callsData[i].time,
              style: const TextStyle(
                fontSize: 12,
                letterSpacing: 1.4,
              ),
            ),
          )
        ],
      ),
    );
  }
}
