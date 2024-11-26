import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_flutter_app/config/menu/menu_items.dart';
import 'package:widgets_flutter_app/config/router/app_router.dart';
import 'package:widgets_flutter_app/presentation/screens/buttons/buttons_screen.dart';
import 'package:widgets_flutter_app/presentation/screens/cards/cards_screen.dart';
import 'package:widgets_flutter_app/presentation/widgets/side_menu.dart';

class HomeScreen extends StatelessWidget {

  static const String name = 'home_screen';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: const Text('Flutter + Material 3'),
      ),
      body: const _HomeView(),
      drawer: SideMenu(scaffoldKey: scaffoldKey),
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {
    // Text('name');
    // ListTitle
    return ListView.builder(
      itemCount: appMenuItems.length,
      itemBuilder: (context, index) {
        final menuItem = appMenuItems[index];

        return _CustomListTile(menuItem: menuItem);
      } 
      );
  }
}

class _CustomListTile extends StatelessWidget {
  const _CustomListTile({
   
    required this.menuItem,
  });

  final MenuItem menuItem;

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return ListTile(
      leading: Icon(menuItem.icon, color: colors.primary),
      trailing: Icon(Icons.arrow_forward_ios_rounded, color: colors.primary),
       title: Text(menuItem.title),
       subtitle: Text(menuItem.subTitle),
       onTap: () {
        // navigate to the another screen
        // Navigator.of(context).push(
        //   MaterialPageRoute(
        //     builder: (context) => const ButtonsScreen(),
        //   ),
        // );

        // Navigator.pushNamed(context, menuItem.link);
        // context.pushNamed( CardsScreen.name);
        context.push(menuItem.link);
       },
    );
  }
}