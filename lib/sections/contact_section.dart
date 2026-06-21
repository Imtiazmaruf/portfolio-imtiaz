import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:http/http.dart' as http;
import '../theme.dart';
import '../widgets/glass_panel.dart';

class ContactSection extends StatefulWidget {
  const ContactSection({super.key});

  @override
  State<ContactSection> createState() => _ContactSectionState();
}

class _ContactSectionState extends State<ContactSection> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _messageController = TextEditingController();
  
  bool _isSubmitting = false;
  String _statusMessage = '';
  bool _isSuccess = false;

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _messageController.dispose();
    super.dispose();
  }

  Future<void> _submitForm() async {
    if (!_formKey.currentState!.validate()) return;

    setState(() {
      _isSubmitting = true;
      _statusMessage = 'Sending...';
    });

    try {
      final response = await http.post(
        Uri.parse('https://formsubmit.co/ajax/imtiazmaruf016@gmail.com'),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
        body: jsonEncode({
          'name': _nameController.text,
          'email': _emailController.text,
          'message': _messageController.text,
          '_subject': 'New Contact Form Submission from Portfolio!',
        }),
      );

      if (response.statusCode == 200) {
        setState(() {
          _isSuccess = true;
          _statusMessage = 'Message sent successfully! I will get back to you soon.';
        });
        _nameController.clear();
        _emailController.clear();
        _messageController.clear();
      } else {
        setState(() {
          _isSuccess = false;
          _statusMessage = 'Failed to send message. Please try again.';
        });
      }
    } catch (e) {
      setState(() {
        _isSuccess = false;
        _statusMessage = 'Failed to send message. Please try again.';
      });
    }

    setState(() {
      _isSubmitting = false;
    });

    Future.delayed(const Duration(seconds: 5), () {
      if (mounted) setState(() => _statusMessage = '');
    });
  }

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
          GlassPanel(
            padding: const EdgeInsets.all(40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Get In Touch',
                  style: TextStyle(
                    color: AppTheme.textPrimary,
                    fontSize: 40,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  "Let's connect and explore opportunities together",
                  style: TextStyle(color: AppTheme.textSecondary, fontSize: 18),
                ),
                const SizedBox(height: 48),
                isMobile
                    ? Column(
                        children: [
                          _buildContactInfo(),
                          const SizedBox(height: 48),
                          _buildContactForm(),
                        ],
                      )
                    : Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(child: _buildContactInfo()),
                          const SizedBox(width: 48),
                          Expanded(child: _buildContactForm()),
                        ],
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
          '05.',
          style: TextStyle(
            color: AppTheme.accentColor,
            fontFamily: 'monospace',
            fontSize: 24,
          ),
        ),
        const SizedBox(width: 10),
        const Text(
          "What's Next?",
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

  Widget _buildContactInfo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildInfoItem(
          icon: FontAwesomeIcons.envelope,
          title: 'Email',
          content: 'imtiazmaruf016@gmail.com',
          onTap: () => launchUrl(Uri.parse('mailto:imtiazmaruf016@gmail.com')),
        ),
        const SizedBox(height: 32),
        _buildInfoItem(
          icon: FontAwesomeIcons.phone,
          title: 'Phone',
          content: '+880 168 990 7354',
          onTap: () => launchUrl(Uri.parse('tel:+8801689907354')),
        ),
        const SizedBox(height: 32),
        _buildInfoItem(
          icon: FontAwesomeIcons.mapLocationDot,
          title: 'Location',
          content: 'Dhaka, Bangladesh',
        ),
      ],
    );
  }

  Widget _buildInfoItem({
    required dynamic icon,
    required String title,
    required String content,
    VoidCallback? onTap,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 32,
          child: FaIcon(icon, color: AppTheme.textPrimary, size: 20),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: const TextStyle(color: AppTheme.textPrimary, fontSize: 18, fontWeight: FontWeight.w600)),
              const SizedBox(height: 4),
              MouseRegion(
                cursor: onTap != null ? SystemMouseCursors.click : SystemMouseCursors.basic,
                child: GestureDetector(
                  onTap: onTap,
                  child: Text(
                    content,
                    style: TextStyle(
                      color: AppTheme.textSecondary,
                      fontSize: 16,
                      decoration: onTap != null ? TextDecoration.underline : TextDecoration.none,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildContactForm() {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildTextField(
            label: 'Name',
            hint: 'Your name',
            controller: _nameController,
            validator: (v) => v!.isEmpty ? 'Please enter your name' : null,
          ),
          const SizedBox(height: 24),
          _buildTextField(
            label: 'Email',
            hint: 'your@email.com',
            controller: _emailController,
            validator: (v) => v!.isEmpty || !v.contains('@') ? 'Please enter a valid email' : null,
          ),
          const SizedBox(height: 24),
          _buildTextField(
            label: 'Message',
            hint: 'Your message...',
            controller: _messageController,
            maxLines: 4,
            validator: (v) => v!.isEmpty ? 'Please enter a message' : null,
          ),
          const SizedBox(height: 32),
          SizedBox(
            width: double.infinity,
            height: 50,
            child: ElevatedButton(
              onPressed: _isSubmitting ? null : _submitForm,
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFe5e5e5),
                foregroundColor: AppTheme.bgColor,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
              ),
              child: Text(
                _isSubmitting ? 'Sending...' : 'Send Message',
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
            ),
          ),
          if (_statusMessage.isNotEmpty)
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Center(
                child: Text(
                  _statusMessage,
                  style: TextStyle(
                    color: _isSuccess ? Colors.greenAccent : Colors.redAccent,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildTextField({
    required String label,
    required String hint,
    required TextEditingController controller,
    int maxLines = 1,
    String? Function(String?)? validator,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: const TextStyle(color: AppTheme.textPrimary, fontSize: 14, fontWeight: FontWeight.w500)),
        const SizedBox(height: 8),
        TextFormField(
          controller: controller,
          maxLines: maxLines,
          validator: validator,
          style: const TextStyle(color: AppTheme.textPrimary),
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: TextStyle(color: AppTheme.textSecondary.withAlpha(128)),
            filled: true,
            fillColor: AppTheme.bgColor.withAlpha(128),
            contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: AppTheme.accentColor.withAlpha(51)),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: AppTheme.accentColor.withAlpha(51)),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: AppTheme.accentColor),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: Colors.redAccent),
            ),
          ),
        ),
      ],
    );
  }
}
