# September 20: Processing, review, P1 launch

## Processing practice
### Exercise 01: Three scenes with two buttons
#### Description
Build a a sketch that allows to navigate through three "screen"/"scenes" namely A, B and C.
Each scene contains two buttons that allow to reach the other two scenes.

#### Comments
- **dist** function is used to track circular buttons
- **mousePressed** function is adopted to read the click
- A solution is found as backward/forward buttons using **scene_id** ++ and --, the function of the buttons is constant (one is dedicated to go backward one is dedicated to go forward)
- An alternative solution is explained. In this case eto have buttons have different result per each scene (knowing where you are to decide where to go). The implementation consist in the adoption of a concatenated if or switch case - inside the mousepressed function - that discriminate the result of the buttons considering the scene_id in which we are.

