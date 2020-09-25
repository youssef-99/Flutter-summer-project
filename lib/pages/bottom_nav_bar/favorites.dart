import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_summer_project/pages/product_details.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class FavoritesPage extends StatefulWidget {
  @override
  _FavoritesPageState createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  List<String> productList = ["", "", ""];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text('Favorites', style: GoogleFonts.yesteryear(color: Colors.white, fontSize: 35.0, fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body: Container(
        child: list(),
      ),
    );
  }

  list() => ListView.builder(
        itemBuilder: (context, index) => item(index),
        itemCount: productList.length,
      );

  item(int index) => Container(
        margin: EdgeInsets.symmetric(vertical: 5.0),
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(color: Colors.grey),
            bottom: BorderSide(
              color: Colors.grey,
            ),
          ),
        ),
        child: ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage("assets/t-shirt1.jpg"),
            radius: 30.0,
          ),
          title: Text(
            'Product name',
            style: GoogleFonts.yesteryear(
                color: Color(0xff4381D1),
                fontWeight: FontWeight.bold,
                fontSize: 25.0),
          ),
          subtitle: SmoothStarRating(
              allowHalfRating: true,
              onRated: (v) {},
              starCount: 5,
              rating: 2.5,
              size: 20.0,
              isReadOnly: true,
              filledIconData: Icons.star,
              halfFilledIconData: Icons.star_half,
              color: Colors.green,
              borderColor: Colors.green,
              spacing: 0.0),
          trailing: Container(
            width: 120.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('35 LE',
                    style: GoogleFonts.yesteryear(
                        color: Color(0xff4381D1),
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0)),
                IconButton(
                  icon: Icon(
                    Icons.favorite,
                    color: Colors.red,
                    size: 35,
                  ),
                  onPressed: () {
                    setState(() {
                      productList.removeAt(index);
                    });
                  },
                ),
              ],
            ),
          ),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => ProductDetails()));
          },
        ),
      );
}
