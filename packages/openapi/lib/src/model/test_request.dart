//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/request_b.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/request_a.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'test_request.g.dart';

/// TestRequest
///
/// Properties:
/// * [type] 
/// * [email] 
/// * [password] 
/// * [name] 
/// * [credentials] 
@BuiltValue()
abstract class TestRequest implements Built<TestRequest, TestRequestBuilder> {
  @BuiltValueField(wireName: r'type')
  TestRequestTypeEnum? get type;
  // enum typeEnum {  RequestA,  RequestB,  };

  /// One Of [RequestA], [RequestB]
  OneOf get oneOf;

  static const String discriminatorFieldName = r'type';

  static const Map<String, Type> discriminatorMapping = {
    r'RequestA': RequestA,
    r'RequestB': RequestB,
  };

  TestRequest._();

  factory TestRequest([void updates(TestRequestBuilder b)]) = _$TestRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TestRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TestRequest> get serializer => _$TestRequestSerializer();
}

extension TestRequestDiscriminatorExt on TestRequest {
    String? get discriminatorValue {
        if (this is RequestA) {
            return r'RequestA';
        }
        if (this is RequestB) {
            return r'RequestB';
        }
        return null;
    }
}
extension TestRequestBuilderDiscriminatorExt on TestRequestBuilder {
    String? get discriminatorValue {
        if (this is RequestABuilder) {
            return r'RequestA';
        }
        if (this is RequestBBuilder) {
            return r'RequestB';
        }
        return null;
    }
}

class _$TestRequestSerializer implements PrimitiveSerializer<TestRequest> {
  @override
  final Iterable<Type> types = const [TestRequest, _$TestRequest];

  @override
  final String wireName = r'TestRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TestRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(TestRequestTypeEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TestRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    final result = _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
    result.addAll(serializers.serialize(oneOf.value, specifiedType: FullType(oneOf.valueType)) as Iterable<Object?>);
    return result;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TestRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(TestRequestTypeEnum),
          ) as TestRequestTypeEnum;
          result.type = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TestRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TestRequestBuilder();
    Object? oneOfDataSrc;
    final serializedList = (serialized as Iterable<Object?>).toList();
    final discIndex = serializedList.indexOf(TestRequest.discriminatorFieldName) + 1;
    final discValue = serializers.deserialize(serializedList[discIndex], specifiedType: FullType(String)) as String;
    oneOfDataSrc = serialized;
    final oneOfTypes = [RequestA, RequestB, ];
    Object oneOfResult;
    Type oneOfType;
    switch (discValue) {
      case r'RequestA':
        oneOfResult = serializers.deserialize(
          oneOfDataSrc,
          specifiedType: FullType(RequestA),
        ) as RequestA;
        oneOfType = RequestA;
        break;
      case r'RequestB':
        oneOfResult = serializers.deserialize(
          oneOfDataSrc,
          specifiedType: FullType(RequestB),
        ) as RequestB;
        oneOfType = RequestB;
        break;
      default:
        throw UnsupportedError("Couldn't deserialize oneOf for the discriminator value: ${discValue}");
    }
    result.oneOf = OneOfDynamic(typeIndex: oneOfTypes.indexOf(oneOfType), types: oneOfTypes, value: oneOfResult);
    return result.build();
  }
}

class TestRequestTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'RequestA')
  static const TestRequestTypeEnum requestA = _$testRequestTypeEnum_requestA;
  @BuiltValueEnumConst(wireName: r'RequestB')
  static const TestRequestTypeEnum requestB = _$testRequestTypeEnum_requestB;

  static Serializer<TestRequestTypeEnum> get serializer => _$testRequestTypeEnumSerializer;

  const TestRequestTypeEnum._(String name): super(name);

  static BuiltSet<TestRequestTypeEnum> get values => _$testRequestTypeEnumValues;
  static TestRequestTypeEnum valueOf(String name) => _$testRequestTypeEnumValueOf(name);
}

