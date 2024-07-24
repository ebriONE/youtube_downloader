import 'package:flutter/material.dart';
import 'package:youtube_downloader/Pages/settings.dart';

class HomePage extends StatefulWidget{
  const HomePage({super.key});




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
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 40.0, 10.0, 0.0),
                  child: IconButton(
                    icon: const Icon(Icons.settings),
                    onPressed:(){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) =>  SettingsPage())
                      );
                    },

                  ),
                ),
              ]
          ),
          //Spacer(),
          Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.8,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: TextField(
                    controller: _controller,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Enter URL",
                      hintStyle: TextStyle(color: Colors.blueGrey),
                    ),
                  ),
                ),
                ElevatedButton.icon(
                  onPressed: (){final url = _controller.text;},
                  style: ElevatedButton.styleFrom(textStyle: const TextStyle(
                      fontSize: 20, color: Colors.green)).copyWith(foregroundColor: MaterialStateProperty.all<Color>(Colors.green),),
                  label: const Text("Download"),
                  icon: const Icon(Icons.download),
                ),
              ]
          ),
        ],
      ),
    );
  }

}