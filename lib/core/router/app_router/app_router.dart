import "package:auto_route/auto_route.dart";
import "package:sonar_assistant/core/router/app_router/app_router.gr.dart";

@AutoRouterConfig(replaceInRouteName: "Screen|Page,Route")
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material(); //.cupertino, .adaptive ..etc

  @override
  List<AutoRoute> get routes => [
    //AutoRoute(page: WelcomeRoute.page, path: "/"),
    AutoRoute(
      page: HomeWrapperRoute.page,
      path: "/",
      children: [
        AutoRoute(
          page: ChatWrapperRoute.page,
          path: "chat",
          children: [
            AutoRoute(page: ChatRoute.page, path: "start", initial: true),
          
  
          ],
        ),
         
         AutoRoute(
          page: CameraWrapperRoute.page,
          path: "camera",
          children: [
            AutoRoute(page: CameraRoute.page, path: "start", initial: true),
          ],
        ),
         AutoRoute(
          page: MapsWrapperRoute.page,
          path: "maps",
          children: [
            AutoRoute(page: MapsRoute.page, path: "start", initial: true),
          ],
        ),
         AutoRoute(
          page: NotificationsWrapperRoute.page,
          path: "notifications",
          children: [
            AutoRoute(page: NotificationsRoute.page, path: "start", initial: true),
          ],
        ),
        AutoRoute(
          page: SettingsWrapperRoute.page,
          path: "settings",
          children: [
            AutoRoute(page: SettingsRoute.page, path: "start", initial: true),
          ],
        ),
      ],
    ),
  ];
}