import 'package:flutter/cupertino.dart';

class favListProvider with ChangeNotifier{
  List<int>favList=[];
  List<int>get getFavList => favList;
  void addFunctin(int index){
    favList.add(index);
    notifyListeners();
  }
  void removeFunction(int index){
    favList.remove(index); 
    notifyListeners();
  }
}