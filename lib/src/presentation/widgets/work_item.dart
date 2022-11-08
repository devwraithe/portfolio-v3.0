import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_v3/src/presentation/widgets/responsive.dart';

class WorkItem extends StatelessWidget {
  final String image, title, brand, description;
  final Function()? action;

  WorkItem({
    Key? key,
    required this.image,
    required this.title,
    required this.brand,
    required this.description,
    required this.action,
  }) : super(key: key);

  final keyImage = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final screenSize = MediaQuery.of(context).size;

    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: action,
        child: Stack(
          children: [
            SizedBox(
              height: screenSize.height * 0.85,
              child: Flow(
                delegate: ParallaxFlowDelegate(
                  scrollable: Scrollable.of(context)!,
                  itemContext: context,
                  keyImage: keyImage,
                ),
                children: [
                  CachedNetworkImage(
                    imageUrl: image,
                    filterQuality: FilterQuality.high,
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: screenSize.height * 1,
                    key: keyImage,
                  ),
                ],
              ),
            ),
            Container(
              height: screenSize.height * 0.85,
              width: double.infinity,
              color: const Color(0XFF141414).withOpacity(0.5),
            ),
            SizedBox(
              height: screenSize.height * 0.85,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    title,
                    textAlign: TextAlign.center,
                    style: Responsive.isDesktop(context)
                        ? textTheme.headline5?.copyWith(
                            fontWeight: FontWeight.w200,
                          )
                        : textTheme.headline6?.copyWith(
                            fontWeight: FontWeight.w200,
                          ),
                  ),
                  const SizedBox(height: 14),
                  Text(
                    brand,
                    textAlign: TextAlign.center,
                    style: textTheme.subtitle2?.copyWith(
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                  const SizedBox(height: 14),
                  SizedBox(
                    width: 360,
                    child: Text(
                      description,
                      textAlign: TextAlign.center,
                      style: textTheme.bodyText1?.copyWith(
                        fontWeight: FontWeight.w200,
                        height: 1.48,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ParallaxFlowDelegate extends FlowDelegate {
  final ScrollableState scrollable;
  final BuildContext itemContext;
  final GlobalKey keyImage;

  ParallaxFlowDelegate({
    required this.scrollable,
    required this.itemContext,
    required this.keyImage,
  }) : super(repaint: scrollable.position);

  @override
  BoxConstraints getConstraintsForChild(int i, BoxConstraints constraints) {
    return BoxConstraints.tightFor(
      width: constraints.maxWidth,
    );
  }

  @override
  void paintChildren(FlowPaintingContext context) {
    final scrollableBox = scrollable.context.findRenderObject() as RenderBox;
    final itemBox = itemContext.findRenderObject() as RenderBox;
    final itemOffset = itemBox.localToGlobal(
      itemBox.size.centerLeft(Offset.zero),
      ancestor: scrollableBox,
    );
    final viewportDimension = scrollable.position.viewportDimension;
    final scrollFraction = (itemOffset.dy / viewportDimension).clamp(0, 2);
    final verticalAlignment = Alignment(0, scrollFraction * 2 - 1);
    final imageBox = keyImage.currentContext!.findRenderObject() as RenderBox;
    final childRect = verticalAlignment.inscribe(
      imageBox.size,
      Offset.zero & context.size,
    );

    context.paintChild(
      0,
      transform: Transform.translate(
        offset: Offset(0, childRect.top),
      ).transform,
    );
  }

  @override
  bool shouldRepaint(ParallaxFlowDelegate oldDelegate) =>
      scrollable != oldDelegate.scrollable ||
      itemContext != oldDelegate.itemContext ||
      keyImage != oldDelegate.keyImage;
}
