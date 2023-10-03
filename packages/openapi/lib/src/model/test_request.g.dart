// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const TestRequestTypeEnum _$testRequestTypeEnum_requestA =
    const TestRequestTypeEnum._('requestA');
const TestRequestTypeEnum _$testRequestTypeEnum_requestB =
    const TestRequestTypeEnum._('requestB');

TestRequestTypeEnum _$testRequestTypeEnumValueOf(String name) {
  switch (name) {
    case 'requestA':
      return _$testRequestTypeEnum_requestA;
    case 'requestB':
      return _$testRequestTypeEnum_requestB;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<TestRequestTypeEnum> _$testRequestTypeEnumValues =
    new BuiltSet<TestRequestTypeEnum>(const <TestRequestTypeEnum>[
  _$testRequestTypeEnum_requestA,
  _$testRequestTypeEnum_requestB,
]);

Serializer<TestRequestTypeEnum> _$testRequestTypeEnumSerializer =
    new _$TestRequestTypeEnumSerializer();

class _$TestRequestTypeEnumSerializer
    implements PrimitiveSerializer<TestRequestTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'requestA': 'RequestA',
    'requestB': 'RequestB',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'RequestA': 'requestA',
    'RequestB': 'requestB',
  };

  @override
  final Iterable<Type> types = const <Type>[TestRequestTypeEnum];
  @override
  final String wireName = 'TestRequestTypeEnum';

  @override
  Object serialize(Serializers serializers, TestRequestTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  TestRequestTypeEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      TestRequestTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$TestRequest extends TestRequest {
  @override
  final TestRequestTypeEnum? type;
  @override
  final OneOf oneOf;

  factory _$TestRequest([void Function(TestRequestBuilder)? updates]) =>
      (new TestRequestBuilder()..update(updates))._build();

  _$TestRequest._({this.type, required this.oneOf}) : super._() {
    BuiltValueNullFieldError.checkNotNull(oneOf, r'TestRequest', 'oneOf');
  }

  @override
  TestRequest rebuild(void Function(TestRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TestRequestBuilder toBuilder() => new TestRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TestRequest && type == other.type && oneOf == other.oneOf;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, oneOf.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TestRequest')
          ..add('type', type)
          ..add('oneOf', oneOf))
        .toString();
  }
}

class TestRequestBuilder implements Builder<TestRequest, TestRequestBuilder> {
  _$TestRequest? _$v;

  TestRequestTypeEnum? _type;
  TestRequestTypeEnum? get type => _$this._type;
  set type(TestRequestTypeEnum? type) => _$this._type = type;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  TestRequestBuilder() {
    TestRequest._defaults(this);
  }

  TestRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TestRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TestRequest;
  }

  @override
  void update(void Function(TestRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TestRequest build() => _build();

  _$TestRequest _build() {
    final _$result = _$v ??
        new _$TestRequest._(
            type: type,
            oneOf: BuiltValueNullFieldError.checkNotNull(
                oneOf, r'TestRequest', 'oneOf'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
