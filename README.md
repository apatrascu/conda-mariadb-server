Ubuntu requirements: `sudo apt-get install -y build-essential git`

Build:

```
conda env create -n mybuildenv
conda activate mybuildenv
conda install conda-build conda-verify anaconda-client -y

git clone REPO
cd REPO

conda build purge
conda build .

anaconda login
anaconda upload /path/to/conda-package.tar.bz2

conda deactivate
conda env remove -n mybuildenv
```

