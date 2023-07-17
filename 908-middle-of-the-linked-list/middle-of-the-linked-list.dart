/**
 * Definition for singly-linked list.
 * class ListNode {
 *   int val;
 *   ListNode? next;
 *   ListNode([this.val = 0, this.next]);
 * }
 */
class Solution {
  ListNode? middleNode(ListNode? head) {
    ListNode? h=head;
    int i=0;
while(h?.next !=null){
i++;
h=h?.next;
}
h=head;
for(int k=0;k<i;k++){
    
if(i%2!=0){

        if(k==(i~/2)){
 
return h?.next;
    }
}else{
      if(k==(i~/2)){

return h;
    }
}
h=h?.next;
}
return head;
  }
}