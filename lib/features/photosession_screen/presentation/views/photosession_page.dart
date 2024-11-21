import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:t_square/core/utils/app_router.dart';
import 'package:t_square/features/photosession_screen/presentation/views/widgets/photosession1_widget.dart';
import 'package:t_square/features/photosession_screen/presentation/views/widgets/photosession2_widget.dart';
import 'package:t_square/features/photosession_screen/presentation/views/widgets/photosession3_widget.dart';
import 'package:t_square/features/photosession_screen/presentation/views/widgets/photosession_button_widget.dart';

class PhotosessionPage extends StatelessWidget {
  const PhotosessionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Photo Session"),
        centerTitle: true,
        leading:
            IconButton(onPressed: () {
              GoRouter.of(context).push(AppRouter.KHomePage);
            }, icon: Icon(Icons.arrow_back_outlined)),
      ),
      body: Column(
        children: [
          Photosession1Widget(),
          Photosession2Widget(),
          Photosession3Widget(),
          SizedBox(height: 392),
          PhotosessionButtonWidget()
        ],
      ),
    );
  }
}
