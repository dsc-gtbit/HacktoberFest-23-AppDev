import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:try1/models/user.dart';
import 'package:try1/screens/authentication/authentication.dart';
import 'package:try1/screens/home/home.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<CustomUser?>(context);
    // return either Home or Authenticate widget
    if (user == null) {
      return const Authenticate();
    } else {
      return Home();
    }
  }
}
