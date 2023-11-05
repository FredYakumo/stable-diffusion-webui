@echo off

set http_proxy=http://127.0.0.1:7890
set https_proxy=http://127.0.0.1:7890

call C:\ProgramData\anaconda3\Scripts\activate C:\Users\fredyakumo\.conda\envs\stable-diffusion

python.exe webui.py --xformers --api --autolaunch --listen --enable-insecure-extension-access --gradio-auth fredyakumo:123456
