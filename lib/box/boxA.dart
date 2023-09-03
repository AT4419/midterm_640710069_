import 'package:flutter/material.dart';

class boxA extends StatelessWidget {
  final String num;
  final String text;
  final bool status;

  const boxA({
    super.key,
    required this.num,
    required this.text,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Container(
        decoration: BoxDecoration(
          color: status ? Color.fromARGB(255, 253, 227, 255) : Colors.white,
          border: Border.all(
            width: 1,
            color:
                status ? const Color.fromARGB(255, 204, 71, 71) : Colors.black,
          ),
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Container(
                decoration: BoxDecoration(
                  color: status
                      ? const Color.fromARGB(255, 255, 99, 151)
                      : Colors.white,
                  border: Border.all(
                    width: 1,
                    color: Colors.black,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(num),
                ),
              ),
            ),
            Text(text),
            Spacer(
              flex: 2,
            ),
            Icon(
              Icons.done,
              color: status ? Colors.black : Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
