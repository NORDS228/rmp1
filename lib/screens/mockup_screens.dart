import 'package:flutter/material.dart';

const _ink = Color(0xFF20212A);
const _muted = Color(0xFF92939D);
const _violet = Color(0xFF625BFA);
const _pink = Color(0xFFF25378);

class MeditationHomeMockup extends StatelessWidget {
  const MeditationHomeMockup({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFF9F9FC),
      child: Column(
        children: [
          const _StatusBar(),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.fromLTRB(18, 14, 18, 8),
              children: [
                const _MeditationHeader(),
                const SizedBox(height: 18),
                const _TopicChips(),
                const SizedBox(height: 16),
                const _SunsetCourseCard(),
                const SizedBox(height: 18),
                const _SectionHeading('Daily practice', trailing: 'See all'),
                const SizedBox(height: 10),
                const _DailyPracticeList(),
                const SizedBox(height: 18),
                const _SectionHeading('Explore', trailing: 'View more'),
                const SizedBox(height: 12),
                const Row(
                  children: [
                    Expanded(
                      child: _ExploreCard(
                        title: 'Sleep well',
                        subtitle: '12 min',
                        color: Color(0xFFFFE8C8),
                        icon: Icons.nights_stay_rounded,
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: _ExploreCard(
                        title: 'Find focus',
                        subtitle: '8 min',
                        color: Color(0xFFDDF5E9),
                        icon: Icons.center_focus_strong_rounded,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const _MeditationBottomNav(),
        ],
      ),
    );
  }
}

class WelcomeMockup extends StatelessWidget {
  const WelcomeMockup({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF079B9D),
      child: Stack(
        children: [
          const Positioned(
            top: 12,
            left: 0,
            right: 0,
            child: _StatusBar(light: true),
          ),
          Positioned(
            top: 76,
            left: 0,
            right: 0,
            child: Column(
              children: [
                const Text(
                  'medinow',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 34,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 1.2,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  'Meditate With Us!',
                  style: TextStyle(
                    color: Colors.white.withValues(alpha: 0.82),
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 170,
            left: 0,
            right: 0,
            child: Icon(
              Icons.self_improvement_rounded,
              size: 190,
              color: Colors.white.withValues(alpha: 0.9),
            ),
          ),
          Positioned(
            left: 22,
            right: 22,
            bottom: 44,
            child: Column(
              children: [
                const _WelcomeButton(
                  label: 'Sign in with Apple',
                  icon: Icons.apple,
                  filled: true,
                ),
                const SizedBox(height: 12),
                const _WelcomeButton(
                  label: 'Continue with Email or Phone',
                  icon: Icons.mail_outline_rounded,
                  filled: true,
                ),
                const SizedBox(height: 12),
                Text(
                  'Continue With Google',
                  style: TextStyle(
                    color: Colors.white.withValues(alpha: 0.95),
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
          const Positioned(
            bottom: 10,
            left: 0,
            right: 0,
            child: _HomeIndicator(light: true),
          ),
        ],
      ),
    );
  }
}

class PopularMenuMockup extends StatelessWidget {
  const PopularMenuMockup({super.key});

  @override
  Widget build(BuildContext context) {
    const meals = [
      _MealData('Original Salad', 'Lovey Food', '\$8', '🥗', Color(0xFFFF9A4A)),
      _MealData('Fresh Salad', 'Cloudy Resto', '\$10', '🥑', Color(0xFFE8F0E2)),
      _MealData(
        'Yummie Ice Cream',
        'Circlo Resto',
        '\$6',
        '🍦',
        Color(0xFFFFE3D7),
      ),
      _MealData('Vegan Special', 'Haty Food', '\$11', '🥦', Color(0xFFE6F1DB)),
      _MealData('Mixed Pasta', 'Recto Food', '\$13', '🍝', Color(0xFFFFEACB)),
    ];

    return Container(
      color: const Color(0xFFF9F9FD),
      child: Column(
        children: [
          const _StatusBar(),
          Padding(
            padding: const EdgeInsets.fromLTRB(18, 12, 18, 12),
            child: Column(
              children: [
                const _BackTitle(title: 'Popular Menu', accent: _pink),
                const SizedBox(height: 18),
                const _FoodSearchBar(),
              ],
            ),
          ),
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.fromLTRB(16, 2, 16, 12),
              itemCount: meals.length,
              separatorBuilder: (context, index) => const SizedBox(height: 10),
              itemBuilder: (context, index) => _MealTile(meal: meals[index]),
            ),
          ),
          const _FoodBottomNav(),
        ],
      ),
    );
  }
}

class CourseDetailsMockup extends StatelessWidget {
  const CourseDetailsMockup({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          const _StatusBar(),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.fromLTRB(16, 8, 16, 12),
              children: const [
                _BackTitle(title: '3D Design Basic', accent: Color(0xFFE8E8FF)),
                SizedBox(height: 16),
                _AbstractCourseArtwork(),
                SizedBox(height: 14),
                _CourseBadges(),
                SizedBox(height: 14),
                Text(
                  '3D Design Basic',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: _ink,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'In this course you will learn how to build a space to a 3-dimensional product. There are 24 premium learning videos for you.',
                  style: TextStyle(
                    fontSize: 12,
                    height: 1.55,
                    color: Color(0xFF555660),
                  ),
                ),
                SizedBox(height: 18),
                _SectionHeading('24 Lessons (20 hours)', trailing: 'See all'),
                SizedBox(height: 10),
                _LessonTile(
                  title: 'Introduction to 3D',
                  subtitle: '20 mins',
                  icon: Icons.view_in_ar_rounded,
                ),
                SizedBox(height: 8),
                _LessonTile(
                  title: 'Shapes & materials',
                  subtitle: '35 mins',
                  icon: Icons.interests_rounded,
                ),
              ],
            ),
          ),
          const _EnrollButton(),
        ],
      ),
    );
  }
}

class WalletMockup extends StatelessWidget {
  const WalletMockup({super.key});

  @override
  Widget build(BuildContext context) {
    const transactions = [
      _TransactionData(
        'Lawson Chair',
        'Dec 15, 2024 | 10:00 AM',
        '\$120',
        'Orders',
        Icons.chair_alt_rounded,
        Color(0xFFDDEAF2),
      ),
      _TransactionData(
        'Top Up Wallet',
        'Dec 14, 2024 | 16:42 AM',
        '\$400',
        'Top Up',
        Icons.account_balance_wallet_rounded,
        Color(0xFFE9E8F2),
      ),
      _TransactionData(
        'Parabolic Reflector',
        'Dec 14, 2024 | 11:39 AM',
        '\$170',
        'Orders',
        Icons.light_rounded,
        Color(0xFFF0E4D9),
      ),
      _TransactionData(
        'Mini Wooden Table',
        'Dec 14, 2024 | 09:27 AM',
        '\$165',
        'Orders',
        Icons.table_restaurant_rounded,
        Color(0xFFEDE5DA),
      ),
      _TransactionData(
        'Top Up Wallet',
        'Dec 12, 2024 | 09:27 AM',
        '\$300',
        'Top Up',
        Icons.account_balance_wallet_rounded,
        Color(0xFFE9E8F2),
      ),
    ];

    return Container(
      color: Colors.white,
      child: Column(
        children: [
          const _StatusBar(),
          const Padding(
            padding: EdgeInsets.fromLTRB(18, 10, 18, 12),
            child: _WalletHeader(),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: _BalanceCard(),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(18, 20, 18, 10),
            child: _SectionHeading('Transaction History', trailing: 'See All'),
          ),
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
              itemCount: transactions.length,
              separatorBuilder: (context, index) => const SizedBox(height: 8),
              itemBuilder: (context, index) =>
                  _TransactionTile(transaction: transactions[index]),
            ),
          ),
          const _WalletBottomNav(),
        ],
      ),
    );
  }
}

class OrganizerProfileMockup extends StatelessWidget {
  const OrganizerProfileMockup({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          const _StatusBar(),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.fromLTRB(18, 10, 18, 18),
              children: const [
                _BackTitle(title: 'Organizer', accent: Colors.transparent),
                SizedBox(height: 24),
                _ProfilePortrait(),
                SizedBox(height: 12),
                Center(
                  child: Text(
                    'Albert Flores',
                    style: TextStyle(
                      color: _ink,
                      fontSize: 17,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                _ProfileStats(),
                SizedBox(height: 18),
                _ProfileActions(),
                SizedBox(height: 18),
                _ProfileTabs(),
                SizedBox(height: 20),
                Text(
                  'About',
                  style: TextStyle(
                    color: _ink,
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
                  style: TextStyle(
                    fontSize: 12,
                    height: 1.5,
                    color: Color(0xFF696A73),
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  'Read more...',
                  style: TextStyle(
                    color: _violet,
                    fontWeight: FontWeight.w700,
                    fontSize: 12,
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

class _StatusBar extends StatelessWidget {
  const _StatusBar({this.light = false});

  final bool light;

  @override
  Widget build(BuildContext context) {
    final color = light ? Colors.white : const Color(0xFF24252C);
    return Padding(
      padding: const EdgeInsets.fromLTRB(18, 7, 18, 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '9:41',
            style: TextStyle(
              color: color,
              fontSize: 10,
              fontWeight: FontWeight.w700,
            ),
          ),
          Row(
            children: [
              Icon(Icons.signal_cellular_alt_rounded, size: 13, color: color),
              const SizedBox(width: 3),
              Icon(Icons.wifi_rounded, size: 13, color: color),
              const SizedBox(width: 3),
              Icon(Icons.battery_full_rounded, size: 15, color: color),
            ],
          ),
        ],
      ),
    );
  }
}

class _HomeIndicator extends StatelessWidget {
  const _HomeIndicator({this.light = false});

  final bool light;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 92,
        height: 4,
        decoration: BoxDecoration(
          color: light ? Colors.white : const Color(0xFF22232A),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}

class _MeditationHeader extends StatelessWidget {
  const _MeditationHeader();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          'Meditate',
          style: TextStyle(
            color: _ink,
            fontSize: 21,
            fontWeight: FontWeight.w700,
          ),
        ),
        const Spacer(),
        Icon(Icons.search_rounded, color: _ink, size: 22),
        const SizedBox(width: 12),
        Icon(Icons.notifications_none_rounded, color: _ink, size: 21),
      ],
    );
  }
}

class _TopicChips extends StatelessWidget {
  const _TopicChips();

  @override
  Widget build(BuildContext context) {
    const topics = ['All', 'Bible in a Year', 'Dailies', 'Minutes', 'New'];
    return SizedBox(
      height: 30,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: topics.length,
        separatorBuilder: (context, index) => const SizedBox(width: 7),
        itemBuilder: (context, index) {
          final selected = index == 0;
          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 11, vertical: 7),
            decoration: BoxDecoration(
              color: selected
                  ? const Color(0xFF0C9F9C)
                  : const Color(0xFFE8F6F5),
              borderRadius: BorderRadius.circular(18),
            ),
            child: Text(
              topics[index],
              style: TextStyle(
                color: selected ? Colors.white : const Color(0xFF429A97),
                fontSize: 10,
                fontWeight: FontWeight.w600,
              ),
            ),
          );
        },
      ),
    );
  }
}

class _SunsetCourseCard extends StatelessWidget {
  const _SunsetCourseCard();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 120,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xFFFFCE74), Color(0xFFFF8E63), Color(0xFF5F5574)],
            ),
          ),
          child: Stack(
            children: [
              const Positioned(
                right: 12,
                top: 12,
                child: Icon(
                  Icons.wb_sunny_rounded,
                  color: Color(0xFFFFF3B0),
                  size: 40,
                ),
              ),
              Positioned(
                left: 18,
                bottom: 0,
                child: Icon(
                  Icons.self_improvement_rounded,
                  size: 88,
                  color: Colors.white.withValues(alpha: 0.85),
                ),
              ),
              Positioned(
                right: 20,
                bottom: 6,
                child: Icon(
                  Icons.landscape_rounded,
                  size: 120,
                  color: const Color(0xFF514C70).withValues(alpha: 0.78),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        const Text(
          'A Song of Moon',
          style: TextStyle(
            color: _ink,
            fontSize: 15,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(height: 3),
        const Text(
          'Start with the basics',
          style: TextStyle(color: Color(0xFF73747E), fontSize: 11),
        ),
        const SizedBox(height: 7),
        const Row(
          children: [
            Icon(Icons.favorite_border_rounded, size: 13, color: _muted),
            SizedBox(width: 4),
            Text('9 Sessions', style: TextStyle(color: _muted, fontSize: 10)),
            Spacer(),
            Text('Start  ›', style: TextStyle(color: _ink, fontSize: 10)),
          ],
        ),
      ],
    );
  }
}

class _SectionHeading extends StatelessWidget {
  const _SectionHeading(this.title, {this.trailing});

  final String title;
  final String? trailing;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            title,
            style: const TextStyle(
              color: _ink,
              fontSize: 14,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        if (trailing != null)
          Text(
            trailing!,
            style: const TextStyle(
              color: _violet,
              fontSize: 10,
              fontWeight: FontWeight.w600,
            ),
          ),
      ],
    );
  }
}

class _DailyPracticeList extends StatelessWidget {
  const _DailyPracticeList();

  @override
  Widget build(BuildContext context) {
    const practices = [
      (
        'Sweet Memories',
        'December 29 Pre-Launch',
        Icons.play_arrow_rounded,
        Color(0xFF4885EB),
      ),
      (
        'A Day Dream',
        'A little moment of calm',
        Icons.spa_outlined,
        Color(0xFF13A8A0),
      ),
      (
        'Mind Explore',
        'Find your inner balance',
        Icons.wb_sunny_outlined,
        Color(0xFFFFA34C),
      ),
    ];
    return Column(
      children: [
        for (final practice in practices)
          Padding(
            padding: const EdgeInsets.only(bottom: 9),
            child: Row(
              children: [
                Container(
                  width: 31,
                  height: 31,
                  decoration: BoxDecoration(
                    color: practice.$4,
                    borderRadius: BorderRadius.circular(9),
                  ),
                  child: Icon(practice.$3, color: Colors.white, size: 19),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        practice.$1,
                        style: const TextStyle(
                          color: _ink,
                          fontSize: 11,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        practice.$2,
                        style: const TextStyle(color: _muted, fontSize: 9),
                      ),
                    ],
                  ),
                ),
                const Icon(Icons.more_horiz, size: 18, color: _muted),
              ],
            ),
          ),
      ],
    );
  }
}

class _ExploreCard extends StatelessWidget {
  const _ExploreCard({
    required this.title,
    required this.subtitle,
    required this.color,
    required this.icon,
  });

  final String title;
  final String subtitle;
  final Color color;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 86,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(icon, color: _ink, size: 20),
          Text(
            '$title  ·  $subtitle',
            style: const TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w700,
              color: _ink,
            ),
          ),
        ],
      ),
    );
  }
}

