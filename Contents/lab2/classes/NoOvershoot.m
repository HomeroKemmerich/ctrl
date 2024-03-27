classdef NoOvershoot < ZieglerNichols
    methods
        function noos_pid = noos(obj)
            noos_pid.K_p = (1/5) * obj.K_u;
            noos_pid.K_i = (2/5) * (obj.K_u / obj.T_u);
            noos_pid.K_d = (2/30) * (obj.K_u * obj.T_u);
            noos_pid.T_i = (0.5) * obj.T_u;
            noos_pid.T_d = (1/3) * obj.T_u;
        end
    end
end