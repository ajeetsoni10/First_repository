class PetsController < ApplicationController
  def index
    @pet=Pet.all
   
  end
  
 def new
     @pet = Pet.new
  end
  
  def create
       puts params
       @pet = Pet.new(pet_params)
       if @pet.save
        redirect_to pets_path, :notice => "success!"
       else
        render('new')
      end
  end
  
  private
   def pet_params
    params.require(:pet).permit(:name, :marks1, :marks2, :projects)
  end

end
