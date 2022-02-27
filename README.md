# Custom UVs

Trying to add a texture (png image) to a selected area of a mesh.

So, it look like this can be achieved by, at least, using png transparency, or, probably more felixibly, by using a shader with an alpha mask.

Alternatively, the triangle vertices for the transparent areas could be ordered in the opposite direction (if using a one-sided material). Need to check if this causes any z-fighting issues. However, we probably still need to make either a png or a shader texture for the whole mesh, so alpha masking (or png alpha transparancy) is probably the better approach of the two.