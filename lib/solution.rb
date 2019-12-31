def clock_angle(time)
    time_array = time.split(":")
    hour = time_array[0].to_i
    minutes = time_array[1].to_i
    min_angle = minutes * 6
    hr_angle = (hour * 30) + (minutes.to_f * 0.5)
    diff = (hr_angle - min_angle).abs
    if diff > 180
        diff = 360 - diff
    end
    diff
end
