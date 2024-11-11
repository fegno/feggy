import 'dart:convert';
import 'dart:io';

abstract class BaseStorage<T> {
  static Directory? _directory;

  static set directory(Directory value) => _directory = value;

  String get bucket;

  T? _data;

  T? get read => _data;

  Future<T?> write(T? data) async {
    _data = data;
    await _saveToFile();
    return _data;
  }

  Future<void> init() async {
    await _loadFromFile();
  }

  Future<void> reload() async {
    await _loadFromFile();
  }

  T fromJson(Map<String, dynamic> json);

  Map<String, dynamic> toJson(T data);

  Future<File?> _getStorageFile() async {
    try {
      if (_directory == null) {
        throw Exception('Directory is not set. Please set the directory before accessing storage.');
      }
      return File('${_directory?.path}/.datas/$bucket.txt');
    } catch (e) {
      print('Error while getting notification storage file : $e');
    }
    return null;
  }

  Future<void> _loadFromFile() async {
    try {
      final file = await _getStorageFile();
      if (file?.existsSync() ?? false) {
        final content = await file?.readAsString();
        if (content?.isEmpty ?? false) {
          _data = null;
        } else {
          _data = fromJson(jsonDecode(content!) as Map<String, dynamic>);
        }
      }
    } catch (e) {
      print('Error loading storage: $e');
    }
  }

  Future<void> _saveToFile() async {
    try {
      final file = await _getStorageFile();
      final directory = file?.parent; // Get the parent directory of the file

      // Ensure the directory exists
      if (directory != null && !directory.existsSync()) {
        await directory.create(recursive: true);
      }

      // Create the file if it doesn't exist
      if (file != null && !file.existsSync()) {
        await file.create();
      }

      // Write to the file
      await file?.writeAsString(_data != null ? jsonEncode(toJson(_data as T)) : '');

      // Read the file to verify content
      final content = await file?.readAsString();
      print('File content: $content');
    } catch (e) {
      print('Error saving storage: $e');
    }
  }
}
