import 'package:intl/intl.dart';
import 'package:kudi_mobile/infrastructure/components/containers/scaffold_sliver.dart';
import 'package:kudi_mobile/presentation/dashboard/controllers/dashboard.controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashboardScreen extends GetView<DashboardController> {
  const DashboardScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ScaffoldSliver(
      children: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            backgroundColor: Theme.of(context).colorScheme.background,
            toolbarHeight: 45,
            expandedHeight: 86,
            collapsedHeight: 50,
            flexibleSpace: Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 45,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            'Dashboard',
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        CircleAvatar(
                          radius: 17,
                          backgroundColor: Colors.transparent,
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Theme.of(context).colorScheme.primary,
                                width: 1.0,
                              ),
                              image: const DecorationImage(
                                image: AssetImage(
                                    'lib/infrastructure/assets/app/profile.jpg'),
                                fit: BoxFit.cover, // Adjust the fit mode
                              ),
                            ),
                          ),
                        )
                        // const CircleAvatar(
                        //   radius: 16,
                        //   border: Border.all(
                        //     color: Colors.blue,
                        //     width: 2.0,
                        //   ),
                        //   backgroundImage: AssetImage(
                        //       'lib/infrastructure/assets/app/profile.jpg'),
                        // ),
                      ],
                    ),
                    // Divider(
                    //   color: Theme.of(context)
                    //       .colorScheme
                    //       .primary
                    //       .withOpacity(0.6),
                    // ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Text(
                          DateFormat.yMMMMEEEEd().format(DateTime.now()),
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            // flexibleSpace: FlexibleSpaceBar(
            //   title: const Text('SliverAppBar'),
            //   background: Image.asset(
            //     'lib/infrastructure/assets/app/profile.jpg',
            //     fit: BoxFit.cover,
            //   ),
            // ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return ListTile(
                  title: Text('Item $index'),
                );
              },
              childCount: 10,
            ),
          ),
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  color: Colors.purple[100 * (index % 9 + 1)],
                );
              },
              childCount: 6,
            ),
          ),
        ],
      ),
    );
  }
}
