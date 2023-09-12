import 'data_type.dart';
import '../serializer.dart';

class EmFuture<elementType extends DataType>
    implements AsynchronousDataType<elementType> {
  const EmFuture({required this.wrapped});

  final DataType wrapped;

  @override
  final nativeTypeName = 'Future';

  @override
  String toString() {
    return DataTypeSerializer.convertToString(this);
  }
}

class EmStream<elementType extends DataType>
    implements AsynchronousDataType<elementType> {
  const EmStream({required this.wrapped});

  final DataType wrapped;

  @override
  final nativeTypeName = 'Stream';

  @override
  String toString() {
    return DataTypeSerializer.convertToString(this);
  }
}
