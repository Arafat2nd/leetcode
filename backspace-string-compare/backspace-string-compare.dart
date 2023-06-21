class Solution {
  bool backspaceCompare(String s, String t) {
    List sChars=s.split("");
    List tChars=t.split("");
    List<String> temp1=[];
    List<String> temp2=[];
 
   for(int i=0;i<sChars.length;i++){
    if(sChars[i]=="#" && temp1.length>0){
      temp1.removeLast();
       }
       else{
           temp1.add(sChars[i]);
       }
   }
 
      for(int i=0;i<tChars.length;i++){
       if(tChars[i]=="#" &&  temp2.length>0){
      temp2.removeLast();
       }
       else{
           temp2.add(tChars[i]);
       }

   }
 
   print(temp1);
   print(temp2);
temp1.remove("#");
temp2.remove("#");
   if(temp1.toString() != temp2.toString()){
       return false;
   }
   return true;

  }
}