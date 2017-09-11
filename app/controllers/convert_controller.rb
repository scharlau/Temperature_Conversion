class ConvertController < ApplicationController
    
    def index
    end
    
    def celsius
        @celsius_temp = (params[:fahrenheit].to_i-32)*0.5556
        return @celsius_temp
    end
end