import 'package:first/json5test.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(home: Json5testpage()
  ),
  );
}

// void main() {
//   List list = ["Rutvik", 11, "Jay", "kirtan"];
//   list.removeAt(0);
//   print("This is list = $list");
//   list.add("silence");
//   print("This is list = $list");
//   print("list after adding value=$list");

//   Map<String, dynamic> map = {
//     "name": "rutvik",
//     "surname": "patel",
//     "city": "surat"
//   };
//   print("All records of map = $map");
//   print("only city from map = ${map["city"]}");

//   List<Map> listmap = [{"name": "rutvik", "surname": "patel", "city": "surat"},
//     {"name": "rutvik", "surname": "moradiya", "city": "thane"},
//     {"name": "darsh", "surname": "goti", "city": "mumbai"}];

//   print("all records of listmap = $listmap");

//   for (int i = 0; i < listmap.length; i++) {
//     print("$i=${listmap[i]}");
//   }

//   print("");
//   print("all cities only from the listmap");
//   for (int i = 0; i < listmap.length; i++) {
//     print(listmap[i]["city"]);
//   }
//   List<Map<String, int>> lm = [{"num 1": 99888776655},{"num 2":0123456789}];
//   print("listmap lm phone number= $lm");
//   for(int i=0;i<lm.length;i++)
//     {
//       print("$i = ${lm[0]["num 1"]}");
//     }
//   //print(lm.length);
//   var test = [{"name": "rutvik", "surname": "patel", "phone":0123456789}];
//   print(test[0]["name"]);

//   List list1=[];
//   Random rn=Random();
//   int max=9,min=0;
//     for(int i=0;i<=9;i++)
//     {
//       while(true)
//       {
//         int random=rn.nextInt(max-min)+min;
//         if(!list1.contains(random))
//         {
//           list1.add(random);
//           break;
//         }
//       }
//     }//f
//   print(list1);// or
// }
