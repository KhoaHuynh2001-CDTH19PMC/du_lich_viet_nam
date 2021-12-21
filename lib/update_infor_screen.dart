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
                    Icons.email_sharp,
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
                    Icons.email_sharp,
                    color: Colors.black,
                  )),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
            ),
            Container(
              width: 250,
              child: OutlinedButton(
                onPressed: () {
                  if (_tendangnhap.text == _password.text) {
                    Navigator.pushNamed(context, '/main');
                  } else if (_tendangnhap.text == '' || _password.text == '') {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        title: const Text('Thông Báo'),
                        content: Text('Email hoặc Password đang bị thiếu'),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: const Text('Tắt'),
                          ),
                        ],
                      ),
                    );
                  }
                },
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
