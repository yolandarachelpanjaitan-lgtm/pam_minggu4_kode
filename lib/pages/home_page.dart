import 'package:flutter/material.dart';
import 'package:pam_minggu4/widget_basic/avatar1.dart';
import 'package:pam_minggu4/widget_basic/button1.dart';
import 'package:pam_minggu4/widget_basic/column1.dart';
import 'package:pam_minggu4/widget_basic/container1.dart';
import 'package:pam_minggu4/widget_basic/expanded_widget.dart';
import 'package:pam_minggu4/widget_basic/gridview_widget.dart';
import 'package:pam_minggu4/widget_basic/icon1.dart';
import 'package:pam_minggu4/widget_basic/image1.dart';
import 'package:pam_minggu4/widget_basic/list_view_widget.dart';
import 'package:pam_minggu4/widget_basic/padding_widget.dart';
import 'package:pam_minggu4/widget_basic/row1.dart';
import 'package:pam_minggu4/widget_basic/sizedbox_widget.dart';
import 'package:pam_minggu4/widget_basic/stack_widget.dart';
import 'package:pam_minggu4/widget_basic/text1.dart';
import 'package:pam_minggu4/widget_basic/wrap_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Daftar menu untuk membuka tiap contoh widget (memudahkan screenshot).
  late final List<MapEntry<String, Widget>> menu = [
    MapEntry('Container', const Container1()),
    MapEntry('Text', const Text1()),
    MapEntry('Button', const Button1()),
    MapEntry('Icon', const Icon1()),
    MapEntry('Image', const Image1()),
    MapEntry('CircleAvatar', const Avatar1()),
    MapEntry('Column', const Column1()),
    MapEntry('Row', const Row1()),
    MapEntry('ListView', ListViewWidget()),
    MapEntry('GridView', const GridViewWidget()),
    MapEntry('Stack', const StackWidget()),
    MapEntry('Padding', const PaddingWidget()),
    MapEntry('Expanded', const ExpandedWidget()),
    MapEntry('SizedBox', const SizedBoxWidget()),
    MapEntry('Wrap', WrapWidget()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PAM Minggu 4'),
      ), // AppBar
      body: ListView.builder(
        itemCount: menu.length,
        itemBuilder: (context, index) {
          final item = menu[index];
          return ListTile(
            title: Text(item.key),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => item.value),
              );
            },
          ); // ListTile
        },
      ), // ListView.builder
    ); // Scaffold
  }
}
