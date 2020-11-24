import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {

  List listof;
  HomePage(this.listof);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("News Api"),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: ListView.builder(
          itemCount: widget.listof.length,
          itemBuilder: (BuildContext c, int index){
            return Card(
              elevation: 10,
              child: Column(
                children: [
                  Text(widget.listof[index]["id"].toString()),
                  new Text(widget.listof[index]["name"]),
                  new SizedBox(height: 8.0,),
                  new Text(widget.listof[index]["username"]),
                  new SizedBox(height: 8.0,),
                  new Text(widget.listof[index]["email"]),
                  new SizedBox(height: 8.0,),
                  new Text(widget.listof[index]["address"]["zipcode"]),
                  new SizedBox(height: 8.0,),
                  new Text(widget.listof[index]["address"]["city"]),
                  new SizedBox(height: 8.0,),
                  new Text(widget.listof[index]["address"]["suite"]),
                  new SizedBox(height: 8.0,),
                  new Text(widget.listof[index]["address"]["street"]),
                  new SizedBox(height: 8.0,),
                  new Text(widget.listof[index]["address"]["geo"]["lat"]),
                  new SizedBox(height: 8.0,),
                  new Text(widget.listof[index]["address"]["geo"]["lng"]),
                  new SizedBox(height: 8.0,),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
