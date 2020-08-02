module ApplicationCable
  class Connection < ActionCable::Connection::Base
    identified_by :current_player
 
    def connect
      self.current_player = find_verified_player
    end
 
    private
      def find_verified_player
        if owner_name = cookies[:user]
          owner_name
        else
          reject_unauthorized_connection
        end
      end
  end
end