modelTypes.EF_Extra_330_v2 = 
{

	-- header

	name = "EF Extra 330sc V2",
	type = "Airplane",
	amphibious = 0,
	manufacturer = "",
	revision = 1.0,
	formatVersion = "5.5.f",
	minProgramVersion = "5.0.a",
	description = "",
	physics = physics.airplane,

	class = "Airplanes",
	subclass = "Performance",
	style = "Park-flier",
	power = "Electric",
	level = "Beginner",

	supportsTrainingGear = 0,


	nodeCount = 85,


	-- main attributes

	attributes =
	{
		Physical =
		{
			Setup = 50.0,
			Size = 2.413,
			Weight = 8.73,
			Robustness = 100.0,
			Centre_of_gravity = { x = 0.0, y = 16.130297, z = -10.983092 },
			Inertia = { yaw = 1.0, pitch = 1.0, roll = 1.0 },
			Fuselage_drag_area = { frontal = 0.05, lateral = 0.05, vertical = 0.05 },
			Fuel_Time = 0.0,
			Has_Training_Gear = 0,
			Flip_Rudder_And_Ailerons = 0,
			Cockpit = "None",
		},

		Fine_tuning =
		{
			Thrust = 150.0,
			Lift = 100.0,
			Engine = 100.0,
			Stall = { severity = 100.0, limit = 100.0, speed = 100.0 },
			Dihedral = 100.0,
			Elevator = 100.0,
			Aileron = 100.0,
			Rudder = 100.0,
			Wash = 200.0,
			Torque = 15.0,
			Ground_Torque_Effect = 100.0,
			Rudder_Roll_Coupling = 0.0,
			Rudder_Elevator_Coupling = 0.0,
		},

		Controls =
		{
			Throttle =
			{
				Low_Rate = 50.0,
				Expo = 0.0,
				Expo_Low_Rate = 0.0,
				Advanced_Expo = 0.0,
				Advanced_Expo_Low_Rate = 0.0,
				Servo_Speed = 25.0,
				Servo_Dead_Zone = 0.0,
				Trim = 0.0,
				Mix =
				{
						Input = "None",
						Amount = 0.0,
				},

			},

			Elevator =
			{
				Low_Rate = 50.0,
				Expo = 60.0,
				Expo_Low_Rate = 20.0,
				Advanced_Expo = 0.0,
				Advanced_Expo_Low_Rate = 0.0,
				Servo_Speed = 25.0,
				Servo_Dead_Zone = 0.0,
				Trim = 0.0,
				Mix =
				{
						Input = "None",
						Amount = 0.0,
				},

			},

			Aileron =
			{
				Low_Rate = 50.0,
				Expo = 55.0,
				Expo_Low_Rate = 35.0,
				Advanced_Expo = 0.0,
				Advanced_Expo_Low_Rate = 0.0,
				Servo_Speed = 25.0,
				Servo_Dead_Zone = 0.0,
				Trim = 0.0,
				Mix =
				{
						Input = "None",
						Amount = 0.0,
				},

			},

			Rudder =
			{
				Low_Rate = 50.0,
				Expo = 50.0,
				Expo_Low_Rate = 50.0,
				Advanced_Expo = 0.0,
				Advanced_Expo_Low_Rate = 0.0,
				Servo_Speed = 25.0,
				Servo_Dead_Zone = 0.0,
				Trim = 0.0,
				Mix =
				{
						Input = "None",
						Amount = 0.0,
				},

			},

			Collective =
			{
				Low_Rate = 50.0,
				Expo = 0.0,
				Expo_Low_Rate = 0.0,
				Advanced_Expo = 0.0,
				Advanced_Expo_Low_Rate = 0.0,
				Servo_Speed = 25.0,
				Servo_Dead_Zone = 0.0,
				Trim = 0.0,
			},

		},

	},

	body =
	{
		material = "Wood",

		geometry = 
		{

			"SPINNER_Circle.004",
			"FUSELAGE_Circle",
			"CANOPY_Circle.001",
			"COCKPIT_Circle.026",
		},

		collision = 
		{

		},

	},

	airfoils = 
	{

		{
			name = "Main wing",
			isBreakable = 1,
			isMirrored = 1,

			attributes =
			{
				Position = { x = 5.84581, y = 14.024621, z = 0.0 },
				Length = 1.07,
				Root_chord = 0.54,
				Tip_chord = 0.26,
				Airfoil = "Funfly",
				Incidence = 0.0,
				Washout = 0.0,
				Dihedral = 1.3,
				Sweep = 4.0,
				Robustness = 100.0,
				Wash = 100.0,
				Trim = { min = 0.0, max = 0.0 },
			},

			sides =
			{
				{

					geometry = 
					{

						"WING_LEFT_Circle.018",
					},

					collision = 
					{

						{ name = "New Collision", material = "Inherit", type = "sphere", x = 50.034092, y = 15.030982, z = -7.732539, radius = 0.5 },
						{ name = "New Collision3", material = "Inherit", type = "sphere", x = 0.0, y = 16.664478, z = 22.301306, radius = 0.5 },
						{ name = "New Collision5", material = "Inherit", type = "sphere", x = -0.000694, y = 19.292755, z = 14.986827, radius = 0.5 },
					},

				},

				{

					geometry = 
					{

						"WING_RIGHT_Circle.020",
					},

					collision = 
					{

						{ name = "New Collision2", material = "Inherit", type = "sphere", x = -50.034199, y = 14.957278, z = -7.914491, radius = 0.5 },
						{ name = "New Collision4", material = "Inherit", type = "sphere", x = 0.00022, y = 25.052629, z = -24.610826, radius = 0.5 },
						{ name = "New Collision6", material = "Inherit", type = "sphere", x = -0.000264, y = 9.282892, z = 5.703948, radius = 0.5 },
					},

				},

			},

			controlSurfaces = {

				{
					name = "Ailerons",
					root_pivot = { x = 13.16328, y = 14.245365, z = -16.499067 },
					tip_pivot = { x = 47.887405, y = 14.953199, z = -10.796569 },

					attributes =
					{
						Input = "Left Aileron",
						Length = 0.89,
						Tip_distance = 0.0,
						Root_chord = 0.095,
						Tip_chord = 0.1,
						Min_travel = 75.0,
						Max_travel = 75.0,
					},

					sides =
					{
						{

							"AILERON_LEFT_Circle.024",
						},

						{

							"AILERON_RIGHT_Circle.025",
						},

					},

				},

			},

			flaps = {

			},

			airbrakes = {

			},

		},

		{
			name = "Tail",
			isBreakable = 1,
			isMirrored = 1,

			attributes =
			{
				Position = { x = 1.198808, y = 18.779686, z = -50.125526 },
				Length = 0.4,
				Root_chord = 0.315,
				Tip_chord = 0.215,
				Airfoil = "NACA 0009",
				Incidence = 0.0,
				Washout = 0.0,
				Dihedral = 0.0,
				Sweep = 7.5,
				Robustness = 100.0,
				Wash = 100.0,
				Trim = { min = -0.5, max = -0.5 },
			},

			sides =
			{
				{

					geometry = 
					{

						"STAB_LEFT_Circle.008",
					},

					collision = 
					{

						{ name = "New Collision7", material = "Inherit", type = "sphere", x = 17.556976, y = 18.796824, z = -56.666645, radius = 0.5 },
						{ name = "New Collision10", material = "Inherit", type = "sphere", x = 0.000136, y = 19.804935, z = -59.715385, radius = 0.5 },
					},

				},

				{

					geometry = 
					{

						"STAB_RIGHT_Circle.011",
					},

					collision = 
					{

						{ name = "New Collision8", material = "Inherit", type = "sphere", x = -17.615, y = 18.842543, z = -56.959595, radius = 0.5 },
						{ name = "New Collision9", material = "Inherit", type = "sphere", x = 0.000123, y = 14.714233, z = -59.828754, radius = 0.5 },
					},

				},

			},

			controlSurfaces = {

				{
					name = "Elevator",
					root_pivot = { x = 1.205889, y = 18.76931, z = -57.101242 },
					tip_pivot = { x = 15.051792, y = 18.810503, z = -57.123596 },

					attributes =
					{
						Input = "Left Elevator",
						Length = 0.4,
						Tip_distance = 0.0,
						Root_chord = 0.15,
						Tip_chord = 0.1,
						Min_travel = 45.0,
						Max_travel = 45.0,
					},

					sides =
					{
						{

							"ELEVATOR_LEFT_Circle.013",
						},

						{

							"ELEVATOR_RIGHT_Circle.014",
						},

					},

				},

			},

			flaps = {

			},

			airbrakes = {

			},

		},

		{
			name = "Fin",
			isBreakable = 1,
			isMirrored = 0,

			attributes =
			{
				Position = { x = 0.002216, y = 15.748351, z = -48.825214 },
				Length = 0.47,
				Root_chord = 0.485,
				Tip_chord = 0.185,
				Airfoil = "NACA 0009",
				Incidence = 0.0,
				Washout = 0.0,
				Dihedral = 90.0,
				Sweep = 21.0,
				Robustness = 100.0,
				Wash = 100.0,
				Trim = { min = 0.0, max = 0.0 },
			},

			sides =
			{
				{

					geometry = 
					{

						"FIN_Circle.007",
					},

					collision = 
					{

						{ name = "New Collision11", material = "Inherit", type = "sphere", x = 0.002762, y = 33.891548, z = -59.624043, radius = 0.5 },
						{ name = "New Collision12", material = "Inherit", type = "sphere", x = 0.003192, y = 15.969468, z = -68.898758, radius = 0.5 },
					},

				},

			},

			controlSurfaces = {

				{
					name = "Rudder",
					root_pivot = { x = 0.000048, y = 14.930698, z = -59.7444 },
					tip_pivot = { x = -0.016308, y = 29.138876, z = -59.793743 },

					attributes =
					{
						Input = "Rudder",
						Length = 0.5,
						Tip_distance = 0.0,
						Root_chord = 0.23,
						Tip_chord = 0.09,
						Min_travel = 30.0,
						Max_travel = 30.0,
					},

					sides =
					{
						{

							"RUDDER_Circle.017",
						},

						{

						},

					},

				},

			},

			flaps = {

			},

			airbrakes = {

			},

		},

	},

	propulsion = 
	{

		{
			name = "Propulsion",
			type = "propeller",
			pivot = { x = -0.000798, y = 16.458706, z = 17.216843 },
			angle = -0.0,
			spinDirection = 1,
			pusher = 0,
			folding = 0,
			blurRadius = 13.284644,
			blurTexture = "None",

			attributes =
			{
				Position = { x = -0.000798, y = 16.458706, z = 17.216843 },
				Diameter = 0.6,
				Pitch = 0.12,
				Blade_count = 2,
				Idle_RPM = 0,
				Max_RPM = 10000,
				Throttle_Curve = 1.0,
				Down_thrust = 0.0,
				Right_thrust = 0.0,
				Torque = 100.0,
				Response = { load = 1.0, unload = 1.0 },
				Engine = "480 sized electric",
				Volume_Tuning = 100.0,
				Pitch_Tuning = 100.0,
			},

			spinGeometry = 
			{

			},

			blurGeometry = 
			{

				"PROP_ID361.000",
			},

		exhaust = 
			{

				{
					name = "Exhaust port",
					position = { x = -0.000341, y = 10.460358, z = 7.360992 },
					vector = { x = 0.0, y = -0.866056, z = -0.499947 },

					attributes =
					{
						Engine_Smoke = 1,
						Engine_Smoke_Intensity = 100.0,
						Display_Smoke = 1,
						Display_Smoke_Colour = { r = 255, g = 255, b = 255, a = 255 },
					},

				},

			},

		},

	},

	gear = 
	{

		{
			name = "Main gear",
			root_pivot = { x = 4.921225, y = 10.387968, z = -3.695992 },
			tip_pivot = { x = 4.921783, y = 10.329983, z = -0.760254 },
			isBreakable = 1,
			mirrored = 1,
			isGuide = 0,
			guideDirection = 0,
			isRetractable = 0,
			changeTime = 1000.0,
			idle = { x = 0.0, y = 0.0, z = 0.0, angle = 0.0 },
			mid = { x = 0.0, y = 0.0, z = 0.0, angle = 0.0 },
			full = { x = 0.0, y = 0.0, z = 0.0, angle = 0.0 },

			attributes =
			{
				Guide_travel = 20.0,
				Robustness = 100.0,
				Stiffness = 100.0,
				Friction = { frontal = 50.0, lateral = 100.0 },
			},

			sides =
			{
				{

					geometry = 
					{

						"LEFT_GEAR_Circle.029",
						"LEFT_PANTS_Circle.028",
					},

					collision = 
					{

					},

				},

				{

					geometry = 
					{

						"RIGHT_GEAR_Circle.019",
						"RIGHT_PANTS_Circle.016",
					},

					collision = 
					{

					},

				},

			},

			wheels = 
			{

				{
					name = "Main wheels",
					pivot = { x = 10.866848, y = 2.456957, z = -0.295605 },
					axis = { x = 1.0, y = 0.0, z = 0.0 },
					width = 1.0,
					radius = 2.349347,

					sides =
					{
						{

							"LEFT_WHEEL_Circle.027",
						},

						{

							"RIGHT_WHEEL_Circle.015",
						},

					},

				},

			},

		},

		{
			name = "Rear gear",
			root_pivot = { x = 1.270222, y = 15.178886, z = -59.529003 },
			tip_pivot = { x = -1.197307, y = 15.172208, z = -59.508453 },
			isBreakable = 1,
			mirrored = 0,
			isGuide = 1,
			guideDirection = 0,
			isRetractable = 0,
			changeTime = 1000.0,
			idle = { x = 0.0, y = 0.0, z = 0.0, angle = 0.0 },
			mid = { x = 0.0, y = 0.0, z = 0.0, angle = 0.0 },
			full = { x = 0.0, y = 0.0, z = 0.0, angle = 0.0 },

			attributes =
			{
				Guide_travel = 20.0,
				Robustness = 100.0,
				Stiffness = 100.0,
				Friction = { frontal = 50.0, lateral = 100.0 },
			},

			sides =
			{
				{

					geometry = 
					{

						"TAIL_GEAR_Circle.003",
					},

					collision = 
					{

					},

				},

			},

			wheels = 
			{

				{
					name = "Rear wheel",
					pivot = { x = 0.002845, y = 11.697662, z = -61.394348 },
					axis = { x = 1.0, y = 0.0, z = 0.0 },
					width = 1.0,
					radius = 0.8169,

					sides =
					{
						{

							"TAIL_TIRE_Circle.002",
							"TAIL_WHEEL_Obj_000044.000",
						},

					},

				},

			},

		},

	},

	pilots = 
	{

		{
			name = "Pilot",
			position = { x = 0.0, y = 19.0, z = -23.966269 },
			size = 0.589713,


			attributes =
			{
				Type = "Racer",
			},

		},

	},

}