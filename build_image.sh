#!/bin/bash

echo "Delete old dist..."
rm -rf dist/*

echo "Start build..."
python3 setup.py sdist bdist_wheel
#python setup.py sdist bdist_wheel
#python -m build --wheel

echo "Upload sdk..."
#check-wheel-contents dist/*.whl
python3 -m twine upload dist/* --verbose
#python -m twine upload --repository testpypi dist/* --verbose