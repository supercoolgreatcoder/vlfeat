% QUICKSHIFT Quick shift image segmentation
%   Quick shift is a mode seeking algorithm which links each pixel to
%   its nearest neighbor which has an increase in the estimate of the
%   density. These links form a tree, where the root of the tree is
%   the pixel which correspond to the highest mode in the image.
%
%   [MAP,GAPS] = QUICKSHIFT(I, SIGMA, TAU) computes quick shift on the
%   image I. SIGMA is the bandwidth of the Parzen window estimator of
%   the density. Since searching over all pixels for the nearest
%   neighbor which increases the density would be prohibitively
%   expensive, TAU controls the maximum L2 distance between neighbors
%   that should be linked. MAP and GAP represent the resulting forest
%   of trees. They are array of the same size of I.  Each element
%   (pixel) of MAP is and index to the parent elemen in the forest and
%   GAP contains the corresponding branch length. Pixels which are at
%   the root of their respective tree have MAP(x) = x and GAPS(x) =
%   inf.
%
%   [MAP,GAPS,E] = QUICKSHIFT(I, SIGMA, TAU) also returns the estimate
%   of the density E.
%   
%   [MAP,GAPS] = QUICKSHIFT(I, SIGMA) uses a default TAU of 3 * SIGMA.
%
%   Notes:
%     The distance between pixels is always measured in image
%     coordinates (not normalized), so the importance of the color
%     component should be weighted accordingly before calling this
%     function.
%
%   Options:
% 
%   Verbose::
%     Toggles verbose output.
%
%   Medoid::
%     Run medoid shift instead of quick shift.

% AUTORIGHTS
