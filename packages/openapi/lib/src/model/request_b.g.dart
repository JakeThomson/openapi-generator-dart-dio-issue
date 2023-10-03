// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_b.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RequestB extends RequestB {
  @override
  final String? name;
  @override
  final RequestA? credentials;

  factory _$RequestB([void Function(RequestBBuilder)? updates]) =>
      (new RequestBBuilder()..update(updates))._build();

  _$RequestB._({this.name, this.credentials}) : super._();

  @override
  RequestB rebuild(void Function(RequestBBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RequestBBuilder toBuilder() => new RequestBBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RequestB &&
        name == other.name &&
        credentials == other.credentials;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, credentials.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RequestB')
          ..add('name', name)
          ..add('credentials', credentials))
        .toString();
  }
}

class RequestBBuilder implements Builder<RequestB, RequestBBuilder> {
  _$RequestB? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  RequestABuilder? _credentials;
  RequestABuilder get credentials =>
      _$this._credentials ??= new RequestABuilder();
  set credentials(RequestABuilder? credentials) =>
      _$this._credentials = credentials;

  RequestBBuilder() {
    RequestB._defaults(this);
  }

  RequestBBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _credentials = $v.credentials?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RequestB other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RequestB;
  }

  @override
  void update(void Function(RequestBBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RequestB build() => _build();

  _$RequestB _build() {
    _$RequestB _$result;
    try {
      _$result = _$v ??
          new _$RequestB._(name: name, credentials: _credentials?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'credentials';
        _credentials?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'RequestB', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
