@echo off

set http_proxy=http://127.0.0.1:7890
set https_proxy=http://127.0.0.1:7890

git config http.proxy http://127.0.0.1:7890 --replace-all
git config https.proxy http://127.0.0.1:7890 --replace-all

call conda activate stable-diffusion
python.exe webui.py --medvram --api --autolaunch --listen --no-half-vae --enable-insecure-extension-access --gradio-auth fredyakumo:123456

pause
