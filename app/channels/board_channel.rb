class BoardChannel < ApplicationCable::Channel
  def subscribed
    stream_from "board:board_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
