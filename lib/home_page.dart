import 'package:flutter/material.dart';
import '../widgets/navbar.dart';
import '../sections/hero_section.dart';
import '../sections/about_section.dart';
import '../sections/experience_section.dart';
import '../sections/projects_section.dart';
import '../sections/skills_section.dart';
import '../sections/contact_section.dart';
import '../widgets/footer.dart';
import '../theme.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController _scrollController = ScrollController();
  
  final GlobalKey _homeKey = GlobalKey();
  final GlobalKey _aboutKey = GlobalKey();
  final GlobalKey _experienceKey = GlobalKey();
  final GlobalKey _projectsKey = GlobalKey();
  final GlobalKey _skillsKey = GlobalKey();
  final GlobalKey _contactKey = GlobalKey();

  void _scrollTo(GlobalKey key) {
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: const Duration(milliseconds: 800),
      curve: Curves.easeInOut,
    );
  }

  Widget _buildDrawerLink(String title, VoidCallback onTap) {
    return ListTile(
      title: Text(
        title,
        style: const TextStyle(color: AppTheme.textPrimary, fontSize: 18, fontWeight: FontWeight.w500),
        textAlign: TextAlign.center,
      ),
      onTap: onTap,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(
        backgroundColor: AppTheme.bgColor,
        child: SafeArea(
          child: Column(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: IconButton(
                    icon: const Icon(Icons.close, color: AppTheme.accentColor, size: 32),
                    onPressed: () => Navigator.pop(context),
                  ),
                ),
              ),
              const Spacer(),
              _buildDrawerLink('About', () {
                Navigator.pop(context);
                _scrollTo(_aboutKey);
              }),
              const SizedBox(height: 8),
              _buildDrawerLink('Experience', () {
                Navigator.pop(context);
                _scrollTo(_experienceKey);
              }),
              const SizedBox(height: 8),
              _buildDrawerLink('Projects', () {
                Navigator.pop(context);
                _scrollTo(_projectsKey);
              }),
              const SizedBox(height: 8),
              _buildDrawerLink('Skills', () {
                Navigator.pop(context);
                _scrollTo(_skillsKey);
              }),
              const SizedBox(height: 8),
              _buildDrawerLink('Contact', () {
                Navigator.pop(context);
                _scrollTo(_contactKey);
              }),
              const Spacer(flex: 2),
            ],
          ),
        ),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            controller: _scrollController,
            child: Center(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 1000),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Column(
                    children: [
                      const SizedBox(height: 100), // Space for Navbar
                      HeroSection(key: _homeKey, onContactClick: () => _scrollTo(_contactKey), onProjectsClick: () => _scrollTo(_projectsKey)),
                      AboutSection(key: _aboutKey),
                      ExperienceSection(key: _experienceKey),
                      ProjectsSection(key: _projectsKey),
                      SkillsSection(key: _skillsKey),
                      ContactSection(key: _contactKey),
                      const Footer(),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Navbar(
            onLogoClick: () => _scrollTo(_homeKey),
            onAboutClick: () => _scrollTo(_aboutKey),
            onExperienceClick: () => _scrollTo(_experienceKey),
            onProjectsClick: () => _scrollTo(_projectsKey),
            onSkillsClick: () => _scrollTo(_skillsKey),
            onContactClick: () => _scrollTo(_contactKey),
            scrollController: _scrollController,
          ),
        ],
      ),
    );
  }
}
