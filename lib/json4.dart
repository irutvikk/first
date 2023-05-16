import 'package:flutter/material.dart';

class Json4page extends StatefulWidget {
  const Json4page({super.key});

  @override
  State<Json4page> createState() => _Json4pageState();
}

class _Json4pageState extends State<Json4page> {
  Map mm11 = {
    "id": 45,
    "name": "Mayur Satani",
    "images": [
      {"id": 2, "imagename": "mukeshbhai"},
      {"id": 9, "imagename": "nimeshbhai"}
    ]
  };

  Demo? demo;

  @override
  void initState() {
    super.initState();
    demo = Demo.fromjson(mm11);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Json 4"),
        backgroundColor: Colors.amber, 
      ),
    );
  }
}

class Demo {
  // Map mmmm = {
  //   "id": 45,
  //   "name": "Mayur Satani",
  //   "images": [
  //     {"id": 2, "imagename": "mukeshbhai"},
  //     {"id": 9, "imagename": "nimeshbhai"}
  //   ]
  // };
  int id;
  String name;
  List<Images> images;
  Demo(this.id, this.name, this.images);
  factory Demo.fromjson(Map mm11) {

    List ll = mm11['images'];
    List<Images> templist = [];

    for(int i=0;i<templist.length;i++){
      Images ii = Images.fromjson(ll[i]);
      templist.add(ii);
    }
    return Demo(mm11['id'], mm11['name'], templist);

  }
}

class Images {
  // {"id": 2, "imagename": "mukeshbhai"},
  int id;
  String imagename;

  Images(this.id, this.imagename);
  
  factory Images.fromjson(ll) {
    return Images(ll['id'], ll['imagename']);
  }
}
