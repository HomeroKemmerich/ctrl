format compact
format shortG

% [markdown] 
%
% MATLAB
% 
% ======
% Teste
dcgain(G)
% # Equação do integrador
% $C(s) = K_i \cdot \dfrac{1}{s}$
% Polo na origem (em $s = 0$) é o próprio integrador.% $t_s$ do Controlador Proporcional com $K_3 = 100$
% $t_s = 4,19$ segundos
% Suponha que queremos calcularo o $t_s$ do sistema com Integrador Puro
% abaixo do dobro do $t_s$ alcançado pelo controlador proporcional
t_s_d = 2*4.19;
t_s_d
OS
% $C_I$: controlador integrador
C_I = tf(1, [1,0])
FTMA_I = C_I*G
figure; rlocus(FTMA_I)
hold on; sgrid(zeta, 0)
[K_I, polos_MF_I] = rlocfind(FTMA_I)


FTMA_I2 = C_I*G;
K_I2 = K_I*1.25;
FTMF_I2=feedback(K_I2*FTMA_I2, 1);
figure; step(FTMF_I, FTMF_I2)
legend('I (K_I=7.79)', 'I (K_I = 9.74')
save planta.mat
diary off

% O *overshoot* calculado pelo MATLAB é em relação ao valor de regime permanente atingido pela planta, não pela referência
% $\%OS$ para $K2=180$:
% $\%OS \cong 42\%$
% $\%OS$ para $K = 28$ não ocorre, pois $y(max)=0,633$
% Para tentar alcançar um $\%OS \cong 10\%$ teríamos que trabalhar com um ganho de $28 < K << 180$
% Testando o valor $K_3=100$:
K_3 = 100;
ftmf_3 = feedback(K_3*G,1);
figure; step(ftmf_3)
grid
dcgain(ftmf_3)
erro_3 = (1-dcgain(ftmf_3))/1*100
diary off
