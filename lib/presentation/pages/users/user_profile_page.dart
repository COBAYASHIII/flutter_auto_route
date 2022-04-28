import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auto_route/infrastructure/user/user.dart';
import 'package:flutter_auto_route/presentation/pages/users/widgets/user_avatar.dart';

class UserProfilePage extends StatelessWidget {
  final int userId;
  const UserProfilePage({
    Key? key,
    @PathParam() required this.userId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = User.users[userId - 1];
    return Scaffold(
      backgroundColor: user.color,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UserAvatar(
              avatarColor: Colors.white,
              username: 'user${user.id}',
            ),
          ],
        ),
      ),
    );
  }
}
