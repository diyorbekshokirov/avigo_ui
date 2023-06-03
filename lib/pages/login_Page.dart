import 'package:avigo_ui/pages/welcome_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class Login extends StatefulWidget {
  static const String id = "login";

  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: const EdgeInsets.only(left: 15, top: 80, right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Row(
              children: [

                GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushReplacementNamed(WelcomePage.id);
                    },
                    child: const Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                      size: 30,
                    )),

                const SizedBox(width: 40,),

                const Text("Log In", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),)

              ],
            ),

            const SizedBox(height: 25,),

            const Text('Welcome back!\nPlease log in to Continue!',style: TextStyle(fontWeight: FontWeight.bold),),

            const SizedBox(height: 60,),

            Container(
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.shade300,
              ),
              child: const TextField(
                autofocus: true,
                style: TextStyle(fontSize: 18,color: Colors.black),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  labelText: 'Email Address',
                  labelStyle: TextStyle(fontSize: 20,color: Colors.black,),
                  prefixIcon: Icon(Icons.email,color: Colors.black,),

                ),

              ),

            ),


            const SizedBox(height: 30,),

            Container(
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.shade300,
              ),
              child: TextField(
                autofocus: true,
                obscureText: true,
                style: const TextStyle(fontSize: 18,color: Colors.black),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  labelText: 'password',
                  labelStyle: TextStyle(color: Colors.grey.shade900,fontSize: 17),
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.grey.shade900,

                  ),
                  suffixIcon: const Icon(
                    CupertinoIcons.eye_slash_fill,
                    color: Colors.grey,
                  ),

                ),

              ),
            ),


            const Padding(
              padding: EdgeInsets.only(left: 238,top: 15),
              child: Text('Forgot Password?',style: TextStyle(fontSize: 18),),
            ),

            const SizedBox(height: 30,),

            Container(
              alignment: Alignment.center,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.deepPurple,
              ),
              child: const Text('LOG IN',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white),),
            ),


          ],
        ),
      ),
    );
  }
}