class _MeditationBottomNav extends StatelessWidget {
  const _MeditationBottomNav();

  @override
  Widget build(BuildContext context) {
    return const _BottomNavBar(
      items: [
        _NavItem(Icons.home_rounded, 'Home'),
        _NavItem(Icons.explore_outlined, 'Explore'),
        _NavItem(Icons.calendar_today_outlined, 'Today'),
        _NavItem(Icons.person_outline_rounded, 'Profile'),
      ],
      selectedIndex: 0,
      color: Color(0xFF0C9F9C),
    );
  }
}

class _WelcomeButton extends StatelessWidget {
  const _WelcomeButton({
    required this.label,
    required this.icon,
    this.filled = false,
  });

  final String label;
  final IconData icon;
  final bool filled;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 46,
      decoration: BoxDecoration(
        color: filled ? Colors.white : Colors.transparent,
        border: filled ? null : Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(24),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: const Color(0xFF168F91), size: 18),
          const SizedBox(width: 8),
          Flexible(
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                label,
                style: const TextStyle(
                  color: Color(0xFF187F81),
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _BackTitle extends StatelessWidget {
  const _BackTitle({required this.title, required this.accent});

  final String title;
  final Color accent;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
            color: accent == Colors.transparent ? Colors.transparent : accent,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(
            Icons.arrow_back_ios_new_rounded,
            size: 14,
            color: accent == Colors.transparent ? _violet : _pink,
          ),
        ),
        const SizedBox(width: 10),
        Text(
          title,
          style: const TextStyle(
            color: _ink,
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}

class _FoodSearchBar extends StatelessWidget {
  const _FoodSearchBar();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 40,
            padding: const EdgeInsets.symmetric(horizontal: 13),
            decoration: BoxDecoration(
              color: const Color(0xFFF4F4F8),
              borderRadius: BorderRadius.circular(22),
            ),
            child: const Row(
              children: [
                Expanded(
                  child: Text(
                    'Search',
                    style: TextStyle(color: _muted, fontSize: 11),
                  ),
                ),
                Icon(Icons.search_rounded, size: 18, color: _muted),
              ],
            ),
          ),
        ),
        const SizedBox(width: 10),
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: const Color(0xFFFCE5EC),
            borderRadius: BorderRadius.circular(12),
          ),
          child: const Icon(Icons.tune_rounded, color: _pink, size: 19),
        ),
      ],
    );
  }
}

