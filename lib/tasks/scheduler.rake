desc "Check Nest Thermostat Temperature"
task :check_temperature do
  nest = NestThermostat::Nest.new({email: ENV['NEST_EMAIL'], password: ENV['NEST_PASSWORD']})

  # if nest.schedule_mode == "COOLING"
  if nest.current_temp > nest.temp
    IftttMailer.command("on").deliver
  else
    IftttMailer.command("off").deliver
  end
  # end
end
