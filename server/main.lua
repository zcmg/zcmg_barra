PerformHttpRequest('https://raw.githubusercontent.com/zcmg/'..GetCurrentResourceName()..'/main/fxmanifest.lua', function(code, res, headers)
	local version = GetResourceMetadata(GetCurrentResourceName(), 'description')
	local versao = ''
	local update = ''

	if res ~= nil then
		local t = {}
		for i = 1, #res do
			t[i] = res:sub(i, i)
		end
		versao = t[73]..t[74]..t[75]..t[76]

		if versao == version then
			update = "Ultima Versão"
		else
			update = "^2Precisa de atualizar^1"
		end

	else
		update = "Impossivel verificar a versão"
	end

	

	print(([[^1--------------------------------------------------------------------------
	███████╗ ██████╗███╗   ███╗ ██████╗      ██████╗ ██████╗ ██████╗ ███████╗
	╚══███╔╝██╔════╝████╗ ████║██╔════╝     ██╔════╝██╔═══██╗██╔══██╗██╔════╝
	  ███╔╝ ██║     ██╔████╔██║██║  ███╗    ██║     ██║   ██║██████╔╝█████╗  
	 ███╔╝  ██║     ██║╚██╔╝██║██║   ██║    ██║     ██║   ██║██╔══██╗██╔══╝  
	███████╗╚██████╗██║ ╚═╝ ██║╚██████╔╝    ╚██████╗╚██████╔╝██║  ██║███████╗
	╚══════╝ ╚═════╝╚═╝     ╚═╝ ╚═════╝      ╚═════╝ ╚═════╝ ╚═╝  ╚═╝╚══════╝ 
	-----------------------^0https://www.github.com/zcmg/^1----------------------- 
	
	--------------------------------------------------------------------------
	-- ESX DEVELOPER PORTUGAL (^0https://discord.gg/Qt5WraEMxf^1)
	-- Versão: %s (%s)
	--------------------------------------------------------------------------^0]]):format(versao, update))

end,'GET')