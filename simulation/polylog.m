function [Li] = polylog(s,z)
Li = 0;
err = 1;
i = 1;
while(err > 1e-10)
	Li = Li + (z^i)/(i^s);
	if (i>1)
		err = Li - LiPrev;
    end
	LiPrev = Li;
	i = i + 1;
end