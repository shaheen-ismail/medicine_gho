import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:medicine_gho/controller/common_controller.dart';
import 'package:medicine_gho/core/constants/constants.dart';
import 'package:medicine_gho/core/widgets/doctor_list_widget.dart';
import 'package:medicine_gho/core/widgets/header_widget.dart';
import 'package:medicine_gho/core/widgets/offercard_widget.dart';
import 'package:medicine_gho/core/widgets/widgets.dart';
import 'package:provider/provider.dart';

import '../../core/widgets/rowtext_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final categories = [
      "Cardiology",
      "Neurology",
      "Dermatology",
      "Pulmonology",
      "Surgery",
      "Nephrology",
    ];

    final List<Map<String, dynamic>> doctors = [
      {
        "doctorName": "Dr. Samiya Ali",
        "specialization": "Dermatologist",
        "location": "New York",
        "rating": 4.8,
        "price": "600 EGP",
        "imagePath": "assets/images/doctor1.png",
      },
      {
        "doctorName": "Dr. John Doe",
        "specialization": "Cardiologist",
        "location": "Los Angeles",
        "rating": 4.7,
        "price": "700 EGP",
        "imagePath": "assets/images/doctor2.png",
      },
      {
        "doctorName": "Dr. Jane Smith",
        "specialization": "Neurologist",
        "location": "Chicago",
        "rating": 4.9,
        "price": "800 EGP",
        "imagePath": "assets/images/doctor3.png",
      },
    ];
    final List<Map<String, String>> offers = [
      {
        "title": "Hello Doctor!",
        "description":
            "Offer 50% off for your first video \n call with your doctor.",
        "buttonText": "Get Offer",
        "imagePath": "assets/images/facebook.png",
      },
      {
        "title": "Hello Doctor!",
        "description":
            "Offer 50% off for your first video \n call with your doctor.",
        "buttonText": "Get Offer",
        "imagePath": "assets/images/facebook.png",
      },
    ];

    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstants.mainBgColor,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HeaderWidget(),
                const SizedBox(height: 10),
                const CustomTextFormField(hintText: 'Search For Doctor'),
                const SizedBox(height: 10),
                Text(
                  "Our Services",
                  style: GoogleFonts.inter(
                      color: ColorConstants.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 14.0),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BookingCard(
                        icon: Iconsax.hospital,
                        text: "Clinic Appointment",
                        onTap: () {}),
                    BookingCard(
                        icon: Iconsax.hospital,
                        text: "Online Appointment",
                        onTap: () {}),
                  ],
                ),
                const SizedBox(height: 10),
                RowText(
                  title: "Offers",
                  buttonText: "See All",
                  onButtonTap: () {},
                ),
                const SizedBox(height: 10),

                ///
                CarouselSlider.builder(
                  itemCount: offers.length,
                  itemBuilder:
                      (BuildContext context, int index, int realIndex) {
                    return OfferContainer(
                      title: offers[index]["title"]!,
                      description: offers[index]["description"]!,
                      buttonText: offers[index]["buttonText"]!,
                      imagePath: offers[index]["imagePath"]!,
                      onButtonTap: () {},
                    );
                  },
                  options: CarouselOptions(
                    autoPlay: false,
                    enlargeCenterPage: false,
                    viewportFraction: 0.8,
                    aspectRatio: 0.2,
                    height: 220,
                  ),
                ),

                //jhdj
                RowText(
                  title: "Categories",
                  buttonText: "See All",
                  onButtonTap: () {},
                ),
                GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 3,
                  ),
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        print("Tapped on ${categories[index]}");
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: ColorConstants.white,
                        ),
                        child: Center(
                          child: Text(
                            categories[index],
                            style: GoogleFonts.inter(
                                color: ColorConstants.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 12),
                          ),
                        ),
                      ),
                    );
                  },
                ),
                RowText(
                  title: "Top Doctors",
                  buttonText: "See All",
                  onButtonTap: () {},
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: doctors.length,
                  itemBuilder: (context, index) {
                    final doctor = doctors[index];
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: DoctorList(
                        doctorName: doctor["doctorName"]!,
                        specialization: doctor["specialization"]!,
                        location: doctor["location"]!,
                        rating: doctor["rating"] as double,
                        price: doctor["price"]!,
                        imagePath: doctor["imagePath"]!,
                        onHeartTap: () {
                          context.read<CommonProvider>().toggleLike();
                        },
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
