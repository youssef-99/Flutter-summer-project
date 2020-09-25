import 'package:flutter/material.dart';
import 'package:flutter_summer_project/widget/confirm_button.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class ProductDetails extends StatefulWidget {
  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  int selectedColor;
  List<Color> colorList = [
    Colors.red,
    Colors.green,
    Colors.yellow,
    Colors.black,
    Colors.teal,
    Colors.blue
  ];

  int selectedSize;
  List<String> sizeList = ['S', 'M', 'L', 'XL', 'XXL'];
  List<String> cover = [
    'assets/t-shirt1.jpg',
    'assets/t-shirt2.jpg',
    'assets/t-shirt3.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height * 1.5,
        decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage('assets/t-shirt2.jpg')),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            storeInfo(),
            productInfo(),
          ],
        ),
      ),
    );
  }

  productInfo() => Container(
        height: MediaQuery.of(context).size.height * 0.37,
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20.0))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'T-shirt Gamed Fsh5olly',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            // SizedBox(
            //   height: MediaQuery.of(context).size.height * 0.05,
            // ),
            Text(
              'Color',
              style: TextStyle(fontSize: 14, color: Colors.black54, height: 2),
            ),
            ConstrainedBox(
              constraints: BoxConstraints(maxHeight: 40),
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: colorList.length,
                  itemBuilder: (context, int index) => createColorList(index)),
            ),
            Text(
              'Size',
              style: TextStyle(fontSize: 14, color: Colors.black54, height: 2),
            ),
            ConstrainedBox(
              constraints: BoxConstraints(maxHeight: 40),
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: sizeList.length,
                  itemBuilder: (context, int index) => size(index)),
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              alignment: Alignment.bottomCenter,
              child: ConfirmButton('Add to Cart'),
            )
          ],
        ),
      );

  size(int index) => InkWell(
        child: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
                color: selectedSize == index ? Colors.blue : Colors.grey,
                width: 2),
          ),
          child: Center(
            child: Text(
              '${sizeList[index]}',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
          ),
        ),
        onTap: () {
          setState(() {
            selectedSize = index;
          });
        },
      );

  storeInfo() => Container(
        margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
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
              trailing: Text(
                '300LE',
                style: GoogleFonts.yesteryear(
                  color: Color(0xff4381D1),
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,
                ),
              ),
            ),
          ],
        ),
      );

  createColorList(int index) => InkWell(
      child: Container(
        margin: EdgeInsets.all(5),
        height: 24,
        width: 24,
        decoration: BoxDecoration(
            color: colorList[index],
            shape: BoxShape.circle,
            border: Border.all(
                color: Colors.grey, width: selectedColor == index ? 2 : 0)),
      ),
      onTap: () {
        setState(() {
          selectedColor = index;
        });
      });
}
