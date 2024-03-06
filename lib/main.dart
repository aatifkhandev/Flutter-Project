import 'package:flutter/material.dart';

void main() {
  runApp(DatingApp());
}

class DatingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dating App',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => WelcomePage(),
        '/matches': (context) => MatchesPage(),
        '/profile': (context) => ProfilePage(
              name: '',
              organization: '',
              profilePhoto: '', // Provide default values for the parameters
              studyInfo: '',
            ),
        '/search': (context) => SearchPage(),
      },
    );
  }
}

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome To Dating App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to Dating App',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/matches');
              },
              child: Text('Login'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/matches');
              },
              child: Text('Sign Up'),
            ),
          ],
        ),
      ),
    );
  }
}

class MatchesPage extends StatelessWidget {
  final List<Map<String, String>> matches = [
    {
      'name': 'Adnan',
      'organization': 'Study at Ohio State University',
      'profilePhoto':
          'https://i.pinimg.com/564x/ca/ae/b5/caaeb5e4d38da0f2db59c5fd13d6ff9c.jpg',
      'studyInfo': 'Masters',
    },
    {
      'name': 'Omair',
      'organization': 'Study at Indiana Wesleyan University',
      'profilePhoto':
          'data:image/png;base64,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',
      'studyInfo': 'Masters',
    },
    {
      'name': 'Zameer',
      'organization': 'Study at Indiana Wesleyan University',
      'profilePhoto':
          'data:image/png;base64,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',
      'studyInfo': 'Masters',
    },
    // Add other matches with their profile photos and study info here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Matches'),
      ),
      body: ListView.builder(
        itemCount: matches.length,
        itemBuilder: (context, index) {
          String name = matches[index]['name']!;
          String organization = matches[index]['organization']!;
          String profilePhoto = matches[index]['profilePhoto']!;
          String studyInfo = matches[index]['studyInfo']!;

          return ListTile(
            leading: CircleAvatar(
              backgroundImage:
                  NetworkImage(profilePhoto), // Use NetworkImage here
            ),
            title: Text(name),
            subtitle: Text(organization),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProfilePage(
                    name: name,
                    organization: organization,
                    profilePhoto: profilePhoto,
                    studyInfo: studyInfo,
                  ),
                ),
              );
            },
          );
        },
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {
                // Your navigation logic for profile
              },
              icon: Icon(Icons.person),
            ),
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/search');
              },
              icon: Icon(Icons.search),
            ),
            IconButton(
              onPressed: () {
                // Handle heart button action
              },
              icon: Icon(Icons.favorite),
            ),
          ],
        ),
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  final String name;
  final String organization;
  final String profilePhoto;
  final String studyInfo;

  ProfilePage({
    required this.name,
    required this.organization,
    required this.profilePhoto,
    required this.studyInfo,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(profilePhoto),
            ),
            SizedBox(height: 20),
            Text(
              'Name: $name',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 10),
            Text(
              'Organization: $organization',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 10),
            Text(
              'Study Info: $studyInfo',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  String _searchText = '';

  void _search() {
    List<Map<String, String>> matches = [
      {
        'name': 'Adnan',
        'organization': 'Study at Ohio State University',
        'profilePhoto':
            'https://i.pinimg.com/564x/ca/ae/b5/caaeb5e4d38da0f2db59c5fd13d6ff9c.jpg',
        'studyInfo': 'Electronics Communications',
      },
      {
        'name': 'Omair',
        'organization': 'Study at Indiana Wesleyan University',
        'profilePhoto':
            'data:image/png;base64,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',
        'studyInfo': 'Computer Engineering',
      },
      {
        'name': 'Zameer',
        'organization': 'Study at Indiana Wesleyan University',
        'profilePhoto':
            'data:image/png;base64,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',
        'studyInfo': 'Computer Engineering',
      },
      // Add other matches with their details here
    ];

    String searchTextLower = _searchText.toLowerCase();
    Map<String, String> match = matches.firstWhere(
      (element) => element['name']!.toLowerCase() == searchTextLower,
      orElse: () => <String, String>{},
    );

    if (match.isNotEmpty) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ProfilePage(
            name: match['name']!,
            organization: match['organization']!,
            profilePhoto: match['profilePhoto']!,
            studyInfo: match['studyInfo']!,
          ),
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Match not found.'),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Search Page',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            TextField(
              onChanged: (value) {
                setState(() {
                  _searchText = value;
                });
              },
              decoration: InputDecoration(
                hintText: 'Enter match name',
                prefixIcon: Icon(Icons.search),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _search();
              },
              child: Text('Search'),
            ),
          ],
        ),
      ),
    );
  }
}
