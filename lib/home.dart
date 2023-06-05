import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:profile/widgets/info_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const phone = "+62 852-4287-6897";
const email = "@miracleSumajow32@gmail.com";
const instagram = "@reyimanuel_";
const facebook = "Miracle Sumajow";

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/freya.jpg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.6), BlendMode.darken),
          ),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: SafeArea(
            child: Column(
              children: <Widget>[
              CircleAvatar(
                radius: 90,
                backgroundImage: AssetImage('assets/rey.jpg'),
              ),
              Text(
                "Miracle Sumajow",
                style: TextStyle(
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: "pacifico"),
              ),
              Text(
                "   aut viam inveniam aut faciam 🗿",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white70,
                  letterSpacing: 2.3,
                  fontWeight: FontWeight.w600,
                  fontFamily: "Source Sans Pro"),
              ),
              SizedBox(
                height: 20,
                width: 350,
                child: Divider(
                  color: Colors.white,
                ),
              ),
              InfoCard(text: phone, icon: Icons.phone, onPressed: () async{}),
              InfoCard(text: email, icon: Icons.email, onPressed: () async{}),
              InfoCard(text: instagram, icon: FontAwesomeIcons.instagram, onPressed: () async{}),
              InfoCard(text: facebook, icon: FontAwesomeIcons.facebook, onPressed: () async{}),
            ],
          ),
        ),
      ),
    ),
    );
  }
}
