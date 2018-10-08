moduleName="Records"
--cheats=true
--event="christmas"
settings={
	--cannons=false,
	--fly=false,
	--rainbow=false,
	--checkpoints=true,
	maprotation={P3=true,P13=true},
	disabledNewGame=false,
	quickrespawn=true,
}
privs={
	Shamousey=10,
}
privNames={
	[-1]="Banned from module",
	[0]="Banned from room",
	[1]="Player",
	[2]="-",
	[3]="Room Mod",
	[4]="Room Admin",
	[5]="Room Owner",
	[6]="Module Arbiter",
	[7]="Module Moderator",
	[8]="-",
	[9]="Module Administrator",
	[10]="Module Administrator",
}

tfm.exec.disableAutoScore(true)
tfm.exec.disableAutoShaman(true)
tfm.exec.disableAutoNewGame(true)
tfm.exec.disableAutoTimeLeft(true)
tfm.exec.disableAfkDeath(true)
tfm.exec.setRoomMaxPlayers(50)
currentTime=0
jointID=1

toRespawn={}
map={}
players={}
votes={time={},skip={}}
maps={
	vanilla={},
}
maps.vanilla={} for x=0,143 do table.insert(maps.vanilla,x) end for x=200,210 do table.insert(maps.vanilla, x) end
times={}

if string.byte(tfm.get.room.name,2)~=3 then
	maps.P0={"#0"}
	maps.P1={"#1"}
	maps.P2={"#2"}
	maps.P3={"#3"}
	maps.P4={"#4"}
	maps.P5={"#5"}
	maps.P6={"#6"}
	maps.P7={"#7"}
	maps.P8={"#8"}
	maps.P9={"#9"}
	maps.P10={"#10"}
	maps.P11={"#11"}
	maps.P13={"#13"}
	maps.P17={"#17"}
	maps.P18={"#18"}
	maps.P19={"#19"}
	maps.P21={"#21"}
	maps.P22={"#22"}
	maps.P24={"#24"}
	maps.P32={"#32"}
	maps.P41={"#41"}
	maps.P42={"#42"}
	--maps.P43={"#43"}
	maps.P44={"#44"}
end

save_id=1
save_id_bc=1
save_version=1
stats=false
statInfo={
	[1]={
		names={"credits","coins","menuhidden","offsetx","offsety"},
		bytes={4,4,1,1,1}
	},
	[save_id]={
		names={"credits","coins","menuhidden","offsetx","offsety"},
		bytes={4,4,1,1,1}
	},
	pictionary={
		names={"mode","drawingtime","guesses","correctguesses","drawingcorrect"},
		bytes={1,3,3,3,3},
	}
}
uiDetails={
	bottomleft="ixlPMUu",
	bottomright="RQOPY8G",
	topleft="P6eGZ5C",
	topright="p8QzEXG",
	top="nuL8w53",
	bottom="U9ZtT6D",
	left="B4D0UHU",
	right="RUnY3jH",
	mouse="BEMPtWY",
	mouseright="1Sg9gfU",
	shaman="9BzL1de",
	unknown="xna6nV7",
}

leaderboard={
	{name="*Souris",credits=0,coins=0,language="EN"},
}
teamsText={}
menu={
	help={text="? ",event="window help",privs=0},
	shop={text="$ ",event="window shop",privs=0},
	playerlist={translation="players",event="window playerlist",privs=3},
	settings={translation="settings",event="window settings",privs=3}
}

offscreenGroundProperties={
	type = 0,
	width = 3200,
	height = 10,
	foreground = false,
	friction = 0.3,
	restitution = 0,
	dynamic = false,
	fixedrotation = false,
	mass = 0,
	linearDamping = 0,
	angularDamping = 0,
	miceCollision = false,
	groundCollision = false
}

translations={
	en={
		lang="English",
		flag="QLsIxet",
		hidemenu="Hide Menu",
		showmenu="Show Menu",
		help="Help",
		selectlanguage="Select Language",
		banned="%s has been banned by %s.",
		cantban="This user cannot be banned.",
		language="Language",
		leaderboard="Leaderboard",
		shop="Shop",
		teams="Teams",
		jointeam="Join Team",
		credits="Credits",
		coins="Coins",
		noplayer="This player doesn't exist.",
		offset="Offset",
		active="Active",
		passive="Passive",
		activeskills="Active Skills",
		passiveskills="Passive Skills",
		aesthetics="Aesthetics",
		joinedroom="%s joined the room",
		settings="Settings",
		maprotation="Map Rotation",
		disabledNewGame="Disable New Game",
		commands="Commands",
		kill="Kill",
		cheese="Cheese",
		win="Win",
		vampire="Vampire",
		respawn="Respawn",
		shaman="Shaman",
		quickrespawn="Quick Respawn",
		mapskipped="Skipping the current map.",
		skipped="%s %s has voted to skip the map.",
		checkpoints="Checkpoints",
		fly="Fly",
		rainbow="Rainbow",
		mapinfo="Map Info",
		name="Name",
		author="Author",
		code="Code",
		perm="Perm",
		wind="Wind",
		gravity="Gravity",
		grounds="Grounds",
		ground={"Wood","Ice","Trampoline","Lava","Chocolate","Earth","Grass","Sand","Cloud","Water","Stone","Snow","Rectangle","Circle"},
		cantusecommand="You don't have permission to use this command.",
		cheatsdisabled="Cheats are disabled in this room.",
		transparentmenu="Transparent menu",
		opaquemenu="Opaque menu",
		hideasprop="Hide As Prop",
		alreadyprivs="%s already has %s or higher priviledges.",
		givenprivs="<ROSE>%s is now a %s.",
		toohighprivs="%s has priviledges higher than %s.",
		toolowprivs="%s already has priviledges lower than %s.",
		demotedprivs="%s is no longer a %s.",
		helppage="#records is a module that offers a variety of utilities that you can use to try and get speedrunning records on maps.\n\n"
			.."You can get your own room by going to <b>/room #records0[name]</b>\n\n"
			.."If you think you've got a record speedrun and would like to submit it, you can do so in the following forum thread.\n\n"
			.."<p align='center'><a href='event:recordslink'>atelier801.com/topic?f=6&t=771605</a></p>",
		locked="<ROSE>%s has locked the room to %s mice.",
		privshelp={
			[10]={
				--name="Module Admin Tools",
				--"!mod [text] - Display pink moderation-style text.",
			},
			[9]={
			},
			[8]={
			},
			[7]={
			},
			[6]={
				name="Module Arbiter Tools",
				"Ban User - You can ban a user by visiting their profile and pressing the \"Ban User\" button. You can use the same button to unban them.",
			},
			[5]={
				name="Room Owner Tools",
				"As a room owner you get additional powers in the room. Currently this just involves giving others additional powers in the room.",
				"\n<b>Commands</b>",
				"!roommod [name] - Gives someone room moderator powers.", 
				"!deroommod [name] - Removes someone's room moderator powers."
			},
			[4]={
			},
			[3]={
				name="Room Mod Tools",
				"As a room moderator, you can use additional commands that most users don't have access to.",
				"\n<b>Commands</b>",
				"!np [@code] - Load a map.",
				"!c or !t - Talk in private with other people with priviledges in the room.",
				"!lock [number] - Lock the room to only this amount of mice maximum.",
			},
			[2]={
			},
			[1]={
			},
			[0]={
				name="Commands",
				--"!off [x] [y] - Set your offsets to the given co-ordinates.",
				"!mort - Suicide on the spot.",
				"!time - Add 30 seconds to the current round.",
				"!skip - Vote to skip the current round.",
				--"!profile [name] - Open a player's profile.",
				--"[E] - Set a checkpoint to respawn at.",
				--"[DEL] - Remove an existing checkpoint.",
				"[BACKSPACE] or [DEL] - Suicide on the spot.",
				"[L] - Display the best times on the current map."
			},
			
		},
		drawing="Drawing",
		drawinghelp={
			name="Drawing",
			"!tool line - Selects the line tool. Hold SHIFT and click two points to use.",
			"!tool brush - Selects the brush tool.",
			"!size [number] - Selects a size for your brush.",
			"!color [hex] - Sets the color for your brush.",
			"!clear - Clears your own drawing.",
			"[CTRL] + [Z] - Undo the last thing you drew."
			
		},
		leftroom="%s left the room.",
		modtools="Mod Tools",
		modtoolspage={
			"As a room moderator, you can use additional commands that most users don't have access to.",
			"\n<b>Commands</b>",
			"!np [@code] - Load a map.",
			"!time [seconds] - Add an amount of time to the current round."
			--"!shaman [name] - Makes this player a shaman.",
			--"\n<b>Tools</b>",
			--"Text"
		},
		players="Players",
		ban="Ban",
		unban="Unban",
		teams="Teams",
		test="Test",
		profile="Profile",
		cannons="Cannons",
		settings="Settings",
		offsets="Offsets",
		close="Close",
		id="ID",
		type="Type",
		color="Color",
		friction="Friction",
		restitution="Restitution",
		X="X",
		Y="Y",
		length="Length",
		height="Height",
		rotation="Rotation",
		timeadded="%s added %s seconds to the current round.",
		maxtimeadded="The maximum amount of time has already been added to this map.",
		alreadyvoted="You have already voted.",
		promote="Promote",
		format={
			switch="<a href='event:switch'><p align='right'>%s</p></a>",
			close="<a href='event:close'><p align='center'>%s \n</p></a>",
			button="<a href='event:%s'><p align='center'>%s \n</p></a>"
		}
	},
}

