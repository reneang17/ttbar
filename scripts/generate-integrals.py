#!/usr/bin/env python3

import string

#-----------------------------------------------------------------------------
indices = range(-1,3)
#indices = range(-2,3)
for i in indices:
  for j in indices:
    for k in indices:
      for l in indices:
        for m in indices:
          for n in indices:
            if m <= 0 or n <= 0: continue
            if k == 0 and l == 0: continue
            if abs(i)+abs(j)+abs(k)+abs(l)+abs(m)+abs(n) != 4: continue
            pmstr = "[{0},{1},{2},{3},{4},{5}]".format(i, j, k, l, m, n)
            print(pmstr)
