import 'package:flutter/material.dart';
import 'add_event_screen.dart';

class EventDetailsScreen extends StatelessWidget {
  final EventDetailsData eventDetails;

  EventDetailsScreen({required this.eventDetails});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Event Details'),
        backgroundColor: Colors.purple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Event: ${eventDetails.eventName}',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, fontFamily: 'OpenSans'),
            ),
            Text(
              'Date: ${eventDetails.eventDate}',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.normal, fontFamily: 'OpenSans'),
            ),
            Text(
              'Time: ${eventDetails.eventTime}',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.normal, fontFamily: 'OpenSans'),
            ),
            Text(
              'Location: ${eventDetails.eventLocation}',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.normal, fontFamily: 'OpenSans'),
            ),
            Text(
              'Description: ${eventDetails.eventDescription}',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.normal, fontFamily: 'OpenSans'),
            ),
            Text(
              'Club Involved: ${eventDetails.clubInvolved}',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.normal, fontFamily: 'OpenSans'),
            ),
          ],
        ),
      ),
    );
  }
}
