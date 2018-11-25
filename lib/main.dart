import 'package:flutter/material.dart';
import './model/activity_model.dart';
import './add.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Home'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();

  
}

class _MyHomePageState extends State<MyHomePage> {
  
  bool checkBoxValue = false;
  List<Activity> activity = List<Activity>();

  @override
    void initState() {
      super.initState();
      activity.add(Activity(
        action: "move on",
        isCheck: true
      ));
      activity.add(Activity(
        action: "move on mos",
        isCheck: true
      ));
    }  


  void _incrementCounter() {
    setState(() {
      
    });
  }

  void _gotoAdd(){
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => AddPage(),
      )

    );
  }

  void someting(position){
    setState(() {
          if(activity[position].isCheck == false){
            activity[position].isCheck = !activity[position].isCheck;
          }else{
            activity[position].isCheck = !activity[position].isCheck;
          }
        });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: activity.length,
          itemBuilder: (buildContext, position){
            return Padding(
              padding: const EdgeInsets.only(top: 15.0,left: 15.0,right: 15),
              child: Row(
                //crossAxisAlignment: CrossAxisAlignment.start,
                
                children: <Widget>[
                  Text(
                    activity[position].action,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Checkbox(
                          value: activity[position].isCheck,
                          onChanged : (bool e) => someting(position)
                        )
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: _gotoAdd,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), 
    );
  }
}
