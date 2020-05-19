import 'package:sirius/business/dto/base_dto.dart';

class PersonalData extends Dto<PersonalData> {
  String fullName = '';
  String email = '';
  String contactPhone = '';
  String country = '';

  @override
  PersonalData fromJson(Map<String, Object> json) {
    fullName = json['fullName'];
    email = json['email'];
    contactPhone = json['contactPhone'];
    country = json['country'];
    return this;
  }

  @override
  Map<String, Object> toJson() => {
        'fullName': fullName,
        'email': email,
        'contactPhone': contactPhone,
        'country': country,
      };

  @override
  List<Object> get props => [fullName, email, contactPhone, country];
}
