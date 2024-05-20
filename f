getgenv().emotes={"Curtsy", "twirl", "Sleep", "Heart Skip", "feels", "strut", "sliving", "faceframe"}
getgenv().animchanger= "Bold"
------------------------------------------------------------

-- Available Animations (cAsE sEnSiTivE): Vampire, Hero, ZombieClassic, Cowboy, Patrol, Bold, ZombieFE, Princess, Popstar, 
-- Sneaky, Toy, Knight, Confident, Ghost, Elder, Levitation, Mage, Astronaut, Ninja, Werewolf, Cartoon, Pirate

------------------------------------------------------------
function echange()
    local Players = game:GetService("Players")
    local humanoid = Players.LocalPlayer.Character.Humanoid
    local humanoidDescription = humanoid.HumanoidDescription
    local emoteTable = {
    ["Quiet Waves"] = {7466046574},
    ["Heart Skip"] = {11309263077},
    ["Shrug"] = {3576968026},
    ["Point2"] = {3576823880},
    ["Tilt"] = {3360692915},
    ["Robot"] = {3576721660},
    ["Stadium"] = {3360686498},
    ["Salute"] = {3360689775},
    ["Hello"] = {3576686446},
    ["Jacks"] = {3570649048},
    ["Around Town"] = {3576747102},
    ["Twirl"] = {3716633898},
    ["Monkey"] = {3716636630},
    ["Sneaky"] = {3576754235},
    ["Side to Side"] = {3762641826},
    ["Greatest"] = {3762654854},
    ["Louder"] = {3576751796},
    ["Dizzy"] = {3934986896},
    ["Get Out"] = {3934984583},
    ["Fishing"] = {3994129128},
    ["Tree"] = {4049634387},
    ["Line Dance"] = {4049646104},
    ["Haha"] = {4102315500},
    ["Idol"] = {4102317848},
    ["T"] = {3576719440},
    ["Top Rock"] = {3570535774},
    ["Zombie"] = {4212496830},
    ["Dorky Dance"] = {4212499637},
    ["Fast Hands"] = {4272351660},
    ["Baby Dance"] = {4272484885},
    ["Celebrate"] = {3994127840},
    ["Fancy Feet"] = {3934988903},
    ["Y"] = {4391211308},
    ["Shuffle"] = {4391208058},
    ["Shy"] = {3576717965},
    ["Bodybuilder"] = {3994130516},
    ["Fashionable"] = {3576745472},
    ["Godlike"] = {3823158750},
    ["Curtsy"] = {4646306583},
    ["Air Dance"] = {4646302011},
    ["Happy"] = {4849499887},
    ["Sad"] = {4849502101},
    ["Sleep"] = {4689362868},
    ["Disagree"] = {4849495710},
    ["Power Blast"] = {4849497510},
    ["Agree"] = {4849487550},
    ["Keeping Time"] = {4646306072},
    ["Jumping Wave"] = {4940602656},
    ["Confused"] = {4940592718},
    ["Hero Landing"] = {5104377791},
    ["Tantrum"] = {5104374556},
    ["Cower"] = {4940597758},
    ["Bored"] = {5230661597},
    ["Beckon"] = {5230615437},
    ["Swish"] = {3821527813},
    ["High Wave"] = {5915776835},
    ["Rock On"] = {5915782672},
    ["Applaud"] = {5915779043},
    ["Floss Dance"] = {5917570207},
    ["Dolphin Dance"] = {5938365243},
    ["Jumping Cheer"] = {5895009708},
    ["Break Dance"] = {5915773992},
    ["Panini Dance"] = {5915781665},
    ["HOLIDAY Dance"] = {5938396308},
    ["Rodeo Dance"] = {5938397555},
    ["Old Town Road Dance"] = {5938394742},
    ["Rock Guitar"] = {6532155086},
    ["Rock Star"] = {6533100850},
    ["Drum Master"] = {6531538868},
    ["Drum Solo"] = {6532844183},
    ["Air Guitar"] = {3696761354},
    ["Cha-Cha"] = {3696764866},
    ["Heisman Pose"] = {3696763549},
    ["Hype Dance"] = {3696757129},
    ["Superhero Reveal"] = {3696759798},
    ["Country Line Dance"] = {5915780563},
    ["It Ain't My Fault"] = {6797948622},
    ["Take Me Under"] = {6797938823},
    ["Hips Poppin'"] = {6797919579},
    ["Cha Cha"] = {6865013133},
    ["Samba"] = {6869813008},
    ["feels"] = {12874468267},
    ["faceframe"] = {14353421343},
    ["Block Partier"] = {6865011755},
    ["sliving"] = {15392927897},
    ["strut"] = {14353425085},
    ["twirl"] = {14353423348},
    }

    local equippedEmotes = getgenv().emotes
    humanoidDescription:SetEmotes(emoteTable)
    humanoidDescription:SetEquippedEmotes(equippedEmotes)
end

