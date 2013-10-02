#To avoid feedback loops run output of PolyDelay to pattrstorage
#and only run live.numboxes straight to poly
import launchpad
from polydelay import polydelay

class delayLines:
	def __init__(self):
		self.focus = 0
		self.octave_cue = 0
		self.slider_menu = 0
		self.keyboard_menu = 0
		self.times = [0]*4
		self.pitches = [0]*4
		self.octaves = [0]*4
		self.onoffs = [0]*4

#from java.lang.Thread import sleep
### Global Variables ###
color_dict = {'Red': [0,3], 'Green': [3,0], 'Yellow': [3,3], 'Clear': [0,0]}
octave_dict = {-1: 'Red', 0:'Green', 1:'Yellow'}



### Define my Objects ###
sidebar = launchpad.sidebar()
d = polydelay()

wet = launchapad.slider('wet', 0, 100, 'Yellow')
feedback = launchpad.slider('feedback', 1, 100, 'Red')
dry = launchpad.button('dry', 'toggle', 2, 1, 'Green')



###External Functions###

#internal function (base 0)
def focus(t):
	d.focus = t
	#print 'focus:', d.focus

#external function (base 1 input)
def target(t):
	if t == 0:
		d.focus = 0
	else:
		d.focus = t-1
	#print 'target:', d.focus	

def time(val):
	d.times[d.focus] = val

	
def pitch(val):
	d.pitches[d.focus] = val

	
def octave(val):
	tmp = d.octaves[d.focus] + val
	if abs(tmp) <= 1:
		d.octaves[d.focus] = tmp
		to_max('octave', d.focus, d.octaves[d.focus])

	
def onoff(val):
	d.onoffs[d.focus] = val
	#print 'onoffs:', d.onoffs, d.focus, d.onoffs[d.focus]


def tap_in(val):
	if val:
		launchpad.led(8,8-sidebar.tap_tempo,'Green')
	else:
		launchpad.led(8,8-sidebar.tap_tempo,'Clear')


def tap_out():
	maxObject.outlet(0,['tap', 'bang'])


### For comunicating with Max ###
def refresh_page():
	tmp = []

	for i in range(4):
		#turn on the columns that are on	
		if d.onoffs[i] == 1:
			launchpad.column(d.times[i], d.pitches[i], octave_dict[d.octaves[i]])
			tmp.append(d.times[i])
		#turn off the columns that are off and not on in another delay line		
		elif not any(d.times[i]==itmp for itmp in tmp):
			launchpad.clear_column(d.times[i])

	#clear the rest of them
	for icolumn in range(8):
		if not any(icolumn==itime for itime in d.times):
			launchpad.clear_column(icolumn)

	###Octave Buttons####
	launchpad.led(8,8-sidebar.octave_up,'Yellow')
	launchpad.led(8,8-sidebar.octave_down,'Red')







### Behavior Functions / From Launchpad ###

def press(*A):
	# Python's varargs are implemented as tuples, not lists. (list(A))
	xtime, ypitch, push = list(A)
	#map 0:7 onto 8:1
	ypitch = 8-ypitch
	# print "x:", x, "y:", y, "push:", push
	
	if xtime < 8:

		if d.slider_menu:
			if xtime == wet.column:
				wet.set(ypitch)
			elif xtime == feedback.column:
				feedback.set(ypitch)
			elif xtime == dry.x and ypitch == dry.y:
				dry.push(push)

		elif d.keyboard_menu:
			print 'insert keyboard functions here'
		else:

			if push:
				foundit = 0

				for i, ionoff in enumerate(d.onoffs): 

					#find active lines with same delay time and pitch and turn them off
					if ionoff and d.times[i]==xtime:			
			
						if d.pitches[i]==ypitch and d.octave_cue==0:
							focus(i)
							onoff(0)
							to_max('onoff', d.focus, 0)
							d.octaves[i]=0
							to_max('octave', d.focus, 0)
							foundit = 1
						#or just set the pitch
						else:
							focus(i)
							pitch(ypitch)
							to_max('pitch', d.focus, ypitch)
							if d.octave_cue != 0:
								octave(d.octave_cue)
							foundit = 1

				
				#if none found, turn on a new line
				if not foundit:

					#if there's an open delay line, use it
					if d.onoffs.count(0) > 0:	
						focus(d.onoffs.index(0))
						onoff(1)
						to_max('onoff', d.focus, 1)
					#otherwise use the closest line
					else:
						focus( min(range(len(d.times)), key=lambda index: abs(d.times[index]-xtime)) )

					#In both cases, set the time and pitch
					time(xtime)
					to_max('time', d.focus, xtime)
					pitch(ypitch)
					to_max('pitch', d.focus, ypitch)
					if d.octave_cue != 0:
						octave(d.octave_cue)

				#always refresh the page after a push
				refresh_page()


	#Sidebar Functions 
	elif xtime == 8:

		# For bringing octaves up	
		if ypitch == sidebar.octave_up:
			if push:
				d.octave_cue = 1
			else:
				d.octave_cue = 0

		#For bringing octaves down	
		if ypitch == sidebar.octave_down:
			if push:
				d.octave_cue = -1
			else:
				d.octave_cue = 0

		#For tap tempo	
		if ypitch == sidebar.tap_tempo:
			if push:
				tap_out()
				launchpad.led(8,8-sidebar.tap_tempo,'Green')
			else:
				launchpad.led(8,8-sidebar.tap_tempo,'Clear')

		#For Sliders
		if ypitch == sidebar.sliders:
			if push:
				d.slider_menu = 1
				launchpad.clear_page()
				wet.refresh()
				feedback.refresh()
				dry.refresh()
				launchpad.led(8,8-sidebar.sliders,'Green')
			else:
				d.slider_menu = 0
				refresh_page()
				launchpad.led(8,8-sidebar.sliders,'Clear')

		#For Keyboard
		if ypitch == sidebar.keyboard:
			if push:
				d.keyboard_menu = 1
				launchpad.led(8,8-sidebar.keyboard,'Yellow')
			else:
				d.keyboard_menu = 0
				launchpad.led(8,8-sidebar.keyboard,'Clear')









# Pseudo Code for what I want a python script to do
# Take in OSC from wac.lp, spit out OSC to wac.lp
#  
# ---- Objects
# 
# 
# Bank
# 	Column
# 		.Color
# 		.Length
# 		.(Horizontal or Vertical)
# 		.Filled
# 		Button
# 			.Color
# 			.Flash
# 
# DelayLine
# 	.on
# 	.number
# 	.volume
# 	.pan
# 	.time
# 	.feedback
# 	.shift
# 	.octave
# 	
# 
# ----
# Take Max Input, modify DelayLine attributes
# Take "press" input, modify DelayLine attributes
# 
# Modify DelayLine attributes, update Bank object
# Update bank object, to_max "led"
# ----


# To do
# * Clean up times[focus] mess to make more readable
# * Look for Java API access to Pattr system (would make everything much easier)

### Attributes / From PolyDelay ###





