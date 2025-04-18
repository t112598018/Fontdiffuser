@echo off
REM 執行 Python 腳本以生成內容圖片
python sample.py ^
    --ckpt_dir="ckpt/" ^
    --content_image_path="data_examples/sampling/example_content.jpg" ^
    --style_image_path="data_examples/sampling/example_style.jpg" ^
    --save_image ^
    --save_image_dir="outputs/" ^
    --device="cuda:0" ^
    --algorithm_type="dpmsolver++" ^
    --guidance_type="classifier-free" ^
    --guidance_scale=7.5 ^
    --num_inference_steps=20 ^
    --method="multistep"
