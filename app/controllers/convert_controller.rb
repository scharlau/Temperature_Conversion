class ConvertController < ApplicationController

    def index
    end

    #round one version
    def celsius
        @celsius_temp = (params[:fahrenheit].to_i-32)*0.5556
        return @celsius_temp
    end

    #round two version
    def temp
      @output = (params[:output])
        if ( @output == "C")
            @temp = (params[:value].to_i-32)*0.5556
        elsif ( @output == "F")
            @temp = ((params[:value].to_i*9/5) +32)
        else
            @output = "you need to pick the temperature scale"
        end
    end

end
