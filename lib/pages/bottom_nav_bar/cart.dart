import 'package:flutter/material.dart';
import 'package:flutter_summer_project/widget/confirm_button.dart';
import 'package:flutter_summer_project/widget/shopping_cart_item.dart';
import 'package:google_fonts/google_fonts.dart';

class ShoppingCart extends StatefulWidget {
  @override
  _ShoppingCartState createState() => _ShoppingCartState();
}

class _ShoppingCartState extends State<ShoppingCart> {
  List<String> productList = ['', '', ''];
  int numOfItem = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        elevation: 0.0,
        title: Text('Shopping cart',
            style: GoogleFonts.yesteryear(
                color: Colors.white,
                fontSize: 35.0,
                fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body: Container(
        child: productList.isEmpty ? Center(
          child: Text('You didn\'t add any items yet!', style: TextStyle(color: Colors.grey, fontSize: 20.0))
        ) : ListView(
          children: [
            ListView.builder(
              shrinkWrap: true,
              primary: false,
              itemCount: productList.length,
              itemBuilder: (context, index) => listOfTaken(index),
            ),
            total(),
            ConfirmButton('Checkout')
          ],
        ),
      ),
    );
  }

  total() => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Total',
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold
              ),
            ),
            Text(
              '320 LE',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                  fontSize: 20),
            ),
          ],
        ),
      );


  Widget listOfTaken(int index) => Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            margin: EdgeInsets.only(top: 20, left: 15, right: 15),
            child: ListTile(
              leading: Container(
                width: 70,
                height: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue,
                    image: DecorationImage(
                        image: AssetImage('assets/t-shirt2.jpg'),
                        fit: BoxFit.fill)),
              ),
              title: Text('T-Shirt Gamed'),
              subtitle: Text('230 LE'),
              isThreeLine: true,
              trailing: Container(
                  alignment: AlignmentDirectional.bottomCenter,
                  width: 140.0,
                  child: ShoppingCartItem()),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: IconButton(
              icon: Icon(
                Icons.cancel,
                color: Colors.green,
                size: 40,
              ),
              onPressed: () {
                setState(() {
                  productList.removeAt(index);
                  print("hi");
                });
              },
            ),
          ),
        ],
      );
}
