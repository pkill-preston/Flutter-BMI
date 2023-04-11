import 'package:flutter/material.dart';

class MutableCard extends StatefulWidget {
  final String measure;
  final dynamic min;
  final dynamic max;
  const MutableCard({Key? key,
    required this.measure,
    this.min,
    this.max,
  }) : super(key: key);
  
  @override
  State<MutableCard> createState() => _MutableCardState();
}

class _MutableCardState extends State<MutableCard> {

  int value = 0;

  var measure;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        child: Column(
          children: [
            Text("${widget.measure}"),
            Text("${value}"),
            Row(
              children: [
                ElevatedButton(onPressed: (){
                  setState(() {
                    value++;
                  });
                }, child: Icon(Icons.add)),
                ElevatedButton(onPressed: (){
                  setState(() {
                    value--;
                  });
                }, child: Icon(Icons.remove))
              ],
            )
          ],
        ),
      ),
    );
  }
}
