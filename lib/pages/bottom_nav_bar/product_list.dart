import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_summer_project/pages/drawer/about_us.dart';
import 'package:flutter_summer_project/pages/drawer/contact_us.dart';
import 'package:flutter_summer_project/pages/drawer/profile.dart';
import 'package:flutter_summer_project/widget/item.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductList extends StatefulWidget {
  @override
  _ProductListState createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> with SingleTickerProviderStateMixin {
  final List<String> productList = ['', '', ''];

  TabController _tabController ;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text(
          'Products',
            style: GoogleFonts.yesteryear(color: Colors.white, fontSize: 35.0, fontWeight: FontWeight.bold)
        ),

        centerTitle: true,
        // bottom: TabBar(
        //   controller: _tabController,
        //   tabs: [
        //     Tab(text: 'Shirts'),
        //     Tab(text: 'Pants'),
        //     Tab(text: 'Skirts'),
        //   ],
        // ),

      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Text('Youssef William', style: GoogleFonts.yesteryear(fontSize: 26.0),),
              decoration: BoxDecoration(
                color: Colors.teal,
              ),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Profile'),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_) => Profile()));
              },
            ),
            ListTile(
              leading: Icon(Icons.question_answer_outlined),
              title: Text('About us'),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_) => AboutUs()));
              },
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text('Contact us'),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_) => ContactUs()));
              },
            )
          ],
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 10.0),
        child: ListView.builder(
          itemBuilder: (context, index) => ProductItem(),
          itemCount: productList.length,
        ),
      ),
    );
  }
}
