import 'package:brew/models/user.dart';
import 'package:brew/screens/authenticate/authenticate.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserModel?>(context);
    // ignore: avoid_print
    print('from wrapper $user');
    
    return Authenticate();
  }
}
