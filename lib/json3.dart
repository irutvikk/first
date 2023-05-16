import 'package:flutter/material.dart';

class Json3 extends StatefulWidget {
  const Json3({super.key});

  @override
  State<Json3> createState() => _Json3State();
}

class _Json3State extends State<Json3> {
Creative? creative;

  @override
  void initState() {
    super.initState();
    Map mm11 = {
  "shape_name" : "rectangle",
  "property" : {
    "width" : 5.0,
    "breadth" : 10.0,
  }
 };
    creative = Creative.fromjson(mm11);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${creative!.shape_name}"),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "${creative!.property.width}",
              style: TextStyle(fontSize: 22),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "${creative!.property.breadth}",
              style: TextStyle(fontSize: 22),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "${creative!.shape_name}",
              style: TextStyle(fontSize: 22),
            ),
          ],
        ),
      ),
    );
  }
}

class Creative {
  // Map mm11 = {
//   "shape_name" : "rectangle",
//   "property" : {
//     "width" : 5.0,
//     "breadth" : 10.0,
//   }
String shape_name;
Property property;

Creative(this.shape_name,this.property);
  factory Creative.fromjson(Map mm11) {
    return Creative(mm11['shape_name'],Property.fromjson(mm11["property"]));
  }
}

class Property {
 double width;
 double breadth;

 Property(this.width,this.breadth);
  factory Property.fromjson(property) {
    return Property(property['width'], property['breadth']);
  }

}
