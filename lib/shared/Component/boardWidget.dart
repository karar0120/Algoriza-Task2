import 'package:flutter/material.dart';

import '../../Constant/constant.dart';
import '../../Screens/createTaskScreen.dart';
import '../../Widgets/customButton.dart';
import 'allScreen.dart';
import 'completedScreen.dart';
import 'favoriteWidget.dart';
import 'unCompletedScreen.dart';

class BoarderWidget extends StatelessWidget {
  const BoarderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Colors.grey.shade300,
              ),
            ),
          ),
          child: const TabBar(
            tabs: [
              Tab(
                text: 'All',
              ),
              Tab(
                text: 'Completed',
              ),
              Tab(
                text: 'UnCompleted',
              ),
              Tab(
                text: 'Favorite',
              ),
            ],
          ),
        ),
        //Screens
         Expanded(
          child: TabBarView(
            children: [
              AllScreen(),
              CompletedScreen(),
              UnCompletedScreen(),
              FavoriteScreen(),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 15,
            right: 25,
            left: 25,
          ),
          child: CustomButton(
            text: 'Create Task',
            onTap: () {
              NavigateTo(
                context: context,
                router: CreateTaskScreen(),
              );
            },
          ),
        ),
      ],
    );
  }
}
