
void main(){
  twotwo ob=twotwo();
  ob.get();
}
class oneone {
   get(){
       print("class one");
   }
 }
 class twotwo extends oneone {
   get() {
     super.get();
     // print("class two");

   }
 }