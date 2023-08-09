import 'package:flutter/material.dart';
import './login.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.home),
        title: Text(
          'Lamborghini',
          style: TextStyle(color: Color.fromARGB(255, 62, 54, 54)),
        ),
        backgroundColor: Colors.yellow[600],
        actions: [
          IconButton(
              onPressed: () {
                singout(context);
              },
              icon: Icon(Icons.exit_to_app)),
        ],
      ),
      body: SafeArea(
          child: ListView.separated(
              itemBuilder: (ctx, index) {
                return ListTile(
                  title: Text("Our recent Models "),
                  subtitle: Text("Car no : ${index + 1}"),
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: const NetworkImage(
                        "https://imgs.search.brave.com/VL3bzZXBW9EtJ0CyMaBncQqtePvf3QW4RW4pjVAIDEs/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9zdGF0/aWMubGFtYm9jYXJz/LmNvbS93cC1jb250/ZW50L3VwbG9hZHMv/MjAyMS8wMi8yMDE5/LUxhbWJvcmdoaW5p/LVVydXMtMDExLTIx/NjAtc2NhbGVkLTEt/MTUwMHg3NTAuanBn"),
                  ),
                );
              },
              separatorBuilder: (ctx, index) {
                return Divider();
              },
              itemCount: 10)),
    );
  }

  singout(BuildContext ctx) {
    Navigator.of(ctx).pushAndRemoveUntil(
        MaterialPageRoute(builder: (ctx1) => ScreenLogin()), (route) => false);
  }
}
