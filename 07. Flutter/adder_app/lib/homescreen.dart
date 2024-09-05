import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController firstNumberController = TextEditingController();
  TextEditingController secondNumberController = TextEditingController();
  String answer = '';
  List<String> history = [];
  List<String> quotes = [];

  @override
  void initState() {
    super.initState();
    fetchQuotes();
  }

  Future<void> fetchQuotes() async {
    try {
      final response = await http.get(Uri.parse('https://zenquotes.io/api/random'));
      if (response.statusCode == 200) {
        final List<dynamic> data = json.decode(response.body);
        setState(() {
          quotes = data.map((quote) => "${quote['q']} - ${quote['a']}").toList();
        });
      } else {
        print('Failed to load quotes. Status Code: ${response.statusCode}');
      }
    } catch (error) {
      print('Error fetching quotes: $error');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Adder App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Quote of the day !',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            if (quotes.isNotEmpty)
              Text(
                quotes.first,
                style: const TextStyle(
                  fontSize: 16,
                  fontStyle: FontStyle.italic,
                  color: Colors.black,
                ),
              ),
            const SizedBox(height: 16),
            const Text(
              'Adder',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: firstNumberController,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(labelText: 'Number 1'),
                  ),
                ),
                const SizedBox(width: 8),
                const Text('+'),
                const SizedBox(width: 8),
                Expanded(
                  child: TextField(
                    controller: secondNumberController,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(labelText: 'Number 2'),
                  ),
                ),
                const SizedBox(width: 8),
                const Text('='),
                const SizedBox(width: 8),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      'Answer: $answer',
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    calculateAndStore();
                  },
                  child: const Text('Calculate'),
                ),
                const SizedBox(width: 8),
                ElevatedButton(
                  onPressed: () {
                    clearNumbers();
                  },
                  child: const Text('Clear'),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: history.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(history[index]),
                    trailing: IconButton(
                      icon: const Icon(Icons.delete),
                      onPressed: () {
                        deleteEntry(index);
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void calculateAndStore() {
    if (firstNumberController.text.isNotEmpty &&
        secondNumberController.text.isNotEmpty) {
      double result = double.parse(firstNumberController.text) +
          double.parse(secondNumberController.text);
      String operation =
          '${firstNumberController.text} + ${secondNumberController.text} = $result';
      setState(() {
        answer = result.toString();
        history.add(operation);
      });
    }
  }

  void clearNumbers() {
    setState(() {
      firstNumberController.clear();
      secondNumberController.clear();
      answer = '';
    });
  }

  void deleteEntry(int index) {
    setState(() {
      history.removeAt(index);
    });
  }
}
