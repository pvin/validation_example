class DetailsController < ApplicationController

  def extra

  end



  #def create
  #    puts "in create controller"
  #    @data = Details.new(params[:post])
  #
  #    @test.attributes = params[:mail]
  #
  #    #@data.attributes = params[:firstName]
  #    #@data.attributes = params[:lastName]
  #    #@data.attributes = params[:gender]
  #    #@data.attributes = params[:address]
  #    #@data.attributes = params[:cell]
  #    #@data.attributes = params[:country]
  #
  #    if @data.save
  #      render 'save'
  #    else
  #      render 'extra'
  #    end
  #    #private
  #    #def post_params
  #    #  params.require(:post).permit(:title, :text)
  #    #end
  #end
  #




  def create
    @firstname = request["firstName"]
    @lastname = request["lastName"]
    @gender = request["gender"]
    @address = request["address"]
    @cell = request["cell"]
    @country = request["country"]


    ques = Details.new
    ques.firstName = @firstname
    ques.lastName = @lastname
    ques.gender = @gender
    ques.address = @address
    ques.cell = @cell
    ques.country = @country

    if ques.save
       render 'save'
    else
       render 'extra'
   end
  end

end
