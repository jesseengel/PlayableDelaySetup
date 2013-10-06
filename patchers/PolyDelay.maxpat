{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 6,
			"minor" : 1,
			"revision" : 3,
			"architecture" : "x86"
		}
,
		"rect" : [ 22.0, 44.0, 1638.0, 938.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"statusbarvisible" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"boxes" : [ 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-52",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 762.0, 800.0, 54.0, 20.0 ],
					"text" : "s ---poly"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-42",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 762.0, 761.0, 162.0, 18.0 ],
					"text" : "target 0, global_feedback $1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 665.0, 313.0, 52.0, 20.0 ],
					"text" : "r ---poly"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-3",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 568.0, 279.0, 96.0, 18.0 ],
					"text" : "unit 0"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-57",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 490.0, 246.0, 97.0, 20.0 ],
					"text" : "OSC-route /poly"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-49",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 490.0, 219.0, 97.0, 20.0 ],
					"text" : "r ---to_polydelay"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-46",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1646.0, 546.0, 50.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-44",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1646.0, 581.0, 92.0, 18.0 ],
					"text" : "delaytime[0] $1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-19",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1002.0, 872.0, 36.0, 20.0 ],
					"text" : "pack"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-12",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 947.0, 912.0, 132.0, 20.0 ],
					"text" : "prepend /transport bbu"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-11",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 947.0, 952.0, 85.0, 20.0 ],
					"text" : "s ---to_python"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 1274.0, 453.0, 139.0, 20.0 ],
					"text" : "OSC-route /pattr /preset"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-48",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 846.5, 173.0, 60.0, 20.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-43",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 1443.5, 250.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-41",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1291.5, 645.5, 171.0, 18.0 ],
					"text" : "global_feedback 1."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-34",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "bang" ],
					"patching_rect" : [ 1443.5, 299.0, 34.0, 20.0 ],
					"text" : "t b b"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-25",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1656.5, 496.0, 109.0, 20.0 ],
					"text" : "prepend subscribe"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-17",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 1656.5, 469.0, 49.0, 20.0 ],
					"text" : "zl iter 1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-15",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 1656.5, 443.0, 91.0, 20.0 ],
					"text" : "route attributes"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-7",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1443.5, 481.0, 123.0, 20.0 ],
					"text" : "prepend unsubscribe"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-38",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1274.0, 531.5, 50.0, 18.0 ],
					"text" : "4."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-31",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 1616.5, 385.0, 59.5, 20.0 ],
					"restore" : 					{
						"DryThru" : [ 1.0 ],
						"Input" : [ 0.0 ],
						"Output" : [ 0.0 ],
						"ScalePan" : [ 100.0 ],
						"Voices" : [ 4.0 ],
						"Wet" : [ 100.0 ],
						"clear" : [ 0.0 ],
						"comp_samples" : [ 0.0 ],
						"compensation" : [ 1.0 ],
						"global_feedback" : [ 1.0 ]
					}
,
					"text" : "autopattr",
					"varname" : "u096000394"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-30",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1272.0, 411.0, 97.0, 20.0 ],
					"text" : "r ---to_polydelay"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-258",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1193.0, 496.0, 50.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-195",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1111.0, 907.0, 54.0, 20.0 ],
					"text" : "s ---poly"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-192",
					"linecount" : 2,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1111.0, 864.0, 101.5, 31.0 ],
					"text" : "target 0, tempo_change 1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-88",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 1443.5, 214.5, 60.0, 20.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-39",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 566.25, 914.0, 20.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 338.5, 86.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-37",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 530.25, 914.0, 20.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 315.0, 86.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-35",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 488.0, 914.0, 20.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 290.75, 86.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-33",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 452.75, 914.0, 20.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 267.5, 86.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-29",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 566.25, 953.0, 32.5, 18.0 ],
					"text" : "4"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-28",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 526.75, 953.0, 32.5, 18.0 ],
					"text" : "3"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-27",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 488.0, 953.0, 32.5, 18.0 ],
					"text" : "2"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-26",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 452.75, 953.0, 32.5, 18.0 ],
					"text" : "1"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-21",
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 369.5, 595.0, 25.0, 25.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-18",
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 345.0, 595.0, 25.0, 25.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-13",
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 380.0, 83.0, 25.0, 25.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-10",
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 324.0, 77.0, 25.0, 25.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-177",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 241.0, 374.0, 32.5, 18.0 ],
					"text" : "+ 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-338",
					"maxclass" : "live.line",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 77.331879, 206.0, 7.0, 50.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 34.0, 137.0, 156.0, 5.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-275",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1498.5, 194.5, 90.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 206.0, 30.0, 57.0, 20.0 ],
					"text" : "Presets"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial Bold",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-268",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 36.0, 264.0, 34.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 46.0, 144.0, 32.0, 20.0 ],
					"text" : "Dry "
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-263",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 409.0, 406.0, 32.5, 18.0 ],
					"text" : "*~"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-262",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 441.0, 406.0, 32.5, 18.0 ],
					"text" : "*~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-260",
					"maxclass" : "live.toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 241.0, 342.0, 19.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 50.0, 160.0, 21.0, 19.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "dry",
							"parameter_shortname" : "dry",
							"parameter_type" : 2,
							"parameter_mmax" : 1.0,
							"parameter_enum" : [ "off", "on" ],
							"parameter_initial_enable" : 1,
							"parameter_initial" : [ 1.0 ]
						}

					}
