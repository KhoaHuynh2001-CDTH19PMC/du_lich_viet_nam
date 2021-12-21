import 'package:du_lich_viet_nam/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:du_lich_viet_nam/constants.dart';

class MyHeader extends StatelessWidget {
  const MyHeader({
    Key ? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 400,
      child: Stack(
        children: [
          Image.asset(
            'assets/images/header.png',
            height: 400,
            fit: BoxFit.cover,
          ),
          Positioned(
            left: 30,
            top: 60,
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(
                    color: mBackgroundColor,
                    borderRadius: BorderRadius.circular(8)),
                child: Icon(
                  Icons.arrow_back_ios,
                ),
              ),
            ),
          ),
          Positioned(
            right: 16,
            bottom: 16,
            child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: mSecondaryColor,
                borderRadius: BorderRadius.circular(36)
              ),
              child: SvgPicture.asset('assets/icons/favorite.svg'),
            ),
          ),
        ],
      ),
    );
  }
}
