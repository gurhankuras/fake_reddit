import '../_presentation/core/constants/format.dart';

String formatDateByHourMinute(DateTime date) {
  return Format.hours().format(date);
}

String generateDateText(DateTime date) {
  final now = DateTime.now();
  final today = DateTime(now.year, now.month, now.day);
  final yesterday = DateTime(now.year, now.month, now.day - 1);

  final newDate = DateTime(date.year, date.month, date.day);
  if (newDate.compareTo(today) == 0) {
    return formatDateByHourMinute(date);
  } else if (newDate.compareTo(yesterday) == 0) {
    return 'Yesterday';
  }
  return Format.dayMonth().format(date);
}
