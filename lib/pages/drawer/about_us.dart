import 'package:flutter/material.dart';

class AboutUs extends StatefulWidget {
  @override
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: Icon(Icons.info, color: Colors.black,),
        title: Text('About us', style: TextStyle(color: Colors.black),),
        elevation: 0.0,
      ),
      body: Column(
        children: [
          Text('Who are We? ',  style: TextStyle(wordSpacing: 1, height: 2, fontSize: 20.0, fontWeight: FontWeight.bold)),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text('Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...\n'
                'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...\n'
                'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...',
              style: TextStyle(color: Colors.black54, wordSpacing: 1, height: 2, fontSize: 20.0),
            ),
          ),
        ],
      ),
    );
  }
}
