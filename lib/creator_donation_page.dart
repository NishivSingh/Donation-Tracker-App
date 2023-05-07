import 'package:flutter/material.dart';

class CreaterDonationPage extends StatefulWidget {
  final String creatorName;
  final String creatorTagline;
  const CreaterDonationPage(
      {super.key, required this.creatorName, required this.creatorTagline});

  @override
  CreaterDonationPageBuider createState() => CreaterDonationPageBuider();
}

class CreaterDonationPageBuider extends State<CreaterDonationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: Text(widget.creatorName),
      ),
      body: ListView(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Text(
                widget.creatorTagline,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const CurrencyInput(),
        ],
      ),
    );
  }
}

class CurrencyInput extends StatefulWidget {
  const CurrencyInput({super.key});

  @override
  _CurrencyInputState createState() => _CurrencyInputState();
}

class _CurrencyInputState extends State<CurrencyInput> {
  String _selectedCurrency = '₹';
  TextEditingController _amountController = TextEditingController();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _messageController = TextEditingController();
  String _displayCurrency = '';
  String _displayAmount = '';

  @override
  void initState() {
    super.initState();
    _amountController.addListener(_updateDisplay);
  }

  void _updateDisplay() {
    setState(() {
      _displayCurrency = _selectedCurrency;
      _displayAmount = _amountController.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              DropdownButton<String>(
                value: _selectedCurrency,
                onChanged: (String? value) {
                  setState(() {
                    _selectedCurrency = value ?? "";
                  });
                },
                items: <String>['\$','¥','€','£','₹']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: TextField(
                  controller: _amountController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Amount',
                  ),
                  onChanged: (value) {
                    _updateDisplay();
                  },
                ),
              ),
            ],
          ),
          const SizedBox(height: 20.0),
          TextField(
            controller: _nameController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Your name(optional)',
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          TextField(
            controller: _messageController,
            maxLines: 10,
            decoration: const InputDecoration(
              contentPadding:
                  EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              border: OutlineInputBorder(),
              hintText: 'Say something nice (optional)',
            ),
          ),
          const SizedBox(
            height: 200,
          ),
          Center(
            child: SizedBox(
              width: 200,
              height: 40,
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Support $_displayCurrency $_displayAmount'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
