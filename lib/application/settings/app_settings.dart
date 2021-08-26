import 'package:flutter/widgets.dart';

import '../../infastructure/core/cache_service.dart';
import '../../utility/app_logger.dart';

class AppSettings with ChangeNotifier {
  final CacheService cacheService;

  late bool reduceAwardAnimations;
  late bool automatic;
  late bool swipeToCollapseComments;
  late bool savedImageAttribution;
  late bool quietAudioMode;
  late bool recentCommunities;

  AppSettings({
    required this.cacheService,
  }) {
    log.w('AppSettings  constructor');
    reduceAwardAnimations =
        cacheService.prefs.getBool(AppSettingsKeys.reduceAwardAnimations) ??
            false;
    automatic = cacheService.prefs.getBool(AppSettingsKeys.automatic) ?? false;
    swipeToCollapseComments =
        cacheService.prefs.getBool(AppSettingsKeys.swipeToCollapseComments) ??
            false;
    savedImageAttribution =
        cacheService.prefs.getBool(AppSettingsKeys.savedImageAttribution) ??
            true;
    quietAudioMode =
        cacheService.prefs.getBool(AppSettingsKeys.quietAudioMode) ?? false;
    recentCommunities =
        cacheService.prefs.getBool(AppSettingsKeys.recentCommunities) ?? true;
  }

  toggleReduceAwardAnimations() {
    print('toggleReduceAwardAnimations');
    reduceAwardAnimations = !reduceAwardAnimations;
    notifyListeners();
    cacheService.prefs
        .setBool(AppSettingsKeys.reduceAwardAnimations, reduceAwardAnimations);
  }
}

abstract class AppSettingsKeys {
  static String reduceAwardAnimations = 'reduceAwardAnimations';
  static String automatic = 'automatic';
  static String swipeToCollapseComments = 'swipeToCollapseComments';
  static String savedImageAttribution = 'savedImageAttribution';
  static String quietAudioMode = 'quietAudioMode';
  static String recentCommunities = 'recentCommunities';
}
