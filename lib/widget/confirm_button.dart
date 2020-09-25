import 'package:flutter/material.dart';

class ConfirmButton extends StatefulWidget {
  final String message ;
  ConfirmButton(this.message);
  @override
  _ConfirmButtonState createState() => _ConfirmButtonState();
}

class _ConfirmButtonState extends State<ConfirmButton> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FlatButton(
          padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
          color: Colors.green,
          onPressed: () {},
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(24))),
          child: Text(
            '${widget.message}',
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
      ],
    );
  }
}
