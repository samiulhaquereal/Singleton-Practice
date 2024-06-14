class SingleTonThree{

  static SingleTonThree? _instance ;

  SingleTonThree._internal(){
    print('SingeTon 3 Run');
  }

  factory SingleTonThree(){
    _instance ??= SingleTonThree._internal();
    return _instance!;
  }

}