export http_proxy="http://127.0.0.1:7890"
export https_proxy="http://127.0.0.1:7890"
python webui.py --xformers --api --autolaunch --listen --enable-insecure-extension-access --gradio-auth fredyakumo:123456
