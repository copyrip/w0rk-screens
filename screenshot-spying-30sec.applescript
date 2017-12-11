set dFolder to "~/Desktop/screencapture-work/"

do shell script ("mkdir -p " & dFolder)

set i to 0
repeat 960 times
	set theDate to do shell script " date +%Y%m%d"
	set theTime to do shell script "date +%T"
	do shell script ("screencapture " & dFolder & theDate & "-" & theTime & "-" & i & ".png")
	delay 30 -- Wait for 30 seconds.
	set i to i + 1
end repeat