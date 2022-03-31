import 'package:ants_biketrainer_flutter/ui/common/change_notifier_widget.dart';
import 'package:ants_biketrainer_flutter/ui/common/view_state.dart';
import 'package:ants_biketrainer_flutter/ui/launch/launch_view_model.dart';
import 'package:ants_biketrainer_flutter/ui/launch/launch_view_state.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LaunchView extends StatelessWidget {
  const LaunchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return ChangeNotifierWidget<LaunchViewModel>(
        key: key as Key,
        viewModel: LaunchViewModel(
          sharedPreferences: Provider.of<SharedPreferences>(context)
        ),
      builder: (BuildContext context, LaunchViewModel viewModel, Widget? child) =>
          buildView(viewModel.state),
    );
  }

  Widget buildView(LaunchViewState state) {
    if (state.status.isLoading()) {
      return SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset("ants_biketrainer_splash.png"),
            const Center(child: CircularProgressIndicator()),
          ],
        ),
      );
    } else {
      return const Center(child: CircularProgressIndicator());
    }
  }
}
