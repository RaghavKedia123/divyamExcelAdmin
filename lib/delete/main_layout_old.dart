import 'package:flutter/material.dart';

import 'package:divyam_excel_admin/widgets/body_text.dart';
import 'package:divyam_excel_admin/widgets/section_title_text.dart';
import 'package:divyam_excel_admin/widgets/sidemenu.dart';
import 'package:divyam_excel_admin/constants/colors.dart';

class MainLayout extends StatelessWidget {
  const MainLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Container(
            width: 240,
            // height: double.infinity,
            color: kSidemenuBgColor,
            child: Sidemenu(),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 25,
                vertical: 15,
              ),
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      // width: double.infinity,
                      decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 8,
                            color: Colors.black12,
                          ),
                        ],
                        color: Colors.white,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 30,
                              vertical: 25,
                            ),
                            child:
                                SectionTitleText(text: 'Sales Overview Report'),
                          ),
                          const Divider(
                            height: 1,
                            color: kBorderColor,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 30,
                              vertical: 15,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 140,
                                  height: 40,
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 15,
                                    vertical: 10,
                                  ),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: kBorderColor,
                                    ),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: const Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      BodyText(
                                        text: '1 day',
                                        fontWeight: FontWeight.w500,
                                      ),
                                      Icon(
                                        Icons.expand_more_outlined,
                                        color: kBorderColor,
                                        size: 22,
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 460,
                                  height: 40,
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 15,
                                    vertical: 10,
                                  ),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: kBorderColor,
                                    ),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: const Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      BodyText(
                                        text:
                                            'Maharashtra / Buldhana / Khamgaon',
                                        fontWeight: FontWeight.w500,
                                      ),
                                      Icon(
                                        Icons.expand_more_outlined,
                                        color: kBorderColor,
                                        size: 22,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Divider(
                            height: 1,
                            color: kBorderColor,
                          ),
                          // const CustomTable(
                          //   dataRowHeight: 52,
                          //   firstColumnFixedWidth: 120,
                          //   columns: [
                          //     {'label': 'SALES TYPE', 'numeric': false},
                          //     {'label': 'ENTRY SCREEN', 'numeric': true},
                          //     {'label': 'EXIT SCREEN', 'numeric': true},
                          //     {'label': 'BANNER', 'numeric': true},
                          //     {'label': 'REGULAR (B2C)', 'numeric': true},
                          //     {'label': 'REGULAR (B2B)', 'numeric': true},
                          //   ],
                          //   rowsData: [
                          //     [
                          //       BodyText(text: 'New sales'),
                          //       BodyTextSubText(
                          //         bodyText: '₹ 99,99,999.00',
                          //         subText: '(999.99%)',
                          //       ),
                          //       BodyTextSubText(
                          //         bodyText: '₹ 99,99,999.00',
                          //         subText: '(999.99%)',
                          //       ),
                          //       BodyTextSubText(
                          //         bodyText: '₹ 99,99,999.00',
                          //         subText: '(999.99%)',
                          //       ),
                          //       BodyTextSubText(
                          //         bodyText: '₹ 99,99,999.00',
                          //         subText: '(999.99%)',
                          //       ),
                          //       BodyTextSubText(
                          //         bodyText: '₹ 99,99,999.00',
                          //         subText: '(999.99%)',
                          //       ),
                          //     ],
                          //   ],
                          // ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
