import 'package:antares_wallet/business/dto/base_dto.dart';

class Support extends Dto<Support> {
  String helpUrl;
  String email;
  String phone;

  @override
  Support fromJson(Map<String, Object> json) {
    helpUrl = json['helpUrl'];
    email = json['email'];
    phone = json['phone'];
    return this;
  }

  @override
  Map<String, Object> toJson() => {
        'helpUrl': helpUrl,
        'email': email,
        'phone': phone,
      };

  @override
  List<Object> get props => [helpUrl, email, phone];
}
