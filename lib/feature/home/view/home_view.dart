import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../../product/w%C4%B1dgets/button/user_checkout_button.dart';
import '../viewmodel/home_view_model.dart';

class HomeView extends StatelessWidget {
  final _viewModel = HomeViewModel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: buildObserverLoading(),
      ),
      body: Column(
        children: [
          UserCheckoutButton(
            onPressed: () {},
          )
        ],
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
