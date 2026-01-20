// ignore_for_file: non_constant_identifier_names

enum HoroscopeType{
  // ignore: constant_identifier_names
  daily, weekly, monthly
}

class DisplayDTO{
  final String horoscope_data;

  const DisplayDTO({required this.horoscope_data});

  factory DisplayDTO.FromJson(HoroscopeType horoscopeType, Map<String, dynamic> json){
    switch(horoscopeType){
      case HoroscopeType.daily:
        return DailyDisplayDTO(
          date: json["date"] as String? ?? 'unknown', 
          horoscope_data: json["horoscope_data"] as String? ?? 'unknown'
        );
      case HoroscopeType.weekly:
        return WeeklyDisplayDTO(
          week: json["week"] as String? ?? 'unknown', 
          horoscope_data: json["horoscope_data"] as String? ?? 'unknown'
        );
      case HoroscopeType.monthly:
        return MonthlyDisplayDTO(
          challenging_days: json["challenging_days"] as String? ?? 'unknown', 
          month: json["month"] as String? ?? 'unknown', 
          standout_days: json["standout_days"] as String? ?? 'unknown', 
          horoscope_data: json["horoscope_data"] as String? ?? 'unknown'
        );
    }
  }
}

class DailyDisplayDTO extends DisplayDTO{
  final String date;

  const DailyDisplayDTO( { required this.date, required super.horoscope_data});
}

class WeeklyDisplayDTO extends DisplayDTO{
  final String week;

  const WeeklyDisplayDTO( {required this.week, required super.horoscope_data});
}

class MonthlyDisplayDTO extends DisplayDTO{
  final String challenging_days;
  final String month;
  final String standout_days;

  const MonthlyDisplayDTO( { required this.challenging_days, required this.month, required this.standout_days, required super.horoscope_data});
}

DailyDisplayDTO nullFallbackDaily() => DailyDisplayDTO(date: "Null", horoscope_data: "Null");
WeeklyDisplayDTO nullFallbackWeekly() => WeeklyDisplayDTO(week: "Null", horoscope_data: "Null");
MonthlyDisplayDTO nullFallbackMonthly() => MonthlyDisplayDTO(challenging_days: "Null", month: "Null", standout_days: "Null", horoscope_data: "Null");