import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

import '../pages/product_details.dart';

class ProductItem extends StatefulWidget {
  @override
  _ProductItemState createState() => _ProductItemState();
}

class _ProductItemState extends State<ProductItem> {
  double likes = 2420;
  bool fav = false;
  bool like = false;
  double price = 300;
  String storeName = "Store name";
  double rate;
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.passthrough,
      children: <Widget>[
        InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => ProductDetails()));
          },
          child: Container(
            alignment: Alignment.topCenter,
            margin: EdgeInsets.only(top: 20.0, bottom: 30.0),
            height: 200.0,
            width: 200.0,
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(0.0, 10.0), //(x,y)
                  blurRadius: 6.0,
                ),
              ],
              image: DecorationImage(
                alignment: Alignment.topCenter,
                fit: BoxFit.fill,
                image: AssetImage('assets/t-shirt2.jpg'),
              ),
            ),
            child: Column(
              children: <Widget>[
                ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/cow2.jpg'),
                    backgroundColor: Colors.white,
                  ),
                  title: Text(
                    'Store Name',
                    style: TextStyle(
                      color: Color(0xff4381D1),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle:
                  SmoothStarRating(
                      allowHalfRating: true,
                      onRated: (v) {
                      },
                      starCount: 5,
                      rating: 2.5,
                      size: 20.0,
                      isReadOnly:true,
                      filledIconData: Icons.star,
                      halfFilledIconData: Icons.star_half,
                      color: Colors.green,
                      borderColor: Colors.green,
                      spacing:0.0
                  ),
                  trailing: Text('300LE', style: GoogleFonts.yesteryear(color: Color(0xff4381D1), fontWeight: FontWeight.bold, fontSize: 25.0),),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 190,
          right: 25,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Color(0xff4381D1),
                shape: BoxShape.rectangle
            ),
            height: 60.0,
            width: 340.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                IconButton(
                  onPressed: (){
                    setState(() {
                      if(like){
                        like = false;
                        likes--;
                      }else{
                        like = true;
                        likes++;
                      }
                    });
                  },
                  icon: like ?Icon(Icons.favorite, color: Colors.red,size: 35,) :  Icon(Icons.favorite_border, color: Colors.red,size: 35,),
                ),
                Text('${likes/1000}K',style: GoogleFonts.yesteryear(color: Colors.white, fontSize: 20.0),),
                IconButton(
                  onPressed: (){
                    setState(() {
                      fav = !fav;
                    });
                  },
                  icon:fav ?  Icon(Icons.star, color: Colors.orange, size: 35.0,) : Icon(Icons.star_border, color: Colors.orange, size: 35.0,),
                ),
                Text('Favorite',style: GoogleFonts.yesteryear(color: Colors.white, fontSize: 20.0)),
                IconButton(icon: Icon(Icons.add_shopping_cart_outlined,size: 35.0),onPressed: (){},),
                Text('Cart',style: GoogleFonts.yesteryear(color: Colors.white, fontSize: 20.0),),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
