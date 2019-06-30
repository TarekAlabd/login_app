import 'package:flutter/material.dart';
import './CustomLoginForm.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
        centerTitle: true,
      ),
      backgroundColor: Colors.blueGrey,
      body: CustomLoginForm(),
    );
  }
}
