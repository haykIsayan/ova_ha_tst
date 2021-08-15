import 'package:flutter/material.dart';
import 'package:flutter_tindercard/flutter_tindercard.dart';
import 'package:ova_ha_tst/component/track_card.dart';
import 'package:ova_ha_tst/track_model.dart';

class TrackSwipeStack extends StatelessWidget {
  final List<TrackModel> tracks;

  const TrackSwipeStack({Key? key, required this.tracks}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TinderSwapCard(
      cardBuilder: (context, index) => _buildTrackCard(tracks[index]),
      totalNum: tracks.length,
    );
  }

  Widget _buildTrackCard(TrackModel track) {
    return TrackCard(
      track: track,
    );
  }
}
