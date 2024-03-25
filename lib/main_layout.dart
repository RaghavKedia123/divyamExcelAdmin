import 'package:divyam_excel_admin/pages/business_listings/all_business_listings_page.dart';
import 'package:divyam_excel_admin/pages/categories/all_level_1_categories_page.dart';
import 'package:divyam_excel_admin/pages/categories/all_level_2_categories_page.dart';
import 'package:divyam_excel_admin/pages/categories/all_level_3_categories_page.dart';
import 'package:divyam_excel_admin/pages/commission/all_commissions_page.dart';
import 'package:divyam_excel_admin/pages/commission/commission_approval_page.dart';
import 'package:divyam_excel_admin/pages/complaints/all_complaints_page.dart';
import 'package:divyam_excel_admin/pages/complaints/pending_complaints_page.dart';
import 'package:divyam_excel_admin/pages/daily_prize/all_contest_participants_page.dart';
import 'package:divyam_excel_admin/pages/daily_prize/all_daily_prize_contests_page.dart';
import 'package:divyam_excel_admin/pages/daily_prize/all_daily_prize_tasks_page.dart';
import 'package:divyam_excel_admin/pages/events/all_events_page.dart';
import 'package:divyam_excel_admin/pages/events/pending_events_approval_page.dart';
import 'package:divyam_excel_admin/pages/famous/all_famous_page.dart';
import 'package:divyam_excel_admin/pages/famous/pending_famous_approval_page.dart';
import 'package:divyam_excel_admin/pages/group_messages/all_group_whatsapp_messages_dart.dart';
import 'package:divyam_excel_admin/pages/group_messages/group_whatsapp_messages_templates_page.dart';
import 'package:divyam_excel_admin/pages/locations/all_areas_page.dart';
import 'package:divyam_excel_admin/pages/locations/all_districts_page.dart';
import 'package:divyam_excel_admin/pages/locations/all_metro_cities_page.dart';
import 'package:divyam_excel_admin/pages/locations/all_states_page.dart';
import 'package:divyam_excel_admin/pages/locations/all_talukas_page.dart';
import 'package:divyam_excel_admin/pages/offer_rates/all_offer_rates_page.dart';
import 'package:divyam_excel_admin/pages/offers/all_offers_page.dart';
import 'package:divyam_excel_admin/pages/offers/pending_offers_approval_page.dart';
import 'package:divyam_excel_admin/pages/office/office_staff_page.dart';
import 'package:divyam_excel_admin/pages/publications/all_publications_page.dart';
import 'package:divyam_excel_admin/pages/publications/pending_publications_approval_page.dart';
import 'package:divyam_excel_admin/pages/reports/approval_activities_status_report_page.dart';
import 'package:divyam_excel_admin/pages/reports/commission_overview_report.dart';
import 'package:divyam_excel_admin/pages/reports/complaints_status_report_page.dart';
import 'package:divyam_excel_admin/pages/reports/daily_prize_overview_report_page.dart';
import 'package:divyam_excel_admin/pages/reports/nonapproval_activities_status_report_page.dart';
import 'package:divyam_excel_admin/pages/reports/sales_overview_report.dart';
import 'package:divyam_excel_admin/pages/reports/tickets_status_report_page.dart';
import 'package:divyam_excel_admin/pages/reports/users_overview.dart';
import 'package:divyam_excel_admin/pages/reports/users_performance_report.dart';
import 'package:divyam_excel_admin/pages/restricted_phrases/all_restricted_phrases_pages.dart';
import 'package:divyam_excel_admin/pages/tickets/all_tickets_page.dart';
import 'package:divyam_excel_admin/pages/tickets/open_tickets_page.dart';
import 'package:divyam_excel_admin/pages/users/all_users_page.dart';
import 'package:divyam_excel_admin/pages/users/pending_id_card_approvals_page.dart';
import 'package:divyam_excel_admin/pages/users/single_user_all_commissions_page.dart';
import 'package:divyam_excel_admin/pages/withdrawals/all_users_withdrawals_page.dart';
import 'package:divyam_excel_admin/pages/withdrawals/pending_franchise_withdrawals_page.dart';
import 'package:divyam_excel_admin/pages/withdrawals/pending_users_withdrawals_page.dart';
import 'package:flutter/material.dart';
import 'pages/admin_notifications/all_admin_notifications_page.dart';

class MainLayout extends StatefulWidget {
  MainLayout({super.key});

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  List<List<dynamic>> main = [
    ["AdminNotifications", false, Icons.notifications],
    ["BusinessListings", false, Icons.business],
    ["Categories", false, Icons.category],
    ["Commissions", false, Icons.monetization_on],
    ["Complaints", false, Icons.feedback],
    ["DailyPrize", false, Icons.card_giftcard],
    ["Events", false, Icons.event],
    ["Famous", false, Icons.star],
    ["GroupMessages", false, Icons.group],
    ["Locations", false, Icons.location_on],
    ["OfferRates", false, Icons.rate_review],
    ["Offers", false, Icons.local_offer],
    ["Office", false, Icons.work],
    ["Publications", false, Icons.library_books],
    ["Reports", false, Icons.insert_chart],
    ["RestrictedPhrases", false, Icons.policy],
    ["Tickets", false, Icons.help],
    ["Users", false, Icons.group],
    ["Withdrawals", false, Icons.money_off],
  ];

