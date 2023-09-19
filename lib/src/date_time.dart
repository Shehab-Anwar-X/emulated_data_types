import '../emulated_data_types.dart';

class EmDateTime extends DateTimeDataType {
  const EmDateTime({this.nullable = false});

  @override
  final bool nullable;

  @override
  String get nativeTypeName => 'DateTime${nullable ? '?' : ''}';

  @override
  String toString() {
    return nativeTypeName;
  }
}
