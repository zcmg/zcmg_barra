local uso = false
function Iniciar(time, text, tempo) 
	if not uso then
		uso = true
		SendNUIMessage({
			type = "ui",
			display = true,
			time = time,
			text = text
		})
		if tempo then
			Wait(time)
		end
		uso = false
	end
end

RegisterCommand('barra', function()
	exports['zcmg_barra']:Iniciar(10000,'zcmg_barra 2022', true)
	exports['zcmg_notificacao']:Alerta("", "Notificação só aparece <span style='color:#1c77ff'>depois</span> da barra terminar!", 4500, 'informacao')
end)

RegisterCommand('barra2', function()
	exports['zcmg_barra']:Iniciar(10000,'zcmg_barra 2022', false)
	exports['zcmg_notificacao']:Alerta("", "Notificação aparece logo de seguida!", 4500, 'informacao')
end)