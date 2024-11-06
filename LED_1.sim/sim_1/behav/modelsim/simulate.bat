@echo off
REM ****************************************************************************
REM Vivado (TM) v2024.1.2 (64-bit)
REM
REM Filename    : simulate.bat
REM Simulator   : Siemens ModelSim Simulator
REM Description : Script for simulating the design by launching the simulator
REM
REM Generated by Vivado on Wed Nov 06 20:35:45 +0800 2024
REM SW Build 5164865 on Thu Sep  5 14:37:11 MDT 2024
REM
REM Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
REM Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
REM
REM usage: simulate.bat
REM
REM ****************************************************************************
set bin_path=D:\\IntelModelSim\\modelsim_ase\\win32aloem
call %bin_path%/vsim   -do "do {tb_flash_led_simulate.do}" -l simulate.log
if "%errorlevel%"=="1" goto END
if "%errorlevel%"=="0" goto SUCCESS
:END
exit 1
:SUCCESS
exit 0