class _MealData {
  const _MealData(
    this.name,
    this.restaurant,
    this.price,
    this.emoji,
    this.color,
  );

  final String name;
  final String restaurant;
  final String price;
  final String emoji;
  final Color color;
}

class _MealTile extends StatelessWidget {
  const _MealTile({required this.meal});

  final _MealData meal;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 69,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF302B55).withValues(alpha: 0.045),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              color: meal.color,
              borderRadius: BorderRadius.circular(12),
            ),
            alignment: Alignment.center,
            child: Text(meal.emoji, style: const TextStyle(fontSize: 25)),
          ),
          const SizedBox(width: 11),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  meal.name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: _ink,
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 3),
                Text(
                  meal.restaurant,
                  style: const TextStyle(color: _muted, fontSize: 9),
                ),
              ],
            ),
          ),
          Text(
            meal.price,
            style: const TextStyle(
              color: _pink,
              fontSize: 17,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}

class _FoodBottomNav extends StatelessWidget {
  const _FoodBottomNav();

  @override
  Widget build(BuildContext context) {
    return const _BottomNavBar(
      items: [
        _NavItem(Icons.home_rounded, 'Home'),
        _NavItem(Icons.shopping_basket_outlined, 'Cart'),
        _NavItem(Icons.receipt_long_outlined, 'Orders'),
        _NavItem(Icons.person_outline_rounded, 'Profile'),
      ],
      selectedIndex: 0,
      color: _pink,
    );
  }
}

class _CourseBadges extends StatelessWidget {
  const _CourseBadges();

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        _SmallBadge(icon: Icons.people_alt_outlined, label: '4,569'),
        SizedBox(width: 6),
        _SmallBadge(icon: Icons.star_rounded, label: '4.9'),
        SizedBox(width: 6),
        _SmallBadge(label: 'Best Seller', filled: true),
      ],
    );
  }
}

