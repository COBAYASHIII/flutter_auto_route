import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auto_route/infrastructure/user/user.dart';
import 'package:flutter_auto_route/presentation/pages/users/widgets/user_avatar.dart';
import 'package:flutter_auto_route/presentation/routes/router.gr.dart';

class UsersPage extends StatelessWidget {
  const UsersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final users = User.users;
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          for (int i = 0; i < users.length; i++)
            UserAvatar(
              avatarColor: users[i].color,
              username: 'user${users[i].id}',
              onAvatarTap: () =>
                  context.router.push(UserProfileRoute(userId: users[i].id)),
            ),
        ],
      ),
    );
  }
}
