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
        itemCount: CatalogModel.items.lenght,
          itemBuilder: (context,index){
          return ItemWidget(item:CatalogModel.items[index],);
         }
         ),
    );
      // Column(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //  // crossAxisAlignment: CrossAxisAlignment.center,
      //   children: [
      //     Align(alignment: Alignment.center,),
      //     Container(
      //       height: 50,
      //       width: 150,
      //       decoration: BoxDecoration(
      //         color: Colors.pink,
      //         borderRadius: BorderRadius.circular(15),
      //       ),
      //       child: GestureDetector(
      //         child: Center(child: Text('Login',style: TextStyle(fontSize: 30),)),
      //       ),
      //     ),
      //     SizedBox(
      //       height: 10,
      //     ),
      //     Container(
      //       height: 50,
      //       width: 150,
      //       decoration: BoxDecoration(
      //         borderRadius: BorderRadius.circular(15),
      //         color: Colors.pink,
      //
      //       ),
      //       child: GestureDetector(
      //         child: Center(child: Text('SignUp',style: TextStyle(fontSize: 30,),)),
      //
      //       ),
      //     ),
      //   ],
      // ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: (){
      //     print('Button clicked');
      //   },
      //   child: Icon(Icons.add),
      // ),

  }
}



