Quadratic ease in and ease out.

| q |
q := AltTweenQuadratic new.
1 to: 100 do: [:t | (q easeInAt: t duration: 100 change: 100 from: 0) logCr ]

| q |
q := AltTweenQuadratic new.
1 to: 100 do: [:t | (q easeOutAt: t duration: 100 change: 100 from: 0) logCr ]

| q |
q := AltTweenQuadratic new.
1 to: 100 do: [:t | (q easeInOutAt: t duration: 100 change: 100 from: 0) logCr ]

