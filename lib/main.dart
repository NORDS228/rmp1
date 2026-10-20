import 'package:flutter/material.dart';

void main() {
  runApp(const PracticeApp());
}

class PracticeApp extends StatelessWidget {
  const PracticeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Practice UI Layouts',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF8B5CF6)),
        scaffoldBackgroundColor: const Color(0xFFF3F4F6),
      ),
      home: const MockupGalleryScreen(),
    );
  }
}

class MockupGalleryScreen extends StatelessWidget {
  const MockupGalleryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                children: [
                  Icon(Icons.favorite, color: Colors.red, size: 32),
                  SizedBox(width: 10),
                  Text(
                    'UI practice layouts',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF17171B),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 18),
              Wrap(
                spacing: 12,
                runSpacing: 12,
                children: const [
                  SectionBadge('Simple'),
                  SectionBadge('Complex'),
                ],
              ),
              const SizedBox(height: 20),
              Wrap(
                spacing: 18,
                runSpacing: 18,
                alignment: WrapAlignment.center,
                children: const [
                  PhoneFrame(child: WelcomeMockup()),
                  PhoneFrame(child: MeditationMockup()),
                  PhoneFrame(child: FeedMockup()),
                  PhoneFrame(child: FeedbackMockup()),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SectionBadge extends StatelessWidget {
  const SectionBadge(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(999),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 8,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.w600,
          color: Color(0xFF2D2D2D),
        ),
      ),
    );
  }
}

class PhoneFrame extends StatelessWidget {
  const PhoneFrame({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      height: 620,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: const Color(0xFFD9D9E4),
        borderRadius: BorderRadius.circular(32),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.1),
            blurRadius: 16,
            offset: const Offset(0, 12),
          )
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(28),
        child: child,
      ),
    );
  }
}

