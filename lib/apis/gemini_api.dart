// ignore: constant_identifier_names
import 'package:google_generative_ai/google_generative_ai.dart';

import '../models/gemini_model.dart';

const geminiApiKey = 'AIzaSyD6LviGlBsrJUWqs89hURuY1apRWz2MtRc';

final model = GenerativeModel(model: 'gemini-pro', apiKey: geminiApiKey);

final List<ModelMessage> prompt = [];
