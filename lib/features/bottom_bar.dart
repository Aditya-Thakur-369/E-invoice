// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({
    super.key,
    required this.items,
    required this.currentIndex,
    required this.onItemTap,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: LayoutBuilder(builder: (_, constraints) {
        double lineSize = constraints.maxWidth / items.length;
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: AnimatedContainer(
                curve: Curves.fastEaseInToSlowEaseOut,
                duration: const Duration(milliseconds: 200),
                margin: EdgeInsets.only(left: (currentIndex * lineSize) + 20),
                height: 3,
                width: lineSize - 40,
                decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(12),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: items.map(
                (e) {
                  int index = items.indexOf(e);
                  return SizedBox(
                    width: lineSize,
                    child: CupertinoButton(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      onPressed: currentIndex == index
                          ? null
                          : () {
                              onItemTap(index);
                            },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            currentIndex == index ? e.selectedIcon : e.icons,
                            color: Colors.black,
                            size: 30,
                          ),
                          const SizedBox(height: 5),
                          Text(
                            e.label.toUpperCase(),
                            style: const TextStyle(
                              fontSize: 12,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ).toList(),
            ),
          ],
        );
      }),
    );
  }

  final List<MayAppBarItem> items;
  final int currentIndex;
  final void Function(int index) onItemTap;
}

class MayAppBarItem {
  IconData icons;
  IconData? selectedIcon;
  String label;
  MayAppBarItem({
    required this.icons,
    required this.label,
    this.selectedIcon,
  }) {
    selectedIcon ??= icons;
  }
}
