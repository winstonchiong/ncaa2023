library(tidyverse)
library(readxl)

bracket_files <- choose.files(default = "", caption = "choose bracket files", multi = TRUE)

brackets_df <- data.frame(first4_1 = rep('', length(bracket_files)), 
                          first4_2 = rep('', length(bracket_files)), 
                          first4_3 = rep('', length(bracket_files)), 
                          first4_4 = rep('', length(bracket_files)), 
                          rdof32_1 = rep('', length(bracket_files)), 
                          rdof32_2 = rep('', length(bracket_files)), 
                          rdof32_3 = rep('', length(bracket_files)), 
                          rdof32_4 = rep('', length(bracket_files)), 
                          rdof32_5 = rep('', length(bracket_files)), 
                          rdof32_6 = rep('', length(bracket_files)), 
                          rdof32_7 = rep('', length(bracket_files)), 
                          rdof32_8 = rep('', length(bracket_files)), 
                          rdof32_9 = rep('', length(bracket_files)), 
                          rdof32_10 = rep('', length(bracket_files)), 
                          rdof32_11 = rep('', length(bracket_files)), 
                          rdof32_12 = rep('', length(bracket_files)), 
                          rdof32_13 = rep('', length(bracket_files)), 
                          rdof32_14 = rep('', length(bracket_files)),  
                          rdof32_15 = rep('', length(bracket_files)), 
                          rdof32_16 = rep('', length(bracket_files)), 
                          rdof32_17 = rep('', length(bracket_files)), 
                          rdof32_18 = rep('', length(bracket_files)), 
                          rdof32_19 = rep('', length(bracket_files)), 
                          rdof32_20 = rep('', length(bracket_files)), 
                          rdof32_21 = rep('', length(bracket_files)), 
                          rdof32_22 = rep('', length(bracket_files)), 
                          rdof32_23 = rep('', length(bracket_files)), 
                          rdof32_24 = rep('', length(bracket_files)), 
                          rdof32_25 = rep('', length(bracket_files)), 
                          rdof32_26 = rep('', length(bracket_files)), 
                          rdof32_27 = rep('', length(bracket_files)), 
                          rdof32_28 = rep('', length(bracket_files)), 
                          rdof32_29 = rep('', length(bracket_files)), 
                          rdof32_30 = rep('', length(bracket_files)), 
                          rdof32_31 = rep('', length(bracket_files)), 
                          rdof32_32 = rep('', length(bracket_files)), 
                          sweet16_1 = rep('', length(bracket_files)), 
                          sweet16_2 = rep('', length(bracket_files)), 
                          sweet16_3 = rep('', length(bracket_files)), 
                          sweet16_4 = rep('', length(bracket_files)), 
                          sweet16_5 = rep('', length(bracket_files)), 
                          sweet16_6 = rep('', length(bracket_files)), 
                          sweet16_7 = rep('', length(bracket_files)), 
                          sweet16_8 = rep('', length(bracket_files)), 
                          sweet16_9 = rep('', length(bracket_files)), 
                          sweet16_10 = rep('', length(bracket_files)), 
                          sweet16_11 = rep('', length(bracket_files)), 
                          sweet16_12 = rep('', length(bracket_files)), 
                          sweet16_13 = rep('', length(bracket_files)), 
                          sweet16_14 = rep('', length(bracket_files)), 
                          sweet16_15 = rep('', length(bracket_files)), 
                          sweet16_16 = rep('', length(bracket_files)), 
                          elite8_1 = rep('', length(bracket_files)),
                          elite8_2 = rep('', length(bracket_files)),
                          elite8_3 = rep('', length(bracket_files)),
                          elite8_4 = rep('', length(bracket_files)),
                          elite8_5 = rep('', length(bracket_files)),
                          elite8_6 = rep('', length(bracket_files)),
                          elite8_7 = rep('', length(bracket_files)),
                          elite8_8 = rep('', length(bracket_files)),
                          final4_1 = rep('', length(bracket_files)),
                          final4_2 = rep('', length(bracket_files)),
                          final4_3 = rep('', length(bracket_files)),
                          final4_4 = rep('', length(bracket_files)),
                          finals_1 = rep('', length(bracket_files)),
                          finals_2 = rep('', length(bracket_files)),
                          champion = rep('', length(bracket_files)),
                          totscore = rep(0, length(bracket_files)), 
                          row.names = str_split_fixed(str_split_fixed(bracket_files, 'bracket-', n=2)[,2], '.x', n=2)[,1])## names)

for (r in 1:length(bracket_files)) {
  exbracket <- read_excel(bracket_files[r], col_names = FALSE)
  brackets_df[r,] = c(exbracket[95,4],exbracket[95,12],exbracket[95,22], exbracket[95,32], #first4
                      exbracket[9,5], exbracket[12,5], exbracket[19,5], exbracket[22,5], #rd0f32 1-4
                      exbracket[29,5], exbracket[32,5], exbracket[39,5], exbracket[42,5], #rdof32 5-8
                      exbracket[53,5], exbracket[56,5], exbracket[63,5], exbracket[66,5], #rdof32 9-12
                      exbracket[73,5], exbracket[76,5], exbracket[83,5], exbracket[86,5], #rdof32 13-16
                      exbracket[9,32], exbracket[12,32], exbracket[19,32], exbracket[22,32], #rd0f32 17-20
                      exbracket[29,32], exbracket[32,32], exbracket[39,32], exbracket[42,32], #rd0f32 21-24
                      exbracket[53,32], exbracket[56,32], exbracket[63,32], exbracket[66,32], #rd0f32 25-28
                      exbracket[73,32], exbracket[76,32], exbracket[83,32], exbracket[86,32], #rd0f32 29-32
                      exbracket[14,8], exbracket[17,8], exbracket[34,8], exbracket[37,8], #sweet16 1-4
                      exbracket[58,8], exbracket[61,8], exbracket[78,8], exbracket[81,8], #sweet16 5-8
                      exbracket[14,27], exbracket[17,27], exbracket[34,27], exbracket[37,27], #sweet16 9-12
                      exbracket[58,27], exbracket[61,27], exbracket[78,27], exbracket[81,27], #sweet16 13-16
                      exbracket[24,10], exbracket[27,10], exbracket[68,10], exbracket[71,10], #elite8 1-4
                      exbracket[24,24], exbracket[27,24], exbracket[68,24], exbracket[71,24], #elite8 5-8
                      exbracket[46,14], exbracket[49,14], exbracket[46,21], exbracket[49,21], #final4
                      exbracket[36,17], exbracket[39,17], exbracket[23,17], exbracket[18,17]) # vector of elements from exbracket, e.g. exbracket[95,4]
}

rm(exbracket, r)

save(brackets_df, file="brackets.Rda", version=2)
# could change name of brackets.Rda to accommodate multiple markdowns in same folder, 
# which all call different versions of this file
