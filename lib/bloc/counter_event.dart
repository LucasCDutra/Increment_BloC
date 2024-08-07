part of 'counter_bloc.dart';

sealed class CounterEvent {}

final class CountIncremented extends CounterEvent {}

final class CountDecremented extends CounterEvent {}
