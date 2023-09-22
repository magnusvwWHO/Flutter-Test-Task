// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:test_task/login_page.dart' as _i3;
import 'package:test_task/main_page.dart' as _i4;
import 'package:test_task/pages/checkbox_page.dart' as _i1;
import 'package:test_task/pages/listview_page.dart' as _i2;
import 'package:test_task/pages/radio_page.dart' as _i5;

abstract class $AppRouter extends _i6.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    CheckBoxRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.CheckBoxPage(),
      );
    },
    ListViewRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.ListViewPage(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.LoginPage(),
      );
    },
    MainRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.MainPage(),
      );
    },
    RadioRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.RadioPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.CheckBoxPage]
class CheckBoxRoute extends _i6.PageRouteInfo<void> {
  const CheckBoxRoute({List<_i6.PageRouteInfo>? children})
      : super(
          CheckBoxRoute.name,
          initialChildren: children,
        );

  static const String name = 'CheckBoxRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i2.ListViewPage]
class ListViewRoute extends _i6.PageRouteInfo<void> {
  const ListViewRoute({List<_i6.PageRouteInfo>? children})
      : super(
          ListViewRoute.name,
          initialChildren: children,
        );

  static const String name = 'ListViewRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i3.LoginPage]
class LoginRoute extends _i6.PageRouteInfo<void> {
  const LoginRoute({List<_i6.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i4.MainPage]
class MainRoute extends _i6.PageRouteInfo<void> {
  const MainRoute({List<_i6.PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i5.RadioPage]
class RadioRoute extends _i6.PageRouteInfo<void> {
  const RadioRoute({List<_i6.PageRouteInfo>? children})
      : super(
          RadioRoute.name,
          initialChildren: children,
        );

  static const String name = 'RadioRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}
