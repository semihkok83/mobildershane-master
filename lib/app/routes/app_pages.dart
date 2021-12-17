import 'package:get/get.dart';

import '../modules/dashboard/bindings/dashboard_binding.dart';
import '../modules/dashboard/views/dashboard_view.dart';
import '../modules/dersler/bindings/dersler_binding.dart';
import '../modules/dersler/views/dersler_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/konular/bindings/konular_binding.dart';
import '../modules/konular/views/konular_view.dart';
import '../modules/semih_deneme/bindings/semih_deneme_binding.dart';
import '../modules/semih_deneme/views/semih_deneme_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.DERSLER,
      page: () => DerslerView(),
      binding: DerslerBinding(),
    ),
    GetPage(
      name: _Paths.DASHBOARD,
      page: () => DashboardView(),
      binding: DashboardBinding(),
    ),
    GetPage(
      name: _Paths.KONULAR,
      page: () => KonularView(),
      binding: KonularBinding(),
    ),
    GetPage(
      name: _Paths.SEMIH_DENEME,
      page: () => SemihDenemeView(),
      binding: SemihDenemeBinding(),
    ),
  ];
}
