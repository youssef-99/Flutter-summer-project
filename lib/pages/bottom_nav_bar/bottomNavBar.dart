import 'package:flutter/material.dart';
import 'package:flutter_summer_project/pages/bottom_nav_bar/cart.dart';
import 'package:flutter_summer_project/pages/bottom_nav_bar/product_list.dart';
import 'package:flutter_summer_project/pages/bottom_nav_bar/search.dart';
import 'favorites.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  List<dynamic> page = [ProductList(), FavoritesPage(), Search(), ShoppingCart()];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.teal,
          unselectedItemColor: Colors.black,
          selectedItemColor: Colors.teal,
          showUnselectedLabels: true,
          currentIndex: index,
          items: [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: 'Favorite',
              icon: Icon(Icons.star),
            ),
            BottomNavigationBarItem(
              label: 'Search',
              icon: Icon(Icons.search),
            ),
            BottomNavigationBarItem(
              label: 'Cart',
              icon: Icon(Icons.shopping_cart),
            ),
          ],
        onTap: (idx){
            setState(() {
                index = idx;
            });
        },
      ),
      body: page[index],
    );
  }
}
