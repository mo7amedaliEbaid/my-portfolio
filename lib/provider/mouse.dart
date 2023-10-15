import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final mouseProvider = ChangeNotifierProvider(((ref) => MouseProvider()));

class MouseProvider extends ChangeNotifier {
  int _pressedAttentionIndex = -1;

  bool ishovered(int index) {
    final pressAttention = _pressedAttentionIndex == index;
    return pressAttention;
  }

  int setashovered(int index) {
    _pressedAttentionIndex = index;
    notifyListeners();
    return _pressedAttentionIndex;
  }

  int setasnothovered() {
    _pressedAttentionIndex = -1;
    notifyListeners();
    return _pressedAttentionIndex;
  }
}
