import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../theme.dart';
import '../widgets/glass_panel.dart';

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 48.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSectionTitle(),
          const SizedBox(height: 40),
          _buildExperienceTimeline(),
        ],
      ),
    );
  }

  Widget _buildSectionTitle() {
    return Row(
      children: [
        const Text(
          '02.',
          style: TextStyle(
            color: AppTheme.accentColor,
            fontFamily: 'monospace',
            fontSize: 24,
          ),
        ),
        const SizedBox(width: 10),
        const Text(
          'Experience',
          style: TextStyle(
            color: AppTheme.textPrimary,
            fontSize: 32,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(width: 24),
        Expanded(
          child: Container(
            height: 1,
            color: AppTheme.accentColor.withAlpha(26),
          ),
        ),
      ],
    );
  }

  Widget _buildExperienceTimeline() {
    return Stack(
      children: [
        Positioned(
          left: 11, // half of timeline dot
          top: 0,
          bottom: 0,
          width: 2,
          child: Container(color: AppTheme.accentColor.withAlpha(26)),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 32.0),
          child: Column(
            children: [
              _buildExperienceItem(
                date: 'Aug 2025 – Present',
                company: 'SM Technology',
                role: 'Flutter Developer',
                location: 'Dhaka, Bangladesh',
                bullets: [
                  'Developing scalable Flutter applications using Clean Architecture and SOLID principles.',
                  'Implementing Riverpod and BLoC for complex state management workflows.',
                  'Working with REST APIs, authentication, pagination, and offline storage (Hive, SQLite).',
                ],
              ),
              const SizedBox(height: 32),
              _buildExperienceItem(
                date: 'Jun 2024 – Jul 2025',
                company: 'Igen Solutions Limited',
                role: 'Flutter Developer',
                location: 'Dhaka, Bangladesh',
                bullets: [
                  'Built and maintained cross-platform mobile applications using Flutter and Dart.',
                  'Integrated Firebase services, REST APIs, and responsive UI components.',
                  'Improved performance and implemented scalable state management.',
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildExperienceItem({
    required String date,
    required String company,
    required String role,
    required String location,
    required List<String> bullets,
  }) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Positioned(
          left: -40,
          top: 24,
          child: Container(
            width: 16,
            height: 16,
            decoration: BoxDecoration(
              color: AppTheme.accentColor,
              shape: BoxShape.circle,
              border: Border.all(color: AppTheme.bgColor, width: 4),
            ),
          ),
        ),
        GlassPanel(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                date,
                style: const TextStyle(
                  color: AppTheme.accentColor,
                  fontFamily: 'monospace',
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                company,
                style: const TextStyle(
                  color: AppTheme.textPrimary,
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                role,
                style: const TextStyle(
                  color: AppTheme.textSecondary,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  const FaIcon(FontAwesomeIcons.mapLocationDot, size: 14, color: AppTheme.textSecondary),
                  const SizedBox(width: 8),
                  Text(
                    location,
                    style: const TextStyle(color: AppTheme.textSecondary, fontStyle: FontStyle.italic, fontSize: 14),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              ...bullets.map((b) => Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(top: 4.0, right: 8.0),
                          child: Text('▹', style: TextStyle(color: AppTheme.accentColor)),
                        ),
                        Expanded(
                          child: Text(b, style: const TextStyle(color: AppTheme.textSecondary, fontSize: 15)),
                        ),
                      ],
                    ),
                  )),
            ],
          ),
        ),
      ],
    );
  }
}
