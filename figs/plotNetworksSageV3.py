import scipy.io as sio

mat_contents = sio.loadmat('/media/Files/JHU/Infrastructure/networks2012/plots/Aplot.mat')

networkInit = mat_contents['AplotInit']
network10 = mat_contents['Aplot10']
network25 = mat_contents['Aplot25']
network50 = mat_contents['Aplot50']
network75 = mat_contents['Aplot75']

########################################################

Minit = Matrix(networkInit)
Ginit = Graph(Minit)

vertex_colors_init = {}

vertex_colors_init['#F8766D'] = []
vertex_colors_init['#CD9600'] = []
vertex_colors_init['#7CAE00'] = []
vertex_colors_init['#00BE67'] = []
vertex_colors_init['#00BFC4'] = []
vertex_colors_init['#00A9FF'] = []
vertex_colors_init['#C77CFF'] = []
vertex_colors_init['#FF61CC'] = []
vertex_colors_init['darkgrey'] = []

for i in range(100):
	Ginit.deg = Ginit.degree(vertices=i)
	if Ginit.deg == 1:
		vertex_colors_init['#F8766D'].append(i)
	elif Ginit.deg == 2:
		vertex_colors_init['#CD9600'].append(i)
	elif Ginit.deg == 3:
		vertex_colors_init['#7CAE00'].append(i)
	elif Ginit.deg == 4:
		vertex_colors_init['#00BE67'].append(i)
	elif Ginit.deg == 5:
		vertex_colors_init['#00BFC4'].append(i)
	elif 6 <= Ginit.deg <= 10:
		vertex_colors_init['#00A9FF'].append(i)
	elif 11 <= Ginit.deg <= 20:
		vertex_colors_init['#C77CFF'].append(i)
	elif Ginit.deg > 20:
		vertex_colors_init['#FF61CC'].append(i)
	elif Ginit.deg == 0:
		vertex_colors_init['darkgrey'].append(i)

Ginit.plot(vertex_colors=vertex_colors_init, vertex_labels=False, vertex_size=70, layout='spring', iterations=1000, save_pos=True).save('Ainitplot.pdf')

pos = Ginit.get_pos()

########################################################

M10 = Matrix(network10)
G10 = Graph(M10)

vertex_colors_10 = {}

vertex_colors_10['#F8766D'] = []
vertex_colors_10['#CD9600'] = []
vertex_colors_10['#7CAE00'] = []
vertex_colors_10['#00BE67'] = []
vertex_colors_10['#00BFC4'] = []
vertex_colors_10['#00A9FF'] = []
vertex_colors_10['#C77CFF'] = []
vertex_colors_10['#FF61CC'] = []
vertex_colors_10['darkgrey'] = []

for i in range(100):
	G10.deg = G10.degree(vertices=i)
	if G10.deg == 1:
		vertex_colors_10['#F8766D'].append(i)
	elif G10.deg == 2:
		vertex_colors_10['#CD9600'].append(i)
	elif G10.deg == 3:
		vertex_colors_10['#7CAE00'].append(i)
	elif G10.deg == 4:
		vertex_colors_10['#00BE67'].append(i)
	elif G10.deg == 5:
		vertex_colors_10['#00BFC4'].append(i)
	elif 6 <= G10.deg <= 10:
		vertex_colors_10['#00A9FF'].append(i)
	elif 11 <= G10.deg <= 20:
		vertex_colors_10['#C77CFF'].append(i)
	elif G10.deg > 20:
		vertex_colors_10['#FF61CC'].append(i)
	elif G10.deg == 0:
		vertex_colors_10['darkgrey'].append(i)


A10plot = G10.plot(vertex_colors=vertex_colors_10, vertex_labels=False, vertex_size=80, pos = pos).save('A10plot.pdf')

########################################################

M25 = Matrix(network25)
G25 = Graph(M25)

vertex_colors_25 = {}

vertex_colors_25['#F8766D'] = []
vertex_colors_25['#CD9600'] = []
vertex_colors_25['#7CAE00'] = []
vertex_colors_25['#00BE67'] = []
vertex_colors_25['#00BFC4'] = []
vertex_colors_25['#00A9FF'] = []
vertex_colors_25['#C77CFF'] = []
vertex_colors_25['#FF61CC'] = []
vertex_colors_25['darkgrey'] = []

