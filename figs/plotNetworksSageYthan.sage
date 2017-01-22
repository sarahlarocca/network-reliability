import scipy.io as sio

mat_contents = sio.loadmat('/media/Files/JHU/Infrastructure/networks2012/plots/YthanPlot.mat')

networkInit = mat_contents['YthanPlotInit']
network10 = mat_contents['YthanPlot10']
network25 = mat_contents['YthanPlot25']
network50 = mat_contents['YthanPlot50']
network75 = mat_contents['YthanPlot75']

posYthan = load('posYthan')

nYthan = 134

########################################################

Minit = Matrix(networkInit)
Ginit = Graph(Minit)

vertex_colors_init = {}

vertex_colors_init['#F8766D'] = []
vertex_colors_init['#7CAE00'] = []
vertex_colors_init['#00BFC4'] = []
vertex_colors_init['#C77CFF'] = []
vertex_colors_init['darkgrey'] = []

for i in range(nYthan):
	Ginit.deg = Ginit.degree(vertices=i)
	if Ginit.deg == 1:
		vertex_colors_init['#F8766D'].append(i)
	elif Ginit.deg == 2:
		vertex_colors_init['#7CAE00'].append(i)
	elif 3 <= Ginit.deg <= 5:
		vertex_colors_init['#00BFC4'].append(i)
	elif Ginit.deg >= 6:
		vertex_colors_init['#C77CFF'].append(i)
	elif Ginit.deg == 0:
		vertex_colors_init['darkgrey'].append(i)

#Ginit.plot(vertex_colors=vertex_colors_init, vertex_labels=False, vertex_size=100, layout='spring', iterations=1000000, save_pos=True).save('YthanInitplot.pdf',figsize=(8,8))

Ginit.plot(vertex_colors=vertex_colors_init, vertex_labels=False, vertex_size=100, pos = posYthan).save(posYthan, 'posYthan')save('YthanInitplot.pdf',figsize=(8,8))

#posYthan = Ginit.get_pos()

#save(posYthan, 'posYthan')

########################################################

M10 = Matrix(network10)
G10 = Graph(M10)

vertex_colors_10 = {}

vertex_colors_10['#F8766D'] = []
vertex_colors_10['#7CAE00'] = []
vertex_colors_10['#00BFC4'] = []
vertex_colors_10['#C77CFF'] = []
vertex_colors_10['darkgrey'] = []

for i in range(nYthan):
	G10.deg = G10.degree(vertices=i)
	if G10.deg == 1:
		vertex_colors_10['#F8766D'].append(i)
	elif G10.deg == 2:
		vertex_colors_10['#7CAE00'].append(i)
	elif 3 <= G10.deg <= 5:
		vertex_colors_10['#00BFC4'].append(i)
	elif G10.deg >= 6:
		vertex_colors_10['#C77CFF'].append(i)
	elif G10.deg == 0:
		vertex_colors_10['darkgrey'].append(i)

G10.plot(vertex_colors=vertex_colors_10, vertex_labels=False, vertex_size=100, pos = posYthan).save('Ythan10plot.pdf',figsize=(8,8))

########################################################

M25 = Matrix(network25)
G25 = Graph(M25)

vertex_colors_25 = {}

vertex_colors_25['#F8766D'] = []
vertex_colors_25['#7CAE00'] = []
vertex_colors_25['#00BFC4'] = []
vertex_colors_25['#C77CFF'] = []
vertex_colors_25['darkgrey'] = []

for i in range(nYthan):
	G25.deg = G25.degree(vertices=i)
	if G25.deg == 1:
		vertex_colors_25['#F8766D'].append(i)
	elif G25.deg == 2:
		vertex_colors_25['#7CAE00'].append(i)
	elif 3 <= G25.deg <= 5:
		vertex_colors_25['#00BFC4'].append(i)
	elif G25.deg >= 6:
		vertex_colors_25['#C77CFF'].append(i)
	elif G25.deg == 0:
		vertex_colors_25['darkgrey'].append(i)

G25.plot(vertex_colors=vertex_colors_25, vertex_labels=False, vertex_size=100, pos = posYthan).save('Ythan25plot.pdf',figsize=(8,8))

