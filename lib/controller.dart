class ListController {

  static ListController? _instance ;
  ListController._internal();
  factory ListController(){
    _instance ??= ListController._internal();
    return _instance!;
  }

  int _sum = 0;

  int get sum => _sum;
  set sum(int value){
    _sum = value;
  }

  void sumation(){
    _sum = 10 + 10;
  }

  void testing(){
    print('Test Done');
  }

}