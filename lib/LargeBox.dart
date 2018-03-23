import 'package:flutter/material.dart';
import 'package:test_app/SmallBox.dart';
import 'package:test_app/MyGradientColors.dart';



//Box
class LargeBox extends StatefulWidget{
  _LargeBoxState createState() => new _LargeBoxState();
}

class _LargeBoxState extends State<LargeBox>{

  bool isGradient = false;

  handleState(){
    setState((){
      isGradient = !isGradient;
      print('large box response');
    });
  }

  @override
  Widget build(BuildContext context){

    MyGradientColors testColors = new MyGradientColors();
    LinearGradient gColor =testColors.blueColor(highColor, lowColor);
    if(tappedColor == 1){
      gColor = testColors.redColor(highColor, lowColor);
    }
    else if(tappedColor == 2){
      gColor = testColors.greenColor(highColor, lowColor);
    }
    else if(tappedColor == 3){
      gColor = testColors.blueColor(highColor, lowColor);
    }
    else if(tappedColor == 4){
      gColor = testColors.yellowColor(highColor, lowColor);
    }
    else if(tappedColor == 5){
      gColor = testColors.orangeColor(highColor, lowColor);
    }
    else if(tappedColor == 6){
      gColor = testColors.cyanColor(highColor, lowColor);
    }
    else if(tappedColor == 7){
      gColor = testColors.purpleColor(highColor, lowColor);
    }


    return new GestureDetector(
      child: new Container(
        width: 200.0,
        height: 200.0,
        decoration: new BoxDecoration(
          gradient: gColor
        ),
      ),
    );
  }

}