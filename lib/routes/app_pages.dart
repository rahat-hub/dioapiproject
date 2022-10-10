import 'package:dioapiproject/module/dashboard/dashboard_binding.dart';
import 'package:dioapiproject/module/dashboard/dashboard_view.dart';
import 'package:get/get.dart';
import 'app_routes.dart';

class AppPages{
  static const INITIAL = AppRoutes.DASHBOARD;
  static final pages = [
    GetPage(
        name: AppRoutes.DASHBOARD,
        page: () => const DashboardPage(),
        bindings: [
          DashboardBinding(),
        ]
    ),
  ];
}