import 'package:flutter/material.dart';

class Change_PasswordScreen extends StatefulWidget {
  const Change_PasswordScreen({Key? key}) : super(key: key);

  @override
  State<Change_PasswordScreen> createState() => _Change_PasswordScreenState();
}

class _Change_PasswordScreenState extends State<Change_PasswordScreen> {
  TextEditingController _matkhaucu = new TextEditingController();
  TextEditingController _matkhaumoi = new TextEditingController();
  TextEditingController _xacnhan = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(0, 93, 158, 1),
        title: const Text('TravelStars'),
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
            ),
            //mật khẩu cũ
            TextField(
              controller: _matkhaucu,
              decoration: InputDecoration(
                  hintText: 'Mật khẩu cũ',
                  labelStyle: TextStyle(fontSize: 15, color: Colors.lightGreen),
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.black,
                  )),
              readOnly: true,
            ),
            //mật khẩu mới
            TextField(
              controller: _matkhaumoi,
              decoration: InputDecoration(
                  hintText: 'Mật khẩu mới',
                  labelStyle: TextStyle(fontSize: 15, color: Colors.lightGreen),
                  prefixIcon: Icon(
                    Icons.lock_outline,
                    color: Colors.black,
                  )),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
            ),
            //xác nhận mật khẩu mới
            TextField(
              controller: _xacnhan,
              decoration: InputDecoration(
                  hintText: 'Xác nhận mật khẩu mới',
                  labelStyle: TextStyle(fontSize: 15, color: Colors.lightGreen),
                  prefixIcon: Icon(
                    Icons.lock_outline,
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
