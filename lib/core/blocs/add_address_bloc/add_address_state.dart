import 'package:meta/meta.dart';
import 'package:sirius/core/common/common.dart';

class AddAddressState {
  final String nameStr;
  final String blockchainStr;
  final bool isNameValid;
  final bool isBlockchainStrValid;
  final bool isSubmitting;
  final bool isSuccess;
  final bool isFailure;

  bool get isFormValid => isNameValid && isBlockchainStrValid;

  AddAddressState({
    @required this.isNameValid,
    @required this.isBlockchainStrValid,
    @required this.isSubmitting,
    @required this.isSuccess,
    @required this.isFailure,
    this.nameStr,
    this.blockchainStr,
  });

  factory AddAddressState.empty() {
    return AddAddressState(
      nameStr: null,
      blockchainStr: null,
      isNameValid: true,
      isBlockchainStrValid: true,
      isSubmitting: false,
      isSuccess: false,
      isFailure: false,
    );
  }

  factory AddAddressState.loading(String name, String blockchain) {
    return AddAddressState(
      nameStr: name,
      blockchainStr: blockchain,
      isNameValid: true,
      isBlockchainStrValid: true,
      isSubmitting: true,
      isSuccess: false,
      isFailure: false,
    );
  }

  factory AddAddressState.failure(String name, String blockchain) {
    return AddAddressState(
      nameStr: name,
      blockchainStr: blockchain,
      isNameValid: Validators.isValidName(name),
      isBlockchainStrValid: Validators.isValidBlockchainStr(blockchain),
      isSubmitting: false,
      isSuccess: false,
      isFailure: true,
    );
  }

  factory AddAddressState.success(String name, String blockchain) {
    return AddAddressState(
      nameStr: name,
      blockchainStr: blockchain,
      isNameValid: Validators.isValidName(name),
      isBlockchainStrValid: Validators.isValidBlockchainStr(blockchain),
      isSubmitting: false,
      isSuccess: true,
      isFailure: false,
    );
  }

  AddAddressState update({
    String name,
    String blockchain,
  }) {
    return copyWith(
      nameStr: name,
      blockchainStr: blockchain,
      isSubmitting: false,
      isSuccess: false,
      isFailure: false,
    );
  }

  AddAddressState copyWith({
    String nameStr,
    String blockchainStr,
    bool isSubmitEnabled,
    bool isSubmitting,
    bool isSuccess,
    bool isFailure,
  }) {
    return AddAddressState(
      nameStr: nameStr ?? this.nameStr,
      blockchainStr: blockchainStr ?? this.blockchainStr,
      isNameValid: isNameValid ?? Validators.isValidName(this.nameStr),
      isBlockchainStrValid: isBlockchainStrValid ??
          Validators.isValidBlockchainStr(this.blockchainStr),
      isSubmitting: isSubmitting ?? this.isSubmitting,
      isSuccess: isSuccess ?? this.isSuccess,
      isFailure: isFailure ?? this.isFailure,
    );
  }

  @override
  String toString() {
    return 'LoginState { '
        '${isNameValid ? 'NameValid ' : ''}'
        '${isBlockchainStrValid ? 'BlockchainStrValid ' : ''}'
        '${isSubmitting ? 'Submitting ' : ''}'
        '${isSuccess ? 'Success ' : ''}'
        '${isFailure ? 'Failure ' : ''}}';
  }
}
