import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medicine_gho/controller/common_controller.dart';
import 'package:provider/provider.dart';
import 'package:iconsax/iconsax.dart';

class DoctorList extends StatelessWidget {
  final String doctorName;
  final String specialization;
  final String location;
  final double rating;
  final String price;
  final String imagePath;
  final VoidCallback onHeartTap;

  const DoctorList({
    super.key,
    required this.doctorName,
    required this.specialization,
    required this.location,
    required this.rating,
    required this.price,
    required this.imagePath,
    required this.onHeartTap,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.15,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      child: Stack(
        children: [
          Row(
            children: [
              Container(
                height: size.height * 0.15,
                width: size.height * 0.15,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                  ),
                  color: Colors.black,
                  image: DecorationImage(
                    image: AssetImage(imagePath),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        doctorName,
                        style: GoogleFonts.inter(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 14.0,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        specialization,
                        style: GoogleFonts.inter(
                          color: Colors.black,
                          fontSize: 12.0,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          const Icon(
                            Iconsax.location,
                            size: 14,
                          ),
                          const SizedBox(width: 5),
                          Text(
                            location,
                            style: GoogleFonts.inter(
                              color: Colors.black,
                              fontSize: 12.0,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          const Icon(
                            Icons.star,
                            color: Colors.amber,
                            size: 18,
                          ),
                          const SizedBox(width: 5),
                          Text(
                            rating.toString(),
                            style: GoogleFonts.inter(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: 10,
            right: 10,
            child: Column(
              children: [
                GestureDetector(
                  onTap: onHeartTap,
                  child: Consumer<CommonProvider>(
                    builder: (context, heartProvider, child) {
                      return Icon(
                        Icons.favorite,
                        color: heartProvider.isLiked ? Colors.red : Colors.grey,
                        size: 25.0,
                      );
                    },
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  price,
                  style: GoogleFonts.inter(
                    fontSize: 14.0,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
