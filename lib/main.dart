import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

//void main() => runApp(MyApp());

class Main extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context){
    return WillPopScope(
            onWillPop:
                () async {
              SystemNavigator.pop();
              return false;
            },
           child: MaterialApp(
            home: Scaffold(
              backgroundColor: Colors.white30,

              appBar: AppBar(

                title: Text(
                  "Diitungin",
                  style: TextStyle(color: Colors.amberAccent, fontFamily: 'Bangers'),
                ),
                centerTitle: true,
                backgroundColor: Colors.blueGrey,
              ),

              body: Container(
                alignment: Alignment.topCenter,
                margin: EdgeInsets.only(top:12),
                  child: Image(
                  image: AssetImage(
                    'assets/images/tagihan.png',
                  ),
                  height: 100,
                  width: 100,
                ),
              )
            ),
          ),
          );
    }
  }



