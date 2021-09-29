import 'package:flutter/material.dart';
import 'package:project_structure_xcelpros/modules/module1/providers/home_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Xcelpros"),
      ),
      body: SafeArea(
        child: Align(
          child: Consumer<HomeProvider>(
            builder: (_, homeProvider, __) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(homeProvider.dataModel == null
                      ? "Loading..."
                      : homeProvider.dataModel!.name),
                  ElevatedButton(
                    onPressed: homeProvider.dataModel == null
                        ? null
                        : () {
                            Provider.of<HomeProvider>(context, listen: false)
                                .getLocalData();
                          },
                    child: const Text("Get Data from Local"),
                  ),
                  ElevatedButton(
                    onPressed: homeProvider.dataModel == null
                        ? null
                        : () {
                            Provider.of<HomeProvider>(context, listen: false)
                                .getNetworkData();
                          },
                    child: const Text("Get Data from Network"),
                  )
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
