import 'package:flutter/material.dart';
import 'package:whatapp_ui_design/tabs/call.dart';
import 'package:whatapp_ui_design/tabs/camera.dart';
import 'package:whatapp_ui_design/tabs/chats.dart';
import 'package:whatapp_ui_design/tabs/status.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsApp',
      theme: ThemeData(
        accentColor: Color.fromARGB(255, 35, 112, 37),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this, initialIndex: 1)
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("WhatsApp"),
        backgroundColor: const Color.fromARGB(255, 22, 54, 24),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.white,
              )),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
          ),
        ],
        bottom: TabBar(
          indicatorColor: Colors.white,
          controller: _tabController,
          tabs: const [
            Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(text: 'CHATS'),
            Tab(text: 'STATUS'),
            Tab(text: 'CALL'),
          ],
        ),
      ),
      body: TabBarView(
          controller: _tabController,
          children: const [camera(), chats(), status(), call()]),
      floatingActionButton: _tabController.index == 0
          ? FloatingActionButton(
              onPressed: () {},
              child: const Icon(Icons.camera_alt),
            )
          : _tabController.index == 1
              ? FloatingActionButton(
                  onPressed: () {},
                  child: const Icon(Icons.message),
                )
              : _tabController.index == 2
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(
                          height: 45.0,
                          width: 45.0,
                          child: FloatingActionButton(
                            backgroundColor: Colors.white,
                            onPressed: () {},
                            child: const Icon(
                              Icons.edit,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        FloatingActionButton(
                          onPressed: () {},
                          child: const Icon(Icons.camera_alt),
                        )
                      ],
                    )
                  : FloatingActionButton(
                      onPressed: () {},
                      child: const Icon(Icons.call),
                    ),
    );
  }
}
