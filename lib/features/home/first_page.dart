import 'package:anti_2/core/commons/custom_button.dart';
import 'package:anti_2/theme/pallete.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    List texts = [
      'Junk Clean',
      'Memory Usage',
      'Anti Virus',
      'App Cleaner',
      'Deep Clean',
      'Battery Manager',
    ];

    List subtexts = [
      'Freeing up your storage space',
      'RAM: 62%',
      'Protect phone from a virus',
      '6 apps can be cleaned',
      'Clean files to save space',
      'Save battery power',
    ];

    List appIcons = [
      Icons.add,
      Icons.place,
      Icons.tiktok,
      Icons.access_alarm,
      Icons.bolt,
      Icons.clean_hands,
    ];
    return Scaffold(
      appBar: AppBar(
        title: const ListTile(
          leading: Icon(Icons.settings),
          title: Text('Creed AntiVirus'),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 15,
        ),
        child: Column(
          children: [
            CustomButton(onPressed: () {}, text: 'Get Storage'),
            const SizedBox(height: 10),
            Expanded(
              child: GridView.builder(
                itemCount: 6,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    //mainAxisExtent: 10,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 3 / 2),
                itemBuilder: ((context, index) {
                  return Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 15),
                    alignment: Alignment.centerLeft,
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Pallete.greyColor,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          color: Pallete.blackColor,
                          width: 1.5,
                        )),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(appIcons[index]),
                        const SizedBox(height: 10),
                        Text(texts[index]),
                        const SizedBox(height: 10),
                        Text(subtexts[index]),
                      ],
                    ),
                  );
                }),
              ),
            ),
            Container(
              height: 120,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Pallete.greyColor,
                  borderRadius: BorderRadius.circular(15)),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ListTile(
                    leading: Icon(Icons.brush),
                    title: Text('Storage Cleaner'),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: LinearProgressIndicator(
                      color: Pallete.blueColor,
                    ),
                  ),
                  Text('Storage Used: 50%')
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
