import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int days=30;
    return Scaffold(
      appBar: AppBar(title: Text('Catalog App',style: TextStyle(color: Colors.black),),
      ),
      drawer: Drawer(
        //backgroundColor: Colors.deepPurpleAccent,
        child: Container(
          color: Colors.deepPurple,
          child: ListView(
            children: [
             DrawerHeader(
                 child:UserAccountsDrawerHeader(
                   margin: EdgeInsets.zero,
                     currentAccountPicture: CircleAvatar(
                       backgroundImage: NetworkImage('https://media.istockphoto.com/photos/baby-joy-picture-id157281030?s=612x612'),
                     ),
                     accountName: Text('Abdul Aziz'),
                     accountEmail: Text('abdul1.mkd@gmail.com'),),
             ),
              ListTile(
                leading: Icon(Icons.home,color: Colors.white,),
                title: Text('Home',textScaleFactor:1.3,style: TextStyle(color: Colors.white),),
              ),
              ListTile(
                leading: Icon(Icons.account_circle,color: Colors.white,),
                title: Text('Account',textScaleFactor: 1.3,style: TextStyle(color: Colors.white),),
              )

            ],
          ),
        ),
      ),
     body: ListView.builder(

          itemBuilder: (context,index){
         }
         ),
    );
  }
}



