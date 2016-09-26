## Jacqueline Liu
#### SID: 24666784
##### yay headings

---
---
This is a _text_ file with __lots__ of different __*formatting*__ options, just because we can. Tbh I doubt [Gaston](gastonsanchez.com) or anyone really cares to see this, so here's a photo of ducks instead! ![aren't they cute](http://i0.wp.com/theverybesttop10.com/wp-content/uploads/2015/03/Top-10-Super-Cute-Images-of-Ducklings-8.jpg)
\
Here are reasons I like ducks:
* they are absolutely adorable
* they imprint on the first moving object they see
* they taste good
  - some people are surprised about this part
  - but hey cute things can be yummy

Let's rank all the animals in order of my preferences:
1. ducks (if you didn't see that one coming, that's sad)
2. platypus
   - platypuses?
   - platypi?
3. andean bear cubs

| this  |  is  | ridiculous |
| ----- | ---- | ---------- |
| could | be | working |
| laptop | always | dying |
| a | debbie | downer |

> Sometimes life seems unbearably tragic\
> -- extra points if you guess who that's by

Here's some code that took too long to run. If you're an expert on dimensionality reduction, please help!
```
from sklearn import grid_search
from sklearn.ensemble import GradientBoostingRegressor
gbm = GradientBoostingRegressor(n_estimators=100, learning_rate=0.1, max_depth=3,
                                random_state=33, loss='ls').fit(data_train, label_train)
                                
param = {'learning_rate':[0.5, 0.25, 0.1, 0.01, 0.001], 'max_depth':[1, 2, 3, 5, 10]}
gbm = GradientBoostingRegressor()
clf = grid_search.GridSearchCV(gbm, param)
clf.fit(data_train, label_train)
```