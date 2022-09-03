// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrpt_enemyspawn(){

        var t = 0
        if(t < 1000){
                t++
                show_debug_message(t)
                if (t >= 1000){
                  var randomypos1 = random_range(0, 720);
                  instance_create_layer(1280,randomypos1,"Instances", o_civilian1);
                  t = 0
                }
                        
         }
}
