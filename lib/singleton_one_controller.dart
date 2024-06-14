class SingleTonOne{
  static SingleTonOne? _instance;

  // Private Constructor
  SingleTonOne._internal(){
   print('SingleTon 1 Run');
  }

  /*// Normal Constructor
  SingleTonOne(){
    print('Normal Class 1 Run');
  }*/

  static SingleTonOne getInstance(){
    _instance ??= SingleTonOne._internal();
    return _instance!;
  }

}