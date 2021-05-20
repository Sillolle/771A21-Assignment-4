# 771A21-Assignment-4
Repository for assignment 4

# Project Description
We started off with the question- How do differences in aggressive behavioral traits influence the survival rates of agents in a limited geographic area, where agents have to fight over resources in order to survive?

Based on this we built a model where agents move freely around their universe claiming food whenever it is freely available. In the case that multiple agents get to food at the same time, agents decide whether to fight for the food or flee the scene. Here a relationship between an aggressiveness trait and likelihood of getting into a fight is established, with more aggressive turtles choosing to be involved in fights more often than those which are less aggressive. Obtaining food provides the agents with energy but getting involved in fights and not winning leads to the agents dying (here assuming a particularly violent fight situation). Once agents reach full energy (100%), they will spawn a clone of themselves and divide their energy in half (50%). Agents also have the ability to detect whether there is food within a certain radius (defined by a slider). Once food is detected, the turtles will always choose to move towards it in an attempt to claim it.  

One of the main aims of this work is to see which strategies work in which environments, by tweaking variables such as: the amount of energy provided by each piece of food, the amount of food available in the area, distance over which the agent has the ability to detect food as well as the starting proportions of agressive and non-aggressive agents.   

# Installations
This project was developed under Netlogo version 6.2.0. Netlogo is required to run the simulations. 

# Experiments, outcomes and potential future extensions
In this case, geeting involved in a fight is particularly risky to the agents, since every fight they get into will either lead to them obtaining food, but equally as likely them dying. A potential extension to this model would be to have the agents live on after getting involved in a fight but potentially losing a substantial amount of energy (or maybe a new health variable which could be related to reproduction rates). 

It might also be interesting to include desperation for food/energy in this model by basing likelihood of fighting for food on both the aggression level as well as the current energy level of the turtle. It is likely that agents which are more hungry will be more likely to fight than flee in the presence of food.

If one were to think of agents as less individualistic, one could consider food claimed by one individual as an acquisition for all members of their clan. In this extension, fights would only ensue between agents from different clans. Emergent group dynamics, cooperation and attribute diversity within the clans could then be potentailly studied.

# Credits
This project was submitted by Abigail Galea, Oskar Johansson, Gabriel Lindelöf, Ivan Roijals and Anton Rosén as an assignment for a class in Agent Based Modelling at Linköping University. 
