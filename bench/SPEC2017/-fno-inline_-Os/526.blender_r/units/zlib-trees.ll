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

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: write) uwtable
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
  tail call fastcc void @init_block(ptr noundef %0) #11
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: write) uwtable
define internal fastcc void @init_block(ptr nocapture noundef writeonly %0) unnamed_addr #0 !PGOFuncName !50 {
  br label %2

2:                                                ; preds = %44, %1
  %3 = phi i64 [ 0, %1 ], [ %45, %44 ]
  %4 = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %1 ], [ %46, %44 ]
  %5 = icmp ult <8 x i64> %4, <i64 286, i64 286, i64 286, i64 286, i64 286, i64 286, i64 286, i64 286>
  %6 = extractelement <8 x i1> %5, i64 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 %3
  store i16 0, ptr %8, align 4, !tbaa !51
  br label %9

9:                                                ; preds = %7, %2
  %10 = extractelement <8 x i1> %5, i64 1
  br i1 %10, label %11, label %14

11:                                               ; preds = %9
  %12 = or disjoint i64 %3, 1
  %13 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 %12
  store i16 0, ptr %13, align 4, !tbaa !51
  br label %14

14:                                               ; preds = %11, %9
  %15 = extractelement <8 x i1> %5, i64 2
  br i1 %15, label %16, label %19

16:                                               ; preds = %14
  %17 = or disjoint i64 %3, 2
  %18 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 %17
  store i16 0, ptr %18, align 4, !tbaa !51
  br label %19

19:                                               ; preds = %16, %14
  %20 = extractelement <8 x i1> %5, i64 3
  br i1 %20, label %21, label %24

21:                                               ; preds = %19
  %22 = or disjoint i64 %3, 3
  %23 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 %22
  store i16 0, ptr %23, align 4, !tbaa !51
  br label %24

24:                                               ; preds = %21, %19
  %25 = extractelement <8 x i1> %5, i64 4
  br i1 %25, label %26, label %29

26:                                               ; preds = %24
  %27 = or disjoint i64 %3, 4
  %28 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 %27
  store i16 0, ptr %28, align 4, !tbaa !51
  br label %29

29:                                               ; preds = %26, %24
  %30 = extractelement <8 x i1> %5, i64 5
  br i1 %30, label %31, label %34

31:                                               ; preds = %29
  %32 = or disjoint i64 %3, 5
  %33 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 %32
  store i16 0, ptr %33, align 4, !tbaa !51
  br label %34

34:                                               ; preds = %31, %29
  %35 = extractelement <8 x i1> %5, i64 6
  br i1 %35, label %36, label %39

36:                                               ; preds = %34
  %37 = or disjoint i64 %3, 6
  %38 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 %37
  store i16 0, ptr %38, align 4, !tbaa !51
  br label %39

39:                                               ; preds = %36, %34
  %40 = extractelement <8 x i1> %5, i64 7
  br i1 %40, label %41, label %44

41:                                               ; preds = %39
  %42 = or disjoint i64 %3, 7
  %43 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 %42
  store i16 0, ptr %43, align 4, !tbaa !51
  br label %44

44:                                               ; preds = %41, %39
  %45 = add i64 %3, 8
  %46 = add <8 x i64> %4, <i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8>
  %47 = icmp eq i64 %45, 288
  br i1 %47, label %48, label %2, !llvm.loop !52

48:                                               ; preds = %44, %90
  %49 = phi i64 [ %91, %90 ], [ 0, %44 ]
  %50 = phi <8 x i64> [ %92, %90 ], [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %44 ]
  %51 = icmp ult <8 x i64> %50, <i64 30, i64 30, i64 30, i64 30, i64 30, i64 30, i64 30, i64 30>
  %52 = extractelement <8 x i1> %51, i64 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38, i64 %49
  store i16 0, ptr %54, align 4, !tbaa !51
  br label %55

55:                                               ; preds = %53, %48
  %56 = extractelement <8 x i1> %51, i64 1
  br i1 %56, label %57, label %60

57:                                               ; preds = %55
  %58 = or disjoint i64 %49, 1
  %59 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38, i64 %58
  store i16 0, ptr %59, align 4, !tbaa !51
  br label %60

60:                                               ; preds = %57, %55
  %61 = extractelement <8 x i1> %51, i64 2
  br i1 %61, label %62, label %65

62:                                               ; preds = %60
  %63 = or disjoint i64 %49, 2
  %64 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38, i64 %63
  store i16 0, ptr %64, align 4, !tbaa !51
  br label %65

65:                                               ; preds = %62, %60
  %66 = extractelement <8 x i1> %51, i64 3
  br i1 %66, label %67, label %70

67:                                               ; preds = %65
  %68 = or disjoint i64 %49, 3
  %69 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38, i64 %68
  store i16 0, ptr %69, align 4, !tbaa !51
  br label %70

70:                                               ; preds = %67, %65
  %71 = extractelement <8 x i1> %51, i64 4
  br i1 %71, label %72, label %75

72:                                               ; preds = %70
  %73 = or disjoint i64 %49, 4
  %74 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38, i64 %73
  store i16 0, ptr %74, align 4, !tbaa !51
  br label %75

75:                                               ; preds = %72, %70
  %76 = extractelement <8 x i1> %51, i64 5
  br i1 %76, label %77, label %80

77:                                               ; preds = %75
  %78 = or disjoint i64 %49, 5
  %79 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38, i64 %78
  store i16 0, ptr %79, align 4, !tbaa !51
  br label %80

80:                                               ; preds = %77, %75
  %81 = extractelement <8 x i1> %51, i64 6
  br i1 %81, label %82, label %85

82:                                               ; preds = %80
  %83 = or disjoint i64 %49, 6
  %84 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38, i64 %83
  store i16 0, ptr %84, align 4, !tbaa !51
  br label %85

85:                                               ; preds = %82, %80
  %86 = extractelement <8 x i1> %51, i64 7
  br i1 %86, label %87, label %90

87:                                               ; preds = %85
  %88 = or disjoint i64 %49, 7
  %89 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38, i64 %88
  store i16 0, ptr %89, align 4, !tbaa !51
  br label %90

90:                                               ; preds = %87, %85
  %91 = add i64 %49, 8
  %92 = add <8 x i64> %50, <i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8>
  %93 = icmp eq i64 %91, 32
  br i1 %93, label %94, label %48, !llvm.loop !56

94:                                               ; preds = %90, %116
  %95 = phi i64 [ %117, %116 ], [ 0, %90 ]
  %96 = phi <4 x i64> [ %118, %116 ], [ <i64 0, i64 1, i64 2, i64 3>, %90 ]
  %97 = icmp ult <4 x i64> %96, <i64 19, i64 19, i64 19, i64 19>
  %98 = extractelement <4 x i1> %97, i64 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %94
  %100 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 %95
  store i16 0, ptr %100, align 4, !tbaa !51
  br label %101

101:                                              ; preds = %99, %94
  %102 = extractelement <4 x i1> %97, i64 1
  br i1 %102, label %103, label %106

103:                                              ; preds = %101
  %104 = or disjoint i64 %95, 1
  %105 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 %104
  store i16 0, ptr %105, align 4, !tbaa !51
  br label %106

106:                                              ; preds = %103, %101
  %107 = extractelement <4 x i1> %97, i64 2
  br i1 %107, label %108, label %111

108:                                              ; preds = %106
  %109 = or disjoint i64 %95, 2
  %110 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 %109
  store i16 0, ptr %110, align 4, !tbaa !51
  br label %111

111:                                              ; preds = %108, %106
  %112 = extractelement <4 x i1> %97, i64 3
  br i1 %112, label %113, label %116

113:                                              ; preds = %111
  %114 = or disjoint i64 %95, 3
  %115 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 %114
  store i16 0, ptr %115, align 4, !tbaa !51
  br label %116

116:                                              ; preds = %113, %111
  %117 = add i64 %95, 4
  %118 = add <4 x i64> %96, <i64 4, i64 4, i64 4, i64 4>
  %119 = icmp eq i64 %117, 20
  br i1 %119, label %120, label %94, !llvm.loop !57

