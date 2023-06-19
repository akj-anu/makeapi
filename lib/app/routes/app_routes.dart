part of 'app_pages.dart';

class AppRoutes {
  static AppRoutes? _instance;
  static AppRoutes get instance {
    _instance ??= AppRoutes();
    return _instance!;
  }

  Route generateRoute(RouteSettings settings, {var routeBuilders}) {
    // var args = settings.arguments;
    switch (settings.name) {
      case AppPages.routeHome:
        return _buildRoute(AppPages.routeHome, const HomeView());
      default:
        return _buildRoute(AppPages.routeError, const ErrorView());
    }
  }

  Route _buildRoute(String route, Widget widget,
      {bool enableFullScreen = false}) {
    return MaterialPageRoute(
        fullscreenDialog: enableFullScreen,
        settings: RouteSettings(name: route),
        builder: (_) => widget);
  }
}

class ErrorView extends StatelessWidget {
  const ErrorView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: Text('Page Not Found!')));
  }
}
