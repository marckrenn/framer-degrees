## framer-degrees
‚degrees‘ is a module that calculates the angle in degrees of either two points or between the current and the start position of a draggable layer.


#### Demo

*Live Demo*: http://share.framerjs.com/iei4fv52upoj/


#### Getting started

```CoffeeScript
# Copy ‚degrees.coffee’ into your project’s ‚modules‘-folder

# Include module
degrees = require „degrees“

# Returns degrees between two points (point1x, point1y, point2x, point2y) 
degrees.twoPoints(point1x, point1y, point2x, point2y)

# Returns degrees between current and start position of a draggable layer
degrees.toDragStart
```