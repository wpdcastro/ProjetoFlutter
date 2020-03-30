import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gelateria', 
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      
      body: Container(
        
        child: 
          StaggeredGridView.countBuilder(
            crossAxisCount: 4,
            itemCount: 4,
            itemBuilder: (BuildContext context, int index) => new Container(
              color: Colors.green,
              child: new Center(
                child: new CircleAvatar(
                  backgroundColor: Colors.white,
                  child: new Text('teste'),
                ),
              )
            ),
            staggeredTileBuilder: (int index) => 
              new StaggeredTile.count(2, 2),
              mainAxisSpacing: 2.0,
              crossAxisSpacing: 4.0,
            )
          ),
      );
  }
}