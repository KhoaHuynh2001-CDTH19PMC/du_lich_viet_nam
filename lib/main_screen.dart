import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(title: const Text('Facebook')),
          body: TabBarView(
            children: [
              Icon(Icons.supervisor_account),
              Icon(Icons.notifications),
            ],
          ),
          endDrawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                DrawerHeader(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                    ),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 35,
                          backgroundImage: NetworkImage('img/avt/khoa.jpg'),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Khoa Huynh',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        )
                      ],
                    )),
                //1
                ListTile(
                  title: Row(children: [
                    Icon(
                      Icons.favorite,
                      size: 30,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Yêu thích',
                      style: TextStyle(fontSize: 18),
                    )
                  ]),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                //2
                ListTile(
                  title: Row(
                    children: [
                      Icon(
                        Icons.settings,
                        size: 30,
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Cài đặt',
                        style: TextStyle(fontSize: 18),
                      )
                    ],
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: Row(
                    children: [
                      RotatedBox(
                        quarterTurns: 2,
                        child: Icon(
                          Icons.logout,
                          size: 30,
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Đăng xuất',
                        style: TextStyle(fontSize: 18),
                      )
                    ],
                  ),
                  onTap: () {
                    Navigator.popAndPushNamed(context, '/home');
                  },
                ),
              ],
            ),
          ),
        ));
  }
}
