import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clean_arch/features/number-trivia/domain/entities/number_trivia_entity.dart';

@immutable
abstract class NumberTriviaState extends Equatable {
  @override
  List<Object> get props => [];
}

class Empty extends NumberTriviaState {}

class Loading extends NumberTriviaState {}

class Loaded extends NumberTriviaState {
  final NumberTriviaEntity trivia;

  Loaded({required this.trivia});
  @override
  List<Object> get props => [trivia];
}

class Error extends NumberTriviaState {
  final String message;

  Error({required this.message});
  @override
  List<Object> get props => [message];
}
