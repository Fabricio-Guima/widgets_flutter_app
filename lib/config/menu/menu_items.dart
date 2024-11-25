import 'package:flutter/material.dart';

class MenuItem {

  final String title;
  final String subTitle;
  final String link;
  final IconData icon;
  
  const MenuItem({
    required this.title,
    required this.subTitle,
    required this.link,
    required this.icon,
  });
}

const appMenuItems = <MenuItem>[
  MenuItem(
    title: 'Buttons', 
    subTitle: 'subtitle', 
    link: '/buttons', 
    icon: Icons.smart_button_outlined
    ),

  MenuItem(
      title: 'Cards',
      subTitle: 'Um conteúdo estilizado',
      link: '/cards',
      icon: Icons.credit_card),

  MenuItem(
      title: 'Progress Indicators',
      subTitle: 'general and controlled',
      link: '/progress',
      icon: Icons.refresh_rounded),
  
  MenuItem(
      title: 'Snackbars and Dialogs',
      subTitle: 'indicators on screens',
      link: '/snackbars',
      icon: Icons.info_outline),
];
