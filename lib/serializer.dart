import 'src/special.dart';
import 'src/asynchronous.dart';
import 'src/collection.dart';
import 'src/custom.dart';
import 'src/data_type.dart';
import 'src/primitive.dart';

abstract class DataTypeSerializer {
  const DataTypeSerializer();

  static DataType fromString(String value) {
    final trimmedValue = value.trim();

    if (value == EmInt().nativeTypeName) {
      return EmInt();
    } else if (value == EmDouble().nativeTypeName) {
      return EmDouble();
    } else if (value == EmNum().nativeTypeName) {
      return EmNum();
    } else if (value == EmString().nativeTypeName) {
      return EmString();
    } else if (value == EmBoolean().nativeTypeName) {
      return EmBoolean();
    } else if (trimmedValue.startsWith('List<') && trimmedValue.endsWith('>')) {
      final innerType = trimmedValue.substring(5, trimmedValue.length - 1);
      final wrappedType = fromString(innerType);
      return EmList(wrapped: wrappedType);
    } else if (trimmedValue.startsWith('Map<') && trimmedValue.endsWith('>')) {
      final innerTypes =
          trimmedValue.substring(4, trimmedValue.length - 1).split(',');
      if (innerTypes.length == 2) {
        final keyType = fromString(innerTypes[0].trim());
        final valueType = fromString(innerTypes[1].trim());
        return EmMap(wrappedKey: keyType, wrappedValue: valueType);
      } else {
        throw Exception(
            'Exception Error when trying to convert Map, "The map inner types not equal 2 is equal (${innerTypes.length})"');
      }
    } else if (trimmedValue.startsWith('Future<') &&
        trimmedValue.endsWith('>')) {
      final innerType = trimmedValue.substring(7, trimmedValue.length - 1);
      final wrappedType = fromString(innerType);
      return EmFuture(wrapped: wrappedType);
    } else if (trimmedValue.startsWith('Stream<') &&
        trimmedValue.endsWith('>')) {
      final innerType = trimmedValue.substring(7, trimmedValue.length - 1);
      final wrappedType = fromString(innerType);
      return EmStream(wrapped: wrappedType);
    } else if (value == const EmVoid().nativeTypeName) {
      return const EmVoid();
    } else if (value == const EmDynamic().nativeTypeName) {
      return const EmDynamic();
    } else {
      return EmCustomDataType(dataType: trimmedValue);
    }
  }

  static String convertToString(DataType object) {
    if (object is PrimitiveDataType) {
      return object.nativeTypeName;
    } else if (object is CollectionDataType) {
      if (object is EmList) {
        final elementType = convertToString(object.wrapped);
        return '${object.nativeTypeName}<$elementType>';
      } else if (object is EmMap) {
        final keyType = convertToString(object.wrappedKey);
        final valueType = convertToString(object.wrappedValue);
        return '${object.nativeTypeName}<$keyType, $valueType>';
      } else {
        throw 'Unsupported Collection Data Type!';
      }
    } else if (object is CustomizeDataType) {
      return object.dataType;
    } else if (object is AsynchronousDataType) {
      if (object is EmFuture) {
        final elementType = convertToString(object.wrapped);
        return '${object.nativeTypeName}<$elementType>';
      } else if (object is EmStream) {
        final elementType = convertToString(object.wrapped);
        return '${object.nativeTypeName}<$elementType>';
      } else {
        throw 'Unsupported Asynchronous Data Type!';
      }
    } else if (object is SpecialDataTypes) {
      return object.nativeTypeName;
    } else {
      throw 'Unsupported Data Type!';
    }
  }
}
