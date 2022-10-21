import 'package:flutter/material.dart';

class SuggestionRow extends StatefulWidget {
  const SuggestionRow({super.key, required this.text});
  final String text;
  @override
  State<SuggestionRow> createState() => _SuggestionRowState();
}

class _SuggestionRowState extends State<SuggestionRow> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: IconButton(
        icon: const Icon(Icons.e_mobiledata),
        onPressed: () {},
      ),
      title: Text(
        widget.text,
      ),
    );
  }
}
