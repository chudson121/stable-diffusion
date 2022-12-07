REM conda env create -f environment.yaml

set root=%userprofile%\miniconda3
call %root%\condabin\activate.bat ldm

set /P id=Enter Prompt And Options : 

python scripts/optimized_txt2img.py --prompt "%id%" --ckpt "sd-v1-4.ckpt" --skip_grid --n_samples 5 --W 448 --H 448 
cmd /k


REM python "scripts\txt2img.py" --ckpt "model 1.3.ckpt" --config "configs\stable-diffusion\v1-inference.yaml" %id%