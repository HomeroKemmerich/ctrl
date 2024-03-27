classdef ProportionalController < Controller
    methods
        function c_p = pcontroller(obj)
            c_p.K_p = 0.5 * obj.K_u;
        end
    end
end