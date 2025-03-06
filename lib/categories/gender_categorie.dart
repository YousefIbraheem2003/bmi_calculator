import 'package:bmi_calculator/widgets/gender_widget.dart';
import 'package:flutter/material.dart';

class GenderCategorie extends StatelessWidget {
  const GenderCategorie({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        GenderWidget(
          gender: 'Male',
          photo:
              'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/e8ddc4da-23dd-4502-b65b-378c9cfe5efa/dffxqyf-a442aeb4-9ae8-4cc0-8ccf-82bb23010922.png/v1/fill/w_1280,h_1280/male_symbol_by_jormxdos_dffxqyf-fullview.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MTI4MCIsInBhdGgiOiJcL2ZcL2U4ZGRjNGRhLTIzZGQtNDUwMi1iNjViLTM3OGM5Y2ZlNWVmYVwvZGZmeHF5Zi1hNDQyYWViNC05YWU4LTRjYzAtOGNjZi04MmJiMjMwMTA5MjIucG5nIiwid2lkdGgiOiI8PTEyODAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.J4AJz8dVwI4O5dV5XXOFMsfsa1RiEN9e1gE3uufryzs ',
        ),
        SizedBox(
          width: 20,
        ),
        GenderWidget(
          gender: 'Female',
          photo:
              'https://t3.ftcdn.net/jpg/01/37/69/42/360_F_137694239_ihbs4kHd2w3HC3KipODkBDfhltbjwwLV.jpg',
        ),
      ],
    );
  }
}
