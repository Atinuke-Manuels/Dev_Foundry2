import 'package:dev_foundry_task/constants/constants.dart';
import 'package:dev_foundry_task/ui_components/widgets/home_screen_widgets/bottom_tab_all_widget.dart';
import 'package:flutter/material.dart';

class HomeScreenBottomTabView extends StatefulWidget {
  const HomeScreenBottomTabView({super.key});

  @override
  State<HomeScreenBottomTabView> createState() => _HomeScreenBottomTabViewState();
}

class _HomeScreenBottomTabViewState extends State<HomeScreenBottomTabView> with SingleTickerProviderStateMixin {
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
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.4,
      child: Column(
        children: [
          // Custom Tab Bar
          Container(
            alignment: Alignment.centerLeft,
            child: TabBar(
              controller: _tabController,
              isScrollable: true,
              indicator: const BoxDecoration(),

              dividerColor: Colors.transparent,

              labelPadding: const EdgeInsets.symmetric(horizontal: 8),

              indicatorSize: TabBarIndicatorSize.label,
              indicatorPadding: EdgeInsets.zero,
              indicatorWeight: 0,

              indicatorColor: Colors.transparent,
              tabs: [
                _buildTab('All', 0),
                _buildTab('Completed', 1),
                _buildTab('In Delivery', 2),
                _buildTab('Pending', 3),
              ],
              onTap: (index) {
                setState(() {});
              },
            ),
          ),

          SizedBox(height: spacing,),
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
    bool isSelected = _tabController.index == index;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 3),
      decoration: BoxDecoration(
        color: isSelected ? bottomTabActiveColor: Colors.transparent,
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
          fontWeight: FontWeight.normal,
          fontSize: smallFontSize
        ),
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

Widget _buildTabContent(String content) {
  return Center(
    child: Text(
      content,
      style: const TextStyle(fontSize: 18),
    ),
  );
}