
import 'package:flutter/material.dart';




class Home extends StatefulWidget {
  

  @override

  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

    List<dynamic> A = [];var output;var output2;
   List<dynamic> B =[];
var name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(backgroundColor: Colors.red,title: Row(mainAxisAlignment: MainAxisAlignment.center,
      children: [
       Icon(Icons.check,size:35,color: Colors.blue,), SizedBox(width:10),Text("To do"),
      ],
    ),
    
    actions: [

Padding(
  padding: const EdgeInsets.only(right:16.0,),
  child:   GestureDetector(onTap: (){showDialog(context: context, builder: (context){return 
   AlertDialog(

title:  Text("Choose your Color"),
content:Container(height:50,
  child:   ListView(shrinkWrap: true,
  
      
  
      scrollDirection:Axis.horizontal ,
  
      
  
      
  
      children:[
  SizedBox(width:20),








  GestureDetector(onTap:(){setState(() {name=Colors.black;
    
  });},child: CircleAvatar(radius:30,backgroundColor:Colors.black)),
  
  
  
  SizedBox(width:11),
  





  GestureDetector(onTap:(){
setState(() {name=Colors.red[100];
    
  });



  },child: CircleAvatar(radius:30,backgroundColor:Colors.red[100]))
  
  
  
  
  
  
  
  
  ,SizedBox(width:11),







  
  GestureDetector(onTap: (){setState(() {name=Colors.red;
    
  });},child: CircleAvatar(radius:30,backgroundColor:Colors.red)),
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  SizedBox(width:11),
  








  GestureDetector(onTap:(){setState(() {name=Colors.cyanAccent;
    
  });},child: CircleAvatar(radius:30,backgroundColor:Colors.cyanAccent)),
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  SizedBox(width:11),
  
  
  
  
  
  
  
  
  
  GestureDetector(onTap:(){setState(() {name=Colors.lightGreenAccent[700];
    
  });},child: CircleAvatar(radius:30,backgroundColor:Colors.lightGreenAccent[700])),SizedBox(width:11),
  
 
 
 
 
 
 
 
 
 
 GestureDetector(onTap:(){setState(() {name=Colors.orange;
    
  });},child: CircleAvatar(radius:30,backgroundColor:Colors.orange)),






  SizedBox(width:20),
  
  
  ]),
),

actions: [

Center(child: GestureDetector(onTap:(){
Navigator.pop(context);


},child: Text("Done",style:TextStyle(color: Colors.red,fontSize:20))))


],




    
  );});},
      child: CircleAvatar(radius: 25,child: Container(

decoration: BoxDecoration(


gradient:RadialGradient(colors:[Colors.red,Colors.yellow,Colors.orange,Colors.blue,Colors.indigo,Colors.purple,Colors.red])


),



    )
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    ,),
  ),
),



    ],
    
    
    ),
    body: 
        
 
     
            Container(decoration: BoxDecoration(color:name),
              child: ListView.builder(itemCount:A.length,itemBuilder: (context,index){
 return 
              
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                        child:  Container(color:Colors.yellowAccent[400],


                        child:   ListTile(title:Text(A[index]),subtitle: Text("Due Date: ${B[index]}"),trailing:


                                 
                                       Container(width:80,
                                         child: Row(
                                           children: [
                                             GestureDetector(onTap: (){showDialog(context:context,builder:(context){return  AlertDialog(
title:Text("Edit Item"),content:Container(height: 150,
                  child:   Column(
                  
                    children: [
                  
                          TextField(onChanged:(value){output=value;},decoration: InputDecoration(labelText:"Task to do...",hintText: "What to do?"),),
                  
                            TextField(onChanged:(value){output2=value;},decoration: InputDecoration(labelText:"Due date...",hintText: "Till when is duable?"),),
                  
                    
                  
                    
                  
                    
                  
                    
                  
                    ],
                  
                  ),
),

actions: [Padding(
                  padding: const EdgeInsets.only(right:24.0),
                  child:   Row(mainAxisAlignment: MainAxisAlignment.end,children:[
                  
                  
                  
                  GestureDetector(onTap:(){Navigator.pop(context);setState(() {
                                              A.replaceRange(index, index+1, {output});
 B.replaceRange(index, index+1, {output2});

                   
                  });},child: Text("Add changes",style: TextStyle(fontSize:18,color:Colors.blue),)),
                  SizedBox(width: 20,),
                  
                  GestureDetector(onTap:(){Navigator.pop(context);},child: Text("Cancel",style: TextStyle(fontSize:18,color:Colors.red),))
                  
                  
                  
                  
                  
                  ]),
)],




);});setState(() {

                                               
                                             });},child: Icon(Icons.edit,size:30,)),






SizedBox(width:15),                              GestureDetector(onTap:(){setState((){A.removeAt(index);B.removeAt(index);});},
                                                                              child: Icon(Icons.delete,size:30,
                                                 ),
                                              ) ],
                                         ),
                                       ),
                                      
                                   
                        ),
                              ));
            
              
                        
               
                  
              }
               
              ),
            ),
         

    floatingActionButton: FloatingActionButton(onPressed: (){

showDialog(context:context,builder:(context){return  AlertDialog(
title:Text("Add Item"),content:Container(height: 150,
  child:   Column(
  
    children: [
  
          TextField(onChanged:(value){output=value;},decoration: InputDecoration(labelText:"Task to do...",hintText: "What to do?"),),
  
            TextField(onChanged:(value){output2=value;},decoration: InputDecoration(labelText:"Due date...",hintText: "Till when is duable?"),),
  
    
  
    
  
    
  
    
  
    ],
  
  ),
),

actions: [Padding(
  padding: const EdgeInsets.only(right:24.0),
  child:   Row(mainAxisAlignment: MainAxisAlignment.end,children:[
  
  
  
  GestureDetector(onTap:(){Navigator.pop(context);setState(() {
    A.add(output); B.add(output2);
  });},child: Text("Add",style: TextStyle(fontSize:18,color:Colors.blue),)),
  SizedBox(width: 20,),
  
  GestureDetector(onTap:(){Navigator.pop(context);},child: Text("Cancel",style: TextStyle(fontSize:18,color:Colors.red),))
  
  
  
  
  
  ]),
)],




);});

















  },child:Text("Add")),








    ); 
 

  }
}