

import 'package:bamboo1/service/auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomeScreen> {
  AuthService _authService = AuthService();

  String _value = "";

  Widget searchButton(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26,
                    blurRadius: 6,
                    offset: Offset(0,2)
                )
              ]

          ),

          height: 40,
          width: 200,
          child: TextField(
            style: TextStyle(
                color: Colors.black87
            ),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 8),
                prefixIcon: Icon(
                  Icons.search,
                  color: Color(0xFF5C6BC0),
                ),
                hintText: 'Search Tour',
                hintStyle: TextStyle(
                    color: Colors.black38
                )
            ),
          ),



        )

      ],

    );
  }
  Widget addToBox(){
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25),
      width: double.infinity,
      child: PopupMenuButton(
          elevation: 20,
          enabled: true,
         // onSelected: (value) {
         //   setState(() {
         //     _value = value;
         //   });
        //  },
          icon: Icon(Icons.more_horiz),
          itemBuilder: (context) => [
            PopupMenuItem(
              child: Text("Go to cart"),
              value: 1,
            ),
            PopupMenuItem(
              child: Text("User information"),
              value: 2,
            ),
            PopupMenuItem(
              child: Text("Settings"),
              value: 3,
            ),
            PopupMenuItem(
              child: Text("Exit"),
              value: 4,
            ),
          ]

      ),

    );


  }
  Widget tourButton(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26,
                    blurRadius: 6,
                    offset: Offset(0,2)
                )
              ]

          ),

          height: 100,
          child: TextField(
            style: TextStyle(
                color: Colors.black87
            ),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 8),
                prefixIcon: Icon(
                  Icons.hail,
                  color: Color(0xFF5C6BC0),
                ),
                hintText: 'Tour Detail',
                hintStyle: TextStyle(
                    color: Colors.black38
                )
            ),
          ),



        )

      ],

    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value :SystemUiOverlayStyle.light,
        child: GestureDetector(
          child: Stack(
            children: <Widget>[
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xFFE8EAF6),
                        Color(0xFFC5CAE9),
                        Color(0xFF9FA8DA),
                        Color(0xFF7986CB),

                      ]
                  ),
                ),
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                      horizontal: 25,
                      vertical: 10,

                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                       children: <Widget>[
                          Expanded(
                             flex: 11,
                             child: searchButton()

                         ),
                         Expanded(
                             flex: 1,
                             child:  addToBox()

                         ),

                       ],
                      ),
                  tourButton(),


                    ],
                  ),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}