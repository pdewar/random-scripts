
      function r = ur(t)

      %  ur.m - generates the unit ramp function r(t)
      %
      %  Gordon E. Carlson  University of Missouri-Rolla

         r = 0.*(t<0) + t.*(t>=0);
