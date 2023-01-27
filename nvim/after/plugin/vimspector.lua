-- Vimspector
vim.cmd([[
nmap <F9> <cmd>call vimspector#Launch()<cr>
nmap <F5> <cmd>call vimspector#StepOver()<cr>
nmap <F8> <cmd>call vimspector#Reset()<cr>
nmap <F11> <cmd>call vimspector#StepOver()<cr>")
nmap <F12> <cmd>call vimspector#StepOut()<cr>")
nmap <F10> <cmd>call vimspector#StepInto()<cr>")
nmap <F2> <cmd>call vimspector#ToggleBreakpoint()<cr>")
nmap <F3> <cmd>call vimspector#AddWatch()<cr>")
nmap <F4> <cmd>call vimspector#Evaluate()<cr>")
]])