,
					"varname" : "DryThru"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-253",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 345.0, 406.0, 63.0, 18.0 ],
					"text" : "selector~ 2"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-252",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 281.0, 406.0, 63.0, 18.0 ],
					"text" : "selector~ 2"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-14",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1050.5, 766.0, 104.0, 33.0 ],
					"text" : "update delay on tempo change"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-204",
					"maxclass" : "live.text",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 471.0, 768.0, 41.0, 17.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_linknames" : 1,
							"parameter_longname" : "clear",
							"parameter_shortname" : "clear",
							"parameter_type" : 2,
							"parameter_mmax" : 1.0,
							"parameter_enum" : [ "val1", "val2" ]
						}

					}
,
					"text" : "Clear",
					"texton" : "Freeze",
					"varname" : "clear"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-189",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 471.0, 735.0, 60.0, 20.0 ],
					"text" : "r ---clear"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-223",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 471.0, 800.0, 98.0, 18.0 ],
					"text" : "target 0, clear 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-47",
					"maxclass" : "live.line",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 77.331879, 206.0, 7.0, 50.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 190.0, 38.0, 6.0, 152.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-125",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 705.0, 619.0, 73.0, 51.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 81.0, 143.0, 62.0, 51.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_linknames" : 1,
							"parameter_longname" : "ScalePan",
							"parameter_shortname" : "Spread",
							"parameter_type" : 1,
							"parameter_mmin" : -100.0,
							"parameter_mmax" : 100.0,
							"parameter_initial_enable" : 1,
							"parameter_initial" : [ 0 ],
							"parameter_unitstyle" : 5
						}

					}
,
					"varname" : "ScalePan"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-53",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 1111.0, 831.0, 21.0, 21.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-126",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 815.5, 144.0, 214.0, 20.0 ],
					"text" : "This is a little Kludgey initalization"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-58",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 62.331879, 207.0, 37.0, 47.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 381.0, 97.0, 90.0, 20.0 ],
					"text" : "Compensation"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-283",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 705.0, 694.5, 76.0, 51.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 86.0, 70.0, 64.0, 51.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_linknames" : 1,
							"parameter_longname" : "global_feedback",
							"parameter_shortname" : "global_feedback",
							"parameter_type" : 0,
							"parameter_mmax" : 1.0,
							"parameter_initial_enable" : 1,
							"parameter_initial" : [ 1 ],
							"parameter_unitstyle" : 1
						}

					}
,
					"varname" : "global_feedback"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-284",
					"maxclass" : "live.gain~",
					"numinlets" : 2,
					"numoutlets" : 5,
					"outlettype" : [ "signal", "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 409.0, 206.0, 74.0, 76.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 30.0, 38.0, 61.0, 96.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_linknames" : 1,
							"parameter_longname" : "Input",
							"parameter_shortname" : "Input",
							"parameter_type" : 0,
							"parameter_mmin" : -70.0,
							"parameter_mmax" : 0.0,
							"parameter_initial" : [ 0.0 ],
							"parameter_unitstyle" : 4
						}

					}
,
					"varname" : "Input"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-286",
					"linecount" : 5,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 846.5, 204.0, 152.0, 72.0 ],
					"text" : "target 0, input_volume 1, output_volume 0, feedback 0, time 0, units 8n, transpose 0, pan 0, clear 1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-185",
					"linecount" : 4,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1443.5, 411.0, 151.0, 58.0 ],
					"text" : "Voices, comp_samples, compensation, DryThru, Wet, clear, ScalePan, Input, Output"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-110",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 393.0, 326.0, 62.0, 51.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 134.0, 144.0, 64.0, 51.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "wet",
							"parameter_shortname" : "Wet",
							"parameter_type" : 0,
							"parameter_mmax" : 100.0,
							"parameter_initial_enable" : 1,
							"parameter_initial" : [ 100 ],
							"parameter_unitstyle" : 5
						}

					}
,
					"varname" : "Wet"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-137",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 9,
					"outlettype" : [ "int", "int", "float", "float", "float", "", "int", "float", "" ],
					"patching_rect" : [ 1050.5, 800.0, 140.0, 20.0 ],
					"text" : "transport"
				}

			}
