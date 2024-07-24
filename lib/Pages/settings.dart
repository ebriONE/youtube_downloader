import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'package:youtube_downloader/Pages/FAQ_page.dart';
import 'package:youtube_downloader/Pages/home_page.dart';

class SettingsPage extends StatefulWidget{
  
  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage>{


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10.0, 40.0, 0.0, 0.0),
                child: IconButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));
                  },
                  icon: const Icon(Icons.arrow_back),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10.0, 40.0, 0.0, 0.0),
                child: IconButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>  FaqPage()));
                  },
                  icon: const Icon(Icons.question_mark_rounded),
                ),
              ),
            ],
          ),
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ToggleSwitch(
                    isVertical: true,
                    labels: const ["Dark", "Light", "System"],
                    initialLabelIndex: 1,
                    //TODO add onToggle action
                  ),
                  // Any other widgets you want to add in the column
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}