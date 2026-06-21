import 'package:flutter/material.dart';
import '../theme.dart';

class Navbar extends StatefulWidget {
  final VoidCallback onLogoClick;
  final VoidCallback onAboutClick;
  final VoidCallback onExperienceClick;
  final VoidCallback onProjectsClick;
  final VoidCallback onSkillsClick;
  final VoidCallback onContactClick;
  final ScrollController scrollController;

  const Navbar({
    super.key,
    required this.onLogoClick,
    required this.onAboutClick,
    required this.onExperienceClick,
    required this.onProjectsClick,
    required this.onSkillsClick,
    required this.onContactClick,
    required this.scrollController,
  });

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  bool _isScrolled = false;

  @override
  void initState() {
    super.initState();
    widget.scrollController.addListener(() {
      if (widget.scrollController.offset > 50 && !_isScrolled) {
        setState(() => _isScrolled = true);
      } else if (widget.scrollController.offset <= 50 && _isScrolled) {
        setState(() => _isScrolled = false);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    bool isDesktop = MediaQuery.of(context).size.width > 768;

    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: _isScrolled ? 70 : 90,
      decoration: BoxDecoration(
        color: AppTheme.bgColor.withAlpha(216), // ~85%
        boxShadow: _isScrolled
            ? [
                BoxShadow(
                  color: Colors.black.withAlpha(178), // ~70%
                  blurRadius: 30,
                  offset: const Offset(0, 10),
                  spreadRadius: -10,
                )
              ]
            : [],
      ),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1200),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: widget.onLogoClick,
                    child: const Text(
                      'IR.',
                      style: TextStyle(
                        color: AppTheme.accentColor,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.0,
                      ),
                    ),
                  ),
                ),
                if (isDesktop)
                  Row(
                    children: [
                      _NavLink(title: 'About', onTap: widget.onAboutClick),
                      const SizedBox(width: 32),
                      _NavLink(title: 'Experience', onTap: widget.onExperienceClick),
                      const SizedBox(width: 32),
                      _NavLink(title: 'Projects', onTap: widget.onProjectsClick),
                      const SizedBox(width: 32),
                      _NavLink(title: 'Skills', onTap: widget.onSkillsClick),
                      const SizedBox(width: 32),
                      _NavLink(title: 'Contact', onTap: widget.onContactClick),
                    ],
                  )
                else
                  IconButton(
                    icon: const Icon(Icons.menu, color: AppTheme.accentColor),
                    onPressed: () {
                      Scaffold.of(context).openEndDrawer();
                    },
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _NavLink extends StatefulWidget {
  final String title;
  final VoidCallback onTap;

  const _NavLink({required this.title, required this.onTap});

  @override
  State<_NavLink> createState() => _NavLinkState();
}

class _NavLinkState extends State<_NavLink> {
  bool _isHovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovering = true),
      onExit: (_) => setState(() => _isHovering = false),
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: widget.onTap,
        child: AnimatedDefaultTextStyle(
          duration: const Duration(milliseconds: 200),
          style: TextStyle(
            color: _isHovering ? AppTheme.accentColor : AppTheme.textPrimary,
            fontSize: 14,
          ),
          child: Text(widget.title),
        ),
      ),
    );
  }
}
