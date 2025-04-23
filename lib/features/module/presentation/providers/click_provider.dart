import 'package:flutter_riverpod/flutter_riverpod.dart';

final selectedPaperProvider = StateProvider<String>((ref) => 'Paper I');
final moduleExpansionProvider =
    StateNotifierProvider<ModuleExpansionNotifier, Map<int, bool>>(
      (ref) => ModuleExpansionNotifier(),
    );

class ModuleExpansionNotifier extends StateNotifier<Map<int, bool>> {
  ModuleExpansionNotifier() : super({});

  void toggle(int index) {
    state = {...state, index: !(state[index] ?? false)};
  }

  bool isExpanded(int index) => state[index] ?? false;
}
