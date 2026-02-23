int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
  int score(Map<String, int> team) {
    return (team['Free throws'] ?? 0) * 1 +
           (team['2 pointers'] ?? 0) * 2 +
           (team['3 pointers'] ?? 0) * 3;
  }

  int scoreA = score(teamA);
  int scoreB = score(teamB);

  if (scoreA > scoreB) return 1;
  if (scoreA < scoreB) return 2;
  return 0;
}