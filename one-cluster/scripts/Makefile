
include makefile.in

simule : one-cluster-simulations.sh
	./one-cluster-simulations.sh $(LATENCY) $(RUN) $(SIM_D)$(SIM_DATA_FILENAME) 

prepar-boxp-data : 
	./genere_boxp_data.sh $(LATENCY) $(SIM_D)$(SIM_DATA_FILENAME) $(BOXP_D)$(SIM_DATA_FILENAME)

trace-comparaison :
	gnuplot -c result_formula.gnu $(LATENCY) $(BOXP_D)$(SIM_DATA_FILENAME)

clean :
	rm $(BOXP_D)$(SIM_DATA_FILENAME)*
	rm $(SIM_D)$(SIM_DATA_FILENAME)*
