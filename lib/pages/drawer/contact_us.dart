import 'package:flutter/material.dart';

class ContactUs extends StatefulWidget {
  @override
  _ContactUsState createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  final _formKey = GlobalKey<FormState>();
  static final GlobalKey<FormFieldState<String>> _nameKey = GlobalKey<FormFieldState<String>>();
  static final GlobalKey<FormFieldState<String>> _phoneKey = GlobalKey<FormFieldState<String>>();
  static final GlobalKey<FormFieldState<String>> _emailKey = GlobalKey<FormFieldState<String>>();
  static final GlobalKey<FormFieldState<String>> _messageKey = GlobalKey<FormFieldState<String>>();

  TextEditingController name = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController message = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Us', style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: Icon(Icons.phone, color: Colors.black,),
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Customer satisfaction is always our priority!',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, height: 5),
              ),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          right: 30.0, bottom: 10.0, left: 30.0),
                      child: TextFormField(
                        key: _nameKey,
                        controller: name,
                        validator: (value) {
                          if(value.isEmpty){
                            return 'this field required';
                          }
                          return null;
                        },
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          labelText: 'Full name',
                          labelStyle: TextStyle(fontSize: 20.0),
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(
                          right: 30.0, bottom: 10.0, left: 30.0),
                      child: TextFormField(
                        key: _phoneKey,
                        controller: phone,
                        validator: (value) {
                          if(value.isEmpty){
                            return 'this field required';
                          }
                          return null;
                        },
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          labelText: 'Phone number',
                          labelStyle: TextStyle(fontSize: 20.0),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          right: 30.0, bottom: 10.0, left: 30.0),
                      child: TextFormField(
                        key: _emailKey,
                        controller: email,
                        validator: (value) {
                          if(value.isEmpty){
                            return 'this field required';
                          }
                          return null;
                        },
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelText: 'Email address',
                          labelStyle: TextStyle(fontSize: 20.0),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          right: 30.0, bottom: 10.0, left: 30.0),
                      child: TextFormField(
                        key: _messageKey,
                        validator: (value) {
                          if(value.isEmpty){
                            return 'this field required';
                          }
                          return null;
                        },
                        controller: message,
                        minLines: 3, maxLines: 4,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          labelText: 'Your message',
                          labelStyle: TextStyle(fontSize: 20.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              RaisedButton(
                padding: EdgeInsets.symmetric(horizontal: 100.0, vertical: 10.0),
                onPressed: () {
                  if(_formKey.currentState.validate()){
                    return Navigator.pop(context);
                  }
                },
                child: Text(
                  'Send',
                  style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                color: Colors.blue[800],
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0)),
                elevation: 10,
              )
            ],
          ),
        ),
    );
  }
}
