M = [1  2  3  4;
    -1 -2 -3 -4;
     1  2  3  4;
    -1 -2 -3 -4];

%% a) Reflect array (M) left-side right
M_leftSideRight = M;
M_leftSideRight(:, 1:end) = M_leftSideRight(:, end:-1:1);

%% b) Reflect array (M) upside down
M_upsideDown = M;
M_upsideDown(1:end, :) = M_upsideDown(end:-1:1, :);

%% c) Swap columns 2 and 3 of array (M)
M_swap2And3Cols = M;
temp = M_swap2And3Cols(:, 2);
M_swap2And3Cols(:, 2) = M_swap2And3Cols(:, 3);
M_swap2And3Cols(:, 3) = temp;

%% d) Swap rows 1 and 4 of array (M)
M_swap1And4Rows = M;
temp = M_swap1And4Rows(1, :);
M_swap1And4Rows(1, :) = M_swap1And4Rows(4, :);
M_swap1And4Rows(4, :) = temp;

%% e) Shuffle the rows of (M) from [1 2 3 4] to [1 3 4 2] and shuffle the columns of (M) from [1 2 3 4] to [3 2 4 1]
M_shuffled = M;
% Shuffle columns
temp = M_shuffled(2, :);
M_shuffled([2 3], :) = M_shuffled([3 4], :);
M_shuffled(4, :) = temp;
% Shuffle rows
temp = M_shuffled(:, [2 3]);
M_shuffled(:, [3 4]) = M_shuffled(:, [4 1]);
M_shuffled(:, [2 1]) = temp;