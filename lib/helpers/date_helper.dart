import 'package:intl/intl.dart';

class DateHelper
{

  static getDayFromDate(DateTime date)
  {
    return date.day.toString();
  }

  static getMonthFromDate(DateTime date)
  {
    return date.month.toString();
  }

  static getYearFromDate(DateTime date)
  {
    return date.year.toString();
  }
  

  static getDateWithMonthShortName(DateTime date)
  {
    return DateFormat.d().format(date) + ' ' + DateFormat.MMM().format(date)+ ' ' + DateFormat.y().format(date);
  }

}