import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:qr_sample/enums/tab_item.dart';

class BasePage extends HookWidget {
  const BasePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final currentTab = useState(TabItem.qrCodeScanner);

    return Scaffold(
      body: currentTab.value.page,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: TabItem.values.indexOf(currentTab.value),
        items: TabItem.values
            .map(
              (tab) => BottomNavigationBarItem(
                label: tab.title,
                icon: Icon(tab.icon),
              ),
            )
            .toList(),
        onTap: (index) {
          currentTab.value = TabItem.values[index];
        },
      ),
    );
  }
}
