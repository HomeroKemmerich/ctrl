---
date: 2024-04-16
title: Aula 24/04/16
---
# Método $K_u$

## Objetivos

O objetivo desta aula é aplicar o método do ganho crítico $K_u$ para determinar os ganhos de um controlador PID.

## Materiais

- Kit de controle Feedback MS150
- Osciloscópio digital

## Montagem

- Realizar a montagem do kit conforme a [figura 1](./attachments/montagem.pdf)

## Procedimento

1. Com as chaves dos componentes integral e derivativo desligadas, ajustar o ganho proporcional para que o sistema oscile. Este será o ganho crítico $K_u$.

    ![Sistema em oscilação]

2. Utilizando os cursores do osciloscópio, medir o período de oscilação $T_u$.

    ![Identificação de parâmetros]

3. Calcular os parâmetros do PID no formato ISA, de acordo com a [tabela de Ziegler-Nichols](../ziegler_nichols.md)

    ![Cálculo de parâmetros]

4. Ajustar o controlador PID conforme os parâmetros calculados. Ligue os componentes integral e derivativo.

## Resultados

- Anotar os valores de $K_p$, $T_i$ e $T_d$ ajustados no controlador PID.

[Montagem sem PID]: ./attachments/TEK0000.JPG
[Sistema em oscilação]: ./attachments/TEK0001.JPG
[Identificação de parâmetros]: ./attachments/TEK0002.JPG
[Cálculo de parâmetros]: ./attachments/calculos.png