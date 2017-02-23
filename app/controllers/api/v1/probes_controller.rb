class Api::V1::ProbesController < Api::V1::BaseController

  def process(input)
    render json: { success: true , recieved: params }
  end

end
