import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepPurple[100],
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                children: [
                  const Text(
                    "Data Users",
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: DataTable(
                          headingRowColor: MaterialStateColor.resolveWith(
                              (states) => Colors.purple.shade300),
                          dataRowColor: MaterialStateColor.resolveWith(
                              (states) => Colors.white),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          columns: const [
                            DataColumn(label: Text("Username")),
                            DataColumn(label: Text("Email")),
                            DataColumn(label: Text("Password")),
                          ],
                          rows: const [
                            DataRow(cells: [
                              DataCell(Text('user1')),
                              DataCell(Text('user1@gmail.com')),
                              DataCell(Text('user1')),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('user2')),
                              DataCell(Text('user2@gmail.com')),
                              DataCell(Text('user2')),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('user3')),
                              DataCell(Text('user3@gmail.com')),
                              DataCell(Text('user3')),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('user4')),
                              DataCell(Text('user4@gmail.com')),
                              DataCell(Text('user4')),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('user5')),
                              DataCell(Text('user5@gmail.com')),
                              DataCell(Text('user5')),
                            ]),
                          ])),
                ],
              ),
            ),
          ),
        ));
  }
}
