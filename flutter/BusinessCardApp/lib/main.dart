import 'package:flutter/material.dart';

void main() {
  runApp(const BusinessCardApp());
}

class BusinessCardApp extends StatelessWidget {
  const BusinessCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Business Card',
      theme: ThemeData(useMaterial3: true, fontFamily: 'Roboto'),
      home: const BusinessCardScreen(),
    );
  }
}

class BusinessCardScreen extends StatelessWidget {
  const BusinessCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const primaryBg = Color(0xFF121212);
    const cardBg = Color(0xFF1E1E24);
    const accentGold = Color(0xFFD4AF37);
    const lightGold = Color(0xFFF3E5AB);

    final skills = [
      {'name': 'Flutter', 'icon': Icons.flutter_dash_rounded},
      {'name': 'React', 'icon': Icons.code_rounded},
      {'name': 'Node.js', 'icon': Icons.dns_rounded},
      {'name': 'JavaScript', 'icon': Icons.javascript_rounded},
      {'name': 'Tailwind', 'icon': Icons.style_rounded},
      {'name': 'HTML5', 'icon': Icons.html_rounded},
      {'name': 'CSS3', 'icon': Icons.css_rounded},
    ];

    return Scaffold(
      backgroundColor: primaryBg,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(
              horizontal: 24.0,
              vertical: 36.0,
            ),
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 500),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Profile Avatar with Gold Border & Glow Shadow
                  Container(
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: accentGold, width: 3),
                      boxShadow: [
                        BoxShadow(
                          color: accentGold.withValues(alpha: 0.35),
                          blurRadius: 24,
                          spreadRadius: 3,
                        ),
                      ],
                    ),
                    child: CircleAvatar(
                      radius: 75,
                      backgroundColor: cardBg,
                      backgroundImage: const AssetImage(
                        'images/Ahmadzuainat_BusinessCard.png',
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Name
                  const Text(
                    "AHMAD ZUAINAT",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.5,
                    ),
                  ),
                  const SizedBox(height: 6),

                  // Job Title Badge
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      color: accentGold.withValues(alpha: 0.15),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: accentGold.withValues(alpha: 0.6),
                      ),
                    ),
                    child: const Text(
                      "FLUTTER DEVELOPER",
                      style: TextStyle(
                        color: lightGold,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 2.0,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),

                  // Gold Divider Line
                  const SizedBox(
                    width: 140,
                    child: Divider(
                      color: accentGold,
                      thickness: 1,
                      height: 20,
                    ),
                  ),
                  const SizedBox(height: 16),

                  // Info Card: Age & Role Summary
                  _buildInfoTile(
                    icon: Icons.person_outline_rounded,
                    title: "Age",
                    subtitle: "22 Years Old",
                    cardBg: cardBg,
                    accentGold: accentGold,
                    lightGold: lightGold,
                  ),
                  const SizedBox(height: 12),

                  // Info Card: Education
                  _buildInfoTile(
                    icon: Icons.school_rounded,
                    title: "Education",
                    subtitle:
                        "Bachelor of Computer Science\nAl al-Bayt University • GPA: 3.35",
                    cardBg: cardBg,
                    accentGold: accentGold,
                    lightGold: lightGold,
                  ),
                  const SizedBox(height: 20),

                  // Skills Header & Badges
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 4.0, bottom: 10.0),
                      child: Text(
                        "TECHNICAL SKILLS",
                        style: TextStyle(
                          color: lightGold.withValues(alpha: 0.8),
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.2,
                        ),
                      ),
                    ),
                  ),

                  Wrap(
                    spacing: 8.0,
                    runSpacing: 10.0,
                    children: skills.map((skill) {
                      return Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 14,
                          vertical: 8,
                        ),
                        decoration: BoxDecoration(
                          color: cardBg,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: accentGold.withValues(alpha: 0.3),
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              skill['icon'] as IconData,
                              size: 18,
                              color: accentGold,
                            ),
                            const SizedBox(width: 8),
                            Text(
                              skill['name'] as String,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  static Widget _buildInfoTile({
    required IconData icon,
    required String title,
    required String subtitle,
    required Color cardBg,
    required Color accentGold,
    required Color lightGold,
  }) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: cardBg,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: accentGold.withValues(alpha: 0.35)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.4),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: accentGold.withValues(alpha: 0.18),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: accentGold.withValues(alpha: 0.4)),
            ),
            child: Icon(icon, color: accentGold, size: 24),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: lightGold.withValues(alpha: 0.7),
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.5,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  subtitle,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    height: 1.3,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
