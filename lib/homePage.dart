import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/img/bg.png"),
          fit: BoxFit.cover,
        )
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 0,top: 200,right: 500),
        child: Column(
                      children: [
                        RichText(
                          text: TextSpan(
                            style: TextStyle(
                              color: Colors.white70, fontSize: 32,
                            ),
                            children: [
                              TextSpan(text: "Hello! I am "),
                              TextSpan(text: "Waquar,", style: TextStyle(color: Colors.white,fontSize: 38,fontWeight: FontWeight.bold)),
                              TextSpan(text: "\nDeveloper based in New Delhi, India."),
                            ]
                          ),
                        ),
                        SizedBox(height: size.height/10,),
                        Container(
                          height: size.height/8,
                          width: size.width/3,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("assets/icon/github.png")
                                  )
                                ),
                              ),
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage("assets/icon/youtube.png")
                                    )
                                ),
                              ),
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage("assets/icon/linkedin.png")
                                    )
                                ),
                              ),


                            ],
                          ),
                        )
                      ],
          ),
      ),
    );
  }
}
