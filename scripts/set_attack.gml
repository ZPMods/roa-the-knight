//Reset les valeurs
charged_time = 0;
has_dspecial_air_hit = false;

if (attack == AT_TAUNT)
{
     hsp = 0;
     bench = instance_create(x, y, "obj_article2");
     bench.spr_dir = spr_dir;
}
