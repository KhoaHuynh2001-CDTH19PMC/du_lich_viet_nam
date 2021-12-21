import 'package:du_lich_viet_nam/constants.dart';
import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
      
        children: [
          Text("About", 
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'Nhà tao dưới biển gần 10.000 mét nằm sâu dưới đáy biển'
          'Xung quanh toàn là nước nên không bao giờ sợ hết nước uống'
          'Thỉnh thoảng có vài con cá bơi qua tao ăn sống luôn',
          textAlign: TextAlign.justify,
          style: TextStyle(
            fontSize: 14,
            height: 1.5,

          ),
         ),
         Text(
           'Read more', 
           style: TextStyle(
             color: mPrimaryColor,
             decoration: TextDecoration.underline,
             fontWeight: FontWeight.bold

             ),
            ),
        ],
      ),
    );
  }
}