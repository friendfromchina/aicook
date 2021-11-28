import 'package:flutter/material.dart';

class SplashFlow extends StatelessWidget {
  const SplashFlow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const headingTextStyle = TextStyle(
        fontSize: 20, fontWeight: FontWeight.w900, color: Colors.pink);
    const normalTextStyle = TextStyle(
        fontSize: 16, fontWeight: FontWeight.w300, color: Colors.pink);

    return Scaffold(
      appBar: AppBar(
        title: const Text('AI CHEF'),
      ),
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 25),
              const Text(
                'For your better experience with AI CHEF',
                style: headingTextStyle,
              ),
              const SizedBox(height: 20),
              const Text(
                '1. Register & Add - hello',
                style: headingTextStyle,
              ),
              const Text(
                'gastro preferences and diets for every member of your family to offer them meals to their diets and personal taste',
                style: normalTextStyle,
              ),
              const SizedBox(height: 20),
              const Text(
                '2. AI CHEF',
                style: headingTextStyle,
              ),
              const Text(
                'will select the recipes, ingredients weight, calorie content and taste palette that suit the diet and family members personal tastes',
                style: normalTextStyle,
              ),
              const SizedBox(height: 20),
              const Text(
                '3. Order',
                style: headingTextStyle,
              ),
              const Text(
                'All the ingredients to cook the chosen dishes will appear in the basket to order. Pay and track the delivery in the app',
                style: normalTextStyle,
              ),
              const SizedBox(height: 20),
              const Text(
                '4. Reserve, Prep, Cook & Plate',
                style: headingTextStyle,
              ),
              const Text(
                'Pantry organiser app feature is responsible for storage and food safety. All the meals are with cooking and plating instructions.',
                style: normalTextStyle,
              ),
              const SizedBox(height: 25),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed('/auth');
                },
                child: const Text('GO!'),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
