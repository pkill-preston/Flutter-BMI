import 'package:flutter/material.dart';

class HeightBar extends StatefulWidget {
  final Function callback;
  const HeightBar({Key? key, required this.callback}) : super(key: key);

  @override
  State<HeightBar> createState() => _HeightBarState();
}

class _HeightBarState extends State<HeightBar> {
  double value = 150;
  double height = 120;
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      width: screenWidth * 0.9,
      height: screenHeight * 0.2,
      child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: const Color(0XFF1E1E1E)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text("Height",
                      style: TextStyle(fontSize: 48, color: Colors.white)),
                  Text("${value.ceil()}cm",
                      style: const TextStyle(fontSize: 40, color: Colors.white)),
                ],
              ),
              SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    valueIndicatorColor: const Color(0xff313131),
                    activeTrackColor: const Color(0xff58b1ab),
                    thumbColor: Color(0xff7EF4ED),
                    inactiveTrackColor: Color(0xff29504d),
                  ),
                  child: Slider(
                    onChanged: widget.callback(height),
                    value: value,
                    min: 120.0,
                    divisions: 100,
                    max: 220.0,
                    label: value.round().toString(),
                  )),
            ],
          )),
    );
  }
}
