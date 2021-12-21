import 'package:du_lich_viet_nam/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'about.dart';
import 'my_header.dart';
import 'place_and_name.dart';

void main() {
  runApp(DetailScreen());
}

class DetailScreen extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mBackgroundColor,
        
        ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyHeader(),
          PlaceAndName(),
          SizedBox(height: 36,),
          About(),
          ],
      ),
    );
  }
}






