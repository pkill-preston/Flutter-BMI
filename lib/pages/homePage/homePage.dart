import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:here/components/MovieCard.dart';
import 'package:here/components/MutableCard.dart';
import 'package:here/pages/homePage/heightBar.dart';

class HomePage extends StatefulWidget {

  @override
  State<HomePage> createState() {
    return _HomePageState();
  }
}
class _HomePageState extends State<HomePage>{
  var counter = 0;
  String selectedGender = '';
  double height = 120;
  double weight = 1;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xff313131),
          appBar: AppBar(
              title: Text('BMI Calculator'),
              backgroundColor: Color(0xff1E1E1E),
          ),
          body: Padding(
            padding: EdgeInsets.all(16.0),
            child: Wrap(
              clipBehavior: Clip.antiAlias,
              crossAxisAlignment: WrapCrossAlignment.center,
              runAlignment: WrapAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Wrap(
                      runSpacing: 16,
                      spacing: 16,
                      alignment: WrapAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                            width: screenWidth * 0.9,
                            height: screenHeight * 0.2,
                            child: Container(
                              alignment: Alignment.center,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  MovieCard(
                                    text: "Male",
                                    icon: Icons.male,
                                    onPress: (){
                                      setState(() {
                                        selectedGender = 'Male';
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
                                ],
                              ),
                            )
                        ),
                        SizedBox(
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
                                      Text("${height.ceil()}cm",
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
                                        onChanged: (value){
                                          setState(() {
                                            height = value;
                                          });
                                        },
                                        value: height,
                                        min: 120.0,
                                        divisions: 100,
                                        max: 220.0,
                                        label: height.round().toString(),
                                      )),
                                ],
                              )),
                        ),
                        SizedBox(
                            width: screenWidth * 0.9,
                            height: screenHeight * 0.2,
                            child:Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: const [
                                    MutableCard(measure: "Age", max: 100,),
                                    MutableCard(measure: "Weight", min: 30,)
                                  ],
                                ))),
                        Row(
                          children: [
                            Text('Gender: ${selectedGender}    |'),
                            Text('Height: ${height}    |'),
                            Text('Age: ${age}    |'),
                            Text('Weight: ${weight}    |'),
                            const Text(''),
                          ],
                        )
                      ]
                  ),
                ),
              ]
          ),),
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
