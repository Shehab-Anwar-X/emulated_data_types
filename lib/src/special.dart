import 'data_type.dart';

class EmVoid implements SpecialDataTypes<void> {
  const EmVoid();

  @override
  final String nativeTypeName = 'void';

  @override
  String toString() {
    return nativeTypeName;
  }
}

class EmDynamic implements SpecialDataTypes<dynamic> {
  const EmDynamic();

  @override
  final String nativeTypeName = 'dynamic';

  @override
  String toString() {
    return nativeTypeName;
  }
}
