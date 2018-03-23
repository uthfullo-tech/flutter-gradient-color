import 'package:flutter/material.dart';
import 'package:test_app/SmallBox.dart';
import 'package:test_app/LargeBox.dart';

class ParentWidget extends StatefulWidget{
  @override
  ParentWidgetState createState() => new ParentWidgetState();
}


class ParentWidgetState extends State<ParentWidget>{

  bool _active = false;

  void _handleParent(bool newValue) {
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context){
    return new Scaffold(

      appBar: new AppBar(
        title: new Text('TestApp'),
      ),
      body: new Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          new LargeBox(),
          new Column(
            children: [
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  new SmallBox(
                      active: _active,
                      onChanged: _handleParent,
                      clr: 1),

                  new SmallBox(
                      active: _active,
                      onChanged: _handleParent,
                      clr: 2),

                  new SmallBox(
                      active: _active,
                      onChanged: _handleParent,
                      clr: 3),

                  new SmallBox(
                      active: _active,
                      onChanged: _handleParent,
                      clr: 4),

                ],

              ),

              new Container(
                padding: new EdgeInsets.all(13.0),
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    new SmallBox(
                        active: _active,
                        onChanged: _handleParent,
                        clr: 5),

                    new SmallBox(
                        active: _active,
                        onChanged: _handleParent,
                        clr: 6),

                    new SmallBox(
                        active: _active,
                        onChanged: _handleParent,
                        clr: 7)

                  ],

                ),
              )
            ],
          )
        ],
      ),
    );
  }


}