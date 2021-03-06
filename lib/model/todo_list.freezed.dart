// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'todo_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TodoListTearOff {
  const _$TodoListTearOff();

  _TodoList call({List<TodoModel> todoList = const <TodoModel>[]}) {
    return _TodoList(
      todoList: todoList,
    );
  }
}

/// @nodoc
const $TodoList = _$TodoListTearOff();

/// @nodoc
mixin _$TodoList {
  List<TodoModel> get todoList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TodoListCopyWith<TodoList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoListCopyWith<$Res> {
  factory $TodoListCopyWith(TodoList value, $Res Function(TodoList) then) =
      _$TodoListCopyWithImpl<$Res>;
  $Res call({List<TodoModel> todoList});
}

/// @nodoc
class _$TodoListCopyWithImpl<$Res> implements $TodoListCopyWith<$Res> {
  _$TodoListCopyWithImpl(this._value, this._then);

  final TodoList _value;
  // ignore: unused_field
  final $Res Function(TodoList) _then;

  @override
  $Res call({
    Object? todoList = freezed,
  }) {
    return _then(_value.copyWith(
      todoList: todoList == freezed
          ? _value.todoList
          : todoList // ignore: cast_nullable_to_non_nullable
              as List<TodoModel>,
    ));
  }
}

/// @nodoc
abstract class _$TodoListCopyWith<$Res> implements $TodoListCopyWith<$Res> {
  factory _$TodoListCopyWith(_TodoList value, $Res Function(_TodoList) then) =
      __$TodoListCopyWithImpl<$Res>;
  @override
  $Res call({List<TodoModel> todoList});
}

/// @nodoc
class __$TodoListCopyWithImpl<$Res> extends _$TodoListCopyWithImpl<$Res>
    implements _$TodoListCopyWith<$Res> {
  __$TodoListCopyWithImpl(_TodoList _value, $Res Function(_TodoList) _then)
      : super(_value, (v) => _then(v as _TodoList));

  @override
  _TodoList get _value => super._value as _TodoList;

  @override
  $Res call({
    Object? todoList = freezed,
  }) {
    return _then(_TodoList(
      todoList: todoList == freezed
          ? _value.todoList
          : todoList // ignore: cast_nullable_to_non_nullable
              as List<TodoModel>,
    ));
  }
}

/// @nodoc

class _$_TodoList implements _TodoList {
  const _$_TodoList({this.todoList = const <TodoModel>[]});

  @JsonKey(defaultValue: const <TodoModel>[])
  @override
  final List<TodoModel> todoList;

  @override
  String toString() {
    return 'TodoList(todoList: $todoList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TodoList &&
            (identical(other.todoList, todoList) ||
                const DeepCollectionEquality()
                    .equals(other.todoList, todoList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(todoList);

  @JsonKey(ignore: true)
  @override
  _$TodoListCopyWith<_TodoList> get copyWith =>
      __$TodoListCopyWithImpl<_TodoList>(this, _$identity);
}

abstract class _TodoList implements TodoList {
  const factory _TodoList({List<TodoModel> todoList}) = _$_TodoList;

  @override
  List<TodoModel> get todoList => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TodoListCopyWith<_TodoList> get copyWith =>
      throw _privateConstructorUsedError;
}
