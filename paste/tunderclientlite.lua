--[[
    This script has been licensed using Luarmor
      Luarmor v3.8b, Lua whitelisting system
            https://luarmor.net/

      _____ _                     _            ____ _ _            _   _     _ _       _____           _                                      _                   
     |_   _| |__  _   _ _ __   __| | ___ _ __ / ___| (_) ___ _ __ | |_| |   (_) |_ ___|  ___|   _  ___| | ___   _  ___  _   _  __ _ _ __   __| |_ __ _____      __
       | | | '_ \| | | | '_ \ / _` |/ _ \ '__| |   | | |/ _ \ '_ \| __| |   | | __/ _ \ |_ | | | |/ __| |/ / | | |/ _ \| | | |/ _` | '_ \ / _` | '__/ _ \ \ /\ / /
       | | | | | | |_| | | | | (_| |  __/ |  | |___| | |  __/ | | | |_| |___| | ||  __/  _|| |_| | (__|   <| |_| | (_) | |_| | (_| | | | | (_| | | |  __/\ V  V / 
       |_| |_| |_|\__,_|_| |_|\__,_|\___|_|   \____|_|_|\___|_| |_|\__|_____|_|\__\___|_|   \__,_|\___|_|\_\\__, |\___/ \__,_|\__,_|_| |_|\__,_|_|  \___| \_/\_/  
                                                                                                            |___/                                                 


]]

local a="This file is licensed with Luarmor. You must use the actual loadstring to execute this script. Do not run this file directly. Always use the loadstring."local b="b95e8fecdf824e41f4a030044b055add"if lrm_load_script then lrm_load_script(b)while wait(1)do end end;local c="https://ap".."i.luar".."mor.net/fil".."es/v3".."/l/"..b..".lua"is_from_loader={Mode="fastload"}local d=0.03;l_fastload_enabled=function(e)if e=="flush"then wait(d)d=d+2;local f,g;local h,i=pcall(function()g=game:HttpGet(c)pcall(writefile,b.."-cache.lua","-- "..a.."\n\n if not is_from_loader then warn('Use the loadstring, do not run this directly') return end;\n "..g)wait(0.1)f=loadstring(g)end)if not h or not f then pcall(writefile,"lrm-err-loader-log-httpresp.txt",tostring(g))warn("Error while executing loader. Err:"..tostring(i).." See lrm-err-loader-log-httpresp.txt in your workspace.")return end;f(is_from_loader)end end;local j;local k,l=pcall(function()j=readfile(b.."-cache.lua")j=loadstring(j)end)if not k or not j then l_fastload_enabled("flush")return end;j(is_from_loader)