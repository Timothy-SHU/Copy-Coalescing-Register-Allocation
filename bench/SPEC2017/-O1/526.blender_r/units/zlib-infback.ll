; ModuleID = 'zlib/infback.c'
source_filename = "zlib/infback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.code = type { i8, i8, i16 }
%struct.z_stream_s = type { ptr, i32, i64, ptr, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i64, i64 }
%struct.inflate_state = type { i32, i32, i32, i32, i32, i32, i64, i64, ptr, i32, i32, i32, i32, ptr, i64, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, [320 x i16], [288 x i16], [1444 x %struct.code], i32, i32, i32 }

@inflateBack.order = internal unnamed_addr constant [19 x i16] [i16 16, i16 17, i16 18, i16 0, i16 8, i16 7, i16 9, i16 6, i16 10, i16 5, i16 11, i16 4, i16 12, i16 3, i16 13, i16 2, i16 14, i16 1, i16 15], align 16
@.str.1 = private unnamed_addr constant [19 x i8] c"invalid block type\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"invalid stored block lengths\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"too many length or distance symbols\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"invalid code lengths set\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"invalid bit length repeat\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"invalid code -- missing end-of-block\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"invalid literal/lengths set\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"invalid distances set\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"invalid literal/length code\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"invalid distance code\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"invalid distance too far back\00", align 1
@fixedtables.lenfix = internal constant [512 x %struct.code] [%struct.code { i8 96, i8 7, i16 0 }, %struct.code { i8 0, i8 8, i16 80 }, %struct.code { i8 0, i8 8, i16 16 }, %struct.code { i8 20, i8 8, i16 115 }, %struct.code { i8 18, i8 7, i16 31 }, %struct.code { i8 0, i8 8, i16 112 }, %struct.code { i8 0, i8 8, i16 48 }, %struct.code { i8 0, i8 9, i16 192 }, %struct.code { i8 16, i8 7, i16 10 }, %struct.code { i8 0, i8 8, i16 96 }, %struct.code { i8 0, i8 8, i16 32 }, %struct.code { i8 0, i8 9, i16 160 }, %struct.code { i8 0, i8 8, i16 0 }, %struct.code { i8 0, i8 8, i16 128 }, %struct.code { i8 0, i8 8, i16 64 }, %struct.code { i8 0, i8 9, i16 224 }, %struct.code { i8 16, i8 7, i16 6 }, %struct.code { i8 0, i8 8, i16 88 }, %struct.code { i8 0, i8 8, i16 24 }, %struct.code { i8 0, i8 9, i16 144 }, %struct.code { i8 19, i8 7, i16 59 }, %struct.code { i8 0, i8 8, i16 120 }, %struct.code { i8 0, i8 8, i16 56 }, %struct.code { i8 0, i8 9, i16 208 }, %struct.code { i8 17, i8 7, i16 17 }, %struct.code { i8 0, i8 8, i16 104 }, %struct.code { i8 0, i8 8, i16 40 }, %struct.code { i8 0, i8 9, i16 176 }, %struct.code { i8 0, i8 8, i16 8 }, %struct.code { i8 0, i8 8, i16 136 }, %struct.code { i8 0, i8 8, i16 72 }, %struct.code { i8 0, i8 9, i16 240 }, %struct.code { i8 16, i8 7, i16 4 }, %struct.code { i8 0, i8 8, i16 84 }, %struct.code { i8 0, i8 8, i16 20 }, %struct.code { i8 21, i8 8, i16 227 }, %struct.code { i8 19, i8 7, i16 43 }, %struct.code { i8 0, i8 8, i16 116 }, %struct.code { i8 0, i8 8, i16 52 }, %struct.code { i8 0, i8 9, i16 200 }, %struct.code { i8 17, i8 7, i16 13 }, %struct.code { i8 0, i8 8, i16 100 }, %struct.code { i8 0, i8 8, i16 36 }, %struct.code { i8 0, i8 9, i16 168 }, %struct.code { i8 0, i8 8, i16 4 }, %struct.code { i8 0, i8 8, i16 132 }, %struct.code { i8 0, i8 8, i16 68 }, %struct.code { i8 0, i8 9, i16 232 }, %struct.code { i8 16, i8 7, i16 8 }, %struct.code { i8 0, i8 8, i16 92 }, %struct.code { i8 0, i8 8, i16 28 }, %struct.code { i8 0, i8 9, i16 152 }, %struct.code { i8 20, i8 7, i16 83 }, %struct.code { i8 0, i8 8, i16 124 }, %struct.code { i8 0, i8 8, i16 60 }, %struct.code { i8 0, i8 9, i16 216 }, %struct.code { i8 18, i8 7, i16 23 }, %struct.code { i8 0, i8 8, i16 108 }, %struct.code { i8 0, i8 8, i16 44 }, %struct.code { i8 0, i8 9, i16 184 }, %struct.code { i8 0, i8 8, i16 12 }, %struct.code { i8 0, i8 8, i16 140 }, %struct.code { i8 0, i8 8, i16 76 }, %struct.code { i8 0, i8 9, i16 248 }, %struct.code { i8 16, i8 7, i16 3 }, %struct.code { i8 0, i8 8, i16 82 }, %struct.code { i8 0, i8 8, i16 18 }, %struct.code { i8 21, i8 8, i16 163 }, %struct.code { i8 19, i8 7, i16 35 }, %struct.code { i8 0, i8 8, i16 114 }, %struct.code { i8 0, i8 8, i16 50 }, %struct.code { i8 0, i8 9, i16 196 }, %struct.code { i8 17, i8 7, i16 11 }, %struct.code { i8 0, i8 8, i16 98 }, %struct.code { i8 0, i8 8, i16 34 }, %struct.code { i8 0, i8 9, i16 164 }, %struct.code { i8 0, i8 8, i16 2 }, %struct.code { i8 0, i8 8, i16 130 }, %struct.code { i8 0, i8 8, i16 66 }, %struct.code { i8 0, i8 9, i16 228 }, %struct.code { i8 16, i8 7, i16 7 }, %struct.code { i8 0, i8 8, i16 90 }, %struct.code { i8 0, i8 8, i16 26 }, %struct.code { i8 0, i8 9, i16 148 }, %struct.code { i8 20, i8 7, i16 67 }, %struct.code { i8 0, i8 8, i16 122 }, %struct.code { i8 0, i8 8, i16 58 }, %struct.code { i8 0, i8 9, i16 212 }, %struct.code { i8 18, i8 7, i16 19 }, %struct.code { i8 0, i8 8, i16 106 }, %struct.code { i8 0, i8 8, i16 42 }, %struct.code { i8 0, i8 9, i16 180 }, %struct.code { i8 0, i8 8, i16 10 }, %struct.code { i8 0, i8 8, i16 138 }, %struct.code { i8 0, i8 8, i16 74 }, %struct.code { i8 0, i8 9, i16 244 }, %struct.code { i8 16, i8 7, i16 5 }, %struct.code { i8 0, i8 8, i16 86 }, %struct.code { i8 0, i8 8, i16 22 }, %struct.code { i8 64, i8 8, i16 0 }, %struct.code { i8 19, i8 7, i16 51 }, %struct.code { i8 0, i8 8, i16 118 }, %struct.code { i8 0, i8 8, i16 54 }, %struct.code { i8 0, i8 9, i16 204 }, %struct.code { i8 17, i8 7, i16 15 }, %struct.code { i8 0, i8 8, i16 102 }, %struct.code { i8 0, i8 8, i16 38 }, %struct.code { i8 0, i8 9, i16 172 }, %struct.code { i8 0, i8 8, i16 6 }, %struct.code { i8 0, i8 8, i16 134 }, %struct.code { i8 0, i8 8, i16 70 }, %struct.code { i8 0, i8 9, i16 236 }, %struct.code { i8 16, i8 7, i16 9 }, %struct.code { i8 0, i8 8, i16 94 }, %struct.code { i8 0, i8 8, i16 30 }, %struct.code { i8 0, i8 9, i16 156 }, %struct.code { i8 20, i8 7, i16 99 }, %struct.code { i8 0, i8 8, i16 126 }, %struct.code { i8 0, i8 8, i16 62 }, %struct.code { i8 0, i8 9, i16 220 }, %struct.code { i8 18, i8 7, i16 27 }, %struct.code { i8 0, i8 8, i16 110 }, %struct.code { i8 0, i8 8, i16 46 }, %struct.code { i8 0, i8 9, i16 188 }, %struct.code { i8 0, i8 8, i16 14 }, %struct.code { i8 0, i8 8, i16 142 }, %struct.code { i8 0, i8 8, i16 78 }, %struct.code { i8 0, i8 9, i16 252 }, %struct.code { i8 96, i8 7, i16 0 }, %struct.code { i8 0, i8 8, i16 81 }, %struct.code { i8 0, i8 8, i16 17 }, %struct.code { i8 21, i8 8, i16 131 }, %struct.code { i8 18, i8 7, i16 31 }, %struct.code { i8 0, i8 8, i16 113 }, %struct.code { i8 0, i8 8, i16 49 }, %struct.code { i8 0, i8 9, i16 194 }, %struct.code { i8 16, i8 7, i16 10 }, %struct.code { i8 0, i8 8, i16 97 }, %struct.code { i8 0, i8 8, i16 33 }, %struct.code { i8 0, i8 9, i16 162 }, %struct.code { i8 0, i8 8, i16 1 }, %struct.code { i8 0, i8 8, i16 129 }, %struct.code { i8 0, i8 8, i16 65 }, %struct.code { i8 0, i8 9, i16 226 }, %struct.code { i8 16, i8 7, i16 6 }, %struct.code { i8 0, i8 8, i16 89 }, %struct.code { i8 0, i8 8, i16 25 }, %struct.code { i8 0, i8 9, i16 146 }, %struct.code { i8 19, i8 7, i16 59 }, %struct.code { i8 0, i8 8, i16 121 }, %struct.code { i8 0, i8 8, i16 57 }, %struct.code { i8 0, i8 9, i16 210 }, %struct.code { i8 17, i8 7, i16 17 }, %struct.code { i8 0, i8 8, i16 105 }, %struct.code { i8 0, i8 8, i16 41 }, %struct.code { i8 0, i8 9, i16 178 }, %struct.code { i8 0, i8 8, i16 9 }, %struct.code { i8 0, i8 8, i16 137 }, %struct.code { i8 0, i8 8, i16 73 }, %struct.code { i8 0, i8 9, i16 242 }, %struct.code { i8 16, i8 7, i16 4 }, %struct.code { i8 0, i8 8, i16 85 }, %struct.code { i8 0, i8 8, i16 21 }, %struct.code { i8 16, i8 8, i16 258 }, %struct.code { i8 19, i8 7, i16 43 }, %struct.code { i8 0, i8 8, i16 117 }, %struct.code { i8 0, i8 8, i16 53 }, %struct.code { i8 0, i8 9, i16 202 }, %struct.code { i8 17, i8 7, i16 13 }, %struct.code { i8 0, i8 8, i16 101 }, %struct.code { i8 0, i8 8, i16 37 }, %struct.code { i8 0, i8 9, i16 170 }, %struct.code { i8 0, i8 8, i16 5 }, %struct.code { i8 0, i8 8, i16 133 }, %struct.code { i8 0, i8 8, i16 69 }, %struct.code { i8 0, i8 9, i16 234 }, %struct.code { i8 16, i8 7, i16 8 }, %struct.code { i8 0, i8 8, i16 93 }, %struct.code { i8 0, i8 8, i16 29 }, %struct.code { i8 0, i8 9, i16 154 }, %struct.code { i8 20, i8 7, i16 83 }, %struct.code { i8 0, i8 8, i16 125 }, %struct.code { i8 0, i8 8, i16 61 }, %struct.code { i8 0, i8 9, i16 218 }, %struct.code { i8 18, i8 7, i16 23 }, %struct.code { i8 0, i8 8, i16 109 }, %struct.code { i8 0, i8 8, i16 45 }, %struct.code { i8 0, i8 9, i16 186 }, %struct.code { i8 0, i8 8, i16 13 }, %struct.code { i8 0, i8 8, i16 141 }, %struct.code { i8 0, i8 8, i16 77 }, %struct.code { i8 0, i8 9, i16 250 }, %struct.code { i8 16, i8 7, i16 3 }, %struct.code { i8 0, i8 8, i16 83 }, %struct.code { i8 0, i8 8, i16 19 }, %struct.code { i8 21, i8 8, i16 195 }, %struct.code { i8 19, i8 7, i16 35 }, %struct.code { i8 0, i8 8, i16 115 }, %struct.code { i8 0, i8 8, i16 51 }, %struct.code { i8 0, i8 9, i16 198 }, %struct.code { i8 17, i8 7, i16 11 }, %struct.code { i8 0, i8 8, i16 99 }, %struct.code { i8 0, i8 8, i16 35 }, %struct.code { i8 0, i8 9, i16 166 }, %struct.code { i8 0, i8 8, i16 3 }, %struct.code { i8 0, i8 8, i16 131 }, %struct.code { i8 0, i8 8, i16 67 }, %struct.code { i8 0, i8 9, i16 230 }, %struct.code { i8 16, i8 7, i16 7 }, %struct.code { i8 0, i8 8, i16 91 }, %struct.code { i8 0, i8 8, i16 27 }, %struct.code { i8 0, i8 9, i16 150 }, %struct.code { i8 20, i8 7, i16 67 }, %struct.code { i8 0, i8 8, i16 123 }, %struct.code { i8 0, i8 8, i16 59 }, %struct.code { i8 0, i8 9, i16 214 }, %struct.code { i8 18, i8 7, i16 19 }, %struct.code { i8 0, i8 8, i16 107 }, %struct.code { i8 0, i8 8, i16 43 }, %struct.code { i8 0, i8 9, i16 182 }, %struct.code { i8 0, i8 8, i16 11 }, %struct.code { i8 0, i8 8, i16 139 }, %struct.code { i8 0, i8 8, i16 75 }, %struct.code { i8 0, i8 9, i16 246 }, %struct.code { i8 16, i8 7, i16 5 }, %struct.code { i8 0, i8 8, i16 87 }, %struct.code { i8 0, i8 8, i16 23 }, %struct.code { i8 64, i8 8, i16 0 }, %struct.code { i8 19, i8 7, i16 51 }, %struct.code { i8 0, i8 8, i16 119 }, %struct.code { i8 0, i8 8, i16 55 }, %struct.code { i8 0, i8 9, i16 206 }, %struct.code { i8 17, i8 7, i16 15 }, %struct.code { i8 0, i8 8, i16 103 }, %struct.code { i8 0, i8 8, i16 39 }, %struct.code { i8 0, i8 9, i16 174 }, %struct.code { i8 0, i8 8, i16 7 }, %struct.code { i8 0, i8 8, i16 135 }, %struct.code { i8 0, i8 8, i16 71 }, %struct.code { i8 0, i8 9, i16 238 }, %struct.code { i8 16, i8 7, i16 9 }, %struct.code { i8 0, i8 8, i16 95 }, %struct.code { i8 0, i8 8, i16 31 }, %struct.code { i8 0, i8 9, i16 158 }, %struct.code { i8 20, i8 7, i16 99 }, %struct.code { i8 0, i8 8, i16 127 }, %struct.code { i8 0, i8 8, i16 63 }, %struct.code { i8 0, i8 9, i16 222 }, %struct.code { i8 18, i8 7, i16 27 }, %struct.code { i8 0, i8 8, i16 111 }, %struct.code { i8 0, i8 8, i16 47 }, %struct.code { i8 0, i8 9, i16 190 }, %struct.code { i8 0, i8 8, i16 15 }, %struct.code { i8 0, i8 8, i16 143 }, %struct.code { i8 0, i8 8, i16 79 }, %struct.code { i8 0, i8 9, i16 254 }, %struct.code { i8 96, i8 7, i16 0 }, %struct.code { i8 0, i8 8, i16 80 }, %struct.code { i8 0, i8 8, i16 16 }, %struct.code { i8 20, i8 8, i16 115 }, %struct.code { i8 18, i8 7, i16 31 }, %struct.code { i8 0, i8 8, i16 112 }, %struct.code { i8 0, i8 8, i16 48 }, %struct.code { i8 0, i8 9, i16 193 }, %struct.code { i8 16, i8 7, i16 10 }, %struct.code { i8 0, i8 8, i16 96 }, %struct.code { i8 0, i8 8, i16 32 }, %struct.code { i8 0, i8 9, i16 161 }, %struct.code { i8 0, i8 8, i16 0 }, %struct.code { i8 0, i8 8, i16 128 }, %struct.code { i8 0, i8 8, i16 64 }, %struct.code { i8 0, i8 9, i16 225 }, %struct.code { i8 16, i8 7, i16 6 }, %struct.code { i8 0, i8 8, i16 88 }, %struct.code { i8 0, i8 8, i16 24 }, %struct.code { i8 0, i8 9, i16 145 }, %struct.code { i8 19, i8 7, i16 59 }, %struct.code { i8 0, i8 8, i16 120 }, %struct.code { i8 0, i8 8, i16 56 }, %struct.code { i8 0, i8 9, i16 209 }, %struct.code { i8 17, i8 7, i16 17 }, %struct.code { i8 0, i8 8, i16 104 }, %struct.code { i8 0, i8 8, i16 40 }, %struct.code { i8 0, i8 9, i16 177 }, %struct.code { i8 0, i8 8, i16 8 }, %struct.code { i8 0, i8 8, i16 136 }, %struct.code { i8 0, i8 8, i16 72 }, %struct.code { i8 0, i8 9, i16 241 }, %struct.code { i8 16, i8 7, i16 4 }, %struct.code { i8 0, i8 8, i16 84 }, %struct.code { i8 0, i8 8, i16 20 }, %struct.code { i8 21, i8 8, i16 227 }, %struct.code { i8 19, i8 7, i16 43 }, %struct.code { i8 0, i8 8, i16 116 }, %struct.code { i8 0, i8 8, i16 52 }, %struct.code { i8 0, i8 9, i16 201 }, %struct.code { i8 17, i8 7, i16 13 }, %struct.code { i8 0, i8 8, i16 100 }, %struct.code { i8 0, i8 8, i16 36 }, %struct.code { i8 0, i8 9, i16 169 }, %struct.code { i8 0, i8 8, i16 4 }, %struct.code { i8 0, i8 8, i16 132 }, %struct.code { i8 0, i8 8, i16 68 }, %struct.code { i8 0, i8 9, i16 233 }, %struct.code { i8 16, i8 7, i16 8 }, %struct.code { i8 0, i8 8, i16 92 }, %struct.code { i8 0, i8 8, i16 28 }, %struct.code { i8 0, i8 9, i16 153 }, %struct.code { i8 20, i8 7, i16 83 }, %struct.code { i8 0, i8 8, i16 124 }, %struct.code { i8 0, i8 8, i16 60 }, %struct.code { i8 0, i8 9, i16 217 }, %struct.code { i8 18, i8 7, i16 23 }, %struct.code { i8 0, i8 8, i16 108 }, %struct.code { i8 0, i8 8, i16 44 }, %struct.code { i8 0, i8 9, i16 185 }, %struct.code { i8 0, i8 8, i16 12 }, %struct.code { i8 0, i8 8, i16 140 }, %struct.code { i8 0, i8 8, i16 76 }, %struct.code { i8 0, i8 9, i16 249 }, %struct.code { i8 16, i8 7, i16 3 }, %struct.code { i8 0, i8 8, i16 82 }, %struct.code { i8 0, i8 8, i16 18 }, %struct.code { i8 21, i8 8, i16 163 }, %struct.code { i8 19, i8 7, i16 35 }, %struct.code { i8 0, i8 8, i16 114 }, %struct.code { i8 0, i8 8, i16 50 }, %struct.code { i8 0, i8 9, i16 197 }, %struct.code { i8 17, i8 7, i16 11 }, %struct.code { i8 0, i8 8, i16 98 }, %struct.code { i8 0, i8 8, i16 34 }, %struct.code { i8 0, i8 9, i16 165 }, %struct.code { i8 0, i8 8, i16 2 }, %struct.code { i8 0, i8 8, i16 130 }, %struct.code { i8 0, i8 8, i16 66 }, %struct.code { i8 0, i8 9, i16 229 }, %struct.code { i8 16, i8 7, i16 7 }, %struct.code { i8 0, i8 8, i16 90 }, %struct.code { i8 0, i8 8, i16 26 }, %struct.code { i8 0, i8 9, i16 149 }, %struct.code { i8 20, i8 7, i16 67 }, %struct.code { i8 0, i8 8, i16 122 }, %struct.code { i8 0, i8 8, i16 58 }, %struct.code { i8 0, i8 9, i16 213 }, %struct.code { i8 18, i8 7, i16 19 }, %struct.code { i8 0, i8 8, i16 106 }, %struct.code { i8 0, i8 8, i16 42 }, %struct.code { i8 0, i8 9, i16 181 }, %struct.code { i8 0, i8 8, i16 10 }, %struct.code { i8 0, i8 8, i16 138 }, %struct.code { i8 0, i8 8, i16 74 }, %struct.code { i8 0, i8 9, i16 245 }, %struct.code { i8 16, i8 7, i16 5 }, %struct.code { i8 0, i8 8, i16 86 }, %struct.code { i8 0, i8 8, i16 22 }, %struct.code { i8 64, i8 8, i16 0 }, %struct.code { i8 19, i8 7, i16 51 }, %struct.code { i8 0, i8 8, i16 118 }, %struct.code { i8 0, i8 8, i16 54 }, %struct.code { i8 0, i8 9, i16 205 }, %struct.code { i8 17, i8 7, i16 15 }, %struct.code { i8 0, i8 8, i16 102 }, %struct.code { i8 0, i8 8, i16 38 }, %struct.code { i8 0, i8 9, i16 173 }, %struct.code { i8 0, i8 8, i16 6 }, %struct.code { i8 0, i8 8, i16 134 }, %struct.code { i8 0, i8 8, i16 70 }, %struct.code { i8 0, i8 9, i16 237 }, %struct.code { i8 16, i8 7, i16 9 }, %struct.code { i8 0, i8 8, i16 94 }, %struct.code { i8 0, i8 8, i16 30 }, %struct.code { i8 0, i8 9, i16 157 }, %struct.code { i8 20, i8 7, i16 99 }, %struct.code { i8 0, i8 8, i16 126 }, %struct.code { i8 0, i8 8, i16 62 }, %struct.code { i8 0, i8 9, i16 221 }, %struct.code { i8 18, i8 7, i16 27 }, %struct.code { i8 0, i8 8, i16 110 }, %struct.code { i8 0, i8 8, i16 46 }, %struct.code { i8 0, i8 9, i16 189 }, %struct.code { i8 0, i8 8, i16 14 }, %struct.code { i8 0, i8 8, i16 142 }, %struct.code { i8 0, i8 8, i16 78 }, %struct.code { i8 0, i8 9, i16 253 }, %struct.code { i8 96, i8 7, i16 0 }, %struct.code { i8 0, i8 8, i16 81 }, %struct.code { i8 0, i8 8, i16 17 }, %struct.code { i8 21, i8 8, i16 131 }, %struct.code { i8 18, i8 7, i16 31 }, %struct.code { i8 0, i8 8, i16 113 }, %struct.code { i8 0, i8 8, i16 49 }, %struct.code { i8 0, i8 9, i16 195 }, %struct.code { i8 16, i8 7, i16 10 }, %struct.code { i8 0, i8 8, i16 97 }, %struct.code { i8 0, i8 8, i16 33 }, %struct.code { i8 0, i8 9, i16 163 }, %struct.code { i8 0, i8 8, i16 1 }, %struct.code { i8 0, i8 8, i16 129 }, %struct.code { i8 0, i8 8, i16 65 }, %struct.code { i8 0, i8 9, i16 227 }, %struct.code { i8 16, i8 7, i16 6 }, %struct.code { i8 0, i8 8, i16 89 }, %struct.code { i8 0, i8 8, i16 25 }, %struct.code { i8 0, i8 9, i16 147 }, %struct.code { i8 19, i8 7, i16 59 }, %struct.code { i8 0, i8 8, i16 121 }, %struct.code { i8 0, i8 8, i16 57 }, %struct.code { i8 0, i8 9, i16 211 }, %struct.code { i8 17, i8 7, i16 17 }, %struct.code { i8 0, i8 8, i16 105 }, %struct.code { i8 0, i8 8, i16 41 }, %struct.code { i8 0, i8 9, i16 179 }, %struct.code { i8 0, i8 8, i16 9 }, %struct.code { i8 0, i8 8, i16 137 }, %struct.code { i8 0, i8 8, i16 73 }, %struct.code { i8 0, i8 9, i16 243 }, %struct.code { i8 16, i8 7, i16 4 }, %struct.code { i8 0, i8 8, i16 85 }, %struct.code { i8 0, i8 8, i16 21 }, %struct.code { i8 16, i8 8, i16 258 }, %struct.code { i8 19, i8 7, i16 43 }, %struct.code { i8 0, i8 8, i16 117 }, %struct.code { i8 0, i8 8, i16 53 }, %struct.code { i8 0, i8 9, i16 203 }, %struct.code { i8 17, i8 7, i16 13 }, %struct.code { i8 0, i8 8, i16 101 }, %struct.code { i8 0, i8 8, i16 37 }, %struct.code { i8 0, i8 9, i16 171 }, %struct.code { i8 0, i8 8, i16 5 }, %struct.code { i8 0, i8 8, i16 133 }, %struct.code { i8 0, i8 8, i16 69 }, %struct.code { i8 0, i8 9, i16 235 }, %struct.code { i8 16, i8 7, i16 8 }, %struct.code { i8 0, i8 8, i16 93 }, %struct.code { i8 0, i8 8, i16 29 }, %struct.code { i8 0, i8 9, i16 155 }, %struct.code { i8 20, i8 7, i16 83 }, %struct.code { i8 0, i8 8, i16 125 }, %struct.code { i8 0, i8 8, i16 61 }, %struct.code { i8 0, i8 9, i16 219 }, %struct.code { i8 18, i8 7, i16 23 }, %struct.code { i8 0, i8 8, i16 109 }, %struct.code { i8 0, i8 8, i16 45 }, %struct.code { i8 0, i8 9, i16 187 }, %struct.code { i8 0, i8 8, i16 13 }, %struct.code { i8 0, i8 8, i16 141 }, %struct.code { i8 0, i8 8, i16 77 }, %struct.code { i8 0, i8 9, i16 251 }, %struct.code { i8 16, i8 7, i16 3 }, %struct.code { i8 0, i8 8, i16 83 }, %struct.code { i8 0, i8 8, i16 19 }, %struct.code { i8 21, i8 8, i16 195 }, %struct.code { i8 19, i8 7, i16 35 }, %struct.code { i8 0, i8 8, i16 115 }, %struct.code { i8 0, i8 8, i16 51 }, %struct.code { i8 0, i8 9, i16 199 }, %struct.code { i8 17, i8 7, i16 11 }, %struct.code { i8 0, i8 8, i16 99 }, %struct.code { i8 0, i8 8, i16 35 }, %struct.code { i8 0, i8 9, i16 167 }, %struct.code { i8 0, i8 8, i16 3 }, %struct.code { i8 0, i8 8, i16 131 }, %struct.code { i8 0, i8 8, i16 67 }, %struct.code { i8 0, i8 9, i16 231 }, %struct.code { i8 16, i8 7, i16 7 }, %struct.code { i8 0, i8 8, i16 91 }, %struct.code { i8 0, i8 8, i16 27 }, %struct.code { i8 0, i8 9, i16 151 }, %struct.code { i8 20, i8 7, i16 67 }, %struct.code { i8 0, i8 8, i16 123 }, %struct.code { i8 0, i8 8, i16 59 }, %struct.code { i8 0, i8 9, i16 215 }, %struct.code { i8 18, i8 7, i16 19 }, %struct.code { i8 0, i8 8, i16 107 }, %struct.code { i8 0, i8 8, i16 43 }, %struct.code { i8 0, i8 9, i16 183 }, %struct.code { i8 0, i8 8, i16 11 }, %struct.code { i8 0, i8 8, i16 139 }, %struct.code { i8 0, i8 8, i16 75 }, %struct.code { i8 0, i8 9, i16 247 }, %struct.code { i8 16, i8 7, i16 5 }, %struct.code { i8 0, i8 8, i16 87 }, %struct.code { i8 0, i8 8, i16 23 }, %struct.code { i8 64, i8 8, i16 0 }, %struct.code { i8 19, i8 7, i16 51 }, %struct.code { i8 0, i8 8, i16 119 }, %struct.code { i8 0, i8 8, i16 55 }, %struct.code { i8 0, i8 9, i16 207 }, %struct.code { i8 17, i8 7, i16 15 }, %struct.code { i8 0, i8 8, i16 103 }, %struct.code { i8 0, i8 8, i16 39 }, %struct.code { i8 0, i8 9, i16 175 }, %struct.code { i8 0, i8 8, i16 7 }, %struct.code { i8 0, i8 8, i16 135 }, %struct.code { i8 0, i8 8, i16 71 }, %struct.code { i8 0, i8 9, i16 239 }, %struct.code { i8 16, i8 7, i16 9 }, %struct.code { i8 0, i8 8, i16 95 }, %struct.code { i8 0, i8 8, i16 31 }, %struct.code { i8 0, i8 9, i16 159 }, %struct.code { i8 20, i8 7, i16 99 }, %struct.code { i8 0, i8 8, i16 127 }, %struct.code { i8 0, i8 8, i16 63 }, %struct.code { i8 0, i8 9, i16 223 }, %struct.code { i8 18, i8 7, i16 27 }, %struct.code { i8 0, i8 8, i16 111 }, %struct.code { i8 0, i8 8, i16 47 }, %struct.code { i8 0, i8 9, i16 191 }, %struct.code { i8 0, i8 8, i16 15 }, %struct.code { i8 0, i8 8, i16 143 }, %struct.code { i8 0, i8 8, i16 79 }, %struct.code { i8 0, i8 9, i16 255 }], align 16
@fixedtables.distfix = internal constant [32 x %struct.code] [%struct.code { i8 16, i8 5, i16 1 }, %struct.code { i8 23, i8 5, i16 257 }, %struct.code { i8 19, i8 5, i16 17 }, %struct.code { i8 27, i8 5, i16 4097 }, %struct.code { i8 17, i8 5, i16 5 }, %struct.code { i8 25, i8 5, i16 1025 }, %struct.code { i8 21, i8 5, i16 65 }, %struct.code { i8 29, i8 5, i16 16385 }, %struct.code { i8 16, i8 5, i16 3 }, %struct.code { i8 24, i8 5, i16 513 }, %struct.code { i8 20, i8 5, i16 33 }, %struct.code { i8 28, i8 5, i16 8193 }, %struct.code { i8 18, i8 5, i16 9 }, %struct.code { i8 26, i8 5, i16 2049 }, %struct.code { i8 22, i8 5, i16 129 }, %struct.code { i8 64, i8 5, i16 0 }, %struct.code { i8 16, i8 5, i16 2 }, %struct.code { i8 23, i8 5, i16 385 }, %struct.code { i8 19, i8 5, i16 25 }, %struct.code { i8 27, i8 5, i16 6145 }, %struct.code { i8 17, i8 5, i16 7 }, %struct.code { i8 25, i8 5, i16 1537 }, %struct.code { i8 21, i8 5, i16 97 }, %struct.code { i8 29, i8 5, i16 24577 }, %struct.code { i8 16, i8 5, i16 4 }, %struct.code { i8 24, i8 5, i16 769 }, %struct.code { i8 20, i8 5, i16 49 }, %struct.code { i8 28, i8 5, i16 12289 }, %struct.code { i8 18, i8 5, i16 13 }, %struct.code { i8 26, i8 5, i16 3073 }, %struct.code { i8 22, i8 5, i16 193 }, %struct.code { i8 64, i8 5, i16 0 }], align 16

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @inflateBackInit_(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef readonly %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = icmp eq ptr %3, null
  br i1 %6, label %46, label %7

7:                                                ; preds = %5
  %8 = load i8, ptr %3, align 1, !tbaa !34
  %9 = icmp ne i8 %8, 49
  %10 = icmp ne i32 %4, 112
  %11 = or i1 %10, %9
  br i1 %11, label %46, label %12

12:                                               ; preds = %7
  %13 = icmp eq ptr %0, null
  %14 = icmp eq ptr %2, null
  %15 = or i1 %13, %14
  %16 = add i32 %1, -16
  %17 = icmp ult i32 %16, -8
  %18 = or i1 %17, %15
  br i1 %18, label %46, label %19

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 6
  store ptr null, ptr %20, align 8, !tbaa !37
  %21 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 8
  %22 = load ptr, ptr %21, align 8, !tbaa !42
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  store ptr @zcalloc, ptr %21, align 8, !tbaa !42
  %25 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 10
  store ptr null, ptr %25, align 8, !tbaa !43
  br label %26

26:                                               ; preds = %24, %19
  %27 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 9
  %28 = load ptr, ptr %27, align 8, !tbaa !44
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store ptr @zcfree, ptr %27, align 8, !tbaa !44
  br label %31

31:                                               ; preds = %30, %26
  %32 = load ptr, ptr %21, align 8, !tbaa !42
  %33 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 10
  %34 = load ptr, ptr %33, align 8, !tbaa !43
  %35 = tail call ptr %32(ptr noundef %34, i32 noundef 1, i32 noundef 7152) #5
  %36 = icmp eq ptr %35, null
  br i1 %36, label %46, label %37

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  store ptr %35, ptr %38, align 8, !tbaa !45
  %39 = getelementptr inbounds %struct.inflate_state, ptr %35, i64 0, i32 5
  store i32 32768, ptr %39, align 4, !tbaa !46
  %40 = getelementptr inbounds %struct.inflate_state, ptr %35, i64 0, i32 9
  store i32 %1, ptr %40, align 8, !tbaa !48
  %41 = shl nuw nsw i32 1, %1
  %42 = getelementptr inbounds %struct.inflate_state, ptr %35, i64 0, i32 10
  store i32 %41, ptr %42, align 4, !tbaa !49
  %43 = getelementptr inbounds %struct.inflate_state, ptr %35, i64 0, i32 13
  store ptr %2, ptr %43, align 8, !tbaa !50
  %44 = getelementptr inbounds %struct.inflate_state, ptr %35, i64 0, i32 12
  store i32 0, ptr %44, align 4, !tbaa !51
  %45 = getelementptr inbounds %struct.inflate_state, ptr %35, i64 0, i32 11
  store i32 0, ptr %45, align 8, !tbaa !52
  br label %46

46:                                               ; preds = %31, %12, %5, %7, %37
  %47 = phi i32 [ 0, %37 ], [ -6, %7 ], [ -6, %5 ], [ -2, %12 ], [ -4, %31 ]
  ret i32 %47
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare hidden ptr @zcalloc(ptr noundef, i32 noundef, i32 noundef) #2

declare hidden void @zcfree(ptr noundef, ptr noundef) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @inflateBack(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #5
  %7 = icmp eq ptr %0, null
  br i1 %7, label %1049, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !45
  %11 = icmp eq ptr %10, null
  br i1 %11, label %1049, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 6
  store ptr null, ptr %13, align 8, !tbaa !37
  store i32 11, ptr %10, align 8, !tbaa !53
  %14 = getelementptr inbounds %struct.inflate_state, ptr %10, i64 0, i32 1
  store i32 0, ptr %14, align 4, !tbaa !54
  %15 = getelementptr inbounds %struct.inflate_state, ptr %10, i64 0, i32 11
  store i32 0, ptr %15, align 8, !tbaa !52
  %16 = load ptr, ptr %0, align 8, !tbaa !55
  store ptr %16, ptr %6, align 8, !tbaa !56
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 1
  %20 = load i32, ptr %19, align 8, !tbaa !57
  br label %21

21:                                               ; preds = %12, %18
  %22 = phi i32 [ %20, %18 ], [ 0, %12 ]
  %23 = getelementptr inbounds %struct.inflate_state, ptr %10, i64 0, i32 13
  %24 = load ptr, ptr %23, align 8, !tbaa !50
  %25 = getelementptr inbounds %struct.inflate_state, ptr %10, i64 0, i32 10
  %26 = load i32, ptr %25, align 4, !tbaa !49
  %27 = getelementptr inbounds %struct.inflate_state, ptr %10, i64 0, i32 24
  %28 = getelementptr inbounds %struct.inflate_state, ptr %10, i64 0, i32 25
  %29 = getelementptr inbounds %struct.inflate_state, ptr %10, i64 0, i32 23
  %30 = getelementptr inbounds %struct.inflate_state, ptr %10, i64 0, i32 26
  %31 = getelementptr inbounds %struct.inflate_state, ptr %10, i64 0, i32 30
  %32 = getelementptr inbounds %struct.inflate_state, ptr %10, i64 0, i32 27
  %33 = getelementptr inbounds %struct.inflate_state, ptr %10, i64 0, i32 19
  %34 = getelementptr inbounds %struct.inflate_state, ptr %10, i64 0, i32 21
  %35 = getelementptr inbounds %struct.inflate_state, ptr %10, i64 0, i32 28
  %36 = getelementptr inbounds %struct.inflate_state, ptr %10, i64 0, i32 29
  %37 = getelementptr inbounds %struct.inflate_state, ptr %10, i64 0, i32 28, i64 256
  %38 = getelementptr inbounds %struct.inflate_state, ptr %10, i64 0, i32 20
  %39 = getelementptr inbounds %struct.inflate_state, ptr %10, i64 0, i32 22
  %40 = getelementptr inbounds %struct.inflate_state, ptr %10, i64 0, i32 19
  %41 = getelementptr inbounds %struct.inflate_state, ptr %10, i64 0, i32 21
  %42 = getelementptr inbounds %struct.inflate_state, ptr %10, i64 0, i32 19
  %43 = getelementptr inbounds %struct.inflate_state, ptr %10, i64 0, i32 16
  %44 = getelementptr inbounds %struct.inflate_state, ptr %10, i64 0, i32 18
  %45 = getelementptr inbounds %struct.inflate_state, ptr %10, i64 0, i32 20
  %46 = getelementptr inbounds %struct.inflate_state, ptr %10, i64 0, i32 22
  %47 = getelementptr inbounds %struct.inflate_state, ptr %10, i64 0, i32 20
  %48 = getelementptr inbounds %struct.inflate_state, ptr %10, i64 0, i32 17
  %49 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 3
  %50 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 4
  %51 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 1
  %52 = getelementptr inbounds %struct.inflate_state, ptr %10, i64 0, i32 14
  %53 = getelementptr inbounds %struct.inflate_state, ptr %10, i64 0, i32 15
  %54 = getelementptr inbounds %struct.inflate_state, ptr %10, i64 0, i32 16
  %55 = getelementptr inbounds %struct.inflate_state, ptr %10, i64 0, i32 19
  %56 = getelementptr inbounds %struct.inflate_state, ptr %10, i64 0, i32 21
  %57 = getelementptr inbounds %struct.inflate_state, ptr %10, i64 0, i32 20
  %58 = getelementptr inbounds %struct.inflate_state, ptr %10, i64 0, i32 22
  br label %59

59:                                               ; preds = %1037, %21
  %60 = phi ptr [ %24, %21 ], [ %1038, %1037 ]
  %61 = phi i32 [ %22, %21 ], [ %1039, %1037 ]
  %62 = phi i32 [ %26, %21 ], [ %1040, %1037 ]
  %63 = phi i64 [ 0, %21 ], [ %1041, %1037 ]
  %64 = phi i32 [ 0, %21 ], [ %1042, %1037 ]
  %65 = load i32, ptr %10, align 8, !tbaa !53
  switch i32 %65, label %1043 [
    i32 11, label %70
    i32 13, label %113
    i32 16, label %66
    i32 20, label %564
    i32 28, label %1028
    i32 29, label %1044
  ]

66:                                               ; preds = %59
  %67 = icmp ult i32 %64, 14
  br i1 %67, label %68, label %216

68:                                               ; preds = %66
  %69 = zext nneg i32 %64 to i64
  br label %194

70:                                               ; preds = %59
  %71 = load i32, ptr %14, align 4, !tbaa !54
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %70
  %74 = icmp ult i32 %64, 3
  br i1 %74, label %75, label %97

75:                                               ; preds = %73
  %76 = or disjoint i32 %64, 8
  %77 = icmp eq i32 %61, 0
  br i1 %77, label %83, label %87

78:                                               ; preds = %70
  %79 = and i32 %64, 7
  %80 = zext nneg i32 %79 to i64
  %81 = lshr i64 %63, %80
  %82 = and i32 %64, -8
  store i32 28, ptr %10, align 8, !tbaa !53
  br label %1037

83:                                               ; preds = %75
  %84 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #5
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %83
  store ptr null, ptr %6, align 8, !tbaa !56
  br label %1044

87:                                               ; preds = %83, %75
  %88 = phi i32 [ %84, %83 ], [ %61, %75 ]
  %89 = add i32 %88, -1
  %90 = load ptr, ptr %6, align 8, !tbaa !56
  %91 = getelementptr inbounds i8, ptr %90, i64 1
  store ptr %91, ptr %6, align 8, !tbaa !56
  %92 = load i8, ptr %90, align 1, !tbaa !34
  %93 = zext i8 %92 to i64
  %94 = zext nneg i32 %64 to i64
  %95 = shl nuw nsw i64 %93, %94
  %96 = add i64 %95, %63
  br label %97

97:                                               ; preds = %87, %73
  %98 = phi i32 [ %89, %87 ], [ %61, %73 ]
  %99 = phi i64 [ %96, %87 ], [ %63, %73 ]
  %100 = phi i32 [ %76, %87 ], [ %64, %73 ]
  %101 = trunc i64 %99 to i32
  %102 = and i32 %101, 1
  store i32 %102, ptr %14, align 4, !tbaa !54
  %103 = lshr i32 %101, 1
  %104 = and i32 %103, 3
  switch i32 %104, label %108 [
    i32 0, label %109
    i32 1, label %105
    i32 2, label %106
    i32 3, label %107
  ]

105:                                              ; preds = %97
  store ptr @fixedtables.lenfix, ptr %55, align 8, !tbaa !58
  store i32 9, ptr %56, align 8, !tbaa !59
  store ptr @fixedtables.distfix, ptr %57, align 8, !tbaa !60
  store i32 5, ptr %58, align 4, !tbaa !61
  br label %109

106:                                              ; preds = %97
  br label %109

107:                                              ; preds = %97
  store ptr @.str.1, ptr %13, align 8, !tbaa !37
  br label %109

108:                                              ; preds = %97
  unreachable

109:                                              ; preds = %97, %105, %106, %107
  %110 = phi i32 [ 20, %105 ], [ 16, %106 ], [ 29, %107 ], [ 13, %97 ]
  store i32 %110, ptr %10, align 8, !tbaa !53
  %111 = lshr i64 %99, 3
  %112 = add i32 %100, -3
  br label %1037

113:                                              ; preds = %59
  %114 = and i32 %64, 7
  %115 = zext nneg i32 %114 to i64
  %116 = lshr i64 %63, %115
  %117 = and i32 %64, -8
  %118 = icmp ult i32 %117, 32
  br i1 %118, label %119, label %144

119:                                              ; preds = %113
  %120 = and i32 %64, -8
  %121 = zext i32 %120 to i64
  br label %122

122:                                              ; preds = %119, %131
  %123 = phi i64 [ %121, %119 ], [ %140, %131 ]
  %124 = phi i64 [ %116, %119 ], [ %139, %131 ]
  %125 = phi i32 [ %61, %119 ], [ %133, %131 ]
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %122
  %128 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #5
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %127
  store ptr null, ptr %6, align 8, !tbaa !56
  br label %1044

131:                                              ; preds = %127, %122
  %132 = phi i32 [ %128, %127 ], [ %125, %122 ]
  %133 = add i32 %132, -1
  %134 = load ptr, ptr %6, align 8, !tbaa !56
  %135 = getelementptr inbounds i8, ptr %134, i64 1
  store ptr %135, ptr %6, align 8, !tbaa !56
  %136 = load i8, ptr %134, align 1, !tbaa !34
  %137 = zext i8 %136 to i64
  %138 = shl nuw nsw i64 %137, %123
  %139 = add i64 %138, %124
  %140 = add nuw nsw i64 %123, 8
  %141 = icmp ult i64 %123, 24
  br i1 %141, label %122, label %142, !llvm.loop !62

142:                                              ; preds = %131
  %143 = trunc i64 %140 to i32
  br label %144

144:                                              ; preds = %142, %113
  %145 = phi i32 [ %61, %113 ], [ %133, %142 ]
  %146 = phi i64 [ %116, %113 ], [ %139, %142 ]
  %147 = phi i32 [ %117, %113 ], [ %143, %142 ]
  %148 = and i64 %146, 65535
  %149 = lshr i64 %146, 16
  %150 = xor i64 %149, %148
  %151 = icmp eq i64 %150, 65535
  br i1 %151, label %153, label %152

152:                                              ; preds = %144
  store ptr @.str.2, ptr %13, align 8, !tbaa !37
  store i32 29, ptr %10, align 8, !tbaa !53
  br label %1037

153:                                              ; preds = %144
  %154 = trunc i64 %146 to i32
  %155 = and i32 %154, 65535
  store i32 %155, ptr %54, align 4, !tbaa !65
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %190, label %157

157:                                              ; preds = %153, %175
  %158 = phi i32 [ %185, %175 ], [ %62, %153 ]
  %159 = phi i32 [ %182, %175 ], [ %145, %153 ]
  %160 = phi ptr [ %186, %175 ], [ %60, %153 ]
  %161 = phi i32 [ %188, %175 ], [ %155, %153 ]
  %162 = icmp eq i32 %159, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %157
  %164 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #5
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %163
  store ptr null, ptr %6, align 8, !tbaa !56
  br label %1044

167:                                              ; preds = %157, %163
  %168 = phi i32 [ %164, %163 ], [ %159, %157 ]
  %169 = icmp eq i32 %158, 0
  br i1 %169, label %170, label %175

170:                                              ; preds = %167
  %171 = load ptr, ptr %23, align 8, !tbaa !50
  %172 = load i32, ptr %25, align 4, !tbaa !49
  store i32 %172, ptr %15, align 8, !tbaa !52
  %173 = call i32 %3(ptr noundef %4, ptr noundef %171, i32 noundef %172) #5
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %1044

175:                                              ; preds = %170, %167
  %176 = phi ptr [ %171, %170 ], [ %160, %167 ]
  %177 = phi i32 [ %172, %170 ], [ %158, %167 ]
  %178 = call i32 @llvm.umin.i32(i32 %161, i32 %168)
  %179 = call i32 @llvm.umin.i32(i32 %178, i32 %177)
  %180 = load ptr, ptr %6, align 8, !tbaa !56
  %181 = zext i32 %179 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %176, ptr align 1 %180, i64 %181, i1 false)
  %182 = sub i32 %168, %179
  %183 = load ptr, ptr %6, align 8, !tbaa !56
  %184 = getelementptr inbounds i8, ptr %183, i64 %181
  store ptr %184, ptr %6, align 8, !tbaa !56
  %185 = sub i32 %177, %179
  %186 = getelementptr inbounds i8, ptr %176, i64 %181
  %187 = load i32, ptr %54, align 4, !tbaa !65
  %188 = sub i32 %187, %179
  store i32 %188, ptr %54, align 4, !tbaa !65
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %190, label %157, !llvm.loop !66

190:                                              ; preds = %175, %153
  %191 = phi ptr [ %60, %153 ], [ %186, %175 ]
  %192 = phi i32 [ %145, %153 ], [ %182, %175 ]
  %193 = phi i32 [ %62, %153 ], [ %185, %175 ]
  store i32 11, ptr %10, align 8, !tbaa !53
  br label %1037

194:                                              ; preds = %68, %203
  %195 = phi i64 [ %69, %68 ], [ %212, %203 ]
  %196 = phi i64 [ %63, %68 ], [ %211, %203 ]
  %197 = phi i32 [ %61, %68 ], [ %205, %203 ]
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %203

199:                                              ; preds = %194
  %200 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #5
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %203

202:                                              ; preds = %199
  store ptr null, ptr %6, align 8, !tbaa !56
  br label %1044

203:                                              ; preds = %199, %194
  %204 = phi i32 [ %200, %199 ], [ %197, %194 ]
  %205 = add i32 %204, -1
  %206 = load ptr, ptr %6, align 8, !tbaa !56
  %207 = getelementptr inbounds i8, ptr %206, i64 1
  store ptr %207, ptr %6, align 8, !tbaa !56
  %208 = load i8, ptr %206, align 1, !tbaa !34
  %209 = zext i8 %208 to i64
  %210 = shl nuw nsw i64 %209, %195
  %211 = add i64 %210, %196
  %212 = add nuw nsw i64 %195, 8
  %213 = icmp ult i64 %195, 6
  br i1 %213, label %194, label %214, !llvm.loop !67

214:                                              ; preds = %203
  %215 = trunc i64 %212 to i32
  br label %216

216:                                              ; preds = %214, %66
  %217 = phi i32 [ %61, %66 ], [ %205, %214 ]
  %218 = phi i64 [ %63, %66 ], [ %211, %214 ]
  %219 = phi i32 [ %64, %66 ], [ %215, %214 ]
  %220 = trunc i64 %218 to i32
  %221 = and i32 %220, 31
  %222 = add nuw nsw i32 %221, 257
  store i32 %222, ptr %27, align 4, !tbaa !68
  %223 = lshr i32 %220, 5
  %224 = and i32 %223, 31
  %225 = add nuw nsw i32 %224, 1
  store i32 %225, ptr %28, align 8, !tbaa !69
  %226 = lshr i32 %220, 10
  %227 = and i32 %226, 15
  %228 = add nuw nsw i32 %227, 4
  store i32 %228, ptr %29, align 8, !tbaa !70
  %229 = lshr i64 %218, 14
  %230 = add i32 %219, -14
  %231 = icmp ugt i32 %221, 29
  %232 = icmp ugt i32 %224, 29
  %233 = or i1 %231, %232
  br i1 %233, label %234, label %235

234:                                              ; preds = %216
  store ptr @.str.3, ptr %13, align 8, !tbaa !37
  store i32 29, ptr %10, align 8, !tbaa !53
  br label %1037

235:                                              ; preds = %216
  store i32 0, ptr %30, align 4, !tbaa !71
  %236 = load i32, ptr %29, align 8, !tbaa !70
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %238, label %246

238:                                              ; preds = %268, %235
  %239 = phi i32 [ %217, %235 ], [ %269, %268 ]
  %240 = phi i64 [ %229, %235 ], [ %281, %268 ]
  %241 = phi i32 [ %230, %235 ], [ %282, %268 ]
  %242 = load i32, ptr %30, align 4, !tbaa !71
  %243 = icmp ult i32 %242, 19
  br i1 %243, label %244, label %296

244:                                              ; preds = %238
  %245 = zext nneg i32 %242 to i64
  br label %286

246:                                              ; preds = %235, %268
  %247 = phi i32 [ %282, %268 ], [ %230, %235 ]
  %248 = phi i64 [ %281, %268 ], [ %229, %235 ]
  %249 = phi i32 [ %269, %268 ], [ %217, %235 ]
  %250 = icmp ult i32 %247, 3
  br i1 %250, label %251, label %268

251:                                              ; preds = %246
  %252 = or disjoint i32 %247, 8
  %253 = icmp eq i32 %249, 0
  br i1 %253, label %254, label %258

254:                                              ; preds = %251
  %255 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #5
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %257, label %258

257:                                              ; preds = %254
  store ptr null, ptr %6, align 8, !tbaa !56
  br label %1044

258:                                              ; preds = %254, %251
  %259 = phi i32 [ %255, %254 ], [ %249, %251 ]
  %260 = add i32 %259, -1
  %261 = load ptr, ptr %6, align 8, !tbaa !56
  %262 = getelementptr inbounds i8, ptr %261, i64 1
  store ptr %262, ptr %6, align 8, !tbaa !56
  %263 = load i8, ptr %261, align 1, !tbaa !34
  %264 = zext i8 %263 to i64
  %265 = zext nneg i32 %247 to i64
  %266 = shl nuw nsw i64 %264, %265
  %267 = add nuw nsw i64 %266, %248
  br label %268

268:                                              ; preds = %258, %246
  %269 = phi i32 [ %260, %258 ], [ %249, %246 ]
  %270 = phi i64 [ %267, %258 ], [ %248, %246 ]
  %271 = phi i32 [ %252, %258 ], [ %247, %246 ]
  %272 = trunc i64 %270 to i16
  %273 = and i16 %272, 7
  %274 = load i32, ptr %30, align 4, !tbaa !71
  %275 = add i32 %274, 1
  store i32 %275, ptr %30, align 4, !tbaa !71
  %276 = zext i32 %274 to i64
  %277 = getelementptr inbounds [19 x i16], ptr @inflateBack.order, i64 0, i64 %276
  %278 = load i16, ptr %277, align 2, !tbaa !72
  %279 = zext i16 %278 to i64
  %280 = getelementptr inbounds %struct.inflate_state, ptr %10, i64 0, i32 28, i64 %279
  store i16 %273, ptr %280, align 2, !tbaa !72
  %281 = lshr i64 %270, 3
  %282 = add i32 %271, -3
  %283 = load i32, ptr %30, align 4, !tbaa !71
  %284 = load i32, ptr %29, align 8, !tbaa !70
  %285 = icmp ult i32 %283, %284
  br i1 %285, label %246, label %238, !llvm.loop !74

286:                                              ; preds = %244, %286
  %287 = phi i64 [ %245, %244 ], [ %288, %286 ]
  %288 = add nuw nsw i64 %287, 1
  %289 = getelementptr inbounds [19 x i16], ptr @inflateBack.order, i64 0, i64 %287
  %290 = load i16, ptr %289, align 2, !tbaa !72
  %291 = zext i16 %290 to i64
  %292 = getelementptr inbounds %struct.inflate_state, ptr %10, i64 0, i32 28, i64 %291
  store i16 0, ptr %292, align 2, !tbaa !72
  %293 = and i64 %288, 4294967295
  %294 = icmp eq i64 %293, 19
  br i1 %294, label %295, label %286, !llvm.loop !75

295:                                              ; preds = %286
  store i32 19, ptr %30, align 4, !tbaa !71
  br label %296

296:                                              ; preds = %295, %238
  store ptr %31, ptr %32, align 8, !tbaa !76
  store ptr %31, ptr %33, align 8, !tbaa !58
  store i32 7, ptr %34, align 8, !tbaa !59
  %297 = call i32 @inflate_table(i32 noundef 0, ptr noundef nonnull %35, i32 noundef 19, ptr noundef nonnull %32, ptr noundef nonnull %34, ptr noundef nonnull %36) #5
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %300, label %299

299:                                              ; preds = %296
  store ptr @.str.4, ptr %13, align 8, !tbaa !37
  store i32 29, ptr %10, align 8, !tbaa !53
  br label %1037

300:                                              ; preds = %296
  store i32 0, ptr %30, align 4, !tbaa !71
  %301 = load i32, ptr %27, align 4, !tbaa !68
  %302 = load i32, ptr %28, align 8, !tbaa !69
  %303 = sub i32 0, %301
  %304 = icmp eq i32 %302, %303
  br i1 %304, label %539, label %305

305:                                              ; preds = %300, %526
  %306 = phi i32 [ %529, %526 ], [ %241, %300 ]
  %307 = phi i64 [ %528, %526 ], [ %240, %300 ]
  %308 = phi i32 [ %527, %526 ], [ %239, %300 ]
  %309 = load ptr, ptr %33, align 8, !tbaa !58
  %310 = trunc i64 %307 to i32
  %311 = load i32, ptr %34, align 8, !tbaa !59
  %312 = shl nsw i32 -1, %311
  %313 = xor i32 %312, -1
  %314 = and i32 %313, %310
  %315 = zext nneg i32 %314 to i64
  %316 = getelementptr inbounds %struct.code, ptr %309, i64 %315
  %317 = getelementptr inbounds i8, ptr %316, i64 1
  %318 = load i8, ptr %317, align 1, !tbaa.struct !77
  %319 = zext i8 %318 to i32
  %320 = icmp ult i32 %306, %319
  br i1 %320, label %321, label %357

321:                                              ; preds = %305
  %322 = zext i32 %306 to i64
  br label %323

323:                                              ; preds = %321, %332
  %324 = phi i64 [ %322, %321 ], [ %341, %332 ]
  %325 = phi i64 [ %307, %321 ], [ %340, %332 ]
  %326 = phi i32 [ %308, %321 ], [ %334, %332 ]
  %327 = icmp eq i32 %326, 0
  br i1 %327, label %328, label %332

328:                                              ; preds = %323
  %329 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #5
  %330 = icmp eq i32 %329, 0
  br i1 %330, label %331, label %332

331:                                              ; preds = %328
  store ptr null, ptr %6, align 8, !tbaa !56
  br label %1044

332:                                              ; preds = %328, %323
  %333 = phi i32 [ %329, %328 ], [ %326, %323 ]
  %334 = add i32 %333, -1
  %335 = load ptr, ptr %6, align 8, !tbaa !56
  %336 = getelementptr inbounds i8, ptr %335, i64 1
  store ptr %336, ptr %6, align 8, !tbaa !56
  %337 = load i8, ptr %335, align 1, !tbaa !34
  %338 = zext i8 %337 to i64
  %339 = shl i64 %338, %324
  %340 = add i64 %339, %325
  %341 = add nuw nsw i64 %324, 8
  %342 = load ptr, ptr %33, align 8, !tbaa !58
  %343 = trunc i64 %340 to i32
  %344 = load i32, ptr %34, align 8, !tbaa !59
  %345 = shl nsw i32 -1, %344
  %346 = xor i32 %345, -1
  %347 = and i32 %346, %343
  %348 = zext nneg i32 %347 to i64
  %349 = getelementptr inbounds %struct.code, ptr %342, i64 %348
  %350 = getelementptr inbounds i8, ptr %349, i64 1
  %351 = load i8, ptr %350, align 1, !tbaa.struct !77
  %352 = zext i8 %351 to i64
  %353 = icmp ult i64 %341, %352
  br i1 %353, label %323, label %354, !llvm.loop !78

354:                                              ; preds = %332
  %355 = zext i8 %351 to i32
  %356 = trunc i64 %341 to i32
  br label %357

357:                                              ; preds = %354, %305
  %358 = phi i32 [ %319, %305 ], [ %355, %354 ]
  %359 = phi i32 [ %308, %305 ], [ %334, %354 ]
  %360 = phi i64 [ %307, %305 ], [ %340, %354 ]
  %361 = phi i32 [ %306, %305 ], [ %356, %354 ]
  %362 = phi i8 [ %318, %305 ], [ %351, %354 ]
  %363 = phi ptr [ %316, %305 ], [ %349, %354 ]
  %364 = getelementptr inbounds i8, ptr %363, i64 2
  %365 = load i16, ptr %364, align 2
  %366 = icmp ult i16 %365, 16
  br i1 %366, label %367, label %375

367:                                              ; preds = %357
  %368 = zext nneg i8 %362 to i64
  %369 = lshr i64 %360, %368
  %370 = sub i32 %361, %358
  %371 = load i32, ptr %30, align 4, !tbaa !71
  %372 = add i32 %371, 1
  store i32 %372, ptr %30, align 4, !tbaa !71
  %373 = zext i32 %371 to i64
  %374 = getelementptr inbounds %struct.inflate_state, ptr %10, i64 0, i32 28, i64 %373
  store i16 %365, ptr %374, align 2, !tbaa !72
  br label %526

375:                                              ; preds = %357
  switch i16 %365, label %388 [
    i16 16, label %382
    i16 17, label %376
  ]

376:                                              ; preds = %375
  %377 = add nuw nsw i32 %358, 3
  %378 = icmp ult i32 %361, %377
  br i1 %378, label %379, label %457

379:                                              ; preds = %376
  %380 = zext i32 %361 to i64
  %381 = zext nneg i32 %377 to i64
  br label %435

382:                                              ; preds = %375
  %383 = add nuw nsw i32 %358, 2
  %384 = icmp ult i32 %361, %383
  br i1 %384, label %385, label %416

385:                                              ; preds = %382
  %386 = zext i32 %361 to i64
  %387 = zext nneg i32 %383 to i64
  br label %394

388:                                              ; preds = %375
  %389 = add nuw nsw i32 %358, 7
  %390 = icmp ult i32 %361, %389
  br i1 %390, label %391, label %491

391:                                              ; preds = %388
  %392 = zext i32 %361 to i64
  %393 = zext nneg i32 %389 to i64
  br label %469

394:                                              ; preds = %385, %403
  %395 = phi i64 [ %386, %385 ], [ %412, %403 ]
  %396 = phi i64 [ %360, %385 ], [ %411, %403 ]
  %397 = phi i32 [ %359, %385 ], [ %405, %403 ]
  %398 = icmp eq i32 %397, 0
  br i1 %398, label %399, label %403

399:                                              ; preds = %394
  %400 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #5
  %401 = icmp eq i32 %400, 0
  br i1 %401, label %402, label %403

402:                                              ; preds = %399
  store ptr null, ptr %6, align 8, !tbaa !56
  br label %1044

403:                                              ; preds = %399, %394
  %404 = phi i32 [ %400, %399 ], [ %397, %394 ]
  %405 = add i32 %404, -1
  %406 = load ptr, ptr %6, align 8, !tbaa !56
  %407 = getelementptr inbounds i8, ptr %406, i64 1
  store ptr %407, ptr %6, align 8, !tbaa !56
  %408 = load i8, ptr %406, align 1, !tbaa !34
  %409 = zext i8 %408 to i64
  %410 = shl i64 %409, %395
  %411 = add i64 %410, %396
  %412 = add nuw nsw i64 %395, 8
  %413 = icmp ult i64 %412, %387
  br i1 %413, label %394, label %414, !llvm.loop !79

414:                                              ; preds = %403
  %415 = trunc i64 %412 to i32
  br label %416

416:                                              ; preds = %414, %382
  %417 = phi i32 [ %359, %382 ], [ %405, %414 ]
  %418 = phi i64 [ %360, %382 ], [ %411, %414 ]
  %419 = phi i32 [ %361, %382 ], [ %415, %414 ]
  %420 = zext nneg i8 %362 to i64
  %421 = lshr i64 %418, %420
  %422 = sub i32 %419, %358
  %423 = load i32, ptr %30, align 4, !tbaa !71
  %424 = icmp eq i32 %423, 0
  br i1 %424, label %535, label %425

425:                                              ; preds = %416
  %426 = add i32 %423, -1
  %427 = zext i32 %426 to i64
  %428 = getelementptr inbounds %struct.inflate_state, ptr %10, i64 0, i32 28, i64 %427
  %429 = load i16, ptr %428, align 2, !tbaa !72
  %430 = trunc i64 %421 to i32
  %431 = and i32 %430, 3
  %432 = add nuw nsw i32 %431, 3
  %433 = lshr i64 %421, 2
  %434 = add i32 %422, -2
  br label %503

435:                                              ; preds = %379, %444
  %436 = phi i64 [ %380, %379 ], [ %453, %444 ]
  %437 = phi i64 [ %360, %379 ], [ %452, %444 ]
  %438 = phi i32 [ %359, %379 ], [ %446, %444 ]
  %439 = icmp eq i32 %438, 0
  br i1 %439, label %440, label %444

440:                                              ; preds = %435
  %441 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #5
  %442 = icmp eq i32 %441, 0
  br i1 %442, label %443, label %444

443:                                              ; preds = %440
  store ptr null, ptr %6, align 8, !tbaa !56
  br label %1044

444:                                              ; preds = %440, %435
  %445 = phi i32 [ %441, %440 ], [ %438, %435 ]
  %446 = add i32 %445, -1
  %447 = load ptr, ptr %6, align 8, !tbaa !56
  %448 = getelementptr inbounds i8, ptr %447, i64 1
  store ptr %448, ptr %6, align 8, !tbaa !56
  %449 = load i8, ptr %447, align 1, !tbaa !34
  %450 = zext i8 %449 to i64
  %451 = shl i64 %450, %436
  %452 = add i64 %451, %437
  %453 = add nuw nsw i64 %436, 8
  %454 = icmp ult i64 %453, %381
  br i1 %454, label %435, label %455, !llvm.loop !80

455:                                              ; preds = %444
  %456 = trunc i64 %453 to i32
  br label %457

457:                                              ; preds = %455, %376
  %458 = phi i32 [ %359, %376 ], [ %446, %455 ]
  %459 = phi i64 [ %360, %376 ], [ %452, %455 ]
  %460 = phi i32 [ %361, %376 ], [ %456, %455 ]
  %461 = zext nneg i8 %362 to i64
  %462 = lshr i64 %459, %461
  %463 = trunc i64 %462 to i32
  %464 = and i32 %463, 7
  %465 = add nuw nsw i32 %464, 3
  %466 = lshr i64 %462, 3
  %467 = sub i32 %460, %358
  %468 = add i32 %467, -3
  br label %503

469:                                              ; preds = %391, %478
  %470 = phi i64 [ %392, %391 ], [ %487, %478 ]
  %471 = phi i64 [ %360, %391 ], [ %486, %478 ]
  %472 = phi i32 [ %359, %391 ], [ %480, %478 ]
  %473 = icmp eq i32 %472, 0
  br i1 %473, label %474, label %478

474:                                              ; preds = %469
  %475 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #5
  %476 = icmp eq i32 %475, 0
  br i1 %476, label %477, label %478

477:                                              ; preds = %474
  store ptr null, ptr %6, align 8, !tbaa !56
  br label %1044

478:                                              ; preds = %474, %469
  %479 = phi i32 [ %475, %474 ], [ %472, %469 ]
  %480 = add i32 %479, -1
  %481 = load ptr, ptr %6, align 8, !tbaa !56
  %482 = getelementptr inbounds i8, ptr %481, i64 1
  store ptr %482, ptr %6, align 8, !tbaa !56
  %483 = load i8, ptr %481, align 1, !tbaa !34
  %484 = zext i8 %483 to i64
  %485 = shl i64 %484, %470
  %486 = add i64 %485, %471
  %487 = add nuw nsw i64 %470, 8
  %488 = icmp ult i64 %487, %393
  br i1 %488, label %469, label %489, !llvm.loop !81

489:                                              ; preds = %478
  %490 = trunc i64 %487 to i32
  br label %491

491:                                              ; preds = %489, %388
  %492 = phi i32 [ %359, %388 ], [ %480, %489 ]
  %493 = phi i64 [ %360, %388 ], [ %486, %489 ]
  %494 = phi i32 [ %361, %388 ], [ %490, %489 ]
  %495 = zext nneg i8 %362 to i64
  %496 = lshr i64 %493, %495
  %497 = trunc i64 %496 to i32
  %498 = and i32 %497, 127
  %499 = add nuw nsw i32 %498, 11
  %500 = lshr i64 %496, 7
  %501 = sub i32 %494, %358
  %502 = add i32 %501, -7
  br label %503

503:                                              ; preds = %457, %491, %425
  %504 = phi i32 [ %417, %425 ], [ %458, %457 ], [ %492, %491 ]
  %505 = phi i64 [ %433, %425 ], [ %466, %457 ], [ %500, %491 ]
  %506 = phi i32 [ %434, %425 ], [ %468, %457 ], [ %502, %491 ]
  %507 = phi i32 [ %432, %425 ], [ %465, %457 ], [ %499, %491 ]
  %508 = phi i16 [ %429, %425 ], [ 0, %457 ], [ 0, %491 ]
  %509 = load i32, ptr %30, align 4, !tbaa !71
  %510 = add i32 %509, %507
  %511 = load i32, ptr %27, align 4, !tbaa !68
  %512 = load i32, ptr %28, align 8, !tbaa !69
  %513 = add i32 %512, %511
  %514 = icmp ugt i32 %510, %513
  br i1 %514, label %535, label %515

515:                                              ; preds = %503
  %516 = load i32, ptr %30, align 4, !tbaa !71
  br label %517

517:                                              ; preds = %515, %517
  %518 = phi i32 [ %507, %515 ], [ %520, %517 ]
  %519 = phi i32 [ %516, %515 ], [ %521, %517 ]
  %520 = add nsw i32 %518, -1
  %521 = add i32 %519, 1
  %522 = zext i32 %519 to i64
  %523 = getelementptr inbounds %struct.inflate_state, ptr %10, i64 0, i32 28, i64 %522
  store i16 %508, ptr %523, align 2, !tbaa !72
  %524 = icmp eq i32 %520, 0
  br i1 %524, label %525, label %517, !llvm.loop !82

525:                                              ; preds = %517
  store i32 %521, ptr %30, align 4, !tbaa !71
  br label %526

526:                                              ; preds = %525, %367
  %527 = phi i32 [ %359, %367 ], [ %504, %525 ]
  %528 = phi i64 [ %369, %367 ], [ %505, %525 ]
  %529 = phi i32 [ %370, %367 ], [ %506, %525 ]
  %530 = load i32, ptr %30, align 4, !tbaa !71
  %531 = load i32, ptr %27, align 4, !tbaa !68
  %532 = load i32, ptr %28, align 8, !tbaa !69
  %533 = add i32 %532, %531
  %534 = icmp ult i32 %530, %533
  br i1 %534, label %305, label %539, !llvm.loop !83

535:                                              ; preds = %503, %416
  %536 = phi i32 [ %417, %416 ], [ %504, %503 ]
  %537 = phi i64 [ %421, %416 ], [ %505, %503 ]
  %538 = phi i32 [ %422, %416 ], [ %506, %503 ]
  store ptr @.str.5, ptr %13, align 8, !tbaa !37
  store i32 29, ptr %10, align 8, !tbaa !53
  br label %539

539:                                              ; preds = %526, %535, %300
  %540 = phi i32 [ %239, %300 ], [ %536, %535 ], [ %527, %526 ]
  %541 = phi i64 [ %240, %300 ], [ %537, %535 ], [ %528, %526 ]
  %542 = phi i32 [ %241, %300 ], [ %538, %535 ], [ %529, %526 ]
  %543 = load i32, ptr %10, align 8, !tbaa !53
  %544 = icmp eq i32 %543, 29
  br i1 %544, label %1037, label %545

545:                                              ; preds = %539
  %546 = load i16, ptr %37, align 8, !tbaa !72
  %547 = icmp eq i16 %546, 0
  br i1 %547, label %548, label %549

548:                                              ; preds = %545
  store ptr @.str.6, ptr %13, align 8, !tbaa !37
  store i32 29, ptr %10, align 8, !tbaa !53
  br label %1037

549:                                              ; preds = %545
  store ptr %31, ptr %32, align 8, !tbaa !76
  store ptr %31, ptr %33, align 8, !tbaa !58
  store i32 9, ptr %34, align 8, !tbaa !59
  %550 = load i32, ptr %27, align 4, !tbaa !68
  %551 = call i32 @inflate_table(i32 noundef 1, ptr noundef nonnull %35, i32 noundef %550, ptr noundef nonnull %32, ptr noundef nonnull %34, ptr noundef nonnull %36) #5
  %552 = icmp eq i32 %551, 0
  br i1 %552, label %554, label %553

553:                                              ; preds = %549
  store ptr @.str.7, ptr %13, align 8, !tbaa !37
  store i32 29, ptr %10, align 8, !tbaa !53
  br label %1037

554:                                              ; preds = %549
  %555 = load ptr, ptr %32, align 8, !tbaa !76
  store ptr %555, ptr %38, align 8, !tbaa !60
  store i32 6, ptr %39, align 4, !tbaa !61
  %556 = load i32, ptr %27, align 4, !tbaa !68
  %557 = zext i32 %556 to i64
  %558 = getelementptr inbounds i16, ptr %35, i64 %557
  %559 = load i32, ptr %28, align 8, !tbaa !69
  %560 = call i32 @inflate_table(i32 noundef 2, ptr noundef nonnull %558, i32 noundef %559, ptr noundef nonnull %32, ptr noundef nonnull %39, ptr noundef nonnull %36) #5
  %561 = icmp eq i32 %560, 0
  br i1 %561, label %563, label %562

562:                                              ; preds = %554
  store ptr @.str.8, ptr %13, align 8, !tbaa !37
  store i32 29, ptr %10, align 8, !tbaa !53
  br label %1037

563:                                              ; preds = %554
  store i32 20, ptr %10, align 8, !tbaa !53
  br label %564

564:                                              ; preds = %59, %563
  %565 = phi i32 [ %61, %59 ], [ %540, %563 ]
  %566 = phi i64 [ %63, %59 ], [ %541, %563 ]
  %567 = phi i32 [ %64, %59 ], [ %542, %563 ]
  %568 = icmp ugt i32 %565, 5
  %569 = icmp ugt i32 %62, 257
  %570 = select i1 %568, i1 %569, i1 false
  br i1 %570, label %586, label %571

571:                                              ; preds = %564
  %572 = load ptr, ptr %40, align 8, !tbaa !58
  %573 = trunc i64 %566 to i32
  %574 = load i32, ptr %41, align 8, !tbaa !59
  %575 = shl nsw i32 -1, %574
  %576 = xor i32 %575, -1
  %577 = and i32 %576, %573
  %578 = zext nneg i32 %577 to i64
  %579 = getelementptr inbounds %struct.code, ptr %572, i64 %578
  %580 = getelementptr inbounds i8, ptr %579, i64 1
  %581 = load i8, ptr %580, align 1, !tbaa.struct !77
  %582 = zext i8 %581 to i32
  %583 = icmp ult i32 %567, %582
  br i1 %583, label %584, label %634

584:                                              ; preds = %571
  %585 = zext i32 %567 to i64
  br label %600

586:                                              ; preds = %564
  store ptr %60, ptr %49, align 8, !tbaa !84
  store i32 %62, ptr %50, align 8, !tbaa !85
  %587 = load ptr, ptr %6, align 8, !tbaa !56
  store ptr %587, ptr %0, align 8, !tbaa !55
  store i32 %565, ptr %51, align 8, !tbaa !57
  store i64 %566, ptr %52, align 8, !tbaa !86
  store i32 %567, ptr %53, align 8, !tbaa !87
  %588 = load i32, ptr %15, align 8, !tbaa !52
  %589 = load i32, ptr %25, align 4, !tbaa !49
  %590 = icmp ult i32 %588, %589
  br i1 %590, label %591, label %593

591:                                              ; preds = %586
  %592 = sub i32 %589, %62
  store i32 %592, ptr %15, align 8, !tbaa !52
  br label %593

593:                                              ; preds = %591, %586
  call void @inflate_fast(ptr noundef nonnull %0, i32 noundef %589) #5
  %594 = load ptr, ptr %49, align 8, !tbaa !84
  %595 = load i32, ptr %50, align 8, !tbaa !85
  %596 = load ptr, ptr %0, align 8, !tbaa !55
  store ptr %596, ptr %6, align 8, !tbaa !56
  %597 = load i32, ptr %51, align 8, !tbaa !57
  %598 = load i64, ptr %52, align 8, !tbaa !86
  %599 = load i32, ptr %53, align 8, !tbaa !87
  br label %1037

600:                                              ; preds = %584, %609
  %601 = phi i64 [ %585, %584 ], [ %618, %609 ]
  %602 = phi i64 [ %566, %584 ], [ %617, %609 ]
  %603 = phi i32 [ %565, %584 ], [ %611, %609 ]
  %604 = icmp eq i32 %603, 0
  br i1 %604, label %605, label %609

605:                                              ; preds = %600
  %606 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #5
  %607 = icmp eq i32 %606, 0
  br i1 %607, label %608, label %609

608:                                              ; preds = %605
  store ptr null, ptr %6, align 8, !tbaa !56
  br label %1044

609:                                              ; preds = %605, %600
  %610 = phi i32 [ %606, %605 ], [ %603, %600 ]
  %611 = add i32 %610, -1
  %612 = load ptr, ptr %6, align 8, !tbaa !56
  %613 = getelementptr inbounds i8, ptr %612, i64 1
  store ptr %613, ptr %6, align 8, !tbaa !56
  %614 = load i8, ptr %612, align 1, !tbaa !34
  %615 = zext i8 %614 to i64
  %616 = shl i64 %615, %601
  %617 = add i64 %616, %602
  %618 = add nuw nsw i64 %601, 8
  %619 = load ptr, ptr %40, align 8, !tbaa !58
  %620 = trunc i64 %617 to i32
  %621 = load i32, ptr %41, align 8, !tbaa !59
  %622 = shl nsw i32 -1, %621
  %623 = xor i32 %622, -1
  %624 = and i32 %623, %620
  %625 = zext nneg i32 %624 to i64
  %626 = getelementptr inbounds %struct.code, ptr %619, i64 %625
  %627 = getelementptr inbounds i8, ptr %626, i64 1
  %628 = load i8, ptr %627, align 1, !tbaa.struct !77
  %629 = zext i8 %628 to i64
  %630 = icmp ult i64 %618, %629
  br i1 %630, label %600, label %631, !llvm.loop !88

631:                                              ; preds = %609
  %632 = zext i8 %628 to i32
  %633 = trunc i64 %618 to i32
  br label %634

634:                                              ; preds = %631, %571
  %635 = phi i32 [ %565, %571 ], [ %611, %631 ]
  %636 = phi i64 [ %566, %571 ], [ %617, %631 ]
  %637 = phi i32 [ %567, %571 ], [ %633, %631 ]
  %638 = phi ptr [ %579, %571 ], [ %626, %631 ]
  %639 = phi i8 [ %581, %571 ], [ %628, %631 ]
  %640 = phi i32 [ %582, %571 ], [ %632, %631 ]
  %641 = getelementptr inbounds i8, ptr %638, i64 2
  %642 = load i16, ptr %641, align 2
  %643 = load i8, ptr %638, align 2, !tbaa.struct !89
  %644 = add i8 %643, -1
  %645 = icmp ult i8 %644, 15
  br i1 %645, label %646, label %712

646:                                              ; preds = %634
  %647 = zext nneg i8 %643 to i32
  %648 = zext i16 %642 to i32
  %649 = add nuw nsw i32 %640, %647
  %650 = shl nsw i32 -1, %649
  %651 = xor i32 %650, -1
  %652 = load ptr, ptr %42, align 8, !tbaa !58
  %653 = trunc i64 %636 to i32
  %654 = and i32 %653, %651
  %655 = lshr i32 %654, %640
  %656 = add nuw i32 %655, %648
  %657 = zext i32 %656 to i64
  %658 = getelementptr inbounds %struct.code, ptr %652, i64 %657
  %659 = getelementptr inbounds i8, ptr %658, i64 1
  %660 = load i8, ptr %659, align 1, !tbaa.struct !77
  %661 = zext i8 %660 to i32
  %662 = add nuw nsw i32 %640, %661
  %663 = icmp ugt i32 %662, %637
  br i1 %663, label %664, label %700

664:                                              ; preds = %646
  %665 = zext i32 %637 to i64
  br label %666

666:                                              ; preds = %664, %675
  %667 = phi i64 [ %665, %664 ], [ %684, %675 ]
  %668 = phi i64 [ %636, %664 ], [ %683, %675 ]
  %669 = phi i32 [ %635, %664 ], [ %677, %675 ]
  %670 = icmp eq i32 %669, 0
  br i1 %670, label %671, label %675

671:                                              ; preds = %666
  %672 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #5
  %673 = icmp eq i32 %672, 0
  br i1 %673, label %674, label %675

674:                                              ; preds = %671
  store ptr null, ptr %6, align 8, !tbaa !56
  br label %1044

675:                                              ; preds = %671, %666
  %676 = phi i32 [ %672, %671 ], [ %669, %666 ]
  %677 = add i32 %676, -1
  %678 = load ptr, ptr %6, align 8, !tbaa !56
  %679 = getelementptr inbounds i8, ptr %678, i64 1
  store ptr %679, ptr %6, align 8, !tbaa !56
  %680 = load i8, ptr %678, align 1, !tbaa !34
  %681 = zext i8 %680 to i64
  %682 = shl i64 %681, %667
  %683 = add i64 %682, %668
  %684 = add nuw nsw i64 %667, 8
  %685 = load ptr, ptr %42, align 8, !tbaa !58
  %686 = trunc i64 %683 to i32
  %687 = and i32 %686, %651
  %688 = lshr i32 %687, %640
  %689 = add nuw i32 %688, %648
  %690 = zext i32 %689 to i64
  %691 = getelementptr inbounds %struct.code, ptr %685, i64 %690
  %692 = getelementptr inbounds i8, ptr %691, i64 1
  %693 = load i8, ptr %692, align 1, !tbaa.struct !77
  %694 = zext i8 %693 to i32
  %695 = add nuw nsw i32 %640, %694
  %696 = zext nneg i32 %695 to i64
  %697 = icmp ult i64 %684, %696
  br i1 %697, label %666, label %698, !llvm.loop !90

698:                                              ; preds = %675
  %699 = trunc i64 %684 to i32
  br label %700

700:                                              ; preds = %698, %646
  %701 = phi i32 [ %635, %646 ], [ %677, %698 ]
  %702 = phi i64 [ %636, %646 ], [ %683, %698 ]
  %703 = phi i32 [ %637, %646 ], [ %699, %698 ]
  %704 = phi ptr [ %658, %646 ], [ %691, %698 ]
  %705 = phi i8 [ %660, %646 ], [ %693, %698 ]
  %706 = getelementptr inbounds i8, ptr %704, i64 2
  %707 = load i16, ptr %706, align 2, !tbaa.struct !91
  %708 = load i8, ptr %704, align 2, !tbaa.struct !89
  %709 = zext nneg i8 %639 to i64
  %710 = lshr i64 %702, %709
  %711 = sub i32 %703, %640
  br label %712

712:                                              ; preds = %634, %700
  %713 = phi i32 [ %701, %700 ], [ %635, %634 ]
  %714 = phi i64 [ %710, %700 ], [ %636, %634 ]
  %715 = phi i32 [ %711, %700 ], [ %637, %634 ]
  %716 = phi i16 [ %707, %700 ], [ %642, %634 ]
  %717 = phi i8 [ %705, %700 ], [ %639, %634 ]
  %718 = phi i8 [ %708, %700 ], [ %643, %634 ]
  %719 = zext i8 %717 to i32
  %720 = zext nneg i8 %717 to i64
  %721 = lshr i64 %714, %720
  %722 = sub i32 %715, %719
  %723 = zext i16 %716 to i32
  store i32 %723, ptr %43, align 4, !tbaa !65
  %724 = zext i8 %718 to i32
  %725 = icmp eq i8 %718, 0
  br i1 %725, label %726, label %740

726:                                              ; preds = %712
  %727 = icmp eq i32 %62, 0
  br i1 %727, label %728, label %733

728:                                              ; preds = %726
  %729 = load ptr, ptr %23, align 8, !tbaa !50
  %730 = load i32, ptr %25, align 4, !tbaa !49
  store i32 %730, ptr %15, align 8, !tbaa !52
  %731 = call i32 %3(ptr noundef %4, ptr noundef %729, i32 noundef %730) #5
  %732 = icmp eq i32 %731, 0
  br i1 %732, label %733, label %1044

733:                                              ; preds = %728, %726
  %734 = phi ptr [ %729, %728 ], [ %60, %726 ]
  %735 = phi i32 [ %730, %728 ], [ %62, %726 ]
  %736 = load i32, ptr %43, align 4, !tbaa !65
  %737 = trunc i32 %736 to i8
  %738 = getelementptr inbounds i8, ptr %734, i64 1
  store i8 %737, ptr %734, align 1, !tbaa !34
  %739 = add i32 %735, -1
  store i32 20, ptr %10, align 8, !tbaa !53
  br label %1037

740:                                              ; preds = %712
  %741 = and i32 %724, 32
  %742 = icmp eq i32 %741, 0
  br i1 %742, label %744, label %743

743:                                              ; preds = %740
  store i32 11, ptr %10, align 8, !tbaa !53
  br label %1037

744:                                              ; preds = %740
  %745 = and i32 %724, 64
  %746 = icmp eq i32 %745, 0
  br i1 %746, label %748, label %747

747:                                              ; preds = %744
  store ptr @.str.9, ptr %13, align 8, !tbaa !37
  store i32 29, ptr %10, align 8, !tbaa !53
  br label %1037

748:                                              ; preds = %744
  %749 = and i32 %724, 15
  store i32 %749, ptr %44, align 4, !tbaa !92
  %750 = icmp eq i32 %749, 0
  br i1 %750, label %790, label %751

751:                                              ; preds = %748
  %752 = load i32, ptr %44, align 4, !tbaa !92
  %753 = icmp ult i32 %722, %752
  br i1 %753, label %754, label %776

754:                                              ; preds = %751, %763
  %755 = phi i32 [ %773, %763 ], [ %722, %751 ]
  %756 = phi i64 [ %772, %763 ], [ %721, %751 ]
  %757 = phi i32 [ %765, %763 ], [ %713, %751 ]
  %758 = icmp eq i32 %757, 0
  br i1 %758, label %759, label %763

759:                                              ; preds = %754
  %760 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #5
  %761 = icmp eq i32 %760, 0
  br i1 %761, label %762, label %763

762:                                              ; preds = %759
  store ptr null, ptr %6, align 8, !tbaa !56
  br label %1044

763:                                              ; preds = %759, %754
  %764 = phi i32 [ %760, %759 ], [ %757, %754 ]
  %765 = add i32 %764, -1
  %766 = load ptr, ptr %6, align 8, !tbaa !56
  %767 = getelementptr inbounds i8, ptr %766, i64 1
  store ptr %767, ptr %6, align 8, !tbaa !56
  %768 = load i8, ptr %766, align 1, !tbaa !34
  %769 = zext i8 %768 to i64
  %770 = zext nneg i32 %755 to i64
  %771 = shl i64 %769, %770
  %772 = add i64 %771, %756
  %773 = add i32 %755, 8
  %774 = load i32, ptr %44, align 4, !tbaa !92
  %775 = icmp ult i32 %773, %774
  br i1 %775, label %754, label %776, !llvm.loop !93

776:                                              ; preds = %763, %751
  %777 = phi i32 [ %713, %751 ], [ %765, %763 ]
  %778 = phi i64 [ %721, %751 ], [ %772, %763 ]
  %779 = phi i32 [ %722, %751 ], [ %773, %763 ]
  %780 = phi i32 [ %752, %751 ], [ %774, %763 ]
  %781 = trunc i64 %778 to i32
  %782 = shl nsw i32 -1, %780
  %783 = xor i32 %782, -1
  %784 = and i32 %783, %781
  %785 = load i32, ptr %43, align 4, !tbaa !65
  %786 = add i32 %785, %784
  store i32 %786, ptr %43, align 4, !tbaa !65
  %787 = zext nneg i32 %780 to i64
  %788 = lshr i64 %778, %787
  %789 = sub i32 %779, %780
  br label %790

790:                                              ; preds = %776, %748
  %791 = phi i32 [ %777, %776 ], [ %713, %748 ]
  %792 = phi i64 [ %788, %776 ], [ %721, %748 ]
  %793 = phi i32 [ %789, %776 ], [ %722, %748 ]
  %794 = load ptr, ptr %45, align 8, !tbaa !60
  %795 = trunc i64 %792 to i32
  %796 = load i32, ptr %46, align 4, !tbaa !61
  %797 = shl nsw i32 -1, %796
  %798 = xor i32 %797, -1
  %799 = and i32 %798, %795
  %800 = zext nneg i32 %799 to i64
  %801 = getelementptr inbounds %struct.code, ptr %794, i64 %800
  %802 = getelementptr inbounds i8, ptr %801, i64 1
  %803 = load i8, ptr %802, align 1, !tbaa.struct !77
  %804 = zext i8 %803 to i32
  %805 = icmp ult i32 %793, %804
  br i1 %805, label %806, label %842

806:                                              ; preds = %790
  %807 = zext i32 %793 to i64
  br label %808

808:                                              ; preds = %806, %817
  %809 = phi i64 [ %807, %806 ], [ %826, %817 ]
  %810 = phi i64 [ %792, %806 ], [ %825, %817 ]
  %811 = phi i32 [ %791, %806 ], [ %819, %817 ]
  %812 = icmp eq i32 %811, 0
  br i1 %812, label %813, label %817

813:                                              ; preds = %808
  %814 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #5
  %815 = icmp eq i32 %814, 0
  br i1 %815, label %816, label %817

816:                                              ; preds = %813
  store ptr null, ptr %6, align 8, !tbaa !56
  br label %1044

817:                                              ; preds = %813, %808
  %818 = phi i32 [ %814, %813 ], [ %811, %808 ]
  %819 = add i32 %818, -1
  %820 = load ptr, ptr %6, align 8, !tbaa !56
  %821 = getelementptr inbounds i8, ptr %820, i64 1
  store ptr %821, ptr %6, align 8, !tbaa !56
  %822 = load i8, ptr %820, align 1, !tbaa !34
  %823 = zext i8 %822 to i64
  %824 = shl i64 %823, %809
  %825 = add i64 %824, %810
  %826 = add nuw nsw i64 %809, 8
  %827 = load ptr, ptr %45, align 8, !tbaa !60
  %828 = trunc i64 %825 to i32
  %829 = load i32, ptr %46, align 4, !tbaa !61
  %830 = shl nsw i32 -1, %829
  %831 = xor i32 %830, -1
  %832 = and i32 %831, %828
  %833 = zext nneg i32 %832 to i64
  %834 = getelementptr inbounds %struct.code, ptr %827, i64 %833
  %835 = getelementptr inbounds i8, ptr %834, i64 1
  %836 = load i8, ptr %835, align 1, !tbaa.struct !77
  %837 = zext i8 %836 to i64
  %838 = icmp ult i64 %826, %837
  br i1 %838, label %808, label %839, !llvm.loop !94

839:                                              ; preds = %817
  %840 = zext i8 %836 to i32
  %841 = trunc i64 %826 to i32
  br label %842

842:                                              ; preds = %839, %790
  %843 = phi i32 [ %791, %790 ], [ %819, %839 ]
  %844 = phi i64 [ %792, %790 ], [ %825, %839 ]
  %845 = phi i32 [ %793, %790 ], [ %841, %839 ]
  %846 = phi ptr [ %801, %790 ], [ %834, %839 ]
  %847 = phi i8 [ %803, %790 ], [ %836, %839 ]
  %848 = phi i32 [ %804, %790 ], [ %840, %839 ]
  %849 = getelementptr inbounds i8, ptr %846, i64 2
  %850 = load i16, ptr %849, align 2
  %851 = load i8, ptr %846, align 2, !tbaa.struct !89
  %852 = icmp ult i8 %851, 16
  br i1 %852, label %853, label %919

853:                                              ; preds = %842
  %854 = zext nneg i8 %851 to i32
  %855 = zext i16 %850 to i32
  %856 = add nuw nsw i32 %848, %854
  %857 = shl nsw i32 -1, %856
  %858 = xor i32 %857, -1
  %859 = load ptr, ptr %47, align 8, !tbaa !60
  %860 = trunc i64 %844 to i32
  %861 = and i32 %860, %858
  %862 = lshr i32 %861, %848
  %863 = add nuw i32 %862, %855
  %864 = zext i32 %863 to i64
  %865 = getelementptr inbounds %struct.code, ptr %859, i64 %864
  %866 = getelementptr inbounds i8, ptr %865, i64 1
  %867 = load i8, ptr %866, align 1, !tbaa.struct !77
  %868 = zext i8 %867 to i32
  %869 = add nuw nsw i32 %848, %868
  %870 = icmp ugt i32 %869, %845
  br i1 %870, label %871, label %907

871:                                              ; preds = %853
  %872 = zext i32 %845 to i64
  br label %873

873:                                              ; preds = %871, %882
  %874 = phi i64 [ %872, %871 ], [ %891, %882 ]
  %875 = phi i64 [ %844, %871 ], [ %890, %882 ]
  %876 = phi i32 [ %843, %871 ], [ %884, %882 ]
  %877 = icmp eq i32 %876, 0
  br i1 %877, label %878, label %882

878:                                              ; preds = %873
  %879 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #5
  %880 = icmp eq i32 %879, 0
  br i1 %880, label %881, label %882

881:                                              ; preds = %878
  store ptr null, ptr %6, align 8, !tbaa !56
  br label %1044

882:                                              ; preds = %878, %873
  %883 = phi i32 [ %879, %878 ], [ %876, %873 ]
  %884 = add i32 %883, -1
  %885 = load ptr, ptr %6, align 8, !tbaa !56
  %886 = getelementptr inbounds i8, ptr %885, i64 1
  store ptr %886, ptr %6, align 8, !tbaa !56
  %887 = load i8, ptr %885, align 1, !tbaa !34
  %888 = zext i8 %887 to i64
  %889 = shl i64 %888, %874
  %890 = add i64 %889, %875
  %891 = add nuw nsw i64 %874, 8
  %892 = load ptr, ptr %47, align 8, !tbaa !60
  %893 = trunc i64 %890 to i32
  %894 = and i32 %893, %858
  %895 = lshr i32 %894, %848
  %896 = add nuw i32 %895, %855
  %897 = zext i32 %896 to i64
  %898 = getelementptr inbounds %struct.code, ptr %892, i64 %897
  %899 = getelementptr inbounds i8, ptr %898, i64 1
  %900 = load i8, ptr %899, align 1, !tbaa.struct !77
  %901 = zext i8 %900 to i32
  %902 = add nuw nsw i32 %848, %901
  %903 = zext nneg i32 %902 to i64
  %904 = icmp ult i64 %891, %903
  br i1 %904, label %873, label %905, !llvm.loop !95

905:                                              ; preds = %882
  %906 = trunc i64 %891 to i32
  br label %907

907:                                              ; preds = %905, %853
  %908 = phi i32 [ %843, %853 ], [ %884, %905 ]
  %909 = phi i64 [ %844, %853 ], [ %890, %905 ]
  %910 = phi i32 [ %845, %853 ], [ %906, %905 ]
  %911 = phi ptr [ %865, %853 ], [ %898, %905 ]
  %912 = phi i8 [ %867, %853 ], [ %900, %905 ]
  %913 = getelementptr inbounds i8, ptr %911, i64 2
  %914 = load i16, ptr %913, align 2, !tbaa.struct !91
  %915 = load i8, ptr %911, align 2, !tbaa.struct !89
  %916 = zext nneg i8 %847 to i64
  %917 = lshr i64 %909, %916
  %918 = sub i32 %910, %848
  br label %919

919:                                              ; preds = %842, %907
  %920 = phi i32 [ %908, %907 ], [ %843, %842 ]
  %921 = phi i64 [ %917, %907 ], [ %844, %842 ]
  %922 = phi i32 [ %918, %907 ], [ %845, %842 ]
  %923 = phi i16 [ %914, %907 ], [ %850, %842 ]
  %924 = phi i8 [ %912, %907 ], [ %847, %842 ]
  %925 = phi i8 [ %915, %907 ], [ %851, %842 ]
  %926 = zext i8 %924 to i32
  %927 = zext nneg i8 %924 to i64
  %928 = lshr i64 %921, %927
  %929 = sub i32 %922, %926
  %930 = zext i8 %925 to i32
  %931 = and i32 %930, 64
  %932 = icmp eq i32 %931, 0
  br i1 %932, label %934, label %933

933:                                              ; preds = %919
  store ptr @.str.10, ptr %13, align 8, !tbaa !37
  store i32 29, ptr %10, align 8, !tbaa !53
  br label %1037

934:                                              ; preds = %919
  %935 = zext i16 %923 to i32
  store i32 %935, ptr %48, align 8, !tbaa !96
  %936 = and i32 %930, 15
  store i32 %936, ptr %44, align 4, !tbaa !92
  %937 = icmp eq i32 %936, 0
  br i1 %937, label %977, label %938

938:                                              ; preds = %934
  %939 = load i32, ptr %44, align 4, !tbaa !92
  %940 = icmp ult i32 %929, %939
  br i1 %940, label %941, label %963

941:                                              ; preds = %938, %950
  %942 = phi i32 [ %960, %950 ], [ %929, %938 ]
  %943 = phi i64 [ %959, %950 ], [ %928, %938 ]
  %944 = phi i32 [ %952, %950 ], [ %920, %938 ]
  %945 = icmp eq i32 %944, 0
  br i1 %945, label %946, label %950

946:                                              ; preds = %941
  %947 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #5
  %948 = icmp eq i32 %947, 0
  br i1 %948, label %949, label %950

949:                                              ; preds = %946
  store ptr null, ptr %6, align 8, !tbaa !56
  br label %1044

950:                                              ; preds = %946, %941
  %951 = phi i32 [ %947, %946 ], [ %944, %941 ]
  %952 = add i32 %951, -1
  %953 = load ptr, ptr %6, align 8, !tbaa !56
  %954 = getelementptr inbounds i8, ptr %953, i64 1
  store ptr %954, ptr %6, align 8, !tbaa !56
  %955 = load i8, ptr %953, align 1, !tbaa !34
  %956 = zext i8 %955 to i64
  %957 = zext nneg i32 %942 to i64
  %958 = shl i64 %956, %957
  %959 = add i64 %958, %943
  %960 = add i32 %942, 8
  %961 = load i32, ptr %44, align 4, !tbaa !92
  %962 = icmp ult i32 %960, %961
  br i1 %962, label %941, label %963, !llvm.loop !97

963:                                              ; preds = %950, %938
  %964 = phi i32 [ %920, %938 ], [ %952, %950 ]
  %965 = phi i64 [ %928, %938 ], [ %959, %950 ]
  %966 = phi i32 [ %929, %938 ], [ %960, %950 ]
  %967 = phi i32 [ %939, %938 ], [ %961, %950 ]
  %968 = trunc i64 %965 to i32
  %969 = shl nsw i32 -1, %967
  %970 = xor i32 %969, -1
  %971 = and i32 %970, %968
  %972 = load i32, ptr %48, align 8, !tbaa !96
  %973 = add i32 %972, %971
  store i32 %973, ptr %48, align 8, !tbaa !96
  %974 = zext nneg i32 %967 to i64
  %975 = lshr i64 %965, %974
  %976 = sub i32 %966, %967
  br label %977

977:                                              ; preds = %963, %934
  %978 = phi i32 [ %964, %963 ], [ %920, %934 ]
  %979 = phi i64 [ %975, %963 ], [ %928, %934 ]
  %980 = phi i32 [ %976, %963 ], [ %929, %934 ]
  %981 = load i32, ptr %48, align 8, !tbaa !96
  %982 = load i32, ptr %25, align 4, !tbaa !49
  %983 = load i32, ptr %15, align 8, !tbaa !52
  %984 = icmp ult i32 %983, %982
  %985 = select i1 %984, i32 %62, i32 0
  %986 = sub i32 %982, %985
  %987 = icmp ugt i32 %981, %986
  br i1 %987, label %988, label %989

988:                                              ; preds = %977
  store ptr @.str.11, ptr %13, align 8, !tbaa !37
  store i32 29, ptr %10, align 8, !tbaa !53
  br label %1037

989:                                              ; preds = %977, %1024
  %990 = phi ptr [ %1021, %1024 ], [ %60, %977 ]
  %991 = phi i32 [ %1025, %1024 ], [ %62, %977 ]
  %992 = icmp eq i32 %991, 0
  br i1 %992, label %993, label %998

993:                                              ; preds = %989
  %994 = load ptr, ptr %23, align 8, !tbaa !50
  %995 = load i32, ptr %25, align 4, !tbaa !49
  store i32 %995, ptr %15, align 8, !tbaa !52
  %996 = call i32 %3(ptr noundef %4, ptr noundef %994, i32 noundef %995) #5
  %997 = icmp eq i32 %996, 0
  br i1 %997, label %998, label %1044

998:                                              ; preds = %993, %989
  %999 = phi ptr [ %994, %993 ], [ %990, %989 ]
  %1000 = phi i32 [ %995, %993 ], [ %991, %989 ]
  %1001 = load i32, ptr %25, align 4, !tbaa !49
  %1002 = load i32, ptr %48, align 8, !tbaa !96
  %1003 = sub i32 %1001, %1002
  %1004 = icmp ult i32 %1003, %1000
  %1005 = zext i32 %1003 to i64
  %1006 = zext i32 %1002 to i64
  %1007 = sub nsw i64 0, %1006
  %1008 = select i1 %1004, i32 %1003, i32 0
  %1009 = sub i32 %1000, %1008
  %1010 = select i1 %1004, i64 %1005, i64 %1007
  %1011 = getelementptr i8, ptr %999, i64 %1010
  %1012 = load i32, ptr %43, align 4, !tbaa !65
  %1013 = call i32 @llvm.umin.i32(i32 %1009, i32 %1012)
  %1014 = sub i32 %1012, %1013
  store i32 %1014, ptr %43, align 4, !tbaa !65
  br label %1015

1015:                                             ; preds = %1015, %998
  %1016 = phi ptr [ %999, %998 ], [ %1021, %1015 ]
  %1017 = phi i32 [ %1013, %998 ], [ %1022, %1015 ]
  %1018 = phi ptr [ %1011, %998 ], [ %1019, %1015 ]
  %1019 = getelementptr inbounds i8, ptr %1018, i64 1
  %1020 = load i8, ptr %1018, align 1, !tbaa !34
  %1021 = getelementptr inbounds i8, ptr %1016, i64 1
  store i8 %1020, ptr %1016, align 1, !tbaa !34
  %1022 = add i32 %1017, -1
  %1023 = icmp eq i32 %1022, 0
  br i1 %1023, label %1024, label %1015, !llvm.loop !98

1024:                                             ; preds = %1015
  %1025 = sub i32 %1000, %1013
  %1026 = load i32, ptr %43, align 4, !tbaa !65
  %1027 = icmp eq i32 %1026, 0
  br i1 %1027, label %1037, label %989, !llvm.loop !99

1028:                                             ; preds = %59
  %1029 = load i32, ptr %25, align 4, !tbaa !49
  %1030 = icmp ult i32 %62, %1029
  br i1 %1030, label %1031, label %1044

1031:                                             ; preds = %1028
  %1032 = load ptr, ptr %23, align 8, !tbaa !50
  %1033 = sub i32 %1029, %62
  %1034 = call i32 %3(ptr noundef %4, ptr noundef %1032, i32 noundef %1033) #5
  %1035 = icmp eq i32 %1034, 0
  %1036 = select i1 %1035, i32 1, i32 -5
  br label %1044

1037:                                             ; preds = %1024, %539, %988, %933, %747, %743, %733, %593, %562, %553, %548, %299, %234, %190, %152, %109, %78
  %1038 = phi ptr [ %594, %593 ], [ %738, %733 ], [ %60, %743 ], [ %60, %747 ], [ %60, %933 ], [ %60, %988 ], [ %60, %234 ], [ %60, %299 ], [ %60, %539 ], [ %60, %548 ], [ %60, %553 ], [ %60, %562 ], [ %60, %152 ], [ %191, %190 ], [ %60, %78 ], [ %60, %109 ], [ %1021, %1024 ]
  %1039 = phi i32 [ %597, %593 ], [ %713, %733 ], [ %713, %743 ], [ %713, %747 ], [ %920, %933 ], [ %978, %988 ], [ %217, %234 ], [ %239, %299 ], [ %540, %539 ], [ %540, %548 ], [ %540, %553 ], [ %540, %562 ], [ %145, %152 ], [ %192, %190 ], [ %61, %78 ], [ %98, %109 ], [ %978, %1024 ]
  %1040 = phi i32 [ %595, %593 ], [ %739, %733 ], [ %62, %743 ], [ %62, %747 ], [ %62, %933 ], [ %62, %988 ], [ %62, %234 ], [ %62, %299 ], [ %62, %539 ], [ %62, %548 ], [ %62, %553 ], [ %62, %562 ], [ %62, %152 ], [ %193, %190 ], [ %62, %78 ], [ %62, %109 ], [ %1025, %1024 ]
  %1041 = phi i64 [ %598, %593 ], [ %721, %733 ], [ %721, %743 ], [ %721, %747 ], [ %928, %933 ], [ %979, %988 ], [ %229, %234 ], [ %240, %299 ], [ %541, %539 ], [ %541, %548 ], [ %541, %553 ], [ %541, %562 ], [ %146, %152 ], [ 0, %190 ], [ %81, %78 ], [ %111, %109 ], [ %979, %1024 ]
  %1042 = phi i32 [ %599, %593 ], [ %722, %733 ], [ %722, %743 ], [ %722, %747 ], [ %929, %933 ], [ %980, %988 ], [ %230, %234 ], [ %241, %299 ], [ %542, %539 ], [ %542, %548 ], [ %542, %553 ], [ %542, %562 ], [ %147, %152 ], [ 0, %190 ], [ %82, %78 ], [ %112, %109 ], [ %980, %1024 ]
  br label %59, !llvm.loop !100

1043:                                             ; preds = %59
  br label %1044

1044:                                             ; preds = %728, %993, %170, %59, %1043, %1031, %1028, %949, %881, %816, %762, %674, %608, %477, %443, %402, %331, %257, %202, %166, %130, %86
  %1045 = phi i32 [ %61, %1028 ], [ 0, %762 ], [ 0, %949 ], [ 0, %881 ], [ 0, %816 ], [ 0, %674 ], [ 0, %608 ], [ 0, %202 ], [ 0, %257 ], [ 0, %402 ], [ 0, %443 ], [ 0, %477 ], [ 0, %331 ], [ 0, %130 ], [ 0, %166 ], [ 0, %86 ], [ %61, %1031 ], [ %61, %59 ], [ %168, %170 ], [ %978, %993 ], [ %713, %728 ], [ %61, %1043 ]
  %1046 = phi i32 [ 1, %1028 ], [ -5, %762 ], [ -5, %949 ], [ -5, %881 ], [ -5, %816 ], [ -5, %674 ], [ -5, %608 ], [ -5, %202 ], [ -5, %257 ], [ -5, %402 ], [ -5, %443 ], [ -5, %477 ], [ -5, %331 ], [ -5, %130 ], [ -5, %166 ], [ -5, %86 ], [ %1036, %1031 ], [ -3, %59 ], [ -5, %170 ], [ -5, %993 ], [ -5, %728 ], [ -2, %1043 ]
  %1047 = load ptr, ptr %6, align 8, !tbaa !56
  store ptr %1047, ptr %0, align 8, !tbaa !55
  %1048 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 1
  store i32 %1045, ptr %1048, align 8, !tbaa !57
  br label %1049

1049:                                             ; preds = %5, %8, %1044
  %1050 = phi i32 [ %1046, %1044 ], [ -2, %8 ], [ -2, %5 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #5
  ret i32 %1050
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

declare hidden i32 @inflate_table(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare hidden void @inflate_fast(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @inflateBackEnd(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !44
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 10
  %13 = load ptr, ptr %12, align 8, !tbaa !43
  tail call void %9(ptr noundef %13, ptr noundef nonnull %5) #5
  store ptr null, ptr %4, align 8, !tbaa !45
  br label %14

14:                                               ; preds = %1, %3, %7, %11
  %15 = phi i32 [ 0, %11 ], [ -2, %7 ], [ -2, %3 ], [ -2, %1 ]
  ret i32 %15
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

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
!34 = !{!35, !35, i64 0}
!35 = !{!"omnipotent char", !36, i64 0}
!36 = !{!"Simple C/C++ TBAA"}
!37 = !{!38, !39, i64 48}
!38 = !{!"z_stream_s", !39, i64 0, !40, i64 8, !41, i64 16, !39, i64 24, !40, i64 32, !41, i64 40, !39, i64 48, !39, i64 56, !39, i64 64, !39, i64 72, !39, i64 80, !40, i64 88, !41, i64 96, !41, i64 104}
!39 = !{!"any pointer", !35, i64 0}
!40 = !{!"int", !35, i64 0}
!41 = !{!"long", !35, i64 0}
!42 = !{!38, !39, i64 64}
!43 = !{!38, !39, i64 80}
!44 = !{!38, !39, i64 72}
!45 = !{!38, !39, i64 56}
!46 = !{!47, !40, i64 20}
!47 = !{!"inflate_state", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !41, i64 24, !41, i64 32, !39, i64 40, !40, i64 48, !40, i64 52, !40, i64 56, !40, i64 60, !39, i64 64, !41, i64 72, !40, i64 80, !40, i64 84, !40, i64 88, !40, i64 92, !39, i64 96, !39, i64 104, !40, i64 112, !40, i64 116, !40, i64 120, !40, i64 124, !40, i64 128, !40, i64 132, !39, i64 136, !35, i64 144, !35, i64 784, !35, i64 1360, !40, i64 7136, !40, i64 7140, !40, i64 7144}
!48 = !{!47, !40, i64 48}
!49 = !{!47, !40, i64 52}
!50 = !{!47, !39, i64 64}
!51 = !{!47, !40, i64 60}
!52 = !{!47, !40, i64 56}
!53 = !{!47, !40, i64 0}
!54 = !{!47, !40, i64 4}
!55 = !{!38, !39, i64 0}
!56 = !{!39, !39, i64 0}
!57 = !{!38, !40, i64 8}
!58 = !{!47, !39, i64 96}
!59 = !{!47, !40, i64 112}
!60 = !{!47, !39, i64 104}
!61 = !{!47, !40, i64 116}
!62 = distinct !{!62, !63, !64}
!63 = !{!"llvm.loop.mustprogress"}
!64 = !{!"llvm.loop.unroll.disable"}
!65 = !{!47, !40, i64 84}
!66 = distinct !{!66, !63, !64}
!67 = distinct !{!67, !63, !64}
!68 = !{!47, !40, i64 124}
!69 = !{!47, !40, i64 128}
!70 = !{!47, !40, i64 120}
!71 = !{!47, !40, i64 132}
!72 = !{!73, !73, i64 0}
!73 = !{!"short", !35, i64 0}
!74 = distinct !{!74, !63, !64}
!75 = distinct !{!75, !63, !64}
!76 = !{!47, !39, i64 136}
!77 = !{i64 0, i64 1, !34, i64 1, i64 2, !72}
!78 = distinct !{!78, !64}
!79 = distinct !{!79, !63, !64}
!80 = distinct !{!80, !63, !64}
!81 = distinct !{!81, !63, !64}
!82 = distinct !{!82, !63, !64}
!83 = distinct !{!83, !63, !64}
!84 = !{!38, !39, i64 24}
!85 = !{!38, !40, i64 32}
!86 = !{!47, !41, i64 72}
!87 = !{!47, !40, i64 80}
!88 = distinct !{!88, !64}
!89 = !{i64 0, i64 1, !34, i64 1, i64 1, !34, i64 2, i64 2, !72}
!90 = distinct !{!90, !64}
!91 = !{i64 0, i64 2, !72}
!92 = !{!47, !40, i64 92}
!93 = distinct !{!93, !63, !64}
!94 = distinct !{!94, !64}
!95 = distinct !{!95, !64}
!96 = !{!47, !40, i64 88}
!97 = distinct !{!97, !63, !64}
!98 = distinct !{!98, !63, !64}
!99 = distinct !{!99, !63, !64}
!100 = distinct !{!100, !64}
