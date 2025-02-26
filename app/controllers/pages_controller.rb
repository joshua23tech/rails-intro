class PagesController < ApplicationController
    def home 
    end 

    def about 
    end

    def contact 
        @members = ['Messi', 'Ronaldo', 'Beckham', 'Drogba', 'Luqman']

        if params[:player]
            @members = @members.select {|member| member.start_with?(params[:player])}
        end
    end
end