function achange()
    local Players = game:GetService("Players")
    local plr = Players.LocalPlayer
    local Animate = plr.Character.Animate
    local function StopAnim()
        plr.Character.Animate.Disabled = false
        local animtrack = plr.Character.Humanoid:GetPlayingAnimationTracks()
        for i, track in pairs (animtrack) do
            track:Stop()
        end
    end
    local walk
    local success, result = pcall(function()
    walk = Animate.walk.WalkAnim.AnimationId
    end)
    if not success then
        walk = Animate.walk.walk.AnimationId
    end
    local scripts = {
    ["Vampire"] = function()
        Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1083445855"
        Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1083450166"
        walk = "http://www.roblox.com/asset/?id=1083473930"
        Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=1083462077"
        Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1083455352"
        Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1083439238"
        Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=1083443587"
    end,
    ["Hero"] = function()
        Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616111295"
        Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616113536"
        walk = "http://www.roblox.com/asset/?id=616122287"
        Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616117076"
        Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616115533"
        Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616104706"
        Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616108001"
    end,
    ["ZombieClassic"] = function()
        Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616158929"
        Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616160636"
        walk = "http://www.roblox.com/asset/?id=616168032"
        Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616163682"
        Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616161997"
        Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616156119"
        Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616157476"
    end,
    ["Mage"] = function()
        Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=707742142"
        Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=707855907"
        walk = "http://www.roblox.com/asset/?id=707897309"
        Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=707861613"
        Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=707853694"
        Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=707826056"
        Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=707829716"
    end,
    ["Ghost"] = function()
        Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616006778"
        Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616008087"
        walk = "http://www.roblox.com/asset/?id=616010382"
        Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616013216"
        Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616008936"
        Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616003713"
        Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616005863"
    end,
    ["Elder"] = function()
        Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=845397899"
        Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=845400520"
        walk = "http://www.roblox.com/asset/?id=845403856"
        Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=845386501"
        Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=845398858"
        Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=845392038"
        Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=845396048"
    end,
    ["Levitation"] = function()
        Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616006778"
        Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616008087"
        walk = "http://www.roblox.com/asset/?id=616013216"
        Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616010382"
        Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616008936"
        Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616003713"
        Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616005863"
    end,
    ["Astronaut"] = function()
        Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=891621366"
        Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=891633237"
        walk = "http://www.roblox.com/asset/?id=891667138"
        Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=891636393"
        Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=891627522"
        Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=891609353"
        Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=891617961"
    end,
    ["Ninja"] = function()
        Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=656117400"
        Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=656118341"
        walk = "http://www.roblox.com/asset/?id=656121766"
        Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=656118852"
        Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=656117878"
        Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=656114359"
        Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=656115606"
    end,
    ["Werewolf"] = function()
        Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1083195517"
        Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1083214717"
        walk = "http://www.roblox.com/asset/?id=1083178339"
        Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=1083216690"
        Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1083218792"
        Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1083182000"
        Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=1083189019"
    end,
    ["Cartoon"] = function()
        Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=742637544"
        Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=742638445"
        walk = "http://www.roblox.com/asset/?id=742640026"
        Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=742638842"
        Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=742637942"
        Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=742636889"
        Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=742637151"
    end,
    ["Pirate"] = function()
        Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=750781874"
        Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=750782770"
        walk = "http://www.roblox.com/asset/?id=750785693"
        Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=750783738"
        Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=750782230"
        Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=750779899"
        Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=750780242"
    end,
    ["Sneaky"] = function()
        Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1132473842"
        Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1132477671"
        walk = "http://www.roblox.com/asset/?id=1132510133"
        Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=1132494274"
        Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1132489853"
        Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1132461372"
        Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=1132469004"
    end,
    ["Toy"] = function()
        Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=782841498"
        Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=782845736"
        walk = "http://www.roblox.com/asset/?id=782843345"
        Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=782842708"
        Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=782847020"
        Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=782843869"
        Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=782846423"
    end,
    ["Knight"] = function()
        Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=657595757"
        Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=657568135"
        walk = "http://www.roblox.com/asset/?id=657552124"
        Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=657564596"
        Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=658409194"
        Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=658360781"
        Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=657600338"
    end,
    ["Confident"] = function()
        Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1069977950"
        Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1069987858"
        walk = "http://www.roblox.com/asset/?id=1070017263"
        Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=1070001516"
        Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1069984524"
        Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1069946257"
        Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=1069973677"
    end,
    ["Popstar"] = function()
        Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1212900985"
        Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1212900985"
        walk = "http://www.roblox.com/asset/?id=1212980338"
        Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=1212980348"
        Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1212954642"
        Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1213044953"
        Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=1212900995"
    end,
    ["Princess"] = function()
        Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=941003647"
        Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=941013098"
        walk = "http://www.roblox.com/asset/?id=941028902"
        Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=941015281"
        Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=941008832"
        Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=940996062"
        Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=941000007"
    end,
    ["Cowboy"] = function()
        Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1014390418"
        Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1014398616"
        walk = "http://www.roblox.com/asset/?id=1014421541"
        Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=1014401683"
        Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1014394726"
        Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1014380606"
        Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=1014384571"
    end,
    ["Patrol"] = function()
        Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1149612882"
        Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1150842221"
        walk = "http://www.roblox.com/asset/?id=1151231493"
        Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=1150967949"
        Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1150944216"
        Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1148811837"
        Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=1148863382"
    end,
    ["ZombieFE"] = function()
        Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=3489171152"
        Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=3489171152"
        walk = "http://www.roblox.com/asset/?id=3489174223"
        Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=3489173414"
        Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616161997"
        Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616156119"
        Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616157476"
    end,
    ["Bold"] = function()
        Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=16738333868"
        Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=16738334710"
        walk = "http://www.roblox.com/asset/?id=16738340646"
        Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=16738337225"
        Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=16738336650"
        Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=16738333171"
    end
    }
    Animate.Disabled = true
    StopAnim()
    
    scripts[getgenv().animchanger]()
    
    plr.Character.Humanoid:ChangeState(5)
    Animate.Disabled = false
end

if getgenv().emotesloaded then echange();achange()
else 
    wait(10)
    game.Players.LocalPlayer.CharacterAdded:Connect(function()
        echange()
        achange()
        print("set")
    end)
    
    echange()
    achange()
    getgenv().emotesloaded='hi'
end