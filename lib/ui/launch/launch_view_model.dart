import 'package:ants_biketrainer_flutter/ui/common/view_state.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'launch_view_state.dart';

class LaunchViewModel extends ChangeNotifier {
  LaunchViewModel({required SharedPreferences sharedPreferences})
      : _sharedPreferences = sharedPreferences {
    _isMounted = true;
    _setLoadingState();
  }

  final SharedPreferences _sharedPreferences;

  bool _isMounted = false;

  LaunchViewState _state = LaunchViewState();

  LaunchViewState get state => _state;

  void _setLoadingState() {
    _setState(LaunchViewState(status: ViewStatus.loading));
  }

  void _setContentState() {
    _setState(LaunchViewState(status: ViewStatus.content));
  }

  void _setState(LaunchViewState newState) {
    if (_isMounted) {
      _state = newState;
      notifyListeners();
    }
  }
}
