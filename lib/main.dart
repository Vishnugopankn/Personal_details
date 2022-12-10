import 'package:flutter/material.dart';

void main() {
  runApp(const Contactlist());
}

class Contactlist extends StatefulWidget {
  const Contactlist({Key? key}) : super(key: key);

  @override
  State<Contactlist> createState() => _ContactlistState();
}

class _ContactlistState extends State<Contactlist> {
  List l1=[100,200,100,200];
  List l2=["Paedar","Tiphany","Putnam","Pietro"];
  List l3=["city:Boronow","city:Mingshuihe","city:Ranchuelo","city:Ciomas"];
  List l4=["P","V","S","A"];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Contact list",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),),
        body: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text("List view search",style:TextStyle(color: Colors.orangeAccent,
                    fontSize: 20,fontWeight: FontWeight.bold) ,),
              ),
            ),
            // SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  prefixIcon: Icon(Icons.search),
                  suffixIcon: Icon(Icons.cancel),
                ),
              ),
            ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: l1.length,
                  itemBuilder:(BuildContext context,int i){
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                       height: 90,
                        color: Colors.teal[l1[i]],
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 8.0),
                              child: CircleAvatar(
                                backgroundColor: Colors.brown,maxRadius: 35,
                                child:
                                Text("${l4[i]}",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 23) ,),
                              ),
                            ),
                            SizedBox(width: 30,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("${l2[i]}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                                Text("${l3[i]}",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black45),),
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  }
                  ),
          ],

          ),
        ),
      ),
    );
  }
}
