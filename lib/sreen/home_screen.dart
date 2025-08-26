import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_tutorial/provider/count_provider.dart';

class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  @override
  Widget build(BuildContext context) {
    final countprovider = Provider.of<CountProvider>(context, listen: false);
    print('rebuilded here');
    return Scaffold(
      appBar: AppBar(title: Text('Provider Tutorial')),
      
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          
          children: [
            Consumer<CountProvider>(
              builder: (context, value, child) {
                print('🔄 Consumer widget rebuilt');

                return Text(
                  
                  value.count.toString(),
                  style: TextStyle(fontSize: 250, fontWeight: FontWeight.bold),
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          countprovider.setCount();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
