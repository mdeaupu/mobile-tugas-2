import '/widgets/profile_card.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const String nama = "Dezan";
    const String pekerjaan = "Mahasiswa";

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 30, 30, 30),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 75,
                backgroundColor: Colors.amber,
                backgroundImage: NetworkImage(
                  "https://images.unsplash.com/photo-1660304755794-a4c94ca4cceb?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&q=80&w=687", // <-- Ganti dengan URL gambar Anda
                ),
              ),

              const SizedBox(height: 30),

              Text(
                nama,
                style: const TextStyle(fontSize: 20, color: Colors.white),
              ),

              const SizedBox(height: 5),

              Text(
                pekerjaan,
                style: const TextStyle(fontSize: 16, color: Colors.white70),
              ),

              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 50.0),
                child: Divider(
                  color: Colors.white,
                  height: 35,
                  thickness: 1.0,
                  indent: 0,
                  endIndent: 0,
                ),
              ),

              const ProfileCard(
                text: 'INSTAGRAM',
                url: 'https://www.instagram.com/mdeaupu/',
              ),
              const ProfileCard(
                text: 'YOUTUBE',
                url: 'https://www.youtube.com/@mdeaupu',
              ),
              const ProfileCard(
                text: 'GITHUB',
                url: 'https://github.com/mdeaupu',
              ),
              const ProfileCard(
                text: 'LINKEDIN',
                url: 'https://www.linkedin.com/in/mdeaupu/',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
