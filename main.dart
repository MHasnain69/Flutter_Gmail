import 'package:flutter/material.dart';
// Muhammad Hasnain 2380244

void main() {
  runApp(const GmailUI());
}

class GmailUI extends StatelessWidget {
  const GmailUI({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GmailHomePage(),
    );
  }
}

class GmailHomePage extends StatelessWidget {
  const GmailHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF1F3F4),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        titleSpacing: 0,
        title: Row(
          children: [
            const SizedBox(width: 10),
            const Icon(Icons.menu, color: Colors.grey),
            const SizedBox(width: 15),
            Expanded(
              child: Container(
                height: 40,
                decoration: BoxDecoration(
                  color: const Color(0xFFE8EAED),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: const Row(
                  children: [
                    SizedBox(width: 15),
                    Icon(Icons.search, color: Colors.grey),
                    SizedBox(width: 10),
                    Text(
                      "Search in mail",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(width: 15),
            const CircleAvatar(
              backgroundColor: Colors.blue,
              child: Text("H", style: TextStyle(color: Colors.white)),
            ),
            const SizedBox(width: 10),
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return const EmailTile();
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.white,
        onPressed: () {},
        icon: Icon(Icons.edit, color: Colors.red),
        label: Text("Compose", style: TextStyle(color: Colors.red)),
      ),
    );
  }
}

class EmailTile extends StatelessWidget {
  const EmailTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CircleAvatar(
            radius: 22,
            backgroundColor: Colors.green,
            child: Text("G", style: TextStyle(color: Colors.white)),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Google",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      "10:30 AM",
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ],
                ),
                SizedBox(height: 4),
                Text(
                  "Welcome to Gmail",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                ),
                SizedBox(height: 2),
                Text(
                  "This is a demo email preview for the Gmail UI clone.",
                  style: TextStyle(color: Colors.grey),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          const SizedBox(width: 5),
          const Icon(Icons.star_border, color: Colors.grey),
        ],
      ),
    );
  }
}


