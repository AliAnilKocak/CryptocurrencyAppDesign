import 'package:cryptocurrencyAppDesign/constants/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'sfpro',
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: buildBottomBar(),
      backgroundColor: mainDarkColor,
      appBar: buildAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            buildSearchBar(),
            Padding(
              padding: const EdgeInsets.only(left:24.0,right: 24),
              child: ListView(
                physics: ScrollPhysics(),
                shrinkWrap: true,
                children: <Widget>[
                  buildItem(
                      "Etherium (ETH)",
                      "\$1.512.00",
                      "+0.31%",
                      Icon(
                        Icons.adjust,
                        color: Colors.white,
                      ),
                      Colors.blueAccent,
                      true),
                  Divider(
                    color: Colors.white.withOpacity(0.2),
                  ),
                  buildItem(
                      "Gemini Dollar (GUSD)",
                      "\$7.312.00",
                      "-0.21%",
                      Icon(
                        Icons.all_out,
                        color: Colors.white,
                      ),
                      Colors.amberAccent,
                      false),
                  Divider(
                    color: Colors.white.withOpacity(0.2),
                  ),
                  buildItem(
                      "Bitcoin (BTC)",
                      "\$9.299.00",
                      "+0.51%",
                      Icon(
                        Icons.adjust,
                        color: Colors.white,
                      ),
                      Colors.redAccent,
                      true),
                  Divider(
                    color: Colors.white.withOpacity(0.2),
                  ),
                  buildItem(
                      "Basic Token (BAT)",
                      "\$1.144.00",
                      "+0.14%",
                      Icon(
                        Icons.all_out,
                        color: Colors.white,
                      ),
                      Colors.purpleAccent,
                      true),
                  Divider(
                    color: Colors.white.withOpacity(0.2),
                  ),
                  buildItem(
                      "Etherium (ETH)",
                      "\$1.512.00",
                      "+0.31%",
                      Icon(
                        Icons.adjust,
                        color: Colors.white,
                      ),
                      Colors.blueAccent,
                      true),
                  Divider(
                    color: Colors.white.withOpacity(0.2),
                  ),

                  buildItem(
                      "Gemini Dollar (GUSD)",
                      "\$7.312.00",
                      "-0.21%",
                      Icon(
                        Icons.all_out,
                        color: Colors.white,
                      ),
                      Colors.amberAccent,
                      false),


                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  buildItem(String moneyType, String price, String yuzde, Icon icon,
      Color borderColor, bool isReduce) {
    return Container(
      height: 72,
      child: Row(
        children: <Widget>[
          Container(
            child: icon,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: borderColor)),
            height: 48,
            width: 48,
            margin: EdgeInsets.only(right: 12),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  moneyType,
                  style: TextStyle(color: Colors.white.withOpacity(0.7)),
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  children: <Widget>[
                    Text(
                      price,
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    Container(
                      padding: EdgeInsets.all(2),
                      margin: EdgeInsets.only(left: 8),
                      decoration: BoxDecoration(
                          color: isReduce ? Colors.green : Colors.red,
                          borderRadius: BorderRadius.circular(5)),
                      child: Text(
                        yuzde,
                        style: TextStyle(
                            fontSize: 8, color: Colors.white.withOpacity(0.8)),
                      ),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Container buildBottomBar() {
    return Container(
      padding: EdgeInsets.only(top: 8),
      height: 64,
      decoration: BoxDecoration(color: Colors.transparent),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Column(
            children: <Widget>[
              Icon(Icons.refresh, color: Colors.white.withOpacity(0.8)),
              Text("Exchange",
                  style: TextStyle(color: Colors.white.withOpacity(0.8))),
            ],
          ),
          Column(
            children: <Widget>[
              Icon(Icons.airplanemode_active,
                  color: Colors.white.withOpacity(0.8)),
              Text("Analystic",
                  style: TextStyle(color: Colors.white.withOpacity(0.8))),
            ],
          ),
          Column(
            children: <Widget>[
              Icon(Icons.chrome_reader_mode,
                  color: Colors.white.withOpacity(0.8)),
              Text("Currencies",
                  style: TextStyle(color: Colors.white.withOpacity(0.8))),
            ],
          ),
          Column(
            children: <Widget>[
              Icon(
                Icons.more_horiz,
                color: Colors.white.withOpacity(0.8),
              ),
              Text(
                "More",
                style: TextStyle(color: Colors.white.withOpacity(0.8)),
              ),
            ],
          )
        ],
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      actions: <Widget>[
        Icon(Icons.call_missed_outgoing),
        SizedBox(
          width: 8,
        ),
        Icon(Icons.more_horiz),
        SizedBox(
          width: 12,
        )
      ],
      elevation: 0,
      backgroundColor: mainDarkColor,
      title: Text(
        "Currencies",
        style: TextStyle(fontSize: 24),
      ),
    );
  }

  Container buildSearchBar() {
    return Container(
      decoration: BoxDecoration(
          color: mainLightColor, borderRadius: BorderRadius.circular(32)),
      margin: EdgeInsets.all(18),
      height: 48,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: <Widget>[
            SizedBox(
              width: 12,
            ),
            Icon(
              Icons.search,
              color: textLightColor,
            ),
            SizedBox(
              width: 8,
            ),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: mainLightColor),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: mainLightColor),
                    ),
                    hintText: "Search...",
                    hintStyle: TextStyle(color: textLightColor, fontSize: 16)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
