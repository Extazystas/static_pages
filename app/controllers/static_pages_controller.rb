class StaticPagesController < ApplicationController
  def home
  end

  def about
  end

  def who_we_are
    @emails = %w(
      paveltyk@gmail.com 
      andrey.koleshko@altoros.com 
      knyazev@ziex.by
      andrey.plisko@altoros.com
      nadezhda.poluyanova@altoros.com
      konstantin.ilchenko@altoros.com
      sergey.berdnikovich@altoros.com
      sergey.basdh@altoros.com
    )
  end
end
