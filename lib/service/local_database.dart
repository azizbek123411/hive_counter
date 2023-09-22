import 'package:hive/hive.dart';
class HiveLocal{
  String boxName="myBox";
  Future<void> addFunction(int count,String key)async{
    var box=await Hive.openBox(boxName);
    box.put(key,count);
  }
   Future<int?>  getFunction(String key)async{
    var box=await Hive.openBox(boxName);
    box.get(key);
  }
  Future<void> deleteFunction(String key)async{
    var box=await Hive.openBox(boxName);
    box.delete(key);
  }
}