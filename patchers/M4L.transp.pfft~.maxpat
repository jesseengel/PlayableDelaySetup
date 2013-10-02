{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 59.0, 44.0, 457.0, 360.0 ],
		"bglocked" : 0,
		"defrect" : [ 59.0, 44.0, 457.0, 360.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 10.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial Bold",
		"gridonopen" : 0,
		"gridsize" : [ 8.0, 8.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "<",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"frgb" : [ 0.101961, 0.121569, 0.172549, 1.0 ],
					"patching_rect" : [ 141.0, 56.0, 19.0, 18.0 ],
					"id" : "obj-43"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "<",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"frgb" : [ 0.101961, 0.121569, 0.172549, 1.0 ],
					"patching_rect" : [ 140.0, 304.0, 19.0, 18.0 ],
					"id" : "obj-42"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Perform an Inverse Fast Fourier Transform to translate the signal back into the time domain and output the resulting audio signal.",
					"linecount" : 3,
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"frgb" : [ 0.101961, 0.121569, 0.172549, 1.0 ],
					"patching_rect" : [ 152.0, 291.0, 208.0, 41.0 ],
					"id" : "obj-41"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Spectral transposer",
					"linecount" : 2,
					"fontname" : "Arial Bold",
					"numinlets" : 1,
					"numoutlets" : 0,
					"textcolor" : [ 0.3, 0.34, 0.4, 1.0 ],
					"fontsize" : 10.0,
					"frgb" : [ 0.3, 0.34, 0.4, 1.0 ],
					"patching_rect" : [ 24.0, 260.0, 64.0, 29.0 ],
					"id" : "obj-40"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Translate the signal from the  time domain into the frequency domain by performing a windowed Fast Fourier Transform.",
					"linecount" : 3,
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"frgb" : [ 0.101961, 0.121569, 0.172549, 1.0 ],
					"patching_rect" : [ 152.0, 44.0, 199.0, 41.0 ],
					"id" : "obj-39"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Input signal",
					"fontname" : "Arial Bold",
					"numinlets" : 1,
					"numoutlets" : 0,
					"textcolor" : [ 0.3, 0.34, 0.4, 1.0 ],
					"fontsize" : 10.0,
					"frgb" : [ 0.3, 0.34, 0.4, 1.0 ],
					"patching_rect" : [ 16.0, 56.0, 67.0, 18.0 ],
					"id" : "obj-38"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Output signal",
					"fontname" : "Arial Bold",
					"numinlets" : 1,
					"numoutlets" : 0,
					"textcolor" : [ 0.3, 0.34, 0.4, 1.0 ],
					"fontsize" : 10.0,
					"frgb" : [ 0.3, 0.34, 0.4, 1.0 ],
					"patching_rect" : [ 8.0, 304.0, 76.0, 18.0 ],
					"id" : "obj-37"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"prototypename" : "M4L.patcher-summary",
					"text" : "Frequency-domain pitch shifter for pfft~",
					"fontname" : "Arial Bold Italic",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 11.0,
					"frgb" : [ 0.101961, 0.121569, 0.172549, 1.0 ],
					"patching_rect" : [ 165.0, 14.0, 220.0, 19.0 ],
					"id" : "obj-34"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"prototypename" : "M4L.subpatcher-title",
					"text" : "M4L.transp.pfft~",
					"fontname" : "Arial Bold Italic",
					"numinlets" : 1,
					"numoutlets" : 0,
					"textcolor" : [ 0.3, 0.34, 0.4, 1.0 ],
					"fontsize" : 18.0,
					"frgb" : [ 0.3, 0.34, 0.4, 1.0 ],
					"patching_rect" : [ 16.0, 8.0, 151.0, 27.0 ],
					"id" : "obj-33"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Frequency shifting",
					"fontname" : "Arial Bold",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"frgb" : [ 0.101961, 0.121569, 0.172549, 1.0 ],
					"patching_rect" : [ 301.0, 200.0, 100.0, 18.0 ],
					"id" : "obj-31"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Hz",
					"fontname" : "Arial Bold",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"frgb" : [ 0.101961, 0.121569, 0.172549, 1.0 ],
					"patching_rect" : [ 320.0, 224.0, 23.0, 18.0 ],
					"id" : "obj-30"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Pitch scaling factor conversion",
					"fontname" : "Arial Bold",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"frgb" : [ 0.101961, 0.121569, 0.172549, 1.0 ],
					"patching_rect" : [ 270.0, 136.0, 159.0, 18.0 ],
					"id" : "obj-29"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Transposition",
					"fontname" : "Arial Bold",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"frgb" : [ 0.101961, 0.121569, 0.172549, 1.0 ],
					"patching_rect" : [ 181.0, 88.0, 76.0, 18.0 ],
					"id" : "obj-28"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "The expr object contains a mathematical formula that will halve or double the pitch factor for each octave up or down that we transpose the pitch",
					"linecount" : 3,
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"frgb" : [ 0.101961, 0.121569, 0.172549, 1.0 ],
					"patching_rect" : [ 163.0, 155.0, 227.0, 41.0 ],
					"id" : "obj-27"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Pitch scaling factor",
					"linecount" : 3,
					"fontname" : "Arial Bold",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"frgb" : [ 0.101961, 0.121569, 0.172549, 1.0 ],
					"patching_rect" : [ 201.0, 212.0, 46.0, 41.0 ],
					"id" : "obj-26"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Midicents",
					"fontname" : "Arial Bold",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"frgb" : [ 0.101961, 0.121569, 0.172549, 1.0 ],
					"patching_rect" : [ 201.0, 112.0, 57.0, 18.0 ],
					"id" : "obj-25"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"prototypename" : "Live",
					"fontname" : "Arial Bold",
					"numinlets" : 1,
					"numoutlets" : 2,
					"triscale" : 0.75,
					"fontsize" : 10.0,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 272.0, 224.0, 48.0, 18.0 ],
					"id" : "obj-15"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "freqshift $1",
					"fontname" : "Arial Bold",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ],
					"patching_rect" : [ 272.0, 249.0, 64.0, 16.0 ],
					"id" : "obj-14"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "in 3",
					"fontname" : "Arial Bold",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ],
					"patching_rect" : [ 272.0, 200.0, 28.0, 18.0 ],
					"id" : "obj-12",
					"saved_object_attributes" : 					{
						"attr_comment" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"prototypename" : "Live",
					"fontname" : "Arial Bold",
					"numinlets" : 1,
					"numoutlets" : 2,
					"triscale" : 0.75,
					"fontsize" : 10.0,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 152.0, 224.0, 48.0, 18.0 ],
					"id" : "obj-11"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "expr pow(2.\\, $f1/1200)",
					"fontname" : "Arial Bold",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ],
					"patching_rect" : [ 152.0, 136.0, 117.0, 18.0 ],
					"id" : "obj-7"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"prototypename" : "Live",
					"fontname" : "Arial Bold",
					"numinlets" : 1,
					"numoutlets" : 2,
					"triscale" : 0.75,
					"fontsize" : 10.0,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 152.0, 112.0, 48.0, 18.0 ],
					"id" : "obj-6"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "in 2",
					"fontname" : "Arial Bold",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ],
					"patching_rect" : [ 152.0, 88.0, 28.0, 18.0 ],
					"id" : "obj-3",
					"saved_object_attributes" : 					{
						"attr_comment" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "fftout~ 1",
					"fontname" : "Arial Bold",
					"numinlets" : 2,
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"patching_rect" : [ 88.0, 304.0, 50.0, 18.0 ],
					"id" : "obj-2"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "fftin~ 1",
					"fontname" : "Arial Bold",
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontsize" : 10.0,
					"outlettype" : [ "signal", "signal", "signal" ],
					"patching_rect" : [ 88.0, 56.0, 51.0, 18.0 ],
					"id" : "obj-1"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "gizmo~",
					"fontname" : "Arial Bold",
					"numinlets" : 3,
					"numoutlets" : 2,
					"fontsize" : 10.0,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 88.0, 264.0, 50.0, 18.0 ],
					"id" : "obj-8"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 1 ],
					"destination" : [ "obj-2", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 1 ],
					"destination" : [ "obj-8", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-8", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
