class ListController {

  static ListController? _instance ;
  ListController._internal();
  factory ListController(){
    _instance ??= ListController._internal();
    return _instance!;
  }

  int sum = 0;

}