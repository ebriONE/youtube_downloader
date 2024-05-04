import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{



  @override
  State<HomePage> createState() => _HomePageState();
}




class _HomePageState extends State<HomePage>{

  final TextEditingController _controller = TextEditingController();


  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
                controller: _controller,
            ),
          ),
          Text("${_controller.text}")
        ]
      ),
    );
  }




}