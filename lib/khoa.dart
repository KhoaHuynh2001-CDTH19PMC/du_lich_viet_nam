import 'package:flutter/material.dart';

class MainBody extends StatefulWidget {
  const MainBody({Key? key}) : super(key: key);

  @override
  State<MainBody> createState() => _MainBodyState();
}

class _MainBodyState extends State<MainBody> {  
  Widget customRow(String ten,String diadiem){
    return Stack(children: [
      Container(width: 170,height: 150, child: Image.network("img/diadanh/"+ten+".jpg",fit: BoxFit.cover)),
      Positioned(left:20.0, bottom:20.0, child: Text(diadiem,style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold))),
    ],);
  }
  @override
  Widget build(BuildContext context) {
    return 
    ListView(
      scrollDirection: Axis.horizontal,
      children: [
        customRow('cuu_trai_cau','Trung quốc'),
        customRow('Daocheng','Trung quốc'),
        customRow('Nyingchi','Trung quốc'),
        customRow('Yadong','Trung quốc'),
        customRow('Zayu','Trung quốc'),
    ],)
   ;
    // SingleChildScrollView(
    //   child: Column(children: [          
    //       Text("Đia danh hot"),
          
    //       Text("Địa danh mới"),
    //       customRow('cuu_trai_cau','Trung quốc'),
    //       customRow('Daocheng','Trung quốc'),
    //       customRow('Nyingchi','Trung quốc'),
    //       customRow('Yadong','Trung quốc'),
    //       customRow('Zayu','Trung quốc'),
    //     ],
    //   ));
  }
}