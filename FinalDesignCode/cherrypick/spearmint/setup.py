import os
from setuptools import setup

# TODO: probably best to put all python files except for the top level run
# script into a package (sub-directory), but for now we can do this.
def read(fname):
    return  open(os.path.join(os.path.dirname(__file__), fname)).read()

setup(
    name='spearmint',
    version = "1.0",
    author="Jasper Snoek, Hugo Larochelle, Ryan P. Adams",
    license='GPLv3',
    description="Practical Bayesian Optimization of Machine Learning Algorithms",
    keywords = "Bayesian Optimization, Magic, Minty, Fresshness",
    packages=['spearmint',
              'spearmint.chooser',
              'spearmint.driver',
              'spearmint.web'
              ],
    long_description=read('README.md'),
    )
