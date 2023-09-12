import 'data_type.dart';
import '../serializer.dart';

class EmCustomDataType implements CustomizeDataType {
  EmCustomDataType({required this.dataType});

  @override
  final String dataType;

  @override
  String get nativeTypeName => dataType;

  @override
  String toString() {
    return DataTypeSerializer.convertToString(this);
  }
}
