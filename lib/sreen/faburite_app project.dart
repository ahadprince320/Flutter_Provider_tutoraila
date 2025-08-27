import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_tutorial/provider/fabList_provider.dart';

import '../provider/fabList_provider.dart';

/*class favApp extends StatefulWidget {
  const favApp({super.key});

  @override
  State<favApp> createState() => _favAppState();
}

class _favAppState extends State<favApp> {
  List<int> favList = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Aaburite App')),
      body: ListView.builder(
        itemCount: 100,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              if(favList.contains(index)){
                favList.remove(index);
              }else{
                favList.add(index);
              }
              setState(() {

              });
            },
            title: Text('List Item' + index.toString()),
            trailing: Icon(favList.contains(index)?Icons.favorite:Icons.favorite_border),
          );
        },
      ),
    );
  }
}
*/
class favApp extends StatefulWidget {
  const favApp({super.key});

  @override
  State<favApp> createState() => _favAppState();
}

class _favAppState extends State<favApp> {
  
  @override
  Widget build(BuildContext context) {
    final favlistProvider = Provider.of<favListProvider>(context,listen: false);
    return Scaffold(
      appBar: AppBar(title: Text('Aaburite App')),
      body: ListView.builder(
        itemCount: 100,
        itemBuilder: (context, index) {
          return Consumer<favListProvider>(
            builder: (BuildContext context, value, Widget? child) { 
              return ListTile(
                onTap: () {
                  if(favlistProvider.getFavList.contains(index)){
                    favlistProvider.removeFunction(index);
                  }else{
                    favlistProvider.addFunctin(index);
                  }

                },
                title: Text('List Item' + index.toString()),

                trailing: Icon(favlistProvider.getFavList.contains(index)?Icons.favorite:Icons.favorite_border),
              );
            },
           
          );
        },
      ),
    );
  }
}