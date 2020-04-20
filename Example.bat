@echo off

cls
Title Example CmdCursor


Echo Hover over the demo window..

START "demo"

CmdCursor.dll /t "demo" /cur "AeroGlow.ani"
pause