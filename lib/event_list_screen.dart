import 'package:flutter/material.dart';
import 'event_details_screen.dart';
import 'add_event_screen.dart';

class EventListScreen extends StatefulWidget {
  @override
  _EventListScreenState createState() => _EventListScreenState();
}

class _EventListScreenState extends State<EventListScreen> {
  List<EventDetailsData> events = [
    EventDetailsData(
      eventName: 'Malam Asimilasi',
      eventDate: '29 January 2024',
      eventTime: '8.30 PM - 12.00 PM',
      eventLocation: 'Dewan Sultan Mizan',
      eventDescription: 'Pementasan Teater "Teguh"',
      clubInvolved: 'LO',
      isDone: false,
    ),
    EventDetailsData(
      eventName: 'Pesta Jom Kambuh',
      eventDate: '21 January 2024',
      eventTime: '8.30 PM - 12.00 PM',
      eventLocation: 'Dewan Sultan Mizan',
      eventDescription: 'Cultural Event of Sarawakian',
      clubInvolved: 'KKS,VOH,PT',
      isDone: false,
    ),
    EventDetailsData(
      eventName: 'Jom Masuk U',
      eventDate: '9 June 2024 - 11 June 2024',
      eventTime: '9:00 AM - 5.00 PM',
      eventLocation: 'Dewan Sultan Mizan',
      eventDescription: 'Event to attract people to apply UMT as their choice for continue study.',
      clubInvolved: 'GEM, VOH, KKS, KMS',
      isDone: false,
    ),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Of Event'),
        backgroundColor: Colors.purple,
      ),
      body: ListView.builder(
        itemCount: events.length,
        itemBuilder: (context, index) {
          return Card(
            color: Color.fromRGBO(250, 228, 252, 1),
            child: ListTile(
              title: Text(
                events[index].eventName,
                style: TextStyle(
                  decoration: events[index].isDone ? TextDecoration.lineThrough : TextDecoration.none,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'OpenSans',
                ),
              ),
              subtitle: Text(
                '${events[index].eventDate} (${events[index].eventTime})',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Quicksand',
                  color: const Color.fromARGB(255, 46, 45, 45)
                  
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EventDetailsScreen(eventDetails: events[index]),
                  ),
                );
              },
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Checkbox(
                    value: events[index].isDone,
                    onChanged: (value) {
                      setState(() {
                        events[index].isDone = value ?? false;
                      });
                    },
                    checkColor: Colors.black,
                  ),
                  IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () {
                      setState(() {
                        events.removeAt(index);
                      });
                    },
                    color: const Color.fromARGB(255, 255, 94, 82),
                  ),
                ],
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          EventDetailsData? newEventData = await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AddEventScreen(),
            ),
          );

          if (newEventData != null) {
            setState(() {
              events.add(newEventData);
            });
          }
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.purple,
      ),
    );
  }
}
