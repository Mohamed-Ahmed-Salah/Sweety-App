part of 'address_bloc.dart';

sealed class AddressState extends Equatable {
  const AddressState();
  
  @override
  List<Object> get props => [];
}

final class AddressInitial extends AddressState {}
