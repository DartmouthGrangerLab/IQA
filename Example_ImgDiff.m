%Eli Bowen
%10/30/2019
%this example script loads and preprocesses two images using our code, then predicts the DMOS between them

resourceFolder = fullfile('iqa', 'tensors'); %folder where pre-compiled tensors reside

%% load 2 images
imgFolder = fullfile('Datasets', 'ImageDatasets', 'SceneIQOnline', 'formattedimgs');
img1 = LoadAndVerifyImg(imgFolder, 'coast-art294.jpg', false, [], true); %reference/original image
img2 = LoadAndVerifyImg(imgFolder, 'coast-art294_coast_3.jpg', false, [], true);

imgWidth = size(img1, 2); %matlab images are rows x cols (height x width)
imgHeight = size(img1, 1);
assert(all(size(img1) == size(img2)), 'images must be the same size');

%% measure approach 1 Gaussian
tensor = LoadTensor(resourceFolder, imgWidth, imgHeight, [], 'gaussian0.9');
method1Gauss = CalcImgDist(img1, img2, tensor);

%% measure approach 1 difference of Gaussians (units of DMOS)
tensor = LoadTensor(resourceFolder, imgWidth, imgHeight, [], 'centsurr3.6_5.2_0.7');
method1DoG = CalcImgDist(img1, img2, tensor);

%% measure approach 2 trained to maximize pearson correlation with DMOS on all of SceneIQOnline
tensor = LoadTensor(resourceFolder, imgWidth, imgHeight, 'SceneIQOnline_all', 'method2affinerandwalkwithneg');
method2 = CalcImgDist(img1, img2, tensor);

%% measure SSIM
SSIM = metrix_mux(round(img1*255), round(img2*255), 'SSIM');
%metrix_mux produces similarity ratings, while we produce difference ratings,
%so optionally, convert from similarity to difference:
SSIM = 1 / SSIM;