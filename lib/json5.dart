import 'package:flutter/material.dart';

class Json5page extends StatefulWidget {
  @override
  State<Json5page> createState() => _Json5pageState();
}

class _Json5pageState extends State<Json5page> {
  Map? map = {};
  List list = [
    {
      "albumid": 1,
      "id": 1,
      "title": "first image title",
      "url": "https://bit.ly/3GFGGnp",
      "thumbnailurl": "https://bit.ly/3GFGGnp"
    },
    {
      "albumid": 1,
      "id": 2,
      "title": "second image title",
      "url": "https://bit.ly/3X4yfHr",
      "thumbnailurl": "https://bit.ly/3X4yfHr"
    },
    {
      "albumid": 1,
      "id": 3,
      "title": "third image title",
      "url": "https://bit.ly/3X4yfHr",
      "thumbnailurl": "https://bit.ly/3X4yfHr"
    },
  ];

  Photolist? photolist;
  List<Photolist> data =[];

  @override
  void initState() {
    super.initState();

    for(int i=0 ;i<list.length;i++) {
      photolist = Photolist.fromjson(list[i]);
      data.add(photolist!);
    }
    data[1].title;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,title: Text("${data[1].title}")),
    );
  }
}

class Photolist {
  int albumid;
  int id;
  String title;
  String url;
  String thumbnailurl;

  Photolist(this.albumid, this.id, this.title, this.url, this.thumbnailurl);

  factory Photolist.fromjson(map) {
    return Photolist(map['albumid'], map['id'], map['title'], map['url'],
        map['thumbnailurl']);
  }
}
