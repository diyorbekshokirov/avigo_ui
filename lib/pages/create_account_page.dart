import 'package:avigo_ui/pages/welcome_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class CreateAccount extends StatefulWidget {
  static const String id = "create";
  const CreateAccount({Key? key}) : super(key: key);

  @override
  State<CreateAccount> createState() => _CreateState();
}

class _CreateState extends State<CreateAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: const EdgeInsets.only(left: 15, top: 80, right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children:  [

                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacementNamed(WelcomePage.id);
                  },
                  child: const Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                    size: 30,
                  ),
                ),

                const SizedBox(
                  width: 40,
                ),
                const Text(
                  "Create Account",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                )
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            const Text(
              'Sign up to keep exploring amazing\ndestinations around the world',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(
              height: 60,
            ),
            Container(
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.shade300,
              ),
              child: const TextField(
                autofocus: true,
                style: TextStyle(fontSize: 18, color: Colors.black),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  labelText: 'Full Name',
                  labelStyle: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                  prefixIcon: Icon(
                    CupertinoIcons.person_circle_fill,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),



            const SizedBox(height: 25,),

            Container(
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.shade300,
              ),
              child: TextField(
                autofocus: true,
                style: const TextStyle(fontSize: 18, color: Colors.black),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  labelText: 'Email Address',
                  labelStyle:
                  TextStyle(color: Colors.grey.shade900, fontSize: 17),
                  prefixIcon: const Icon(
                    Icons.email,
                    color: Colors.grey,
                  ),

                ),
              ),
            ),

            const SizedBox(height: 25,),

            Container(
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.shade300,
              ),
              child: TextField(
                autofocus: true,
                style: const TextStyle(fontSize: 18, color: Colors.black),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  labelText: 'Date of Birth',
                  labelStyle:
                  TextStyle(color: Colors.grey.shade900, fontSize: 17),
                  prefixIcon: const Icon(
                    CupertinoIcons.calendar,
                    color: Colors.grey,
                  ),

                ),
              ),
            ),

            const SizedBox(height: 25,),

            Container(
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.shade300,
              ),
              child: TextField(
                obscureText: true,
                autofocus: true,
                style: const TextStyle(fontSize: 18, color: Colors.black),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  labelText: 'password',
                  labelStyle:
                  TextStyle(color: Colors.grey.shade900, fontSize: 17),
                  prefixIcon: const Icon(
                    Icons.lock,
                    color: Colors.grey,
                  ),
                  suffixIcon: const Icon(
                    CupertinoIcons.eye_slash_fill,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),


            const SizedBox(
              height: 30,
            ),
            Container(
              alignment: Alignment.center,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.deepPurple,
              ),
              child: const Text(
                "LET'S GET STARTED",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),

            const SizedBox(height: 50,),

            const Center(
              child: SelectableText.rich(
                TextSpan(
                  children: [
                    TextSpan(text:"     By creating an account, you agre to our\n"),
                    TextSpan(text:"Terms &  Conditions ",style: TextStyle(decoration: TextDecoration.underline,color: Colors.deepPurple)),
                    TextSpan(text:"and agree to "),
                    TextSpan(text:"Privacy Policy.",style: TextStyle(decoration: TextDecoration.underline,color: Colors.deepPurple)),
                  ],
                ),
              ),
            ),


          ],
        ),
      ),
    );
  }
}
