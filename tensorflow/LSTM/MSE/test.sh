#!/bin/bash
if [ ]; then
	output_dim_arr=(6 12 18 24 30 36)
	for output_dim in ${output_dim_arr[@]}; do
		echo "The output_dim is $output_dim"
		python main.py --output_dim=$output_dim >> 0726_2.txt
	done

	output_dim_arr=(6 12 18 24 30 36)
	trun_num_arr=(1 2 3 4 6 8 12 13 24 26)
	model1="rnn"
	for output_dim in ${output_dim_arr[@]}; do
		echo "The output_dim is $output_dim"
		for trun_num in ${trun_num_arr[@]}; do
			echo "The trun_num is $trun_num"
			python main.py --output_dim=$output_dim --trun_num=$trun_num --model=$model1 >> 0726_rnn.txt
		done
	done

	output_dim_arr=(6 12 18 24 30 36)
	trun_num_arr=(1 2 3 4 6 8 12 13 24 26)
	model2="lstm"
	for output_dim in ${output_dim_arr[@]}; do
		echo "The output_dim is $output_dim"
		for trun_num in ${trun_num_arr[@]}; do
			echo "The trun_num is $trun_num"
			python main.py --output_dim=$output_dim --trun_num=$trun_num --model=$model2 >> 0726_lstm.txt
		done
	done
fi

output_dim_arr=(6 12 18 24 30 36)
for output_dim in ${output_dim_arr[@]}; do
	echo "The output_dim is $output_dim"
	python main.py --output_dim=$output_dim >> 1222.txt
done






























