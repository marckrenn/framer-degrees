# 'degrees' module example project v1.0
# by Marc Krenn, Sept. 2015 | marc.krenn@gmail.com | @marc_krenn

# Include module
degrees = require "degrees"

# Set background
bg = new BackgroundLayer backgroundColor: "#28affa"

# Create layer
layerA = new Layer
	width: 100
	height: 100
	backgroundColor: "#fff"
	borderRadius: "100%"

# Demo reference point
reference = new Layer
	width: 20
	height: 20
	backgroundColor: "#fff"
	borderRadius: "100%"
	opacity: 0
	index: 0

layerA.center()

# Enable dragging
layerA.draggable.enabled = true

# Show demo reference point
layerA.on Events.DragStart, ->
	reference.x = layerA.midX - reference.width/2
	reference.y = layerA.midY - reference.height/2
	reference.opacity = 0.5

layerA.on Events.DragMove, ->
	
	# Returns degrees between current and start position of a draggable layer ('this' = 'layerA')
	print degrees.toDragStart(this) 
	
	# Returns degrees between two points (point1x, point1y, point2x, point2y)
	# print degrees.twoPoints(0,0,layerA.midX,layerA.midY)
	
# Hide demo reference point	
layerA.on Events.DragEnd, ->
	reference.opacity = 0