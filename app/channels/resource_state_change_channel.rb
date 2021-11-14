class ResourceStateChangeChannel < ApplicationCable::Channel
  # Called when the consumer has successfully
  # become a subscriber to this channel.
  def subscribed
    stream_from("chat_Best Room")
  end

  def one

  end

  def two

  end
end
