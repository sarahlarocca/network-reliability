import scipy.io as sio

mat_contents = sio.loadmat('/media/Files/JHU/Infrastructure/networks2012/Atest.mat')

Atest = mat_contents['Atest']

nTest = 61

########################################################

Mtest = Matrix(Atest)
Gtest = Graph(Mtest)


mean(G10.degree())
mean(G10.centrality_betweenness(normalized=False).values())*2
G10.clustering_average()

G10connectComp = G10.connected_components().pop(0)
G10.sumpathlength = 0
for i in G10connectComp:
	for j in G10connectComp:
		if G10.shortest_path(i,j):
			G10.sumpathlength = G10.sumpathlength + G10.shortest_path_length(i,j)

G10.sumpathlength/((len(G10connectComp)*len(G10connectComp))-len(G10connectComp))
