# Age of Z Origins Stats and Tech Trees

This repo is a data entry exercise to extract the in game stats and modifiers that are spread across a few different areas. My goal is to codify the data model and be able to provide some clarity on build paths to accomplish them.

The main challenge with the games organization of data, attributes, and modifiers.  There is a certain amount of indirection that obfuscates how to optimize these to add an additional element of strategic skill required to play well.

## Conceptual Usage

Given a mostly complete data set, this could help answer questions related to creating builds to satisfy tech trees in a simpler way, for example:


1. How to unlock Fleet #3?
  * While it is clear this is directly managed in the `Garage` it is not clear to get two fleets the requirements that must be met.
  * Requirements include direct resource cost.
  * Building Requirements
  * Summarizing indirect costs
  * Summarizing path to complete


To pose a question like, how do I increase the size of my fleets?





## Data entry

The basic data is stored using (toml)[https://github.com/toml-lang/toml] to provide a friendly means to quickly organize the data.

The basics are to organize the buildings, research, and troops so they can queried upon

## Notes on data quality

I have focused on capturing key pre-requisites and resource costs for upgrades. I have also been trying to capture the gold cost and duration as part of the upgrade process and see that they vary. I am not sure what drives the variance but I assume there is some amount of supply and demand even if this is manipulated by the game developers.
