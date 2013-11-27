let g:airline#themes#iijo#palette = {}

function! airline#themes#iijo#refresh()
  let g:airline#themes#iijo#palette.accents = {
        \ 'red': ['', '', 162, 236],
        \ }

  let s:Nmod = ['', '', 245, 234]
  let s:N1   = ['', '', 236, 250, 'bold']
  let s:N2   = ['', '', 250, 240]
  let s:N3   = ['', '', 245, 236]

  let g:airline#themes#iijo#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
  let g:airline#themes#iijo#palette.normal_modified = {
        \ 'airline_c': s:Nmod
        \ }

  let s:I1 = ['', '', 17, 250, 'bold']
  let s:I1 = ['', '', 160, 250, 'bold']
  let s:I1 = s:N1
  let s:I2 = s:N2
  let s:I3 = s:N3
  let g:airline#themes#iijo#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
  let g:airline#themes#iijo#palette.insert_modified = g:airline#themes#iijo#palette.normal_modified

  let s:R1 = s:N1
  let s:R2 = s:N2
  let s:R3 = s:N3
  let g:airline#themes#iijo#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)
  let g:airline#themes#iijo#palette.replace_modified = g:airline#themes#iijo#palette.normal_modified

  let s:V1 = s:N1
  let s:V2 = s:N2
  let s:V3 = s:N3
  let g:airline#themes#iijo#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
  let g:airline#themes#iijo#palette.visual_modified = g:airline#themes#iijo#palette.normal_modified

  let s:IA = s:Nmod
  let g:airline#themes#iijo#palette.inactive = airline#themes#generate_color_map(s:IA, s:IA, s:IA)
  let g:airline#themes#iijo#palette.inactive_modified = {
        \ 'airline_c': s:Nmod
        \ }
endfunction

call airline#themes#iijo#refresh()

