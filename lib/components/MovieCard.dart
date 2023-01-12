
import 'package:flutter/material.dart';

class MovieCard extends StatelessWidget {
  MovieCard({required this.icon, required this.text,required this.onPress});

  final String text;
  final IconData icon;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: onPress,
      child: Container(
        height: screenHeight * 0.2,
        width: screenWidth * 0.40,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(icon, size: 80.0, color: Color(0xff7EF4ED)),
            Text(text,
              style: TextStyle(
                fontSize: 40,
                color: Colors.white
              ),)
          ],
        ),
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: Color(0xff1E1E1E),
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}