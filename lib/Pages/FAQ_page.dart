import 'package:flutter/material.dart';
import 'package:youtube_downloader/Pages/settings.dart';

class FaqPage extends StatefulWidget{

  @override
  State<FaqPage> createState() => _faqPageState();

}

class _faqPageState extends State<FaqPage>{

  Widget build(BuildContext context){
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10.0, 40.0, 0.0, 0.0),
                child: IconButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>  SettingsPage()));},
                    icon: const Icon(Icons.arrow_back)),
              )
            ],
          )
        ],
      ),
    );
  }
}