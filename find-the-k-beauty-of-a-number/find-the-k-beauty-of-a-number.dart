 
class Solution {
  int divisorSubstrings(int num, int k) {
      List<String> digits=num.toString().split('');
       String subString="";
      int kBeauty=0;
     for(int i=0;i<digits.length-k+1;i++){
          for(int j=0;j<k;j++){
             subString+=digits[i+j]; 
         }
         if(int.tryParse(subString)==0)
            continue;
          num%(int.tryParse(subString)??-1)==0?kBeauty++:kBeauty+=0;
          subString="";
     }
return kBeauty;
  }
}