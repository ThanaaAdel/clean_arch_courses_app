import 'package:clean_arch_courses_app/constant.dart';
import 'package:flutter/material.dart';

class CourseScreen extends StatelessWidget {
  const CourseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          physics: const BouncingScrollPhysics(),
          padding: EdgeInsets.zero,
          itemCount: 2,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.51,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(17.0),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Stack(
                            children: [
                              AspectRatio(
                                aspectRatio: 6 / 4,
                                child: Image.network(
                                    "https://th.bing.com/th/id/OIP.oA_qQ1B7wjaBF9wurQQiewHaEK?w=295&h=187&c=7&r=0&o=5&pid=1.7"),
                              ),
                              Container(
                                padding: const EdgeInsets.all(8),
                                margin: const EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.grey),
                                child: const Text(
                                  "ر.س",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "محمد شعيب",
                              style: TextStyle(
                                color: kPrimaryColor.withOpacity(0.5),
                                fontSize: 15,
                              ),
                            ),
                            Icon(
                              Icons.person,
                              size: 20,
                              color: kPrimaryColor.withOpacity(0.5),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.production_quantity_limits,
                              size: 20,
                              color: kPrimaryColor.withOpacity(0.5),
                            ),
                            Text(
                              "الكهرباء و الطاقة",
                              style: TextStyle(
                                color: kPrimaryColor.withOpacity(0.5),
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                        const Divider(
                          height: 10,
                          thickness: 3,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "600 دقيقة",
                                  style: TextStyle(
                                    color: kPrimaryColor.withOpacity(0.5),
                                    fontSize: 15,
                                  ),
                                ),
                                Icon(
                                  Icons.access_time,
                                  size: 20,
                                  color: kPrimaryColor.withOpacity(0.5),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "2 دروس ",
                                  style: TextStyle(
                                    color: kPrimaryColor.withOpacity(0.5),
                                    fontSize: 15,
                                  ),
                                ),
                                Icon(
                                  Icons.slow_motion_video,
                                  size: 20,
                                  color: kPrimaryColor.withOpacity(0.5),
                                )
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
