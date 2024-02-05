// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax/iconsax.dart';
import 'package:e_invoice/router/router.dart';

class NavigationView extends StatelessWidget {
  const NavigationView(
      {super.key, required this.selectedIndex, required this.child});
  final int selectedIndex;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return PopScope(
        canPop: selectedIndex == 0,
        onPopInvoked: (didPop) {
          if (selectedIndex != 0) {
            context.go(Routes.homescreen.path);
          }
        },
        child: Stack(
          children: [
            child,
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 5, vertical: 20),
                decoration: const BoxDecoration(color: Colors.white),
                child: SizedBox(
                  height: 50,
                  child: CustomNavBar(
                    lable: [
                      'DashBoard',
                      'Clients',
                      'Invoices',
                      'Inventory',
                      'Ledger'
                    ],
                    colors: Colors.grey,
                    selectedColor: Colors.blue,
                    icons: [
                      selectedIndex == 0 ? Iconsax.menu : Iconsax.menu5,
                      selectedIndex == 1 ? Iconsax.user : Iconsax.user4,
                      selectedIndex == 2 ? Iconsax.bill : Iconsax.bill,
                      selectedIndex == 3 ? Iconsax.shop : Iconsax.shop4,
                      selectedIndex == 4 ? Iconsax.wallet_1 : Iconsax.wallet_1
                    ],
                    currentIndex: selectedIndex,
                    onItemTap: (index) => context.go(_indexToTab(index)),
                  ),
                ),
              ),
            )
          ],
        ));
  }
}

String _indexToTab(int index) {
  switch (index) {
    case 0:
      return Routes.homescreen.path;
    case 1:
      return Routes.clientscreen.path;
    case 2:
      return Routes.invoicescreen.path;
    case 3:
      return Routes.inventoryscreen.path;
    case 4:
      return Routes.ledger.path;
    default:
      return Routes.homescreen.path;
  }
}

class CustomNavBar extends StatefulWidget {
  const CustomNavBar({
    Key? key,
    required this.icons,
    required this.currentIndex,
    required this.onItemTap,
    required this.selectedColor,
    required this.colors,
    required this.lable,
  }) : super(key: key);
  final List<IconData> icons;
  final int currentIndex;
  final void Function(int index) onItemTap;
  final Color selectedColor;
  final Color colors;
  final List<String> lable;

  @override
  State<CustomNavBar> createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      double lineSize = constraints.maxWidth / widget.icons.length;
      return Stack(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              margin: EdgeInsets.only(left: widget.currentIndex * lineSize),
              height: 80,
              width: lineSize,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: widget.icons.map(
                (e) {
                  int index = widget.icons.indexOf(e);
                  return Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: (lineSize - 48) / 2),
                    child: SizedBox(
                      width: 48,
                      child: MaterialButton(
                        elevation: 0,
                        minWidth: 10,
                        height: 80, // Increased height to accommodate label
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100)),
                        padding: const EdgeInsets.symmetric(
                            vertical: 0, horizontal: 8),
                        onPressed: widget.currentIndex == index
                            ? null
                            : () {
                                widget.onItemTap(index);
                              },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              e,
                              color: widget.currentIndex == index
                                  ? widget.selectedColor
                                  : widget.colors,
                              size: 25,
                            ),
                            const SizedBox(
                                height: 4), // Adjust this spacing as needed
                            FittedBox(
                              child: Text(
                                widget.lable[
                                    index], // Use label from widget property
                                style: TextStyle(
                                  fontSize: 14,
                                  color: widget.currentIndex == index
                                      ? widget.selectedColor
                                      : widget.colors,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ).toList(),
            ),
          ),
        ],
      );
    });
  }
}
