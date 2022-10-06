**FiveM Script**

<img src="https://media.discordapp.net/attachments/859508698879885312/1027692849652842496/ezgif.com-gif-maker.gif" />

<img src="https://cdn.discordapp.com/attachments/859508698879885312/954192451642470430/ezgif-5-4b862f5a4c.gif" />

Sistema de barra de progresso

Desenvolvido por: **zcmg#5307**

## Como usar

**Ficheiros client:**</br>
exports['zcmg_barra']:Iniciar(Tempo, "Texto", Tempo_ON/OFF)

**Variaveis:**</br>
Tempo: Tempo de exibição da barra (valor em milissegundos (ms)) </br>
Texto: Texto que aparece na barra de progresso</br>
Tempo_ON/OFF:  true/false</br>
- true</br>
- false</br>

## Exemplos


**Exemplo 1 (Só mostra a notificação depois de acabar a barra)**</br>
exports['zcmg_barra']:Iniciar(10000,'zcmg_barra 2022', true)</br>
exports['zcmg_notificacao']:Alerta("", "Notificação só aparece <span style='color:#1c77ff'>depois</span> da barra terminar!", 4500, 'informacao')</br>

**Exemplo 2 (Mostra a notificação logo de seguida da barra)**</br>
exports['zcmg_barra']:Iniciar(10000,'zcmg_barra 2022', false)</br>
exports['zcmg_notificacao']:Alerta("", "Notificação aparece logo de seguida!", 4500, 'informacao')

