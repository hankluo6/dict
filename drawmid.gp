reset
set ylabel 'time(sec)'
set title 'Performance comparison'
set term png enhanced font 'Verdana,10'
set output 'runtime_mid.png'
set xlabel 'experiment'
set datafile separator ","

plot [0:100][:1.5e-6] 'my_cpy_mid_data.csv' using 1 with points title 'CPY with bloom',\
'my_cpy_mid_data.csv' using 2 with points title 'CPY with no bloom',\
'my_ref_mid_data.csv' using 1 with points title 'REF with bloom',\
'my_ref_mid_data.csv' using 2 with points title 'REF with no bloom'
