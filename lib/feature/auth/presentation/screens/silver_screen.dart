import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_images.dart';
import '../../data/repo/remote_data_repo.dart';
import '../cubit/mineral_cubit.dart';
import '../cubit/minerals_state.dart';
import 'golden_screen.dart';

class SilverScreen extends StatelessWidget {
  const SilverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: SafeArea(
        child: Center(
          child: BlocProvider(
            create: (context) => MineralCubit(MineralsRepos())..getSilverData(),
            child: BlocBuilder<MineralCubit, MineralsState>(
              builder: (context, state) {
                if (state is LoadingState ) {
                  return Center(child: CircularProgressIndicator(color: AppColors.secondary));
                } else if (state is ErrorState) {
                  return Center(child: Text(state.errorMsg, style: TextStyle(color: AppColors.primary, fontSize: 25),));
                } else if (state is SuccessSilverState) {
                  return Column(
                    spacing: 20,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(AppImages.gold, height: 240),
                      CustomText(title: state.gold.price.toString()),
                    ],
                  );
                }

                return SizedBox.shrink();
              },
            ),
          ),
        ),
      ),
    );
  }
}