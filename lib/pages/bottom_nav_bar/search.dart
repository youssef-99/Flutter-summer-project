import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  TextEditingController searchCnt = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: body(),
      )
    );
  }
  body() => Container(
    margin: EdgeInsets.only(top: 30.0),
    child: Column(
      children: [
        ListTile(
          title: TextField(
            controller: searchCnt,
            decoration: InputDecoration(
              labelText: 'Search',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0)
              )
            ),
            onChanged: (value){
              setState(() {
                searchCnt.text;
              });
            },
          ),
          trailing: IconButton(
            onPressed: (){},
            icon: Icon(Icons.search_outlined, size: 30.0, color: Colors.teal),
          ),
        ),

        Container(
          height: MediaQuery.of(context).size.height * 0.77,
          child: searchCnt.text.isNotEmpty ? ListView(
            children: [],
          ) : Center(child: Icon(Icons.search_outlined, size: 200, color: Colors.grey,)),
        )
      ],
    ),
  );
}
