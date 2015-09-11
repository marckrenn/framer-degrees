# 'degrees' module v1.0
# by Marc Krenn, Sept. 2015 | marc.krenn@gmail.com | @marc_krenn
#
# Add the following line to your project in Framer Studio. 
# degrees = require "degrees"

startcord = false
startX = 0
startY = 0
dx = 0
dy = 0
degr = 0.0

# Returns degrees between current and start position of a draggable layer
exports.toDragStart = (layer) ->
          
    if startcord is false
        startX = layer.x
        startY = layer.y
        startcord = true

    dx = startX - layer.x
    dy = startY - layer.y

    degr = Math.atan2(dx, dy)
    degr *= 180 / Math.PI * -1

    if degr < 0
        degr = 360 + degr
    
    layer.on Events.DragEnd, ->
        
        startcord = false
        degr = 0.0
        dx = 0
        dy = 0
    
    return degr


# Returns degrees between two points (point1x, point1y, point2x, point2y)       
exports.twoPoints = (p1x, p1y, p2x, p2y) ->       

    dx = p1x - p2x
    dy = p1y - p2y

    degr = Math.atan2(dx, dy)
    degr *= 180 / Math.PI * -1

    if degr < 0
        degr = 360 + degr
        
    return degr