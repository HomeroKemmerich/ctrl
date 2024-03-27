classdef PDController < ZieglerNichols
    methods
        function c_pd = pdcontroller(obj)
            c_pd.K_p = 0.800 * obj.K_u;
            c_pd.K_d = 0.100 * obj.T_u;
            c_pd.T_d = 0.125 * obj.T_u;
        end
    end
end