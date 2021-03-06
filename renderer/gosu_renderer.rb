class GosuRenderer

  def initialize(window, game)
    @window = window
    @game = game
    load_media
  end

  def tick
    # tick animations and such
  end

  def draw
    draw_white
    @game.objects.each do |obj|
      # draw obj

      # if there is an ongoing animation for this object, draw that


      # failing that, is there a static image for this object? Draw that

      # for now just draw rectangles
      @window.draw_quad(
        obj['x'], obj['y'], Gosu::Color::BLACK,
        obj['x'] + obj['width'], obj['y'], Gosu::Color::BLACK,
        obj['x'] + obj['width'], obj['y'] + obj['height'], Gosu::Color::BLACK,
        obj['x'], obj['y'] + obj['height'], Gosu::Color::BLACK,
        Constants::ZLevels::BASIC_OBJECT
      )
    end
  end

  private

  def load_media
    load_static_images
    load_animations
  end

  def load_static_images
    # TODO
    # load images
  end

  def load_animations
    # TODO
    # make an animation class of some sort and load them
  end

  def draw_white
    c = Gosu::Color::WHITE
    @window.draw_quad(0, 0, c, @window.width, 0, c, @window.width, @window.height, c, 0, @window.height, c, 0)
  end

end