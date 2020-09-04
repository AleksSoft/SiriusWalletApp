import 'package:antares_wallet/models/base_model.dart';

class SavedErrorsModel extends BaseModel<SavedErrorsModel> {
  List<SavedError> errors = List();

  @override
  SavedErrorsModel fromJson(Map<String, dynamic> json) {
    if (json['errors'] != null) {
      errors = new List<SavedError>();
      json['errors'].forEach((v) {
        errors.add(SavedError().fromJson(v));
      });
    }
    return this;
  }

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.errors != null) {
      data['errors'] = this.errors.map((v) => v.toJson()).toList();
    }
    return data;
  }

  @override
  List<Object> get props => [errors];
}

class SavedError extends BaseModel<SavedError> {
  String code;
  String message;
  String method;

  @override
  SavedError fromJson(Map<String, Object> json) {
    code = json['code'];
    message = json['message'];
    method = json['method'];
    return this;
  }

  @override
  Map<String, Object> toJson() => {
        'code': code,
        'message': message,
        'method': method,
      };

  @override
  List<Object> get props => [code, message, method];
}
