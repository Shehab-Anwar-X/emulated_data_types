import 'data_type.dart';
import '../serializer.dart';

class EmCustomDataType extends CustomizeDataType {
  EmCustomDataType({required this.dataType, super.nullable});

  @override
  final String dataType;

  @override
  String get nativeTypeName => '$dataType${nullable ? '?' : ''}';

  @override
  String toString() {
    return DataTypeSerializer.convertToString(this);
  }
}
