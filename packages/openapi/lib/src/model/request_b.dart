//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/request_a.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'request_b.g.dart';

/// RequestB
///
/// Properties:
/// * [name] 
/// * [credentials] 
@BuiltValue()
abstract class RequestB implements Built<RequestB, RequestBBuilder> {
  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'credentials')
  RequestA? get credentials;

  RequestB._();

  factory RequestB([void updates(RequestBBuilder b)]) = _$RequestB;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RequestBBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RequestB> get serializer => _$RequestBSerializer();
}

class _$RequestBSerializer implements PrimitiveSerializer<RequestB> {
  @override
  final Iterable<Type> types = const [RequestB, _$RequestB];

  @override
  final String wireName = r'RequestB';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RequestB object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.credentials != null) {
      yield r'credentials';
      yield serializers.serialize(
        object.credentials,
        specifiedType: const FullType(RequestA),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RequestB object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RequestBBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'credentials':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(RequestA),
          ) as RequestA;
          result.credentials.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RequestB deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RequestBBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