class WelcomeMockup extends StatelessWidget {
  const WelcomeMockup({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFF6F3FF),
      padding: const EdgeInsets.all(18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Icon(Icons.menu, color: Color(0xFF1F2937)),
              Icon(Icons.settings_outlined, color: Color(0xFF1F2937)),
            ],
          ),
          const SizedBox(height: 28),
          const Text(
            'Welcome',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w700,
              color: Color(0xFF1F2937),
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'Find your rhythm for the day.',
            style: TextStyle(fontSize: 14, color: Color(0xFF69707D)),
          ),
          const SizedBox(height: 18),
          const Row(
            children: [
              Expanded(child: FeatureTile(icon: Icons.spa, label: 'Meditate', color: Color(0xFFC4B5FD))),
              SizedBox(width: 10),
              Expanded(child: FeatureTile(icon: Icons.self_improvement, label: 'Breathe', color: Color(0xFFBFDBFE))),
              SizedBox(width: 10),
              Expanded(child: FeatureTile(icon: Icons.nordic_walking, label: 'Move', color: Color(0xFFBBF7D0))),
            ],
          ),
          const SizedBox(height: 20),
          Expanded(
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: const BoxDecoration(
                color: Color(0xFF1F2937),
                borderRadius: BorderRadius.all(Radius.circular(26)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Daily focus',
                    style: TextStyle(color: Colors.white70, fontSize: 13),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Morning Flow',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const Spacer(),
                  const Row(
                    children: [
                      CustomChip('10 min'),
                      SizedBox(width: 8),
                      CustomChip('Calm'),
                    ],
                  ),
                  const SizedBox(height: 12),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF8B5CF6),
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                      child: const Text('Start session'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class FeatureTile extends StatelessWidget {
  const FeatureTile({super.key, required this.icon, required this.label, required this.color});

  final IconData icon;
  final String label;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 104,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 30, color: const Color(0xFF1F2937)),
          const SizedBox(height: 10),
          Text(
            label,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: Color(0xFF1F2937),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomChip extends StatelessWidget {
  const CustomChip(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.12),
        borderRadius: BorderRadius.circular(999),
      ),
      child: Text(
        text,
        style: const TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w600),
      ),
    );
  }
}

class MeditationMockup extends StatelessWidget {
  const MeditationMockup({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFF5F5F5),
      padding: const EdgeInsets.all(18),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: const [
                Text(
                  'Meditate',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700, color: Color(0xFF17171B)),
                ),
                Spacer(),
                Icon(Icons.search, color: Color(0xFF3F3F46)),
              ],
            ),
            const SizedBox(height: 18),
            const Text(
              'Daily session',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Color(0xFF565A61)),
            ),
            const SizedBox(height: 14),
            SizedBox(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  SessionCard(color: Color(0xFFE0F2FE), title: 'Breathe', duration: '06 min', icon: Icons.air),
                  SizedBox(width: 12),
                  SessionCard(color: Color(0xFFEDE9FE), title: 'Focus', duration: '12 min', icon: Icons.psychology_alt),
                  SizedBox(width: 12),
                  SessionCard(color: Color(0xFFD1FAE5), title: 'Reset', duration: '08 min', icon: Icons.self_improvement),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Popular',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Color(0xFF565A61)),
            ),
            const SizedBox(height: 14),
            GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              childAspectRatio: 0.88,
              children: const [
                MiniSession(color: Color(0xFFFFE4E6), title: 'Sleep', time: '22 min', icon: Icons.nightlight_round),
                MiniSession(color: Color(0xFFF5F3FF), title: 'Deep', time: '15 min', icon: Icons.favorite_border),
                MiniSession(color: Color(0xFFF0FDF4), title: 'Stretch', time: '10 min', icon: Icons.accessibility_new),
                MiniSession(color: Color(0xFFFEF3C7), title: 'Focus', time: '18 min', icon: Icons.light_mode),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class SessionCard extends StatelessWidget {
  const SessionCard({super.key, required this.color, required this.title, required this.duration, required this.icon});

  final Color color;
  final String title;
  final String duration;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 118,
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(24),
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 32,
                  height: 32,
                  decoration: BoxDecoration(
                    color: Colors.white.withValues(alpha: 0.45),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Icon(icon, size: 18, color: const Color(0xFF1F2937)),
                ),
                const Icon(Icons.play_arrow_rounded, size: 18, color: Color(0xFF1F2937)),
              ],
            ),
            const SizedBox(height: 12),
            Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 18, color: Color(0xFF1F2937)),
            ),
            const SizedBox(height: 2),
            Text(duration, style: const TextStyle(fontSize: 12, color: Color(0xFF4F4F56))),
          ],
        ),
      ),
    );
  }
}

class MiniSession extends StatelessWidget {
  const MiniSession({super.key, required this.color, required this.title, required this.time, required this.icon});

  final Color color;
  final String title;
  final String time;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 38,
              height: 38,
              decoration: BoxDecoration(
                color: Colors.white.withValues(alpha: 0.5),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(icon, size: 18, color: const Color(0xFF1F2937)),
            ),
            const SizedBox(height: 10),
            Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 16, color: Color(0xFF1F2937)),
            ),
            const SizedBox(height: 2),
            Text(time, style: const TextStyle(fontSize: 11, color: Color(0xFF5E5F65))),
          ],
        ),
      ),
    );
  }
}

