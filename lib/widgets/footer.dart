import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import '../theme.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    bool isMobile = MediaQuery.of(context).size.width <= 768;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 32.0),
      child: Column(
        children: [
          if (isMobile) ...[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: const FaIcon(FontAwesomeIcons.github),
                  color: AppTheme.textSecondary,
                  hoverColor: AppTheme.accentColor,
                  onPressed: () => launchUrl(Uri.parse('https://github.com')),
                ),
                const SizedBox(width: 16),
                IconButton(
                  icon: const FaIcon(FontAwesomeIcons.linkedinIn),
                  color: AppTheme.textSecondary,
                  hoverColor: AppTheme.accentColor,
                  onPressed: () => launchUrl(Uri.parse('https://linkedin.com')),
                ),
              ],
            ),
            const SizedBox(height: 16),
          ],
          Text(
            'Designed & Built by MD Imtiaz Rahman © ${DateTime.now().year}',
            style: const TextStyle(
              color: AppTheme.textSecondary,
              fontFamily: 'monospace',
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
