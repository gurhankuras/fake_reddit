import 'package:dartz/dartz.dart';

import 'package:reddit_clone/_presentation/main_navigation_pages/inbox/messages_tab_page.dart';
import 'package:reddit_clone/domain/core/failure.dart';
import 'package:reddit_clone/domain/i_network_connectivity.dart';
import 'package:reddit_clone/domain/inbox/activity.dart';
import 'package:reddit_clone/domain/inbox/i_inbox_repository.dart';
import 'package:reddit_clone/domain/inbox/inbox_message.dart';
import 'package:reddit_clone/infastructure/inbox/inbox_remote_source.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IInboxRepository)
class InboxRepository implements IInboxRepository {
  final InboxRemoteSource inboxRemoteSource;
  final INetworkConnectivity connectivity;
  const InboxRepository({
    required this.inboxRemoteSource,
    required this.connectivity,
  });

  @override
  Future<Either<Failure, Unit>> deleteActivity(String id) {
    return inboxRemoteSource.deleteActivity(id);
  }

  @override
  Future<Either<Failure, List<Activity>>> getActivities() async {
    return inboxRemoteSource.getActivities();
  }

  @override
  Future<Either<Failure, List<InboxMessage>>> getInboxMessages() {
    return inboxRemoteSource.getInboxMessages();
  }

  @override
  Future<Either<Failure, Unit>> markInboxMessageAsRead(String id) {
    return inboxRemoteSource.markInboxMessageAsRead(id);
  }
}
