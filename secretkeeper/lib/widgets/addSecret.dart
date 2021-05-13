import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:secretkeeper/models/breakpoints.dart';

enum types { password, notes, cards, account }

class AddSecret extends StatefulWidget {
  @override
  _AddSecretState createState() => _AddSecretState();
}

class _AddSecretState extends State<AddSecret> {
  types selectedType = types.password;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      double plainTextSize;
      double headingTextSize;
      Breakpoints.isDesktop(constraints)
          ? plainTextSize = 20
          : plainTextSize = 16;
      Breakpoints.isDesktop(constraints)
          ? headingTextSize = 32
          : headingTextSize = 24;
      return DefaultTabController(
        length: 4,
        child: Column(
          children: [
            Breakpoints.isMobile(constraints)
                ? Text(
                    "Add a Secret",
                    style: TextStyle(
                      fontSize: headingTextSize,
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                : SizedBox(
                    height: 0,
                  ),
            SizedBox(
              height: 24,
            ),
            TabBar(
              labelColor: Theme.of(context).backgroundColor,
              unselectedLabelColor: Theme.of(context).primaryColor,
              enableFeedback: true,
              indicatorPadding: EdgeInsets.all(0),
              // isScrollable: true,
              overlayColor:
                  MaterialStateProperty.all<Color?>(Colors.transparent),
              indicator: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(36.0),
                  topRight: Radius.circular(36.0),
                ),
              ),
              labelStyle: TextStyle(
                fontSize: plainTextSize + 2,
              ),
              unselectedLabelStyle: TextStyle(
                fontSize: plainTextSize - 2,
              ),
              tabs: Breakpoints.isMobile(constraints)
                  ? [
                      Tab(
                        icon: Icon(Icons.security),
                      ),
                      Tab(
                        icon: Icon(Icons.note),
                      ),
                      Tab(
                        icon: Icon(Icons.credit_card_rounded),
                      ),
                      Tab(
                        icon: Icon(Icons.account_balance_rounded),
                      ),
                    ]
                  : [
                      Tab(
                        text: "Password",
                      ),
                      Tab(
                        text: "Note",
                      ),
                      Tab(
                        text: "Card",
                      ),
                      Tab(
                        text: "Accounts",
                      ),
                    ],
            ),
            Expanded(
              child: TabBarView(children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Theme.of(context).primaryColor,
                      width: 4,
                    ),
                  ),
                  padding: EdgeInsets.all(constraints.maxWidth * 0.01),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Text(
                              "Title",
                              style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontSize: plainTextSize,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: Breakpoints.isMobile(constraints) ? 2 : 4,
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(32.0),
                                  ),
                                ),
                                filled: true,
                                fillColor: Colors.white,
                                hintText: "Title",
                                hintStyle: TextStyle(
                                  fontSize: plainTextSize,
                                ),
                              ),
                              enableSuggestions: true,
                              style: TextStyle(
                                fontSize: plainTextSize,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Text(
                              "Username",
                              style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontSize: plainTextSize,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: Breakpoints.isMobile(constraints) ? 2 : 4,
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(32.0),
                                  ),
                                ),
                                filled: true,
                                fillColor: Colors.white,
                                hintText: "Username",
                                hintStyle: TextStyle(
                                  fontSize: plainTextSize,
                                ),
                              ),
                              enableSuggestions: true,
                              style: TextStyle(
                                fontSize: plainTextSize,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Text(
                              "Password",
                              style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontSize: plainTextSize,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: Breakpoints.isMobile(constraints) ? 2 : 4,
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(32.0),
                                  ),
                                ),
                                filled: true,
                                fillColor: Colors.white,
                                hintText: "Password",
                                hintStyle: TextStyle(
                                  fontSize: plainTextSize,
                                ),
                              ),
                              enableSuggestions: true,
                              style: TextStyle(
                                fontSize: plainTextSize,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        thickness: 4,
                        color: Theme.of(context).primaryColor,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Text(
                              "Master Key",
                              style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontSize: plainTextSize,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: Breakpoints.isMobile(constraints) ? 2 : 4,
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(32.0),
                                  ),
                                ),
                                filled: true,
                                fillColor: Colors.white,
                                hintText: "Master Key",
                                hintStyle: TextStyle(
                                  fontSize: plainTextSize,
                                ),
                              ),
                              enableSuggestions: true,
                              style: TextStyle(
                                fontSize: plainTextSize,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            child: Text(
                              'Cancel',
                              style: TextStyle(
                                fontSize: plainTextSize,
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                          SizedBox(
                            width: 32,
                          ),
                          TextButton(
                            child: Text(
                              'Add Entry',
                              style: TextStyle(
                                fontSize: plainTextSize,
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Theme.of(context).primaryColor,
                      width: 4,
                    ),
                  ),
                  padding: EdgeInsets.all(constraints.maxWidth * 0.01),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Text(
                              "Title",
                              style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontSize: plainTextSize,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 4,
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(32.0),
                                  ),
                                ),
                                filled: true,
                                fillColor: Colors.white,
                                hintText: "Title",
                                hintStyle: TextStyle(
                                  fontSize: plainTextSize,
                                ),
                              ),
                              enableSuggestions: true,
                              style: TextStyle(
                                fontSize: plainTextSize,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Text(
                              "Note",
                              style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontSize: plainTextSize,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 4,
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(32.0),
                                  ),
                                ),
                                filled: true,
                                fillColor: Colors.white,
                                hintText: "Note",
                                hintStyle: TextStyle(
                                  fontSize: plainTextSize,
                                ),
                              ),
                              enableSuggestions: true,
                              style: TextStyle(
                                fontSize: plainTextSize,
                              ),
                              maxLines: 5,
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        thickness: 4,
                        color: Theme.of(context).primaryColor,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Text(
                              "Master Key",
                              style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontSize: plainTextSize,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: Breakpoints.isMobile(constraints) ? 2 : 4,
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(32.0),
                                  ),
                                ),
                                filled: true,
                                fillColor: Colors.white,
                                hintText: "Master Key",
                                hintStyle: TextStyle(
                                  fontSize: plainTextSize,
                                ),
                              ),
                              enableSuggestions: true,
                              style: TextStyle(
                                fontSize: plainTextSize,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            child: Text(
                              'Cancel',
                              style: TextStyle(
                                fontSize: plainTextSize,
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                          SizedBox(
                            width: 32,
                          ),
                          TextButton(
                            child: Text(
                              'Add Entry',
                              style: TextStyle(
                                fontSize: plainTextSize,
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Theme.of(context).primaryColor,
                      width: 4,
                    ),
                    color: Colors.cyan,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Theme.of(context).primaryColor,
                      width: 4,
                    ),
                    color: Colors.deepPurple,
                  ),
                ),
              ]),
            )
          ],
        ),
      );
    });
  }
}