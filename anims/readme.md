Put your character's .aseprite files in here.

If you have `aseprite_path` set in `assistant\assistant_config.yaml to point to your aseprite.exe, 
then the assistant will automatically convert the .aseprite files in this folder into spritesheets in your sprites folder. 
They will be saved as `<anim_name>_strip<num_frames>.png`
This will *overwrite existing sprites with that name.* It is recommended to only change the aseprite file, not the spritesheets, to avoid losing changes.
