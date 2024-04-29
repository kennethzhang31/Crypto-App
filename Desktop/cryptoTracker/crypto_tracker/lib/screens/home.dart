import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;
import 'package:crypto_tracker/models/coins.dart';

class Home extends StatefulWidget{
  const Home ({super.key});

  @override
  State<Home> createState(){
    return _Home();
  }
}

class _Home extends State<Home>{
  
  List <Coins>? coinMarket;

  @override
  void initState(){
    super.initState();
    fetchCoinMarket();
  }

  Future <void> fetchCoinMarket() async {
    try{
      var url = Uri.parse('https://api.coincap.io/v2/assets'); 
      var response = await http.get(url);

      if (response.statusCode == 200) {
        var data = json.decode(response.body);
        List<Coins> coinsList = List<Coins>.from(data['data'].map((x) => Coins.fromJson(x)));
        setState(() {
          coinMarket = coinsList;
        });
      } else {
        throw Exception('Failed to load data');
      }
    } catch (error) {
      print('Error: $error');
    }
  }
    

  @override
  Widget build(BuildContext context){
    
    double myWIDTH = MediaQuery.of(context).size.width;
    double myHEIGHT = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        height: myHEIGHT,
        width: myWIDTH,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromARGB(255, 255, 219, 73),
              Color(0xffFBC700)
            ]
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: myWIDTH * 0.05, vertical: myHEIGHT * 0.03),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: myWIDTH * 0.015,
                      vertical: myHEIGHT * 0.005
                    ),
                    child: const Text(
                      'Your Position',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )
                  )
                ],
              )
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: myWIDTH * 0.07),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '\$ 1,000,000',
                    style: TextStyle(fontSize: 30)
                  ),
                  Container(
                    padding: EdgeInsets.all(myWIDTH * 0.015),
                    height: myHEIGHT * 0.04,
                    width: myWIDTH * 0.1,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white.withOpacity((0.5)),
                    ),
                    child: Icon(Icons.auto_graph)
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: myWIDTH * 0.07),
              child: Row(
                children: [
                  Text(
                    '+ 30%',
                    style: TextStyle(fontSize: 15)
                  ),
                ],
              ),
            ),
            Container(
              height: myHEIGHT * 0.7,
              width: myWIDTH,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50)
                ),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: myHEIGHT * 0.01,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: myWIDTH * 0.07),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Assets',
                          style: TextStyle(fontSize: 16),
                        ),
                        Icon(Icons.add)
                      ],
                    ),
                  ),
                  Expanded(child: ListView.builder(
                    itemCount: coinMarket?.length ?? 0,
                    itemBuilder: (context, index){
                      return ListTile(
                        title: Text(coinMarket![index].name.toString()),
                        subtitle: Text(coinMarket![index].symbol.toString())
                      );
                    }
                  ))
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}