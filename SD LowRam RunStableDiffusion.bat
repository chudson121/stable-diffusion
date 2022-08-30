call %userprofile%\miniconda3\condabin\activate.bat ldm
set /P id=Enter Prompt And Options : 
python scripts/optimized_txt2img.py --prompt "%id%" --skip_grid --n_samples 5 --W 448 --H 448 
REM python "scripts\txt2img.py" --ckpt "model 1.3.ckpt" --config "configs\stable-diffusion\v1-inference.yaml" %id%
cmd /k