Does single file load and extract each model inside, than load with split and all the other stuff
Like:

car.obj >=
		body (vertices, normal, uv, etc..)
		window (vertices, normal, uv, etc..)
		door (vertices, normal, uv, etc..)
		wheels (vertices, normal, uv, etc..)
		
and with model loader use an object memory and load depending of load.json