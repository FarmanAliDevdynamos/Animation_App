import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AnimatedAlignExample extends StatelessWidget {
  const AnimatedAlignExample({super.key});

  @override
  Widget build(BuildContext context) {
    Rx<Alignment> alignment = Rx(Alignment.topRight);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animation Align'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Container(
              // padding: EdgeInsets.all(10),
              height: 400,
              width: 400,
              color: Colors.deepPurple.shade200,
              child: Obx(
                () => AnimatedAlign(
                  alignment: alignment.value,
                  duration: Duration(seconds: 1),
                  child: Container(
                    width: 75,
                    height: 75,
                    // color: Colors.deepPurple,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: NetworkImage(
                            'https://i.postimg.cc/Y0DHYSj2/download.jpg'), // Replace with your image URL
                        fit: BoxFit.cover,
                      ),
                      //  borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  height: 20,
                ),
                Expanded(
                    child: ElevatedButton(
                        onPressed: () {
                          alignment.value = Alignment.topLeft;
                        },
                        child: Text('Top Left'))),
                Expanded(
                    child: ElevatedButton(
                        onPressed: () {
                          alignment.value = Alignment.topCenter;
                        },
                        child: Text('Top Center'))),
                Expanded(
                    child: ElevatedButton(
                        onPressed: () {
                          alignment.value = Alignment.topRight;
                        },
                        child: Text('Top Right'))),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  height: 20,
                ),
                Expanded(
                    child: ElevatedButton(
                        onPressed: () {
                          alignment.value = Alignment.centerLeft;
                        },
                        child: Text('Center Left'))),
                Expanded(
                    child: ElevatedButton(
                        onPressed: () {
                          alignment.value = Alignment.center;
                        },
                        child: Text('Center Center'))),
                Expanded(
                    child: ElevatedButton(
                        onPressed: () {
                          alignment.value = Alignment.centerRight;
                        },
                        child: Text('Center Right'))),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  height: 20,
                ),
                Expanded(
                    child: ElevatedButton(
                        onPressed: () {
                          alignment.value = Alignment.bottomLeft;
                        },
                        child: Text('Bottom Left'))),
                Expanded(
                    child: ElevatedButton(
                        onPressed: () {
                          alignment.value = Alignment.bottomCenter;
                        },
                        child: Text('Bottom Center'))),
                Expanded(
                    child: ElevatedButton(
                        onPressed: () {
                          alignment.value = Alignment.bottomRight;
                        },
                        child: Text('Bottom Right'))),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
