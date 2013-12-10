layerdiag start width = start * 4 + (width-1) * 6

spiral totwidth = spiral' 1 3 3 totwidth
spiral' sum start width totwidth
  | totwidth >= width = spiral' (sum + (layerdiag start width)) (start + width*4 - 2) (width + 2) totwidth
  | otherwise = sum