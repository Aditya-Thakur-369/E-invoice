import 'package:e_invoice/features/clients/clients_screen.dart';
import 'package:e_invoice/features/dashboard/dashboard_screen.dart';
import 'package:e_invoice/features/inventory/inventory_screen.dart';
import 'package:e_invoice/features/invoices/invoice_screen.dart';
import 'package:e_invoice/features/ledger/ledger_screen.dart';
import 'package:e_invoice/features/navigation/bottom_bar.dart';
import 'package:e_invoice/router/router.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

final _rootNavigationKey = GlobalKey<NavigatorState>();
final _shellNavigationKey = GlobalKey<NavigatorState>();

final router = GoRouter(
    navigatorKey: _rootNavigationKey,
    initialLocation: Routes.homescreen.path,
    routes: [
      ShellRoute(
          parentNavigatorKey: _rootNavigationKey,
          navigatorKey: _shellNavigationKey,
          pageBuilder: (context, state, child) {
            int index = 0;

            if (state.fullPath == Routes.homescreen.path) {
              index = 0;
            } else if (state.fullPath == Routes.clientscreen.path) {
              index = 1;
            } else if (state.fullPath == Routes.invoicescreen.path) {
              index = 2;
            } else if (state.fullPath == Routes.inventoryscreen.path) {
              index = 3;
            } else if (state.fullPath == Routes.ledger.path) {
              index = 4;
            }
            return CupertinoPage(
                child: NavigationView(selectedIndex: index, child: child));
          },
          routes: [
            GoRoute(
              path: Routes.homescreen.path,
              name: Routes.homescreen.name,
              pageBuilder: (context, state) {
                return const CupertinoPage(child: DashBoardScreen());
              },
            ),
            GoRoute(
              path: Routes.clientscreen.path,
              name: Routes.clientscreen.name,
              pageBuilder: (context, state) {
                return const CupertinoPage(child: ClientsScreen());
              },
            ),
            GoRoute(
              path: Routes.invoicescreen.path,
              name: Routes.invoicescreen.name,
              pageBuilder: (context, state) {
                return const CupertinoPage(child: InvoiceScreen());
              },
            ),
            GoRoute(
              path: Routes.inventoryscreen.path,
              name: Routes.inventoryscreen.name,
              pageBuilder: (context, state) {
                return const CupertinoPage(child: InventoryScreen());
              },
            ),
            GoRoute(
              path: Routes.ledger.path,
              name: Routes.ledger.name,
              pageBuilder: (context, state) {
                return const CupertinoPage(child: LedgerScreen());
              },
            ),
          ]),
    ]);
