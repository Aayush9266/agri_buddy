
import 'package:flutter/material.dart';

class AddProduct extends StatefulWidget {
  const AddProduct({super.key});

  @override
  State<AddProduct> createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  String? selectedCrop;
  final List<String> cropOptions = ['Wheat', 'Rice', 'Tomatoes', 'Potatoes', 'Maize (Corn)', 'Carrots','Apple','Banana','Peas','Grapes','Spinach'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Crop'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Select a Crop:',
              style: TextStyle(fontSize: 18.0),
            ),
            const SizedBox(height: 16.0),
            DropdownButtonFormField<String>(
              value: selectedCrop,
              items: cropOptions.map((crop) {
                return DropdownMenuItem(
                  value: crop,
                  child: Text(crop),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedCrop = value;
                });
              },
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Crop',
              ),
            ),
            const SizedBox(height: 24.0),
            ElevatedButton(
              onPressed: () {
                if (selectedCrop != null) {
                  // Return the selected crop to the previous page
                  Navigator.of(context).pop(selectedCrop);
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Please select a crop')),
                  );
                }
              },
              child: const Text('Add Crop'),
            ),
          ],
        ),
      ),
    );
  }
}
