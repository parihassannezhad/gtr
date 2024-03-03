import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gtr/home/home_controller.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  var controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(() => Text(
                "${controller.num}",
                style: Theme.of(context).textTheme.bodyMedium,
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: () {
                  controller.increase();
                },
                child: Text("+"),
              ),
              ElevatedButton(
                  onPressed: () {
                    controller.decrease();
                  },
                  child: Text("-")),
            ],
          ),
          ElevatedButton(
              onPressed: () {
                Get.snackbar('Hi', "Okkkkkkkkkkkkkkkkkkkkkkkkkkkkkk");
              },
              child: Text("toast")),
          Obx(() => ElevatedButton(
            onPressed:() {
              Get.changeTheme(
                  controller.isDarkTheme.value
                      ? ThemeData.dark()
                      : ThemeData.light());

              controller.isDarkTheme.value = !controller.isDarkTheme.value;

            } ,
            child: Text("change"),

              ))
        ],
      ),
    );
  }
}
