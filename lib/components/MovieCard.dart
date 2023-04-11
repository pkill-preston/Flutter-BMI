
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
        decoration: BoxDecoration(
          color: Color(0xff1e1e1e),
          borderRadius: BorderRadius.circular(10.0)
        ),
        width: screenWidth * 0.4,
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          children: [
            Icon(
              icon,
              size: 70,
              color: Color(0xff7EF4ED),
            ),
            Text(
              text,
              style: TextStyle(
                fontSize: 40,
                color: Colors.white
              ),
            ),
          ],
        ),
      ),
    );
  }
}