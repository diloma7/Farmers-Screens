import 'package:farmers_network_screens/widgets/CustomAppBar_details.dart';
import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:intl/intl.dart';

class ChatRoom extends StatefulWidget {
  const ChatRoom({Key? key}) : super(key: key);

  @override
  State<ChatRoom> createState() => _ChatRoomState();
}

class _ChatRoomState extends State<ChatRoom> {
  final TextEditingController messageController = TextEditingController();
  List<Message> messages = [
    Message(
      MsgText: "Hi How are you?",
      date: DateTime.now().subtract(const Duration(minutes: 1)),
      isSentBye: true,
    ),
    Message(
      MsgText: "Hi. Good thanks. And How are you?",
      date: DateTime.now().subtract(const Duration(minutes: 1)),
      isSentBye: false,
    ),
    Message(
      MsgText: "I'm fine thanks",
      date: DateTime.now().subtract(const Duration(minutes: 1)),
      isSentBye: true,
    ),
    Message(
      MsgText: "What's up dude?",
      date: DateTime.now().subtract(const Duration(minutes: 1)),
      isSentBye: false,
    ),
    Message(
      MsgText: "None much, just chilling. Your side",
      date: DateTime.now().subtract(const Duration(minutes: 1)),
      isSentBye: true,
    ),
    Message(
      MsgText: "You know most, same story of boredom",
      date: DateTime.now().subtract(const Duration(minutes: 1)),
      isSentBye: false,
    ),
    Message(
      MsgText: "Yeah it ain't easy hey broski",
      date: DateTime.now().subtract(const Duration(minutes: 1)),
      isSentBye: true,
    ),
    Message(
      MsgText: "Definitly Not",
      date: DateTime.now().subtract(const Duration(minutes: 1)),
      isSentBye: false,
    ),
    Message(
      MsgText: "What about soccer most?",
      date: DateTime.now().subtract(const Duration(minutes: 1)),
      isSentBye: true,
    ),
    Message(
      MsgText: "Will see how the season goes, been preparing though.",
      date: DateTime.now().subtract(const Duration(minutes: 1)),
      isSentBye: false,
    ),
  ].reversed.toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: const CustomAppbar_Details(
        backgroundColor: Color.fromARGB(183, 26, 93, 27),
        title: 'Chat',
      ),
      body: SingleChildScrollView(
        child: Container(
          height: 600,
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                child: GroupedListView<Message, DateTime>(
                  padding: const EdgeInsets.all(8),
                  reverse: true,
                  order: GroupedListOrder.DESC,
                  useStickyGroupSeparators: true,
                  floatingHeader: true,
                  elements: messages,
                  groupBy: (message) => DateTime(
                    message.date.year,
                    message.date.month,
                    message.date.day,
                  ),
                  groupHeaderBuilder: (Message message) => SizedBox(
                    height: 40,
                    child: Center(
                      child: Card(
                        color: Colors.indigo[700],
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            DateFormat.yMMMd().format(message.date),
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                  itemBuilder: (context, element) => Align(
                    alignment: element.isSentBye
                        ? Alignment.centerRight
                        : Alignment.centerLeft,
                    child: Card(
                      elevation: 8,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(element.MsgText),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 60,
                color: Color.fromARGB(90, 146, 143, 143),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: TextField(
                          controller: messageController,
                          onSubmitted: (text) {
                            var newMsg = Message(
                              MsgText: text,
                              date: DateTime.now(),
                              isSentBye: true,
                            );
                            setState(() {
                              messages.add(newMsg);

                              messageController.clear();
                            });
                          },
                          onChanged: (value) {
                            messageController.text = value;

                            debugPrint(messageController.text);
                          },
                          decoration: InputDecoration(
                            suffixIcon: const Icon(
                              Icons.send,
                              size: 30,
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30)),
                            hintText: 'Type your message here',
                            contentPadding: EdgeInsets.all(
                              8,
                            ),
                          ),
                        ),
                      ),
                      // const Padding(
                      //   padding: EdgeInsets.only(right: 8.0),
                      //   child: Icon(
                      //     Icons.send,
                      //     size: 40,
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0, bottom: 8),
                child: Container(
                  height: 25,
                  width: 140,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(3)),
                  child: const Center(
                    child: Text(
                      "Rate Provider!",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Message {
  final String MsgText;
  final DateTime date;
  final bool isSentBye;

  Message({
    required this.MsgText,
    required this.date,
    required this.isSentBye,
  });
}
