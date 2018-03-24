# flutter-gradient-color
Flutter Gradient Color implementation for Android and iOS. This sample project helps the user to use gradient colors on any Widget.


<img src="/ss/Screenshot_2018-03-24-02-36-48.png" width="320">


# How to implement
Just copy the MyGradientColors.dart file from lib folder and paste it to your lib folder. You can use it as any widget color.

First you need to import this class where you wish to user gradient colors.

    import 'package:test_app/MyGradientColors.dart';
    
Here is an example how to implement gradient colors.

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
    
    
# How to change Gradient effects
Using "Alignment(x, y)" method you can change gradient effects. The [x] and [y] arguments must not be null. The distance fraction in the horizontal direction. A value of -1.0 corresponds to the leftmost edge. A value of 1.0 corresponds to the rightmost edge. Values are not limited to that range. values less than -1.0 represent positions to the left of the left edge,and values greater than 1.0 represent positions to the right of the right edge.

Here the sample code:


    LinearGradient purpleColor(int highColor, int lowColor){
    return new LinearGradient(
      begin: const Alignment(0.0, -1.0),
      end: const Alignment(0.0, 1.0),
      colors: <Color>[
        Colors.purple[highColor],
        Colors.purple[lowColor]
        ],
     );
    }
