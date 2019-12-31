
def clock_angle(time)
    # code your solution here

    time_array = time.split(':')
   # binding.pry
    hour_angle = get_hour_angle(time_array)
    minute_angle = get_minute_angle(time_array)
    hour_angle - minute_angle <= 180 ? hour_angle - minute_angle : hour_angle - minute_angle - 180
end

def get_hour_angle(time_array)
   hour =  (30 * time_array[0].to_i) + ( 0.5 * time_array[1].to_i )
   hour < 360 ? hour : 0
end

def get_minute_angle(time_array)
    6 * time_array[1].to_i
end