class _SmallBadge extends StatelessWidget {
  const _SmallBadge({this.icon, required this.label, this.filled = false});

  final IconData? icon;
  final String label;
  final bool filled;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
      decoration: BoxDecoration(
        color: filled ? _violet : const Color(0xFFF0F0FF),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          if (icon != null) ...[
            Icon(icon, size: 11, color: filled ? Colors.white : _violet),
            const SizedBox(width: 3),
          ],
          Text(
            label,
            style: TextStyle(
              color: filled ? Colors.white : _violet,
              fontSize: 9,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}

class _AbstractCourseArtwork extends StatelessWidget {
  const _AbstractCourseArtwork();

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(17),
      child: SizedBox(
        height: 150,
        child: Stack(
          children: [
            const DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xFF1510A9),
                    Color(0xFF1475FF),
                    Color(0xFF071260),
                  ],
                ),
              ),
              child: SizedBox.expand(),
            ),
            Positioned(
              left: -30,
              top: 36,
              child: _ArtworkBlob(
                width: 170,
                height: 90,
                color: const Color(0xFF67C4FF).withValues(alpha: 0.8),
              ),
            ),
            Positioned(
              right: -22,
              top: 20,
              child: _ArtworkBlob(
                width: 160,
                height: 100,
                color: const Color(0xFF5144FF).withValues(alpha: 0.85),
              ),
            ),
            Positioned(
              left: 72,
              bottom: -36,
              child: Container(
                width: 150,
                height: 95,
                decoration: BoxDecoration(
                  color: const Color(0xFF050A63),
                  borderRadius: BorderRadius.circular(45),
                ),
              ),
            ),
            Positioned(
              right: 35,
              bottom: 22,
              child: Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white.withValues(alpha: 0.22),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white.withValues(alpha: 0.22),
                      blurRadius: 28,
                      spreadRadius: 5,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ArtworkBlob extends StatelessWidget {
  const _ArtworkBlob({
    required this.width,
    required this.height,
    required this.color,
  });

  final double width;
  final double height;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(45),
      ),
    );
  }
}

