/* --- Streams in dart --- */

/*
  - Stream is used to handle sequences of asynchronous events or data over time.
  - Streams are similar to Future, but instead of delivering a single value, they can deliver many values over time.
  - Streams are ideal for handling events like user inputs, data received from a web service, or even file system changes.
  - 
  - There are 2 type of streams:-
    1) single-subscription stream
      - Can only be listened to by a single listener at a time.
      - Used when you know you only need to process the stream data once.
      - For example, a stream that processes HTTP responses or Reading a File (because the file contents are read once)

    2) broadcast stream:-
      - Can have multiple listeners simultaneously.
      - Suitable for events that can be consumed by multiple listeners, such as UI events or messages from a server.
      - Ex: Monitoring Sensor Data (an application that needs to monitor data from a sensor (like temperature or humidity) and update multiple parts of your app (e.g., UI components, logging, alert system) based on this data.)
*/
