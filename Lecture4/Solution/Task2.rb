class BasicRobot
    attr_accessor :id, :x, :y, :orientation, :step
    ORIENTATIONS = [:north, :east, :south, :west]
    def initialize(id, x=0, y=0)
      @id = id
      @x = x
      @y = y
      @orientation = :north
      @step = 1
    end
  
    def turn_clockWise
      current_index = ORIENTATIONS.index(@orientation)
      @orientation = ORIENTATIONS[(current_index + 1) % 4]
    end
  
    def turn_antiClockWise
      current_index = ORIENTATIONS.index(@orientation)
      @orientation = ORIENTATIONS[(current_index - 1) % 4]
    end
  
    def walk
      case @orientation
      when :north
        @y += @step
      when :east
        @x += @step
      when :south
        @y -= @step
      when :west
        @x -= @step
      end
    end
  
    def get_position
      puts "Robot #{@id} is at position (#{@x}, #{@y}) facing #{@orientation}"
    end
end
  
class AdvancedRobot < BasicRobot
    attr_accessor :charge, :turbo_state
  
    def initialize(id, x=0, y=0, charge)
      super(id, x, y)
      @charge = charge
      @turbo_state = false
    end
  
    def turbo
      if @charge > 0
        @turbo_state = true
        @step = 2
      end
    end
  
    def walk
      if @turbo_state
        @charge -= 1
        super
        @step = 1
        @turbo_state = false
      else
        super
      end
    end
end

basic = BasicRobot.new("R2D2", 0, 0)
basic.walk
basic.get_position        
basic.turn_clockWise
basic.walk
basic.get_position          

advanced = AdvancedRobot.new("C3PO", 0, 0, 5)
advanced.turbo             
advanced.walk
advanced.get_position       
puts advanced.charge        
puts advanced.turbo_state   # 