**FiveM Script**

![ezgif com-gif-maker](https://user-images.githubusercontent.com/88593228/194426481-2ca7ef2e-132c-44cc-b485-363bfcec64ab.gif)

Sistema de barra de progresso

Desenvolvido por: **zcmg#5307**

## Como usar

**Ficheiros client:**</br>
exports['zcmg_barra']:Iniciar(Tempo, "Texto", Tempo_ON/OFF)

**Variaveis:**</br>
**Tempo:** Tempo de exibição da barra (valor em milissegundos (ms)) </br>
**Texto:** Texto que aparece na barra de progresso</br>
**Tempo_ON/OFF:**  true/false</br>
- true</br>
- false</br>

## Exemplos


**Exemplo 1 (Só mostra a notificação depois de acabar a barra)**</br>
exports['zcmg_barra']:Iniciar(10000,'zcmg_barra 2022', true)</br>
exports['zcmg_notificacao']:Alerta("", "Notificação só aparece <span style='color:#1c77ff'>depois</span> da barra terminar!", 4500, 'informacao')</br>

**Exemplo 2 (Mostra a notificação logo de seguida da barra)**</br>
exports['zcmg_barra']:Iniciar(10000,'zcmg_barra 2022', false)</br>
exports['zcmg_notificacao']:Alerta("", "Notificação aparece logo de seguida!", 4500, 'informacao')

