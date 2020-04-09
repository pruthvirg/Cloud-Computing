#This file plots the response time for different request rates
URL_ATAQUE="http://web-lb-875757970.us-east-1.elb.amazonaws.com/" #change this to load balancer's DNS when we are testing for the autoscaling feature

for i in 1 10 100 500 1000 2000 3000 4000 5000 6000 7000 8000

do
#Results file
	FICH_RESULT="resultados_$i.tsv"
	#Plot
	IMAGEN_RESULT="grafica_$i.png"

	echo -e "Executing bench on $URL_ATAQUE\nPlease,s wait..."

	#Sintaxis: 
	#-n = Number of requests
	#-c = simult. connections
	#-g = output file
	ab -n $i -c $i -g $FICH_RESULT $URL_ATAQUE

	touch $FICH_RESULT

	echo "set terminal png" > plot
	echo "set output \"$IMAGEN_RESULT\"" >>plot
	echo "set title \"$URL_ATAQUE_1\"" >>plot
	echo "set size 1,0.7" >>plot
	echo "set grid y" >> plot
	echo "set xlabel \"Request\"" >> plot
	echo "set ylabel \"Response time (ms)\"" >> plot
	echo "plot \"$FICH_RESULT\" using 9 smooth sbezier with lines title \"server1:\"" >>plot

	gnuplot plot

	rm plot
	gnome-open $IMAGEN_RESULT
#USE BELOW IF NOT IN GNOME
#xdg-open $IMAGEN_RESULT
done
