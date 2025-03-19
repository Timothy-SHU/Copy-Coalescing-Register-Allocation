; ModuleID = 'lib/zlib_inflate/inflate.c'
source_filename = "lib/zlib_inflate/inflate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.code = type { i8, i8, i16 }
%struct.z_stream_s = type { ptr, i64, i64, ptr, i64, i64, ptr, ptr, ptr, i32, i64, i64 }
%struct.inflate_state = type { i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, ptr, i64, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, [320 x i16], [288 x i16], [2048 x %struct.code] }
%struct.inflate_workspace = type { %struct.inflate_state, [32768 x i8] }

@zlib_inflate.order = internal constant [19 x i16] [i16 16, i16 17, i16 18, i16 0, i16 8, i16 7, i16 9, i16 6, i16 10, i16 5, i16 11, i16 4, i16 12, i16 3, i16 13, i16 2, i16 14, i16 1, i16 15], align 16, !dbg !0
@.str = private unnamed_addr constant [23 x i8] c"incorrect header check\00", align 1, !dbg !145
@.str.1 = private unnamed_addr constant [27 x i8] c"unknown compression method\00", align 1, !dbg !150
@.str.2 = private unnamed_addr constant [20 x i8] c"invalid window size\00", align 1, !dbg !155
@.str.3 = private unnamed_addr constant [19 x i8] c"invalid block type\00", align 1, !dbg !160
@.str.4 = private unnamed_addr constant [29 x i8] c"invalid stored block lengths\00", align 1, !dbg !165
@.str.5 = private unnamed_addr constant [36 x i8] c"too many length or distance symbols\00", align 1, !dbg !170
@.str.6 = private unnamed_addr constant [25 x i8] c"invalid code lengths set\00", align 1, !dbg !175
@.str.7 = private unnamed_addr constant [26 x i8] c"invalid bit length repeat\00", align 1, !dbg !180
@.str.8 = private unnamed_addr constant [28 x i8] c"invalid literal/lengths set\00", align 1, !dbg !185
@.str.9 = private unnamed_addr constant [22 x i8] c"invalid distances set\00", align 1, !dbg !190
@.str.10 = private unnamed_addr constant [28 x i8] c"invalid literal/length code\00", align 1, !dbg !195
@.str.11 = private unnamed_addr constant [22 x i8] c"invalid distance code\00", align 1, !dbg !197
@.str.12 = private unnamed_addr constant [30 x i8] c"invalid distance too far back\00", align 1, !dbg !199
@.str.13 = private unnamed_addr constant [21 x i8] c"incorrect data check\00", align 1, !dbg !204
@zlib_fixedtables.lenfix = internal constant [512 x %struct.code] [%struct.code { i8 96, i8 7, i16 0 }, %struct.code { i8 0, i8 8, i16 80 }, %struct.code { i8 0, i8 8, i16 16 }, %struct.code { i8 20, i8 8, i16 115 }, %struct.code { i8 18, i8 7, i16 31 }, %struct.code { i8 0, i8 8, i16 112 }, %struct.code { i8 0, i8 8, i16 48 }, %struct.code { i8 0, i8 9, i16 192 }, %struct.code { i8 16, i8 7, i16 10 }, %struct.code { i8 0, i8 8, i16 96 }, %struct.code { i8 0, i8 8, i16 32 }, %struct.code { i8 0, i8 9, i16 160 }, %struct.code { i8 0, i8 8, i16 0 }, %struct.code { i8 0, i8 8, i16 128 }, %struct.code { i8 0, i8 8, i16 64 }, %struct.code { i8 0, i8 9, i16 224 }, %struct.code { i8 16, i8 7, i16 6 }, %struct.code { i8 0, i8 8, i16 88 }, %struct.code { i8 0, i8 8, i16 24 }, %struct.code { i8 0, i8 9, i16 144 }, %struct.code { i8 19, i8 7, i16 59 }, %struct.code { i8 0, i8 8, i16 120 }, %struct.code { i8 0, i8 8, i16 56 }, %struct.code { i8 0, i8 9, i16 208 }, %struct.code { i8 17, i8 7, i16 17 }, %struct.code { i8 0, i8 8, i16 104 }, %struct.code { i8 0, i8 8, i16 40 }, %struct.code { i8 0, i8 9, i16 176 }, %struct.code { i8 0, i8 8, i16 8 }, %struct.code { i8 0, i8 8, i16 136 }, %struct.code { i8 0, i8 8, i16 72 }, %struct.code { i8 0, i8 9, i16 240 }, %struct.code { i8 16, i8 7, i16 4 }, %struct.code { i8 0, i8 8, i16 84 }, %struct.code { i8 0, i8 8, i16 20 }, %struct.code { i8 21, i8 8, i16 227 }, %struct.code { i8 19, i8 7, i16 43 }, %struct.code { i8 0, i8 8, i16 116 }, %struct.code { i8 0, i8 8, i16 52 }, %struct.code { i8 0, i8 9, i16 200 }, %struct.code { i8 17, i8 7, i16 13 }, %struct.code { i8 0, i8 8, i16 100 }, %struct.code { i8 0, i8 8, i16 36 }, %struct.code { i8 0, i8 9, i16 168 }, %struct.code { i8 0, i8 8, i16 4 }, %struct.code { i8 0, i8 8, i16 132 }, %struct.code { i8 0, i8 8, i16 68 }, %struct.code { i8 0, i8 9, i16 232 }, %struct.code { i8 16, i8 7, i16 8 }, %struct.code { i8 0, i8 8, i16 92 }, %struct.code { i8 0, i8 8, i16 28 }, %struct.code { i8 0, i8 9, i16 152 }, %struct.code { i8 20, i8 7, i16 83 }, %struct.code { i8 0, i8 8, i16 124 }, %struct.code { i8 0, i8 8, i16 60 }, %struct.code { i8 0, i8 9, i16 216 }, %struct.code { i8 18, i8 7, i16 23 }, %struct.code { i8 0, i8 8, i16 108 }, %struct.code { i8 0, i8 8, i16 44 }, %struct.code { i8 0, i8 9, i16 184 }, %struct.code { i8 0, i8 8, i16 12 }, %struct.code { i8 0, i8 8, i16 140 }, %struct.code { i8 0, i8 8, i16 76 }, %struct.code { i8 0, i8 9, i16 248 }, %struct.code { i8 16, i8 7, i16 3 }, %struct.code { i8 0, i8 8, i16 82 }, %struct.code { i8 0, i8 8, i16 18 }, %struct.code { i8 21, i8 8, i16 163 }, %struct.code { i8 19, i8 7, i16 35 }, %struct.code { i8 0, i8 8, i16 114 }, %struct.code { i8 0, i8 8, i16 50 }, %struct.code { i8 0, i8 9, i16 196 }, %struct.code { i8 17, i8 7, i16 11 }, %struct.code { i8 0, i8 8, i16 98 }, %struct.code { i8 0, i8 8, i16 34 }, %struct.code { i8 0, i8 9, i16 164 }, %struct.code { i8 0, i8 8, i16 2 }, %struct.code { i8 0, i8 8, i16 130 }, %struct.code { i8 0, i8 8, i16 66 }, %struct.code { i8 0, i8 9, i16 228 }, %struct.code { i8 16, i8 7, i16 7 }, %struct.code { i8 0, i8 8, i16 90 }, %struct.code { i8 0, i8 8, i16 26 }, %struct.code { i8 0, i8 9, i16 148 }, %struct.code { i8 20, i8 7, i16 67 }, %struct.code { i8 0, i8 8, i16 122 }, %struct.code { i8 0, i8 8, i16 58 }, %struct.code { i8 0, i8 9, i16 212 }, %struct.code { i8 18, i8 7, i16 19 }, %struct.code { i8 0, i8 8, i16 106 }, %struct.code { i8 0, i8 8, i16 42 }, %struct.code { i8 0, i8 9, i16 180 }, %struct.code { i8 0, i8 8, i16 10 }, %struct.code { i8 0, i8 8, i16 138 }, %struct.code { i8 0, i8 8, i16 74 }, %struct.code { i8 0, i8 9, i16 244 }, %struct.code { i8 16, i8 7, i16 5 }, %struct.code { i8 0, i8 8, i16 86 }, %struct.code { i8 0, i8 8, i16 22 }, %struct.code { i8 64, i8 8, i16 0 }, %struct.code { i8 19, i8 7, i16 51 }, %struct.code { i8 0, i8 8, i16 118 }, %struct.code { i8 0, i8 8, i16 54 }, %struct.code { i8 0, i8 9, i16 204 }, %struct.code { i8 17, i8 7, i16 15 }, %struct.code { i8 0, i8 8, i16 102 }, %struct.code { i8 0, i8 8, i16 38 }, %struct.code { i8 0, i8 9, i16 172 }, %struct.code { i8 0, i8 8, i16 6 }, %struct.code { i8 0, i8 8, i16 134 }, %struct.code { i8 0, i8 8, i16 70 }, %struct.code { i8 0, i8 9, i16 236 }, %struct.code { i8 16, i8 7, i16 9 }, %struct.code { i8 0, i8 8, i16 94 }, %struct.code { i8 0, i8 8, i16 30 }, %struct.code { i8 0, i8 9, i16 156 }, %struct.code { i8 20, i8 7, i16 99 }, %struct.code { i8 0, i8 8, i16 126 }, %struct.code { i8 0, i8 8, i16 62 }, %struct.code { i8 0, i8 9, i16 220 }, %struct.code { i8 18, i8 7, i16 27 }, %struct.code { i8 0, i8 8, i16 110 }, %struct.code { i8 0, i8 8, i16 46 }, %struct.code { i8 0, i8 9, i16 188 }, %struct.code { i8 0, i8 8, i16 14 }, %struct.code { i8 0, i8 8, i16 142 }, %struct.code { i8 0, i8 8, i16 78 }, %struct.code { i8 0, i8 9, i16 252 }, %struct.code { i8 96, i8 7, i16 0 }, %struct.code { i8 0, i8 8, i16 81 }, %struct.code { i8 0, i8 8, i16 17 }, %struct.code { i8 21, i8 8, i16 131 }, %struct.code { i8 18, i8 7, i16 31 }, %struct.code { i8 0, i8 8, i16 113 }, %struct.code { i8 0, i8 8, i16 49 }, %struct.code { i8 0, i8 9, i16 194 }, %struct.code { i8 16, i8 7, i16 10 }, %struct.code { i8 0, i8 8, i16 97 }, %struct.code { i8 0, i8 8, i16 33 }, %struct.code { i8 0, i8 9, i16 162 }, %struct.code { i8 0, i8 8, i16 1 }, %struct.code { i8 0, i8 8, i16 129 }, %struct.code { i8 0, i8 8, i16 65 }, %struct.code { i8 0, i8 9, i16 226 }, %struct.code { i8 16, i8 7, i16 6 }, %struct.code { i8 0, i8 8, i16 89 }, %struct.code { i8 0, i8 8, i16 25 }, %struct.code { i8 0, i8 9, i16 146 }, %struct.code { i8 19, i8 7, i16 59 }, %struct.code { i8 0, i8 8, i16 121 }, %struct.code { i8 0, i8 8, i16 57 }, %struct.code { i8 0, i8 9, i16 210 }, %struct.code { i8 17, i8 7, i16 17 }, %struct.code { i8 0, i8 8, i16 105 }, %struct.code { i8 0, i8 8, i16 41 }, %struct.code { i8 0, i8 9, i16 178 }, %struct.code { i8 0, i8 8, i16 9 }, %struct.code { i8 0, i8 8, i16 137 }, %struct.code { i8 0, i8 8, i16 73 }, %struct.code { i8 0, i8 9, i16 242 }, %struct.code { i8 16, i8 7, i16 4 }, %struct.code { i8 0, i8 8, i16 85 }, %struct.code { i8 0, i8 8, i16 21 }, %struct.code { i8 16, i8 8, i16 258 }, %struct.code { i8 19, i8 7, i16 43 }, %struct.code { i8 0, i8 8, i16 117 }, %struct.code { i8 0, i8 8, i16 53 }, %struct.code { i8 0, i8 9, i16 202 }, %struct.code { i8 17, i8 7, i16 13 }, %struct.code { i8 0, i8 8, i16 101 }, %struct.code { i8 0, i8 8, i16 37 }, %struct.code { i8 0, i8 9, i16 170 }, %struct.code { i8 0, i8 8, i16 5 }, %struct.code { i8 0, i8 8, i16 133 }, %struct.code { i8 0, i8 8, i16 69 }, %struct.code { i8 0, i8 9, i16 234 }, %struct.code { i8 16, i8 7, i16 8 }, %struct.code { i8 0, i8 8, i16 93 }, %struct.code { i8 0, i8 8, i16 29 }, %struct.code { i8 0, i8 9, i16 154 }, %struct.code { i8 20, i8 7, i16 83 }, %struct.code { i8 0, i8 8, i16 125 }, %struct.code { i8 0, i8 8, i16 61 }, %struct.code { i8 0, i8 9, i16 218 }, %struct.code { i8 18, i8 7, i16 23 }, %struct.code { i8 0, i8 8, i16 109 }, %struct.code { i8 0, i8 8, i16 45 }, %struct.code { i8 0, i8 9, i16 186 }, %struct.code { i8 0, i8 8, i16 13 }, %struct.code { i8 0, i8 8, i16 141 }, %struct.code { i8 0, i8 8, i16 77 }, %struct.code { i8 0, i8 9, i16 250 }, %struct.code { i8 16, i8 7, i16 3 }, %struct.code { i8 0, i8 8, i16 83 }, %struct.code { i8 0, i8 8, i16 19 }, %struct.code { i8 21, i8 8, i16 195 }, %struct.code { i8 19, i8 7, i16 35 }, %struct.code { i8 0, i8 8, i16 115 }, %struct.code { i8 0, i8 8, i16 51 }, %struct.code { i8 0, i8 9, i16 198 }, %struct.code { i8 17, i8 7, i16 11 }, %struct.code { i8 0, i8 8, i16 99 }, %struct.code { i8 0, i8 8, i16 35 }, %struct.code { i8 0, i8 9, i16 166 }, %struct.code { i8 0, i8 8, i16 3 }, %struct.code { i8 0, i8 8, i16 131 }, %struct.code { i8 0, i8 8, i16 67 }, %struct.code { i8 0, i8 9, i16 230 }, %struct.code { i8 16, i8 7, i16 7 }, %struct.code { i8 0, i8 8, i16 91 }, %struct.code { i8 0, i8 8, i16 27 }, %struct.code { i8 0, i8 9, i16 150 }, %struct.code { i8 20, i8 7, i16 67 }, %struct.code { i8 0, i8 8, i16 123 }, %struct.code { i8 0, i8 8, i16 59 }, %struct.code { i8 0, i8 9, i16 214 }, %struct.code { i8 18, i8 7, i16 19 }, %struct.code { i8 0, i8 8, i16 107 }, %struct.code { i8 0, i8 8, i16 43 }, %struct.code { i8 0, i8 9, i16 182 }, %struct.code { i8 0, i8 8, i16 11 }, %struct.code { i8 0, i8 8, i16 139 }, %struct.code { i8 0, i8 8, i16 75 }, %struct.code { i8 0, i8 9, i16 246 }, %struct.code { i8 16, i8 7, i16 5 }, %struct.code { i8 0, i8 8, i16 87 }, %struct.code { i8 0, i8 8, i16 23 }, %struct.code { i8 64, i8 8, i16 0 }, %struct.code { i8 19, i8 7, i16 51 }, %struct.code { i8 0, i8 8, i16 119 }, %struct.code { i8 0, i8 8, i16 55 }, %struct.code { i8 0, i8 9, i16 206 }, %struct.code { i8 17, i8 7, i16 15 }, %struct.code { i8 0, i8 8, i16 103 }, %struct.code { i8 0, i8 8, i16 39 }, %struct.code { i8 0, i8 9, i16 174 }, %struct.code { i8 0, i8 8, i16 7 }, %struct.code { i8 0, i8 8, i16 135 }, %struct.code { i8 0, i8 8, i16 71 }, %struct.code { i8 0, i8 9, i16 238 }, %struct.code { i8 16, i8 7, i16 9 }, %struct.code { i8 0, i8 8, i16 95 }, %struct.code { i8 0, i8 8, i16 31 }, %struct.code { i8 0, i8 9, i16 158 }, %struct.code { i8 20, i8 7, i16 99 }, %struct.code { i8 0, i8 8, i16 127 }, %struct.code { i8 0, i8 8, i16 63 }, %struct.code { i8 0, i8 9, i16 222 }, %struct.code { i8 18, i8 7, i16 27 }, %struct.code { i8 0, i8 8, i16 111 }, %struct.code { i8 0, i8 8, i16 47 }, %struct.code { i8 0, i8 9, i16 190 }, %struct.code { i8 0, i8 8, i16 15 }, %struct.code { i8 0, i8 8, i16 143 }, %struct.code { i8 0, i8 8, i16 79 }, %struct.code { i8 0, i8 9, i16 254 }, %struct.code { i8 96, i8 7, i16 0 }, %struct.code { i8 0, i8 8, i16 80 }, %struct.code { i8 0, i8 8, i16 16 }, %struct.code { i8 20, i8 8, i16 115 }, %struct.code { i8 18, i8 7, i16 31 }, %struct.code { i8 0, i8 8, i16 112 }, %struct.code { i8 0, i8 8, i16 48 }, %struct.code { i8 0, i8 9, i16 193 }, %struct.code { i8 16, i8 7, i16 10 }, %struct.code { i8 0, i8 8, i16 96 }, %struct.code { i8 0, i8 8, i16 32 }, %struct.code { i8 0, i8 9, i16 161 }, %struct.code { i8 0, i8 8, i16 0 }, %struct.code { i8 0, i8 8, i16 128 }, %struct.code { i8 0, i8 8, i16 64 }, %struct.code { i8 0, i8 9, i16 225 }, %struct.code { i8 16, i8 7, i16 6 }, %struct.code { i8 0, i8 8, i16 88 }, %struct.code { i8 0, i8 8, i16 24 }, %struct.code { i8 0, i8 9, i16 145 }, %struct.code { i8 19, i8 7, i16 59 }, %struct.code { i8 0, i8 8, i16 120 }, %struct.code { i8 0, i8 8, i16 56 }, %struct.code { i8 0, i8 9, i16 209 }, %struct.code { i8 17, i8 7, i16 17 }, %struct.code { i8 0, i8 8, i16 104 }, %struct.code { i8 0, i8 8, i16 40 }, %struct.code { i8 0, i8 9, i16 177 }, %struct.code { i8 0, i8 8, i16 8 }, %struct.code { i8 0, i8 8, i16 136 }, %struct.code { i8 0, i8 8, i16 72 }, %struct.code { i8 0, i8 9, i16 241 }, %struct.code { i8 16, i8 7, i16 4 }, %struct.code { i8 0, i8 8, i16 84 }, %struct.code { i8 0, i8 8, i16 20 }, %struct.code { i8 21, i8 8, i16 227 }, %struct.code { i8 19, i8 7, i16 43 }, %struct.code { i8 0, i8 8, i16 116 }, %struct.code { i8 0, i8 8, i16 52 }, %struct.code { i8 0, i8 9, i16 201 }, %struct.code { i8 17, i8 7, i16 13 }, %struct.code { i8 0, i8 8, i16 100 }, %struct.code { i8 0, i8 8, i16 36 }, %struct.code { i8 0, i8 9, i16 169 }, %struct.code { i8 0, i8 8, i16 4 }, %struct.code { i8 0, i8 8, i16 132 }, %struct.code { i8 0, i8 8, i16 68 }, %struct.code { i8 0, i8 9, i16 233 }, %struct.code { i8 16, i8 7, i16 8 }, %struct.code { i8 0, i8 8, i16 92 }, %struct.code { i8 0, i8 8, i16 28 }, %struct.code { i8 0, i8 9, i16 153 }, %struct.code { i8 20, i8 7, i16 83 }, %struct.code { i8 0, i8 8, i16 124 }, %struct.code { i8 0, i8 8, i16 60 }, %struct.code { i8 0, i8 9, i16 217 }, %struct.code { i8 18, i8 7, i16 23 }, %struct.code { i8 0, i8 8, i16 108 }, %struct.code { i8 0, i8 8, i16 44 }, %struct.code { i8 0, i8 9, i16 185 }, %struct.code { i8 0, i8 8, i16 12 }, %struct.code { i8 0, i8 8, i16 140 }, %struct.code { i8 0, i8 8, i16 76 }, %struct.code { i8 0, i8 9, i16 249 }, %struct.code { i8 16, i8 7, i16 3 }, %struct.code { i8 0, i8 8, i16 82 }, %struct.code { i8 0, i8 8, i16 18 }, %struct.code { i8 21, i8 8, i16 163 }, %struct.code { i8 19, i8 7, i16 35 }, %struct.code { i8 0, i8 8, i16 114 }, %struct.code { i8 0, i8 8, i16 50 }, %struct.code { i8 0, i8 9, i16 197 }, %struct.code { i8 17, i8 7, i16 11 }, %struct.code { i8 0, i8 8, i16 98 }, %struct.code { i8 0, i8 8, i16 34 }, %struct.code { i8 0, i8 9, i16 165 }, %struct.code { i8 0, i8 8, i16 2 }, %struct.code { i8 0, i8 8, i16 130 }, %struct.code { i8 0, i8 8, i16 66 }, %struct.code { i8 0, i8 9, i16 229 }, %struct.code { i8 16, i8 7, i16 7 }, %struct.code { i8 0, i8 8, i16 90 }, %struct.code { i8 0, i8 8, i16 26 }, %struct.code { i8 0, i8 9, i16 149 }, %struct.code { i8 20, i8 7, i16 67 }, %struct.code { i8 0, i8 8, i16 122 }, %struct.code { i8 0, i8 8, i16 58 }, %struct.code { i8 0, i8 9, i16 213 }, %struct.code { i8 18, i8 7, i16 19 }, %struct.code { i8 0, i8 8, i16 106 }, %struct.code { i8 0, i8 8, i16 42 }, %struct.code { i8 0, i8 9, i16 181 }, %struct.code { i8 0, i8 8, i16 10 }, %struct.code { i8 0, i8 8, i16 138 }, %struct.code { i8 0, i8 8, i16 74 }, %struct.code { i8 0, i8 9, i16 245 }, %struct.code { i8 16, i8 7, i16 5 }, %struct.code { i8 0, i8 8, i16 86 }, %struct.code { i8 0, i8 8, i16 22 }, %struct.code { i8 64, i8 8, i16 0 }, %struct.code { i8 19, i8 7, i16 51 }, %struct.code { i8 0, i8 8, i16 118 }, %struct.code { i8 0, i8 8, i16 54 }, %struct.code { i8 0, i8 9, i16 205 }, %struct.code { i8 17, i8 7, i16 15 }, %struct.code { i8 0, i8 8, i16 102 }, %struct.code { i8 0, i8 8, i16 38 }, %struct.code { i8 0, i8 9, i16 173 }, %struct.code { i8 0, i8 8, i16 6 }, %struct.code { i8 0, i8 8, i16 134 }, %struct.code { i8 0, i8 8, i16 70 }, %struct.code { i8 0, i8 9, i16 237 }, %struct.code { i8 16, i8 7, i16 9 }, %struct.code { i8 0, i8 8, i16 94 }, %struct.code { i8 0, i8 8, i16 30 }, %struct.code { i8 0, i8 9, i16 157 }, %struct.code { i8 20, i8 7, i16 99 }, %struct.code { i8 0, i8 8, i16 126 }, %struct.code { i8 0, i8 8, i16 62 }, %struct.code { i8 0, i8 9, i16 221 }, %struct.code { i8 18, i8 7, i16 27 }, %struct.code { i8 0, i8 8, i16 110 }, %struct.code { i8 0, i8 8, i16 46 }, %struct.code { i8 0, i8 9, i16 189 }, %struct.code { i8 0, i8 8, i16 14 }, %struct.code { i8 0, i8 8, i16 142 }, %struct.code { i8 0, i8 8, i16 78 }, %struct.code { i8 0, i8 9, i16 253 }, %struct.code { i8 96, i8 7, i16 0 }, %struct.code { i8 0, i8 8, i16 81 }, %struct.code { i8 0, i8 8, i16 17 }, %struct.code { i8 21, i8 8, i16 131 }, %struct.code { i8 18, i8 7, i16 31 }, %struct.code { i8 0, i8 8, i16 113 }, %struct.code { i8 0, i8 8, i16 49 }, %struct.code { i8 0, i8 9, i16 195 }, %struct.code { i8 16, i8 7, i16 10 }, %struct.code { i8 0, i8 8, i16 97 }, %struct.code { i8 0, i8 8, i16 33 }, %struct.code { i8 0, i8 9, i16 163 }, %struct.code { i8 0, i8 8, i16 1 }, %struct.code { i8 0, i8 8, i16 129 }, %struct.code { i8 0, i8 8, i16 65 }, %struct.code { i8 0, i8 9, i16 227 }, %struct.code { i8 16, i8 7, i16 6 }, %struct.code { i8 0, i8 8, i16 89 }, %struct.code { i8 0, i8 8, i16 25 }, %struct.code { i8 0, i8 9, i16 147 }, %struct.code { i8 19, i8 7, i16 59 }, %struct.code { i8 0, i8 8, i16 121 }, %struct.code { i8 0, i8 8, i16 57 }, %struct.code { i8 0, i8 9, i16 211 }, %struct.code { i8 17, i8 7, i16 17 }, %struct.code { i8 0, i8 8, i16 105 }, %struct.code { i8 0, i8 8, i16 41 }, %struct.code { i8 0, i8 9, i16 179 }, %struct.code { i8 0, i8 8, i16 9 }, %struct.code { i8 0, i8 8, i16 137 }, %struct.code { i8 0, i8 8, i16 73 }, %struct.code { i8 0, i8 9, i16 243 }, %struct.code { i8 16, i8 7, i16 4 }, %struct.code { i8 0, i8 8, i16 85 }, %struct.code { i8 0, i8 8, i16 21 }, %struct.code { i8 16, i8 8, i16 258 }, %struct.code { i8 19, i8 7, i16 43 }, %struct.code { i8 0, i8 8, i16 117 }, %struct.code { i8 0, i8 8, i16 53 }, %struct.code { i8 0, i8 9, i16 203 }, %struct.code { i8 17, i8 7, i16 13 }, %struct.code { i8 0, i8 8, i16 101 }, %struct.code { i8 0, i8 8, i16 37 }, %struct.code { i8 0, i8 9, i16 171 }, %struct.code { i8 0, i8 8, i16 5 }, %struct.code { i8 0, i8 8, i16 133 }, %struct.code { i8 0, i8 8, i16 69 }, %struct.code { i8 0, i8 9, i16 235 }, %struct.code { i8 16, i8 7, i16 8 }, %struct.code { i8 0, i8 8, i16 93 }, %struct.code { i8 0, i8 8, i16 29 }, %struct.code { i8 0, i8 9, i16 155 }, %struct.code { i8 20, i8 7, i16 83 }, %struct.code { i8 0, i8 8, i16 125 }, %struct.code { i8 0, i8 8, i16 61 }, %struct.code { i8 0, i8 9, i16 219 }, %struct.code { i8 18, i8 7, i16 23 }, %struct.code { i8 0, i8 8, i16 109 }, %struct.code { i8 0, i8 8, i16 45 }, %struct.code { i8 0, i8 9, i16 187 }, %struct.code { i8 0, i8 8, i16 13 }, %struct.code { i8 0, i8 8, i16 141 }, %struct.code { i8 0, i8 8, i16 77 }, %struct.code { i8 0, i8 9, i16 251 }, %struct.code { i8 16, i8 7, i16 3 }, %struct.code { i8 0, i8 8, i16 83 }, %struct.code { i8 0, i8 8, i16 19 }, %struct.code { i8 21, i8 8, i16 195 }, %struct.code { i8 19, i8 7, i16 35 }, %struct.code { i8 0, i8 8, i16 115 }, %struct.code { i8 0, i8 8, i16 51 }, %struct.code { i8 0, i8 9, i16 199 }, %struct.code { i8 17, i8 7, i16 11 }, %struct.code { i8 0, i8 8, i16 99 }, %struct.code { i8 0, i8 8, i16 35 }, %struct.code { i8 0, i8 9, i16 167 }, %struct.code { i8 0, i8 8, i16 3 }, %struct.code { i8 0, i8 8, i16 131 }, %struct.code { i8 0, i8 8, i16 67 }, %struct.code { i8 0, i8 9, i16 231 }, %struct.code { i8 16, i8 7, i16 7 }, %struct.code { i8 0, i8 8, i16 91 }, %struct.code { i8 0, i8 8, i16 27 }, %struct.code { i8 0, i8 9, i16 151 }, %struct.code { i8 20, i8 7, i16 67 }, %struct.code { i8 0, i8 8, i16 123 }, %struct.code { i8 0, i8 8, i16 59 }, %struct.code { i8 0, i8 9, i16 215 }, %struct.code { i8 18, i8 7, i16 19 }, %struct.code { i8 0, i8 8, i16 107 }, %struct.code { i8 0, i8 8, i16 43 }, %struct.code { i8 0, i8 9, i16 183 }, %struct.code { i8 0, i8 8, i16 11 }, %struct.code { i8 0, i8 8, i16 139 }, %struct.code { i8 0, i8 8, i16 75 }, %struct.code { i8 0, i8 9, i16 247 }, %struct.code { i8 16, i8 7, i16 5 }, %struct.code { i8 0, i8 8, i16 87 }, %struct.code { i8 0, i8 8, i16 23 }, %struct.code { i8 64, i8 8, i16 0 }, %struct.code { i8 19, i8 7, i16 51 }, %struct.code { i8 0, i8 8, i16 119 }, %struct.code { i8 0, i8 8, i16 55 }, %struct.code { i8 0, i8 9, i16 207 }, %struct.code { i8 17, i8 7, i16 15 }, %struct.code { i8 0, i8 8, i16 103 }, %struct.code { i8 0, i8 8, i16 39 }, %struct.code { i8 0, i8 9, i16 175 }, %struct.code { i8 0, i8 8, i16 7 }, %struct.code { i8 0, i8 8, i16 135 }, %struct.code { i8 0, i8 8, i16 71 }, %struct.code { i8 0, i8 9, i16 239 }, %struct.code { i8 16, i8 7, i16 9 }, %struct.code { i8 0, i8 8, i16 95 }, %struct.code { i8 0, i8 8, i16 31 }, %struct.code { i8 0, i8 9, i16 159 }, %struct.code { i8 20, i8 7, i16 99 }, %struct.code { i8 0, i8 8, i16 127 }, %struct.code { i8 0, i8 8, i16 63 }, %struct.code { i8 0, i8 9, i16 223 }, %struct.code { i8 18, i8 7, i16 27 }, %struct.code { i8 0, i8 8, i16 111 }, %struct.code { i8 0, i8 8, i16 47 }, %struct.code { i8 0, i8 9, i16 191 }, %struct.code { i8 0, i8 8, i16 15 }, %struct.code { i8 0, i8 8, i16 143 }, %struct.code { i8 0, i8 8, i16 79 }, %struct.code { i8 0, i8 9, i16 255 }], align 16, !dbg !209
@zlib_fixedtables.distfix = internal constant [32 x %struct.code] [%struct.code { i8 16, i8 5, i16 1 }, %struct.code { i8 23, i8 5, i16 257 }, %struct.code { i8 19, i8 5, i16 17 }, %struct.code { i8 27, i8 5, i16 4097 }, %struct.code { i8 17, i8 5, i16 5 }, %struct.code { i8 25, i8 5, i16 1025 }, %struct.code { i8 21, i8 5, i16 65 }, %struct.code { i8 29, i8 5, i16 16385 }, %struct.code { i8 16, i8 5, i16 3 }, %struct.code { i8 24, i8 5, i16 513 }, %struct.code { i8 20, i8 5, i16 33 }, %struct.code { i8 28, i8 5, i16 8193 }, %struct.code { i8 18, i8 5, i16 9 }, %struct.code { i8 26, i8 5, i16 2049 }, %struct.code { i8 22, i8 5, i16 129 }, %struct.code { i8 64, i8 5, i16 0 }, %struct.code { i8 16, i8 5, i16 2 }, %struct.code { i8 23, i8 5, i16 385 }, %struct.code { i8 19, i8 5, i16 25 }, %struct.code { i8 27, i8 5, i16 6145 }, %struct.code { i8 17, i8 5, i16 7 }, %struct.code { i8 25, i8 5, i16 1537 }, %struct.code { i8 21, i8 5, i16 97 }, %struct.code { i8 29, i8 5, i16 24577 }, %struct.code { i8 16, i8 5, i16 4 }, %struct.code { i8 24, i8 5, i16 769 }, %struct.code { i8 20, i8 5, i16 49 }, %struct.code { i8 28, i8 5, i16 12289 }, %struct.code { i8 18, i8 5, i16 13 }, %struct.code { i8 26, i8 5, i16 3073 }, %struct.code { i8 22, i8 5, i16 193 }, %struct.code { i8 64, i8 5, i16 0 }], align 16, !dbg !220

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @zlib_inflate_workspacesize() #0 align 16 !dbg !257 {
entry:
  ret i32 42312, !dbg !260
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @zlib_inflateReset(ptr noundef %strm) #0 align 16 !dbg !261 {
entry:
  %retval = alloca i32, align 4
  %strm.addr = alloca ptr, align 8
  %state = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %strm, ptr %strm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %strm.addr, metadata !265, metadata !DIExpression()), !dbg !267
  call void @llvm.lifetime.start.p0(i64 8, ptr %state) #6, !dbg !268
  call void @llvm.dbg.declare(metadata ptr %state, metadata !266, metadata !DIExpression()), !dbg !269
  %0 = load ptr, ptr %strm.addr, align 8, !dbg !270
  %cmp = icmp eq ptr %0, null, !dbg !272
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !273

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %strm.addr, align 8, !dbg !274
  %state1 = getelementptr inbounds %struct.z_stream_s, ptr %1, i32 0, i32 7, !dbg !275
  %2 = load ptr, ptr %state1, align 8, !dbg !275
  %cmp2 = icmp eq ptr %2, null, !dbg !276
  br i1 %cmp2, label %if.then, label %if.end, !dbg !277

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -2, ptr %retval, align 4, !dbg !278
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !278

if.end:                                           ; preds = %lor.lhs.false
  %3 = load ptr, ptr %strm.addr, align 8, !dbg !279
  %state3 = getelementptr inbounds %struct.z_stream_s, ptr %3, i32 0, i32 7, !dbg !280
  %4 = load ptr, ptr %state3, align 8, !dbg !280
  store ptr %4, ptr %state, align 8, !dbg !281
  %5 = load ptr, ptr %state, align 8, !dbg !282
  %total = getelementptr inbounds %struct.inflate_state, ptr %5, i32 0, i32 7, !dbg !283
  store i64 0, ptr %total, align 8, !dbg !284
  %6 = load ptr, ptr %strm.addr, align 8, !dbg !285
  %total_out = getelementptr inbounds %struct.z_stream_s, ptr %6, i32 0, i32 5, !dbg !286
  store i64 0, ptr %total_out, align 8, !dbg !287
  %7 = load ptr, ptr %strm.addr, align 8, !dbg !288
  %total_in = getelementptr inbounds %struct.z_stream_s, ptr %7, i32 0, i32 2, !dbg !289
  store i64 0, ptr %total_in, align 8, !dbg !290
  %8 = load ptr, ptr %strm.addr, align 8, !dbg !291
  %msg = getelementptr inbounds %struct.z_stream_s, ptr %8, i32 0, i32 6, !dbg !292
  store ptr null, ptr %msg, align 8, !dbg !293
  %9 = load ptr, ptr %strm.addr, align 8, !dbg !294
  %adler = getelementptr inbounds %struct.z_stream_s, ptr %9, i32 0, i32 10, !dbg !295
  store i64 1, ptr %adler, align 8, !dbg !296
  %10 = load ptr, ptr %state, align 8, !dbg !297
  %mode = getelementptr inbounds %struct.inflate_state, ptr %10, i32 0, i32 0, !dbg !298
  store i32 0, ptr %mode, align 8, !dbg !299
  %11 = load ptr, ptr %state, align 8, !dbg !300
  %last = getelementptr inbounds %struct.inflate_state, ptr %11, i32 0, i32 1, !dbg !301
  store i32 0, ptr %last, align 4, !dbg !302
  %12 = load ptr, ptr %state, align 8, !dbg !303
  %havedict = getelementptr inbounds %struct.inflate_state, ptr %12, i32 0, i32 3, !dbg !304
  store i32 0, ptr %havedict, align 4, !dbg !305
  %13 = load ptr, ptr %state, align 8, !dbg !306
  %dmax = getelementptr inbounds %struct.inflate_state, ptr %13, i32 0, i32 5, !dbg !307
  store i32 32768, ptr %dmax, align 4, !dbg !308
  %14 = load ptr, ptr %state, align 8, !dbg !309
  %hold = getelementptr inbounds %struct.inflate_state, ptr %14, i32 0, i32 13, !dbg !310
  store i64 0, ptr %hold, align 8, !dbg !311
  %15 = load ptr, ptr %state, align 8, !dbg !312
  %bits = getelementptr inbounds %struct.inflate_state, ptr %15, i32 0, i32 14, !dbg !313
  store i32 0, ptr %bits, align 8, !dbg !314
  %16 = load ptr, ptr %state, align 8, !dbg !315
  %codes = getelementptr inbounds %struct.inflate_state, ptr %16, i32 0, i32 29, !dbg !316
  %arraydecay = getelementptr inbounds [2048 x %struct.code], ptr %codes, i64 0, i64 0, !dbg !315
  %17 = load ptr, ptr %state, align 8, !dbg !317
  %next = getelementptr inbounds %struct.inflate_state, ptr %17, i32 0, i32 26, !dbg !318
  store ptr %arraydecay, ptr %next, align 8, !dbg !319
  %18 = load ptr, ptr %state, align 8, !dbg !320
  %distcode = getelementptr inbounds %struct.inflate_state, ptr %18, i32 0, i32 19, !dbg !321
  store ptr %arraydecay, ptr %distcode, align 8, !dbg !322
  %19 = load ptr, ptr %state, align 8, !dbg !323
  %lencode = getelementptr inbounds %struct.inflate_state, ptr %19, i32 0, i32 18, !dbg !324
  store ptr %arraydecay, ptr %lencode, align 8, !dbg !325
  %20 = load ptr, ptr %state, align 8, !dbg !326
  %wbits = getelementptr inbounds %struct.inflate_state, ptr %20, i32 0, i32 8, !dbg !327
  %21 = load i32, ptr %wbits, align 8, !dbg !327
  %shl = shl i32 1, %21, !dbg !328
  %22 = load ptr, ptr %state, align 8, !dbg !329
  %wsize = getelementptr inbounds %struct.inflate_state, ptr %22, i32 0, i32 9, !dbg !330
  store i32 %shl, ptr %wsize, align 4, !dbg !331
  %23 = load ptr, ptr %state, align 8, !dbg !332
  %write = getelementptr inbounds %struct.inflate_state, ptr %23, i32 0, i32 11, !dbg !333
  store i32 0, ptr %write, align 4, !dbg !334
  %24 = load ptr, ptr %state, align 8, !dbg !335
  %whave = getelementptr inbounds %struct.inflate_state, ptr %24, i32 0, i32 10, !dbg !336
  store i32 0, ptr %whave, align 8, !dbg !337
  br label %do.body, !dbg !338

do.body:                                          ; preds = %if.end
  br label %do.cond, !dbg !339

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !339

do.end:                                           ; preds = %do.cond
  store i32 0, ptr %retval, align 4, !dbg !341
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !341

cleanup:                                          ; preds = %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %state) #6, !dbg !342
  %25 = load i32, ptr %retval, align 4, !dbg !342
  ret i32 %25, !dbg !342
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @zlib_inflateInit2(ptr noundef %strm, i32 noundef %windowBits) #0 align 16 !dbg !343 {
entry:
  %retval = alloca i32, align 4
  %strm.addr = alloca ptr, align 8
  %windowBits.addr = alloca i32, align 4
  %state = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %strm, ptr %strm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %strm.addr, metadata !345, metadata !DIExpression()), !dbg !348
  store i32 %windowBits, ptr %windowBits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %windowBits.addr, metadata !346, metadata !DIExpression()), !dbg !349
  call void @llvm.lifetime.start.p0(i64 8, ptr %state) #6, !dbg !350
  call void @llvm.dbg.declare(metadata ptr %state, metadata !347, metadata !DIExpression()), !dbg !351
  %0 = load ptr, ptr %strm.addr, align 8, !dbg !352
  %cmp = icmp eq ptr %0, null, !dbg !354
  br i1 %cmp, label %if.then, label %if.end, !dbg !355

if.then:                                          ; preds = %entry
  store i32 -2, ptr %retval, align 4, !dbg !356
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !356

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %strm.addr, align 8, !dbg !357
  %msg = getelementptr inbounds %struct.z_stream_s, ptr %1, i32 0, i32 6, !dbg !358
  store ptr null, ptr %msg, align 8, !dbg !359
  %2 = load ptr, ptr %strm.addr, align 8, !dbg !360
  %workspace = getelementptr inbounds %struct.z_stream_s, ptr %2, i32 0, i32 8, !dbg !360
  %3 = load ptr, ptr %workspace, align 8, !dbg !360
  %inflate_state = getelementptr inbounds %struct.inflate_workspace, ptr %3, i32 0, i32 0, !dbg !361
  store ptr %inflate_state, ptr %state, align 8, !dbg !362
  %4 = load ptr, ptr %state, align 8, !dbg !363
  %5 = load ptr, ptr %strm.addr, align 8, !dbg !364
  %state1 = getelementptr inbounds %struct.z_stream_s, ptr %5, i32 0, i32 7, !dbg !365
  store ptr %4, ptr %state1, align 8, !dbg !366
  %6 = load i32, ptr %windowBits.addr, align 4, !dbg !367
  %cmp2 = icmp slt i32 %6, 0, !dbg !369
  br i1 %cmp2, label %if.then3, label %if.else, !dbg !370

if.then3:                                         ; preds = %if.end
  %7 = load ptr, ptr %state, align 8, !dbg !371
  %wrap = getelementptr inbounds %struct.inflate_state, ptr %7, i32 0, i32 2, !dbg !373
  store i32 0, ptr %wrap, align 8, !dbg !374
  %8 = load i32, ptr %windowBits.addr, align 4, !dbg !375
  %sub = sub i32 0, %8, !dbg !376
  store i32 %sub, ptr %windowBits.addr, align 4, !dbg !377
  br label %if.end5, !dbg !378

if.else:                                          ; preds = %if.end
  %9 = load i32, ptr %windowBits.addr, align 4, !dbg !379
  %shr = ashr i32 %9, 4, !dbg !381
  %add = add i32 %shr, 1, !dbg !382
  %10 = load ptr, ptr %state, align 8, !dbg !383
  %wrap4 = getelementptr inbounds %struct.inflate_state, ptr %10, i32 0, i32 2, !dbg !384
  store i32 %add, ptr %wrap4, align 8, !dbg !385
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then3
  %11 = load i32, ptr %windowBits.addr, align 4, !dbg !386
  %cmp6 = icmp slt i32 %11, 8, !dbg !388
  br i1 %cmp6, label %if.then8, label %lor.lhs.false, !dbg !389

lor.lhs.false:                                    ; preds = %if.end5
  %12 = load i32, ptr %windowBits.addr, align 4, !dbg !390
  %cmp7 = icmp sgt i32 %12, 15, !dbg !391
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !392

if.then8:                                         ; preds = %lor.lhs.false, %if.end5
  store i32 -2, ptr %retval, align 4, !dbg !393
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !393

if.end9:                                          ; preds = %lor.lhs.false
  %13 = load i32, ptr %windowBits.addr, align 4, !dbg !395
  %14 = load ptr, ptr %state, align 8, !dbg !396
  %wbits = getelementptr inbounds %struct.inflate_state, ptr %14, i32 0, i32 8, !dbg !397
  store i32 %13, ptr %wbits, align 8, !dbg !398
  %15 = load ptr, ptr %strm.addr, align 8, !dbg !399
  %workspace10 = getelementptr inbounds %struct.z_stream_s, ptr %15, i32 0, i32 8, !dbg !399
  %16 = load ptr, ptr %workspace10, align 8, !dbg !399
  %working_window = getelementptr inbounds %struct.inflate_workspace, ptr %16, i32 0, i32 1, !dbg !400
  %arrayidx = getelementptr [32768 x i8], ptr %working_window, i64 0, i64 0, !dbg !399
  %17 = load ptr, ptr %state, align 8, !dbg !401
  %window = getelementptr inbounds %struct.inflate_state, ptr %17, i32 0, i32 12, !dbg !402
  store ptr %arrayidx, ptr %window, align 8, !dbg !403
  %18 = load ptr, ptr %strm.addr, align 8, !dbg !404
  %call = call i32 @zlib_inflateReset(ptr noundef %18) #7, !dbg !405
  store i32 %call, ptr %retval, align 4, !dbg !406
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !406

cleanup:                                          ; preds = %if.end9, %if.then8, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %state) #6, !dbg !407
  %19 = load i32, ptr %retval, align 4, !dbg !407
  ret i32 %19, !dbg !407
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @zlib_inflate(ptr noundef %strm, i32 noundef %flush) #0 align 16 !dbg !2 {
entry:
  %retval = alloca i32, align 4
  %strm.addr = alloca ptr, align 8
  %flush.addr = alloca i32, align 4
  %state = alloca ptr, align 8
  %next = alloca ptr, align 8
  %put = alloca ptr, align 8
  %have = alloca i32, align 4
  %left = alloca i32, align 4
  %hold = alloca i64, align 8
  %bits = alloca i32, align 4
  %in = alloca i32, align 4
  %out = alloca i32, align 4
  %copy = alloca i32, align 4
  %from = alloca ptr, align 8
  %this = alloca %struct.code, align 2
  %last = alloca %struct.code, align 2
  %len = alloca i32, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %strm, ptr %strm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %strm.addr, metadata !226, metadata !DIExpression()), !dbg !408
  store i32 %flush, ptr %flush.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flush.addr, metadata !227, metadata !DIExpression()), !dbg !409
  call void @llvm.lifetime.start.p0(i64 8, ptr %state) #6, !dbg !410
  call void @llvm.dbg.declare(metadata ptr %state, metadata !228, metadata !DIExpression()), !dbg !411
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #6, !dbg !412
  call void @llvm.dbg.declare(metadata ptr %next, metadata !229, metadata !DIExpression()), !dbg !413
  call void @llvm.lifetime.start.p0(i64 8, ptr %put) #6, !dbg !414
  call void @llvm.dbg.declare(metadata ptr %put, metadata !232, metadata !DIExpression()), !dbg !415
  call void @llvm.lifetime.start.p0(i64 4, ptr %have) #6, !dbg !416
  call void @llvm.dbg.declare(metadata ptr %have, metadata !233, metadata !DIExpression()), !dbg !417
  call void @llvm.lifetime.start.p0(i64 4, ptr %left) #6, !dbg !416
  call void @llvm.dbg.declare(metadata ptr %left, metadata !234, metadata !DIExpression()), !dbg !418
  call void @llvm.lifetime.start.p0(i64 8, ptr %hold) #6, !dbg !419
  call void @llvm.dbg.declare(metadata ptr %hold, metadata !235, metadata !DIExpression()), !dbg !420
  call void @llvm.lifetime.start.p0(i64 4, ptr %bits) #6, !dbg !421
  call void @llvm.dbg.declare(metadata ptr %bits, metadata !236, metadata !DIExpression()), !dbg !422
  call void @llvm.lifetime.start.p0(i64 4, ptr %in) #6, !dbg !423
  call void @llvm.dbg.declare(metadata ptr %in, metadata !237, metadata !DIExpression()), !dbg !424
  call void @llvm.lifetime.start.p0(i64 4, ptr %out) #6, !dbg !423
  call void @llvm.dbg.declare(metadata ptr %out, metadata !238, metadata !DIExpression()), !dbg !425
  call void @llvm.lifetime.start.p0(i64 4, ptr %copy) #6, !dbg !426
  call void @llvm.dbg.declare(metadata ptr %copy, metadata !239, metadata !DIExpression()), !dbg !427
  call void @llvm.lifetime.start.p0(i64 8, ptr %from) #6, !dbg !428
  call void @llvm.dbg.declare(metadata ptr %from, metadata !240, metadata !DIExpression()), !dbg !429
  call void @llvm.lifetime.start.p0(i64 4, ptr %this) #6, !dbg !430
  call void @llvm.dbg.declare(metadata ptr %this, metadata !241, metadata !DIExpression()), !dbg !431
  call void @llvm.lifetime.start.p0(i64 4, ptr %last) #6, !dbg !432
  call void @llvm.dbg.declare(metadata ptr %last, metadata !242, metadata !DIExpression()), !dbg !433
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #6, !dbg !434
  call void @llvm.dbg.declare(metadata ptr %len, metadata !243, metadata !DIExpression()), !dbg !435
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #6, !dbg !436
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !244, metadata !DIExpression()), !dbg !437
  %0 = load ptr, ptr %strm.addr, align 8, !dbg !438
  %cmp = icmp eq ptr %0, null, !dbg !440
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !441

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %strm.addr, align 8, !dbg !442
  %state1 = getelementptr inbounds %struct.z_stream_s, ptr %1, i32 0, i32 7, !dbg !443
  %2 = load ptr, ptr %state1, align 8, !dbg !443
  %cmp2 = icmp eq ptr %2, null, !dbg !444
  br i1 %cmp2, label %if.then, label %lor.lhs.false3, !dbg !445

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %3 = load ptr, ptr %strm.addr, align 8, !dbg !446
  %next_in = getelementptr inbounds %struct.z_stream_s, ptr %3, i32 0, i32 0, !dbg !447
  %4 = load ptr, ptr %next_in, align 8, !dbg !447
  %cmp4 = icmp eq ptr %4, null, !dbg !448
  br i1 %cmp4, label %land.lhs.true, label %if.end, !dbg !449

land.lhs.true:                                    ; preds = %lor.lhs.false3
  %5 = load ptr, ptr %strm.addr, align 8, !dbg !450
  %avail_in = getelementptr inbounds %struct.z_stream_s, ptr %5, i32 0, i32 1, !dbg !451
  %6 = load i64, ptr %avail_in, align 8, !dbg !451
  %cmp5 = icmp ne i64 %6, 0, !dbg !452
  br i1 %cmp5, label %if.then, label %if.end, !dbg !453

if.then:                                          ; preds = %land.lhs.true, %lor.lhs.false, %entry
  store i32 -2, ptr %retval, align 4, !dbg !454
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !454

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false3
  %7 = load ptr, ptr %strm.addr, align 8, !dbg !455
  %state6 = getelementptr inbounds %struct.z_stream_s, ptr %7, i32 0, i32 7, !dbg !456
  %8 = load ptr, ptr %state6, align 8, !dbg !456
  store ptr %8, ptr %state, align 8, !dbg !457
  %9 = load ptr, ptr %state, align 8, !dbg !458
  %mode = getelementptr inbounds %struct.inflate_state, ptr %9, i32 0, i32 0, !dbg !460
  %10 = load i32, ptr %mode, align 8, !dbg !460
  %cmp7 = icmp eq i32 %10, 11, !dbg !461
  br i1 %cmp7, label %if.then8, label %if.end10, !dbg !462

if.then8:                                         ; preds = %if.end
  %11 = load ptr, ptr %state, align 8, !dbg !463
  %mode9 = getelementptr inbounds %struct.inflate_state, ptr %11, i32 0, i32 0, !dbg !464
  store i32 12, ptr %mode9, align 8, !dbg !465
  br label %if.end10, !dbg !463

if.end10:                                         ; preds = %if.then8, %if.end
  br label %do.body, !dbg !466

do.body:                                          ; preds = %if.end10
  %12 = load ptr, ptr %strm.addr, align 8, !dbg !467
  %next_out = getelementptr inbounds %struct.z_stream_s, ptr %12, i32 0, i32 3, !dbg !467
  %13 = load ptr, ptr %next_out, align 8, !dbg !467
  store ptr %13, ptr %put, align 8, !dbg !467
  %14 = load ptr, ptr %strm.addr, align 8, !dbg !467
  %avail_out = getelementptr inbounds %struct.z_stream_s, ptr %14, i32 0, i32 4, !dbg !467
  %15 = load i64, ptr %avail_out, align 8, !dbg !467
  %conv = trunc i64 %15 to i32, !dbg !467
  store i32 %conv, ptr %left, align 4, !dbg !467
  %16 = load ptr, ptr %strm.addr, align 8, !dbg !467
  %next_in11 = getelementptr inbounds %struct.z_stream_s, ptr %16, i32 0, i32 0, !dbg !467
  %17 = load ptr, ptr %next_in11, align 8, !dbg !467
  store ptr %17, ptr %next, align 8, !dbg !467
  %18 = load ptr, ptr %strm.addr, align 8, !dbg !467
  %avail_in12 = getelementptr inbounds %struct.z_stream_s, ptr %18, i32 0, i32 1, !dbg !467
  %19 = load i64, ptr %avail_in12, align 8, !dbg !467
  %conv13 = trunc i64 %19 to i32, !dbg !467
  store i32 %conv13, ptr %have, align 4, !dbg !467
  %20 = load ptr, ptr %state, align 8, !dbg !467
  %hold14 = getelementptr inbounds %struct.inflate_state, ptr %20, i32 0, i32 13, !dbg !467
  %21 = load i64, ptr %hold14, align 8, !dbg !467
  store i64 %21, ptr %hold, align 8, !dbg !467
  %22 = load ptr, ptr %state, align 8, !dbg !467
  %bits15 = getelementptr inbounds %struct.inflate_state, ptr %22, i32 0, i32 14, !dbg !467
  %23 = load i32, ptr %bits15, align 8, !dbg !467
  store i32 %23, ptr %bits, align 4, !dbg !467
  br label %do.cond, !dbg !467

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !467

do.end:                                           ; preds = %do.cond
  %24 = load i32, ptr %have, align 4, !dbg !469
  store i32 %24, ptr %in, align 4, !dbg !470
  %25 = load i32, ptr %left, align 4, !dbg !471
  store i32 %25, ptr %out, align 4, !dbg !472
  store i32 0, ptr %ret, align 4, !dbg !473
  br label %for.cond, !dbg !474

for.cond:                                         ; preds = %sw.epilog1214, %do.end
  %26 = load ptr, ptr %state, align 8, !dbg !475
  %mode16 = getelementptr inbounds %struct.inflate_state, ptr %26, i32 0, i32 0, !dbg !478
  %27 = load i32, ptr %mode16, align 8, !dbg !478
  switch i32 %27, label %sw.default [
    i32 0, label %sw.bb
    i32 9, label %sw.bb71
    i32 10, label %sw.bb111
    i32 11, label %sw.bb131
    i32 12, label %sw.bb136
    i32 13, label %sw.bb199
    i32 14, label %sw.bb244
    i32 15, label %sw.bb269
    i32 16, label %sw.bb329
    i32 17, label %sw.bb398
    i32 18, label %sw.bb702
    i32 19, label %sw.bb864
    i32 20, label %sw.bb908
    i32 21, label %sw.bb1024
    i32 22, label %sw.bb1077
    i32 23, label %sw.bb1136
    i32 24, label %sw.bb1146
    i32 26, label %sw.bb1210
    i32 27, label %sw.bb1211
    i32 28, label %sw.bb1212
    i32 29, label %sw.bb1213
  ], !dbg !479

sw.bb:                                            ; preds = %for.cond
  %28 = load ptr, ptr %state, align 8, !dbg !480
  %wrap = getelementptr inbounds %struct.inflate_state, ptr %28, i32 0, i32 2, !dbg !483
  %29 = load i32, ptr %wrap, align 8, !dbg !483
  %cmp17 = icmp eq i32 %29, 0, !dbg !484
  br i1 %cmp17, label %if.then19, label %if.end21, !dbg !485

if.then19:                                        ; preds = %sw.bb
  %30 = load ptr, ptr %state, align 8, !dbg !486
  %mode20 = getelementptr inbounds %struct.inflate_state, ptr %30, i32 0, i32 0, !dbg !488
  store i32 12, ptr %mode20, align 8, !dbg !489
  br label %sw.epilog1214, !dbg !490

if.end21:                                         ; preds = %sw.bb
  br label %do.body22, !dbg !491

do.body22:                                        ; preds = %if.end21
  br label %while.cond, !dbg !492

while.cond:                                       ; preds = %do.end33, %do.body22
  %31 = load i32, ptr %bits, align 4, !dbg !492
  %cmp23 = icmp ult i32 %31, 16, !dbg !492
  br i1 %cmp23, label %while.body, label %while.end, !dbg !492

while.body:                                       ; preds = %while.cond
  br label %do.body25, !dbg !492

do.body25:                                        ; preds = %while.body
  %32 = load i32, ptr %have, align 4, !dbg !494
  %cmp26 = icmp eq i32 %32, 0, !dbg !494
  br i1 %cmp26, label %if.then28, label %if.end29, !dbg !497

if.then28:                                        ; preds = %do.body25
  br label %inf_leave, !dbg !494

if.end29:                                         ; preds = %do.body25
  %33 = load i32, ptr %have, align 4, !dbg !497
  %dec = add i32 %33, -1, !dbg !497
  store i32 %dec, ptr %have, align 4, !dbg !497
  %34 = load ptr, ptr %next, align 8, !dbg !497
  %incdec.ptr = getelementptr i8, ptr %34, i32 1, !dbg !497
  store ptr %incdec.ptr, ptr %next, align 8, !dbg !497
  %35 = load i8, ptr %34, align 1, !dbg !497
  %conv30 = zext i8 %35 to i64, !dbg !497
  %36 = load i32, ptr %bits, align 4, !dbg !497
  %sh_prom = zext i32 %36 to i64, !dbg !497
  %shl = shl i64 %conv30, %sh_prom, !dbg !497
  %37 = load i64, ptr %hold, align 8, !dbg !497
  %add = add i64 %37, %shl, !dbg !497
  store i64 %add, ptr %hold, align 8, !dbg !497
  %38 = load i32, ptr %bits, align 4, !dbg !497
  %add31 = add i32 %38, 8, !dbg !497
  store i32 %add31, ptr %bits, align 4, !dbg !497
  br label %do.cond32, !dbg !497

do.cond32:                                        ; preds = %if.end29
  br label %do.end33, !dbg !497

do.end33:                                         ; preds = %do.cond32
  br label %while.cond, !dbg !492, !llvm.loop !498

while.end:                                        ; preds = %while.cond
  br label %do.cond34, !dbg !492

do.cond34:                                        ; preds = %while.end
  br label %do.end35, !dbg !492

do.end35:                                         ; preds = %do.cond34
  %39 = load i64, ptr %hold, align 8, !dbg !501
  %conv36 = trunc i64 %39 to i32, !dbg !501
  %and = and i32 %conv36, 255, !dbg !501
  %shl37 = shl i32 %and, 8, !dbg !503
  %conv38 = zext i32 %shl37 to i64, !dbg !504
  %40 = load i64, ptr %hold, align 8, !dbg !505
  %shr = lshr i64 %40, 8, !dbg !506
  %add39 = add i64 %conv38, %shr, !dbg !507
  %rem = urem i64 %add39, 31, !dbg !508
  %tobool = icmp ne i64 %rem, 0, !dbg !508
  br i1 %tobool, label %if.then40, label %if.end42, !dbg !509

if.then40:                                        ; preds = %do.end35
  %41 = load ptr, ptr %strm.addr, align 8, !dbg !510
  %msg = getelementptr inbounds %struct.z_stream_s, ptr %41, i32 0, i32 6, !dbg !512
  store ptr @.str, ptr %msg, align 8, !dbg !513
  %42 = load ptr, ptr %state, align 8, !dbg !514
  %mode41 = getelementptr inbounds %struct.inflate_state, ptr %42, i32 0, i32 0, !dbg !515
  store i32 27, ptr %mode41, align 8, !dbg !516
  br label %sw.epilog1214, !dbg !517

if.end42:                                         ; preds = %do.end35
  %43 = load i64, ptr %hold, align 8, !dbg !518
  %conv43 = trunc i64 %43 to i32, !dbg !518
  %and44 = and i32 %conv43, 15, !dbg !518
  %cmp45 = icmp ne i32 %and44, 8, !dbg !520
  br i1 %cmp45, label %if.then47, label %if.end50, !dbg !521

if.then47:                                        ; preds = %if.end42
  %44 = load ptr, ptr %strm.addr, align 8, !dbg !522
  %msg48 = getelementptr inbounds %struct.z_stream_s, ptr %44, i32 0, i32 6, !dbg !524
  store ptr @.str.1, ptr %msg48, align 8, !dbg !525
  %45 = load ptr, ptr %state, align 8, !dbg !526
  %mode49 = getelementptr inbounds %struct.inflate_state, ptr %45, i32 0, i32 0, !dbg !527
  store i32 27, ptr %mode49, align 8, !dbg !528
  br label %sw.epilog1214, !dbg !529

if.end50:                                         ; preds = %if.end42
  br label %do.body51, !dbg !530

do.body51:                                        ; preds = %if.end50
  %46 = load i64, ptr %hold, align 8, !dbg !531
  %shr52 = lshr i64 %46, 4, !dbg !531
  store i64 %shr52, ptr %hold, align 8, !dbg !531
  %47 = load i32, ptr %bits, align 4, !dbg !531
  %sub = sub i32 %47, 4, !dbg !531
  store i32 %sub, ptr %bits, align 4, !dbg !531
  br label %do.cond53, !dbg !531

do.cond53:                                        ; preds = %do.body51
  br label %do.end54, !dbg !531

do.end54:                                         ; preds = %do.cond53
  %48 = load i64, ptr %hold, align 8, !dbg !533
  %conv55 = trunc i64 %48 to i32, !dbg !533
  %and56 = and i32 %conv55, 15, !dbg !533
  %add57 = add i32 %and56, 8, !dbg !534
  store i32 %add57, ptr %len, align 4, !dbg !535
  %49 = load i32, ptr %len, align 4, !dbg !536
  %50 = load ptr, ptr %state, align 8, !dbg !538
  %wbits = getelementptr inbounds %struct.inflate_state, ptr %50, i32 0, i32 8, !dbg !539
  %51 = load i32, ptr %wbits, align 8, !dbg !539
  %cmp58 = icmp ugt i32 %49, %51, !dbg !540
  br i1 %cmp58, label %if.then60, label %if.end63, !dbg !541

if.then60:                                        ; preds = %do.end54
  %52 = load ptr, ptr %strm.addr, align 8, !dbg !542
  %msg61 = getelementptr inbounds %struct.z_stream_s, ptr %52, i32 0, i32 6, !dbg !544
  store ptr @.str.2, ptr %msg61, align 8, !dbg !545
  %53 = load ptr, ptr %state, align 8, !dbg !546
  %mode62 = getelementptr inbounds %struct.inflate_state, ptr %53, i32 0, i32 0, !dbg !547
  store i32 27, ptr %mode62, align 8, !dbg !548
  br label %sw.epilog1214, !dbg !549

if.end63:                                         ; preds = %do.end54
  %54 = load i32, ptr %len, align 4, !dbg !550
  %shl64 = shl i32 1, %54, !dbg !551
  %55 = load ptr, ptr %state, align 8, !dbg !552
  %dmax = getelementptr inbounds %struct.inflate_state, ptr %55, i32 0, i32 5, !dbg !553
  store i32 %shl64, ptr %dmax, align 4, !dbg !554
  %call = call i64 @zlib_adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #7, !dbg !555
  %56 = load ptr, ptr %state, align 8, !dbg !556
  %check = getelementptr inbounds %struct.inflate_state, ptr %56, i32 0, i32 6, !dbg !557
  store i64 %call, ptr %check, align 8, !dbg !558
  %57 = load ptr, ptr %strm.addr, align 8, !dbg !559
  %adler = getelementptr inbounds %struct.z_stream_s, ptr %57, i32 0, i32 10, !dbg !560
  store i64 %call, ptr %adler, align 8, !dbg !561
  %58 = load i64, ptr %hold, align 8, !dbg !562
  %and65 = and i64 %58, 512, !dbg !563
  %tobool66 = icmp ne i64 %and65, 0, !dbg !562
  %59 = zext i1 %tobool66 to i64, !dbg !562
  %cond = select i1 %tobool66, i32 9, i32 11, !dbg !562
  %60 = load ptr, ptr %state, align 8, !dbg !564
  %mode67 = getelementptr inbounds %struct.inflate_state, ptr %60, i32 0, i32 0, !dbg !565
  store i32 %cond, ptr %mode67, align 8, !dbg !566
  br label %do.body68, !dbg !567

do.body68:                                        ; preds = %if.end63
  store i64 0, ptr %hold, align 8, !dbg !568
  store i32 0, ptr %bits, align 4, !dbg !568
  br label %do.cond69, !dbg !568

do.cond69:                                        ; preds = %do.body68
  br label %do.end70, !dbg !568

do.end70:                                         ; preds = %do.cond69
  br label %sw.epilog1214, !dbg !570

sw.bb71:                                          ; preds = %for.cond
  br label %do.body72, !dbg !571

do.body72:                                        ; preds = %sw.bb71
  br label %while.cond73, !dbg !572

while.cond73:                                     ; preds = %do.end90, %do.body72
  %61 = load i32, ptr %bits, align 4, !dbg !572
  %cmp74 = icmp ult i32 %61, 32, !dbg !572
  br i1 %cmp74, label %while.body76, label %while.end91, !dbg !572

while.body76:                                     ; preds = %while.cond73
  br label %do.body77, !dbg !572

do.body77:                                        ; preds = %while.body76
  %62 = load i32, ptr %have, align 4, !dbg !574
  %cmp78 = icmp eq i32 %62, 0, !dbg !574
  br i1 %cmp78, label %if.then80, label %if.end81, !dbg !577

if.then80:                                        ; preds = %do.body77
  br label %inf_leave, !dbg !574

if.end81:                                         ; preds = %do.body77
  %63 = load i32, ptr %have, align 4, !dbg !577
  %dec82 = add i32 %63, -1, !dbg !577
  store i32 %dec82, ptr %have, align 4, !dbg !577
  %64 = load ptr, ptr %next, align 8, !dbg !577
  %incdec.ptr83 = getelementptr i8, ptr %64, i32 1, !dbg !577
  store ptr %incdec.ptr83, ptr %next, align 8, !dbg !577
  %65 = load i8, ptr %64, align 1, !dbg !577
  %conv84 = zext i8 %65 to i64, !dbg !577
  %66 = load i32, ptr %bits, align 4, !dbg !577
  %sh_prom85 = zext i32 %66 to i64, !dbg !577
  %shl86 = shl i64 %conv84, %sh_prom85, !dbg !577
  %67 = load i64, ptr %hold, align 8, !dbg !577
  %add87 = add i64 %67, %shl86, !dbg !577
  store i64 %add87, ptr %hold, align 8, !dbg !577
  %68 = load i32, ptr %bits, align 4, !dbg !577
  %add88 = add i32 %68, 8, !dbg !577
  store i32 %add88, ptr %bits, align 4, !dbg !577
  br label %do.cond89, !dbg !577

do.cond89:                                        ; preds = %if.end81
  br label %do.end90, !dbg !577

do.end90:                                         ; preds = %do.cond89
  br label %while.cond73, !dbg !572, !llvm.loop !578

while.end91:                                      ; preds = %while.cond73
  br label %do.cond92, !dbg !572

do.cond92:                                        ; preds = %while.end91
  br label %do.end93, !dbg !572

do.end93:                                         ; preds = %do.cond92
  %69 = load i64, ptr %hold, align 8, !dbg !579
  %shr94 = lshr i64 %69, 24, !dbg !579
  %and95 = and i64 %shr94, 255, !dbg !579
  %70 = load i64, ptr %hold, align 8, !dbg !579
  %shr96 = lshr i64 %70, 8, !dbg !579
  %and97 = and i64 %shr96, 65280, !dbg !579
  %add98 = add i64 %and95, %and97, !dbg !579
  %71 = load i64, ptr %hold, align 8, !dbg !579
  %and99 = and i64 %71, 65280, !dbg !579
  %shl100 = shl i64 %and99, 8, !dbg !579
  %add101 = add i64 %add98, %shl100, !dbg !579
  %72 = load i64, ptr %hold, align 8, !dbg !579
  %and102 = and i64 %72, 255, !dbg !579
  %shl103 = shl i64 %and102, 24, !dbg !579
  %add104 = add i64 %add101, %shl103, !dbg !579
  %73 = load ptr, ptr %state, align 8, !dbg !580
  %check105 = getelementptr inbounds %struct.inflate_state, ptr %73, i32 0, i32 6, !dbg !581
  store i64 %add104, ptr %check105, align 8, !dbg !582
  %74 = load ptr, ptr %strm.addr, align 8, !dbg !583
  %adler106 = getelementptr inbounds %struct.z_stream_s, ptr %74, i32 0, i32 10, !dbg !584
  store i64 %add104, ptr %adler106, align 8, !dbg !585
  br label %do.body107, !dbg !586

do.body107:                                       ; preds = %do.end93
  store i64 0, ptr %hold, align 8, !dbg !587
  store i32 0, ptr %bits, align 4, !dbg !587
  br label %do.cond108, !dbg !587

do.cond108:                                       ; preds = %do.body107
  br label %do.end109, !dbg !587

do.end109:                                        ; preds = %do.cond108
  %75 = load ptr, ptr %state, align 8, !dbg !589
  %mode110 = getelementptr inbounds %struct.inflate_state, ptr %75, i32 0, i32 0, !dbg !590
  store i32 10, ptr %mode110, align 8, !dbg !591
  br label %sw.bb111, !dbg !589

sw.bb111:                                         ; preds = %for.cond, %do.end109
  %76 = load ptr, ptr %state, align 8, !dbg !592
  %havedict = getelementptr inbounds %struct.inflate_state, ptr %76, i32 0, i32 3, !dbg !594
  %77 = load i32, ptr %havedict, align 4, !dbg !594
  %cmp112 = icmp eq i32 %77, 0, !dbg !595
  br i1 %cmp112, label %if.then114, label %if.end126, !dbg !596

if.then114:                                       ; preds = %sw.bb111
  br label %do.body115, !dbg !597

do.body115:                                       ; preds = %if.then114
  %78 = load ptr, ptr %put, align 8, !dbg !599
  %79 = load ptr, ptr %strm.addr, align 8, !dbg !599
  %next_out116 = getelementptr inbounds %struct.z_stream_s, ptr %79, i32 0, i32 3, !dbg !599
  store ptr %78, ptr %next_out116, align 8, !dbg !599
  %80 = load i32, ptr %left, align 4, !dbg !599
  %conv117 = zext i32 %80 to i64, !dbg !599
  %81 = load ptr, ptr %strm.addr, align 8, !dbg !599
  %avail_out118 = getelementptr inbounds %struct.z_stream_s, ptr %81, i32 0, i32 4, !dbg !599
  store i64 %conv117, ptr %avail_out118, align 8, !dbg !599
  %82 = load ptr, ptr %next, align 8, !dbg !599
  %83 = load ptr, ptr %strm.addr, align 8, !dbg !599
  %next_in119 = getelementptr inbounds %struct.z_stream_s, ptr %83, i32 0, i32 0, !dbg !599
  store ptr %82, ptr %next_in119, align 8, !dbg !599
  %84 = load i32, ptr %have, align 4, !dbg !599
  %conv120 = zext i32 %84 to i64, !dbg !599
  %85 = load ptr, ptr %strm.addr, align 8, !dbg !599
  %avail_in121 = getelementptr inbounds %struct.z_stream_s, ptr %85, i32 0, i32 1, !dbg !599
  store i64 %conv120, ptr %avail_in121, align 8, !dbg !599
  %86 = load i64, ptr %hold, align 8, !dbg !599
  %87 = load ptr, ptr %state, align 8, !dbg !599
  %hold122 = getelementptr inbounds %struct.inflate_state, ptr %87, i32 0, i32 13, !dbg !599
  store i64 %86, ptr %hold122, align 8, !dbg !599
  %88 = load i32, ptr %bits, align 4, !dbg !599
  %89 = load ptr, ptr %state, align 8, !dbg !599
  %bits123 = getelementptr inbounds %struct.inflate_state, ptr %89, i32 0, i32 14, !dbg !599
  store i32 %88, ptr %bits123, align 8, !dbg !599
  br label %do.cond124, !dbg !599

do.cond124:                                       ; preds = %do.body115
  br label %do.end125, !dbg !599

do.end125:                                        ; preds = %do.cond124
  store i32 2, ptr %retval, align 4, !dbg !601
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !601

if.end126:                                        ; preds = %sw.bb111
  %call127 = call i64 @zlib_adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #7, !dbg !602
  %90 = load ptr, ptr %state, align 8, !dbg !603
  %check128 = getelementptr inbounds %struct.inflate_state, ptr %90, i32 0, i32 6, !dbg !604
  store i64 %call127, ptr %check128, align 8, !dbg !605
  %91 = load ptr, ptr %strm.addr, align 8, !dbg !606
  %adler129 = getelementptr inbounds %struct.z_stream_s, ptr %91, i32 0, i32 10, !dbg !607
  store i64 %call127, ptr %adler129, align 8, !dbg !608
  %92 = load ptr, ptr %state, align 8, !dbg !609
  %mode130 = getelementptr inbounds %struct.inflate_state, ptr %92, i32 0, i32 0, !dbg !610
  store i32 11, ptr %mode130, align 8, !dbg !611
  br label %sw.bb131, !dbg !609

sw.bb131:                                         ; preds = %for.cond, %if.end126
  %93 = load i32, ptr %flush.addr, align 4, !dbg !612
  %cmp132 = icmp eq i32 %93, 6, !dbg !614
  br i1 %cmp132, label %if.then134, label %if.end135, !dbg !615

if.then134:                                       ; preds = %sw.bb131
  br label %inf_leave, !dbg !616

if.end135:                                        ; preds = %sw.bb131
  br label %sw.bb136, !dbg !617

sw.bb136:                                         ; preds = %for.cond, %if.end135
  br label %do.body137, !dbg !618

do.body137:                                       ; preds = %sw.bb136
  br label %do.cond138, !dbg !619

do.cond138:                                       ; preds = %do.body137
  br label %do.end139, !dbg !619

do.end139:                                        ; preds = %do.cond138
  %94 = load ptr, ptr %state, align 8, !dbg !621
  %last140 = getelementptr inbounds %struct.inflate_state, ptr %94, i32 0, i32 1, !dbg !623
  %95 = load i32, ptr %last140, align 4, !dbg !623
  %tobool141 = icmp ne i32 %95, 0, !dbg !621
  br i1 %tobool141, label %if.then142, label %if.end152, !dbg !624

if.then142:                                       ; preds = %do.end139
  br label %do.body143, !dbg !625

do.body143:                                       ; preds = %if.then142
  %96 = load i32, ptr %bits, align 4, !dbg !627
  %and144 = and i32 %96, 7, !dbg !627
  %97 = load i64, ptr %hold, align 8, !dbg !627
  %sh_prom145 = zext i32 %and144 to i64, !dbg !627
  %shr146 = lshr i64 %97, %sh_prom145, !dbg !627
  store i64 %shr146, ptr %hold, align 8, !dbg !627
  %98 = load i32, ptr %bits, align 4, !dbg !627
  %and147 = and i32 %98, 7, !dbg !627
  %99 = load i32, ptr %bits, align 4, !dbg !627
  %sub148 = sub i32 %99, %and147, !dbg !627
  store i32 %sub148, ptr %bits, align 4, !dbg !627
  br label %do.cond149, !dbg !627

do.cond149:                                       ; preds = %do.body143
  br label %do.end150, !dbg !627

do.end150:                                        ; preds = %do.cond149
  %100 = load ptr, ptr %state, align 8, !dbg !629
  %mode151 = getelementptr inbounds %struct.inflate_state, ptr %100, i32 0, i32 0, !dbg !630
  store i32 24, ptr %mode151, align 8, !dbg !631
  br label %sw.epilog1214, !dbg !632

if.end152:                                        ; preds = %do.end139
  br label %do.body153, !dbg !633

do.body153:                                       ; preds = %if.end152
  br label %while.cond154, !dbg !634

while.cond154:                                    ; preds = %do.end171, %do.body153
  %101 = load i32, ptr %bits, align 4, !dbg !634
  %cmp155 = icmp ult i32 %101, 3, !dbg !634
  br i1 %cmp155, label %while.body157, label %while.end172, !dbg !634

while.body157:                                    ; preds = %while.cond154
  br label %do.body158, !dbg !634

do.body158:                                       ; preds = %while.body157
  %102 = load i32, ptr %have, align 4, !dbg !636
  %cmp159 = icmp eq i32 %102, 0, !dbg !636
  br i1 %cmp159, label %if.then161, label %if.end162, !dbg !639

if.then161:                                       ; preds = %do.body158
  br label %inf_leave, !dbg !636

if.end162:                                        ; preds = %do.body158
  %103 = load i32, ptr %have, align 4, !dbg !639
  %dec163 = add i32 %103, -1, !dbg !639
  store i32 %dec163, ptr %have, align 4, !dbg !639
  %104 = load ptr, ptr %next, align 8, !dbg !639
  %incdec.ptr164 = getelementptr i8, ptr %104, i32 1, !dbg !639
  store ptr %incdec.ptr164, ptr %next, align 8, !dbg !639
  %105 = load i8, ptr %104, align 1, !dbg !639
  %conv165 = zext i8 %105 to i64, !dbg !639
  %106 = load i32, ptr %bits, align 4, !dbg !639
  %sh_prom166 = zext i32 %106 to i64, !dbg !639
  %shl167 = shl i64 %conv165, %sh_prom166, !dbg !639
  %107 = load i64, ptr %hold, align 8, !dbg !639
  %add168 = add i64 %107, %shl167, !dbg !639
  store i64 %add168, ptr %hold, align 8, !dbg !639
  %108 = load i32, ptr %bits, align 4, !dbg !639
  %add169 = add i32 %108, 8, !dbg !639
  store i32 %add169, ptr %bits, align 4, !dbg !639
  br label %do.cond170, !dbg !639

do.cond170:                                       ; preds = %if.end162
  br label %do.end171, !dbg !639

do.end171:                                        ; preds = %do.cond170
  br label %while.cond154, !dbg !634, !llvm.loop !640

while.end172:                                     ; preds = %while.cond154
  br label %do.cond173, !dbg !634

do.cond173:                                       ; preds = %while.end172
  br label %do.end174, !dbg !634

do.end174:                                        ; preds = %do.cond173
  %109 = load i64, ptr %hold, align 8, !dbg !641
  %conv175 = trunc i64 %109 to i32, !dbg !641
  %and176 = and i32 %conv175, 1, !dbg !641
  %110 = load ptr, ptr %state, align 8, !dbg !642
  %last177 = getelementptr inbounds %struct.inflate_state, ptr %110, i32 0, i32 1, !dbg !643
  store i32 %and176, ptr %last177, align 4, !dbg !644
  br label %do.body178, !dbg !645

do.body178:                                       ; preds = %do.end174
  %111 = load i64, ptr %hold, align 8, !dbg !646
  %shr179 = lshr i64 %111, 1, !dbg !646
  store i64 %shr179, ptr %hold, align 8, !dbg !646
  %112 = load i32, ptr %bits, align 4, !dbg !646
  %sub180 = sub i32 %112, 1, !dbg !646
  store i32 %sub180, ptr %bits, align 4, !dbg !646
  br label %do.cond181, !dbg !646

do.cond181:                                       ; preds = %do.body178
  br label %do.end182, !dbg !646

do.end182:                                        ; preds = %do.cond181
  %113 = load i64, ptr %hold, align 8, !dbg !648
  %conv183 = trunc i64 %113 to i32, !dbg !648
  %and184 = and i32 %conv183, 3, !dbg !648
  switch i32 %and184, label %sw.epilog [
    i32 0, label %sw.bb185
    i32 1, label %sw.bb187
    i32 2, label %sw.bb189
    i32 3, label %sw.bb191
  ], !dbg !649

sw.bb185:                                         ; preds = %do.end182
  %114 = load ptr, ptr %state, align 8, !dbg !650
  %mode186 = getelementptr inbounds %struct.inflate_state, ptr %114, i32 0, i32 0, !dbg !652
  store i32 13, ptr %mode186, align 8, !dbg !653
  br label %sw.epilog, !dbg !654

sw.bb187:                                         ; preds = %do.end182
  %115 = load ptr, ptr %state, align 8, !dbg !655
  call void @zlib_fixedtables(ptr noundef %115) #7, !dbg !656
  %116 = load ptr, ptr %state, align 8, !dbg !657
  %mode188 = getelementptr inbounds %struct.inflate_state, ptr %116, i32 0, i32 0, !dbg !658
  store i32 18, ptr %mode188, align 8, !dbg !659
  br label %sw.epilog, !dbg !660

sw.bb189:                                         ; preds = %do.end182
  %117 = load ptr, ptr %state, align 8, !dbg !661
  %mode190 = getelementptr inbounds %struct.inflate_state, ptr %117, i32 0, i32 0, !dbg !662
  store i32 15, ptr %mode190, align 8, !dbg !663
  br label %sw.epilog, !dbg !664

sw.bb191:                                         ; preds = %do.end182
  %118 = load ptr, ptr %strm.addr, align 8, !dbg !665
  %msg192 = getelementptr inbounds %struct.z_stream_s, ptr %118, i32 0, i32 6, !dbg !666
  store ptr @.str.3, ptr %msg192, align 8, !dbg !667
  %119 = load ptr, ptr %state, align 8, !dbg !668
  %mode193 = getelementptr inbounds %struct.inflate_state, ptr %119, i32 0, i32 0, !dbg !669
  store i32 27, ptr %mode193, align 8, !dbg !670
  br label %sw.epilog, !dbg !671

sw.epilog:                                        ; preds = %sw.bb191, %do.end182, %sw.bb189, %sw.bb187, %sw.bb185
  br label %do.body194, !dbg !672

do.body194:                                       ; preds = %sw.epilog
  %120 = load i64, ptr %hold, align 8, !dbg !673
  %shr195 = lshr i64 %120, 2, !dbg !673
  store i64 %shr195, ptr %hold, align 8, !dbg !673
  %121 = load i32, ptr %bits, align 4, !dbg !673
  %sub196 = sub i32 %121, 2, !dbg !673
  store i32 %sub196, ptr %bits, align 4, !dbg !673
  br label %do.cond197, !dbg !673

do.cond197:                                       ; preds = %do.body194
  br label %do.end198, !dbg !673

do.end198:                                        ; preds = %do.cond197
  br label %sw.epilog1214, !dbg !675

sw.bb199:                                         ; preds = %for.cond
  br label %do.body200, !dbg !676

do.body200:                                       ; preds = %sw.bb199
  %122 = load i32, ptr %bits, align 4, !dbg !677
  %and201 = and i32 %122, 7, !dbg !677
  %123 = load i64, ptr %hold, align 8, !dbg !677
  %sh_prom202 = zext i32 %and201 to i64, !dbg !677
  %shr203 = lshr i64 %123, %sh_prom202, !dbg !677
  store i64 %shr203, ptr %hold, align 8, !dbg !677
  %124 = load i32, ptr %bits, align 4, !dbg !677
  %and204 = and i32 %124, 7, !dbg !677
  %125 = load i32, ptr %bits, align 4, !dbg !677
  %sub205 = sub i32 %125, %and204, !dbg !677
  store i32 %sub205, ptr %bits, align 4, !dbg !677
  br label %do.cond206, !dbg !677

do.cond206:                                       ; preds = %do.body200
  br label %do.end207, !dbg !677

do.end207:                                        ; preds = %do.cond206
  br label %do.body208, !dbg !679

do.body208:                                       ; preds = %do.end207
  br label %while.cond209, !dbg !680

while.cond209:                                    ; preds = %do.end226, %do.body208
  %126 = load i32, ptr %bits, align 4, !dbg !680
  %cmp210 = icmp ult i32 %126, 32, !dbg !680
  br i1 %cmp210, label %while.body212, label %while.end227, !dbg !680

while.body212:                                    ; preds = %while.cond209
  br label %do.body213, !dbg !680

do.body213:                                       ; preds = %while.body212
  %127 = load i32, ptr %have, align 4, !dbg !682
  %cmp214 = icmp eq i32 %127, 0, !dbg !682
  br i1 %cmp214, label %if.then216, label %if.end217, !dbg !685

if.then216:                                       ; preds = %do.body213
  br label %inf_leave, !dbg !682

if.end217:                                        ; preds = %do.body213
  %128 = load i32, ptr %have, align 4, !dbg !685
  %dec218 = add i32 %128, -1, !dbg !685
  store i32 %dec218, ptr %have, align 4, !dbg !685
  %129 = load ptr, ptr %next, align 8, !dbg !685
  %incdec.ptr219 = getelementptr i8, ptr %129, i32 1, !dbg !685
  store ptr %incdec.ptr219, ptr %next, align 8, !dbg !685
  %130 = load i8, ptr %129, align 1, !dbg !685
  %conv220 = zext i8 %130 to i64, !dbg !685
  %131 = load i32, ptr %bits, align 4, !dbg !685
  %sh_prom221 = zext i32 %131 to i64, !dbg !685
  %shl222 = shl i64 %conv220, %sh_prom221, !dbg !685
  %132 = load i64, ptr %hold, align 8, !dbg !685
  %add223 = add i64 %132, %shl222, !dbg !685
  store i64 %add223, ptr %hold, align 8, !dbg !685
  %133 = load i32, ptr %bits, align 4, !dbg !685
  %add224 = add i32 %133, 8, !dbg !685
  store i32 %add224, ptr %bits, align 4, !dbg !685
  br label %do.cond225, !dbg !685

do.cond225:                                       ; preds = %if.end217
  br label %do.end226, !dbg !685

do.end226:                                        ; preds = %do.cond225
  br label %while.cond209, !dbg !680, !llvm.loop !686

while.end227:                                     ; preds = %while.cond209
  br label %do.cond228, !dbg !680

do.cond228:                                       ; preds = %while.end227
  br label %do.end229, !dbg !680

do.end229:                                        ; preds = %do.cond228
  %134 = load i64, ptr %hold, align 8, !dbg !687
  %and230 = and i64 %134, 65535, !dbg !689
  %135 = load i64, ptr %hold, align 8, !dbg !690
  %shr231 = lshr i64 %135, 16, !dbg !691
  %xor = xor i64 %shr231, 65535, !dbg !692
  %cmp232 = icmp ne i64 %and230, %xor, !dbg !693
  br i1 %cmp232, label %if.then234, label %if.end237, !dbg !694

if.then234:                                       ; preds = %do.end229
  %136 = load ptr, ptr %strm.addr, align 8, !dbg !695
  %msg235 = getelementptr inbounds %struct.z_stream_s, ptr %136, i32 0, i32 6, !dbg !697
  store ptr @.str.4, ptr %msg235, align 8, !dbg !698
  %137 = load ptr, ptr %state, align 8, !dbg !699
  %mode236 = getelementptr inbounds %struct.inflate_state, ptr %137, i32 0, i32 0, !dbg !700
  store i32 27, ptr %mode236, align 8, !dbg !701
  br label %sw.epilog1214, !dbg !702

if.end237:                                        ; preds = %do.end229
  %138 = load i64, ptr %hold, align 8, !dbg !703
  %conv238 = trunc i64 %138 to i32, !dbg !704
  %and239 = and i32 %conv238, 65535, !dbg !705
  %139 = load ptr, ptr %state, align 8, !dbg !706
  %length = getelementptr inbounds %struct.inflate_state, ptr %139, i32 0, i32 15, !dbg !707
  store i32 %and239, ptr %length, align 4, !dbg !708
  br label %do.body240, !dbg !709

do.body240:                                       ; preds = %if.end237
  store i64 0, ptr %hold, align 8, !dbg !710
  store i32 0, ptr %bits, align 4, !dbg !710
  br label %do.cond241, !dbg !710

do.cond241:                                       ; preds = %do.body240
  br label %do.end242, !dbg !710

do.end242:                                        ; preds = %do.cond241
  %140 = load ptr, ptr %state, align 8, !dbg !712
  %mode243 = getelementptr inbounds %struct.inflate_state, ptr %140, i32 0, i32 0, !dbg !713
  store i32 14, ptr %mode243, align 8, !dbg !714
  br label %sw.bb244, !dbg !712

sw.bb244:                                         ; preds = %for.cond, %do.end242
  %141 = load ptr, ptr %state, align 8, !dbg !715
  %length245 = getelementptr inbounds %struct.inflate_state, ptr %141, i32 0, i32 15, !dbg !716
  %142 = load i32, ptr %length245, align 4, !dbg !716
  store i32 %142, ptr %copy, align 4, !dbg !717
  %143 = load i32, ptr %copy, align 4, !dbg !718
  %tobool246 = icmp ne i32 %143, 0, !dbg !718
  br i1 %tobool246, label %if.then247, label %if.end267, !dbg !720

if.then247:                                       ; preds = %sw.bb244
  %144 = load i32, ptr %copy, align 4, !dbg !721
  %145 = load i32, ptr %have, align 4, !dbg !724
  %cmp248 = icmp ugt i32 %144, %145, !dbg !725
  br i1 %cmp248, label %if.then250, label %if.end251, !dbg !726

if.then250:                                       ; preds = %if.then247
  %146 = load i32, ptr %have, align 4, !dbg !727
  store i32 %146, ptr %copy, align 4, !dbg !728
  br label %if.end251, !dbg !729

if.end251:                                        ; preds = %if.then250, %if.then247
  %147 = load i32, ptr %copy, align 4, !dbg !730
  %148 = load i32, ptr %left, align 4, !dbg !732
  %cmp252 = icmp ugt i32 %147, %148, !dbg !733
  br i1 %cmp252, label %if.then254, label %if.end255, !dbg !734

if.then254:                                       ; preds = %if.end251
  %149 = load i32, ptr %left, align 4, !dbg !735
  store i32 %149, ptr %copy, align 4, !dbg !736
  br label %if.end255, !dbg !737

if.end255:                                        ; preds = %if.then254, %if.end251
  %150 = load i32, ptr %copy, align 4, !dbg !738
  %cmp256 = icmp eq i32 %150, 0, !dbg !740
  br i1 %cmp256, label %if.then258, label %if.end259, !dbg !741

if.then258:                                       ; preds = %if.end255
  br label %inf_leave, !dbg !742

if.end259:                                        ; preds = %if.end255
  %151 = load ptr, ptr %put, align 8, !dbg !743
  %152 = load ptr, ptr %next, align 8, !dbg !744
  %153 = load i32, ptr %copy, align 4, !dbg !745
  %conv260 = zext i32 %153 to i64, !dbg !745
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %151, ptr align 1 %152, i64 %conv260, i1 false), !dbg !746
  %154 = load i32, ptr %copy, align 4, !dbg !747
  %155 = load i32, ptr %have, align 4, !dbg !748
  %sub261 = sub i32 %155, %154, !dbg !748
  store i32 %sub261, ptr %have, align 4, !dbg !748
  %156 = load i32, ptr %copy, align 4, !dbg !749
  %157 = load ptr, ptr %next, align 8, !dbg !750
  %idx.ext = zext i32 %156 to i64, !dbg !750
  %add.ptr = getelementptr i8, ptr %157, i64 %idx.ext, !dbg !750
  store ptr %add.ptr, ptr %next, align 8, !dbg !750
  %158 = load i32, ptr %copy, align 4, !dbg !751
  %159 = load i32, ptr %left, align 4, !dbg !752
  %sub262 = sub i32 %159, %158, !dbg !752
  store i32 %sub262, ptr %left, align 4, !dbg !752
  %160 = load i32, ptr %copy, align 4, !dbg !753
  %161 = load ptr, ptr %put, align 8, !dbg !754
  %idx.ext263 = zext i32 %160 to i64, !dbg !754
  %add.ptr264 = getelementptr i8, ptr %161, i64 %idx.ext263, !dbg !754
  store ptr %add.ptr264, ptr %put, align 8, !dbg !754
  %162 = load i32, ptr %copy, align 4, !dbg !755
  %163 = load ptr, ptr %state, align 8, !dbg !756
  %length265 = getelementptr inbounds %struct.inflate_state, ptr %163, i32 0, i32 15, !dbg !757
  %164 = load i32, ptr %length265, align 4, !dbg !758
  %sub266 = sub i32 %164, %162, !dbg !758
  store i32 %sub266, ptr %length265, align 4, !dbg !758
  br label %sw.epilog1214, !dbg !759

if.end267:                                        ; preds = %sw.bb244
  %165 = load ptr, ptr %state, align 8, !dbg !760
  %mode268 = getelementptr inbounds %struct.inflate_state, ptr %165, i32 0, i32 0, !dbg !761
  store i32 11, ptr %mode268, align 8, !dbg !762
  br label %sw.epilog1214, !dbg !763

sw.bb269:                                         ; preds = %for.cond
  br label %do.body270, !dbg !764

do.body270:                                       ; preds = %sw.bb269
  br label %while.cond271, !dbg !765

while.cond271:                                    ; preds = %do.end288, %do.body270
  %166 = load i32, ptr %bits, align 4, !dbg !765
  %cmp272 = icmp ult i32 %166, 14, !dbg !765
  br i1 %cmp272, label %while.body274, label %while.end289, !dbg !765

while.body274:                                    ; preds = %while.cond271
  br label %do.body275, !dbg !765

do.body275:                                       ; preds = %while.body274
  %167 = load i32, ptr %have, align 4, !dbg !767
  %cmp276 = icmp eq i32 %167, 0, !dbg !767
  br i1 %cmp276, label %if.then278, label %if.end279, !dbg !770

if.then278:                                       ; preds = %do.body275
  br label %inf_leave, !dbg !767

if.end279:                                        ; preds = %do.body275
  %168 = load i32, ptr %have, align 4, !dbg !770
  %dec280 = add i32 %168, -1, !dbg !770
  store i32 %dec280, ptr %have, align 4, !dbg !770
  %169 = load ptr, ptr %next, align 8, !dbg !770
  %incdec.ptr281 = getelementptr i8, ptr %169, i32 1, !dbg !770
  store ptr %incdec.ptr281, ptr %next, align 8, !dbg !770
  %170 = load i8, ptr %169, align 1, !dbg !770
  %conv282 = zext i8 %170 to i64, !dbg !770
  %171 = load i32, ptr %bits, align 4, !dbg !770
  %sh_prom283 = zext i32 %171 to i64, !dbg !770
  %shl284 = shl i64 %conv282, %sh_prom283, !dbg !770
  %172 = load i64, ptr %hold, align 8, !dbg !770
  %add285 = add i64 %172, %shl284, !dbg !770
  store i64 %add285, ptr %hold, align 8, !dbg !770
  %173 = load i32, ptr %bits, align 4, !dbg !770
  %add286 = add i32 %173, 8, !dbg !770
  store i32 %add286, ptr %bits, align 4, !dbg !770
  br label %do.cond287, !dbg !770

do.cond287:                                       ; preds = %if.end279
  br label %do.end288, !dbg !770

do.end288:                                        ; preds = %do.cond287
  br label %while.cond271, !dbg !765, !llvm.loop !771

while.end289:                                     ; preds = %while.cond271
  br label %do.cond290, !dbg !765

do.cond290:                                       ; preds = %while.end289
  br label %do.end291, !dbg !765

do.end291:                                        ; preds = %do.cond290
  %174 = load i64, ptr %hold, align 8, !dbg !772
  %conv292 = trunc i64 %174 to i32, !dbg !772
  %and293 = and i32 %conv292, 31, !dbg !772
  %add294 = add i32 %and293, 257, !dbg !773
  %175 = load ptr, ptr %state, align 8, !dbg !774
  %nlen = getelementptr inbounds %struct.inflate_state, ptr %175, i32 0, i32 23, !dbg !775
  store i32 %add294, ptr %nlen, align 4, !dbg !776
  br label %do.body295, !dbg !777

do.body295:                                       ; preds = %do.end291
  %176 = load i64, ptr %hold, align 8, !dbg !778
  %shr296 = lshr i64 %176, 5, !dbg !778
  store i64 %shr296, ptr %hold, align 8, !dbg !778
  %177 = load i32, ptr %bits, align 4, !dbg !778
  %sub297 = sub i32 %177, 5, !dbg !778
  store i32 %sub297, ptr %bits, align 4, !dbg !778
  br label %do.cond298, !dbg !778

do.cond298:                                       ; preds = %do.body295
  br label %do.end299, !dbg !778

do.end299:                                        ; preds = %do.cond298
  %178 = load i64, ptr %hold, align 8, !dbg !780
  %conv300 = trunc i64 %178 to i32, !dbg !780
  %and301 = and i32 %conv300, 31, !dbg !780
  %add302 = add i32 %and301, 1, !dbg !781
  %179 = load ptr, ptr %state, align 8, !dbg !782
  %ndist = getelementptr inbounds %struct.inflate_state, ptr %179, i32 0, i32 24, !dbg !783
  store i32 %add302, ptr %ndist, align 8, !dbg !784
  br label %do.body303, !dbg !785

do.body303:                                       ; preds = %do.end299
  %180 = load i64, ptr %hold, align 8, !dbg !786
  %shr304 = lshr i64 %180, 5, !dbg !786
  store i64 %shr304, ptr %hold, align 8, !dbg !786
  %181 = load i32, ptr %bits, align 4, !dbg !786
  %sub305 = sub i32 %181, 5, !dbg !786
  store i32 %sub305, ptr %bits, align 4, !dbg !786
  br label %do.cond306, !dbg !786

do.cond306:                                       ; preds = %do.body303
  br label %do.end307, !dbg !786

do.end307:                                        ; preds = %do.cond306
  %182 = load i64, ptr %hold, align 8, !dbg !788
  %conv308 = trunc i64 %182 to i32, !dbg !788
  %and309 = and i32 %conv308, 15, !dbg !788
  %add310 = add i32 %and309, 4, !dbg !789
  %183 = load ptr, ptr %state, align 8, !dbg !790
  %ncode = getelementptr inbounds %struct.inflate_state, ptr %183, i32 0, i32 22, !dbg !791
  store i32 %add310, ptr %ncode, align 8, !dbg !792
  br label %do.body311, !dbg !793

do.body311:                                       ; preds = %do.end307
  %184 = load i64, ptr %hold, align 8, !dbg !794
  %shr312 = lshr i64 %184, 4, !dbg !794
  store i64 %shr312, ptr %hold, align 8, !dbg !794
  %185 = load i32, ptr %bits, align 4, !dbg !794
  %sub313 = sub i32 %185, 4, !dbg !794
  store i32 %sub313, ptr %bits, align 4, !dbg !794
  br label %do.cond314, !dbg !794

do.cond314:                                       ; preds = %do.body311
  br label %do.end315, !dbg !794

do.end315:                                        ; preds = %do.cond314
  %186 = load ptr, ptr %state, align 8, !dbg !796
  %nlen316 = getelementptr inbounds %struct.inflate_state, ptr %186, i32 0, i32 23, !dbg !798
  %187 = load i32, ptr %nlen316, align 4, !dbg !798
  %cmp317 = icmp ugt i32 %187, 286, !dbg !799
  br i1 %cmp317, label %if.then323, label %lor.lhs.false319, !dbg !800

lor.lhs.false319:                                 ; preds = %do.end315
  %188 = load ptr, ptr %state, align 8, !dbg !801
  %ndist320 = getelementptr inbounds %struct.inflate_state, ptr %188, i32 0, i32 24, !dbg !802
  %189 = load i32, ptr %ndist320, align 8, !dbg !802
  %cmp321 = icmp ugt i32 %189, 30, !dbg !803
  br i1 %cmp321, label %if.then323, label %if.end326, !dbg !804

if.then323:                                       ; preds = %lor.lhs.false319, %do.end315
  %190 = load ptr, ptr %strm.addr, align 8, !dbg !805
  %msg324 = getelementptr inbounds %struct.z_stream_s, ptr %190, i32 0, i32 6, !dbg !807
  store ptr @.str.5, ptr %msg324, align 8, !dbg !808
  %191 = load ptr, ptr %state, align 8, !dbg !809
  %mode325 = getelementptr inbounds %struct.inflate_state, ptr %191, i32 0, i32 0, !dbg !810
  store i32 27, ptr %mode325, align 8, !dbg !811
  br label %sw.epilog1214, !dbg !812

if.end326:                                        ; preds = %lor.lhs.false319
  %192 = load ptr, ptr %state, align 8, !dbg !813
  %have327 = getelementptr inbounds %struct.inflate_state, ptr %192, i32 0, i32 25, !dbg !814
  store i32 0, ptr %have327, align 4, !dbg !815
  %193 = load ptr, ptr %state, align 8, !dbg !816
  %mode328 = getelementptr inbounds %struct.inflate_state, ptr %193, i32 0, i32 0, !dbg !817
  store i32 16, ptr %mode328, align 8, !dbg !818
  br label %sw.bb329, !dbg !816

sw.bb329:                                         ; preds = %for.cond, %if.end326
  br label %while.cond330, !dbg !819

while.cond330:                                    ; preds = %do.end368, %sw.bb329
  %194 = load ptr, ptr %state, align 8, !dbg !820
  %have331 = getelementptr inbounds %struct.inflate_state, ptr %194, i32 0, i32 25, !dbg !821
  %195 = load i32, ptr %have331, align 4, !dbg !821
  %196 = load ptr, ptr %state, align 8, !dbg !822
  %ncode332 = getelementptr inbounds %struct.inflate_state, ptr %196, i32 0, i32 22, !dbg !823
  %197 = load i32, ptr %ncode332, align 8, !dbg !823
  %cmp333 = icmp ult i32 %195, %197, !dbg !824
  br i1 %cmp333, label %while.body335, label %while.end369, !dbg !819

while.body335:                                    ; preds = %while.cond330
  br label %do.body336, !dbg !825

do.body336:                                       ; preds = %while.body335
  br label %while.cond337, !dbg !827

while.cond337:                                    ; preds = %do.end354, %do.body336
  %198 = load i32, ptr %bits, align 4, !dbg !827
  %cmp338 = icmp ult i32 %198, 3, !dbg !827
  br i1 %cmp338, label %while.body340, label %while.end355, !dbg !827

while.body340:                                    ; preds = %while.cond337
  br label %do.body341, !dbg !827

do.body341:                                       ; preds = %while.body340
  %199 = load i32, ptr %have, align 4, !dbg !829
  %cmp342 = icmp eq i32 %199, 0, !dbg !829
  br i1 %cmp342, label %if.then344, label %if.end345, !dbg !832

if.then344:                                       ; preds = %do.body341
  br label %inf_leave, !dbg !829

if.end345:                                        ; preds = %do.body341
  %200 = load i32, ptr %have, align 4, !dbg !832
  %dec346 = add i32 %200, -1, !dbg !832
  store i32 %dec346, ptr %have, align 4, !dbg !832
  %201 = load ptr, ptr %next, align 8, !dbg !832
  %incdec.ptr347 = getelementptr i8, ptr %201, i32 1, !dbg !832
  store ptr %incdec.ptr347, ptr %next, align 8, !dbg !832
  %202 = load i8, ptr %201, align 1, !dbg !832
  %conv348 = zext i8 %202 to i64, !dbg !832
  %203 = load i32, ptr %bits, align 4, !dbg !832
  %sh_prom349 = zext i32 %203 to i64, !dbg !832
  %shl350 = shl i64 %conv348, %sh_prom349, !dbg !832
  %204 = load i64, ptr %hold, align 8, !dbg !832
  %add351 = add i64 %204, %shl350, !dbg !832
  store i64 %add351, ptr %hold, align 8, !dbg !832
  %205 = load i32, ptr %bits, align 4, !dbg !832
  %add352 = add i32 %205, 8, !dbg !832
  store i32 %add352, ptr %bits, align 4, !dbg !832
  br label %do.cond353, !dbg !832

do.cond353:                                       ; preds = %if.end345
  br label %do.end354, !dbg !832

do.end354:                                        ; preds = %do.cond353
  br label %while.cond337, !dbg !827, !llvm.loop !833

while.end355:                                     ; preds = %while.cond337
  br label %do.cond356, !dbg !827

do.cond356:                                       ; preds = %while.end355
  br label %do.end357, !dbg !827

do.end357:                                        ; preds = %do.cond356
  %206 = load i64, ptr %hold, align 8, !dbg !834
  %conv358 = trunc i64 %206 to i32, !dbg !834
  %and359 = and i32 %conv358, 7, !dbg !834
  %conv360 = trunc i32 %and359 to i16, !dbg !835
  %207 = load ptr, ptr %state, align 8, !dbg !836
  %lens = getelementptr inbounds %struct.inflate_state, ptr %207, i32 0, i32 27, !dbg !837
  %208 = load ptr, ptr %state, align 8, !dbg !838
  %have361 = getelementptr inbounds %struct.inflate_state, ptr %208, i32 0, i32 25, !dbg !839
  %209 = load i32, ptr %have361, align 4, !dbg !840
  %inc = add i32 %209, 1, !dbg !840
  store i32 %inc, ptr %have361, align 4, !dbg !840
  %idxprom = zext i32 %209 to i64, !dbg !841
  %arrayidx = getelementptr [19 x i16], ptr @zlib_inflate.order, i64 0, i64 %idxprom, !dbg !841
  %210 = load i16, ptr %arrayidx, align 2, !dbg !841
  %idxprom362 = zext i16 %210 to i64, !dbg !836
  %arrayidx363 = getelementptr [320 x i16], ptr %lens, i64 0, i64 %idxprom362, !dbg !836
  store i16 %conv360, ptr %arrayidx363, align 2, !dbg !842
  br label %do.body364, !dbg !843

do.body364:                                       ; preds = %do.end357
  %211 = load i64, ptr %hold, align 8, !dbg !844
  %shr365 = lshr i64 %211, 3, !dbg !844
  store i64 %shr365, ptr %hold, align 8, !dbg !844
  %212 = load i32, ptr %bits, align 4, !dbg !844
  %sub366 = sub i32 %212, 3, !dbg !844
  store i32 %sub366, ptr %bits, align 4, !dbg !844
  br label %do.cond367, !dbg !844

do.cond367:                                       ; preds = %do.body364
  br label %do.end368, !dbg !844

do.end368:                                        ; preds = %do.cond367
  br label %while.cond330, !dbg !819, !llvm.loop !846

while.end369:                                     ; preds = %while.cond330
  br label %while.cond370, !dbg !848

while.cond370:                                    ; preds = %while.body374, %while.end369
  %213 = load ptr, ptr %state, align 8, !dbg !849
  %have371 = getelementptr inbounds %struct.inflate_state, ptr %213, i32 0, i32 25, !dbg !850
  %214 = load i32, ptr %have371, align 4, !dbg !850
  %cmp372 = icmp ult i32 %214, 19, !dbg !851
  br i1 %cmp372, label %while.body374, label %while.end382, !dbg !848

while.body374:                                    ; preds = %while.cond370
  %215 = load ptr, ptr %state, align 8, !dbg !852
  %lens375 = getelementptr inbounds %struct.inflate_state, ptr %215, i32 0, i32 27, !dbg !853
  %216 = load ptr, ptr %state, align 8, !dbg !854
  %have376 = getelementptr inbounds %struct.inflate_state, ptr %216, i32 0, i32 25, !dbg !855
  %217 = load i32, ptr %have376, align 4, !dbg !856
  %inc377 = add i32 %217, 1, !dbg !856
  store i32 %inc377, ptr %have376, align 4, !dbg !856
  %idxprom378 = zext i32 %217 to i64, !dbg !857
  %arrayidx379 = getelementptr [19 x i16], ptr @zlib_inflate.order, i64 0, i64 %idxprom378, !dbg !857
  %218 = load i16, ptr %arrayidx379, align 2, !dbg !857
  %idxprom380 = zext i16 %218 to i64, !dbg !852
  %arrayidx381 = getelementptr [320 x i16], ptr %lens375, i64 0, i64 %idxprom380, !dbg !852
  store i16 0, ptr %arrayidx381, align 2, !dbg !858
  br label %while.cond370, !dbg !848, !llvm.loop !859

while.end382:                                     ; preds = %while.cond370
  %219 = load ptr, ptr %state, align 8, !dbg !861
  %codes = getelementptr inbounds %struct.inflate_state, ptr %219, i32 0, i32 29, !dbg !862
  %arraydecay = getelementptr inbounds [2048 x %struct.code], ptr %codes, i64 0, i64 0, !dbg !861
  %220 = load ptr, ptr %state, align 8, !dbg !863
  %next383 = getelementptr inbounds %struct.inflate_state, ptr %220, i32 0, i32 26, !dbg !864
  store ptr %arraydecay, ptr %next383, align 8, !dbg !865
  %221 = load ptr, ptr %state, align 8, !dbg !866
  %next384 = getelementptr inbounds %struct.inflate_state, ptr %221, i32 0, i32 26, !dbg !867
  %222 = load ptr, ptr %next384, align 8, !dbg !867
  %223 = load ptr, ptr %state, align 8, !dbg !868
  %lencode = getelementptr inbounds %struct.inflate_state, ptr %223, i32 0, i32 18, !dbg !869
  store ptr %222, ptr %lencode, align 8, !dbg !870
  %224 = load ptr, ptr %state, align 8, !dbg !871
  %lenbits = getelementptr inbounds %struct.inflate_state, ptr %224, i32 0, i32 20, !dbg !872
  store i32 7, ptr %lenbits, align 8, !dbg !873
  %225 = load ptr, ptr %state, align 8, !dbg !874
  %lens385 = getelementptr inbounds %struct.inflate_state, ptr %225, i32 0, i32 27, !dbg !875
  %arraydecay386 = getelementptr inbounds [320 x i16], ptr %lens385, i64 0, i64 0, !dbg !874
  %226 = load ptr, ptr %state, align 8, !dbg !876
  %next387 = getelementptr inbounds %struct.inflate_state, ptr %226, i32 0, i32 26, !dbg !877
  %227 = load ptr, ptr %state, align 8, !dbg !878
  %lenbits388 = getelementptr inbounds %struct.inflate_state, ptr %227, i32 0, i32 20, !dbg !879
  %228 = load ptr, ptr %state, align 8, !dbg !880
  %work = getelementptr inbounds %struct.inflate_state, ptr %228, i32 0, i32 28, !dbg !881
  %arraydecay389 = getelementptr inbounds [288 x i16], ptr %work, i64 0, i64 0, !dbg !880
  %call390 = call i32 @zlib_inflate_table(i32 noundef 0, ptr noundef %arraydecay386, i32 noundef 19, ptr noundef %next387, ptr noundef %lenbits388, ptr noundef %arraydecay389) #7, !dbg !882
  store i32 %call390, ptr %ret, align 4, !dbg !883
  %229 = load i32, ptr %ret, align 4, !dbg !884
  %tobool391 = icmp ne i32 %229, 0, !dbg !884
  br i1 %tobool391, label %if.then392, label %if.end395, !dbg !886

if.then392:                                       ; preds = %while.end382
  %230 = load ptr, ptr %strm.addr, align 8, !dbg !887
  %msg393 = getelementptr inbounds %struct.z_stream_s, ptr %230, i32 0, i32 6, !dbg !889
  store ptr @.str.6, ptr %msg393, align 8, !dbg !890
  %231 = load ptr, ptr %state, align 8, !dbg !891
  %mode394 = getelementptr inbounds %struct.inflate_state, ptr %231, i32 0, i32 0, !dbg !892
  store i32 27, ptr %mode394, align 8, !dbg !893
  br label %sw.epilog1214, !dbg !894

if.end395:                                        ; preds = %while.end382
  %232 = load ptr, ptr %state, align 8, !dbg !895
  %have396 = getelementptr inbounds %struct.inflate_state, ptr %232, i32 0, i32 25, !dbg !896
  store i32 0, ptr %have396, align 4, !dbg !897
  %233 = load ptr, ptr %state, align 8, !dbg !898
  %mode397 = getelementptr inbounds %struct.inflate_state, ptr %233, i32 0, i32 0, !dbg !899
  store i32 17, ptr %mode397, align 8, !dbg !900
  br label %sw.bb398, !dbg !898

sw.bb398:                                         ; preds = %for.cond, %if.end395
  br label %while.cond399, !dbg !901

while.cond399:                                    ; preds = %if.end658, %sw.bb398
  %234 = load ptr, ptr %state, align 8, !dbg !902
  %have400 = getelementptr inbounds %struct.inflate_state, ptr %234, i32 0, i32 25, !dbg !903
  %235 = load i32, ptr %have400, align 4, !dbg !903
  %236 = load ptr, ptr %state, align 8, !dbg !904
  %nlen401 = getelementptr inbounds %struct.inflate_state, ptr %236, i32 0, i32 23, !dbg !905
  %237 = load i32, ptr %nlen401, align 4, !dbg !905
  %238 = load ptr, ptr %state, align 8, !dbg !906
  %ndist402 = getelementptr inbounds %struct.inflate_state, ptr %238, i32 0, i32 24, !dbg !907
  %239 = load i32, ptr %ndist402, align 8, !dbg !907
  %add403 = add i32 %237, %239, !dbg !908
  %cmp404 = icmp ult i32 %235, %add403, !dbg !909
  br i1 %cmp404, label %while.body406, label %while.end659, !dbg !901

while.body406:                                    ; preds = %while.cond399
  br label %for.cond407, !dbg !910

for.cond407:                                      ; preds = %do.end435, %while.body406
  %240 = load ptr, ptr %state, align 8, !dbg !912
  %lencode408 = getelementptr inbounds %struct.inflate_state, ptr %240, i32 0, i32 18, !dbg !916
  %241 = load ptr, ptr %lencode408, align 8, !dbg !916
  %242 = load i64, ptr %hold, align 8, !dbg !917
  %conv409 = trunc i64 %242 to i32, !dbg !917
  %243 = load ptr, ptr %state, align 8, !dbg !917
  %lenbits410 = getelementptr inbounds %struct.inflate_state, ptr %243, i32 0, i32 20, !dbg !917
  %244 = load i32, ptr %lenbits410, align 8, !dbg !917
  %shl411 = shl i32 1, %244, !dbg !917
  %sub412 = sub i32 %shl411, 1, !dbg !917
  %and413 = and i32 %conv409, %sub412, !dbg !917
  %idxprom414 = zext i32 %and413 to i64, !dbg !912
  %arrayidx415 = getelementptr %struct.code, ptr %241, i64 %idxprom414, !dbg !912
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %this, ptr align 2 %arrayidx415, i64 4, i1 false), !dbg !912
  %bits416 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 1, !dbg !918
  %245 = load i8, ptr %bits416, align 1, !dbg !918
  %conv417 = zext i8 %245 to i32, !dbg !920
  %246 = load i32, ptr %bits, align 4, !dbg !921
  %cmp418 = icmp ule i32 %conv417, %246, !dbg !922
  br i1 %cmp418, label %if.then420, label %if.end421, !dbg !923

if.then420:                                       ; preds = %for.cond407
  br label %for.end, !dbg !924

if.end421:                                        ; preds = %for.cond407
  br label %do.body422, !dbg !925

do.body422:                                       ; preds = %if.end421
  %247 = load i32, ptr %have, align 4, !dbg !926
  %cmp423 = icmp eq i32 %247, 0, !dbg !926
  br i1 %cmp423, label %if.then425, label %if.end426, !dbg !929

if.then425:                                       ; preds = %do.body422
  br label %inf_leave, !dbg !926

if.end426:                                        ; preds = %do.body422
  %248 = load i32, ptr %have, align 4, !dbg !929
  %dec427 = add i32 %248, -1, !dbg !929
  store i32 %dec427, ptr %have, align 4, !dbg !929
  %249 = load ptr, ptr %next, align 8, !dbg !929
  %incdec.ptr428 = getelementptr i8, ptr %249, i32 1, !dbg !929
  store ptr %incdec.ptr428, ptr %next, align 8, !dbg !929
  %250 = load i8, ptr %249, align 1, !dbg !929
  %conv429 = zext i8 %250 to i64, !dbg !929
  %251 = load i32, ptr %bits, align 4, !dbg !929
  %sh_prom430 = zext i32 %251 to i64, !dbg !929
  %shl431 = shl i64 %conv429, %sh_prom430, !dbg !929
  %252 = load i64, ptr %hold, align 8, !dbg !929
  %add432 = add i64 %252, %shl431, !dbg !929
  store i64 %add432, ptr %hold, align 8, !dbg !929
  %253 = load i32, ptr %bits, align 4, !dbg !929
  %add433 = add i32 %253, 8, !dbg !929
  store i32 %add433, ptr %bits, align 4, !dbg !929
  br label %do.cond434, !dbg !929

do.cond434:                                       ; preds = %if.end426
  br label %do.end435, !dbg !929

do.end435:                                        ; preds = %do.cond434
  br label %for.cond407, !dbg !930, !llvm.loop !931

for.end:                                          ; preds = %if.then420
  %val = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 2, !dbg !934
  %254 = load i16, ptr %val, align 2, !dbg !934
  %conv436 = zext i16 %254 to i32, !dbg !936
  %cmp437 = icmp slt i32 %conv436, 16, !dbg !937
  br i1 %cmp437, label %if.then439, label %if.else, !dbg !938

if.then439:                                       ; preds = %for.end
  br label %do.body440, !dbg !939

do.body440:                                       ; preds = %if.then439
  br label %while.cond441, !dbg !941

while.cond441:                                    ; preds = %do.end460, %do.body440
  %255 = load i32, ptr %bits, align 4, !dbg !941
  %bits442 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 1, !dbg !941
  %256 = load i8, ptr %bits442, align 1, !dbg !941
  %conv443 = zext i8 %256 to i32, !dbg !941
  %cmp444 = icmp ult i32 %255, %conv443, !dbg !941
  br i1 %cmp444, label %while.body446, label %while.end461, !dbg !941

while.body446:                                    ; preds = %while.cond441
  br label %do.body447, !dbg !941

do.body447:                                       ; preds = %while.body446
  %257 = load i32, ptr %have, align 4, !dbg !943
  %cmp448 = icmp eq i32 %257, 0, !dbg !943
  br i1 %cmp448, label %if.then450, label %if.end451, !dbg !946

if.then450:                                       ; preds = %do.body447
  br label %inf_leave, !dbg !943

if.end451:                                        ; preds = %do.body447
  %258 = load i32, ptr %have, align 4, !dbg !946
  %dec452 = add i32 %258, -1, !dbg !946
  store i32 %dec452, ptr %have, align 4, !dbg !946
  %259 = load ptr, ptr %next, align 8, !dbg !946
  %incdec.ptr453 = getelementptr i8, ptr %259, i32 1, !dbg !946
  store ptr %incdec.ptr453, ptr %next, align 8, !dbg !946
  %260 = load i8, ptr %259, align 1, !dbg !946
  %conv454 = zext i8 %260 to i64, !dbg !946
  %261 = load i32, ptr %bits, align 4, !dbg !946
  %sh_prom455 = zext i32 %261 to i64, !dbg !946
  %shl456 = shl i64 %conv454, %sh_prom455, !dbg !946
  %262 = load i64, ptr %hold, align 8, !dbg !946
  %add457 = add i64 %262, %shl456, !dbg !946
  store i64 %add457, ptr %hold, align 8, !dbg !946
  %263 = load i32, ptr %bits, align 4, !dbg !946
  %add458 = add i32 %263, 8, !dbg !946
  store i32 %add458, ptr %bits, align 4, !dbg !946
  br label %do.cond459, !dbg !946

do.cond459:                                       ; preds = %if.end451
  br label %do.end460, !dbg !946

do.end460:                                        ; preds = %do.cond459
  br label %while.cond441, !dbg !941, !llvm.loop !947

while.end461:                                     ; preds = %while.cond441
  br label %do.cond462, !dbg !941

do.cond462:                                       ; preds = %while.end461
  br label %do.end463, !dbg !941

do.end463:                                        ; preds = %do.cond462
  br label %do.body464, !dbg !948

do.body464:                                       ; preds = %do.end463
  %bits465 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 1, !dbg !949
  %264 = load i8, ptr %bits465, align 1, !dbg !949
  %conv466 = zext i8 %264 to i32, !dbg !949
  %265 = load i64, ptr %hold, align 8, !dbg !949
  %sh_prom467 = zext i32 %conv466 to i64, !dbg !949
  %shr468 = lshr i64 %265, %sh_prom467, !dbg !949
  store i64 %shr468, ptr %hold, align 8, !dbg !949
  %bits469 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 1, !dbg !949
  %266 = load i8, ptr %bits469, align 1, !dbg !949
  %conv470 = zext i8 %266 to i32, !dbg !949
  %267 = load i32, ptr %bits, align 4, !dbg !949
  %sub471 = sub i32 %267, %conv470, !dbg !949
  store i32 %sub471, ptr %bits, align 4, !dbg !949
  br label %do.cond472, !dbg !949

do.cond472:                                       ; preds = %do.body464
  br label %do.end473, !dbg !949

do.end473:                                        ; preds = %do.cond472
  %val474 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 2, !dbg !951
  %268 = load i16, ptr %val474, align 2, !dbg !951
  %269 = load ptr, ptr %state, align 8, !dbg !952
  %lens475 = getelementptr inbounds %struct.inflate_state, ptr %269, i32 0, i32 27, !dbg !953
  %270 = load ptr, ptr %state, align 8, !dbg !954
  %have476 = getelementptr inbounds %struct.inflate_state, ptr %270, i32 0, i32 25, !dbg !955
  %271 = load i32, ptr %have476, align 4, !dbg !956
  %inc477 = add i32 %271, 1, !dbg !956
  store i32 %inc477, ptr %have476, align 4, !dbg !956
  %idxprom478 = zext i32 %271 to i64, !dbg !952
  %arrayidx479 = getelementptr [320 x i16], ptr %lens475, i64 0, i64 %idxprom478, !dbg !952
  store i16 %268, ptr %arrayidx479, align 2, !dbg !957
  br label %if.end658, !dbg !958

if.else:                                          ; preds = %for.end
  %val480 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 2, !dbg !959
  %272 = load i16, ptr %val480, align 2, !dbg !959
  %conv481 = zext i16 %272 to i32, !dbg !962
  %cmp482 = icmp eq i32 %conv481, 16, !dbg !963
  br i1 %cmp482, label %if.then484, label %if.else541, !dbg !964

if.then484:                                       ; preds = %if.else
  br label %do.body485, !dbg !965

do.body485:                                       ; preds = %if.then484
  br label %while.cond486, !dbg !967

while.cond486:                                    ; preds = %do.end506, %do.body485
  %273 = load i32, ptr %bits, align 4, !dbg !967
  %bits487 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 1, !dbg !967
  %274 = load i8, ptr %bits487, align 1, !dbg !967
  %conv488 = zext i8 %274 to i32, !dbg !967
  %add489 = add i32 %conv488, 2, !dbg !967
  %cmp490 = icmp ult i32 %273, %add489, !dbg !967
  br i1 %cmp490, label %while.body492, label %while.end507, !dbg !967

while.body492:                                    ; preds = %while.cond486
  br label %do.body493, !dbg !967

do.body493:                                       ; preds = %while.body492
  %275 = load i32, ptr %have, align 4, !dbg !969
  %cmp494 = icmp eq i32 %275, 0, !dbg !969
  br i1 %cmp494, label %if.then496, label %if.end497, !dbg !972

if.then496:                                       ; preds = %do.body493
  br label %inf_leave, !dbg !969

if.end497:                                        ; preds = %do.body493
  %276 = load i32, ptr %have, align 4, !dbg !972
  %dec498 = add i32 %276, -1, !dbg !972
  store i32 %dec498, ptr %have, align 4, !dbg !972
  %277 = load ptr, ptr %next, align 8, !dbg !972
  %incdec.ptr499 = getelementptr i8, ptr %277, i32 1, !dbg !972
  store ptr %incdec.ptr499, ptr %next, align 8, !dbg !972
  %278 = load i8, ptr %277, align 1, !dbg !972
  %conv500 = zext i8 %278 to i64, !dbg !972
  %279 = load i32, ptr %bits, align 4, !dbg !972
  %sh_prom501 = zext i32 %279 to i64, !dbg !972
  %shl502 = shl i64 %conv500, %sh_prom501, !dbg !972
  %280 = load i64, ptr %hold, align 8, !dbg !972
  %add503 = add i64 %280, %shl502, !dbg !972
  store i64 %add503, ptr %hold, align 8, !dbg !972
  %281 = load i32, ptr %bits, align 4, !dbg !972
  %add504 = add i32 %281, 8, !dbg !972
  store i32 %add504, ptr %bits, align 4, !dbg !972
  br label %do.cond505, !dbg !972

do.cond505:                                       ; preds = %if.end497
  br label %do.end506, !dbg !972

do.end506:                                        ; preds = %do.cond505
  br label %while.cond486, !dbg !967, !llvm.loop !973

while.end507:                                     ; preds = %while.cond486
  br label %do.cond508, !dbg !967

do.cond508:                                       ; preds = %while.end507
  br label %do.end509, !dbg !967

do.end509:                                        ; preds = %do.cond508
  br label %do.body510, !dbg !974

do.body510:                                       ; preds = %do.end509
  %bits511 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 1, !dbg !975
  %282 = load i8, ptr %bits511, align 1, !dbg !975
  %conv512 = zext i8 %282 to i32, !dbg !975
  %283 = load i64, ptr %hold, align 8, !dbg !975
  %sh_prom513 = zext i32 %conv512 to i64, !dbg !975
  %shr514 = lshr i64 %283, %sh_prom513, !dbg !975
  store i64 %shr514, ptr %hold, align 8, !dbg !975
  %bits515 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 1, !dbg !975
  %284 = load i8, ptr %bits515, align 1, !dbg !975
  %conv516 = zext i8 %284 to i32, !dbg !975
  %285 = load i32, ptr %bits, align 4, !dbg !975
  %sub517 = sub i32 %285, %conv516, !dbg !975
  store i32 %sub517, ptr %bits, align 4, !dbg !975
  br label %do.cond518, !dbg !975

do.cond518:                                       ; preds = %do.body510
  br label %do.end519, !dbg !975

do.end519:                                        ; preds = %do.cond518
  %286 = load ptr, ptr %state, align 8, !dbg !977
  %have520 = getelementptr inbounds %struct.inflate_state, ptr %286, i32 0, i32 25, !dbg !979
  %287 = load i32, ptr %have520, align 4, !dbg !979
  %cmp521 = icmp eq i32 %287, 0, !dbg !980
  br i1 %cmp521, label %if.then523, label %if.end526, !dbg !981

if.then523:                                       ; preds = %do.end519
  %288 = load ptr, ptr %strm.addr, align 8, !dbg !982
  %msg524 = getelementptr inbounds %struct.z_stream_s, ptr %288, i32 0, i32 6, !dbg !984
  store ptr @.str.7, ptr %msg524, align 8, !dbg !985
  %289 = load ptr, ptr %state, align 8, !dbg !986
  %mode525 = getelementptr inbounds %struct.inflate_state, ptr %289, i32 0, i32 0, !dbg !987
  store i32 27, ptr %mode525, align 8, !dbg !988
  br label %while.end659, !dbg !989

if.end526:                                        ; preds = %do.end519
  %290 = load ptr, ptr %state, align 8, !dbg !990
  %lens527 = getelementptr inbounds %struct.inflate_state, ptr %290, i32 0, i32 27, !dbg !991
  %291 = load ptr, ptr %state, align 8, !dbg !992
  %have528 = getelementptr inbounds %struct.inflate_state, ptr %291, i32 0, i32 25, !dbg !993
  %292 = load i32, ptr %have528, align 4, !dbg !993
  %sub529 = sub i32 %292, 1, !dbg !994
  %idxprom530 = zext i32 %sub529 to i64, !dbg !990
  %arrayidx531 = getelementptr [320 x i16], ptr %lens527, i64 0, i64 %idxprom530, !dbg !990
  %293 = load i16, ptr %arrayidx531, align 2, !dbg !990
  %conv532 = zext i16 %293 to i32, !dbg !990
  store i32 %conv532, ptr %len, align 4, !dbg !995
  %294 = load i64, ptr %hold, align 8, !dbg !996
  %conv533 = trunc i64 %294 to i32, !dbg !996
  %and534 = and i32 %conv533, 3, !dbg !996
  %add535 = add i32 3, %and534, !dbg !997
  store i32 %add535, ptr %copy, align 4, !dbg !998
  br label %do.body536, !dbg !999

do.body536:                                       ; preds = %if.end526
  %295 = load i64, ptr %hold, align 8, !dbg !1000
  %shr537 = lshr i64 %295, 2, !dbg !1000
  store i64 %shr537, ptr %hold, align 8, !dbg !1000
  %296 = load i32, ptr %bits, align 4, !dbg !1000
  %sub538 = sub i32 %296, 2, !dbg !1000
  store i32 %sub538, ptr %bits, align 4, !dbg !1000
  br label %do.cond539, !dbg !1000

do.cond539:                                       ; preds = %do.body536
  br label %do.end540, !dbg !1000

do.end540:                                        ; preds = %do.cond539
  br label %if.end635, !dbg !1002

if.else541:                                       ; preds = %if.else
  %val542 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 2, !dbg !1003
  %297 = load i16, ptr %val542, align 2, !dbg !1003
  %conv543 = zext i16 %297 to i32, !dbg !1005
  %cmp544 = icmp eq i32 %conv543, 17, !dbg !1006
  br i1 %cmp544, label %if.then546, label %if.else590, !dbg !1007

if.then546:                                       ; preds = %if.else541
  br label %do.body547, !dbg !1008

do.body547:                                       ; preds = %if.then546
  br label %while.cond548, !dbg !1010

while.cond548:                                    ; preds = %do.end568, %do.body547
  %298 = load i32, ptr %bits, align 4, !dbg !1010
  %bits549 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 1, !dbg !1010
  %299 = load i8, ptr %bits549, align 1, !dbg !1010
  %conv550 = zext i8 %299 to i32, !dbg !1010
  %add551 = add i32 %conv550, 3, !dbg !1010
  %cmp552 = icmp ult i32 %298, %add551, !dbg !1010
  br i1 %cmp552, label %while.body554, label %while.end569, !dbg !1010

while.body554:                                    ; preds = %while.cond548
  br label %do.body555, !dbg !1010

do.body555:                                       ; preds = %while.body554
  %300 = load i32, ptr %have, align 4, !dbg !1012
  %cmp556 = icmp eq i32 %300, 0, !dbg !1012
  br i1 %cmp556, label %if.then558, label %if.end559, !dbg !1015

if.then558:                                       ; preds = %do.body555
  br label %inf_leave, !dbg !1012

if.end559:                                        ; preds = %do.body555
  %301 = load i32, ptr %have, align 4, !dbg !1015
  %dec560 = add i32 %301, -1, !dbg !1015
  store i32 %dec560, ptr %have, align 4, !dbg !1015
  %302 = load ptr, ptr %next, align 8, !dbg !1015
  %incdec.ptr561 = getelementptr i8, ptr %302, i32 1, !dbg !1015
  store ptr %incdec.ptr561, ptr %next, align 8, !dbg !1015
  %303 = load i8, ptr %302, align 1, !dbg !1015
  %conv562 = zext i8 %303 to i64, !dbg !1015
  %304 = load i32, ptr %bits, align 4, !dbg !1015
  %sh_prom563 = zext i32 %304 to i64, !dbg !1015
  %shl564 = shl i64 %conv562, %sh_prom563, !dbg !1015
  %305 = load i64, ptr %hold, align 8, !dbg !1015
  %add565 = add i64 %305, %shl564, !dbg !1015
  store i64 %add565, ptr %hold, align 8, !dbg !1015
  %306 = load i32, ptr %bits, align 4, !dbg !1015
  %add566 = add i32 %306, 8, !dbg !1015
  store i32 %add566, ptr %bits, align 4, !dbg !1015
  br label %do.cond567, !dbg !1015

do.cond567:                                       ; preds = %if.end559
  br label %do.end568, !dbg !1015

do.end568:                                        ; preds = %do.cond567
  br label %while.cond548, !dbg !1010, !llvm.loop !1016

while.end569:                                     ; preds = %while.cond548
  br label %do.cond570, !dbg !1010

do.cond570:                                       ; preds = %while.end569
  br label %do.end571, !dbg !1010

do.end571:                                        ; preds = %do.cond570
  br label %do.body572, !dbg !1017

do.body572:                                       ; preds = %do.end571
  %bits573 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 1, !dbg !1018
  %307 = load i8, ptr %bits573, align 1, !dbg !1018
  %conv574 = zext i8 %307 to i32, !dbg !1018
  %308 = load i64, ptr %hold, align 8, !dbg !1018
  %sh_prom575 = zext i32 %conv574 to i64, !dbg !1018
  %shr576 = lshr i64 %308, %sh_prom575, !dbg !1018
  store i64 %shr576, ptr %hold, align 8, !dbg !1018
  %bits577 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 1, !dbg !1018
  %309 = load i8, ptr %bits577, align 1, !dbg !1018
  %conv578 = zext i8 %309 to i32, !dbg !1018
  %310 = load i32, ptr %bits, align 4, !dbg !1018
  %sub579 = sub i32 %310, %conv578, !dbg !1018
  store i32 %sub579, ptr %bits, align 4, !dbg !1018
  br label %do.cond580, !dbg !1018

do.cond580:                                       ; preds = %do.body572
  br label %do.end581, !dbg !1018

do.end581:                                        ; preds = %do.cond580
  store i32 0, ptr %len, align 4, !dbg !1020
  %311 = load i64, ptr %hold, align 8, !dbg !1021
  %conv582 = trunc i64 %311 to i32, !dbg !1021
  %and583 = and i32 %conv582, 7, !dbg !1021
  %add584 = add i32 3, %and583, !dbg !1022
  store i32 %add584, ptr %copy, align 4, !dbg !1023
  br label %do.body585, !dbg !1024

do.body585:                                       ; preds = %do.end581
  %312 = load i64, ptr %hold, align 8, !dbg !1025
  %shr586 = lshr i64 %312, 3, !dbg !1025
  store i64 %shr586, ptr %hold, align 8, !dbg !1025
  %313 = load i32, ptr %bits, align 4, !dbg !1025
  %sub587 = sub i32 %313, 3, !dbg !1025
  store i32 %sub587, ptr %bits, align 4, !dbg !1025
  br label %do.cond588, !dbg !1025

do.cond588:                                       ; preds = %do.body585
  br label %do.end589, !dbg !1025

do.end589:                                        ; preds = %do.cond588
  br label %if.end634, !dbg !1027

if.else590:                                       ; preds = %if.else541
  br label %do.body591, !dbg !1028

do.body591:                                       ; preds = %if.else590
  br label %while.cond592, !dbg !1030

while.cond592:                                    ; preds = %do.end612, %do.body591
  %314 = load i32, ptr %bits, align 4, !dbg !1030
  %bits593 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 1, !dbg !1030
  %315 = load i8, ptr %bits593, align 1, !dbg !1030
  %conv594 = zext i8 %315 to i32, !dbg !1030
  %add595 = add i32 %conv594, 7, !dbg !1030
  %cmp596 = icmp ult i32 %314, %add595, !dbg !1030
  br i1 %cmp596, label %while.body598, label %while.end613, !dbg !1030

while.body598:                                    ; preds = %while.cond592
  br label %do.body599, !dbg !1030

do.body599:                                       ; preds = %while.body598
  %316 = load i32, ptr %have, align 4, !dbg !1032
  %cmp600 = icmp eq i32 %316, 0, !dbg !1032
  br i1 %cmp600, label %if.then602, label %if.end603, !dbg !1035

if.then602:                                       ; preds = %do.body599
  br label %inf_leave, !dbg !1032

if.end603:                                        ; preds = %do.body599
  %317 = load i32, ptr %have, align 4, !dbg !1035
  %dec604 = add i32 %317, -1, !dbg !1035
  store i32 %dec604, ptr %have, align 4, !dbg !1035
  %318 = load ptr, ptr %next, align 8, !dbg !1035
  %incdec.ptr605 = getelementptr i8, ptr %318, i32 1, !dbg !1035
  store ptr %incdec.ptr605, ptr %next, align 8, !dbg !1035
  %319 = load i8, ptr %318, align 1, !dbg !1035
  %conv606 = zext i8 %319 to i64, !dbg !1035
  %320 = load i32, ptr %bits, align 4, !dbg !1035
  %sh_prom607 = zext i32 %320 to i64, !dbg !1035
  %shl608 = shl i64 %conv606, %sh_prom607, !dbg !1035
  %321 = load i64, ptr %hold, align 8, !dbg !1035
  %add609 = add i64 %321, %shl608, !dbg !1035
  store i64 %add609, ptr %hold, align 8, !dbg !1035
  %322 = load i32, ptr %bits, align 4, !dbg !1035
  %add610 = add i32 %322, 8, !dbg !1035
  store i32 %add610, ptr %bits, align 4, !dbg !1035
  br label %do.cond611, !dbg !1035

do.cond611:                                       ; preds = %if.end603
  br label %do.end612, !dbg !1035

do.end612:                                        ; preds = %do.cond611
  br label %while.cond592, !dbg !1030, !llvm.loop !1036

while.end613:                                     ; preds = %while.cond592
  br label %do.cond614, !dbg !1030

do.cond614:                                       ; preds = %while.end613
  br label %do.end615, !dbg !1030

do.end615:                                        ; preds = %do.cond614
  br label %do.body616, !dbg !1037

do.body616:                                       ; preds = %do.end615
  %bits617 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 1, !dbg !1038
  %323 = load i8, ptr %bits617, align 1, !dbg !1038
  %conv618 = zext i8 %323 to i32, !dbg !1038
  %324 = load i64, ptr %hold, align 8, !dbg !1038
  %sh_prom619 = zext i32 %conv618 to i64, !dbg !1038
  %shr620 = lshr i64 %324, %sh_prom619, !dbg !1038
  store i64 %shr620, ptr %hold, align 8, !dbg !1038
  %bits621 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 1, !dbg !1038
  %325 = load i8, ptr %bits621, align 1, !dbg !1038
  %conv622 = zext i8 %325 to i32, !dbg !1038
  %326 = load i32, ptr %bits, align 4, !dbg !1038
  %sub623 = sub i32 %326, %conv622, !dbg !1038
  store i32 %sub623, ptr %bits, align 4, !dbg !1038
  br label %do.cond624, !dbg !1038

do.cond624:                                       ; preds = %do.body616
  br label %do.end625, !dbg !1038

do.end625:                                        ; preds = %do.cond624
  store i32 0, ptr %len, align 4, !dbg !1040
  %327 = load i64, ptr %hold, align 8, !dbg !1041
  %conv626 = trunc i64 %327 to i32, !dbg !1041
  %and627 = and i32 %conv626, 127, !dbg !1041
  %add628 = add i32 11, %and627, !dbg !1042
  store i32 %add628, ptr %copy, align 4, !dbg !1043
  br label %do.body629, !dbg !1044

do.body629:                                       ; preds = %do.end625
  %328 = load i64, ptr %hold, align 8, !dbg !1045
  %shr630 = lshr i64 %328, 7, !dbg !1045
  store i64 %shr630, ptr %hold, align 8, !dbg !1045
  %329 = load i32, ptr %bits, align 4, !dbg !1045
  %sub631 = sub i32 %329, 7, !dbg !1045
  store i32 %sub631, ptr %bits, align 4, !dbg !1045
  br label %do.cond632, !dbg !1045

do.cond632:                                       ; preds = %do.body629
  br label %do.end633, !dbg !1045

do.end633:                                        ; preds = %do.cond632
  br label %if.end634

if.end634:                                        ; preds = %do.end633, %do.end589
  br label %if.end635

if.end635:                                        ; preds = %if.end634, %do.end540
  %330 = load ptr, ptr %state, align 8, !dbg !1047
  %have636 = getelementptr inbounds %struct.inflate_state, ptr %330, i32 0, i32 25, !dbg !1049
  %331 = load i32, ptr %have636, align 4, !dbg !1049
  %332 = load i32, ptr %copy, align 4, !dbg !1050
  %add637 = add i32 %331, %332, !dbg !1051
  %333 = load ptr, ptr %state, align 8, !dbg !1052
  %nlen638 = getelementptr inbounds %struct.inflate_state, ptr %333, i32 0, i32 23, !dbg !1053
  %334 = load i32, ptr %nlen638, align 4, !dbg !1053
  %335 = load ptr, ptr %state, align 8, !dbg !1054
  %ndist639 = getelementptr inbounds %struct.inflate_state, ptr %335, i32 0, i32 24, !dbg !1055
  %336 = load i32, ptr %ndist639, align 8, !dbg !1055
  %add640 = add i32 %334, %336, !dbg !1056
  %cmp641 = icmp ugt i32 %add637, %add640, !dbg !1057
  br i1 %cmp641, label %if.then643, label %if.end646, !dbg !1058

if.then643:                                       ; preds = %if.end635
  %337 = load ptr, ptr %strm.addr, align 8, !dbg !1059
  %msg644 = getelementptr inbounds %struct.z_stream_s, ptr %337, i32 0, i32 6, !dbg !1061
  store ptr @.str.7, ptr %msg644, align 8, !dbg !1062
  %338 = load ptr, ptr %state, align 8, !dbg !1063
  %mode645 = getelementptr inbounds %struct.inflate_state, ptr %338, i32 0, i32 0, !dbg !1064
  store i32 27, ptr %mode645, align 8, !dbg !1065
  br label %while.end659, !dbg !1066

if.end646:                                        ; preds = %if.end635
  br label %while.cond647, !dbg !1067

while.cond647:                                    ; preds = %while.body650, %if.end646
  %339 = load i32, ptr %copy, align 4, !dbg !1068
  %dec648 = add i32 %339, -1, !dbg !1068
  store i32 %dec648, ptr %copy, align 4, !dbg !1068
  %tobool649 = icmp ne i32 %339, 0, !dbg !1067
  br i1 %tobool649, label %while.body650, label %while.end657, !dbg !1067

while.body650:                                    ; preds = %while.cond647
  %340 = load i32, ptr %len, align 4, !dbg !1069
  %conv651 = trunc i32 %340 to i16, !dbg !1070
  %341 = load ptr, ptr %state, align 8, !dbg !1071
  %lens652 = getelementptr inbounds %struct.inflate_state, ptr %341, i32 0, i32 27, !dbg !1072
  %342 = load ptr, ptr %state, align 8, !dbg !1073
  %have653 = getelementptr inbounds %struct.inflate_state, ptr %342, i32 0, i32 25, !dbg !1074
  %343 = load i32, ptr %have653, align 4, !dbg !1075
  %inc654 = add i32 %343, 1, !dbg !1075
  store i32 %inc654, ptr %have653, align 4, !dbg !1075
  %idxprom655 = zext i32 %343 to i64, !dbg !1071
  %arrayidx656 = getelementptr [320 x i16], ptr %lens652, i64 0, i64 %idxprom655, !dbg !1071
  store i16 %conv651, ptr %arrayidx656, align 2, !dbg !1076
  br label %while.cond647, !dbg !1067, !llvm.loop !1077

while.end657:                                     ; preds = %while.cond647
  br label %if.end658

if.end658:                                        ; preds = %while.end657, %do.end473
  br label %while.cond399, !dbg !901, !llvm.loop !1078

while.end659:                                     ; preds = %if.then643, %if.then523, %while.cond399
  %344 = load ptr, ptr %state, align 8, !dbg !1080
  %mode660 = getelementptr inbounds %struct.inflate_state, ptr %344, i32 0, i32 0, !dbg !1082
  %345 = load i32, ptr %mode660, align 8, !dbg !1082
  %cmp661 = icmp eq i32 %345, 27, !dbg !1083
  br i1 %cmp661, label %if.then663, label %if.end664, !dbg !1084

if.then663:                                       ; preds = %while.end659
  br label %sw.epilog1214, !dbg !1085

if.end664:                                        ; preds = %while.end659
  %346 = load ptr, ptr %state, align 8, !dbg !1086
  %codes665 = getelementptr inbounds %struct.inflate_state, ptr %346, i32 0, i32 29, !dbg !1087
  %arraydecay666 = getelementptr inbounds [2048 x %struct.code], ptr %codes665, i64 0, i64 0, !dbg !1086
  %347 = load ptr, ptr %state, align 8, !dbg !1088
  %next667 = getelementptr inbounds %struct.inflate_state, ptr %347, i32 0, i32 26, !dbg !1089
  store ptr %arraydecay666, ptr %next667, align 8, !dbg !1090
  %348 = load ptr, ptr %state, align 8, !dbg !1091
  %next668 = getelementptr inbounds %struct.inflate_state, ptr %348, i32 0, i32 26, !dbg !1092
  %349 = load ptr, ptr %next668, align 8, !dbg !1092
  %350 = load ptr, ptr %state, align 8, !dbg !1093
  %lencode669 = getelementptr inbounds %struct.inflate_state, ptr %350, i32 0, i32 18, !dbg !1094
  store ptr %349, ptr %lencode669, align 8, !dbg !1095
  %351 = load ptr, ptr %state, align 8, !dbg !1096
  %lenbits670 = getelementptr inbounds %struct.inflate_state, ptr %351, i32 0, i32 20, !dbg !1097
  store i32 9, ptr %lenbits670, align 8, !dbg !1098
  %352 = load ptr, ptr %state, align 8, !dbg !1099
  %lens671 = getelementptr inbounds %struct.inflate_state, ptr %352, i32 0, i32 27, !dbg !1100
  %arraydecay672 = getelementptr inbounds [320 x i16], ptr %lens671, i64 0, i64 0, !dbg !1099
  %353 = load ptr, ptr %state, align 8, !dbg !1101
  %nlen673 = getelementptr inbounds %struct.inflate_state, ptr %353, i32 0, i32 23, !dbg !1102
  %354 = load i32, ptr %nlen673, align 4, !dbg !1102
  %355 = load ptr, ptr %state, align 8, !dbg !1103
  %next674 = getelementptr inbounds %struct.inflate_state, ptr %355, i32 0, i32 26, !dbg !1104
  %356 = load ptr, ptr %state, align 8, !dbg !1105
  %lenbits675 = getelementptr inbounds %struct.inflate_state, ptr %356, i32 0, i32 20, !dbg !1106
  %357 = load ptr, ptr %state, align 8, !dbg !1107
  %work676 = getelementptr inbounds %struct.inflate_state, ptr %357, i32 0, i32 28, !dbg !1108
  %arraydecay677 = getelementptr inbounds [288 x i16], ptr %work676, i64 0, i64 0, !dbg !1107
  %call678 = call i32 @zlib_inflate_table(i32 noundef 1, ptr noundef %arraydecay672, i32 noundef %354, ptr noundef %next674, ptr noundef %lenbits675, ptr noundef %arraydecay677) #7, !dbg !1109
  store i32 %call678, ptr %ret, align 4, !dbg !1110
  %358 = load i32, ptr %ret, align 4, !dbg !1111
  %tobool679 = icmp ne i32 %358, 0, !dbg !1111
  br i1 %tobool679, label %if.then680, label %if.end683, !dbg !1113

if.then680:                                       ; preds = %if.end664
  %359 = load ptr, ptr %strm.addr, align 8, !dbg !1114
  %msg681 = getelementptr inbounds %struct.z_stream_s, ptr %359, i32 0, i32 6, !dbg !1116
  store ptr @.str.8, ptr %msg681, align 8, !dbg !1117
  %360 = load ptr, ptr %state, align 8, !dbg !1118
  %mode682 = getelementptr inbounds %struct.inflate_state, ptr %360, i32 0, i32 0, !dbg !1119
  store i32 27, ptr %mode682, align 8, !dbg !1120
  br label %sw.epilog1214, !dbg !1121

if.end683:                                        ; preds = %if.end664
  %361 = load ptr, ptr %state, align 8, !dbg !1122
  %next684 = getelementptr inbounds %struct.inflate_state, ptr %361, i32 0, i32 26, !dbg !1123
  %362 = load ptr, ptr %next684, align 8, !dbg !1123
  %363 = load ptr, ptr %state, align 8, !dbg !1124
  %distcode = getelementptr inbounds %struct.inflate_state, ptr %363, i32 0, i32 19, !dbg !1125
  store ptr %362, ptr %distcode, align 8, !dbg !1126
  %364 = load ptr, ptr %state, align 8, !dbg !1127
  %distbits = getelementptr inbounds %struct.inflate_state, ptr %364, i32 0, i32 21, !dbg !1128
  store i32 6, ptr %distbits, align 4, !dbg !1129
  %365 = load ptr, ptr %state, align 8, !dbg !1130
  %lens685 = getelementptr inbounds %struct.inflate_state, ptr %365, i32 0, i32 27, !dbg !1131
  %arraydecay686 = getelementptr inbounds [320 x i16], ptr %lens685, i64 0, i64 0, !dbg !1130
  %366 = load ptr, ptr %state, align 8, !dbg !1132
  %nlen687 = getelementptr inbounds %struct.inflate_state, ptr %366, i32 0, i32 23, !dbg !1133
  %367 = load i32, ptr %nlen687, align 4, !dbg !1133
  %idx.ext688 = zext i32 %367 to i64, !dbg !1134
  %add.ptr689 = getelementptr i16, ptr %arraydecay686, i64 %idx.ext688, !dbg !1134
  %368 = load ptr, ptr %state, align 8, !dbg !1135
  %ndist690 = getelementptr inbounds %struct.inflate_state, ptr %368, i32 0, i32 24, !dbg !1136
  %369 = load i32, ptr %ndist690, align 8, !dbg !1136
  %370 = load ptr, ptr %state, align 8, !dbg !1137
  %next691 = getelementptr inbounds %struct.inflate_state, ptr %370, i32 0, i32 26, !dbg !1138
  %371 = load ptr, ptr %state, align 8, !dbg !1139
  %distbits692 = getelementptr inbounds %struct.inflate_state, ptr %371, i32 0, i32 21, !dbg !1140
  %372 = load ptr, ptr %state, align 8, !dbg !1141
  %work693 = getelementptr inbounds %struct.inflate_state, ptr %372, i32 0, i32 28, !dbg !1142
  %arraydecay694 = getelementptr inbounds [288 x i16], ptr %work693, i64 0, i64 0, !dbg !1141
  %call695 = call i32 @zlib_inflate_table(i32 noundef 2, ptr noundef %add.ptr689, i32 noundef %369, ptr noundef %next691, ptr noundef %distbits692, ptr noundef %arraydecay694) #7, !dbg !1143
  store i32 %call695, ptr %ret, align 4, !dbg !1144
  %373 = load i32, ptr %ret, align 4, !dbg !1145
  %tobool696 = icmp ne i32 %373, 0, !dbg !1145
  br i1 %tobool696, label %if.then697, label %if.end700, !dbg !1147

if.then697:                                       ; preds = %if.end683
  %374 = load ptr, ptr %strm.addr, align 8, !dbg !1148
  %msg698 = getelementptr inbounds %struct.z_stream_s, ptr %374, i32 0, i32 6, !dbg !1150
  store ptr @.str.9, ptr %msg698, align 8, !dbg !1151
  %375 = load ptr, ptr %state, align 8, !dbg !1152
  %mode699 = getelementptr inbounds %struct.inflate_state, ptr %375, i32 0, i32 0, !dbg !1153
  store i32 27, ptr %mode699, align 8, !dbg !1154
  br label %sw.epilog1214, !dbg !1155

if.end700:                                        ; preds = %if.end683
  %376 = load ptr, ptr %state, align 8, !dbg !1156
  %mode701 = getelementptr inbounds %struct.inflate_state, ptr %376, i32 0, i32 0, !dbg !1157
  store i32 18, ptr %mode701, align 8, !dbg !1158
  br label %sw.bb702, !dbg !1156

sw.bb702:                                         ; preds = %for.cond, %if.end700
  %377 = load i32, ptr %have, align 4, !dbg !1159
  %cmp703 = icmp uge i32 %377, 6, !dbg !1161
  br i1 %cmp703, label %land.lhs.true705, label %if.end731, !dbg !1162

land.lhs.true705:                                 ; preds = %sw.bb702
  %378 = load i32, ptr %left, align 4, !dbg !1163
  %cmp706 = icmp uge i32 %378, 258, !dbg !1164
  br i1 %cmp706, label %if.then708, label %if.end731, !dbg !1165

if.then708:                                       ; preds = %land.lhs.true705
  br label %do.body709, !dbg !1166

do.body709:                                       ; preds = %if.then708
  %379 = load ptr, ptr %put, align 8, !dbg !1168
  %380 = load ptr, ptr %strm.addr, align 8, !dbg !1168
  %next_out710 = getelementptr inbounds %struct.z_stream_s, ptr %380, i32 0, i32 3, !dbg !1168
  store ptr %379, ptr %next_out710, align 8, !dbg !1168
  %381 = load i32, ptr %left, align 4, !dbg !1168
  %conv711 = zext i32 %381 to i64, !dbg !1168
  %382 = load ptr, ptr %strm.addr, align 8, !dbg !1168
  %avail_out712 = getelementptr inbounds %struct.z_stream_s, ptr %382, i32 0, i32 4, !dbg !1168
  store i64 %conv711, ptr %avail_out712, align 8, !dbg !1168
  %383 = load ptr, ptr %next, align 8, !dbg !1168
  %384 = load ptr, ptr %strm.addr, align 8, !dbg !1168
  %next_in713 = getelementptr inbounds %struct.z_stream_s, ptr %384, i32 0, i32 0, !dbg !1168
  store ptr %383, ptr %next_in713, align 8, !dbg !1168
  %385 = load i32, ptr %have, align 4, !dbg !1168
  %conv714 = zext i32 %385 to i64, !dbg !1168
  %386 = load ptr, ptr %strm.addr, align 8, !dbg !1168
  %avail_in715 = getelementptr inbounds %struct.z_stream_s, ptr %386, i32 0, i32 1, !dbg !1168
  store i64 %conv714, ptr %avail_in715, align 8, !dbg !1168
  %387 = load i64, ptr %hold, align 8, !dbg !1168
  %388 = load ptr, ptr %state, align 8, !dbg !1168
  %hold716 = getelementptr inbounds %struct.inflate_state, ptr %388, i32 0, i32 13, !dbg !1168
  store i64 %387, ptr %hold716, align 8, !dbg !1168
  %389 = load i32, ptr %bits, align 4, !dbg !1168
  %390 = load ptr, ptr %state, align 8, !dbg !1168
  %bits717 = getelementptr inbounds %struct.inflate_state, ptr %390, i32 0, i32 14, !dbg !1168
  store i32 %389, ptr %bits717, align 8, !dbg !1168
  br label %do.cond718, !dbg !1168

do.cond718:                                       ; preds = %do.body709
  br label %do.end719, !dbg !1168

do.end719:                                        ; preds = %do.cond718
  %391 = load ptr, ptr %strm.addr, align 8, !dbg !1170
  %392 = load i32, ptr %out, align 4, !dbg !1171
  call void @inflate_fast(ptr noundef %391, i32 noundef %392) #7, !dbg !1172
  br label %do.body720, !dbg !1173

do.body720:                                       ; preds = %do.end719
  %393 = load ptr, ptr %strm.addr, align 8, !dbg !1174
  %next_out721 = getelementptr inbounds %struct.z_stream_s, ptr %393, i32 0, i32 3, !dbg !1174
  %394 = load ptr, ptr %next_out721, align 8, !dbg !1174
  store ptr %394, ptr %put, align 8, !dbg !1174
  %395 = load ptr, ptr %strm.addr, align 8, !dbg !1174
  %avail_out722 = getelementptr inbounds %struct.z_stream_s, ptr %395, i32 0, i32 4, !dbg !1174
  %396 = load i64, ptr %avail_out722, align 8, !dbg !1174
  %conv723 = trunc i64 %396 to i32, !dbg !1174
  store i32 %conv723, ptr %left, align 4, !dbg !1174
  %397 = load ptr, ptr %strm.addr, align 8, !dbg !1174
  %next_in724 = getelementptr inbounds %struct.z_stream_s, ptr %397, i32 0, i32 0, !dbg !1174
  %398 = load ptr, ptr %next_in724, align 8, !dbg !1174
  store ptr %398, ptr %next, align 8, !dbg !1174
  %399 = load ptr, ptr %strm.addr, align 8, !dbg !1174
  %avail_in725 = getelementptr inbounds %struct.z_stream_s, ptr %399, i32 0, i32 1, !dbg !1174
  %400 = load i64, ptr %avail_in725, align 8, !dbg !1174
  %conv726 = trunc i64 %400 to i32, !dbg !1174
  store i32 %conv726, ptr %have, align 4, !dbg !1174
  %401 = load ptr, ptr %state, align 8, !dbg !1174
  %hold727 = getelementptr inbounds %struct.inflate_state, ptr %401, i32 0, i32 13, !dbg !1174
  %402 = load i64, ptr %hold727, align 8, !dbg !1174
  store i64 %402, ptr %hold, align 8, !dbg !1174
  %403 = load ptr, ptr %state, align 8, !dbg !1174
  %bits728 = getelementptr inbounds %struct.inflate_state, ptr %403, i32 0, i32 14, !dbg !1174
  %404 = load i32, ptr %bits728, align 8, !dbg !1174
  store i32 %404, ptr %bits, align 4, !dbg !1174
  br label %do.cond729, !dbg !1174

do.cond729:                                       ; preds = %do.body720
  br label %do.end730, !dbg !1174

do.end730:                                        ; preds = %do.cond729
  br label %sw.epilog1214, !dbg !1176

if.end731:                                        ; preds = %land.lhs.true705, %sw.bb702
  br label %for.cond732, !dbg !1177

for.cond732:                                      ; preds = %do.end760, %if.end731
  %405 = load ptr, ptr %state, align 8, !dbg !1178
  %lencode733 = getelementptr inbounds %struct.inflate_state, ptr %405, i32 0, i32 18, !dbg !1182
  %406 = load ptr, ptr %lencode733, align 8, !dbg !1182
  %407 = load i64, ptr %hold, align 8, !dbg !1183
  %conv734 = trunc i64 %407 to i32, !dbg !1183
  %408 = load ptr, ptr %state, align 8, !dbg !1183
  %lenbits735 = getelementptr inbounds %struct.inflate_state, ptr %408, i32 0, i32 20, !dbg !1183
  %409 = load i32, ptr %lenbits735, align 8, !dbg !1183
  %shl736 = shl i32 1, %409, !dbg !1183
  %sub737 = sub i32 %shl736, 1, !dbg !1183
  %and738 = and i32 %conv734, %sub737, !dbg !1183
  %idxprom739 = zext i32 %and738 to i64, !dbg !1178
  %arrayidx740 = getelementptr %struct.code, ptr %406, i64 %idxprom739, !dbg !1178
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %this, ptr align 2 %arrayidx740, i64 4, i1 false), !dbg !1178
  %bits741 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 1, !dbg !1184
  %410 = load i8, ptr %bits741, align 1, !dbg !1184
  %conv742 = zext i8 %410 to i32, !dbg !1186
  %411 = load i32, ptr %bits, align 4, !dbg !1187
  %cmp743 = icmp ule i32 %conv742, %411, !dbg !1188
  br i1 %cmp743, label %if.then745, label %if.end746, !dbg !1189

if.then745:                                       ; preds = %for.cond732
  br label %for.end761, !dbg !1190

if.end746:                                        ; preds = %for.cond732
  br label %do.body747, !dbg !1191

do.body747:                                       ; preds = %if.end746
  %412 = load i32, ptr %have, align 4, !dbg !1192
  %cmp748 = icmp eq i32 %412, 0, !dbg !1192
  br i1 %cmp748, label %if.then750, label %if.end751, !dbg !1195

if.then750:                                       ; preds = %do.body747
  br label %inf_leave, !dbg !1192

if.end751:                                        ; preds = %do.body747
  %413 = load i32, ptr %have, align 4, !dbg !1195
  %dec752 = add i32 %413, -1, !dbg !1195
  store i32 %dec752, ptr %have, align 4, !dbg !1195
  %414 = load ptr, ptr %next, align 8, !dbg !1195
  %incdec.ptr753 = getelementptr i8, ptr %414, i32 1, !dbg !1195
  store ptr %incdec.ptr753, ptr %next, align 8, !dbg !1195
  %415 = load i8, ptr %414, align 1, !dbg !1195
  %conv754 = zext i8 %415 to i64, !dbg !1195
  %416 = load i32, ptr %bits, align 4, !dbg !1195
  %sh_prom755 = zext i32 %416 to i64, !dbg !1195
  %shl756 = shl i64 %conv754, %sh_prom755, !dbg !1195
  %417 = load i64, ptr %hold, align 8, !dbg !1195
  %add757 = add i64 %417, %shl756, !dbg !1195
  store i64 %add757, ptr %hold, align 8, !dbg !1195
  %418 = load i32, ptr %bits, align 4, !dbg !1195
  %add758 = add i32 %418, 8, !dbg !1195
  store i32 %add758, ptr %bits, align 4, !dbg !1195
  br label %do.cond759, !dbg !1195

do.cond759:                                       ; preds = %if.end751
  br label %do.end760, !dbg !1195

do.end760:                                        ; preds = %do.cond759
  br label %for.cond732, !dbg !1196, !llvm.loop !1197

for.end761:                                       ; preds = %if.then745
  %op = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 0, !dbg !1200
  %419 = load i8, ptr %op, align 2, !dbg !1200
  %conv762 = zext i8 %419 to i32, !dbg !1202
  %tobool763 = icmp ne i32 %conv762, 0, !dbg !1202
  br i1 %tobool763, label %land.lhs.true764, label %if.end824, !dbg !1203

land.lhs.true764:                                 ; preds = %for.end761
  %op765 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 0, !dbg !1204
  %420 = load i8, ptr %op765, align 2, !dbg !1204
  %conv766 = zext i8 %420 to i32, !dbg !1205
  %and767 = and i32 %conv766, 240, !dbg !1206
  %cmp768 = icmp eq i32 %and767, 0, !dbg !1207
  br i1 %cmp768, label %if.then770, label %if.end824, !dbg !1208

if.then770:                                       ; preds = %land.lhs.true764
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %last, ptr align 2 %this, i64 4, i1 false), !dbg !1209
  br label %for.cond771, !dbg !1211

for.cond771:                                      ; preds = %do.end812, %if.then770
  %421 = load ptr, ptr %state, align 8, !dbg !1212
  %lencode772 = getelementptr inbounds %struct.inflate_state, ptr %421, i32 0, i32 18, !dbg !1216
  %422 = load ptr, ptr %lencode772, align 8, !dbg !1216
  %val773 = getelementptr inbounds %struct.code, ptr %last, i32 0, i32 2, !dbg !1217
  %423 = load i16, ptr %val773, align 2, !dbg !1217
  %conv774 = zext i16 %423 to i32, !dbg !1218
  %424 = load i64, ptr %hold, align 8, !dbg !1219
  %conv775 = trunc i64 %424 to i32, !dbg !1219
  %bits776 = getelementptr inbounds %struct.code, ptr %last, i32 0, i32 1, !dbg !1219
  %425 = load i8, ptr %bits776, align 1, !dbg !1219
  %conv777 = zext i8 %425 to i32, !dbg !1219
  %op778 = getelementptr inbounds %struct.code, ptr %last, i32 0, i32 0, !dbg !1219
  %426 = load i8, ptr %op778, align 2, !dbg !1219
  %conv779 = zext i8 %426 to i32, !dbg !1219
  %add780 = add i32 %conv777, %conv779, !dbg !1219
  %shl781 = shl i32 1, %add780, !dbg !1219
  %sub782 = sub i32 %shl781, 1, !dbg !1219
  %and783 = and i32 %conv775, %sub782, !dbg !1219
  %bits784 = getelementptr inbounds %struct.code, ptr %last, i32 0, i32 1, !dbg !1220
  %427 = load i8, ptr %bits784, align 1, !dbg !1220
  %conv785 = zext i8 %427 to i32, !dbg !1221
  %shr786 = lshr i32 %and783, %conv785, !dbg !1222
  %add787 = add i32 %conv774, %shr786, !dbg !1223
  %idxprom788 = zext i32 %add787 to i64, !dbg !1212
  %arrayidx789 = getelementptr %struct.code, ptr %422, i64 %idxprom788, !dbg !1212
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %this, ptr align 2 %arrayidx789, i64 4, i1 false), !dbg !1212
  %bits790 = getelementptr inbounds %struct.code, ptr %last, i32 0, i32 1, !dbg !1224
  %428 = load i8, ptr %bits790, align 1, !dbg !1224
  %conv791 = zext i8 %428 to i32, !dbg !1226
  %bits792 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 1, !dbg !1227
  %429 = load i8, ptr %bits792, align 1, !dbg !1227
  %conv793 = zext i8 %429 to i32, !dbg !1228
  %add794 = add i32 %conv791, %conv793, !dbg !1229
  %430 = load i32, ptr %bits, align 4, !dbg !1230
  %cmp795 = icmp ule i32 %add794, %430, !dbg !1231
  br i1 %cmp795, label %if.then797, label %if.end798, !dbg !1232

if.then797:                                       ; preds = %for.cond771
  br label %for.end813, !dbg !1233

if.end798:                                        ; preds = %for.cond771
  br label %do.body799, !dbg !1234

do.body799:                                       ; preds = %if.end798
  %431 = load i32, ptr %have, align 4, !dbg !1235
  %cmp800 = icmp eq i32 %431, 0, !dbg !1235
  br i1 %cmp800, label %if.then802, label %if.end803, !dbg !1238

if.then802:                                       ; preds = %do.body799
  br label %inf_leave, !dbg !1235

if.end803:                                        ; preds = %do.body799
  %432 = load i32, ptr %have, align 4, !dbg !1238
  %dec804 = add i32 %432, -1, !dbg !1238
  store i32 %dec804, ptr %have, align 4, !dbg !1238
  %433 = load ptr, ptr %next, align 8, !dbg !1238
  %incdec.ptr805 = getelementptr i8, ptr %433, i32 1, !dbg !1238
  store ptr %incdec.ptr805, ptr %next, align 8, !dbg !1238
  %434 = load i8, ptr %433, align 1, !dbg !1238
  %conv806 = zext i8 %434 to i64, !dbg !1238
  %435 = load i32, ptr %bits, align 4, !dbg !1238
  %sh_prom807 = zext i32 %435 to i64, !dbg !1238
  %shl808 = shl i64 %conv806, %sh_prom807, !dbg !1238
  %436 = load i64, ptr %hold, align 8, !dbg !1238
  %add809 = add i64 %436, %shl808, !dbg !1238
  store i64 %add809, ptr %hold, align 8, !dbg !1238
  %437 = load i32, ptr %bits, align 4, !dbg !1238
  %add810 = add i32 %437, 8, !dbg !1238
  store i32 %add810, ptr %bits, align 4, !dbg !1238
  br label %do.cond811, !dbg !1238

do.cond811:                                       ; preds = %if.end803
  br label %do.end812, !dbg !1238

do.end812:                                        ; preds = %do.cond811
  br label %for.cond771, !dbg !1239, !llvm.loop !1240

for.end813:                                       ; preds = %if.then797
  br label %do.body814, !dbg !1243

do.body814:                                       ; preds = %for.end813
  %bits815 = getelementptr inbounds %struct.code, ptr %last, i32 0, i32 1, !dbg !1244
  %438 = load i8, ptr %bits815, align 1, !dbg !1244
  %conv816 = zext i8 %438 to i32, !dbg !1244
  %439 = load i64, ptr %hold, align 8, !dbg !1244
  %sh_prom817 = zext i32 %conv816 to i64, !dbg !1244
  %shr818 = lshr i64 %439, %sh_prom817, !dbg !1244
  store i64 %shr818, ptr %hold, align 8, !dbg !1244
  %bits819 = getelementptr inbounds %struct.code, ptr %last, i32 0, i32 1, !dbg !1244
  %440 = load i8, ptr %bits819, align 1, !dbg !1244
  %conv820 = zext i8 %440 to i32, !dbg !1244
  %441 = load i32, ptr %bits, align 4, !dbg !1244
  %sub821 = sub i32 %441, %conv820, !dbg !1244
  store i32 %sub821, ptr %bits, align 4, !dbg !1244
  br label %do.cond822, !dbg !1244

do.cond822:                                       ; preds = %do.body814
  br label %do.end823, !dbg !1244

do.end823:                                        ; preds = %do.cond822
  br label %if.end824, !dbg !1246

if.end824:                                        ; preds = %do.end823, %land.lhs.true764, %for.end761
  br label %do.body825, !dbg !1247

do.body825:                                       ; preds = %if.end824
  %bits826 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 1, !dbg !1248
  %442 = load i8, ptr %bits826, align 1, !dbg !1248
  %conv827 = zext i8 %442 to i32, !dbg !1248
  %443 = load i64, ptr %hold, align 8, !dbg !1248
  %sh_prom828 = zext i32 %conv827 to i64, !dbg !1248
  %shr829 = lshr i64 %443, %sh_prom828, !dbg !1248
  store i64 %shr829, ptr %hold, align 8, !dbg !1248
  %bits830 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 1, !dbg !1248
  %444 = load i8, ptr %bits830, align 1, !dbg !1248
  %conv831 = zext i8 %444 to i32, !dbg !1248
  %445 = load i32, ptr %bits, align 4, !dbg !1248
  %sub832 = sub i32 %445, %conv831, !dbg !1248
  store i32 %sub832, ptr %bits, align 4, !dbg !1248
  br label %do.cond833, !dbg !1248

do.cond833:                                       ; preds = %do.body825
  br label %do.end834, !dbg !1248

do.end834:                                        ; preds = %do.cond833
  %val835 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 2, !dbg !1250
  %446 = load i16, ptr %val835, align 2, !dbg !1250
  %conv836 = zext i16 %446 to i32, !dbg !1251
  %447 = load ptr, ptr %state, align 8, !dbg !1252
  %length837 = getelementptr inbounds %struct.inflate_state, ptr %447, i32 0, i32 15, !dbg !1253
  store i32 %conv836, ptr %length837, align 4, !dbg !1254
  %op838 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 0, !dbg !1255
  %448 = load i8, ptr %op838, align 2, !dbg !1255
  %conv839 = zext i8 %448 to i32, !dbg !1257
  %cmp840 = icmp eq i32 %conv839, 0, !dbg !1258
  br i1 %cmp840, label %if.then842, label %if.end844, !dbg !1259

if.then842:                                       ; preds = %do.end834
  %449 = load ptr, ptr %state, align 8, !dbg !1260
  %mode843 = getelementptr inbounds %struct.inflate_state, ptr %449, i32 0, i32 0, !dbg !1262
  store i32 23, ptr %mode843, align 8, !dbg !1263
  br label %sw.epilog1214, !dbg !1264

if.end844:                                        ; preds = %do.end834
  %op845 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 0, !dbg !1265
  %450 = load i8, ptr %op845, align 2, !dbg !1265
  %conv846 = zext i8 %450 to i32, !dbg !1267
  %and847 = and i32 %conv846, 32, !dbg !1268
  %tobool848 = icmp ne i32 %and847, 0, !dbg !1268
  br i1 %tobool848, label %if.then849, label %if.end851, !dbg !1269

if.then849:                                       ; preds = %if.end844
  %451 = load ptr, ptr %state, align 8, !dbg !1270
  %mode850 = getelementptr inbounds %struct.inflate_state, ptr %451, i32 0, i32 0, !dbg !1272
  store i32 11, ptr %mode850, align 8, !dbg !1273
  br label %sw.epilog1214, !dbg !1274

if.end851:                                        ; preds = %if.end844
  %op852 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 0, !dbg !1275
  %452 = load i8, ptr %op852, align 2, !dbg !1275
  %conv853 = zext i8 %452 to i32, !dbg !1277
  %and854 = and i32 %conv853, 64, !dbg !1278
  %tobool855 = icmp ne i32 %and854, 0, !dbg !1278
  br i1 %tobool855, label %if.then856, label %if.end859, !dbg !1279

if.then856:                                       ; preds = %if.end851
  %453 = load ptr, ptr %strm.addr, align 8, !dbg !1280
  %msg857 = getelementptr inbounds %struct.z_stream_s, ptr %453, i32 0, i32 6, !dbg !1282
  store ptr @.str.10, ptr %msg857, align 8, !dbg !1283
  %454 = load ptr, ptr %state, align 8, !dbg !1284
  %mode858 = getelementptr inbounds %struct.inflate_state, ptr %454, i32 0, i32 0, !dbg !1285
  store i32 27, ptr %mode858, align 8, !dbg !1286
  br label %sw.epilog1214, !dbg !1287

if.end859:                                        ; preds = %if.end851
  %op860 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 0, !dbg !1288
  %455 = load i8, ptr %op860, align 2, !dbg !1288
  %conv861 = zext i8 %455 to i32, !dbg !1289
  %and862 = and i32 %conv861, 15, !dbg !1290
  %456 = load ptr, ptr %state, align 8, !dbg !1291
  %extra = getelementptr inbounds %struct.inflate_state, ptr %456, i32 0, i32 17, !dbg !1292
  store i32 %and862, ptr %extra, align 4, !dbg !1293
  %457 = load ptr, ptr %state, align 8, !dbg !1294
  %mode863 = getelementptr inbounds %struct.inflate_state, ptr %457, i32 0, i32 0, !dbg !1295
  store i32 19, ptr %mode863, align 8, !dbg !1296
  br label %sw.bb864, !dbg !1294

sw.bb864:                                         ; preds = %for.cond, %if.end859
  %458 = load ptr, ptr %state, align 8, !dbg !1297
  %extra865 = getelementptr inbounds %struct.inflate_state, ptr %458, i32 0, i32 17, !dbg !1299
  %459 = load i32, ptr %extra865, align 4, !dbg !1299
  %tobool866 = icmp ne i32 %459, 0, !dbg !1297
  br i1 %tobool866, label %if.then867, label %if.end906, !dbg !1300

if.then867:                                       ; preds = %sw.bb864
  br label %do.body868, !dbg !1301

do.body868:                                       ; preds = %if.then867
  br label %while.cond869, !dbg !1303

while.cond869:                                    ; preds = %do.end887, %do.body868
  %460 = load i32, ptr %bits, align 4, !dbg !1303
  %461 = load ptr, ptr %state, align 8, !dbg !1303
  %extra870 = getelementptr inbounds %struct.inflate_state, ptr %461, i32 0, i32 17, !dbg !1303
  %462 = load i32, ptr %extra870, align 4, !dbg !1303
  %cmp871 = icmp ult i32 %460, %462, !dbg !1303
  br i1 %cmp871, label %while.body873, label %while.end888, !dbg !1303

while.body873:                                    ; preds = %while.cond869
  br label %do.body874, !dbg !1303

do.body874:                                       ; preds = %while.body873
  %463 = load i32, ptr %have, align 4, !dbg !1305
  %cmp875 = icmp eq i32 %463, 0, !dbg !1305
  br i1 %cmp875, label %if.then877, label %if.end878, !dbg !1308

if.then877:                                       ; preds = %do.body874
  br label %inf_leave, !dbg !1305

if.end878:                                        ; preds = %do.body874
  %464 = load i32, ptr %have, align 4, !dbg !1308
  %dec879 = add i32 %464, -1, !dbg !1308
  store i32 %dec879, ptr %have, align 4, !dbg !1308
  %465 = load ptr, ptr %next, align 8, !dbg !1308
  %incdec.ptr880 = getelementptr i8, ptr %465, i32 1, !dbg !1308
  store ptr %incdec.ptr880, ptr %next, align 8, !dbg !1308
  %466 = load i8, ptr %465, align 1, !dbg !1308
  %conv881 = zext i8 %466 to i64, !dbg !1308
  %467 = load i32, ptr %bits, align 4, !dbg !1308
  %sh_prom882 = zext i32 %467 to i64, !dbg !1308
  %shl883 = shl i64 %conv881, %sh_prom882, !dbg !1308
  %468 = load i64, ptr %hold, align 8, !dbg !1308
  %add884 = add i64 %468, %shl883, !dbg !1308
  store i64 %add884, ptr %hold, align 8, !dbg !1308
  %469 = load i32, ptr %bits, align 4, !dbg !1308
  %add885 = add i32 %469, 8, !dbg !1308
  store i32 %add885, ptr %bits, align 4, !dbg !1308
  br label %do.cond886, !dbg !1308

do.cond886:                                       ; preds = %if.end878
  br label %do.end887, !dbg !1308

do.end887:                                        ; preds = %do.cond886
  br label %while.cond869, !dbg !1303, !llvm.loop !1309

while.end888:                                     ; preds = %while.cond869
  br label %do.cond889, !dbg !1303

do.cond889:                                       ; preds = %while.end888
  br label %do.end890, !dbg !1303

do.end890:                                        ; preds = %do.cond889
  %470 = load i64, ptr %hold, align 8, !dbg !1310
  %conv891 = trunc i64 %470 to i32, !dbg !1310
  %471 = load ptr, ptr %state, align 8, !dbg !1310
  %extra892 = getelementptr inbounds %struct.inflate_state, ptr %471, i32 0, i32 17, !dbg !1310
  %472 = load i32, ptr %extra892, align 4, !dbg !1310
  %shl893 = shl i32 1, %472, !dbg !1310
  %sub894 = sub i32 %shl893, 1, !dbg !1310
  %and895 = and i32 %conv891, %sub894, !dbg !1310
  %473 = load ptr, ptr %state, align 8, !dbg !1311
  %length896 = getelementptr inbounds %struct.inflate_state, ptr %473, i32 0, i32 15, !dbg !1312
  %474 = load i32, ptr %length896, align 4, !dbg !1313
  %add897 = add i32 %474, %and895, !dbg !1313
  store i32 %add897, ptr %length896, align 4, !dbg !1313
  br label %do.body898, !dbg !1314

do.body898:                                       ; preds = %do.end890
  %475 = load ptr, ptr %state, align 8, !dbg !1315
  %extra899 = getelementptr inbounds %struct.inflate_state, ptr %475, i32 0, i32 17, !dbg !1315
  %476 = load i32, ptr %extra899, align 4, !dbg !1315
  %477 = load i64, ptr %hold, align 8, !dbg !1315
  %sh_prom900 = zext i32 %476 to i64, !dbg !1315
  %shr901 = lshr i64 %477, %sh_prom900, !dbg !1315
  store i64 %shr901, ptr %hold, align 8, !dbg !1315
  %478 = load ptr, ptr %state, align 8, !dbg !1315
  %extra902 = getelementptr inbounds %struct.inflate_state, ptr %478, i32 0, i32 17, !dbg !1315
  %479 = load i32, ptr %extra902, align 4, !dbg !1315
  %480 = load i32, ptr %bits, align 4, !dbg !1315
  %sub903 = sub i32 %480, %479, !dbg !1315
  store i32 %sub903, ptr %bits, align 4, !dbg !1315
  br label %do.cond904, !dbg !1315

do.cond904:                                       ; preds = %do.body898
  br label %do.end905, !dbg !1315

do.end905:                                        ; preds = %do.cond904
  br label %if.end906, !dbg !1317

if.end906:                                        ; preds = %do.end905, %sw.bb864
  %481 = load ptr, ptr %state, align 8, !dbg !1318
  %mode907 = getelementptr inbounds %struct.inflate_state, ptr %481, i32 0, i32 0, !dbg !1319
  store i32 20, ptr %mode907, align 8, !dbg !1320
  br label %sw.bb908, !dbg !1318

sw.bb908:                                         ; preds = %for.cond, %if.end906
  br label %for.cond909, !dbg !1321

for.cond909:                                      ; preds = %do.end937, %sw.bb908
  %482 = load ptr, ptr %state, align 8, !dbg !1322
  %distcode910 = getelementptr inbounds %struct.inflate_state, ptr %482, i32 0, i32 19, !dbg !1326
  %483 = load ptr, ptr %distcode910, align 8, !dbg !1326
  %484 = load i64, ptr %hold, align 8, !dbg !1327
  %conv911 = trunc i64 %484 to i32, !dbg !1327
  %485 = load ptr, ptr %state, align 8, !dbg !1327
  %distbits912 = getelementptr inbounds %struct.inflate_state, ptr %485, i32 0, i32 21, !dbg !1327
  %486 = load i32, ptr %distbits912, align 4, !dbg !1327
  %shl913 = shl i32 1, %486, !dbg !1327
  %sub914 = sub i32 %shl913, 1, !dbg !1327
  %and915 = and i32 %conv911, %sub914, !dbg !1327
  %idxprom916 = zext i32 %and915 to i64, !dbg !1322
  %arrayidx917 = getelementptr %struct.code, ptr %483, i64 %idxprom916, !dbg !1322
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %this, ptr align 2 %arrayidx917, i64 4, i1 false), !dbg !1322
  %bits918 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 1, !dbg !1328
  %487 = load i8, ptr %bits918, align 1, !dbg !1328
  %conv919 = zext i8 %487 to i32, !dbg !1330
  %488 = load i32, ptr %bits, align 4, !dbg !1331
  %cmp920 = icmp ule i32 %conv919, %488, !dbg !1332
  br i1 %cmp920, label %if.then922, label %if.end923, !dbg !1333

if.then922:                                       ; preds = %for.cond909
  br label %for.end938, !dbg !1334

if.end923:                                        ; preds = %for.cond909
  br label %do.body924, !dbg !1335

do.body924:                                       ; preds = %if.end923
  %489 = load i32, ptr %have, align 4, !dbg !1336
  %cmp925 = icmp eq i32 %489, 0, !dbg !1336
  br i1 %cmp925, label %if.then927, label %if.end928, !dbg !1339

if.then927:                                       ; preds = %do.body924
  br label %inf_leave, !dbg !1336

if.end928:                                        ; preds = %do.body924
  %490 = load i32, ptr %have, align 4, !dbg !1339
  %dec929 = add i32 %490, -1, !dbg !1339
  store i32 %dec929, ptr %have, align 4, !dbg !1339
  %491 = load ptr, ptr %next, align 8, !dbg !1339
  %incdec.ptr930 = getelementptr i8, ptr %491, i32 1, !dbg !1339
  store ptr %incdec.ptr930, ptr %next, align 8, !dbg !1339
  %492 = load i8, ptr %491, align 1, !dbg !1339
  %conv931 = zext i8 %492 to i64, !dbg !1339
  %493 = load i32, ptr %bits, align 4, !dbg !1339
  %sh_prom932 = zext i32 %493 to i64, !dbg !1339
  %shl933 = shl i64 %conv931, %sh_prom932, !dbg !1339
  %494 = load i64, ptr %hold, align 8, !dbg !1339
  %add934 = add i64 %494, %shl933, !dbg !1339
  store i64 %add934, ptr %hold, align 8, !dbg !1339
  %495 = load i32, ptr %bits, align 4, !dbg !1339
  %add935 = add i32 %495, 8, !dbg !1339
  store i32 %add935, ptr %bits, align 4, !dbg !1339
  br label %do.cond936, !dbg !1339

do.cond936:                                       ; preds = %if.end928
  br label %do.end937, !dbg !1339

do.end937:                                        ; preds = %do.cond936
  br label %for.cond909, !dbg !1340, !llvm.loop !1341

for.end938:                                       ; preds = %if.then922
  %op939 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 0, !dbg !1344
  %496 = load i8, ptr %op939, align 2, !dbg !1344
  %conv940 = zext i8 %496 to i32, !dbg !1346
  %and941 = and i32 %conv940, 240, !dbg !1347
  %cmp942 = icmp eq i32 %and941, 0, !dbg !1348
  br i1 %cmp942, label %if.then944, label %if.end998, !dbg !1349

if.then944:                                       ; preds = %for.end938
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %last, ptr align 2 %this, i64 4, i1 false), !dbg !1350
  br label %for.cond945, !dbg !1352

for.cond945:                                      ; preds = %do.end986, %if.then944
  %497 = load ptr, ptr %state, align 8, !dbg !1353
  %distcode946 = getelementptr inbounds %struct.inflate_state, ptr %497, i32 0, i32 19, !dbg !1357
  %498 = load ptr, ptr %distcode946, align 8, !dbg !1357
  %val947 = getelementptr inbounds %struct.code, ptr %last, i32 0, i32 2, !dbg !1358
  %499 = load i16, ptr %val947, align 2, !dbg !1358
  %conv948 = zext i16 %499 to i32, !dbg !1359
  %500 = load i64, ptr %hold, align 8, !dbg !1360
  %conv949 = trunc i64 %500 to i32, !dbg !1360
  %bits950 = getelementptr inbounds %struct.code, ptr %last, i32 0, i32 1, !dbg !1360
  %501 = load i8, ptr %bits950, align 1, !dbg !1360
  %conv951 = zext i8 %501 to i32, !dbg !1360
  %op952 = getelementptr inbounds %struct.code, ptr %last, i32 0, i32 0, !dbg !1360
  %502 = load i8, ptr %op952, align 2, !dbg !1360
  %conv953 = zext i8 %502 to i32, !dbg !1360
  %add954 = add i32 %conv951, %conv953, !dbg !1360
  %shl955 = shl i32 1, %add954, !dbg !1360
  %sub956 = sub i32 %shl955, 1, !dbg !1360
  %and957 = and i32 %conv949, %sub956, !dbg !1360
  %bits958 = getelementptr inbounds %struct.code, ptr %last, i32 0, i32 1, !dbg !1361
  %503 = load i8, ptr %bits958, align 1, !dbg !1361
  %conv959 = zext i8 %503 to i32, !dbg !1362
  %shr960 = lshr i32 %and957, %conv959, !dbg !1363
  %add961 = add i32 %conv948, %shr960, !dbg !1364
  %idxprom962 = zext i32 %add961 to i64, !dbg !1353
  %arrayidx963 = getelementptr %struct.code, ptr %498, i64 %idxprom962, !dbg !1353
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %this, ptr align 2 %arrayidx963, i64 4, i1 false), !dbg !1353
  %bits964 = getelementptr inbounds %struct.code, ptr %last, i32 0, i32 1, !dbg !1365
  %504 = load i8, ptr %bits964, align 1, !dbg !1365
  %conv965 = zext i8 %504 to i32, !dbg !1367
  %bits966 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 1, !dbg !1368
  %505 = load i8, ptr %bits966, align 1, !dbg !1368
  %conv967 = zext i8 %505 to i32, !dbg !1369
  %add968 = add i32 %conv965, %conv967, !dbg !1370
  %506 = load i32, ptr %bits, align 4, !dbg !1371
  %cmp969 = icmp ule i32 %add968, %506, !dbg !1372
  br i1 %cmp969, label %if.then971, label %if.end972, !dbg !1373

if.then971:                                       ; preds = %for.cond945
  br label %for.end987, !dbg !1374

if.end972:                                        ; preds = %for.cond945
  br label %do.body973, !dbg !1375

do.body973:                                       ; preds = %if.end972
  %507 = load i32, ptr %have, align 4, !dbg !1376
  %cmp974 = icmp eq i32 %507, 0, !dbg !1376
  br i1 %cmp974, label %if.then976, label %if.end977, !dbg !1379

if.then976:                                       ; preds = %do.body973
  br label %inf_leave, !dbg !1376

if.end977:                                        ; preds = %do.body973
  %508 = load i32, ptr %have, align 4, !dbg !1379
  %dec978 = add i32 %508, -1, !dbg !1379
  store i32 %dec978, ptr %have, align 4, !dbg !1379
  %509 = load ptr, ptr %next, align 8, !dbg !1379
  %incdec.ptr979 = getelementptr i8, ptr %509, i32 1, !dbg !1379
  store ptr %incdec.ptr979, ptr %next, align 8, !dbg !1379
  %510 = load i8, ptr %509, align 1, !dbg !1379
  %conv980 = zext i8 %510 to i64, !dbg !1379
  %511 = load i32, ptr %bits, align 4, !dbg !1379
  %sh_prom981 = zext i32 %511 to i64, !dbg !1379
  %shl982 = shl i64 %conv980, %sh_prom981, !dbg !1379
  %512 = load i64, ptr %hold, align 8, !dbg !1379
  %add983 = add i64 %512, %shl982, !dbg !1379
  store i64 %add983, ptr %hold, align 8, !dbg !1379
  %513 = load i32, ptr %bits, align 4, !dbg !1379
  %add984 = add i32 %513, 8, !dbg !1379
  store i32 %add984, ptr %bits, align 4, !dbg !1379
  br label %do.cond985, !dbg !1379

do.cond985:                                       ; preds = %if.end977
  br label %do.end986, !dbg !1379

do.end986:                                        ; preds = %do.cond985
  br label %for.cond945, !dbg !1380, !llvm.loop !1381

for.end987:                                       ; preds = %if.then971
  br label %do.body988, !dbg !1384

do.body988:                                       ; preds = %for.end987
  %bits989 = getelementptr inbounds %struct.code, ptr %last, i32 0, i32 1, !dbg !1385
  %514 = load i8, ptr %bits989, align 1, !dbg !1385
  %conv990 = zext i8 %514 to i32, !dbg !1385
  %515 = load i64, ptr %hold, align 8, !dbg !1385
  %sh_prom991 = zext i32 %conv990 to i64, !dbg !1385
  %shr992 = lshr i64 %515, %sh_prom991, !dbg !1385
  store i64 %shr992, ptr %hold, align 8, !dbg !1385
  %bits993 = getelementptr inbounds %struct.code, ptr %last, i32 0, i32 1, !dbg !1385
  %516 = load i8, ptr %bits993, align 1, !dbg !1385
  %conv994 = zext i8 %516 to i32, !dbg !1385
  %517 = load i32, ptr %bits, align 4, !dbg !1385
  %sub995 = sub i32 %517, %conv994, !dbg !1385
  store i32 %sub995, ptr %bits, align 4, !dbg !1385
  br label %do.cond996, !dbg !1385

do.cond996:                                       ; preds = %do.body988
  br label %do.end997, !dbg !1385

do.end997:                                        ; preds = %do.cond996
  br label %if.end998, !dbg !1387

if.end998:                                        ; preds = %do.end997, %for.end938
  br label %do.body999, !dbg !1388

do.body999:                                       ; preds = %if.end998
  %bits1000 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 1, !dbg !1389
  %518 = load i8, ptr %bits1000, align 1, !dbg !1389
  %conv1001 = zext i8 %518 to i32, !dbg !1389
  %519 = load i64, ptr %hold, align 8, !dbg !1389
  %sh_prom1002 = zext i32 %conv1001 to i64, !dbg !1389
  %shr1003 = lshr i64 %519, %sh_prom1002, !dbg !1389
  store i64 %shr1003, ptr %hold, align 8, !dbg !1389
  %bits1004 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 1, !dbg !1389
  %520 = load i8, ptr %bits1004, align 1, !dbg !1389
  %conv1005 = zext i8 %520 to i32, !dbg !1389
  %521 = load i32, ptr %bits, align 4, !dbg !1389
  %sub1006 = sub i32 %521, %conv1005, !dbg !1389
  store i32 %sub1006, ptr %bits, align 4, !dbg !1389
  br label %do.cond1007, !dbg !1389

do.cond1007:                                      ; preds = %do.body999
  br label %do.end1008, !dbg !1389

do.end1008:                                       ; preds = %do.cond1007
  %op1009 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 0, !dbg !1391
  %522 = load i8, ptr %op1009, align 2, !dbg !1391
  %conv1010 = zext i8 %522 to i32, !dbg !1393
  %and1011 = and i32 %conv1010, 64, !dbg !1394
  %tobool1012 = icmp ne i32 %and1011, 0, !dbg !1394
  br i1 %tobool1012, label %if.then1013, label %if.end1016, !dbg !1395

if.then1013:                                      ; preds = %do.end1008
  %523 = load ptr, ptr %strm.addr, align 8, !dbg !1396
  %msg1014 = getelementptr inbounds %struct.z_stream_s, ptr %523, i32 0, i32 6, !dbg !1398
  store ptr @.str.11, ptr %msg1014, align 8, !dbg !1399
  %524 = load ptr, ptr %state, align 8, !dbg !1400
  %mode1015 = getelementptr inbounds %struct.inflate_state, ptr %524, i32 0, i32 0, !dbg !1401
  store i32 27, ptr %mode1015, align 8, !dbg !1402
  br label %sw.epilog1214, !dbg !1403

if.end1016:                                       ; preds = %do.end1008
  %val1017 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 2, !dbg !1404
  %525 = load i16, ptr %val1017, align 2, !dbg !1404
  %conv1018 = zext i16 %525 to i32, !dbg !1405
  %526 = load ptr, ptr %state, align 8, !dbg !1406
  %offset = getelementptr inbounds %struct.inflate_state, ptr %526, i32 0, i32 16, !dbg !1407
  store i32 %conv1018, ptr %offset, align 8, !dbg !1408
  %op1019 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 0, !dbg !1409
  %527 = load i8, ptr %op1019, align 2, !dbg !1409
  %conv1020 = zext i8 %527 to i32, !dbg !1410
  %and1021 = and i32 %conv1020, 15, !dbg !1411
  %528 = load ptr, ptr %state, align 8, !dbg !1412
  %extra1022 = getelementptr inbounds %struct.inflate_state, ptr %528, i32 0, i32 17, !dbg !1413
  store i32 %and1021, ptr %extra1022, align 4, !dbg !1414
  %529 = load ptr, ptr %state, align 8, !dbg !1415
  %mode1023 = getelementptr inbounds %struct.inflate_state, ptr %529, i32 0, i32 0, !dbg !1416
  store i32 21, ptr %mode1023, align 8, !dbg !1417
  br label %sw.bb1024, !dbg !1415

sw.bb1024:                                        ; preds = %for.cond, %if.end1016
  %530 = load ptr, ptr %state, align 8, !dbg !1418
  %extra1025 = getelementptr inbounds %struct.inflate_state, ptr %530, i32 0, i32 17, !dbg !1420
  %531 = load i32, ptr %extra1025, align 4, !dbg !1420
  %tobool1026 = icmp ne i32 %531, 0, !dbg !1418
  br i1 %tobool1026, label %if.then1027, label %if.end1066, !dbg !1421

if.then1027:                                      ; preds = %sw.bb1024
  br label %do.body1028, !dbg !1422

do.body1028:                                      ; preds = %if.then1027
  br label %while.cond1029, !dbg !1424

while.cond1029:                                   ; preds = %do.end1047, %do.body1028
  %532 = load i32, ptr %bits, align 4, !dbg !1424
  %533 = load ptr, ptr %state, align 8, !dbg !1424
  %extra1030 = getelementptr inbounds %struct.inflate_state, ptr %533, i32 0, i32 17, !dbg !1424
  %534 = load i32, ptr %extra1030, align 4, !dbg !1424
  %cmp1031 = icmp ult i32 %532, %534, !dbg !1424
  br i1 %cmp1031, label %while.body1033, label %while.end1048, !dbg !1424

while.body1033:                                   ; preds = %while.cond1029
  br label %do.body1034, !dbg !1424

do.body1034:                                      ; preds = %while.body1033
  %535 = load i32, ptr %have, align 4, !dbg !1426
  %cmp1035 = icmp eq i32 %535, 0, !dbg !1426
  br i1 %cmp1035, label %if.then1037, label %if.end1038, !dbg !1429

if.then1037:                                      ; preds = %do.body1034
  br label %inf_leave, !dbg !1426

if.end1038:                                       ; preds = %do.body1034
  %536 = load i32, ptr %have, align 4, !dbg !1429
  %dec1039 = add i32 %536, -1, !dbg !1429
  store i32 %dec1039, ptr %have, align 4, !dbg !1429
  %537 = load ptr, ptr %next, align 8, !dbg !1429
  %incdec.ptr1040 = getelementptr i8, ptr %537, i32 1, !dbg !1429
  store ptr %incdec.ptr1040, ptr %next, align 8, !dbg !1429
  %538 = load i8, ptr %537, align 1, !dbg !1429
  %conv1041 = zext i8 %538 to i64, !dbg !1429
  %539 = load i32, ptr %bits, align 4, !dbg !1429
  %sh_prom1042 = zext i32 %539 to i64, !dbg !1429
  %shl1043 = shl i64 %conv1041, %sh_prom1042, !dbg !1429
  %540 = load i64, ptr %hold, align 8, !dbg !1429
  %add1044 = add i64 %540, %shl1043, !dbg !1429
  store i64 %add1044, ptr %hold, align 8, !dbg !1429
  %541 = load i32, ptr %bits, align 4, !dbg !1429
  %add1045 = add i32 %541, 8, !dbg !1429
  store i32 %add1045, ptr %bits, align 4, !dbg !1429
  br label %do.cond1046, !dbg !1429

do.cond1046:                                      ; preds = %if.end1038
  br label %do.end1047, !dbg !1429

do.end1047:                                       ; preds = %do.cond1046
  br label %while.cond1029, !dbg !1424, !llvm.loop !1430

while.end1048:                                    ; preds = %while.cond1029
  br label %do.cond1049, !dbg !1424

do.cond1049:                                      ; preds = %while.end1048
  br label %do.end1050, !dbg !1424

do.end1050:                                       ; preds = %do.cond1049
  %542 = load i64, ptr %hold, align 8, !dbg !1431
  %conv1051 = trunc i64 %542 to i32, !dbg !1431
  %543 = load ptr, ptr %state, align 8, !dbg !1431
  %extra1052 = getelementptr inbounds %struct.inflate_state, ptr %543, i32 0, i32 17, !dbg !1431
  %544 = load i32, ptr %extra1052, align 4, !dbg !1431
  %shl1053 = shl i32 1, %544, !dbg !1431
  %sub1054 = sub i32 %shl1053, 1, !dbg !1431
  %and1055 = and i32 %conv1051, %sub1054, !dbg !1431
  %545 = load ptr, ptr %state, align 8, !dbg !1432
  %offset1056 = getelementptr inbounds %struct.inflate_state, ptr %545, i32 0, i32 16, !dbg !1433
  %546 = load i32, ptr %offset1056, align 8, !dbg !1434
  %add1057 = add i32 %546, %and1055, !dbg !1434
  store i32 %add1057, ptr %offset1056, align 8, !dbg !1434
  br label %do.body1058, !dbg !1435

do.body1058:                                      ; preds = %do.end1050
  %547 = load ptr, ptr %state, align 8, !dbg !1436
  %extra1059 = getelementptr inbounds %struct.inflate_state, ptr %547, i32 0, i32 17, !dbg !1436
  %548 = load i32, ptr %extra1059, align 4, !dbg !1436
  %549 = load i64, ptr %hold, align 8, !dbg !1436
  %sh_prom1060 = zext i32 %548 to i64, !dbg !1436
  %shr1061 = lshr i64 %549, %sh_prom1060, !dbg !1436
  store i64 %shr1061, ptr %hold, align 8, !dbg !1436
  %550 = load ptr, ptr %state, align 8, !dbg !1436
  %extra1062 = getelementptr inbounds %struct.inflate_state, ptr %550, i32 0, i32 17, !dbg !1436
  %551 = load i32, ptr %extra1062, align 4, !dbg !1436
  %552 = load i32, ptr %bits, align 4, !dbg !1436
  %sub1063 = sub i32 %552, %551, !dbg !1436
  store i32 %sub1063, ptr %bits, align 4, !dbg !1436
  br label %do.cond1064, !dbg !1436

do.cond1064:                                      ; preds = %do.body1058
  br label %do.end1065, !dbg !1436

do.end1065:                                       ; preds = %do.cond1064
  br label %if.end1066, !dbg !1438

if.end1066:                                       ; preds = %do.end1065, %sw.bb1024
  %553 = load ptr, ptr %state, align 8, !dbg !1439
  %offset1067 = getelementptr inbounds %struct.inflate_state, ptr %553, i32 0, i32 16, !dbg !1441
  %554 = load i32, ptr %offset1067, align 8, !dbg !1441
  %555 = load ptr, ptr %state, align 8, !dbg !1442
  %whave = getelementptr inbounds %struct.inflate_state, ptr %555, i32 0, i32 10, !dbg !1443
  %556 = load i32, ptr %whave, align 8, !dbg !1443
  %557 = load i32, ptr %out, align 4, !dbg !1444
  %add1068 = add i32 %556, %557, !dbg !1445
  %558 = load i32, ptr %left, align 4, !dbg !1446
  %sub1069 = sub i32 %add1068, %558, !dbg !1447
  %cmp1070 = icmp ugt i32 %554, %sub1069, !dbg !1448
  br i1 %cmp1070, label %if.then1072, label %if.end1075, !dbg !1449

if.then1072:                                      ; preds = %if.end1066
  %559 = load ptr, ptr %strm.addr, align 8, !dbg !1450
  %msg1073 = getelementptr inbounds %struct.z_stream_s, ptr %559, i32 0, i32 6, !dbg !1452
  store ptr @.str.12, ptr %msg1073, align 8, !dbg !1453
  %560 = load ptr, ptr %state, align 8, !dbg !1454
  %mode1074 = getelementptr inbounds %struct.inflate_state, ptr %560, i32 0, i32 0, !dbg !1455
  store i32 27, ptr %mode1074, align 8, !dbg !1456
  br label %sw.epilog1214, !dbg !1457

if.end1075:                                       ; preds = %if.end1066
  %561 = load ptr, ptr %state, align 8, !dbg !1458
  %mode1076 = getelementptr inbounds %struct.inflate_state, ptr %561, i32 0, i32 0, !dbg !1459
  store i32 22, ptr %mode1076, align 8, !dbg !1460
  br label %sw.bb1077, !dbg !1458

sw.bb1077:                                        ; preds = %for.cond, %if.end1075
  %562 = load i32, ptr %left, align 4, !dbg !1461
  %cmp1078 = icmp eq i32 %562, 0, !dbg !1463
  br i1 %cmp1078, label %if.then1080, label %if.end1081, !dbg !1464

if.then1080:                                      ; preds = %sw.bb1077
  br label %inf_leave, !dbg !1465

if.end1081:                                       ; preds = %sw.bb1077
  %563 = load i32, ptr %out, align 4, !dbg !1466
  %564 = load i32, ptr %left, align 4, !dbg !1467
  %sub1082 = sub i32 %563, %564, !dbg !1468
  store i32 %sub1082, ptr %copy, align 4, !dbg !1469
  %565 = load ptr, ptr %state, align 8, !dbg !1470
  %offset1083 = getelementptr inbounds %struct.inflate_state, ptr %565, i32 0, i32 16, !dbg !1472
  %566 = load i32, ptr %offset1083, align 8, !dbg !1472
  %567 = load i32, ptr %copy, align 4, !dbg !1473
  %cmp1084 = icmp ugt i32 %566, %567, !dbg !1474
  br i1 %cmp1084, label %if.then1086, label %if.else1110, !dbg !1475

if.then1086:                                      ; preds = %if.end1081
  %568 = load ptr, ptr %state, align 8, !dbg !1476
  %offset1087 = getelementptr inbounds %struct.inflate_state, ptr %568, i32 0, i32 16, !dbg !1478
  %569 = load i32, ptr %offset1087, align 8, !dbg !1478
  %570 = load i32, ptr %copy, align 4, !dbg !1479
  %sub1088 = sub i32 %569, %570, !dbg !1480
  store i32 %sub1088, ptr %copy, align 4, !dbg !1481
  %571 = load i32, ptr %copy, align 4, !dbg !1482
  %572 = load ptr, ptr %state, align 8, !dbg !1484
  %write = getelementptr inbounds %struct.inflate_state, ptr %572, i32 0, i32 11, !dbg !1485
  %573 = load i32, ptr %write, align 4, !dbg !1485
  %cmp1089 = icmp ugt i32 %571, %573, !dbg !1486
  br i1 %cmp1089, label %if.then1091, label %if.else1097, !dbg !1487

if.then1091:                                      ; preds = %if.then1086
  %574 = load ptr, ptr %state, align 8, !dbg !1488
  %write1092 = getelementptr inbounds %struct.inflate_state, ptr %574, i32 0, i32 11, !dbg !1490
  %575 = load i32, ptr %write1092, align 4, !dbg !1490
  %576 = load i32, ptr %copy, align 4, !dbg !1491
  %sub1093 = sub i32 %576, %575, !dbg !1491
  store i32 %sub1093, ptr %copy, align 4, !dbg !1491
  %577 = load ptr, ptr %state, align 8, !dbg !1492
  %window = getelementptr inbounds %struct.inflate_state, ptr %577, i32 0, i32 12, !dbg !1493
  %578 = load ptr, ptr %window, align 8, !dbg !1493
  %579 = load ptr, ptr %state, align 8, !dbg !1494
  %wsize = getelementptr inbounds %struct.inflate_state, ptr %579, i32 0, i32 9, !dbg !1495
  %580 = load i32, ptr %wsize, align 4, !dbg !1495
  %581 = load i32, ptr %copy, align 4, !dbg !1496
  %sub1094 = sub i32 %580, %581, !dbg !1497
  %idx.ext1095 = zext i32 %sub1094 to i64, !dbg !1498
  %add.ptr1096 = getelementptr i8, ptr %578, i64 %idx.ext1095, !dbg !1498
  store ptr %add.ptr1096, ptr %from, align 8, !dbg !1499
  br label %if.end1103, !dbg !1500

if.else1097:                                      ; preds = %if.then1086
  %582 = load ptr, ptr %state, align 8, !dbg !1501
  %window1098 = getelementptr inbounds %struct.inflate_state, ptr %582, i32 0, i32 12, !dbg !1502
  %583 = load ptr, ptr %window1098, align 8, !dbg !1502
  %584 = load ptr, ptr %state, align 8, !dbg !1503
  %write1099 = getelementptr inbounds %struct.inflate_state, ptr %584, i32 0, i32 11, !dbg !1504
  %585 = load i32, ptr %write1099, align 4, !dbg !1504
  %586 = load i32, ptr %copy, align 4, !dbg !1505
  %sub1100 = sub i32 %585, %586, !dbg !1506
  %idx.ext1101 = zext i32 %sub1100 to i64, !dbg !1507
  %add.ptr1102 = getelementptr i8, ptr %583, i64 %idx.ext1101, !dbg !1507
  store ptr %add.ptr1102, ptr %from, align 8, !dbg !1508
  br label %if.end1103

if.end1103:                                       ; preds = %if.else1097, %if.then1091
  %587 = load i32, ptr %copy, align 4, !dbg !1509
  %588 = load ptr, ptr %state, align 8, !dbg !1511
  %length1104 = getelementptr inbounds %struct.inflate_state, ptr %588, i32 0, i32 15, !dbg !1512
  %589 = load i32, ptr %length1104, align 4, !dbg !1512
  %cmp1105 = icmp ugt i32 %587, %589, !dbg !1513
  br i1 %cmp1105, label %if.then1107, label %if.end1109, !dbg !1514

if.then1107:                                      ; preds = %if.end1103
  %590 = load ptr, ptr %state, align 8, !dbg !1515
  %length1108 = getelementptr inbounds %struct.inflate_state, ptr %590, i32 0, i32 15, !dbg !1516
  %591 = load i32, ptr %length1108, align 4, !dbg !1516
  store i32 %591, ptr %copy, align 4, !dbg !1517
  br label %if.end1109, !dbg !1518

if.end1109:                                       ; preds = %if.then1107, %if.end1103
  br label %if.end1115, !dbg !1519

if.else1110:                                      ; preds = %if.end1081
  %592 = load ptr, ptr %put, align 8, !dbg !1520
  %593 = load ptr, ptr %state, align 8, !dbg !1522
  %offset1111 = getelementptr inbounds %struct.inflate_state, ptr %593, i32 0, i32 16, !dbg !1523
  %594 = load i32, ptr %offset1111, align 8, !dbg !1523
  %idx.ext1112 = zext i32 %594 to i64, !dbg !1524
  %idx.neg = sub i64 0, %idx.ext1112, !dbg !1524
  %add.ptr1113 = getelementptr i8, ptr %592, i64 %idx.neg, !dbg !1524
  store ptr %add.ptr1113, ptr %from, align 8, !dbg !1525
  %595 = load ptr, ptr %state, align 8, !dbg !1526
  %length1114 = getelementptr inbounds %struct.inflate_state, ptr %595, i32 0, i32 15, !dbg !1527
  %596 = load i32, ptr %length1114, align 4, !dbg !1527
  store i32 %596, ptr %copy, align 4, !dbg !1528
  br label %if.end1115

if.end1115:                                       ; preds = %if.else1110, %if.end1109
  %597 = load i32, ptr %copy, align 4, !dbg !1529
  %598 = load i32, ptr %left, align 4, !dbg !1531
  %cmp1116 = icmp ugt i32 %597, %598, !dbg !1532
  br i1 %cmp1116, label %if.then1118, label %if.end1119, !dbg !1533

if.then1118:                                      ; preds = %if.end1115
  %599 = load i32, ptr %left, align 4, !dbg !1534
  store i32 %599, ptr %copy, align 4, !dbg !1535
  br label %if.end1119, !dbg !1536

if.end1119:                                       ; preds = %if.then1118, %if.end1115
  %600 = load i32, ptr %copy, align 4, !dbg !1537
  %601 = load i32, ptr %left, align 4, !dbg !1538
  %sub1120 = sub i32 %601, %600, !dbg !1538
  store i32 %sub1120, ptr %left, align 4, !dbg !1538
  %602 = load i32, ptr %copy, align 4, !dbg !1539
  %603 = load ptr, ptr %state, align 8, !dbg !1540
  %length1121 = getelementptr inbounds %struct.inflate_state, ptr %603, i32 0, i32 15, !dbg !1541
  %604 = load i32, ptr %length1121, align 4, !dbg !1542
  %sub1122 = sub i32 %604, %602, !dbg !1542
  store i32 %sub1122, ptr %length1121, align 4, !dbg !1542
  br label %do.body1123, !dbg !1543

do.body1123:                                      ; preds = %do.cond1126, %if.end1119
  %605 = load ptr, ptr %from, align 8, !dbg !1544
  %incdec.ptr1124 = getelementptr i8, ptr %605, i32 1, !dbg !1544
  store ptr %incdec.ptr1124, ptr %from, align 8, !dbg !1544
  %606 = load i8, ptr %605, align 1, !dbg !1546
  %607 = load ptr, ptr %put, align 8, !dbg !1547
  %incdec.ptr1125 = getelementptr i8, ptr %607, i32 1, !dbg !1547
  store ptr %incdec.ptr1125, ptr %put, align 8, !dbg !1547
  store i8 %606, ptr %607, align 1, !dbg !1548
  br label %do.cond1126, !dbg !1549

do.cond1126:                                      ; preds = %do.body1123
  %608 = load i32, ptr %copy, align 4, !dbg !1550
  %dec1127 = add i32 %608, -1, !dbg !1550
  store i32 %dec1127, ptr %copy, align 4, !dbg !1550
  %tobool1128 = icmp ne i32 %dec1127, 0, !dbg !1549
  br i1 %tobool1128, label %do.body1123, label %do.end1129, !dbg !1549, !llvm.loop !1551

do.end1129:                                       ; preds = %do.cond1126
  %609 = load ptr, ptr %state, align 8, !dbg !1553
  %length1130 = getelementptr inbounds %struct.inflate_state, ptr %609, i32 0, i32 15, !dbg !1555
  %610 = load i32, ptr %length1130, align 4, !dbg !1555
  %cmp1131 = icmp eq i32 %610, 0, !dbg !1556
  br i1 %cmp1131, label %if.then1133, label %if.end1135, !dbg !1557

if.then1133:                                      ; preds = %do.end1129
  %611 = load ptr, ptr %state, align 8, !dbg !1558
  %mode1134 = getelementptr inbounds %struct.inflate_state, ptr %611, i32 0, i32 0, !dbg !1559
  store i32 18, ptr %mode1134, align 8, !dbg !1560
  br label %if.end1135, !dbg !1558

if.end1135:                                       ; preds = %if.then1133, %do.end1129
  br label %sw.epilog1214, !dbg !1561

sw.bb1136:                                        ; preds = %for.cond
  %612 = load i32, ptr %left, align 4, !dbg !1562
  %cmp1137 = icmp eq i32 %612, 0, !dbg !1564
  br i1 %cmp1137, label %if.then1139, label %if.end1140, !dbg !1565

if.then1139:                                      ; preds = %sw.bb1136
  br label %inf_leave, !dbg !1566

if.end1140:                                       ; preds = %sw.bb1136
  %613 = load ptr, ptr %state, align 8, !dbg !1567
  %length1141 = getelementptr inbounds %struct.inflate_state, ptr %613, i32 0, i32 15, !dbg !1568
  %614 = load i32, ptr %length1141, align 4, !dbg !1568
  %conv1142 = trunc i32 %614 to i8, !dbg !1569
  %615 = load ptr, ptr %put, align 8, !dbg !1570
  %incdec.ptr1143 = getelementptr i8, ptr %615, i32 1, !dbg !1570
  store ptr %incdec.ptr1143, ptr %put, align 8, !dbg !1570
  store i8 %conv1142, ptr %615, align 1, !dbg !1571
  %616 = load i32, ptr %left, align 4, !dbg !1572
  %dec1144 = add i32 %616, -1, !dbg !1572
  store i32 %dec1144, ptr %left, align 4, !dbg !1572
  %617 = load ptr, ptr %state, align 8, !dbg !1573
  %mode1145 = getelementptr inbounds %struct.inflate_state, ptr %617, i32 0, i32 0, !dbg !1574
  store i32 18, ptr %mode1145, align 8, !dbg !1575
  br label %sw.epilog1214, !dbg !1576

sw.bb1146:                                        ; preds = %for.cond
  %618 = load ptr, ptr %state, align 8, !dbg !1577
  %wrap1147 = getelementptr inbounds %struct.inflate_state, ptr %618, i32 0, i32 2, !dbg !1579
  %619 = load i32, ptr %wrap1147, align 8, !dbg !1579
  %tobool1148 = icmp ne i32 %619, 0, !dbg !1577
  br i1 %tobool1148, label %if.then1149, label %if.end1208, !dbg !1580

if.then1149:                                      ; preds = %sw.bb1146
  br label %do.body1150, !dbg !1581

do.body1150:                                      ; preds = %if.then1149
  br label %while.cond1151, !dbg !1583

while.cond1151:                                   ; preds = %do.end1168, %do.body1150
  %620 = load i32, ptr %bits, align 4, !dbg !1583
  %cmp1152 = icmp ult i32 %620, 32, !dbg !1583
  br i1 %cmp1152, label %while.body1154, label %while.end1169, !dbg !1583

while.body1154:                                   ; preds = %while.cond1151
  br label %do.body1155, !dbg !1583

do.body1155:                                      ; preds = %while.body1154
  %621 = load i32, ptr %have, align 4, !dbg !1585
  %cmp1156 = icmp eq i32 %621, 0, !dbg !1585
  br i1 %cmp1156, label %if.then1158, label %if.end1159, !dbg !1588

if.then1158:                                      ; preds = %do.body1155
  br label %inf_leave, !dbg !1585

if.end1159:                                       ; preds = %do.body1155
  %622 = load i32, ptr %have, align 4, !dbg !1588
  %dec1160 = add i32 %622, -1, !dbg !1588
  store i32 %dec1160, ptr %have, align 4, !dbg !1588
  %623 = load ptr, ptr %next, align 8, !dbg !1588
  %incdec.ptr1161 = getelementptr i8, ptr %623, i32 1, !dbg !1588
  store ptr %incdec.ptr1161, ptr %next, align 8, !dbg !1588
  %624 = load i8, ptr %623, align 1, !dbg !1588
  %conv1162 = zext i8 %624 to i64, !dbg !1588
  %625 = load i32, ptr %bits, align 4, !dbg !1588
  %sh_prom1163 = zext i32 %625 to i64, !dbg !1588
  %shl1164 = shl i64 %conv1162, %sh_prom1163, !dbg !1588
  %626 = load i64, ptr %hold, align 8, !dbg !1588
  %add1165 = add i64 %626, %shl1164, !dbg !1588
  store i64 %add1165, ptr %hold, align 8, !dbg !1588
  %627 = load i32, ptr %bits, align 4, !dbg !1588
  %add1166 = add i32 %627, 8, !dbg !1588
  store i32 %add1166, ptr %bits, align 4, !dbg !1588
  br label %do.cond1167, !dbg !1588

do.cond1167:                                      ; preds = %if.end1159
  br label %do.end1168, !dbg !1588

do.end1168:                                       ; preds = %do.cond1167
  br label %while.cond1151, !dbg !1583, !llvm.loop !1589

while.end1169:                                    ; preds = %while.cond1151
  br label %do.cond1170, !dbg !1583

do.cond1170:                                      ; preds = %while.end1169
  br label %do.end1171, !dbg !1583

do.end1171:                                       ; preds = %do.cond1170
  %628 = load i32, ptr %left, align 4, !dbg !1590
  %629 = load i32, ptr %out, align 4, !dbg !1591
  %sub1172 = sub i32 %629, %628, !dbg !1591
  store i32 %sub1172, ptr %out, align 4, !dbg !1591
  %630 = load i32, ptr %out, align 4, !dbg !1592
  %conv1173 = zext i32 %630 to i64, !dbg !1592
  %631 = load ptr, ptr %strm.addr, align 8, !dbg !1593
  %total_out = getelementptr inbounds %struct.z_stream_s, ptr %631, i32 0, i32 5, !dbg !1594
  %632 = load i64, ptr %total_out, align 8, !dbg !1595
  %add1174 = add i64 %632, %conv1173, !dbg !1595
  store i64 %add1174, ptr %total_out, align 8, !dbg !1595
  %633 = load i32, ptr %out, align 4, !dbg !1596
  %conv1175 = zext i32 %633 to i64, !dbg !1596
  %634 = load ptr, ptr %state, align 8, !dbg !1597
  %total = getelementptr inbounds %struct.inflate_state, ptr %634, i32 0, i32 7, !dbg !1598
  %635 = load i64, ptr %total, align 8, !dbg !1599
  %add1176 = add i64 %635, %conv1175, !dbg !1599
  store i64 %add1176, ptr %total, align 8, !dbg !1599
  %636 = load i32, ptr %out, align 4, !dbg !1600
  %tobool1177 = icmp ne i32 %636, 0, !dbg !1600
  br i1 %tobool1177, label %if.then1178, label %if.end1186, !dbg !1602

if.then1178:                                      ; preds = %do.end1171
  %637 = load ptr, ptr %state, align 8, !dbg !1603
  %check1179 = getelementptr inbounds %struct.inflate_state, ptr %637, i32 0, i32 6, !dbg !1603
  %638 = load i64, ptr %check1179, align 8, !dbg !1603
  %639 = load ptr, ptr %put, align 8, !dbg !1603
  %640 = load i32, ptr %out, align 4, !dbg !1603
  %idx.ext1180 = zext i32 %640 to i64, !dbg !1603
  %idx.neg1181 = sub i64 0, %idx.ext1180, !dbg !1603
  %add.ptr1182 = getelementptr i8, ptr %639, i64 %idx.neg1181, !dbg !1603
  %641 = load i32, ptr %out, align 4, !dbg !1603
  %call1183 = call i64 @zlib_adler32(i64 noundef %638, ptr noundef %add.ptr1182, i32 noundef %641) #7, !dbg !1603
  %642 = load ptr, ptr %state, align 8, !dbg !1604
  %check1184 = getelementptr inbounds %struct.inflate_state, ptr %642, i32 0, i32 6, !dbg !1605
  store i64 %call1183, ptr %check1184, align 8, !dbg !1606
  %643 = load ptr, ptr %strm.addr, align 8, !dbg !1607
  %adler1185 = getelementptr inbounds %struct.z_stream_s, ptr %643, i32 0, i32 10, !dbg !1608
  store i64 %call1183, ptr %adler1185, align 8, !dbg !1609
  br label %if.end1186, !dbg !1607

if.end1186:                                       ; preds = %if.then1178, %do.end1171
  %644 = load i32, ptr %left, align 4, !dbg !1610
  store i32 %644, ptr %out, align 4, !dbg !1611
  %645 = load i64, ptr %hold, align 8, !dbg !1612
  %shr1187 = lshr i64 %645, 24, !dbg !1612
  %and1188 = and i64 %shr1187, 255, !dbg !1612
  %646 = load i64, ptr %hold, align 8, !dbg !1612
  %shr1189 = lshr i64 %646, 8, !dbg !1612
  %and1190 = and i64 %shr1189, 65280, !dbg !1612
  %add1191 = add i64 %and1188, %and1190, !dbg !1612
  %647 = load i64, ptr %hold, align 8, !dbg !1612
  %and1192 = and i64 %647, 65280, !dbg !1612
  %shl1193 = shl i64 %and1192, 8, !dbg !1612
  %add1194 = add i64 %add1191, %shl1193, !dbg !1612
  %648 = load i64, ptr %hold, align 8, !dbg !1612
  %and1195 = and i64 %648, 255, !dbg !1612
  %shl1196 = shl i64 %and1195, 24, !dbg !1612
  %add1197 = add i64 %add1194, %shl1196, !dbg !1612
  %649 = load ptr, ptr %state, align 8, !dbg !1614
  %check1198 = getelementptr inbounds %struct.inflate_state, ptr %649, i32 0, i32 6, !dbg !1615
  %650 = load i64, ptr %check1198, align 8, !dbg !1615
  %cmp1199 = icmp ne i64 %add1197, %650, !dbg !1616
  br i1 %cmp1199, label %if.then1201, label %if.end1204, !dbg !1617

if.then1201:                                      ; preds = %if.end1186
  %651 = load ptr, ptr %strm.addr, align 8, !dbg !1618
  %msg1202 = getelementptr inbounds %struct.z_stream_s, ptr %651, i32 0, i32 6, !dbg !1620
  store ptr @.str.13, ptr %msg1202, align 8, !dbg !1621
  %652 = load ptr, ptr %state, align 8, !dbg !1622
  %mode1203 = getelementptr inbounds %struct.inflate_state, ptr %652, i32 0, i32 0, !dbg !1623
  store i32 27, ptr %mode1203, align 8, !dbg !1624
  br label %sw.epilog1214, !dbg !1625

if.end1204:                                       ; preds = %if.end1186
  br label %do.body1205, !dbg !1626

do.body1205:                                      ; preds = %if.end1204
  store i64 0, ptr %hold, align 8, !dbg !1627
  store i32 0, ptr %bits, align 4, !dbg !1627
  br label %do.cond1206, !dbg !1627

do.cond1206:                                      ; preds = %do.body1205
  br label %do.end1207, !dbg !1627

do.end1207:                                       ; preds = %do.cond1206
  br label %if.end1208, !dbg !1629

if.end1208:                                       ; preds = %do.end1207, %sw.bb1146
  %653 = load ptr, ptr %state, align 8, !dbg !1630
  %mode1209 = getelementptr inbounds %struct.inflate_state, ptr %653, i32 0, i32 0, !dbg !1631
  store i32 26, ptr %mode1209, align 8, !dbg !1632
  br label %sw.bb1210, !dbg !1630

sw.bb1210:                                        ; preds = %for.cond, %if.end1208
  store i32 1, ptr %ret, align 4, !dbg !1633
  br label %inf_leave, !dbg !1634

sw.bb1211:                                        ; preds = %for.cond
  store i32 -3, ptr %ret, align 4, !dbg !1635
  br label %inf_leave, !dbg !1636

sw.bb1212:                                        ; preds = %for.cond
  store i32 -4, ptr %retval, align 4, !dbg !1637
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1637

sw.bb1213:                                        ; preds = %for.cond
  br label %sw.default, !dbg !1638

sw.default:                                       ; preds = %for.cond, %sw.bb1213
  store i32 -2, ptr %retval, align 4, !dbg !1639
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1639

sw.epilog1214:                                    ; preds = %if.then1201, %if.end1140, %if.end1135, %if.then1072, %if.then1013, %if.then856, %if.then849, %if.then842, %do.end730, %if.then697, %if.then680, %if.then663, %if.then392, %if.then323, %if.end267, %if.end259, %if.then234, %do.end198, %do.end150, %do.end70, %if.then60, %if.then47, %if.then40, %if.then19
  br label %for.cond, !dbg !1640, !llvm.loop !1641

inf_leave:                                        ; preds = %sw.bb1211, %sw.bb1210, %if.then1158, %if.then1139, %if.then1080, %if.then1037, %if.then976, %if.then927, %if.then877, %if.then802, %if.then750, %if.then602, %if.then558, %if.then496, %if.then450, %if.then425, %if.then344, %if.then278, %if.then258, %if.then216, %if.then161, %if.then134, %if.then80, %if.then28
  call void @llvm.dbg.label(metadata !245), !dbg !1644
  br label %do.body1215, !dbg !1645

do.body1215:                                      ; preds = %inf_leave
  %654 = load ptr, ptr %put, align 8, !dbg !1646
  %655 = load ptr, ptr %strm.addr, align 8, !dbg !1646
  %next_out1216 = getelementptr inbounds %struct.z_stream_s, ptr %655, i32 0, i32 3, !dbg !1646
  store ptr %654, ptr %next_out1216, align 8, !dbg !1646
  %656 = load i32, ptr %left, align 4, !dbg !1646
  %conv1217 = zext i32 %656 to i64, !dbg !1646
  %657 = load ptr, ptr %strm.addr, align 8, !dbg !1646
  %avail_out1218 = getelementptr inbounds %struct.z_stream_s, ptr %657, i32 0, i32 4, !dbg !1646
  store i64 %conv1217, ptr %avail_out1218, align 8, !dbg !1646
  %658 = load ptr, ptr %next, align 8, !dbg !1646
  %659 = load ptr, ptr %strm.addr, align 8, !dbg !1646
  %next_in1219 = getelementptr inbounds %struct.z_stream_s, ptr %659, i32 0, i32 0, !dbg !1646
  store ptr %658, ptr %next_in1219, align 8, !dbg !1646
  %660 = load i32, ptr %have, align 4, !dbg !1646
  %conv1220 = zext i32 %660 to i64, !dbg !1646
  %661 = load ptr, ptr %strm.addr, align 8, !dbg !1646
  %avail_in1221 = getelementptr inbounds %struct.z_stream_s, ptr %661, i32 0, i32 1, !dbg !1646
  store i64 %conv1220, ptr %avail_in1221, align 8, !dbg !1646
  %662 = load i64, ptr %hold, align 8, !dbg !1646
  %663 = load ptr, ptr %state, align 8, !dbg !1646
  %hold1222 = getelementptr inbounds %struct.inflate_state, ptr %663, i32 0, i32 13, !dbg !1646
  store i64 %662, ptr %hold1222, align 8, !dbg !1646
  %664 = load i32, ptr %bits, align 4, !dbg !1646
  %665 = load ptr, ptr %state, align 8, !dbg !1646
  %bits1223 = getelementptr inbounds %struct.inflate_state, ptr %665, i32 0, i32 14, !dbg !1646
  store i32 %664, ptr %bits1223, align 8, !dbg !1646
  br label %do.cond1224, !dbg !1646

do.cond1224:                                      ; preds = %do.body1215
  br label %do.end1225, !dbg !1646

do.end1225:                                       ; preds = %do.cond1224
  %666 = load ptr, ptr %state, align 8, !dbg !1648
  %wsize1226 = getelementptr inbounds %struct.inflate_state, ptr %666, i32 0, i32 9, !dbg !1650
  %667 = load i32, ptr %wsize1226, align 4, !dbg !1650
  %tobool1227 = icmp ne i32 %667, 0, !dbg !1648
  br i1 %tobool1227, label %if.then1237, label %lor.lhs.false1228, !dbg !1651

lor.lhs.false1228:                                ; preds = %do.end1225
  %668 = load ptr, ptr %state, align 8, !dbg !1652
  %mode1229 = getelementptr inbounds %struct.inflate_state, ptr %668, i32 0, i32 0, !dbg !1653
  %669 = load i32, ptr %mode1229, align 8, !dbg !1653
  %cmp1230 = icmp ult i32 %669, 24, !dbg !1654
  br i1 %cmp1230, label %land.lhs.true1232, label %if.end1238, !dbg !1655

land.lhs.true1232:                                ; preds = %lor.lhs.false1228
  %670 = load i32, ptr %out, align 4, !dbg !1656
  %conv1233 = zext i32 %670 to i64, !dbg !1656
  %671 = load ptr, ptr %strm.addr, align 8, !dbg !1657
  %avail_out1234 = getelementptr inbounds %struct.z_stream_s, ptr %671, i32 0, i32 4, !dbg !1658
  %672 = load i64, ptr %avail_out1234, align 8, !dbg !1658
  %cmp1235 = icmp ne i64 %conv1233, %672, !dbg !1659
  br i1 %cmp1235, label %if.then1237, label %if.end1238, !dbg !1660

if.then1237:                                      ; preds = %land.lhs.true1232, %do.end1225
  %673 = load ptr, ptr %strm.addr, align 8, !dbg !1661
  %674 = load i32, ptr %out, align 4, !dbg !1662
  call void @zlib_updatewindow(ptr noundef %673, i32 noundef %674) #7, !dbg !1663
  br label %if.end1238, !dbg !1663

if.end1238:                                       ; preds = %if.then1237, %land.lhs.true1232, %lor.lhs.false1228
  %675 = load ptr, ptr %strm.addr, align 8, !dbg !1664
  %avail_in1239 = getelementptr inbounds %struct.z_stream_s, ptr %675, i32 0, i32 1, !dbg !1665
  %676 = load i64, ptr %avail_in1239, align 8, !dbg !1665
  %677 = load i32, ptr %in, align 4, !dbg !1666
  %conv1240 = zext i32 %677 to i64, !dbg !1666
  %sub1241 = sub i64 %conv1240, %676, !dbg !1666
  %conv1242 = trunc i64 %sub1241 to i32, !dbg !1666
  store i32 %conv1242, ptr %in, align 4, !dbg !1666
  %678 = load ptr, ptr %strm.addr, align 8, !dbg !1667
  %avail_out1243 = getelementptr inbounds %struct.z_stream_s, ptr %678, i32 0, i32 4, !dbg !1668
  %679 = load i64, ptr %avail_out1243, align 8, !dbg !1668
  %680 = load i32, ptr %out, align 4, !dbg !1669
  %conv1244 = zext i32 %680 to i64, !dbg !1669
  %sub1245 = sub i64 %conv1244, %679, !dbg !1669
  %conv1246 = trunc i64 %sub1245 to i32, !dbg !1669
  store i32 %conv1246, ptr %out, align 4, !dbg !1669
  %681 = load i32, ptr %in, align 4, !dbg !1670
  %conv1247 = zext i32 %681 to i64, !dbg !1670
  %682 = load ptr, ptr %strm.addr, align 8, !dbg !1671
  %total_in = getelementptr inbounds %struct.z_stream_s, ptr %682, i32 0, i32 2, !dbg !1672
  %683 = load i64, ptr %total_in, align 8, !dbg !1673
  %add1248 = add i64 %683, %conv1247, !dbg !1673
  store i64 %add1248, ptr %total_in, align 8, !dbg !1673
  %684 = load i32, ptr %out, align 4, !dbg !1674
  %conv1249 = zext i32 %684 to i64, !dbg !1674
  %685 = load ptr, ptr %strm.addr, align 8, !dbg !1675
  %total_out1250 = getelementptr inbounds %struct.z_stream_s, ptr %685, i32 0, i32 5, !dbg !1676
  %686 = load i64, ptr %total_out1250, align 8, !dbg !1677
  %add1251 = add i64 %686, %conv1249, !dbg !1677
  store i64 %add1251, ptr %total_out1250, align 8, !dbg !1677
  %687 = load i32, ptr %out, align 4, !dbg !1678
  %conv1252 = zext i32 %687 to i64, !dbg !1678
  %688 = load ptr, ptr %state, align 8, !dbg !1679
  %total1253 = getelementptr inbounds %struct.inflate_state, ptr %688, i32 0, i32 7, !dbg !1680
  %689 = load i64, ptr %total1253, align 8, !dbg !1681
  %add1254 = add i64 %689, %conv1252, !dbg !1681
  store i64 %add1254, ptr %total1253, align 8, !dbg !1681
  %690 = load ptr, ptr %state, align 8, !dbg !1682
  %wrap1255 = getelementptr inbounds %struct.inflate_state, ptr %690, i32 0, i32 2, !dbg !1684
  %691 = load i32, ptr %wrap1255, align 8, !dbg !1684
  %tobool1256 = icmp ne i32 %691, 0, !dbg !1682
  br i1 %tobool1256, label %land.lhs.true1257, label %if.end1268, !dbg !1685

land.lhs.true1257:                                ; preds = %if.end1238
  %692 = load i32, ptr %out, align 4, !dbg !1686
  %tobool1258 = icmp ne i32 %692, 0, !dbg !1686
  br i1 %tobool1258, label %if.then1259, label %if.end1268, !dbg !1687

if.then1259:                                      ; preds = %land.lhs.true1257
  %693 = load ptr, ptr %state, align 8, !dbg !1688
  %check1260 = getelementptr inbounds %struct.inflate_state, ptr %693, i32 0, i32 6, !dbg !1688
  %694 = load i64, ptr %check1260, align 8, !dbg !1688
  %695 = load ptr, ptr %strm.addr, align 8, !dbg !1688
  %next_out1261 = getelementptr inbounds %struct.z_stream_s, ptr %695, i32 0, i32 3, !dbg !1688
  %696 = load ptr, ptr %next_out1261, align 8, !dbg !1688
  %697 = load i32, ptr %out, align 4, !dbg !1688
  %idx.ext1262 = zext i32 %697 to i64, !dbg !1688
  %idx.neg1263 = sub i64 0, %idx.ext1262, !dbg !1688
  %add.ptr1264 = getelementptr i8, ptr %696, i64 %idx.neg1263, !dbg !1688
  %698 = load i32, ptr %out, align 4, !dbg !1688
  %call1265 = call i64 @zlib_adler32(i64 noundef %694, ptr noundef %add.ptr1264, i32 noundef %698) #7, !dbg !1688
  %699 = load ptr, ptr %state, align 8, !dbg !1689
  %check1266 = getelementptr inbounds %struct.inflate_state, ptr %699, i32 0, i32 6, !dbg !1690
  store i64 %call1265, ptr %check1266, align 8, !dbg !1691
  %700 = load ptr, ptr %strm.addr, align 8, !dbg !1692
  %adler1267 = getelementptr inbounds %struct.z_stream_s, ptr %700, i32 0, i32 10, !dbg !1693
  store i64 %call1265, ptr %adler1267, align 8, !dbg !1694
  br label %if.end1268, !dbg !1692

if.end1268:                                       ; preds = %if.then1259, %land.lhs.true1257, %if.end1238
  %701 = load ptr, ptr %state, align 8, !dbg !1695
  %bits1269 = getelementptr inbounds %struct.inflate_state, ptr %701, i32 0, i32 14, !dbg !1696
  %702 = load i32, ptr %bits1269, align 8, !dbg !1696
  %703 = load ptr, ptr %state, align 8, !dbg !1697
  %last1270 = getelementptr inbounds %struct.inflate_state, ptr %703, i32 0, i32 1, !dbg !1698
  %704 = load i32, ptr %last1270, align 4, !dbg !1698
  %tobool1271 = icmp ne i32 %704, 0, !dbg !1697
  %705 = zext i1 %tobool1271 to i64, !dbg !1697
  %cond1272 = select i1 %tobool1271, i32 64, i32 0, !dbg !1697
  %add1273 = add i32 %702, %cond1272, !dbg !1699
  %706 = load ptr, ptr %state, align 8, !dbg !1700
  %mode1274 = getelementptr inbounds %struct.inflate_state, ptr %706, i32 0, i32 0, !dbg !1701
  %707 = load i32, ptr %mode1274, align 8, !dbg !1701
  %cmp1275 = icmp eq i32 %707, 11, !dbg !1702
  %708 = zext i1 %cmp1275 to i64, !dbg !1700
  %cond1277 = select i1 %cmp1275, i32 128, i32 0, !dbg !1700
  %add1278 = add i32 %add1273, %cond1277, !dbg !1703
  %709 = load ptr, ptr %strm.addr, align 8, !dbg !1704
  %data_type = getelementptr inbounds %struct.z_stream_s, ptr %709, i32 0, i32 9, !dbg !1705
  store i32 %add1278, ptr %data_type, align 8, !dbg !1706
  %710 = load i32, ptr %flush.addr, align 4, !dbg !1707
  %cmp1279 = icmp eq i32 %710, 2, !dbg !1709
  br i1 %cmp1279, label %land.lhs.true1281, label %if.end1294, !dbg !1710

land.lhs.true1281:                                ; preds = %if.end1268
  %711 = load i32, ptr %ret, align 4, !dbg !1711
  %cmp1282 = icmp eq i32 %711, 0, !dbg !1712
  br i1 %cmp1282, label %land.lhs.true1284, label %if.end1294, !dbg !1713

land.lhs.true1284:                                ; preds = %land.lhs.true1281
  %712 = load ptr, ptr %strm.addr, align 8, !dbg !1714
  %avail_out1285 = getelementptr inbounds %struct.z_stream_s, ptr %712, i32 0, i32 4, !dbg !1715
  %713 = load i64, ptr %avail_out1285, align 8, !dbg !1715
  %cmp1286 = icmp ne i64 %713, 0, !dbg !1716
  br i1 %cmp1286, label %land.lhs.true1288, label %if.end1294, !dbg !1717

land.lhs.true1288:                                ; preds = %land.lhs.true1284
  %714 = load ptr, ptr %strm.addr, align 8, !dbg !1718
  %avail_in1289 = getelementptr inbounds %struct.z_stream_s, ptr %714, i32 0, i32 1, !dbg !1719
  %715 = load i64, ptr %avail_in1289, align 8, !dbg !1719
  %cmp1290 = icmp eq i64 %715, 0, !dbg !1720
  br i1 %cmp1290, label %if.then1292, label %if.end1294, !dbg !1721

if.then1292:                                      ; preds = %land.lhs.true1288
  %716 = load ptr, ptr %strm.addr, align 8, !dbg !1722
  %call1293 = call i32 @zlib_inflateSyncPacket(ptr noundef %716) #7, !dbg !1723
  store i32 %call1293, ptr %retval, align 4, !dbg !1724
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1724

if.end1294:                                       ; preds = %land.lhs.true1288, %land.lhs.true1284, %land.lhs.true1281, %if.end1268
  %717 = load i32, ptr %in, align 4, !dbg !1725
  %cmp1295 = icmp eq i32 %717, 0, !dbg !1727
  br i1 %cmp1295, label %land.lhs.true1297, label %lor.lhs.false1300, !dbg !1728

land.lhs.true1297:                                ; preds = %if.end1294
  %718 = load i32, ptr %out, align 4, !dbg !1729
  %cmp1298 = icmp eq i32 %718, 0, !dbg !1730
  br i1 %cmp1298, label %land.lhs.true1303, label %lor.lhs.false1300, !dbg !1731

lor.lhs.false1300:                                ; preds = %land.lhs.true1297, %if.end1294
  %719 = load i32, ptr %flush.addr, align 4, !dbg !1732
  %cmp1301 = icmp eq i32 %719, 5, !dbg !1733
  br i1 %cmp1301, label %land.lhs.true1303, label %if.end1307, !dbg !1734

land.lhs.true1303:                                ; preds = %lor.lhs.false1300, %land.lhs.true1297
  %720 = load i32, ptr %ret, align 4, !dbg !1735
  %cmp1304 = icmp eq i32 %720, 0, !dbg !1736
  br i1 %cmp1304, label %if.then1306, label %if.end1307, !dbg !1737

if.then1306:                                      ; preds = %land.lhs.true1303
  store i32 -5, ptr %ret, align 4, !dbg !1738
  br label %if.end1307, !dbg !1739

if.end1307:                                       ; preds = %if.then1306, %land.lhs.true1303, %lor.lhs.false1300
  %721 = load i32, ptr %ret, align 4, !dbg !1740
  store i32 %721, ptr %retval, align 4, !dbg !1741
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1741

cleanup:                                          ; preds = %if.end1307, %if.then1292, %sw.default, %sw.bb1212, %do.end125, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #6, !dbg !1742
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #6, !dbg !1742
  call void @llvm.lifetime.end.p0(i64 4, ptr %last) #6, !dbg !1742
  call void @llvm.lifetime.end.p0(i64 4, ptr %this) #6, !dbg !1742
  call void @llvm.lifetime.end.p0(i64 8, ptr %from) #6, !dbg !1742
  call void @llvm.lifetime.end.p0(i64 4, ptr %copy) #6, !dbg !1742
  call void @llvm.lifetime.end.p0(i64 4, ptr %out) #6, !dbg !1742
  call void @llvm.lifetime.end.p0(i64 4, ptr %in) #6, !dbg !1742
  call void @llvm.lifetime.end.p0(i64 4, ptr %bits) #6, !dbg !1742
  call void @llvm.lifetime.end.p0(i64 8, ptr %hold) #6, !dbg !1742
  call void @llvm.lifetime.end.p0(i64 4, ptr %left) #6, !dbg !1742
  call void @llvm.lifetime.end.p0(i64 4, ptr %have) #6, !dbg !1742
  call void @llvm.lifetime.end.p0(i64 8, ptr %put) #6, !dbg !1742
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #6, !dbg !1742
  call void @llvm.lifetime.end.p0(i64 8, ptr %state) #6, !dbg !1742
  %722 = load i32, ptr %retval, align 4, !dbg !1742
  ret i32 %722, !dbg !1742
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @zlib_adler32(i64 noundef %adler, ptr noundef %buf, i32 noundef %len) #3 align 16 !dbg !1743 {
entry:
  %retval = alloca i64, align 8
  %adler.addr = alloca i64, align 8
  %buf.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %s1 = alloca i64, align 8
  %s2 = alloca i64, align 8
  %k = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %adler, ptr %adler.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %adler.addr, metadata !1749, metadata !DIExpression()), !dbg !1755
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !1750, metadata !DIExpression()), !dbg !1756
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !1751, metadata !DIExpression()), !dbg !1757
  call void @llvm.lifetime.start.p0(i64 8, ptr %s1) #6, !dbg !1758
  call void @llvm.dbg.declare(metadata ptr %s1, metadata !1752, metadata !DIExpression()), !dbg !1759
  %0 = load i64, ptr %adler.addr, align 8, !dbg !1760
  %and = and i64 %0, 65535, !dbg !1761
  store i64 %and, ptr %s1, align 8, !dbg !1759
  call void @llvm.lifetime.start.p0(i64 8, ptr %s2) #6, !dbg !1762
  call void @llvm.dbg.declare(metadata ptr %s2, metadata !1753, metadata !DIExpression()), !dbg !1763
  %1 = load i64, ptr %adler.addr, align 8, !dbg !1764
  %shr = lshr i64 %1, 16, !dbg !1765
  %and1 = and i64 %shr, 65535, !dbg !1766
  store i64 %and1, ptr %s2, align 8, !dbg !1763
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #6, !dbg !1767
  call void @llvm.dbg.declare(metadata ptr %k, metadata !1754, metadata !DIExpression()), !dbg !1768
  %2 = load ptr, ptr %buf.addr, align 8, !dbg !1769
  %cmp = icmp eq ptr %2, null, !dbg !1771
  br i1 %cmp, label %if.then, label %if.end, !dbg !1772

if.then:                                          ; preds = %entry
  store i64 1, ptr %retval, align 8, !dbg !1773
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1773

if.end:                                           ; preds = %entry
  br label %while.cond, !dbg !1774

while.cond:                                       ; preds = %if.end75, %if.end
  %3 = load i32, ptr %len.addr, align 4, !dbg !1775
  %cmp2 = icmp ugt i32 %3, 0, !dbg !1776
  br i1 %cmp2, label %while.body, label %while.end77, !dbg !1774

while.body:                                       ; preds = %while.cond
  %4 = load i32, ptr %len.addr, align 4, !dbg !1777
  %cmp3 = icmp ult i32 %4, 5552, !dbg !1779
  br i1 %cmp3, label %cond.true, label %cond.false, !dbg !1777

cond.true:                                        ; preds = %while.body
  %5 = load i32, ptr %len.addr, align 4, !dbg !1780
  br label %cond.end, !dbg !1777

cond.false:                                       ; preds = %while.body
  br label %cond.end, !dbg !1777

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %5, %cond.true ], [ 5552, %cond.false ], !dbg !1777
  store i32 %cond, ptr %k, align 4, !dbg !1781
  %6 = load i32, ptr %k, align 4, !dbg !1782
  %7 = load i32, ptr %len.addr, align 4, !dbg !1783
  %sub = sub i32 %7, %6, !dbg !1783
  store i32 %sub, ptr %len.addr, align 4, !dbg !1783
  br label %while.cond4, !dbg !1784

while.cond4:                                      ; preds = %while.body6, %cond.end
  %8 = load i32, ptr %k, align 4, !dbg !1785
  %cmp5 = icmp sge i32 %8, 16, !dbg !1786
  br i1 %cmp5, label %while.body6, label %while.end, !dbg !1784

while.body6:                                      ; preds = %while.cond4
  %9 = load ptr, ptr %buf.addr, align 8, !dbg !1787
  %arrayidx = getelementptr i8, ptr %9, i64 0, !dbg !1787
  %10 = load i8, ptr %arrayidx, align 1, !dbg !1787
  %conv = zext i8 %10 to i64, !dbg !1787
  %11 = load i64, ptr %s1, align 8, !dbg !1787
  %add = add i64 %11, %conv, !dbg !1787
  store i64 %add, ptr %s1, align 8, !dbg !1787
  %12 = load i64, ptr %s1, align 8, !dbg !1787
  %13 = load i64, ptr %s2, align 8, !dbg !1787
  %add7 = add i64 %13, %12, !dbg !1787
  store i64 %add7, ptr %s2, align 8, !dbg !1787
  %14 = load ptr, ptr %buf.addr, align 8, !dbg !1790
  %arrayidx8 = getelementptr i8, ptr %14, i64 1, !dbg !1790
  %15 = load i8, ptr %arrayidx8, align 1, !dbg !1790
  %conv9 = zext i8 %15 to i64, !dbg !1790
  %16 = load i64, ptr %s1, align 8, !dbg !1790
  %add10 = add i64 %16, %conv9, !dbg !1790
  store i64 %add10, ptr %s1, align 8, !dbg !1790
  %17 = load i64, ptr %s1, align 8, !dbg !1790
  %18 = load i64, ptr %s2, align 8, !dbg !1790
  %add11 = add i64 %18, %17, !dbg !1790
  store i64 %add11, ptr %s2, align 8, !dbg !1790
  %19 = load ptr, ptr %buf.addr, align 8, !dbg !1792
  %arrayidx12 = getelementptr i8, ptr %19, i64 2, !dbg !1792
  %20 = load i8, ptr %arrayidx12, align 1, !dbg !1792
  %conv13 = zext i8 %20 to i64, !dbg !1792
  %21 = load i64, ptr %s1, align 8, !dbg !1792
  %add14 = add i64 %21, %conv13, !dbg !1792
  store i64 %add14, ptr %s1, align 8, !dbg !1792
  %22 = load i64, ptr %s1, align 8, !dbg !1792
  %23 = load i64, ptr %s2, align 8, !dbg !1792
  %add15 = add i64 %23, %22, !dbg !1792
  store i64 %add15, ptr %s2, align 8, !dbg !1792
  %24 = load ptr, ptr %buf.addr, align 8, !dbg !1794
  %arrayidx16 = getelementptr i8, ptr %24, i64 3, !dbg !1794
  %25 = load i8, ptr %arrayidx16, align 1, !dbg !1794
  %conv17 = zext i8 %25 to i64, !dbg !1794
  %26 = load i64, ptr %s1, align 8, !dbg !1794
  %add18 = add i64 %26, %conv17, !dbg !1794
  store i64 %add18, ptr %s1, align 8, !dbg !1794
  %27 = load i64, ptr %s1, align 8, !dbg !1794
  %28 = load i64, ptr %s2, align 8, !dbg !1794
  %add19 = add i64 %28, %27, !dbg !1794
  store i64 %add19, ptr %s2, align 8, !dbg !1794
  %29 = load ptr, ptr %buf.addr, align 8, !dbg !1796
  %arrayidx20 = getelementptr i8, ptr %29, i64 4, !dbg !1796
  %30 = load i8, ptr %arrayidx20, align 1, !dbg !1796
  %conv21 = zext i8 %30 to i64, !dbg !1796
  %31 = load i64, ptr %s1, align 8, !dbg !1796
  %add22 = add i64 %31, %conv21, !dbg !1796
  store i64 %add22, ptr %s1, align 8, !dbg !1796
  %32 = load i64, ptr %s1, align 8, !dbg !1796
  %33 = load i64, ptr %s2, align 8, !dbg !1796
  %add23 = add i64 %33, %32, !dbg !1796
  store i64 %add23, ptr %s2, align 8, !dbg !1796
  %34 = load ptr, ptr %buf.addr, align 8, !dbg !1798
  %arrayidx24 = getelementptr i8, ptr %34, i64 5, !dbg !1798
  %35 = load i8, ptr %arrayidx24, align 1, !dbg !1798
  %conv25 = zext i8 %35 to i64, !dbg !1798
  %36 = load i64, ptr %s1, align 8, !dbg !1798
  %add26 = add i64 %36, %conv25, !dbg !1798
  store i64 %add26, ptr %s1, align 8, !dbg !1798
  %37 = load i64, ptr %s1, align 8, !dbg !1798
  %38 = load i64, ptr %s2, align 8, !dbg !1798
  %add27 = add i64 %38, %37, !dbg !1798
  store i64 %add27, ptr %s2, align 8, !dbg !1798
  %39 = load ptr, ptr %buf.addr, align 8, !dbg !1800
  %arrayidx28 = getelementptr i8, ptr %39, i64 6, !dbg !1800
  %40 = load i8, ptr %arrayidx28, align 1, !dbg !1800
  %conv29 = zext i8 %40 to i64, !dbg !1800
  %41 = load i64, ptr %s1, align 8, !dbg !1800
  %add30 = add i64 %41, %conv29, !dbg !1800
  store i64 %add30, ptr %s1, align 8, !dbg !1800
  %42 = load i64, ptr %s1, align 8, !dbg !1800
  %43 = load i64, ptr %s2, align 8, !dbg !1800
  %add31 = add i64 %43, %42, !dbg !1800
  store i64 %add31, ptr %s2, align 8, !dbg !1800
  %44 = load ptr, ptr %buf.addr, align 8, !dbg !1802
  %arrayidx32 = getelementptr i8, ptr %44, i64 7, !dbg !1802
  %45 = load i8, ptr %arrayidx32, align 1, !dbg !1802
  %conv33 = zext i8 %45 to i64, !dbg !1802
  %46 = load i64, ptr %s1, align 8, !dbg !1802
  %add34 = add i64 %46, %conv33, !dbg !1802
  store i64 %add34, ptr %s1, align 8, !dbg !1802
  %47 = load i64, ptr %s1, align 8, !dbg !1802
  %48 = load i64, ptr %s2, align 8, !dbg !1802
  %add35 = add i64 %48, %47, !dbg !1802
  store i64 %add35, ptr %s2, align 8, !dbg !1802
  %49 = load ptr, ptr %buf.addr, align 8, !dbg !1804
  %arrayidx36 = getelementptr i8, ptr %49, i64 8, !dbg !1804
  %50 = load i8, ptr %arrayidx36, align 1, !dbg !1804
  %conv37 = zext i8 %50 to i64, !dbg !1804
  %51 = load i64, ptr %s1, align 8, !dbg !1804
  %add38 = add i64 %51, %conv37, !dbg !1804
  store i64 %add38, ptr %s1, align 8, !dbg !1804
  %52 = load i64, ptr %s1, align 8, !dbg !1804
  %53 = load i64, ptr %s2, align 8, !dbg !1804
  %add39 = add i64 %53, %52, !dbg !1804
  store i64 %add39, ptr %s2, align 8, !dbg !1804
  %54 = load ptr, ptr %buf.addr, align 8, !dbg !1806
  %arrayidx40 = getelementptr i8, ptr %54, i64 9, !dbg !1806
  %55 = load i8, ptr %arrayidx40, align 1, !dbg !1806
  %conv41 = zext i8 %55 to i64, !dbg !1806
  %56 = load i64, ptr %s1, align 8, !dbg !1806
  %add42 = add i64 %56, %conv41, !dbg !1806
  store i64 %add42, ptr %s1, align 8, !dbg !1806
  %57 = load i64, ptr %s1, align 8, !dbg !1806
  %58 = load i64, ptr %s2, align 8, !dbg !1806
  %add43 = add i64 %58, %57, !dbg !1806
  store i64 %add43, ptr %s2, align 8, !dbg !1806
  %59 = load ptr, ptr %buf.addr, align 8, !dbg !1808
  %arrayidx44 = getelementptr i8, ptr %59, i64 10, !dbg !1808
  %60 = load i8, ptr %arrayidx44, align 1, !dbg !1808
  %conv45 = zext i8 %60 to i64, !dbg !1808
  %61 = load i64, ptr %s1, align 8, !dbg !1808
  %add46 = add i64 %61, %conv45, !dbg !1808
  store i64 %add46, ptr %s1, align 8, !dbg !1808
  %62 = load i64, ptr %s1, align 8, !dbg !1808
  %63 = load i64, ptr %s2, align 8, !dbg !1808
  %add47 = add i64 %63, %62, !dbg !1808
  store i64 %add47, ptr %s2, align 8, !dbg !1808
  %64 = load ptr, ptr %buf.addr, align 8, !dbg !1810
  %arrayidx48 = getelementptr i8, ptr %64, i64 11, !dbg !1810
  %65 = load i8, ptr %arrayidx48, align 1, !dbg !1810
  %conv49 = zext i8 %65 to i64, !dbg !1810
  %66 = load i64, ptr %s1, align 8, !dbg !1810
  %add50 = add i64 %66, %conv49, !dbg !1810
  store i64 %add50, ptr %s1, align 8, !dbg !1810
  %67 = load i64, ptr %s1, align 8, !dbg !1810
  %68 = load i64, ptr %s2, align 8, !dbg !1810
  %add51 = add i64 %68, %67, !dbg !1810
  store i64 %add51, ptr %s2, align 8, !dbg !1810
  %69 = load ptr, ptr %buf.addr, align 8, !dbg !1812
  %arrayidx52 = getelementptr i8, ptr %69, i64 12, !dbg !1812
  %70 = load i8, ptr %arrayidx52, align 1, !dbg !1812
  %conv53 = zext i8 %70 to i64, !dbg !1812
  %71 = load i64, ptr %s1, align 8, !dbg !1812
  %add54 = add i64 %71, %conv53, !dbg !1812
  store i64 %add54, ptr %s1, align 8, !dbg !1812
  %72 = load i64, ptr %s1, align 8, !dbg !1812
  %73 = load i64, ptr %s2, align 8, !dbg !1812
  %add55 = add i64 %73, %72, !dbg !1812
  store i64 %add55, ptr %s2, align 8, !dbg !1812
  %74 = load ptr, ptr %buf.addr, align 8, !dbg !1814
  %arrayidx56 = getelementptr i8, ptr %74, i64 13, !dbg !1814
  %75 = load i8, ptr %arrayidx56, align 1, !dbg !1814
  %conv57 = zext i8 %75 to i64, !dbg !1814
  %76 = load i64, ptr %s1, align 8, !dbg !1814
  %add58 = add i64 %76, %conv57, !dbg !1814
  store i64 %add58, ptr %s1, align 8, !dbg !1814
  %77 = load i64, ptr %s1, align 8, !dbg !1814
  %78 = load i64, ptr %s2, align 8, !dbg !1814
  %add59 = add i64 %78, %77, !dbg !1814
  store i64 %add59, ptr %s2, align 8, !dbg !1814
  %79 = load ptr, ptr %buf.addr, align 8, !dbg !1816
  %arrayidx60 = getelementptr i8, ptr %79, i64 14, !dbg !1816
  %80 = load i8, ptr %arrayidx60, align 1, !dbg !1816
  %conv61 = zext i8 %80 to i64, !dbg !1816
  %81 = load i64, ptr %s1, align 8, !dbg !1816
  %add62 = add i64 %81, %conv61, !dbg !1816
  store i64 %add62, ptr %s1, align 8, !dbg !1816
  %82 = load i64, ptr %s1, align 8, !dbg !1816
  %83 = load i64, ptr %s2, align 8, !dbg !1816
  %add63 = add i64 %83, %82, !dbg !1816
  store i64 %add63, ptr %s2, align 8, !dbg !1816
  %84 = load ptr, ptr %buf.addr, align 8, !dbg !1818
  %arrayidx64 = getelementptr i8, ptr %84, i64 15, !dbg !1818
  %85 = load i8, ptr %arrayidx64, align 1, !dbg !1818
  %conv65 = zext i8 %85 to i64, !dbg !1818
  %86 = load i64, ptr %s1, align 8, !dbg !1818
  %add66 = add i64 %86, %conv65, !dbg !1818
  store i64 %add66, ptr %s1, align 8, !dbg !1818
  %87 = load i64, ptr %s1, align 8, !dbg !1818
  %88 = load i64, ptr %s2, align 8, !dbg !1818
  %add67 = add i64 %88, %87, !dbg !1818
  store i64 %add67, ptr %s2, align 8, !dbg !1818
  %89 = load ptr, ptr %buf.addr, align 8, !dbg !1820
  %add.ptr = getelementptr i8, ptr %89, i64 16, !dbg !1820
  store ptr %add.ptr, ptr %buf.addr, align 8, !dbg !1820
  %90 = load i32, ptr %k, align 4, !dbg !1821
  %sub68 = sub i32 %90, 16, !dbg !1821
  store i32 %sub68, ptr %k, align 4, !dbg !1821
  br label %while.cond4, !dbg !1784, !llvm.loop !1822

while.end:                                        ; preds = %while.cond4
  %91 = load i32, ptr %k, align 4, !dbg !1824
  %cmp69 = icmp ne i32 %91, 0, !dbg !1826
  br i1 %cmp69, label %if.then71, label %if.end75, !dbg !1827

if.then71:                                        ; preds = %while.end
  br label %do.body, !dbg !1828

do.body:                                          ; preds = %do.cond, %if.then71
  %92 = load ptr, ptr %buf.addr, align 8, !dbg !1829
  %incdec.ptr = getelementptr i8, ptr %92, i32 1, !dbg !1829
  store ptr %incdec.ptr, ptr %buf.addr, align 8, !dbg !1829
  %93 = load i8, ptr %92, align 1, !dbg !1831
  %conv72 = zext i8 %93 to i64, !dbg !1831
  %94 = load i64, ptr %s1, align 8, !dbg !1832
  %add73 = add i64 %94, %conv72, !dbg !1832
  store i64 %add73, ptr %s1, align 8, !dbg !1832
  %95 = load i64, ptr %s1, align 8, !dbg !1833
  %96 = load i64, ptr %s2, align 8, !dbg !1834
  %add74 = add i64 %96, %95, !dbg !1834
  store i64 %add74, ptr %s2, align 8, !dbg !1834
  br label %do.cond, !dbg !1835

do.cond:                                          ; preds = %do.body
  %97 = load i32, ptr %k, align 4, !dbg !1836
  %dec = add i32 %97, -1, !dbg !1836
  store i32 %dec, ptr %k, align 4, !dbg !1836
  %tobool = icmp ne i32 %dec, 0, !dbg !1835
  br i1 %tobool, label %do.body, label %do.end, !dbg !1835, !llvm.loop !1837

do.end:                                           ; preds = %do.cond
  br label %if.end75, !dbg !1835

if.end75:                                         ; preds = %do.end, %while.end
  %98 = load i64, ptr %s1, align 8, !dbg !1839
  %rem = urem i64 %98, 65521, !dbg !1839
  store i64 %rem, ptr %s1, align 8, !dbg !1839
  %99 = load i64, ptr %s2, align 8, !dbg !1840
  %rem76 = urem i64 %99, 65521, !dbg !1840
  store i64 %rem76, ptr %s2, align 8, !dbg !1840
  br label %while.cond, !dbg !1774, !llvm.loop !1841

while.end77:                                      ; preds = %while.cond
  %100 = load i64, ptr %s2, align 8, !dbg !1843
  %shl = shl i64 %100, 16, !dbg !1844
  %101 = load i64, ptr %s1, align 8, !dbg !1845
  %or = or i64 %shl, %101, !dbg !1846
  store i64 %or, ptr %retval, align 8, !dbg !1847
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1847

cleanup:                                          ; preds = %while.end77, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #6, !dbg !1848
  call void @llvm.lifetime.end.p0(i64 8, ptr %s2) #6, !dbg !1848
  call void @llvm.lifetime.end.p0(i64 8, ptr %s1) #6, !dbg !1848
  %102 = load i64, ptr %retval, align 8, !dbg !1848
  ret i64 %102, !dbg !1848
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @zlib_fixedtables(ptr noundef %state) #0 align 16 !dbg !211 {
entry:
  %state.addr = alloca ptr, align 8
  store ptr %state, ptr %state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !215, metadata !DIExpression()), !dbg !1849
  %0 = load ptr, ptr %state.addr, align 8, !dbg !1850
  %lencode = getelementptr inbounds %struct.inflate_state, ptr %0, i32 0, i32 18, !dbg !1852
  store ptr @zlib_fixedtables.lenfix, ptr %lencode, align 8, !dbg !1853
  %1 = load ptr, ptr %state.addr, align 8, !dbg !1854
  %lenbits = getelementptr inbounds %struct.inflate_state, ptr %1, i32 0, i32 20, !dbg !1855
  store i32 9, ptr %lenbits, align 8, !dbg !1856
  %2 = load ptr, ptr %state.addr, align 8, !dbg !1857
  %distcode = getelementptr inbounds %struct.inflate_state, ptr %2, i32 0, i32 19, !dbg !1858
  store ptr @zlib_fixedtables.distfix, ptr %distcode, align 8, !dbg !1859
  %3 = load ptr, ptr %state.addr, align 8, !dbg !1860
  %distbits = getelementptr inbounds %struct.inflate_state, ptr %3, i32 0, i32 21, !dbg !1861
  store i32 5, ptr %distbits, align 4, !dbg !1862
  ret void, !dbg !1863
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1864 dso_local i32 @zlib_inflate_table(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1871 dso_local void @inflate_fast(ptr noundef, i32 noundef) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @zlib_updatewindow(ptr noundef %strm, i32 noundef %out) #0 align 16 !dbg !1875 {
entry:
  %strm.addr = alloca ptr, align 8
  %out.addr = alloca i32, align 4
  %state = alloca ptr, align 8
  %copy = alloca i32, align 4
  %dist = alloca i32, align 4
  store ptr %strm, ptr %strm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %strm.addr, metadata !1877, metadata !DIExpression()), !dbg !1882
  store i32 %out, ptr %out.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %out.addr, metadata !1878, metadata !DIExpression()), !dbg !1883
  call void @llvm.lifetime.start.p0(i64 8, ptr %state) #6, !dbg !1884
  call void @llvm.dbg.declare(metadata ptr %state, metadata !1879, metadata !DIExpression()), !dbg !1885
  call void @llvm.lifetime.start.p0(i64 4, ptr %copy) #6, !dbg !1886
  call void @llvm.dbg.declare(metadata ptr %copy, metadata !1880, metadata !DIExpression()), !dbg !1887
  call void @llvm.lifetime.start.p0(i64 4, ptr %dist) #6, !dbg !1886
  call void @llvm.dbg.declare(metadata ptr %dist, metadata !1881, metadata !DIExpression()), !dbg !1888
  %0 = load ptr, ptr %strm.addr, align 8, !dbg !1889
  %state1 = getelementptr inbounds %struct.z_stream_s, ptr %0, i32 0, i32 7, !dbg !1890
  %1 = load ptr, ptr %state1, align 8, !dbg !1890
  store ptr %1, ptr %state, align 8, !dbg !1891
  %2 = load i32, ptr %out.addr, align 4, !dbg !1892
  %conv = zext i32 %2 to i64, !dbg !1892
  %3 = load ptr, ptr %strm.addr, align 8, !dbg !1893
  %avail_out = getelementptr inbounds %struct.z_stream_s, ptr %3, i32 0, i32 4, !dbg !1894
  %4 = load i64, ptr %avail_out, align 8, !dbg !1894
  %sub = sub i64 %conv, %4, !dbg !1895
  %conv2 = trunc i64 %sub to i32, !dbg !1892
  store i32 %conv2, ptr %copy, align 4, !dbg !1896
  %5 = load i32, ptr %copy, align 4, !dbg !1897
  %6 = load ptr, ptr %state, align 8, !dbg !1899
  %wsize = getelementptr inbounds %struct.inflate_state, ptr %6, i32 0, i32 9, !dbg !1900
  %7 = load i32, ptr %wsize, align 4, !dbg !1900
  %cmp = icmp uge i32 %5, %7, !dbg !1901
  br i1 %cmp, label %if.then, label %if.else, !dbg !1902

if.then:                                          ; preds = %entry
  %8 = load ptr, ptr %state, align 8, !dbg !1903
  %window = getelementptr inbounds %struct.inflate_state, ptr %8, i32 0, i32 12, !dbg !1905
  %9 = load ptr, ptr %window, align 8, !dbg !1905
  %10 = load ptr, ptr %strm.addr, align 8, !dbg !1906
  %next_out = getelementptr inbounds %struct.z_stream_s, ptr %10, i32 0, i32 3, !dbg !1907
  %11 = load ptr, ptr %next_out, align 8, !dbg !1907
  %12 = load ptr, ptr %state, align 8, !dbg !1908
  %wsize4 = getelementptr inbounds %struct.inflate_state, ptr %12, i32 0, i32 9, !dbg !1909
  %13 = load i32, ptr %wsize4, align 4, !dbg !1909
  %idx.ext = zext i32 %13 to i64, !dbg !1910
  %idx.neg = sub i64 0, %idx.ext, !dbg !1910
  %add.ptr = getelementptr i8, ptr %11, i64 %idx.neg, !dbg !1910
  %14 = load ptr, ptr %state, align 8, !dbg !1911
  %wsize5 = getelementptr inbounds %struct.inflate_state, ptr %14, i32 0, i32 9, !dbg !1912
  %15 = load i32, ptr %wsize5, align 4, !dbg !1912
  %conv6 = zext i32 %15 to i64, !dbg !1911
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %9, ptr align 1 %add.ptr, i64 %conv6, i1 false), !dbg !1913
  %16 = load ptr, ptr %state, align 8, !dbg !1914
  %write = getelementptr inbounds %struct.inflate_state, ptr %16, i32 0, i32 11, !dbg !1915
  store i32 0, ptr %write, align 4, !dbg !1916
  %17 = load ptr, ptr %state, align 8, !dbg !1917
  %wsize7 = getelementptr inbounds %struct.inflate_state, ptr %17, i32 0, i32 9, !dbg !1918
  %18 = load i32, ptr %wsize7, align 4, !dbg !1918
  %19 = load ptr, ptr %state, align 8, !dbg !1919
  %whave = getelementptr inbounds %struct.inflate_state, ptr %19, i32 0, i32 10, !dbg !1920
  store i32 %18, ptr %whave, align 8, !dbg !1921
  br label %if.end52, !dbg !1922

if.else:                                          ; preds = %entry
  %20 = load ptr, ptr %state, align 8, !dbg !1923
  %wsize8 = getelementptr inbounds %struct.inflate_state, ptr %20, i32 0, i32 9, !dbg !1925
  %21 = load i32, ptr %wsize8, align 4, !dbg !1925
  %22 = load ptr, ptr %state, align 8, !dbg !1926
  %write9 = getelementptr inbounds %struct.inflate_state, ptr %22, i32 0, i32 11, !dbg !1927
  %23 = load i32, ptr %write9, align 4, !dbg !1927
  %sub10 = sub i32 %21, %23, !dbg !1928
  store i32 %sub10, ptr %dist, align 4, !dbg !1929
  %24 = load i32, ptr %dist, align 4, !dbg !1930
  %25 = load i32, ptr %copy, align 4, !dbg !1932
  %cmp11 = icmp ugt i32 %24, %25, !dbg !1933
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !1934

if.then13:                                        ; preds = %if.else
  %26 = load i32, ptr %copy, align 4, !dbg !1935
  store i32 %26, ptr %dist, align 4, !dbg !1936
  br label %if.end, !dbg !1937

if.end:                                           ; preds = %if.then13, %if.else
  %27 = load ptr, ptr %state, align 8, !dbg !1938
  %window14 = getelementptr inbounds %struct.inflate_state, ptr %27, i32 0, i32 12, !dbg !1939
  %28 = load ptr, ptr %window14, align 8, !dbg !1939
  %29 = load ptr, ptr %state, align 8, !dbg !1940
  %write15 = getelementptr inbounds %struct.inflate_state, ptr %29, i32 0, i32 11, !dbg !1941
  %30 = load i32, ptr %write15, align 4, !dbg !1941
  %idx.ext16 = zext i32 %30 to i64, !dbg !1942
  %add.ptr17 = getelementptr i8, ptr %28, i64 %idx.ext16, !dbg !1942
  %31 = load ptr, ptr %strm.addr, align 8, !dbg !1943
  %next_out18 = getelementptr inbounds %struct.z_stream_s, ptr %31, i32 0, i32 3, !dbg !1944
  %32 = load ptr, ptr %next_out18, align 8, !dbg !1944
  %33 = load i32, ptr %copy, align 4, !dbg !1945
  %idx.ext19 = zext i32 %33 to i64, !dbg !1946
  %idx.neg20 = sub i64 0, %idx.ext19, !dbg !1946
  %add.ptr21 = getelementptr i8, ptr %32, i64 %idx.neg20, !dbg !1946
  %34 = load i32, ptr %dist, align 4, !dbg !1947
  %conv22 = zext i32 %34 to i64, !dbg !1947
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr17, ptr align 1 %add.ptr21, i64 %conv22, i1 false), !dbg !1948
  %35 = load i32, ptr %dist, align 4, !dbg !1949
  %36 = load i32, ptr %copy, align 4, !dbg !1950
  %sub23 = sub i32 %36, %35, !dbg !1950
  store i32 %sub23, ptr %copy, align 4, !dbg !1950
  %37 = load i32, ptr %copy, align 4, !dbg !1951
  %tobool = icmp ne i32 %37, 0, !dbg !1951
  br i1 %tobool, label %if.then24, label %if.else34, !dbg !1953

if.then24:                                        ; preds = %if.end
  %38 = load ptr, ptr %state, align 8, !dbg !1954
  %window25 = getelementptr inbounds %struct.inflate_state, ptr %38, i32 0, i32 12, !dbg !1956
  %39 = load ptr, ptr %window25, align 8, !dbg !1956
  %40 = load ptr, ptr %strm.addr, align 8, !dbg !1957
  %next_out26 = getelementptr inbounds %struct.z_stream_s, ptr %40, i32 0, i32 3, !dbg !1958
  %41 = load ptr, ptr %next_out26, align 8, !dbg !1958
  %42 = load i32, ptr %copy, align 4, !dbg !1959
  %idx.ext27 = zext i32 %42 to i64, !dbg !1960
  %idx.neg28 = sub i64 0, %idx.ext27, !dbg !1960
  %add.ptr29 = getelementptr i8, ptr %41, i64 %idx.neg28, !dbg !1960
  %43 = load i32, ptr %copy, align 4, !dbg !1961
  %conv30 = zext i32 %43 to i64, !dbg !1961
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %39, ptr align 1 %add.ptr29, i64 %conv30, i1 false), !dbg !1962
  %44 = load i32, ptr %copy, align 4, !dbg !1963
  %45 = load ptr, ptr %state, align 8, !dbg !1964
  %write31 = getelementptr inbounds %struct.inflate_state, ptr %45, i32 0, i32 11, !dbg !1965
  store i32 %44, ptr %write31, align 4, !dbg !1966
  %46 = load ptr, ptr %state, align 8, !dbg !1967
  %wsize32 = getelementptr inbounds %struct.inflate_state, ptr %46, i32 0, i32 9, !dbg !1968
  %47 = load i32, ptr %wsize32, align 4, !dbg !1968
  %48 = load ptr, ptr %state, align 8, !dbg !1969
  %whave33 = getelementptr inbounds %struct.inflate_state, ptr %48, i32 0, i32 10, !dbg !1970
  store i32 %47, ptr %whave33, align 8, !dbg !1971
  br label %if.end51, !dbg !1972

if.else34:                                        ; preds = %if.end
  %49 = load i32, ptr %dist, align 4, !dbg !1973
  %50 = load ptr, ptr %state, align 8, !dbg !1975
  %write35 = getelementptr inbounds %struct.inflate_state, ptr %50, i32 0, i32 11, !dbg !1976
  %51 = load i32, ptr %write35, align 4, !dbg !1977
  %add = add i32 %51, %49, !dbg !1977
  store i32 %add, ptr %write35, align 4, !dbg !1977
  %52 = load ptr, ptr %state, align 8, !dbg !1978
  %write36 = getelementptr inbounds %struct.inflate_state, ptr %52, i32 0, i32 11, !dbg !1980
  %53 = load i32, ptr %write36, align 4, !dbg !1980
  %54 = load ptr, ptr %state, align 8, !dbg !1981
  %wsize37 = getelementptr inbounds %struct.inflate_state, ptr %54, i32 0, i32 9, !dbg !1982
  %55 = load i32, ptr %wsize37, align 4, !dbg !1982
  %cmp38 = icmp eq i32 %53, %55, !dbg !1983
  br i1 %cmp38, label %if.then40, label %if.end42, !dbg !1984

if.then40:                                        ; preds = %if.else34
  %56 = load ptr, ptr %state, align 8, !dbg !1985
  %write41 = getelementptr inbounds %struct.inflate_state, ptr %56, i32 0, i32 11, !dbg !1986
  store i32 0, ptr %write41, align 4, !dbg !1987
  br label %if.end42, !dbg !1985

if.end42:                                         ; preds = %if.then40, %if.else34
  %57 = load ptr, ptr %state, align 8, !dbg !1988
  %whave43 = getelementptr inbounds %struct.inflate_state, ptr %57, i32 0, i32 10, !dbg !1990
  %58 = load i32, ptr %whave43, align 8, !dbg !1990
  %59 = load ptr, ptr %state, align 8, !dbg !1991
  %wsize44 = getelementptr inbounds %struct.inflate_state, ptr %59, i32 0, i32 9, !dbg !1992
  %60 = load i32, ptr %wsize44, align 4, !dbg !1992
  %cmp45 = icmp ult i32 %58, %60, !dbg !1993
  br i1 %cmp45, label %if.then47, label %if.end50, !dbg !1994

if.then47:                                        ; preds = %if.end42
  %61 = load i32, ptr %dist, align 4, !dbg !1995
  %62 = load ptr, ptr %state, align 8, !dbg !1996
  %whave48 = getelementptr inbounds %struct.inflate_state, ptr %62, i32 0, i32 10, !dbg !1997
  %63 = load i32, ptr %whave48, align 8, !dbg !1998
  %add49 = add i32 %63, %61, !dbg !1998
  store i32 %add49, ptr %whave48, align 8, !dbg !1998
  br label %if.end50, !dbg !1996

if.end50:                                         ; preds = %if.then47, %if.end42
  br label %if.end51

if.end51:                                         ; preds = %if.end50, %if.then24
  br label %if.end52

if.end52:                                         ; preds = %if.end51, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %dist) #6, !dbg !1999
  call void @llvm.lifetime.end.p0(i64 4, ptr %copy) #6, !dbg !1999
  call void @llvm.lifetime.end.p0(i64 8, ptr %state) #6, !dbg !1999
  ret void, !dbg !1999
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @zlib_inflateSyncPacket(ptr noundef %strm) #0 align 16 !dbg !2000 {
entry:
  %retval = alloca i32, align 4
  %strm.addr = alloca ptr, align 8
  %state = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %strm, ptr %strm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %strm.addr, metadata !2002, metadata !DIExpression()), !dbg !2004
  call void @llvm.lifetime.start.p0(i64 8, ptr %state) #6, !dbg !2005
  call void @llvm.dbg.declare(metadata ptr %state, metadata !2003, metadata !DIExpression()), !dbg !2006
  %0 = load ptr, ptr %strm.addr, align 8, !dbg !2007
  %cmp = icmp eq ptr %0, null, !dbg !2009
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !2010

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %strm.addr, align 8, !dbg !2011
  %state1 = getelementptr inbounds %struct.z_stream_s, ptr %1, i32 0, i32 7, !dbg !2012
  %2 = load ptr, ptr %state1, align 8, !dbg !2012
  %cmp2 = icmp eq ptr %2, null, !dbg !2013
  br i1 %cmp2, label %if.then, label %if.end, !dbg !2014

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -2, ptr %retval, align 4, !dbg !2015
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2015

if.end:                                           ; preds = %lor.lhs.false
  %3 = load ptr, ptr %strm.addr, align 8, !dbg !2016
  %state3 = getelementptr inbounds %struct.z_stream_s, ptr %3, i32 0, i32 7, !dbg !2017
  %4 = load ptr, ptr %state3, align 8, !dbg !2017
  store ptr %4, ptr %state, align 8, !dbg !2018
  %5 = load ptr, ptr %state, align 8, !dbg !2019
  %mode = getelementptr inbounds %struct.inflate_state, ptr %5, i32 0, i32 0, !dbg !2021
  %6 = load i32, ptr %mode, align 8, !dbg !2021
  %cmp4 = icmp eq i32 %6, 13, !dbg !2022
  br i1 %cmp4, label %land.lhs.true, label %if.end8, !dbg !2023

land.lhs.true:                                    ; preds = %if.end
  %7 = load ptr, ptr %state, align 8, !dbg !2024
  %bits = getelementptr inbounds %struct.inflate_state, ptr %7, i32 0, i32 14, !dbg !2025
  %8 = load i32, ptr %bits, align 8, !dbg !2025
  %cmp5 = icmp eq i32 %8, 0, !dbg !2026
  br i1 %cmp5, label %if.then6, label %if.end8, !dbg !2027

if.then6:                                         ; preds = %land.lhs.true
  %9 = load ptr, ptr %state, align 8, !dbg !2028
  %mode7 = getelementptr inbounds %struct.inflate_state, ptr %9, i32 0, i32 0, !dbg !2030
  store i32 11, ptr %mode7, align 8, !dbg !2031
  store i32 0, ptr %retval, align 4, !dbg !2032
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2032

if.end8:                                          ; preds = %land.lhs.true, %if.end
  store i32 -3, ptr %retval, align 4, !dbg !2033
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2033

cleanup:                                          ; preds = %if.end8, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %state) #6, !dbg !2034
  %10 = load i32, ptr %retval, align 4, !dbg !2034
  ret i32 %10, !dbg !2034
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @zlib_inflateEnd(ptr noundef %strm) #0 align 16 !dbg !2035 {
entry:
  %retval = alloca i32, align 4
  %strm.addr = alloca ptr, align 8
  store ptr %strm, ptr %strm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %strm.addr, metadata !2037, metadata !DIExpression()), !dbg !2038
  %0 = load ptr, ptr %strm.addr, align 8, !dbg !2039
  %cmp = icmp eq ptr %0, null, !dbg !2041
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !2042

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %strm.addr, align 8, !dbg !2043
  %state = getelementptr inbounds %struct.z_stream_s, ptr %1, i32 0, i32 7, !dbg !2044
  %2 = load ptr, ptr %state, align 8, !dbg !2044
  %cmp1 = icmp eq ptr %2, null, !dbg !2045
  br i1 %cmp1, label %if.then, label %if.end, !dbg !2046

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -2, ptr %retval, align 4, !dbg !2047
  br label %return, !dbg !2047

if.end:                                           ; preds = %lor.lhs.false
  store i32 0, ptr %retval, align 4, !dbg !2048
  br label %return, !dbg !2048

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, ptr %retval, align 4, !dbg !2049
  ret i32 %3, !dbg !2049
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @zlib_inflateIncomp(ptr noundef %z) #0 align 16 !dbg !2050 {
entry:
  %retval = alloca i32, align 4
  %z.addr = alloca ptr, align 8
  %state = alloca ptr, align 8
  %saved_no = alloca ptr, align 8
  %saved_ao = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %z, ptr %z.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %z.addr, metadata !2054, metadata !DIExpression()), !dbg !2058
  call void @llvm.lifetime.start.p0(i64 8, ptr %state) #6, !dbg !2059
  call void @llvm.dbg.declare(metadata ptr %state, metadata !2055, metadata !DIExpression()), !dbg !2060
  %0 = load ptr, ptr %z.addr, align 8, !dbg !2061
  %state1 = getelementptr inbounds %struct.z_stream_s, ptr %0, i32 0, i32 7, !dbg !2062
  %1 = load ptr, ptr %state1, align 8, !dbg !2062
  store ptr %1, ptr %state, align 8, !dbg !2060
  call void @llvm.lifetime.start.p0(i64 8, ptr %saved_no) #6, !dbg !2063
  call void @llvm.dbg.declare(metadata ptr %saved_no, metadata !2056, metadata !DIExpression()), !dbg !2064
  %2 = load ptr, ptr %z.addr, align 8, !dbg !2065
  %next_out = getelementptr inbounds %struct.z_stream_s, ptr %2, i32 0, i32 3, !dbg !2066
  %3 = load ptr, ptr %next_out, align 8, !dbg !2066
  store ptr %3, ptr %saved_no, align 8, !dbg !2064
  call void @llvm.lifetime.start.p0(i64 4, ptr %saved_ao) #6, !dbg !2067
  call void @llvm.dbg.declare(metadata ptr %saved_ao, metadata !2057, metadata !DIExpression()), !dbg !2068
  %4 = load ptr, ptr %z.addr, align 8, !dbg !2069
  %avail_out = getelementptr inbounds %struct.z_stream_s, ptr %4, i32 0, i32 4, !dbg !2070
  %5 = load i64, ptr %avail_out, align 8, !dbg !2070
  %conv = trunc i64 %5 to i32, !dbg !2069
  store i32 %conv, ptr %saved_ao, align 4, !dbg !2068
  %6 = load ptr, ptr %state, align 8, !dbg !2071
  %mode = getelementptr inbounds %struct.inflate_state, ptr %6, i32 0, i32 0, !dbg !2073
  %7 = load i32, ptr %mode, align 8, !dbg !2073
  %cmp = icmp ne i32 %7, 11, !dbg !2074
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !2075

land.lhs.true:                                    ; preds = %entry
  %8 = load ptr, ptr %state, align 8, !dbg !2076
  %mode3 = getelementptr inbounds %struct.inflate_state, ptr %8, i32 0, i32 0, !dbg !2077
  %9 = load i32, ptr %mode3, align 8, !dbg !2077
  %cmp4 = icmp ne i32 %9, 0, !dbg !2078
  br i1 %cmp4, label %if.then, label %if.end, !dbg !2079

if.then:                                          ; preds = %land.lhs.true
  store i32 -3, ptr %retval, align 4, !dbg !2080
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2080

if.end:                                           ; preds = %land.lhs.true, %entry
  %10 = load ptr, ptr %z.addr, align 8, !dbg !2081
  %avail_out6 = getelementptr inbounds %struct.z_stream_s, ptr %10, i32 0, i32 4, !dbg !2082
  store i64 0, ptr %avail_out6, align 8, !dbg !2083
  %11 = load ptr, ptr %z.addr, align 8, !dbg !2084
  %next_in = getelementptr inbounds %struct.z_stream_s, ptr %11, i32 0, i32 0, !dbg !2085
  %12 = load ptr, ptr %next_in, align 8, !dbg !2085
  %13 = load ptr, ptr %z.addr, align 8, !dbg !2086
  %avail_in = getelementptr inbounds %struct.z_stream_s, ptr %13, i32 0, i32 1, !dbg !2087
  %14 = load i64, ptr %avail_in, align 8, !dbg !2087
  %add.ptr = getelementptr i8, ptr %12, i64 %14, !dbg !2088
  %15 = load ptr, ptr %z.addr, align 8, !dbg !2089
  %next_out7 = getelementptr inbounds %struct.z_stream_s, ptr %15, i32 0, i32 3, !dbg !2090
  store ptr %add.ptr, ptr %next_out7, align 8, !dbg !2091
  %16 = load ptr, ptr %z.addr, align 8, !dbg !2092
  %17 = load ptr, ptr %z.addr, align 8, !dbg !2093
  %avail_in8 = getelementptr inbounds %struct.z_stream_s, ptr %17, i32 0, i32 1, !dbg !2094
  %18 = load i64, ptr %avail_in8, align 8, !dbg !2094
  %conv9 = trunc i64 %18 to i32, !dbg !2093
  call void @zlib_updatewindow(ptr noundef %16, i32 noundef %conv9) #7, !dbg !2095
  %19 = load i32, ptr %saved_ao, align 4, !dbg !2096
  %conv10 = zext i32 %19 to i64, !dbg !2096
  %20 = load ptr, ptr %z.addr, align 8, !dbg !2097
  %avail_out11 = getelementptr inbounds %struct.z_stream_s, ptr %20, i32 0, i32 4, !dbg !2098
  store i64 %conv10, ptr %avail_out11, align 8, !dbg !2099
  %21 = load ptr, ptr %saved_no, align 8, !dbg !2100
  %22 = load ptr, ptr %z.addr, align 8, !dbg !2101
  %next_out12 = getelementptr inbounds %struct.z_stream_s, ptr %22, i32 0, i32 3, !dbg !2102
  store ptr %21, ptr %next_out12, align 8, !dbg !2103
  %23 = load ptr, ptr %state, align 8, !dbg !2104
  %check = getelementptr inbounds %struct.inflate_state, ptr %23, i32 0, i32 6, !dbg !2104
  %24 = load i64, ptr %check, align 8, !dbg !2104
  %25 = load ptr, ptr %z.addr, align 8, !dbg !2104
  %next_in13 = getelementptr inbounds %struct.z_stream_s, ptr %25, i32 0, i32 0, !dbg !2104
  %26 = load ptr, ptr %next_in13, align 8, !dbg !2104
  %27 = load ptr, ptr %z.addr, align 8, !dbg !2104
  %avail_in14 = getelementptr inbounds %struct.z_stream_s, ptr %27, i32 0, i32 1, !dbg !2104
  %28 = load i64, ptr %avail_in14, align 8, !dbg !2104
  %conv15 = trunc i64 %28 to i32, !dbg !2104
  %call = call i64 @zlib_adler32(i64 noundef %24, ptr noundef %26, i32 noundef %conv15) #7, !dbg !2104
  %29 = load ptr, ptr %state, align 8, !dbg !2105
  %check16 = getelementptr inbounds %struct.inflate_state, ptr %29, i32 0, i32 6, !dbg !2106
  store i64 %call, ptr %check16, align 8, !dbg !2107
  %30 = load ptr, ptr %z.addr, align 8, !dbg !2108
  %adler = getelementptr inbounds %struct.z_stream_s, ptr %30, i32 0, i32 10, !dbg !2109
  store i64 %call, ptr %adler, align 8, !dbg !2110
  %31 = load ptr, ptr %z.addr, align 8, !dbg !2111
  %avail_in17 = getelementptr inbounds %struct.z_stream_s, ptr %31, i32 0, i32 1, !dbg !2112
  %32 = load i64, ptr %avail_in17, align 8, !dbg !2112
  %33 = load ptr, ptr %z.addr, align 8, !dbg !2113
  %total_out = getelementptr inbounds %struct.z_stream_s, ptr %33, i32 0, i32 5, !dbg !2114
  %34 = load i64, ptr %total_out, align 8, !dbg !2115
  %add = add i64 %34, %32, !dbg !2115
  store i64 %add, ptr %total_out, align 8, !dbg !2115
  %35 = load ptr, ptr %z.addr, align 8, !dbg !2116
  %avail_in18 = getelementptr inbounds %struct.z_stream_s, ptr %35, i32 0, i32 1, !dbg !2117
  %36 = load i64, ptr %avail_in18, align 8, !dbg !2117
  %37 = load ptr, ptr %z.addr, align 8, !dbg !2118
  %total_in = getelementptr inbounds %struct.z_stream_s, ptr %37, i32 0, i32 2, !dbg !2119
  %38 = load i64, ptr %total_in, align 8, !dbg !2120
  %add19 = add i64 %38, %36, !dbg !2120
  store i64 %add19, ptr %total_in, align 8, !dbg !2120
  %39 = load ptr, ptr %z.addr, align 8, !dbg !2121
  %avail_in20 = getelementptr inbounds %struct.z_stream_s, ptr %39, i32 0, i32 1, !dbg !2122
  %40 = load i64, ptr %avail_in20, align 8, !dbg !2122
  %41 = load ptr, ptr %z.addr, align 8, !dbg !2123
  %next_in21 = getelementptr inbounds %struct.z_stream_s, ptr %41, i32 0, i32 0, !dbg !2124
  %42 = load ptr, ptr %next_in21, align 8, !dbg !2125
  %add.ptr22 = getelementptr i8, ptr %42, i64 %40, !dbg !2125
  store ptr %add.ptr22, ptr %next_in21, align 8, !dbg !2125
  %43 = load ptr, ptr %z.addr, align 8, !dbg !2126
  %avail_in23 = getelementptr inbounds %struct.z_stream_s, ptr %43, i32 0, i32 1, !dbg !2127
  %44 = load i64, ptr %avail_in23, align 8, !dbg !2127
  %45 = load ptr, ptr %state, align 8, !dbg !2128
  %total = getelementptr inbounds %struct.inflate_state, ptr %45, i32 0, i32 7, !dbg !2129
  %46 = load i64, ptr %total, align 8, !dbg !2130
  %add24 = add i64 %46, %44, !dbg !2130
  store i64 %add24, ptr %total, align 8, !dbg !2130
  %47 = load ptr, ptr %z.addr, align 8, !dbg !2131
  %avail_in25 = getelementptr inbounds %struct.z_stream_s, ptr %47, i32 0, i32 1, !dbg !2132
  store i64 0, ptr %avail_in25, align 8, !dbg !2133
  store i32 0, ptr %retval, align 4, !dbg !2134
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2134

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %saved_ao) #6, !dbg !2135
  call void @llvm.lifetime.end.p0(i64 8, ptr %saved_no) #6, !dbg !2135
  call void @llvm.lifetime.end.p0(i64 8, ptr %state) #6, !dbg !2135
  %48 = load i32, ptr %retval, align 4, !dbg !2135
  ret i32 %48, !dbg !2135
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { noredzone }

!llvm.dbg.cu = !{!38}
!llvm.module.flags = !{!248, !249, !250, !251, !252, !253, !254, !255}
!llvm.ident = !{!256}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "order", scope: !2, file: !3, line: 346, type: !246, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "zlib_inflate", scope: !3, file: !3, line: 331, type: !4, scopeLine: 332, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !38, retainedNodes: !225)
!3 = !DIFile(filename: "lib/zlib_inflate/inflate.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccaad8fb0026e4f19f5289f99a60fa37")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !7, !6}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "z_streamp", file: !8, line: 103, baseType: !9)
!8 = !DIFile(filename: "./include/linux/zlib.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "959204f2bbe0607cb05d45364420f12e")
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "z_stream", file: !8, line: 101, baseType: !11)
!11 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "z_stream_s", file: !8, line: 84, size: 768, elements: !12)
!12 = !{!13, !19, !22, !23, !25, !26, !27, !30, !33, !35, !36, !37}
!13 = !DIDerivedType(tag: DW_TAG_member, name: "next_in", scope: !11, file: !8, line: 85, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "Byte", file: !17, line: 52, baseType: !18)
!17 = !DIFile(filename: "./include/linux/zconf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "66c2d885369ef0adc0f1780a0c1150c2")
!18 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "avail_in", scope: !11, file: !8, line: 86, baseType: !20, size: 64, offset: 64)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "uLong", file: !17, line: 54, baseType: !21)
!21 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "total_in", scope: !11, file: !8, line: 87, baseType: !20, size: 64, offset: 128)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "next_out", scope: !11, file: !8, line: 89, baseType: !24, size: 64, offset: 192)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "avail_out", scope: !11, file: !8, line: 90, baseType: !20, size: 64, offset: 256)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "total_out", scope: !11, file: !8, line: 91, baseType: !20, size: 64, offset: 320)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !11, file: !8, line: 93, baseType: !28, size: 64, offset: 384)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !11, file: !8, line: 94, baseType: !31, size: 64, offset: 448)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DICompositeType(tag: DW_TAG_structure_type, name: "internal_state", file: !8, line: 82, flags: DIFlagFwdDecl)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "workspace", scope: !11, file: !8, line: 96, baseType: !34, size: 64, offset: 512)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "data_type", scope: !11, file: !8, line: 98, baseType: !6, size: 32, offset: 576)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "adler", scope: !11, file: !8, line: 99, baseType: !20, size: 64, offset: 640)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !11, file: !8, line: 100, baseType: !20, size: 64, offset: 704)
!38 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/zlib_inflate/.inflate.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/zlib_inflate/zlib_inflate\22 -D KBUILD_BASENAME=\22inflate\22 -D KBUILD_MODNAME=\22zlib_inflate\22 -D __KBUILD_MODNAME=kmod_zlib_inflate -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/zlib_inflate/inflate.ll lib/zlib_inflate/inflate.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !39, retainedTypes: !80, globals: !144, splitDebugInlining: false, nameTableKind: None)
!39 = !{!40, !74}
!40 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !41, line: 17, baseType: !42, size: 32, elements: !43)
!41 = !DIFile(filename: "lib/zlib_inflate/inflate.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ffb6590e74d2419381e17a965c0acd6")
!42 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!43 = !{!44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73}
!44 = !DIEnumerator(name: "HEAD", value: 0)
!45 = !DIEnumerator(name: "FLAGS", value: 1)
!46 = !DIEnumerator(name: "TIME", value: 2)
!47 = !DIEnumerator(name: "OS", value: 3)
!48 = !DIEnumerator(name: "EXLEN", value: 4)
!49 = !DIEnumerator(name: "EXTRA", value: 5)
!50 = !DIEnumerator(name: "NAME", value: 6)
!51 = !DIEnumerator(name: "COMMENT", value: 7)
!52 = !DIEnumerator(name: "HCRC", value: 8)
!53 = !DIEnumerator(name: "DICTID", value: 9)
!54 = !DIEnumerator(name: "DICT", value: 10)
!55 = !DIEnumerator(name: "TYPE", value: 11)
!56 = !DIEnumerator(name: "TYPEDO", value: 12)
!57 = !DIEnumerator(name: "STORED", value: 13)
!58 = !DIEnumerator(name: "COPY", value: 14)
!59 = !DIEnumerator(name: "TABLE", value: 15)
!60 = !DIEnumerator(name: "LENLENS", value: 16)
!61 = !DIEnumerator(name: "CODELENS", value: 17)
!62 = !DIEnumerator(name: "LEN", value: 18)
!63 = !DIEnumerator(name: "LENEXT", value: 19)
!64 = !DIEnumerator(name: "DIST", value: 20)
!65 = !DIEnumerator(name: "DISTEXT", value: 21)
!66 = !DIEnumerator(name: "MATCH", value: 22)
!67 = !DIEnumerator(name: "LIT", value: 23)
!68 = !DIEnumerator(name: "CHECK", value: 24)
!69 = !DIEnumerator(name: "LENGTH", value: 25)
!70 = !DIEnumerator(name: "DONE", value: 26)
!71 = !DIEnumerator(name: "BAD", value: 27)
!72 = !DIEnumerator(name: "MEM", value: 28)
!73 = !DIEnumerator(name: "SYNC", value: 29)
!74 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !75, line: 50, baseType: !42, size: 32, elements: !76)
!75 = !DIFile(filename: "lib/zlib_inflate/inftrees.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "196f76384b7df69194d57eded4138662")
!76 = !{!77, !78, !79}
!77 = !DIEnumerator(name: "CODES", value: 0)
!78 = !DIEnumerator(name: "LENS", value: 1)
!79 = !DIEnumerator(name: "DISTS", value: 2)
!80 = !{!34, !81, !135, !31, !42, !21, !28, !113, !105, !6, !18, !98}
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inflate_state", file: !41, line: 74, size: 76352, elements: !83)
!83 = !{!84, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !99, !100, !101, !102, !103, !104, !114, !115, !116, !117, !118, !119, !120, !121, !123, !127, !131}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !82, file: !41, line: 75, baseType: !85, size: 32)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "inflate_mode", file: !41, line: 48, baseType: !40)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !82, file: !41, line: 76, baseType: !6, size: 32, offset: 32)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "wrap", scope: !82, file: !41, line: 77, baseType: !6, size: 32, offset: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "havedict", scope: !82, file: !41, line: 78, baseType: !6, size: 32, offset: 96)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !82, file: !41, line: 79, baseType: !6, size: 32, offset: 128)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "dmax", scope: !82, file: !41, line: 80, baseType: !42, size: 32, offset: 160)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !82, file: !41, line: 81, baseType: !21, size: 64, offset: 192)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !82, file: !41, line: 82, baseType: !21, size: 64, offset: 256)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "wbits", scope: !82, file: !41, line: 85, baseType: !42, size: 32, offset: 320)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "wsize", scope: !82, file: !41, line: 86, baseType: !42, size: 32, offset: 352)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "whave", scope: !82, file: !41, line: 87, baseType: !42, size: 32, offset: 384)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !82, file: !41, line: 88, baseType: !42, size: 32, offset: 416)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !82, file: !41, line: 89, baseType: !98, size: 64, offset: 448)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "hold", scope: !82, file: !41, line: 91, baseType: !21, size: 64, offset: 512)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !82, file: !41, line: 92, baseType: !42, size: 32, offset: 576)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !82, file: !41, line: 94, baseType: !42, size: 32, offset: 608)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !82, file: !41, line: 95, baseType: !42, size: 32, offset: 640)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !82, file: !41, line: 97, baseType: !42, size: 32, offset: 672)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "lencode", scope: !82, file: !41, line: 99, baseType: !105, size: 64, offset: 704)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !107)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "code", file: !75, line: 31, baseType: !108)
!108 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !75, line: 27, size: 32, elements: !109)
!109 = !{!110, !111, !112}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !108, file: !75, line: 28, baseType: !18, size: 8)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !108, file: !75, line: 29, baseType: !18, size: 8, offset: 8)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !108, file: !75, line: 30, baseType: !113, size: 16, offset: 16)
!113 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "distcode", scope: !82, file: !41, line: 100, baseType: !105, size: 64, offset: 768)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "lenbits", scope: !82, file: !41, line: 101, baseType: !42, size: 32, offset: 832)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "distbits", scope: !82, file: !41, line: 102, baseType: !42, size: 32, offset: 864)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "ncode", scope: !82, file: !41, line: 104, baseType: !42, size: 32, offset: 896)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "nlen", scope: !82, file: !41, line: 105, baseType: !42, size: 32, offset: 928)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "ndist", scope: !82, file: !41, line: 106, baseType: !42, size: 32, offset: 960)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "have", scope: !82, file: !41, line: 107, baseType: !42, size: 32, offset: 992)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !82, file: !41, line: 108, baseType: !122, size: 64, offset: 1024)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "lens", scope: !82, file: !41, line: 109, baseType: !124, size: 5120, offset: 1088)
!124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !113, size: 5120, elements: !125)
!125 = !{!126}
!126 = !DISubrange(count: 320)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !82, file: !41, line: 110, baseType: !128, size: 4608, offset: 6208)
!128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !113, size: 4608, elements: !129)
!129 = !{!130}
!130 = !DISubrange(count: 288)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "codes", scope: !82, file: !41, line: 111, baseType: !132, size: 65536, offset: 10816)
!132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 65536, elements: !133)
!133 = !{!134}
!134 = !DISubrange(count: 2048)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inflate_workspace", file: !137, line: 22, size: 338496, elements: !138)
!137 = !DIFile(filename: "lib/zlib_inflate/infutil.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0a65eaf7481591cefdcaf8ac124df4f2")
!138 = !{!139, !140}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "inflate_state", scope: !136, file: !137, line: 23, baseType: !82, size: 76352)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "working_window", scope: !136, file: !137, line: 28, baseType: !141, size: 262144, offset: 76352)
!141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 262144, elements: !142)
!142 = !{!143}
!143 = !DISubrange(count: 32768)
!144 = !{!0, !145, !150, !155, !160, !165, !170, !175, !180, !185, !190, !195, !197, !199, !204, !209, !220}
!145 = !DIGlobalVariableExpression(var: !146, expr: !DIExpression())
!146 = distinct !DIGlobalVariable(scope: null, file: !3, line: 373, type: !147, isLocal: true, isDefinition: true)
!147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 184, elements: !148)
!148 = !{!149}
!149 = !DISubrange(count: 23)
!150 = !DIGlobalVariableExpression(var: !151, expr: !DIExpression())
!151 = distinct !DIGlobalVariable(scope: null, file: !3, line: 378, type: !152, isLocal: true, isDefinition: true)
!152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 216, elements: !153)
!153 = !{!154}
!154 = !DISubrange(count: 27)
!155 = !DIGlobalVariableExpression(var: !156, expr: !DIExpression())
!156 = distinct !DIGlobalVariable(scope: null, file: !3, line: 385, type: !157, isLocal: true, isDefinition: true)
!157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 160, elements: !158)
!158 = !{!159}
!159 = !DISubrange(count: 20)
!160 = !DIGlobalVariableExpression(var: !161, expr: !DIExpression())
!161 = distinct !DIGlobalVariable(scope: null, file: !3, line: 433, type: !162, isLocal: true, isDefinition: true)
!162 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 152, elements: !163)
!163 = !{!164}
!164 = !DISubrange(count: 19)
!165 = !DIGlobalVariableExpression(var: !166, expr: !DIExpression())
!166 = distinct !DIGlobalVariable(scope: null, file: !3, line: 442, type: !167, isLocal: true, isDefinition: true)
!167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 232, elements: !168)
!168 = !{!169}
!169 = !DISubrange(count: 29)
!170 = !DIGlobalVariableExpression(var: !171, expr: !DIExpression())
!171 = distinct !DIGlobalVariable(scope: null, file: !3, line: 476, type: !172, isLocal: true, isDefinition: true)
!172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 288, elements: !173)
!173 = !{!174}
!174 = !DISubrange(count: 36)
!175 = !DIGlobalVariableExpression(var: !176, expr: !DIExpression())
!176 = distinct !DIGlobalVariable(scope: null, file: !3, line: 498, type: !177, isLocal: true, isDefinition: true)
!177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 200, elements: !178)
!178 = !{!179}
!179 = !DISubrange(count: 25)
!180 = !DIGlobalVariableExpression(var: !181, expr: !DIExpression())
!181 = distinct !DIGlobalVariable(scope: null, file: !3, line: 522, type: !182, isLocal: true, isDefinition: true)
!182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 208, elements: !183)
!183 = !{!184}
!184 = !DISubrange(count: 26)
!185 = !DIGlobalVariableExpression(var: !186, expr: !DIExpression())
!186 = distinct !DIGlobalVariable(scope: null, file: !3, line: 564, type: !187, isLocal: true, isDefinition: true)
!187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 224, elements: !188)
!188 = !{!189}
!189 = !DISubrange(count: 28)
!190 = !DIGlobalVariableExpression(var: !191, expr: !DIExpression())
!191 = distinct !DIGlobalVariable(scope: null, file: !3, line: 573, type: !192, isLocal: true, isDefinition: true)
!192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 176, elements: !193)
!193 = !{!194}
!194 = !DISubrange(count: 22)
!195 = !DIGlobalVariableExpression(var: !196, expr: !DIExpression())
!196 = distinct !DIGlobalVariable(scope: null, file: !3, line: 612, type: !187, isLocal: true, isDefinition: true)
!197 = !DIGlobalVariableExpression(var: !198, expr: !DIExpression())
!198 = distinct !DIGlobalVariable(scope: null, file: !3, line: 645, type: !192, isLocal: true, isDefinition: true)
!199 = !DIGlobalVariableExpression(var: !200, expr: !DIExpression())
!200 = distinct !DIGlobalVariable(scope: null, file: !3, line: 667, type: !201, isLocal: true, isDefinition: true)
!201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 240, elements: !202)
!202 = !{!203}
!203 = !DISubrange(count: 30)
!204 = !DIGlobalVariableExpression(var: !205, expr: !DIExpression())
!205 = distinct !DIGlobalVariable(scope: null, file: !3, line: 716, type: !206, isLocal: true, isDefinition: true)
!206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 168, elements: !207)
!207 = !{!208}
!208 = !DISubrange(count: 21)
!209 = !DIGlobalVariableExpression(var: !210, expr: !DIExpression())
!210 = distinct !DIGlobalVariable(name: "lenfix", scope: !211, file: !216, line: 10, type: !217, isLocal: true, isDefinition: true)
!211 = distinct !DISubprogram(name: "zlib_fixedtables", scope: !3, file: !3, line: 97, type: !212, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !38, retainedNodes: !214)
!212 = !DISubroutineType(types: !213)
!213 = !{null, !81}
!214 = !{!215}
!215 = !DILocalVariable(name: "state", arg: 1, scope: !211, file: !3, line: 97, type: !81)
!216 = !DIFile(filename: "lib/zlib_inflate/inffixed.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "28aabce27feb2810caf634a39abb9d8b")
!217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !106, size: 16384, elements: !218)
!218 = !{!219}
!219 = !DISubrange(count: 512)
!220 = !DIGlobalVariableExpression(var: !221, expr: !DIExpression())
!221 = distinct !DIGlobalVariable(name: "distfix", scope: !211, file: !216, line: 87, type: !222, isLocal: true, isDefinition: true)
!222 = !DICompositeType(tag: DW_TAG_array_type, baseType: !106, size: 1024, elements: !223)
!223 = !{!224}
!224 = !DISubrange(count: 32)
!225 = !{!226, !227, !228, !229, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245}
!226 = !DILocalVariable(name: "strm", arg: 1, scope: !2, file: !3, line: 331, type: !7)
!227 = !DILocalVariable(name: "flush", arg: 2, scope: !2, file: !3, line: 331, type: !6)
!228 = !DILocalVariable(name: "state", scope: !2, file: !3, line: 333, type: !81)
!229 = !DILocalVariable(name: "next", scope: !2, file: !3, line: 334, type: !230)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!232 = !DILocalVariable(name: "put", scope: !2, file: !3, line: 335, type: !98)
!233 = !DILocalVariable(name: "have", scope: !2, file: !3, line: 336, type: !42)
!234 = !DILocalVariable(name: "left", scope: !2, file: !3, line: 336, type: !42)
!235 = !DILocalVariable(name: "hold", scope: !2, file: !3, line: 337, type: !21)
!236 = !DILocalVariable(name: "bits", scope: !2, file: !3, line: 338, type: !42)
!237 = !DILocalVariable(name: "in", scope: !2, file: !3, line: 339, type: !42)
!238 = !DILocalVariable(name: "out", scope: !2, file: !3, line: 339, type: !42)
!239 = !DILocalVariable(name: "copy", scope: !2, file: !3, line: 340, type: !42)
!240 = !DILocalVariable(name: "from", scope: !2, file: !3, line: 341, type: !98)
!241 = !DILocalVariable(name: "this", scope: !2, file: !3, line: 342, type: !107)
!242 = !DILocalVariable(name: "last", scope: !2, file: !3, line: 343, type: !107)
!243 = !DILocalVariable(name: "len", scope: !2, file: !3, line: 344, type: !42)
!244 = !DILocalVariable(name: "ret", scope: !2, file: !3, line: 345, type: !6)
!245 = !DILabel(scope: !2, name: "inf_leave", file: !3, line: 742)
!246 = !DICompositeType(tag: DW_TAG_array_type, baseType: !247, size: 304, elements: !163)
!247 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !113)
!248 = !{i32 7, !"Dwarf Version", i32 5}
!249 = !{i32 2, !"Debug Info Version", i32 3}
!250 = !{i32 1, !"wchar_size", i32 2}
!251 = !{i32 8, !"cf-protection-branch", i32 1}
!252 = !{i32 4, !"function_return_thunk_extern", i32 1}
!253 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!254 = !{i32 1, !"Code Model", i32 2}
!255 = !{i32 1, !"override-stack-alignment", i32 8}
!256 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!257 = distinct !DISubprogram(name: "zlib_inflate_workspacesize", scope: !3, file: !3, line: 28, type: !258, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !38)
!258 = !DISubroutineType(types: !259)
!259 = !{!6}
!260 = !DILocation(line: 30, column: 5, scope: !257)
!261 = distinct !DISubprogram(name: "zlib_inflateReset", scope: !3, file: !3, line: 33, type: !262, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !38, retainedNodes: !264)
!262 = !DISubroutineType(types: !263)
!263 = !{!6, !7}
!264 = !{!265, !266}
!265 = !DILocalVariable(name: "strm", arg: 1, scope: !261, file: !3, line: 33, type: !7)
!266 = !DILocalVariable(name: "state", scope: !261, file: !3, line: 35, type: !81)
!267 = !DILocation(line: 33, column: 33, scope: !261)
!268 = !DILocation(line: 35, column: 5, scope: !261)
!269 = !DILocation(line: 35, column: 27, scope: !261)
!270 = !DILocation(line: 37, column: 9, scope: !271)
!271 = distinct !DILexicalBlock(scope: !261, file: !3, line: 37, column: 9)
!272 = !DILocation(line: 37, column: 14, scope: !271)
!273 = !DILocation(line: 37, column: 22, scope: !271)
!274 = !DILocation(line: 37, column: 25, scope: !271)
!275 = !DILocation(line: 37, column: 31, scope: !271)
!276 = !DILocation(line: 37, column: 37, scope: !271)
!277 = !DILocation(line: 37, column: 9, scope: !261)
!278 = !DILocation(line: 37, column: 46, scope: !271)
!279 = !DILocation(line: 38, column: 37, scope: !261)
!280 = !DILocation(line: 38, column: 43, scope: !261)
!281 = !DILocation(line: 38, column: 11, scope: !261)
!282 = !DILocation(line: 39, column: 40, scope: !261)
!283 = !DILocation(line: 39, column: 47, scope: !261)
!284 = !DILocation(line: 39, column: 53, scope: !261)
!285 = !DILocation(line: 39, column: 22, scope: !261)
!286 = !DILocation(line: 39, column: 28, scope: !261)
!287 = !DILocation(line: 39, column: 38, scope: !261)
!288 = !DILocation(line: 39, column: 5, scope: !261)
!289 = !DILocation(line: 39, column: 11, scope: !261)
!290 = !DILocation(line: 39, column: 20, scope: !261)
!291 = !DILocation(line: 40, column: 5, scope: !261)
!292 = !DILocation(line: 40, column: 11, scope: !261)
!293 = !DILocation(line: 40, column: 15, scope: !261)
!294 = !DILocation(line: 41, column: 5, scope: !261)
!295 = !DILocation(line: 41, column: 11, scope: !261)
!296 = !DILocation(line: 41, column: 17, scope: !261)
!297 = !DILocation(line: 42, column: 5, scope: !261)
!298 = !DILocation(line: 42, column: 12, scope: !261)
!299 = !DILocation(line: 42, column: 17, scope: !261)
!300 = !DILocation(line: 43, column: 5, scope: !261)
!301 = !DILocation(line: 43, column: 12, scope: !261)
!302 = !DILocation(line: 43, column: 17, scope: !261)
!303 = !DILocation(line: 44, column: 5, scope: !261)
!304 = !DILocation(line: 44, column: 12, scope: !261)
!305 = !DILocation(line: 44, column: 21, scope: !261)
!306 = !DILocation(line: 45, column: 5, scope: !261)
!307 = !DILocation(line: 45, column: 12, scope: !261)
!308 = !DILocation(line: 45, column: 17, scope: !261)
!309 = !DILocation(line: 46, column: 5, scope: !261)
!310 = !DILocation(line: 46, column: 12, scope: !261)
!311 = !DILocation(line: 46, column: 17, scope: !261)
!312 = !DILocation(line: 47, column: 5, scope: !261)
!313 = !DILocation(line: 47, column: 12, scope: !261)
!314 = !DILocation(line: 47, column: 17, scope: !261)
!315 = !DILocation(line: 48, column: 54, scope: !261)
!316 = !DILocation(line: 48, column: 61, scope: !261)
!317 = !DILocation(line: 48, column: 40, scope: !261)
!318 = !DILocation(line: 48, column: 47, scope: !261)
!319 = !DILocation(line: 48, column: 52, scope: !261)
!320 = !DILocation(line: 48, column: 22, scope: !261)
!321 = !DILocation(line: 48, column: 29, scope: !261)
!322 = !DILocation(line: 48, column: 38, scope: !261)
!323 = !DILocation(line: 48, column: 5, scope: !261)
!324 = !DILocation(line: 48, column: 12, scope: !261)
!325 = !DILocation(line: 48, column: 20, scope: !261)
!326 = !DILocation(line: 51, column: 26, scope: !261)
!327 = !DILocation(line: 51, column: 33, scope: !261)
!328 = !DILocation(line: 51, column: 23, scope: !261)
!329 = !DILocation(line: 51, column: 5, scope: !261)
!330 = !DILocation(line: 51, column: 12, scope: !261)
!331 = !DILocation(line: 51, column: 18, scope: !261)
!332 = !DILocation(line: 52, column: 5, scope: !261)
!333 = !DILocation(line: 52, column: 12, scope: !261)
!334 = !DILocation(line: 52, column: 18, scope: !261)
!335 = !DILocation(line: 53, column: 5, scope: !261)
!336 = !DILocation(line: 53, column: 12, scope: !261)
!337 = !DILocation(line: 53, column: 18, scope: !261)
!338 = !DILocation(line: 55, column: 5, scope: !261)
!339 = !DILocation(line: 55, column: 5, scope: !340)
!340 = distinct !DILexicalBlock(scope: !261, file: !3, line: 55, column: 5)
!341 = !DILocation(line: 56, column: 5, scope: !261)
!342 = !DILocation(line: 57, column: 1, scope: !261)
!343 = distinct !DISubprogram(name: "zlib_inflateInit2", scope: !3, file: !3, line: 59, type: !4, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !38, retainedNodes: !344)
!344 = !{!345, !346, !347}
!345 = !DILocalVariable(name: "strm", arg: 1, scope: !343, file: !3, line: 59, type: !7)
!346 = !DILocalVariable(name: "windowBits", arg: 2, scope: !343, file: !3, line: 59, type: !6)
!347 = !DILocalVariable(name: "state", scope: !343, file: !3, line: 61, type: !81)
!348 = !DILocation(line: 59, column: 33, scope: !343)
!349 = !DILocation(line: 59, column: 43, scope: !343)
!350 = !DILocation(line: 61, column: 5, scope: !343)
!351 = !DILocation(line: 61, column: 27, scope: !343)
!352 = !DILocation(line: 63, column: 9, scope: !353)
!353 = distinct !DILexicalBlock(scope: !343, file: !3, line: 63, column: 9)
!354 = !DILocation(line: 63, column: 14, scope: !353)
!355 = !DILocation(line: 63, column: 9, scope: !343)
!356 = !DILocation(line: 63, column: 23, scope: !353)
!357 = !DILocation(line: 64, column: 5, scope: !343)
!358 = !DILocation(line: 64, column: 11, scope: !343)
!359 = !DILocation(line: 64, column: 15, scope: !343)
!360 = !DILocation(line: 66, column: 14, scope: !343)
!361 = !DILocation(line: 66, column: 24, scope: !343)
!362 = !DILocation(line: 66, column: 11, scope: !343)
!363 = !DILocation(line: 67, column: 44, scope: !343)
!364 = !DILocation(line: 67, column: 5, scope: !343)
!365 = !DILocation(line: 67, column: 11, scope: !343)
!366 = !DILocation(line: 67, column: 17, scope: !343)
!367 = !DILocation(line: 69, column: 9, scope: !368)
!368 = distinct !DILexicalBlock(scope: !343, file: !3, line: 69, column: 9)
!369 = !DILocation(line: 69, column: 20, scope: !368)
!370 = !DILocation(line: 69, column: 9, scope: !343)
!371 = !DILocation(line: 70, column: 9, scope: !372)
!372 = distinct !DILexicalBlock(scope: !368, file: !3, line: 69, column: 25)
!373 = !DILocation(line: 70, column: 16, scope: !372)
!374 = !DILocation(line: 70, column: 21, scope: !372)
!375 = !DILocation(line: 71, column: 23, scope: !372)
!376 = !DILocation(line: 71, column: 22, scope: !372)
!377 = !DILocation(line: 71, column: 20, scope: !372)
!378 = !DILocation(line: 72, column: 5, scope: !372)
!379 = !DILocation(line: 74, column: 24, scope: !380)
!380 = distinct !DILexicalBlock(scope: !368, file: !3, line: 73, column: 10)
!381 = !DILocation(line: 74, column: 35, scope: !380)
!382 = !DILocation(line: 74, column: 41, scope: !380)
!383 = !DILocation(line: 74, column: 9, scope: !380)
!384 = !DILocation(line: 74, column: 16, scope: !380)
!385 = !DILocation(line: 74, column: 21, scope: !380)
!386 = !DILocation(line: 76, column: 9, scope: !387)
!387 = distinct !DILexicalBlock(scope: !343, file: !3, line: 76, column: 9)
!388 = !DILocation(line: 76, column: 20, scope: !387)
!389 = !DILocation(line: 76, column: 24, scope: !387)
!390 = !DILocation(line: 76, column: 27, scope: !387)
!391 = !DILocation(line: 76, column: 38, scope: !387)
!392 = !DILocation(line: 76, column: 9, scope: !343)
!393 = !DILocation(line: 77, column: 9, scope: !394)
!394 = distinct !DILexicalBlock(scope: !387, file: !3, line: 76, column: 44)
!395 = !DILocation(line: 79, column: 30, scope: !343)
!396 = !DILocation(line: 79, column: 5, scope: !343)
!397 = !DILocation(line: 79, column: 12, scope: !343)
!398 = !DILocation(line: 79, column: 18, scope: !343)
!399 = !DILocation(line: 87, column: 22, scope: !343)
!400 = !DILocation(line: 87, column: 32, scope: !343)
!401 = !DILocation(line: 87, column: 5, scope: !343)
!402 = !DILocation(line: 87, column: 12, scope: !343)
!403 = !DILocation(line: 87, column: 19, scope: !343)
!404 = !DILocation(line: 90, column: 30, scope: !343)
!405 = !DILocation(line: 90, column: 12, scope: !343)
!406 = !DILocation(line: 90, column: 5, scope: !343)
!407 = !DILocation(line: 91, column: 1, scope: !343)
!408 = !DILocation(line: 331, column: 28, scope: !2)
!409 = !DILocation(line: 331, column: 38, scope: !2)
!410 = !DILocation(line: 333, column: 5, scope: !2)
!411 = !DILocation(line: 333, column: 27, scope: !2)
!412 = !DILocation(line: 334, column: 5, scope: !2)
!413 = !DILocation(line: 334, column: 26, scope: !2)
!414 = !DILocation(line: 335, column: 5, scope: !2)
!415 = !DILocation(line: 335, column: 20, scope: !2)
!416 = !DILocation(line: 336, column: 5, scope: !2)
!417 = !DILocation(line: 336, column: 14, scope: !2)
!418 = !DILocation(line: 336, column: 20, scope: !2)
!419 = !DILocation(line: 337, column: 5, scope: !2)
!420 = !DILocation(line: 337, column: 19, scope: !2)
!421 = !DILocation(line: 338, column: 5, scope: !2)
!422 = !DILocation(line: 338, column: 14, scope: !2)
!423 = !DILocation(line: 339, column: 5, scope: !2)
!424 = !DILocation(line: 339, column: 14, scope: !2)
!425 = !DILocation(line: 339, column: 18, scope: !2)
!426 = !DILocation(line: 340, column: 5, scope: !2)
!427 = !DILocation(line: 340, column: 14, scope: !2)
!428 = !DILocation(line: 341, column: 5, scope: !2)
!429 = !DILocation(line: 341, column: 20, scope: !2)
!430 = !DILocation(line: 342, column: 5, scope: !2)
!431 = !DILocation(line: 342, column: 10, scope: !2)
!432 = !DILocation(line: 343, column: 5, scope: !2)
!433 = !DILocation(line: 343, column: 10, scope: !2)
!434 = !DILocation(line: 344, column: 5, scope: !2)
!435 = !DILocation(line: 344, column: 14, scope: !2)
!436 = !DILocation(line: 345, column: 5, scope: !2)
!437 = !DILocation(line: 345, column: 9, scope: !2)
!438 = !DILocation(line: 352, column: 9, scope: !439)
!439 = distinct !DILexicalBlock(scope: !2, file: !3, line: 352, column: 9)
!440 = !DILocation(line: 352, column: 14, scope: !439)
!441 = !DILocation(line: 352, column: 22, scope: !439)
!442 = !DILocation(line: 352, column: 25, scope: !439)
!443 = !DILocation(line: 352, column: 31, scope: !439)
!444 = !DILocation(line: 352, column: 37, scope: !439)
!445 = !DILocation(line: 352, column: 45, scope: !439)
!446 = !DILocation(line: 353, column: 10, scope: !439)
!447 = !DILocation(line: 353, column: 16, scope: !439)
!448 = !DILocation(line: 353, column: 24, scope: !439)
!449 = !DILocation(line: 353, column: 32, scope: !439)
!450 = !DILocation(line: 353, column: 35, scope: !439)
!451 = !DILocation(line: 353, column: 41, scope: !439)
!452 = !DILocation(line: 353, column: 50, scope: !439)
!453 = !DILocation(line: 352, column: 9, scope: !2)
!454 = !DILocation(line: 354, column: 9, scope: !439)
!455 = !DILocation(line: 356, column: 37, scope: !2)
!456 = !DILocation(line: 356, column: 43, scope: !2)
!457 = !DILocation(line: 356, column: 11, scope: !2)
!458 = !DILocation(line: 358, column: 9, scope: !459)
!459 = distinct !DILexicalBlock(scope: !2, file: !3, line: 358, column: 9)
!460 = !DILocation(line: 358, column: 16, scope: !459)
!461 = !DILocation(line: 358, column: 21, scope: !459)
!462 = !DILocation(line: 358, column: 9, scope: !2)
!463 = !DILocation(line: 358, column: 30, scope: !459)
!464 = !DILocation(line: 358, column: 37, scope: !459)
!465 = !DILocation(line: 358, column: 42, scope: !459)
!466 = !DILocation(line: 359, column: 5, scope: !2)
!467 = !DILocation(line: 359, column: 5, scope: !468)
!468 = distinct !DILexicalBlock(scope: !2, file: !3, line: 359, column: 5)
!469 = !DILocation(line: 360, column: 10, scope: !2)
!470 = !DILocation(line: 360, column: 8, scope: !2)
!471 = !DILocation(line: 361, column: 11, scope: !2)
!472 = !DILocation(line: 361, column: 9, scope: !2)
!473 = !DILocation(line: 362, column: 9, scope: !2)
!474 = !DILocation(line: 363, column: 5, scope: !2)
!475 = !DILocation(line: 364, column: 17, scope: !476)
!476 = distinct !DILexicalBlock(scope: !477, file: !3, line: 363, column: 5)
!477 = distinct !DILexicalBlock(scope: !2, file: !3, line: 363, column: 5)
!478 = !DILocation(line: 364, column: 24, scope: !476)
!479 = !DILocation(line: 364, column: 9, scope: !476)
!480 = !DILocation(line: 366, column: 17, scope: !481)
!481 = distinct !DILexicalBlock(scope: !482, file: !3, line: 366, column: 17)
!482 = distinct !DILexicalBlock(scope: !476, file: !3, line: 364, column: 30)
!483 = !DILocation(line: 366, column: 24, scope: !481)
!484 = !DILocation(line: 366, column: 29, scope: !481)
!485 = !DILocation(line: 366, column: 17, scope: !482)
!486 = !DILocation(line: 367, column: 17, scope: !487)
!487 = distinct !DILexicalBlock(scope: !481, file: !3, line: 366, column: 35)
!488 = !DILocation(line: 367, column: 24, scope: !487)
!489 = !DILocation(line: 367, column: 29, scope: !487)
!490 = !DILocation(line: 368, column: 17, scope: !487)
!491 = !DILocation(line: 370, column: 13, scope: !482)
!492 = !DILocation(line: 370, column: 13, scope: !493)
!493 = distinct !DILexicalBlock(scope: !482, file: !3, line: 370, column: 13)
!494 = !DILocation(line: 370, column: 13, scope: !495)
!495 = distinct !DILexicalBlock(scope: !496, file: !3, line: 370, column: 13)
!496 = distinct !DILexicalBlock(scope: !493, file: !3, line: 370, column: 13)
!497 = !DILocation(line: 370, column: 13, scope: !496)
!498 = distinct !{!498, !492, !492, !499, !500}
!499 = !{!"llvm.loop.mustprogress"}
!500 = !{!"llvm.loop.unroll.disable"}
!501 = !DILocation(line: 372, column: 19, scope: !502)
!502 = distinct !DILexicalBlock(scope: !482, file: !3, line: 372, column: 17)
!503 = !DILocation(line: 372, column: 27, scope: !502)
!504 = !DILocation(line: 372, column: 18, scope: !502)
!505 = !DILocation(line: 372, column: 36, scope: !502)
!506 = !DILocation(line: 372, column: 41, scope: !502)
!507 = !DILocation(line: 372, column: 33, scope: !502)
!508 = !DILocation(line: 372, column: 48, scope: !502)
!509 = !DILocation(line: 372, column: 17, scope: !482)
!510 = !DILocation(line: 373, column: 17, scope: !511)
!511 = distinct !DILexicalBlock(scope: !502, file: !3, line: 372, column: 54)
!512 = !DILocation(line: 373, column: 23, scope: !511)
!513 = !DILocation(line: 373, column: 27, scope: !511)
!514 = !DILocation(line: 374, column: 17, scope: !511)
!515 = !DILocation(line: 374, column: 24, scope: !511)
!516 = !DILocation(line: 374, column: 29, scope: !511)
!517 = !DILocation(line: 375, column: 17, scope: !511)
!518 = !DILocation(line: 377, column: 17, scope: !519)
!519 = distinct !DILexicalBlock(scope: !482, file: !3, line: 377, column: 17)
!520 = !DILocation(line: 377, column: 25, scope: !519)
!521 = !DILocation(line: 377, column: 17, scope: !482)
!522 = !DILocation(line: 378, column: 17, scope: !523)
!523 = distinct !DILexicalBlock(scope: !519, file: !3, line: 377, column: 40)
!524 = !DILocation(line: 378, column: 23, scope: !523)
!525 = !DILocation(line: 378, column: 27, scope: !523)
!526 = !DILocation(line: 379, column: 17, scope: !523)
!527 = !DILocation(line: 379, column: 24, scope: !523)
!528 = !DILocation(line: 379, column: 29, scope: !523)
!529 = !DILocation(line: 380, column: 17, scope: !523)
!530 = !DILocation(line: 382, column: 13, scope: !482)
!531 = !DILocation(line: 382, column: 13, scope: !532)
!532 = distinct !DILexicalBlock(scope: !482, file: !3, line: 382, column: 13)
!533 = !DILocation(line: 383, column: 19, scope: !482)
!534 = !DILocation(line: 383, column: 27, scope: !482)
!535 = !DILocation(line: 383, column: 17, scope: !482)
!536 = !DILocation(line: 384, column: 17, scope: !537)
!537 = distinct !DILexicalBlock(scope: !482, file: !3, line: 384, column: 17)
!538 = !DILocation(line: 384, column: 23, scope: !537)
!539 = !DILocation(line: 384, column: 30, scope: !537)
!540 = !DILocation(line: 384, column: 21, scope: !537)
!541 = !DILocation(line: 384, column: 17, scope: !482)
!542 = !DILocation(line: 385, column: 17, scope: !543)
!543 = distinct !DILexicalBlock(scope: !537, file: !3, line: 384, column: 37)
!544 = !DILocation(line: 385, column: 23, scope: !543)
!545 = !DILocation(line: 385, column: 27, scope: !543)
!546 = !DILocation(line: 386, column: 17, scope: !543)
!547 = !DILocation(line: 386, column: 24, scope: !543)
!548 = !DILocation(line: 386, column: 29, scope: !543)
!549 = !DILocation(line: 387, column: 17, scope: !543)
!550 = !DILocation(line: 389, column: 33, scope: !482)
!551 = !DILocation(line: 389, column: 30, scope: !482)
!552 = !DILocation(line: 389, column: 13, scope: !482)
!553 = !DILocation(line: 389, column: 20, scope: !482)
!554 = !DILocation(line: 389, column: 25, scope: !482)
!555 = !DILocation(line: 390, column: 42, scope: !482)
!556 = !DILocation(line: 390, column: 27, scope: !482)
!557 = !DILocation(line: 390, column: 34, scope: !482)
!558 = !DILocation(line: 390, column: 40, scope: !482)
!559 = !DILocation(line: 390, column: 13, scope: !482)
!560 = !DILocation(line: 390, column: 19, scope: !482)
!561 = !DILocation(line: 390, column: 25, scope: !482)
!562 = !DILocation(line: 391, column: 27, scope: !482)
!563 = !DILocation(line: 391, column: 32, scope: !482)
!564 = !DILocation(line: 391, column: 13, scope: !482)
!565 = !DILocation(line: 391, column: 20, scope: !482)
!566 = !DILocation(line: 391, column: 25, scope: !482)
!567 = !DILocation(line: 392, column: 13, scope: !482)
!568 = !DILocation(line: 392, column: 13, scope: !569)
!569 = distinct !DILexicalBlock(scope: !482, file: !3, line: 392, column: 13)
!570 = !DILocation(line: 393, column: 13, scope: !482)
!571 = !DILocation(line: 395, column: 13, scope: !482)
!572 = !DILocation(line: 395, column: 13, scope: !573)
!573 = distinct !DILexicalBlock(scope: !482, file: !3, line: 395, column: 13)
!574 = !DILocation(line: 395, column: 13, scope: !575)
!575 = distinct !DILexicalBlock(scope: !576, file: !3, line: 395, column: 13)
!576 = distinct !DILexicalBlock(scope: !573, file: !3, line: 395, column: 13)
!577 = !DILocation(line: 395, column: 13, scope: !576)
!578 = distinct !{!578, !572, !572, !499, !500}
!579 = !DILocation(line: 396, column: 42, scope: !482)
!580 = !DILocation(line: 396, column: 27, scope: !482)
!581 = !DILocation(line: 396, column: 34, scope: !482)
!582 = !DILocation(line: 396, column: 40, scope: !482)
!583 = !DILocation(line: 396, column: 13, scope: !482)
!584 = !DILocation(line: 396, column: 19, scope: !482)
!585 = !DILocation(line: 396, column: 25, scope: !482)
!586 = !DILocation(line: 397, column: 13, scope: !482)
!587 = !DILocation(line: 397, column: 13, scope: !588)
!588 = distinct !DILexicalBlock(scope: !482, file: !3, line: 397, column: 13)
!589 = !DILocation(line: 398, column: 13, scope: !482)
!590 = !DILocation(line: 398, column: 20, scope: !482)
!591 = !DILocation(line: 398, column: 25, scope: !482)
!592 = !DILocation(line: 401, column: 17, scope: !593)
!593 = distinct !DILexicalBlock(scope: !482, file: !3, line: 401, column: 17)
!594 = !DILocation(line: 401, column: 24, scope: !593)
!595 = !DILocation(line: 401, column: 33, scope: !593)
!596 = !DILocation(line: 401, column: 17, scope: !482)
!597 = !DILocation(line: 402, column: 17, scope: !598)
!598 = distinct !DILexicalBlock(scope: !593, file: !3, line: 401, column: 39)
!599 = !DILocation(line: 402, column: 17, scope: !600)
!600 = distinct !DILexicalBlock(scope: !598, file: !3, line: 402, column: 17)
!601 = !DILocation(line: 403, column: 17, scope: !598)
!602 = !DILocation(line: 405, column: 42, scope: !482)
!603 = !DILocation(line: 405, column: 27, scope: !482)
!604 = !DILocation(line: 405, column: 34, scope: !482)
!605 = !DILocation(line: 405, column: 40, scope: !482)
!606 = !DILocation(line: 405, column: 13, scope: !482)
!607 = !DILocation(line: 405, column: 19, scope: !482)
!608 = !DILocation(line: 405, column: 25, scope: !482)
!609 = !DILocation(line: 406, column: 13, scope: !482)
!610 = !DILocation(line: 406, column: 20, scope: !482)
!611 = !DILocation(line: 406, column: 25, scope: !482)
!612 = !DILocation(line: 409, column: 17, scope: !613)
!613 = distinct !DILexicalBlock(scope: !482, file: !3, line: 409, column: 17)
!614 = !DILocation(line: 409, column: 23, scope: !613)
!615 = !DILocation(line: 409, column: 17, scope: !482)
!616 = !DILocation(line: 409, column: 35, scope: !613)
!617 = !DILocation(line: 409, column: 26, scope: !613)
!618 = !DILocation(line: 412, column: 13, scope: !482)
!619 = !DILocation(line: 412, column: 13, scope: !620)
!620 = distinct !DILexicalBlock(scope: !482, file: !3, line: 412, column: 13)
!621 = !DILocation(line: 413, column: 17, scope: !622)
!622 = distinct !DILexicalBlock(scope: !482, file: !3, line: 413, column: 17)
!623 = !DILocation(line: 413, column: 24, scope: !622)
!624 = !DILocation(line: 413, column: 17, scope: !482)
!625 = !DILocation(line: 414, column: 17, scope: !626)
!626 = distinct !DILexicalBlock(scope: !622, file: !3, line: 413, column: 30)
!627 = !DILocation(line: 414, column: 17, scope: !628)
!628 = distinct !DILexicalBlock(scope: !626, file: !3, line: 414, column: 17)
!629 = !DILocation(line: 415, column: 17, scope: !626)
!630 = !DILocation(line: 415, column: 24, scope: !626)
!631 = !DILocation(line: 415, column: 29, scope: !626)
!632 = !DILocation(line: 416, column: 17, scope: !626)
!633 = !DILocation(line: 418, column: 13, scope: !482)
!634 = !DILocation(line: 418, column: 13, scope: !635)
!635 = distinct !DILexicalBlock(scope: !482, file: !3, line: 418, column: 13)
!636 = !DILocation(line: 418, column: 13, scope: !637)
!637 = distinct !DILexicalBlock(scope: !638, file: !3, line: 418, column: 13)
!638 = distinct !DILexicalBlock(scope: !635, file: !3, line: 418, column: 13)
!639 = !DILocation(line: 418, column: 13, scope: !638)
!640 = distinct !{!640, !634, !634, !499, !500}
!641 = !DILocation(line: 419, column: 27, scope: !482)
!642 = !DILocation(line: 419, column: 13, scope: !482)
!643 = !DILocation(line: 419, column: 20, scope: !482)
!644 = !DILocation(line: 419, column: 25, scope: !482)
!645 = !DILocation(line: 420, column: 13, scope: !482)
!646 = !DILocation(line: 420, column: 13, scope: !647)
!647 = distinct !DILexicalBlock(scope: !482, file: !3, line: 420, column: 13)
!648 = !DILocation(line: 421, column: 21, scope: !482)
!649 = !DILocation(line: 421, column: 13, scope: !482)
!650 = !DILocation(line: 423, column: 17, scope: !651)
!651 = distinct !DILexicalBlock(scope: !482, file: !3, line: 421, column: 30)
!652 = !DILocation(line: 423, column: 24, scope: !651)
!653 = !DILocation(line: 423, column: 29, scope: !651)
!654 = !DILocation(line: 424, column: 17, scope: !651)
!655 = !DILocation(line: 426, column: 34, scope: !651)
!656 = !DILocation(line: 426, column: 17, scope: !651)
!657 = !DILocation(line: 427, column: 17, scope: !651)
!658 = !DILocation(line: 427, column: 24, scope: !651)
!659 = !DILocation(line: 427, column: 29, scope: !651)
!660 = !DILocation(line: 428, column: 17, scope: !651)
!661 = !DILocation(line: 430, column: 17, scope: !651)
!662 = !DILocation(line: 430, column: 24, scope: !651)
!663 = !DILocation(line: 430, column: 29, scope: !651)
!664 = !DILocation(line: 431, column: 17, scope: !651)
!665 = !DILocation(line: 433, column: 17, scope: !651)
!666 = !DILocation(line: 433, column: 23, scope: !651)
!667 = !DILocation(line: 433, column: 27, scope: !651)
!668 = !DILocation(line: 434, column: 17, scope: !651)
!669 = !DILocation(line: 434, column: 24, scope: !651)
!670 = !DILocation(line: 434, column: 29, scope: !651)
!671 = !DILocation(line: 435, column: 13, scope: !651)
!672 = !DILocation(line: 436, column: 13, scope: !482)
!673 = !DILocation(line: 436, column: 13, scope: !674)
!674 = distinct !DILexicalBlock(scope: !482, file: !3, line: 436, column: 13)
!675 = !DILocation(line: 437, column: 13, scope: !482)
!676 = !DILocation(line: 439, column: 13, scope: !482)
!677 = !DILocation(line: 439, column: 13, scope: !678)
!678 = distinct !DILexicalBlock(scope: !482, file: !3, line: 439, column: 13)
!679 = !DILocation(line: 440, column: 13, scope: !482)
!680 = !DILocation(line: 440, column: 13, scope: !681)
!681 = distinct !DILexicalBlock(scope: !482, file: !3, line: 440, column: 13)
!682 = !DILocation(line: 440, column: 13, scope: !683)
!683 = distinct !DILexicalBlock(scope: !684, file: !3, line: 440, column: 13)
!684 = distinct !DILexicalBlock(scope: !681, file: !3, line: 440, column: 13)
!685 = !DILocation(line: 440, column: 13, scope: !684)
!686 = distinct !{!686, !680, !680, !499, !500}
!687 = !DILocation(line: 441, column: 18, scope: !688)
!688 = distinct !DILexicalBlock(scope: !482, file: !3, line: 441, column: 17)
!689 = !DILocation(line: 441, column: 23, scope: !688)
!690 = !DILocation(line: 441, column: 38, scope: !688)
!691 = !DILocation(line: 441, column: 43, scope: !688)
!692 = !DILocation(line: 441, column: 50, scope: !688)
!693 = !DILocation(line: 441, column: 33, scope: !688)
!694 = !DILocation(line: 441, column: 17, scope: !482)
!695 = !DILocation(line: 442, column: 17, scope: !696)
!696 = distinct !DILexicalBlock(scope: !688, file: !3, line: 441, column: 61)
!697 = !DILocation(line: 442, column: 23, scope: !696)
!698 = !DILocation(line: 442, column: 27, scope: !696)
!699 = !DILocation(line: 443, column: 17, scope: !696)
!700 = !DILocation(line: 443, column: 24, scope: !696)
!701 = !DILocation(line: 443, column: 29, scope: !696)
!702 = !DILocation(line: 444, column: 17, scope: !696)
!703 = !DILocation(line: 446, column: 39, scope: !482)
!704 = !DILocation(line: 446, column: 29, scope: !482)
!705 = !DILocation(line: 446, column: 44, scope: !482)
!706 = !DILocation(line: 446, column: 13, scope: !482)
!707 = !DILocation(line: 446, column: 20, scope: !482)
!708 = !DILocation(line: 446, column: 27, scope: !482)
!709 = !DILocation(line: 447, column: 13, scope: !482)
!710 = !DILocation(line: 447, column: 13, scope: !711)
!711 = distinct !DILexicalBlock(scope: !482, file: !3, line: 447, column: 13)
!712 = !DILocation(line: 448, column: 13, scope: !482)
!713 = !DILocation(line: 448, column: 20, scope: !482)
!714 = !DILocation(line: 448, column: 25, scope: !482)
!715 = !DILocation(line: 451, column: 20, scope: !482)
!716 = !DILocation(line: 451, column: 27, scope: !482)
!717 = !DILocation(line: 451, column: 18, scope: !482)
!718 = !DILocation(line: 452, column: 17, scope: !719)
!719 = distinct !DILexicalBlock(scope: !482, file: !3, line: 452, column: 17)
!720 = !DILocation(line: 452, column: 17, scope: !482)
!721 = !DILocation(line: 453, column: 21, scope: !722)
!722 = distinct !DILexicalBlock(scope: !723, file: !3, line: 453, column: 21)
!723 = distinct !DILexicalBlock(scope: !719, file: !3, line: 452, column: 23)
!724 = !DILocation(line: 453, column: 28, scope: !722)
!725 = !DILocation(line: 453, column: 26, scope: !722)
!726 = !DILocation(line: 453, column: 21, scope: !723)
!727 = !DILocation(line: 453, column: 41, scope: !722)
!728 = !DILocation(line: 453, column: 39, scope: !722)
!729 = !DILocation(line: 453, column: 34, scope: !722)
!730 = !DILocation(line: 454, column: 21, scope: !731)
!731 = distinct !DILexicalBlock(scope: !723, file: !3, line: 454, column: 21)
!732 = !DILocation(line: 454, column: 28, scope: !731)
!733 = !DILocation(line: 454, column: 26, scope: !731)
!734 = !DILocation(line: 454, column: 21, scope: !723)
!735 = !DILocation(line: 454, column: 41, scope: !731)
!736 = !DILocation(line: 454, column: 39, scope: !731)
!737 = !DILocation(line: 454, column: 34, scope: !731)
!738 = !DILocation(line: 455, column: 21, scope: !739)
!739 = distinct !DILexicalBlock(scope: !723, file: !3, line: 455, column: 21)
!740 = !DILocation(line: 455, column: 26, scope: !739)
!741 = !DILocation(line: 455, column: 21, scope: !723)
!742 = !DILocation(line: 455, column: 32, scope: !739)
!743 = !DILocation(line: 456, column: 24, scope: !723)
!744 = !DILocation(line: 456, column: 29, scope: !723)
!745 = !DILocation(line: 456, column: 35, scope: !723)
!746 = !DILocation(line: 456, column: 17, scope: !723)
!747 = !DILocation(line: 457, column: 25, scope: !723)
!748 = !DILocation(line: 457, column: 22, scope: !723)
!749 = !DILocation(line: 458, column: 25, scope: !723)
!750 = !DILocation(line: 458, column: 22, scope: !723)
!751 = !DILocation(line: 459, column: 25, scope: !723)
!752 = !DILocation(line: 459, column: 22, scope: !723)
!753 = !DILocation(line: 460, column: 24, scope: !723)
!754 = !DILocation(line: 460, column: 21, scope: !723)
!755 = !DILocation(line: 461, column: 34, scope: !723)
!756 = !DILocation(line: 461, column: 17, scope: !723)
!757 = !DILocation(line: 461, column: 24, scope: !723)
!758 = !DILocation(line: 461, column: 31, scope: !723)
!759 = !DILocation(line: 462, column: 17, scope: !723)
!760 = !DILocation(line: 464, column: 13, scope: !482)
!761 = !DILocation(line: 464, column: 20, scope: !482)
!762 = !DILocation(line: 464, column: 25, scope: !482)
!763 = !DILocation(line: 465, column: 13, scope: !482)
!764 = !DILocation(line: 467, column: 13, scope: !482)
!765 = !DILocation(line: 467, column: 13, scope: !766)
!766 = distinct !DILexicalBlock(scope: !482, file: !3, line: 467, column: 13)
!767 = !DILocation(line: 467, column: 13, scope: !768)
!768 = distinct !DILexicalBlock(scope: !769, file: !3, line: 467, column: 13)
!769 = distinct !DILexicalBlock(scope: !766, file: !3, line: 467, column: 13)
!770 = !DILocation(line: 467, column: 13, scope: !769)
!771 = distinct !{!771, !765, !765, !499, !500}
!772 = !DILocation(line: 468, column: 27, scope: !482)
!773 = !DILocation(line: 468, column: 35, scope: !482)
!774 = !DILocation(line: 468, column: 13, scope: !482)
!775 = !DILocation(line: 468, column: 20, scope: !482)
!776 = !DILocation(line: 468, column: 25, scope: !482)
!777 = !DILocation(line: 469, column: 13, scope: !482)
!778 = !DILocation(line: 469, column: 13, scope: !779)
!779 = distinct !DILexicalBlock(scope: !482, file: !3, line: 469, column: 13)
!780 = !DILocation(line: 470, column: 28, scope: !482)
!781 = !DILocation(line: 470, column: 36, scope: !482)
!782 = !DILocation(line: 470, column: 13, scope: !482)
!783 = !DILocation(line: 470, column: 20, scope: !482)
!784 = !DILocation(line: 470, column: 26, scope: !482)
!785 = !DILocation(line: 471, column: 13, scope: !482)
!786 = !DILocation(line: 471, column: 13, scope: !787)
!787 = distinct !DILexicalBlock(scope: !482, file: !3, line: 471, column: 13)
!788 = !DILocation(line: 472, column: 28, scope: !482)
!789 = !DILocation(line: 472, column: 36, scope: !482)
!790 = !DILocation(line: 472, column: 13, scope: !482)
!791 = !DILocation(line: 472, column: 20, scope: !482)
!792 = !DILocation(line: 472, column: 26, scope: !482)
!793 = !DILocation(line: 473, column: 13, scope: !482)
!794 = !DILocation(line: 473, column: 13, scope: !795)
!795 = distinct !DILexicalBlock(scope: !482, file: !3, line: 473, column: 13)
!796 = !DILocation(line: 475, column: 17, scope: !797)
!797 = distinct !DILexicalBlock(scope: !482, file: !3, line: 475, column: 17)
!798 = !DILocation(line: 475, column: 24, scope: !797)
!799 = !DILocation(line: 475, column: 29, scope: !797)
!800 = !DILocation(line: 475, column: 35, scope: !797)
!801 = !DILocation(line: 475, column: 38, scope: !797)
!802 = !DILocation(line: 475, column: 45, scope: !797)
!803 = !DILocation(line: 475, column: 51, scope: !797)
!804 = !DILocation(line: 475, column: 17, scope: !482)
!805 = !DILocation(line: 476, column: 17, scope: !806)
!806 = distinct !DILexicalBlock(scope: !797, file: !3, line: 475, column: 57)
!807 = !DILocation(line: 476, column: 23, scope: !806)
!808 = !DILocation(line: 476, column: 27, scope: !806)
!809 = !DILocation(line: 477, column: 17, scope: !806)
!810 = !DILocation(line: 477, column: 24, scope: !806)
!811 = !DILocation(line: 477, column: 29, scope: !806)
!812 = !DILocation(line: 478, column: 17, scope: !806)
!813 = !DILocation(line: 481, column: 13, scope: !482)
!814 = !DILocation(line: 481, column: 20, scope: !482)
!815 = !DILocation(line: 481, column: 25, scope: !482)
!816 = !DILocation(line: 482, column: 13, scope: !482)
!817 = !DILocation(line: 482, column: 20, scope: !482)
!818 = !DILocation(line: 482, column: 25, scope: !482)
!819 = !DILocation(line: 485, column: 13, scope: !482)
!820 = !DILocation(line: 485, column: 20, scope: !482)
!821 = !DILocation(line: 485, column: 27, scope: !482)
!822 = !DILocation(line: 485, column: 34, scope: !482)
!823 = !DILocation(line: 485, column: 41, scope: !482)
!824 = !DILocation(line: 485, column: 32, scope: !482)
!825 = !DILocation(line: 486, column: 17, scope: !826)
!826 = distinct !DILexicalBlock(scope: !482, file: !3, line: 485, column: 48)
!827 = !DILocation(line: 486, column: 17, scope: !828)
!828 = distinct !DILexicalBlock(scope: !826, file: !3, line: 486, column: 17)
!829 = !DILocation(line: 486, column: 17, scope: !830)
!830 = distinct !DILexicalBlock(scope: !831, file: !3, line: 486, column: 17)
!831 = distinct !DILexicalBlock(scope: !828, file: !3, line: 486, column: 17)
!832 = !DILocation(line: 486, column: 17, scope: !831)
!833 = distinct !{!833, !827, !827, !499, !500}
!834 = !DILocation(line: 487, column: 69, scope: !826)
!835 = !DILocation(line: 487, column: 53, scope: !826)
!836 = !DILocation(line: 487, column: 17, scope: !826)
!837 = !DILocation(line: 487, column: 24, scope: !826)
!838 = !DILocation(line: 487, column: 35, scope: !826)
!839 = !DILocation(line: 487, column: 42, scope: !826)
!840 = !DILocation(line: 487, column: 46, scope: !826)
!841 = !DILocation(line: 487, column: 29, scope: !826)
!842 = !DILocation(line: 487, column: 51, scope: !826)
!843 = !DILocation(line: 488, column: 17, scope: !826)
!844 = !DILocation(line: 488, column: 17, scope: !845)
!845 = distinct !DILexicalBlock(scope: !826, file: !3, line: 488, column: 17)
!846 = distinct !{!846, !819, !847, !499, !500}
!847 = !DILocation(line: 489, column: 13, scope: !482)
!848 = !DILocation(line: 490, column: 13, scope: !482)
!849 = !DILocation(line: 490, column: 20, scope: !482)
!850 = !DILocation(line: 490, column: 27, scope: !482)
!851 = !DILocation(line: 490, column: 32, scope: !482)
!852 = !DILocation(line: 491, column: 17, scope: !482)
!853 = !DILocation(line: 491, column: 24, scope: !482)
!854 = !DILocation(line: 491, column: 35, scope: !482)
!855 = !DILocation(line: 491, column: 42, scope: !482)
!856 = !DILocation(line: 491, column: 46, scope: !482)
!857 = !DILocation(line: 491, column: 29, scope: !482)
!858 = !DILocation(line: 491, column: 51, scope: !482)
!859 = distinct !{!859, !848, !860, !499, !500}
!860 = !DILocation(line: 491, column: 53, scope: !482)
!861 = !DILocation(line: 492, column: 27, scope: !482)
!862 = !DILocation(line: 492, column: 34, scope: !482)
!863 = !DILocation(line: 492, column: 13, scope: !482)
!864 = !DILocation(line: 492, column: 20, scope: !482)
!865 = !DILocation(line: 492, column: 25, scope: !482)
!866 = !DILocation(line: 493, column: 45, scope: !482)
!867 = !DILocation(line: 493, column: 52, scope: !482)
!868 = !DILocation(line: 493, column: 13, scope: !482)
!869 = !DILocation(line: 493, column: 20, scope: !482)
!870 = !DILocation(line: 493, column: 28, scope: !482)
!871 = !DILocation(line: 494, column: 13, scope: !482)
!872 = !DILocation(line: 494, column: 20, scope: !482)
!873 = !DILocation(line: 494, column: 28, scope: !482)
!874 = !DILocation(line: 495, column: 45, scope: !482)
!875 = !DILocation(line: 495, column: 52, scope: !482)
!876 = !DILocation(line: 495, column: 64, scope: !482)
!877 = !DILocation(line: 495, column: 71, scope: !482)
!878 = !DILocation(line: 496, column: 35, scope: !482)
!879 = !DILocation(line: 496, column: 42, scope: !482)
!880 = !DILocation(line: 496, column: 52, scope: !482)
!881 = !DILocation(line: 496, column: 59, scope: !482)
!882 = !DILocation(line: 495, column: 19, scope: !482)
!883 = !DILocation(line: 495, column: 17, scope: !482)
!884 = !DILocation(line: 497, column: 17, scope: !885)
!885 = distinct !DILexicalBlock(scope: !482, file: !3, line: 497, column: 17)
!886 = !DILocation(line: 497, column: 17, scope: !482)
!887 = !DILocation(line: 498, column: 17, scope: !888)
!888 = distinct !DILexicalBlock(scope: !885, file: !3, line: 497, column: 22)
!889 = !DILocation(line: 498, column: 23, scope: !888)
!890 = !DILocation(line: 498, column: 27, scope: !888)
!891 = !DILocation(line: 499, column: 17, scope: !888)
!892 = !DILocation(line: 499, column: 24, scope: !888)
!893 = !DILocation(line: 499, column: 29, scope: !888)
!894 = !DILocation(line: 500, column: 17, scope: !888)
!895 = !DILocation(line: 502, column: 13, scope: !482)
!896 = !DILocation(line: 502, column: 20, scope: !482)
!897 = !DILocation(line: 502, column: 25, scope: !482)
!898 = !DILocation(line: 503, column: 13, scope: !482)
!899 = !DILocation(line: 503, column: 20, scope: !482)
!900 = !DILocation(line: 503, column: 25, scope: !482)
!901 = !DILocation(line: 506, column: 13, scope: !482)
!902 = !DILocation(line: 506, column: 20, scope: !482)
!903 = !DILocation(line: 506, column: 27, scope: !482)
!904 = !DILocation(line: 506, column: 34, scope: !482)
!905 = !DILocation(line: 506, column: 41, scope: !482)
!906 = !DILocation(line: 506, column: 48, scope: !482)
!907 = !DILocation(line: 506, column: 55, scope: !482)
!908 = !DILocation(line: 506, column: 46, scope: !482)
!909 = !DILocation(line: 506, column: 32, scope: !482)
!910 = !DILocation(line: 507, column: 17, scope: !911)
!911 = distinct !DILexicalBlock(scope: !482, file: !3, line: 506, column: 62)
!912 = !DILocation(line: 508, column: 28, scope: !913)
!913 = distinct !DILexicalBlock(scope: !914, file: !3, line: 507, column: 26)
!914 = distinct !DILexicalBlock(scope: !915, file: !3, line: 507, column: 17)
!915 = distinct !DILexicalBlock(scope: !911, file: !3, line: 507, column: 17)
!916 = !DILocation(line: 508, column: 35, scope: !913)
!917 = !DILocation(line: 508, column: 43, scope: !913)
!918 = !DILocation(line: 509, column: 41, scope: !919)
!919 = distinct !DILexicalBlock(scope: !913, file: !3, line: 509, column: 25)
!920 = !DILocation(line: 509, column: 25, scope: !919)
!921 = !DILocation(line: 509, column: 50, scope: !919)
!922 = !DILocation(line: 509, column: 47, scope: !919)
!923 = !DILocation(line: 509, column: 25, scope: !913)
!924 = !DILocation(line: 509, column: 56, scope: !919)
!925 = !DILocation(line: 510, column: 21, scope: !913)
!926 = !DILocation(line: 510, column: 21, scope: !927)
!927 = distinct !DILexicalBlock(scope: !928, file: !3, line: 510, column: 21)
!928 = distinct !DILexicalBlock(scope: !913, file: !3, line: 510, column: 21)
!929 = !DILocation(line: 510, column: 21, scope: !928)
!930 = !DILocation(line: 507, column: 17, scope: !914)
!931 = distinct !{!931, !932, !933, !500}
!932 = !DILocation(line: 507, column: 17, scope: !915)
!933 = !DILocation(line: 511, column: 17, scope: !915)
!934 = !DILocation(line: 512, column: 26, scope: !935)
!935 = distinct !DILexicalBlock(scope: !911, file: !3, line: 512, column: 21)
!936 = !DILocation(line: 512, column: 21, scope: !935)
!937 = !DILocation(line: 512, column: 30, scope: !935)
!938 = !DILocation(line: 512, column: 21, scope: !911)
!939 = !DILocation(line: 513, column: 21, scope: !940)
!940 = distinct !DILexicalBlock(scope: !935, file: !3, line: 512, column: 36)
!941 = !DILocation(line: 513, column: 21, scope: !942)
!942 = distinct !DILexicalBlock(scope: !940, file: !3, line: 513, column: 21)
!943 = !DILocation(line: 513, column: 21, scope: !944)
!944 = distinct !DILexicalBlock(scope: !945, file: !3, line: 513, column: 21)
!945 = distinct !DILexicalBlock(scope: !942, file: !3, line: 513, column: 21)
!946 = !DILocation(line: 513, column: 21, scope: !945)
!947 = distinct !{!947, !941, !941, !499, !500}
!948 = !DILocation(line: 514, column: 21, scope: !940)
!949 = !DILocation(line: 514, column: 21, scope: !950)
!950 = distinct !DILexicalBlock(scope: !940, file: !3, line: 514, column: 21)
!951 = !DILocation(line: 515, column: 55, scope: !940)
!952 = !DILocation(line: 515, column: 21, scope: !940)
!953 = !DILocation(line: 515, column: 28, scope: !940)
!954 = !DILocation(line: 515, column: 33, scope: !940)
!955 = !DILocation(line: 515, column: 40, scope: !940)
!956 = !DILocation(line: 515, column: 44, scope: !940)
!957 = !DILocation(line: 515, column: 48, scope: !940)
!958 = !DILocation(line: 516, column: 17, scope: !940)
!959 = !DILocation(line: 518, column: 30, scope: !960)
!960 = distinct !DILexicalBlock(scope: !961, file: !3, line: 518, column: 25)
!961 = distinct !DILexicalBlock(scope: !935, file: !3, line: 517, column: 22)
!962 = !DILocation(line: 518, column: 25, scope: !960)
!963 = !DILocation(line: 518, column: 34, scope: !960)
!964 = !DILocation(line: 518, column: 25, scope: !961)
!965 = !DILocation(line: 519, column: 25, scope: !966)
!966 = distinct !DILexicalBlock(scope: !960, file: !3, line: 518, column: 41)
!967 = !DILocation(line: 519, column: 25, scope: !968)
!968 = distinct !DILexicalBlock(scope: !966, file: !3, line: 519, column: 25)
!969 = !DILocation(line: 519, column: 25, scope: !970)
!970 = distinct !DILexicalBlock(scope: !971, file: !3, line: 519, column: 25)
!971 = distinct !DILexicalBlock(scope: !968, file: !3, line: 519, column: 25)
!972 = !DILocation(line: 519, column: 25, scope: !971)
!973 = distinct !{!973, !967, !967, !499, !500}
!974 = !DILocation(line: 520, column: 25, scope: !966)
!975 = !DILocation(line: 520, column: 25, scope: !976)
!976 = distinct !DILexicalBlock(scope: !966, file: !3, line: 520, column: 25)
!977 = !DILocation(line: 521, column: 29, scope: !978)
!978 = distinct !DILexicalBlock(scope: !966, file: !3, line: 521, column: 29)
!979 = !DILocation(line: 521, column: 36, scope: !978)
!980 = !DILocation(line: 521, column: 41, scope: !978)
!981 = !DILocation(line: 521, column: 29, scope: !966)
!982 = !DILocation(line: 522, column: 29, scope: !983)
!983 = distinct !DILexicalBlock(scope: !978, file: !3, line: 521, column: 47)
!984 = !DILocation(line: 522, column: 35, scope: !983)
!985 = !DILocation(line: 522, column: 39, scope: !983)
!986 = !DILocation(line: 523, column: 29, scope: !983)
!987 = !DILocation(line: 523, column: 36, scope: !983)
!988 = !DILocation(line: 523, column: 41, scope: !983)
!989 = !DILocation(line: 524, column: 29, scope: !983)
!990 = !DILocation(line: 526, column: 31, scope: !966)
!991 = !DILocation(line: 526, column: 38, scope: !966)
!992 = !DILocation(line: 526, column: 43, scope: !966)
!993 = !DILocation(line: 526, column: 50, scope: !966)
!994 = !DILocation(line: 526, column: 55, scope: !966)
!995 = !DILocation(line: 526, column: 29, scope: !966)
!996 = !DILocation(line: 527, column: 36, scope: !966)
!997 = !DILocation(line: 527, column: 34, scope: !966)
!998 = !DILocation(line: 527, column: 30, scope: !966)
!999 = !DILocation(line: 528, column: 25, scope: !966)
!1000 = !DILocation(line: 528, column: 25, scope: !1001)
!1001 = distinct !DILexicalBlock(scope: !966, file: !3, line: 528, column: 25)
!1002 = !DILocation(line: 529, column: 21, scope: !966)
!1003 = !DILocation(line: 530, column: 35, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !960, file: !3, line: 530, column: 30)
!1005 = !DILocation(line: 530, column: 30, scope: !1004)
!1006 = !DILocation(line: 530, column: 39, scope: !1004)
!1007 = !DILocation(line: 530, column: 30, scope: !960)
!1008 = !DILocation(line: 531, column: 25, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !1004, file: !3, line: 530, column: 46)
!1010 = !DILocation(line: 531, column: 25, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !1009, file: !3, line: 531, column: 25)
!1012 = !DILocation(line: 531, column: 25, scope: !1013)
!1013 = distinct !DILexicalBlock(scope: !1014, file: !3, line: 531, column: 25)
!1014 = distinct !DILexicalBlock(scope: !1011, file: !3, line: 531, column: 25)
!1015 = !DILocation(line: 531, column: 25, scope: !1014)
!1016 = distinct !{!1016, !1010, !1010, !499, !500}
!1017 = !DILocation(line: 532, column: 25, scope: !1009)
!1018 = !DILocation(line: 532, column: 25, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !1009, file: !3, line: 532, column: 25)
!1020 = !DILocation(line: 533, column: 29, scope: !1009)
!1021 = !DILocation(line: 534, column: 36, scope: !1009)
!1022 = !DILocation(line: 534, column: 34, scope: !1009)
!1023 = !DILocation(line: 534, column: 30, scope: !1009)
!1024 = !DILocation(line: 535, column: 25, scope: !1009)
!1025 = !DILocation(line: 535, column: 25, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !1009, file: !3, line: 535, column: 25)
!1027 = !DILocation(line: 536, column: 21, scope: !1009)
!1028 = !DILocation(line: 538, column: 25, scope: !1029)
!1029 = distinct !DILexicalBlock(scope: !1004, file: !3, line: 537, column: 26)
!1030 = !DILocation(line: 538, column: 25, scope: !1031)
!1031 = distinct !DILexicalBlock(scope: !1029, file: !3, line: 538, column: 25)
!1032 = !DILocation(line: 538, column: 25, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !1034, file: !3, line: 538, column: 25)
!1034 = distinct !DILexicalBlock(scope: !1031, file: !3, line: 538, column: 25)
!1035 = !DILocation(line: 538, column: 25, scope: !1034)
!1036 = distinct !{!1036, !1030, !1030, !499, !500}
!1037 = !DILocation(line: 539, column: 25, scope: !1029)
!1038 = !DILocation(line: 539, column: 25, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !1029, file: !3, line: 539, column: 25)
!1040 = !DILocation(line: 540, column: 29, scope: !1029)
!1041 = !DILocation(line: 541, column: 37, scope: !1029)
!1042 = !DILocation(line: 541, column: 35, scope: !1029)
!1043 = !DILocation(line: 541, column: 30, scope: !1029)
!1044 = !DILocation(line: 542, column: 25, scope: !1029)
!1045 = !DILocation(line: 542, column: 25, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !1029, file: !3, line: 542, column: 25)
!1047 = !DILocation(line: 544, column: 25, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !961, file: !3, line: 544, column: 25)
!1049 = !DILocation(line: 544, column: 32, scope: !1048)
!1050 = !DILocation(line: 544, column: 39, scope: !1048)
!1051 = !DILocation(line: 544, column: 37, scope: !1048)
!1052 = !DILocation(line: 544, column: 46, scope: !1048)
!1053 = !DILocation(line: 544, column: 53, scope: !1048)
!1054 = !DILocation(line: 544, column: 60, scope: !1048)
!1055 = !DILocation(line: 544, column: 67, scope: !1048)
!1056 = !DILocation(line: 544, column: 58, scope: !1048)
!1057 = !DILocation(line: 544, column: 44, scope: !1048)
!1058 = !DILocation(line: 544, column: 25, scope: !961)
!1059 = !DILocation(line: 545, column: 25, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1048, file: !3, line: 544, column: 74)
!1061 = !DILocation(line: 545, column: 31, scope: !1060)
!1062 = !DILocation(line: 545, column: 35, scope: !1060)
!1063 = !DILocation(line: 546, column: 25, scope: !1060)
!1064 = !DILocation(line: 546, column: 32, scope: !1060)
!1065 = !DILocation(line: 546, column: 37, scope: !1060)
!1066 = !DILocation(line: 547, column: 25, scope: !1060)
!1067 = !DILocation(line: 549, column: 21, scope: !961)
!1068 = !DILocation(line: 549, column: 32, scope: !961)
!1069 = !DILocation(line: 550, column: 70, scope: !961)
!1070 = !DILocation(line: 550, column: 54, scope: !961)
!1071 = !DILocation(line: 550, column: 25, scope: !961)
!1072 = !DILocation(line: 550, column: 32, scope: !961)
!1073 = !DILocation(line: 550, column: 37, scope: !961)
!1074 = !DILocation(line: 550, column: 44, scope: !961)
!1075 = !DILocation(line: 550, column: 48, scope: !961)
!1076 = !DILocation(line: 550, column: 52, scope: !961)
!1077 = distinct !{!1077, !1067, !1069, !499, !500}
!1078 = distinct !{!1078, !901, !1079, !499, !500}
!1079 = !DILocation(line: 552, column: 13, scope: !482)
!1080 = !DILocation(line: 555, column: 17, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !482, file: !3, line: 555, column: 17)
!1082 = !DILocation(line: 555, column: 24, scope: !1081)
!1083 = !DILocation(line: 555, column: 29, scope: !1081)
!1084 = !DILocation(line: 555, column: 17, scope: !482)
!1085 = !DILocation(line: 555, column: 37, scope: !1081)
!1086 = !DILocation(line: 558, column: 27, scope: !482)
!1087 = !DILocation(line: 558, column: 34, scope: !482)
!1088 = !DILocation(line: 558, column: 13, scope: !482)
!1089 = !DILocation(line: 558, column: 20, scope: !482)
!1090 = !DILocation(line: 558, column: 25, scope: !482)
!1091 = !DILocation(line: 559, column: 45, scope: !482)
!1092 = !DILocation(line: 559, column: 52, scope: !482)
!1093 = !DILocation(line: 559, column: 13, scope: !482)
!1094 = !DILocation(line: 559, column: 20, scope: !482)
!1095 = !DILocation(line: 559, column: 28, scope: !482)
!1096 = !DILocation(line: 560, column: 13, scope: !482)
!1097 = !DILocation(line: 560, column: 20, scope: !482)
!1098 = !DILocation(line: 560, column: 28, scope: !482)
!1099 = !DILocation(line: 561, column: 44, scope: !482)
!1100 = !DILocation(line: 561, column: 51, scope: !482)
!1101 = !DILocation(line: 561, column: 57, scope: !482)
!1102 = !DILocation(line: 561, column: 64, scope: !482)
!1103 = !DILocation(line: 561, column: 72, scope: !482)
!1104 = !DILocation(line: 561, column: 79, scope: !482)
!1105 = !DILocation(line: 562, column: 35, scope: !482)
!1106 = !DILocation(line: 562, column: 42, scope: !482)
!1107 = !DILocation(line: 562, column: 52, scope: !482)
!1108 = !DILocation(line: 562, column: 59, scope: !482)
!1109 = !DILocation(line: 561, column: 19, scope: !482)
!1110 = !DILocation(line: 561, column: 17, scope: !482)
!1111 = !DILocation(line: 563, column: 17, scope: !1112)
!1112 = distinct !DILexicalBlock(scope: !482, file: !3, line: 563, column: 17)
!1113 = !DILocation(line: 563, column: 17, scope: !482)
!1114 = !DILocation(line: 564, column: 17, scope: !1115)
!1115 = distinct !DILexicalBlock(scope: !1112, file: !3, line: 563, column: 22)
!1116 = !DILocation(line: 564, column: 23, scope: !1115)
!1117 = !DILocation(line: 564, column: 27, scope: !1115)
!1118 = !DILocation(line: 565, column: 17, scope: !1115)
!1119 = !DILocation(line: 565, column: 24, scope: !1115)
!1120 = !DILocation(line: 565, column: 29, scope: !1115)
!1121 = !DILocation(line: 566, column: 17, scope: !1115)
!1122 = !DILocation(line: 568, column: 46, scope: !482)
!1123 = !DILocation(line: 568, column: 53, scope: !482)
!1124 = !DILocation(line: 568, column: 13, scope: !482)
!1125 = !DILocation(line: 568, column: 20, scope: !482)
!1126 = !DILocation(line: 568, column: 29, scope: !482)
!1127 = !DILocation(line: 569, column: 13, scope: !482)
!1128 = !DILocation(line: 569, column: 20, scope: !482)
!1129 = !DILocation(line: 569, column: 29, scope: !482)
!1130 = !DILocation(line: 570, column: 45, scope: !482)
!1131 = !DILocation(line: 570, column: 52, scope: !482)
!1132 = !DILocation(line: 570, column: 59, scope: !482)
!1133 = !DILocation(line: 570, column: 66, scope: !482)
!1134 = !DILocation(line: 570, column: 57, scope: !482)
!1135 = !DILocation(line: 570, column: 72, scope: !482)
!1136 = !DILocation(line: 570, column: 79, scope: !482)
!1137 = !DILocation(line: 571, column: 31, scope: !482)
!1138 = !DILocation(line: 571, column: 38, scope: !482)
!1139 = !DILocation(line: 571, column: 47, scope: !482)
!1140 = !DILocation(line: 571, column: 54, scope: !482)
!1141 = !DILocation(line: 571, column: 65, scope: !482)
!1142 = !DILocation(line: 571, column: 72, scope: !482)
!1143 = !DILocation(line: 570, column: 19, scope: !482)
!1144 = !DILocation(line: 570, column: 17, scope: !482)
!1145 = !DILocation(line: 572, column: 17, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !482, file: !3, line: 572, column: 17)
!1147 = !DILocation(line: 572, column: 17, scope: !482)
!1148 = !DILocation(line: 573, column: 17, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1146, file: !3, line: 572, column: 22)
!1150 = !DILocation(line: 573, column: 23, scope: !1149)
!1151 = !DILocation(line: 573, column: 27, scope: !1149)
!1152 = !DILocation(line: 574, column: 17, scope: !1149)
!1153 = !DILocation(line: 574, column: 24, scope: !1149)
!1154 = !DILocation(line: 574, column: 29, scope: !1149)
!1155 = !DILocation(line: 575, column: 17, scope: !1149)
!1156 = !DILocation(line: 577, column: 13, scope: !482)
!1157 = !DILocation(line: 577, column: 20, scope: !482)
!1158 = !DILocation(line: 577, column: 25, scope: !482)
!1159 = !DILocation(line: 580, column: 17, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !482, file: !3, line: 580, column: 17)
!1161 = !DILocation(line: 580, column: 22, scope: !1160)
!1162 = !DILocation(line: 580, column: 27, scope: !1160)
!1163 = !DILocation(line: 580, column: 30, scope: !1160)
!1164 = !DILocation(line: 580, column: 35, scope: !1160)
!1165 = !DILocation(line: 580, column: 17, scope: !482)
!1166 = !DILocation(line: 581, column: 17, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !1160, file: !3, line: 580, column: 43)
!1168 = !DILocation(line: 581, column: 17, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1167, file: !3, line: 581, column: 17)
!1170 = !DILocation(line: 582, column: 30, scope: !1167)
!1171 = !DILocation(line: 582, column: 36, scope: !1167)
!1172 = !DILocation(line: 582, column: 17, scope: !1167)
!1173 = !DILocation(line: 583, column: 17, scope: !1167)
!1174 = !DILocation(line: 583, column: 17, scope: !1175)
!1175 = distinct !DILexicalBlock(scope: !1167, file: !3, line: 583, column: 17)
!1176 = !DILocation(line: 584, column: 17, scope: !1167)
!1177 = !DILocation(line: 586, column: 13, scope: !482)
!1178 = !DILocation(line: 587, column: 24, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1180, file: !3, line: 586, column: 22)
!1180 = distinct !DILexicalBlock(scope: !1181, file: !3, line: 586, column: 13)
!1181 = distinct !DILexicalBlock(scope: !482, file: !3, line: 586, column: 13)
!1182 = !DILocation(line: 587, column: 31, scope: !1179)
!1183 = !DILocation(line: 587, column: 39, scope: !1179)
!1184 = !DILocation(line: 588, column: 37, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1179, file: !3, line: 588, column: 21)
!1186 = !DILocation(line: 588, column: 21, scope: !1185)
!1187 = !DILocation(line: 588, column: 46, scope: !1185)
!1188 = !DILocation(line: 588, column: 43, scope: !1185)
!1189 = !DILocation(line: 588, column: 21, scope: !1179)
!1190 = !DILocation(line: 588, column: 52, scope: !1185)
!1191 = !DILocation(line: 589, column: 17, scope: !1179)
!1192 = !DILocation(line: 589, column: 17, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !1194, file: !3, line: 589, column: 17)
!1194 = distinct !DILexicalBlock(scope: !1179, file: !3, line: 589, column: 17)
!1195 = !DILocation(line: 589, column: 17, scope: !1194)
!1196 = !DILocation(line: 586, column: 13, scope: !1180)
!1197 = distinct !{!1197, !1198, !1199, !500}
!1198 = !DILocation(line: 586, column: 13, scope: !1181)
!1199 = !DILocation(line: 590, column: 13, scope: !1181)
!1200 = !DILocation(line: 591, column: 22, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !482, file: !3, line: 591, column: 17)
!1202 = !DILocation(line: 591, column: 17, scope: !1201)
!1203 = !DILocation(line: 591, column: 25, scope: !1201)
!1204 = !DILocation(line: 591, column: 34, scope: !1201)
!1205 = !DILocation(line: 591, column: 29, scope: !1201)
!1206 = !DILocation(line: 591, column: 37, scope: !1201)
!1207 = !DILocation(line: 591, column: 45, scope: !1201)
!1208 = !DILocation(line: 591, column: 17, scope: !482)
!1209 = !DILocation(line: 592, column: 24, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1201, file: !3, line: 591, column: 51)
!1211 = !DILocation(line: 593, column: 17, scope: !1210)
!1212 = !DILocation(line: 594, column: 28, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1214, file: !3, line: 593, column: 26)
!1214 = distinct !DILexicalBlock(scope: !1215, file: !3, line: 593, column: 17)
!1215 = distinct !DILexicalBlock(scope: !1210, file: !3, line: 593, column: 17)
!1216 = !DILocation(line: 594, column: 35, scope: !1213)
!1217 = !DILocation(line: 594, column: 48, scope: !1213)
!1218 = !DILocation(line: 594, column: 43, scope: !1213)
!1219 = !DILocation(line: 595, column: 30, scope: !1213)
!1220 = !DILocation(line: 595, column: 64, scope: !1213)
!1221 = !DILocation(line: 595, column: 59, scope: !1213)
!1222 = !DILocation(line: 595, column: 56, scope: !1213)
!1223 = !DILocation(line: 594, column: 52, scope: !1213)
!1224 = !DILocation(line: 596, column: 41, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1213, file: !3, line: 596, column: 25)
!1226 = !DILocation(line: 596, column: 36, scope: !1225)
!1227 = !DILocation(line: 596, column: 53, scope: !1225)
!1228 = !DILocation(line: 596, column: 48, scope: !1225)
!1229 = !DILocation(line: 596, column: 46, scope: !1225)
!1230 = !DILocation(line: 596, column: 62, scope: !1225)
!1231 = !DILocation(line: 596, column: 59, scope: !1225)
!1232 = !DILocation(line: 596, column: 25, scope: !1213)
!1233 = !DILocation(line: 596, column: 68, scope: !1225)
!1234 = !DILocation(line: 597, column: 21, scope: !1213)
!1235 = !DILocation(line: 597, column: 21, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !1237, file: !3, line: 597, column: 21)
!1237 = distinct !DILexicalBlock(scope: !1213, file: !3, line: 597, column: 21)
!1238 = !DILocation(line: 597, column: 21, scope: !1237)
!1239 = !DILocation(line: 593, column: 17, scope: !1214)
!1240 = distinct !{!1240, !1241, !1242, !500}
!1241 = !DILocation(line: 593, column: 17, scope: !1215)
!1242 = !DILocation(line: 598, column: 17, scope: !1215)
!1243 = !DILocation(line: 599, column: 17, scope: !1210)
!1244 = !DILocation(line: 599, column: 17, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1210, file: !3, line: 599, column: 17)
!1246 = !DILocation(line: 600, column: 13, scope: !1210)
!1247 = !DILocation(line: 601, column: 13, scope: !482)
!1248 = !DILocation(line: 601, column: 13, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !482, file: !3, line: 601, column: 13)
!1250 = !DILocation(line: 602, column: 44, scope: !482)
!1251 = !DILocation(line: 602, column: 29, scope: !482)
!1252 = !DILocation(line: 602, column: 13, scope: !482)
!1253 = !DILocation(line: 602, column: 20, scope: !482)
!1254 = !DILocation(line: 602, column: 27, scope: !482)
!1255 = !DILocation(line: 603, column: 28, scope: !1256)
!1256 = distinct !DILexicalBlock(scope: !482, file: !3, line: 603, column: 17)
!1257 = !DILocation(line: 603, column: 17, scope: !1256)
!1258 = !DILocation(line: 603, column: 32, scope: !1256)
!1259 = !DILocation(line: 603, column: 17, scope: !482)
!1260 = !DILocation(line: 604, column: 17, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !1256, file: !3, line: 603, column: 38)
!1262 = !DILocation(line: 604, column: 24, scope: !1261)
!1263 = !DILocation(line: 604, column: 29, scope: !1261)
!1264 = !DILocation(line: 605, column: 17, scope: !1261)
!1265 = !DILocation(line: 607, column: 22, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !482, file: !3, line: 607, column: 17)
!1267 = !DILocation(line: 607, column: 17, scope: !1266)
!1268 = !DILocation(line: 607, column: 25, scope: !1266)
!1269 = !DILocation(line: 607, column: 17, scope: !482)
!1270 = !DILocation(line: 608, column: 17, scope: !1271)
!1271 = distinct !DILexicalBlock(scope: !1266, file: !3, line: 607, column: 31)
!1272 = !DILocation(line: 608, column: 24, scope: !1271)
!1273 = !DILocation(line: 608, column: 29, scope: !1271)
!1274 = !DILocation(line: 609, column: 17, scope: !1271)
!1275 = !DILocation(line: 611, column: 22, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !482, file: !3, line: 611, column: 17)
!1277 = !DILocation(line: 611, column: 17, scope: !1276)
!1278 = !DILocation(line: 611, column: 25, scope: !1276)
!1279 = !DILocation(line: 611, column: 17, scope: !482)
!1280 = !DILocation(line: 612, column: 17, scope: !1281)
!1281 = distinct !DILexicalBlock(scope: !1276, file: !3, line: 611, column: 31)
!1282 = !DILocation(line: 612, column: 23, scope: !1281)
!1283 = !DILocation(line: 612, column: 27, scope: !1281)
!1284 = !DILocation(line: 613, column: 17, scope: !1281)
!1285 = !DILocation(line: 613, column: 24, scope: !1281)
!1286 = !DILocation(line: 613, column: 29, scope: !1281)
!1287 = !DILocation(line: 614, column: 17, scope: !1281)
!1288 = !DILocation(line: 616, column: 44, scope: !482)
!1289 = !DILocation(line: 616, column: 28, scope: !482)
!1290 = !DILocation(line: 616, column: 48, scope: !482)
!1291 = !DILocation(line: 616, column: 13, scope: !482)
!1292 = !DILocation(line: 616, column: 20, scope: !482)
!1293 = !DILocation(line: 616, column: 26, scope: !482)
!1294 = !DILocation(line: 617, column: 13, scope: !482)
!1295 = !DILocation(line: 617, column: 20, scope: !482)
!1296 = !DILocation(line: 617, column: 25, scope: !482)
!1297 = !DILocation(line: 620, column: 17, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !482, file: !3, line: 620, column: 17)
!1299 = !DILocation(line: 620, column: 24, scope: !1298)
!1300 = !DILocation(line: 620, column: 17, scope: !482)
!1301 = !DILocation(line: 621, column: 17, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !1298, file: !3, line: 620, column: 31)
!1303 = !DILocation(line: 621, column: 17, scope: !1304)
!1304 = distinct !DILexicalBlock(scope: !1302, file: !3, line: 621, column: 17)
!1305 = !DILocation(line: 621, column: 17, scope: !1306)
!1306 = distinct !DILexicalBlock(scope: !1307, file: !3, line: 621, column: 17)
!1307 = distinct !DILexicalBlock(scope: !1304, file: !3, line: 621, column: 17)
!1308 = !DILocation(line: 621, column: 17, scope: !1307)
!1309 = distinct !{!1309, !1303, !1303, !499, !500}
!1310 = !DILocation(line: 622, column: 34, scope: !1302)
!1311 = !DILocation(line: 622, column: 17, scope: !1302)
!1312 = !DILocation(line: 622, column: 24, scope: !1302)
!1313 = !DILocation(line: 622, column: 31, scope: !1302)
!1314 = !DILocation(line: 623, column: 17, scope: !1302)
!1315 = !DILocation(line: 623, column: 17, scope: !1316)
!1316 = distinct !DILexicalBlock(scope: !1302, file: !3, line: 623, column: 17)
!1317 = !DILocation(line: 624, column: 13, scope: !1302)
!1318 = !DILocation(line: 625, column: 13, scope: !482)
!1319 = !DILocation(line: 625, column: 20, scope: !482)
!1320 = !DILocation(line: 625, column: 25, scope: !482)
!1321 = !DILocation(line: 628, column: 13, scope: !482)
!1322 = !DILocation(line: 629, column: 24, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !1324, file: !3, line: 628, column: 22)
!1324 = distinct !DILexicalBlock(scope: !1325, file: !3, line: 628, column: 13)
!1325 = distinct !DILexicalBlock(scope: !482, file: !3, line: 628, column: 13)
!1326 = !DILocation(line: 629, column: 31, scope: !1323)
!1327 = !DILocation(line: 629, column: 40, scope: !1323)
!1328 = !DILocation(line: 630, column: 37, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !1323, file: !3, line: 630, column: 21)
!1330 = !DILocation(line: 630, column: 21, scope: !1329)
!1331 = !DILocation(line: 630, column: 46, scope: !1329)
!1332 = !DILocation(line: 630, column: 43, scope: !1329)
!1333 = !DILocation(line: 630, column: 21, scope: !1323)
!1334 = !DILocation(line: 630, column: 52, scope: !1329)
!1335 = !DILocation(line: 631, column: 17, scope: !1323)
!1336 = !DILocation(line: 631, column: 17, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !1338, file: !3, line: 631, column: 17)
!1338 = distinct !DILexicalBlock(scope: !1323, file: !3, line: 631, column: 17)
!1339 = !DILocation(line: 631, column: 17, scope: !1338)
!1340 = !DILocation(line: 628, column: 13, scope: !1324)
!1341 = distinct !{!1341, !1342, !1343, !500}
!1342 = !DILocation(line: 628, column: 13, scope: !1325)
!1343 = !DILocation(line: 632, column: 13, scope: !1325)
!1344 = !DILocation(line: 633, column: 23, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !482, file: !3, line: 633, column: 17)
!1346 = !DILocation(line: 633, column: 18, scope: !1345)
!1347 = !DILocation(line: 633, column: 26, scope: !1345)
!1348 = !DILocation(line: 633, column: 34, scope: !1345)
!1349 = !DILocation(line: 633, column: 17, scope: !482)
!1350 = !DILocation(line: 634, column: 24, scope: !1351)
!1351 = distinct !DILexicalBlock(scope: !1345, file: !3, line: 633, column: 40)
!1352 = !DILocation(line: 635, column: 17, scope: !1351)
!1353 = !DILocation(line: 636, column: 28, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !1355, file: !3, line: 635, column: 26)
!1355 = distinct !DILexicalBlock(scope: !1356, file: !3, line: 635, column: 17)
!1356 = distinct !DILexicalBlock(scope: !1351, file: !3, line: 635, column: 17)
!1357 = !DILocation(line: 636, column: 35, scope: !1354)
!1358 = !DILocation(line: 636, column: 49, scope: !1354)
!1359 = !DILocation(line: 636, column: 44, scope: !1354)
!1360 = !DILocation(line: 637, column: 30, scope: !1354)
!1361 = !DILocation(line: 637, column: 64, scope: !1354)
!1362 = !DILocation(line: 637, column: 59, scope: !1354)
!1363 = !DILocation(line: 637, column: 56, scope: !1354)
!1364 = !DILocation(line: 636, column: 53, scope: !1354)
!1365 = !DILocation(line: 638, column: 41, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1354, file: !3, line: 638, column: 25)
!1367 = !DILocation(line: 638, column: 36, scope: !1366)
!1368 = !DILocation(line: 638, column: 53, scope: !1366)
!1369 = !DILocation(line: 638, column: 48, scope: !1366)
!1370 = !DILocation(line: 638, column: 46, scope: !1366)
!1371 = !DILocation(line: 638, column: 62, scope: !1366)
!1372 = !DILocation(line: 638, column: 59, scope: !1366)
!1373 = !DILocation(line: 638, column: 25, scope: !1354)
!1374 = !DILocation(line: 638, column: 68, scope: !1366)
!1375 = !DILocation(line: 639, column: 21, scope: !1354)
!1376 = !DILocation(line: 639, column: 21, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !1378, file: !3, line: 639, column: 21)
!1378 = distinct !DILexicalBlock(scope: !1354, file: !3, line: 639, column: 21)
!1379 = !DILocation(line: 639, column: 21, scope: !1378)
!1380 = !DILocation(line: 635, column: 17, scope: !1355)
!1381 = distinct !{!1381, !1382, !1383, !500}
!1382 = !DILocation(line: 635, column: 17, scope: !1356)
!1383 = !DILocation(line: 640, column: 17, scope: !1356)
!1384 = !DILocation(line: 641, column: 17, scope: !1351)
!1385 = !DILocation(line: 641, column: 17, scope: !1386)
!1386 = distinct !DILexicalBlock(scope: !1351, file: !3, line: 641, column: 17)
!1387 = !DILocation(line: 642, column: 13, scope: !1351)
!1388 = !DILocation(line: 643, column: 13, scope: !482)
!1389 = !DILocation(line: 643, column: 13, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !482, file: !3, line: 643, column: 13)
!1391 = !DILocation(line: 644, column: 22, scope: !1392)
!1392 = distinct !DILexicalBlock(scope: !482, file: !3, line: 644, column: 17)
!1393 = !DILocation(line: 644, column: 17, scope: !1392)
!1394 = !DILocation(line: 644, column: 25, scope: !1392)
!1395 = !DILocation(line: 644, column: 17, scope: !482)
!1396 = !DILocation(line: 645, column: 17, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !1392, file: !3, line: 644, column: 31)
!1398 = !DILocation(line: 645, column: 23, scope: !1397)
!1399 = !DILocation(line: 645, column: 27, scope: !1397)
!1400 = !DILocation(line: 646, column: 17, scope: !1397)
!1401 = !DILocation(line: 646, column: 24, scope: !1397)
!1402 = !DILocation(line: 646, column: 29, scope: !1397)
!1403 = !DILocation(line: 647, column: 17, scope: !1397)
!1404 = !DILocation(line: 649, column: 44, scope: !482)
!1405 = !DILocation(line: 649, column: 29, scope: !482)
!1406 = !DILocation(line: 649, column: 13, scope: !482)
!1407 = !DILocation(line: 649, column: 20, scope: !482)
!1408 = !DILocation(line: 649, column: 27, scope: !482)
!1409 = !DILocation(line: 650, column: 44, scope: !482)
!1410 = !DILocation(line: 650, column: 28, scope: !482)
!1411 = !DILocation(line: 650, column: 48, scope: !482)
!1412 = !DILocation(line: 650, column: 13, scope: !482)
!1413 = !DILocation(line: 650, column: 20, scope: !482)
!1414 = !DILocation(line: 650, column: 26, scope: !482)
!1415 = !DILocation(line: 651, column: 13, scope: !482)
!1416 = !DILocation(line: 651, column: 20, scope: !482)
!1417 = !DILocation(line: 651, column: 25, scope: !482)
!1418 = !DILocation(line: 654, column: 17, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !482, file: !3, line: 654, column: 17)
!1420 = !DILocation(line: 654, column: 24, scope: !1419)
!1421 = !DILocation(line: 654, column: 17, scope: !482)
!1422 = !DILocation(line: 655, column: 17, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !1419, file: !3, line: 654, column: 31)
!1424 = !DILocation(line: 655, column: 17, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1423, file: !3, line: 655, column: 17)
!1426 = !DILocation(line: 655, column: 17, scope: !1427)
!1427 = distinct !DILexicalBlock(scope: !1428, file: !3, line: 655, column: 17)
!1428 = distinct !DILexicalBlock(scope: !1425, file: !3, line: 655, column: 17)
!1429 = !DILocation(line: 655, column: 17, scope: !1428)
!1430 = distinct !{!1430, !1424, !1424, !499, !500}
!1431 = !DILocation(line: 656, column: 34, scope: !1423)
!1432 = !DILocation(line: 656, column: 17, scope: !1423)
!1433 = !DILocation(line: 656, column: 24, scope: !1423)
!1434 = !DILocation(line: 656, column: 31, scope: !1423)
!1435 = !DILocation(line: 657, column: 17, scope: !1423)
!1436 = !DILocation(line: 657, column: 17, scope: !1437)
!1437 = distinct !DILexicalBlock(scope: !1423, file: !3, line: 657, column: 17)
!1438 = !DILocation(line: 658, column: 13, scope: !1423)
!1439 = !DILocation(line: 666, column: 17, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !482, file: !3, line: 666, column: 17)
!1441 = !DILocation(line: 666, column: 24, scope: !1440)
!1442 = !DILocation(line: 666, column: 33, scope: !1440)
!1443 = !DILocation(line: 666, column: 40, scope: !1440)
!1444 = !DILocation(line: 666, column: 48, scope: !1440)
!1445 = !DILocation(line: 666, column: 46, scope: !1440)
!1446 = !DILocation(line: 666, column: 54, scope: !1440)
!1447 = !DILocation(line: 666, column: 52, scope: !1440)
!1448 = !DILocation(line: 666, column: 31, scope: !1440)
!1449 = !DILocation(line: 666, column: 17, scope: !482)
!1450 = !DILocation(line: 667, column: 17, scope: !1451)
!1451 = distinct !DILexicalBlock(scope: !1440, file: !3, line: 666, column: 60)
!1452 = !DILocation(line: 667, column: 23, scope: !1451)
!1453 = !DILocation(line: 667, column: 27, scope: !1451)
!1454 = !DILocation(line: 668, column: 17, scope: !1451)
!1455 = !DILocation(line: 668, column: 24, scope: !1451)
!1456 = !DILocation(line: 668, column: 29, scope: !1451)
!1457 = !DILocation(line: 669, column: 17, scope: !1451)
!1458 = !DILocation(line: 671, column: 13, scope: !482)
!1459 = !DILocation(line: 671, column: 20, scope: !482)
!1460 = !DILocation(line: 671, column: 25, scope: !482)
!1461 = !DILocation(line: 674, column: 17, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !482, file: !3, line: 674, column: 17)
!1463 = !DILocation(line: 674, column: 22, scope: !1462)
!1464 = !DILocation(line: 674, column: 17, scope: !482)
!1465 = !DILocation(line: 674, column: 28, scope: !1462)
!1466 = !DILocation(line: 675, column: 20, scope: !482)
!1467 = !DILocation(line: 675, column: 26, scope: !482)
!1468 = !DILocation(line: 675, column: 24, scope: !482)
!1469 = !DILocation(line: 675, column: 18, scope: !482)
!1470 = !DILocation(line: 676, column: 17, scope: !1471)
!1471 = distinct !DILexicalBlock(scope: !482, file: !3, line: 676, column: 17)
!1472 = !DILocation(line: 676, column: 24, scope: !1471)
!1473 = !DILocation(line: 676, column: 33, scope: !1471)
!1474 = !DILocation(line: 676, column: 31, scope: !1471)
!1475 = !DILocation(line: 676, column: 17, scope: !482)
!1476 = !DILocation(line: 677, column: 24, scope: !1477)
!1477 = distinct !DILexicalBlock(scope: !1471, file: !3, line: 676, column: 39)
!1478 = !DILocation(line: 677, column: 31, scope: !1477)
!1479 = !DILocation(line: 677, column: 40, scope: !1477)
!1480 = !DILocation(line: 677, column: 38, scope: !1477)
!1481 = !DILocation(line: 677, column: 22, scope: !1477)
!1482 = !DILocation(line: 678, column: 21, scope: !1483)
!1483 = distinct !DILexicalBlock(scope: !1477, file: !3, line: 678, column: 21)
!1484 = !DILocation(line: 678, column: 28, scope: !1483)
!1485 = !DILocation(line: 678, column: 35, scope: !1483)
!1486 = !DILocation(line: 678, column: 26, scope: !1483)
!1487 = !DILocation(line: 678, column: 21, scope: !1477)
!1488 = !DILocation(line: 679, column: 29, scope: !1489)
!1489 = distinct !DILexicalBlock(scope: !1483, file: !3, line: 678, column: 42)
!1490 = !DILocation(line: 679, column: 36, scope: !1489)
!1491 = !DILocation(line: 679, column: 26, scope: !1489)
!1492 = !DILocation(line: 680, column: 28, scope: !1489)
!1493 = !DILocation(line: 680, column: 35, scope: !1489)
!1494 = !DILocation(line: 680, column: 45, scope: !1489)
!1495 = !DILocation(line: 680, column: 52, scope: !1489)
!1496 = !DILocation(line: 680, column: 60, scope: !1489)
!1497 = !DILocation(line: 680, column: 58, scope: !1489)
!1498 = !DILocation(line: 680, column: 42, scope: !1489)
!1499 = !DILocation(line: 680, column: 26, scope: !1489)
!1500 = !DILocation(line: 681, column: 17, scope: !1489)
!1501 = !DILocation(line: 683, column: 28, scope: !1483)
!1502 = !DILocation(line: 683, column: 35, scope: !1483)
!1503 = !DILocation(line: 683, column: 45, scope: !1483)
!1504 = !DILocation(line: 683, column: 52, scope: !1483)
!1505 = !DILocation(line: 683, column: 60, scope: !1483)
!1506 = !DILocation(line: 683, column: 58, scope: !1483)
!1507 = !DILocation(line: 683, column: 42, scope: !1483)
!1508 = !DILocation(line: 683, column: 26, scope: !1483)
!1509 = !DILocation(line: 684, column: 21, scope: !1510)
!1510 = distinct !DILexicalBlock(scope: !1477, file: !3, line: 684, column: 21)
!1511 = !DILocation(line: 684, column: 28, scope: !1510)
!1512 = !DILocation(line: 684, column: 35, scope: !1510)
!1513 = !DILocation(line: 684, column: 26, scope: !1510)
!1514 = !DILocation(line: 684, column: 21, scope: !1477)
!1515 = !DILocation(line: 684, column: 50, scope: !1510)
!1516 = !DILocation(line: 684, column: 57, scope: !1510)
!1517 = !DILocation(line: 684, column: 48, scope: !1510)
!1518 = !DILocation(line: 684, column: 43, scope: !1510)
!1519 = !DILocation(line: 685, column: 13, scope: !1477)
!1520 = !DILocation(line: 687, column: 24, scope: !1521)
!1521 = distinct !DILexicalBlock(scope: !1471, file: !3, line: 686, column: 18)
!1522 = !DILocation(line: 687, column: 30, scope: !1521)
!1523 = !DILocation(line: 687, column: 37, scope: !1521)
!1524 = !DILocation(line: 687, column: 28, scope: !1521)
!1525 = !DILocation(line: 687, column: 22, scope: !1521)
!1526 = !DILocation(line: 688, column: 24, scope: !1521)
!1527 = !DILocation(line: 688, column: 31, scope: !1521)
!1528 = !DILocation(line: 688, column: 22, scope: !1521)
!1529 = !DILocation(line: 690, column: 17, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !482, file: !3, line: 690, column: 17)
!1531 = !DILocation(line: 690, column: 24, scope: !1530)
!1532 = !DILocation(line: 690, column: 22, scope: !1530)
!1533 = !DILocation(line: 690, column: 17, scope: !482)
!1534 = !DILocation(line: 690, column: 37, scope: !1530)
!1535 = !DILocation(line: 690, column: 35, scope: !1530)
!1536 = !DILocation(line: 690, column: 30, scope: !1530)
!1537 = !DILocation(line: 691, column: 21, scope: !482)
!1538 = !DILocation(line: 691, column: 18, scope: !482)
!1539 = !DILocation(line: 692, column: 30, scope: !482)
!1540 = !DILocation(line: 692, column: 13, scope: !482)
!1541 = !DILocation(line: 692, column: 20, scope: !482)
!1542 = !DILocation(line: 692, column: 27, scope: !482)
!1543 = !DILocation(line: 693, column: 13, scope: !482)
!1544 = !DILocation(line: 694, column: 31, scope: !1545)
!1545 = distinct !DILexicalBlock(scope: !482, file: !3, line: 693, column: 16)
!1546 = !DILocation(line: 694, column: 26, scope: !1545)
!1547 = !DILocation(line: 694, column: 21, scope: !1545)
!1548 = !DILocation(line: 694, column: 24, scope: !1545)
!1549 = !DILocation(line: 695, column: 13, scope: !1545)
!1550 = !DILocation(line: 695, column: 22, scope: !482)
!1551 = distinct !{!1551, !1543, !1552, !499, !500}
!1552 = !DILocation(line: 695, column: 28, scope: !482)
!1553 = !DILocation(line: 696, column: 17, scope: !1554)
!1554 = distinct !DILexicalBlock(scope: !482, file: !3, line: 696, column: 17)
!1555 = !DILocation(line: 696, column: 24, scope: !1554)
!1556 = !DILocation(line: 696, column: 31, scope: !1554)
!1557 = !DILocation(line: 696, column: 17, scope: !482)
!1558 = !DILocation(line: 696, column: 37, scope: !1554)
!1559 = !DILocation(line: 696, column: 44, scope: !1554)
!1560 = !DILocation(line: 696, column: 49, scope: !1554)
!1561 = !DILocation(line: 697, column: 13, scope: !482)
!1562 = !DILocation(line: 699, column: 17, scope: !1563)
!1563 = distinct !DILexicalBlock(scope: !482, file: !3, line: 699, column: 17)
!1564 = !DILocation(line: 699, column: 22, scope: !1563)
!1565 = !DILocation(line: 699, column: 17, scope: !482)
!1566 = !DILocation(line: 699, column: 28, scope: !1563)
!1567 = !DILocation(line: 700, column: 38, scope: !482)
!1568 = !DILocation(line: 700, column: 45, scope: !482)
!1569 = !DILocation(line: 700, column: 22, scope: !482)
!1570 = !DILocation(line: 700, column: 17, scope: !482)
!1571 = !DILocation(line: 700, column: 20, scope: !482)
!1572 = !DILocation(line: 701, column: 17, scope: !482)
!1573 = !DILocation(line: 702, column: 13, scope: !482)
!1574 = !DILocation(line: 702, column: 20, scope: !482)
!1575 = !DILocation(line: 702, column: 25, scope: !482)
!1576 = !DILocation(line: 703, column: 13, scope: !482)
!1577 = !DILocation(line: 705, column: 17, scope: !1578)
!1578 = distinct !DILexicalBlock(scope: !482, file: !3, line: 705, column: 17)
!1579 = !DILocation(line: 705, column: 24, scope: !1578)
!1580 = !DILocation(line: 705, column: 17, scope: !482)
!1581 = !DILocation(line: 706, column: 17, scope: !1582)
!1582 = distinct !DILexicalBlock(scope: !1578, file: !3, line: 705, column: 30)
!1583 = !DILocation(line: 706, column: 17, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1582, file: !3, line: 706, column: 17)
!1585 = !DILocation(line: 706, column: 17, scope: !1586)
!1586 = distinct !DILexicalBlock(scope: !1587, file: !3, line: 706, column: 17)
!1587 = distinct !DILexicalBlock(scope: !1584, file: !3, line: 706, column: 17)
!1588 = !DILocation(line: 706, column: 17, scope: !1587)
!1589 = distinct !{!1589, !1583, !1583, !499, !500}
!1590 = !DILocation(line: 707, column: 24, scope: !1582)
!1591 = !DILocation(line: 707, column: 21, scope: !1582)
!1592 = !DILocation(line: 708, column: 36, scope: !1582)
!1593 = !DILocation(line: 708, column: 17, scope: !1582)
!1594 = !DILocation(line: 708, column: 23, scope: !1582)
!1595 = !DILocation(line: 708, column: 33, scope: !1582)
!1596 = !DILocation(line: 709, column: 33, scope: !1582)
!1597 = !DILocation(line: 709, column: 17, scope: !1582)
!1598 = !DILocation(line: 709, column: 24, scope: !1582)
!1599 = !DILocation(line: 709, column: 30, scope: !1582)
!1600 = !DILocation(line: 710, column: 52, scope: !1601)
!1601 = distinct !DILexicalBlock(scope: !1582, file: !3, line: 710, column: 21)
!1602 = !DILocation(line: 710, column: 21, scope: !1582)
!1603 = !DILocation(line: 712, column: 25, scope: !1601)
!1604 = !DILocation(line: 711, column: 35, scope: !1601)
!1605 = !DILocation(line: 711, column: 42, scope: !1601)
!1606 = !DILocation(line: 711, column: 48, scope: !1601)
!1607 = !DILocation(line: 711, column: 21, scope: !1601)
!1608 = !DILocation(line: 711, column: 27, scope: !1601)
!1609 = !DILocation(line: 711, column: 33, scope: !1601)
!1610 = !DILocation(line: 713, column: 23, scope: !1582)
!1611 = !DILocation(line: 713, column: 21, scope: !1582)
!1612 = !DILocation(line: 715, column: 22, scope: !1613)
!1613 = distinct !DILexicalBlock(scope: !1582, file: !3, line: 714, column: 21)
!1614 = !DILocation(line: 715, column: 40, scope: !1613)
!1615 = !DILocation(line: 715, column: 47, scope: !1613)
!1616 = !DILocation(line: 715, column: 37, scope: !1613)
!1617 = !DILocation(line: 714, column: 21, scope: !1582)
!1618 = !DILocation(line: 716, column: 21, scope: !1619)
!1619 = distinct !DILexicalBlock(scope: !1613, file: !3, line: 715, column: 54)
!1620 = !DILocation(line: 716, column: 27, scope: !1619)
!1621 = !DILocation(line: 716, column: 31, scope: !1619)
!1622 = !DILocation(line: 717, column: 21, scope: !1619)
!1623 = !DILocation(line: 717, column: 28, scope: !1619)
!1624 = !DILocation(line: 717, column: 33, scope: !1619)
!1625 = !DILocation(line: 718, column: 21, scope: !1619)
!1626 = !DILocation(line: 720, column: 17, scope: !1582)
!1627 = !DILocation(line: 720, column: 17, scope: !1628)
!1628 = distinct !DILexicalBlock(scope: !1582, file: !3, line: 720, column: 17)
!1629 = !DILocation(line: 721, column: 13, scope: !1582)
!1630 = !DILocation(line: 722, column: 13, scope: !482)
!1631 = !DILocation(line: 722, column: 20, scope: !482)
!1632 = !DILocation(line: 722, column: 25, scope: !482)
!1633 = !DILocation(line: 725, column: 17, scope: !482)
!1634 = !DILocation(line: 726, column: 13, scope: !482)
!1635 = !DILocation(line: 728, column: 17, scope: !482)
!1636 = !DILocation(line: 729, column: 13, scope: !482)
!1637 = !DILocation(line: 731, column: 13, scope: !482)
!1638 = !DILocation(line: 732, column: 9, scope: !482)
!1639 = !DILocation(line: 734, column: 13, scope: !482)
!1640 = !DILocation(line: 363, column: 5, scope: !476)
!1641 = distinct !{!1641, !1642, !1643, !500}
!1642 = !DILocation(line: 363, column: 5, scope: !477)
!1643 = !DILocation(line: 735, column: 9, scope: !477)
!1644 = !DILocation(line: 742, column: 3, scope: !2)
!1645 = !DILocation(line: 743, column: 5, scope: !2)
!1646 = !DILocation(line: 743, column: 5, scope: !1647)
!1647 = distinct !DILexicalBlock(scope: !2, file: !3, line: 743, column: 5)
!1648 = !DILocation(line: 745, column: 14, scope: !1649)
!1649 = distinct !DILexicalBlock(scope: !2, file: !3, line: 744, column: 9)
!1650 = !DILocation(line: 745, column: 21, scope: !1649)
!1651 = !DILocation(line: 745, column: 27, scope: !1649)
!1652 = !DILocation(line: 745, column: 31, scope: !1649)
!1653 = !DILocation(line: 745, column: 38, scope: !1649)
!1654 = !DILocation(line: 745, column: 43, scope: !1649)
!1655 = !DILocation(line: 745, column: 51, scope: !1649)
!1656 = !DILocation(line: 745, column: 54, scope: !1649)
!1657 = !DILocation(line: 745, column: 61, scope: !1649)
!1658 = !DILocation(line: 745, column: 67, scope: !1649)
!1659 = !DILocation(line: 745, column: 58, scope: !1649)
!1660 = !DILocation(line: 744, column: 9, scope: !2)
!1661 = !DILocation(line: 746, column: 27, scope: !1649)
!1662 = !DILocation(line: 746, column: 33, scope: !1649)
!1663 = !DILocation(line: 746, column: 9, scope: !1649)
!1664 = !DILocation(line: 748, column: 11, scope: !2)
!1665 = !DILocation(line: 748, column: 17, scope: !2)
!1666 = !DILocation(line: 748, column: 8, scope: !2)
!1667 = !DILocation(line: 749, column: 12, scope: !2)
!1668 = !DILocation(line: 749, column: 18, scope: !2)
!1669 = !DILocation(line: 749, column: 9, scope: !2)
!1670 = !DILocation(line: 750, column: 23, scope: !2)
!1671 = !DILocation(line: 750, column: 5, scope: !2)
!1672 = !DILocation(line: 750, column: 11, scope: !2)
!1673 = !DILocation(line: 750, column: 20, scope: !2)
!1674 = !DILocation(line: 751, column: 24, scope: !2)
!1675 = !DILocation(line: 751, column: 5, scope: !2)
!1676 = !DILocation(line: 751, column: 11, scope: !2)
!1677 = !DILocation(line: 751, column: 21, scope: !2)
!1678 = !DILocation(line: 752, column: 21, scope: !2)
!1679 = !DILocation(line: 752, column: 5, scope: !2)
!1680 = !DILocation(line: 752, column: 12, scope: !2)
!1681 = !DILocation(line: 752, column: 18, scope: !2)
!1682 = !DILocation(line: 753, column: 40, scope: !1683)
!1683 = distinct !DILexicalBlock(scope: !2, file: !3, line: 753, column: 9)
!1684 = !DILocation(line: 753, column: 47, scope: !1683)
!1685 = !DILocation(line: 753, column: 52, scope: !1683)
!1686 = !DILocation(line: 753, column: 55, scope: !1683)
!1687 = !DILocation(line: 753, column: 9, scope: !2)
!1688 = !DILocation(line: 755, column: 13, scope: !1683)
!1689 = !DILocation(line: 754, column: 23, scope: !1683)
!1690 = !DILocation(line: 754, column: 30, scope: !1683)
!1691 = !DILocation(line: 754, column: 36, scope: !1683)
!1692 = !DILocation(line: 754, column: 9, scope: !1683)
!1693 = !DILocation(line: 754, column: 15, scope: !1683)
!1694 = !DILocation(line: 754, column: 21, scope: !1683)
!1695 = !DILocation(line: 757, column: 23, scope: !2)
!1696 = !DILocation(line: 757, column: 30, scope: !2)
!1697 = !DILocation(line: 757, column: 38, scope: !2)
!1698 = !DILocation(line: 757, column: 45, scope: !2)
!1699 = !DILocation(line: 757, column: 35, scope: !2)
!1700 = !DILocation(line: 758, column: 24, scope: !2)
!1701 = !DILocation(line: 758, column: 31, scope: !2)
!1702 = !DILocation(line: 758, column: 36, scope: !2)
!1703 = !DILocation(line: 757, column: 60, scope: !2)
!1704 = !DILocation(line: 757, column: 5, scope: !2)
!1705 = !DILocation(line: 757, column: 11, scope: !2)
!1706 = !DILocation(line: 757, column: 21, scope: !2)
!1707 = !DILocation(line: 760, column: 9, scope: !1708)
!1708 = distinct !DILexicalBlock(scope: !2, file: !3, line: 760, column: 9)
!1709 = !DILocation(line: 760, column: 15, scope: !1708)
!1710 = !DILocation(line: 760, column: 33, scope: !1708)
!1711 = !DILocation(line: 760, column: 36, scope: !1708)
!1712 = !DILocation(line: 760, column: 40, scope: !1708)
!1713 = !DILocation(line: 760, column: 48, scope: !1708)
!1714 = !DILocation(line: 761, column: 13, scope: !1708)
!1715 = !DILocation(line: 761, column: 19, scope: !1708)
!1716 = !DILocation(line: 761, column: 29, scope: !1708)
!1717 = !DILocation(line: 761, column: 34, scope: !1708)
!1718 = !DILocation(line: 761, column: 37, scope: !1708)
!1719 = !DILocation(line: 761, column: 43, scope: !1708)
!1720 = !DILocation(line: 761, column: 52, scope: !1708)
!1721 = !DILocation(line: 760, column: 9, scope: !2)
!1722 = !DILocation(line: 762, column: 33, scope: !1708)
!1723 = !DILocation(line: 762, column: 10, scope: !1708)
!1724 = !DILocation(line: 762, column: 3, scope: !1708)
!1725 = !DILocation(line: 764, column: 11, scope: !1726)
!1726 = distinct !DILexicalBlock(scope: !2, file: !3, line: 764, column: 9)
!1727 = !DILocation(line: 764, column: 14, scope: !1726)
!1728 = !DILocation(line: 764, column: 19, scope: !1726)
!1729 = !DILocation(line: 764, column: 22, scope: !1726)
!1730 = !DILocation(line: 764, column: 26, scope: !1726)
!1731 = !DILocation(line: 764, column: 32, scope: !1726)
!1732 = !DILocation(line: 764, column: 35, scope: !1726)
!1733 = !DILocation(line: 764, column: 41, scope: !1726)
!1734 = !DILocation(line: 764, column: 54, scope: !1726)
!1735 = !DILocation(line: 764, column: 57, scope: !1726)
!1736 = !DILocation(line: 764, column: 61, scope: !1726)
!1737 = !DILocation(line: 764, column: 9, scope: !2)
!1738 = !DILocation(line: 765, column: 13, scope: !1726)
!1739 = !DILocation(line: 765, column: 9, scope: !1726)
!1740 = !DILocation(line: 767, column: 12, scope: !2)
!1741 = !DILocation(line: 767, column: 5, scope: !2)
!1742 = !DILocation(line: 768, column: 1, scope: !2)
!1743 = distinct !DISubprogram(name: "zlib_adler32", scope: !1744, file: !1744, line: 78, type: !1745, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !38, retainedNodes: !1748)
!1744 = !DIFile(filename: "./include/linux/zutil.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e912e7345195f5db5905cb2a2b8db19")
!1745 = !DISubroutineType(types: !1746)
!1746 = !{!20, !20, !14, !1747}
!1747 = !DIDerivedType(tag: DW_TAG_typedef, name: "uInt", file: !17, line: 53, baseType: !42)
!1748 = !{!1749, !1750, !1751, !1752, !1753, !1754}
!1749 = !DILocalVariable(name: "adler", arg: 1, scope: !1743, file: !1744, line: 78, type: !20)
!1750 = !DILocalVariable(name: "buf", arg: 2, scope: !1743, file: !1744, line: 79, type: !14)
!1751 = !DILocalVariable(name: "len", arg: 3, scope: !1743, file: !1744, line: 80, type: !1747)
!1752 = !DILocalVariable(name: "s1", scope: !1743, file: !1744, line: 82, type: !21)
!1753 = !DILocalVariable(name: "s2", scope: !1743, file: !1744, line: 83, type: !21)
!1754 = !DILocalVariable(name: "k", scope: !1743, file: !1744, line: 84, type: !6)
!1755 = !DILocation(line: 78, column: 40, scope: !1743)
!1756 = !DILocation(line: 79, column: 18, scope: !1743)
!1757 = !DILocation(line: 80, column: 11, scope: !1743)
!1758 = !DILocation(line: 82, column: 5, scope: !1743)
!1759 = !DILocation(line: 82, column: 19, scope: !1743)
!1760 = !DILocation(line: 82, column: 24, scope: !1743)
!1761 = !DILocation(line: 82, column: 30, scope: !1743)
!1762 = !DILocation(line: 83, column: 5, scope: !1743)
!1763 = !DILocation(line: 83, column: 19, scope: !1743)
!1764 = !DILocation(line: 83, column: 25, scope: !1743)
!1765 = !DILocation(line: 83, column: 31, scope: !1743)
!1766 = !DILocation(line: 83, column: 38, scope: !1743)
!1767 = !DILocation(line: 84, column: 5, scope: !1743)
!1768 = !DILocation(line: 84, column: 9, scope: !1743)
!1769 = !DILocation(line: 86, column: 9, scope: !1770)
!1770 = distinct !DILexicalBlock(scope: !1743, file: !1744, line: 86, column: 9)
!1771 = !DILocation(line: 86, column: 13, scope: !1770)
!1772 = !DILocation(line: 86, column: 9, scope: !1743)
!1773 = !DILocation(line: 86, column: 22, scope: !1770)
!1774 = !DILocation(line: 88, column: 5, scope: !1743)
!1775 = !DILocation(line: 88, column: 12, scope: !1743)
!1776 = !DILocation(line: 88, column: 16, scope: !1743)
!1777 = !DILocation(line: 89, column: 13, scope: !1778)
!1778 = distinct !DILexicalBlock(scope: !1743, file: !1744, line: 88, column: 21)
!1779 = !DILocation(line: 89, column: 17, scope: !1778)
!1780 = !DILocation(line: 89, column: 26, scope: !1778)
!1781 = !DILocation(line: 89, column: 11, scope: !1778)
!1782 = !DILocation(line: 90, column: 16, scope: !1778)
!1783 = !DILocation(line: 90, column: 13, scope: !1778)
!1784 = !DILocation(line: 91, column: 9, scope: !1778)
!1785 = !DILocation(line: 91, column: 16, scope: !1778)
!1786 = !DILocation(line: 91, column: 18, scope: !1778)
!1787 = !DILocation(line: 92, column: 13, scope: !1788)
!1788 = distinct !DILexicalBlock(scope: !1789, file: !1744, line: 92, column: 13)
!1789 = distinct !DILexicalBlock(scope: !1778, file: !1744, line: 91, column: 25)
!1790 = !DILocation(line: 92, column: 13, scope: !1791)
!1791 = distinct !DILexicalBlock(scope: !1789, file: !1744, line: 92, column: 13)
!1792 = !DILocation(line: 92, column: 13, scope: !1793)
!1793 = distinct !DILexicalBlock(scope: !1789, file: !1744, line: 92, column: 13)
!1794 = !DILocation(line: 92, column: 13, scope: !1795)
!1795 = distinct !DILexicalBlock(scope: !1789, file: !1744, line: 92, column: 13)
!1796 = !DILocation(line: 92, column: 13, scope: !1797)
!1797 = distinct !DILexicalBlock(scope: !1789, file: !1744, line: 92, column: 13)
!1798 = !DILocation(line: 92, column: 13, scope: !1799)
!1799 = distinct !DILexicalBlock(scope: !1789, file: !1744, line: 92, column: 13)
!1800 = !DILocation(line: 92, column: 13, scope: !1801)
!1801 = distinct !DILexicalBlock(scope: !1789, file: !1744, line: 92, column: 13)
!1802 = !DILocation(line: 92, column: 13, scope: !1803)
!1803 = distinct !DILexicalBlock(scope: !1789, file: !1744, line: 92, column: 13)
!1804 = !DILocation(line: 92, column: 13, scope: !1805)
!1805 = distinct !DILexicalBlock(scope: !1789, file: !1744, line: 92, column: 13)
!1806 = !DILocation(line: 92, column: 13, scope: !1807)
!1807 = distinct !DILexicalBlock(scope: !1789, file: !1744, line: 92, column: 13)
!1808 = !DILocation(line: 92, column: 13, scope: !1809)
!1809 = distinct !DILexicalBlock(scope: !1789, file: !1744, line: 92, column: 13)
!1810 = !DILocation(line: 92, column: 13, scope: !1811)
!1811 = distinct !DILexicalBlock(scope: !1789, file: !1744, line: 92, column: 13)
!1812 = !DILocation(line: 92, column: 13, scope: !1813)
!1813 = distinct !DILexicalBlock(scope: !1789, file: !1744, line: 92, column: 13)
!1814 = !DILocation(line: 92, column: 13, scope: !1815)
!1815 = distinct !DILexicalBlock(scope: !1789, file: !1744, line: 92, column: 13)
!1816 = !DILocation(line: 92, column: 13, scope: !1817)
!1817 = distinct !DILexicalBlock(scope: !1789, file: !1744, line: 92, column: 13)
!1818 = !DILocation(line: 92, column: 13, scope: !1819)
!1819 = distinct !DILexicalBlock(scope: !1789, file: !1744, line: 92, column: 13)
!1820 = !DILocation(line: 93, column: 10, scope: !1789)
!1821 = !DILocation(line: 94, column: 15, scope: !1789)
!1822 = distinct !{!1822, !1784, !1823, !499, !500}
!1823 = !DILocation(line: 95, column: 9, scope: !1778)
!1824 = !DILocation(line: 96, column: 13, scope: !1825)
!1825 = distinct !DILexicalBlock(scope: !1778, file: !1744, line: 96, column: 13)
!1826 = !DILocation(line: 96, column: 15, scope: !1825)
!1827 = !DILocation(line: 96, column: 13, scope: !1778)
!1828 = !DILocation(line: 96, column: 21, scope: !1825)
!1829 = !DILocation(line: 97, column: 23, scope: !1830)
!1830 = distinct !DILexicalBlock(scope: !1825, file: !1744, line: 96, column: 24)
!1831 = !DILocation(line: 97, column: 19, scope: !1830)
!1832 = !DILocation(line: 97, column: 16, scope: !1830)
!1833 = !DILocation(line: 98, column: 12, scope: !1830)
!1834 = !DILocation(line: 98, column: 9, scope: !1830)
!1835 = !DILocation(line: 99, column: 9, scope: !1830)
!1836 = !DILocation(line: 99, column: 18, scope: !1825)
!1837 = distinct !{!1837, !1828, !1838, !499, !500}
!1838 = !DILocation(line: 99, column: 21, scope: !1825)
!1839 = !DILocation(line: 100, column: 12, scope: !1778)
!1840 = !DILocation(line: 101, column: 12, scope: !1778)
!1841 = distinct !{!1841, !1774, !1842, !499, !500}
!1842 = !DILocation(line: 102, column: 5, scope: !1743)
!1843 = !DILocation(line: 103, column: 13, scope: !1743)
!1844 = !DILocation(line: 103, column: 16, scope: !1743)
!1845 = !DILocation(line: 103, column: 25, scope: !1743)
!1846 = !DILocation(line: 103, column: 23, scope: !1743)
!1847 = !DILocation(line: 103, column: 5, scope: !1743)
!1848 = !DILocation(line: 104, column: 1, scope: !1743)
!1849 = !DILocation(line: 97, column: 52, scope: !211)
!1850 = !DILocation(line: 100, column: 5, scope: !1851)
!1851 = !DILexicalBlockFile(scope: !211, file: !3, discriminator: 0)
!1852 = !DILocation(line: 100, column: 12, scope: !1851)
!1853 = !DILocation(line: 100, column: 20, scope: !1851)
!1854 = !DILocation(line: 101, column: 5, scope: !1851)
!1855 = !DILocation(line: 101, column: 12, scope: !1851)
!1856 = !DILocation(line: 101, column: 20, scope: !1851)
!1857 = !DILocation(line: 102, column: 5, scope: !1851)
!1858 = !DILocation(line: 102, column: 12, scope: !1851)
!1859 = !DILocation(line: 102, column: 21, scope: !1851)
!1860 = !DILocation(line: 103, column: 5, scope: !1851)
!1861 = !DILocation(line: 103, column: 12, scope: !1851)
!1862 = !DILocation(line: 103, column: 21, scope: !1851)
!1863 = !DILocation(line: 104, column: 1, scope: !1851)
!1864 = !DISubprogram(name: "zlib_inflate_table", scope: !75, file: !75, line: 56, type: !1865, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1865 = !DISubroutineType(types: !1866)
!1866 = !{!6, !1867, !1868, !42, !1869, !1870, !1868}
!1867 = !DIDerivedType(tag: DW_TAG_typedef, name: "codetype", file: !75, line: 54, baseType: !74)
!1868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!1869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!1870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!1871 = !DISubprogram(name: "inflate_fast", scope: !1872, file: !1872, line: 11, type: !1873, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1872 = !DIFile(filename: "lib/zlib_inflate/inffast.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b3215fd5bf91418dcf5e10c9dac6f45")
!1873 = !DISubroutineType(types: !1874)
!1874 = !{null, !7, !42}
!1875 = distinct !DISubprogram(name: "zlib_updatewindow", scope: !3, file: !3, line: 120, type: !1873, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !38, retainedNodes: !1876)
!1876 = !{!1877, !1878, !1879, !1880, !1881}
!1877 = !DILocalVariable(name: "strm", arg: 1, scope: !1875, file: !3, line: 120, type: !7)
!1878 = !DILocalVariable(name: "out", arg: 2, scope: !1875, file: !3, line: 120, type: !42)
!1879 = !DILocalVariable(name: "state", scope: !1875, file: !3, line: 122, type: !81)
!1880 = !DILocalVariable(name: "copy", scope: !1875, file: !3, line: 123, type: !42)
!1881 = !DILocalVariable(name: "dist", scope: !1875, file: !3, line: 123, type: !42)
!1882 = !DILocation(line: 120, column: 41, scope: !1875)
!1883 = !DILocation(line: 120, column: 56, scope: !1875)
!1884 = !DILocation(line: 122, column: 5, scope: !1875)
!1885 = !DILocation(line: 122, column: 27, scope: !1875)
!1886 = !DILocation(line: 123, column: 5, scope: !1875)
!1887 = !DILocation(line: 123, column: 14, scope: !1875)
!1888 = !DILocation(line: 123, column: 20, scope: !1875)
!1889 = !DILocation(line: 125, column: 37, scope: !1875)
!1890 = !DILocation(line: 125, column: 43, scope: !1875)
!1891 = !DILocation(line: 125, column: 11, scope: !1875)
!1892 = !DILocation(line: 128, column: 12, scope: !1875)
!1893 = !DILocation(line: 128, column: 18, scope: !1875)
!1894 = !DILocation(line: 128, column: 24, scope: !1875)
!1895 = !DILocation(line: 128, column: 16, scope: !1875)
!1896 = !DILocation(line: 128, column: 10, scope: !1875)
!1897 = !DILocation(line: 129, column: 9, scope: !1898)
!1898 = distinct !DILexicalBlock(scope: !1875, file: !3, line: 129, column: 9)
!1899 = !DILocation(line: 129, column: 17, scope: !1898)
!1900 = !DILocation(line: 129, column: 24, scope: !1898)
!1901 = !DILocation(line: 129, column: 14, scope: !1898)
!1902 = !DILocation(line: 129, column: 9, scope: !1875)
!1903 = !DILocation(line: 130, column: 16, scope: !1904)
!1904 = distinct !DILexicalBlock(scope: !1898, file: !3, line: 129, column: 31)
!1905 = !DILocation(line: 130, column: 23, scope: !1904)
!1906 = !DILocation(line: 130, column: 31, scope: !1904)
!1907 = !DILocation(line: 130, column: 37, scope: !1904)
!1908 = !DILocation(line: 130, column: 48, scope: !1904)
!1909 = !DILocation(line: 130, column: 55, scope: !1904)
!1910 = !DILocation(line: 130, column: 46, scope: !1904)
!1911 = !DILocation(line: 130, column: 62, scope: !1904)
!1912 = !DILocation(line: 130, column: 69, scope: !1904)
!1913 = !DILocation(line: 130, column: 9, scope: !1904)
!1914 = !DILocation(line: 131, column: 9, scope: !1904)
!1915 = !DILocation(line: 131, column: 16, scope: !1904)
!1916 = !DILocation(line: 131, column: 22, scope: !1904)
!1917 = !DILocation(line: 132, column: 24, scope: !1904)
!1918 = !DILocation(line: 132, column: 31, scope: !1904)
!1919 = !DILocation(line: 132, column: 9, scope: !1904)
!1920 = !DILocation(line: 132, column: 16, scope: !1904)
!1921 = !DILocation(line: 132, column: 22, scope: !1904)
!1922 = !DILocation(line: 133, column: 5, scope: !1904)
!1923 = !DILocation(line: 135, column: 16, scope: !1924)
!1924 = distinct !DILexicalBlock(scope: !1898, file: !3, line: 134, column: 10)
!1925 = !DILocation(line: 135, column: 23, scope: !1924)
!1926 = !DILocation(line: 135, column: 31, scope: !1924)
!1927 = !DILocation(line: 135, column: 38, scope: !1924)
!1928 = !DILocation(line: 135, column: 29, scope: !1924)
!1929 = !DILocation(line: 135, column: 14, scope: !1924)
!1930 = !DILocation(line: 136, column: 13, scope: !1931)
!1931 = distinct !DILexicalBlock(scope: !1924, file: !3, line: 136, column: 13)
!1932 = !DILocation(line: 136, column: 20, scope: !1931)
!1933 = !DILocation(line: 136, column: 18, scope: !1931)
!1934 = !DILocation(line: 136, column: 13, scope: !1924)
!1935 = !DILocation(line: 136, column: 33, scope: !1931)
!1936 = !DILocation(line: 136, column: 31, scope: !1931)
!1937 = !DILocation(line: 136, column: 26, scope: !1931)
!1938 = !DILocation(line: 137, column: 16, scope: !1924)
!1939 = !DILocation(line: 137, column: 23, scope: !1924)
!1940 = !DILocation(line: 137, column: 32, scope: !1924)
!1941 = !DILocation(line: 137, column: 39, scope: !1924)
!1942 = !DILocation(line: 137, column: 30, scope: !1924)
!1943 = !DILocation(line: 137, column: 46, scope: !1924)
!1944 = !DILocation(line: 137, column: 52, scope: !1924)
!1945 = !DILocation(line: 137, column: 63, scope: !1924)
!1946 = !DILocation(line: 137, column: 61, scope: !1924)
!1947 = !DILocation(line: 137, column: 69, scope: !1924)
!1948 = !DILocation(line: 137, column: 9, scope: !1924)
!1949 = !DILocation(line: 138, column: 17, scope: !1924)
!1950 = !DILocation(line: 138, column: 14, scope: !1924)
!1951 = !DILocation(line: 139, column: 13, scope: !1952)
!1952 = distinct !DILexicalBlock(scope: !1924, file: !3, line: 139, column: 13)
!1953 = !DILocation(line: 139, column: 13, scope: !1924)
!1954 = !DILocation(line: 140, column: 20, scope: !1955)
!1955 = distinct !DILexicalBlock(scope: !1952, file: !3, line: 139, column: 19)
!1956 = !DILocation(line: 140, column: 27, scope: !1955)
!1957 = !DILocation(line: 140, column: 35, scope: !1955)
!1958 = !DILocation(line: 140, column: 41, scope: !1955)
!1959 = !DILocation(line: 140, column: 52, scope: !1955)
!1960 = !DILocation(line: 140, column: 50, scope: !1955)
!1961 = !DILocation(line: 140, column: 58, scope: !1955)
!1962 = !DILocation(line: 140, column: 13, scope: !1955)
!1963 = !DILocation(line: 141, column: 28, scope: !1955)
!1964 = !DILocation(line: 141, column: 13, scope: !1955)
!1965 = !DILocation(line: 141, column: 20, scope: !1955)
!1966 = !DILocation(line: 141, column: 26, scope: !1955)
!1967 = !DILocation(line: 142, column: 28, scope: !1955)
!1968 = !DILocation(line: 142, column: 35, scope: !1955)
!1969 = !DILocation(line: 142, column: 13, scope: !1955)
!1970 = !DILocation(line: 142, column: 20, scope: !1955)
!1971 = !DILocation(line: 142, column: 26, scope: !1955)
!1972 = !DILocation(line: 143, column: 9, scope: !1955)
!1973 = !DILocation(line: 145, column: 29, scope: !1974)
!1974 = distinct !DILexicalBlock(scope: !1952, file: !3, line: 144, column: 14)
!1975 = !DILocation(line: 145, column: 13, scope: !1974)
!1976 = !DILocation(line: 145, column: 20, scope: !1974)
!1977 = !DILocation(line: 145, column: 26, scope: !1974)
!1978 = !DILocation(line: 146, column: 17, scope: !1979)
!1979 = distinct !DILexicalBlock(scope: !1974, file: !3, line: 146, column: 17)
!1980 = !DILocation(line: 146, column: 24, scope: !1979)
!1981 = !DILocation(line: 146, column: 33, scope: !1979)
!1982 = !DILocation(line: 146, column: 40, scope: !1979)
!1983 = !DILocation(line: 146, column: 30, scope: !1979)
!1984 = !DILocation(line: 146, column: 17, scope: !1974)
!1985 = !DILocation(line: 146, column: 47, scope: !1979)
!1986 = !DILocation(line: 146, column: 54, scope: !1979)
!1987 = !DILocation(line: 146, column: 60, scope: !1979)
!1988 = !DILocation(line: 147, column: 17, scope: !1989)
!1989 = distinct !DILexicalBlock(scope: !1974, file: !3, line: 147, column: 17)
!1990 = !DILocation(line: 147, column: 24, scope: !1989)
!1991 = !DILocation(line: 147, column: 32, scope: !1989)
!1992 = !DILocation(line: 147, column: 39, scope: !1989)
!1993 = !DILocation(line: 147, column: 30, scope: !1989)
!1994 = !DILocation(line: 147, column: 17, scope: !1974)
!1995 = !DILocation(line: 147, column: 62, scope: !1989)
!1996 = !DILocation(line: 147, column: 46, scope: !1989)
!1997 = !DILocation(line: 147, column: 53, scope: !1989)
!1998 = !DILocation(line: 147, column: 59, scope: !1989)
!1999 = !DILocation(line: 150, column: 1, scope: !1875)
!2000 = distinct !DISubprogram(name: "zlib_inflateSyncPacket", scope: !3, file: !3, line: 165, type: !262, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !38, retainedNodes: !2001)
!2001 = !{!2002, !2003}
!2002 = !DILocalVariable(name: "strm", arg: 1, scope: !2000, file: !3, line: 165, type: !7)
!2003 = !DILocalVariable(name: "state", scope: !2000, file: !3, line: 167, type: !81)
!2004 = !DILocation(line: 165, column: 45, scope: !2000)
!2005 = !DILocation(line: 167, column: 5, scope: !2000)
!2006 = !DILocation(line: 167, column: 27, scope: !2000)
!2007 = !DILocation(line: 169, column: 9, scope: !2008)
!2008 = distinct !DILexicalBlock(scope: !2000, file: !3, line: 169, column: 9)
!2009 = !DILocation(line: 169, column: 14, scope: !2008)
!2010 = !DILocation(line: 169, column: 22, scope: !2008)
!2011 = !DILocation(line: 169, column: 25, scope: !2008)
!2012 = !DILocation(line: 169, column: 31, scope: !2008)
!2013 = !DILocation(line: 169, column: 37, scope: !2008)
!2014 = !DILocation(line: 169, column: 9, scope: !2000)
!2015 = !DILocation(line: 169, column: 46, scope: !2008)
!2016 = !DILocation(line: 170, column: 37, scope: !2000)
!2017 = !DILocation(line: 170, column: 43, scope: !2000)
!2018 = !DILocation(line: 170, column: 11, scope: !2000)
!2019 = !DILocation(line: 172, column: 9, scope: !2020)
!2020 = distinct !DILexicalBlock(scope: !2000, file: !3, line: 172, column: 9)
!2021 = !DILocation(line: 172, column: 16, scope: !2020)
!2022 = !DILocation(line: 172, column: 21, scope: !2020)
!2023 = !DILocation(line: 172, column: 31, scope: !2020)
!2024 = !DILocation(line: 172, column: 34, scope: !2020)
!2025 = !DILocation(line: 172, column: 41, scope: !2020)
!2026 = !DILocation(line: 172, column: 46, scope: !2020)
!2027 = !DILocation(line: 172, column: 9, scope: !2000)
!2028 = !DILocation(line: 173, column: 2, scope: !2029)
!2029 = distinct !DILexicalBlock(scope: !2020, file: !3, line: 172, column: 52)
!2030 = !DILocation(line: 173, column: 9, scope: !2029)
!2031 = !DILocation(line: 173, column: 14, scope: !2029)
!2032 = !DILocation(line: 174, column: 9, scope: !2029)
!2033 = !DILocation(line: 176, column: 5, scope: !2000)
!2034 = !DILocation(line: 177, column: 1, scope: !2000)
!2035 = distinct !DISubprogram(name: "zlib_inflateEnd", scope: !3, file: !3, line: 770, type: !262, scopeLine: 771, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !38, retainedNodes: !2036)
!2036 = !{!2037}
!2037 = !DILocalVariable(name: "strm", arg: 1, scope: !2035, file: !3, line: 770, type: !7)
!2038 = !DILocation(line: 770, column: 31, scope: !2035)
!2039 = !DILocation(line: 772, column: 9, scope: !2040)
!2040 = distinct !DILexicalBlock(scope: !2035, file: !3, line: 772, column: 9)
!2041 = !DILocation(line: 772, column: 14, scope: !2040)
!2042 = !DILocation(line: 772, column: 22, scope: !2040)
!2043 = !DILocation(line: 772, column: 25, scope: !2040)
!2044 = !DILocation(line: 772, column: 31, scope: !2040)
!2045 = !DILocation(line: 772, column: 37, scope: !2040)
!2046 = !DILocation(line: 772, column: 9, scope: !2035)
!2047 = !DILocation(line: 773, column: 9, scope: !2040)
!2048 = !DILocation(line: 774, column: 5, scope: !2035)
!2049 = !DILocation(line: 775, column: 1, scope: !2035)
!2050 = distinct !DISubprogram(name: "zlib_inflateIncomp", scope: !3, file: !3, line: 785, type: !2051, scopeLine: 786, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !38, retainedNodes: !2053)
!2051 = !DISubroutineType(types: !2052)
!2052 = !{!6, !9}
!2053 = !{!2054, !2055, !2056, !2057}
!2054 = !DILocalVariable(name: "z", arg: 1, scope: !2050, file: !3, line: 785, type: !9)
!2055 = !DILocalVariable(name: "state", scope: !2050, file: !3, line: 787, type: !81)
!2056 = !DILocalVariable(name: "saved_no", scope: !2050, file: !3, line: 788, type: !24)
!2057 = !DILocalVariable(name: "saved_ao", scope: !2050, file: !3, line: 789, type: !1747)
!2058 = !DILocation(line: 785, column: 34, scope: !2050)
!2059 = !DILocation(line: 787, column: 5, scope: !2050)
!2060 = !DILocation(line: 787, column: 27, scope: !2050)
!2061 = !DILocation(line: 787, column: 59, scope: !2050)
!2062 = !DILocation(line: 787, column: 62, scope: !2050)
!2063 = !DILocation(line: 788, column: 5, scope: !2050)
!2064 = !DILocation(line: 788, column: 11, scope: !2050)
!2065 = !DILocation(line: 788, column: 22, scope: !2050)
!2066 = !DILocation(line: 788, column: 25, scope: !2050)
!2067 = !DILocation(line: 789, column: 5, scope: !2050)
!2068 = !DILocation(line: 789, column: 10, scope: !2050)
!2069 = !DILocation(line: 789, column: 21, scope: !2050)
!2070 = !DILocation(line: 789, column: 24, scope: !2050)
!2071 = !DILocation(line: 791, column: 9, scope: !2072)
!2072 = distinct !DILexicalBlock(scope: !2050, file: !3, line: 791, column: 9)
!2073 = !DILocation(line: 791, column: 16, scope: !2072)
!2074 = !DILocation(line: 791, column: 21, scope: !2072)
!2075 = !DILocation(line: 791, column: 29, scope: !2072)
!2076 = !DILocation(line: 791, column: 32, scope: !2072)
!2077 = !DILocation(line: 791, column: 39, scope: !2072)
!2078 = !DILocation(line: 791, column: 44, scope: !2072)
!2079 = !DILocation(line: 791, column: 9, scope: !2050)
!2080 = !DILocation(line: 792, column: 2, scope: !2072)
!2081 = !DILocation(line: 795, column: 5, scope: !2050)
!2082 = !DILocation(line: 795, column: 8, scope: !2050)
!2083 = !DILocation(line: 795, column: 18, scope: !2050)
!2084 = !DILocation(line: 796, column: 35, scope: !2050)
!2085 = !DILocation(line: 796, column: 38, scope: !2050)
!2086 = !DILocation(line: 796, column: 48, scope: !2050)
!2087 = !DILocation(line: 796, column: 51, scope: !2050)
!2088 = !DILocation(line: 796, column: 46, scope: !2050)
!2089 = !DILocation(line: 796, column: 5, scope: !2050)
!2090 = !DILocation(line: 796, column: 8, scope: !2050)
!2091 = !DILocation(line: 796, column: 17, scope: !2050)
!2092 = !DILocation(line: 798, column: 23, scope: !2050)
!2093 = !DILocation(line: 798, column: 26, scope: !2050)
!2094 = !DILocation(line: 798, column: 29, scope: !2050)
!2095 = !DILocation(line: 798, column: 5, scope: !2050)
!2096 = !DILocation(line: 801, column: 20, scope: !2050)
!2097 = !DILocation(line: 801, column: 5, scope: !2050)
!2098 = !DILocation(line: 801, column: 8, scope: !2050)
!2099 = !DILocation(line: 801, column: 18, scope: !2050)
!2100 = !DILocation(line: 802, column: 19, scope: !2050)
!2101 = !DILocation(line: 802, column: 5, scope: !2050)
!2102 = !DILocation(line: 802, column: 8, scope: !2050)
!2103 = !DILocation(line: 802, column: 17, scope: !2050)
!2104 = !DILocation(line: 805, column: 9, scope: !2050)
!2105 = !DILocation(line: 804, column: 16, scope: !2050)
!2106 = !DILocation(line: 804, column: 23, scope: !2050)
!2107 = !DILocation(line: 804, column: 29, scope: !2050)
!2108 = !DILocation(line: 804, column: 5, scope: !2050)
!2109 = !DILocation(line: 804, column: 8, scope: !2050)
!2110 = !DILocation(line: 804, column: 14, scope: !2050)
!2111 = !DILocation(line: 807, column: 21, scope: !2050)
!2112 = !DILocation(line: 807, column: 24, scope: !2050)
!2113 = !DILocation(line: 807, column: 5, scope: !2050)
!2114 = !DILocation(line: 807, column: 8, scope: !2050)
!2115 = !DILocation(line: 807, column: 18, scope: !2050)
!2116 = !DILocation(line: 808, column: 20, scope: !2050)
!2117 = !DILocation(line: 808, column: 23, scope: !2050)
!2118 = !DILocation(line: 808, column: 5, scope: !2050)
!2119 = !DILocation(line: 808, column: 8, scope: !2050)
!2120 = !DILocation(line: 808, column: 17, scope: !2050)
!2121 = !DILocation(line: 809, column: 19, scope: !2050)
!2122 = !DILocation(line: 809, column: 22, scope: !2050)
!2123 = !DILocation(line: 809, column: 5, scope: !2050)
!2124 = !DILocation(line: 809, column: 8, scope: !2050)
!2125 = !DILocation(line: 809, column: 16, scope: !2050)
!2126 = !DILocation(line: 810, column: 21, scope: !2050)
!2127 = !DILocation(line: 810, column: 24, scope: !2050)
!2128 = !DILocation(line: 810, column: 5, scope: !2050)
!2129 = !DILocation(line: 810, column: 12, scope: !2050)
!2130 = !DILocation(line: 810, column: 18, scope: !2050)
!2131 = !DILocation(line: 811, column: 5, scope: !2050)
!2132 = !DILocation(line: 811, column: 8, scope: !2050)
!2133 = !DILocation(line: 811, column: 17, scope: !2050)
!2134 = !DILocation(line: 813, column: 5, scope: !2050)
!2135 = !DILocation(line: 814, column: 1, scope: !2050)
