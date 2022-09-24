
import 'dart:ffi';
import 'package:catalog_app/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name='';
  bool changebutton=false;
  final _formKey=GlobalKey<FormState>();

  movieToHome(BuildContext context) async{
    if(_formKey.currentState!.validate()) {
      setState(() {
        changebutton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoutes);
      setState(() {
        changebutton = false;
      });
    }
  }
  @override
  Widget build(BuildContext context) {

    return Material(
      child: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Image.asset('images/login.png',fit: BoxFit.fill),
                SizedBox(
                  height: 20,
                  child: Text('SignIn Page'),
                ),
                Text('WelCome  $name',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,),),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32,vertical: 16),
                  child: Column(
                    children: [
                      TextFormField(
                        keyboardType: TextInputType.phone,
                        maxLength: 11,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.phone),
                          labelText: name,
                          hintText: 'Enter Name'

                        ),
                        validator: (value){
                          if(value!.isEmpty){
                            return 'UserName Can Not be Empty!';
                          }
                          return null;
                        },
                        onChanged: (value){
                          name=value;
                          setState(() {
                          });
                        },
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock),
                          suffixIcon: Icon(Icons.password),
                            labelText: 'Enter password',
                            hintText: 'password'
                        ),
                        validator: (value){
                          if(value!.isEmpty){
                            return 'password can not be null';
                          }
                          else if(value.length<6){
                            return 'passwor lenght should be it less 6';
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 25,
                      ),

                      Material(
                        color: Colors.deepPurpleAccent,
                      borderRadius: BorderRadius.circular(changebutton ? 50 : 8),

                        child: InkWell(
                          onTap: () {
                            movieToHome(context);
                          },
                          child: AnimatedContainer(
                            duration: Duration(seconds:1),
                            height: 50,
                            width: changebutton ? 60 : 150,
                            child: Center(child: changebutton ? Icon(Icons.done,color: Colors.white,):Text('Login',style: TextStyle(color: Colors.white,fontSize: 20),)),

                          ),
                        ),
                      )

                      // ElevatedButton(onPressed: (){
                      //  // Navigator.pushNamed(context, MyRoutes.homeRoutes);
                      // }, child:const Text('Login'),
                      // style: TextButton.styleFrom(
                      //   backgroundColor: Colors.deepPurpleAccent,
                      //     minimumSize: Size(140,40)),
                      // ),
                    ],
                  ),
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
