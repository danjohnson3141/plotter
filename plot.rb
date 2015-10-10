class Plot
  attr_reader :file_contents, :x1_y1, :x2_y2

  def initialize(filename)
    @file_contents = File.read(filename).split("\n")
    @x1_y1 = find_point(1)
    @x2_y2 = find_point(2)
  end

  def find_x(element)
    element.rindex('#')
  end

  def find_point(num)
    cnt = 0
    file_contents.each_with_index do |file_content, row|
      cnt += 1 if find_x(file_content)
      return [find_x(file_content), row] if cnt == num
    end
  end

  def show_info
    print "Coordinates:\n#{sep}\n"
    puts "x1: #{x1_y1[0].to_s.rjust(3)}, y1: #{x1_y1[1].to_s.rjust(3)}"
    puts "x2: #{x2_y2[0].to_s.rjust(3)}, y2: #{x2_y2[1].to_s.rjust(3)}"
    puts "#{sep}\nOutput:\n#{sep}\n"
    puts direction + "\n"
  end

  def output(info = false)
    show_info if info

    started = false
    lines = []

    (x2_y2[1] + 1).times do |i|
      if x1_y1[1] == i || started
        lines[i] = (' ' * x1_y1[0]) + '#'
        started = true
      end

      # last row of the input file
      if x2_y2[1] == i
        lines[i] += ('#' * (x2_y2[0] - (x1_y1[0] - 1))) if direction == 'right'
        lines[i] = (' ' * x2_y2[0]) + ('#' * (x1_y1[0] - (x2_y2[0] - 1))) if direction == 'left'
      end
    end
    lines.each { |line| puts line }
  end

  def direction
    return 'right' if x1_y1[0] < x2_y2[0]
    'left'
  end

  def sep(num = 40)
    '-' * 40
  end

end
