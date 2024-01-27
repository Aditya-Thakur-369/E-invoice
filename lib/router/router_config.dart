import 'package:e_invoice/features/dashboard/dashboard.dart';
import 'package:e_invoice/router/router.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(routes: [
  GoRoute(
    path: Routes.homescreen.path,
    name: Routes.homescreen.name,
    pageBuilder: (context, state) {
      return const CupertinoPage(child:  DashBoardScreen());
    },
  ),
]);
