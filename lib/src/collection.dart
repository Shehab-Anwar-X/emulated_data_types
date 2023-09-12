import 'data_type.dart';
import '../serializer.dart';

class EmList<elementType extends DataType>
    implements CollectionDataType<List<elementType>> {
  const EmList({required this.wrapped});

  final DataType wrapped;

  @override
  final nativeTypeName = 'List';

  @override
  String toString() {
    return DataTypeSerializer.convertToString(this);
  }
}

class EmMap<kType extends DataType, vType extends DataType>
    implements CollectionDataType<Map<kType, vType>> {
  EmMap({required this.wrappedKey, required this.wrappedValue});

  final DataType wrappedKey;
  final DataType wrappedValue;

  @override
  final nativeTypeName = 'Map';

  @override
  String toString() {
    return DataTypeSerializer.convertToString(this);
  }
}
