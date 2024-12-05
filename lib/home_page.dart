import 'package:flutter/material.dart';
import 'profile_page.dart';

class HomePage extends StatelessWidget {
  // List of students with unique data
  final List<Map<String, String>> students = [
    {
      'name': 'Sanskar Satyal',
      'description': 'Physics Enthusiast and loves solving puzzles.',
      'image': 'lib/assets/images/student3.png',
    },
    {
      'name': 'Shree Shrestha',
      'description': 'Mathematics lover with a keen interest in statistics.',
      'image': 'lib/assets/images/student1.png',
    },
    {
      'name': 'Nemo Tamang',
      'description': 'Biology geek, fascinated by microbiology and genetics.',
      'image': 'lib/assets/images/student5.png',
    },
    {
      'name': 'Sanjaya Tamang',
      'description': 'Chemistry pro with a passion for organic chemistry.',
      'image': 'lib/assets/images/student4.png',
    },
    {
      'name': 'Pranish Lama',
      'description': 'History buff, always exploring historical events.',
      'image': 'lib/assets/images/student2.png',
    },
    {
      'name': 'Bhishma Rai',
      'description': 'Technology wizard, skilled in programming and AI.',
      'image': 'lib/assets/images/student6.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Gradient Background
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  const Color.fromARGB(255, 100, 181, 246),
                  Colors.orange.shade200
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          Column(
            children: [
              // Top Navigation Bar
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: Icon(Icons.add, color: Colors.black),
                      onPressed: () {
                        // Handle Add Button Press
                      },
                    ),
                    Text(
                      "Students",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                      icon: Icon(Icons.menu, color: Colors.black),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              // Student Grid with Scrollable Content
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, // Show 2 students per row
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 16,
                      childAspectRatio:
                          188 / 310, // Aspect ratio of each grid item
                    ),
                    itemCount: students.length, // Total number of students
                    itemBuilder: (context, index) {
                      final student = students[index];
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ProfilePage(),
                            ),
                          );
                        },
                        child: LayoutBuilder(
                          builder: (context, constraints) {
                            return Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(36),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.2),
                                    blurRadius: 8,
                                    offset: Offset(2, 4),
                                  ),
                                ],
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  // Avatar
                                  CircleAvatar(
                                    radius: constraints.maxWidth *
                                        0.3, // Responsive radius
                                    backgroundImage:
                                        AssetImage(student['image']!),
                                  ),
                                  SizedBox(
                                      height: constraints.maxHeight * 0.05),
                                  // Student Name
                                  Text(
                                    student['name']!,
                                    style: TextStyle(
                                      fontSize: constraints.maxWidth * 0.08,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  SizedBox(
                                      height: constraints.maxHeight * 0.02),
                                  // Description
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 12.0),
                                    child: Text(
                                      student['description']!,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: constraints.maxWidth * 0.06,
                                        color: Colors.grey[700],
                                      ),
                                      maxLines: 3, // Restrict to 3 lines
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      );
                    },
                  ),
                ),
              ),
              // Transparent Bottom Navigation Bar
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                        icon: Icon(Icons.home, size: 28),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(Icons.person, size: 28),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(Icons.search, size: 28),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
