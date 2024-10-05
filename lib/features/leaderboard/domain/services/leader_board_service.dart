

import 'package:nrideapp/features/leaderboard/domain/repositories/leader_board_repository_interface.dart';
import 'package:nrideapp/features/leaderboard/domain/services/leader_board_service_interface.dart';

class LeaderBoardService implements LeaderBoardServiceInterface {

  final LeaderBoardRepositoryInterface leaderBoardRepositoryInterface;
  LeaderBoardService({required this.leaderBoardRepositoryInterface});

  @override
  Future getDailyActivity() {
    return leaderBoardRepositoryInterface.getDailyActivity();
  }

  @override
  Future getLeaderboardList(int offset, String selectedFilterName) {
    return leaderBoardRepositoryInterface.getLeaderBoardList(offset: offset, selectedFilterName: selectedFilterName);
  }

}