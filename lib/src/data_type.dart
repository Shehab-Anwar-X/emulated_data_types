/// The parent of all data types.
abstract class DataType<T> {
  const DataType();

  String get nativeTypeName;
}

/// Represent the primitive data types like int, double, String, bool, ..etc.
abstract class PrimitiveDataType<T> implements DataType<T> {
  const PrimitiveDataType();
}

/// Represent the collections data types like List and Map
abstract class CollectionDataType<T> implements DataType<T> {
  const CollectionDataType();
}

/// Represent the customized types
/// any new type you want to create when the application running.
abstract class CustomizeDataType implements DataType<dynamic> {
  const CustomizeDataType();

  String get dataType;
}

/// Represent the Future and Stream types.
abstract class AsynchronousDataType<T> implements DataType<T> {
  const AsynchronousDataType();
}

/// Represent the special data types like void and dynamic types.
abstract class SpecialDataTypes<T> implements DataType<T> {
  const SpecialDataTypes();
}
