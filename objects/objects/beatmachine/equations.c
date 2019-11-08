#include "./equations.h"

uint32_t Equation(int equation_num, uint32_t t, uint32_t x, uint32_t y, uint32_t z, uint32_t attr_beat) {
    switch (equation_num) {

        // Mostly taken from http://pelulamu.net/countercomplex/music_formula_collection.txt
    
        case 0: // object text field
        w = attr_beat;
        break;

        case 1: // kick it
        w = ((t+x*500)&(t+x*500)>>4)-((t+x*500)>>(y/4)&(t+x*500));
        break;

        case 2:
        w = ((t%16000 >= 0 & t%16000 < 1000) * t * (x/6)
        |(t%16000 >= 1000 & t%16000 < 2000 + (z*10)) * t*3
        |(t%16000 >= 2000 & t%16000 < 3000) * t * (y/5) 
        |(t%16000 >= 3000 & t%16000 < 4000) * t*8
        |(t%16000 >= 4000 & t%16000 < 5000 + (z*10)) * t * (x/6) 
        |(t%16000 >= 5000 & t%16000 < 6000) * t
        |(t%16000 >= 6000 & t%16000 < 7000) * t * (y/3) 
        |(t%16000 >= 7000 & t%16000 < 8000 + (z*10)) * t *8
        |(t%16000 >= 8000 & t%16000 < 9000 ) * t * (x/6)
        |(t%16000 >= 9000 & t%16000 < 10000) * t
        |(t%16000 >= 10000 & t%16000 < 11000 + (z*10)) * t * (y/2) 
        |(t%16000 >= 11000 & t%16000 < 12000) * t*10
        |(t%16000 >= 12000 & t%16000 < 13000) * t * (x/6)
        |(t%16000 >= 13000 & t%16000 < 14000 + (z*10)) * t*6
        |(t%16000 >= 14000 & t%16000 < 15000) * t * (y/5) 
        |(t%16000 >= 15000 & t%16000 < 16000) * t*6) 
        << (t%32000 <= 16000)
        &128;
        break;
   
        case 3: // visy 2011-09-18 http://www.youtube.com/watch?v=GtQdIYUtAHg
        w = t*(((t>>x)|(t>>y))&(z&(t>>6)));  //OK
        break;
      
        case 4: 
        w = t%((t+(y*5000))>>int(x/4)&(t+(y*5000)))-z;
        break;
     
        case 5: // 
        // x=-1,y=10,z=30,t*(t>>x*((t>>y)|(t>>x))&(z|(t>>19)*5>>t|(t>>3)));
        w = t*(t>>(x-32)*((t>>y)|(t>>(x-32)))&(z|(t>>19)*5>>t|(t>>3)));
        break;     
      
        case 6: // blueberry 2011-10-05 http://pouet.net/topic.php?which=8357&page=12 
        w = t*(((t>>x)^((t>>x)-1)^1)%y);  
        break;

        case 7: // visy 2011-09-18 http://www.youtube.com/watch?v=GtQdIYUtAHg "Space Invaders vs Pong"
        w = t*(t>>((t>>x)|(t>>y))&(z&(t>>4)));
        break;

        case 8:
        w = (((1317-x)*t)|w/y%t)>>(z>>6);
        break;

        case 9:
        w = (((t%(t>>x|t>>y))>>z)&t)-1;
        break;

        case 10:
        w = t/(t%(t>>x|t>>y));
        break;

        case 11:
        w = (t*(t>>x|t>>y))>>(t>>z&t);
        break;

        case 12:
        w = ((2*(t&1)-1)*t)-(t>>x);
        break;

        case 13:
        w = (t*((t%(t>>8|t>>16))>>8|t>>5))^(t*(t>>5));
        break;	

        case 14: //(t*(-(t>>8|t|t>>9|t>>13)))^t
        w = (t*(-(t>>((x/8)+4)|t|t>>((y/8)+5)|t>>((z/8)+9))))^t;
        break;	

        case 15:
        w = t%(10+x)+t%(y+10)+t%(z+10)+t%60;
        break;	


        default: // object text field
        w = attr_beat;
    }
    
    return w;
}