class _LessonTile extends StatelessWidget {
  const _LessonTile({
    required this.title,
    required this.subtitle,
    required this.icon,
  });

  final String title;
  final String subtitle;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(9),
      decoration: BoxDecoration(
        color: const Color(0xFFFCFCFE),
        borderRadius: BorderRadius.circular(14),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 10,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 43,
            height: 43,
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [Color(0xFF985BFF), Color(0xFF4F6EFF)],
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(icon, color: Colors.white, size: 22),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: _ink,
                    fontSize: 11,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  subtitle,
                  style: const TextStyle(color: _muted, fontSize: 9),
                ),
              ],
            ),
          ),
          const Icon(
            Icons.check_circle_outline_rounded,
            color: _violet,
            size: 19,
          ),
        ],
      ),
    );
  }
}

class _EnrollButton extends StatelessWidget {
  const _EnrollButton();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
      child: Container(
        height: 44,
        decoration: BoxDecoration(
          gradient: const LinearGradient(colors: [_violet, Color(0xFF3D52EF)]),
          borderRadius: BorderRadius.circular(24),
        ),
        child: const Center(
          child: Text(
            'Enroll - \$24.99',
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}

class _WalletHeader extends StatelessWidget {
  const _WalletHeader();

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(Icons.account_balance_wallet_rounded, color: _ink, size: 20),
        SizedBox(width: 9),
        Expanded(
          child: Text(
            'My E-Wallet',
            style: TextStyle(
              color: _ink,
              fontSize: 17,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        Icon(Icons.search_rounded, color: _ink, size: 21),
        SizedBox(width: 13),
        Icon(Icons.more_horiz_rounded, color: _ink, size: 21),
      ],
    );
  }
}

class _BalanceCard extends StatelessWidget {
  const _BalanceCard();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 162,
      padding: const EdgeInsets.all(17),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFF303036), Color(0xFF111114)],
        ),
        borderRadius: BorderRadius.circular(26),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.16),
            blurRadius: 14,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Stack(
        children: [
          Positioned(
            right: -20,
            top: -25,
            child: Container(
              width: 125,
              height: 125,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white.withValues(alpha: 0.045),
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Andrew Ainsley',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Text(
                      'VISA',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    SizedBox(width: 6),
                    _CardNetworkDots(),
                  ],
                ),
                const Text(
                  '•••• •••• •••• 3629',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 10,
                    letterSpacing: 1,
                  ),
                ),
                const SizedBox(height: 14),
                const Text(
                  'Your balance',
                  style: TextStyle(color: Colors.white70, fontSize: 10),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Expanded(
                      child: Text(
                        '\$9,379',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 8,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Row(
                        children: [
                          Icon(
                            Icons.add_circle_outline_rounded,
                            size: 14,
                            color: _ink,
                          ),
                          SizedBox(width: 5),
                          Text(
                            'Top Up',
                            style: TextStyle(
                              color: _ink,
                              fontSize: 10,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _CardNetworkDots extends StatelessWidget {
  const _CardNetworkDots();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 29,
      height: 18,
      child: Stack(
        children: [
          Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
              color: const Color(0xFFE53935).withValues(alpha: 0.9),
              shape: BoxShape.circle,
            ),
          ),
          Positioned(
            right: 0,
            child: Container(
              width: 18,
              height: 18,
              decoration: BoxDecoration(
                color: const Color(0xFFFFB300).withValues(alpha: 0.9),
                shape: BoxShape.circle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _TransactionData {
  const _TransactionData(
    this.title,
    this.date,
    this.amount,
    this.category,
    this.icon,
    this.color,
  );

  final String title;
  final String date;
  final String amount;
  final String category;
  final IconData icon;
  final Color color;
}

class _TransactionTile extends StatelessWidget {
  const _TransactionTile({required this.transaction});

  final _TransactionData transaction;

  @override
  Widget build(BuildContext context) {
    final isTopUp = transaction.category == 'Top Up';
    return Row(
      children: [
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: transaction.color,
            shape: BoxShape.circle,
          ),
          child: Icon(
            transaction.icon,
            color: const Color(0xFF4E5661),
            size: 22,
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                transaction.title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  color: _ink,
                  fontSize: 10,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 3),
              Text(
                transaction.date,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(color: _muted, fontSize: 8),
              ),
            ],
          ),
        ),
        const SizedBox(width: 5),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              transaction.amount,
              style: const TextStyle(
                color: _ink,
                fontSize: 11,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 3),
            Row(
              children: [
                Text(
                  transaction.category,
                  style: const TextStyle(color: _muted, fontSize: 8),
                ),
                const SizedBox(width: 3),
                Icon(
                  isTopUp
                      ? Icons.arrow_downward_rounded
                      : Icons.arrow_upward_rounded,
                  color: isTopUp ? const Color(0xFF3A83F7) : _pink,
                  size: 10,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

class _WalletBottomNav extends StatelessWidget {
  const _WalletBottomNav();

  @override
  Widget build(BuildContext context) {
    return const _BottomNavBar(
      items: [
        _NavItem(Icons.home_outlined, 'Home'),
        _NavItem(Icons.shopping_bag_outlined, 'Cart'),
        _NavItem(Icons.shopping_cart_outlined, 'Orders'),
        _NavItem(Icons.account_balance_wallet_rounded, 'Wallet'),
        _NavItem(Icons.person_outline_rounded, 'Profile'),
      ],
      selectedIndex: 3,
      color: _ink,
    );
  }
}

class _ProfilePortrait extends StatelessWidget {
  const _ProfilePortrait();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 92,
        height: 92,
        padding: const EdgeInsets.all(4),
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(colors: [_violet, Color(0xFF8A83FF)]),
        ),
        child: const CircleAvatar(
          backgroundColor: Color(0xFFE9E5F4),
          child: Icon(Icons.person_rounded, color: Color(0xFF776C83), size: 58),
        ),
      ),
    );
  }
}

class _ProfileStats extends StatelessWidget {
  const _ProfileStats();

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: _ProfileStat(value: '2.368', label: 'Followers'),
        ),
        Expanded(
          child: _ProfileStat(value: '346', label: 'Following'),
        ),
        Expanded(
          child: _ProfileStat(value: '13', label: 'Events'),
        ),
      ],
    );
  }
}

class _ProfileStat extends StatelessWidget {
  const _ProfileStat({required this.value, required this.label});

  final String value;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          value,
          style: const TextStyle(
            color: _ink,
            fontSize: 17,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(height: 4),
        Text(label, style: const TextStyle(color: _muted, fontSize: 10)),
      ],
    );
  }
}

class _ProfileActions extends StatelessWidget {
  const _ProfileActions();

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: _ProfileAction(
            label: 'Follow',
            icon: Icons.person_add_alt_1_rounded,
            filled: true,
          ),
        ),
        SizedBox(width: 8),
        Expanded(
          child: _ProfileAction(
            label: 'Messages',
            icon: Icons.mail_outline_rounded,
          ),
        ),
      ],
    );
  }
}

class _ProfileAction extends StatelessWidget {
  const _ProfileAction({
    required this.label,
    required this.icon,
    this.filled = false,
  });

  final String label;
  final IconData icon;
  final bool filled;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 38,
      decoration: BoxDecoration(
        color: filled ? _violet : Colors.white,
        border: filled ? null : Border.all(color: _violet),
        borderRadius: BorderRadius.circular(24),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: filled ? Colors.white : _violet, size: 14),
          const SizedBox(width: 5),
          Text(
            label,
            style: TextStyle(
              color: filled ? Colors.white : _violet,
              fontSize: 10,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}

class _ProfileTabs extends StatelessWidget {
  const _ProfileTabs();

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: _ProfileTab(label: 'About', selected: true)),
        SizedBox(width: 7),
        Expanded(child: _ProfileTab(label: 'Events')),
        SizedBox(width: 7),
        Expanded(child: _ProfileTab(label: 'Reviews')),
      ],
    );
  }
}

