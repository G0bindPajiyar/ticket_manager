import 'package:event_tracker/features/scanned-tickers.dart';
import 'package:flutter/material.dart';

class TakeTicketFormPage extends StatefulWidget {
  const TakeTicketFormPage({super.key});

  @override
  State<TakeTicketFormPage> createState() => _TakeTicketFormPageState();
}

class _TakeTicketFormPageState extends State<TakeTicketFormPage> {
  TextEditingController _scannedByController = TextEditingController();
  TextEditingController _notesController = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    _scannedByController = TextEditingController();
    _notesController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _scannedByController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Take Ticket",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            inputField("Scanned By", _scannedByController),
            SizedBox(
              height: 20,
            ),
            inputField("Notes", _notesController),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ScannedTickets()));
              },
              child: Container(
                height: 40,
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.blue[900],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                    child: Text(
                  "Sumbit",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                )),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget inputField(
    String hintText,
    TextEditingController controller,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "$hintText",
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        TextField(
          controller: controller,
          style: TextStyle(
            fontSize: 18,
          ),
          decoration: InputDecoration(
            contentPadding: EdgeInsets.only(
              left: 10,
            ),
            border: InputBorder.none,
            hintText: hintText,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(
                color: Colors.grey,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(
                color: Colors.black,
              ),
            ),
          ),
        ),
      ],
    );
  }
}