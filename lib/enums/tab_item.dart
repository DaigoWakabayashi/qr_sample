import 'package:flutter/material.dart';
import 'package:qr_sample/pages/mobile_scanner_page.dart';
import 'package:qr_sample/pages/qr_code_scanner_page.dart';

enum TabItem {
  qrCodeScanner(
    title: 'QrCodeScanner',
    icon: Icons.qr_code,
    page: QrCodeScannerPage(),
  ),

  mobileScanner(
    title: 'MobileScanner',
    icon: Icons.qr_code_2,
    page: MobileScannerPage(),
  );

  const TabItem({
    required this.title,
    required this.icon,
    required this.page,
  });

  /// タイトル
  final String title;

  /// アイコン
  final IconData icon;

  /// 画面
  final Widget page;
}
