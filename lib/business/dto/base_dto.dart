import 'package:equatable/equatable.dart';

abstract class Dto<T> with EquatableMixin {
  T fromJson(Map<String, Object> json);

  external Map<String, Object> toJson();

  @override
  bool get stringify => true;
}
