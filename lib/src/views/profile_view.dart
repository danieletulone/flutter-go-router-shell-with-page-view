import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: [
          const SizedBox(height: 20),
          const CircleAvatar(
            radius: 50,
            child: Icon(Icons.person, size: 50),
          ),
          const SizedBox(height: 20),
          const Center(
              child: Text('John Doe',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold))),
          const SizedBox(height: 10),
          const Center(
              child: Text('@johndoe',
                  style: TextStyle(fontSize: 16, color: Colors.grey))),
          const SizedBox(height: 20),
          ListTile(
            leading: const Icon(Icons.email),
            title: const Text('Email'),
            subtitle: const Text('johndoe@example.com'),
            trailing: IconButton(
              icon: const Icon(Icons.edit),
              onPressed: () {},
            ),
          ),
          ListTile(
            leading: const Icon(Icons.phone),
            title: const Text('Phone'),
            subtitle: const Text('+1 234 567 8900'),
            trailing: IconButton(
              icon: const Icon(Icons.edit),
              onPressed: () {},
            ),
          ),
          ListTile(
            leading: const Icon(Icons.location_on),
            title: const Text('Location'),
            subtitle: const Text('New York, USA'),
            trailing: IconButton(
              icon: const Icon(Icons.edit),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
