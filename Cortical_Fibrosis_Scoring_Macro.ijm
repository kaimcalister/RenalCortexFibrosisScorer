macro "Cortical Fibrosis Scoring Macro" {
    dir = getDirectory("Choose a Folder of Images");
    list = getFileList(dir);
    setBatchMode(false);
    run("Set Measurements...", "area area_fraction limit display redirect=None decimal=3");
    for (i = 0; i < list.length; i++) {
        if (endsWith(list[i], ".tif") || endsWith(list[i], ".jpeg") || endsWith(list[i], ".png")) {
            
            path = dir + list[i];
            open(path);
            imgID = getImageID();
            imgName = getTitle();
            anotherROI = true;
            while (anotherROI) {
                setTool("freehand");
                waitForUser("Action Required", "Slide: " + imgName + "\n\n1. Draw cortical area\n2. Click OK\n\n(Click 'Cancel' in next step to move to next slide)");
                
                if (selectionType() != -1) {
                    run("Duplicate...", "title=Processing");
                    run("Clear Outside");
                    run("Colour Deconvolution", "vectors=[Masson Trichrome]");
                    selectWindow("Processing-(Colour_1)");
                    setAutoThreshold("Default dark"); 
                    run("Measure");
                    row = nResults - 1;
                    setResult("Label", row, imgName + "_ROI_" + (row + 1));
                    updateResults();
                    close("Processing*");
                    selectImage(imgID);
                }
                anotherROI = getBoolean("Analyze another area on the current slide?");
            }
            close(); 
            run("Collect Garbage");
        }
    }
    
    showMessage("Batch Complete", "All images in the folder have been scored!");
}