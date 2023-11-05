$env:HTTP_PROXY="http://127.0.0.1:7890"
$env:HTTPS_PROXY="http://127.0.0.1:7890"

conda activate C:\Users\fredyakumo\.conda\envs\stable-diffusion

python.exe webui.py --xformers --api --autolaunch --listen --enable-insecure-extension-access --gradio-auth fredyakumo:123456
