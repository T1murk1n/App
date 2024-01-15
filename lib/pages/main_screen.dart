import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[700],
        appBar: AppBar(
          title: Text('Medicine'),
          centerTitle: true,
        ),
        body: Center(
          heightFactor: 3,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                  padding: EdgeInsets.all(10),
                  child: ElevatedButton(onPressed: () {
                    Navigator.pushNamed(context, '/todo');
                  }, child: Text('Позвоночник', style: TextStyle(color: Colors.black, fontSize: 22),)
                  )
              ),
              Container(
                  padding: EdgeInsets.all(10),
                  child: ElevatedButton(onPressed: () {
                    Navigator.pushNamed(context, '/todo');
                  }, child: Text('Позвоночник', style: TextStyle(color: Colors.black, fontSize: 22),)
                  )
              ),
              Container(
                  padding: EdgeInsets.all(10),
                  child: ElevatedButton(onPressed: () {
                    Navigator.pushNamed(context, '/todo');
                  }, child: Text('Позвоночник', style: TextStyle(color: Colors.black, fontSize: 22),)
                  )
              ),
              Container(
                  padding: EdgeInsets.all(10),
                  child: ElevatedButton(onPressed: () {
                    Navigator.pushNamed(context, '/todo');
                  }, child: Text('Позвоночник', style: TextStyle(color: Colors.black, fontSize: 22),)
                  )
              ),
              Container(
                  padding: EdgeInsets.all(10),
                  child: ElevatedButton(onPressed: () {
                    Navigator.pushNamed(context, '/todo');
                  }, child: Text('Позвоночник', style: TextStyle(color: Colors.black, fontSize: 22),)
                  )
              ),
              Container(
                  padding: EdgeInsets.all(10),
                  child: ElevatedButton(onPressed: () {
                    Navigator.pushNamed(context, '/todo');
                  }, child: Text('Позвоночник', style: TextStyle(color: Colors.black, fontSize: 22),)
                  )
              ),
              Container(
                  padding: EdgeInsets.all(10),
                  child: ElevatedButton(onPressed: () {
                    Navigator.pushNamed(context, '/todo');
                  }, child: Text('Позвоночник', style: TextStyle(color: Colors.black, fontSize: 22),)
                  )
              ),
              Container(
                  padding: EdgeInsets.all(10),
                  child: ElevatedButton(onPressed: () {
                    Navigator.pushNamed(context, '/todo');
                  }, child: Text('Позвоночник', style: TextStyle(color: Colors.black, fontSize: 22),)
                  )
              ),
              Container(
                  padding: EdgeInsets.all(10),
                  child: ElevatedButton(onPressed: () {
                    Navigator.pushNamed(context, '/todo');
                  }, child: Text('Позвоночник', style: TextStyle(color: Colors.black, fontSize: 22),)
                  )
              ),
            ],
          ),
        )
    );
  }

}
