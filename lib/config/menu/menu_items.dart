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
      title: 'Riverpod Counter',
      subTitle: 'Riverpod Introduction',
      link: '/counter',
      icon: Icons.list_alt_rounded),

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

  MenuItem(
      title: 'Animated Container',
      subTitle: 'Stateful animated widget',
      link: '/animated',
      icon: Icons.check_box_outline_blank_rounded),

  MenuItem(
      title: 'UI Controls + Tiles',
      subTitle: 'A series of flutter controls',
      link: '/ui-controls',
      icon: Icons.car_rental_outlined),
  
  MenuItem(
      title: 'Introduction to the application',
      subTitle: 'Small application tutorial',
      link: '/tutorial',
      icon: Icons.accessible_rounded),

  MenuItem(
      title: 'Infinite Scroll and Pull',
      subTitle: 'Infinite Lists and pull to refresh',
      link: '/infinite',
      icon: Icons.list_alt_rounded),

  MenuItem(
      title: 'Theme Changer',
      subTitle: 'Change application theme',
      link: '/theme-changer',
      icon: Icons.color_lens_outlined),
  
  
];