class FeedMockup extends StatelessWidget {
  const FeedMockup({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFF5F7FB),
      child: Column(
        children: [
          Container(
            color: Colors.white,
            padding: const EdgeInsets.fromLTRB(16, 18, 16, 12),
            child: Row(
              children: const [
                Icon(Icons.arrow_back_ios_new_rounded, size: 18),
                Spacer(),
                Text('Feed', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700)),
                Spacer(),
                Icon(Icons.notifications_none_rounded, size: 22, color: Color(0xFF5F6773)),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(12),
              children: const [
                PostTile(avatar: 'A', name: 'Anya', tag: '#31 • Page 1', title: 'I started my daily routine and it feels amazing!', color: Color(0xFFE9D5FF)),
                SizedBox(height: 12),
                PostTile(avatar: 'M', name: 'Milo', tag: '#30 • Page 1', title: 'A short walk in the morning changes everything.', color: Color(0xFFDBEAFE)),
                SizedBox(height: 12),
                PostTile(avatar: 'N', name: 'Nina', tag: '#29 • Page 1', title: 'Meaningful conversations keep the energy high.', color: Color(0xFFDCFCE7)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class PostTile extends StatelessWidget {
  const PostTile({super.key, required this.avatar, required this.name, required this.tag, required this.title, required this.color});

  final String avatar;
  final String name;
  final String tag;
  final String title;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(22),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.04),
            blurRadius: 8,
            offset: const Offset(0, 4),
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 18,
                backgroundColor: color,
                child: Text(avatar, style: const TextStyle(color: Color(0xFF1F2937), fontWeight: FontWeight.w700)),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(name, style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 14)),
                    Text(tag, style: const TextStyle(fontSize: 12, color: Color(0xFF7B7B86))),
                  ],
                ),
              ),
              const Icon(Icons.more_horiz, color: Color(0xFF6B7280)),
            ],
          ),
          const SizedBox(height: 12),
          Text(title, style: const TextStyle(fontSize: 16, height: 1.4, color: Color(0xFF17171B))),
          const SizedBox(height: 12),
          Container(
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              gradient: LinearGradient(
                colors: [color, const Color(0xFFF9FAFB)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                  left: 16,
                  bottom: 20,
                  child: Container(
                    width: 110,
                    height: 110,
                    decoration: BoxDecoration(
                      color: Colors.white.withValues(alpha: 0.35),
                      borderRadius: BorderRadius.circular(18),
                    ),
                  ),
                ),
                Positioned(
                  right: 18,
                  top: 18,
                  child: Container(
                    width: 90,
                    height: 90,
                    decoration: BoxDecoration(
                      color: Colors.white.withValues(alpha: 0.7),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 12),
          const Row(
            children: [
              Icon(Icons.favorite_border, size: 18, color: Color(0xFF6366F1)),
              SizedBox(width: 8),
              Text('126', style: TextStyle(fontSize: 12, color: Color(0xFF5B6472))),
              SizedBox(width: 18),
              Icon(Icons.chat_bubble_outline, size: 18, color: Color(0xFF6366F1)),
              SizedBox(width: 8),
              Text('24', style: TextStyle(fontSize: 12, color: Color(0xFF5B6472))),
            ],
          ),
        ],
      ),
    );
  }
}

class FeedbackMockup extends StatelessWidget {
  const FeedbackMockup({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFF3F4F6),
      child: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 18),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 16),
                padding: const EdgeInsets.fromLTRB(18, 12, 18, 14),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(24),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.05),
                      blurRadius: 10,
                      offset: const Offset(0, 8),
                    )
                  ],
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.close_rounded, color: Color(0xFF2B2B35)),
                        padding: EdgeInsets.zero,
                        constraints: const BoxConstraints(),
                      ),
                    ),
                    const Text(
                      'So, what do you think?',
                      style: TextStyle(fontSize: 26, fontWeight: FontWeight.w700, color: Color(0xFF17171B)),
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      'Leave a comment anywhere in the canvas to give feedback, ask questions, or @mention someone.',
                      style: TextStyle(fontSize: 13, height: 1.5, color: Color(0xFF5D5C68)),
                    ),
                    const SizedBox(height: 18),
                    Container(
                      width: double.infinity,
                      height: 110,
                      padding: const EdgeInsets.all(14),
                      decoration: BoxDecoration(
                        color: const Color(0xFFF8F8F9),
                        borderRadius: BorderRadius.circular(18),
                        border: Border.all(color: const Color(0xFFE4E4E7)),
                      ),
                      child: const Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          '1 of 1',
                          style: TextStyle(fontSize: 14, color: Color(0xFF4B5563)),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF2563EB),
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(vertical: 14),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14),
                          ),
                        ),
                        child: const Text('Got it'),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 14),
              Container(
                width: double.infinity,
                color: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(Icons.inbox_outlined, color: Color(0xFF4B5563)),
                    Icon(Icons.chat_bubble_outline, color: Color(0xFF2563EB)),
                    Icon(Icons.photo_camera_outlined, color: Color(0xFF4B5563)),
                    Icon(Icons.format_quote_outlined, color: Color(0xFF4B5563)),
                    Icon(Icons.tune, color: Color(0xFF4B5563)),
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
