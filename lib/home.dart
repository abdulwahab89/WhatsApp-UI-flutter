import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String title = "Whatsapp";
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text(title),
            leading: Icon(
              Icons.whatsapp,
            ),
            bottom: TabBar(
              tabs: [
                Tab(
                  child: Text('Chats'),
                ),
                Tab(
                  child: Text('Status'),
                ),
                Tab(
                  child: Text('Calls'),
                ),
              ],
            ),
            actions: [
              PopupMenuButton(
                  itemBuilder: (context) => [
                        PopupMenuItem(
                          value: 1,
                          child: Text(
                            'New Group',
                          ),
                        ),
                        PopupMenuItem(
                          value: 2,
                          child: Text('Settings'),
                        ),
                        PopupMenuItem(
                          value: 3,
                          child: Text('Linked Devices'),
                        )
                      ])
            ],
          ),
          body: TabBarView(
            children: [
              ListView.builder(
                  itemCount: 15,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: CircleAvatar(),
                      subtitle: Align(
                          alignment: Alignment.topLeft,
                          child: Icon(
                            Icons.check,
                          )),
                      trailing: Text('3:05'),
                    );
                  }),
              Text('Status'),
              Text('Calls'),
            ],
          ),
        ));
  }
}
