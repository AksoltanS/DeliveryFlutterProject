// ignore_for_file: file_names
import 'package:flutter/material.dart';

class PocketJob extends StatefulWidget {
  const PocketJob({super.key});

  @override
  State<PocketJob> createState() => _PocketJobState();
}

class _PocketJobState extends State<PocketJob> {
  static const List<Tab> myTabs = <Tab>[
    Tab(text: 'LEFT'),
    Tab(text: 'RIGHT'),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 0,
          backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
          bottom: const TabBar(
              unselectedLabelColor: Colors.grey,
              labelColor: Colors.red,
              tabs: [Tab(text: "Iş beriji "), Tab(text: "iş gözleýänler ")]),
        ),
        body: TabBarView(
          children: <Widget>[
            ListView.builder(
              itemCount: 40,
              itemBuilder: ((context, index) => ListTile(
                    title: Image.asset("Assets/images/manty.jpg"),
                    trailing: const Text(" App developer gerek "),
                  )),
            ),
            ListView.builder(
              itemCount: 40,
              itemBuilder: ((context, index) => ListTile(
                    title: Image.asset("Assets/images/borek.jpg"),
                    trailing: const Text(" Is gozleyan "),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
