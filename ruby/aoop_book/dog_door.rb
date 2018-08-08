

class DogDoor
  def initialize
    @open = false
  end

  def open_door
    puts "The dog door open."
    @open = true
  end

  def close
    puts "The dog door close."
    @open = false
  end

  def is_open?
    @open
  end
end

class Remote
  def initialize door
    @door = door
  end

  def press_button
    puts "Pressing the remote control button..."
    if @door.is_open?
      @door.close
    else
      @door.open_door
      sleep(5)

      @door.close
    end
  end
end

    @door = DogDoor.new
    @remote = Remote.new(@door)

    puts 'Fido barks to outside...'
    @remote.press_button
    puts 'Fido has gone outside...'
    # @remote.press_button
    puts "Fido's all done..."
    # @remote.press_button
    puts "Fido's back inside"
    # @remote.press_button
