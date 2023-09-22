import 'package:auto_route/auto_route.dart';
import 'package:test_task/routes/router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: LoginRoute.page),
        AutoRoute(page: MainRoute.page, children: [
          AutoRoute(page: ListViewRoute.page),
          AutoRoute(page: CheckBoxRoute.page),
          AutoRoute(page: RadioRoute.page)
        ])
      ];
}
