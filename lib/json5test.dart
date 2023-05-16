import 'package:flutter/material.dart';

class Json5testpage extends StatefulWidget {
  const Json5testpage({Key? key}) : super(key: key);

  @override
  State<Json5testpage> createState() => _Json5testpageState();
}

class _Json5testpageState extends State<Json5testpage> {
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
  Map? map={};
  Photolist? photolist;
  List<Photolist> templist = [];
  @override
  void initState() {
    super.initState();

    for(int i=0;i<list.length;i++){
      photolist = Photolist.fromjson(list[i]);
      templist.add(photolist!);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${templist[1].thumbnailurl}"),centerTitle: true,
      ),
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