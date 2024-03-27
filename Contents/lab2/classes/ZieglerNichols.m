classdef ZieglerNichols
    properties
        K_u
        T_u
        K_p
        T_i
        T_d
    end
    methods
        function zn = zn(K_u, T_u)
            zn.K_u = K_u;
            zn.T_u = T_u;
        end
        pcontroller(obj)
        picontroller(obj)
        pdcontroller(obj)
        pidcontroller(obj)
        pessencontroller(obj)
        smovershoot(obj)
        noovershoot(obj)
    end
end