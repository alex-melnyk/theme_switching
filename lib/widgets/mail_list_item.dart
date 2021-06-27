import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

extension StringX on String {
  String get overflow => Characters(this)
      .replaceAll(Characters(''), Characters('\u{200B}'))
      .toString();
}

class MailListItem extends StatelessWidget {
  const MailListItem({
    Key? key,
    required this.from,
    required this.mailbox,
    required this.time,
    required this.subject,
    required this.content,
    this.selected = false,
  }) : super(key: key);

  static final dateFormat = DateFormat().add_jm();
  final String from;
  final String mailbox;
  final DateTime time;
  final String subject;
  final String content;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    final theme = selected ? ThemeData.dark() : Theme.of(context);

    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 24,
            right: 8,
          ),
          child: Divider(
            height: 1,
          ),
        ),
        Container(
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            color: selected ? Colors.blue : Colors.transparent,
            borderRadius: BorderRadius.circular(5),
          ),
          padding: const EdgeInsets.only(
            left: 24,
            top: 8,
            right: 10,
            bottom: 8,
          ),
          child: DefaultTextStyle(
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: theme.disabledColor,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      from,
                      style: TextStyle(
                        fontSize: 14.5,
                        color: theme.textTheme.bodyText1?.color,
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8,
                              ),
                              child: Text(
                                mailbox.overflow,
                                maxLines: 1,
                                softWrap: false,
                                textAlign: TextAlign.right,
                                overflow: TextOverflow.ellipsis,
                                // softWrap: false,
                              ),
                            ),
                          ),
                          Text(dateFormat.format(time)),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 4,
                  ),
                  child: Text(
                    subject.overflow,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    softWrap: true,
                    style: TextStyle(
                      color: theme.textTheme.bodyText1?.color,
                    ),
                  ),
                ),
                Text(
                  content,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