  List<Map<String, List<List<dynamic>>>> subLevel = [
    {
      "AdminNotifications": [
        ["AllAdminNotifications", AllAdminNotificationsPage(), 1, false],
      ]
    },
    {
      "BusinessListings": [
        ["AllBusinessListings", AllBusinessListingsPage(), 2, false],
      ]
    },
    {
      "Categories": [
        ["AllLevel1Categories", AllLevel1CategoriesPage(), 3, false],
        ["AllLevel2Categories", AllLevel2CategoriesPage(), 4, false],
        ["AllLevel3Categories", AllLevel3CategoriesPage(), 5, false],
      ]
    },
    {
      "Commissions": [
        ["AllCommissions", AllCommissionsPage(), 6, false],
        ["CommissionApproval", CommissionApprovalPage(), 7, false],
      ]
    },
    {
      "Complaints": [
        ["AllComplaints", AllComplaintsPage(), 8, false],
        ["PendingComplaints", PendingComplaintsPage(), 9, false],
      ]
    },
    {
      "DailyPrize": [
        ["AllContestParticipants", AllContestParticipantsPage(), 10, false],
        ["AllDailyPrizeContests", AllDailyPrizeContestsPage(), 11, false],
        ["AllDailyPrizeTasks", AllDailyPrizeTasksPage(), 12, false],
      ]
    },
    {
      "Events": [
        ["AllEvents", AllEventsPage(), 13, false],
        ["PendingEvents(Approval)", PendingEventsApprovalPage(), 14, false],
      ]
    },
    {
      "Famous": [
        ["AllFamous", AllFamousPage(), 15, false],
        ["PendingFamous(Approval)", PendingFamousApprovalPage(), 16, false],
      ]
    },
    {
      "GroupMessages": [
        ["AllGroupWhatsAppMessages", AllGroupWhatsappMessagesPage(), 17, false],
        [
          "GroupWhatsAppMessagesTemplates",
          GroupWhatsappMessagesTemplatesPage(),
          18,
          false
        ],
      ]
    },
    {
      "Locations": [
        ["AllAreas", AllAreasPage(), 19, false],
        ["AllDistricts", AllDistrictsPage(), 20, false],
        ["AllMetroCities", AllMetroCitiesPage(), 21, false],
        ["AllStates", AllStatesPage(), 22, false],
        ["AllTalukas", AllTalukasPage(), 23, false],
      ]
    },
    {
      "OfferRates": [
        ["AllOfferRates", AllOfferRatesPage(), 24, false],
      ]
    },
    {
      "Offers": [
        ["AllOffers", AllOffersPage(), 25, false],
        ["PendingOffers(Approval)", PendingOffersApprovalPage(), 26, false],
      ]
    },
    {
      "Office": [
        ["OfficeStaff", OfficeStaffPage(), 27, false],
      ]
    },
    {
      "Publications": [
        ["AllPublications", AllPublicationsPage(), 28, false],
        [
          "PendingPublications(Approval)",
          PendingPublicationsApprovals(),
          29,
          false
        ],
      ]
    },
    {
      "Reports": [
        [
          "ApprovalActivitiesStatusReport",
          ApprovalActivitiesStatusReportPage(),
          30,
          false
        ],
        ["CommissionOverviewReport", CommissionOverviewReportPage(), 31, false],
        ["ComplaintsStatusReport", DailyPrizeOverviewReport(), 32, false],
        ["DailyPrizeOverviewReport", DailyPrizeOverviewReport(), 33, false],
        [
          "Non-ApprovalActivitiesStatusReport",
          NonApprovalActivitiesStatusReportPage(),
          34,
          false
        ],
        ["SalesOverviewReport", SalesOverviewReportPage(), 35, false],
        ["TicketsStatusReport", TicketsStatusReportPage(), 36, false],
        ["UsersOverview", UsersOverviewPage(), 37, false],
        ["UsersPerformanceReport", UsersPerformanceReportPage(), 38, false],
      ]
    },
    {
      "RestrictedPhrases": [
        ["AllRestrictedPhrasesPages", AllRestrictedPhrasesPage(), 39, false],
      ]
    },
    {
      "Tickets": [
        ["AllTickets", AllTicketsPage(), 40, false],
        ["OpenTickets", OpenTicketsPage(), 41, false],
      ]
    },
    {
      "Users": [
        ["AllUsers", AllUsersPage(), 42, false],
        ["PendingIDCardApprovals", PendingIdCardApprovalsPage(), 43, false],
        ["SingleUserAllCommissions", SingleUserAllCommissionsPage(), 44, false],
      ]
    },
    {
      "Withdrawals": [
        ["AllUsersWithdrawals", AllUsersWithdrawalsPage(), 45, false],
        [
          "PendingFranchiseWithdrawals",
          PendingFranchiseWithdrawalsPage(),
          46,
          false
        ],
        ["PendingUsersWithdrawals", PendingUsersWithdrawalsPage(), 47, false],
      ]
    },
  ];

