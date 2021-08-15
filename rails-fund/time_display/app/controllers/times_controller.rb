class TimesController < ApplicationController
    def main
        # save current date and time to an instance variable
        @time = Time.new
    end
end
