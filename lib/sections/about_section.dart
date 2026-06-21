import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../theme.dart';
import '../widgets/glass_panel.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    bool isMobile = MediaQuery.of(context).size.width <= 768;

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 48.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSectionTitle(),
          const SizedBox(height: 40),
          if (isMobile)
            Column(
              children: [
                _buildAboutText(),
                const SizedBox(height: 32),
                _buildEducation(),
              ],
            )
          else
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(flex: 3, child: _buildAboutText()),
                const SizedBox(width: 32),
                Expanded(flex: 2, child: _buildEducation()),
              ],
            ),
        ],
      ),
    );
  }

  Widget _buildSectionTitle() {
    return Row(
      children: [
        const Text(
          '01.',
          style: TextStyle(
            color: AppTheme.accentColor,
            fontFamily: 'monospace',
            fontSize: 24,
          ),
        ),
        const SizedBox(width: 10),
        const Text(
          'About Me',
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

  Widget _buildAboutText() {
    return const GlassPanel(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Flutter Developer with 2+ years of experience building scalable, high-performance Android and iOS applications using Flutter and Dart. Specialized in Clean Architecture, Riverpod, BLoC, REST API integration, Firebase services, and offline-first development using Hive and SQLite.',
            style: TextStyle(color: AppTheme.textSecondary, fontSize: 16),
          ),
          SizedBox(height: 16),
          Text(
            'Experienced in delivering production-ready mobile applications with optimized performance, maintainable codebases, and responsive user interfaces. Recently started learning Django to expand backend development skills and build full-stack solutions.',
            style: TextStyle(color: AppTheme.textSecondary, fontSize: 16),
          ),
        ],
      ),
    );
  }

  Widget _buildEducation() {
    return GlassPanel(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: const [
              FaIcon(FontAwesomeIcons.graduationCap, color: AppTheme.accentColor, size: 20),
              SizedBox(width: 8),
              Text(
                'Education',
                style: TextStyle(
                  color: AppTheme.accentColor,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          const Text(
            'Ahsanullah Institute of Information & Communication Technology',
            style: TextStyle(
              color: AppTheme.textPrimary,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 4),
          const Text(
            'Bachelor of Science in Computer Science (2019 – 2023)',
            style: TextStyle(color: AppTheme.textSecondary, fontSize: 14),
          ),
          const SizedBox(height: 4),
          const Text(
            'Dhaka, Bangladesh',
            style: TextStyle(color: AppTheme.textSecondary, fontSize: 14, fontStyle: FontStyle.italic),
          ),
        ],
      ),
    );
  }
}
