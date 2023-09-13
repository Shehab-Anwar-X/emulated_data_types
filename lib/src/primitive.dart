import 'data_type.dart';

abstract class NumericDataType extends PrimitiveDataType<num> {
  const NumericDataType();
}

abstract class StringsDataType extends PrimitiveDataType<String> {
  const StringsDataType();
}

abstract class BooleansDataType extends PrimitiveDataType<bool> {
  const BooleansDataType();
}

class EmInt extends NumericDataType {
  EmInt({this.nullable = false});

  @override
  final bool nullable;

  @override
  String get nativeTypeName => 'int${nullable ? '?' : ''}';

  @override
  String toString() {
    return nativeTypeName;
  }
}

class EmDouble extends NumericDataType {
  EmDouble({this.nullable = false});

  @override
  final bool nullable;

  @override
  String get nativeTypeName => 'double${nullable ? '?' : ''}';

  @override
  String toString() {
    return nativeTypeName;
  }
}

class EmNum extends NumericDataType {
  EmNum({this.nullable = false});

  @override
  final bool nullable;

  @override
  String get nativeTypeName => 'num${nullable ? '?' : ''}';

  @override
  String toString() {
    return nativeTypeName;
  }
}

// class BigIntDataType implements NumericDataType {
//   BigIntDataType();
//
//   @override
//   BigInt? value;
// }

class EmString extends StringsDataType {
  EmString({this.nullable = false});

  @override
  final bool nullable;

  @override
  String get nativeTypeName => 'String${nullable ? '?' : ''}';

  @override
  String toString() {
    return nativeTypeName;
  }
}

class EmBoolean extends BooleansDataType {
  EmBoolean({this.nullable = false});

  @override
  final bool nullable;

  @override
  String get nativeTypeName => 'bool${nullable ? '?' : ''}';

  @override
  String toString() {
    return nativeTypeName;
  }
}
