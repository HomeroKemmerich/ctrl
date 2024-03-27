classdef PIDController < ZieglerNichols
    methods
        function c_pid = pidcontroller(obj)
            c_pid.K_p = 0.6 * obj.K_u;
            c_pid.K_i = 1.2 * (obj.K_u / obj.T_u);
            c_pid.K_d = 0.075 * (obj.K_u * obj.T_u);
            c_pid.T_i = obj.T_u / 2;
            c_pid.T_d = obj.T_u / 8;
        end
    end
end