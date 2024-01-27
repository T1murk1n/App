import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Я ищу...',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),

                    filled: true,
                    fillColor: Colors.grey.shade100,
                    suffixIcon: Align(
                      widthFactor: 1.0,
                      heightFactor: 1.0,
                      child: Icon(
                        Icons.search,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 8),
                Wrap(
                  children: [

                  ],
                )
              ],
            ),
          ),
        ),
    );
  }

}
// ElevatedButton(onPressed: () {
// Navigator.pushNamed(context, '/todo');
// }, child: Text('Позвоночник', style: TextStyle(color: Colors.black, fontSize: 22),)
// )