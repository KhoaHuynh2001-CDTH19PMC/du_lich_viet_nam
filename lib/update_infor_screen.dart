import 'package:flutter/material.dart';

class Update_InforScreen extends StatefulWidget {
  const Update_InforScreen({Key? key}) : super(key: key);

  @override
  State<Update_InforScreen> createState() => _Update_InforScreenState();
}

class _Update_InforScreenState extends State<Update_InforScreen> {
  TextEditingController _tendangnhap = new TextEditingController();
  TextEditingController _password = new TextEditingController();
  TextEditingController _hoten = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Travel Stars'),
          backgroundColor: Color.fromRGBO(0, 93, 158, 1)),
      body: Container(
        padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
            ),
            //tên đăng nhập
            TextField(
              controller: _tendangnhap,
              decoration: InputDecoration(
                  hintText: 'Tên đăng nhập',
                  labelStyle: TextStyle(fontSize: 15, color: Colors.lightGreen),
                  prefixIcon: Icon(
                    Icons.person,
                    color: Colors.black,
                  )),
              readOnly: true,
            ),
            //họ tên
            TextField(
              controller: _hoten,
              decoration: InputDecoration(
                  hintText: 'Họ Tên',
                  labelStyle: TextStyle(fontSize: 15, color: Colors.lightGreen),
                  prefixIcon: Icon(
                    Icons.perm_identity,
                    color: Colors.black,
                  )),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
            ),
            //email
            TextField(
              controller: _hoten,
              decoration: InputDecoration(
                  hintText: 'Email',
                  labelStyle: TextStyle(fontSize: 15, color: Colors.lightGreen),
                  prefixIcon: Icon(
                    Icons.email_sharp,
                    color: Colors.black,
                  )),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
            ),
            Container(
              width: 250,
              child: OutlinedButton(
                onPressed: () {},
                child: Text(
                  "Lưu",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.blue,
                  ),
                ),
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.grey.shade300),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
