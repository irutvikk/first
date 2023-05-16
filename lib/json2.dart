import 'package:flutter/material.dart';

class jsontest2 extends StatefulWidget {
  const jsontest2({super.key});

  @override
  State<jsontest2> createState() => _jsontest2State();
}

@override
class _jsontest2State extends State<jsontest2> {
  
Json2? json2;
Map map11 = {
  "city":"Mumbai",
  "streets":[
    "1,dabholi","2address2","3address3"
  ],
};

void initState() {
  super.initState();
  json2  = Json2.fromjson(map11);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${json2!.streets[0]}"),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "city ${json2!.city}",
              style: TextStyle(fontSize: 22),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "",
              style: TextStyle(fontSize: 22),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "",
              style: TextStyle(fontSize: 22),
            ),
          ],
        ),
      ),
    );
  }
}

class Json2 {
  
String city;
List streets;

Json2(this.city,this.streets);

  factory Json2.fromjson(Map map11) {

    return Json2(map11['city'], map11['streets']);

  }
}