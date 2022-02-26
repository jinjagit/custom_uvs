extends MeshInstance


func _ready():
	var st = SurfaceTool.new()

	st.begin(Mesh.PRIMITIVE_TRIANGLES)

	# # Prepare attributes for add_vertex.
	# st.add_normal(Vector3(0, 0, 1))
	# st.add_uv(Vector2(0, 0))
	# # Call last for each vertex, adds the above attributes.
	# st.add_vertex(Vector3(-1, -1, 0))

	# st.add_normal(Vector3(0, 0, 1))
	# st.add_uv(Vector2(0, 1))
	# st.add_vertex(Vector3(-1, 1, 0))

	# st.add_normal(Vector3(0, 0, 1))
	# st.add_uv(Vector2(1, 0))
	# st.add_vertex(Vector3(1, 1, 0))

	# st.add_normal(Vector3(0, 0, 1))
	# st.add_uv(Vector2(1, 1))
	# st.add_vertex(Vector3(1, -1, 0))

	var resolution : int = 5

	for y in range(resolution):
		for x in range(resolution):
			var i : int = x + y * resolution
			var posX = (1.0 * x / (resolution - 1)) - 0.5
			var posY = (1.0 * y / (resolution - 1)) - 0.5

			st.add_normal(Vector3(0, 0, 1))
			#st.add_uv(Vector2(0, 1))
			st.add_vertex(Vector3(posX, posY, 0))

			if x > 0 and y > 0:
				st.add_index(i - 1);
				st.add_index(i - resolution - 1);
				st.add_index(i - resolution);

				st.add_index(i - 1);
				st.add_index(i - resolution);
				st.add_index(i);

	# Commit to a mesh.
	mesh = st.commit()

