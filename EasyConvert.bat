@echo off
set IMAGE_SIZE=224
set INPUT=input
set OUTPUT=final_result
tflite_convert --graph_def_file=tf_files/retrained_graph.pb --output_file=tf_files/optimized_graph.tflite --input_format=TENSORFLOW_GRAPHDEF --output_format=TFLITE --input_shape=1,%IMAGE_SIZE%,%IMAGE_SIZE%,3 --input_array=%INPUT% --output_array=%OUTPUT% --inference_type=FLOAT --input_data_type=FLOAT