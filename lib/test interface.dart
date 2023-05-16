void main(){

  two o2=two();
  o2.demo();
}
class one{
  demo() {

  }
  demo1(){

  }
}
class two implements one{

  @override
  demo() {
  // one o=one();
  // o.demo();
   print("class two");
  }

  @override
  demo1() {

  }
}