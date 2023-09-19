import '../emulated_data_types.dart';

class EmEnum extends EnumerationDataType {
  const EmEnum({
    required this.enumName,
    this.nullable = false,
  });

  @override
  final bool nullable;
  @override
  final String enumName;

  @override
  String get nativeTypeName => '$enumName${nullable ? '?' : ''}';

  @override
  String toString() {
    return nativeTypeName;
  }
}