, 			{
				"box" : 				{
					"autorestore" : "Polydelay_Presets.json",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-100",
					"linecount" : 5,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1443.5, 546.0, 145.0, 74.0 ],
					"saved_object_attributes" : 					{
						"client_rect" : [ 1004, 267, 1419, 1129 ],
						"parameter_enable" : 0,
						"storage_rect" : [ 766, 44, 1220, 302 ]
					}
,
					"subscribe" : [ "Global_Units", "Global_delaytime", "Global_feedback", "Global_input_volume", "Global_octave", "Global_output_volume", "Global_pan", "Global_pitch", "delaytime[0]", "delaytime[1]", "delaytime[2]", "delaytime[3]", "feedback[0]", "feedback[1]", "feedback[2]", "feedback[3]", "input_volume[0]", "input_volume[1]", "input_volume[2]", "input_volume[3]", "live.toggle[1]", "live.toggle[2]", "live.toggle[3]", "live.toggle[4]", "octave[0]", "octave[1]", "octave[2]", "octave[3]", "output_volume[0]", "output_volume[1]", "output_volume[2]", "output_volume[3]", "pan[0]", "pan[1]", "pan[2]", "pan[3]", "pitch[0]", "pitch[1]", "pitch[2]", "pitch[3]", "units[0]", "units[1]", "units[2]", "units[3]", "global_feedback" ],
					"text" : "pattrstorage Polydelay_Presets @outputmode 3 @subscribemode 1 @savemode 2",
					"varname" : "Polydelay_Presets"
				}

			}
