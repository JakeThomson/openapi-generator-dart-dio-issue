// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_a.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RequestA extends RequestA {
  @override
  final String? email;
  @override
  final String? password;

  factory _$RequestA([void Function(RequestABuilder)? updates]) =>
      (new RequestABuilder()..update(updates))._build();

  _$RequestA._({this.email, this.password}) : super._();

  @override
  RequestA rebuild(void Function(RequestABuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RequestABuilder toBuilder() => new RequestABuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RequestA &&
        email == other.email &&
        password == other.password;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RequestA')
          ..add('email', email)
          ..add('password', password))
        .toString();
  }
}

class RequestABuilder implements Builder<RequestA, RequestABuilder> {
  _$RequestA? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  RequestABuilder() {
    RequestA._defaults(this);
  }

  RequestABuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _password = $v.password;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RequestA other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RequestA;
  }

  @override
  void update(void Function(RequestABuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RequestA build() => _build();

  _$RequestA _build() {
    final _$result = _$v ?? new _$RequestA._(email: email, password: password);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
