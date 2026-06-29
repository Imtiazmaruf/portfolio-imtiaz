import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import '../theme.dart';

class HeroSection extends StatelessWidget {
  final VoidCallback onContactClick;
  final VoidCallback onProjectsClick;

  const HeroSection({
    super.key,
    required this.onContactClick,
    required this.onProjectsClick,
  });

  @override
  Widget build(BuildContext context) {
    bool isMobile = MediaQuery.of(context).size.width <= 768;

    return Container(
      constraints: const BoxConstraints(minHeight: 800),
      padding: EdgeInsets.symmetric(vertical: isMobile ? 80 : 120),
      child: isMobile
          ? Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _buildImage(),
                const SizedBox(height: 48),
                _buildContent(isMobile),
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(child: _buildContent(isMobile)),
                const SizedBox(width: 64),
                _buildImage(),
              ],
            ),
    );
  }

  Widget _buildContent(bool isMobile) {
    return Column(
      crossAxisAlignment: isMobile ? CrossAxisAlignment.center : CrossAxisAlignment.start,
      children: [
        const Text(
          'Hi, my name is',
          style: TextStyle(
            color: AppTheme.accentColor,
            fontFamily: 'monospace',
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 16),
        Text(
          'MD Imtiaz Rahman.',
          style: TextStyle(
            color: AppTheme.textPrimary,
            fontSize: isMobile ? 40 : 80,
            fontWeight: FontWeight.w600,
            height: 1.1,
          ),
          textAlign: isMobile ? TextAlign.center : TextAlign.left,
        ),
        const SizedBox(height: 8),
        Text(
          'I build things for mobile.',
          style: TextStyle(
            color: AppTheme.textSecondary,
            fontSize: isMobile ? 30 : 60,
            fontWeight: FontWeight.w600,
            height: 1.1,
          ),
          textAlign: isMobile ? TextAlign.center : TextAlign.left,
        ),
        const SizedBox(height: 24),
        SizedBox(
          width: 540,
          child: Text(
            "I'm a Flutter Developer specializing in building scalable, high-performance Android and iOS applications using Clean Architecture and modern state management.",
            style: const TextStyle(
              color: AppTheme.textSecondary,
              fontSize: 18,
            ),
            textAlign: isMobile ? TextAlign.center : TextAlign.left,
          ),
        ),
        const SizedBox(height: 32),
        Row(
          mainAxisAlignment: isMobile ? MainAxisAlignment.center : MainAxisAlignment.start,
          children: [
            OutlinedButton(
              onPressed: onContactClick,
              style: OutlinedButton.styleFrom(
                foregroundColor: AppTheme.accentColor,
                side: const BorderSide(color: AppTheme.accentColor),
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                textStyle: const TextStyle(fontFamily: 'monospace', fontSize: 14),
              ),
              child: const Text('Get in Touch'),
            ),
            const SizedBox(width: 16),
            TextButton(
              onPressed: onProjectsClick,
              style: TextButton.styleFrom(
                foregroundColor: AppTheme.textPrimary,
                backgroundColor: Colors.white.withAlpha(13),
                side: BorderSide(color: Colors.white.withAlpha(26)),
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                textStyle: const TextStyle(fontFamily: 'monospace', fontSize: 14),
              ),
              child: const Text('View Work'),
            ),
          ],
        ),
        const SizedBox(height: 32),
        Row(
          mainAxisAlignment: isMobile ? MainAxisAlignment.center : MainAxisAlignment.start,
          children: [
            IconButton(
              icon: const FaIcon(FontAwesomeIcons.github),
              color: AppTheme.textSecondary,
              hoverColor: AppTheme.accentColor,
              onPressed: () => launchUrl(Uri.parse('https://github.com/Imtiazmaruf')),
            ),
            const SizedBox(width: 16),
            IconButton(
              icon: const FaIcon(FontAwesomeIcons.linkedinIn),
              color: AppTheme.textSecondary,
              hoverColor: AppTheme.accentColor,
              onPressed: () => launchUrl(Uri.parse('https://linkedin.com')),
            ),
            const SizedBox(width: 16),
            IconButton(
              icon: const FaIcon(FontAwesomeIcons.solidEnvelope),
              color: AppTheme.textSecondary,
              hoverColor: AppTheme.accentColor,
              onPressed: () => launchUrl(Uri.parse('mailto:imtiazmaruf016@gmail.com')),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildImage() {
    return Container(
      width: 300,
      height: 300,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: AppTheme.accentColor, width: 2),
        boxShadow: [
          BoxShadow(
            color: AppTheme.accentColor.withAlpha(51),
            blurRadius: 20,
            spreadRadius: 0,
          )
        ],
      ),
      child: ClipOval(
        child: Image.asset(
          'assets/images/profile.jpg',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
