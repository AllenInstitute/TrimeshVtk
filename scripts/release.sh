#!/bin/bash
bumpversion $1
git push && git push --tags
TAG=$(git describe --tags)
poetry build
twine upload dist/trimesh-vtk-${TAG:1}.tar.gz
twine upload dist/trimesh-vtk-${TAG:1}-py3-none-any.whl
