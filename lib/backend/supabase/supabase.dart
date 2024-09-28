import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

const _kSupabaseUrl = 'https://zxvqodfyupfvsplzfqwi.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inp4dnFvZGZ5dXBmdnNwbHpmcXdpIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjIzMjcxNDIsImV4cCI6MjAzNzkwMzE0Mn0.NX9LKy1VKalfthpkxiNgdTAjc0RRBMDkD3mxZH3RGF8';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
        debug: false,
      );
}
