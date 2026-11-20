import 'package:nyxx/src/models/channel/channel.dart';

/// {@template unknown_channel}
/// A channel of a type that this version of nyxx does not model.
///
/// Discord periodically introduces new channel types (for example type `20`,
/// "Server Home"). Until nyxx models them explicitly, [ChannelManager.parse]
/// returns an [UnknownChannel] so that parsing a payload containing one (such
/// as a `GUILD_CREATE`) does not fail wholesale.
/// {@endtemplate}
///
/// {@category models}
/// {@category entities}
class UnknownChannel extends Channel {
  @override
  final ChannelType type;

  /// {@macro unknown_channel}
  /// @nodoc
  UnknownChannel({required super.id, required super.manager, required this.type});
}
