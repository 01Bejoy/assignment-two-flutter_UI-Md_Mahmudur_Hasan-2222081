import 'package:flutter/material.dart';

import '../widgets/action_button.dart';
import '../widgets/balance_card.dart';
import '../widgets/transaction_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F6FA),

      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [

              // Header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [

                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [

                      Text(
                        "Welcome Back",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                        ),
                      ),

                      SizedBox(height: 5),

                      Text(
                        "MD MAHMUDUR HASAN",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                    ],
                  ),

                  CircleAvatar(
                    radius: 28,
                    backgroundColor: Colors.deepPurple.shade100,
                    child: const Icon(
                      Icons.person,
                      color: Colors.deepPurple,
                    ),
                  ),

                ],
              ),

              const SizedBox(height: 25),

              // Balance Card
              const BalanceCard(),

              const SizedBox(height: 30),

              // Action Buttons
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,

                children: [

                  ActionButton(
                    icon: Icons.send,
                    title: "Transfer",
                  ),

                  ActionButton(
                    icon: Icons.receipt_long,
                    title: "Bills",
                  ),

                  ActionButton(
                    icon: Icons.trending_up,
                    title: "Invest",
                  ),

                ],
              ),

              const SizedBox(height: 35),

              const Text(
                "Recent Transactions",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 15),

              const TransactionTile(
                icon: Icons.shopping_cart,
                color: Colors.orange,
                title: "Amazon",
                subtitle: "Today",
                amount: "- \$120",
              ),

              const TransactionTile(
                icon: Icons.local_cafe,
                color: Colors.brown,
                title: "Coffee Shop",
                subtitle: "Today",
                amount: "- \$8",
              ),

              const TransactionTile(
                icon: Icons.attach_money,
                color: Colors.green,
                title: "Salary",
                subtitle: "Yesterday",
                amount: "+ \$2500",
              ),

            ],
          ),
        ),
      ),
    );
  }
}