, 			{
				"box" : 				{
					"bubblesize" : 12,
					"fontsize" : 12.0,
					"id" : "obj-90",
					"maxclass" : "preset",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "preset", "int", "preset", "int" ],
					"patching_rect" : [ 1334.0, 531.5, 67.0, 35.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 221.0, 63.0, 21.0, 123.0 ],
					"preset_data" : [ 						{
							"number" : 1,
							"data" : [ 5, "obj-8", "live.numbox", "float", 0.0, 5, "obj-84", "live.gain~", "float", 0.0, 5, "obj-315", "live.numbox", "float", 4.0, 5, "obj-311", "live.text", "float", 1.0, 5, "<invalid>", "live.numbox", "float", 1.0, 5, "<invalid>", "live.numbox", "float", 1.0, 5, "<invalid>", "live.numbox", "float", 0.0, 5, "<invalid>", "live.numbox", "float", 1.0, 5, "<invalid>", "live.menu", "float", 3.0, 5, "<invalid>", "live.numbox", "float", 1.0, 5, "<invalid>", "live.numbox", "float", 0.0, 5, "<invalid>", "live.numbox", "float", 8.0, 5, "<invalid>", "live.menu", "float", 3.0, 5, "<invalid>", "live.numbox", "float", 1.0, 5, "<invalid>", "live.numbox", "float", 0.0, 5, "<invalid>", "live.numbox", "float", 8.0, 5, "<invalid>", "live.menu", "float", 3.0, 5, "<invalid>", "live.numbox", "float", 1.0, 5, "<invalid>", "live.numbox", "float", 0.0, 5, "<invalid>", "live.numbox", "float", 8.0, 5, "<invalid>", "live.menu", "float", 3.0, 5, "obj-110", "live.dial", "float", 100.0, 5, "<invalid>", "live.numbox", "float", 99.0, 5, "<invalid>", "live.numbox", "float", 99.0, 5, "<invalid>", "live.numbox", "float", 99.0, 5, "<invalid>", "live.numbox", "float", 99.0, 5, "<invalid>", "live.numbox", "float", 1.0, 5, "<invalid>", "live.numbox", "float", 0.0, 5, "<invalid>", "live.numbox", "float", 0.0, 5, "<invalid>", "live.numbox", "float", 0.0, 5, "<invalid>", "live.numbox", "float", 1.0, 5, "<invalid>", "live.numbox", "float", 1.0, 5, "<invalid>", "live.numbox", "float", 1.0, 5, "<invalid>", "live.toggle", "float", 1.0, 5, "<invalid>", "live.toggle", "float", 0.0, 5, "<invalid>", "live.toggle", "float", 0.0, 5, "<invalid>", "live.toggle", "float", 0.0, 5, "obj-284", "live.gain~", "float", 0.0, 5, "obj-283", "live.dial", "float", 100.0, 5, "<invalid>", "live.numbox", "float", 0.0, 5, "<invalid>", "live.numbox", "float", 0.0, 5, "<invalid>", "live.numbox", "float", 0.0, 5, "<invalid>", "live.numbox", "float", 0.0, 5, "obj-125", "live.dial", "float", 0.0, 5, "obj-204", "live.text", "float", 0.0, 5, "obj-260", "live.toggle", "float", 1.0 ]
						}
, 						{
							"number" : 2,
							"data" : [ 5, "obj-8", "live.numbox", "float", 0.0, 5, "obj-84", "live.gain~", "float", 0.0, 5, "obj-315", "live.numbox", "float", 4.0, 5, "obj-311", "live.text", "float", 1.0, 5, "<invalid>", "live.numbox", "float", 1.0, 5, "<invalid>", "live.numbox", "float", 1.0, 5, "<invalid>", "live.numbox", "float", 0.0, 5, "<invalid>", "live.numbox", "float", 1.0, 5, "<invalid>", "live.menu", "float", 3.0, 5, "<invalid>", "live.numbox", "float", 5.0, 5, "<invalid>", "live.numbox", "float", 0.0, 5, "<invalid>", "live.numbox", "float", 3.0, 5, "<invalid>", "live.menu", "float", 3.0, 5, "<invalid>", "live.numbox", "float", 1.0, 5, "<invalid>", "live.numbox", "float", 0.0, 5, "<invalid>", "live.numbox", "float", 8.0, 5, "<invalid>", "live.menu", "float", 3.0, 5, "<invalid>", "live.numbox", "float", 1.0, 5, "<invalid>", "live.numbox", "float", 0.0, 5, "<invalid>", "live.numbox", "float", 8.0, 5, "<invalid>", "live.menu", "float", 3.0, 5, "obj-110", "live.dial", "float", 100.0, 5, "<invalid>", "live.numbox", "float", 99.0, 5, "<invalid>", "live.numbox", "float", 99.0, 5, "<invalid>", "live.numbox", "float", 99.0, 5, "<invalid>", "live.numbox", "float", 99.0, 5, "<invalid>", "live.numbox", "float", 1.0, 5, "<invalid>", "live.numbox", "float", 1.0, 5, "<invalid>", "live.numbox", "float", 0.0, 5, "<invalid>", "live.numbox", "float", 0.0, 5, "<invalid>", "live.numbox", "float", 1.0, 5, "<invalid>", "live.numbox", "float", 1.0, 5, "<invalid>", "live.numbox", "float", 1.0, 5, "<invalid>", "live.toggle", "float", 1.0, 5, "<invalid>", "live.toggle", "float", 1.0, 5, "<invalid>", "live.toggle", "float", 0.0, 5, "<invalid>", "live.toggle", "float", 0.0, 5, "obj-284", "live.gain~", "float", 0.0, 5, "obj-283", "live.dial", "float", 100.0, 5, "<invalid>", "live.numbox", "float", 0.0, 5, "<invalid>", "live.numbox", "float", 0.0, 5, "<invalid>", "live.numbox", "float", 0.0, 5, "<invalid>", "live.numbox", "float", 0.0, 5, "obj-125", "live.dial", "float", 0.0, 5, "obj-204", "live.text", "float", 0.0, 5, "obj-260", "live.toggle", "float", 1.0 ]
						}
, 						{
							"number" : 3,
							"data" : [ 5, "obj-8", "live.numbox", "float", 0.0, 5, "obj-84", "live.gain~", "float", 0.0, 5, "obj-315", "live.numbox", "float", 4.0, 5, "obj-311", "live.text", "float", 1.0, 5, "<invalid>", "live.numbox", "float", 1.0, 5, "<invalid>", "live.numbox", "float", 1.0, 5, "<invalid>", "live.numbox", "float", 0.0, 5, "<invalid>", "live.numbox", "float", 1.0, 5, "<invalid>", "live.menu", "float", 3.0, 5, "<invalid>", "live.numbox", "float", 1.0, 5, "<invalid>", "live.numbox", "float", 0.0, 5, "<invalid>", "live.numbox", "float", 8.0, 5, "<invalid>", "live.menu", "float", 3.0, 5, "<invalid>", "live.numbox", "float", 1.0, 5, "<invalid>", "live.numbox", "float", 0.0, 5, "<invalid>", "live.numbox", "float", 8.0, 5, "<invalid>", "live.menu", "float", 3.0, 5, "<invalid>", "live.numbox", "float", 1.0, 5, "<invalid>", "live.numbox", "float", 0.0, 5, "<invalid>", "live.numbox", "float", 8.0, 5, "<invalid>", "live.menu", "float", 3.0, 5, "obj-110", "live.dial", "float", 100.0, 5, "<invalid>", "live.numbox", "float", 99.0, 5, "<invalid>", "live.numbox", "float", 99.0, 5, "<invalid>", "live.numbox", "float", 99.0, 5, "<invalid>", "live.numbox", "float", 99.0, 5, "<invalid>", "live.numbox", "float", 1.0, 5, "<invalid>", "live.numbox", "float", 0.0, 5, "<invalid>", "live.numbox", "float", 0.0, 5, "<invalid>", "live.numbox", "float", 0.0, 5, "<invalid>", "live.numbox", "float", 1.0, 5, "<invalid>", "live.numbox", "float", 1.0, 5, "<invalid>", "live.numbox", "float", 1.0, 5, "<invalid>", "live.toggle", "float", 1.0, 5, "<invalid>", "live.toggle", "float", 0.0, 5, "<invalid>", "live.toggle", "float", 0.0, 5, "<invalid>", "live.toggle", "float", 0.0, 5, "obj-284", "live.gain~", "float", 0.0, 5, "obj-283", "live.dial", "float", 100.0, 5, "<invalid>", "live.numbox", "float", 0.0, 5, "<invalid>", "live.numbox", "float", 0.0, 5, "<invalid>", "live.numbox", "float", 0.0, 5, "<invalid>", "live.numbox", "float", 0.0, 5, "obj-125", "live.dial", "float", 0.0, 5, "obj-204", "live.text", "float", 0.0, 5, "obj-260", "live.toggle", "float", 1.0 ]
						}
, 						{
							"number" : 4,
							"data" : [ 5, "obj-8", "live.numbox", "float", 0.0, 5, "obj-84", "live.gain~", "float", 0.0, 5, "obj-315", "live.numbox", "float", 4.0, 5, "obj-311", "live.text", "float", 1.0, 5, "<invalid>", "live.numbox", "float", 1.0, 5, "<invalid>", "live.numbox", "float", 1.0, 5, "<invalid>", "live.numbox", "float", 0.0, 5, "<invalid>", "live.numbox", "float", 1.0, 5, "<invalid>", "live.menu", "float", 3.0, 5, "<invalid>", "live.numbox", "float", 1.0, 5, "<invalid>", "live.numbox", "float", 0.0, 5, "<invalid>", "live.numbox", "float", 8.0, 5, "<invalid>", "live.menu", "float", 3.0, 5, "<invalid>", "live.numbox", "float", 1.0, 5, "<invalid>", "live.numbox", "float", 0.0, 5, "<invalid>", "live.numbox", "float", 8.0, 5, "<invalid>", "live.menu", "float", 3.0, 5, "<invalid>", "live.numbox", "float", 1.0, 5, "<invalid>", "live.numbox", "float", 0.0, 5, "<invalid>", "live.numbox", "float", 8.0, 5, "<invalid>", "live.menu", "float", 3.0, 5, "obj-110", "live.dial", "float", 100.0, 5, "<invalid>", "live.numbox", "float", 99.0, 5, "<invalid>", "live.numbox", "float", 99.0, 5, "<invalid>", "live.numbox", "float", 99.0, 5, "<invalid>", "live.numbox", "float", 99.0, 5, "<invalid>", "live.numbox", "float", 1.0, 5, "<invalid>", "live.numbox", "float", 0.0, 5, "<invalid>", "live.numbox", "float", 0.0, 5, "<invalid>", "live.numbox", "float", 0.0, 5, "<invalid>", "live.numbox", "float", 1.0, 5, "<invalid>", "live.numbox", "float", 1.0, 5, "<invalid>", "live.numbox", "float", 1.0, 5, "<invalid>", "live.toggle", "float", 1.0, 5, "<invalid>", "live.toggle", "float", 0.0, 5, "<invalid>", "live.toggle", "float", 0.0, 5, "<invalid>", "live.toggle", "float", 0.0, 5, "obj-284", "live.gain~", "float", 0.0, 5, "obj-283", "live.dial", "float", 100.0, 5, "<invalid>", "live.numbox", "float", 0.0, 5, "<invalid>", "live.numbox", "float", 0.0, 5, "<invalid>", "live.numbox", "float", 0.0, 5, "<invalid>", "live.numbox", "float", 0.0, 5, "obj-125", "live.dial", "float", 0.0, 5, "obj-204", "live.text", "float", 0.0, 5, "obj-260", "live.toggle", "float", 1.0 ]
						}
, 						{
							"number" : 5,
							"data" : [ 5, "obj-8", "live.numbox", "float", 0.0, 5, "obj-84", "live.gain~", "float", 0.0, 5, "obj-315", "live.numbox", "float", 4.0, 5, "obj-311", "live.text", "float", 1.0, 5, "<invalid>", "live.numbox", "float", 1.0, 5, "<invalid>", "live.numbox", "float", 1.0, 5, "<invalid>", "live.numbox", "float", 0.0, 5, "<invalid>", "live.numbox", "float", 1.0, 5, "<invalid>", "live.menu", "float", 3.0, 5, "<invalid>", "live.numbox", "float", 1.0, 5, "<invalid>", "live.numbox", "float", 0.0, 5, "<invalid>", "live.numbox", "float", 8.0, 5, "<invalid>", "live.menu", "float", 3.0, 5, "<invalid>", "live.numbox", "float", 1.0, 5, "<invalid>", "live.numbox", "float", 0.0, 5, "<invalid>", "live.numbox", "float", 8.0, 5, "<invalid>", "live.menu", "float", 3.0, 5, "<invalid>", "live.numbox", "float", 1.0, 5, "<invalid>", "live.numbox", "float", 0.0, 5, "<invalid>", "live.numbox", "float", 8.0, 5, "<invalid>", "live.menu", "float", 3.0, 5, "obj-110", "live.dial", "float", 100.0, 5, "<invalid>", "live.numbox", "float", 99.0, 5, "<invalid>", "live.numbox", "float", 99.0, 5, "<invalid>", "live.numbox", "float", 99.0, 5, "<invalid>", "live.numbox", "float", 99.0, 5, "<invalid>", "live.numbox", "float", 1.0, 5, "<invalid>", "live.numbox", "float", 0.0, 5, "<invalid>", "live.numbox", "float", 0.0, 5, "<invalid>", "live.numbox", "float", 0.0, 5, "<invalid>", "live.numbox", "float", 1.0, 5, "<invalid>", "live.numbox", "float", 1.0, 5, "<invalid>", "live.numbox", "float", 1.0, 5, "<invalid>", "live.toggle", "float", 1.0, 5, "<invalid>", "live.toggle", "float", 0.0, 5, "<invalid>", "live.toggle", "float", 0.0, 5, "<invalid>", "live.toggle", "float", 0.0, 5, "obj-284", "live.gain~", "float", 0.0, 5, "obj-283", "live.dial", "float", 100.0, 5, "<invalid>", "live.numbox", "float", 0.0, 5, "<invalid>", "live.numbox", "float", 0.0, 5, "<invalid>", "live.numbox", "float", 0.0, 5, "<invalid>", "live.numbox", "float", 0.0, 5, "obj-125", "live.dial", "float", 0.0, 5, "obj-204", "live.text", "float", 0.0, 5, "obj-260", "live.toggle", "float", 1.0 ]
						}
, 						{
							"number" : 6,
							"data" : [ 5, "obj-8", "live.numbox", "float", 0.0, 5, "obj-84", "live.gain~", "float", 0.0, 5, "obj-315", "live.numbox", "float", 4.0, 5, "obj-311", "live.text", "float", 1.0, 5, "<invalid>", "live.numbox", "float", 1.0, 5, "<invalid>", "live.numbox", "float", 1.0, 5, "<invalid>", "live.numbox", "float", 0.0, 5, "<invalid>", "live.numbox", "float", 1.0, 5, "<invalid>", "live.menu", "float", 3.0, 5, "<invalid>", "live.numbox", "float", 1.0, 5, "<invalid>", "live.numbox", "float", 0.0, 5, "<invalid>", "live.numbox", "float", 8.0, 5, "<invalid>", "live.menu", "float", 3.0, 5, "<invalid>", "live.numbox", "float", 1.0, 5, "<invalid>", "live.numbox", "float", 0.0, 5, "<invalid>", "live.numbox", "float", 8.0, 5, "<invalid>", "live.menu", "float", 3.0, 5, "<invalid>", "live.numbox", "float", 1.0, 5, "<invalid>", "live.numbox", "float", 0.0, 5, "<invalid>", "live.numbox", "float", 8.0, 5, "<invalid>", "live.menu", "float", 3.0, 5, "obj-110", "live.dial", "float", 100.0, 5, "<invalid>", "live.numbox", "float", 99.0, 5, "<invalid>", "live.numbox", "float", 99.0, 5, "<invalid>", "live.numbox", "float", 99.0, 5, "<invalid>", "live.numbox", "float", 99.0, 5, "<invalid>", "live.numbox", "float", 1.0, 5, "<invalid>", "live.numbox", "float", 0.0, 5, "<invalid>", "live.numbox", "float", 0.0, 5, "<invalid>", "live.numbox", "float", 0.0, 5, "<invalid>", "live.numbox", "float", 1.0, 5, "<invalid>", "live.numbox", "float", 1.0, 5, "<invalid>", "live.numbox", "float", 1.0, 5, "<invalid>", "live.toggle", "float", 1.0, 5, "<invalid>", "live.toggle", "float", 0.0, 5, "<invalid>", "live.toggle", "float", 0.0, 5, "<invalid>", "live.toggle", "float", 0.0, 5, "obj-284", "live.gain~", "float", 0.0, 5, "obj-283", "live.dial", "float", 100.0, 5, "<invalid>", "live.numbox", "float", 0.0, 5, "<invalid>", "live.numbox", "float", 0.0, 5, "<invalid>", "live.numbox", "float", 0.0, 5, "<invalid>", "live.numbox", "float", 0.0, 5, "obj-125", "live.dial", "float", 0.0, 5, "obj-204", "live.text", "float", 0.0, 5, "obj-260", "live.toggle", "float", 1.0 ]
						}
, 						{
							"number" : 7,
							"data" : [ 5, "obj-8", "live.numbox", "float", 0.0, 5, "obj-84", "live.gain~", "float", 0.0, 5, "obj-315", "live.numbox", "float", 4.0, 5, "obj-311", "live.text", "float", 1.0, 5, "<invalid>", "live.numbox", "float", 1.0, 5, "<invalid>", "live.numbox", "float", 1.0, 5, "<invalid>", "live.numbox", "float", 0.0, 5, "<invalid>", "live.numbox", "float", 1.0, 5, "<invalid>", "live.menu", "float", 3.0, 5, "<invalid>", "live.numbox", "float", 1.0, 5, "<invalid>", "live.numbox", "float", 0.0, 5, "<invalid>", "live.numbox", "float", 8.0, 5, "<invalid>", "live.menu", "float", 3.0, 5, "<invalid>", "live.numbox", "float", 1.0, 5, "<invalid>", "live.numbox", "float", 0.0, 5, "<invalid>", "live.numbox", "float", 8.0, 5, "<invalid>", "live.menu", "float", 3.0, 5, "<invalid>", "live.numbox", "float", 1.0, 5, "<invalid>", "live.numbox", "float", 0.0, 5, "<invalid>", "live.numbox", "float", 8.0, 5, "<invalid>", "live.menu", "float", 3.0, 5, "obj-110", "live.dial", "float", 100.0, 5, "<invalid>", "live.numbox", "float", 99.0, 5, "<invalid>", "live.numbox", "float", 99.0, 5, "<invalid>", "live.numbox", "float", 99.0, 5, "<invalid>", "live.numbox", "float", 99.0, 5, "<invalid>", "live.numbox", "float", 1.0, 5, "<invalid>", "live.numbox", "float", 0.0, 5, "<invalid>", "live.numbox", "float", 0.0, 5, "<invalid>", "live.numbox", "float", 0.0, 5, "<invalid>", "live.numbox", "float", 1.0, 5, "<invalid>", "live.numbox", "float", 1.0, 5, "<invalid>", "live.numbox", "float", 1.0, 5, "<invalid>", "live.toggle", "float", 1.0, 5, "<invalid>", "live.toggle", "float", 0.0, 5, "<invalid>", "live.toggle", "float", 0.0, 5, "<invalid>", "live.toggle", "float", 0.0, 5, "obj-284", "live.gain~", "float", 0.0, 5, "obj-283", "live.dial", "float", 100.0, 5, "<invalid>", "live.numbox", "float", 0.0, 5, "<invalid>", "live.numbox", "float", 0.0, 5, "<invalid>", "live.numbox", "float", 0.0, 5, "<invalid>", "live.numbox", "float", 0.0, 5, "obj-125", "live.dial", "float", 0.0, 5, "obj-204", "live.text", "float", 0.0, 5, "obj-260", "live.toggle", "float", 1.0 ]
						}
, 						{
							"number" : 8,
							"data" : [ 5, "obj-8", "live.numbox", "float", 0.0, 5, "obj-84", "live.gain~", "float", 0.0, 5, "obj-315", "live.numbox", "float", 4.0, 5, "obj-311", "live.text", "float", 1.0, 5, "<invalid>", "live.numbox", "float", 1.0, 5, "<invalid>", "live.numbox", "float", 1.0, 5, "<invalid>", "live.numbox", "float", 0.0, 5, "<invalid>", "live.numbox", "float", 1.0, 5, "<invalid>", "live.menu", "float", 3.0, 5, "<invalid>", "live.numbox", "float", 1.0, 5, "<invalid>", "live.numbox", "float", 0.0, 5, "<invalid>", "live.numbox", "float", 8.0, 5, "<invalid>", "live.menu", "float", 3.0, 5, "<invalid>", "live.numbox", "float", 1.0, 5, "<invalid>", "live.numbox", "float", 0.0, 5, "<invalid>", "live.numbox", "float", 8.0, 5, "<invalid>", "live.menu", "float", 3.0, 5, "<invalid>", "live.numbox", "float", 1.0, 5, "<invalid>", "live.numbox", "float", 0.0, 5, "<invalid>", "live.numbox", "float", 8.0, 5, "<invalid>", "live.menu", "float", 3.0, 5, "obj-110", "live.dial", "float", 100.0, 5, "<invalid>", "live.numbox", "float", 99.0, 5, "<invalid>", "live.numbox", "float", 99.0, 5, "<invalid>", "live.numbox", "float", 99.0, 5, "<invalid>", "live.numbox", "float", 99.0, 5, "<invalid>", "live.numbox", "float", 1.0, 5, "<invalid>", "live.numbox", "float", 0.0, 5, "<invalid>", "live.numbox", "float", 0.0, 5, "<invalid>", "live.numbox", "float", 0.0, 5, "<invalid>", "live.numbox", "float", 1.0, 5, "<invalid>", "live.numbox", "float", 1.0, 5, "<invalid>", "live.numbox", "float", 1.0, 5, "<invalid>", "live.toggle", "float", 1.0, 5, "<invalid>", "live.toggle", "float", 0.0, 5, "<invalid>", "live.toggle", "float", 0.0, 5, "<invalid>", "live.toggle", "float", 0.0, 5, "obj-284", "live.gain~", "float", 0.0, 5, "obj-283", "live.dial", "float", 100.0, 5, "<invalid>", "live.numbox", "float", 0.0, 5, "<invalid>", "live.numbox", "float", 0.0, 5, "<invalid>", "live.numbox", "float", 0.0, 5, "<invalid>", "live.numbox", "float", 0.0, 5, "obj-125", "live.dial", "float", 0.0, 5, "obj-204", "live.text", "float", 0.0, 5, "obj-260", "live.toggle", "float", 1.0 ]
						}
 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-305",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 55.331879, 200.0, 33.0, 33.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 397.0, 140.0, 56.0, 20.0 ],
					"text" : "Samples"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-306",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 214.0, 880.0, 159.0, 18.0 ],
					"text" : "target 0, comp_samples $1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-308",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 35.331879, 177.0, 38.0, 33.0 ],
					"text" : "Veiw Voice"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-115",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 39.331879, 176.0, 37.0, 20.0 ],
					"text" : "Clear"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-69",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 40.331879, 177.0, 29.0, 33.0 ],
					"text" : "Learn"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.019239, 0.839216, 0.062091, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-62",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "signal", "signal", "" ],
					"patching_rect" : [ 490.0, 339.0, 134.0, 20.0 ],
					"text" : "poly~ poly_polyDelay 4"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-311",
					"maxclass" : "live.text",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 332.25, 800.0, 53.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 379.0, 117.0, 92.0, 17.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_linknames" : 1,
							"parameter_longname" : "compensation",
							"parameter_shortname" : "compensation",
							"parameter_type" : 2,
							"parameter_mmax" : 1.0,
							"parameter_enum" : [ "val1", "val2" ]
						}

					}
