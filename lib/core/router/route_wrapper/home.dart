import "package:auto_route/auto_route.dart";
import "package:flutter/material.dart";
import "package:sonar_assistant/core/router/app_router/app_router.gr.dart";

@RoutePage()
class HomeWrapperPage extends StatelessWidget {
  const HomeWrapperPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
  
      routes: [ChatRoute(), CameraRoute(), MapsRoute(), NotificationsRoute(),SettingsRoute()],
      transitionBuilder: (context, child, animation) => FadeTransition(
        opacity: animation,

        child: child,
      ),
      builder: (context, child) {

        final tabsRouter = AutoTabsRouter.of(context);
  
        return Scaffold(
          body: child,
          bottomNavigationBar: BottomNavigationBar(
            unselectedLabelStyle: const TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14,
              fontFamily: "SF Pro Display",
            ),
            selectedLabelStyle: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
              fontFamily: "SF Pro Display",
            ),
            currentIndex: tabsRouter.activeIndex,
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            onTap: (index) {
              tabsRouter.setActiveIndex(index);
            },
            items: const [
              BottomNavigationBarItem(
                label: "Чат",
                icon: Icon(Icons.chat),
              ),
              BottomNavigationBarItem(
                label: "Камера",
                icon: Icon(Icons.camera),
              ),
              BottomNavigationBarItem(
                label: "Карта",
                icon: Icon(Icons.map),
              ),
              BottomNavigationBarItem(
                label: "Уведомления",
                icon: Icon(Icons.notifications),
              ),
              BottomNavigationBarItem(
                label: "Настройки",
                icon: Icon(Icons.settings),
              ),
            ],
          ),
        );
      },
    );
  }
}