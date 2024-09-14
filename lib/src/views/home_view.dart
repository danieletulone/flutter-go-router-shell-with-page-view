import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: const [
          ListTile(
            leading: Icon(Icons.article),
            title: Text('Latest News'),
            subtitle: Text('Check out the latest updates'),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            leading: Icon(Icons.event),
            title: Text('Upcoming Events'),
            subtitle: Text('See what\'s happening soon'),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text('Featured Content'),
            subtitle: Text('Explore our top picks'),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
