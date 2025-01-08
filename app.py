import gradio as gr
import numpy as np

def flip_image(image):
    """画像を水平方向に反転させる関数"""
    if image is None:
        return None
    return np.fliplr(image)

def create_demo():
    """Gradioデモアプリケーションの作成"""
    with gr.Blocks() as demo:
        gr.Markdown(
            """
            # 🌟 Simple Image Flipper
            画像を水平方向に反転させるシンプルなデモアプリケーションです。
            """
        )
        
        with gr.Row():
            with gr.Column():
                input_image = gr.Image(label="入力画像")
                flip_button = gr.Button("画像を反転", variant="primary")
            
            with gr.Column():
                output_image = gr.Image(label="出力画像")
        
        flip_button.click(
            fn=flip_image,
            inputs=input_image,
            outputs=output_image
        )
        
    return demo

if __name__ == "__main__":
    demo = create_demo()
    demo.launch()
