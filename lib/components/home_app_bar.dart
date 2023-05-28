import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      title: Text(
        "Bem vindo(a)!",
        style: Theme.of(context)
            .textTheme
            .displaySmall
            ?.copyWith(color: Theme.of(context).colorScheme.onPrimary),
      ),
      expandedHeight: 125,
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextField(
            //on focus
            onTap: () {
              //(GoRouter.of(context).location == "/search") ? null : context.push('/search');
            },
            style: Theme.of(context).textTheme.titleSmall?.copyWith(
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
            // color transparent
            cursorColor: Theme.of(context).colorScheme.onPrimary,
            decoration: InputDecoration(
              hintText: "Pesquisar",
              hintStyle: TextStyle(
                color: Theme.of(context).colorScheme.onPrimary,
              ),
              prefixIcon: Icon(
                Icons.search,
                color: Theme.of(context).colorScheme.onPrimary,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(24),
                borderSide: BorderSide.none,
              ),
              filled: true,
              fillColor:
                  Theme.of(context).colorScheme.onPrimary.withOpacity(0.1),
            ),
          ),
        ),
      ),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(30),
        ),
      ),
      centerTitle: false,
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.notifications),
        ),
      ],
    );
  }
}
