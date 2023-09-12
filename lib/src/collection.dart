import 'data_type.dart';
import '../serializer.dart';

class EmList<elementType extends DataType>
    extends CollectionDataType<List<elementType>> {
  const EmList({required this.wrapped, super.nullable});

  final DataType wrapped;

  @override
  final nativeTypeName = 'List';

  @override
  String toString() {
    return DataTypeSerializer.convertToString(this);
  }
}

class EmMap<kType extends DataType, vType extends DataType>
    extends CollectionDataType<Map<kType, vType>> {
  EmMap({required this.wrappedKey, required this.wrappedValue, super.nullable});

  final DataType wrappedKey;
  final DataType wrappedValue;

  @override
  final nativeTypeName = 'Map';

  @override
  String toString() {
    return DataTypeSerializer.convertToString(this);
  }
}
