import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Account',
            style: GoogleFonts.yesteryear(color: Colors.white, fontSize: 35.0, fontWeight: FontWeight.bold)
        ),
        centerTitle: true,
      ),

    );
  }
}
