import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:theme_switching/styles/styles.dart';

extension StringX on String {
  String get overflow => Characters(this)
      .replaceAll(Characters(''), Characters('\u{200B}'))
      .toString();
}

class MailListItem extends StatefulWidget {
  const MailListItem({
    Key? key,
    required this.from,
    required this.mailbox,
    required this.time,
    required this.subject,
    required this.content,
    this.selected = false,
    this.onPressed,
  }) : super(key: key);

  static final dateFormat = DateFormat().add_jm();
  final String from;
  final String mailbox;
  final DateTime time;
  final String subject;
  final String content;
  final bool selected;
  final VoidCallback? onPressed;

  @override
  _MailListItemState createState() => _MailListItemState();
}

class _MailListItemState extends State<MailListItem>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController;
  late final Animation<EdgeInsets> _position;
  late final Animation<double> _opacity;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );

    _position = EdgeInsetsTween(
      begin: EdgeInsets.only(
        left: 80,
      ),
      end: EdgeInsets.zero,
    ).animate(_animationController);

    _opacity = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(_animationController);

    _animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    final theme = widget.selected ? Theming.dark : Theme.of(context);

    return AnimatedBuilder(
      animation: _animationController,
      builder: (_, child) {
        return Opacity(
          opacity: _opacity.value,
          child: Container(
            margin: _position.value,
            child: child!,
          ),
        );
      },
      child: SizedBox(
        height: 80,
        child: InkWell(
          onTap: widget.onPressed,
          borderRadius: BorderRadius.circular(5),
          child: Card(
            color: widget.selected
                ? theme.highlightColor
                : theme.scaffoldBackgroundColor,
            child: Container(
              padding: const EdgeInsets.only(
                left: 24,
                right: 10,
              ),
              alignment: Alignment.center,
              child: DefaultTextStyle(
                style: theme.textTheme.bodyText1!,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          widget.from,
                          style: theme.textTheme.headline6,
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
                                    widget.mailbox.overflow,
                                    maxLines: 1,
                                    softWrap: false,
                                    textAlign: TextAlign.right,
                                    overflow: TextOverflow.ellipsis,
                                    // softWrap: false,
                                  ),
                                ),
                              ),
                              Text(MailListItem.dateFormat.format(widget.time)),
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
                        widget.subject.overflow,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        softWrap: true,
                        style: theme.textTheme.subtitle2,
                      ),
                    ),
                    Text(
                      widget.content,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();

    super.dispose();
  }
}
