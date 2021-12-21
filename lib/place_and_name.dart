import 'package:du_lich_viet_nam/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PlaceAndName extends StatelessWidget {
  const PlaceAndName({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 30,
        right: 30,
        top: 12,
        bottom: 24,
      ),
      decoration: BoxDecoration(
        color: mSecondaryColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(36),
          bottomRight: Radius.circular(36),

        )
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Nhà tao',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                  ),
                ),
                Text(
                'Vực thẳm của thế giới',
                style: TextStyle(
                  fontSize: 12,
                  
                  ),
                ),
              
            ],
          ),
          Row(
            children: [
              SvgPicture.asset('assets/icons/start.svg'),
              Text('6.8')

            ],
          )
        ],
      ),
    );
  }
}
