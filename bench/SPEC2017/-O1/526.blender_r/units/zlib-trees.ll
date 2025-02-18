; ModuleID = 'zlib/trees.c'
source_filename = "zlib/trees.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.static_tree_desc_s = type { ptr, ptr, i32, i32, i32 }
%struct.ct_data_s = type { %union.anon, %union.anon.0 }
%union.anon = type { i16 }
%union.anon.0 = type { i16 }
%struct.internal_state = type { ptr, i32, ptr, i64, ptr, i32, i32, ptr, i32, i8, i32, i32, i32, i32, ptr, i64, ptr, ptr, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [573 x %struct.ct_data_s], [61 x %struct.ct_data_s], [39 x %struct.ct_data_s], %struct.tree_desc_s, %struct.tree_desc_s, %struct.tree_desc_s, [16 x i16], [573 x i32], i32, i32, [573 x i8], ptr, i32, i32, ptr, i64, i64, i32, i32, i16, i32, i64 }
%struct.tree_desc_s = type { ptr, i32, ptr }
%struct.z_stream_s = type { ptr, i32, i64, ptr, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i64, i64 }

@_dist_code = hidden local_unnamed_addr constant [512 x i8] c"\00\01\02\03\04\04\05\05\06\06\06\06\07\07\07\07\08\08\08\08\08\08\08\08\09\09\09\09\09\09\09\09\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\00\00\10\11\12\12\13\13\14\14\14\14\15\15\15\15\16\16\16\16\16\16\16\16\17\17\17\17\17\17\17\17\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D", align 16
@_length_code = hidden local_unnamed_addr constant [256 x i8] c"\00\01\02\03\04\05\06\07\08\08\09\09\0A\0A\0B\0B\0C\0C\0C\0C\0D\0D\0D\0D\0E\0E\0E\0E\0F\0F\0F\0F\10\10\10\10\10\10\10\10\11\11\11\11\11\11\11\11\12\12\12\12\12\12\12\12\13\13\13\13\13\13\13\13\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1C", align 16
@static_l_desc = internal global %struct.static_tree_desc_s { ptr @static_ltree, ptr @extra_lbits, i32 257, i32 286, i32 15 }, align 8
@static_d_desc = internal global %struct.static_tree_desc_s { ptr @static_dtree, ptr @extra_dbits, i32 0, i32 30, i32 15 }, align 8
@static_bl_desc = internal global %struct.static_tree_desc_s { ptr null, ptr @extra_blbits, i32 0, i32 19, i32 7 }, align 8
@static_ltree = internal constant [288 x %struct.ct_data_s] [%struct.ct_data_s { %union.anon { i16 12 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 140 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 76 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 204 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 44 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 172 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 108 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 236 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 28 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 156 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 92 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 220 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 60 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 188 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 124 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 252 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 2 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 130 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 66 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 194 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 34 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 162 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 98 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 226 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 18 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 146 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 82 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 210 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 50 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 178 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 114 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 242 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 10 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 138 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 74 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 202 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 42 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 170 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 106 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 234 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 26 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 154 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 90 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 218 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 58 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 186 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 122 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 250 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 6 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 134 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 70 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 198 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 38 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 166 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 102 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 230 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 22 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 150 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 86 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 214 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 54 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 182 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 118 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 246 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 14 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 142 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 78 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 206 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 46 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 174 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 110 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 238 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 30 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 158 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 94 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 222 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 62 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 190 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 126 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 254 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 1 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 129 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 65 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 193 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 33 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 161 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 97 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 225 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 17 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 145 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 81 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 209 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 49 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 177 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 113 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 241 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 9 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 137 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 73 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 201 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 41 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 169 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 105 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 233 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 25 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 153 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 89 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 217 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 57 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 185 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 121 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 249 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 5 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 133 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 69 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 197 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 37 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 165 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 101 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 229 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 21 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 149 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 85 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 213 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 53 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 181 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 117 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 245 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 13 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 141 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 77 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 205 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 45 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 173 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 109 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 237 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 29 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 157 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 93 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 221 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 61 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 189 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 125 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 253 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 19 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 275 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 147 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 403 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 83 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 339 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 211 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 467 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 51 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 307 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 179 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 435 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 115 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 371 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 243 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 499 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 11 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 267 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 139 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 395 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 75 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 331 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 203 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 459 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 43 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 299 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 171 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 427 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 107 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 363 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 235 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 491 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 27 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 283 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 155 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 411 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 91 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 347 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 219 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 475 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 59 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 315 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 187 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 443 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 123 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 379 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 251 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 507 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 7 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 263 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 135 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 391 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 71 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 327 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 199 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 455 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 39 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 295 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 167 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 423 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 103 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 359 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 231 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 487 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 23 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 279 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 151 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 407 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 87 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 343 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 215 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 471 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 55 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 311 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 183 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 439 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 119 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 375 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 247 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 503 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 15 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 271 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 143 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 399 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 79 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 335 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 207 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 463 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 47 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 303 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 175 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 431 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 111 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 367 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 239 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 495 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 31 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 287 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 159 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 415 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 95 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 351 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 223 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 479 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 63 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 319 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 191 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 447 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 127 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 383 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 255 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 511 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon zeroinitializer, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 64 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 32 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 96 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 16 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 80 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 48 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 112 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 8 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 72 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 40 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 104 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 24 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 88 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 56 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 120 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 4 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 68 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 36 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 100 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 20 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 84 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 52 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 116 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 3 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 131 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 67 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 195 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 35 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 163 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 99 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 227 }, %union.anon.0 { i16 8 } }], align 16
@static_dtree = internal constant [30 x %struct.ct_data_s] [%struct.ct_data_s { %union.anon zeroinitializer, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 16 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 8 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 24 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 4 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 20 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 12 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 28 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 2 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 18 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 10 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 26 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 6 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 22 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 14 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 30 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 1 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 17 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 9 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 25 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 5 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 21 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 13 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 29 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 3 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 19 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 11 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 27 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 7 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 23 }, %union.anon.0 { i16 5 } }], align 16
@extra_lbits = internal constant [29 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 3, i32 4, i32 4, i32 4, i32 4, i32 5, i32 5, i32 5, i32 5, i32 0], align 16
@extra_dbits = internal constant [30 x i32] [i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7, i32 8, i32 8, i32 9, i32 9, i32 10, i32 10, i32 11, i32 11, i32 12, i32 12, i32 13, i32 13], align 16
@extra_blbits = internal constant [19 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, i32 3, i32 7], align 16
@bl_order = internal unnamed_addr constant [19 x i8] c"\10\11\12\00\08\07\09\06\0A\05\0B\04\0C\03\0D\02\0E\01\0F", align 16
@base_length = internal unnamed_addr constant [29 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 10, i32 12, i32 14, i32 16, i32 20, i32 24, i32 28, i32 32, i32 40, i32 48, i32 56, i32 64, i32 80, i32 96, i32 112, i32 128, i32 160, i32 192, i32 224, i32 0], align 16
@base_dist = internal unnamed_addr constant [30 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 6, i32 8, i32 12, i32 16, i32 24, i32 32, i32 48, i32 64, i32 96, i32 128, i32 192, i32 256, i32 384, i32 512, i32 768, i32 1024, i32 1536, i32 2048, i32 3072, i32 4096, i32 6144, i32 8192, i32 12288, i32 16384, i32 24576], align 16

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define hidden void @_tr_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37
  %3 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 40
  store ptr %2, ptr %3, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 40, i32 2
  store ptr @static_l_desc, ptr %4, align 8, !tbaa !43
  %5 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38
  %6 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 41
  store ptr %5, ptr %6, align 8, !tbaa !44
  %7 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 41, i32 2
  store ptr @static_d_desc, ptr %7, align 8, !tbaa !45
  %8 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39
  %9 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 42
  store ptr %8, ptr %9, align 8, !tbaa !46
  %10 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 42, i32 2
  store ptr @static_bl_desc, ptr %10, align 8, !tbaa !47
  %11 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  store i16 0, ptr %11, align 8, !tbaa !48
  %12 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 57
  store i32 0, ptr %12, align 4, !tbaa !49
  br label %13

13:                                               ; preds = %1, %13
  %14 = phi i64 [ 0, %1 ], [ %16, %13 ]
  %15 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 %14
  store i16 0, ptr %15, align 4, !tbaa !50
  %16 = add nuw nsw i64 %14, 1
  %17 = icmp eq i64 %16, 286
  br i1 %17, label %18, label %13, !llvm.loop !51

18:                                               ; preds = %13, %18
  %19 = phi i64 [ %21, %18 ], [ 0, %13 ]
  %20 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38, i64 %19
  store i16 0, ptr %20, align 4, !tbaa !50
  %21 = add nuw nsw i64 %19, 1
  %22 = icmp eq i64 %21, 30
  br i1 %22, label %23, label %18, !llvm.loop !54