for i in range(100):
	G25.deg = G25.degree(vertices=i)
	if G25.deg == 1:
		vertex_colors_25['#F8766D'].append(i)
	elif G25.deg == 2:
		vertex_colors_25['#CD9600'].append(i)
	elif G25.deg == 3:
		vertex_colors_25['#7CAE00'].append(i)
	elif G25.deg == 4:
		vertex_colors_25['#00BE67'].append(i)
	elif G25.deg == 5:
		vertex_colors_25['#00BFC4'].append(i)
	elif 6 <= G25.deg <= 10:
		vertex_colors_25['#00A9FF'].append(i)
	elif 11 <= G25.deg <= 20:
		vertex_colors_25['#C77CFF'].append(i)
	elif G25.deg > 20:
		vertex_colors_25['#FF61CC'].append(i)
	elif G25.deg == 0:
		vertex_colors_25['darkgrey'].append(i)

G25plot = G25.plot(vertex_colors=vertex_colors_25, vertex_labels=False, vertex_size=80, pos = pos).save('A25plot.pdf')

########################################################

M50 = Matrix(network50)
G50 = Graph(M50)

vertex_colors_50 = {}

vertex_colors_50['#F8766D'] = []
vertex_colors_50['#CD9600'] = []
vertex_colors_50['#7CAE00'] = []
vertex_colors_50['#00BE67'] = []
vertex_colors_50['#00BFC4'] = []
vertex_colors_50['#00A9FF'] = []
vertex_colors_50['#C77CFF'] = []
vertex_colors_50['#FF61CC'] = []
vertex_colors_50['darkgrey'] = []

for i in range(100):
	G50.deg = G50.degree(vertices=i)
	if G50.deg == 1:
		vertex_colors_50['#F8766D'].append(i)
	elif G50.deg == 2:
		vertex_colors_50['#CD9600'].append(i)
	elif G50.deg == 3:
		vertex_colors_50['#7CAE00'].append(i)
	elif G50.deg == 4:
		vertex_colors_50['#00BE67'].append(i)
	elif G50.deg == 5:
		vertex_colors_50['#00BFC4'].append(i)
	elif 6 <= G50.deg <= 10:
		vertex_colors_50['#00A9FF'].append(i)
	elif 11 <= G50.deg <= 20:
		vertex_colors_50['#C77CFF'].append(i)
	elif G50.deg > 20:
		vertex_colors_50['#FF61CC'].append(i)
	elif G50.deg == 0:
		vertex_colors_50['darkgrey'].append(i)

G50plot = G50.plot(vertex_colors=vertex_colors_50, vertex_labels=False, vertex_size=80, pos = pos).save('A50plot.pdf')

########################################################

M75 = Matrix(network75)
G75 = Graph(M75)

vertex_colors_75 = {}

vertex_colors_75['#F8766D'] = []
vertex_colors_75['#CD9600'] = []
vertex_colors_75['#7CAE00'] = []
vertex_colors_75['#00BE67'] = []
vertex_colors_75['#00BFC4'] = []
vertex_colors_75['#00A9FF'] = []
vertex_colors_75['#C77CFF'] = []
vertex_colors_75['#FF61CC'] = []
vertex_colors_75['darkgrey'] = []

for i in range(100):
	G75.deg = G75.degree(vertices=i)
	if G75.deg == 1:
		vertex_colors_75['#F8766D'].append(i)
	elif G75.deg == 2:
		vertex_colors_75['#CD9600'].append(i)
	elif G75.deg == 3:
		vertex_colors_75['#7CAE00'].append(i)
	elif G75.deg == 4:
		vertex_colors_75['#00BE67'].append(i)
	elif G75.deg == 5:
		vertex_colors_75['#00BFC4'].append(i)
	elif 6 <= G75.deg <= 10:
		vertex_colors_75['#00A9FF'].append(i)
	elif 11 <= G75.deg <= 20:
		vertex_colors_75['#C77CFF'].append(i)
	elif G75.deg > 20:
		vertex_colors_75['#FF61CC'].append(i)
	elif G75.deg == 0:
		vertex_colors_75['darkgrey'].append(i)

G75plot = G75.plot(vertex_colors=vertex_colors_75, vertex_labels=False, vertex_size=80, pos = pos).save('A75plot.pdf')

