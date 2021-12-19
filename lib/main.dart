    import 'package:flutter/material.dart';  
      
    void main() {  
      runApp(MyApp());  
    }  
      
    class MyApp extends StatefulWidget {  
      @override  
      _MyAppState createState() => _MyAppState();  
    }  


    
      
    class _MyAppState extends State<MyApp> { 
      int count=0; 
      @override  
      Widget build(BuildContext context) {  
        return MaterialApp(  
          home: Scaffold(  
              appBar: AppBar(  
                title: Text('INCREMENT-DECREMENT'),
                backgroundColor: Colors.blue,  
              ),  
          
              body: Center(
                child: 
                Column(children: [
                  Text("$count"),
                  Row(children: <Widget>[  
                Container(  
                  margin: EdgeInsets.all(25),  
                  child: FlatButton(  
                    child: Text('Increment', style: TextStyle(fontSize: 20.0),), 
                    color: Colors.redAccent,
              
                    onPressed: () {
                      setState(() {
                        count++;
                      });
                    }, 

                  ),  
                ),  
                Container(  
                  margin: EdgeInsets.all(25),  
                  child: FlatButton(  
                    child: Text('Decrement', style: TextStyle(fontSize: 20.0),),  
                    color: Colors.greenAccent,  
                    textColor: Colors.white,  
                    onPressed: () {
                      setState(() {
                        count--;
                      });
                    },  
                  ),  
                ),  
              ]  
             )  
                ],)
                
                
          ),  
        ));  
      }  
    }  