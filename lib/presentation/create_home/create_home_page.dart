import 'package:cybear_jinni/application/create_home/create_home_bloc.dart';
import 'package:cybear_jinni/injection.dart';
import 'package:cybear_jinni/presentation/create_home/widgets/create_home_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Loading page when initializing new home
class CreateHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Initializing New Smart Home'),
      ),
      body: BlocProvider(
        create: (context) =>
            getIt<CreateHomeBloc>()..add(const CreateHomeEvent.initialized()),
        child: CreateHomeWidget(),
      ),
    );
  }
}