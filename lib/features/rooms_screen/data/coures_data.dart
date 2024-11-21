class CourseData {
  final String title;
  final String image;
  final List<String> amenities;

  CourseData({
    required this.title,
    required this.image,
    required this.amenities,
  });
}

final List<CourseData> courses = [
  CourseData(
    title: "Flutter",
    image: "images/flutter1.jpg",
    amenities: [
      "Interactive Coding Labs: Hands-on coding exercises to practice Flutter development.",
      "Expert Guidance: Learn from experienced Flutter developers and industry experts.",
      "Project Showcase: Build real-world apps to showcase your skills.",
      "Community Support: Access a community forum to ask questions and share knowledge."
    ],
  ),
  CourseData(
    title: "Full Stack",
    image: "images/fullstack2.jpg",
    amenities: [
      "Comprehensive Learning: Master both frontend and backend development technologies.",
      "Live Projects: Work on live projects to gain practical experience.",
      "Collaboration Tools: Use industry-standard tools for team collaboration.",
      "Career Support: Get job assistance, resume building, and interview preparation."
    ],
  ),
  CourseData(
    title: "AI",
    image: "images/ai.jpg",
    amenities: [
      "Advanced AI Techniques: Learn cutting-edge AI algorithms and tools.",
      "Data Science Integration: Work with real-world datasets to build AI models.",
      "Hands-on Projects: Build AI-driven projects and solutions.",
      "Expert Mentors: Guidance from AI professionals to help you grow your skills."
    ],
  ),
  CourseData(
    title: "C++",
    image: "images/cplusplus.jpg",
    amenities: [
      "Core Programming Concepts: Learn the fundamentals of C++ and object-oriented programming.",
      "Algorithm Development: Focus on creating efficient algorithms in C++.",
      "Debugging and Optimization: Master debugging techniques and code optimization.",
      "Project Work: Apply your knowledge in real-world programming tasks."
    ],
  ),
  CourseData(
    title: "Digital Marketing",
    image: "images/dmp.jpg",
    amenities: [
      "Marketing Strategies: Learn how to create and implement digital marketing strategies.",
      "SEO and SEM: Master search engine optimization and marketing techniques.",
      "Social Media Marketing: Understand the dynamics of marketing on various social platforms.",
      "Analytics and Data: Learn how to analyze marketing data to drive decisions."
    ],
  ),
  CourseData(
    title: "PFA",
    image: "images/pfa.jpg",
    amenities: [
      "Professional Financial Analysis: Learn financial analysis techniques for professionals.",
      "Real-time Market Data: Work with live financial data to make informed decisions.",
      "Portfolio Management: Learn how to manage financial portfolios effectively.",
      "Industry Case Studies: Apply knowledge to real-world financial scenarios."
    ],
  ),
  CourseData(
    title: "UI/UX",
    image: "images/uiux.jpg",
    amenities: [
      "Design Fundamentals: Learn the basics of UI and UX design principles.",
      "Prototyping Tools: Gain hands-on experience with leading design tools.",
      "User Research: Understand how to conduct research and gather user feedback.",
      "Collaboration with Developers: Work alongside developers to create seamless user experiences."
    ],
  ),
];