import "package:auto_route/auto_route.dart";
import "package:flutter/material.dart";
import "package:sonar_assistant/core/router/app_router/app_router.gr.dart";
import "package:sonar_assistant/utils/colors.dart";

@RoutePage()
class HomeWrapperPage extends StatelessWidget {
  const HomeWrapperPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
  
      routes: [ChatRoute(), CameraWrapperRoute(), MapsWrapperRoute(), NotificationsWrapperRoute(),SettingsWrapperRoute()],
      transitionBuilder: (context, child, animation) => FadeTransition(
        opacity: animation,

        child: child,
      ),
      builder: (context, child) {

        final tabsRouter = AutoTabsRouter.of(context);
  
        return Scaffold(
          body: child,
          bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: AppColors.primary,
            unselectedItemColor: AppColors.onSurface,
            unselectedLabelStyle: const TextStyle( 
              fontWeight: FontWeight.normal,
              fontFamily: "OpenSans",
              fontSize: 14,
            ),
            selectedLabelStyle: const TextStyle(
              fontWeight: FontWeight.normal,
              fontFamily: "OpenSans",
              fontSize: 14,
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
                label: "Карты",
                icon: Icon(Icons.map),
              ),
              BottomNavigationBarItem(
                label: "Пуши",
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