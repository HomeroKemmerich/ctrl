classdef PessenRule < ZieglerNichols
    methods
        function prule = prule(obj)
            prule.K_p = 0.700 * obj.K_u;
            prule.K_i = 1.750 * (obj.K_u / obj.T_u);
            prule.K_d = 0.105 * (obj.K_u * obj.T_u);
            prule.T_i = 0.400 * obj.T_u;
            prule.T_d = 0.150 * obj.T_u;
        end
    end
end
