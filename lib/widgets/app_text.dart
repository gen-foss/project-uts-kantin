import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// Alasan desain: Menggunakan GoogleFonts.Poppins karena font ini modern,
/// mudah dibaca, dan cocok untuk aplikasi kantin yang bersih & ramah pengguna.
/// Parameter size & weight memungkinkan reusability tanpa mengorbankan konsistensi.
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
      style: GoogleFonts.poppins(
        fontSize: size,
        fontWeight: weight,
        color: color ?? Colors.black87,
      ),
    );
  }
}
