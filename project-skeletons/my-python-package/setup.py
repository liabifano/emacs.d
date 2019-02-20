#!/usr/bin/env python
from setuptools import setup, find_packages

setup(name='__PROJECT-NAME__',
      url='',
      author='',
      package_dir={'': 'src'},
      packages=find_packages('src'),
      version='0.0.1',
      install_requires=[
          'pytest==3.7.4',
          'jedi==0.12.1',
          'rope==0.11.0',
          'autopep8==1.4',
          'yapf==0.23.0',
          'flake8==3.5.0',
          'jupyter-console==5.2.0'
      ],
      include_package_data=True,
      zip_safe=False)
