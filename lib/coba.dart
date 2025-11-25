import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const ClassroomScreen(),
    );
  }
}

class ClassroomScreen extends StatelessWidget {
  const ClassroomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      drawer: const CustomDrawer(),
      body: const Center(
        child: Text('Konten Kelas di Sini'),
      ),
    );
  }
}

// class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
//   const CustomAppBar({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       title: const Text(
//         'Google Classroom',
//         style: TextStyle(fontWeight: FontWeight.bold),
//       ),
//       elevation: 0,
//       actions: <Widget>[
//         Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 8.0),
//           child: CircleAvatar(
//             backgroundColor: Colors.grey[800],
//             child: const Text('T', style: TextStyle(color: Colors.white)),
//           ),
//         ),
//         const IconButton(
//           icon: Icon(Icons.more_vert),
//           onPressed: null,
//         ),
//       ],
//     );
//   }

//   @override
//   Size get preferredSize => const Size.fromHeight(kToolbarHeight);
// }

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _CustomAppBarState extends State<CustomAppBar> {
  String _appBarTitle = 'Google Classroom';
  int _refreshCount = 0;

  void _updateTitle() {
    setState(() {
      _refreshCount++;
      _appBarTitle = 'Kelas Diperbarui ($_refreshCount)';
    });
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        _appBarTitle,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      elevation: 0,
      actions: <Widget>[
        // Tombol Refresh yang memicu perubahan state
        IconButton(
          icon: const Icon(Icons.refresh),
          onPressed: _updateTitle,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: CircleAvatar(
            backgroundColor: Colors.grey[800],
            child: const Text('T', style: TextStyle(color: Colors.white)),
          ),
        ),
        const IconButton(
          icon: Icon(Icons.more_vert),
          onPressed: null,
        ),
      ],
    );
  }
}

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blueGrey[900],
            ),
            child: const Text('Menu Utama', style: TextStyle(fontSize: 24)),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Kelas'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
              leading: const Icon(Icons.calendar_today),
              title: const Text('Kalender'),
              onTap: () {
                Navigator.pop(context);
              }),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Pengaturan'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
