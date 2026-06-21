import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import '../theme.dart';
import '../widgets/glass_panel.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

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
          isMobile
              ? Column(
                  children: [
                    _buildProjectCard(
                      title: 'MyCVConnect',
                      year: '2025',
                      desc:
                          'A cross-platform career networking and job recruitment platform for Android and iOS users. Developed professional profile creation, CV management, job searching, real-time messaging, interview scheduling, and intelligent job matching systems.',
                      tags: ['Flutter', 'Firebase', 'REST API'],
                    ),
                    const SizedBox(height: 24),
                    _buildProjectCard(
                      title: 'Paymaster BD',
                      year: '2025',
                      desc:
                          'A mobile financial service application for digital payments and utility management. Implemented mobile recharge system supporting multiple telecom operators with instant top-up functionality and integrated utility bill payment systems.',
                      tags: ['Flutter', 'Firebase', 'REST API'],
                    ),
                  ],
                )
              : IntrinsicHeight(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        child: _buildProjectCard(
                          title: 'MyCVConnect',
                          year: '2025',
                          desc:
                              'A cross-platform career networking and job recruitment platform for Android and iOS users. Developed professional profile creation, CV management, job searching, real-time messaging, interview scheduling, and intelligent job matching systems.',
                          tags: ['Flutter', 'Firebase', 'REST API'],
                        ),
                      ),
                      const SizedBox(width: 24),
                      Expanded(
                        child: _buildProjectCard(
                          title: 'Paymaster BD',
                          year: '2025',
                          desc:
                              'A mobile financial service application for digital payments and utility management. Implemented mobile recharge system supporting multiple telecom operators with instant top-up functionality and integrated utility bill payment systems.',
                          tags: ['Flutter', 'Firebase', 'REST API'],
                        ),
                      ),
                    ],
                  ),
                ),
        ],
      ),
    );
  }

  Widget _buildSectionTitle() {
    return Row(
      children: [
        const Text(
          '03.',
          style: TextStyle(
            color: AppTheme.accentColor,
            fontFamily: 'monospace',
            fontSize: 24,
          ),
        ),
        const SizedBox(width: 10),
        const Text(
          "Some Things I've Built",
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

  Widget _buildProjectCard({
    required String title,
    required String year,
    required String desc,
    required List<String> tags,
  }) {
    return GlassPanel(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const FaIcon(FontAwesomeIcons.folder, color: AppTheme.accentColor, size: 40),
              Row(
                children: [
                  IconButton(
                    icon: const FaIcon(FontAwesomeIcons.github),
                    color: AppTheme.textSecondary,
                    hoverColor: AppTheme.accentColor,
                    onPressed: () => launchUrl(Uri.parse('https://github.com')),
                  ),
                  IconButton(
                    icon: const FaIcon(FontAwesomeIcons.arrowUpRightFromSquare),
                    color: AppTheme.textSecondary,
                    hoverColor: AppTheme.accentColor,
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 24),
          Row(
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: AppTheme.textPrimary,
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(width: 8),
              Text(
                '($year)',
                style: const TextStyle(
                  color: AppTheme.accentColor,
                  fontFamily: 'monospace',
                  fontSize: 14,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Text(
            desc,
            style: const TextStyle(color: AppTheme.textSecondary, fontSize: 15),
          ),
          const SizedBox(height: 24),
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
    );
  }
}
