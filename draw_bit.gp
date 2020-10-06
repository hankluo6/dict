reset
set ylabel 'time(sec)'
set title 'Performance comparison'
set term png enhanced font 'Verdana,10'
set output 'runtime.png'
set xlabel 'the different character position from start'
set datafile separator ","

plot [0:256][:] 'my_cpy_bit_data.csv' using 1 with points title 'CPY with bloom',\
'my_cpy_bit_data.csv' using 2 with points title 'CPY with no bloom',\
'my_ref_bit_data.csv' using 1 with points title 'REF with bloom',\
'my_ref_bit_data.csv' using 2 with points title 'REF with no bloom'
