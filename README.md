# Custom UVs

Trying to add a texture (png image) to a selected area of a mesh.

So, it looks like this can be achieved by, at least, using png transparency, or, probably more felixibly, by using a shader with an alpha mask.

Alternatively, the triangle vertices for the transparent areas could be ordered in the opposite direction (if using a one-sided material). Need to check if this causes any z-fighting issues. However, we probably still need to make either a png or a shader texture for the whole mesh, so alpha masking (or png alpha transparancy) is probably the better approach of the two.

Or, thinking about it, using both methods might be ideal. I have a feeling there will be no z-fighting between overlaping triangles where only one face is oriented to have a visible material (or texture). This also (probably) means we could just have a single color margin, with no need for transparency in any texture we apply.