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
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF584CF4),
          primary: const Color(0xFF584CF4),
        ),
        scaffoldBackgroundColor: const Color(0xFFFAFAFE),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF584CF4),
          foregroundColor: Colors.white,
          elevation: 0,
        ),
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Color(0xFF1E293B),
          ),
          titleMedium: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Color(0xFF1E293B),
          ),
          bodyMedium: TextStyle(
            fontSize: 13,
            color: Color(0xFF64748B),
          ),
          bodySmall: TextStyle(
            fontSize: 12,
            color: Color(0xFF94A3B8),
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.white,
          prefixIconColor: const Color(0xFF94A3B8),
          hintStyle: const TextStyle(
            color: Color(0xFF94A3B8),
            fontSize: 14,
          ),
          contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Color(0xFFE2E8F0), width: 1.2),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Color(0xFF584CF4), width: 1.5),
          ),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.menu_book_rounded),
          title: const Text("My Notes"),
          actions: const [Icon(Icons.more_vert)],
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 15,
            children: [
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Color(0xFF584CF4), Color(0xFF72B8F8)],
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Small steps\nevery day lead to\nbig results.",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 12),
                          Text(
                            "Keep going! 🚀",
                            style: TextStyle(fontSize: 14, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    const Icon(
                      Icons.menu_book_rounded,
                      size: 70,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              Text(
                "Add a New Note",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.description_outlined),
                  hintText: "Title",
                ),
              ),
              const TextField(
                maxLines: 3,
                decoration: InputDecoration(
                  prefixIcon: Padding(
                    padding: EdgeInsets.only(bottom: 40),
                    child: Icon(Icons.edit_outlined),
                  ),
                  hintText: "Write your note here...",
                ),
              ),
              MaterialButton(
                minWidth: double.infinity,
                height: 48,
                color: Theme.of(context).colorScheme.primary,
                textColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.add),
                    SizedBox(width: 6),
                    Text(
                      "Add Note",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Your Notes",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Text(
                    "3 notes",
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: const Color(0xFFEDF5FE),
                  borderRadius: BorderRadius.circular(12),
                  border: const Border(
                    left: BorderSide(color: Color(0xFF3B82F6), width: 6),
                  ),
                ),
                child: Row(
                  children: [
                    const Icon(Icons.description, color: Color(0xFF3B82F6), size: 28),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Learn Flutter",
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          const SizedBox(height: 4),
                          Text(
                            "Practice widgets and build real apps.",
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                          const SizedBox(height: 6),
                          Text(
                            "Apr 23, 2025",
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ],
                      ),
                    ),
                    const Icon(Icons.more_vert, color: Colors.grey),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: const Color(0xFFECFDF5),
                  borderRadius: BorderRadius.circular(12),
                  border: const Border(
                    left: BorderSide(color: Color(0xFF10B981), width: 6),
                  ),
                ),
                child: Row(
                  children: [
                    const Icon(Icons.description, color: Color(0xFF10B981), size: 28),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Study Dart",
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          const SizedBox(height: 4),
                          Text(
                            "Focus on functions and collections.",
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                          const SizedBox(height: 6),
                          Text(
                            "Apr 22, 2025",
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ],
                      ),
                    ),
                    const Icon(Icons.more_vert, color: Colors.grey),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: const Color(0xFFFFFBEB),
                  borderRadius: BorderRadius.circular(12),
                  border: const Border(
                    left: BorderSide(color: Color(0xFFF59E0B), width: 6),
                  ),
                ),
                child: Row(
                  children: [
                    const Icon(Icons.description, color: Color(0xFFF59E0B), size: 28),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Build Projects",
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          const SizedBox(height: 4),
                          Text(
                            "Create useful and beautiful apps.",
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                          const SizedBox(height: 6),
                          Text(
                            "Apr 20, 2025",
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ],
                      ),
                    ),
                    const Icon(Icons.more_vert, color: Colors.grey),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
