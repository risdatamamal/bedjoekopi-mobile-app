part of 'coffee_cubit.dart';

abstract class CoffeeState extends Equatable {
  const CoffeeState();

  @override
  List<Object> get props => [];
}

class CoffeeInitial extends CoffeeState {}

class CoffeeLoaded extends CoffeeState {
  final List<Coffee> coffees;

  CoffeeLoaded(this.coffees);

  @override
  List<Object> get props => [coffees];
}

class CoffeeLoadingFailed extends CoffeeState {
  final String message;

  CoffeeLoadingFailed(this.message);

  @override
  List<Object> get props => [message];
}
