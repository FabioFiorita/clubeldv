import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../routes/app_router.dart';

@RoutePage()
class EmptyPage extends StatelessWidget {
  const EmptyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Image(
              image: AssetImage("assets/images/woman.png",),
              height: 350,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
              child: Text("Essa página não existe!", style: Theme.of(context).textTheme.bodyLarge,),
            ),
            ElevatedButton(
              onPressed: () {
                context.router.canPop()
                    ? context.router.pop()
                    : context.router.replace(const HomeRoute());
              },
              child: const Text("Voltar para a página inicial"),
            ),
          ],
        ),
      ),
    );
  }
}
