import 'package:flutter/material.dart';

class jsontest extends StatefulWidget {
  @override
  State<jsontest> createState() => _jsontestState();
}

class _jsontestState extends State<jsontest> {
  Creative? creative;
  Map map11 = {
    "id": "3534",
    "name": "Rutvik patel",
    "score": 333,
  };

  @override
  void initState() {
    super.initState();
    creative = Creative.fromjson(map11);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello, ${creative!.name}"),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "id=${creative!.id}",
              style: TextStyle(fontSize: 22),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "name=${creative!.name}",
              style: TextStyle(fontSize: 22),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "score=${creative!.score}",
              style: TextStyle(fontSize: 22),
            ),
          ],
        ),
      ),
    );
  }
}

class Creative {
  String id;
  String name;
  int score;

  Creative(this.id, this.name, this.score);

  factory Creative.fromjson(map11) {
    return Creative(map11['id'], map11['name'], map11['score']);
  }
}
