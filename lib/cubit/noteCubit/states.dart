

import 'package:flutter/cupertino.dart';

@immutable
abstract class NoteStates {}

class NoteInitial extends NoteStates {}
class NoteGetData extends NoteStates {}
class NoteChangeState extends NoteStates{}