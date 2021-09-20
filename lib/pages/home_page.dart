import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:theme_switching/beans/beans.dart';
import 'package:theme_switching/widgets/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _selected = ValueNotifier<int?>(null);
  final _mailsList = ValueNotifier<List<MailBean>>([]);

  @override
  void initState() {
    super.initState();

    _loadMails().then((mails) => _mailsList.value = mails);
  }

  Future<List<MailBean>> _loadMails({bool simulateLoading = false}) async {
    final mocks = await rootBundle.loadStructuredData<List>(
      'assets/mock/data.json',
      (json) async => jsonDecode(json),
    );

    if (simulateLoading) {
      await Future.delayed(Duration(seconds: 1));
    }

    return mocks.map((e) => MailBean.fromMap(e)).toList(growable: false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          final viewInsets = MediaQuery.of(context);
          final portrait = constraints.maxWidth < constraints.maxHeight;

          return SafeArea(
            bottom: !portrait,
            child: RefreshIndicator(
              onRefresh: () async {
                _mailsList.value = await _loadMails(simulateLoading: true);
              },
              child: ValueListenableBuilder<List<MailBean>>(
                valueListenable: _mailsList,
                builder: (_, mailsList, __) {
                  return ValueListenableBuilder<int?>(
                    valueListenable: _selected,
                    builder: (_, selectedIndex, __) {
                      return ListView.separated(
                        padding: EdgeInsets.only(
                          left: 8,
                          top: 8,
                          right: 8,
                          bottom: portrait ? viewInsets.viewPadding.bottom : 8,
                        ),
                        itemCount: mailsList.length,
                        itemBuilder: (_, index) {
                          final mail = mailsList.elementAt(index);

                          return MailListItem(
                            from: mail.from,
                            mailbox: mail.mailbox,
                            time: mail.time,
                            subject: mail.subject,
                            content: mail.content,
                            onPressed: () {
                              if (index == _selected.value) {
                                _selected.value = null;
                              } else {
                                _selected.value = index;
                              }
                            },
                            selected: selectedIndex == index,
                          );
                        },
                        separatorBuilder: (_, index) {
                          return Padding(
                            padding: const EdgeInsets.only(
                              left: 24,
                              right: 8,
                            ),
                            child: Divider(
                              height: 0,
                            ),
                          );
                        },
                      );
                    },
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
