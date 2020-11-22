
include makefile.in

simul : one-cluster-simulations.sh
	./one-cluster-simulations.sh $(LATENCY) $(RUN) $(SIM_D)$(FILENAME) 

PreparData : 
	./genere_ratioWP.sh $(LATENCY) 

trace :
	gnuplot -c result_formula.gnu $(LATENCY)
