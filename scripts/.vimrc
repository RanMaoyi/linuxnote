set nu

call plug#begin()

Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }

" Initialize plugin system
call plug#end()


let g:Lf_WindowPosition = 'popup'

noremap <leader>fl :<C-U><C-R>=printf("Leaderf line %s", "")<CR><CR>

noremap <C-F> :<C-U><C-R>=printf("Leaderf! rg -e %s ", expand("<cword>"))<CR>

noremap <leader>fu :<C-U><C-R>=printf("Leaderf gtags --update")<CR><CR>
noremap <leader>fr :<C-U><C-R>=printf("Leaderf! gtags -r %s --auto-jump", expand("<cword>"))<CR><CR>
noremap <leader>fd :<C-U><C-R>=printf("Leaderf! gtags -d %s --auto-jump", expand("<cword>"))<CR><CR>
