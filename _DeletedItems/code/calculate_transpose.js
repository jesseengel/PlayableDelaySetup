// calculate_transpose.js
// a quick little jscript to take in note values and transpose them diatonically
// outputs (volue
// Jesse Engel 12-17-12

//__________SETUP__________
inlets = 1;
outlets = 1;
setinletassist (0, "Note in (Note)")
setoutletassist (0, "Out to poly_mididelay (Target; Volume, Transpose, Time, Feedback)")
//______________________________


//__________GLOBAL VARIABLES__________
var rootnote = 0;
var chromatic = 0;
var notein = 0; //C3
var noteout = 0;
var octave = 0;
var octave_shift = 0;
var dia = 0; 
var diaout = 0;
var transpose = 0;
var need_to_shift = 0;
var chrome_to_dia = [0, 1, 1, 2, 2, 3, 4, 4, 5, 5, 6, 6]; //0-11 -> 1-7 scale tone
var dia_to_chrome = [0, 2, 4, 5, 7, 9, 11]; //0-6 -> 0-11
var neg_flip = [0, 6, 5, 4, 3, 2, 1];
var shift_list = [ ];
var this_shift = 0;
//______________________________________


msg_int.immediate = 1;
function msg_int(a)
{
    if(need_to_shift){
    
    notein = a-rootnote; //Shift relative to major scale root
    if(notein < 0) {notein = notein + 12}; //Take care of those really low negative notes
    
    octave = Math.floor(notein/12.); // Find out the octave and scale_tone "dia" of the incoming note
    chromatic = notein % 12;
    dia = chrome_to_dia[chromatic];
    // post('dia', dia, '\n');
    
    transpose_out();
    }  else {return;}        
}




function shift()
{
    need_to_shift = 0;

    var a = arrayfromargs(arguments);
    var voice = a[0];
    var shift = a[1];
    shift_list[voice] = shift;  
    

    for(var i = 0; i < shift_list.length; i++) {
        shift = shift_list[i];
    
        if(shift == 1 || shift == 2 || shift == 5 || shift == 6){
            need_to_shift = 1;
        } else if(shift == undefined) {shift_list[i] = 0;}
    }
   
    //post('shift_list: ', shift_list, '\n');
    //post('need_to_shift: ', need_to_shift, '\n');
    transpose_out();
}



function transpose_out()
{
    for(var i = 0; i < shift_list.length; i++) {
    diaout = dia + shift_list[i]; //Shift the scale tones 
        octave_shift = Math.floor(diaout/7.); //Changed Octave?
        
        if(diaout < 0){ diaout = neg_flip[ (Math.abs(diaout) % 7) ]; 
              } else { diaout = diaout % 7; } //Count backwards for negative numbers
        
        noteout = dia_to_chrome[diaout] + (octave + octave_shift) * 12; //noteout = scaletone + octave
        transpose = noteout-notein;
        outlet(0, 'target',  i+1);
        outlet(0, 'transpose', transpose);
    }
}




function root_key(r) 
{
    switch (r) {
    case "C":
        rootnote = 0;
        break;
    case "C#":
        rootnote = 1;
        break;
    case "D":
        rootnote = 2;
        break;
    case "D#":
        rootnote = 3;
    post("beep");
        break;
    case "E":
         rootnote = 4;
        break;
    case "F":
        rootnote = 5;
        break;
    case "F#":
        rootnote = 6;
        break;
    case "G":
        rootnote = 7;
        break;
    case "G#":
        rootnote = 8;
        break;
    case "A":
        rootnote = 9;
        break;
    case "A#":
        rootnote = 10;
        break;
    case "B":
        rootnote = 11;
        break;
    }
}

function root_note(notein)
{
    rootnote = notein % 12;
}
