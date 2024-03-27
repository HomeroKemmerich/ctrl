# Exame

## Sumário

- [Controlador Proporcional](#controlador-proporcional)
- [Controlador 1](#controlador-1)
- [Controlador 2](#controlador-2)
- [Arquivos](#arquivos)
- [Aluno](#aluno)

$G(s) = \frac{320K}{(s+2)(s+8)(s+20)}$

## Controlador Proporcional

![rlocus(C_P)](Exame/rlocus(C_P).png)

![step(C_P)](Exame/step(C_P).png)

| Parâmetro | Valor |
| :-: | :-: |
| $OS(\%)$ | 5 |
| $t_s(s)$ | 1.05 |
| $t_p(s)$ | 0.5 |
| $Max\{y(x)\}$ | 0.61 |
| $y(\infty)$ | 0.59 |
| $e(\infty)(\%)$ | 41.49 |

## Controlador 1

Foi selecionado um controlador do tipo Proporcional Integrativo, pois ele elimina o erro em regime permanente.

### Controlador Integral

![rlocus(ftma_I)](Exame/C1/rlocus(ftma_I).png)

![step(ftmf_I)](Exame/C1/step(ftmf_I).png)

| Parâmetro | Valor |
| :-: | :-: |
| $OS(\%)$ | 5.14 |
| $t_s(s)$ | 5.12 |
| $t_p(s)$ | 1.05 |
| $Max\{y(x)\}$ | 1.05 |
| $y(\infty)$ | 1 |
| $e(\infty)(\%)$ | 0 |

### Controlador Proporcional Integral

![rlocus(ftma_PI)](Exame/C1/rlocus(ftma_PI).png)

![step(ftmf_PI)](Exame/C1/step(ftmf_PI).png)

| Parâmetro | Valor |
| :-: | :-: |
| $OS(\%)$ | 0 |
| $t_s(s)$ | 8.26 |
| $t_p(s)$ | 16.18 |
| $Max\{y(x)\}$ | 1.00 |
| $y(\infty)$ | 1 |
| $e(\infty)(\%)$ | 0 |

Com o controlador integral foi possível zerar o erro, no entanto o tempo de resposta ficou muito elevado, talvez sendo recomendado utilizar o Controlador Lead para reajustar e obter novos resultados.

## Controlador 2

Foi selecionado um controlador do tipo Proporcional Derivativo devido ao seu tempo de resposta.

### Controlador Derivativo

![rlocus(ftma_D)](Exame/C2/rlocus(ftma_D).png)

![step(ftmf_D)](Exame/C2/step(ftmf_D).png)

### Controlador Proporcional Derivativo

![rlocus(ftma_PD)](Exame/C2/rlocus(ftma_PD).png)

![step(ftmf_PD)](Exame/C2/step(ftmf_PD).png)

| Parâmetro | Valor |
| :-: | :-: |
| $OS(\%)$ | 61.81 |
| $t_s(s)$ | 3.07 |
| $t_p(s)$ | 0.19 |
| $Max\{y(x)\}$ | 0.57 |
| $y(\infty)$ | 0.35 |
| $e(\infty)(\%)$ | 64.52 |

A resposta do controlador derivativo ficou muito abaixo do esperado, além de obter um tempo de resposta muito mais elevado do que o requisitado.

## Arquivos

- [commands.txt](Exame/commands.txt)
- [commands2.txt](Exame/commands2.txt)
- [commands3.txt](Exame/commands3.txt)

## Aluno

Nome: Homero Menezes Vargas Kemmerich

Matrícula: 146676