120:                                              ; preds = %116
  %121 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 256
  store i16 1, ptr %121, align 4, !tbaa !51
  %122 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 52
  %123 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 50
  store i32 0, ptr %123, align 4, !tbaa !58
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %122, i8 0, i64 20, i1 false)
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
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
  %17 = load ptr, ptr %16, align 8, !tbaa !59
  %18 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 5
  %19 = load i32, ptr %18, align 8, !tbaa !60
  %20 = add i32 %19, 1
  store i32 %20, ptr %18, align 8, !tbaa !60
  %21 = zext i32 %19 to i64
  %22 = getelementptr inbounds i8, ptr %17, i64 %21
  store i8 %15, ptr %22, align 1, !tbaa !51
  %23 = load i16, ptr %11, align 8, !tbaa !48
  %24 = lshr i16 %23, 8
  %25 = trunc i16 %24 to i8
  %26 = load ptr, ptr %16, align 8, !tbaa !59
  %27 = load i32, ptr %18, align 8, !tbaa !60
  %28 = add i32 %27, 1
  store i32 %28, ptr %18, align 8, !tbaa !60
  %29 = zext i32 %27 to i64
  %30 = getelementptr inbounds i8, ptr %26, i64 %29
  store i8 %25, ptr %30, align 1, !tbaa !51
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
  tail call fastcc void @copy_block(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %45) #11
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @copy_block(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #1 !PGOFuncName !61 {
  tail call fastcc void @bi_windup(ptr noundef %0) #11
  %4 = trunc i32 %2 to i8
  %5 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !59
  %7 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 5
  %8 = load i32, ptr %7, align 8, !tbaa !60
  %9 = add i32 %8, 1
  store i32 %9, ptr %7, align 8, !tbaa !60
  %10 = zext i32 %8 to i64
  %11 = getelementptr inbounds i8, ptr %6, i64 %10
  store i8 %4, ptr %11, align 1, !tbaa !51
  %12 = lshr i32 %2, 8
  %13 = trunc i32 %12 to i8
  %14 = load ptr, ptr %5, align 8, !tbaa !59
  %15 = load i32, ptr %7, align 8, !tbaa !60
  %16 = add i32 %15, 1
  store i32 %16, ptr %7, align 8, !tbaa !60
  %17 = zext i32 %15 to i64
  %18 = getelementptr inbounds i8, ptr %14, i64 %17
  store i8 %13, ptr %18, align 1, !tbaa !51
  %19 = and i32 %2, 65535
  %20 = xor i32 %19, 65535
  %21 = trunc i32 %20 to i8
  %22 = load ptr, ptr %5, align 8, !tbaa !59
  %23 = load i32, ptr %7, align 8, !tbaa !60
  %24 = add i32 %23, 1
  store i32 %24, ptr %7, align 8, !tbaa !60
  %25 = zext i32 %23 to i64
  %26 = getelementptr inbounds i8, ptr %22, i64 %25
  store i8 %21, ptr %26, align 1, !tbaa !51
  %27 = lshr i32 %20, 8
  %28 = trunc i32 %27 to i8
  %29 = load ptr, ptr %5, align 8, !tbaa !59
  %30 = load i32, ptr %7, align 8, !tbaa !60
  %31 = add i32 %30, 1
  store i32 %31, ptr %7, align 8, !tbaa !60
  %32 = zext i32 %30 to i64
  %33 = getelementptr inbounds i8, ptr %29, i64 %32
  store i8 %28, ptr %33, align 1, !tbaa !51
  %34 = icmp eq i32 %2, 0
  br i1 %34, label %47, label %35

35:                                               ; preds = %3, %35
  %36 = phi ptr [ %39, %35 ], [ %1, %3 ]
  %37 = phi i32 [ %38, %35 ], [ %2, %3 ]
  %38 = add i32 %37, -1
  %39 = getelementptr inbounds i8, ptr %36, i64 1
  %40 = load i8, ptr %36, align 1, !tbaa !51
  %41 = load ptr, ptr %5, align 8, !tbaa !59
  %42 = load i32, ptr %7, align 8, !tbaa !60
  %43 = add i32 %42, 1
  store i32 %43, ptr %7, align 8, !tbaa !60
  %44 = zext i32 %42 to i64
  %45 = getelementptr inbounds i8, ptr %41, i64 %44
  store i8 %40, ptr %45, align 1, !tbaa !51
  %46 = icmp eq i32 %38, 0
  br i1 %46, label %47, label %35, !llvm.loop !62

47:                                               ; preds = %35, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define hidden void @_tr_flush_bits(ptr nocapture noundef %0) local_unnamed_addr #3 {
  tail call fastcc void @bi_flush(ptr noundef %0) #11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bi_flush(ptr nocapture noundef %0) unnamed_addr #3 !PGOFuncName !63 {
  %2 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 57
  %3 = load i32, ptr %2, align 4, !tbaa !49
  %4 = icmp eq i32 %3, 16
  br i1 %4, label %5, label %24

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %7 = load i16, ptr %6, align 8, !tbaa !48
  %8 = trunc i16 %7 to i8
  %9 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !59
  %11 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 5
  %12 = load i32, ptr %11, align 8, !tbaa !60
  %13 = add i32 %12, 1
  store i32 %13, ptr %11, align 8, !tbaa !60
  %14 = zext i32 %12 to i64
  %15 = getelementptr inbounds i8, ptr %10, i64 %14
  store i8 %8, ptr %15, align 1, !tbaa !51
  %16 = load i16, ptr %6, align 8, !tbaa !48
  %17 = lshr i16 %16, 8
  %18 = trunc i16 %17 to i8
  %19 = load ptr, ptr %9, align 8, !tbaa !59
  %20 = load i32, ptr %11, align 8, !tbaa !60
  %21 = add i32 %20, 1
  store i32 %21, ptr %11, align 8, !tbaa !60
  %22 = zext i32 %20 to i64
  %23 = getelementptr inbounds i8, ptr %19, i64 %22
  store i8 %18, ptr %23, align 1, !tbaa !51
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
  %31 = load ptr, ptr %30, align 8, !tbaa !59
  %32 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 5
  %33 = load i32, ptr %32, align 8, !tbaa !60
  %34 = add i32 %33, 1
  store i32 %34, ptr %32, align 8, !tbaa !60
  %35 = zext i32 %33 to i64
  %36 = getelementptr inbounds i8, ptr %31, i64 %35
  store i8 %29, ptr %36, align 1, !tbaa !51
  %37 = load i16, ptr %27, align 8, !tbaa !48
  %38 = lshr i16 %37, 8
  store i16 %38, ptr %27, align 8, !tbaa !48
  %39 = load i32, ptr %2, align 4, !tbaa !49
  %40 = add nsw i32 %39, -8
  br label %41

41:                                               ; preds = %5, %26
  %42 = phi i32 [ %40, %26 ], [ 0, %5 ]
  store i32 %42, ptr %2, align 4, !tbaa !49
  br label %43

43:                                               ; preds = %41, %24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
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
  %13 = load ptr, ptr %12, align 8, !tbaa !59
  %14 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 5
  %15 = load i32, ptr %14, align 8, !tbaa !60
  %16 = add i32 %15, 1
  store i32 %16, ptr %14, align 8, !tbaa !60
  %17 = zext i32 %15 to i64
  %18 = getelementptr inbounds i8, ptr %13, i64 %17
  store i8 %11, ptr %18, align 1, !tbaa !51
  %19 = load i16, ptr %6, align 8, !tbaa !48
  %20 = lshr i16 %19, 8
  %21 = trunc i16 %20 to i8
  %22 = load ptr, ptr %12, align 8, !tbaa !59
  %23 = load i32, ptr %14, align 8, !tbaa !60
  %24 = add i32 %23, 1
  store i32 %24, ptr %14, align 8, !tbaa !60
  %25 = zext i32 %23 to i64
  %26 = getelementptr inbounds i8, ptr %22, i64 %25
  store i8 %21, ptr %26, align 1, !tbaa !51
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
  %35 = phi i16 [ %9, %32 ], [ %30, %10 ]
  %36 = phi i32 [ %33, %32 ], [ %31, %10 ]
  store i32 %36, ptr %2, align 4, !tbaa !49
  %37 = icmp sgt i32 %36, 9
  br i1 %37, label %38, label %58

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %40 = trunc i16 %35 to i8
  %41 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !59
  %43 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 5
  %44 = load i32, ptr %43, align 8, !tbaa !60
  %45 = add i32 %44, 1
  store i32 %45, ptr %43, align 8, !tbaa !60
  %46 = zext i32 %44 to i64
  %47 = getelementptr inbounds i8, ptr %42, i64 %46
  store i8 %40, ptr %47, align 1, !tbaa !51
  %48 = load i16, ptr %39, align 8, !tbaa !48
  %49 = lshr i16 %48, 8
  %50 = trunc i16 %49 to i8
  %51 = load ptr, ptr %41, align 8, !tbaa !59
  %52 = load i32, ptr %43, align 8, !tbaa !60
  %53 = add i32 %52, 1
  store i32 %53, ptr %43, align 8, !tbaa !60
  %54 = zext i32 %52 to i64
  %55 = getelementptr inbounds i8, ptr %51, i64 %54
  store i8 %50, ptr %55, align 1, !tbaa !51
  store i16 0, ptr %39, align 8, !tbaa !48
  %56 = load i32, ptr %2, align 4, !tbaa !49
  %57 = add nsw i32 %56, -9
  br label %60

58:                                               ; preds = %34
  %59 = add nsw i32 %36, 7
  br label %60

60:                                               ; preds = %58, %38
  %61 = phi i32 [ %59, %58 ], [ %57, %38 ]
  store i32 %61, ptr %2, align 4, !tbaa !49
  tail call fastcc void @bi_flush(ptr noundef nonnull %0) #11
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define hidden void @_tr_flush_block(ptr noundef %0, ptr noundef readonly %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
  %5 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 33
  %6 = load i32, ptr %5, align 4, !tbaa !64
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %29

8:                                                ; preds = %4
  %9 = load ptr, ptr %0, align 8, !tbaa !65
  %10 = getelementptr inbounds %struct.z_stream_s, ptr %9, i64 0, i32 11
  %11 = load i32, ptr %10, align 8, !tbaa !66
  %12 = icmp eq i32 %11, 2
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  %14 = tail call fastcc i32 @detect_data_type(ptr noundef nonnull %0) #11, !range !68
  store i32 %14, ptr %10, align 8, !tbaa !66
  br label %15

15:                                               ; preds = %13, %8
  %16 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 40
  tail call fastcc void @build_tree(ptr noundef nonnull %0, ptr noundef nonnull %16) #11
  %17 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 41
  tail call fastcc void @build_tree(ptr noundef nonnull %0, ptr noundef nonnull %17) #11
  %18 = tail call fastcc i32 @build_bl_tree(ptr noundef nonnull %0) #11
  %19 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 52
  %20 = load i64, ptr %19, align 8, !tbaa !69
  %21 = add i64 %20, 10
  %22 = lshr i64 %21, 3
  %23 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 53
  %24 = load i64, ptr %23, align 8, !tbaa !70
  %25 = add i64 %24, 10
  %26 = lshr i64 %25, 3
  %27 = tail call i64 @llvm.umin.i64(i64 %26, i64 %22)
  %28 = add nsw i32 %18, 1
  br label %31

29:                                               ; preds = %4
  %30 = add i64 %2, 5
  br label %31

31:                                               ; preds = %15, %29
  %32 = phi i32 [ 1, %29 ], [ %28, %15 ]
  %33 = phi i64 [ %30, %29 ], [ %26, %15 ]
  %34 = phi i64 [ %30, %29 ], [ %27, %15 ]
  %35 = add i64 %2, 4
  %36 = icmp ule i64 %35, %34
  %37 = icmp ne ptr %1, null
  %38 = and i1 %37, %36
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  tail call void @_tr_stored_block(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %2, i32 noundef %3) #11
  br label %135

40:                                               ; preds = %31
  %41 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 34
  %42 = load i32, ptr %41, align 8, !tbaa !71
  %43 = icmp eq i32 %42, 4
  %44 = icmp eq i64 %33, %34
  %45 = or i1 %44, %43
  %46 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 57
  %47 = load i32, ptr %46, align 4, !tbaa !49
  %48 = icmp sgt i32 %47, 13
  br i1 %45, label %49, label %88

49:                                               ; preds = %40
  %50 = add i32 %3, 2
  br i1 %48, label %51, label %79

51:                                               ; preds = %49
  %52 = and i32 %50, 65535
  %53 = shl i32 %50, %47
  %54 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %55 = load i16, ptr %54, align 8, !tbaa !48
  %56 = trunc i32 %53 to i16
  %57 = or i16 %55, %56
  store i16 %57, ptr %54, align 8, !tbaa !48
  %58 = trunc i16 %57 to i8
  %59 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !59
  %61 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 5
  %62 = load i32, ptr %61, align 8, !tbaa !60
  %63 = add i32 %62, 1
  store i32 %63, ptr %61, align 8, !tbaa !60
  %64 = zext i32 %62 to i64
  %65 = getelementptr inbounds i8, ptr %60, i64 %64
  store i8 %58, ptr %65, align 1, !tbaa !51
  %66 = load i16, ptr %54, align 8, !tbaa !48
  %67 = lshr i16 %66, 8
  %68 = trunc i16 %67 to i8
  %69 = load ptr, ptr %59, align 8, !tbaa !59
  %70 = load i32, ptr %61, align 8, !tbaa !60
  %71 = add i32 %70, 1
  store i32 %71, ptr %61, align 8, !tbaa !60
  %72 = zext i32 %70 to i64
  %73 = getelementptr inbounds i8, ptr %69, i64 %72
  store i8 %68, ptr %73, align 1, !tbaa !51
  %74 = load i32, ptr %46, align 4, !tbaa !49
  %75 = sub nsw i32 16, %74
  %76 = lshr i32 %52, %75
  %77 = trunc i32 %76 to i16
  store i16 %77, ptr %54, align 8, !tbaa !48
  %78 = add nsw i32 %74, -13
  br label %86

79:                                               ; preds = %49
  %80 = shl i32 %50, %47
  %81 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %82 = load i16, ptr %81, align 8, !tbaa !48
  %83 = trunc i32 %80 to i16
  %84 = or i16 %82, %83
  store i16 %84, ptr %81, align 8, !tbaa !48
  %85 = add nsw i32 %47, 3
  br label %86

86:                                               ; preds = %79, %51
  %87 = phi i32 [ %85, %79 ], [ %78, %51 ]
  store i32 %87, ptr %46, align 4, !tbaa !49
  tail call fastcc void @compress_block(ptr noundef nonnull %0, ptr noundef nonnull @static_ltree, ptr noundef nonnull @static_dtree) #11
  br label %135

88:                                               ; preds = %40
  %89 = add i32 %3, 4
  br i1 %48, label %90, label %118

90:                                               ; preds = %88
  %91 = and i32 %89, 65535
  %92 = shl i32 %89, %47
  %93 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %94 = load i16, ptr %93, align 8, !tbaa !48
  %95 = trunc i32 %92 to i16
  %96 = or i16 %94, %95
  store i16 %96, ptr %93, align 8, !tbaa !48
  %97 = trunc i16 %96 to i8
  %98 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %99 = load ptr, ptr %98, align 8, !tbaa !59
  %100 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 5
  %101 = load i32, ptr %100, align 8, !tbaa !60
  %102 = add i32 %101, 1
  store i32 %102, ptr %100, align 8, !tbaa !60
  %103 = zext i32 %101 to i64
  %104 = getelementptr inbounds i8, ptr %99, i64 %103
  store i8 %97, ptr %104, align 1, !tbaa !51
  %105 = load i16, ptr %93, align 8, !tbaa !48
  %106 = lshr i16 %105, 8
  %107 = trunc i16 %106 to i8
  %108 = load ptr, ptr %98, align 8, !tbaa !59
  %109 = load i32, ptr %100, align 8, !tbaa !60
  %110 = add i32 %109, 1
  store i32 %110, ptr %100, align 8, !tbaa !60
  %111 = zext i32 %109 to i64
  %112 = getelementptr inbounds i8, ptr %108, i64 %111
  store i8 %107, ptr %112, align 1, !tbaa !51
  %113 = load i32, ptr %46, align 4, !tbaa !49
  %114 = sub nsw i32 16, %113
  %115 = lshr i32 %91, %114
  %116 = trunc i32 %115 to i16
  store i16 %116, ptr %93, align 8, !tbaa !48
  %117 = add nsw i32 %113, -13
  br label %125

118:                                              ; preds = %88
  %119 = shl i32 %89, %47
  %120 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %121 = load i16, ptr %120, align 8, !tbaa !48
  %122 = trunc i32 %119 to i16
  %123 = or i16 %121, %122
  store i16 %123, ptr %120, align 8, !tbaa !48
  %124 = add nsw i32 %47, 3
  br label %125

125:                                              ; preds = %118, %90
  %126 = phi i32 [ %124, %118 ], [ %117, %90 ]
  store i32 %126, ptr %46, align 4, !tbaa !49
  %127 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 40, i32 1
  %128 = load i32, ptr %127, align 8, !tbaa !72
  %129 = add nsw i32 %128, 1
  %130 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 41, i32 1
  %131 = load i32, ptr %130, align 8, !tbaa !73
  %132 = add nsw i32 %131, 1
  tail call fastcc void @send_all_trees(ptr noundef nonnull %0, i32 noundef %129, i32 noundef %132, i32 noundef %32) #11
  %133 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37
  %134 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38
  tail call fastcc void @compress_block(ptr noundef nonnull %0, ptr noundef nonnull %133, ptr noundef nonnull %134) #11
  br label %135

135:                                              ; preds = %86, %125, %39
  tail call fastcc void @init_block(ptr noundef nonnull %0) #11
  %136 = icmp eq i32 %3, 0
  br i1 %136, label %138, label %137

137:                                              ; preds = %135
  tail call fastcc void @bi_windup(ptr noundef nonnull %0) #11
  br label %138

138:                                              ; preds = %137, %135
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable
define internal fastcc noundef i32 @detect_data_type(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !74 {
  br label %2

2:                                                ; preds = %1, %11
  %3 = phi i64 [ 0, %1 ], [ %12, %11 ]
  %4 = phi i64 [ 4093624447, %1 ], [ %13, %11 ]
  %5 = and i64 %4, 1
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 %3
  %9 = load i16, ptr %8, align 4, !tbaa !51
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %35

11:                                               ; preds = %2, %7
  %12 = add nuw nsw i64 %3, 1
  %13 = lshr i64 %4, 1
  %14 = icmp eq i64 %12, 32
  br i1 %14, label %15, label %2, !llvm.loop !75

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 9
  %17 = load i16, ptr %16, align 4, !tbaa !51
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %19, label %35

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 10
  %21 = load i16, ptr %20, align 4, !tbaa !51
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 13
  %25 = load i16, ptr %24, align 4, !tbaa !51
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %30, label %35

27:                                               ; preds = %30
  %28 = add nuw nsw i64 %31, 1
  %29 = icmp eq i64 %28, 256
  br i1 %29, label %35, label %30, !llvm.loop !76

30:                                               ; preds = %23, %27
  %31 = phi i64 [ %28, %27 ], [ 32, %23 ]
  %32 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 %31
  %33 = load i16, ptr %32, align 4, !tbaa !51
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %27, label %35

35:                                               ; preds = %7, %27, %30, %15, %19, %23
  %36 = phi i32 [ 1, %23 ], [ 1, %19 ], [ 1, %15 ], [ 0, %27 ], [ 1, %30 ], [ 0, %7 ]
  ret i32 %36
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @build_tree(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #1 !PGOFuncName !77 {
  %3 = load ptr, ptr %1, align 8, !tbaa !78
  %4 = getelementptr inbounds %struct.tree_desc_s, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !79
  %6 = load ptr, ptr %5, align 8, !tbaa !80
  %7 = getelementptr inbounds %struct.static_tree_desc_s, ptr %5, i64 0, i32 3
  %8 = load i32, ptr %7, align 4, !tbaa !82
  %9 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 45
  store i32 0, ptr %9, align 4, !tbaa !83
  %10 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 46
  store i32 573, ptr %10, align 8, !tbaa !84
  %11 = icmp sgt i32 %8, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = zext nneg i32 %8 to i64
  br label %23

14:                                               ; preds = %38
  %15 = load i32, ptr %9, align 4, !tbaa !83
  %16 = icmp slt i32 %15, 2
  br i1 %16, label %17, label %66

17:                                               ; preds = %2, %14
  %18 = phi i32 [ %39, %14 ], [ -1, %2 ]
  %19 = phi i32 [ %15, %14 ], [ 0, %2 ]
  %20 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 52
  %21 = icmp eq ptr %6, null
  %22 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 53
  br label %42

23:                                               ; preds = %12, %38
  %24 = phi i64 [ 0, %12 ], [ %40, %38 ]
  %25 = phi i32 [ -1, %12 ], [ %39, %38 ]
  %26 = getelementptr inbounds %struct.ct_data_s, ptr %3, i64 %24
  %27 = load i16, ptr %26, align 2, !tbaa !51
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %23
  %30 = load i32, ptr %9, align 4, !tbaa !83
  %31 = add nsw i32 %30, 1
  store i32 %31, ptr %9, align 4, !tbaa !83
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %32
  %34 = trunc i64 %24 to i32
  store i32 %34, ptr %33, align 4, !tbaa !85
  %35 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 47, i64 %24
  store i8 0, ptr %35, align 1, !tbaa !51
  br label %38

36:                                               ; preds = %23
  %37 = getelementptr inbounds %struct.ct_data_s, ptr %3, i64 %24, i32 1
  store i16 0, ptr %37, align 2, !tbaa !51
  br label %38

38:                                               ; preds = %29, %36
  %39 = phi i32 [ %34, %29 ], [ %25, %36 ]
  %40 = add nuw nsw i64 %24, 1
  %41 = icmp eq i64 %40, %13
  br i1 %41, label %14, label %23, !llvm.loop !86

42:                                               ; preds = %17, %63
  %43 = phi i32 [ %19, %17 ], [ %64, %63 ]
  %44 = phi i32 [ %18, %17 ], [ %47, %63 ]
  %45 = icmp slt i32 %44, 2
  %46 = add nsw i32 %44, 1
  %47 = select i1 %45, i32 %46, i32 %44
  %48 = select i1 %45, i32 %46, i32 0
  %49 = add nsw i32 %43, 1
  store i32 %49, ptr %9, align 4, !tbaa !83
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %50
  store i32 %48, ptr %51, align 4, !tbaa !85
  %52 = sext i32 %48 to i64
  %53 = getelementptr inbounds %struct.ct_data_s, ptr %3, i64 %52
  store i16 1, ptr %53, align 2, !tbaa !51
  %54 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 47, i64 %52
  store i8 0, ptr %54, align 1, !tbaa !51
  %55 = load i64, ptr %20, align 8, !tbaa !69
  %56 = add i64 %55, -1
  store i64 %56, ptr %20, align 8, !tbaa !69
  br i1 %21, label %63, label %57

57:                                               ; preds = %42
  %58 = getelementptr inbounds %struct.ct_data_s, ptr %6, i64 %52, i32 1
  %59 = load i16, ptr %58, align 2, !tbaa !51
  %60 = zext i16 %59 to i64
  %61 = load i64, ptr %22, align 8, !tbaa !70
  %62 = sub i64 %61, %60
  store i64 %62, ptr %22, align 8, !tbaa !70
  br label %63

63:                                               ; preds = %57, %42
  %64 = load i32, ptr %9, align 4, !tbaa !83
  %65 = icmp slt i32 %64, 2
  br i1 %65, label %42, label %66, !llvm.loop !87

66:                                               ; preds = %63, %14
  %67 = phi i32 [ %39, %14 ], [ %47, %63 ]
  %68 = phi i32 [ %15, %14 ], [ %64, %63 ]
  %69 = getelementptr inbounds %struct.tree_desc_s, ptr %1, i64 0, i32 1
  store i32 %67, ptr %69, align 8, !tbaa !88
  %70 = lshr i32 %68, 1
  br label %75

71:                                               ; preds = %75
  %72 = load i32, ptr %9, align 4, !tbaa !83
  %73 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 1
  %74 = sext i32 %8 to i64
  br label %79

75:                                               ; preds = %66, %75
  %76 = phi i32 [ %77, %75 ], [ %70, %66 ]
  tail call fastcc void @pqdownheap(ptr noundef %0, ptr noundef %3, i32 noundef %76) #11
  %77 = add nsw i32 %76, -1
  %78 = icmp ugt i32 %76, 1
  br i1 %78, label %75, label %71, !llvm.loop !89

79:                                               ; preds = %71, %79
  %80 = phi i32 [ %72, %71 ], [ %116, %79 ]
  %81 = phi i64 [ %74, %71 ], [ %115, %79 ]
  %82 = load i32, ptr %73, align 4, !tbaa !85
  %83 = add nsw i32 %80, -1
  store i32 %83, ptr %9, align 4, !tbaa !83
  %84 = sext i32 %80 to i64
  %85 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %84
  %86 = load i32, ptr %85, align 4, !tbaa !85
  store i32 %86, ptr %73, align 4, !tbaa !85
  tail call fastcc void @pqdownheap(ptr noundef nonnull %0, ptr noundef %3, i32 noundef 1) #11
  %87 = load i32, ptr %73, align 4, !tbaa !85
  %88 = load i32, ptr %10, align 8, !tbaa !84
  %89 = add nsw i32 %88, -1
  store i32 %89, ptr %10, align 8, !tbaa !84
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %90
  store i32 %82, ptr %91, align 4, !tbaa !85
  %92 = load i32, ptr %10, align 8, !tbaa !84
  %93 = add nsw i32 %92, -1
  store i32 %93, ptr %10, align 8, !tbaa !84
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %94
  store i32 %87, ptr %95, align 4, !tbaa !85
  %96 = sext i32 %82 to i64
  %97 = getelementptr inbounds %struct.ct_data_s, ptr %3, i64 %96
  %98 = load i16, ptr %97, align 2, !tbaa !51
  %99 = sext i32 %87 to i64
  %100 = getelementptr inbounds %struct.ct_data_s, ptr %3, i64 %99
  %101 = load i16, ptr %100, align 2, !tbaa !51
  %102 = add i16 %101, %98
  %103 = getelementptr inbounds %struct.ct_data_s, ptr %3, i64 %81
  store i16 %102, ptr %103, align 2, !tbaa !51
  %104 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 47, i64 %96
  %105 = load i8, ptr %104, align 1, !tbaa !51
  %106 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 47, i64 %99
  %107 = load i8, ptr %106, align 1, !tbaa !51
  %108 = tail call i8 @llvm.umax.i8(i8 %105, i8 %107)
  %109 = add i8 %108, 1
  %110 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 47, i64 %81
  store i8 %109, ptr %110, align 1, !tbaa !51
  %111 = trunc i64 %81 to i32
  %112 = trunc i64 %81 to i16
  %113 = getelementptr inbounds %struct.ct_data_s, ptr %3, i64 %99, i32 1
  store i16 %112, ptr %113, align 2, !tbaa !51
  %114 = getelementptr inbounds %struct.ct_data_s, ptr %3, i64 %96, i32 1
  store i16 %112, ptr %114, align 2, !tbaa !51
  %115 = add i64 %81, 1
  store i32 %111, ptr %73, align 4, !tbaa !85
  tail call fastcc void @pqdownheap(ptr noundef nonnull %0, ptr noundef %3, i32 noundef 1) #11
  %116 = load i32, ptr %9, align 4, !tbaa !83
  %117 = icmp sgt i32 %116, 1
  br i1 %117, label %79, label %118, !llvm.loop !90

118:                                              ; preds = %79
  %119 = load i32, ptr %73, align 4, !tbaa !85
  %120 = load i32, ptr %10, align 8, !tbaa !84
  %121 = add nsw i32 %120, -1
  store i32 %121, ptr %10, align 8, !tbaa !84
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %122
  store i32 %119, ptr %123, align 4, !tbaa !85
  tail call fastcc void @gen_bitlen(ptr noundef nonnull %0, ptr noundef nonnull %1) #11
  %124 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 43
  tail call fastcc void @gen_codes(ptr noundef nonnull %3, i32 noundef %67, ptr noundef nonnull %124) #11
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @build_bl_tree(ptr nocapture noundef %0) unnamed_addr #1 !PGOFuncName !91 {
  %2 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37
  %3 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 40, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !72
  tail call fastcc void @scan_tree(ptr noundef %0, ptr noundef nonnull %2, i32 noundef %4) #11
  %5 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38
  %6 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 41, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !73
  tail call fastcc void @scan_tree(ptr noundef %0, ptr noundef nonnull %5, i32 noundef %7) #11
  %8 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 42
  tail call fastcc void @build_tree(ptr noundef %0, ptr noundef nonnull %8) #11
  br label %9

9:                                                ; preds = %1, %18
  %10 = phi i32 [ 18, %1 ], [ %19, %18 ]
  %11 = zext nneg i32 %10 to i64
  %12 = getelementptr inbounds [19 x i8], ptr @bl_order, i64 0, i64 %11
  %13 = load i8, ptr %12, align 1, !tbaa !51
  %14 = zext i8 %13 to i64
  %15 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 %14, i32 1
  %16 = load i16, ptr %15, align 2, !tbaa !51
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %9
  %19 = add nsw i32 %10, -1
  %20 = icmp ugt i32 %10, 3
  br i1 %20, label %9, label %21, !llvm.loop !92

21:                                               ; preds = %9, %18
  %22 = phi i32 [ %10, %9 ], [ 2, %18 ]
  %23 = mul i32 %22, 3
  %24 = add i32 %23, 17
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 52
  %27 = load i64, ptr %26, align 8, !tbaa !69
  %28 = add i64 %27, %25
  store i64 %28, ptr %26, align 8, !tbaa !69
  ret i32 %22
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @compress_block(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #1 !PGOFuncName !93 {
  %4 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 50
  %5 = load i32, ptr %4, align 4, !tbaa !58
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 57
  %9 = load i32, ptr %8, align 4, !tbaa !49
  br label %249

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 51
  %12 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 48
  %13 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 57
  %14 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %15 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %16 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 5
  br label %17

17:                                               ; preds = %10, %244
  %18 = phi i64 [ 0, %10 ], [ %24, %244 ]
  %19 = load ptr, ptr %11, align 8, !tbaa !94
  %20 = getelementptr inbounds i16, ptr %19, i64 %18
  %21 = load i16, ptr %20, align 2, !tbaa !95
  %22 = zext i16 %21 to i32
  %23 = load ptr, ptr %12, align 8, !tbaa !96
  %24 = add nuw nsw i64 %18, 1
  %25 = getelementptr inbounds i8, ptr %23, i64 %18
  %26 = load i8, ptr %25, align 1, !tbaa !51
  %27 = zext i8 %26 to i32
  %28 = icmp eq i16 %21, 0
  %29 = zext i8 %26 to i64
  br i1 %28, label %30, label %67

30:                                               ; preds = %17
  %31 = getelementptr inbounds %struct.ct_data_s, ptr %1, i64 %29
  %32 = getelementptr inbounds %struct.ct_data_s, ptr %1, i64 %29, i32 1
  %33 = load i16, ptr %32, align 2, !tbaa !51
  %34 = zext i16 %33 to i32
  %35 = load i32, ptr %13, align 4, !tbaa !49
  %36 = sub nsw i32 16, %34
  %37 = icmp sgt i32 %35, %36
  %38 = load i16, ptr %31, align 2, !tbaa !51
  %39 = zext i16 %38 to i32
  %40 = shl i32 %39, %35
  %41 = load i16, ptr %14, align 8, !tbaa !48
  %42 = trunc i32 %40 to i16
  %43 = or i16 %41, %42
  store i16 %43, ptr %14, align 8, !tbaa !48
  br i1 %37, label %44, label %65

44:                                               ; preds = %30
  %45 = trunc i16 %43 to i8
  %46 = load ptr, ptr %15, align 8, !tbaa !59
  %47 = load i32, ptr %16, align 8, !tbaa !60
  %48 = add i32 %47, 1
  store i32 %48, ptr %16, align 8, !tbaa !60
  %49 = zext i32 %47 to i64
  %50 = getelementptr inbounds i8, ptr %46, i64 %49
  store i8 %45, ptr %50, align 1, !tbaa !51
  %51 = load i16, ptr %14, align 8, !tbaa !48
  %52 = lshr i16 %51, 8
  %53 = trunc i16 %52 to i8
  %54 = load ptr, ptr %15, align 8, !tbaa !59
  %55 = load i32, ptr %16, align 8, !tbaa !60
  %56 = add i32 %55, 1
  store i32 %56, ptr %16, align 8, !tbaa !60
  %57 = zext i32 %55 to i64
  %58 = getelementptr inbounds i8, ptr %54, i64 %57
  store i8 %53, ptr %58, align 1, !tbaa !51
  %59 = load i32, ptr %13, align 4, !tbaa !49
  %60 = sub nsw i32 16, %59
  %61 = lshr i32 %39, %60
  %62 = trunc i32 %61 to i16
  store i16 %62, ptr %14, align 8, !tbaa !48
  %63 = add nsw i32 %34, -16
  %64 = add nsw i32 %63, %59
  br label %242

65:                                               ; preds = %30
  %66 = add nsw i32 %35, %34
  br label %242

67:                                               ; preds = %17
  %68 = getelementptr inbounds [256 x i8], ptr @_length_code, i64 0, i64 %29
  %69 = load i8, ptr %68, align 1, !tbaa !51
  %70 = zext i8 %69 to i64
  %71 = getelementptr %struct.ct_data_s, ptr %1, i64 %70
  %72 = getelementptr %struct.ct_data_s, ptr %71, i64 257
  %73 = getelementptr %struct.ct_data_s, ptr %71, i64 257, i32 1
  %74 = load i16, ptr %73, align 2, !tbaa !51
  %75 = zext i16 %74 to i32
  %76 = load i32, ptr %13, align 4, !tbaa !49
  %77 = sub nsw i32 16, %75
  %78 = icmp sgt i32 %76, %77
  %79 = load i16, ptr %72, align 2, !tbaa !51
  %80 = zext i16 %79 to i32
  %81 = shl i32 %80, %76
  %82 = load i16, ptr %14, align 8, !tbaa !48
  %83 = trunc i32 %81 to i16
  %84 = or i16 %82, %83
  store i16 %84, ptr %14, align 8, !tbaa !48
  br i1 %78, label %85, label %106

85:                                               ; preds = %67
  %86 = trunc i16 %84 to i8
  %87 = load ptr, ptr %15, align 8, !tbaa !59
  %88 = load i32, ptr %16, align 8, !tbaa !60
  %89 = add i32 %88, 1
  store i32 %89, ptr %16, align 8, !tbaa !60
  %90 = zext i32 %88 to i64
  %91 = getelementptr inbounds i8, ptr %87, i64 %90
  store i8 %86, ptr %91, align 1, !tbaa !51
  %92 = load i16, ptr %14, align 8, !tbaa !48
  %93 = lshr i16 %92, 8
  %94 = trunc i16 %93 to i8
  %95 = load ptr, ptr %15, align 8, !tbaa !59
  %96 = load i32, ptr %16, align 8, !tbaa !60
  %97 = add i32 %96, 1
  store i32 %97, ptr %16, align 8, !tbaa !60
  %98 = zext i32 %96 to i64
  %99 = getelementptr inbounds i8, ptr %95, i64 %98
  store i8 %94, ptr %99, align 1, !tbaa !51
  %100 = load i32, ptr %13, align 4, !tbaa !49
  %101 = sub nsw i32 16, %100
  %102 = lshr i32 %80, %101
  %103 = trunc i32 %102 to i16
  store i16 %103, ptr %14, align 8, !tbaa !48
  %104 = add nsw i32 %75, -16
  %105 = add nsw i32 %104, %100
  br label %108

106:                                              ; preds = %67
  %107 = add nsw i32 %76, %75
  br label %108

108:                                              ; preds = %106, %85
  %109 = phi i16 [ %84, %106 ], [ %103, %85 ]
  %110 = phi i32 [ %107, %106 ], [ %105, %85 ]
  store i32 %110, ptr %13, align 4, !tbaa !49
  %111 = getelementptr inbounds [29 x i32], ptr @extra_lbits, i64 0, i64 %70
  %112 = load i32, ptr %111, align 4, !tbaa !85
  %113 = add nsw i64 %70, -28
  %114 = icmp ult i64 %113, -20
  br i1 %114, label %154, label %115

115:                                              ; preds = %108
  %116 = getelementptr inbounds [29 x i32], ptr @base_length, i64 0, i64 %70
  %117 = load i32, ptr %116, align 4, !tbaa !85
  %118 = sub nsw i32 %27, %117
  %119 = sub nsw i32 16, %112
  %120 = icmp sgt i32 %110, %119
  br i1 %120, label %121, label %146

121:                                              ; preds = %115
  %122 = and i32 %118, 65535
  %123 = shl i32 %118, %110
  %124 = trunc i32 %123 to i16
  %125 = or i16 %109, %124
  store i16 %125, ptr %14, align 8, !tbaa !48
  %126 = trunc i16 %125 to i8
  %127 = load ptr, ptr %15, align 8, !tbaa !59
  %128 = load i32, ptr %16, align 8, !tbaa !60
  %129 = add i32 %128, 1
  store i32 %129, ptr %16, align 8, !tbaa !60
  %130 = zext i32 %128 to i64
  %131 = getelementptr inbounds i8, ptr %127, i64 %130
  store i8 %126, ptr %131, align 1, !tbaa !51
  %132 = load i16, ptr %14, align 8, !tbaa !48
  %133 = lshr i16 %132, 8
  %134 = trunc i16 %133 to i8
  %135 = load ptr, ptr %15, align 8, !tbaa !59
  %136 = load i32, ptr %16, align 8, !tbaa !60
  %137 = add i32 %136, 1
  store i32 %137, ptr %16, align 8, !tbaa !60
  %138 = zext i32 %136 to i64
  %139 = getelementptr inbounds i8, ptr %135, i64 %138
  store i8 %134, ptr %139, align 1, !tbaa !51
  %140 = load i32, ptr %13, align 4, !tbaa !49
  %141 = sub nsw i32 16, %140
  %142 = lshr i32 %122, %141
  %143 = trunc i32 %142 to i16
  store i16 %143, ptr %14, align 8, !tbaa !48
  %144 = add nsw i32 %112, -16
  %145 = add nsw i32 %144, %140
  br label %151

146:                                              ; preds = %115
  %147 = shl i32 %118, %110
  %148 = trunc i32 %147 to i16
  %149 = or i16 %109, %148
  store i16 %149, ptr %14, align 8, !tbaa !48
  %150 = add nsw i32 %112, %110
  br label %151

151:                                              ; preds = %146, %121
  %152 = phi i16 [ %149, %146 ], [ %143, %121 ]
  %153 = phi i32 [ %150, %146 ], [ %145, %121 ]
  store i32 %153, ptr %13, align 4, !tbaa !49
  br label %154

154:                                              ; preds = %151, %108
  %155 = phi i16 [ %152, %151 ], [ %109, %108 ]
  %156 = phi i32 [ %153, %151 ], [ %110, %108 ]
  %157 = add nsw i32 %22, -1
  %158 = icmp ult i16 %21, 257
  %159 = lshr i32 %157, 7
  %160 = add nuw nsw i32 %159, 256
  %161 = select i1 %158, i32 %157, i32 %160
  %162 = zext i32 %161 to i64
  %163 = getelementptr inbounds [512 x i8], ptr @_dist_code, i64 0, i64 %162
  %164 = load i8, ptr %163, align 1, !tbaa !51
  %165 = zext i8 %164 to i64
  %166 = getelementptr inbounds %struct.ct_data_s, ptr %2, i64 %165
  %167 = getelementptr inbounds %struct.ct_data_s, ptr %2, i64 %165, i32 1
  %168 = load i16, ptr %167, align 2, !tbaa !51
  %169 = zext i16 %168 to i32
  %170 = sub nsw i32 16, %169
  %171 = icmp sgt i32 %156, %170
  %172 = load i16, ptr %166, align 2, !tbaa !51
  %173 = zext i16 %172 to i32
  %174 = shl i32 %173, %156
  %175 = trunc i32 %174 to i16
  %176 = or i16 %155, %175
  store i16 %176, ptr %14, align 8, !tbaa !48
  br i1 %171, label %177, label %198

177:                                              ; preds = %154
  %178 = trunc i16 %176 to i8
  %179 = load ptr, ptr %15, align 8, !tbaa !59
  %180 = load i32, ptr %16, align 8, !tbaa !60
  %181 = add i32 %180, 1
  store i32 %181, ptr %16, align 8, !tbaa !60
  %182 = zext i32 %180 to i64
  %183 = getelementptr inbounds i8, ptr %179, i64 %182
  store i8 %178, ptr %183, align 1, !tbaa !51
  %184 = load i16, ptr %14, align 8, !tbaa !48
  %185 = lshr i16 %184, 8
  %186 = trunc i16 %185 to i8
  %187 = load ptr, ptr %15, align 8, !tbaa !59
  %188 = load i32, ptr %16, align 8, !tbaa !60
  %189 = add i32 %188, 1
  store i32 %189, ptr %16, align 8, !tbaa !60
  %190 = zext i32 %188 to i64
  %191 = getelementptr inbounds i8, ptr %187, i64 %190
  store i8 %186, ptr %191, align 1, !tbaa !51
  %192 = load i32, ptr %13, align 4, !tbaa !49
  %193 = sub nsw i32 16, %192
  %194 = lshr i32 %173, %193
  %195 = trunc i32 %194 to i16
  store i16 %195, ptr %14, align 8, !tbaa !48
  %196 = add nsw i32 %169, -16
  %197 = add nsw i32 %196, %192
  br label %200

198:                                              ; preds = %154
  %199 = add nsw i32 %156, %169
  br label %200

200:                                              ; preds = %198, %177
  %201 = phi i16 [ %176, %198 ], [ %195, %177 ]
  %202 = phi i32 [ %199, %198 ], [ %197, %177 ]
  store i32 %202, ptr %13, align 4, !tbaa !49
  %203 = getelementptr inbounds [30 x i32], ptr @extra_dbits, i64 0, i64 %165
  %204 = load i32, ptr %203, align 4, !tbaa !85
  %205 = icmp ult i8 %164, 4
  br i1 %205, label %244, label %206

206:                                              ; preds = %200
  %207 = getelementptr inbounds [30 x i32], ptr @base_dist, i64 0, i64 %165
  %208 = load i32, ptr %207, align 4, !tbaa !85
  %209 = sub i32 %157, %208
  %210 = sub nsw i32 16, %204
  %211 = icmp sgt i32 %202, %210
  br i1 %211, label %212, label %237

212:                                              ; preds = %206
  %213 = and i32 %209, 65535
  %214 = shl i32 %209, %202
  %215 = trunc i32 %214 to i16
  %216 = or i16 %201, %215
  store i16 %216, ptr %14, align 8, !tbaa !48
  %217 = trunc i16 %216 to i8
  %218 = load ptr, ptr %15, align 8, !tbaa !59
  %219 = load i32, ptr %16, align 8, !tbaa !60
  %220 = add i32 %219, 1
  store i32 %220, ptr %16, align 8, !tbaa !60
  %221 = zext i32 %219 to i64
  %222 = getelementptr inbounds i8, ptr %218, i64 %221
  store i8 %217, ptr %222, align 1, !tbaa !51
  %223 = load i16, ptr %14, align 8, !tbaa !48
  %224 = lshr i16 %223, 8
  %225 = trunc i16 %224 to i8
  %226 = load ptr, ptr %15, align 8, !tbaa !59
  %227 = load i32, ptr %16, align 8, !tbaa !60
  %228 = add i32 %227, 1
  store i32 %228, ptr %16, align 8, !tbaa !60
  %229 = zext i32 %227 to i64
  %230 = getelementptr inbounds i8, ptr %226, i64 %229
  store i8 %225, ptr %230, align 1, !tbaa !51
  %231 = load i32, ptr %13, align 4, !tbaa !49
  %232 = sub nsw i32 16, %231
  %233 = lshr i32 %213, %232
  %234 = trunc i32 %233 to i16
  store i16 %234, ptr %14, align 8, !tbaa !48
  %235 = add nsw i32 %204, -16
  %236 = add nsw i32 %235, %231
  br label %242

237:                                              ; preds = %206
  %238 = shl i32 %209, %202
  %239 = trunc i32 %238 to i16
  %240 = or i16 %201, %239
  store i16 %240, ptr %14, align 8, !tbaa !48
  %241 = add nsw i32 %204, %202
  br label %242

242:                                              ; preds = %212, %237, %44, %65
  %243 = phi i32 [ %66, %65 ], [ %64, %44 ], [ %241, %237 ], [ %236, %212 ]
  store i32 %243, ptr %13, align 4, !tbaa !49
  br label %244

244:                                              ; preds = %242, %200
  %245 = phi i32 [ %202, %200 ], [ %243, %242 ]
  %246 = load i32, ptr %4, align 4, !tbaa !58
  %247 = zext i32 %246 to i64
  %248 = icmp ult i64 %24, %247
  br i1 %248, label %17, label %249, !llvm.loop !97

249:                                              ; preds = %244, %7
  %250 = phi i32 [ %9, %7 ], [ %245, %244 ]
  %251 = getelementptr inbounds %struct.ct_data_s, ptr %1, i64 256
  %252 = getelementptr inbounds %struct.ct_data_s, ptr %1, i64 256, i32 1
  %253 = load i16, ptr %252, align 2, !tbaa !51
  %254 = zext i16 %253 to i32
  %255 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 57
  %256 = sub nsw i32 16, %254
  %257 = icmp sgt i32 %250, %256
  %258 = load i16, ptr %251, align 2, !tbaa !51
  %259 = zext i16 %258 to i32
  %260 = shl i32 %259, %250
  %261 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %262 = load i16, ptr %261, align 8, !tbaa !48
  %263 = trunc i32 %260 to i16
  %264 = or i16 %262, %263
  store i16 %264, ptr %261, align 8, !tbaa !48
  br i1 %257, label %265, label %288

265:                                              ; preds = %249
  %266 = trunc i16 %264 to i8
  %267 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %268 = load ptr, ptr %267, align 8, !tbaa !59
  %269 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 5
  %270 = load i32, ptr %269, align 8, !tbaa !60
  %271 = add i32 %270, 1
  store i32 %271, ptr %269, align 8, !tbaa !60
  %272 = zext i32 %270 to i64
  %273 = getelementptr inbounds i8, ptr %268, i64 %272
  store i8 %266, ptr %273, align 1, !tbaa !51
  %274 = load i16, ptr %261, align 8, !tbaa !48
  %275 = lshr i16 %274, 8
  %276 = trunc i16 %275 to i8
  %277 = load ptr, ptr %267, align 8, !tbaa !59
  %278 = load i32, ptr %269, align 8, !tbaa !60
  %279 = add i32 %278, 1
  store i32 %279, ptr %269, align 8, !tbaa !60
  %280 = zext i32 %278 to i64
  %281 = getelementptr inbounds i8, ptr %277, i64 %280
  store i8 %276, ptr %281, align 1, !tbaa !51
  %282 = load i32, ptr %255, align 4, !tbaa !49
  %283 = sub nsw i32 16, %282
  %284 = lshr i32 %259, %283
  %285 = trunc i32 %284 to i16
  store i16 %285, ptr %261, align 8, !tbaa !48
  %286 = add nsw i32 %254, -16
  %287 = add nsw i32 %286, %282
  br label %290

288:                                              ; preds = %249
  %289 = add nsw i32 %250, %254
  br label %290

290:                                              ; preds = %288, %265
  %291 = phi i32 [ %289, %288 ], [ %287, %265 ]
  store i32 %291, ptr %255, align 4, !tbaa !49
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @send_all_trees(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #5 !PGOFuncName !98 {
  %5 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 57
  %6 = load i32, ptr %5, align 4, !tbaa !49
  %7 = icmp sgt i32 %6, 11
  %8 = add i32 %1, 65279
  br i1 %7, label %9, label %37

9:                                                ; preds = %4
  %10 = and i32 %8, 65535
  %11 = shl i32 %8, %6
  %12 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %13 = load i16, ptr %12, align 8, !tbaa !48
  %14 = trunc i32 %11 to i16
  %15 = or i16 %13, %14
  store i16 %15, ptr %12, align 8, !tbaa !48
  %16 = trunc i16 %15 to i8
  %17 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !59
  %19 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 5
  %20 = load i32, ptr %19, align 8, !tbaa !60
  %21 = add i32 %20, 1
  store i32 %21, ptr %19, align 8, !tbaa !60
  %22 = zext i32 %20 to i64
  %23 = getelementptr inbounds i8, ptr %18, i64 %22
  store i8 %16, ptr %23, align 1, !tbaa !51
  %24 = load i16, ptr %12, align 8, !tbaa !48
  %25 = lshr i16 %24, 8
  %26 = trunc i16 %25 to i8
  %27 = load ptr, ptr %17, align 8, !tbaa !59
  %28 = load i32, ptr %19, align 8, !tbaa !60
  %29 = add i32 %28, 1
  store i32 %29, ptr %19, align 8, !tbaa !60
  %30 = zext i32 %28 to i64
  %31 = getelementptr inbounds i8, ptr %27, i64 %30
  store i8 %26, ptr %31, align 1, !tbaa !51
  %32 = load i32, ptr %5, align 4, !tbaa !49
  %33 = sub nsw i32 16, %32
  %34 = lshr i32 %10, %33
  %35 = trunc i32 %34 to i16
  %36 = add nsw i32 %32, -11
  br label %44

37:                                               ; preds = %4
  %38 = shl i32 %8, %6
  %39 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %40 = load i16, ptr %39, align 8, !tbaa !48
  %41 = trunc i32 %38 to i16
  %42 = or i16 %40, %41
  %43 = add nsw i32 %6, 5
  br label %44

44:                                               ; preds = %37, %9
  %45 = phi i16 [ %42, %37 ], [ %35, %9 ]
  %46 = phi i32 [ %43, %37 ], [ %36, %9 ]
  store i32 %46, ptr %5, align 4, !tbaa !49
  %47 = icmp sgt i32 %46, 11
  %48 = add i32 %2, 65535
  br i1 %47, label %49, label %76

49:                                               ; preds = %44
  %50 = and i32 %48, 65535
  %51 = shl i32 %48, %46
  %52 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %53 = trunc i32 %51 to i16
  %54 = or i16 %45, %53
  store i16 %54, ptr %52, align 8, !tbaa !48
  %55 = trunc i16 %54 to i8
  %56 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !59
  %58 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 5
  %59 = load i32, ptr %58, align 8, !tbaa !60
  %60 = add i32 %59, 1
  store i32 %60, ptr %58, align 8, !tbaa !60
  %61 = zext i32 %59 to i64
  %62 = getelementptr inbounds i8, ptr %57, i64 %61
  store i8 %55, ptr %62, align 1, !tbaa !51
  %63 = load i16, ptr %52, align 8, !tbaa !48
  %64 = lshr i16 %63, 8
  %65 = trunc i16 %64 to i8
  %66 = load ptr, ptr %56, align 8, !tbaa !59
  %67 = load i32, ptr %58, align 8, !tbaa !60
  %68 = add i32 %67, 1
  store i32 %68, ptr %58, align 8, !tbaa !60
  %69 = zext i32 %67 to i64
  %70 = getelementptr inbounds i8, ptr %66, i64 %69
  store i8 %65, ptr %70, align 1, !tbaa !51
  %71 = load i32, ptr %5, align 4, !tbaa !49
  %72 = sub nsw i32 16, %71
  %73 = lshr i32 %50, %72
  %74 = trunc i32 %73 to i16
  %75 = add nsw i32 %71, -11
  br label %81

76:                                               ; preds = %44
  %77 = shl i32 %48, %46
  %78 = trunc i32 %77 to i16
  %79 = or i16 %45, %78
  %80 = add nsw i32 %46, 5
  br label %81

81:                                               ; preds = %76, %49
  %82 = phi i16 [ %79, %76 ], [ %74, %49 ]
  %83 = phi i32 [ %80, %76 ], [ %75, %49 ]
  store i32 %83, ptr %5, align 4, !tbaa !49
  %84 = icmp sgt i32 %83, 12
  %85 = add i32 %3, 65532
  br i1 %84, label %86, label %113

86:                                               ; preds = %81
  %87 = and i32 %85, 65535
  %88 = shl i32 %85, %83
  %89 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %90 = trunc i32 %88 to i16
  %91 = or i16 %82, %90
  store i16 %91, ptr %89, align 8, !tbaa !48
  %92 = trunc i16 %91 to i8
  %93 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %94 = load ptr, ptr %93, align 8, !tbaa !59
  %95 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 5
  %96 = load i32, ptr %95, align 8, !tbaa !60
  %97 = add i32 %96, 1
  store i32 %97, ptr %95, align 8, !tbaa !60
  %98 = zext i32 %96 to i64
  %99 = getelementptr inbounds i8, ptr %94, i64 %98
  store i8 %92, ptr %99, align 1, !tbaa !51
  %100 = load i16, ptr %89, align 8, !tbaa !48
  %101 = lshr i16 %100, 8
  %102 = trunc i16 %101 to i8
  %103 = load ptr, ptr %93, align 8, !tbaa !59
  %104 = load i32, ptr %95, align 8, !tbaa !60
  %105 = add i32 %104, 1
  store i32 %105, ptr %95, align 8, !tbaa !60
  %106 = zext i32 %104 to i64
  %107 = getelementptr inbounds i8, ptr %103, i64 %106
  store i8 %102, ptr %107, align 1, !tbaa !51
  %108 = load i32, ptr %5, align 4, !tbaa !49
  %109 = sub nsw i32 16, %108
  %110 = lshr i32 %87, %109
  %111 = trunc i32 %110 to i16
  store i16 %111, ptr %89, align 8, !tbaa !48
  %112 = add nsw i32 %108, -12
  br label %119

113:                                              ; preds = %81
  %114 = shl i32 %85, %83
  %115 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %116 = trunc i32 %114 to i16
  %117 = or i16 %82, %116
  store i16 %117, ptr %115, align 8, !tbaa !48
  %118 = add nsw i32 %83, 4
  br label %119

119:                                              ; preds = %113, %86
  %120 = phi i16 [ %117, %113 ], [ %111, %86 ]
  %121 = phi i32 [ %118, %113 ], [ %112, %86 ]
  store i32 %121, ptr %5, align 4, !tbaa !49
  %122 = icmp sgt i32 %3, 0
  br i1 %122, label %123, label %169

123:                                              ; preds = %119
  %124 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %125 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %126 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 5
  %127 = zext nneg i32 %3 to i64
  br label %128

128:                                              ; preds = %123, %164
  %129 = phi i16 [ %120, %123 ], [ %165, %164 ]
  %130 = phi i32 [ %121, %123 ], [ %166, %164 ]
  %131 = phi i64 [ 0, %123 ], [ %167, %164 ]
  %132 = icmp sgt i32 %130, 13
  %133 = getelementptr inbounds [19 x i8], ptr @bl_order, i64 0, i64 %131
  %134 = load i8, ptr %133, align 1, !tbaa !51
  %135 = zext i8 %134 to i64
  %136 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 %135, i32 1
  %137 = load i16, ptr %136, align 2, !tbaa !51
  %138 = zext i16 %137 to i32
  %139 = shl i32 %138, %130
  %140 = trunc i32 %139 to i16
  %141 = or i16 %129, %140
  store i16 %141, ptr %124, align 8, !tbaa !48
  br i1 %132, label %142, label %162

142:                                              ; preds = %128
  %143 = trunc i16 %141 to i8
  %144 = load ptr, ptr %125, align 8, !tbaa !59
  %145 = load i32, ptr %126, align 8, !tbaa !60
  %146 = add i32 %145, 1
  store i32 %146, ptr %126, align 8, !tbaa !60
  %147 = zext i32 %145 to i64
  %148 = getelementptr inbounds i8, ptr %144, i64 %147
  store i8 %143, ptr %148, align 1, !tbaa !51
  %149 = load i16, ptr %124, align 8, !tbaa !48
  %150 = lshr i16 %149, 8
  %151 = trunc i16 %150 to i8
  %152 = load ptr, ptr %125, align 8, !tbaa !59
  %153 = load i32, ptr %126, align 8, !tbaa !60
  %154 = add i32 %153, 1
  store i32 %154, ptr %126, align 8, !tbaa !60
  %155 = zext i32 %153 to i64
  %156 = getelementptr inbounds i8, ptr %152, i64 %155
  store i8 %151, ptr %156, align 1, !tbaa !51
  %157 = load i32, ptr %5, align 4, !tbaa !49
  %158 = sub nsw i32 16, %157
  %159 = lshr i32 %138, %158
  %160 = trunc i32 %159 to i16
  store i16 %160, ptr %124, align 8, !tbaa !48
  %161 = add nsw i32 %157, -13
  br label %164

162:                                              ; preds = %128
  %163 = add nsw i32 %130, 3
  br label %164

164:                                              ; preds = %162, %142
  %165 = phi i16 [ %141, %162 ], [ %160, %142 ]
  %166 = phi i32 [ %163, %162 ], [ %161, %142 ]
  store i32 %166, ptr %5, align 4, !tbaa !49
  %167 = add nuw nsw i64 %131, 1
  %168 = icmp eq i64 %167, %127
  br i1 %168, label %169, label %128, !llvm.loop !99

169:                                              ; preds = %164, %119
  %170 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37
  %171 = add nsw i32 %1, -1
  tail call fastcc void @send_tree(ptr noundef nonnull %0, ptr noundef nonnull %170, i32 noundef %171) #11
  %172 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38
  %173 = add nsw i32 %2, -1
  tail call fastcc void @send_tree(ptr noundef nonnull %0, ptr noundef nonnull %172, i32 noundef %173) #11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bi_windup(ptr nocapture noundef %0) unnamed_addr #6 !PGOFuncName !100 {
  %2 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 57
  %3 = load i32, ptr %2, align 4, !tbaa !49
  %4 = icmp sgt i32 %3, 8
  br i1 %4, label %5, label %18

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %7 = load i16, ptr %6, align 8, !tbaa !48
  %8 = trunc i16 %7 to i8
  %9 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !59
  %11 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 5
  %12 = load i32, ptr %11, align 8, !tbaa !60
  %13 = add i32 %12, 1
  store i32 %13, ptr %11, align 8, !tbaa !60
  %14 = zext i32 %12 to i64
  %15 = getelementptr inbounds i8, ptr %10, i64 %14
  store i8 %8, ptr %15, align 1, !tbaa !51
  %16 = load i16, ptr %6, align 8, !tbaa !48
  %17 = lshr i16 %16, 8
  br label %25

18:                                               ; preds = %1
  %19 = icmp sgt i32 %3, 0
  br i1 %19, label %20, label %35

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %22 = load i16, ptr %21, align 8, !tbaa !48
  %23 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %24 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 5
  br label %25

25:                                               ; preds = %5, %20
  %26 = phi ptr [ %11, %5 ], [ %24, %20 ]
  %27 = phi ptr [ %9, %5 ], [ %23, %20 ]
  %28 = phi i16 [ %17, %5 ], [ %22, %20 ]
  %29 = trunc i16 %28 to i8
  %30 = load ptr, ptr %27, align 8, !tbaa !59
  %31 = load i32, ptr %26, align 8, !tbaa !60
  %32 = add i32 %31, 1
  store i32 %32, ptr %26, align 8, !tbaa !60
  %33 = zext i32 %31 to i64
  %34 = getelementptr inbounds i8, ptr %30, i64 %33
  store i8 %29, ptr %34, align 1, !tbaa !51
  br label %35

35:                                               ; preds = %25, %18
  %36 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  store i16 0, ptr %36, align 8, !tbaa !48
  store i32 0, ptr %2, align 4, !tbaa !49
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define hidden i32 @_tr_tally(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #6 {
  %4 = trunc i32 %1 to i16
  %5 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 51
  %6 = load ptr, ptr %5, align 8, !tbaa !94
  %7 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 50
  %8 = load i32, ptr %7, align 4, !tbaa !58
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds i16, ptr %6, i64 %9
  store i16 %4, ptr %10, align 2, !tbaa !95
  %11 = trunc i32 %2 to i8
  %12 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 48
  %13 = load ptr, ptr %12, align 8, !tbaa !96
  %14 = add i32 %8, 1
  store i32 %14, ptr %7, align 4, !tbaa !58
  %15 = getelementptr inbounds i8, ptr %13, i64 %9
  store i8 %11, ptr %15, align 1, !tbaa !51
  %16 = icmp eq i32 %1, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = zext i32 %2 to i64
  %19 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 %18
  br label %42

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 54
  %22 = load i32, ptr %21, align 8, !tbaa !101
  %23 = add i32 %22, 1
  store i32 %23, ptr %21, align 8, !tbaa !101
  %24 = add i32 %1, -1
  %25 = zext i32 %2 to i64
  %26 = getelementptr inbounds [256 x i8], ptr @_length_code, i64 0, i64 %25
  %27 = load i8, ptr %26, align 1, !tbaa !51
  %28 = zext i8 %27 to i64
  %29 = add nuw nsw i64 %28, 257
  %30 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 %29
  %31 = load i16, ptr %30, align 4, !tbaa !51
  %32 = add i16 %31, 1
  store i16 %32, ptr %30, align 4, !tbaa !51
  %33 = icmp ult i32 %1, 257
  %34 = lshr i32 %24, 7
  %35 = add nuw nsw i32 %34, 256
  %36 = select i1 %33, i32 %24, i32 %35
  %37 = zext nneg i32 %36 to i64
  %38 = getelementptr inbounds [512 x i8], ptr @_dist_code, i64 0, i64 %37
  %39 = load i8, ptr %38, align 1, !tbaa !51
  %40 = zext i8 %39 to i64
  %41 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38, i64 %40
  br label %42

42:                                               ; preds = %20, %17
  %43 = phi ptr [ %41, %20 ], [ %19, %17 ]
  %44 = load i16, ptr %43, align 4, !tbaa !51
  %45 = add i16 %44, 1
  store i16 %45, ptr %43, align 4, !tbaa !51
  %46 = load i32, ptr %7, align 4, !tbaa !58
  %47 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 49
  %48 = load i32, ptr %47, align 8, !tbaa !102
  %49 = add i32 %48, -1
  %50 = icmp eq i32 %46, %49
  %51 = zext i1 %50 to i32
  ret i32 %51
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @pqdownheap(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #7 !PGOFuncName !103 {
  %4 = zext nneg i32 %2 to i64
  %5 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !85
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 47, i64 %7
  %9 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 45
  %10 = shl i32 %2, 1
  %11 = load i32, ptr %9, align 4, !tbaa !83
  %12 = icmp sgt i32 %10, %11
  br i1 %12, label %69, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.ct_data_s, ptr %1, i64 %7
  br label %15

15:                                               ; preds = %13, %63
  %16 = phi i32 [ %11, %13 ], [ %67, %63 ]
  %17 = phi i32 [ %10, %13 ], [ %66, %63 ]
  %18 = phi i32 [ %2, %13 ], [ %48, %63 ]
  %19 = icmp slt i32 %17, %16
  br i1 %19, label %22, label %20

20:                                               ; preds = %15
  %21 = sext i32 %17 to i64
  br label %46

22:                                               ; preds = %15
  %23 = or disjoint i32 %17, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !85
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.ct_data_s, ptr %1, i64 %27
  %29 = load i16, ptr %28, align 2, !tbaa !51
  %30 = sext i32 %17 to i64
  %31 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %30
  %32 = load i32, ptr %31, align 4, !tbaa !85
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.ct_data_s, ptr %1, i64 %33
  %35 = load i16, ptr %34, align 2, !tbaa !51
  %36 = icmp ult i16 %29, %35
  br i1 %36, label %45, label %37

37:                                               ; preds = %22
  %38 = icmp eq i16 %29, %35
  br i1 %38, label %39, label %46

39:                                               ; preds = %37
  %40 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 47, i64 %27
  %41 = load i8, ptr %40, align 1, !tbaa !51
  %42 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 47, i64 %33
  %43 = load i8, ptr %42, align 1, !tbaa !51
  %44 = icmp ugt i8 %41, %43
  br i1 %44, label %46, label %45

45:                                               ; preds = %39, %22
  br label %46

46:                                               ; preds = %20, %45, %39, %37
  %47 = phi i64 [ %21, %20 ], [ %24, %45 ], [ %30, %39 ], [ %30, %37 ]
  %48 = phi i32 [ %17, %20 ], [ %23, %45 ], [ %17, %39 ], [ %17, %37 ]
  %49 = load i16, ptr %14, align 2, !tbaa !51
  %50 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %47
  %51 = load i32, ptr %50, align 4, !tbaa !85
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.ct_data_s, ptr %1, i64 %52
  %54 = load i16, ptr %53, align 2, !tbaa !51
  %55 = icmp ult i16 %49, %54
  br i1 %55, label %69, label %56

56:                                               ; preds = %46
  %57 = icmp eq i16 %49, %54
  br i1 %57, label %58, label %63

58:                                               ; preds = %56
  %59 = load i8, ptr %8, align 1, !tbaa !51
  %60 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 47, i64 %52
  %61 = load i8, ptr %60, align 1, !tbaa !51
  %62 = icmp ugt i8 %59, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %58, %56
  %64 = sext i32 %18 to i64
  %65 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %64
  store i32 %51, ptr %65, align 4, !tbaa !85
  %66 = shl i32 %48, 1
  %67 = load i32, ptr %9, align 4, !tbaa !83
  %68 = icmp sgt i32 %66, %67
  br i1 %68, label %69, label %15, !llvm.loop !104

69:                                               ; preds = %63, %58, %46, %3
  %70 = phi i32 [ %2, %3 ], [ %18, %46 ], [ %18, %58 ], [ %48, %63 ]
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %71
  store i32 %6, ptr %72, align 4, !tbaa !85
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gen_bitlen(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #1 !PGOFuncName !105 {
  %3 = load ptr, ptr %1, align 8, !tbaa !78
  %4 = getelementptr inbounds %struct.tree_desc_s, ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !88
  %6 = getelementptr inbounds %struct.tree_desc_s, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !79
  %8 = load ptr, ptr %7, align 8, !tbaa !80
  %9 = getelementptr inbounds %struct.static_tree_desc_s, ptr %7, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !106
  %11 = getelementptr inbounds %struct.static_tree_desc_s, ptr %7, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !107
  %13 = getelementptr inbounds %struct.static_tree_desc_s, ptr %7, i64 0, i32 4
  %14 = load i32, ptr %13, align 8, !tbaa !108
  %15 = getelementptr i8, ptr %0, i64 2960
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %15, i8 0, i64 32, i1 false), !tbaa !95
  %16 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 46
  %17 = load i32, ptr %16, align 8, !tbaa !84
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !85
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.ct_data_s, ptr %3, i64 %21, i32 1
  store i16 0, ptr %22, align 2, !tbaa !51
  %23 = load i32, ptr %16, align 8, !tbaa !84
  %24 = icmp slt i32 %23, 572
  br i1 %24, label %25, label %155

25:                                               ; preds = %2
  %26 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 52
  %27 = icmp eq ptr %8, null
  %28 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 53
  %29 = sext i32 %23 to i64
  %30 = add nsw i64 %29, 1
  br label %31

31:                                               ; preds = %25, %80
  %32 = phi i64 [ %30, %25 ], [ %81, %80 ]
  %33 = phi i32 [ 0, %25 ], [ %48, %80 ]
  %34 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %32
  %35 = load i32, ptr %34, align 4, !tbaa !85
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.ct_data_s, ptr %3, i64 %36
  %38 = getelementptr inbounds %struct.ct_data_s, ptr %3, i64 %36, i32 1
  %39 = load i16, ptr %38, align 2, !tbaa !51
  %40 = zext i16 %39 to i64
  %41 = getelementptr inbounds %struct.ct_data_s, ptr %3, i64 %40, i32 1
  %42 = load i16, ptr %41, align 2, !tbaa !51
  %43 = zext i16 %42 to i32
  %44 = add nuw nsw i32 %43, 1
  %45 = icmp sle i32 %14, %43
  %46 = select i1 %45, i32 %14, i32 %44
  %47 = zext i1 %45 to i32
  %48 = add nuw nsw i32 %33, %47
  %49 = trunc i32 %46 to i16
  store i16 %49, ptr %38, align 2, !tbaa !51
  %50 = icmp sgt i32 %35, %5
  br i1 %50, label %80, label %51

51:                                               ; preds = %31
  %52 = sext i32 %46 to i64
  %53 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 43, i64 %52
  %54 = load i16, ptr %53, align 2, !tbaa !95
  %55 = add i16 %54, 1
  store i16 %55, ptr %53, align 2, !tbaa !95
  %56 = icmp slt i32 %35, %12
  br i1 %56, label %62, label %57

57:                                               ; preds = %51
  %58 = sub nsw i32 %35, %12
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, ptr %10, i64 %59
  %61 = load i32, ptr %60, align 4, !tbaa !85
  br label %62

62:                                               ; preds = %57, %51
  %63 = phi i32 [ %61, %57 ], [ 0, %51 ]
  %64 = load i16, ptr %37, align 2, !tbaa !51
  %65 = zext i16 %64 to i64
  %66 = add nsw i32 %63, %46
  %67 = sext i32 %66 to i64
  %68 = mul nsw i64 %65, %67
  %69 = load i64, ptr %26, align 8, !tbaa !69
  %70 = add i64 %68, %69
  store i64 %70, ptr %26, align 8, !tbaa !69
  br i1 %27, label %80, label %71

71:                                               ; preds = %62
  %72 = getelementptr inbounds %struct.ct_data_s, ptr %8, i64 %36, i32 1
  %73 = load i16, ptr %72, align 2, !tbaa !51
  %74 = zext i16 %73 to i32
  %75 = add nsw i32 %63, %74
  %76 = sext i32 %75 to i64
  %77 = mul nsw i64 %76, %65
  %78 = load i64, ptr %28, align 8, !tbaa !70
  %79 = add i64 %77, %78
  store i64 %79, ptr %28, align 8, !tbaa !70
  br label %80

80:                                               ; preds = %62, %71, %31
  %81 = add nsw i64 %32, 1
  %82 = and i64 %81, 4294967295
  %83 = icmp eq i64 %82, 573
  br i1 %83, label %84, label %31, !llvm.loop !109

84:                                               ; preds = %80
  %85 = icmp eq i32 %48, 0
  br i1 %85, label %155, label %86

86:                                               ; preds = %84
  %87 = sext i32 %14 to i64
  %88 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 43, i64 %87
  br label %89

89:                                               ; preds = %86, %97
  %90 = phi i32 [ %107, %97 ], [ %48, %86 ]
  br label %91

91:                                               ; preds = %91, %89
  %92 = phi i64 [ %93, %91 ], [ %87, %89 ]
  %93 = add i64 %92, -1
  %94 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 43, i64 %93
  %95 = load i16, ptr %94, align 2, !tbaa !95
  %96 = icmp eq i16 %95, 0
  br i1 %96, label %91, label %97, !llvm.loop !110

97:                                               ; preds = %91
  %98 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 43, i64 %93
  %99 = add i16 %95, -1
  store i16 %99, ptr %98, align 2, !tbaa !95
  %100 = shl i64 %92, 32
  %101 = ashr exact i64 %100, 32
  %102 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 43, i64 %101
  %103 = load i16, ptr %102, align 2, !tbaa !95
  %104 = add i16 %103, 2
  store i16 %104, ptr %102, align 2, !tbaa !95
  %105 = load i16, ptr %88, align 2, !tbaa !95
  %106 = add i16 %105, -1
  store i16 %106, ptr %88, align 2, !tbaa !95
  %107 = add nsw i32 %90, -2
  %108 = icmp sgt i32 %90, 2
  br i1 %108, label %89, label %109, !llvm.loop !111

109:                                              ; preds = %97
  %110 = icmp eq i32 %14, 0
  br i1 %110, label %155, label %111

111:                                              ; preds = %109
  %112 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 52
  br label %113

113:                                              ; preds = %111, %151
  %114 = phi i64 [ %87, %111 ], [ %152, %151 ]
  %115 = phi i32 [ 573, %111 ], [ %123, %151 ]
  %116 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 43, i64 %114
  %117 = load i16, ptr %116, align 2, !tbaa !95
  %118 = zext i16 %117 to i32
  %119 = trunc i64 %114 to i32
  %120 = trunc i64 %114 to i16
  br label %121

121:                                              ; preds = %149, %113
  %122 = phi i32 [ %150, %149 ], [ %118, %113 ]
  %123 = phi i32 [ %134, %149 ], [ %115, %113 ]
  %124 = icmp eq i32 %122, 0
  %125 = sext i32 %123 to i64
  br label %126

126:                                              ; preds = %121, %128
  %127 = phi i64 [ %125, %121 ], [ %129, %128 ]
  br i1 %124, label %151, label %128

128:                                              ; preds = %126
  %129 = add i64 %127, -1
  %130 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %129
  %131 = load i32, ptr %130, align 4, !tbaa !85
  %132 = icmp sgt i32 %131, %5
  br i1 %132, label %126, label %133, !llvm.loop !112

133:                                              ; preds = %128
  %134 = trunc i64 %129 to i32
  %135 = sext i32 %131 to i64
  %136 = getelementptr inbounds %struct.ct_data_s, ptr %3, i64 %135, i32 1
  %137 = load i16, ptr %136, align 2, !tbaa !51
  %138 = zext i16 %137 to i32
  %139 = icmp eq i32 %119, %138
  br i1 %139, label %149, label %140

140:                                              ; preds = %133
  %141 = getelementptr inbounds %struct.ct_data_s, ptr %3, i64 %135
  %142 = zext i16 %137 to i64
  %143 = sub nsw i64 %114, %142
  %144 = load i16, ptr %141, align 2, !tbaa !51
  %145 = zext i16 %144 to i64
  %146 = mul nsw i64 %143, %145
  %147 = load i64, ptr %112, align 8, !tbaa !69
  %148 = add i64 %146, %147
  store i64 %148, ptr %112, align 8, !tbaa !69
  store i16 %120, ptr %136, align 2, !tbaa !51
  br label %149

149:                                              ; preds = %140, %133
  %150 = add nsw i32 %122, -1
  br label %121, !llvm.loop !112

151:                                              ; preds = %126
  %152 = add nsw i64 %114, -1
  %153 = and i64 %152, 4294967295
  %154 = icmp eq i64 %153, 0
  br i1 %154, label %155, label %113, !llvm.loop !113

155:                                              ; preds = %151, %2, %109, %84
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @gen_codes(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #7 !PGOFuncName !114 {
  %4 = alloca [16 x i16], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #12
  %5 = getelementptr i16, ptr %2, i64 -1
  br label %11

6:                                                ; preds = %11
  %7 = icmp slt i32 %1, 0
  br i1 %7, label %39, label %8

8:                                                ; preds = %6
  %9 = add nuw i32 %1, 1
  %10 = zext i32 %9 to i64
  br label %21

11:                                               ; preds = %3, %11
  %12 = phi i64 [ 1, %3 ], [ %19, %11 ]
  %13 = phi i16 [ 0, %3 ], [ %17, %11 ]
  %14 = getelementptr i16, ptr %5, i64 %12
  %15 = load i16, ptr %14, align 2, !tbaa !95
  %16 = add i16 %15, %13
  %17 = shl i16 %16, 1
  %18 = getelementptr inbounds [16 x i16], ptr %4, i64 0, i64 %12
  store i16 %17, ptr %18, align 2, !tbaa !95
  %19 = add nuw nsw i64 %12, 1
  %20 = icmp eq i64 %19, 16
  br i1 %20, label %6, label %11, !llvm.loop !115

21:                                               ; preds = %8, %36
  %22 = phi i64 [ 0, %8 ], [ %37, %36 ]
  %23 = getelementptr inbounds %struct.ct_data_s, ptr %0, i64 %22, i32 1
  %24 = load i16, ptr %23, align 2, !tbaa !51
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %36, label %26

26:                                               ; preds = %21
  %27 = zext i16 %24 to i32
  %28 = getelementptr inbounds %struct.ct_data_s, ptr %0, i64 %22
  %29 = zext i16 %24 to i64
  %30 = getelementptr inbounds [16 x i16], ptr %4, i64 0, i64 %29
  %31 = load i16, ptr %30, align 2, !tbaa !95
  %32 = add i16 %31, 1
  store i16 %32, ptr %30, align 2, !tbaa !95
  %33 = zext i16 %31 to i32
  %34 = tail call fastcc i32 @bi_reverse(i32 noundef %33, i32 noundef %27) #11, !range !116
  %35 = trunc i32 %34 to i16
  store i16 %35, ptr %28, align 2, !tbaa !51
  br label %36

36:                                               ; preds = %21, %26
  %37 = add nuw nsw i64 %22, 1
  %38 = icmp eq i64 %37, %10
  br i1 %38, label %39, label %21, !llvm.loop !117

39:                                               ; preds = %36, %6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #12
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(none) uwtable
define internal fastcc i32 @bi_reverse(i32 noundef %0, i32 noundef %1) unnamed_addr #8 !PGOFuncName !118 {
  br label %3

3:                                                ; preds = %3, %2
  %4 = phi i32 [ %0, %2 ], [ %9, %3 ]
  %5 = phi i32 [ %1, %2 ], [ %11, %3 ]
  %6 = phi i32 [ 0, %2 ], [ %10, %3 ]
  %7 = and i32 %4, 1
  %8 = or disjoint i32 %6, %7
  %9 = lshr i32 %4, 1
  %10 = shl i32 %8, 1
  %11 = add nsw i32 %5, -1
  %12 = icmp sgt i32 %5, 1
  br i1 %12, label %3, label %13, !llvm.loop !119

13:                                               ; preds = %3
  %14 = and i32 %8, 2147483647
  ret i32 %14
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @scan_tree(ptr nocapture noundef %0, ptr nocapture noundef %1, i32 noundef %2) unnamed_addr #7 !PGOFuncName !120 {
  %4 = getelementptr inbounds %struct.ct_data_s, ptr %1, i64 0, i32 1
  %5 = load i16, ptr %4, align 2, !tbaa !51
  %6 = sext i32 %2 to i64
  %7 = getelementptr %struct.ct_data_s, ptr %1, i64 %6
  %8 = getelementptr %struct.ct_data_s, ptr %7, i64 1, i32 1
  store i16 -1, ptr %8, align 2, !tbaa !51
  %9 = icmp slt i32 %2, 0
  br i1 %9, label %74, label %10

10:                                               ; preds = %3
  %11 = icmp eq i16 %5, 0
  %12 = select i1 %11, i32 3, i32 4
  %13 = select i1 %11, i32 138, i32 7
  %14 = zext i16 %5 to i32
  %15 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 16
  %16 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 18
  %17 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 17
  %18 = add nuw i32 %2, 1
  %19 = zext i32 %18 to i64
  br label %20

20:                                               ; preds = %10, %68
  %21 = phi i64 [ 0, %10 ], [ %27, %68 ]
  %22 = phi i32 [ %12, %10 ], [ %72, %68 ]
  %23 = phi i32 [ %13, %10 ], [ %71, %68 ]
  %24 = phi i32 [ 0, %10 ], [ %70, %68 ]
  %25 = phi i32 [ %14, %10 ], [ %30, %68 ]
  %26 = phi i32 [ -1, %10 ], [ %69, %68 ]
  %27 = add nuw nsw i64 %21, 1
  %28 = getelementptr inbounds %struct.ct_data_s, ptr %1, i64 %27, i32 1
  %29 = load i16, ptr %28, align 2, !tbaa !51
  %30 = zext i16 %29 to i32
  %31 = add nsw i32 %24, 1
  %32 = icmp slt i32 %31, %23
  %33 = icmp eq i32 %25, %30
  %34 = select i1 %32, i1 %33, i1 false
  br i1 %34, label %68, label %35

35:                                               ; preds = %20
  %36 = icmp slt i32 %31, %22
  br i1 %36, label %37, label %43

37:                                               ; preds = %35
  %38 = zext nneg i32 %25 to i64
  %39 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 %38
  %40 = load i16, ptr %39, align 4, !tbaa !51
  %41 = trunc i32 %31 to i16
  %42 = add i16 %40, %41
  store i16 %42, ptr %39, align 4, !tbaa !51
  br label %63

43:                                               ; preds = %35
  %44 = icmp eq i32 %25, 0
  br i1 %44, label %55, label %45

45:                                               ; preds = %43
  %46 = icmp eq i32 %25, %26
  br i1 %46, label %52, label %47

47:                                               ; preds = %45
  %48 = zext nneg i32 %25 to i64
  %49 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 %48
  %50 = load i16, ptr %49, align 4, !tbaa !51
  %51 = add i16 %50, 1
  store i16 %51, ptr %49, align 4, !tbaa !51
  br label %52

52:                                               ; preds = %47, %45
  %53 = load i16, ptr %15, align 4, !tbaa !51
  %54 = add i16 %53, 1
  store i16 %54, ptr %15, align 4, !tbaa !51
  br label %63

55:                                               ; preds = %43
  %56 = icmp slt i32 %24, 10
  br i1 %56, label %57, label %60

57:                                               ; preds = %55
  %58 = load i16, ptr %17, align 4, !tbaa !51
  %59 = add i16 %58, 1
  store i16 %59, ptr %17, align 4, !tbaa !51
  br label %63

60:                                               ; preds = %55
  %61 = load i16, ptr %16, align 4, !tbaa !51
  %62 = add i16 %61, 1
  store i16 %62, ptr %16, align 4, !tbaa !51
  br label %63

63:                                               ; preds = %37, %57, %60, %52
  %64 = icmp eq i16 %29, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %63
  %66 = select i1 %33, i32 6, i32 7
  %67 = select i1 %33, i32 3, i32 4
  br label %68

68:                                               ; preds = %65, %63, %20
  %69 = phi i32 [ %26, %20 ], [ %25, %63 ], [ %25, %65 ]
  %70 = phi i32 [ %31, %20 ], [ 0, %63 ], [ 0, %65 ]
  %71 = phi i32 [ %23, %20 ], [ 138, %63 ], [ %66, %65 ]
  %72 = phi i32 [ %22, %20 ], [ 3, %63 ], [ %67, %65 ]
  %73 = icmp eq i64 %27, %19
  br i1 %73, label %74, label %20, !llvm.loop !121

74:                                               ; preds = %68, %3
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @send_tree(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #5 !PGOFuncName !122 {
  %4 = icmp slt i32 %2, 0
  br i1 %4, label %350, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.ct_data_s, ptr %1, i64 0, i32 1
  %7 = load i16, ptr %6, align 2, !tbaa !51
  %8 = icmp eq i16 %7, 0
  %9 = select i1 %8, i32 138, i32 7
  %10 = select i1 %8, i32 3, i32 4
  %11 = zext i16 %7 to i32
  %12 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 57
  %13 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %14 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %15 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 5
  %16 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 16
  %17 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 16, i32 1
  %18 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 18
  %19 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 18, i32 1
  %20 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 17
  %21 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 17, i32 1
  %22 = add nuw i32 %2, 1
  %23 = zext i32 %22 to i64
  br label %24

24:                                               ; preds = %5, %344
  %25 = phi i64 [ 0, %5 ], [ %31, %344 ]
  %26 = phi i32 [ -1, %5 ], [ %348, %344 ]
  %27 = phi i32 [ %11, %5 ], [ %34, %344 ]
  %28 = phi i32 [ 0, %5 ], [ %347, %344 ]
  %29 = phi i32 [ %9, %5 ], [ %346, %344 ]
  %30 = phi i32 [ %10, %5 ], [ %345, %344 ]
  %31 = add nuw nsw i64 %25, 1
  %32 = getelementptr inbounds %struct.ct_data_s, ptr %1, i64 %31, i32 1
  %33 = load i16, ptr %32, align 2, !tbaa !51
  %34 = zext i16 %33 to i32
  %35 = add nsw i32 %28, 1
  %36 = icmp slt i32 %35, %29
  %37 = icmp eq i32 %27, %34
  %38 = select i1 %36, i1 %37, i1 false
  br i1 %38, label %344, label %39

39:                                               ; preds = %24
  %40 = icmp slt i32 %35, %30
  br i1 %40, label %41, label %86

41:                                               ; preds = %39
  %42 = zext nneg i32 %27 to i64
  %43 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 %42
  %44 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 %42, i32 1
  %45 = load i32, ptr %12, align 4, !tbaa !49
  br label %46

46:                                               ; preds = %41, %82
  %47 = phi i32 [ %83, %82 ], [ %45, %41 ]
  %48 = phi i32 [ %84, %82 ], [ %35, %41 ]
  %49 = load i16, ptr %44, align 2, !tbaa !51
  %50 = zext i16 %49 to i32
  %51 = sub nsw i32 16, %50
  %52 = icmp sgt i32 %47, %51
  %53 = load i16, ptr %43, align 4, !tbaa !51
  %54 = zext i16 %53 to i32
  %55 = shl i32 %54, %47
  %56 = load i16, ptr %13, align 8, !tbaa !48
  %57 = trunc i32 %55 to i16
  %58 = or i16 %56, %57
  store i16 %58, ptr %13, align 8, !tbaa !48
  br i1 %52, label %59, label %80

59:                                               ; preds = %46
  %60 = trunc i16 %58 to i8
  %61 = load ptr, ptr %14, align 8, !tbaa !59
  %62 = load i32, ptr %15, align 8, !tbaa !60
  %63 = add i32 %62, 1
  store i32 %63, ptr %15, align 8, !tbaa !60
  %64 = zext i32 %62 to i64
  %65 = getelementptr inbounds i8, ptr %61, i64 %64
  store i8 %60, ptr %65, align 1, !tbaa !51
  %66 = load i16, ptr %13, align 8, !tbaa !48
  %67 = lshr i16 %66, 8
  %68 = trunc i16 %67 to i8
  %69 = load ptr, ptr %14, align 8, !tbaa !59
  %70 = load i32, ptr %15, align 8, !tbaa !60
  %71 = add i32 %70, 1
  store i32 %71, ptr %15, align 8, !tbaa !60
  %72 = zext i32 %70 to i64
  %73 = getelementptr inbounds i8, ptr %69, i64 %72
  store i8 %68, ptr %73, align 1, !tbaa !51
  %74 = load i32, ptr %12, align 4, !tbaa !49
  %75 = sub nsw i32 16, %74
  %76 = lshr i32 %54, %75
  %77 = trunc i32 %76 to i16
  store i16 %77, ptr %13, align 8, !tbaa !48
  %78 = add nsw i32 %50, -16
  %79 = add nsw i32 %78, %74
  br label %82

80:                                               ; preds = %46
  %81 = add nsw i32 %47, %50
  br label %82

82:                                               ; preds = %80, %59
  %83 = phi i32 [ %81, %80 ], [ %79, %59 ]
  store i32 %83, ptr %12, align 4, !tbaa !49
  %84 = add nsw i32 %48, -1
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %339, label %46, !llvm.loop !123

86:                                               ; preds = %39
  %87 = icmp eq i32 %27, 0
  %88 = load i32, ptr %12, align 4, !tbaa !49
  br i1 %87, label %200, label %89

89:                                               ; preds = %86
  %90 = icmp eq i32 %27, %26
  br i1 %90, label %130, label %91

91:                                               ; preds = %89
  %92 = zext nneg i32 %27 to i64
  %93 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 %92
  %94 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 %92, i32 1
  %95 = load i16, ptr %94, align 2, !tbaa !51
  %96 = zext i16 %95 to i32
  %97 = sub nsw i32 16, %96
  %98 = icmp sgt i32 %88, %97
  %99 = load i16, ptr %93, align 4, !tbaa !51
  %100 = zext i16 %99 to i32
  %101 = shl i32 %100, %88
  %102 = load i16, ptr %13, align 8, !tbaa !48
  %103 = trunc i32 %101 to i16
  %104 = or i16 %102, %103
  store i16 %104, ptr %13, align 8, !tbaa !48
  br i1 %98, label %105, label %126

105:                                              ; preds = %91
  %106 = trunc i16 %104 to i8
  %107 = load ptr, ptr %14, align 8, !tbaa !59
  %108 = load i32, ptr %15, align 8, !tbaa !60
  %109 = add i32 %108, 1
  store i32 %109, ptr %15, align 8, !tbaa !60
  %110 = zext i32 %108 to i64
  %111 = getelementptr inbounds i8, ptr %107, i64 %110
  store i8 %106, ptr %111, align 1, !tbaa !51
  %112 = load i16, ptr %13, align 8, !tbaa !48
  %113 = lshr i16 %112, 8
  %114 = trunc i16 %113 to i8
  %115 = load ptr, ptr %14, align 8, !tbaa !59
  %116 = load i32, ptr %15, align 8, !tbaa !60
  %117 = add i32 %116, 1
  store i32 %117, ptr %15, align 8, !tbaa !60
  %118 = zext i32 %116 to i64
  %119 = getelementptr inbounds i8, ptr %115, i64 %118
  store i8 %114, ptr %119, align 1, !tbaa !51
  %120 = load i32, ptr %12, align 4, !tbaa !49
  %121 = sub nsw i32 16, %120
  %122 = lshr i32 %100, %121
  %123 = trunc i32 %122 to i16
  store i16 %123, ptr %13, align 8, !tbaa !48
  %124 = add nsw i32 %96, -16
  %125 = add nsw i32 %124, %120
  br label %128

126:                                              ; preds = %91
  %127 = add nsw i32 %88, %96
  br label %128

128:                                              ; preds = %126, %105
  %129 = phi i32 [ %127, %126 ], [ %125, %105 ]
  store i32 %129, ptr %12, align 4, !tbaa !49
  br label %130

130:                                              ; preds = %128, %89
  %131 = phi i32 [ %129, %128 ], [ %88, %89 ]
  %132 = phi i32 [ %28, %128 ], [ %35, %89 ]
  %133 = load i16, ptr %17, align 2, !tbaa !51
  %134 = zext i16 %133 to i32
  %135 = sub nsw i32 16, %134
  %136 = icmp sgt i32 %131, %135
  %137 = load i16, ptr %16, align 4, !tbaa !51
  %138 = zext i16 %137 to i32
  %139 = shl i32 %138, %131
  %140 = load i16, ptr %13, align 8, !tbaa !48
  %141 = trunc i32 %139 to i16
  %142 = or i16 %140, %141
  br i1 %136, label %143, label %164

143:                                              ; preds = %130
  store i16 %142, ptr %13, align 8, !tbaa !48
  %144 = trunc i16 %142 to i8
  %145 = load ptr, ptr %14, align 8, !tbaa !59
  %146 = load i32, ptr %15, align 8, !tbaa !60
  %147 = add i32 %146, 1
  store i32 %147, ptr %15, align 8, !tbaa !60
  %148 = zext i32 %146 to i64
  %149 = getelementptr inbounds i8, ptr %145, i64 %148
  store i8 %144, ptr %149, align 1, !tbaa !51
  %150 = load i16, ptr %13, align 8, !tbaa !48
  %151 = lshr i16 %150, 8
  %152 = trunc i16 %151 to i8
  %153 = load ptr, ptr %14, align 8, !tbaa !59
  %154 = load i32, ptr %15, align 8, !tbaa !60
  %155 = add i32 %154, 1
  store i32 %155, ptr %15, align 8, !tbaa !60
  %156 = zext i32 %154 to i64
  %157 = getelementptr inbounds i8, ptr %153, i64 %156
  store i8 %152, ptr %157, align 1, !tbaa !51
  %158 = load i32, ptr %12, align 4, !tbaa !49
  %159 = sub nsw i32 16, %158
  %160 = lshr i32 %138, %159
  %161 = trunc i32 %160 to i16
  %162 = add nsw i32 %134, -16
  %163 = add nsw i32 %162, %158
  br label %166

164:                                              ; preds = %130
  %165 = add nsw i32 %131, %134
  br label %166

166:                                              ; preds = %164, %143
  %167 = phi i16 [ %142, %164 ], [ %161, %143 ]
  %168 = phi i32 [ %165, %164 ], [ %163, %143 ]
  store i32 %168, ptr %12, align 4, !tbaa !49
  %169 = icmp sgt i32 %168, 14
  %170 = add i32 %132, 65533
  br i1 %169, label %171, label %195

171:                                              ; preds = %166
  %172 = and i32 %170, 65535
  %173 = shl i32 %170, %168
  %174 = trunc i32 %173 to i16
  %175 = or i16 %167, %174
  store i16 %175, ptr %13, align 8, !tbaa !48
  %176 = trunc i16 %175 to i8
  %177 = load ptr, ptr %14, align 8, !tbaa !59
  %178 = load i32, ptr %15, align 8, !tbaa !60
  %179 = add i32 %178, 1
  store i32 %179, ptr %15, align 8, !tbaa !60
  %180 = zext i32 %178 to i64
  %181 = getelementptr inbounds i8, ptr %177, i64 %180
  store i8 %176, ptr %181, align 1, !tbaa !51
  %182 = load i16, ptr %13, align 8, !tbaa !48
  %183 = lshr i16 %182, 8
  %184 = trunc i16 %183 to i8
  %185 = load ptr, ptr %14, align 8, !tbaa !59
  %186 = load i32, ptr %15, align 8, !tbaa !60
  %187 = add i32 %186, 1
  store i32 %187, ptr %15, align 8, !tbaa !60
  %188 = zext i32 %186 to i64
  %189 = getelementptr inbounds i8, ptr %185, i64 %188
  store i8 %184, ptr %189, align 1, !tbaa !51
  %190 = load i32, ptr %12, align 4, !tbaa !49
  %191 = sub nsw i32 16, %190
  %192 = lshr i32 %172, %191
  %193 = trunc i32 %192 to i16
  store i16 %193, ptr %13, align 8, !tbaa !48
  %194 = add nsw i32 %190, -14
  br label %337

195:                                              ; preds = %166
  %196 = shl i32 %170, %168
  %197 = trunc i32 %196 to i16
  %198 = or i16 %167, %197
  store i16 %198, ptr %13, align 8, !tbaa !48
  %199 = add nsw i32 %168, 2
  br label %337

200:                                              ; preds = %86
  %201 = icmp slt i32 %28, 10
  %202 = load i16, ptr %13, align 8, !tbaa !48
  br i1 %201, label %203, label %270

203:                                              ; preds = %200
  %204 = load i16, ptr %21, align 2, !tbaa !51
  %205 = zext i16 %204 to i32
  %206 = sub nsw i32 16, %205
  %207 = icmp sgt i32 %88, %206
  %208 = load i16, ptr %20, align 4, !tbaa !51
  %209 = zext i16 %208 to i32
  %210 = shl i32 %209, %88
  %211 = trunc i32 %210 to i16
  %212 = or i16 %202, %211
  br i1 %207, label %213, label %234

213:                                              ; preds = %203
  store i16 %212, ptr %13, align 8, !tbaa !48
  %214 = trunc i16 %212 to i8
  %215 = load ptr, ptr %14, align 8, !tbaa !59
  %216 = load i32, ptr %15, align 8, !tbaa !60
  %217 = add i32 %216, 1
  store i32 %217, ptr %15, align 8, !tbaa !60
  %218 = zext i32 %216 to i64
  %219 = getelementptr inbounds i8, ptr %215, i64 %218
  store i8 %214, ptr %219, align 1, !tbaa !51
  %220 = load i16, ptr %13, align 8, !tbaa !48
  %221 = lshr i16 %220, 8
  %222 = trunc i16 %221 to i8
  %223 = load ptr, ptr %14, align 8, !tbaa !59
  %224 = load i32, ptr %15, align 8, !tbaa !60
  %225 = add i32 %224, 1
  store i32 %225, ptr %15, align 8, !tbaa !60
  %226 = zext i32 %224 to i64
  %227 = getelementptr inbounds i8, ptr %223, i64 %226
  store i8 %222, ptr %227, align 1, !tbaa !51
  %228 = load i32, ptr %12, align 4, !tbaa !49
  %229 = sub nsw i32 16, %228
  %230 = lshr i32 %209, %229
  %231 = trunc i32 %230 to i16
  %232 = add nsw i32 %205, -16
  %233 = add nsw i32 %232, %228
  br label %236

234:                                              ; preds = %203
  %235 = add nsw i32 %88, %205
  br label %236

236:                                              ; preds = %234, %213
  %237 = phi i16 [ %212, %234 ], [ %231, %213 ]
  %238 = phi i32 [ %235, %234 ], [ %233, %213 ]
  store i32 %238, ptr %12, align 4, !tbaa !49
  %239 = icmp sgt i32 %238, 13
  %240 = add nsw i32 %28, 65534
  br i1 %239, label %241, label %265

241:                                              ; preds = %236
  %242 = and i32 %240, 65535
  %243 = shl i32 %240, %238
  %244 = trunc i32 %243 to i16
  %245 = or i16 %237, %244
  store i16 %245, ptr %13, align 8, !tbaa !48
  %246 = trunc i16 %245 to i8
  %247 = load ptr, ptr %14, align 8, !tbaa !59
  %248 = load i32, ptr %15, align 8, !tbaa !60
  %249 = add i32 %248, 1
  store i32 %249, ptr %15, align 8, !tbaa !60
  %250 = zext i32 %248 to i64
  %251 = getelementptr inbounds i8, ptr %247, i64 %250
  store i8 %246, ptr %251, align 1, !tbaa !51
  %252 = load i16, ptr %13, align 8, !tbaa !48
  %253 = lshr i16 %252, 8
  %254 = trunc i16 %253 to i8
  %255 = load ptr, ptr %14, align 8, !tbaa !59
  %256 = load i32, ptr %15, align 8, !tbaa !60
  %257 = add i32 %256, 1
  store i32 %257, ptr %15, align 8, !tbaa !60
  %258 = zext i32 %256 to i64
  %259 = getelementptr inbounds i8, ptr %255, i64 %258
  store i8 %254, ptr %259, align 1, !tbaa !51
  %260 = load i32, ptr %12, align 4, !tbaa !49
  %261 = sub nsw i32 16, %260
  %262 = lshr i32 %242, %261
  %263 = trunc i32 %262 to i16
  store i16 %263, ptr %13, align 8, !tbaa !48
  %264 = add nsw i32 %260, -13
  br label %337

265:                                              ; preds = %236
  %266 = shl i32 %240, %238
  %267 = trunc i32 %266 to i16
  %268 = or i16 %237, %267
  store i16 %268, ptr %13, align 8, !tbaa !48
  %269 = add nsw i32 %238, 3
  br label %337

270:                                              ; preds = %200
  %271 = load i16, ptr %19, align 2, !tbaa !51
  %272 = zext i16 %271 to i32
  %273 = sub nsw i32 16, %272
  %274 = icmp sgt i32 %88, %273
  %275 = load i16, ptr %18, align 4, !tbaa !51
  %276 = zext i16 %275 to i32
  %277 = shl i32 %276, %88
  %278 = trunc i32 %277 to i16
  %279 = or i16 %202, %278
  br i1 %274, label %280, label %301

280:                                              ; preds = %270
  store i16 %279, ptr %13, align 8, !tbaa !48
  %281 = trunc i16 %279 to i8
  %282 = load ptr, ptr %14, align 8, !tbaa !59
  %283 = load i32, ptr %15, align 8, !tbaa !60
  %284 = add i32 %283, 1
  store i32 %284, ptr %15, align 8, !tbaa !60
  %285 = zext i32 %283 to i64
  %286 = getelementptr inbounds i8, ptr %282, i64 %285
  store i8 %281, ptr %286, align 1, !tbaa !51
  %287 = load i16, ptr %13, align 8, !tbaa !48
  %288 = lshr i16 %287, 8
  %289 = trunc i16 %288 to i8
  %290 = load ptr, ptr %14, align 8, !tbaa !59
  %291 = load i32, ptr %15, align 8, !tbaa !60
  %292 = add i32 %291, 1
  store i32 %292, ptr %15, align 8, !tbaa !60
  %293 = zext i32 %291 to i64
  %294 = getelementptr inbounds i8, ptr %290, i64 %293
  store i8 %289, ptr %294, align 1, !tbaa !51
  %295 = load i32, ptr %12, align 4, !tbaa !49
  %296 = sub nsw i32 16, %295
  %297 = lshr i32 %276, %296
  %298 = trunc i32 %297 to i16
  %299 = add nsw i32 %272, -16
  %300 = add nsw i32 %299, %295
  br label %303

301:                                              ; preds = %270
  %302 = add nsw i32 %88, %272
  br label %303

303:                                              ; preds = %301, %280
  %304 = phi i16 [ %279, %301 ], [ %298, %280 ]
  %305 = phi i32 [ %302, %301 ], [ %300, %280 ]
  store i32 %305, ptr %12, align 4, !tbaa !49
  %306 = icmp sgt i32 %305, 9
  %307 = add nuw i32 %28, 65526
  br i1 %306, label %308, label %332

308:                                              ; preds = %303
  %309 = and i32 %307, 65535
  %310 = shl i32 %307, %305
  %311 = trunc i32 %310 to i16
  %312 = or i16 %304, %311
  store i16 %312, ptr %13, align 8, !tbaa !48
  %313 = trunc i16 %312 to i8
  %314 = load ptr, ptr %14, align 8, !tbaa !59
  %315 = load i32, ptr %15, align 8, !tbaa !60
  %316 = add i32 %315, 1
  store i32 %316, ptr %15, align 8, !tbaa !60
  %317 = zext i32 %315 to i64
  %318 = getelementptr inbounds i8, ptr %314, i64 %317
  store i8 %313, ptr %318, align 1, !tbaa !51
  %319 = load i16, ptr %13, align 8, !tbaa !48
  %320 = lshr i16 %319, 8
  %321 = trunc i16 %320 to i8
  %322 = load ptr, ptr %14, align 8, !tbaa !59
  %323 = load i32, ptr %15, align 8, !tbaa !60
  %324 = add i32 %323, 1
  store i32 %324, ptr %15, align 8, !tbaa !60
  %325 = zext i32 %323 to i64
  %326 = getelementptr inbounds i8, ptr %322, i64 %325
  store i8 %321, ptr %326, align 1, !tbaa !51
  %327 = load i32, ptr %12, align 4, !tbaa !49
  %328 = sub nsw i32 16, %327
  %329 = lshr i32 %309, %328
  %330 = trunc i32 %329 to i16
  store i16 %330, ptr %13, align 8, !tbaa !48
  %331 = add nsw i32 %327, -9
  br label %337

332:                                              ; preds = %303
  %333 = shl i32 %307, %305
  %334 = trunc i32 %333 to i16
  %335 = or i16 %304, %334
  store i16 %335, ptr %13, align 8, !tbaa !48
  %336 = add nsw i32 %305, 7
  br label %337

337:                                              ; preds = %308, %332, %241, %265, %171, %195
  %338 = phi i32 [ %199, %195 ], [ %194, %171 ], [ %269, %265 ], [ %264, %241 ], [ %336, %332 ], [ %331, %308 ]
  store i32 %338, ptr %12, align 4, !tbaa !49
  br label %339

339:                                              ; preds = %82, %337
  %340 = icmp eq i16 %33, 0
  br i1 %340, label %344, label %341

341:                                              ; preds = %339
  %342 = select i1 %37, i32 3, i32 4
  %343 = select i1 %37, i32 6, i32 7
  br label %344

344:                                              ; preds = %341, %339, %24
  %345 = phi i32 [ %30, %24 ], [ 3, %339 ], [ %342, %341 ]
  %346 = phi i32 [ %29, %24 ], [ 138, %339 ], [ %343, %341 ]
  %347 = phi i32 [ %35, %24 ], [ 0, %339 ], [ 0, %341 ]
  %348 = phi i32 [ %26, %24 ], [ %27, %339 ], [ %27, %341 ]
  %349 = icmp eq i64 %31, %23
  br i1 %349, label %350, label %24, !llvm.loop !124

350:                                              ; preds = %344, %3
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

attributes #0 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline norecurse nosync nounwind optsize memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { optsize }
attributes #12 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 6524701}
!4 = !{!"MaxCount", i64 1843200}
!5 = !{!"MaxInternalCount", i64 1843200}
!6 = !{!"MaxFunctionCount", i64 28800}
!7 = !{!"NumCounts", i64 117}
!8 = !{!"NumFunctions", i64 8}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1843200, i32 3}
!14 = !{i32 100000, i64 1843200, i32 3}
!15 = !{i32 200000, i64 1843200, i32 3}
!16 = !{i32 300000, i64 1843200, i32 3}
!17 = !{i32 400000, i64 1843200, i32 3}
!18 = !{i32 500000, i64 1843200, i32 3}
!19 = !{i32 600000, i64 1843200, i32 3}
!20 = !{i32 700000, i64 1843200, i32 3}
!21 = !{i32 800000, i64 1843200, i32 3}
!22 = !{i32 900000, i64 921600, i32 4}
!23 = !{i32 950000, i64 921600, i32 4}
!24 = !{i32 990000, i64 28800, i32 6}
!25 = !{i32 999000, i64 14400, i32 7}
!26 = !{i32 999900, i64 1440, i32 8}
!27 = !{i32 999990, i64 1440, i32 8}
!28 = !{i32 999999, i64 1, i32 37}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
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
!50 = !{!"trees.c:init_block"}
!51 = !{!37, !37, i64 0}
!52 = distinct !{!52, !53, !54, !55}
!53 = !{!"llvm.loop.mustprogress"}
!54 = !{!"llvm.loop.isvectorized", i32 1}
!55 = !{!"llvm.loop.unroll.runtime.disable"}
!56 = distinct !{!56, !53, !54, !55}
!57 = distinct !{!57, !53, !54, !55}
!58 = !{!35, !39, i64 5884}
!59 = !{!35, !36, i64 16}
!60 = !{!35, !39, i64 40}
!61 = !{!"trees.c:copy_block"}
!62 = distinct !{!62, !53}
!63 = !{!"trees.c:bi_flush"}
!64 = !{!35, !39, i64 180}
!65 = !{!35, !36, i64 0}
!66 = !{!67, !39, i64 88}
!67 = !{!"z_stream_s", !36, i64 0, !39, i64 8, !40, i64 16, !36, i64 24, !39, i64 32, !40, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !39, i64 88, !40, i64 96, !40, i64 104}
!68 = !{i32 0, i32 2}
!69 = !{!35, !40, i64 5896}
!70 = !{!35, !40, i64 5904}
!71 = !{!35, !39, i64 184}
!72 = !{!35, !39, i64 2896}
!73 = !{!35, !39, i64 2920}
!74 = !{!"trees.c:detect_data_type"}
!75 = distinct !{!75, !53}
!76 = distinct !{!76, !53}
!77 = !{!"trees.c:build_tree"}
!78 = !{!41, !36, i64 0}
!79 = !{!41, !36, i64 16}
!80 = !{!81, !36, i64 0}
!81 = !{!"static_tree_desc_s", !36, i64 0, !36, i64 8, !39, i64 16, !39, i64 20, !39, i64 24}
!82 = !{!81, !39, i64 20}
!83 = !{!35, !39, i64 5284}
!84 = !{!35, !39, i64 5288}
!85 = !{!39, !39, i64 0}
!86 = distinct !{!86, !53}
!87 = distinct !{!87, !53}
!88 = !{!41, !39, i64 8}
!89 = distinct !{!89, !53}
!90 = distinct !{!90, !53}
!91 = !{!"trees.c:build_bl_tree"}
!92 = distinct !{!92, !53}
!93 = !{!"trees.c:compress_block"}
!94 = !{!35, !36, i64 5888}
!95 = !{!42, !42, i64 0}
!96 = !{!35, !36, i64 5872}
!97 = distinct !{!97, !53}
!98 = !{!"trees.c:send_all_trees"}
!99 = distinct !{!99, !53}
!100 = !{!"trees.c:bi_windup"}
!101 = !{!35, !39, i64 5912}
!102 = !{!35, !39, i64 5880}
!103 = !{!"trees.c:pqdownheap"}
!104 = distinct !{!104, !53}
!105 = !{!"trees.c:gen_bitlen"}
!106 = !{!81, !36, i64 8}
!107 = !{!81, !39, i64 16}
!108 = !{!81, !39, i64 24}
!109 = distinct !{!109, !53}
!110 = distinct !{!110, !53}
!111 = distinct !{!111, !53}
!112 = distinct !{!112, !53}
!113 = distinct !{!113, !53}
!114 = !{!"trees.c:gen_codes"}
!115 = distinct !{!115, !53}
!116 = !{i32 0, i32 -2147483648}
!117 = distinct !{!117, !53}
!118 = !{!"trees.c:bi_reverse"}
!119 = distinct !{!119, !53}
!120 = !{!"trees.c:scan_tree"}
!121 = distinct !{!121, !53}
!122 = !{!"trees.c:send_tree"}
!123 = distinct !{!123, !53}
!124 = distinct !{!124, !53}
