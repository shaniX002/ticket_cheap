import 'package:flutter/material.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:intl/intl.dart';
import 'package:ticket_cheap/constant/ctm_texttheme.dart';
import '../apis/gemini_api.dart';
import '../models/gemini_model.dart';

class ChatbotScreen extends StatefulWidget {
  const ChatbotScreen({super.key});

  @override
  State<ChatbotScreen> createState() => _ChatbotScreenState();
}

class _ChatbotScreenState extends State<ChatbotScreen> {
  TextEditingController promptController = TextEditingController();

  Future<void> sendMessage() async {
    final message = promptController.text;
    promptController.clear();
    // for prompt
    setState(() {
      prompt.add(
          ModelMessage(isprompt: true, message: message, time: DateTime.now()));
    });

    // for response
    final content = [Content.text(message)];
    final repsone = await model.generateContent(content);
    setState(() {
      prompt.add(ModelMessage(
          isprompt: false, message: repsone.text ?? "", time: DateTime.now()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              children: [
                Expanded(
                  flex: 40,
                  child: SizedBox(
                    height: 50,
                    child: TextField(
                      controller: promptController,
                      style: const TextStyle(fontSize: 18, color: Colors.black),
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          hintText: 'About Flights',
                          hintStyle: TTextTheme.captionBlack
                              .copyWith(color: Colors.black45)),
                    ),
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    sendMessage();
                  },
                  child: CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.cyan.shade600,
                    child: const Align(
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.send,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: prompt.length,
                  itemBuilder: (context, index) {
                    final message = prompt[index];
                    return UserPrompt(
                        isprompt: message.isprompt,
                        message: message.message,
                        date: DateFormat('hh:mm a').format(message.time));
                  })),
        ],
      )),
    );
  }

  // ignore: non_constant_identifier_names
  Container UserPrompt(
      {required final bool isprompt,
      required String message,
      required String date}) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.symmetric(vertical: 15)
          .copyWith(left: isprompt ? 80 : 15, right: isprompt ? 15 : 80),
      decoration: BoxDecoration(
          color: isprompt ? Colors.grey : Colors.cyan[50],
          borderRadius: BorderRadius.only(
            topLeft: const Radius.circular(20),
            topRight: const Radius.circular(20),
            bottomLeft: isprompt ? const Radius.circular(20) : Radius.zero,
            bottomRight: isprompt ? Radius.zero : const Radius.circular(20),
          )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // for prompt and response
          Text(
            message,
            style: TextStyle(
                fontSize: 16,
                fontWeight: isprompt ? FontWeight.bold : FontWeight.normal,
                color: isprompt ? Colors.white : Colors.black),
          ),
          // for prompt and response time
          Text(
            date,
            style: TextStyle(
                fontSize: 10, color: isprompt ? Colors.white : Colors.black),
          ),
        ],
      ),
    );
  }
}
