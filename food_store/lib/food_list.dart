import 'package:flutter/material.dart';

class FoodListPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _FoodListPageState();
}
class _FoodListPageState extends State<FoodListPage> {
  @override
  Widget build(BuildContext context) {
    return _createFoodList();
  }

  Widget _createFoodList() {
    return ListView.separated(
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return _createFoodCard();
      },
      separatorBuilder: (BuildContext context, int index) {
        return Divider(
          thickness: 8.0,
          height: 8.0,
          color: Colors.transparent,
        );
      },
    );
  }

  Widget _createFoodCard() {
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8.0))),
      child: Container(
          padding: EdgeInsets.all(16.0),
          child: _createFoodItemRow()
      ),
    );
  }

  Widget _createFoodItemRow() {
    return Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _createFoodItemContentWidget(),
        Icon(Icons.keyboard_arrow_right, color: Colors.blue)
      ],
    );
  }

  Widget _createFoodItemContentWidget() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Todo Item Title", style: TextStyle(fontSize: 24.0, color: Colors.blue)),
        Divider(
          thickness: 8.0,
          height: 8.0,
          color: Colors.transparent,
        ),
        Text("2021.01.18",
            style: TextStyle(fontSize: 18.0, color: Colors.blueGrey))
      ],
    );
  }
}

