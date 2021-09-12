import 'package:freezed_annotation/freezed_annotation.dart';
part 'todo_counter.freezed.dart';

@freezed
class Counter with _$Counter {
  const factory Counter({
    @Default(0) int counter,
  }) = _Counter;
}
