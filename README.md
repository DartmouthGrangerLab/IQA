# IQA
Public code for image quality analysis projects

This is the minimal set of code needed to run. Lab members should look to our private repository "Jpeg" (IQA folder) for a more complete code base (e.g. Dartmouth computing cluster scripts, future unpublished work).

Clarification of this code is ongoing...

**General Installation:**

This code is entirely written in matlab (no addition compilers needed, e.g. mex). Tested on Matlab 2017a.

1) Choose a matlab working directory. In the code and this readme, all files and folders are *assumed* to be right within that directory (you will have a folder <chosen_working_dir>/iqa containing this code).

2) Download this repository. Add it and all sub-folders to your matlab path.

3) Download the only code dependency, https://www.github.com/DartmouthGrangerLab/MatlabCommon . Add it and all sub-folders to your matlab path (doesn't matter where you put it).

**Additional Installation to Generate Paper Figures:**

4) Download a dataset, and place that dataset in \<chosen_working_dir\>/Datasets/ImageDatasets/\<datasetname\> . For example, you might go to https://www.github.com/DartmouthGrangerLab/SceneIQ and place the contents of the /online folder in \<chosen_working_dir\>/Datasets/ImageDatasets/SceneIQOnline/ . If you wish to create a **new dataset**:
  
   a) Place your images in \<chosen_working_dir\>/Datasets/ImageDatasets/\<newdatasetname\>/formattedimgs/ following the file naming convention of https://www.github.com/DartmouthGrangerLab/SceneIQ .
  
   b) Place your human ratings in \<chosen_working_dir\>/Datasets/ImageDatasets/<newdatasetname>/\<filename\>.csv , following the file format of https://www.github.com/DartmouthGrangerLab/SceneIQ .
  
   c) Add your dataset to the if statement in ```ConfigDatasetByName.m```
  
   Pre-formatted copies of other datasets are available upon request (JPEG components of CSIQ, Toyama, TID 2013).

5) To compare against SSIM or other popular IQA measures, download metrix_mux v1.1 ( http://ollie-imac.cs.northwestern.edu/~ollie/GMM/code/metrix_mux/ ) and add it to your matlab path.

**To use the standalone IQA methods from the paper:**

1) Load reference/original image ```img1``` and degraded image ```img2```, in grayscale (a 2D matrix, on range black=0 to white=1).

2) Load a pre-compiled tensor by calling ```tensor = LoadTensor(...)```

3) Difference the images using ```iqaResult = CalcImgDist(img1, img2, tensor)```

Refer to ```Example_ImgDiff.m``` for a full implementation of this (conveniently using the image formatting code from the paper).

**To generate the figures from the paper:**
  
Refer to ```Example_RenderFigs.m``` for a full implementation of this.

**To compile new tensors / IQA measures:**

Refer to ```Example_CompileTensors.m``` for a full implementation of this.

**If you use this code, please cite:**

```E.F.W. Bowen, A. Rodriguez, D. Sowinski, R. Granger, "Visual stream connectivity predicts image quality assessments"```

Elijah FW Bowen is responsible for any problems herein: elijah.floyd.william.bowen@dartmouth.edu
