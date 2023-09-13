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
  String get nativeTypeName => 'int${nullable ? '?' : ''}';

  @override
  String toString() {
    return nativeTypeName;
  }
}

class EmDouble extends NumericDataType {
  EmDouble({super.nullable});

  @override
  String get nativeTypeName => 'double${nullable ? '?' : ''}';

  @override
  String toString() {
    return nativeTypeName;
  }
}

class EmNum extends NumericDataType {
  EmNum({super.nullable});

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
  EmString({super.nullable});

  @override
  String get nativeTypeName => 'String${nullable ? '?' : ''}';

  @override
  String toString() {
    return nativeTypeName;
  }
}

class EmBoolean extends BooleansDataType {
  EmBoolean({super.nullable});

  @override
  String get nativeTypeName => 'bool${nullable ? '?' : ''}';

  @override
  String toString() {
    return nativeTypeName;
  }
}
