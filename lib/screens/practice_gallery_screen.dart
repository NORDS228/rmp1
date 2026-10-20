import 'package:flutter/material.dart';

import 'mockup_screens.dart';

class PracticeGalleryScreen extends StatelessWidget {
  const PracticeGalleryScreen({super.key});

  static const _mockups = [
    _MockupInfo(
      title: 'Meditate',
      category: 'Простой макет',
      screen: MeditationHomeMockup(),
      accent: Color(0xFF079B9D),
    ),
    _MockupInfo(
      title: 'Welcome',
      category: 'Простой макет',
      screen: WelcomeMockup(),
      accent: Color(0xFF079B9D),
    ),
    _MockupInfo(
      title: 'Popular Menu',
      category: 'Сложный макет',
      screen: PopularMenuMockup(),
      accent: Color(0xFFF25378),
    ),
    _MockupInfo(
      title: '3D Design Basic',
      category: 'Сложный макет',
      screen: CourseDetailsMockup(),
      accent: Color(0xFF625BFA),
    ),
    _MockupInfo(
      title: 'My E-Wallet',
      category: 'Сложный макет',
      screen: WalletMockup(),
      accent: Color(0xFF20212A),
    ),
    _MockupInfo(
      title: 'Organizer',
      category: 'Сложный макет',
      screen: OrganizerProfileMockup(),
      accent: Color(0xFF625BFA),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.sizeOf(context).width;
    final cardWidth = screenWidth > 440 ? 380.0 : screenWidth - 32;
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F8),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _GalleryHeader(mockupCount: _mockups.length),
              const SizedBox(height: 26),
              const _CategoryHeading(
                title: 'Страница 1 · Простые макеты',
                subtitle: 'Отработка базовых элементов и композиции',
              ),
              const SizedBox(height: 14),
              for (final mockup in _mockups.take(2))
                Padding(
                  padding: const EdgeInsets.only(bottom: 18),
                  child: Center(
                    child: SizedBox(
                      width: cardWidth,
                      height: 660,
                      child: _MockupCard(mockup: mockup),
                    ),
                  ),
                ),
              const SizedBox(height: 12),
              const _CategoryHeading(
                title: 'Страница 2 · Сложные макеты',
                subtitle: 'Карточки, списки, панели и детальная вёрстка',
              ),
              const SizedBox(height: 14),
              for (final mockup in _mockups.skip(2))
                Padding(
                  padding: const EdgeInsets.only(bottom: 18),
                  child: Center(
                    child: SizedBox(
                      width: cardWidth,
                      height: 660,
                      child: _MockupCard(mockup: mockup),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class _MockupInfo {
  const _MockupInfo({
    required this.title,
    required this.category,
    required this.screen,
    required this.accent,
  });

  final String title;
  final String category;
  final Widget screen;
  final Color accent;
}

class _GalleryHeader extends StatelessWidget {
  const _GalleryHeader({required this.mockupCount});

  final int mockupCount;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 44,
          height: 44,
          decoration: BoxDecoration(
            color: const Color(0xFFEEEAFE),
            borderRadius: BorderRadius.circular(14),
          ),
          child: const Icon(
            Icons.dashboard_customize_rounded,
            color: Color(0xFF625BFA),
          ),
        ),
        const SizedBox(width: 10),
        const Expanded(
          child: Text(
            'Практическая работа №1',
            style: TextStyle(
              color: Color(0xFF20212A),
              fontSize: 19,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: const Color(0xFFE9E9EF)),
          ),
          child: Text(
            '$mockupCount макетов',
            style: const TextStyle(
              color: Color(0xFF52535D),
              fontSize: 11,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ],
    );
  }
}

class _CategoryHeading extends StatelessWidget {
  const _CategoryHeading({required this.title, required this.subtitle});

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            color: Color(0xFF292A33),
            fontSize: 17,
            fontWeight: FontWeight.w800,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          subtitle,
          style: const TextStyle(color: Color(0xFF888995), fontSize: 12),
        ),
      ],
    );
  }
}

class _MockupCard extends StatelessWidget {
  const _MockupCard({required this.mockup});

  final _MockupInfo mockup;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: const Color(0xFFE9E9EF)),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF27283A).withValues(alpha: 0.06),
            blurRadius: 18,
            offset: const Offset(0, 7),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(17),
              child: mockup.screen,
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.fromLTRB(4, 0, 4, 2),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    mockup.title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      color: Color(0xFF282933),
                      fontSize: 15,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 9,
                    vertical: 5,
                  ),
                  decoration: BoxDecoration(
                    color: mockup.accent.withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    mockup.category,
                    style: TextStyle(
                      color: mockup.accent,
                      fontSize: 9,
                      fontWeight: FontWeight.w700,
                    ),
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
