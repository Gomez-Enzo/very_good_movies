import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:very_good_movies/settings/cubit/settings_cubit.dart';

class PageSettings extends StatelessWidget {
  const PageSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SettingsCubit(),
      child: const ViewSettings(),
    );
  }
}

class ViewSettings extends StatelessWidget {
  const ViewSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.l10n.settings),
        elevation: 4,
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text(context.l10n.darkMode),
            trailing: Switch(
              value: context.watch<SettingsCubit>().state.isDarkMode,
              onChanged: (value) =>
                  context.read<SettingsCubit>().toggleDarkMode(),
            ),
          ),
          ListTile(
            title: Text(context.l10n.darkMode),
            trailing: Switch(
              value: context.watch<SettingsCubit>().state.isDarkMode,
              onChanged: (value) =>
                  context.read<SettingsCubit>().toggleDarkMode(),
            ),
          ),
        ],
      ),
    );
  }
}
