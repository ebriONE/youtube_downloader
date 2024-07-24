import 'package:flutter/material.dart';
import 'package:youtube_downloader/Themes/Themes.dart';

import 'Pages/home_page.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home:  HomePage(),
      theme: lightMode,
      darkTheme: darkMode
      ,
    );
  }
}

