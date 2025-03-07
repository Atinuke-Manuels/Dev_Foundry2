import 'package:dev_foundry_task/constants/constants.dart';
import 'package:dev_foundry_task/constants/strings.dart';
import 'package:dev_foundry_task/ui_components/widgets/home_screen_widgets/bottom_tab_all_widget.dart';
import 'package:flutter/material.dart';

class HomeScreenBottomTabView extends StatefulWidget {
  const HomeScreenBottomTabView({super.key});

  @override
  State<HomeScreenBottomTabView> createState() =>
      _HomeScreenBottomTabViewState();
}

class _HomeScreenBottomTabViewState extends State<HomeScreenBottomTabView>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final strings = AppStrings();
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return SizedBox(
      height: screenHeight > 640 ? screenHeight * 0.35 : screenHeight * 0.75,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Custom Tab Bar
          TabBar(
            controller: _tabController,
            isScrollable: false,
            indicator: const BoxDecoration(),
            dividerColor: Colors.transparent,
            labelPadding: const EdgeInsets.symmetric(horizontal: 2),
            indicatorSize: TabBarIndicatorSize.label,
            indicatorPadding: EdgeInsets.zero,
            indicatorWeight: 0,
            indicatorColor: Colors.transparent,
            tabs: [
              _buildTab(strings.homeTabBarText1, 0),
              _buildTab(strings.homeTabBarText2, 1),
              _buildTab(strings.homeTabBarText3, 2),
              _buildTab(strings.homeTabBarText4, 3),
            ],
            onTap: (index) {
              setState(() {});
            },
          ),

          SizedBox(
            height: spacing,
          ),
          // Important: Expanded to fill available space
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                BottomTabAllWidget(),
                _buildTabContent('Completed Items Content'),
                _buildTabContent('Delivered Items Content'),
                _buildTabContent('In-Progress Items Content'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTab(String text, int index) {
    final screenWidth = MediaQuery.of(context).size.width;
    bool isSelected = _tabController.index == index;

    return Container(
      padding: screenWidth < 640
          ? const EdgeInsets.symmetric(horizontal: 8, vertical: 3)
          : const EdgeInsets.symmetric(horizontal: 12, vertical: 3),
      decoration: BoxDecoration(
        color: isSelected ? bottomTabActiveColor : Colors.transparent,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: isSelected ? Colors.transparent : greyTextColor,
          width: 1,
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
            color: isSelected ? scaffoldBackgroundColor : colorGrey,
            fontWeight: FontWeight.bold,
            fontSize: screenWidth < 640 ? tinyFontSize : smallFontSize),
        overflow: TextOverflow.ellipsis,
      ),
    );
  }

  Widget _buildTabContent(String content) {
    return Center(
      child: Text(
        content,
        style: const TextStyle(fontSize: 18),
      ),
    );
  }
}
