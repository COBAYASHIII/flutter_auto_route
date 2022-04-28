import 'package:auto_route/auto_route.dart';
import 'package:flutter_auto_route/presentation/core/base_page.dart';
import 'package:flutter_auto_route/presentation/pages/posts/posts_page.dart';
import 'package:flutter_auto_route/presentation/pages/posts/single_post_page.dart';
import 'package:flutter_auto_route/presentation/pages/settings/settings_page.dart';
import 'package:flutter_auto_route/presentation/pages/users/user_profile_page.dart';
import 'package:flutter_auto_route/presentation/pages/users/users_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute(path: '/', page: BasePage, children: [
      AutoRoute(
          path: 'posts',
          name: 'PostsRouter',
          page: EmptyRouterPage,
          children: [
            AutoRoute(
              path: '',
              page: PostsPage,
            ),
            AutoRoute(
              path: ':postId',
              page: SinglePostPage,
            ),
          ]),
      AutoRoute(
          path: 'users',
          name: 'UsersRouter',
          page: EmptyRouterPage,
          children: [
            AutoRoute(
              path: '',
              page: UsersPage,
            ),
            AutoRoute(
              path: ':userId',
              page: UserProfilePage,
            ),
          ]),
      AutoRoute(
        path: 'settings',
        name: 'SettingsRouter',
        page: SettingsPage,
      ),
    ]),
  ],
)
class $AppRouter {}
