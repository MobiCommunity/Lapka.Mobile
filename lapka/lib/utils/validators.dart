class Validators {
  static String? multiValidator(List<VaidatorModel> validators, String text){
    for (var item in validators) {
      if(item.func(text)) {}
      else return item.alert;
    }
    return null;
  }

  static defaultValidator(String text) {return null;}

  static bool email(String text){
    return RegExp(r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$').hasMatch(text);
  }

  static bool min8Chars(String text){
    if(text.length >= 8)
      return true;
    else
      return false;
  }

  static bool notEmpty(String text){
    if(text!='')
      return true;
    else
      return false;
  }

  static bool phone(String text){
    if(text.length == 9 || text.length==12)
      return true;
    else
      return false;
  }

  
}

class VaidatorModel{
  final Function func;
  final String alert;
  VaidatorModel(this.func, this.alert);
}