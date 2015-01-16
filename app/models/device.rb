class Device < ActiveRecord::Base
  # Sequence of states for a device:
  #   en_route
  #   received
  #   inspected
  #   repaired
  #   packaged
  #   shipped

  state_machine initial: :en_route do
    event :receive do
      transition :en_route => :received
    end

    event :inspect do
      transition :received => :inspected
    end

    event :repair do
      transition :inspected => :repaired
    end

    event :package do
      transition :repaired => :packaged
    end

    event :shipped do
      transition :packaged => :shipped
    end
  end
end
