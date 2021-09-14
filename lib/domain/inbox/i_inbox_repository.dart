import 'package:dartz/dartz.dart';
import 'package:reddit_clone/_presentation/main_navigation_pages/inbox/messages_tab_page.dart';
import 'package:reddit_clone/domain/core/failure.dart';
import 'package:reddit_clone/domain/inbox/activity.dart';
import 'package:reddit_clone/domain/inbox/inbox_message.dart';

abstract class IInboxRepository {
  Future<Either<Failure, List<InboxMessage>>> getInboxMessages();
  Future<Either<Failure, Unit>> markInboxMessageAsRead(String id);

  Future<Either<Failure, List<Activity>>> getActivities();
  Future<Either<Failure, Unit>> deleteActivity(String id);
}
