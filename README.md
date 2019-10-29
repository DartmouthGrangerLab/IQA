# IQA
Public code for image quality analysis projects

This code is entirely written in matlab (no addition compilers needed, e.g. mex). Tested on Matlab 2017a.

Relies on https://www.github.com/DartmouthGrangerLab/MatlabCommon , which must also be in your matlab path.

This is the minimal set of code needed to run. Lab members should look to our private repository "Jpeg" (IQA folder) for a more complete code base (e.g. Dartmouth computing cluster scripts).

**Installation:**

1) Choose a matlab working directory. In the code and this readme, all files and folders are *assumed* to be right within that directory (you will have a folder <chosen_working_dir>/IQA containing this code).

2) Download this repository. Add it and all sub-folders to your matlab path.

3) Download the only code dependency, https://www.github.com/DartmouthGrangerLab/MatlabCommon . Add it and all sub-folders to your matlab path (doesn't matter where you put it).

4) Download a dataset, and place that dataset in <chosen_working_dir>/Datasets/ImageDatasets/<datasetname> . For example, you might go to https://www.github.com/DartmouthGrangerLab/SceneIQ and place the contents of the /online folder in <chosen_working_dir>/Datasets/ImageDatasets/SceneIQOnline/ . If you wish to create a **new dataset**:
  
   a) Place your images in <chosen_working_dir>/Datasets/ImageDatasets/<newdatasetname>/formattedimgs/ following the file naming convention of https://www.github.com/DartmouthGrangerLab/SceneIQ .
  
   b) Place your human ratings in <chosen_working_dir>/Datasets/ImageDatasets/<newdatasetname>/<filename>.csv , following the file format of https://www.github.com/DartmouthGrangerLab/SceneIQ .
  
   c) Add your dataset to the if statement in ```ConfigDatasetByName.m```
  
   Pre-formatted copies of the JPEG components of other datasets are available upon request (CSIQ, Toyama, TID 2013).

**To generate the figures from the paper:**

1) <todo>
  
2) <todo>
  
**To use the standalone IQA methods from the paper:**

1) <todo>
  
2) <todo>

**If you use this code, please cite:**

<todo>

Elijah FW Bowen is responsible for any problems herein: elijah.floyd.william.bowen@dartmouth.edu
