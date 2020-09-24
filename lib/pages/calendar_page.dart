import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';
import 'package:salon_mos/Theme/constants.dart';

class CalendarPage extends StatefulWidget {
  CalendarPage({Key key}) : super(key: key);

  @override
  _CalendarPageState createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  CalendarCarousel calendarCarouselNoHeader;
  DateTime _currentDate = DateTime.now();
  EventList<Event> _markedDateMap = new EventList<Event>(
    events: {},
  );
  var date = new DateTime.now();

  @override
  void initState() {
    super.initState();
    _markedDateMap.add(
        new DateTime(date.year, date.month, date.day + 3),
        new Event(
          date: new DateTime(date.year, date.month, date.day + 3),
          title: 'Event 5',
          icon: _eventIcon,
        ));
  }

  static Widget _eventIcon = Container(
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(1000)),
        border: Border.all(color: Colors.blue, width: 2.0)),
    child: Icon(
      Icons.event_available,
      color: Colors.amber,
    ),
  );

  calendarWidget() {
    double cHeight;
    cHeight = MediaQuery.of(context).size.height * 0.66;
    calendarCarouselNoHeader = CalendarCarousel<Event>(
      customGridViewPhysics: NeverScrollableScrollPhysics(),
      pageScrollPhysics: NeverScrollableScrollPhysics(),
      height: cHeight,
      onDayPressed: (DateTime date, List<Event> events) {
        setState(() {
          // onEnter(date);
        });
      },
      headerTextStyle: TextStyle(color: Colors.black, fontSize: 20),
      weekdayTextStyle: TextStyle(
        color: Colors.black.withOpacity(0.5),
      ),
      iconColor: Colors.black,
      showOnlyCurrentMonthDate: true,
      weekendTextStyle: TextStyle(
        color: Colors.red,
      ),
      selectedDayButtonColor: Colors.blue,
      selectedDateTime: _currentDate,
      todayButtonColor: Colors.blue.withOpacity(0.5),
      markedDatesMap: _markedDateMap,
      markedDateShowIcon: true,
      markedDateIconMaxShown: 2,
      markedDateMoreShowTotal:
          true, // null for not showing hidden events indicator
      markedDateIconBuilder: (event) {
        return event.icon;
      },
      onCalendarChanged: (DateTime date) => null,
    );
    return calendarCarouselNoHeader;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.pink[200],
        iconTheme: IconThemeData(color: Colors.white),
        title: Text('My Calendar', style: SalonTheme.title),
        centerTitle: false,
      ),
      body: Container(
        width: double.infinity,
        child: calendarWidget(),
      ),
    );
  }
}
