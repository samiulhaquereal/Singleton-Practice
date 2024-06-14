class SingleTonTwo{

  static SingleTonTwo? _instance;

  SingleTonTwo._internal(){
    print('SingleTon 2 Run');
  }

  static get instance{
    _instance ??= SingleTonTwo._internal();
    return _instance;
  }
}