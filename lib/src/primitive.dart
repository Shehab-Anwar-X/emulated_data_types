import 'data_type.dart';

abstract class NumericDataType extends PrimitiveDataType<num> {
  const NumericDataType({super.nullable});
}

abstract class StringsDataType extends PrimitiveDataType<String> {
  const StringsDataType({super.nullable});
}

abstract class BooleansDataType extends PrimitiveDataType<bool> {
  const BooleansDataType({super.nullable});
}

class EmInt extends NumericDataType {
  EmInt({super.nullable});

  @override
  final nativeTypeName = 'int';

  @override
  String toString() {
    return nativeTypeName;
  }
}

class EmDouble extends NumericDataType {
  EmDouble({super.nullable});

  @override
  final nativeTypeName = 'double';

  @override
  String toString() {
    return nativeTypeName;
  }
}

class EmNum extends NumericDataType {
  EmNum({super.nullable});

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

class EmString extends StringsDataType {
  EmString({super.nullable});

  @override
  final nativeTypeName = 'String';

  @override
  String toString() {
    return nativeTypeName;
  }
}

class EmBoolean extends BooleansDataType {
  EmBoolean({super.nullable});

  @override
  final nativeTypeName = 'bool';

  @override
  String toString() {
    return nativeTypeName;
  }
}
