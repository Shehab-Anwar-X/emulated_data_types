import 'data_type.dart';
import '../serializer.dart';

class EmFuture<elementType extends DataType>
    extends AsynchronousDataType<elementType> {
  const EmFuture({required this.wrapped, this.nullable = false});

  final DataType wrapped;

  @override
  final bool nullable;
  @override
  final nativeTypeName = 'Future';

  @override
  String toString() {
    return DataTypeSerializer.convertToString(this);
  }
}

class EmStream<elementType extends DataType>
    extends AsynchronousDataType<elementType> {
  const EmStream({required this.wrapped, this.nullable = false});

  final DataType wrapped;

  @override
  final bool nullable;

  @override
  final nativeTypeName = 'Stream';

  @override
  String toString() {
    return DataTypeSerializer.convertToString(this);
  }
}
