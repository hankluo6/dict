reset
set ylabel 'time(sec)'
set title 'Performance comparison'
set term png enhanced font 'Verdana,10'
set output 'runtime2.png'
set xlabel 'experiment'
set datafile separator ","

plot [0:100][:1.5e-6] 'cpy_test_front.csv' using 1 with points title 'CPY with bloom',\
'cpy_test_front.csv' using 2 with points title 'CPY with no bloom',\
'ref_test_front.csv' using 1 with points title 'REF with bloom',\
'ref_test_front.csv' using 2 with points title 'REF with no bloom'
