

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_flutter_app/config/theme/app_theme.dart';
import 'package:widgets_flutter_app/presentation/providers/theme_provider.dart';

class ThemeChangerScreen extends ConsumerWidget {
  const ThemeChangerScreen({super.key});

  static const name = 'theme_changer_screen';

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final bool isDarkMode = ref.watch(themeNotifierProvider).isDarkMode;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme Changer Screen'),
        actions: [
          IconButton(
            icon: Icon(isDarkMode
                ? Icons.dark_mode_outlined
                : Icons.light_mode_outlined),
            onPressed: () {
             ref.read(themeNotifierProvider.notifier).toogleDarkMode();
            },
          )
        ],
      ),

      body: const _ThemeChangerView(),
    );
  }
}

class _ThemeChangerView extends ConsumerWidget {
  const _ThemeChangerView();
  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final List<Color> colors = ref.watch(colorListProvider);
    // final int selectedColor = ref.watch(selectedColorProvider);
    final int selectedColor  = ref.watch(themeNotifierProvider).selectedColor;
    
    final bool isDarkMode = ref.watch(isDarkModeProvider);


    return ListView.builder(
      itemCount: colors.length,
      itemBuilder: (context, index) {

        final Color color = colors[index];

        return RadioListTile(
          title: Text('This color', style: TextStyle(color: color),),
          subtitle: Text('${color.value}'),
          activeColor: color,
          value: index, 
          groupValue: selectedColor, 
          onChanged: (value) {
            // notify changes
            ref.read(themeNotifierProvider.notifier).changeColorIndex(index);
          }
          );
      } ,
    );
  }
}