23:                                               ; preds = %18, %23
  %24 = phi i64 [ %26, %23 ], [ 0, %18 ]
  %25 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 %24
  store i16 0, ptr %25, align 4, !tbaa !50
  %26 = add nuw nsw i64 %24, 1
  %27 = icmp eq i64 %26, 19
  br i1 %27, label %28, label %23, !llvm.loop !55

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 256
  store i16 1, ptr %29, align 4, !tbaa !50
  %30 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 52
  %31 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 50
  store i32 0, ptr %31, align 4, !tbaa !56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %30, i8 0, i64 20, i1 false)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define hidden void @_tr_stored_block(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
  %5 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 57
  %6 = load i32, ptr %5, align 4, !tbaa !49
  %7 = icmp sgt i32 %6, 13
  br i1 %7, label %8, label %36

8:                                                ; preds = %4
  %9 = and i32 %3, 65535
  %10 = shl i32 %3, %6
  %11 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %12 = load i16, ptr %11, align 8, !tbaa !48
  %13 = trunc i32 %10 to i16
  %14 = or i16 %12, %13
  store i16 %14, ptr %11, align 8, !tbaa !48
  %15 = trunc i16 %14 to i8
  %16 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !57
  %18 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 5
  %19 = load i32, ptr %18, align 8, !tbaa !58
  %20 = add i32 %19, 1
  store i32 %20, ptr %18, align 8, !tbaa !58
  %21 = zext i32 %19 to i64
  %22 = getelementptr inbounds i8, ptr %17, i64 %21
  store i8 %15, ptr %22, align 1, !tbaa !50
  %23 = load i16, ptr %11, align 8, !tbaa !48
  %24 = lshr i16 %23, 8
  %25 = trunc i16 %24 to i8
  %26 = load ptr, ptr %16, align 8, !tbaa !57
  %27 = load i32, ptr %18, align 8, !tbaa !58
  %28 = add i32 %27, 1
  store i32 %28, ptr %18, align 8, !tbaa !58
  %29 = zext i32 %27 to i64
  %30 = getelementptr inbounds i8, ptr %26, i64 %29
  store i8 %25, ptr %30, align 1, !tbaa !50
  %31 = load i32, ptr %5, align 4, !tbaa !49
  %32 = sub nsw i32 16, %31
  %33 = lshr i32 %9, %32
  %34 = trunc i32 %33 to i16
  store i16 %34, ptr %11, align 8, !tbaa !48
  %35 = add nsw i32 %31, -13
  br label %43

36:                                               ; preds = %4
  %37 = shl i32 %3, %6
  %38 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %39 = load i16, ptr %38, align 8, !tbaa !48
  %40 = trunc i32 %37 to i16
  %41 = or i16 %39, %40
  store i16 %41, ptr %38, align 8, !tbaa !48
  %42 = add nsw i32 %6, 3
  br label %43

43:                                               ; preds = %36, %8
  %44 = phi i32 [ %42, %36 ], [ %35, %8 ]
  store i32 %44, ptr %5, align 4, !tbaa !49
  %45 = trunc i64 %2 to i32
  %46 = icmp sgt i32 %44, 8
  br i1 %46, label %47, label %60

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %49 = load i16, ptr %48, align 8, !tbaa !48
  %50 = trunc i16 %49 to i8
  %51 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !57
  %53 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 5
  %54 = load i32, ptr %53, align 8, !tbaa !58
  %55 = add i32 %54, 1
  store i32 %55, ptr %53, align 8, !tbaa !58
  %56 = zext i32 %54 to i64
  %57 = getelementptr inbounds i8, ptr %52, i64 %56
  store i8 %50, ptr %57, align 1, !tbaa !50
  %58 = load i16, ptr %48, align 8, !tbaa !48
  %59 = lshr i16 %58, 8
  br label %67

60:                                               ; preds = %43
  %61 = icmp sgt i32 %44, 0
  br i1 %61, label %62, label %77

62:                                               ; preds = %60
  %63 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %64 = load i16, ptr %63, align 8, !tbaa !48
  %65 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %66 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 5
  br label %67

67:                                               ; preds = %62, %47
  %68 = phi ptr [ %66, %62 ], [ %53, %47 ]
  %69 = phi ptr [ %65, %62 ], [ %51, %47 ]
  %70 = phi i16 [ %64, %62 ], [ %59, %47 ]
  %71 = trunc i16 %70 to i8
  %72 = load ptr, ptr %69, align 8, !tbaa !57
  %73 = load i32, ptr %68, align 8, !tbaa !58
  %74 = add i32 %73, 1
  store i32 %74, ptr %68, align 8, !tbaa !58
  %75 = zext i32 %73 to i64
  %76 = getelementptr inbounds i8, ptr %72, i64 %75
  store i8 %71, ptr %76, align 1, !tbaa !50
  br label %77

77:                                               ; preds = %67, %60
  %78 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  store i16 0, ptr %78, align 8, !tbaa !48
  store i32 0, ptr %5, align 4, !tbaa !49
  %79 = trunc i64 %2 to i8
  %80 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %81 = load ptr, ptr %80, align 8, !tbaa !57
  %82 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 5
  %83 = load i32, ptr %82, align 8, !tbaa !58
  %84 = add i32 %83, 1
  store i32 %84, ptr %82, align 8, !tbaa !58
  %85 = zext i32 %83 to i64
  %86 = getelementptr inbounds i8, ptr %81, i64 %85
  store i8 %79, ptr %86, align 1, !tbaa !50
  %87 = lshr i64 %2, 8
  %88 = trunc i64 %87 to i8
  %89 = load ptr, ptr %80, align 8, !tbaa !57
  %90 = load i32, ptr %82, align 8, !tbaa !58
  %91 = add i32 %90, 1
  store i32 %91, ptr %82, align 8, !tbaa !58
  %92 = zext i32 %90 to i64
  %93 = getelementptr inbounds i8, ptr %89, i64 %92
  store i8 %88, ptr %93, align 1, !tbaa !50
  %94 = and i32 %45, 65535
  %95 = xor i32 %94, 65535
  %96 = trunc i32 %95 to i8
  %97 = load ptr, ptr %80, align 8, !tbaa !57
  %98 = load i32, ptr %82, align 8, !tbaa !58
  %99 = add i32 %98, 1
  store i32 %99, ptr %82, align 8, !tbaa !58
  %100 = zext i32 %98 to i64
  %101 = getelementptr inbounds i8, ptr %97, i64 %100
  store i8 %96, ptr %101, align 1, !tbaa !50
  %102 = lshr i32 %95, 8
  %103 = trunc i32 %102 to i8
  %104 = load ptr, ptr %80, align 8, !tbaa !57
  %105 = load i32, ptr %82, align 8, !tbaa !58
  %106 = add i32 %105, 1
  store i32 %106, ptr %82, align 8, !tbaa !58
  %107 = zext i32 %105 to i64
  %108 = getelementptr inbounds i8, ptr %104, i64 %107
  store i8 %103, ptr %108, align 1, !tbaa !50
  %109 = icmp eq i32 %45, 0
  br i1 %109, label %122, label %110

110:                                              ; preds = %77, %110
  %111 = phi ptr [ %114, %110 ], [ %1, %77 ]
  %112 = phi i32 [ %113, %110 ], [ %45, %77 ]
  %113 = add i32 %112, -1
  %114 = getelementptr inbounds i8, ptr %111, i64 1
  %115 = load i8, ptr %111, align 1, !tbaa !50
  %116 = load ptr, ptr %80, align 8, !tbaa !57
  %117 = load i32, ptr %82, align 8, !tbaa !58
  %118 = add i32 %117, 1
  store i32 %118, ptr %82, align 8, !tbaa !58
  %119 = zext i32 %117 to i64
  %120 = getelementptr inbounds i8, ptr %116, i64 %119
  store i8 %115, ptr %120, align 1, !tbaa !50
  %121 = icmp eq i32 %113, 0
  br i1 %121, label %122, label %110, !llvm.loop !59

122:                                              ; preds = %110, %77
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define hidden void @_tr_flush_bits(ptr nocapture noundef %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 57
  %3 = load i32, ptr %2, align 4, !tbaa !49
  %4 = icmp eq i32 %3, 16
  br i1 %4, label %5, label %24

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %7 = load i16, ptr %6, align 8, !tbaa !48
  %8 = trunc i16 %7 to i8
  %9 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !57
  %11 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 5
  %12 = load i32, ptr %11, align 8, !tbaa !58
  %13 = add i32 %12, 1
  store i32 %13, ptr %11, align 8, !tbaa !58
  %14 = zext i32 %12 to i64
  %15 = getelementptr inbounds i8, ptr %10, i64 %14
  store i8 %8, ptr %15, align 1, !tbaa !50
  %16 = load i16, ptr %6, align 8, !tbaa !48
  %17 = lshr i16 %16, 8
  %18 = trunc i16 %17 to i8
  %19 = load ptr, ptr %9, align 8, !tbaa !57
  %20 = load i32, ptr %11, align 8, !tbaa !58
  %21 = add i32 %20, 1
  store i32 %21, ptr %11, align 8, !tbaa !58
  %22 = zext i32 %20 to i64
  %23 = getelementptr inbounds i8, ptr %19, i64 %22
  store i8 %18, ptr %23, align 1, !tbaa !50
  store i16 0, ptr %6, align 8, !tbaa !48
  br label %41

24:                                               ; preds = %1
  %25 = icmp sgt i32 %3, 7
  br i1 %25, label %26, label %43

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %28 = load i16, ptr %27, align 8, !tbaa !48
  %29 = trunc i16 %28 to i8
  %30 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !57
  %32 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 5
  %33 = load i32, ptr %32, align 8, !tbaa !58
  %34 = add i32 %33, 1
  store i32 %34, ptr %32, align 8, !tbaa !58
  %35 = zext i32 %33 to i64
  %36 = getelementptr inbounds i8, ptr %31, i64 %35
  store i8 %29, ptr %36, align 1, !tbaa !50
  %37 = load i16, ptr %27, align 8, !tbaa !48
  %38 = lshr i16 %37, 8
  store i16 %38, ptr %27, align 8, !tbaa !48
  %39 = load i32, ptr %2, align 4, !tbaa !49
  %40 = add nsw i32 %39, -8
  br label %41

41:                                               ; preds = %26, %5
  %42 = phi i32 [ 0, %5 ], [ %40, %26 ]
  store i32 %42, ptr %2, align 4, !tbaa !49
  br label %43

43:                                               ; preds = %41, %24
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define hidden void @_tr_align(ptr nocapture noundef %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 57
  %3 = load i32, ptr %2, align 4, !tbaa !49
  %4 = icmp sgt i32 %3, 13
  %5 = shl i32 2, %3
  %6 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %7 = load i16, ptr %6, align 8, !tbaa !48
  %8 = trunc i32 %5 to i16
  %9 = or i16 %7, %8
  store i16 %9, ptr %6, align 8, !tbaa !48
  br i1 %4, label %10, label %32

10:                                               ; preds = %1
  %11 = trunc i16 %9 to i8
  %12 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !57
  %14 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 5
  %15 = load i32, ptr %14, align 8, !tbaa !58
  %16 = add i32 %15, 1
  store i32 %16, ptr %14, align 8, !tbaa !58
  %17 = zext i32 %15 to i64
  %18 = getelementptr inbounds i8, ptr %13, i64 %17
  store i8 %11, ptr %18, align 1, !tbaa !50
  %19 = load i16, ptr %6, align 8, !tbaa !48
  %20 = lshr i16 %19, 8
  %21 = trunc i16 %20 to i8
  %22 = load ptr, ptr %12, align 8, !tbaa !57
  %23 = load i32, ptr %14, align 8, !tbaa !58
  %24 = add i32 %23, 1
  store i32 %24, ptr %14, align 8, !tbaa !58
  %25 = zext i32 %23 to i64
  %26 = getelementptr inbounds i8, ptr %22, i64 %25
  store i8 %21, ptr %26, align 1, !tbaa !50
  %27 = load i32, ptr %2, align 4, !tbaa !49
  %28 = sub nsw i32 16, %27
  %29 = lshr i32 2, %28
  %30 = trunc i32 %29 to i16
  store i16 %30, ptr %6, align 8, !tbaa !48
  %31 = add nsw i32 %27, -13
  br label %34

32:                                               ; preds = %1
  %33 = add nsw i32 %3, 3
  br label %34

34:                                               ; preds = %32, %10
  %35 = phi i32 [ %33, %32 ], [ %31, %10 ]
  store i32 %35, ptr %2, align 4, !tbaa !49
  %36 = icmp sgt i32 %35, 9
  br i1 %36, label %37, label %58

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %39 = load i16, ptr %38, align 8, !tbaa !48
  %40 = trunc i16 %39 to i8
  %41 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !57
  %43 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 5
  %44 = load i32, ptr %43, align 8, !tbaa !58
  %45 = add i32 %44, 1
  store i32 %45, ptr %43, align 8, !tbaa !58
  %46 = zext i32 %44 to i64
  %47 = getelementptr inbounds i8, ptr %42, i64 %46
  store i8 %40, ptr %47, align 1, !tbaa !50
  %48 = load i16, ptr %38, align 8, !tbaa !48
  %49 = lshr i16 %48, 8
  %50 = trunc i16 %49 to i8
  %51 = load ptr, ptr %41, align 8, !tbaa !57
  %52 = load i32, ptr %43, align 8, !tbaa !58
  %53 = add i32 %52, 1
  store i32 %53, ptr %43, align 8, !tbaa !58
  %54 = zext i32 %52 to i64
  %55 = getelementptr inbounds i8, ptr %51, i64 %54
  store i8 %50, ptr %55, align 1, !tbaa !50
  store i16 0, ptr %38, align 8, !tbaa !48
  %56 = load i32, ptr %2, align 4, !tbaa !49
  %57 = add nsw i32 %56, -9
  br label %60

58:                                               ; preds = %34
  %59 = add nsw i32 %35, 7
  br label %60

60:                                               ; preds = %58, %37
  %61 = phi i32 [ %59, %58 ], [ %57, %37 ]
  store i32 %61, ptr %2, align 4, !tbaa !49
  %62 = icmp eq i32 %61, 16
  br i1 %62, label %63, label %82

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %65 = load i16, ptr %64, align 8, !tbaa !48
  %66 = trunc i16 %65 to i8
  %67 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %68 = load ptr, ptr %67, align 8, !tbaa !57
  %69 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 5
  %70 = load i32, ptr %69, align 8, !tbaa !58
  %71 = add i32 %70, 1
  store i32 %71, ptr %69, align 8, !tbaa !58
  %72 = zext i32 %70 to i64
  %73 = getelementptr inbounds i8, ptr %68, i64 %72
  store i8 %66, ptr %73, align 1, !tbaa !50
  %74 = load i16, ptr %64, align 8, !tbaa !48
  %75 = lshr i16 %74, 8
  %76 = trunc i16 %75 to i8
  %77 = load ptr, ptr %67, align 8, !tbaa !57
  %78 = load i32, ptr %69, align 8, !tbaa !58
  %79 = add i32 %78, 1
  store i32 %79, ptr %69, align 8, !tbaa !58
  %80 = zext i32 %78 to i64
  %81 = getelementptr inbounds i8, ptr %77, i64 %80
  store i8 %76, ptr %81, align 1, !tbaa !50
  store i16 0, ptr %64, align 8, !tbaa !48
  br label %99

82:                                               ; preds = %60
  %83 = icmp sgt i32 %61, 7
  br i1 %83, label %84, label %101

84:                                               ; preds = %82
  %85 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %86 = load i16, ptr %85, align 8, !tbaa !48
  %87 = trunc i16 %86 to i8
  %88 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %89 = load ptr, ptr %88, align 8, !tbaa !57
  %90 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 5
  %91 = load i32, ptr %90, align 8, !tbaa !58
  %92 = add i32 %91, 1
  store i32 %92, ptr %90, align 8, !tbaa !58
  %93 = zext i32 %91 to i64
  %94 = getelementptr inbounds i8, ptr %89, i64 %93
  store i8 %87, ptr %94, align 1, !tbaa !50
  %95 = load i16, ptr %85, align 8, !tbaa !48
  %96 = lshr i16 %95, 8
  store i16 %96, ptr %85, align 8, !tbaa !48
  %97 = load i32, ptr %2, align 4, !tbaa !49
  %98 = add nsw i32 %97, -8
  br label %99

99:                                               ; preds = %84, %63
  %100 = phi i32 [ 0, %63 ], [ %98, %84 ]
  store i32 %100, ptr %2, align 4, !tbaa !49
  br label %101

101:                                              ; preds = %99, %82
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define hidden void @_tr_flush_block(ptr noundef %0, ptr noundef readonly %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
  %5 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 33
  %6 = load i32, ptr %5, align 4, !tbaa !60
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %227

8:                                                ; preds = %4
  %9 = load ptr, ptr %0, align 8, !tbaa !61
  %10 = getelementptr inbounds %struct.z_stream_s, ptr %9, i64 0, i32 11
  %11 = load i32, ptr %10, align 8, !tbaa !62
  %12 = icmp eq i32 %11, 2
  br i1 %12, label %13, label %48

13:                                               ; preds = %8, %22
  %14 = phi i64 [ %23, %22 ], [ 0, %8 ]
  %15 = phi i64 [ %24, %22 ], [ 4093624447, %8 ]
  %16 = and i64 %15, 1
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 %14
  %20 = load i16, ptr %19, align 4, !tbaa !50
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %22, label %46

22:                                               ; preds = %18, %13
  %23 = add nuw nsw i64 %14, 1
  %24 = lshr i64 %15, 1
  %25 = icmp eq i64 %23, 32
  br i1 %25, label %26, label %13, !llvm.loop !64

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 9
  %28 = load i16, ptr %27, align 4, !tbaa !50
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %30, label %46

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 10
  %32 = load i16, ptr %31, align 4, !tbaa !50
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 13
  %36 = load i16, ptr %35, align 4, !tbaa !50
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %41, label %46

38:                                               ; preds = %41
  %39 = add nuw nsw i64 %42, 1
  %40 = icmp eq i64 %39, 256
  br i1 %40, label %46, label %41, !llvm.loop !65

41:                                               ; preds = %34, %38
  %42 = phi i64 [ %39, %38 ], [ 32, %34 ]
  %43 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 %42
  %44 = load i16, ptr %43, align 4, !tbaa !50
  %45 = icmp eq i16 %44, 0
  br i1 %45, label %38, label %46

46:                                               ; preds = %18, %38, %41, %26, %30, %34
  %47 = phi i32 [ 1, %34 ], [ 1, %30 ], [ 1, %26 ], [ 1, %41 ], [ 0, %38 ], [ 0, %18 ]
  store i32 %47, ptr %10, align 8, !tbaa !62
  br label %48

48:                                               ; preds = %46, %8
  %49 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 40
  tail call fastcc void @build_tree(ptr noundef nonnull %0, ptr noundef nonnull %49)
  %50 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 41
  tail call fastcc void @build_tree(ptr noundef nonnull %0, ptr noundef nonnull %50)
  %51 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37
  %52 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 40, i32 1
  %53 = load i32, ptr %52, align 8, !tbaa !66
  %54 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 0, i32 1
  %55 = load i16, ptr %54, align 2, !tbaa !50
  %56 = sext i32 %53 to i64
  %57 = getelementptr %struct.ct_data_s, ptr %51, i64 %56
  %58 = getelementptr %struct.ct_data_s, ptr %57, i64 1, i32 1
  store i16 -1, ptr %58, align 2, !tbaa !50
  %59 = icmp slt i32 %53, 0
  br i1 %59, label %124, label %60

60:                                               ; preds = %48
  %61 = icmp eq i16 %55, 0
  %62 = select i1 %61, i32 3, i32 4
  %63 = select i1 %61, i32 138, i32 7
  %64 = zext i16 %55 to i32
  %65 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 16
  %66 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 18
  %67 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 17
  %68 = add nuw i32 %53, 1
  %69 = zext i32 %68 to i64
  br label %70

70:                                               ; preds = %118, %60
  %71 = phi i64 [ 0, %60 ], [ %77, %118 ]
  %72 = phi i32 [ %62, %60 ], [ %122, %118 ]
  %73 = phi i32 [ %63, %60 ], [ %121, %118 ]
  %74 = phi i32 [ 0, %60 ], [ %120, %118 ]
  %75 = phi i32 [ %64, %60 ], [ %80, %118 ]
  %76 = phi i32 [ -1, %60 ], [ %119, %118 ]
  %77 = add nuw nsw i64 %71, 1
  %78 = getelementptr inbounds %struct.ct_data_s, ptr %51, i64 %77, i32 1
  %79 = load i16, ptr %78, align 2, !tbaa !50
  %80 = zext i16 %79 to i32
  %81 = add nsw i32 %74, 1
  %82 = icmp slt i32 %81, %73
  %83 = icmp eq i32 %75, %80
  %84 = select i1 %82, i1 %83, i1 false
  br i1 %84, label %118, label %85

85:                                               ; preds = %70
  %86 = icmp slt i32 %81, %72
  br i1 %86, label %87, label %93

87:                                               ; preds = %85
  %88 = zext nneg i32 %75 to i64
  %89 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 %88
  %90 = load i16, ptr %89, align 4, !tbaa !50
  %91 = trunc i32 %81 to i16
  %92 = add i16 %90, %91
  store i16 %92, ptr %89, align 4, !tbaa !50
  br label %113

93:                                               ; preds = %85
  %94 = icmp eq i32 %75, 0
  br i1 %94, label %105, label %95

95:                                               ; preds = %93
  %96 = icmp eq i32 %75, %76
  br i1 %96, label %102, label %97

97:                                               ; preds = %95
  %98 = zext nneg i32 %75 to i64
  %99 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 %98
  %100 = load i16, ptr %99, align 4, !tbaa !50
  %101 = add i16 %100, 1
  store i16 %101, ptr %99, align 4, !tbaa !50
  br label %102

102:                                              ; preds = %97, %95
  %103 = load i16, ptr %65, align 4, !tbaa !50
  %104 = add i16 %103, 1
  store i16 %104, ptr %65, align 4, !tbaa !50
  br label %113

105:                                              ; preds = %93
  %106 = icmp slt i32 %74, 10
  br i1 %106, label %107, label %110

107:                                              ; preds = %105
  %108 = load i16, ptr %67, align 4, !tbaa !50
  %109 = add i16 %108, 1
  store i16 %109, ptr %67, align 4, !tbaa !50
  br label %113

110:                                              ; preds = %105
  %111 = load i16, ptr %66, align 4, !tbaa !50
  %112 = add i16 %111, 1
  store i16 %112, ptr %66, align 4, !tbaa !50
  br label %113

113:                                              ; preds = %110, %107, %102, %87
  %114 = icmp eq i16 %79, 0
  br i1 %114, label %118, label %115

115:                                              ; preds = %113
  %116 = select i1 %83, i32 6, i32 7
  %117 = select i1 %83, i32 3, i32 4
  br label %118

118:                                              ; preds = %115, %113, %70
  %119 = phi i32 [ %76, %70 ], [ %75, %113 ], [ %75, %115 ]
  %120 = phi i32 [ %81, %70 ], [ 0, %113 ], [ 0, %115 ]
  %121 = phi i32 [ %73, %70 ], [ 138, %113 ], [ %116, %115 ]
  %122 = phi i32 [ %72, %70 ], [ 3, %113 ], [ %117, %115 ]
  %123 = icmp eq i64 %77, %69
  br i1 %123, label %124, label %70, !llvm.loop !67

124:                                              ; preds = %118, %48
  %125 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38
  %126 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 41, i32 1
  %127 = load i32, ptr %126, align 8, !tbaa !68
  %128 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38, i64 0, i32 1
  %129 = load i16, ptr %128, align 2, !tbaa !50
  %130 = sext i32 %127 to i64
  %131 = getelementptr %struct.ct_data_s, ptr %125, i64 %130
  %132 = getelementptr %struct.ct_data_s, ptr %131, i64 1, i32 1
  store i16 -1, ptr %132, align 2, !tbaa !50
  %133 = icmp slt i32 %127, 0
  br i1 %133, label %198, label %134

134:                                              ; preds = %124
  %135 = icmp eq i16 %129, 0
  %136 = select i1 %135, i32 3, i32 4
  %137 = select i1 %135, i32 138, i32 7
  %138 = zext i16 %129 to i32
  %139 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 16
  %140 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 18
  %141 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 17
  %142 = add nuw i32 %127, 1
  %143 = zext i32 %142 to i64
  br label %144

144:                                              ; preds = %192, %134
  %145 = phi i64 [ 0, %134 ], [ %151, %192 ]
  %146 = phi i32 [ %136, %134 ], [ %196, %192 ]
  %147 = phi i32 [ %137, %134 ], [ %195, %192 ]
  %148 = phi i32 [ 0, %134 ], [ %194, %192 ]
  %149 = phi i32 [ %138, %134 ], [ %154, %192 ]
  %150 = phi i32 [ -1, %134 ], [ %193, %192 ]
  %151 = add nuw nsw i64 %145, 1
  %152 = getelementptr inbounds %struct.ct_data_s, ptr %125, i64 %151, i32 1
  %153 = load i16, ptr %152, align 2, !tbaa !50
  %154 = zext i16 %153 to i32
  %155 = add nsw i32 %148, 1
  %156 = icmp slt i32 %155, %147
  %157 = icmp eq i32 %149, %154
  %158 = select i1 %156, i1 %157, i1 false
  br i1 %158, label %192, label %159

159:                                              ; preds = %144
  %160 = icmp slt i32 %155, %146
  br i1 %160, label %161, label %167

161:                                              ; preds = %159
  %162 = zext nneg i32 %149 to i64
  %163 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 %162
  %164 = load i16, ptr %163, align 4, !tbaa !50
  %165 = trunc i32 %155 to i16
  %166 = add i16 %164, %165
  store i16 %166, ptr %163, align 4, !tbaa !50
  br label %187

167:                                              ; preds = %159
  %168 = icmp eq i32 %149, 0
  br i1 %168, label %179, label %169

169:                                              ; preds = %167
  %170 = icmp eq i32 %149, %150
  br i1 %170, label %176, label %171

171:                                              ; preds = %169
  %172 = zext nneg i32 %149 to i64
  %173 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 %172
  %174 = load i16, ptr %173, align 4, !tbaa !50
  %175 = add i16 %174, 1
  store i16 %175, ptr %173, align 4, !tbaa !50
  br label %176

176:                                              ; preds = %171, %169
  %177 = load i16, ptr %139, align 4, !tbaa !50
  %178 = add i16 %177, 1
  store i16 %178, ptr %139, align 4, !tbaa !50
  br label %187

179:                                              ; preds = %167
  %180 = icmp slt i32 %148, 10
  br i1 %180, label %181, label %184

181:                                              ; preds = %179
  %182 = load i16, ptr %141, align 4, !tbaa !50
  %183 = add i16 %182, 1
  store i16 %183, ptr %141, align 4, !tbaa !50
  br label %187

184:                                              ; preds = %179
  %185 = load i16, ptr %140, align 4, !tbaa !50
  %186 = add i16 %185, 1
  store i16 %186, ptr %140, align 4, !tbaa !50
  br label %187

187:                                              ; preds = %184, %181, %176, %161
  %188 = icmp eq i16 %153, 0
  br i1 %188, label %192, label %189

189:                                              ; preds = %187
  %190 = select i1 %157, i32 6, i32 7
  %191 = select i1 %157, i32 3, i32 4
  br label %192

192:                                              ; preds = %189, %187, %144
  %193 = phi i32 [ %150, %144 ], [ %149, %187 ], [ %149, %189 ]
  %194 = phi i32 [ %155, %144 ], [ 0, %187 ], [ 0, %189 ]
  %195 = phi i32 [ %147, %144 ], [ 138, %187 ], [ %190, %189 ]
  %196 = phi i32 [ %146, %144 ], [ 3, %187 ], [ %191, %189 ]
  %197 = icmp eq i64 %151, %143
  br i1 %197, label %198, label %144, !llvm.loop !67

198:                                              ; preds = %192, %124
  %199 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 42
  tail call fastcc void @build_tree(ptr noundef %0, ptr noundef nonnull %199)
  br label %200

200:                                              ; preds = %198, %209
  %201 = phi i32 [ 18, %198 ], [ %210, %209 ]
  %202 = zext nneg i32 %201 to i64
  %203 = getelementptr inbounds [19 x i8], ptr @bl_order, i64 0, i64 %202
  %204 = load i8, ptr %203, align 1, !tbaa !50
  %205 = zext i8 %204 to i64
  %206 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 %205, i32 1
  %207 = load i16, ptr %206, align 2, !tbaa !50
  %208 = icmp eq i16 %207, 0
  br i1 %208, label %209, label %212

209:                                              ; preds = %200
  %210 = add nsw i32 %201, -1
  %211 = icmp ugt i32 %201, 3
  br i1 %211, label %200, label %212, !llvm.loop !69

212:                                              ; preds = %209, %200
  %213 = phi i32 [ 2, %209 ], [ %201, %200 ]
  %214 = mul i32 %213, 3
  %215 = add i32 %214, 17
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 52
  %218 = load i64, ptr %217, align 8, !tbaa !70
  %219 = add i64 %218, %216
  store i64 %219, ptr %217, align 8, !tbaa !70
  %220 = add i64 %219, 10
  %221 = lshr i64 %220, 3
  %222 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 53
  %223 = load i64, ptr %222, align 8, !tbaa !71
  %224 = add i64 %223, 10
  %225 = lshr i64 %224, 3
  %226 = tail call i64 @llvm.umin.i64(i64 %225, i64 %221)
  br label %229

227:                                              ; preds = %4
  %228 = add i64 %2, 5
  br label %229

229:                                              ; preds = %212, %227
  %230 = phi i32 [ 0, %227 ], [ %213, %212 ]
  %231 = phi i64 [ %228, %227 ], [ %225, %212 ]
  %232 = phi i64 [ %228, %227 ], [ %226, %212 ]
  %233 = add i64 %2, 4
  %234 = icmp ule i64 %233, %232
  %235 = icmp ne ptr %1, null
  %236 = and i1 %235, %234
  br i1 %236, label %237, label %238

237:                                              ; preds = %229
  tail call void @_tr_stored_block(ptr noundef %0, ptr noundef nonnull %1, i64 noundef %2, i32 noundef %3)
  br label %498

238:                                              ; preds = %229
  %239 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 34
  %240 = load i32, ptr %239, align 8, !tbaa !72
  %241 = icmp eq i32 %240, 4
  %242 = icmp eq i64 %231, %232
  %243 = or i1 %242, %241
  %244 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 57
  %245 = load i32, ptr %244, align 4, !tbaa !49
  %246 = icmp sgt i32 %245, 13
  br i1 %243, label %247, label %286

247:                                              ; preds = %238
  %248 = add i32 %3, 2
  br i1 %246, label %249, label %277

249:                                              ; preds = %247
  %250 = and i32 %248, 65535
  %251 = shl i32 %248, %245
  %252 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %253 = load i16, ptr %252, align 8, !tbaa !48
  %254 = trunc i32 %251 to i16
  %255 = or i16 %253, %254
  store i16 %255, ptr %252, align 8, !tbaa !48
  %256 = trunc i16 %255 to i8
  %257 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %258 = load ptr, ptr %257, align 8, !tbaa !57
  %259 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 5
  %260 = load i32, ptr %259, align 8, !tbaa !58
  %261 = add i32 %260, 1
  store i32 %261, ptr %259, align 8, !tbaa !58
  %262 = zext i32 %260 to i64
  %263 = getelementptr inbounds i8, ptr %258, i64 %262
  store i8 %256, ptr %263, align 1, !tbaa !50
  %264 = load i16, ptr %252, align 8, !tbaa !48
  %265 = lshr i16 %264, 8
  %266 = trunc i16 %265 to i8
  %267 = load ptr, ptr %257, align 8, !tbaa !57
  %268 = load i32, ptr %259, align 8, !tbaa !58
  %269 = add i32 %268, 1
  store i32 %269, ptr %259, align 8, !tbaa !58
  %270 = zext i32 %268 to i64
  %271 = getelementptr inbounds i8, ptr %267, i64 %270
  store i8 %266, ptr %271, align 1, !tbaa !50
  %272 = load i32, ptr %244, align 4, !tbaa !49
  %273 = sub nsw i32 16, %272
  %274 = lshr i32 %250, %273
  %275 = trunc i32 %274 to i16
  store i16 %275, ptr %252, align 8, !tbaa !48
  %276 = add nsw i32 %272, -13
  br label %284

277:                                              ; preds = %247
  %278 = shl i32 %248, %245
  %279 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %280 = load i16, ptr %279, align 8, !tbaa !48
  %281 = trunc i32 %278 to i16
  %282 = or i16 %280, %281
  store i16 %282, ptr %279, align 8, !tbaa !48
  %283 = add nsw i32 %245, 3
  br label %284

284:                                              ; preds = %277, %249
  %285 = phi i32 [ %283, %277 ], [ %276, %249 ]
  store i32 %285, ptr %244, align 4, !tbaa !49
  tail call fastcc void @compress_block(ptr noundef %0, ptr noundef nonnull @static_ltree, ptr noundef nonnull @static_dtree)
  br label %498

286:                                              ; preds = %238
  %287 = add i32 %3, 4
  br i1 %246, label %288, label %316

288:                                              ; preds = %286
  %289 = and i32 %287, 65535
  %290 = shl i32 %287, %245
  %291 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %292 = load i16, ptr %291, align 8, !tbaa !48
  %293 = trunc i32 %290 to i16
  %294 = or i16 %292, %293
  store i16 %294, ptr %291, align 8, !tbaa !48
  %295 = trunc i16 %294 to i8
  %296 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %297 = load ptr, ptr %296, align 8, !tbaa !57
  %298 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 5
  %299 = load i32, ptr %298, align 8, !tbaa !58
  %300 = add i32 %299, 1
  store i32 %300, ptr %298, align 8, !tbaa !58
  %301 = zext i32 %299 to i64
  %302 = getelementptr inbounds i8, ptr %297, i64 %301
  store i8 %295, ptr %302, align 1, !tbaa !50
  %303 = load i16, ptr %291, align 8, !tbaa !48
  %304 = lshr i16 %303, 8
  %305 = trunc i16 %304 to i8
  %306 = load ptr, ptr %296, align 8, !tbaa !57
  %307 = load i32, ptr %298, align 8, !tbaa !58
  %308 = add i32 %307, 1
  store i32 %308, ptr %298, align 8, !tbaa !58
  %309 = zext i32 %307 to i64
  %310 = getelementptr inbounds i8, ptr %306, i64 %309
  store i8 %305, ptr %310, align 1, !tbaa !50
  %311 = load i32, ptr %244, align 4, !tbaa !49
  %312 = sub nsw i32 16, %311
  %313 = lshr i32 %289, %312
  %314 = trunc i32 %313 to i16
  store i16 %314, ptr %291, align 8, !tbaa !48
  %315 = add nsw i32 %311, -13
  br label %323

316:                                              ; preds = %286
  %317 = shl i32 %287, %245
  %318 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %319 = load i16, ptr %318, align 8, !tbaa !48
  %320 = trunc i32 %317 to i16
  %321 = or i16 %319, %320
  store i16 %321, ptr %318, align 8, !tbaa !48
  %322 = add nsw i32 %245, 3
  br label %323

323:                                              ; preds = %316, %288
  %324 = phi i32 [ %322, %316 ], [ %315, %288 ]
  store i32 %324, ptr %244, align 4, !tbaa !49
  %325 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 40, i32 1
  %326 = load i32, ptr %325, align 8, !tbaa !66
  %327 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 41, i32 1
  %328 = load i32, ptr %327, align 8, !tbaa !68
  %329 = icmp sgt i32 %324, 11
  %330 = add i32 %326, 65280
  br i1 %329, label %331, label %359

331:                                              ; preds = %323
  %332 = and i32 %330, 65535
  %333 = shl i32 %330, %324
  %334 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %335 = load i16, ptr %334, align 8, !tbaa !48
  %336 = trunc i32 %333 to i16
  %337 = or i16 %335, %336
  store i16 %337, ptr %334, align 8, !tbaa !48
  %338 = trunc i16 %337 to i8
  %339 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %340 = load ptr, ptr %339, align 8, !tbaa !57
  %341 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 5
  %342 = load i32, ptr %341, align 8, !tbaa !58
  %343 = add i32 %342, 1
  store i32 %343, ptr %341, align 8, !tbaa !58
  %344 = zext i32 %342 to i64
  %345 = getelementptr inbounds i8, ptr %340, i64 %344
  store i8 %338, ptr %345, align 1, !tbaa !50
  %346 = load i16, ptr %334, align 8, !tbaa !48
  %347 = lshr i16 %346, 8
  %348 = trunc i16 %347 to i8
  %349 = load ptr, ptr %339, align 8, !tbaa !57
  %350 = load i32, ptr %341, align 8, !tbaa !58
  %351 = add i32 %350, 1
  store i32 %351, ptr %341, align 8, !tbaa !58
  %352 = zext i32 %350 to i64
  %353 = getelementptr inbounds i8, ptr %349, i64 %352
  store i8 %348, ptr %353, align 1, !tbaa !50
  %354 = load i32, ptr %244, align 4, !tbaa !49
  %355 = sub nsw i32 16, %354
  %356 = lshr i32 %332, %355
  %357 = trunc i32 %356 to i16
  store i16 %357, ptr %334, align 8, !tbaa !48
  %358 = add nsw i32 %354, -11
  br label %366

359:                                              ; preds = %323
  %360 = shl i32 %330, %324
  %361 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %362 = load i16, ptr %361, align 8, !tbaa !48
  %363 = trunc i32 %360 to i16
  %364 = or i16 %362, %363
  store i16 %364, ptr %361, align 8, !tbaa !48
  %365 = add nsw i32 %324, 5
  br label %366

366:                                              ; preds = %359, %331
  %367 = phi i32 [ %365, %359 ], [ %358, %331 ]
  store i32 %367, ptr %244, align 4, !tbaa !49
  %368 = icmp sgt i32 %367, 11
  br i1 %368, label %369, label %397

369:                                              ; preds = %366
  %370 = and i32 %328, 65535
  %371 = shl i32 %328, %367
  %372 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %373 = load i16, ptr %372, align 8, !tbaa !48
  %374 = trunc i32 %371 to i16
  %375 = or i16 %373, %374
  store i16 %375, ptr %372, align 8, !tbaa !48
  %376 = trunc i16 %375 to i8
  %377 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %378 = load ptr, ptr %377, align 8, !tbaa !57
  %379 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 5
  %380 = load i32, ptr %379, align 8, !tbaa !58
  %381 = add i32 %380, 1
  store i32 %381, ptr %379, align 8, !tbaa !58
  %382 = zext i32 %380 to i64
  %383 = getelementptr inbounds i8, ptr %378, i64 %382
  store i8 %376, ptr %383, align 1, !tbaa !50
  %384 = load i16, ptr %372, align 8, !tbaa !48
  %385 = lshr i16 %384, 8
  %386 = trunc i16 %385 to i8
  %387 = load ptr, ptr %377, align 8, !tbaa !57
  %388 = load i32, ptr %379, align 8, !tbaa !58
  %389 = add i32 %388, 1
  store i32 %389, ptr %379, align 8, !tbaa !58
  %390 = zext i32 %388 to i64
  %391 = getelementptr inbounds i8, ptr %387, i64 %390
  store i8 %386, ptr %391, align 1, !tbaa !50
  %392 = load i32, ptr %244, align 4, !tbaa !49
  %393 = sub nsw i32 16, %392
  %394 = lshr i32 %370, %393
  %395 = trunc i32 %394 to i16
  store i16 %395, ptr %372, align 8, !tbaa !48
  %396 = add nsw i32 %392, -11
  br label %404

397:                                              ; preds = %366
  %398 = shl i32 %328, %367
  %399 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %400 = load i16, ptr %399, align 8, !tbaa !48
  %401 = trunc i32 %398 to i16
  %402 = or i16 %400, %401
  store i16 %402, ptr %399, align 8, !tbaa !48
  %403 = add nsw i32 %367, 5
  br label %404

404:                                              ; preds = %397, %369
  %405 = phi i32 [ %403, %397 ], [ %396, %369 ]
  store i32 %405, ptr %244, align 4, !tbaa !49
  %406 = icmp sgt i32 %405, 12
  %407 = add i32 %230, 65533
  br i1 %406, label %408, label %436

408:                                              ; preds = %404
  %409 = and i32 %407, 65535
  %410 = shl i32 %407, %405
  %411 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %412 = load i16, ptr %411, align 8, !tbaa !48
  %413 = trunc i32 %410 to i16
  %414 = or i16 %412, %413
  store i16 %414, ptr %411, align 8, !tbaa !48
  %415 = trunc i16 %414 to i8
  %416 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %417 = load ptr, ptr %416, align 8, !tbaa !57
  %418 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 5
  %419 = load i32, ptr %418, align 8, !tbaa !58
  %420 = add i32 %419, 1
  store i32 %420, ptr %418, align 8, !tbaa !58
  %421 = zext i32 %419 to i64
  %422 = getelementptr inbounds i8, ptr %417, i64 %421
  store i8 %415, ptr %422, align 1, !tbaa !50
  %423 = load i16, ptr %411, align 8, !tbaa !48
  %424 = lshr i16 %423, 8
  %425 = trunc i16 %424 to i8
  %426 = load ptr, ptr %416, align 8, !tbaa !57
  %427 = load i32, ptr %418, align 8, !tbaa !58
  %428 = add i32 %427, 1
  store i32 %428, ptr %418, align 8, !tbaa !58
  %429 = zext i32 %427 to i64
  %430 = getelementptr inbounds i8, ptr %426, i64 %429
  store i8 %425, ptr %430, align 1, !tbaa !50
  %431 = load i32, ptr %244, align 4, !tbaa !49
  %432 = sub nsw i32 16, %431
  %433 = lshr i32 %409, %432
  %434 = trunc i32 %433 to i16
  store i16 %434, ptr %411, align 8, !tbaa !48
  %435 = add nsw i32 %431, -12
  br label %443

436:                                              ; preds = %404
  %437 = shl i32 %407, %405
  %438 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %439 = load i16, ptr %438, align 8, !tbaa !48
  %440 = trunc i32 %437 to i16
  %441 = or i16 %439, %440
  store i16 %441, ptr %438, align 8, !tbaa !48
  %442 = add nsw i32 %405, 4
  br label %443

443:                                              ; preds = %436, %408
  %444 = phi i32 [ %442, %436 ], [ %435, %408 ]
  store i32 %444, ptr %244, align 4, !tbaa !49
  %445 = icmp slt i32 %230, 0
  br i1 %445, label %495, label %446

446:                                              ; preds = %443
  %447 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %448 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %449 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %450 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 5
  %451 = add nuw nsw i32 %230, 1
  %452 = zext nneg i32 %451 to i64
  br label %453

453:                                              ; preds = %446, %491
  %454 = phi i64 [ 0, %446 ], [ %493, %491 ]
  %455 = load i32, ptr %244, align 4, !tbaa !49
  %456 = icmp sgt i32 %455, 13
  %457 = getelementptr inbounds [19 x i8], ptr @bl_order, i64 0, i64 %454
  %458 = load i8, ptr %457, align 1, !tbaa !50
  %459 = zext i8 %458 to i64
  %460 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 %459, i32 1
  %461 = load i16, ptr %460, align 2, !tbaa !50
  %462 = zext i16 %461 to i32
  %463 = shl i32 %462, %455
  %464 = trunc i32 %463 to i16
  br i1 %456, label %465, label %487

465:                                              ; preds = %453
  %466 = load i16, ptr %448, align 8, !tbaa !48
  %467 = or i16 %466, %464
  store i16 %467, ptr %448, align 8, !tbaa !48
  %468 = trunc i16 %467 to i8
  %469 = load ptr, ptr %449, align 8, !tbaa !57
  %470 = load i32, ptr %450, align 8, !tbaa !58
  %471 = add i32 %470, 1
  store i32 %471, ptr %450, align 8, !tbaa !58
  %472 = zext i32 %470 to i64
  %473 = getelementptr inbounds i8, ptr %469, i64 %472
  store i8 %468, ptr %473, align 1, !tbaa !50
  %474 = load i16, ptr %448, align 8, !tbaa !48
  %475 = lshr i16 %474, 8
  %476 = trunc i16 %475 to i8
  %477 = load ptr, ptr %449, align 8, !tbaa !57
  %478 = load i32, ptr %450, align 8, !tbaa !58
  %479 = add i32 %478, 1
  store i32 %479, ptr %450, align 8, !tbaa !58
  %480 = zext i32 %478 to i64
  %481 = getelementptr inbounds i8, ptr %477, i64 %480
  store i8 %476, ptr %481, align 1, !tbaa !50
  %482 = load i32, ptr %244, align 4, !tbaa !49
  %483 = sub nsw i32 16, %482
  %484 = lshr i32 %462, %483
  %485 = trunc i32 %484 to i16
  store i16 %485, ptr %448, align 8, !tbaa !48
  %486 = add nsw i32 %482, -13
  br label %491

487:                                              ; preds = %453
  %488 = load i16, ptr %447, align 8, !tbaa !48
  %489 = or i16 %488, %464
  store i16 %489, ptr %447, align 8, !tbaa !48
  %490 = add nsw i32 %455, 3
  br label %491

491:                                              ; preds = %487, %465
  %492 = phi i32 [ %490, %487 ], [ %486, %465 ]
  store i32 %492, ptr %244, align 4, !tbaa !49
  %493 = add nuw nsw i64 %454, 1
  %494 = icmp eq i64 %493, %452
  br i1 %494, label %495, label %453, !llvm.loop !73

495:                                              ; preds = %491, %443
  %496 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37
  tail call fastcc void @send_tree(ptr noundef %0, ptr noundef nonnull %496, i32 noundef %326)
  %497 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38
  tail call fastcc void @send_tree(ptr noundef %0, ptr noundef nonnull %497, i32 noundef %328)
  tail call fastcc void @compress_block(ptr noundef %0, ptr noundef nonnull %496, ptr noundef nonnull %497)
  br label %498

498:                                              ; preds = %284, %495, %237
  br label %499

499:                                              ; preds = %498, %499
  %500 = phi i64 [ %502, %499 ], [ 0, %498 ]
  %501 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 %500
  store i16 0, ptr %501, align 4, !tbaa !50
  %502 = add nuw nsw i64 %500, 1
  %503 = icmp eq i64 %502, 286
  br i1 %503, label %504, label %499, !llvm.loop !51

504:                                              ; preds = %499, %504
  %505 = phi i64 [ %507, %504 ], [ 0, %499 ]
  %506 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38, i64 %505
  store i16 0, ptr %506, align 4, !tbaa !50
  %507 = add nuw nsw i64 %505, 1
  %508 = icmp eq i64 %507, 30
  br i1 %508, label %509, label %504, !llvm.loop !54

509:                                              ; preds = %504, %509
  %510 = phi i64 [ %512, %509 ], [ 0, %504 ]
  %511 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 %510
  store i16 0, ptr %511, align 4, !tbaa !50
  %512 = add nuw nsw i64 %510, 1
  %513 = icmp eq i64 %512, 19
  br i1 %513, label %514, label %509, !llvm.loop !55

514:                                              ; preds = %509
  %515 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 256
  store i16 1, ptr %515, align 4, !tbaa !50
  %516 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 52
  %517 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 50
  store i32 0, ptr %517, align 4, !tbaa !56
  %518 = icmp eq i32 %3, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %516, i8 0, i64 20, i1 false)
  br i1 %518, label %555, label %519

519:                                              ; preds = %514
  %520 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 57
  %521 = load i32, ptr %520, align 4, !tbaa !49
  %522 = icmp sgt i32 %521, 8
  br i1 %522, label %523, label %536

523:                                              ; preds = %519
  %524 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %525 = load i16, ptr %524, align 8, !tbaa !48
  %526 = trunc i16 %525 to i8
  %527 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %528 = load ptr, ptr %527, align 8, !tbaa !57
  %529 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 5
  %530 = load i32, ptr %529, align 8, !tbaa !58
  %531 = add i32 %530, 1
  store i32 %531, ptr %529, align 8, !tbaa !58
  %532 = zext i32 %530 to i64
  %533 = getelementptr inbounds i8, ptr %528, i64 %532
  store i8 %526, ptr %533, align 1, !tbaa !50
  %534 = load i16, ptr %524, align 8, !tbaa !48
  %535 = lshr i16 %534, 8
  br label %543

536:                                              ; preds = %519
  %537 = icmp sgt i32 %521, 0
  br i1 %537, label %538, label %553

538:                                              ; preds = %536
  %539 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %540 = load i16, ptr %539, align 8, !tbaa !48
  %541 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %542 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 5
  br label %543

543:                                              ; preds = %538, %523
  %544 = phi ptr [ %542, %538 ], [ %529, %523 ]
  %545 = phi ptr [ %541, %538 ], [ %527, %523 ]
  %546 = phi i16 [ %540, %538 ], [ %535, %523 ]
  %547 = trunc i16 %546 to i8
  %548 = load ptr, ptr %545, align 8, !tbaa !57
  %549 = load i32, ptr %544, align 8, !tbaa !58
  %550 = add i32 %549, 1
  store i32 %550, ptr %544, align 8, !tbaa !58
  %551 = zext i32 %549 to i64
  %552 = getelementptr inbounds i8, ptr %548, i64 %551
  store i8 %547, ptr %552, align 1, !tbaa !50
  br label %553

553:                                              ; preds = %543, %536
  %554 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  store i16 0, ptr %554, align 8, !tbaa !48
  store i32 0, ptr %520, align 4, !tbaa !49
  br label %555

555:                                              ; preds = %553, %514
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @build_tree(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #1 {
  %3 = alloca [16 x i16], align 16
  %4 = load ptr, ptr %1, align 8, !tbaa !74
  %5 = getelementptr inbounds %struct.tree_desc_s, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !75
  %7 = load ptr, ptr %6, align 8, !tbaa !76
  %8 = getelementptr inbounds %struct.static_tree_desc_s, ptr %6, i64 0, i32 3
  %9 = load i32, ptr %8, align 4, !tbaa !78
  %10 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 45
  store i32 0, ptr %10, align 4, !tbaa !79
  %11 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 46
  store i32 573, ptr %11, align 8, !tbaa !80
  %12 = icmp sgt i32 %9, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = zext nneg i32 %9 to i64
  br label %23

15:                                               ; preds = %39, %2
  %16 = phi i32 [ -1, %2 ], [ %40, %39 ]
  %17 = load i32, ptr %10, align 4, !tbaa !79
  %18 = icmp slt i32 %17, 2
  br i1 %18, label %19, label %67

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 52
  %21 = icmp eq ptr %7, null
  %22 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 53
  br label %43

23:                                               ; preds = %13, %39
  %24 = phi i64 [ 0, %13 ], [ %41, %39 ]
  %25 = phi i32 [ -1, %13 ], [ %40, %39 ]
  %26 = getelementptr inbounds %struct.ct_data_s, ptr %4, i64 %24
  %27 = load i16, ptr %26, align 2, !tbaa !50
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %23
  %30 = load i32, ptr %10, align 4, !tbaa !79
  %31 = add nsw i32 %30, 1
  store i32 %31, ptr %10, align 4, !tbaa !79
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %32
  %34 = trunc i64 %24 to i32
  store i32 %34, ptr %33, align 4, !tbaa !81
  %35 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 47, i64 %24
  store i8 0, ptr %35, align 1, !tbaa !50
  %36 = trunc i64 %24 to i32
  br label %39

37:                                               ; preds = %23
  %38 = getelementptr inbounds %struct.ct_data_s, ptr %4, i64 %24, i32 1
  store i16 0, ptr %38, align 2, !tbaa !50
  br label %39

39:                                               ; preds = %29, %37
  %40 = phi i32 [ %36, %29 ], [ %25, %37 ]
  %41 = add nuw nsw i64 %24, 1
  %42 = icmp eq i64 %41, %14
  br i1 %42, label %15, label %23, !llvm.loop !82

43:                                               ; preds = %19, %64
  %44 = phi i32 [ %17, %19 ], [ %65, %64 ]
  %45 = phi i32 [ %16, %19 ], [ %48, %64 ]
  %46 = icmp slt i32 %45, 2
  %47 = add nsw i32 %45, 1
  %48 = select i1 %46, i32 %47, i32 %45
  %49 = select i1 %46, i32 %47, i32 0
  %50 = add nsw i32 %44, 1
  store i32 %50, ptr %10, align 4, !tbaa !79
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %51
  store i32 %49, ptr %52, align 4, !tbaa !81
  %53 = sext i32 %49 to i64
  %54 = getelementptr inbounds %struct.ct_data_s, ptr %4, i64 %53
  store i16 1, ptr %54, align 2, !tbaa !50
  %55 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 47, i64 %53
  store i8 0, ptr %55, align 1, !tbaa !50
  %56 = load i64, ptr %20, align 8, !tbaa !70
  %57 = add i64 %56, -1
  store i64 %57, ptr %20, align 8, !tbaa !70
  br i1 %21, label %64, label %58

58:                                               ; preds = %43
  %59 = getelementptr inbounds %struct.ct_data_s, ptr %7, i64 %53, i32 1
  %60 = load i16, ptr %59, align 2, !tbaa !50
  %61 = zext i16 %60 to i64
  %62 = load i64, ptr %22, align 8, !tbaa !71
  %63 = sub i64 %62, %61
  store i64 %63, ptr %22, align 8, !tbaa !71
  br label %64

64:                                               ; preds = %58, %43
  %65 = load i32, ptr %10, align 4, !tbaa !79
  %66 = icmp slt i32 %65, 2
  br i1 %66, label %43, label %67, !llvm.loop !83

67:                                               ; preds = %64, %15
  %68 = phi i32 [ %16, %15 ], [ %48, %64 ]
  %69 = phi i32 [ %17, %15 ], [ %65, %64 ]
  %70 = getelementptr inbounds %struct.tree_desc_s, ptr %1, i64 0, i32 1
  store i32 %68, ptr %70, align 8, !tbaa !84
  %71 = icmp ult i32 %69, 2
  br i1 %71, label %75, label %72

72:                                               ; preds = %67
  %73 = lshr i32 %69, 1
  %74 = zext nneg i32 %73 to i64
  br label %78

75:                                               ; preds = %144, %67
  %76 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 1
  %77 = sext i32 %9 to i64
  br label %150

78:                                               ; preds = %72, %144
  %79 = phi i64 [ %74, %72 ], [ %148, %144 ]
  %80 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %79
  %81 = load i32, ptr %80, align 4, !tbaa !81
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 47, i64 %82
  %84 = trunc i64 %79 to i32
  %85 = shl nuw i32 %84, 1
  %86 = load i32, ptr %10, align 4, !tbaa !79
  %87 = icmp sgt i32 %85, %86
  %88 = trunc i64 %79 to i32
  br i1 %87, label %144, label %89

89:                                               ; preds = %78
  %90 = getelementptr inbounds %struct.ct_data_s, ptr %4, i64 %82
  %91 = trunc i64 %79 to i32
  br label %92

92:                                               ; preds = %138, %89
  %93 = phi i32 [ %86, %89 ], [ %142, %138 ]
  %94 = phi i32 [ %85, %89 ], [ %141, %138 ]
  %95 = phi i32 [ %91, %89 ], [ %122, %138 ]
  %96 = icmp slt i32 %94, %93
  br i1 %96, label %97, label %121

97:                                               ; preds = %92
  %98 = or disjoint i32 %94, 1
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %99
  %101 = load i32, ptr %100, align 4, !tbaa !81
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.ct_data_s, ptr %4, i64 %102
  %104 = load i16, ptr %103, align 2, !tbaa !50
  %105 = sext i32 %94 to i64
  %106 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %105
  %107 = load i32, ptr %106, align 4, !tbaa !81
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.ct_data_s, ptr %4, i64 %108
  %110 = load i16, ptr %109, align 2, !tbaa !50
  %111 = icmp ult i16 %104, %110
  br i1 %111, label %120, label %112

112:                                              ; preds = %97
  %113 = icmp eq i16 %104, %110
  br i1 %113, label %114, label %121

114:                                              ; preds = %112
  %115 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 47, i64 %102
  %116 = load i8, ptr %115, align 1, !tbaa !50
  %117 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 47, i64 %108
  %118 = load i8, ptr %117, align 1, !tbaa !50
  %119 = icmp ugt i8 %116, %118
  br i1 %119, label %121, label %120

120:                                              ; preds = %114, %97
  br label %121

121:                                              ; preds = %120, %114, %112, %92
  %122 = phi i32 [ %98, %120 ], [ %94, %114 ], [ %94, %112 ], [ %94, %92 ]
  %123 = load i16, ptr %90, align 2, !tbaa !50
  %124 = sext i32 %122 to i64
  %125 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %124
  %126 = load i32, ptr %125, align 4, !tbaa !81
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.ct_data_s, ptr %4, i64 %127
  %129 = load i16, ptr %128, align 2, !tbaa !50
  %130 = icmp ult i16 %123, %129
  br i1 %130, label %144, label %131

131:                                              ; preds = %121
  %132 = icmp eq i16 %123, %129
  br i1 %132, label %133, label %138

133:                                              ; preds = %131
  %134 = load i8, ptr %83, align 1, !tbaa !50
  %135 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 47, i64 %127
  %136 = load i8, ptr %135, align 1, !tbaa !50
  %137 = icmp ugt i8 %134, %136
  br i1 %137, label %138, label %144

138:                                              ; preds = %133, %131
  %139 = sext i32 %95 to i64
  %140 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %139
  store i32 %126, ptr %140, align 4, !tbaa !81
  %141 = shl i32 %122, 1
  %142 = load i32, ptr %10, align 4, !tbaa !79
  %143 = icmp sgt i32 %141, %142
  br i1 %143, label %144, label %92, !llvm.loop !85

144:                                              ; preds = %121, %133, %138, %78
  %145 = phi i32 [ %88, %78 ], [ %122, %138 ], [ %95, %133 ], [ %95, %121 ]
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %146
  store i32 %81, ptr %147, align 4, !tbaa !81
  %148 = add nsw i64 %79, -1
  %149 = icmp sgt i64 %79, 1
  br i1 %149, label %78, label %75, !llvm.loop !86

150:                                              ; preds = %75, %302
  %151 = phi i64 [ %77, %75 ], [ %246, %302 ]
  %152 = load i32, ptr %76, align 4, !tbaa !81
  %153 = load i32, ptr %10, align 4, !tbaa !79
  %154 = add nsw i32 %153, -1
  store i32 %154, ptr %10, align 4, !tbaa !79
  %155 = sext i32 %153 to i64
  %156 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %155
  %157 = load i32, ptr %156, align 4, !tbaa !81
  store i32 %157, ptr %76, align 4, !tbaa !81
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 47, i64 %158
  %160 = icmp slt i32 %153, 3
  br i1 %160, label %215, label %161

161:                                              ; preds = %150
  %162 = getelementptr inbounds %struct.ct_data_s, ptr %4, i64 %158
  br label %163

163:                                              ; preds = %209, %161
  %164 = phi i32 [ %154, %161 ], [ %213, %209 ]
  %165 = phi i32 [ 2, %161 ], [ %212, %209 ]
  %166 = phi i32 [ 1, %161 ], [ %193, %209 ]
  %167 = icmp slt i32 %165, %164
  br i1 %167, label %168, label %192

168:                                              ; preds = %163
  %169 = or disjoint i32 %165, 1
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %170
  %172 = load i32, ptr %171, align 4, !tbaa !81
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.ct_data_s, ptr %4, i64 %173
  %175 = load i16, ptr %174, align 2, !tbaa !50
  %176 = sext i32 %165 to i64
  %177 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %176
  %178 = load i32, ptr %177, align 4, !tbaa !81
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.ct_data_s, ptr %4, i64 %179
  %181 = load i16, ptr %180, align 2, !tbaa !50
  %182 = icmp ult i16 %175, %181
  br i1 %182, label %191, label %183

183:                                              ; preds = %168
  %184 = icmp eq i16 %175, %181
  br i1 %184, label %185, label %192

185:                                              ; preds = %183
  %186 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 47, i64 %173
  %187 = load i8, ptr %186, align 1, !tbaa !50
  %188 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 47, i64 %179
  %189 = load i8, ptr %188, align 1, !tbaa !50
  %190 = icmp ugt i8 %187, %189
  br i1 %190, label %192, label %191

191:                                              ; preds = %185, %168
  br label %192

192:                                              ; preds = %191, %185, %183, %163
  %193 = phi i32 [ %169, %191 ], [ %165, %185 ], [ %165, %183 ], [ %165, %163 ]
  %194 = load i16, ptr %162, align 2, !tbaa !50
  %195 = sext i32 %193 to i64
  %196 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %195
  %197 = load i32, ptr %196, align 4, !tbaa !81
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.ct_data_s, ptr %4, i64 %198
  %200 = load i16, ptr %199, align 2, !tbaa !50
  %201 = icmp ult i16 %194, %200
  br i1 %201, label %215, label %202

202:                                              ; preds = %192
  %203 = icmp eq i16 %194, %200
  br i1 %203, label %204, label %209

204:                                              ; preds = %202
  %205 = load i8, ptr %159, align 1, !tbaa !50
  %206 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 47, i64 %198
  %207 = load i8, ptr %206, align 1, !tbaa !50
  %208 = icmp ugt i8 %205, %207
  br i1 %208, label %209, label %215

209:                                              ; preds = %204, %202
  %210 = sext i32 %166 to i64
  %211 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %210
  store i32 %197, ptr %211, align 4, !tbaa !81
  %212 = shl i32 %193, 1
  %213 = load i32, ptr %10, align 4, !tbaa !79
  %214 = icmp sgt i32 %212, %213
  br i1 %214, label %215, label %163, !llvm.loop !85

215:                                              ; preds = %192, %204, %209, %150
  %216 = phi i32 [ 1, %150 ], [ %193, %209 ], [ %166, %204 ], [ %166, %192 ]
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %217
  store i32 %157, ptr %218, align 4, !tbaa !81
  %219 = load i32, ptr %76, align 4, !tbaa !81
  %220 = load i32, ptr %11, align 8, !tbaa !80
  %221 = add nsw i32 %220, -1
  store i32 %221, ptr %11, align 8, !tbaa !80
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %222
  store i32 %152, ptr %223, align 4, !tbaa !81
  %224 = load i32, ptr %11, align 8, !tbaa !80
  %225 = add nsw i32 %224, -1
  store i32 %225, ptr %11, align 8, !tbaa !80
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %226
  store i32 %219, ptr %227, align 4, !tbaa !81
  %228 = sext i32 %152 to i64
  %229 = getelementptr inbounds %struct.ct_data_s, ptr %4, i64 %228
  %230 = load i16, ptr %229, align 2, !tbaa !50
  %231 = sext i32 %219 to i64
  %232 = getelementptr inbounds %struct.ct_data_s, ptr %4, i64 %231
  %233 = load i16, ptr %232, align 2, !tbaa !50
  %234 = add i16 %233, %230
  %235 = getelementptr inbounds %struct.ct_data_s, ptr %4, i64 %151
  store i16 %234, ptr %235, align 2, !tbaa !50
  %236 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 47, i64 %228
  %237 = load i8, ptr %236, align 1, !tbaa !50
  %238 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 47, i64 %231
  %239 = load i8, ptr %238, align 1, !tbaa !50
  %240 = tail call i8 @llvm.umax.i8(i8 %237, i8 %239)
  %241 = add i8 %240, 1
  %242 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 47, i64 %151
  store i8 %241, ptr %242, align 1, !tbaa !50
  %243 = trunc i64 %151 to i16
  %244 = getelementptr inbounds %struct.ct_data_s, ptr %4, i64 %231, i32 1
  store i16 %243, ptr %244, align 2, !tbaa !50
  %245 = getelementptr inbounds %struct.ct_data_s, ptr %4, i64 %228, i32 1
  store i16 %243, ptr %245, align 2, !tbaa !50
  %246 = add i64 %151, 1
  %247 = trunc i64 %151 to i32
  store i32 %247, ptr %76, align 4, !tbaa !81
  %248 = load i32, ptr %10, align 4, !tbaa !79
  %249 = icmp slt i32 %248, 2
  br i1 %249, label %302, label %250

250:                                              ; preds = %215, %296
  %251 = phi i32 [ %300, %296 ], [ %248, %215 ]
  %252 = phi i32 [ %299, %296 ], [ 2, %215 ]
  %253 = phi i32 [ %280, %296 ], [ 1, %215 ]
  %254 = icmp slt i32 %252, %251
  br i1 %254, label %255, label %279

255:                                              ; preds = %250
  %256 = or disjoint i32 %252, 1
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %257
  %259 = load i32, ptr %258, align 4, !tbaa !81
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds %struct.ct_data_s, ptr %4, i64 %260
  %262 = load i16, ptr %261, align 2, !tbaa !50
  %263 = sext i32 %252 to i64
  %264 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %263
  %265 = load i32, ptr %264, align 4, !tbaa !81
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds %struct.ct_data_s, ptr %4, i64 %266
  %268 = load i16, ptr %267, align 2, !tbaa !50
  %269 = icmp ult i16 %262, %268
  br i1 %269, label %278, label %270

270:                                              ; preds = %255
  %271 = icmp eq i16 %262, %268
  br i1 %271, label %272, label %279

272:                                              ; preds = %270
  %273 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 47, i64 %260
  %274 = load i8, ptr %273, align 1, !tbaa !50
  %275 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 47, i64 %266
  %276 = load i8, ptr %275, align 1, !tbaa !50
  %277 = icmp ugt i8 %274, %276
  br i1 %277, label %279, label %278

278:                                              ; preds = %272, %255
  br label %279

279:                                              ; preds = %278, %272, %270, %250
  %280 = phi i32 [ %256, %278 ], [ %252, %272 ], [ %252, %270 ], [ %252, %250 ]
  %281 = load i16, ptr %235, align 2, !tbaa !50
  %282 = sext i32 %280 to i64
  %283 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %282
  %284 = load i32, ptr %283, align 4, !tbaa !81
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds %struct.ct_data_s, ptr %4, i64 %285
  %287 = load i16, ptr %286, align 2, !tbaa !50
  %288 = icmp ult i16 %281, %287
  br i1 %288, label %302, label %289

289:                                              ; preds = %279
  %290 = icmp eq i16 %281, %287
  br i1 %290, label %291, label %296

291:                                              ; preds = %289
  %292 = load i8, ptr %242, align 1, !tbaa !50
  %293 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 47, i64 %285
  %294 = load i8, ptr %293, align 1, !tbaa !50
  %295 = icmp ugt i8 %292, %294
  br i1 %295, label %296, label %302

296:                                              ; preds = %291, %289
  %297 = sext i32 %253 to i64
  %298 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %297
  store i32 %284, ptr %298, align 4, !tbaa !81
  %299 = shl i32 %280, 1
  %300 = load i32, ptr %10, align 4, !tbaa !79
  %301 = icmp sgt i32 %299, %300
  br i1 %301, label %302, label %250, !llvm.loop !85

302:                                              ; preds = %279, %291, %296, %215
  %303 = phi i32 [ 1, %215 ], [ %280, %296 ], [ %253, %291 ], [ %253, %279 ]
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %304
  %306 = trunc i64 %151 to i32
  store i32 %306, ptr %305, align 4, !tbaa !81
  %307 = load i32, ptr %10, align 4, !tbaa !79
  %308 = icmp sgt i32 %307, 1
  br i1 %308, label %150, label %309, !llvm.loop !87

309:                                              ; preds = %302
  %310 = load i32, ptr %76, align 4, !tbaa !81
  %311 = load i32, ptr %11, align 8, !tbaa !80
  %312 = add nsw i32 %311, -1
  store i32 %312, ptr %11, align 8, !tbaa !80
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %313
  store i32 %310, ptr %314, align 4, !tbaa !81
  %315 = load ptr, ptr %1, align 8, !tbaa !74
  %316 = load i32, ptr %70, align 8, !tbaa !84
  %317 = load ptr, ptr %5, align 8, !tbaa !75
  %318 = load ptr, ptr %317, align 8, !tbaa !76
  %319 = getelementptr inbounds %struct.static_tree_desc_s, ptr %317, i64 0, i32 1
  %320 = load ptr, ptr %319, align 8, !tbaa !88
  %321 = getelementptr inbounds %struct.static_tree_desc_s, ptr %317, i64 0, i32 2
  %322 = load i32, ptr %321, align 8, !tbaa !89
  %323 = getelementptr inbounds %struct.static_tree_desc_s, ptr %317, i64 0, i32 4
  %324 = load i32, ptr %323, align 8, !tbaa !90
  %325 = getelementptr i8, ptr %0, i64 2960
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %325, i8 0, i64 32, i1 false), !tbaa !91
  %326 = load i32, ptr %11, align 8, !tbaa !80
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %327
  %329 = load i32, ptr %328, align 4, !tbaa !81
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds %struct.ct_data_s, ptr %315, i64 %330, i32 1
  store i16 0, ptr %331, align 2, !tbaa !50
  %332 = load i32, ptr %11, align 8, !tbaa !80
  %333 = add nsw i32 %332, 1
  %334 = icmp slt i32 %332, 572
  br i1 %334, label %335, label %394

335:                                              ; preds = %309
  %336 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 52
  %337 = icmp eq ptr %318, null
  %338 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 53
  %339 = sext i32 %332 to i64
  %340 = add nsw i64 %339, 1
  br label %341

341:                                              ; preds = %335, %390
  %342 = phi i64 [ %340, %335 ], [ %391, %390 ]
  %343 = phi i32 [ 0, %335 ], [ %358, %390 ]
  %344 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %342
  %345 = load i32, ptr %344, align 4, !tbaa !81
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds %struct.ct_data_s, ptr %315, i64 %346
  %348 = getelementptr inbounds %struct.ct_data_s, ptr %315, i64 %346, i32 1
  %349 = load i16, ptr %348, align 2, !tbaa !50
  %350 = zext i16 %349 to i64
  %351 = getelementptr inbounds %struct.ct_data_s, ptr %315, i64 %350, i32 1
  %352 = load i16, ptr %351, align 2, !tbaa !50
  %353 = zext i16 %352 to i32
  %354 = add nuw nsw i32 %353, 1
  %355 = icmp sle i32 %324, %353
  %356 = select i1 %355, i32 %324, i32 %354
  %357 = zext i1 %355 to i32
  %358 = add nuw nsw i32 %343, %357
  %359 = trunc i32 %356 to i16
  store i16 %359, ptr %348, align 2, !tbaa !50
  %360 = icmp sgt i32 %345, %316
  br i1 %360, label %390, label %361

361:                                              ; preds = %341
  %362 = sext i32 %356 to i64
  %363 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 43, i64 %362
  %364 = load i16, ptr %363, align 2, !tbaa !91
  %365 = add i16 %364, 1
  store i16 %365, ptr %363, align 2, !tbaa !91
  %366 = icmp slt i32 %345, %322
  br i1 %366, label %372, label %367

367:                                              ; preds = %361
  %368 = sub nsw i32 %345, %322
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds i32, ptr %320, i64 %369
  %371 = load i32, ptr %370, align 4, !tbaa !81
  br label %372

372:                                              ; preds = %367, %361
  %373 = phi i32 [ %371, %367 ], [ 0, %361 ]
  %374 = load i16, ptr %347, align 2, !tbaa !50
  %375 = zext i16 %374 to i64
  %376 = add nsw i32 %373, %356
  %377 = sext i32 %376 to i64
  %378 = mul nsw i64 %375, %377
  %379 = load i64, ptr %336, align 8, !tbaa !70
  %380 = add i64 %378, %379
  store i64 %380, ptr %336, align 8, !tbaa !70
  br i1 %337, label %390, label %381

381:                                              ; preds = %372
  %382 = getelementptr inbounds %struct.ct_data_s, ptr %318, i64 %346, i32 1
  %383 = load i16, ptr %382, align 2, !tbaa !50
  %384 = zext i16 %383 to i32
  %385 = add nsw i32 %373, %384
  %386 = sext i32 %385 to i64
  %387 = mul nsw i64 %386, %375
  %388 = load i64, ptr %338, align 8, !tbaa !71
  %389 = add i64 %387, %388
  store i64 %389, ptr %338, align 8, !tbaa !71
  br label %390

390:                                              ; preds = %381, %372, %341
  %391 = add nsw i64 %342, 1
  %392 = and i64 %391, 4294967295
  %393 = icmp eq i64 %392, 573
  br i1 %393, label %394, label %341, !llvm.loop !92

394:                                              ; preds = %390, %309
  %395 = phi i32 [ 0, %309 ], [ %358, %390 ]
  %396 = phi i32 [ %333, %309 ], [ 573, %390 ]
  %397 = icmp eq i32 %395, 0
  br i1 %397, label %468, label %398

398:                                              ; preds = %394
  %399 = sext i32 %324 to i64
  %400 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 43, i64 %399
  %401 = sext i32 %324 to i64
  br label %402

402:                                              ; preds = %398, %410
  %403 = phi i32 [ %420, %410 ], [ %395, %398 ]
  br label %404

404:                                              ; preds = %404, %402
  %405 = phi i64 [ %406, %404 ], [ %401, %402 ]
  %406 = add i64 %405, -1
  %407 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 43, i64 %406
  %408 = load i16, ptr %407, align 2, !tbaa !91
  %409 = icmp eq i16 %408, 0
  br i1 %409, label %404, label %410, !llvm.loop !93

410:                                              ; preds = %404
  %411 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 43, i64 %406
  %412 = add i16 %408, -1
  store i16 %412, ptr %411, align 2, !tbaa !91
  %413 = shl i64 %405, 32
  %414 = ashr exact i64 %413, 32
  %415 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 43, i64 %414
  %416 = load i16, ptr %415, align 2, !tbaa !91
  %417 = add i16 %416, 2
  store i16 %417, ptr %415, align 2, !tbaa !91
  %418 = load i16, ptr %400, align 2, !tbaa !91
  %419 = add i16 %418, -1
  store i16 %419, ptr %400, align 2, !tbaa !91
  %420 = add nsw i32 %403, -2
  %421 = icmp sgt i32 %403, 2
  br i1 %421, label %402, label %422, !llvm.loop !94

422:                                              ; preds = %410
  %423 = icmp eq i32 %324, 0
  br i1 %423, label %468, label %424

424:                                              ; preds = %422
  %425 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 52
  br label %426

426:                                              ; preds = %424, %464
  %427 = phi i64 [ %401, %424 ], [ %465, %464 ]
  %428 = phi i32 [ %396, %424 ], [ %436, %464 ]
  %429 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 43, i64 %427
  %430 = load i16, ptr %429, align 2, !tbaa !91
  %431 = zext i16 %430 to i32
  %432 = trunc i64 %427 to i16
  %433 = trunc i64 %427 to i32
  br label %434

434:                                              ; preds = %462, %426
  %435 = phi i32 [ %463, %462 ], [ %431, %426 ]
  %436 = phi i32 [ %447, %462 ], [ %428, %426 ]
  %437 = icmp eq i32 %435, 0
  %438 = sext i32 %436 to i64
  br label %439

439:                                              ; preds = %434, %441
  %440 = phi i64 [ %438, %434 ], [ %442, %441 ]
  br i1 %437, label %464, label %441

441:                                              ; preds = %439
  %442 = add i64 %440, -1
  %443 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %442
  %444 = load i32, ptr %443, align 4, !tbaa !81
  %445 = icmp sgt i32 %444, %316
  br i1 %445, label %439, label %446, !llvm.loop !95

446:                                              ; preds = %441
  %447 = trunc i64 %442 to i32
  %448 = sext i32 %444 to i64
  %449 = getelementptr inbounds %struct.ct_data_s, ptr %315, i64 %448, i32 1
  %450 = load i16, ptr %449, align 2, !tbaa !50
  %451 = zext i16 %450 to i32
  %452 = icmp eq i32 %433, %451
  br i1 %452, label %462, label %453

453:                                              ; preds = %446
  %454 = getelementptr inbounds %struct.ct_data_s, ptr %315, i64 %448
  %455 = zext i16 %450 to i64
  %456 = sub nsw i64 %427, %455
  %457 = load i16, ptr %454, align 2, !tbaa !50
  %458 = zext i16 %457 to i64
  %459 = mul nsw i64 %456, %458
  %460 = load i64, ptr %425, align 8, !tbaa !70
  %461 = add i64 %459, %460
  store i64 %461, ptr %425, align 8, !tbaa !70
  store i16 %432, ptr %449, align 2, !tbaa !50
  br label %462

462:                                              ; preds = %453, %446
  %463 = add nsw i32 %435, -1
  br label %434, !llvm.loop !95

464:                                              ; preds = %439
  %465 = add nsw i64 %427, -1
  %466 = and i64 %465, 4294967295
  %467 = icmp eq i64 %466, 0
  br i1 %467, label %468, label %426, !llvm.loop !96

468:                                              ; preds = %464, %422, %394
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #7
  %469 = getelementptr i8, ptr %0, i64 2958
  br label %475

470:                                              ; preds = %475
  %471 = icmp slt i32 %68, 0
  br i1 %471, label %516, label %472

472:                                              ; preds = %470
  %473 = add nuw i32 %68, 1
  %474 = zext i32 %473 to i64
  br label %488

475:                                              ; preds = %468, %475
  %476 = phi i64 [ 1, %468 ], [ %486, %475 ]
  %477 = phi i32 [ 0, %468 ], [ %483, %475 ]
  %478 = and i32 %477, 65534
  %479 = getelementptr i16, ptr %469, i64 %476
  %480 = load i16, ptr %479, align 2, !tbaa !91
  %481 = zext i16 %480 to i32
  %482 = add nuw nsw i32 %478, %481
  %483 = shl nuw nsw i32 %482, 1
  %484 = trunc i32 %483 to i16
  %485 = getelementptr inbounds [16 x i16], ptr %3, i64 0, i64 %476
  store i16 %484, ptr %485, align 2, !tbaa !91
  %486 = add nuw nsw i64 %476, 1
  %487 = icmp eq i64 %486, 16
  br i1 %487, label %470, label %475, !llvm.loop !97

488:                                              ; preds = %472, %513
  %489 = phi i64 [ 0, %472 ], [ %514, %513 ]
  %490 = getelementptr inbounds %struct.ct_data_s, ptr %4, i64 %489, i32 1
  %491 = load i16, ptr %490, align 2, !tbaa !50
  %492 = icmp eq i16 %491, 0
  br i1 %492, label %513, label %493

493:                                              ; preds = %488
  %494 = zext i16 %491 to i32
  %495 = zext i16 %491 to i64
  %496 = getelementptr inbounds [16 x i16], ptr %3, i64 0, i64 %495
  %497 = load i16, ptr %496, align 2, !tbaa !91
  %498 = add i16 %497, 1
  store i16 %498, ptr %496, align 2, !tbaa !91
  %499 = zext i16 %497 to i32
  br label %500

500:                                              ; preds = %500, %493
  %501 = phi i32 [ %499, %493 ], [ %506, %500 ]
  %502 = phi i32 [ %494, %493 ], [ %508, %500 ]
  %503 = phi i32 [ 0, %493 ], [ %507, %500 ]
  %504 = and i32 %501, 1
  %505 = or disjoint i32 %503, %504
  %506 = lshr i32 %501, 1
  %507 = shl i32 %505, 1
  %508 = add nsw i32 %502, -1
  %509 = icmp sgt i32 %502, 1
  br i1 %509, label %500, label %510, !llvm.loop !98

510:                                              ; preds = %500
  %511 = getelementptr inbounds %struct.ct_data_s, ptr %4, i64 %489
  %512 = trunc i32 %505 to i16
  store i16 %512, ptr %511, align 2, !tbaa !50
  br label %513

513:                                              ; preds = %510, %488
  %514 = add nuw nsw i64 %489, 1
  %515 = icmp eq i64 %514, %474
  br i1 %515, label %516, label %488, !llvm.loop !99

516:                                              ; preds = %513, %470
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #7
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @compress_block(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 50
  %5 = load i32, ptr %4, align 4, !tbaa !56
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %272, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 51
  %9 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 48
  %10 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 57
  %11 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %12 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %13 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %14 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 5
  %15 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %16 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %17 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %18 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 5
  %19 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %20 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %21 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %22 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 5
  %23 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %24 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %25 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %26 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 5
  %27 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 57
  %28 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %29 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %30 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %31 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 5
  br label %32

32:                                               ; preds = %7, %268
  %33 = phi i64 [ 0, %7 ], [ %39, %268 ]
  %34 = load ptr, ptr %8, align 8, !tbaa !100
  %35 = getelementptr inbounds i16, ptr %34, i64 %33
  %36 = load i16, ptr %35, align 2, !tbaa !91
  %37 = zext i16 %36 to i32
  %38 = load ptr, ptr %9, align 8, !tbaa !101
  %39 = add nuw nsw i64 %33, 1
  %40 = getelementptr inbounds i8, ptr %38, i64 %33
  %41 = load i8, ptr %40, align 1, !tbaa !50
  %42 = zext i8 %41 to i32
  %43 = icmp eq i16 %36, 0
  %44 = zext i8 %41 to i64
  br i1 %43, label %45, label %86

45:                                               ; preds = %32
  %46 = getelementptr inbounds %struct.ct_data_s, ptr %1, i64 %44
  %47 = getelementptr inbounds %struct.ct_data_s, ptr %1, i64 %44, i32 1
  %48 = load i16, ptr %47, align 2, !tbaa !50
  %49 = zext i16 %48 to i32
  %50 = load i32, ptr %27, align 4, !tbaa !49
  %51 = sub nsw i32 16, %49
  %52 = icmp sgt i32 %50, %51
  %53 = load i16, ptr %46, align 2, !tbaa !50
  %54 = zext i16 %53 to i32
  %55 = shl i32 %54, %50
  %56 = trunc i32 %55 to i16
  br i1 %52, label %57, label %80

57:                                               ; preds = %45
  %58 = load i16, ptr %29, align 8, !tbaa !48
  %59 = or i16 %58, %56
  store i16 %59, ptr %29, align 8, !tbaa !48
  %60 = trunc i16 %59 to i8
  %61 = load ptr, ptr %30, align 8, !tbaa !57
  %62 = load i32, ptr %31, align 8, !tbaa !58
  %63 = add i32 %62, 1
  store i32 %63, ptr %31, align 8, !tbaa !58
  %64 = zext i32 %62 to i64
  %65 = getelementptr inbounds i8, ptr %61, i64 %64
  store i8 %60, ptr %65, align 1, !tbaa !50
  %66 = load i16, ptr %29, align 8, !tbaa !48
  %67 = lshr i16 %66, 8
  %68 = trunc i16 %67 to i8
  %69 = load ptr, ptr %30, align 8, !tbaa !57
  %70 = load i32, ptr %31, align 8, !tbaa !58
  %71 = add i32 %70, 1
  store i32 %71, ptr %31, align 8, !tbaa !58
  %72 = zext i32 %70 to i64
  %73 = getelementptr inbounds i8, ptr %69, i64 %72
  store i8 %68, ptr %73, align 1, !tbaa !50
  %74 = load i32, ptr %27, align 4, !tbaa !49
  %75 = sub nsw i32 16, %74
  %76 = lshr i32 %54, %75
  %77 = trunc i32 %76 to i16
  store i16 %77, ptr %29, align 8, !tbaa !48
  %78 = add nsw i32 %49, -16
  %79 = add nsw i32 %78, %74
  br label %84

80:                                               ; preds = %45
  %81 = load i16, ptr %28, align 8, !tbaa !48
  %82 = or i16 %81, %56
  store i16 %82, ptr %28, align 8, !tbaa !48
  %83 = add nsw i32 %50, %49
  br label %84

84:                                               ; preds = %80, %57
  %85 = phi i32 [ %83, %80 ], [ %79, %57 ]
  store i32 %85, ptr %27, align 4, !tbaa !49
  br label %268

86:                                               ; preds = %32
  %87 = getelementptr inbounds [256 x i8], ptr @_length_code, i64 0, i64 %44
  %88 = load i8, ptr %87, align 1, !tbaa !50
  %89 = zext i8 %88 to i64
  %90 = getelementptr %struct.ct_data_s, ptr %1, i64 %89
  %91 = getelementptr %struct.ct_data_s, ptr %90, i64 257
  %92 = getelementptr %struct.ct_data_s, ptr %90, i64 257, i32 1
  %93 = load i16, ptr %92, align 2, !tbaa !50
  %94 = zext i16 %93 to i32
  %95 = load i32, ptr %10, align 4, !tbaa !49
  %96 = sub nsw i32 16, %94
  %97 = icmp sgt i32 %95, %96
  %98 = load i16, ptr %91, align 2, !tbaa !50
  %99 = zext i16 %98 to i32
  %100 = shl i32 %99, %95
  %101 = trunc i32 %100 to i16
  br i1 %97, label %102, label %125

102:                                              ; preds = %86
  %103 = load i16, ptr %12, align 8, !tbaa !48
  %104 = or i16 %103, %101
  store i16 %104, ptr %12, align 8, !tbaa !48
  %105 = trunc i16 %104 to i8
  %106 = load ptr, ptr %13, align 8, !tbaa !57
  %107 = load i32, ptr %14, align 8, !tbaa !58
  %108 = add i32 %107, 1
  store i32 %108, ptr %14, align 8, !tbaa !58
  %109 = zext i32 %107 to i64
  %110 = getelementptr inbounds i8, ptr %106, i64 %109
  store i8 %105, ptr %110, align 1, !tbaa !50
  %111 = load i16, ptr %12, align 8, !tbaa !48
  %112 = lshr i16 %111, 8
  %113 = trunc i16 %112 to i8
  %114 = load ptr, ptr %13, align 8, !tbaa !57
  %115 = load i32, ptr %14, align 8, !tbaa !58
  %116 = add i32 %115, 1
  store i32 %116, ptr %14, align 8, !tbaa !58
  %117 = zext i32 %115 to i64
  %118 = getelementptr inbounds i8, ptr %114, i64 %117
  store i8 %113, ptr %118, align 1, !tbaa !50
  %119 = load i32, ptr %10, align 4, !tbaa !49
  %120 = sub nsw i32 16, %119
  %121 = lshr i32 %99, %120
  %122 = trunc i32 %121 to i16
  store i16 %122, ptr %12, align 8, !tbaa !48
  %123 = add nsw i32 %94, -16
  %124 = add nsw i32 %123, %119
  br label %129

125:                                              ; preds = %86
  %126 = load i16, ptr %11, align 8, !tbaa !48
  %127 = or i16 %126, %101
  store i16 %127, ptr %11, align 8, !tbaa !48
  %128 = add nsw i32 %95, %94
  br label %129

129:                                              ; preds = %125, %102
  %130 = phi i32 [ %128, %125 ], [ %124, %102 ]
  store i32 %130, ptr %10, align 4, !tbaa !49
  %131 = getelementptr inbounds [29 x i32], ptr @extra_lbits, i64 0, i64 %89
  %132 = load i32, ptr %131, align 4, !tbaa !81
  %133 = add nsw i64 %89, -28
  %134 = icmp ult i64 %133, -20
  br i1 %134, label %175, label %135

135:                                              ; preds = %129
  %136 = getelementptr inbounds [29 x i32], ptr @base_length, i64 0, i64 %89
  %137 = load i32, ptr %136, align 4, !tbaa !81
  %138 = sub nsw i32 %42, %137
  %139 = sub nsw i32 16, %132
  %140 = icmp sgt i32 %130, %139
  br i1 %140, label %141, label %167

141:                                              ; preds = %135
  %142 = and i32 %138, 65535
  %143 = shl i32 %138, %130
  %144 = load i16, ptr %16, align 8, !tbaa !48
  %145 = trunc i32 %143 to i16
  %146 = or i16 %144, %145
  store i16 %146, ptr %16, align 8, !tbaa !48
  %147 = trunc i16 %146 to i8
  %148 = load ptr, ptr %17, align 8, !tbaa !57
  %149 = load i32, ptr %18, align 8, !tbaa !58
  %150 = add i32 %149, 1
  store i32 %150, ptr %18, align 8, !tbaa !58
  %151 = zext i32 %149 to i64
  %152 = getelementptr inbounds i8, ptr %148, i64 %151
  store i8 %147, ptr %152, align 1, !tbaa !50
  %153 = load i16, ptr %16, align 8, !tbaa !48
  %154 = lshr i16 %153, 8
  %155 = trunc i16 %154 to i8
  %156 = load ptr, ptr %17, align 8, !tbaa !57
  %157 = load i32, ptr %18, align 8, !tbaa !58
  %158 = add i32 %157, 1
  store i32 %158, ptr %18, align 8, !tbaa !58
  %159 = zext i32 %157 to i64
  %160 = getelementptr inbounds i8, ptr %156, i64 %159
  store i8 %155, ptr %160, align 1, !tbaa !50
  %161 = load i32, ptr %10, align 4, !tbaa !49
  %162 = sub nsw i32 16, %161
  %163 = lshr i32 %142, %162
  %164 = trunc i32 %163 to i16
  store i16 %164, ptr %16, align 8, !tbaa !48
  %165 = add nsw i32 %132, -16
  %166 = add nsw i32 %165, %161
  br label %173

167:                                              ; preds = %135
  %168 = shl i32 %138, %130
  %169 = load i16, ptr %15, align 8, !tbaa !48
  %170 = trunc i32 %168 to i16
  %171 = or i16 %169, %170
  store i16 %171, ptr %15, align 8, !tbaa !48
  %172 = add nsw i32 %132, %130
  br label %173

173:                                              ; preds = %167, %141
  %174 = phi i32 [ %172, %167 ], [ %166, %141 ]
  store i32 %174, ptr %10, align 4, !tbaa !49
  br label %175

175:                                              ; preds = %173, %129
  %176 = add nsw i32 %37, -1
  %177 = icmp ult i16 %36, 257
  %178 = lshr i32 %176, 7
  %179 = add nuw nsw i32 %178, 256
  %180 = select i1 %177, i32 %176, i32 %179
  %181 = zext i32 %180 to i64
  %182 = getelementptr inbounds [512 x i8], ptr @_dist_code, i64 0, i64 %181
  %183 = load i8, ptr %182, align 1, !tbaa !50
  %184 = zext i8 %183 to i64
  %185 = getelementptr inbounds %struct.ct_data_s, ptr %2, i64 %184
  %186 = getelementptr inbounds %struct.ct_data_s, ptr %2, i64 %184, i32 1
  %187 = load i16, ptr %186, align 2, !tbaa !50
  %188 = zext i16 %187 to i32
  %189 = load i32, ptr %10, align 4, !tbaa !49
  %190 = sub nsw i32 16, %188
  %191 = icmp sgt i32 %189, %190
  %192 = load i16, ptr %185, align 2, !tbaa !50
  %193 = zext i16 %192 to i32
  %194 = shl i32 %193, %189
  %195 = trunc i32 %194 to i16
  br i1 %191, label %196, label %219

196:                                              ; preds = %175
  %197 = load i16, ptr %20, align 8, !tbaa !48
  %198 = or i16 %197, %195
  store i16 %198, ptr %20, align 8, !tbaa !48
  %199 = trunc i16 %198 to i8
  %200 = load ptr, ptr %21, align 8, !tbaa !57
  %201 = load i32, ptr %22, align 8, !tbaa !58
  %202 = add i32 %201, 1
  store i32 %202, ptr %22, align 8, !tbaa !58
  %203 = zext i32 %201 to i64
  %204 = getelementptr inbounds i8, ptr %200, i64 %203
  store i8 %199, ptr %204, align 1, !tbaa !50
  %205 = load i16, ptr %20, align 8, !tbaa !48
  %206 = lshr i16 %205, 8
  %207 = trunc i16 %206 to i8
  %208 = load ptr, ptr %21, align 8, !tbaa !57
  %209 = load i32, ptr %22, align 8, !tbaa !58
  %210 = add i32 %209, 1
  store i32 %210, ptr %22, align 8, !tbaa !58
  %211 = zext i32 %209 to i64
  %212 = getelementptr inbounds i8, ptr %208, i64 %211
  store i8 %207, ptr %212, align 1, !tbaa !50
  %213 = load i32, ptr %10, align 4, !tbaa !49
  %214 = sub nsw i32 16, %213
  %215 = lshr i32 %193, %214
  %216 = trunc i32 %215 to i16
  store i16 %216, ptr %20, align 8, !tbaa !48
  %217 = add nsw i32 %188, -16
  %218 = add nsw i32 %217, %213
  br label %223

219:                                              ; preds = %175
  %220 = load i16, ptr %19, align 8, !tbaa !48
  %221 = or i16 %220, %195
  store i16 %221, ptr %19, align 8, !tbaa !48
  %222 = add nsw i32 %189, %188
  br label %223

223:                                              ; preds = %219, %196
  %224 = phi i32 [ %222, %219 ], [ %218, %196 ]
  store i32 %224, ptr %10, align 4, !tbaa !49
  %225 = getelementptr inbounds [30 x i32], ptr @extra_dbits, i64 0, i64 %184
  %226 = load i32, ptr %225, align 4, !tbaa !81
  %227 = icmp ult i8 %183, 4
  br i1 %227, label %268, label %228

228:                                              ; preds = %223
  %229 = getelementptr inbounds [30 x i32], ptr @base_dist, i64 0, i64 %184
  %230 = load i32, ptr %229, align 4, !tbaa !81
  %231 = sub i32 %176, %230
  %232 = sub nsw i32 16, %226
  %233 = icmp sgt i32 %224, %232
  br i1 %233, label %234, label %260

234:                                              ; preds = %228
  %235 = and i32 %231, 65535
  %236 = shl i32 %231, %224
  %237 = load i16, ptr %24, align 8, !tbaa !48
  %238 = trunc i32 %236 to i16
  %239 = or i16 %237, %238
  store i16 %239, ptr %24, align 8, !tbaa !48
  %240 = trunc i16 %239 to i8
  %241 = load ptr, ptr %25, align 8, !tbaa !57
  %242 = load i32, ptr %26, align 8, !tbaa !58
  %243 = add i32 %242, 1
  store i32 %243, ptr %26, align 8, !tbaa !58
  %244 = zext i32 %242 to i64
  %245 = getelementptr inbounds i8, ptr %241, i64 %244
  store i8 %240, ptr %245, align 1, !tbaa !50
  %246 = load i16, ptr %24, align 8, !tbaa !48
  %247 = lshr i16 %246, 8
  %248 = trunc i16 %247 to i8
  %249 = load ptr, ptr %25, align 8, !tbaa !57
  %250 = load i32, ptr %26, align 8, !tbaa !58
  %251 = add i32 %250, 1
  store i32 %251, ptr %26, align 8, !tbaa !58
  %252 = zext i32 %250 to i64
  %253 = getelementptr inbounds i8, ptr %249, i64 %252
  store i8 %248, ptr %253, align 1, !tbaa !50
  %254 = load i32, ptr %10, align 4, !tbaa !49
  %255 = sub nsw i32 16, %254
  %256 = lshr i32 %235, %255
  %257 = trunc i32 %256 to i16
  store i16 %257, ptr %24, align 8, !tbaa !48
  %258 = add nsw i32 %226, -16
  %259 = add nsw i32 %258, %254
  br label %266

260:                                              ; preds = %228
  %261 = shl i32 %231, %224
  %262 = load i16, ptr %23, align 8, !tbaa !48
  %263 = trunc i32 %261 to i16
  %264 = or i16 %262, %263
  store i16 %264, ptr %23, align 8, !tbaa !48
  %265 = add nsw i32 %226, %224
  br label %266

266:                                              ; preds = %260, %234
  %267 = phi i32 [ %265, %260 ], [ %259, %234 ]
  store i32 %267, ptr %10, align 4, !tbaa !49
  br label %268

268:                                              ; preds = %84, %266, %223
  %269 = load i32, ptr %4, align 4, !tbaa !56
  %270 = zext i32 %269 to i64
  %271 = icmp ult i64 %39, %270
  br i1 %271, label %32, label %272, !llvm.loop !102

272:                                              ; preds = %268, %3
  %273 = getelementptr inbounds %struct.ct_data_s, ptr %1, i64 256
  %274 = getelementptr inbounds %struct.ct_data_s, ptr %1, i64 256, i32 1
  %275 = load i16, ptr %274, align 2, !tbaa !50
  %276 = zext i16 %275 to i32
  %277 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 57
  %278 = load i32, ptr %277, align 4, !tbaa !49
  %279 = sub nsw i32 16, %276
  %280 = icmp sgt i32 %278, %279
  %281 = load i16, ptr %273, align 2, !tbaa !50
  %282 = zext i16 %281 to i32
  %283 = shl i32 %282, %278
  %284 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %285 = load i16, ptr %284, align 8, !tbaa !48
  %286 = trunc i32 %283 to i16
  %287 = or i16 %285, %286
  store i16 %287, ptr %284, align 8, !tbaa !48
  br i1 %280, label %288, label %311

288:                                              ; preds = %272
  %289 = trunc i16 %287 to i8
  %290 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %291 = load ptr, ptr %290, align 8, !tbaa !57
  %292 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 5
  %293 = load i32, ptr %292, align 8, !tbaa !58
  %294 = add i32 %293, 1
  store i32 %294, ptr %292, align 8, !tbaa !58
  %295 = zext i32 %293 to i64
  %296 = getelementptr inbounds i8, ptr %291, i64 %295
  store i8 %289, ptr %296, align 1, !tbaa !50
  %297 = load i16, ptr %284, align 8, !tbaa !48
  %298 = lshr i16 %297, 8
  %299 = trunc i16 %298 to i8
  %300 = load ptr, ptr %290, align 8, !tbaa !57
  %301 = load i32, ptr %292, align 8, !tbaa !58
  %302 = add i32 %301, 1
  store i32 %302, ptr %292, align 8, !tbaa !58
  %303 = zext i32 %301 to i64
  %304 = getelementptr inbounds i8, ptr %300, i64 %303
  store i8 %299, ptr %304, align 1, !tbaa !50
  %305 = load i32, ptr %277, align 4, !tbaa !49
  %306 = sub nsw i32 16, %305
  %307 = lshr i32 %282, %306
  %308 = trunc i32 %307 to i16
  store i16 %308, ptr %284, align 8, !tbaa !48
  %309 = add nsw i32 %276, -16
  %310 = add nsw i32 %309, %305
  br label %313

311:                                              ; preds = %272
  %312 = add nsw i32 %278, %276
  br label %313

313:                                              ; preds = %311, %288
  %314 = phi i32 [ %312, %311 ], [ %310, %288 ]
  store i32 %314, ptr %277, align 4, !tbaa !49
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define hidden i32 @_tr_tally(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {
  %4 = trunc i32 %1 to i16
  %5 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 51
  %6 = load ptr, ptr %5, align 8, !tbaa !100
  %7 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 50
  %8 = load i32, ptr %7, align 4, !tbaa !56
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds i16, ptr %6, i64 %9
  store i16 %4, ptr %10, align 2, !tbaa !91
  %11 = trunc i32 %2 to i8
  %12 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 48
  %13 = load ptr, ptr %12, align 8, !tbaa !101
  %14 = add i32 %8, 1
  store i32 %14, ptr %7, align 4, !tbaa !56
  %15 = getelementptr inbounds i8, ptr %13, i64 %9
  store i8 %11, ptr %15, align 1, !tbaa !50
  %16 = icmp eq i32 %1, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = zext i32 %2 to i64
  %19 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 %18
  br label %42

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 54
  %22 = load i32, ptr %21, align 8, !tbaa !103
  %23 = add i32 %22, 1
  store i32 %23, ptr %21, align 8, !tbaa !103
  %24 = add i32 %1, -1
  %25 = zext i32 %2 to i64
  %26 = getelementptr inbounds [256 x i8], ptr @_length_code, i64 0, i64 %25
  %27 = load i8, ptr %26, align 1, !tbaa !50
  %28 = zext i8 %27 to i64
  %29 = add nuw nsw i64 %28, 257
  %30 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 %29
  %31 = load i16, ptr %30, align 4, !tbaa !50
  %32 = add i16 %31, 1
  store i16 %32, ptr %30, align 4, !tbaa !50
  %33 = icmp ult i32 %1, 257
  %34 = lshr i32 %24, 7
  %35 = add nuw nsw i32 %34, 256
  %36 = select i1 %33, i32 %24, i32 %35
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds [512 x i8], ptr @_dist_code, i64 0, i64 %37
  %39 = load i8, ptr %38, align 1, !tbaa !50
  %40 = zext i8 %39 to i64
  %41 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38, i64 %40
  br label %42

42:                                               ; preds = %20, %17
  %43 = phi ptr [ %41, %20 ], [ %19, %17 ]
  %44 = load i16, ptr %43, align 4, !tbaa !50
  %45 = add i16 %44, 1
  store i16 %45, ptr %43, align 4, !tbaa !50
  %46 = load i32, ptr %7, align 4, !tbaa !56
  %47 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 49
  %48 = load i32, ptr %47, align 8, !tbaa !104
  %49 = add i32 %48, -1
  %50 = icmp eq i32 %46, %49
  %51 = zext i1 %50 to i32
  ret i32 %51
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @send_tree(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #4 {
  %4 = icmp slt i32 %2, 0
  br i1 %4, label %402, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.ct_data_s, ptr %1, i64 0, i32 1
  %7 = load i16, ptr %6, align 2, !tbaa !50
  %8 = icmp eq i16 %7, 0
  %9 = select i1 %8, i32 138, i32 7
  %10 = select i1 %8, i32 3, i32 4
  %11 = zext i16 %7 to i32
  %12 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 57
  %13 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %14 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %15 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %16 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 5
  %17 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 16
  %18 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 16, i32 1
  %19 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 57
  %20 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %21 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %22 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %23 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 5
  %24 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %25 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %26 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %27 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 5
  %28 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 18
  %29 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 18, i32 1
  %30 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 57
  %31 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %32 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %33 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %34 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 5
  %35 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %36 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %37 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %38 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 5
  %39 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 17
  %40 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 17, i32 1
  %41 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 57
  %42 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %43 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %44 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %45 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 5
  %46 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %47 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %48 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %49 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 5
  %50 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 57
  %51 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %52 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %53 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %54 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 5
  %55 = add nuw i32 %2, 1
  %56 = zext i32 %55 to i64
  br label %57

57:                                               ; preds = %5, %396
  %58 = phi i64 [ 0, %5 ], [ %64, %396 ]
  %59 = phi i32 [ -1, %5 ], [ %400, %396 ]
  %60 = phi i32 [ %11, %5 ], [ %67, %396 ]
  %61 = phi i32 [ 0, %5 ], [ %399, %396 ]
  %62 = phi i32 [ %9, %5 ], [ %398, %396 ]
  %63 = phi i32 [ %10, %5 ], [ %397, %396 ]
  %64 = add nuw nsw i64 %58, 1
  %65 = getelementptr inbounds %struct.ct_data_s, ptr %1, i64 %64, i32 1
  %66 = load i16, ptr %65, align 2, !tbaa !50
  %67 = zext i16 %66 to i32
  %68 = add nsw i32 %61, 1
  %69 = icmp slt i32 %68, %62
  %70 = icmp eq i32 %60, %67
  %71 = select i1 %69, i1 %70, i1 false
  br i1 %71, label %396, label %72

72:                                               ; preds = %57
  %73 = icmp slt i32 %68, %63
  br i1 %73, label %74, label %120

74:                                               ; preds = %72
  %75 = zext nneg i32 %60 to i64
  %76 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 %75
  %77 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 %75, i32 1
  br label %78

78:                                               ; preds = %74, %116
  %79 = phi i32 [ %118, %116 ], [ %68, %74 ]
  %80 = load i16, ptr %77, align 2, !tbaa !50
  %81 = zext i16 %80 to i32
  %82 = load i32, ptr %50, align 4, !tbaa !49
  %83 = sub nsw i32 16, %81
  %84 = icmp sgt i32 %82, %83
  %85 = load i16, ptr %76, align 4, !tbaa !50
  %86 = zext i16 %85 to i32
  %87 = shl i32 %86, %82
  %88 = trunc i32 %87 to i16
  br i1 %84, label %89, label %112

89:                                               ; preds = %78
  %90 = load i16, ptr %52, align 8, !tbaa !48
  %91 = or i16 %90, %88
  store i16 %91, ptr %52, align 8, !tbaa !48
  %92 = trunc i16 %91 to i8
  %93 = load ptr, ptr %53, align 8, !tbaa !57
  %94 = load i32, ptr %54, align 8, !tbaa !58
  %95 = add i32 %94, 1
  store i32 %95, ptr %54, align 8, !tbaa !58
  %96 = zext i32 %94 to i64
  %97 = getelementptr inbounds i8, ptr %93, i64 %96
  store i8 %92, ptr %97, align 1, !tbaa !50
  %98 = load i16, ptr %52, align 8, !tbaa !48
  %99 = lshr i16 %98, 8
  %100 = trunc i16 %99 to i8
  %101 = load ptr, ptr %53, align 8, !tbaa !57
  %102 = load i32, ptr %54, align 8, !tbaa !58
  %103 = add i32 %102, 1
  store i32 %103, ptr %54, align 8, !tbaa !58
  %104 = zext i32 %102 to i64
  %105 = getelementptr inbounds i8, ptr %101, i64 %104
  store i8 %100, ptr %105, align 1, !tbaa !50
  %106 = load i32, ptr %50, align 4, !tbaa !49
  %107 = sub nsw i32 16, %106
  %108 = lshr i32 %86, %107
  %109 = trunc i32 %108 to i16
  store i16 %109, ptr %52, align 8, !tbaa !48
  %110 = add nsw i32 %81, -16
  %111 = add nsw i32 %110, %106
  br label %116

112:                                              ; preds = %78
  %113 = load i16, ptr %51, align 8, !tbaa !48
  %114 = or i16 %113, %88
  store i16 %114, ptr %51, align 8, !tbaa !48
  %115 = add nsw i32 %82, %81
  br label %116

116:                                              ; preds = %112, %89
  %117 = phi i32 [ %115, %112 ], [ %111, %89 ]
  store i32 %117, ptr %50, align 4, !tbaa !49
  %118 = add nsw i32 %79, -1
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %391, label %78, !llvm.loop !105

120:                                              ; preds = %72
  %121 = icmp eq i32 %60, 0
  br i1 %121, label %241, label %122

122:                                              ; preds = %120
  %123 = icmp eq i32 %60, %59
  br i1 %123, label %166, label %124

124:                                              ; preds = %122
  %125 = zext nneg i32 %60 to i64
  %126 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 %125
  %127 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 %125, i32 1
  %128 = load i16, ptr %127, align 2, !tbaa !50
  %129 = zext i16 %128 to i32
  %130 = load i32, ptr %12, align 4, !tbaa !49
  %131 = sub nsw i32 16, %129
  %132 = icmp sgt i32 %130, %131
  %133 = load i16, ptr %126, align 4, !tbaa !50
  %134 = zext i16 %133 to i32
  %135 = shl i32 %134, %130
  %136 = trunc i32 %135 to i16
  br i1 %132, label %137, label %160

137:                                              ; preds = %124
  %138 = load i16, ptr %14, align 8, !tbaa !48
  %139 = or i16 %138, %136
  store i16 %139, ptr %14, align 8, !tbaa !48
  %140 = trunc i16 %139 to i8
  %141 = load ptr, ptr %15, align 8, !tbaa !57
  %142 = load i32, ptr %16, align 8, !tbaa !58
  %143 = add i32 %142, 1
  store i32 %143, ptr %16, align 8, !tbaa !58
  %144 = zext i32 %142 to i64
  %145 = getelementptr inbounds i8, ptr %141, i64 %144
  store i8 %140, ptr %145, align 1, !tbaa !50
  %146 = load i16, ptr %14, align 8, !tbaa !48
  %147 = lshr i16 %146, 8
  %148 = trunc i16 %147 to i8
  %149 = load ptr, ptr %15, align 8, !tbaa !57
  %150 = load i32, ptr %16, align 8, !tbaa !58
  %151 = add i32 %150, 1
  store i32 %151, ptr %16, align 8, !tbaa !58
  %152 = zext i32 %150 to i64
  %153 = getelementptr inbounds i8, ptr %149, i64 %152
  store i8 %148, ptr %153, align 1, !tbaa !50
  %154 = load i32, ptr %12, align 4, !tbaa !49
  %155 = sub nsw i32 16, %154
  %156 = lshr i32 %134, %155
  %157 = trunc i32 %156 to i16
  store i16 %157, ptr %14, align 8, !tbaa !48
  %158 = add nsw i32 %129, -16
  %159 = add nsw i32 %158, %154
  br label %164

160:                                              ; preds = %124
  %161 = load i16, ptr %13, align 8, !tbaa !48
  %162 = or i16 %161, %136
  store i16 %162, ptr %13, align 8, !tbaa !48
  %163 = add nsw i32 %130, %129
  br label %164

164:                                              ; preds = %160, %137
  %165 = phi i32 [ %163, %160 ], [ %159, %137 ]
  store i32 %165, ptr %12, align 4, !tbaa !49
  br label %166

166:                                              ; preds = %164, %122
  %167 = phi i32 [ %61, %164 ], [ %68, %122 ]
  %168 = load i16, ptr %18, align 2, !tbaa !50
  %169 = zext i16 %168 to i32
  %170 = load i32, ptr %19, align 4, !tbaa !49
  %171 = sub nsw i32 16, %169
  %172 = icmp sgt i32 %170, %171
  %173 = load i16, ptr %17, align 4, !tbaa !50
  %174 = zext i16 %173 to i32
  %175 = shl i32 %174, %170
  %176 = trunc i32 %175 to i16
  br i1 %172, label %177, label %200

177:                                              ; preds = %166
  %178 = load i16, ptr %21, align 8, !tbaa !48
  %179 = or i16 %178, %176
  store i16 %179, ptr %21, align 8, !tbaa !48
  %180 = trunc i16 %179 to i8
  %181 = load ptr, ptr %22, align 8, !tbaa !57
  %182 = load i32, ptr %23, align 8, !tbaa !58
  %183 = add i32 %182, 1
  store i32 %183, ptr %23, align 8, !tbaa !58
  %184 = zext i32 %182 to i64
  %185 = getelementptr inbounds i8, ptr %181, i64 %184
  store i8 %180, ptr %185, align 1, !tbaa !50
  %186 = load i16, ptr %21, align 8, !tbaa !48
  %187 = lshr i16 %186, 8
  %188 = trunc i16 %187 to i8
  %189 = load ptr, ptr %22, align 8, !tbaa !57
  %190 = load i32, ptr %23, align 8, !tbaa !58
  %191 = add i32 %190, 1
  store i32 %191, ptr %23, align 8, !tbaa !58
  %192 = zext i32 %190 to i64
  %193 = getelementptr inbounds i8, ptr %189, i64 %192
  store i8 %188, ptr %193, align 1, !tbaa !50
  %194 = load i32, ptr %19, align 4, !tbaa !49
  %195 = sub nsw i32 16, %194
  %196 = lshr i32 %174, %195
  %197 = trunc i32 %196 to i16
  store i16 %197, ptr %21, align 8, !tbaa !48
  %198 = add nsw i32 %169, -16
  %199 = add nsw i32 %198, %194
  br label %204

200:                                              ; preds = %166
  %201 = load i16, ptr %20, align 8, !tbaa !48
  %202 = or i16 %201, %176
  store i16 %202, ptr %20, align 8, !tbaa !48
  %203 = add nsw i32 %170, %169
  br label %204

204:                                              ; preds = %200, %177
  %205 = phi i32 [ %203, %200 ], [ %199, %177 ]
  store i32 %205, ptr %19, align 4, !tbaa !49
  %206 = icmp sgt i32 %205, 14
  %207 = add i32 %167, 65533
  br i1 %206, label %208, label %233

208:                                              ; preds = %204
  %209 = and i32 %207, 65535
  %210 = shl i32 %207, %205
  %211 = load i16, ptr %25, align 8, !tbaa !48
  %212 = trunc i32 %210 to i16
  %213 = or i16 %211, %212
  store i16 %213, ptr %25, align 8, !tbaa !48
  %214 = trunc i16 %213 to i8
  %215 = load ptr, ptr %26, align 8, !tbaa !57
  %216 = load i32, ptr %27, align 8, !tbaa !58
  %217 = add i32 %216, 1
  store i32 %217, ptr %27, align 8, !tbaa !58
  %218 = zext i32 %216 to i64
  %219 = getelementptr inbounds i8, ptr %215, i64 %218
  store i8 %214, ptr %219, align 1, !tbaa !50
  %220 = load i16, ptr %25, align 8, !tbaa !48
  %221 = lshr i16 %220, 8
  %222 = trunc i16 %221 to i8
  %223 = load ptr, ptr %26, align 8, !tbaa !57
  %224 = load i32, ptr %27, align 8, !tbaa !58
  %225 = add i32 %224, 1
  store i32 %225, ptr %27, align 8, !tbaa !58
  %226 = zext i32 %224 to i64
  %227 = getelementptr inbounds i8, ptr %223, i64 %226
  store i8 %222, ptr %227, align 1, !tbaa !50
  %228 = load i32, ptr %19, align 4, !tbaa !49
  %229 = sub nsw i32 16, %228
  %230 = lshr i32 %209, %229
  %231 = trunc i32 %230 to i16
  store i16 %231, ptr %25, align 8, !tbaa !48
  %232 = add nsw i32 %228, -14
  br label %239

233:                                              ; preds = %204
  %234 = shl i32 %207, %205
  %235 = load i16, ptr %24, align 8, !tbaa !48
  %236 = trunc i32 %234 to i16
  %237 = or i16 %235, %236
  store i16 %237, ptr %24, align 8, !tbaa !48
  %238 = add nsw i32 %205, 2
  br label %239

239:                                              ; preds = %233, %208
  %240 = phi i32 [ %238, %233 ], [ %232, %208 ]
  store i32 %240, ptr %19, align 4, !tbaa !49
  br label %391

241:                                              ; preds = %120
  %242 = icmp slt i32 %61, 10
  br i1 %242, label %243, label %317

243:                                              ; preds = %241
  %244 = load i16, ptr %40, align 2, !tbaa !50
  %245 = zext i16 %244 to i32
  %246 = load i32, ptr %41, align 4, !tbaa !49
  %247 = sub nsw i32 16, %245
  %248 = icmp sgt i32 %246, %247
  %249 = load i16, ptr %39, align 4, !tbaa !50
  %250 = zext i16 %249 to i32
  %251 = shl i32 %250, %246
  %252 = trunc i32 %251 to i16
  br i1 %248, label %253, label %276

253:                                              ; preds = %243
  %254 = load i16, ptr %43, align 8, !tbaa !48
  %255 = or i16 %254, %252
  store i16 %255, ptr %43, align 8, !tbaa !48
  %256 = trunc i16 %255 to i8
  %257 = load ptr, ptr %44, align 8, !tbaa !57
  %258 = load i32, ptr %45, align 8, !tbaa !58
  %259 = add i32 %258, 1
  store i32 %259, ptr %45, align 8, !tbaa !58
  %260 = zext i32 %258 to i64
  %261 = getelementptr inbounds i8, ptr %257, i64 %260
  store i8 %256, ptr %261, align 1, !tbaa !50
  %262 = load i16, ptr %43, align 8, !tbaa !48
  %263 = lshr i16 %262, 8
  %264 = trunc i16 %263 to i8
  %265 = load ptr, ptr %44, align 8, !tbaa !57
  %266 = load i32, ptr %45, align 8, !tbaa !58
  %267 = add i32 %266, 1
  store i32 %267, ptr %45, align 8, !tbaa !58
  %268 = zext i32 %266 to i64
  %269 = getelementptr inbounds i8, ptr %265, i64 %268
  store i8 %264, ptr %269, align 1, !tbaa !50
  %270 = load i32, ptr %41, align 4, !tbaa !49
  %271 = sub nsw i32 16, %270
  %272 = lshr i32 %250, %271
  %273 = trunc i32 %272 to i16
  store i16 %273, ptr %43, align 8, !tbaa !48
  %274 = add nsw i32 %245, -16
  %275 = add nsw i32 %274, %270
  br label %280

276:                                              ; preds = %243
  %277 = load i16, ptr %42, align 8, !tbaa !48
  %278 = or i16 %277, %252
  store i16 %278, ptr %42, align 8, !tbaa !48
  %279 = add nsw i32 %246, %245
  br label %280

280:                                              ; preds = %276, %253
  %281 = phi i32 [ %279, %276 ], [ %275, %253 ]
  store i32 %281, ptr %41, align 4, !tbaa !49
  %282 = icmp sgt i32 %281, 13
  %283 = add i32 %61, 65534
  br i1 %282, label %284, label %309

284:                                              ; preds = %280
  %285 = and i32 %283, 65535
  %286 = shl i32 %283, %281
  %287 = load i16, ptr %47, align 8, !tbaa !48
  %288 = trunc i32 %286 to i16
  %289 = or i16 %287, %288
  store i16 %289, ptr %47, align 8, !tbaa !48
  %290 = trunc i16 %289 to i8
  %291 = load ptr, ptr %48, align 8, !tbaa !57
  %292 = load i32, ptr %49, align 8, !tbaa !58
  %293 = add i32 %292, 1
  store i32 %293, ptr %49, align 8, !tbaa !58
  %294 = zext i32 %292 to i64
  %295 = getelementptr inbounds i8, ptr %291, i64 %294
  store i8 %290, ptr %295, align 1, !tbaa !50
  %296 = load i16, ptr %47, align 8, !tbaa !48
  %297 = lshr i16 %296, 8
  %298 = trunc i16 %297 to i8
  %299 = load ptr, ptr %48, align 8, !tbaa !57
  %300 = load i32, ptr %49, align 8, !tbaa !58
  %301 = add i32 %300, 1
  store i32 %301, ptr %49, align 8, !tbaa !58
  %302 = zext i32 %300 to i64
  %303 = getelementptr inbounds i8, ptr %299, i64 %302
  store i8 %298, ptr %303, align 1, !tbaa !50
  %304 = load i32, ptr %41, align 4, !tbaa !49
  %305 = sub nsw i32 16, %304
  %306 = lshr i32 %285, %305
  %307 = trunc i32 %306 to i16
  store i16 %307, ptr %47, align 8, !tbaa !48
  %308 = add nsw i32 %304, -13
  br label %315

309:                                              ; preds = %280
  %310 = shl i32 %283, %281
  %311 = load i16, ptr %46, align 8, !tbaa !48
  %312 = trunc i32 %310 to i16
  %313 = or i16 %311, %312
  store i16 %313, ptr %46, align 8, !tbaa !48
  %314 = add nsw i32 %281, 3
  br label %315

315:                                              ; preds = %309, %284
  %316 = phi i32 [ %314, %309 ], [ %308, %284 ]
  store i32 %316, ptr %41, align 4, !tbaa !49
  br label %391

317:                                              ; preds = %241
  %318 = load i16, ptr %29, align 2, !tbaa !50
  %319 = zext i16 %318 to i32
  %320 = load i32, ptr %30, align 4, !tbaa !49
  %321 = sub nsw i32 16, %319
  %322 = icmp sgt i32 %320, %321
  %323 = load i16, ptr %28, align 4, !tbaa !50
  %324 = zext i16 %323 to i32
  %325 = shl i32 %324, %320
  %326 = trunc i32 %325 to i16
  br i1 %322, label %327, label %350

327:                                              ; preds = %317
  %328 = load i16, ptr %32, align 8, !tbaa !48
  %329 = or i16 %328, %326
  store i16 %329, ptr %32, align 8, !tbaa !48
  %330 = trunc i16 %329 to i8
  %331 = load ptr, ptr %33, align 8, !tbaa !57
  %332 = load i32, ptr %34, align 8, !tbaa !58
  %333 = add i32 %332, 1
  store i32 %333, ptr %34, align 8, !tbaa !58
  %334 = zext i32 %332 to i64
  %335 = getelementptr inbounds i8, ptr %331, i64 %334
  store i8 %330, ptr %335, align 1, !tbaa !50
  %336 = load i16, ptr %32, align 8, !tbaa !48
  %337 = lshr i16 %336, 8
  %338 = trunc i16 %337 to i8
  %339 = load ptr, ptr %33, align 8, !tbaa !57
  %340 = load i32, ptr %34, align 8, !tbaa !58
  %341 = add i32 %340, 1
  store i32 %341, ptr %34, align 8, !tbaa !58
  %342 = zext i32 %340 to i64
  %343 = getelementptr inbounds i8, ptr %339, i64 %342
  store i8 %338, ptr %343, align 1, !tbaa !50
  %344 = load i32, ptr %30, align 4, !tbaa !49
  %345 = sub nsw i32 16, %344
  %346 = lshr i32 %324, %345
  %347 = trunc i32 %346 to i16
  store i16 %347, ptr %32, align 8, !tbaa !48
  %348 = add nsw i32 %319, -16
  %349 = add nsw i32 %348, %344
  br label %354

350:                                              ; preds = %317
  %351 = load i16, ptr %31, align 8, !tbaa !48
  %352 = or i16 %351, %326
  store i16 %352, ptr %31, align 8, !tbaa !48
  %353 = add nsw i32 %320, %319
  br label %354

354:                                              ; preds = %350, %327
  %355 = phi i32 [ %353, %350 ], [ %349, %327 ]
  store i32 %355, ptr %30, align 4, !tbaa !49
  %356 = icmp sgt i32 %355, 9
  %357 = add nuw i32 %61, 65526
  br i1 %356, label %358, label %383

358:                                              ; preds = %354
  %359 = and i32 %357, 65535
  %360 = shl i32 %357, %355
  %361 = load i16, ptr %36, align 8, !tbaa !48
  %362 = trunc i32 %360 to i16
  %363 = or i16 %361, %362
  store i16 %363, ptr %36, align 8, !tbaa !48
  %364 = trunc i16 %363 to i8
  %365 = load ptr, ptr %37, align 8, !tbaa !57
  %366 = load i32, ptr %38, align 8, !tbaa !58
  %367 = add i32 %366, 1
  store i32 %367, ptr %38, align 8, !tbaa !58
  %368 = zext i32 %366 to i64
  %369 = getelementptr inbounds i8, ptr %365, i64 %368
  store i8 %364, ptr %369, align 1, !tbaa !50
  %370 = load i16, ptr %36, align 8, !tbaa !48
  %371 = lshr i16 %370, 8
  %372 = trunc i16 %371 to i8
  %373 = load ptr, ptr %37, align 8, !tbaa !57
  %374 = load i32, ptr %38, align 8, !tbaa !58
  %375 = add i32 %374, 1
  store i32 %375, ptr %38, align 8, !tbaa !58
  %376 = zext i32 %374 to i64
  %377 = getelementptr inbounds i8, ptr %373, i64 %376
  store i8 %372, ptr %377, align 1, !tbaa !50
  %378 = load i32, ptr %30, align 4, !tbaa !49
  %379 = sub nsw i32 16, %378
  %380 = lshr i32 %359, %379
  %381 = trunc i32 %380 to i16
  store i16 %381, ptr %36, align 8, !tbaa !48
  %382 = add nsw i32 %378, -9
  br label %389

383:                                              ; preds = %354
  %384 = shl i32 %357, %355
  %385 = load i16, ptr %35, align 8, !tbaa !48
  %386 = trunc i32 %384 to i16
  %387 = or i16 %385, %386
  store i16 %387, ptr %35, align 8, !tbaa !48
  %388 = add nsw i32 %355, 7
  br label %389

389:                                              ; preds = %383, %358
  %390 = phi i32 [ %388, %383 ], [ %382, %358 ]
  store i32 %390, ptr %30, align 4, !tbaa !49
  br label %391

391:                                              ; preds = %116, %315, %389, %239
  %392 = icmp eq i16 %66, 0
  br i1 %392, label %396, label %393

393:                                              ; preds = %391
  %394 = select i1 %70, i32 3, i32 4
  %395 = select i1 %70, i32 6, i32 7
  br label %396

396:                                              ; preds = %393, %391, %57
  %397 = phi i32 [ %63, %57 ], [ 3, %391 ], [ %394, %393 ]
  %398 = phi i32 [ %62, %57 ], [ 138, %391 ], [ %395, %393 ]
  %399 = phi i32 [ %68, %57 ], [ 0, %391 ], [ 0, %393 ]
  %400 = phi i32 [ %59, %57 ], [ %60, %391 ], [ %60, %393 ]
  %401 = icmp eq i64 %64, %56
  br i1 %401, label %402, label %57, !llvm.loop !106

402:                                              ; preds = %396, %3
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 7547212}
!8 = !{!"MaxCount", i64 1843200}
!9 = !{!"MaxInternalCount", i64 1843200}
!10 = !{!"MaxFunctionCount", i64 6}
!11 = !{!"NumCounts", i64 213}
!12 = !{!"NumFunctions", i64 14}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 1843200, i32 1}
!18 = !{i32 100000, i64 1843200, i32 1}
!19 = !{i32 200000, i64 1843200, i32 1}
!20 = !{i32 300000, i64 921600, i32 7}
!21 = !{i32 400000, i64 921600, i32 7}
!22 = !{i32 500000, i64 921600, i32 7}
!23 = !{i32 600000, i64 921600, i32 7}
!24 = !{i32 700000, i64 921600, i32 7}
!25 = !{i32 800000, i64 921600, i32 7}
!26 = !{i32 900000, i64 921600, i32 7}
!27 = !{i32 950000, i64 921600, i32 7}
!28 = !{i32 990000, i64 115200, i32 8}
!29 = !{i32 999000, i64 14400, i32 12}
!30 = !{i32 999900, i64 1440, i32 13}
!31 = !{i32 999990, i64 21, i32 15}
!32 = !{i32 999999, i64 1, i32 48}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !36, i64 2888}
!35 = !{!"internal_state", !36, i64 0, !39, i64 8, !36, i64 16, !40, i64 24, !36, i64 32, !39, i64 40, !39, i64 44, !36, i64 48, !39, i64 56, !37, i64 60, !39, i64 64, !39, i64 68, !39, i64 72, !39, i64 76, !36, i64 80, !40, i64 88, !36, i64 96, !36, i64 104, !39, i64 112, !39, i64 116, !39, i64 120, !39, i64 124, !39, i64 128, !40, i64 136, !39, i64 144, !39, i64 148, !39, i64 152, !39, i64 156, !39, i64 160, !39, i64 164, !39, i64 168, !39, i64 172, !39, i64 176, !39, i64 180, !39, i64 184, !39, i64 188, !39, i64 192, !37, i64 196, !37, i64 2488, !37, i64 2732, !41, i64 2888, !41, i64 2912, !41, i64 2936, !37, i64 2960, !37, i64 2992, !39, i64 5284, !39, i64 5288, !37, i64 5292, !36, i64 5872, !39, i64 5880, !39, i64 5884, !36, i64 5888, !40, i64 5896, !40, i64 5904, !39, i64 5912, !39, i64 5916, !42, i64 5920, !39, i64 5924, !40, i64 5928}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"int", !37, i64 0}
!40 = !{!"long", !37, i64 0}
!41 = !{!"tree_desc_s", !36, i64 0, !39, i64 8, !36, i64 16}
!42 = !{!"short", !37, i64 0}
!43 = !{!35, !36, i64 2904}
!44 = !{!35, !36, i64 2912}
!45 = !{!35, !36, i64 2928}
!46 = !{!35, !36, i64 2936}
!47 = !{!35, !36, i64 2952}
!48 = !{!35, !42, i64 5920}
!49 = !{!35, !39, i64 5924}
!50 = !{!37, !37, i64 0}
!51 = distinct !{!51, !52, !53}
!52 = !{!"llvm.loop.mustprogress"}
!53 = !{!"llvm.loop.unroll.disable"}
!54 = distinct !{!54, !52, !53}
!55 = distinct !{!55, !52, !53}
!56 = !{!35, !39, i64 5884}
!57 = !{!35, !36, i64 16}
!58 = !{!35, !39, i64 40}
!59 = distinct !{!59, !52, !53}
!60 = !{!35, !39, i64 180}
!61 = !{!35, !36, i64 0}
!62 = !{!63, !39, i64 88}
!63 = !{!"z_stream_s", !36, i64 0, !39, i64 8, !40, i64 16, !36, i64 24, !39, i64 32, !40, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !39, i64 88, !40, i64 96, !40, i64 104}
!64 = distinct !{!64, !52, !53}
!65 = distinct !{!65, !52, !53}
!66 = !{!35, !39, i64 2896}
!67 = distinct !{!67, !52, !53}
!68 = !{!35, !39, i64 2920}
!69 = distinct !{!69, !52, !53}
!70 = !{!35, !40, i64 5896}
!71 = !{!35, !40, i64 5904}
!72 = !{!35, !39, i64 184}
!73 = distinct !{!73, !52, !53}
!74 = !{!41, !36, i64 0}
!75 = !{!41, !36, i64 16}
!76 = !{!77, !36, i64 0}
!77 = !{!"static_tree_desc_s", !36, i64 0, !36, i64 8, !39, i64 16, !39, i64 20, !39, i64 24}
!78 = !{!77, !39, i64 20}
!79 = !{!35, !39, i64 5284}
!80 = !{!35, !39, i64 5288}
!81 = !{!39, !39, i64 0}
!82 = distinct !{!82, !52, !53}
!83 = distinct !{!83, !52, !53}
!84 = !{!41, !39, i64 8}
!85 = distinct !{!85, !52, !53}
!86 = distinct !{!86, !52, !53}
!87 = distinct !{!87, !52, !53}
!88 = !{!77, !36, i64 8}
!89 = !{!77, !39, i64 16}
!90 = !{!77, !39, i64 24}
!91 = !{!42, !42, i64 0}
!92 = distinct !{!92, !52, !53}
!93 = distinct !{!93, !52, !53}
!94 = distinct !{!94, !52, !53}
!95 = distinct !{!95, !52, !53}
!96 = distinct !{!96, !52, !53}
!97 = distinct !{!97, !52, !53}
!98 = distinct !{!98, !52, !53}
!99 = distinct !{!99, !52, !53}
!100 = !{!35, !36, i64 5888}
!101 = !{!35, !36, i64 5872}
!102 = distinct !{!102, !52, !53}
!103 = !{!35, !39, i64 5912}
!104 = !{!35, !39, i64 5880}
!105 = distinct !{!105, !52, !53}
!106 = distinct !{!106, !52, !53}