class _ProfileTab extends StatelessWidget {
  const _ProfileTab({required this.label, this.selected = false});

  final String label;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 34,
      decoration: BoxDecoration(
        color: selected ? _violet : Colors.white,
        border: selected ? null : Border.all(color: _violet),
        borderRadius: BorderRadius.circular(22),
      ),
      alignment: Alignment.center,
      child: Text(
        label,
        style: TextStyle(
          color: selected ? Colors.white : _violet,
          fontSize: 10,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}

class _NavItem {
  const _NavItem(this.icon, this.label);

  final IconData icon;
  final String label;
}

class _BottomNavBar extends StatelessWidget {
  const _BottomNavBar({
    required this.items,
    required this.selectedIndex,
    required this.color,
  });

  final List<_NavItem> items;
  final int selectedIndex;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(8, 9, 8, 5),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          top: BorderSide(color: Colors.black.withValues(alpha: 0.04)),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              for (var i = 0; i < items.length; i++)
                Expanded(
                  child: Column(
                    children: [
                      Icon(
                        items[i].icon,
                        size: 17,
                        color: i == selectedIndex
                            ? color
                            : const Color(0xFFB4B5BD),
                      ),
                      const SizedBox(height: 3),
                      Text(
                        items[i].label,
                        style: TextStyle(
                          fontSize: 8,
                          color: i == selectedIndex
                              ? color
                              : const Color(0xFFB4B5BD),
                          fontWeight: i == selectedIndex
                              ? FontWeight.w700
                              : FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
            ],
          ),
          const SizedBox(height: 6),
          const _HomeIndicator(),
        ],
      ),
    );
  }
}