########################################################

M50 = Matrix(network50)
G50 = Graph(M50)

vertex_colors_50 = {}

vertex_colors_50['#F8766D'] = []
vertex_colors_50['#7CAE00'] = []
vertex_colors_50['#00BFC4'] = []
vertex_colors_50['#C77CFF'] = []
vertex_colors_50['darkgrey'] = []

for i in range(nYthan):
	G50.deg = G50.degree(vertices=i)
	if G50.deg == 1:
		vertex_colors_50['#F8766D'].append(i)
	elif G50.deg == 2:
		vertex_colors_50['#7CAE00'].append(i)
	elif 3 <= G50.deg <= 5:
		vertex_colors_50['#00BFC4'].append(i)
	elif G50.deg >= 6:
		vertex_colors_50['#C77CFF'].append(i)
	elif G50.deg == 0:
		vertex_colors_50['darkgrey'].append(i)

G50.plot(vertex_colors=vertex_colors_50, vertex_labels=False, vertex_size=100, pos = posYthan).save('Ythan50plot.pdf',figsize=(8,8))

########################################################

M75 = Matrix(network75)
G75 = Graph(M75)

vertex_colors_75 = {}

vertex_colors_75['#F8766D'] = []
vertex_colors_75['#7CAE00'] = []
vertex_colors_75['#00BFC4'] = []
vertex_colors_75['#C77CFF'] = []
vertex_colors_75['darkgrey'] = []

for i in range(nYthan):
	G75.deg = G75.degree(vertices=i)
	if G75.deg == 1:
		vertex_colors_75['#F8766D'].append(i)
	elif G75.deg == 2:
		vertex_colors_75['#7CAE00'].append(i)
	elif 3 <= G75.deg <= 5:
		vertex_colors_75['#00BFC4'].append(i)
	elif G75.deg >= 6:
		vertex_colors_75['#C77CFF'].append(i)
	elif G75.deg == 0:
		vertex_colors_75['darkgrey'].append(i)

G75.plot(vertex_colors=vertex_colors_75, vertex_labels=False, vertex_size=100, pos = posYthan).save('Ythan75plot.pdf',figsize=(8,8))

########################################################


mean(Ginit.degree())
mean(Ginit.centrality_betweenness(normalized=False).values())*2
Ginit.clustering_average()

Ginit.sumpathlength = 0
for i in range(nYthan):
	for j in range(nYthan):
		Ginit.sumpathlength = Ginit.sumpathlength + Ginit.shortest_path_length(i,j)

Ginit.sumpathlength/((nYthan*nYthan)-nYthan)


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



mean(G25.degree())
mean(G25.centrality_betweenness(normalized=False).values())*2
G25.clustering_average()

G25connectComp = G25.connected_components().pop(0)
G25.sumpathlength = 0
for i in G25connectComp:
	for j in G25connectComp:
		if G25.shortest_path(i,j):
			G25.sumpathlength = G25.sumpathlength + G25.shortest_path_length(i,j)

G25.sumpathlength/((len(G25connectComp)*len(G25connectComp))-len(G25connectComp))



mean(G50.degree())
mean(G50.centrality_betweenness(normalized=False).values())*2
G50.clustering_average()

G50connectComp = G50.connected_components().pop(0)
G50.sumpathlength = 0
for i in G50connectComp:
	for j in G50connectComp:
		if G50.shortest_path(i,j):
			G50.sumpathlength = G50.sumpathlength + G50.shortest_path_length(i,j)

G50.sumpathlength/((len(G50connectComp)*len(G50connectComp))-len(G50connectComp))


mean(G75.degree())
mean(G75.centrality_betweenness(normalized=False).values())*2
G75.clustering_average()

G75connectComp = G75.connected_components().pop(0)
G75.sumpathlength = 0
for i in G75connectComp:
	for j in G75connectComp:
		if G75.shortest_path(i,j):
			G75.sumpathlength = G75.sumpathlength + G75.shortest_path_length(i,j)

G75.sumpathlength/((len(G75connectComp)*len(G75connectComp))-len(G75connectComp))

