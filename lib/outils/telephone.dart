import 'package:calculator/pages/components/calculatrice.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginscreenState createState() => _LoginscreenState();
}

class _LoginscreenState extends State<LoginScreen> {
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("phone auth"),
      ),
      body: Column(children: [
        Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 65),
              child: Center(
                child: Text(
                  " AUTHENTIFICATION",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ),
            ),
            
            Padding(
              padding: EdgeInsets.all(10.0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "num phone",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(45),
                  ),
                ),
                keyboardType: TextInputType.phone,
                controller: _controller,
              ),
            ),
          ],
        ),

        Container(
          margin: EdgeInsets.only(right: 130,left: 130),
          width: double.infinity,
          child: FlatButton(
            color: Colors.grey,
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context)=>Calculatrice(_controller.text))
                );
            },
            child: Text("Suivant"),
          ),
        )
      ]),
    );
  }
}
