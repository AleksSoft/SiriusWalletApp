import 'package:antares_wallet/models/base_model.dart';

class PersonalData extends BaseModel<PersonalData> {
  String firstName = '';
  String lastName = '';
  String email = '';
  String contactPhone = '';
  String country = '';

  String get fullName => '$firstName $lastName';

  @override
  PersonalData fromJson(Map<String, Object> json) {
    firstName = json['firstName'];
    lastName = json['lastName'];
    email = json['email'];
    contactPhone = json['contactPhone'];
    country = json['country'];
    return this;
  }

  @override
  Map<String, Object> toJson() => {
        'firstName': firstName,
        'lastName': lastName,
        'email': email,
        'contactPhone': contactPhone,
        'country': country,
      };

  @override
  List<Object> get props => [firstName, lastName, email, contactPhone, country];
}
