import 'package:flutter/material.dart';
import 'package:crypto_tracker/screens/navBar.dart';

class ViewCoins extends StatefulWidget {
  const ViewCoins ({super.key});

  @override
  State<ViewCoins> createState(){
    return _ViewCoinsState();
  }
}

class _ViewCoinsState extends State<ViewCoins>{
  @override
  Widget build(BuildContext context){

    double myWIDTH = MediaQuery.of(context).size.width;
    double myHEIGHT = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: myWIDTH,
          height: myHEIGHT,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 250,
                height: 250,
                child: Image.asset('assets/images/pumping_bitcoin.gif')
              ),
              Container(
                child: const Column(
                  children: [
                    Text(
                      'Invest in Cryptocurrency!',
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black)
                    ),
                    Text(
                      'Join 420 Million Other Investors',
                      style: TextStyle(fontSize: 15, color: Colors.grey)
                    ),
                    Text(
                      'Don\'t Miss Out!',
                      style: TextStyle(fontSize: 15, color: Colors.grey)
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: myWIDTH * 0.05, vertical: myHEIGHT * 0.14
                ),
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => NavBar()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(185, 255, 214, 31),
                      borderRadius: BorderRadius.circular(50)
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: myWIDTH * 0.05, vertical: myHEIGHT * 0.013),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Start Investing',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                            )
                          ),
                          RotationTransition(
                            turns: AlwaysStoppedAnimation(310/360),
                            child: Icon(Icons.arrow_forward_rounded),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}