  Map<int, Widget> pages = {
    1: AllAdminNotificationsPage(),
    2: AllBusinessListingsPage(),
    3: AllLevel1CategoriesPage(),
    4: AllLevel2CategoriesPage(),
    5: AllLevel3CategoriesPage(),
    6: AllCommissionsPage(),
    7: CommissionApprovalPage(),
    8: AllComplaintsPage(),
    9: PendingComplaintsPage(),
    10: AllContestParticipantsPage(),
    11: AllDailyPrizeContestsPage(),
    12: AllDailyPrizeTasksPage(),
    13: AllEventsPage(),
    14: PendingEventsApprovalPage(),
    15: AllFamousPage(),
    16: PendingFamousApprovalPage(),
    17: AllGroupWhatsappMessagesPage(),
    18: GroupWhatsappMessagesTemplatesPage(),
    19: AllAreasPage(),
    20: AllDistrictsPage(),
    21: AllMetroCitiesPage(),
    22: AllStatesPage(),
    23: AllTalukasPage(),
    24: AllOfferRatesPage(),
    25: AllOffersPage(),
    26: PendingOffersApprovalPage(),
    27: OfficeStaffPage(),
    28: AllPublicationsPage(),
    29: PendingPublicationsApprovals(),
    30: ApprovalActivitiesStatusReportPage(),
    31: CommissionOverviewReportPage(),
    32: ComplaintsStatusReportPage(),
    33: DailyPrizeOverviewReport(),
    34: NonApprovalActivitiesStatusReportPage(),
    35: SalesOverviewReportPage(),
    36: TicketsStatusReportPage(),
    37: UsersOverviewPage(),
    38: UsersPerformanceReportPage(),
    39: AllRestrictedPhrasesPage(),
    40: AllTicketsPage(),
    41: OpenTicketsPage(),
    42: AllUsersPage(),
    43: PendingIdCardApprovalsPage(),
    44: SingleUserAllCommissionsPage(),
    45: AllUsersWithdrawalsPage(),
    46: PendingFranchiseWithdrawalsPage(),
    47: PendingUsersWithdrawalsPage(),
  };
  int? selectedIndex;
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    Widget? page;
    return Scaffold(
      body: Row(
        children: [
          Container(
            width: 240,
            height: MediaQuery.of(context).size.height,
            color: Colors.cyan,
            child: ListView.builder(
              itemCount: main.length,
              padding: EdgeInsets.zero,
              itemBuilder: (BuildContext context, int mainIndex) {
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    InkWell(
                      onTap: () {
                        main[mainIndex][1] = !main[mainIndex][1];
                        print(main[mainIndex][1]);
                        setState(() {});
                      },
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 8,
                          ),
                          Icon(
                            main[mainIndex][2],
                            color: Colors.white,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Text(
                            main[mainIndex][0],
                            style: const TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    main[mainIndex][1] == false
                        ? SizedBox()
                        : Container(
                            height: subLevel[mainIndex][main[mainIndex][0]]!
                                    .length *
                                23,
                            child: ListView.builder(
                              itemCount: subLevel[mainIndex]
                                      [main[mainIndex][0]]!
                                  .length,
                              padding: EdgeInsets.zero,
                              itemBuilder:
                                  (BuildContext context, int subIndex) {
                                return Container(
                                  color: subLevel[mainIndex][main[mainIndex]
                                              [0]]![subIndex][3] ==
                                          false
                                      ? Colors.transparent
                                      : Colors.white,
                                  child: InkWell(
                                    onTap: () {
                                      int a = 0;
                                      int b = 0;
                                      while (b <= main.length - 1) {
                                        while (a <=
                                            subLevel[b][main[b][0]]!.length -
                                                1) {
                                          subLevel[b][main[b][0]]![a][3] =
                                              false;
                                          a++;
                                        }
                                        a = 0;
                                        b++;
                                      }
                                      a = 0;
                                      b = 0;
                                      selectedIndex = subLevel[mainIndex]
                                          [main[mainIndex][0]]![subIndex][2];
                                      subLevel[mainIndex]
                                              [main[mainIndex][0]]![subIndex]
                                          [3] = !subLevel[
                                              mainIndex]
                                          [main[mainIndex][0]]![subIndex][3];
                                      setState(() {});
                                    },
                                    child: Text(
                                      "           ${subLevel[mainIndex][main[mainIndex][0]]![subIndex][0]}",
                                      style: TextStyle(
                                          color: subLevel[mainIndex][
                                                      main[mainIndex]
                                                          [0]]![subIndex][3] ==
                                                  false
                                              ? Colors.white
                                              : Colors.cyan),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                  ],
                );
              },
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minWidth: 1126,
                ),
                child: SizedBox(
                  height: screenHeight,
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 15),
                        SizedBox(
                          width: 1078,
                          child: pages[selectedIndex],
                        ),
                        SizedBox(height: 15),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
