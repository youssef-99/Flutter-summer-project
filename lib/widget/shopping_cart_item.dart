import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShoppingCartItem extends StatefulWidget {
  @override
  _ShoppingCartItemState createState() => _ShoppingCartItemState();
}

class _ShoppingCartItemState extends State<ShoppingCartItem> {
  int numOfItem = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
            icon: Icon(
              Icons.remove,
              size: 30,
            ),
            onPressed: () {
              setState(() {
                if(numOfItem > 0)
                  numOfItem--;
              });
            }),
        Container(
          alignment: Alignment.center,
          height: 20,
          width: 30.0,
          color: Colors.grey[300],
          child: Text(
            '$numOfItem',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        IconButton(
            icon: Icon(
              Icons.add,
              size: 30.0,
            ),
            onPressed: () {
              setState(() {
                numOfItem++;
              });
            })
      ],
    );
  }
}
