void main() {
  one ob = one();
  ob.getvalue("R");
  ob.setvalue();
  print(ob.getvalue("r"));
  print(ob.str);
}

class one {
  String str = "rutvik";

  String getvalue(String str) {
    return str;
  }

  setvalue() {
    str = "rutvik patel";
  }
}
// class oneone {
//   get(){
//       print("class one");
//   }
// }
// class twotwo extends oneone {
//     get(){
//       super.get();
//       print("class two");
//
//     }
// }
