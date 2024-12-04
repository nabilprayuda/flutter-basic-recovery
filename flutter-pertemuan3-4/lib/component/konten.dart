import 'package:flutter/material.dart';

class Konten extends StatefulWidget {
  const Konten({super.key});

  @override
  State<Konten> createState() => _KontenState();
}

class _KontenState extends State<Konten> {
  int selectedNavbar = 0;

  void deteksiIndex(int index) {
    setState(() {
      selectedNavbar = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("WhatsApp"),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print("Icon dilik");
            },
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {
              print("Hello World");
            },
          )
        ],
      ),
      body: IndexedStack(
        index: selectedNavbar,
        children: [
          ListView(
            children: [
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZWsBX8-SGyL5ir7rTo4m-wCGPQqGfLfnhNA&s"),
                ),
                title: Text("Tania"),
                subtitle: Text("Kamu dimana??"),
                trailing: Text("09.52 AM"),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage("../assets/images/1.png"),
                ),
                title: Text("Dafa"),
                subtitle: Text("Ke Kampus kgk??"),
                trailing: Text("07.50 AM"),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage("../assets/images/bro2.jpg"),
                ),
                title: Text("Ciko"),
                subtitle: Text("Gua otw kos lu"),
                trailing: Text("07.00 AM"),
              ),
            ],
          ),
          Center(child: Text("Status")),
          Center(child: Text("Community")),
          Center(child: Text("Calls")),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.message_outlined),
            label: "Chat",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.flip_camera_android),
            label: "Status",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.groups_2_outlined),
            label: "Community",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call_outlined),
            label: "Calls",
          ),
        ],
        selectedItemColor: const Color.fromARGB(255, 15, 177, 20),
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        currentIndex: selectedNavbar,
        onTap: deteksiIndex,
      ),
    );
  }
}
