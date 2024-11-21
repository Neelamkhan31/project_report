import 'package:flutter/material.dart';

class ProjectReport extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 47, 25, 61),
      appBar: AppBar(
        title: Text(
          'Detailed Project Report',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color.fromARGB(255, 149, 23, 199),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            HomeButton(
              text: "Development Process",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DevelopmentProcessScreen()),
                );
              },
            ),
            HomeButton(
              text: "Challenges Faced",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ChallengesScreen()),
                );
              },
            ),
            HomeButton(
              text: "Lessons Learned",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LessonsScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class HomeButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  HomeButton({required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF6C63FF), Color(0xFF42A5F5)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              blurRadius: 10,
              offset: Offset(0, 5),
            ),
          ],
        ),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent, // Removes default button shadow
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            elevation: 0, // Managed by the container's shadow
          ),
          onPressed: onPressed,
          child: Text(
            text,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              letterSpacing: 1.5,
              shadows: [
                Shadow(
                  color: Colors.black.withOpacity(0.4),
                  offset: Offset(1, 1),
                  blurRadius: 3,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

///--------------------------------
/// Development Process Screen

class DevelopmentProcessScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Development Process',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xFF473A42),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SectionTitle(title: "Planning & Design"),
            SectionContent(
              content:
              "The project started with planning the core features and sketching out the UI designs. Initial wireframes were created, followed by high-fidelity designs using Figma.",
            ),
            SizedBox(height: 20),
            SectionTitle(title: "Implementation"),
            SectionContent(
              content:
              "Flutter was used for the frontend. The app's structure followed an MVVM pattern, ensuring that the UI and business logic were properly separated.",
            ),
            SizedBox(height: 20),
            SectionTitle(title: "Testing & Debugging"),
            SectionContent(
              content:
              "Thorough testing was conducted, especially focusing on responsiveness and cross-platform compatibility. Several bugs were identified and resolved during testing.",
            ),
          ],
        ),
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;

  SectionTitle({required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Color(0xFF473A41),
      ),
    );
  }
}

class SectionContent extends StatelessWidget {
  final String content;

  SectionContent({required this.content});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 245, 143, 189),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Text(
        content,
        style: TextStyle(
          fontSize: 16,
          height: 1.5,
          color: Color(0xFF473A3E),
        ),
      ),
    );
  }
}

///--------------------------------
/// Challenges Faced Screen

class ChallengesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Challenges Faced',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xFF473A3F),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SectionTitle(title: "Cross-Platform Compatibility"),
            SectionContent(
              content:
              "Ensuring the app worked seamlessly across both Android and iOS devices presented several challenges, especially in handling platform-specific UI quirks.",
            ),
            SizedBox(height: 20),
            SectionTitle(title: "State Management"),
            SectionContent(
              content:
              "Managing the state efficiently while keeping the app's architecture clean was difficult. We had to choose between different state management approaches.",
            ),
            SizedBox(height: 20),
            SectionTitle(title: "Performance Optimization"),
            SectionContent(
              content:
              "We faced performance issues due to heavy image assets. Lazy loading and caching techniques were used to optimize the app’s performance.",
            ),
          ],
        ),
      ),
    );
  }
}

///--------------------------------
/// Lessons Learned Screen

class LessonsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Lessons Learned',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xFF473A43),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SectionTitle(title: "Technical Learnings"),
            SectionContent(
              content:
              "Gained a deeper understanding of Flutter widgets, state management techniques, and how to optimize the app for better performance.",
            ),
            SizedBox(height: 20),
            SectionTitle(title: "Problem-Solving"),
            SectionContent(
              content:
              "Encountering and resolving multiple bugs helped improve our problem-solving skills, especially in debugging asynchronous code.",
            ),
            SizedBox(height: 20),
            SectionTitle(title: "UI/UX Design"),
            SectionContent(
              content:
              "We learned the importance of user-centric design, ensuring that the app is not only functional but also provides a pleasant user experience.",
            ),
          ],
        ),
      ),
    );
  }
}