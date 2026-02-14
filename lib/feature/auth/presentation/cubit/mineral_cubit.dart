import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/networking/app_api.dart';
import '../../data/repo/remote_data_repo.dart';
import 'minerals_state.dart';

class MineralCubit extends Cubit<MineralsState> {
  final MineralsRepos repos;

  MineralCubit(this.repos) : super(InitialState());

  Future<void> getGoldenData() async {
    emit(LoadingState());
    final result = await repos.getGoldenData(endpoint: AppApi.goldEndPoint);
    result.fold(
      (error) {
        emit(ErrorState(errorMsg: error));
      },
      (goldenValue) {
        emit(SuccessGoldenState(gold: goldenValue));
      },
    );
  }



Future<void> getSilverData() async {
    emit(LoadingState());
    final result = await repos.getSilverData(endpoint: AppApi.silverEndPoint);
    result.fold(
      (error) {
        emit(ErrorState(errorMsg: error));
      },
      (goldenValue) {
        emit(SuccessSilverState(gold: goldenValue));
      },
    );
  }

}
