import 'package:built_value_absent/serializers.dart';
import 'package:built_value_absent/value.dart';

void main(List<String> arguments) {
  final value = SimpleValue();
  print('No value. It should print {}');
  print(serializers.toJson(SimpleValue.serializer, value));

  print('Null. It should print { nullableString: null }');
  final nullValue = SimpleValue((value) => value.nullableString = null);
  print(serializers.toJson(SimpleValue.serializer, nullValue));
}