,
					"text" : "Off",
					"texton" : "Compensation",
					"varname" : "compensation"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-312",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 332.25, 832.0, 153.0, 18.0 ],
					"text" : "target 0, compensation $1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-95",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 241.0, 734.0, 75.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 274.5, 117.0, 75.0, 18.0 ],
					"text" : "mutemap 1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-313",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 257.0, 750.0, 73.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 274.5, 141.0, 73.0, 18.0 ],
					"text" : "busymap 1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-314",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 598.0, 385.0, 129.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 284.5, 164.0, 53.0, 18.0 ],
					"text" : "0 0 0 0"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-55",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 118.0, 928.0, 65.0, 18.0 ],
					"text" : "voices $1"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-315",
					"maxclass" : "live.numbox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 118.0, 896.0, 20.0, 17.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_linknames" : 1,
							"parameter_longname" : "Voices",
							"parameter_shortname" : "Voices",
							"parameter_type" : 1,
							"parameter_mmin" : 1.0,
							"parameter_mmax" : 12.0,
							"parameter_initial_enable" : 1,
							"parameter_initial" : [ 4 ],
							"parameter_unitstyle" : 0
						}

					}
,
					"varname" : "Voices"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-84",
					"maxclass" : "live.gain~",
					"numinlets" : 2,
					"numoutlets" : 5,
					"outlettype" : [ "signal", "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 345.0, 470.0, 74.0, 76.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 134.0, 38.0, 61.0, 96.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "Output",
							"parameter_shortname" : "Output",
							"parameter_type" : 0,
							"parameter_mmin" : -70.0,
							"parameter_mmax" : 0.0,
							"parameter_initial" : [ 0.0 ],
							"parameter_unitstyle" : 4
						}

					}
