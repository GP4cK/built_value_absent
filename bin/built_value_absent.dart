import 'package:built_value_absent/serializers.dart';
import 'package:built_value_absent/value.dart';

void main(List<String> arguments) {
  final value = SimpleValue();
  print(serializers.toJson(SimpleValue.serializer, value));
}
