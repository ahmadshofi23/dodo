import 'package:get/get.dart';

import '../modules/chose_login/bindings/chose_login_binding.dart';
import '../modules/chose_login/views/chose_login_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/notifior/bindings/notifior_binding.dart';
import '../modules/notifior/views/notifior_view.dart';
import '../modules/parent_login/bindings/parent_login_binding.dart';
import '../modules/parent_login/views/parent_login_view.dart';
import '../modules/registrasi/bindings/registrasi_binding.dart';
import '../modules/registrasi/views/registrasi_view.dart';
import '../modules/surfior/bindings/surfior_binding.dart';
import '../modules/surfior/views/surfior_view.dart';

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
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.REGISTRASI,
      page: () => RegistrasiView(),
      binding: RegistrasiBinding(),
    ),
    GetPage(
      name: _Paths.PARENT_LOGIN,
      page: () => ParentLoginView(),
      binding: ParentLoginBinding(),
    ),
    GetPage(
      name: _Paths.CHOSE_LOGIN,
      page: () => ChoseLoginView(),
      binding: ChoseLoginBinding(),
    ),
    GetPage(
      name: _Paths.SURFIOR,
      page: () => SurfiorView(),
      binding: SurfiorBinding(),
    ),
    GetPage(
      name: _Paths.NOTIFIOR,
      page: () => NotifiorView(),
      binding: NotifiorBinding(),
    ),
  ];
}
