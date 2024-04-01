import 'package:flutter/material.dart';
import 'package:whatapp_ui_design/models/status_model.dart';

class status extends StatelessWidget {
  const status({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: ListTile(
                leading: Container(
                  width: 50,
                  child: Stack(
                    children: [
                      ClipOval(
                        child: Image.network(
                          'https://randomuser.me/api/portraits/women/40.jpg',
                          height: 50,
                          width: 50,
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(10)),
                          child: const Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                title: const Text(
                  "My Status",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.4),
                ),
                subtitle: const Text(
                  "Tab to add status update",
                  style: TextStyle(fontSize: 14, letterSpacing: 1.4),
                ),
              ),
            )
          ],
        ),
        Container(
          width: double.infinity,
          height: 40,
          color: Colors.grey.shade200,
          child: const Padding(
            padding: EdgeInsets.all(6.0),
            child: Text(
              "Recent Updates",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w600,
                letterSpacing: 1.4,
              ),
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: statusData.length,
            itemBuilder: (context, i) => Column(
              children: [
                const Divider(
                  height: 10,
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.grey,
                    backgroundImage: NetworkImage(statusData[i].pic),
                  ),
                  title: Text(
                    statusData[i].name,
                    style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.4),
                  ),
                  subtitle: Text(
                    statusData[i].time,
                    style: const TextStyle(fontSize: 12, letterSpacing: 1.4),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
