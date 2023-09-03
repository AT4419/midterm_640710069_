// ignore_for_file: avoid_unnecessary_containers

import 'package:cpsu_midterm_1_2023_starter/box/boxA.dart';
import 'package:cpsu_midterm_1_2023_starter/box/boxQ.dart';
import 'package:flutter/material.dart';

// TODO: ใส่รหัสนักศึกษาที่ค่าสตริงนี้
const studentId = '640710069';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 20.0,
          ),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/bg_colorful.jpg"),
              opacity: 0.6,
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text('Good Morning',
                  textAlign: TextAlign.center, style: textTheme.headlineMedium),
              Text(studentId,
                  textAlign: TextAlign.center,
                  style: textTheme.headlineSmall!.copyWith(
                      fontWeight: FontWeight.bold, color: Colors.black87)),
              Spacer(),
              _buildQuizView(),
              Spacer(),
              _buildButtonPanel(),
              SizedBox(height: 16.0),
            ],
          ),
        ),
      ),
    );
  }

  _buildQuizView() {
    // TODO: build UI
    //return Center(child: Text('TODO: build UI'));
    return Expanded(
      child: Container(
        //height: 300.0,
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            width: 3,
            color: Colors.black,
          ),
          borderRadius: BorderRadius.all(Radius.circular(50)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Text(
                "Question 1 of 5",
                style: TextStyle(fontSize: 16),
              ),
            ),
            boxQ(text: 'ไก่กับไข่อะไรเกิดก่อนกัน?'),
            boxA(
              num: 'A',
              text: 'เกิดพร้อมกัน',
              status: false,
            ),
            boxA(
              num: 'B',
              text: 'ไข่',
              status: false,
            ),
            boxA(
              num: 'C',
              text: 'ไก่',
              status: true,
            ),
            boxA(
              num: 'D',
              text: 'ไม่รู้',
              status: false,
            ),
          ],
        ),
      ),
    );
  }

  _buildButtonPanel() {
    // TODO: build UI
    //return Center(child: Text('TODO: build UI'));
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(5.0),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 234, 81, 81),
              border: Border.all(width: 3, color: Colors.black),
              borderRadius: BorderRadius.all(Radius.circular(50.0)),
            ),
            child: Center(
              child: Text(
                '<',
                style: TextStyle(fontSize: 25.0),
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(5.0),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 63, 203, 105),
              border: Border.all(width: 3, color: Colors.black),
              borderRadius: BorderRadius.all(Radius.circular(50.0)),
            ),
            child: Center(
              child: Text(
                '>',
                style: TextStyle(fontSize: 25.0),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
