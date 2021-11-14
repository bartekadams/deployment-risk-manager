class ResourceStateChangeChannel < ApplicationCable::Channel
  # Called when the consumer has successfully
  # become a subscriber to this channel.
  def subscribed
    stream_from("resource_new_state")
  end

  def unsubscribed

  end
  # transmit method also available
  # transmit(data, via: nil)
  # Transmit a hash of data to the subscriber.
  # The hash will automatically be wrapped in a JSON envelope
  # with the proper channel identifier marked as the recipient.

  def one

  end

  def two

  end
end
