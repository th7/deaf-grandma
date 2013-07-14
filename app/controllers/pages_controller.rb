class PagesController < ApplicationController
  skip_before_filter :verify_authenticity_token  

  def get
    input = params[:input] if params[:input]

    if input
      bye = "I love ya, Grandma, but I've got to go."

      if input == bye.upcase
        @grandma = 'OK, SONNY! SEE YA!'
      elsif input == input.upcase
        @grandma = "NO, NOT SINCE 1983!"
      else
        @grandma = "HUH?! SPEAK UP, SONNY!"
      end
    else
      @grandma = "HELLO, SONNY! HOW ARE YOU?"
    end
  end
end