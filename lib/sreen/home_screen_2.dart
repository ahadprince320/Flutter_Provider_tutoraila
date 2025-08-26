import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_tutorial/provider/slider_provider.dart';

///it's use of setstate satemanagement

/*import 'package:flutter/material.dart';

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
*/

class homescreen_two extends StatefulWidget {
  const homescreen_two({super.key});

  @override
  State<homescreen_two> createState() => _homescreen_twoState();
}

class _homescreen_twoState extends State<homescreen_two> {
  @override
  Widget build(BuildContext context) {
    final sliderprovider = Provider.of<sliderProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(title: Text('Provider tuorial')),
      body: Column(
        children: [
          Consumer<sliderProvider>(
            builder: (BuildContext context, value, Widget? child) {
              return Slider(
                value: sliderprovider.value,
                onChanged: (val) {
                  sliderprovider.setValue(val);
                },
              );
            },
          ),
          Consumer<sliderProvider>(builder: (context, value, child) {
           return Row(
              children: [
                Expanded(
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(color: Colors.green.withOpacity(value.value)),
                    child: Text('Container 1'),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(color: Colors.red.withOpacity(value.value)),
                    child: Text('Container 1'),
                  ),
                ),
              ],
            );
            
          },)
        ],
      ),
    );
  }
}
