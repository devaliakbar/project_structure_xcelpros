import 'package:equatable/equatable.dart';

enum AppThemeMode { dark, light }

class Setting extends Equatable {
  final AppThemeMode appThemeMode;

  Setting({this.appThemeMode});

  @override
  List<Object> get props => [appThemeMode];
}
