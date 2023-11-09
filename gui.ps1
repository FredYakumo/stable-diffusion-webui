param(
    [String]$auth_command = "",
    [String]$auth_name = "fredyakumo",
    [String]$auth_password = "123456"
);

$no_password_port = 7862

$env:HTTP_PROXY = "http://127.0.0.1:7890"
$env:HTTPS_PROXY = "http://127.0.0.1:7890"

conda activate C:\Users\fredyakumo\.conda\envs\stable-diffusion

if ($auth_command -eq "--auth") {
    python.exe webui.py --xformers --api --autolaunch --listen --enable-insecure-extension-access --gradio-auth "${auth_name}:${auth_password}"
}
else {
    python.exe webui.py --xformers --api --autolaunch --listen --enable-insecure-extension-access --port $no_password_port
}
