classdef PIController < ZieglerNichols
    methods
        function c_pi = picontroller(obj)
            c_pi.K_p = 0.45 * obj.K_u;
            c_pi.T_i = obj.T_u / 1.2;
            c_pi.K_i = 0.54 * (obj.K_u / obj.T_u);
        end
    end
end