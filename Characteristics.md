Characteristics:

Erlang is a general purpose functional programming language, with one of its key characteristics being its support for concurrent programming and message passing.
It favors building up distributed real-time concurrent systems that can scale up with high availability without the system crashing even with multiple user requests at once. 
Erlang’s model allows for thousands/millions of lightweight processes to be created and running independently, using message passing to communicate through each process. 

An additional key characteristic of Erlang is its fault tolerance and reliability. 
When building the language, it was already assumed that systems would fail under certain circumstances, so there were built-in algorithms for detecting these errors and recovering from them. 
Additionally, because these processes are run independently, if one process crashes or encounters an error, it doesn’t stop the other processes from running.

