import 'package:flutter/material.dart';

class AddEventScreen extends StatefulWidget {
  @override
  _AddEventScreenState createState() => _AddEventScreenState();
}

class EventDetailsData {
  final String eventName;
  final String eventDate;
  final String eventTime;
  final String eventLocation;
  final String eventDescription;
  final String clubInvolved;
  bool isDone; 

  EventDetailsData({
    required this.eventName,
    required this.eventDate,
    required this.eventTime,
    required this.eventLocation,
    required this.eventDescription,
    required this.clubInvolved,
    this.isDone = false, 
  });
}

class _AddEventScreenState extends State<AddEventScreen> {
  TextEditingController eventNameController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController timeController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController clubInvolvedController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add New Event'),
        backgroundColor: Colors.purple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                controller: eventNameController,
                decoration: InputDecoration(labelText: 'Event Name'),
              ),
              TextField(
                controller: dateController,
                decoration: InputDecoration(labelText: 'Date'),
              ),
              TextField(
                controller: timeController,
                decoration: InputDecoration(labelText: 'Time'),
              ),
              TextField(
                controller: locationController,
                decoration: InputDecoration(labelText: 'Location'),
              ),
              TextField(
                controller: descriptionController,
                decoration: InputDecoration(labelText: 'Description'),
              ),
              TextField(
                controller: clubInvolvedController,
                decoration: InputDecoration(labelText: 'Club Involved'),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  EventDetailsData newEventData = EventDetailsData(
                    eventName: eventNameController.text,
                    eventDate: dateController.text,
                    eventTime: timeController.text,
                    eventLocation: locationController.text,
                    eventDescription: descriptionController.text,
                    clubInvolved:  clubInvolvedController.text,
                  );

                  Navigator.pop(context, newEventData);
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.purple, 
                ),
                child: Text('Save Event'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

