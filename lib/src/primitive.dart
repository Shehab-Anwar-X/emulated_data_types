import 'data_type.dart';

abstract class NumericDataType implements PrimitiveDataType<num> {
  const NumericDataType();
}

abstract class StringsDataType implements PrimitiveDataType<String> {
  const StringsDataType();
}

abstract class BooleansDataType implements PrimitiveDataType<bool> {
  const BooleansDataType();
}

class EmInt implements NumericDataType {
  EmInt();

  @override
  final nativeTypeName = 'int';

  @override
  String toString() {
    return nativeTypeName;
  }
}

class EmDouble implements NumericDataType {
  EmDouble();

  @override
  final nativeTypeName = 'double';

  @override
  String toString() {
    return nativeTypeName;
  }
}

class EmNum implements NumericDataType {
  EmNum();

  @override
  final nativeTypeName = 'num';

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

class EmString implements StringsDataType {
  EmString();

  @override
  final nativeTypeName = 'String';

  @override
  String toString() {
    return nativeTypeName;
  }
}

class EmBoolean implements BooleansDataType {
  EmBoolean();

  @override
  final nativeTypeName = 'bool';

  @override
  String toString() {
    return nativeTypeName;
  }
}
