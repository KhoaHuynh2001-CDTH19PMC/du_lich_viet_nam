import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _tendangnhap = new TextEditingController();
  TextEditingController _password = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage('img/background-du-lich.jpg'),
                fit: BoxFit.fill,
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.1), BlendMode.darken))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.network(
              'images/CATLOGO1.png',
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
            ),
            TextField(
              controller: _tendangnhap,
              decoration: InputDecoration(
                  hintText: 'Email',
                  labelStyle: TextStyle(fontSize: 15, color: Colors.lightGreen),
                  prefixIcon: Icon(
                    Icons.email_sharp,
                    color: Colors.black,
                  )),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
            ),
            TextField(
                controller: _password,
                decoration: InputDecoration(
                    hintText: 'Password',
                    labelStyle: TextStyle(fontSize: 15, color: Colors.black),
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Colors.black,
                    ))),
            Container(
              padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
            ),
            Container(
              width: 250,
              child: OutlinedButton(
                onPressed: () {
                  if (_tendangnhap.text == _password.text) {
                    Navigator.pushNamed(context, '/main');
                  } else if (_tendangnhap.text == " " ||
                      _password.text == " ") {
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
                  } else if (_tendangnhap.text != _password.text) {
                    Navigator.pushNamed(context, '/error');
                  }
                },
                child: Text(
                  "Đăng nhập",
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
