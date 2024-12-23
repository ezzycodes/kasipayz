import 'package:flutter/material.dart';
import 'package:kasipayz/screens/loginsample.dart';
import 'package:kasipayz/screens/paybills.dart';
import 'package:kasipayz/screens/sendmoney.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFDFF), // Background color
      appBar: AppBar(
        title: const Center(
          child: Text("Kasi Pay",
              style: TextStyle(
                color: Colors.white,
              )),
        ),
        backgroundColor: const Color.fromARGB(255, 60, 63, 254),
        elevation: 0,
        leading: const Icon(Icons.menu),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              // Implement your logout logic here
              // For example, you might want to:
              // - Clear user credentials
              // - Navigate to a login screen
              // - Sign out from any backend services
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const LoginPage(),
                ),
              ); // Example navigation
            },
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Greeting Section
              const SizedBox(height: 20),
              const Text(
                'Good Morning, User',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 20),

              // Card Section
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  gradient: const LinearGradient(
                    colors: [Color(0xFF3C5AFE), Color(0xFF42A5F5)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 10,
                      offset: const Offset(0, 10),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Buhle Ncube',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        'Capitec Bank',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.8),
                          fontSize: 14,
                        ),
                      ),
                      const SizedBox(height: 15),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '4756 •••• •••• 9018',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            '\$3,469.52',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          'VISA',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 30),

              // Grid Menu Section
              Expanded(
                child: GridView.count(
                  crossAxisCount: 3,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                  children: [
                    _buildMenuItemWithAction(
                        Icons.account_balance_wallet, 'Pay Beneficiary', context, const SendMoneyPage()),
                    _buildMenuItem(Icons.swap_horiz, 'Transfer'),
                    _buildMenuItem(Icons.attach_money, 'Withdraw'),
                    _buildMenuItem(Icons.phone_android, 'Mobile\nrecharge'),
                    _buildMenuItemWithAction(
                        // ignore: prefer_const_constructors
                        Icons.receipt, 'Pay the bill', context, PayBillsPage()),
                    _buildMenuItem(Icons.credit_card, 'Cards'),
                    _buildMenuItem(Icons.insert_chart, 'Statements'),
                    _buildMenuItem(Icons.account_balance, 'Loans'),
                    _buildMenuItem(Icons.business_center_outlined, 'More Services'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            label: 'Messages',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
  //Build with action
  Widget _buildMenuItemWithAction(
      IconData icon, String label, BuildContext context, Widget targetPage) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => targetPage),
        );
      },
      child: _buildMenuItem(icon, label),
    );
  }

  // Menu Item Widget
  Widget _buildMenuItem(IconData icon, String label,) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: Colors.blue.withOpacity(0.1),
          child: Icon(icon, color: Colors.blue, size: 30),
        ),
        const SizedBox(height: 10),
        Text(
          label,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 14),
        ),
      ],
    );
  }
}
