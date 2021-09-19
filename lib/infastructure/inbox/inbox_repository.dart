import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../domain/core/failure.dart';
import '../../domain/i_network_connectivity.dart';
import '../../domain/inbox/activity.dart';
import '../../domain/inbox/i_inbox_repository.dart';
import '../../domain/inbox/inbox_message.dart';
import 'inbox_remote_source.dart';

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
