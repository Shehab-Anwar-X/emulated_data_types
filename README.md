# Emulated Dart Data Types

The Emulated Dart Data Types package is a comprehensive toolkit for emulating and working with Dart's built-in data types. Whether you're building a custom type system, need to represent Dart data types in a different context, or want to facilitate data type conversions, this package provides a versatile solution.

## Features

- **Emulate Dart's Primitive Data Types:** The package allows you to emulate Dart's primitive data types, including `int`, `double`, `String`, `bool`, and more. This is particularly useful when you need to work with custom data types that mirror Dart's built-ins.

- **Simplify Collections Representation:** Easily represent collections like `List` and `Map` using pre-defined classes, simplifying your data modeling tasks and enhancing code readability.

- **Dynamic Custom Data Types:** With the `CustomizeDataType` class, you can dynamically create and work with customized data types during runtime. This flexibility is perfect for scenarios where you need to define new data types on the fly.

- **Emulate Asynchronous Data Types:** The package provides support for emulating asynchronous data types, including `Future` and `Stream`. This enables you to handle asynchronous data operations seamlessly.

- **Special Data Types Handling:** Special data types like `void` and `dynamic` are also covered by dedicated classes, ensuring you can work with all types in Dart's type system.

## Example Usage

Here's a simple example demonstrating how to use this package:

```dart
import 'package:emulated_dart_data_types/emulated_dart_data_types.dart';

void main() {
  final intType = EmInt();
  final stringType = EmString();
  final listType = EmList(wrapped: intType);
  
  print(intType.toString());      // Output: "int"
  print(stringType.toString());   // Output: "String"
  print(listType.toString());     // Output: "List<int>"
}
```
This package enables you to work with Dart data types in unique ways, making it suitable for various applications where data type emulation and conversions are required.


Code Structure 

```dart
    lib
    ├── emulated_data_types.dart
    ├── serializer.dart
    └── src/
        ├── asynchronous.dart
        ├── collection.dart
        ├── custom.dart
        ├── data_type.dart
        ├── primitive.dart
        └── special.dart
```