// Once per app, define a top level "Serializer" to gather together
// all the generated serializers.
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value_absent/value.dart';

part 'serializers.g.dart';

@SerializersFor([
  SimpleValue,
])
final serializers = (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
