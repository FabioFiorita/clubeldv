import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(alignment: AlignmentDirectional.topCenter, children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(
              image: const AssetImage('images/pizza.jpeg'),
              height: 200,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 125,
            ),
            Text(
              "Clube de Descontos\nLugares do Vale",
              style: Theme.of(context).textTheme.displayMedium?.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                    fontWeight: FontWeight.bold,
                  ),
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16.0, 48.0, 16.0, 48.0),
              child: Text(
                "Estamos felizes em tê-lo conosco. Aqui você encontrará descontos exclusivos de nossos parceiros selecionados em diversos tipos de comida e produtos.\nAproveite e economize com nossas ofertas incríveis.",
                style: Theme.of(context).textTheme.titleLarge,
                textAlign: TextAlign.justify,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0),
              child: SizedBox(
                height: 50,
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  onPressed: () {
                    context.go('/home');
                  },
                  child: Text(
                    "Começar",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
              ),
            )
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(top: 100),
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(200)),
            child: Image(
              image: AssetImage('images/logo.jpeg'),
              height: 200,
              width: 200,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ]),
    );
  }
}
