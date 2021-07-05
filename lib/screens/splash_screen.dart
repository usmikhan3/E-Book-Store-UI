import 'package:ebookui/constants/constants.dart';
import 'package:ebookui/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';


class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
            backgroundColor:  kBackground,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Stack(
                children:[

                  Stack(
                    children: [
                      Container(
                        width: width,
                        height: height * 0.45,
                        decoration: BoxDecoration(
                            color: kPrimary,
                            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),bottomRight: Radius.circular(30))
                        ),

                      ),
                      Positioned(child: Image.asset("assets/images/blob1.png",height: 250,),right: 200,bottom: 200,),
                      Positioned(child: Image.asset("assets/images/blob2.png",height: 250),left: 200,bottom: 200,),
                    ],
                  ),

                  Center(child: Image.asset("assets/images/girl.png",height:height * 0.56,)),
                ]

              ),


              Padding(

                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Reading Is\n",style: TextStyle(fontSize: 40,color: kTextColor,fontWeight: FontWeight.bold)
                        ),
                        TextSpan(
                            text: "Fascinating",style: TextStyle(fontSize: 40,color: kTextColor,fontWeight: FontWeight.bold)
                        )
                      ]
                    )
                    ),
                    Text("World best writers, works and write entertaining literature for you",style: TextStyle(fontSize: 18,color: kText2Color),)
                  ],
                ),
              ),

              SizedBox(height: 30,),

              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Lets Start",style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold,color: kTextColor),),
                    InkWell(
                        onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (_)=>HomeScreen()));
                        },
                        child: Image.asset("assets/images/startBtn.png"))
                  ],
                ),
              )

            ],
          ),
    );
  }
}
