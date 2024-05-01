import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home_outlined),
          ),
          BottomNavigationBarItem(
            label: 'Profile',
            icon: Icon(Icons.person_2_outlined),
            activeIcon: Icon(
              Icons.person_2,
              color: Colors.green,
            ),
          ),
        ],
        currentIndex: 1, // Indeks tab saat aplikasi pertama kali dimulai
        onTap: (index) {
          if (index == 0) {
            // Navigasi ke halaman profile jika tab Profile dipilih
            Navigator.pushNamed(context, '/home');
          }
        },
      ),
      backgroundColor: Colors.green[100],
      body: const Center(
        child: Text('Profile Page'),
      ),
    );
  }
}
