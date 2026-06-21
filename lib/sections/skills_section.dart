import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../theme.dart';
import '../widgets/glass_panel.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 48.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSectionTitle(),
          const SizedBox(height: 40),
          Wrap(
            spacing: 24,
            runSpacing: 24,
            children: [
              _buildSkillCategory(
                title: 'Languages',
                icon: FontAwesomeIcons.code,
                tags: ['Dart', 'Python', 'Bengali (Native)', 'English (Professional)'],
              ),
              _buildSkillCategory(
                title: 'Frameworks',
                icon: FontAwesomeIcons.layerGroup,
                tags: ['Flutter', 'Django (Learning)'],
              ),
              _buildSkillCategory(
                title: 'State Management',
                icon: FontAwesomeIcons.diagramProject,
                tags: ['Riverpod', 'BLoC', 'GetX'],
              ),
              _buildSkillCategory(
                title: 'Storage & Backend',
                icon: FontAwesomeIcons.database,
                tags: ['Hive', 'SQLite', 'SharedPreferences', 'REST API', 'Firebase', 'JSON Parsing'],
              ),
              _buildSkillCategory(
                title: 'Other Skills',
                icon: FontAwesomeIcons.screwdriverWrench,
                tags: ['Authentication', 'Payment Systems', 'Pagination', 'Push Notifications', 'App Optimization'],
              ),
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
          '04.',
          style: TextStyle(
            color: AppTheme.accentColor,
            fontFamily: 'monospace',
            fontSize: 24,
          ),
        ),
        const SizedBox(width: 10),
        const Text(
          'Technical Skills',
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

  Widget _buildSkillCategory({
    required String title,
    required dynamic icon,
    required List<String> tags,
  }) {
    return ConstrainedBox(
      constraints: const BoxConstraints(minWidth: 250, maxWidth: 350),
      child: GlassPanel(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                FaIcon(icon, color: AppTheme.accentColor, size: 18),
                const SizedBox(width: 8),
                Text(
                  title,
                  style: const TextStyle(
                    color: AppTheme.textPrimary,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: tags
                  .map((t) => Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                        decoration: BoxDecoration(
                          color: AppTheme.accentColor.withAlpha(26),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          t,
                          style: const TextStyle(color: AppTheme.accentColor, fontFamily: 'monospace', fontSize: 12),
                        ),
                      ))
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
