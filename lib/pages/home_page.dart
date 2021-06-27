import 'package:flutter/material.dart';
import 'package:theme_switching/widgets/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final dateTime = DateTime.now();

    return Scaffold(
      body: SafeArea(
        child: Container(
          child: ListView(
            padding: const EdgeInsets.all(8),
            children: [
              MailListItem(
                from: 'John Doe via Upwork',
                mailbox: 'Inbox - flutter.dev@gmail.com',
                time: DateTime(2021, 6, 27, 13, 40),
                subject:
                    'You have unread messages about the job Senior Client Side Developer',
                content:
                    'Replay to new messages You have unread messages for Senior Client Side Developer John Doe 12:47 PM EEST, 27 Jun 2021 great!! thank you',
                selected: true,
              ),
              MailListItem(
                from: 'Medium Daily Digest',
                mailbox: 'Inbox - flutter.dev@gmail.com',
                time: DateTime(2021, 6, 27, 7, 50),
                subject:
                    'Software development has no obligation to make sense to development',
                content:
                    'Stories for Alex Melnyk @alexmelnyk·Member From your following Edit who you follow The John in LITSLINK· 4 min read Story',
              ),
              MailListItem(
                from: 'Upwork',
                mailbox: 'Inbox - flutter.dev@gmail.com',
                time: DateTime(2021, 6, 27, 3, 3),
                subject: 'New Upwork job opportunities for Alex',
                content:
                    'We love to share job posts that match your skills and give you more choices. Great jobs needing more proposals Senior Mobile Developer',
              ),
              MailListItem(
                from: 'John Doe via Upwork',
                mailbox: 'Inbox - flutter.dev@gmail.com',
                time: DateTime(2021, 6, 27, 13, 40),
                subject:
                    'You have unread messages about the job Senior Client Side Developer',
                content:
                    'Replay to new messages You have unread messages for Senior Client Side Developer John Doe 12:47 PM EEST, 27 Jun 2021 great!! thank you',
              ),
              MailListItem(
                from: 'Medium Daily Digest',
                mailbox: 'Inbox - flutter.dev@gmail.com',
                time: DateTime(2021, 6, 27, 7, 50),
                subject:
                    'Software development has no obligation to make sense to development',
                content:
                    'Stories for Alex Melnyk @alexmelnyk·Member From your following Edit who you follow The John in LITSLINK· 4 min read Story',
              ),
              MailListItem(
                from: 'Upwork',
                mailbox: 'Inbox - flutter.dev@gmail.com',
                time: DateTime(2021, 6, 27, 3, 3),
                subject: 'New Upwork job opportunities for Alex',
                content:
                    'We love to share job posts that match your skills and give you more choices. Great jobs needing more proposals Senior Mobile Developer',
              ),
              MailListItem(
                from: 'John Doe via Upwork',
                mailbox: 'Inbox - flutter.dev@gmail.com',
                time: DateTime(2021, 6, 27, 13, 40),
                subject:
                    'You have unread messages about the job Senior Client Side Developer',
                content:
                    'Replay to new messages You have unread messages for Senior Client Side Developer John Doe 12:47 PM EEST, 27 Jun 2021 great!! thank you',
              ),
              MailListItem(
                from: 'Medium Daily Digest',
                mailbox: 'Inbox - flutter.dev@gmail.com',
                time: DateTime(2021, 6, 27, 7, 50),
                subject:
                    'Software development has no obligation to make sense to development',
                content:
                    'Stories for Alex Melnyk @alexmelnyk·Member From your following Edit who you follow The John in LITSLINK· 4 min read Story',
              ),
              MailListItem(
                from: 'Upwork',
                mailbox: 'Inbox - flutter.dev@gmail.com',
                time: DateTime(2021, 6, 27, 3, 3),
                subject: 'New Upwork job opportunities for Alex',
                content:
                    'We love to share job posts that match your skills and give you more choices. Great jobs needing more proposals Senior Mobile Developer',
              ),
              MailListItem(
                from: 'John Doe via Upwork',
                mailbox: 'Inbox - flutter.dev@gmail.com',
                time: DateTime(2021, 6, 27, 13, 40),
                subject:
                    'You have unread messages about the job Senior Client Side Developer',
                content:
                    'Replay to new messages You have unread messages for Senior Client Side Developer John Doe 12:47 PM EEST, 27 Jun 2021 great!! thank you',
              ),
              MailListItem(
                from: 'Medium Daily Digest',
                mailbox: 'Inbox - flutter.dev@gmail.com',
                time: DateTime(2021, 6, 27, 7, 50),
                subject:
                    'Software development has no obligation to make sense to development',
                content:
                    'Stories for Alex Melnyk @alexmelnyk·Member From your following Edit who you follow The John in LITSLINK· 4 min read Story',
              ),
              MailListItem(
                from: 'Upwork',
                mailbox: 'Inbox - flutter.dev@gmail.com',
                time: DateTime(2021, 6, 27, 3, 3),
                subject: 'New Upwork job opportunities for Alex',
                content:
                    'We love to share job posts that match your skills and give you more choices. Great jobs needing more proposals Senior Mobile Developer',
              ),
              MailListItem(
                from: 'John Doe via Upwork',
                mailbox: 'Inbox - flutter.dev@gmail.com',
                time: DateTime(2021, 6, 27, 13, 40),
                subject:
                    'You have unread messages about the job Senior Client Side Developer',
                content:
                    'Replay to new messages You have unread messages for Senior Client Side Developer John Doe 12:47 PM EEST, 27 Jun 2021 great!! thank you',
              ),
              MailListItem(
                from: 'Medium Daily Digest',
                mailbox: 'Inbox - flutter.dev@gmail.com',
                time: DateTime(2021, 6, 27, 7, 50),
                subject:
                    'Software development has no obligation to make sense to development',
                content:
                    'Stories for Alex Melnyk @alexmelnyk·Member From your following Edit who you follow The John in LITSLINK· 4 min read Story',
              ),
              MailListItem(
                from: 'Upwork',
                mailbox: 'Inbox - flutter.dev@gmail.com',
                time: DateTime(2021, 6, 27, 3, 3),
                subject: 'New Upwork job opportunities for Alex',
                content:
                    'We love to share job posts that match your skills and give you more choices. Great jobs needing more proposals Senior Mobile Developer',
              ),
              MailListItem(
                from: 'John Doe via Upwork',
                mailbox: 'Inbox - flutter.dev@gmail.com',
                time: DateTime(2021, 6, 27, 13, 40),
                subject:
                    'You have unread messages about the job Senior Client Side Developer',
                content:
                    'Replay to new messages You have unread messages for Senior Client Side Developer John Doe 12:47 PM EEST, 27 Jun 2021 great!! thank you',
              ),
              MailListItem(
                from: 'Medium Daily Digest',
                mailbox: 'Inbox - flutter.dev@gmail.com',
                time: DateTime(2021, 6, 27, 7, 50),
                subject:
                    'Software development has no obligation to make sense to development',
                content:
                    'Stories for Alex Melnyk @alexmelnyk·Member From your following Edit who you follow The John in LITSLINK· 4 min read Story',
              ),
              MailListItem(
                from: 'Upwork',
                mailbox: 'Inbox - flutter.dev@gmail.com',
                time: DateTime(2021, 6, 27, 3, 3),
                subject: 'New Upwork job opportunities for Alex',
                content:
                    'We love to share job posts that match your skills and give you more choices. Great jobs needing more proposals Senior Mobile Developer',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
