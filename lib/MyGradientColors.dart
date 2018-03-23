import 'package:flutter/material.dart';


class MyGradientColors{

  LinearGradient redColor(int highColor, int lowColor){
    return new LinearGradient(
      begin: const Alignment(0.0, -1.0),
      end: const Alignment(0.0, 1.0),
      colors: <Color>[
        Colors.red[highColor],
        Colors.red[lowColor]
      ],
    );
  }


  LinearGradient greenColor(int highColor, int lowColor){
    return new LinearGradient(
      begin: const Alignment(0.0, -1.0),
      end: const Alignment(0.0, 1.0),
      colors: <Color>[
        Colors.green[highColor],
        Colors.green[lowColor]
      ],
    );
  }


  LinearGradient blueColor(int highColor, int lowColor){
    return new LinearGradient(
      begin: const Alignment(0.0, -1.0),
      end: const Alignment(0.0, 1.0),
      colors: <Color>[
        Colors.blue[highColor],
        Colors.blue[lowColor]
      ],
    );
  }


  LinearGradient yellowColor(int highColor, int lowColor){
    return new LinearGradient(
      begin: const Alignment(0.0, -1.0),
      end: const Alignment(0.0, 1.0),
      colors: <Color>[
        Colors.yellow[highColor],
        Colors.yellow[lowColor]
      ],
    );
  }


  LinearGradient orangeColor(int highColor, int lowColor){
    return new LinearGradient(
      begin: const Alignment(0.0, -1.0),
      end: const Alignment(0.0, 1.0),
      colors: <Color>[
        Colors.orange[highColor],
        Colors.orange[lowColor]
      ],
    );
  }


  LinearGradient cyanColor(int highColor, int lowColor){
    return new LinearGradient(
      begin: const Alignment(0.0, -1.0),
      end: const Alignment(0.0, 1.0),
      colors: <Color>[
        Colors.cyan[highColor],
        Colors.cyan[lowColor]
      ],
    );
  }

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


}