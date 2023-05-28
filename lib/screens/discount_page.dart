import 'package:cached_network_image/cached_network_image.dart';
import 'package:clube_ldv/model/discount.dart';
import 'package:flutter/material.dart';

class DiscountPage extends StatelessWidget {
  final Discount discount;

  const DiscountPage({Key? key, required this.discount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            alignment: Alignment.topRight,
            children: [
              CachedNetworkImage(
                  imageUrl:
                      'https://images.unsplash.com/photo-1684749841085-f144067c42ad?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2069&q=80'),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    //(context.canPop()) ? context.pop() : context.go('/home');
                  },
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(24),
                    backgroundColor: Colors.grey.withOpacity(0.5),
                  ),
                  child: const Icon(Icons.close, color: Colors.grey),
                ),
              )
            ],
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(16.0, 8.0, 8.0, 8.0),
            child: CircleAvatar(
              child: Image(
                image: AssetImage('images/logo.jpeg'),
                height: 100,
                width: 100,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Text(
            discount.name,
            style: const TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            'Instagram',
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w300,
            ),
          ),
        ],
      ),
    );
  }
}