,
					"varname" : "Output"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-316",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 222.0, 976.0, 58.0, 20.0 ],
					"text" : "s ---poly"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-8",
					"maxclass" : "live.numbox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 214.0, 856.0, 40.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 379.0, 160.0, 92.0, 17.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_linknames" : 1,
							"parameter_longname" : "comp_samples",
							"parameter_shortname" : "comp_samples",
							"parameter_type" : 0,
							"parameter_mmax" : 10000.0,
							"parameter_unitstyle" : 0
						}

					}
,
					"varname" : "comp_samples"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-317",
					"justification" : 1,
					"linecolor" : [ 0.301961, 0.337255, 0.403922, 1.0 ],
					"maxclass" : "live.line",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 47.331879, 184.0, 7.0, 30.0 ],
					"prototypename" : "M4L.live.line.dark.H"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-318",
					"justification" : 1,
					"linecolor" : [ 0.301961, 0.337255, 0.403922, 1.0 ],
					"maxclass" : "live.line",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 47.331879, 184.0, 7.0, 30.0 ],
					"prototypename" : "M4L.live.line.dark.H"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-321",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 453.0, 997.0, 59.0, 18.0 ],
					"text" : "open $1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-22",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1796.0, 497.0, 36.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 210.0, 196.0, 36.0, 18.0 ],
					"text" : "write"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-9",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1616.5, 355.0, 76.0, 18.0 ],
					"text" : "getattributes"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-100", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-258", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-1", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-90", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-1", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-252", 2 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-284", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-100", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-262", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-110", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-263", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-110", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-253", 2 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-284", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-284", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-53", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-137", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-252", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-177", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-253", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-177", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-185", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-204", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-189", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-195", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-192", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-223", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-204", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-100", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-316", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-223", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-100", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-84", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-252", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-84", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-253", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-321", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-177", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-260", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.0, 0.0, 1.0 ],
					"destination" : [ "obj-84", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-262", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.0, 0.0, 1.0 ],
					"destination" : [ "obj-84", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-263", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-321", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-321", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-283", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.0, 0.25098, 1.0, 1.0 ],
					"destination" : [ "obj-252", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 418.5, 292.5, 312.5, 292.5 ],
					"source" : [ "obj-284", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.0, 0.25098, 1.0, 1.0 ],
					"destination" : [ "obj-253", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 432.25, 293.5, 376.5, 293.5 ],
					"source" : [ "obj-284", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.001953, 0.087669, 0.8, 0.9 ],
					"destination" : [ "obj-62", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-284", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.001953, 0.087669, 0.8, 0.9 ],
					"destination" : [ "obj-62", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-284", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-62", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 856.0, 309.5, 499.5, 309.5 ],
					"source" : [ "obj-286", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-321", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-316", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-306", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-31", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-312", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-311", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-316", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-312", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-316", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-313", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-55", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-315", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-316", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-321", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-33", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-185", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-34", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-34", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-37", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-62", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-52", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-42", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-43", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-100", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-44", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-44", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-46", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-286", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-48", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-57", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-49", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-192", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-53", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-316", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-55", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-57", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-62", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-57", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.8, 0.047097, 0.0, 1.0 ],
					"destination" : [ "obj-262", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-62", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.8, 0.047097, 0.0, 1.0 ],
					"destination" : [ "obj-263", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-62", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-314", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-62", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-100", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-306", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-84", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-84", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-88", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-9", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-316", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-95", 0 ]
				}

			}
 ]
	}

}
