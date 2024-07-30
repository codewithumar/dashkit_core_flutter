// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_theme_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AppThemeState extends AppThemeState {
  @override
  final String? theme;

  factory _$AppThemeState([void Function(AppThemeStateBuilder)? updates]) =>
      (new AppThemeStateBuilder()..update(updates))._build();

  _$AppThemeState._({this.theme}) : super._();

  @override
  AppThemeState rebuild(void Function(AppThemeStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AppThemeStateBuilder toBuilder() => new AppThemeStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppThemeState && theme == other.theme;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, theme.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AppThemeState')..add('theme', theme))
        .toString();
  }
}

class AppThemeStateBuilder
    implements Builder<AppThemeState, AppThemeStateBuilder> {
  _$AppThemeState? _$v;

  String? _theme;
  String? get theme => _$this._theme;
  set theme(String? theme) => _$this._theme = theme;

  AppThemeStateBuilder();

  AppThemeStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _theme = $v.theme;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppThemeState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AppThemeState;
  }

  @override
  void update(void Function(AppThemeStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AppThemeState build() => _build();

  _$AppThemeState _build() {
    final _$result = _$v ?? new _$AppThemeState._(theme: theme);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
