import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:layers_flutter/feature/home/viewmodel/home_view_model.dart';

class HomeView extends StatelessWidget {
  final _viewModel = HomeViewModel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: buildObserverLoading(),
      ),
    );
  }

  Observer buildObserverLoading() {
    return Observer(builder: (_) {
      return Visibility(
        child: CircularProgressIndicator(),
        visible: _viewModel.isLoading,
      );
    });
  }
}
