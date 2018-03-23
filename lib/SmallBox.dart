import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:test_app/MyGradientColors.dart';


var tappedColor = 0;
var highColor = 500;
var lowColor = 100;

//Box 1 with color Green
class SmallBox extends StatefulWidget{

  SmallBox({Key key, this.active: false, @required this.onChanged, this.clr})
      : super(key: key);

  final bool active;
  final ValueChanged<bool> onChanged;
  final int clr;

  @override
  createState() => new _SmallBoxState();
}

class _SmallBoxState extends State<SmallBox>{

  bool isGradient = false;

  void _handleTap(){
    setState((){
      isGradient = !isGradient;
    });

    tappedColor = widget.clr;
    if(isGradient){
      highColor = 500;
      lowColor = highColor - 400;
    }
    else{
      highColor = 500;
      lowColor = 500;
    }
    widget.onChanged(!widget.active);

  }


  @override
  Widget build(BuildContext context){


    if(isGradient){
      highColor = 500;
      lowColor = 100;
    }
    else{
      highColor = 500;
      lowColor = 500;
    }


    MyGradientColors testColors = new MyGradientColors();
    LinearGradient gradient = testColors.redColor(highColor, lowColor);
    if(widget.clr == 1){
      gradient = testColors.redColor(highColor, lowColor);
    }
    else if(widget.clr == 2){
      gradient = testColors.greenColor(highColor, lowColor);
    }
    else if(widget.clr == 3){
      gradient = testColors.blueColor(highColor, lowColor);
    }
    else if(widget.clr == 4){
      gradient = testColors.yellowColor(highColor, lowColor);
    }
    else if(widget.clr == 5){
      gradient = testColors.orangeColor(highColor, lowColor);
    }
    else if(widget.clr == 6){
      gradient = testColors.cyanColor(highColor, lowColor);
    }
    else if(widget.clr == 7){
      gradient = testColors.purpleColor(highColor, lowColor);
    }


    return new GestureDetector(
      child: new Container(
        width: 50.0,
        height: 50.0,
        decoration: new BoxDecoration(
          gradient: gradient
        ),
      ),

      onTap: _handleTap,
    );
  }

}


