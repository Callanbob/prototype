class ApiController < ApplicationController
  
  # return base attribute in json format
  def json_attribute
    base_attribute = BaseAttribute.find(params[:id])
    respond_to do |format|
      format.json {
        render json: base_attribute.to_json(:include => :select_options)
      }
    end
  end
  
  # blank page
  def blank
  end
end
