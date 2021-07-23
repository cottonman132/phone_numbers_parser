import 'package:phone_number_metadata/src/models/phone_metadata.dart';

import 'phone_number.dart';

/// factory pattern with the parsers being the factories
class PhoneNumberImpl implements PhoneNumber {
  @override
  final String nsn;

  @override
  final PhoneMetadata metadata;

  @override
  String get isoCode => metadata.isoCode;

  @override
  String get dialCode => metadata.dialCode;

  @override
  String get international => '+' + dialCode + nsn;

  const PhoneNumberImpl(this.nsn, this.metadata);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is PhoneNumberImpl &&
        other.nsn == nsn &&
        other.metadata == metadata;
  }

  @override
  int get hashCode => nsn.hashCode ^ metadata.hashCode;
}