import 'package:dartz/dartz.dart';

import '../core/failure.dart';
import 'activity.dart';
import 'inbox_message.dart';

abstract class IInboxRepository {
  Future<Either<Failure, List<InboxMessage>>> getInboxMessages();
  Future<Either<Failure, Unit>> markInboxMessageAsRead(String id);

  Future<Either<Failure, List<Activity>>> getActivities();
  Future<Either<Failure, Unit>> deleteActivity(String id);
}
