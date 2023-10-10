import 'package:flutter/material.dart';

class FirstAppbar extends StatelessWidget {
  const FirstAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          title: Text("appBar2", style: TextStyle(color: Colors.white)),
          expandedHeight: 250,
          snap: true, // floating 과 셋트임
          floating: true, // snap 과 셋트임
          pinned: false, // 앱바 고정
          flexibleSpace: Container(
            child: Image.network(
              "https://picsum.photos/200/300",
              fit: BoxFit.cover,
            ),
          ),
        ),
        SliverAppBar(
          title: Text("appBar1", style: TextStyle(color: Colors.white)),
          pinned: true, // 앱바 고정
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            childCount: 20, // 제한 두는거임
            (context, index) => ListTile(
              // 리스트의 원소들 하나씩 가지고 노는데 이쁘게 꾸미는거임
              leading: Icon(Icons.person),
              title: Text("$index"),
              trailing: Icon(Icons.account_balance),
            ),
          ),
        )
      ],
    );
  }
}
