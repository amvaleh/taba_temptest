class Api::V1::ProbesController < Api::V1::BaseController
  def process(input)
    light = params[:l] if params[:l].present?
    temp = params[:t] if params[:t].present?
    moisture = params[:m] if params[:m].present?
    battery = params[:b] if params[:b].present?
    clock = params[:c] if params[:c].present?
    probe_id = params[:s] if params[:s].present?
    antenna = params[:a] if params[:a].present?
    if probe_id
      if Probe.where(:serial_number => probe_id).any?
        probe = Probe.find_by_serial_number(probe_id)
        record = Record.new
        record.probe = probe if probe.present?
        record.light = light if light.present?
        record.tempreature = temp if temp.present?
        record.soil_moisture = moisture if moisture.present?
        record.battery = battery if battery.present?
        record.probe_time = clock if clock.present?
        record.antenna = antenna if antenna.present?
        record.save
        render json: { success: true , time: Time.now , recieved: params }
      else
        render json: { success: false, time: Time.now , recieved: params }
      end
    else
      render json: { success: false , recieved: params }
    end
  end
end
