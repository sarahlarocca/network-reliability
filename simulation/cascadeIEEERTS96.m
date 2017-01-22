 [edges_IEEERTS96] = edgeList(A_IEEERTS96,n_IEEERTS96);
 [failuresER_IEEERTS96] = edgeFailRandV2(length(edges_IEEERTS96),edges_IEEERTS96);
 failureLevels = [1 2 3 4 5 10];
 [cFailures_IEEERTS96] = cascade(A_IEEERTS96,n_IEEERTS96,failuresER_IEEERTS96,'edge',failureLevels,'betweenness',0.1);