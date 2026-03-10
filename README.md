// Licensed under the MIT License (c) 2026 Kai McAlister

Cortical Fibrosis Scoring Macro (ImageJ/FIJI) is an automated ImageJ macro designed to efficiently score collagen deposition (fibrosis) in the renal cortex of Masson's Trichrome stained histology slides.
The tool uses the "Colour Deconvolution" plugin (1,2) to isolate the blue color channel, which demarcates the fibrotic burden. It then measures the % area for the blue channel and returns a score, allowing 
for non-biased assessment of cortical fibrotic burden.

Please ensure you have installed the "Colour Deconvolution" plugin prior to installing this macro (1).

Installation
1) Download the Cortical_Fibrosis_Scoring_Macros.ijm file
2) Open your FIJI/ImageJ folder
3) Move the file into the plugins folder
4) Restart FIJI/ImageJ. The macro will now appear at the bottom of the plugins menu

How to use
1) Place all image files you wish to be scored into a single folder
2) Launch the plugin and select the folder created in step 1
3) The macro will open the first image and prompt you to define the cortical section of your slide using the freehand tool. Click ok once you have defind that region.
4) The macro will deconvolve and score the slide. Please allow up to 5 minutes to complete the scoring.
5) If you wish to score another section of the cortex, click yes when prompted
6) Otherwise, repeat from step 3 until the entire folder is scored

Citations

If you use this macro in your research, cite it as follows:

Kai McAlister, Natalie G. Scholpa, Rick G. Schnellmann. (2026). Renal Cortex Fibrosis Scorer for ImageJ. GitHub. Repository: https://github.com/kaimcalister/RenalCortexFibrosisScorer

Also, please cite the authors of the "Colour Deconvolution" plugin:

(1) Landini G, Martinelli G, Piccinini F. Colour Deconvolution – stain unmixing in histological imaging. Bioinformatics 2020, https://doi.org/10.1093/bioinformatics/btaa847

(2) Ruifrok AC, Johnston DA. Quantification of histochemical staining by color deconvolution. Analytical and Quantitative Cytology and Histology 23: 291-299, 2001.
