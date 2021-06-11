pragma solidity ^0.4.0;
 contract Address
{

     struct Node 
    {
     uint age;
     uint left;
     uint right;
     uint index; 
     }


    Node[100] public Btree;
    uint  head;
    uint  ind;
    uint  public found;



    function search(uint key, uint age) returns (uint)
    {
    
      if(Btree[key].age==age)
      {
          
          found=Btree[key].index;
          return;
      }
      else if(Btree[key].age>age)
           {
          if(Btree[key].left!=0){
              return search(Btree[key].left,age);
          }
          
          else {
              found=0;
              return;
           }
         }  
      else
      {
          if(Btree[key].right!=0){
              return search(Btree[key].right,age);
          }
          
          else {
              found=0;
              return;
      }
    }
    }    

    function insert(uint key, uint age,uint Address) 
    {
    if (head==0)
    {
        Btree[ind].age=age;
        Btree[ind].left=0;
        Btree[ind].right=0;
        Btree[ind].index=Address;
        head=1;
    }
    else
    {
    if (age < Btree[key].age)
    {
        if(Btree[key].left==0)
        {
        ind=ind+1;
        Btree[key].left=ind;
        Btree[ind].left=0;
        Btree[ind].right=0;
        Btree[ind].age=age;
        Btree[ind].index=Address;
        }else{
           return insert(Btree[key].left,age,Address);
        }
        
    }
    else if (age > Btree[key].age)
    {
        if(Btree[key].right==0){
            ind=ind+1;
        Btree[key].right=ind;
        Btree[ind].left=0;
        Btree[ind].right=0; 
        Btree[Btree[key].right].age=age;
        Btree[ind].index=Address;
        }else{
            return insert(Btree[key].right,age,Address);
        }
        
    }
    else 
    {
        
        Btree[key].index=Address;
    }
    
    }
      
     return;
     
    }


 
      


}
