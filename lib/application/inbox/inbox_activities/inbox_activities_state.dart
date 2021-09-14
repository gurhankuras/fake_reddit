part of 'inbox_activities_bloc.dart';

abstract class InboxActivitiesState extends Equatable {
  const InboxActivitiesState();
  
  @override
  List<Object> get props => [];
}

class InboxActivitiesInitial extends InboxActivitiesState {}
