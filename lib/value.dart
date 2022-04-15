import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'value.g.dart';


abstract class SimpleValue implements Built<SimpleValue, SimpleValueBuilder> {
  /// Example of how to make a built_value type serializable.
  ///
  /// Declare a static final [Serializer] field called `serializer`.
  /// The built_value code generator will provide the implementation. You need
  /// to do this for every type you want to serialize.
  @BuiltValueSerializer(serializeNulls: true)
  static Serializer<SimpleValue> get serializer => _$simpleValueSerializer;

  String? get nullableString;

  /// The recommended factory exposes the generated builder interface. This
  /// works well for classes with many fields, or for classes that might be
  /// changed to have more fields later. For very simple classes, you might
  /// want something simpler. See [VerySimpleValue].
  factory SimpleValue([void Function(SimpleValueBuilder) updates]) = _$SimpleValue;
  SimpleValue._();
}