import 'package:flutter/material.dart';


class MainBody extends StatefulWidget {
  const MainBody({Key? key}) : super(key: key);

  @override
  State<MainBody> createState() => _MainBodyState();
}

class _MainBodyState extends State<MainBody> {  
  Widget customRow(String ten,String diadiem){
    return Column(children: [
      Image.network("img/diadanh/"+ten+".jpg"),

    ],);
  }
  @override
  Widget build(BuildContext context) {
    return 
    SingleChildScrollView(
      child: Column(children: [          
          Text("Đia danh hot"),
          
          Text("Địa danh mới"),
          customRow('cuu_trai_cau','Trung quốc'),
          customRow('Daocheng','Trung quốc'),
          customRow('Nyingchi','Trung quốc'),
          customRow('Yadong','Trung quốc'),
          customRow('Zayu','Trung quốc'),
        ],
      ));
  }
}