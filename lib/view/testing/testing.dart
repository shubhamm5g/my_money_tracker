import 'package:my_money_tracker/consts/consts.dart';
import 'package:my_money_tracker/models/testing_model.dart';
import 'package:my_money_tracker/services/database_helper.dart';

class Testing extends StatelessWidget {
  final TestingModel? testingModel = TestingModel(id: 1, name: 'shubham');
  Testing({super.key});

  @override
  Widget build(BuildContext context) {
    DatabaseHelper.addNote(TestingModel(id: 2, name: "New Name"))
        .then((value) => print(value));
    return Scaffold(
      body: FutureBuilder(
        future: DatabaseHelper.getNote(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            var data = snapshot.data;
            return ListView.builder(
              itemCount: data!.length,
              itemBuilder: (context, index) {
                return ListTile(
                    leading: Text(data[index].id.toString()),
                    title: Text(data[index].name.toString()));
              },
            );
          } else {
            return Center(child: Text('No Data'));
          }
        },
      ),
    );
  }
}
