import glob
import os
import setuptools as  setup

# TODO: probably best to put all python files except for the top level run
# script into a package (sub-directory), but for now we can do this.
MODULES = ['ExperimentGrid', 'gp', 'helpers', 'Locker', 'runner', 'sobol_lib', 'spearmint_pb2', 'util']

setup(name='spearmint',
      description="Practical Bayesian Optimization of Machine Learning Algorithms",
      author="Jasper Snoek, Hugo Larochelle, Ryan P. Adams",
      url="https://github.com/JasperSnoek/spearmint",
      version='1.0',
      license='GPLv3',
      keywords = "Bayesian Optimization, Magic, Minty, Fresshness",
      packages = ['spearmint',
                  'spearmint.chooser',
                  'spearmint.driver',
                 ]
     )
