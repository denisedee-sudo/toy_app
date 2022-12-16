class ToysController < ApplicationController
    def index
        @toys = Toy.all
      end
    
      def show
      end
    
      def new
        @toy = Toy.new
      end
      def create
        @toy = Toy.new(toy_params)
        if @toy.save
          redirect_to "/toys"
        else
          render "new"
        end
      end
    
      def edit
      end
    
      def update
        @toy = toy.find(params[:id])
        @toy.update(toy_params)
        flash[:success] = "This toy was successfully updated."
      end
    
      def destroy
        @toy = toy.find(params[:id])
        @toy.destroy
        flash[:success] = "This toy was successfully removed."
      end
      private
      def toy_params
        params.require(:toy).permit(:toy_name, :toy_description)
      end
end
