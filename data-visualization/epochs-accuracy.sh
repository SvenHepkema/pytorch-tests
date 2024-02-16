if [ $# -ne 1 ]; then
	echo "Enter a filename as the first positional argument."
	exit -1
fi

cat $1 | awk -F, '{print $1, $10}' | gnuplot -p -e "plot '-' with points pt 5; pause -1"