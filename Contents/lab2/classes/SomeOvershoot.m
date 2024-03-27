classdef SomeOvershoot < ZieglerNichols
    methods
        function smos_pid = smos(obj)
            smos_pid.K_p = (1/3) * obj.K_u;
            smos_pid.K_i = (2/3) * (obj.K_u / obj.T_u);
            smos_pid.K_d = (1/9) * (obj.K_u * obj.T_u);
            smos_pid.T_i = (0.5) * obj.T_u;
            smos_pid.T_d = (1/3) * obj.T_u;
        end
    end
end