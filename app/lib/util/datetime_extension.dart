import 'package:intl/intl.dart';

extension DateTimeExtension on DateTime {
  String get formattedDate => DateFormat('dd/MM/yyyy').format(this.toLocal());

  String get formattedTime => DateFormat('HH:mm').format(this.toLocal());

  String get formattedDateTime => DateFormat('dd/MM/yyyy HH:mm').format(this);

  bool sameDayAs(DateTime other) =>
      year == other.year && month == other.month && day == other.day;

  bool get isToday => sameDayAs(DateTime.now());

  String get dynamicFormattedDateTime {
    if (isToday) {
      return formattedTime;
    } else {
      return formattedDate;
    }
  }
}
