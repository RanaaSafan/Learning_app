import 'package:education_app/core/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class HomeSearch extends StatefulWidget {
  const HomeSearch({super.key});

  @override
  State<HomeSearch> createState() => _HomeSearchState();
}

class _HomeSearchState extends State<HomeSearch> {
  final TextEditingController searchController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final FocusNode searchNode = FocusNode();
  @override
  void dispose() {
    searchController.dispose();
    searchNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      controller: searchController,
      focusNode: searchNode,
      hint: "Search for ...",
      prefixIcon: Icons.search_outlined,
      suffixIcon: Icons.filter_list_alt,
    );
  }
}
