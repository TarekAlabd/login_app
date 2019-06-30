import 'package:flutter/material.dart';

class CustomLoginForm extends StatefulWidget {
  @override
  _CustomLoginFormState createState() => _CustomLoginFormState();
}

class _LoginData {
  String name = "";
  String password = "";
}

class _CustomLoginFormState extends State<CustomLoginForm> {
  final _formKey = GlobalKey<FormState>();
  _LoginData _Data = new _LoginData();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Center(
            child: Image.asset(
              "images/face.png",
              width: 90,
              height: 90,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: "Name",
                border: OutlineInputBorder(
                  gapPadding: 3.3,
                  borderRadius: BorderRadius.circular(3.3),
                ),
              ),
              validator: (value) {
                if (value.isEmpty)
                  return "Please Enter Your Name!";
                else {
                  _Data.name = value;
                  print("Data: ${_Data.name}");
                }
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder(
                      gapPadding: 3.3,
                      borderRadius: BorderRadius.circular(3.3))),
              validator: (value) {
                if (value.isEmpty)
                  return "Please Enter Your Password!";
                else {
                  _Data.password = value;
                  print("Data: ${_Data.password}");
                }
              },
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButton(
                    onPressed: () {
                      if (_formKey.currentState.validate()) {
                        setState(() {
                          _Data.name = _Data.name;
                        });
                        Scaffold.of(context).showSnackBar(
                            SnackBar(content: Text("All is good!")));
                      }
                    },
                    child: Text("Submit!"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButton(
                    onPressed: () {
                      if (_formKey.currentState.validate()) {
                        _formKey.currentState.reset();
                        setState(() {
                          _Data.name = "";
                        });
                      }
                    },
                    child: Text('Clear!'),
                  ),
                )
              ],
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(13.0),
              child: _Data.name.isEmpty ? Text("")
                  : Text(
                      "Welcone ${_Data.name}!",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
