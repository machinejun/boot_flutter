import 'package:flutter/material.dart';

class ProfileTab extends StatefulWidget {
  const ProfileTab({Key? key}) : super(key: key);

  @override
  State<ProfileTab> createState() => _ProfileTabState();
}

// Tab을 사용하기 위해서는 SingleTickerProviderStateMixin 을 달아주어야한다. 
//>>프로그래밍 언어에서 상속을 사용하는 주된 이유는 재사용 보다는 타입을 일치시키거나 함수를 
//Overriding(재정의) 하는데 있습니다. 
// 
class _ProfileTabState extends State<ProfileTab>
    with SingleTickerProviderStateMixin {
  // 상태가 있는 위젯은 상대값 들을 보존하고 추적할 수 있다.
  TabController? _tabController;
  // state 위젯


  // TabBar : 탭의 가로 행을 표시하는 머티리얼 디자인이다.
  Widget _buildTabBar() {
    return TabBar(controller: _tabController, tabs: [
      Tab(icon: Icon(Icons.image)),
      Tab(icon: Icon(Icons.subway))
    ]);
  }

  // 선택된 탭에 해당하는 화면을 그려주는 위젯이다.
  // 탭뷰에 컨트롤러를 연결해 주어야 한다.
  Widget _buildTabBarView() {
    return TabBarView(controller: _tabController, children: [
      GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, crossAxisSpacing: 10, mainAxisSpacing: 10),
              itemCount: 42,
          itemBuilder: (context, index) {
            return Image.network(
                "https://picsum.photos/id/${index + 1}/200/200");
          }
      ),
      Container(color: Colors.orange)
    ]);
  }

  // initState()  <-- 초기화시 호출됨
  @override
  void initState() {
    _tabController = new TabController(length: 2, vsync: this);
    super.initState();
  }
/*
vsync:this는 해당 위젯의 싱크를 SingleTickerProviderStateMixin에 맞춘다는 뜻입니다. SingleTickerProviderStateMixin은 내부
적으로 AnimatedController 위젯으로 구현되어 있는데 현재 화면에 상태가 변경되면(Tab을 클릭하면) 애니메이션이 발동되도록 
싱크를 맞춘다는 의미입니다.
*/
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 5),
        _buildTabBar(),
        Expanded(child: _buildTabBarView())
      ],
    );
  }
}