shop={
	active={
		cannons={
			cooldown=1000,
			baseCost=1000,
			costMultiplier=20,
			maxUpgrades=1,
			spawnLength=2000,
			create=function()
				return {
					level=1,
					skins={},
					timestamp=0,
					cooldown=1000,
					spawnLength=2000,
				}
			end,
			use=function(name, x, y)
				local player=players[name]
				local playercannons=player.inventory.active.cannons
				local cannons={}
				local level=playercannons.level or 0
				local skin=playercannons.skins[math.random(#playercannons.skins)]
				x, y=x+(player.facingRight and player.offset.x or -player.offset.x), y+player.offset.y
				playercannons.timestamp=playercannons.timestamp+level*250
				for i=1, level do
					table.insert(cannons, tfm.exec.addShamanObject(17, x, y, player.facingRight and 90 or 270))
					if skin then
						tfm.exec.addImage(shop.cannons[skin].img..".png", "#"..cannons[i], -(shop.cannons[skin].offX or 16), -(shop.cannons[skin].offY or 16))
					end
				end
				system.newTimer(function()
					for i=1, #cannons do
						tfm.exec.removeObject(cannons[i])
					end
				end, playercannons.spawnLength)
			end
		},
	},
	passive={
		respawn={
			baseCost=1000,
			costMultiplier=2,
			maxUpgrades=5
		},
		credits={
			baseCost=200,
			costMultiplier=5,
			maxUpgrades=5
		},
	},
	cannons={
		{img="CNfJOg2", cost=1000},
		{img="oRDFLHg", cost=250},
		{img="QEcchFJ", cost=300},
		{img="01BZICH", cost=500},
		{img="J3YND7H", cost=500},
		{img="4DG7uBD", cost=650},
		{img="uBPrOC6", cost=750},
		{img="5LT8Cf3", cost=750},
		{img="MVI8vi7", cost=750},
		{img="hhOCWi0", cost=750},
		{img="r0LH65b", cost=1000},
		{img="eI412pc", cost=1000},
		{img="DySLRX0", cost=1250},
		{img="aRROAEs", cost=1500},
		{img="IvPC84r", cost=500},
		{img="bMnXI03", cost=500},
		{img="GoRXhn9", cost=1000},
		{img="JBaCn3S", cost=1000},
		{img="HCcdZdB", cost=850},
		{img="grBEeJi", cost=1500},
		{img="PY7R3sb", cost=500},
		{img="2mge9in", cost=750},
		{img="DGqrIy1", cost=750},
		{img="m0t2jpT", cost=1500},
		{img="hokFa6J", cost=750},
		{img="wTWTi9S", cost=5000, offX=25, offY=25},
		{img="CF21Oze", cost=0, name="Kmlcan"},
		{img="Ov8Unfg", cost=1500},
		{img="KGLcIMn", cost=750},
		{img="xLi0UaU", cost=1250, offY=28},
		{img="kF0Ej3J", cost=1250, offX=20, offY=20},
		{img="FHpAAvL", cost=1500, offX=21, offY=21},
		{img="dz6Hx3l", cost=3000, offX=25, offY=25},
		{img="mC6BNwN", cost=2500, offX=25, offY=25},
		{img="I2pEjX8", cost=2750, offX=25, offY=25},
		{img="AepoaoT", cost=1750},
		{img="zG7cnGb", name="You want it", offX=20, offY=20},
		{img="lRCkRK1", name="8ball", offX=20, offY=20},
		{img="sl3uV5z", name="Spikey", offX=20, offY=20, description="You can only unlock this ball by buying triple cannons.", unlock=function(name) if players[name].inventory.active.cannons.level==3 then return true end end}
	},
}

teams={
	red={
		name="red",
		color=0xff8888,
		uicolor=0xcc4444,
		chatColor="ff8888",
		confetti=21,
		raise=-1,
		players={},
		spawn={x=0, y=0}
	},
	blue={
		name="blue",
		color=0x8888ff,
		uicolor=0x4466cc,
		chatColor="8888ff",
		confetti=23,
		raise=1,
		players={},
		spawn={x=0, y=0}
	},
	neutral={
		name="neutral",
		color=0xcccccc,
		uicolor=0xcccccc,
		chatColor="88ff88",
		confetti=24,
		raise=0,
		add=_teamAdd,
		spawn={x=0, y=0}
	}
}
teams={
	red={},
	blue={}
}

function eventNewPlayer(name)
	players[name]={
		loaded=false,
		saveData={},
		language=tfm.get.room.community,
		credits=0,
		coins=0,
		offset={
			x=0,
			y=0
		},
		selectedplayers={},
		window=nil,
		menu={"help"}, --"shop","playerlist"
		opaquemenu=true,
		images={
			window={}
		},
		facingRight=true,
		ctrling=false,
		shifting=false,
		team=nil,
		menuhidden=true,
		inventory={},
		drawing={
			canDraw=false,
			size=2,
			color=0xFFFFFF,
			joints={},
			tool="line"
		}
	}
	system.bindMouse(name,true)
	for i,key in ipairs({81,64,87,68,38,40,37,39,32,83,90,69,8,46,16,17,72,87,66,76,80}) do
		tfm.exec.bindKeyboard(name,key,true,true)
	end
	for i,key in ipairs({16,17}) do
		tfm.exec.bindKeyboard(name,key,false,true)
	end
	if map.bg then
		tfm.exec.addImage(map.bg..".png","?0",map.xoff,map.yoff,name)
	end
	if map.fg then
		tfm.exec.addImage(map.fg..".png","!1",map.xoff,map.yoff,name)
	end
	for category,tbl in pairs(shop) do
		if not players[name].inventory[category] then players[name].inventory[category]={} end
		if category=="cannons" then
			for key,item in pairs(tbl) do
				players[name].inventory[category][key]=0
			end
		elseif category=="active" or category=="passive" then
			for key,item in pairs(tbl) do
				if item.create then
					players[name].inventory[category][key]=item.create()
				end
			end
		end
	end
	if players[name].language=="xx" then players[name].language="en" end
	if not privs[name] then privs[name]=1 end
	if tfm.get.room.name:lower():match(name:lower()) or (tfm.get.room.playerList[name].tribeName and tfm.get.room.name:lower():match(tfm.get.room.playerList[name].tribeName:lower())) and privs[name]<5 then
		privs[name]=5
	end
	if stats then
		system.loadPlayerData(name)
		if not players[name].loaded then
			system.loadPlayerData(name)
			system.newTimer(function()
				if not (players[name] and players[name].loaded) then
					tfm.exec.chatMessage(translate("datafailed",name), name)
				end
			end, 5000)
		end
	end
	if privs[name]>=3 and privs[name]~=6 then
		table.insert(players[name].menu,"settings")
		for n,p in pairs(players) do
			if privs[n]>=3 and privs[n]~=6 then
				tfm.exec.chatMessage("<font color='#AAAAAA'>&#926; ["..moduleName.."] "..translate("joinedroom",n):format(name).."</font>",n)
			end
		end
	end
	addMenu(players[name].menu,name,true,players[name].opaquemenu)
	tfm.exec.addPhysicObject(1, 400, -800, offscreenGroundProperties)
	if settings.quickrespawn then
		toRespawn[name]=os.time()
	end
	if map.bg and #map.bg>7 then
		tfm.exec.addImage(map.bg..".jpg","?0",0,0,name)
	end
	if map.fg and #map.fg>7 then
		tfm.exec.addImage(map.fg..".png","!1",0,0,name)
	end
	if map.author and (map.name or map.code) then tfm.exec.setUIMapName("<J>"..map.author.." <BL>- "..(map.name or map.code)) end
end

function eventPlayerLeft(name)
	clearJoints(name)
	if stats then
		local player=players[name]
		if player.loaded then
			player.saveData[1]=formatSave(player,1)
			player.saveData[save_id]=formatSave(player,save_id)
			system.savePlayerData(name, player.language..writePDMulti(player.saveData))
		end
	end
	if privs[name]>=3 and privs[name]~=6 then
		for n,p in pairs(players) do
			if privs[n]>=3 and privs[n]~=6 then
				tfm.exec.chatMessage("<font color='#AAAAAA'>&#926; ["..moduleName.."] "..translate("leftroom",n):format(name).."</font>",n)
			end
		end
	end
	for n,p in pairs(players) do
		p.selectedplayers[name]=nil
	end
	players[name]=nil
end

function eventKeyboard(name,key,down,x,y)
	if not players[name] then return end
	-- SHIFT
	if key==16 then
		if down then
			players[name].shifting=true
		elseif not down then
			players[name].shifting=false
		end
	-- CTRL
	elseif key==17 then
		if down then
			players[name].ctrling=true
		elseif not down then
			players[name].ctrling=false
		end
	end
	if not tfm.get.room.playerList[name].isDead then
		-- LEFT
		if key==81 or key==37 then
			players[name].facingRight=false
		end
		
		-- RIGHT
		if key==68 or key==39 then
			players[name].facingRight=true
		end
		
		-- DOWN
		if key==83 or key==40 then
			if settings.cannons then
				local player=players[name]
				local timestamp=os.time()
				if player.inventory.active.cannons.level>0 then
					if timestamp-player.inventory.active.cannons.timestamp>player.inventory.active.cannons.cooldown then
						players[name].inventory.active.cannons.timestamp=timestamp
						shop.active.cannons.use(name, x, y)
					end
				end
			end
		end
		
		-- UP
		if key==87 or key==38 or key==90 then
		end
		
		-- SPACE
		if key==32 then
			if settings.fly then
				tfm.exec.movePlayer(name,0,0,true,0,-50,true)
			end
			if settings.rainbow then
			    for a = math.pi, 2*math.pi, math.pi/50 do
					local s = 3
					vx1, vy1 = s*math.cos(a), s*math.sin(a)
					local m = -3/100
					vx,vy=vx1,vy1
					tfm.exec.displayParticle(1, x, y+12, vx, vy, m*vx, m*vy)
					vx,vy=vx1*1.1,vy1*1.1
					tfm.exec.displayParticle(9, x, y+12, vx, vy, m*vx, m*vy)
					vx,vy=vx1*1.1,vy1*1.2
					tfm.exec.displayParticle(11, x, y+12, vx, vy, m*vx, m*vy)
					vx,vy=vx1*1.3,vy1*1.3
					tfm.exec.displayParticle(13, x, y+12, vx, vy, m*vx, m*vy)
				end
			end
		end
		
		-- E
		if key==69 then
			if settings.checkpoints then
				if (not players[name].checkpoint or players[name].checkpoint.time<=os.time()-2000) and players[name].spawned<=os.time()-2000 then
					players[name].checkpoint={x=x,y=y,cheese=tfm.get.room.playerList[name].hasCheese,time=os.time()}
					ui.addTextArea(-1,"",name,x-2,y-2,4,4,0x44cc44,0xffffff,0.5)
				end
			end
		end
		
		-- BACKSPACE and DELETE
		if key==8 or key==46 then
			tfm.exec.killPlayer(name)
		end
		
		-- DELETE
		if key==46 then
			ui.removeTextArea(-1,name)
			players[name].checkpoint=nil
		end
		
		-- H
		if key==72 then
			windowHotkey(name,"help")
		end
		
		-- L
		if key==76 then
			--windowHotkey(name,"leaderboard")
			windowHotkey(name,"times")
		end
		
		-- B
		if key==66 then
			--windowHotkey(name,"shop")
		end
		
		-- P
		if key==80 then
			--windowHotkey(name,"profile")
		end
		
		-- W (should be Z)
		if key==87 and players[name].ctrling then
			undoJoint(name)
		end
	end
end

function windowHotkey(name,window)
	if not players[name].lastHotkey or players[name].lastHotkey<os.time()-1000 then
		players[name].lastHotkey=os.time()
		if players[name].window==window then
			eventTextAreaCallback(1,name,"close")
		else
			eventTextAreaCallback(1,name,"window "..window)
		end
	end
end

function addWindow(id, text, name, x, y, width, height, fixed, pageName, parent, details, page, tabs)
	if tabs then
		local xx=x-95
		local yy=y+25
		for k,v in ipairs(tabs) do
			local secondrow=k>9 and 9
			ui.addTAStyle(id + 16e3 + k, "<p align='"..(secondrow and "right" or "left").."'><a href='event:window "..tabs.current.main.." "..v.event.."'>"..v.text.."\n</a></p>", name, xx + (secondrow and width+95 or 0), yy - (secondrow and secondrow*32 or 0), 100, 20, true, tabs.current.tab==v.text and true or false)
			yy=yy+31
		end
	end
	ui.addTAStyle(id, "\n"..text, name, x, y + 6, width, height, false, false)
	ui.addTAStyle(id + 11e3, "<V><b><font size='15'>"..pageName.."</font></b>", name, x - 5, y - 10, width + 10, nil, false, false)
    ui.addTextArea(id + 12e3, "", name, x + width - (details and 25 or 7), y - 2, 8, 8, 0x009D9D, 0x009D9D, 1, fixed)
    ui.addTextArea(id + 13e3, "<p align='center'><font size='17' color='#324650'><b><a href='event:close'>×</p></font></b></a>", name, x + width - (details and 30 or 12), y - 11, nil, nil, 0, 0, 0, fixed)
    if parent then
		ui.addTextArea(id + 14e3, "", name, x + width - 28, y - 2, 8, 8, 0x009D9D, 0x009D9D, 1, fixed)
		ui.addTextArea(id + 15e3, "<p align='center'><font size='17' color='#324650'><b><a href='event:window "..parent.."'>‹</p></font></b></a>", name, x + width - 33, y - 11, nil, nil, 0, 0, 0, fixed)
	end
	if page then
		ui.addTextArea(id + 17e3, "<a href='event:window "..page.."'>&lt;</a>", name, x + width - 33, y - 11, nil, nil, 0, 0, 0, fixed)
		ui.addTextArea(id + 18e3, "<a href='event:window "..page.."'>&gt;</a>", name, x + width - 33, y - 11, nil, nil, 0, 0, 0, fixed)
	end
end

function removeWindow(id, name)
    local del, p = ui.removeTAStyle, id - 13e3
    del(p, name)
    for i = 1e4, 17e3, 1e3 do
        del(p + i, name)
    end
    for i = 0,50 do
    	del(16e3 + i, name)
        del(p + i, name)
    	del(i, name)
    end
end

function ui.addTAStyle(id, text, name, x, y, width, height, button, unclickable, buttonlink, opacity)
	local filler=width and height and "" or text
	local primary=unclickable and 0x233238 or button and 0x3c5064 or 0x324650
	local secondary=unclickable and 0x040404 or button and 0x5d7d90 or 0x6a8fa2
	local tertiary=unclickable and 0x557588 or 0x040404
	ui.addTextArea(id+200, filler, name, x, y, width, height, secondary, secondary, opacity or 1, true)
	ui.addTextArea(id+100, filler, name, x+2, y+2, width, height, tertiary, tertiary, opacity or 1, true)
	ui.addTextArea(id, (buttonlink and "<a href='event:"..buttonlink.."'><p align='center'>"..text.."\n</p></a>") or text, name, x+1, y+1, width, height, primary, primary, opacity or 1, true)
end

function ui.removeTAStyle(id, name)
	ui.removeTextArea(id+200, name)
	ui.removeTextArea(id+100, name)
	ui.removeTextArea(id, name)
end

function eventTextAreaCallback(id, name, callback)
	local arg={}
	for argument in callback:gmatch("[^%s]+") do
		table.insert(arg,argument)
	end
    if arg[1] == "close" then
		for k,v in pairs(players[name].images.window) do
			tfm.exec.removeImage(v)
		end
        removeWindow(13e3, name)
		removeWindow(0,name)
		removeWindow(1,name)
		players[name].window=nil
	elseif arg[1] == "window" then
		eventTextAreaCallback(1,name,"close")
		local s=""
		if arg[2] then for k,v in ipairs(arg) do if k>1 then s=s..v if arg[k+1] then s=s.." " end end end end
		players[name].window=s
		if arg[2] == "help" then
			local tabs={
				current={main=arg[2],tab=arg[4] or "help"},
				{text=translate("help",name),event="helppage help"},
			}
			for k,v in pairs(translate("privshelp",name)) do
				if privs[name]>=k and v.name then
					table.insert(tabs,{text=v.name or "",event="privshelp "..k})
				end
			end
			--table.insert(tabs,{text="Drawing" or "",event="drawinghelp"})
			local text=(arg[4] and translate(arg[3],name)[tonumber(arg[4])]) or translate(arg[3] or "helppage",name)
			local str=""
			if type(text)=="table" then
				for k,v in ipairs(text) do
					str=str..v.."\n"
				end
			else
				str=text
			end
			addWindow(0, str, name, 200, 50, 400, 300, true, text.name or translate("help",name) or "N/A", nil, false, nil, tabs)
		elseif arg[2] == "profile" then
			local n=upper(arg[3]) or name
			if players[n] then
				local p=players[n]
				local str=""
				..translate("language",name).."\t"..translations[p.language].lang.."\n"
				..translate("credits",name).."\t"..players[n].credits.."\n"
				..translate("coins",name).."\t"..players[n].coins.."\n"
				.."X "..translate("offset",name).."\t"..players[n].offset.x.."\n"
				.."Y "..translate("offset",name).."\t"..players[n].offset.y.."\n"
				addWindow(0,str,name,n==name and 120 or 200,100,400,200,true,n)
				if n==name then
					ui.addTAStyle(1,"",name,560,90,120,216,false,false)
					local y=70
					local buttons={
						{event="menu",text=(players[name].menuhidden and "showmenu" or "hidemenu")},
						{event="opaquemenu",text=(players[name].opaquemenu and "transparentmenu" or "opaquemenu")},
						{event="window selectlanguage",text="language"},
						{event="window offset gui",text="offsets"},
					}
					if privs[name]>=8 then
						table.insert(buttons,{event="ban "..n,text="ban"})
					end
					--[[
					if privs[name]>=4 then -- and n~=name then
						table.insert(buttons,{event="promote "..name.." "..n,text=string.format("promote",ranks[privs[name]+1])})
					end
					]]
					for k,v in ipairs(buttons) do
						y=y+36
						ui.addTAStyle(1+k, translate(v.text,name), name, 570, y, 100, 20, true, false, v.event)
					end
				end
			else
				addWindow(0,translate("noplayer",name),name,200,100,400,200,true,n)
			end
		elseif arg[2] == "leaderboard" then
			local page=tonumber(arg[3]) or 1
			local str="<textformat tabstops='[50,80,170,270,350]'><b>\t#\tName\tCommunity\tCredits\tCoins</b>"
			for i=(page*20)-19,(page*20) do
				if leaderboard[i] then
					str=str..string.format(
						'<N>\n%s\t<V>%s<N>\t%s\t%s\t%s\t%s',
						"",i,
						leaderboard[i].name,
						leaderboard[i].language,
						leaderboard[i].credits,
						leaderboard[i].coins
					)
				end
			end
			str=str.."</textformat>"
			addWindow(0,str,name,70,50,660,300,true,translate("leaderboard",name))
			ui.addTAStyle(3, "\n\n\n\n\n\n\n\n\n\n&lt;\n\n\n\n\n\n\n\n\n\n", name, 80, 80, 20, 265, true, false, "window leaderboard "..(page-1<1 and 1 or page-1))
			ui.addTAStyle(4, "\n\n\n\n\n\n\n\n\n\n&gt;\n\n\n\n\n\n\n\n\n\n", name, 700, 80, 20, 265, true, false, "window leaderboard "..(leaderboard[(page*20)+1] and page+1 or page))

			table.insert(players[name].images.window,tfm.exec.addImage("TxgFUrG.png","&1",475,280,name))
			table.insert(players[name].images.window,tfm.exec.addImage(uiDetails.shaman..".png","&1",555,223,name))
			table.insert(players[name].images.window,tfm.exec.addImage(uiDetails.mouseright..".png","&1",490,258,name))
			table.insert(players[name].images.window,tfm.exec.addImage(uiDetails.mouse..".png","&1",625,280,name))
			ui.addTextArea(31, "<p align='center'>"..leaderboard[1].name.."</p>", name, 525, 210, 100, 20, nil, nil, 0, true)
			ui.addTextArea(32, "<p align='center'>"..leaderboard[2].name.."</p>", name, 465, 245, 100, 20, nil, nil, 0, true)
			ui.addTextArea(33, "<p align='center'>"..leaderboard[3].name.."</p>", name, 595, 265, 100, 20, nil, nil, 0, true)
		elseif arg[2] == "mapinfo" then
			local str=""
			for k,v in ipairs({"name","author","code","perm","length","height","wind","gravity","grounds"}) do
				if map[v] then
					local r
					if v=="grounds" then
						r=#map.grounds
					end
					str=str.."<N>"..translate(v)..": <VP>"..(r or map[v]).."\n"
				end
			end
			addWindow(0,str,name,300,100,200,200,true,translate("mapinfo",name))
			if privs[name]>=6 then
				ui.addTAStyle(1, "XML", name, 310, 280, 180, 20, true, false, "xml")
			end
		elseif arg[2] == "times" then
			local str="<textformat tabstops='[70,170,300]'>"
			for i,completion in ipairs(times) do
				if i<=30 then
					str=str..(i.."\t"..completion.time.."s\t"..completion.name.."\n")
				end
			end
			str=str.."</textformat>"
			addWindow(0,str,name,250,50,300,300,true,"Map: "..tfm.get.room.currentMap)
		elseif arg[2] == "shop" then
			ui.addTAStyle(5, "Coins\n\n\n"..players[name].coins, name, 735, 80, 55, 60, false, false, "")
			ui.addTAStyle(6, "Credits\n\n\n"..players[name].credits, name, 735, 156, 55, 60, false, false, "")
			if shop[ arg[3] ] then
				local page=tonumber(arg[4]) or 1
				addWindow(0,"",name,70,50,660,300,true,translate("shop",name).." - "..translate(arg[3],name).." - "..page,"shop")
				ui.addTAStyle(3, "\n\n\n\n\n\n\n\n\n\n&lt;\n\n\n\n\n\n\n\n\n\n", name, 80, 80, 20, 265, true, false, "window shop "..arg[3].." "..(page-1<1 and 1 or page-1))
				ui.addTAStyle(4, "\n\n\n\n\n\n\n\n\n\n&gt;\n\n\n\n\n\n\n\n\n\n", name, 700, 80, 20, 265, true, false, "window shop "..arg[3].." "..(shop[ arg[3] ][(page*18)+1] and page+1 or page))

				players[name].window="shop "..arg[3]
				local i=1
				local x=150
				local y=-5
				for k=(page*18)-17,(page*18) do
					local v=shop[ arg[3] ][k]
					if i<19 and v then
						i=i+1
						x=x+100
						if (i+4)%6==0 then y=y+100 x=150 end
						local state=players[name].inventory[ arg[3] ][k]
						ui.addTAStyle(10+i, (state==2 and "Unequip") or (state==1 and "Equip") or (v.cost and "$"..v.cost or "Info"), name, x-26, y+30, 54, 20, true, state==2 and true or false, (state==2 and "window shop unequip "..arg[3].." "..k.." "..page) or (state==1 and "window shop equip "..arg[3].." "..k.." "..page) or (not v.cost and "window shop info "..arg[3].." "..k.." "..page) or "window shop buy "..arg[3].." "..k.." "..page)
						if v.img then
							table.insert(players[name].images.window,tfm.exec.addImage(v.img..".png","&1",x-(v.offX or 16),y-(v.offY or 16),name))
						end
					end
				end
			elseif arg[3] == "info" then
				local cannon=shop[ arg[4] ][tonumber(arg[5])]
				addWindow(0,"",name,70,50,660,300,true,translate("shop",name).." - "..translate(arg[4],name).." - "..(cannon.name or "N/A"),"shop "..arg[4].." "..arg[6])
				table.insert(players[name].images.window,tfm.exec.addImage(cannon.img..".png","&1",400-(cannon.offX or 16),200-(cannon.offY or 16),name))
				local state=players[name].inventory[ arg[4] ][tonumber(arg[5])]
				local unlocked=(cannon.unlock and cannon.unlock(name)) or false
				tfm.exec.chatMessage(locked)
				ui.addTAStyle(2, (unlocked and "Unlock") or (state==2 and "Unequip") or (state==1 and "Equip") or "Locked", name, 325, 250, 150, 20, true, not unlocked, unlocked and "window shop buy "..arg[4].." "..arg[5].." "..arg[6] or "")
				ui.addTextArea(3, "<p align='center'>"..(cannon.description or "N/A").."</p>", name, 250, 100, 300, 100, nil, nil, 0, true)
			elseif arg[3] == "buy" then				
				players[name].inventory[ arg[4] ][tonumber(arg[5])]=1
				eventTextAreaCallback(id,name,"window shop "..arg[4].." "..arg[6])
			elseif arg[3] == "equip" then
				players[name].inventory[ arg[4] ][tonumber(arg[5])]=2
				eventTextAreaCallback(id,name,"window shop "..arg[4].." "..arg[6])
			elseif arg[3] == "unequip" then
				players[name].inventory[ arg[4] ][tonumber(arg[5])]=1
				eventTextAreaCallback(id,name,"window shop "..arg[4].." "..arg[6])
			else
				addWindow(0,"",name,70,50,660,300,true,translate("shop",name))
				ui.addTAStyle(2, 'Active Skills', name, 125, 320, 150, 20, true, false, "window shop active")
				ui.addTAStyle(3, 'Passive Skills', name, 325, 320, 150, 20, true, false, "window shop passive")
				ui.addTAStyle(4, 'Cannons', name, 525, 320, 150, 20, true, false, "window shop cannons")
				for k,v in ipairs({125,325,525}) do
					table.insert(players[name].images.window,tfm.exec.addImage(uiDetails.unknown..".png","&1",v,200,name))
				end
			end
		elseif arg[2] == "teams" then
			addWindow(0,"",name,150,50,500,300,true,translate("teams",name))
			local playerCount=0
			for _ in pairs(tfm.get.room.playerList) do
				playerCount=playerCount+1
			end
			for i=1,16 do
				teamsText[i]=teamsText[i] or "<p align='center'><a href='event:team join red'>"..translate("jointeam",name).."</a></p>"
				ui.addTextArea(i, teamsText[i],name, (i<=8 and 160) or 280, (i<=8 and 50+(i*35)) or 50+((i-8)*35), 100, 20, 0xFF0000, 0xFF0000, 0.5, true)
			end
			for i=1,16 do
				teamsText[i+16]=teamsText[i+16] or "<p align='center'><a href='event:team join blue'>"..translate("jointeam",name).."</a></p>"
				ui.addTextArea(i+16, teamsText[i+16], name, (i<=8 and 420) or 540, (i<=8 and 50+(i*35)) or 50+((i-8)*35), 100, 20, 0x0000FF, 0x0000FF, 0.5, true)
			end
		elseif arg[2] == "test" then
			addWindow(0,"test",name,200,50,400,300,true,"Example",nil,true)
		elseif arg[2] == "playerlist" then
			local str=""
			local total=0
			local selected=0
			for n,p in pairs(tfm.get.room.playerList) do
				total=total+1
				str=str.."<font color='#"..(players[name].selectedplayers[n] and "2ECF73" or "C2C2DA").."'><a href='event:player "..(players[name].selectedplayers[n] and "deselect" or "select").." "..n.."'>"..n.."</a></font>\n"
			end
			for n,p in pairs(players[name].selectedplayers) do
				selected=selected+1
			end
			str=str.."\n<font color='#"..(total==selected and "2ECF73" or "C2C2DA").."'><a href='event:player "..(total==selected and "deselect" or "select").." all'>[All]</a></font>"
			addWindow(0,str,name,150,50,300,300,true,"Player List")
			
			ui.addTAStyle(1,"",name,470,90,120,216,false,false)
			local y=70
			local buttons={}
			if privs[name]>=3 and cheats then
				table.insert(buttons,{event="kill",text="kill"})
				table.insert(buttons,{event="cheese",text="cheese"})
				table.insert(buttons,{event="win",text="win"})
				table.insert(buttons,{event="vampire",text="vampire"})
				table.insert(buttons,{event="respawn",text="respawn"})
				table.insert(buttons,{event="shaman",text="shaman"})
			end
				
			for k,v in ipairs(buttons) do
				y=y+36
				ui.addTAStyle(1+k, translate(v.text,name), name, 480, y, 100, 20, true, false, "pl "..v.event)
			end
			
		elseif arg[2] == "settings" then
			addWindow(0,"",name,150,50,500,300,true,translate("settings",name))
			local i=0
			local x=160
			local y=40
			for k,v in pairs(settings) do
				i=i+1
				if i%9==0 then x=x+200 y=40 end
				y=y+40
				ui.addTAStyle(i, translate(k,name) or "N/A", name, x, y, 150, 20, true, v==true and true or false, (k=="maprotation" and "window maprotation") or ("settings "..(v and "off" or "on").." "..k))
			end
		elseif arg[2]=="selectlanguage" then
			local i=1
			local x=34
			local y=-20
			addWindow(0, "", name, 20, 40, 760, 320, true, translate("selectlanguage",name), "profile")
			for _,k in ipairs({"en","fr","br","es","ru","cn","tr","vk","pl","hu","nl","lt","ro","id","de","ar","ph","jp","fi","he","it"}) do
				local v=translations[k]
				i=i+1
				x=x+96
				if (i+6)%8==0 then y=y+96 x=34 end
				ui.addTAStyle(i, (k==players[name].language and k:upper()) or k:upper(), name, x+4, y+61, 54, 20, true, k==players[name].language and true or false, "language "..k)
				table.insert(players[name].images.window,tfm.exec.addImage(v.flag..".png","&1",x,y,name))
			end
		elseif arg[2]=="offset" then
			addWindow(0,"",name,n==name and 120 or 200,100,400,200,true,translate("offsets",name), "profile")
			ui.addTAStyle(10, "", name, 340, 155, 120, 120, true, false, false)
			ui.addTextArea(11, "<p align='center'>X: "..players[name].offset.x.."            Y: "..players[name].offset.y.."</p>", name, 335, 175, 130, 20, nil, nil, 0, true)
			ui.addTAStyle(12, "<p align='center'><a href='event:offset set y -1'>^</a></p>", name, 392, 147, 16, 16)
			ui.addTAStyle(13, "<p align='center'><a href='event:offset set y 1'>v</a></p>", name, 392, 267, 16, 16)
			ui.addTAStyle(14, "<p align='center'><a href='event:offset set x -1'>&lt;</a></p>", name, 332, 207, 16, 16)
			ui.addTAStyle(15, "<p align='center'><a href='event:offset set x 1'>&gt;</a></p>", name, 452, 207, 16, 16)
			players[name].images.window[1]=tfm.exec.addImage("1Sg9gfU.png", "&50", 379, 187, name)
			updateOffsets(name)
		elseif arg[2] == "maprotation" then
			if arg[3] and maps[ arg[3] ] then
				settings.maprotation[ arg[3] ]=not settings.maprotation[ arg[3] ] and true or false
			end
			addWindow(0,"",name,150,50,500,300,true,translate("settings",name).." - "..translate("maprotation",name),"settings")
			local i=0
			local x=40
			local y=40
			for k,v in pairs(maps) do
				i=i+1
				if (i-1)%7==0 then x=x+120 y=40 end
				y=y+40
				ui.addTAStyle(i, k, name, x, y, 100, 20, true, settings.maprotation[k] and true or false, "window maprotation "..k)
			end
		end
	elseif arg[1] == "player" then
		if arg[2] == "select" then
			if arg[3]=="all" then
				players[name].selectedplayers={}
				for n,p in pairs(tfm.get.room.playerList) do
					players[name].selectedplayers[n]=true
				end
			else
				players[name].selectedplayers[ arg[3] ]=true
			end
		elseif arg[2] == "deselect" then
			if arg[3]=="all" then
				players[name].selectedplayers={}
			else
				players[name].selectedplayers[ arg[3] ]=nil
			end
		end
		eventTextAreaCallback(1,name,"window playerlist")
	elseif arg[1] == "settings" then
		if arg[2] == "on" then
			settings[ arg[3] ]=true
		elseif arg[2] == "off" then
			settings[ arg[3] ]=false
		end
		eventTextAreaCallback(1,name,"window settings")
	elseif arg[1] == "team" then
		if arg[2] == "join" then
			if players[name].team==nil then
 			table.insert(teams[arg[3] ],{n=name})
			players[name].team=arg[3]
			for n,p in pairs(players) do
				--if p.window=="teams" then
					if n==name then
						teamsText[id]="<p align='center'><a href='event:team leave'>"..name.."</a></p>"
						ui.updateTextArea(id,teamsText[id],n)
					else
						teamsText[id]="<p align='center'>"..name.."</p>"
						ui.updateTextArea(id,teamsText[id],n)
					end
				--end
			end
			end
	    elseif arg[2] == "leave" then
		    if players[name].team~=nil then
		    	for k,v in pairs(teams[players[name].team]) do
		    		if v.n==name then
		    			--[[getting an error in this line!!]] teamsText[id]="<p align='center'><a href='event:team join "..players[name].team.."' >"..translate("jointeam",name).."</a></p>"
		    			ui.updateTextArea(id,teamsText[id],name)
		    			players[name].team=nil
		    		end
		        end
		  	end
    	end
	elseif arg[1]=="recordslink" then
		tfm.exec.chatMessage("http://atelier801.com/topic?f=6&t=771605",name)
	elseif arg[1]=="pl" then
		if arg[2]=="kill" then
			for n,p in pairs(players[name].selectedplayers) do
				tfm.exec.killPlayer(n)
			end
		elseif arg[2]=="cheese" then
			for n,p in pairs(players[name].selectedplayers) do
				tfm.exec.giveCheese(n)
			end
		elseif arg[2]=="win" then
			for n,p in pairs(players[name].selectedplayers) do
				tfm.exec.giveCheese(n)
				tfm.exec.playerVictory(n)
			end
		elseif arg[2]=="vampire" then
			for n,p in pairs(players[name].selectedplayers) do
				tfm.exec.setVampirePlayer(n)
			end
		elseif arg[2]=="respawn" then
			for n,p in pairs(players[name].selectedplayers) do
				tfm.exec.respawnPlayer(n)
			end
		elseif arg[2]=="shaman" then
			for n,p in pairs(players[name].selectedplayers) do
				tfm.exec.setShaman(n)
			end
		end
	elseif arg[1]=="menu" then
		local p=players[name]
		if p.menuhidden then players[name].menuhidden=false else players[name].menuhidden=true end
		removeMenu(p.menu,name)
		addMenu(p.menu,name,p.menuhidden,p.opaquemenu)
		eventTextAreaCallback(1,name,"window profile")
	elseif arg[1]=="opaquemenu" then
		local p=players[name]
		if p.opaquemenu then players[name].opaquemenu=false else players[name].opaquemenu=true end
		removeMenu(p.menu,name)
		addMenu(p.menu,name,p.menuhidden,p.opaquemenu)
		eventTextAreaCallback(1,name,"window profile")
    elseif arg[1]=="language" then
		players[name].language=arg[2]
		eventTextAreaCallback(id, name, "window selectlanguage")
	elseif arg[1]=="offset" then
		local offset=players[name].offset
		if arg[2]=="reset" then
			offset.x=0
			offset.y=10
		elseif arg[2]=="set" then
			offset[arg[3]]=math.min(25, math.max(-25, offset[arg[3]]+tonumber(arg[4])))
		end
		updateOffsets(name)
	elseif arg[1]=="xml" then
		local xml=map.xml or ""
		local splitnum=800
		for i=1,#xml,splitnum do
			tfm.exec.chatMessage("<font size='8'>"..angleBrackets(string.sub(xml,i,i+splitnum-1)).."</font>",name)
		end
	end
end

function addMenu(tbl,name,hidden,opaque)
	if tbl=={} then
		for k,v in pairs(menu) do
			if privs[name]>=v.privs then
				table.insert(tbl,v)
			end
		end
	end
	local x=10
	for i,button in ipairs(tbl) do
		local menuItem=menu[button]
		local length=#(menuItem.text or translate(menuItem.translation,name))*9
		ui.addTAStyle(50+i,(menuItem.text or translate(menuItem.translation,name)),name,x,hidden and -20 or 380,length,20,true,false,menuItem.event,opaque and 1 or 0.2)
		x=x+length+12
	end
	if event then showEventItems(0,name) end
end

function removeMenu(tbl,name)
    local n = 0
	for i in pairs(tbl) do
	    n = n + 1
		ui.removeTAStyle(50+n,name)
	end
end

function showEventItems(a,n)
	local p=players[n]
    local a,s,f,x,y,w,h,tA,b="<p align='left'>"..a,1,true,775,p.menuhidden and -20 or 379,50,20,ui.addTextArea
	if p.images.ornament then tfm.exec.removeImage(p.images.ornament) end
	players[n].images.ornament=tfm.exec.addImage(event=="christmas" and "Z47tJTg.png" or event=="halloween" and "qq80Sj7.png","&1",x-15,y-2,n)
    b="<font color='#1'>"..a
    tA(-201,b,n,x+s,y,w,h,0,1,0,f)
    tA(-202,b,n,x-s,y,w,h,0,1,0,f)
    tA(-203,b,n,x,y+s,w,h,0,1,0,f)
    tA(-204,b,n,x,y-s,w,h,0,1,0,f)
    tA(-205,b,n,x+s,y-s,w,h,0,1,0,f)
    tA(-206,b,n,x-s,y-s,w,h,0,1,0,f)
    tA(-207,b,n,x+s,y+s,w,h,0,1,0,f)
    tA(-208,b,n,x-s,y+s,w,h,0,1,0,f)
    tA(-209,a,n,x,y,w,h,0,0,0,f)
end

function rtl(s)
	local f=""
	local ltr={}
	for c in s:gmatch("%S+") do
		table.insert(ltr,c)
	end
	for c,p in pairs(ltr) do
		f = p.." "..f
	end
	return "<p align='right'>"..f.."</p>"
end

function translate(message,name)
	local community=tfm.get.room.community
	if name and players[name].language then community=players[name].language elseif community=="xx" then community="en" end
	return (translations[community] and translations[community][message]) or translations["en"][message]
end

function readPDMulti(_string)
	local PDgroup, width, i={}, 0, 1
	while i<#_string do
		width=_string:byte(i+1)*0x80+_string:byte(i+2)
		PDgroup[_string:byte(i)]=_string:sub(i+3, i+2+width)
		i=i+3+width
	end
	return PDgroup
end

function writePDMulti(PDgroup)
	local _string={}
	for id, data in pairs(PDgroup) do
		table.insert(_string, string.char(id, math.floor(#data/0x80), #data%0x80))
		table.insert(_string, data)
	end
	return table.concat(_string)
end

function eventPlayerDataLoaded(name, data)
	if data=="" then
		data={}
	else
		players[name].language=data:sub(1,2)
		data=data:sub(3)
		if data:byte(1)>10 then
			local bc_data=data
			data={}
			data[save_id_bc]=bc_data
		else
			data=readPDMulti(data)
		end
	end
	players[name].saveData=data
	if data[1] then
		loadSave(name, data[1], 1)
	end
	if data[save_id] then
		loadSave(name, data[save_id], save_id)
	else
		players[name].loaded=true
	end
end

function loadSave(name, _string, id)
	while #_string<13 do
		_string=_string..string.char(0)
		end
	local tbl={}
	local statArray=fRead(_string:sub(2),statInfo[id].bytes)
	for i,stat in ipairs(statInfo[id].names) do
		tbl[stat]=statArray[i]
	end
	if id==1 then
		players[name].loaded=true
		players[name].credits=tbl.credits
		players[name].coins=tbl.coins
		players[name].menuhidden=tbl.menuhidden and true or false
		players[name].offset.x=tbl.offsetx-25
		players[name].offset.y=tbl.offsety-25
	end
	if id==save_id then
		
	end
end

function formatSave(player, id)
	if id==1 then
		local tbl={
			player.credits,
			player.coins,
			player.menuhidden and 1 or 0,
			player.offset.x+25,
			player.offset.y+25,
		}
	end
	if id==save_id then
		local tbl={}
	end
	return string.char(save_version)..fCompress(tbl,statInfo[id].bytes)
end

function fCompress(nArray,nSizeArray)
	local output={}
	for i,bytes in ipairs(nSizeArray) do
		nArray[i]=math.min(nArray[i],127^bytes-1)
		local mod=0
		for ii=0,bytes-1 do
			mod=(nArray[i]-mod)/127^ii%127
			table.insert(output,string.char(mod))
		end
	end
	return table.concat(output)
end

function fRead(fString,nSizeArray)
	local output={}
	local index=1
	for i,bytes in ipairs(nSizeArray) do
		local number=0
		for i=0,bytes-1 do
			number=number+string.byte(string.sub(fString,index+i,index+i))*127^i
		end
		table.insert(output,number)
		index=index+bytes
	end
	return output
end

function printInfo(name, value, tabs)
	tabs = tabs or ""
	local t = type(value)
	tfm.exec.chatMessage(tabs .. t .. " " .. tostring(name) .. " = " .. tostring(value))
	if t == "table" then
		for n, v in pairs(value) do
			if v == value then
				tfm.exec.chatMessage(tabs .. "\tself " .. n)
			else
				printInfo(n, v, tabs .. "\t")
			end
		end
	end
end

function upper(str)
    if not str then return end
    return equalAny(str:sub(1,1), "+", "*") and str:sub(1,2):upper()..str:sub(3):lower() or str:sub(1,1):upper()..str:sub(2):lower()
end

function pythag(x1,y1,x2,y2,r)
	local x=x2-x1
	local y=y2-y1
	r=r+r
	return x*x+y*y<r*r
end

function equalAny(v, ...)
	for _, a in pairs({...}) do
		if a == v then
			return true
		end
	end
end

function updateOffsets(name)
	tfm.exec.removeImage(players[name].images.window[2])
	players[name].images.window[2]=tfm.exec.addImage("CNfJOg2.png", "&51", 400-16+players[name].offset.x, 215-16+players[name].offset.y, name)
	ui.updateTextArea(11,("<p align='center'>X: %d            Y: %d</p>"):format(
		players[name].offset.x,
		players[name].offset.y
	), name)
end

commands={
--[[
	mod={
		privs=10,
		logged=false,
		effect=function(name,cmd,args,arg)
			tfm.exec.chatMessage("<ROSE><b>["..name.."] "..args.."</b>")
		end
	},
]]
	win={
		privs=3,
		cheat=true,
		effect=function(name,cmd,args,arg)
			tfm.exec.giveCheese(upper(arg[1]) or name)
			tfm.exec.playerVictory(upper(arg[1]) or name)
		end
	},
	ban={
		privs=6,
		effect=function(name,cmd,args,arg)
			if arg[1] and (privs[upper(arg[1])] or 1)<privs[name] then
				privs[upper(arg[1])]=0
				for n,p in pairs(tfm.get.room.playerList) do
					tfm.exec.chatMessage(translate("banned",n):format(upper(arg[1]),name),n)
				end
			else
				tfm.exec.chatMessage(translate("cantban",name),name)
			end
		end
	},
	c={
		privs=3,
		logged=false,
		effect=function(name,cmd,args,arg)
			for n,p in pairs(players) do
				if privs[n]>=3 then
					tfm.exec.chatMessage("<font color='#00FFFF'>&#926; ["..name.."] "..args.."</font>",n)
				end
			end
		end
	},
	lock={
		privs=3,
		effect=function(name,cmd,args,arg)
			if tonumber(arg[1]) then
				tfm.exec.setRoomMaxPlayers(tonumber(arg[1]))
				tfm.exec.chatMessage(translate("locked"):format(name,arg[1]))
			end
		end
	},
	np={
		privs=3,
		effect=function(name,cmd,args,arg)
			if arg[1]=="#38" then arg[1]="0" end
			tfm.exec.newGame(playMap(arg[1]))
		end
	},
	shaman={
		privs=3,
		cheat=true,
		effect=function(name,cmd,args,arg)
			tfm.exec.setShaman(upper(arg[1]) or name)
		end
	},
	cheese={
		privs=3,
		cheat=true,
		effect=function(name,cmd,args,arg)
			tfm.exec.giveCheese(upper(arg[1]) or name)
		end
	},
	time={
		privs=1,
		logged=false,
		effect=function(name,cmd,args,arg)
			if not map.skipped then
				if not votes.time[name] or privs[name]>=3 then
					local i=0
					for _ in pairs(votes.time) do
						i=i+1
					end
					if i<=6 then
						local t=30
						if privs[name]>=3 and tonumber(arg[1]) then
							t=tonumber(arg[1])
						end
						currentTime=(currentTime/1000)+t
						tfm.exec.setGameTime(currentTime)
						tfm.exec.chatMessage(translate("timeadded"):format(name,t))
					else
						tfm.exec.chatMessage(translate("maxtimeadded",name),name)
					end
					votes.time[name]=true
				else
					tfm.exec.chatMessage(translate("alreadyvoted",name),name)
				end
			end
		end
	},
	skip={
		privs=1,
		logged=false,
		effect=function(name,cmd,args,arg)
			if not map.skipped then
				if not votes.skip[name] then
					votes.skip[name]=true
					local i=0
					local a=0
					for _ in pairs(votes.skip) do
						i=i+1
					end
					for _ in pairs(players) do
						a=a+1
					end
					tfm.exec.chatMessage(translate("skipped"):format("["..i.."/"..(math.floor(a/1.25)+1).."]",name))
					if i>=math.floor(a/1.25) then
						map.skipped=true
						tfm.exec.chatMessage(translate("mapskipped"))
						tfm.exec.setGameTime(5)
					end
				else
					tfm.exec.chatMessage(translate("alreadyvoted",name),name)
				end
			end
		end
	},
	offset={
		privs=0,
		logged=false,
		effect=function(name,cmd,args,arg)
			if arg[1]=="gui" then
				eventTextAreaCallback(1,name,"window offset gui")
			elseif arg[2]=="reset" then
				players[name].offset.x=0
				players[name].offset.y=0
			else
				players[name].offset.x=math.max(-25, math.min(25, tonumber(arg[1]) or 0))
				players[name].offset.y=math.max(-25, math.min(25, tonumber(arg[2]) or 10))
			end
		end
	},
	mort={
		privs=0,
		effect=function(name,cmd,args,arg)
			local n=name
			if privs[name]>=3 and arg[1] then
				n=upper(arg[1])
			end
			tfm.exec.killPlayer(n)
		end
	},
	profile={
		privs=0,
		logged=false,
		effect=function(name,cmd,args,arg)
			local n=upper(arg[1]) or name
			eventTextAreaCallback(0,name,"window profile "..n)
		end
	},
	me={
		privs=0,
		logged=false,
		effect=function(name,cmd,args,arg)
			tfm.exec.chatMessage("<V>*"..name.." <N>"..args)
		end
	},
	help={
		privs=0,
		logged=false,
		effect=function(name,cmd,args,arg)
			eventTextAreaCallback(0,name,"window help")
		end
	},
	clear={
		privs=0,
		effect=function(name,cmd,args,arg)
			if arg[1]=="all" and privs[name]>=3 then
				for n,p in pairs(players) do
					clearJoints(n)
				end
			else
				clearJoints((privs[name]>=3 and upper(arg[1])) or name)
			end
		end
	},
	tool={
		privs=0,
		effect=function(name,cmd,args,arg)
			if arg[1]=="brush" then
				players[name].drawing.tool="brush"
			elseif arg[1]=="line" then
				players[name].drawing.tool="line"
			end
		end
	},
	color={
		privs=0,
		effect=function(name,cmd,args,arg)
			players[name].drawing.color=tonumber(arg[1] or "FFFFFF",16)
		end
	},
	size={
		privs=0,
		effect=function(name,cmd,args,arg)
			players[name].drawing.size=tonumber(arg[1]) or 1
		end
	},
	roommod={
		privs=5,
		effect=function(name,cmd,args,arg)
			local n=upper(arg[1])
			if arg[1] and players[n] then
				if privs[n]>=3 then
					tfm.exec.chatMessage(translate("alreadyprivs",name):format(n,privNames[3]),name)
				else
					tfm.exec.chatMessage(translate("givenprivs",name):format(n,privNames[3]))
					privs[n]=3
				end
			end
		end
	},
	deroommod={
		privs=0,
		cheat=false,
		effect=function(name,cmd,args,arg)
			local n=upper(arg[1])
			if arg[1] and players[n] then
				if privs[n]>3 then
					tfm.exec.chatMessage(translate("toohighprivs",name):format(n,privNames[3]),name)
				elseif privs[n]<3 then
					tfm.exec.chatMessage(translate("toolowprivs",name):format(n,privNames[3]))
				elseif privs[n]==3 then 
					tfm.exec.chatMessage(translate("demotedprivs",name):format(n,privNames[3]))
					privs[n]=1
				end
			end
		end
	},
	times={
		privs=0,
		cheat=false,
		effect=function(name,cmd,args,arg)
			eventTextAreaCallback(1,name,"window times")
		end
	},
	mapinfo={
		privs=0,
		cheat=false,
		effect=function(name,cmd,args,arg)
			eventTextAreaCallback(1,name,"window mapinfo")
		end
	},
	name={
		privs=3,
		cheat=false,
		effect=function(name,cmd,args,arg)
			if arg[1] then
				if tfm.get.room.playerList[upper(arg[1])] and arg[2] then
					tfm.exec.setNameColor(upper(arg[1]),tonumber(arg[2],16))
				end
			end
		end
	}	
}
commands.t=commands.c
commands.map=commands.np
commands.sham=commands.shaman
commands.s=commands.shaman
commands.off=commands.offset
commands.die=commands.mort
commands.kill=commands.mort
commands.colour=commands.color
commands.unroommod=commands.deroommod

for cmd in pairs(commands) do
	system.disableChatCommandDisplay(cmd,true)
end

function eventChatCommand(name,command,button)
	local split=string.find(command," ") or #command+1
	local cmd=string.sub(command,1,split-1)
	local args=string.sub(command,split+1)
	local arg={}
	for argument in args:gmatch("[^%s]+") do
		table.insert(arg,argument)
	end
	if commands[cmd] then
		if privs[name]>=commands[cmd].privs then
			if not commands[cmd].cheat or cheats then
				commands[cmd].effect(name,cmd,args,arg)
				if commands[cmd].logged~=false then
					for n,p in pairs(privs) do
						if players[n] and privs[n]>=3 then
							tfm.exec.chatMessage("<font color='#AAAAAA'>&#926; ["..name.."] !"..command.."</font>",n)
						end
					end
				end
			else
				tfm.exec.chatMessage(translate("cheatsdisabled",name),name)
			end
		else
			tfm.exec.chatMessage(translate("cantusecommand",name),name)
		end
	end
end


function eventLoop(time,remaining)
	currentTime=remaining
	if not settings.disabledNewGame and remaining<=0 then
		tfm.exec.newGame(playMap())
	end
	if settings.quickrespawn and not (map.reload and tfm.get.room.currentMap~="@0") then
		local tbl={}
		for n,t in pairs(toRespawn) do
			if t<=os.time()-1000 then
				tfm.exec.respawnPlayer(n)
			else
				tbl[n]=t
			end
		end
		toRespawn=tbl
	end
end

function playMap(m)
	local nextMap
	local category=maps[m] or maps[(m and m:upper())]
	if category and category.associative then
		local tbl={}
		for k,v in pairs(category) do
			if k~="associative" then
				table.insert(tbl,v)
			end
		end
		nextMap=tbl[math.random(#tbl)]
	elseif category then
		nextMap=category[math.random(#category)]
	elseif m then
		nextMap=m
	else
		local tbl={}
		local t={}
		for k,v in pairs(settings.maprotation) do if v==true then table.insert(tbl,k) end end
		local ms=maps[ tbl[math.random(#tbl)] ] or {0}
		if ms.associative then
			for k,v in pairs(ms) do
				if k~="associative" then
					table.insert(t,v)
				end
			end
		else
			nextMap=ms[math.random(#ms)]
		end
	end
	if type(nextMap)=="table" then
		nextMap=nextMap[math.random(#nextMap)]
	end
	return nextMap
end

function angleBrackets(str)
	local s1=string.gsub(str, "<", "&lt;")
	local s2=string.gsub(s1, ">", "&gt;")
	return s2
end

function eventPlayerRespawn(name)
	players[name].facingRight=true
	if settings.checkpoints and players[name].checkpoint then
		tfm.exec.movePlayer(name,players[name].checkpoint.x,players[name].checkpoint.y)
		if players[name].checkpoint.id then system.removeTimer(players[name].checkpoint.id) end
		if players[name].checkpoint.cheese then
			players[name].checkpoint.id=system.newTimer(function()
				if players[name] and players[name].checkpoint then 
					tfm.exec.giveCheese(name)
					players[name].checkpoint.id=nil
				end
			end,1000,false)
		end
	else
		players[name].spawned=os.time()
	end
end

function eventPlayerDied(name)
	if settings.checkpoints then
		if players[name] and players[name].checkpoint and players[name].checkpoint.id then system.removeTimer(players[name].checkpoint.id) end
	end
	if settings.quickrespawn then
		--tfm.exec.respawnPlayer(name)
		toRespawn[name]=os.time()
	end
end

function eventPlayerWon(name,timeElapsed,timeElapsedSinceRespawn)
	--local t=(os.time()-players[name].spawned)/1000
	local t=(timeElapsedSinceRespawn or timeElapsed)/100
	tfm.exec.chatMessage("<ROSE>You beat map "..tfm.get.room.currentMap.." in "..t.." seconds!",name)
	table.insert(times,{time=t,name=name})
	table.sort(times,function(i,v) return i.time<v.time end)
	if players[name].checkpoint then
		players[name].checkpoint=nil
		ui.removeTextArea(-1,name)
	end
	if settings.quickrespawn then
		--tfm.exec.respawnPlayer(name)
		toRespawn[name]=os.time()
	end
end

function eventNewGame()
	times={}
	toRespawn={}
	jointID=1
	tfm.exec.addPhysicObject(1, 400, -800, offscreenGroundProperties)
	votes={time={},skip={}}
	for name,player in pairs(players) do
		player.inventory.active.cannons.skins={}
		player.checkpoint=nil
		player.drawing.joints={}
		player.drawing.lastClick=nil
		for id,status in ipairs(player.inventory.cannons) do
			if status==2 then
				table.insert(player.inventory.active.cannons.skins,id)
			end
		end
		ui.removeTextArea(-1,name)
		eventPlayerRespawn(name)
	end
	map={}
	if #tostring(tonumber(string.match(tfm.get.room.currentMap,"%d+")))<=3 and tfm.get.room.currentMap~="@0" then
		map={
			code=tonumber(string.match(tfm.get.room.currentMap,"%d+")) or 0,
			grounds={}
		}
	else
		map={
			code=tonumber(string.match(tfm.get.room.currentMap,"%d+")) or 0,
			grounds={}
		}
		if tfm.get.room.xmlMapInfo then
			map.name=tfm.get.room.xmlMapInfo.xml:match('<P[^/]+title="([^"]+)"')
			map.author=tfm.get.room.xmlMapInfo.xml:match('<P[^/]+author="([^"]+)"') or tfm.get.room.xmlMapInfo.author or "Tigrounette"
			map.length=tfm.get.room.xmlMapInfo.xml:match('<P[^/]+L="([^"]+)"') or 800
			map.height=tfm.get.room.xmlMapInfo.xml:match('<P[^/]+H="([^"]+)"') or 400
			map.xml=tfm.get.room.xmlMapInfo.xml
			map.perm=tfm.get.room.xmlMapInfo.permCode
			map.code=tfm.get.room.currentMap
			map.reload=tfm.get.room.xmlMapInfo.xml:match('<P[^/]+reload="([^"]+)"') and true
			map.creator=tfm.get.room.xmlMapInfo.xml.author
			map.id=tfm.get.room.xmlMapInfo.xml:match('<P[^/]+id="([^"]+)"')
			map.bg=tfm.get.room.xmlMapInfo.xml:match('<P[^/]+bg="([^"]+)"')
			map.fg=tfm.get.room.xmlMapInfo.xml:match('<P[^/]+fg="([^"]+)"')
			map.xoff=tonumber(tfm.get.room.xmlMapInfo.xml:match('<P[^/]+xoff="([^"]+)"')) or 0
			map.yoff=tonumber(tfm.get.room.xmlMapInfo.xml:match('<P[^/]+yoff="([^"]+)"')) or 0
			map.wind=0
			map.gravity=10
			map.grounds={}
			for w,g in tfm.get.room.xmlMapInfo.xml:gmatch('<P[^/]+G="([-%d.]+),([-%d.]+)"') do
				map.wind,map.gravity=w,g
			end
			local gAttrs={"c","T","X","Y","L","H","o","lua"}
			local gTypes=translate("ground")
			local gProps={"dynamic","mass","friction","restitution","rotation"}
			for sol in tfm.get.room.xmlMapInfo.xml:gmatch("<S [^/]+/>") do
				local p=0
				local ground={
					id=#map.grounds,
					P=tostring(sol:match('P="([^"]+)"'))
				}
				for i,attribute in ipairs(gAttrs) do
					if attribute=="o" then
						ground[attribute]=sol:match(attribute..'="([^"]+)"')
					else
						ground[attribute]=tonumber(sol:match(attribute..'="([^"]+)"'))
					end
				end
				if ground.T and gTypes[ground.T+1] then
					ground.T=gTypes[ground.T+1]
				end
				for property in ground.P:gmatch("[^,]+") do
					p=p+1
					if gProps[p] then
						ground[gProps[p]]=property
					else
						break
					end
				end
				table.insert(map.grounds,1,ground)
			end
		end
		if map.bg then -- and #map.bg>7 then
			tfm.exec.addImage(map.bg..".jpg","?0",0,0)
		end
		if map.fg then --and #map.fg>7 then
			tfm.exec.addImage(map.fg..".png","!1",0,0)
		end
		tfm.exec.setUIMapName("<J>"..map.author.." <BL>- "..(map.name or map.code))
		if map.reload and (map.code and map.code~="@0") then
			system.newTimer(function() tfm.exec.newGame(tfm.get.room.xmlMapInfo.xml) end,3000,false)
		end
	end
end

function eventMouse(name,x,y)
	if players[name].drawing.canDraw then
		if players[name].drawing.tool=="brush" then
			drawJoint(name,x,y,x,y+1)
		elseif players[name].drawing.tool=="line" then
			if players[name].drawing.lastClick and players[name].shifting then
				drawJoint(name,players[name].drawing.lastClick.x,players[name].drawing.lastClick.y,x,y)
			end
			players[name].drawing.lastClick={x=x,y=y}
		end
	elseif players[name].shifting and (map and map.grounds) then
		local selected,theta,c,s,cx,cy
		for i,ground in ipairs(map.grounds) do
			theta=math.rad(ground.rotation or 0)
			c,s=math.cos(-theta),math.sin(-theta)
			cx=ground.X+c*(x-ground.X)-s*(y-ground.Y)
			cy=ground.Y+s*(x-ground.X)+c*(y-ground.Y)
			if (ground.T==translate("ground")[14] and pythag(x,y,ground.X,ground.Y,ground.L/2)) or (math.abs(cx-ground.X)<ground.L/2 and math.abs(cy-ground.Y)<ground.H/2) then
				local str=""
				for _,property in ipairs({{"id"},{"T","type"},{"o","color"},{"friction"},{"restitution"},{"rotation"},{"X"},{"Y"},{"L","length"},{"H","height"}}) do
					if ground[property[1]] then
						str=str.."<N>"..(translate(property[2],name) or translate(property[1],name))..": <VP>"..(property[1]=="o" and "<font color='#"..ground[property[1]].."'>" or "")..ground[property[1]]..(property[1]=="o" and "</font>" or "").."\n"
					end
				end
				local w,h=map.width or 800,map.height or 400
				ui.addTextArea(-20,"<font size='12'>"..str.."</font>",name,(x+150<=w and x) or (x<0 and 0) or (w-150),(y+150<=h and y) or (y<20 and 20) or (y-150),150,150,0x324650,0x212F36,0.8,true)
				return
			end
		end
		ui.removeTextArea(-20,name)
	else
		ui.removeTextArea(-20,name)
	end
end

function eventSummoningEnd(name,type,x,y,angle,xspeed,yspeed,other)
	if type==17 or (type>=1700 and type<2100) then
		local skin=players[name].inventory.active.cannons.skins[math.random(#players[name].inventory.active.cannons.skins)]
		if skin then
			tfm.exec.addImage(shop.cannons[skin].img..".png", "#"..other.id, -(shop.cannons[skin].offX or 16), -(shop.cannons[skin].offY or 16))
		end
	end
end

function table.random(t, associative)
	associative = associative or false
	if associative then
		local t2 = {}
		for k in pairs(t) do
			t2[#t2 + 1] = k
		end
		return t[table.random(t2)]
	else
		return t[math.random(1,#t)]
	end
end

function drawJoint(name,x1,y1,x2,y2)
	jointID=jointID+1
	if players[name].drawing.tool=="brush" then x1,y1=x2+1,y2+1 end
	local joint={
		type=0,
		point1=x1..","..y1,
		point2=x2..","..y2,
		frequency=10,
		damping=0.2,
		line=players[name].drawing.size,
		color=players[name].drawing.color,
		alpha=1,
		foreground=true
	}
	tfm.exec.addJoint(jointID, 1, 1, joint)
	players[name].drawing.joints[#players[name].drawing.joints+1] = jointID
end

function undoJoint(name)
	if #players[name].drawing.joints>0 then
		tfm.exec.removeJoint(players[name].drawing.joints[#players[name].drawing.joints])
		players[name].drawing.joints[#players[name].drawing.joints]=nil
	elseif #players[name].drawing.joints<2 then
		drawJoint(name,400,-800,400,-800)
	end
end

function clearJoints(name)
	if players[name] then
		for i=1,#players[name].drawing.joints do
			undoJoint(name)
		end
		drawJoint(name,400,-800,400,-800)
		players[name].drawing.joints={}
	end
end

for name,player in pairs(tfm.get.room.playerList) do
	eventNewPlayer(name)
end
tfm.exec.newGame(playMap())
--players.Shamousey.drawing.canDraw=true
