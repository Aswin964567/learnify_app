/// Dummy leaderboard data
final List<Map<String, dynamic>> dummyUsers = List.generate(
  15,
  (index) => {
    'rank': index + 1,
    'name': 'User ${index + 1}',
    'points': 1250 - index * 10,
  },
);