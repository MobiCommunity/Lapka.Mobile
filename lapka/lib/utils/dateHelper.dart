class DateTimeHelper{
  static getDuration(DateTime date){
    DateTime now = DateTime.now();
    final difference = date.difference(now).inDays;
  }
}