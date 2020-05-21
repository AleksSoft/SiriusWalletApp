import 'package:equatable/equatable.dart';

abstract class Dto<T> with EquatableMixin {
  T fromJson(Map<String, dynamic> json);

  external Map<String, dynamic> toJson();

  @override
  bool get stringify => true;
}
