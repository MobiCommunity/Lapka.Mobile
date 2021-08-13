import 'package:jiffy/jiffy.dart';

class DateTimeHelper{
  static getDuration(DateTime date){
    Jiffy from = Jiffy(DateTime.now());
    Jiffy to = Jiffy(date);
    return from.diff(to, Units.YEAR);
  }
}