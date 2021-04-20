import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../manager/user_manager.dart';

class UserCheckoutButton extends StatelessWidget {
  final VoidCallback onPressed;

  const UserCheckoutButton({Key? key, required this.onPressed}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Text('Checkout'),
      style: ButtonStyle(backgroundColor: MaterialStateProperty.all(context.watch<UserManager>().defaultMoney < 50 ? Colors.grey : Colors.green)),
      onPressed: context.watch<UserManager>().defaultMoney < 50 ? null : onPressed,
    );
  }
}
