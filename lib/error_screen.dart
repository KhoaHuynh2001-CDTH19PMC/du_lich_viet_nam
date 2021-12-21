import 'package:flutter/material.dart';
class ErrorScreen extends StatefulWidget {
  const ErrorScreen({Key? key}) : super(key: key);

  @override
  State<ErrorScreen> createState() => _ErrorScreenState();
}

class _ErrorScreenState extends State<ErrorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.network(
                'images/error.png',
                width: 100,
                height: 100,
              ),
              Text(
                'Oops...không thể đăng nhập',
                style: TextStyle(
                  fontSize: 30.0,
                ),
              ),
              Text('Email với mật khẩu bị sai!',
                  style: TextStyle(fontSize: 16.0, color: Colors.black)),
              Text('Vui lòng thử lại!',
                  style: TextStyle(fontSize: 16.0, color: Colors.black)),
              SizedBox(
                height: 70,
              ),
              Container(
                width: 250,
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.pop(context, '/home');
                  },
                  child: Text(
                    "Thử lại",
                    style: TextStyle(color: Colors.black),
                  ),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.grey.shade300),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                      )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}