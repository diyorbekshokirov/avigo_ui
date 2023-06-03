import 'package:avigo_ui/pages/create_account_page.dart';
import 'package:flutter/material.dart';
import 'login_Page.dart';



class WelcomePage extends StatefulWidget {
  static const String id="home_page";

  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _HomePageState();
}

class _HomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:  Center(
        child: Column(
          children: [
            const SizedBox(height: 150,),

            const Image(image: AssetImage('assets/images/avigo.jpeg'),width: 350,),

            const SizedBox(height: 30,),

            const Text('Search less,\ntravel more!', style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),),

            const SizedBox(height: 15,),

            const Text('Gread experiences at backpacker prices.', style: TextStyle(fontSize: 16),),

            const SizedBox(height: 100,),

            GestureDetector(
              onTap: (){
                Navigator.of(context).pushNamed(CreateAccount.id);

              },

              child:Container(
                alignment: Alignment.center,
                height: 60,
                width: 380,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.deepPurple
                ),
                child: const Text('CREATE AN ACCOUNT',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
              ),
            ),

            const SizedBox(height: 25,),

            GestureDetector(
              onTap: (){
                Navigator.of(context).pushNamed(Login.id);

              },

              child: Container(
                alignment: Alignment.center,
                height: 60,
                width: 380,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(),
                  color: Colors.white,
                ),
                child: const Text('Log in',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 20),),
              ),



            ),




            const SizedBox(height: 55,),

            const SelectableText.rich(
              TextSpan(
                children: [
                  TextSpan(text:"     By creating an account, you agre to our\n"),
                  TextSpan(text:"Terms &  Conditions ",style: TextStyle(decoration: TextDecoration.underline,color: Colors.deepPurple)),
                  TextSpan(text:"and agree to "),
                  TextSpan(text:"Privacy Policy.",style: TextStyle(decoration: TextDecoration.underline,color: Colors.deepPurple)),
                ],
              ),
            ),


          ],
        ),
      ),
    );
  }
}


