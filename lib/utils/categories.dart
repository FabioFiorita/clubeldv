import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

import '../model/category.dart';

final List<Category> categories = [
  Category(
      id: const Uuid().v1(),
      name: "Shopping",
      icon: Icons.shopping_bag,
      color: Colors.red),
  Category(
      id: const Uuid().v1(),
      name: "Hortifruti",
      icon: Icons.eco,
      color: Colors.green),
  Category(
      id: const Uuid().v1(), name: "Pet", icon: Icons.pets, color: Colors.blue),
  Category(
      id: const Uuid().v1(),
      name: "Açaí",
      icon: Icons.icecream,
      color: Colors.yellow),
  Category(
      id: const Uuid().v1(),
      name: "Doces e Bolos",
      icon: Icons.cake,
      color: Colors.purple),
  Category(
      id: const Uuid().v1(),
      name: "Salgados",
      icon: Icons.bakery_dining,
      color: Colors.red),
  Category(
      id: const Uuid().v1(),
      name: "Pastéis",
      icon: Icons.local_dining,
      color: Colors.green),
  Category(
      id: const Uuid().v1(),
      name: "Sorvetes",
      icon: Icons.icecream,
      color: Colors.blue),
  Category(
      id: const Uuid().v1(),
      name: "Padarias",
      icon: Icons.breakfast_dining,
      color: Colors.yellow),
  Category(
      id: const Uuid().v1(),
      name: "Cafeterias",
      icon: Icons.local_cafe,
      color: Colors.purple),
  Category(
      id: const Uuid().v1(),
      name: "Lanches",
      icon: Icons.fastfood,
      color: Colors.red),
  Category(
      id: const Uuid().v1(),
      name: "Saudável",
      icon: Icons.egg_alt,
      color: Colors.green),
  Category(
      id: const Uuid().v1(),
      name: "Brasileira",
      icon: Icons.flag,
      color: Colors.blue),
  Category(
      id: const Uuid().v1(),
      name: "Pizza",
      icon: Icons.local_pizza,
      color: Colors.yellow),
  Category(
      id: const Uuid().v1(),
      name: "Cozinha Rápida",
      icon: Icons.fastfood,
      color: Colors.purple),
  Category(
      id: const Uuid().v1(),
      name: "Conveniência",
      icon: Icons.local_grocery_store,
      color: Colors.red),
  Category(
      id: const Uuid().v1(),
      name: "Vegana",
      icon: Icons.dinner_dining,
      color: Colors.green),
  Category(
      id: const Uuid().v1(),
      name: "Espetinhos",
      icon: Icons.kebab_dining,
      color: Colors.blue),
  Category(
      id: const Uuid().v1(),
      name: "Hot Dog",
      icon: Icons.restaurant_menu,
      color: Colors.yellow),
  Category(
      id: const Uuid().v1(),
      name: "Massas",
      icon: Icons.dinner_dining,
      color: Colors.purple),
  Category(
      id: const Uuid().v1(),
      name: "Carnes",
      icon: Icons.brunch_dining,
      color: Colors.red),
  Category(
      id: const Uuid().v1(),
      name: "Marmita",
      icon: Icons.food_bank,
      color: Colors.green),
  Category(
      id: const Uuid().v1(),
      name: "Regional",
      icon: Icons.flag,
      color: Colors.blue),
  Category(
      id: const Uuid().v1(),
      name: "Congelados",
      icon: Icons.ac_unit,
      color: Colors.yellow),
  Category(
      id: const Uuid().v1(),
      name: "Internacional",
      icon: Icons.public,
      color: Colors.purple),
  Category(
      id: const Uuid().v1(),
      name: "Sopas e Caldos",
      icon: Icons.soup_kitchen,
      color: Colors.red),
  Category(
      id: const Uuid().v1(),
      name: "Casa de Sucos",
      icon: Icons.local_drink,
      color: Colors.green),
  Category(
      id: const Uuid().v1(),
      name: "Presentes",
      icon: Icons.card_giftcard,
      color: Colors.blue),
];
