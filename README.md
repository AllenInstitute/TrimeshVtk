
# TrimeshVTK

TrimeshVTK is a Python module that provides tools for creating VTK visualizations of meshes and skeletons from Trimesh/MeshParty. It was originally part of [MeshParty](https://github.com/sdorkenw/MeshParty), but was broken out to reduce the dependancies in MeshParty. This module depends on VTK and numpy.  

## Installation
You can install TrimeshVTK using pip:

    pip install trimesh-vtk

Or, you can install it from source:

    git clone https://github.com/AllenInstitute/TrimeshVTK.git
    cd TrimeshVTK
    pip install -e .

## Quickstart
TrimeshVTK provides several functions for converting between numpy representations of meshes and VTK polydata objects. Here is the most basic example:

```python
import trimesh_vtk

# Create a VTK polydata object from numpy arrays of vertices and triangles
mesh = ... # any mesh object with mesh.vertices and mesh.faces, such as a trimesh, where those are numpy arrays.

# Render a set of VTK actors in a 3D scene
actor = trimesh_vtk.mesh_actor(mesh, opacity=1.0, color=(1,0,0))
trimesh_vtk.render_actors([actor], do_save=False)
```
See the documentation for more usage examples.

## Contributing
If you have suggestions for new features or improvements to the code, please open an issue or a pull request on GitHub.

## License
TrimeshVTK is licensed under the Apache 2 License, as it was originally part of https://github.com/sdorkenw/MeshParty. See the LICENSE file for more details.