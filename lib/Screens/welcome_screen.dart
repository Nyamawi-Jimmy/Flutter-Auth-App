import 'package:firebase_app/Screens/registration_page.dart';
import 'package:firebase_app/Screens/home_screen.dart';
import 'package:firebase_app/provider/auth_provider.dart';
import 'package:firebase_app/widget/button_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    final ap= Provider.of<AuthProvider>(context,listen: false);
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 40,horizontal: 20),
          child: Column(
            children: [
              Image.asset(
                "assets/images/image1.png",
                height: 400,
              ),
              const Text("Let's get started",style: TextStyle(
                fontSize: 26,
                color: Colors.black54,
                fontWeight: FontWeight.bold
              ),),
              SizedBox(height: 10,),
              Text("Never a better time than now to start.",style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17,
                color: Colors.grey.shade500,
              ),),
              SizedBox(height: 40,),
              InkWell(
                  onTap: (){
                    ap.isSignedIn==true? Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen())):
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context)=>RegisterScreen()));
                  },
                  child: ButtonWidget(text: "Get Started"))
            ],
          ),
        ),
      ),
    );
  }
}
