% First, np x nd quasi random numbers from the interval [0,1) will be generated.
% Then these numbers will be used to obtain random numbers from a standard 
% normal distribution.
function HaltonPoints = HaltonNormalized(np,nd)
  % np is number of points
  % nd is number of dimensions. Number of dimensions 
  % refers to the amount of time steps.

  HaltonPoints = zeros(np,nd);

  Primes = [2,3,5,7,11,13,17,19,29,31,39,41,43,47,53,59,61,67,71,73,79,83,89,97,101,103,107,109,113];

  for i = 1:np
      for j = 1:nd
          HaltonPoints(i,j) = stdnormal_inv(Haltonorig(Primes(j),i+1));
      end
  end
end