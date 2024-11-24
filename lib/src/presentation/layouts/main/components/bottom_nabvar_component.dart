import 'package:flutter/material.dart';
import 'package:instagram_clone/src/application/core/constants/images.dart';
import 'package:instagram_clone/src/presentation/widgets/image/image_widget.dart';

class BottomNabvarComponent extends StatelessWidget {
  const BottomNabvarComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: 0,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: AppImageWidget(
            image: AppImages.homeIcon,
            filterColor: Theme.of(context).colorScheme.onSurface,
          ),
          label: '',
          activeIcon: AppImageWidget(
            image: AppImages.homeFillIcon,
            filterColor: Theme.of(context).colorScheme.onSurface,
          ),
        ),
        BottomNavigationBarItem(
          icon: AppImageWidget(
            image: AppImages.searchIcon,
            filterColor: Theme.of(context).colorScheme.onSurface,
          ),
          label: '',
          activeIcon: AppImageWidget(
            image: AppImages.searchFillIcon,
            filterColor: Theme.of(context).colorScheme.onSurface,
          ),
        ),
        BottomNavigationBarItem(
          icon: AppImageWidget(
            image: AppImages.plusIcon,
            filterColor: Theme.of(context).colorScheme.onSurface,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: AppImageWidget(
            image: AppImages.videoIcon,
            filterColor: Theme.of(context).colorScheme.onSurface,
          ),
          label: '',
          activeIcon: AppImageWidget(
            image: AppImages.videoFillIcon,
            filterColor: Theme.of(context).colorScheme.onSurface,
          ),
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: '',
        ),
      ],
    );
  }
}
