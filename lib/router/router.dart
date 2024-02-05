// ignore_for_file: public_member_api_docs, sort_constructors_first
class AppRouter {
  String name;
  String path;
  AppRouter({
    required this.name,
    required this.path,
  });
}

class Routes {
  static AppRouter navigation = AppRouter(name: "/root", path: "/");
  static AppRouter homescreen = AppRouter(name: "home", path: "/home");
  static AppRouter clientscreen =
      AppRouter(name: "clientscreen", path: "/clientscreen");
  static AppRouter invoicescreen =
      AppRouter(name: "invoicescreen", path: "/invoicescreen");
  static AppRouter inventoryscreen =
      AppRouter(name: "inventoryscreen", path: "/inventoryscreen");
  static AppRouter ledger =
      AppRouter(name: "ledgerscreen", path: "/ledgerscreen");
}
