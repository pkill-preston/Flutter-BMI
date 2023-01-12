import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:here/components/MovieCard.dart';

class HomePage extends StatefulWidget {

  @override
  State<HomePage> createState() {
    return _HomePageState();
  }
}
class _HomePageState extends State<HomePage>{
  var counter = 0;
  String selectedGender = '';
  int height = 180;
  int weight = 60;
  int age = 20;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xff313131),
          appBar: AppBar(
              title: Text('BMI Calculator'),
              backgroundColor: Color(0xff1E1E1E),
          ),
          body: Wrap(
            children: [
              SizedBox(
                width: double.infinity,
                child: Wrap(
                  alignment: WrapAlignment.spaceEvenly,
                  children: [
                    MovieCard(
                      text: "Male",
                      icon: Icons.male,
                      onPress: (){
                        setState(() {
                          selectedGender = 'Male';
                          print(selectedGender);
                        });
                      },),
                    MovieCard(
                      text: "Female",
                      icon: Icons.female,
                      onPress: (){
                        setState(() {
                          selectedGender = "Female";
                        });
                      },
                    ),
                  ]
                ),
              ),
            ]
          ),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: (){
              setState(() {
                counter++;
              });
            },
          ),
        )
    );
  }

}
