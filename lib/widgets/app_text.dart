import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// Alasan desain: Menggunakan GoogleFonts.Outfit karena font ini modern,
/// bersih, dan sangat mudah dibaca di layar mobile. Cocok untuk aplikasi
/// kantin yang ingin tampil sederhana namun profesional.
class AppText extends StatelessWidget {
  final String text;
  final double size;
  final FontWeight weight;
  final Color? color;
  final TextAlign? textAlign;

  const AppText(
    this.text, {
    super.key,
    this.size = 14,
    this.weight = FontWeight.normal,
    this.color,
    this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: GoogleFonts.outfit(
        fontSize: size,
        fontWeight: weight,
        color: color ?? Colors.black87,
      ),
    );
  }
}
