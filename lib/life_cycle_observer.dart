import 'dart:ui';

import 'package:flutter/material.dart';

class LifeCycleObserver {
  late final AppLifecycleListener appLifecycleListener;

  LifeCycleObserver() {
    appLifecycleListener = AppLifecycleListener(
      onResume: _onAppResume,
      onPause: _onAppPause,
      onInactive: _onAppInactive,
      onDetach: _onAppDetached,
      onHide: _onAppHidden,
      onRestart: _onAppRestart,
      onShow: _onAppShow,
      onExitRequested: _onExitRequested,
      onStateChange: _onStateChange,
    );
  }

  void dispose() {
    appLifecycleListener.dispose();
  }

  void _onAppResume() {}

  void _onAppPause() {}

  void _onAppInactive() {}

  void _onAppDetached() {}

  void _onAppHidden() {}

  void _onAppRestart() {}

  void _onAppShow() {}

  Future<AppExitResponse> _onExitRequested() async {
    debugPrint('App Exit Requested');
    return AppExitResponse.exit;
  }

  void _onStateChange(AppLifecycleState state) {
    debugPrint('App State Changed: $state');
  }
}
