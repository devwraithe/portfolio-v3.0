// child: Stack(
//         children: [
//           PageView.builder(
//             pageSnapping: true,
//             scrollDirection: Axis.vertical,
//             controller: _pageController,
//             physics: const BouncingScrollPhysics(),
//             onPageChanged: (page) {
//               setState(() {
//                 currentPage = page;
//               });
//             },
//             itemCount: works.length,
//             itemBuilder: (context, index) {
//               final work = works[index];
//               return Image.network(
//                 work['image'],
//                 width: double.infinity,
//                 height: double.infinity,
//                 filterQuality: FilterQuality.high,
//                 fit: BoxFit.cover,
//               );
//             },
//           ),
//           Container(
//             alignment: Alignment.center,
//             padding: const EdgeInsets.symmetric(
//               horizontal: 38,
//               vertical: 32,
//             ),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 const NavSection(
//                   linkOne: "Selected Works",
//                   linkTwo: "My Articles",
//                 ),
//                 Column(
//                   children: [
//                     Text(
//                       "Simplicity & Tactility",
//                       textAlign: TextAlign.center,
//                       style: textTheme.headline5?.copyWith(
//                         fontWeight: FontWeight.w200,
//                       ),
//                     ),
//                     const SizedBox(height: 14),
//                     Text(
//                       "Samsung Inc",
//                       textAlign: TextAlign.center,
//                       style: textTheme.subtitle2?.copyWith(
//                         fontWeight: FontWeight.w200,
//                       ),
//                     ),
//                     const SizedBox(height: 14),
//                     SizedBox(
//                       width: 360,
//                       child: Text(
//                         "Inspiring experience on Samsung's new smartwatch. The concept is named Spacial, striking the balance between simple and tactile.",
//                         textAlign: TextAlign.center,
//                         style: textTheme.bodyText1?.copyWith(
//                           fontWeight: FontWeight.w200,
//                           height: 1.48,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//                 Text(
//                   "2 of 4",
//                   textAlign: TextAlign.center,
//                   style: textTheme.bodyText1?.copyWith(
//                     fontWeight: FontWeight.w200,
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ],
//       ),