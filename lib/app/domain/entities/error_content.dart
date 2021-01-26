import 'dart:ui';

import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class ErrorContent with EquatableMixin {
  final String title;
  final String message;
  final VoidCallback action;

  ErrorContent({
    this.title,
    @required this.message,
    this.action,
  });

  @override
  List<Object> get props => [title, message];
}
