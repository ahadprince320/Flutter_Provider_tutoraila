import 'package:flutter/material.dart';

class homescreen_two extends StatefulWidget {
  const homescreen_two({super.key});

  @override
  State<homescreen_two> createState() => _homescreen_twoState();
}

class _homescreen_twoState extends State<homescreen_two> {
  double value = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Provider tuorial')),
      body: Column(
        children: [
          Slider(value: value, onChanged: (val) {
            value=val;
            setState(() {

            });
          }),
          Row(
            children: [
              Expanded(
                child: Container( 
                  height: 100,
                  decoration: BoxDecoration(color: Colors.green.withOpacity(value), ),
                  child: Text('Container 1'),
                ),
              ),
              Expanded(
                child: Container(
                  height: 100,
                    decoration: BoxDecoration(color: Colors.red.withOpacity(value)),
                    child: Text('Container 1')),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
