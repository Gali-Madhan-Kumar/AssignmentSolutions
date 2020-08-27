#! /bin/bash -x
oneFeet=12
convertToFeet=$((42 / oneFeet))
echo "Fourty Two inches = " $convertToFeet "Feet"
rectangularPlot=$((60*40))
inAcres=$((25 * rectangularPlot / 43560))
echo "$rectangularPlot squarefeet"
echo "$inAcres acres"
