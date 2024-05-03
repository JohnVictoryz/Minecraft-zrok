@echo off
IF NOT EXIST enabled.txt (
	zrok.exe invite
	echo Please Sign Up using the link in the email then press enter
	pause
	echo Type the random letters after the zrok enable part on the page after sign up
	set /p "id=Enter id: "
	zrok enable %id%
	echo yes > enabled.txt
) ELSE (
	break
)