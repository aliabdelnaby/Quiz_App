import 'package:flutter/material.dart';
import 'package:quiz_app/constants.dart';

import 'widgets/custom_start_button.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Spacer(flex: 2),
              const Text(
                "Let's Start,",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 38,
                ),
              ),
              const Text('Enter your info below'),
              const Spacer(),
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color.fromARGB(255, 60, 60, 61),
                  labelText: 'Full Name',
                  labelStyle:
                      const TextStyle(color: Color.fromARGB(255, 228, 163, 23)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              const Spacer(),
              const CustomStartButton(),
              const Spacer(flex: 2),
            ],
          ),
        ),
      ),
    );
  }
}
