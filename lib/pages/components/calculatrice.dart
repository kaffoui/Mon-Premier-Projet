import 'package:calculator/constants/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Calculatrice extends StatefulWidget {
  final  String phone;
  Calculatrice(this.phone);

  @override
  _CalculatriceState createState() => _CalculatriceState();
}

class _CalculatriceState extends State<Calculatrice> {
  List<String> nombres = [
    "0",
    "1",
    "2",
    "3",
    "4",
    "5",
    "6",
    "7",
    "8",
    "9",
    "00"
  ];
  List<String> calcul = ["*", "+", "%", "-", "/", "C", "x", "="];
  List roland = [];
  String i = "";
  String mike = "";
  String kevin = "";
  String josue = "";

  resultat() {
    roland.clear();
    if (mike == "+") {
      final resultat = double.parse(kevin) + double.parse(josue);
      roland.add(resultat.toString());
    } else if (mike == "*") {
      final resultat = double.parse(kevin) * double.parse(josue);
      roland.add(resultat.toString());
    } else if (mike == "-") {
      final resultat = double.parse(kevin) - double.parse(josue);
      roland.add(resultat.toString());
    } else if (mike == "%") {
      final resultat = double.parse(kevin) % double.parse(josue);
      roland.add(resultat.toString());
    }else if(mike == "/") {
      final resultat = double.parse(kevin) / double.parse(josue);
      roland.add(resultat.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ma calculatrice"),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: 250,
              color: Colors.blue,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: roland
                    .map((e) => Text(
                          e,
                          style: TextStyle(fontSize: 60),
                        ))
                    .toList(), //MAP PERMET DE mettre dans text le mot ecris et dans row et ce qui conduit a une liste toujours dans row
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 210),
              decoration: BoxDecoration(
                color: colors,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(60),
                  topRight: Radius.circular(60),
                ),
              ),
              child: Container(
                padding: EdgeInsets.only(left: 10),
                margin: EdgeInsets.only(top: 50),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                i = "${calcul[5]}";
                                kevin = "";
                                josue = "";
                                mike = "";
                                roland.clear();
                              });
                            },
                            child: Container(
                              margin: EdgeInsets.only(right: 40),
                              width: 50,
                              height: 50,
                              child: Text(
                                "${calcul[5]}",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 40),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                roland.removeAt(roland.length - 1);
                              });
                            },
                            child: Container(
                              width: 50,
                              height: 50,
                              child: Text(
                                "${calcul[6]}",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 40),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                resultat();
                              });
                            },
                            child: Container(
                              width: 50,
                              height: 50,
                              child: Text(
                                "${calcul[7]}",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 40),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              i = "${nombres[7]}";
                              roland.add(i);
                              if (mike == "") {
                                kevin = kevin + i;
                                print(kevin);
                              } else {
                                josue = josue + i;
                                print(josue);
                              }
                            });
                          },
                          child: Container(
                            width: 50,
                            height: 50,
                            child: Text(
                              "${nombres[7]}",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 40),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              i = "${nombres[8]}";
                              roland.add(i);
                              if (mike == "") {
                                kevin = kevin + i;
                                print(kevin);
                              } else {
                                josue = josue + i;
                                print(josue);
                              }
                            });
                          },
                          child: Container(
                            width: 50,
                            height: 50,
                            child: Text(
                              "${nombres[8]}",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 40),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              i = "${nombres[9]}";
                              roland.add(i);
                              if (mike == "") {
                                kevin = kevin + i;
                                print(kevin);
                              } else {
                                josue = josue + i;
                                print(josue);
                              }
                            });
                          },
                          child: Container(
                            width: 50,
                            height: 50,
                            child: Text(
                              "${nombres[9]}",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 40),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              mike = "${calcul[0]}";
                              roland.add(mike);
                            });
                          },
                          child: Container(
                            width: 50,
                            height: 50,
                            child: Text(
                              "${calcul[0]}",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 40),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              i = "${nombres[4]}";
                              roland.add(i);
                              if (mike == "") {
                                kevin = kevin + i;
                                print(kevin);
                              } else {
                                josue = josue + i;
                                print(josue);
                              }
                            });
                          },
                          child: Container(
                            width: 50,
                            height: 50,
                            child: Text(
                              "${nombres[4]}",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 40),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              i = "${nombres[5]}";
                              roland.add(i);
                              if (mike == "") {
                                kevin = kevin + i;
                                print(kevin);
                              } else {
                                josue = josue + i;
                                print(josue);
                              }
                            });
                          },
                          child: Container(
                            width: 50,
                            height: 50,
                            child: Text(
                              "${nombres[5]}",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 40),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              i = "${nombres[6]}";
                              roland.add(i);
                              if (mike == "") {
                                kevin = kevin + i;
                                print(kevin);
                              } else {
                                josue = josue + i;
                                print(josue);
                              }
                            });
                          },
                          child: Container(
                            width: 50,
                            height: 50,
                            child: Text(
                              "${nombres[6]}",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 40),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              mike = "${calcul[3]}";
                              roland.add(mike);
                            });
                          },
                          child: Container(
                            width: 50,
                            height: 50,
                            child: Text(
                              "${calcul[3]}",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 40),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              i = "${nombres[1]}";
                              roland.add(i);
                              if (mike == "") {
                                kevin = kevin + i;
                                print(kevin);
                              } else {
                                josue = josue + i;
                                print(josue);
                              }
                            });
                          },
                          child: Container(
                            width: 50,
                            height: 50,
                            child: Text(
                              "${nombres[1]}",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 40),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              i = "${nombres[2]}";
                              roland.add(i);
                              if (mike == "") {
                                kevin = kevin + i;
                                print(kevin);
                              } else {
                                josue = josue + i;
                                print(josue);
                              }
                            });
                          },
                          child: Container(
                            width: 50,
                            height: 50,
                            child: Text(
                              "${nombres[2]}",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 40),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              i = "${nombres[3]}";
                              roland.add(i);
                              if (mike == "") {
                                kevin = kevin + i;
                                print(kevin);
                              } else {
                                josue = josue + i;
                                print(josue);
                              }
                            });
                          },
                          child: Container(
                            width: 50,
                            height: 50,
                            child: Text(
                              "${nombres[3]}",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 40),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              mike = "${calcul[2]}";
                              roland.add(mike);
                            });
                          },
                          child: Container(
                            width: 50,
                            height: 50,
                            child: Text(
                              "${calcul[2]}",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 40),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              i = "${nombres[0]}";
                              roland.add(i);
                              if (mike == "") {
                                kevin = kevin + i;
                                print(kevin);
                              } else {
                                josue = josue + i;
                                print(josue);
                              }
                            });
                          },
                          child: Container(
                            width: 50,
                            height: 50,
                            child: Text(
                              "${nombres[0]}",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 40),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              i = "${nombres[10]}";
                              roland.add(i);
                              if (mike == "") {
                                kevin = kevin + i;
                                print(kevin);
                              } else {
                                josue = josue + i;
                                print(josue);
                              }
                            });
                          },
                          child: Container(
                            width: 50,
                            height: 50,
                            child: Text(
                              "${nombres[10]}",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 40),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              mike = "${calcul[4]}";
                              roland.add(mike);
                            });
                          },
                          child: Container(
                            width: 50,
                            height: 50,
                            child: Text(
                              "${calcul[4]}",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 40),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              mike = "${calcul[1]}";
                              roland.add(mike);
                            });
                          },
                          child: Container(
                            width: 50,
                            height: 50,
                            child: Text(
                              "${calcul[1]}",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 40),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
