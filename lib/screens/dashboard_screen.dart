import 'package:flutter/material.dart';
import 'marketplace_screen.dart';
import 'job_board_screen.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dashboard')),
      body: GridView.count(
        crossAxisCount: 2,
        padding: EdgeInsets.all(16.0),
        children: [
          DashboardTile(
            icon: Icons.store,
            label: 'Marketplace',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MarketplaceScreen()),
              );
            },
          ),
          DashboardTile(
            icon: Icons.work,
            label: 'Job Board',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => JobBoardScreen()),
              );
            },
          ),
        ],
      ),
    );
  }
}

class DashboardTile extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  const DashboardTile({
    required this.icon,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 48.0, color: Colors.green),
            SizedBox(height: 8.0),
            Text(label, style: TextStyle(fontSize: 16.0)),
          ],
        ),
      ),
    );
  }
}
