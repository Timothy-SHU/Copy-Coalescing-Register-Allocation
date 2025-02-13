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

; Function Attrs: noinline nounwind optsize uwtable
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
  %27 = phi ptr [ @zcalloc, %24 ], [ %22, %19 ]
  %28 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 9
  %29 = load ptr, ptr %28, align 8, !tbaa !44
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store ptr @zcfree, ptr %28, align 8, !tbaa !44
  br label %32

32:                                               ; preds = %31, %26
  %33 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 10
  %34 = load ptr, ptr %33, align 8, !tbaa !43
  %35 = tail call ptr %27(ptr noundef %34, i32 noundef 1, i32 noundef 7152) #6
  %36 = icmp eq ptr %35, null
  br i1 %36, label %46, label %37

37:                                               ; preds = %32
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

46:                                               ; preds = %32, %12, %5, %7, %37
  %47 = phi i32 [ 0, %37 ], [ -6, %7 ], [ -6, %5 ], [ -2, %12 ], [ -4, %32 ]
  ret i32 %47
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare hidden ptr @zcalloc(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: optsize
declare hidden void @zcfree(ptr noundef, ptr noundef) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @inflateBack(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #7
  %7 = icmp eq ptr %0, null
  br i1 %7, label %1071, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !45
  %11 = icmp eq ptr %10, null
  br i1 %11, label %1071, label %12

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
  %40 = getelementptr inbounds %struct.inflate_state, ptr %10, i64 0, i32 16
  %41 = getelementptr inbounds %struct.inflate_state, ptr %10, i64 0, i32 18
  %42 = getelementptr inbounds %struct.inflate_state, ptr %10, i64 0, i32 17
  %43 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 3
  %44 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 4
  %45 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 1
  %46 = getelementptr inbounds %struct.inflate_state, ptr %10, i64 0, i32 14
  %47 = getelementptr inbounds %struct.inflate_state, ptr %10, i64 0, i32 15
  br label %48

48:                                               ; preds = %1059, %21
  %49 = phi i32 [ 11, %21 ], [ %1065, %1059 ]
  %50 = phi ptr [ %24, %21 ], [ %1060, %1059 ]
  %51 = phi i32 [ %22, %21 ], [ %1061, %1059 ]
  %52 = phi i32 [ %26, %21 ], [ %1062, %1059 ]
  %53 = phi i64 [ 0, %21 ], [ %1063, %1059 ]
  %54 = phi i32 [ 0, %21 ], [ %1064, %1059 ]
  switch i32 %49, label %1067 [
    i32 11, label %59
    i32 13, label %102
    i32 16, label %55
    i32 20, label %558
    i32 28, label %1050
    i32 29, label %1066
  ]

55:                                               ; preds = %48
  %56 = icmp ult i32 %54, 14
  br i1 %56, label %57, label %205

57:                                               ; preds = %55
  %58 = zext nneg i32 %54 to i64
  br label %183

59:                                               ; preds = %48
  %60 = load i32, ptr %14, align 4, !tbaa !54
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %59
  %63 = icmp ult i32 %54, 3
  br i1 %63, label %64, label %86

64:                                               ; preds = %62
  %65 = or disjoint i32 %54, 8
  %66 = icmp eq i32 %51, 0
  br i1 %66, label %72, label %76

67:                                               ; preds = %59
  %68 = and i32 %54, 7
  %69 = zext nneg i32 %68 to i64
  %70 = lshr i64 %53, %69
  %71 = and i32 %54, -8
  store i32 28, ptr %10, align 8, !tbaa !53
  br label %1059

72:                                               ; preds = %64
  %73 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  store ptr null, ptr %6, align 8, !tbaa !56
  br label %1067

76:                                               ; preds = %72, %64
  %77 = phi i32 [ %73, %72 ], [ %51, %64 ]
  %78 = add i32 %77, -1
  %79 = load ptr, ptr %6, align 8, !tbaa !56
  %80 = getelementptr inbounds i8, ptr %79, i64 1
  store ptr %80, ptr %6, align 8, !tbaa !56
  %81 = load i8, ptr %79, align 1, !tbaa !34
  %82 = zext i8 %81 to i64
  %83 = zext nneg i32 %54 to i64
  %84 = shl nuw nsw i64 %82, %83
  %85 = add i64 %84, %53
  br label %86

86:                                               ; preds = %76, %62
  %87 = phi i32 [ %78, %76 ], [ %51, %62 ]
  %88 = phi i64 [ %85, %76 ], [ %53, %62 ]
  %89 = phi i32 [ %65, %76 ], [ %54, %62 ]
  %90 = trunc i64 %88 to i32
  %91 = and i32 %90, 1
  store i32 %91, ptr %14, align 4, !tbaa !54
  %92 = lshr i32 %90, 1
  %93 = and i32 %92, 3
  switch i32 %93, label %97 [
    i32 0, label %98
    i32 1, label %94
    i32 2, label %95
    i32 3, label %96
  ]

94:                                               ; preds = %86
  call fastcc void @fixedtables(ptr noundef nonnull %10) #8
  br label %98

95:                                               ; preds = %86
  br label %98

96:                                               ; preds = %86
  store ptr @.str.1, ptr %13, align 8, !tbaa !37
  br label %98

97:                                               ; preds = %86
  unreachable

98:                                               ; preds = %86, %94, %95, %96
  %99 = phi i32 [ 20, %94 ], [ 16, %95 ], [ 29, %96 ], [ 13, %86 ]
  store i32 %99, ptr %10, align 8, !tbaa !53
  %100 = lshr i64 %88, 3
  %101 = add i32 %89, -3
  br label %1059

102:                                              ; preds = %48
  %103 = and i32 %54, 7
  %104 = zext nneg i32 %103 to i64
  %105 = lshr i64 %53, %104
  %106 = and i32 %54, -8
  %107 = icmp ult i32 %106, 32
  br i1 %107, label %108, label %133

108:                                              ; preds = %102
  %109 = and i32 %54, -8
  %110 = zext i32 %109 to i64
  br label %111

111:                                              ; preds = %108, %120
  %112 = phi i64 [ %110, %108 ], [ %129, %120 ]
  %113 = phi i64 [ %105, %108 ], [ %128, %120 ]
  %114 = phi i32 [ %51, %108 ], [ %122, %120 ]
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %111
  %117 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %116
  store ptr null, ptr %6, align 8, !tbaa !56
  br label %1067

120:                                              ; preds = %116, %111
  %121 = phi i32 [ %117, %116 ], [ %114, %111 ]
  %122 = add i32 %121, -1
  %123 = load ptr, ptr %6, align 8, !tbaa !56
  %124 = getelementptr inbounds i8, ptr %123, i64 1
  store ptr %124, ptr %6, align 8, !tbaa !56
  %125 = load i8, ptr %123, align 1, !tbaa !34
  %126 = zext i8 %125 to i64
  %127 = shl nuw nsw i64 %126, %112
  %128 = add i64 %127, %113
  %129 = add nuw nsw i64 %112, 8
  %130 = icmp ult i64 %112, 24
  br i1 %130, label %111, label %131, !llvm.loop !58

131:                                              ; preds = %120
  %132 = trunc i64 %129 to i32
  br label %133

133:                                              ; preds = %131, %102
  %134 = phi i32 [ %51, %102 ], [ %122, %131 ]
  %135 = phi i64 [ %105, %102 ], [ %128, %131 ]
  %136 = phi i32 [ %106, %102 ], [ %132, %131 ]
  %137 = and i64 %135, 65535
  %138 = lshr i64 %135, 16
  %139 = xor i64 %138, %137
  %140 = icmp eq i64 %139, 65535
  br i1 %140, label %142, label %141

141:                                              ; preds = %133
  store ptr @.str.2, ptr %13, align 8, !tbaa !37
  store i32 29, ptr %10, align 8, !tbaa !53
  br label %1059

142:                                              ; preds = %133
  %143 = trunc i64 %135 to i32
  %144 = and i32 %143, 65535
  store i32 %144, ptr %40, align 4, !tbaa !60
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %179, label %146

146:                                              ; preds = %142, %164
  %147 = phi i32 [ %174, %164 ], [ %52, %142 ]
  %148 = phi i32 [ %171, %164 ], [ %134, %142 ]
  %149 = phi ptr [ %175, %164 ], [ %50, %142 ]
  %150 = phi i32 [ %177, %164 ], [ %144, %142 ]
  %151 = icmp eq i32 %148, 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %146
  %153 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %152
  store ptr null, ptr %6, align 8, !tbaa !56
  br label %1067

156:                                              ; preds = %146, %152
  %157 = phi i32 [ %153, %152 ], [ %148, %146 ]
  %158 = icmp eq i32 %147, 0
  br i1 %158, label %159, label %164

159:                                              ; preds = %156
  %160 = load ptr, ptr %23, align 8, !tbaa !50
  %161 = load i32, ptr %25, align 4, !tbaa !49
  store i32 %161, ptr %15, align 8, !tbaa !52
  %162 = call i32 %3(ptr noundef %4, ptr noundef %160, i32 noundef %161) #6
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %1067

164:                                              ; preds = %159, %156
  %165 = phi ptr [ %160, %159 ], [ %149, %156 ]
  %166 = phi i32 [ %161, %159 ], [ %147, %156 ]
  %167 = call i32 @llvm.umin.i32(i32 %150, i32 %157)
  %168 = call i32 @llvm.umin.i32(i32 %167, i32 %166)
  %169 = load ptr, ptr %6, align 8, !tbaa !56
  %170 = zext i32 %168 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %165, ptr align 1 %169, i64 %170, i1 false)
  %171 = sub i32 %157, %168
  %172 = load ptr, ptr %6, align 8, !tbaa !56
  %173 = getelementptr inbounds i8, ptr %172, i64 %170
  store ptr %173, ptr %6, align 8, !tbaa !56
  %174 = sub i32 %166, %168
  %175 = getelementptr inbounds i8, ptr %165, i64 %170
  %176 = load i32, ptr %40, align 4, !tbaa !60
  %177 = sub i32 %176, %168
  store i32 %177, ptr %40, align 4, !tbaa !60
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %146, !llvm.loop !61

179:                                              ; preds = %164, %142
  %180 = phi ptr [ %50, %142 ], [ %175, %164 ]
  %181 = phi i32 [ %134, %142 ], [ %171, %164 ]
  %182 = phi i32 [ %52, %142 ], [ %174, %164 ]
  store i32 11, ptr %10, align 8, !tbaa !53
  br label %1059

183:                                              ; preds = %57, %192
  %184 = phi i64 [ %58, %57 ], [ %201, %192 ]
  %185 = phi i64 [ %53, %57 ], [ %200, %192 ]
  %186 = phi i32 [ %51, %57 ], [ %194, %192 ]
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %192

188:                                              ; preds = %183
  %189 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %188
  store ptr null, ptr %6, align 8, !tbaa !56
  br label %1067

192:                                              ; preds = %188, %183
  %193 = phi i32 [ %189, %188 ], [ %186, %183 ]
  %194 = add i32 %193, -1
  %195 = load ptr, ptr %6, align 8, !tbaa !56
  %196 = getelementptr inbounds i8, ptr %195, i64 1
  store ptr %196, ptr %6, align 8, !tbaa !56
  %197 = load i8, ptr %195, align 1, !tbaa !34
  %198 = zext i8 %197 to i64
  %199 = shl nuw nsw i64 %198, %184
  %200 = add i64 %199, %185
  %201 = add nuw nsw i64 %184, 8
  %202 = icmp ult i64 %184, 6
  br i1 %202, label %183, label %203, !llvm.loop !62

203:                                              ; preds = %192
  %204 = trunc i64 %201 to i32
  br label %205

205:                                              ; preds = %203, %55
  %206 = phi i32 [ %51, %55 ], [ %194, %203 ]
  %207 = phi i64 [ %53, %55 ], [ %200, %203 ]
  %208 = phi i32 [ %54, %55 ], [ %204, %203 ]
  %209 = trunc i64 %207 to i32
  %210 = and i32 %209, 31
  %211 = add nuw nsw i32 %210, 257
  store i32 %211, ptr %27, align 4, !tbaa !63
  %212 = lshr i32 %209, 5
  %213 = and i32 %212, 31
  %214 = add nuw nsw i32 %213, 1
  store i32 %214, ptr %28, align 8, !tbaa !64
  %215 = lshr i32 %209, 10
  %216 = and i32 %215, 15
  %217 = add nuw nsw i32 %216, 4
  store i32 %217, ptr %29, align 8, !tbaa !65
  %218 = lshr i64 %207, 14
  %219 = add i32 %208, -14
  %220 = icmp ugt i32 %210, 29
  %221 = icmp ugt i32 %213, 29
  %222 = or i1 %220, %221
  br i1 %222, label %223, label %224

223:                                              ; preds = %205
  store ptr @.str.3, ptr %13, align 8, !tbaa !37
  store i32 29, ptr %10, align 8, !tbaa !53
  br label %1059

224:                                              ; preds = %205
  store i32 0, ptr %30, align 4, !tbaa !66
  br label %229

225:                                              ; preds = %259
  %226 = icmp ult i32 %268, 19
  br i1 %226, label %227, label %287

227:                                              ; preds = %225
  %228 = zext nneg i32 %268 to i64
  br label %277

229:                                              ; preds = %224, %259
  %230 = phi i32 [ %260, %259 ], [ %217, %224 ]
  %231 = phi i32 [ %261, %259 ], [ %217, %224 ]
  %232 = phi i32 [ %268, %259 ], [ 0, %224 ]
  %233 = phi i32 [ %275, %259 ], [ %219, %224 ]
  %234 = phi i64 [ %274, %259 ], [ %218, %224 ]
  %235 = phi i32 [ %263, %259 ], [ %206, %224 ]
  %236 = icmp ult i32 %233, 3
  br i1 %236, label %237, label %259

237:                                              ; preds = %229
  %238 = or disjoint i32 %233, 8
  %239 = icmp eq i32 %235, 0
  br i1 %239, label %240, label %247

240:                                              ; preds = %237
  %241 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %246, label %243

243:                                              ; preds = %240
  %244 = load i32, ptr %30, align 4, !tbaa !66
  %245 = load i32, ptr %29, align 8, !tbaa !65
  br label %247

246:                                              ; preds = %240
  store ptr null, ptr %6, align 8, !tbaa !56
  br label %1067

247:                                              ; preds = %243, %237
  %248 = phi i32 [ %245, %243 ], [ %230, %237 ]
  %249 = phi i32 [ %244, %243 ], [ %232, %237 ]
  %250 = phi i32 [ %241, %243 ], [ %235, %237 ]
  %251 = add i32 %250, -1
  %252 = load ptr, ptr %6, align 8, !tbaa !56
  %253 = getelementptr inbounds i8, ptr %252, i64 1
  store ptr %253, ptr %6, align 8, !tbaa !56
  %254 = load i8, ptr %252, align 1, !tbaa !34
  %255 = zext i8 %254 to i64
  %256 = zext nneg i32 %233 to i64
  %257 = shl nuw nsw i64 %255, %256
  %258 = add nuw nsw i64 %257, %234
  br label %259

259:                                              ; preds = %247, %229
  %260 = phi i32 [ %248, %247 ], [ %230, %229 ]
  %261 = phi i32 [ %248, %247 ], [ %231, %229 ]
  %262 = phi i32 [ %249, %247 ], [ %232, %229 ]
  %263 = phi i32 [ %251, %247 ], [ %235, %229 ]
  %264 = phi i64 [ %258, %247 ], [ %234, %229 ]
  %265 = phi i32 [ %238, %247 ], [ %233, %229 ]
  %266 = trunc i64 %264 to i16
  %267 = and i16 %266, 7
  %268 = add i32 %262, 1
  store i32 %268, ptr %30, align 4, !tbaa !66
  %269 = zext i32 %262 to i64
  %270 = getelementptr inbounds [19 x i16], ptr @inflateBack.order, i64 0, i64 %269
  %271 = load i16, ptr %270, align 2, !tbaa !67
  %272 = zext i16 %271 to i64
  %273 = getelementptr inbounds %struct.inflate_state, ptr %10, i64 0, i32 28, i64 %272
  store i16 %267, ptr %273, align 2, !tbaa !67
  %274 = lshr i64 %264, 3
  %275 = add i32 %265, -3
  %276 = icmp ult i32 %268, %261
  br i1 %276, label %229, label %225, !llvm.loop !69

277:                                              ; preds = %227, %277
  %278 = phi i64 [ %228, %227 ], [ %279, %277 ]
  %279 = add nuw nsw i64 %278, 1
  %280 = getelementptr inbounds [19 x i16], ptr @inflateBack.order, i64 0, i64 %278
  %281 = load i16, ptr %280, align 2, !tbaa !67
  %282 = zext i16 %281 to i64
  %283 = getelementptr inbounds %struct.inflate_state, ptr %10, i64 0, i32 28, i64 %282
  store i16 0, ptr %283, align 2, !tbaa !67
  %284 = and i64 %279, 4294967295
  %285 = icmp eq i64 %284, 19
  br i1 %285, label %286, label %277, !llvm.loop !70

286:                                              ; preds = %277
  store i32 19, ptr %30, align 4, !tbaa !66
  br label %287

287:                                              ; preds = %286, %225
  store ptr %31, ptr %32, align 8, !tbaa !71
  store ptr %31, ptr %33, align 8, !tbaa !72
  store i32 7, ptr %34, align 8, !tbaa !73
  %288 = call i32 @inflate_table(i32 noundef 0, ptr noundef nonnull %35, i32 noundef 19, ptr noundef nonnull %32, ptr noundef nonnull %34, ptr noundef nonnull %36) #6
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %291, label %290

290:                                              ; preds = %287
  store ptr @.str.4, ptr %13, align 8, !tbaa !37
  store i32 29, ptr %10, align 8, !tbaa !53
  br label %1059

291:                                              ; preds = %287
  store i32 0, ptr %30, align 4, !tbaa !66
  %292 = load i32, ptr %27, align 4, !tbaa !63
  %293 = load i32, ptr %28, align 8, !tbaa !64
  %294 = sub i32 0, %292
  %295 = icmp eq i32 %293, %294
  br i1 %295, label %533, label %296

296:                                              ; preds = %291, %525
  %297 = phi i32 [ %531, %525 ], [ %275, %291 ]
  %298 = phi i64 [ %530, %525 ], [ %274, %291 ]
  %299 = phi i32 [ %529, %525 ], [ %263, %291 ]
  %300 = load ptr, ptr %33, align 8, !tbaa !72
  %301 = trunc i64 %298 to i32
  %302 = load i32, ptr %34, align 8, !tbaa !73
  %303 = shl nsw i32 -1, %302
  %304 = xor i32 %303, -1
  %305 = and i32 %304, %301
  %306 = zext nneg i32 %305 to i64
  %307 = getelementptr inbounds %struct.code, ptr %300, i64 %306
  %308 = getelementptr inbounds i8, ptr %307, i64 1
  %309 = load i8, ptr %308, align 1, !tbaa.struct !74
  %310 = zext i8 %309 to i32
  %311 = icmp ult i32 %297, %310
  br i1 %311, label %312, label %353

312:                                              ; preds = %296
  %313 = zext nneg i32 %297 to i64
  br label %314

314:                                              ; preds = %312, %328
  %315 = phi i32 [ %302, %312 ], [ %329, %328 ]
  %316 = phi ptr [ %300, %312 ], [ %330, %328 ]
  %317 = phi i64 [ %313, %312 ], [ %339, %328 ]
  %318 = phi i64 [ %298, %312 ], [ %338, %328 ]
  %319 = phi i32 [ %299, %312 ], [ %332, %328 ]
  %320 = icmp eq i32 %319, 0
  br i1 %320, label %321, label %328

321:                                              ; preds = %314
  %322 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %323 = icmp eq i32 %322, 0
  br i1 %323, label %327, label %324

324:                                              ; preds = %321
  %325 = load ptr, ptr %33, align 8, !tbaa !72
  %326 = load i32, ptr %34, align 8, !tbaa !73
  br label %328

327:                                              ; preds = %321
  store ptr null, ptr %6, align 8, !tbaa !56
  br label %1067

328:                                              ; preds = %324, %314
  %329 = phi i32 [ %326, %324 ], [ %315, %314 ]
  %330 = phi ptr [ %325, %324 ], [ %316, %314 ]
  %331 = phi i32 [ %322, %324 ], [ %319, %314 ]
  %332 = add i32 %331, -1
  %333 = load ptr, ptr %6, align 8, !tbaa !56
  %334 = getelementptr inbounds i8, ptr %333, i64 1
  store ptr %334, ptr %6, align 8, !tbaa !56
  %335 = load i8, ptr %333, align 1, !tbaa !34
  %336 = zext i8 %335 to i64
  %337 = shl i64 %336, %317
  %338 = add i64 %337, %318
  %339 = add nuw nsw i64 %317, 8
  %340 = trunc i64 %338 to i32
  %341 = shl nsw i32 -1, %329
  %342 = xor i32 %341, -1
  %343 = and i32 %342, %340
  %344 = zext nneg i32 %343 to i64
  %345 = getelementptr inbounds %struct.code, ptr %330, i64 %344
  %346 = getelementptr inbounds i8, ptr %345, i64 1
  %347 = load i8, ptr %346, align 1, !tbaa.struct !74
  %348 = zext i8 %347 to i64
  %349 = icmp ult i64 %339, %348
  br i1 %349, label %314, label %350

350:                                              ; preds = %328
  %351 = zext i8 %347 to i32
  %352 = trunc i64 %339 to i32
  br label %353

353:                                              ; preds = %350, %296
  %354 = phi i32 [ %310, %296 ], [ %351, %350 ]
  %355 = phi i32 [ %299, %296 ], [ %332, %350 ]
  %356 = phi i64 [ %298, %296 ], [ %338, %350 ]
  %357 = phi i32 [ %297, %296 ], [ %352, %350 ]
  %358 = phi i8 [ %309, %296 ], [ %347, %350 ]
  %359 = phi ptr [ %307, %296 ], [ %345, %350 ]
  %360 = getelementptr inbounds i8, ptr %359, i64 2
  %361 = load i16, ptr %360, align 2
  %362 = icmp ult i16 %361, 16
  br i1 %362, label %363, label %374

363:                                              ; preds = %353
  %364 = zext nneg i8 %358 to i64
  %365 = lshr i64 %356, %364
  %366 = sub i32 %357, %354
  %367 = load i32, ptr %30, align 4, !tbaa !66
  %368 = add i32 %367, 1
  store i32 %368, ptr %30, align 4, !tbaa !66
  %369 = zext i32 %367 to i64
  %370 = getelementptr inbounds %struct.inflate_state, ptr %10, i64 0, i32 28, i64 %369
  store i16 %361, ptr %370, align 2, !tbaa !67
  %371 = load i32, ptr %27, align 4, !tbaa !63
  %372 = load i32, ptr %28, align 8, !tbaa !64
  %373 = add i32 %372, %371
  br label %525

374:                                              ; preds = %353
  switch i16 %361, label %387 [
    i16 16, label %381
    i16 17, label %375
  ]

375:                                              ; preds = %374
  %376 = add nuw nsw i32 %354, 3
  %377 = icmp ult i32 %357, %376
  br i1 %377, label %378, label %457

378:                                              ; preds = %375
  %379 = zext nneg i32 %357 to i64
  %380 = zext nneg i32 %376 to i64
  br label %435

381:                                              ; preds = %374
  %382 = add nuw nsw i32 %354, 2
  %383 = icmp ult i32 %357, %382
  br i1 %383, label %384, label %415

384:                                              ; preds = %381
  %385 = zext nneg i32 %357 to i64
  %386 = zext nneg i32 %382 to i64
  br label %393

387:                                              ; preds = %374
  %388 = add nuw nsw i32 %354, 7
  %389 = icmp ult i32 %357, %388
  br i1 %389, label %390, label %491

390:                                              ; preds = %387
  %391 = zext nneg i32 %357 to i64
  %392 = zext nneg i32 %388 to i64
  br label %469

393:                                              ; preds = %384, %402
  %394 = phi i64 [ %385, %384 ], [ %411, %402 ]
  %395 = phi i64 [ %356, %384 ], [ %410, %402 ]
  %396 = phi i32 [ %355, %384 ], [ %404, %402 ]
  %397 = icmp eq i32 %396, 0
  br i1 %397, label %398, label %402

398:                                              ; preds = %393
  %399 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %400 = icmp eq i32 %399, 0
  br i1 %400, label %401, label %402

401:                                              ; preds = %398
  store ptr null, ptr %6, align 8, !tbaa !56
  br label %1067

402:                                              ; preds = %398, %393
  %403 = phi i32 [ %399, %398 ], [ %396, %393 ]
  %404 = add i32 %403, -1
  %405 = load ptr, ptr %6, align 8, !tbaa !56
  %406 = getelementptr inbounds i8, ptr %405, i64 1
  store ptr %406, ptr %6, align 8, !tbaa !56
  %407 = load i8, ptr %405, align 1, !tbaa !34
  %408 = zext i8 %407 to i64
  %409 = shl i64 %408, %394
  %410 = add i64 %409, %395
  %411 = add nuw nsw i64 %394, 8
  %412 = icmp ult i64 %411, %386
  br i1 %412, label %393, label %413, !llvm.loop !75

413:                                              ; preds = %402
  %414 = trunc i64 %411 to i32
  br label %415

415:                                              ; preds = %413, %381
  %416 = phi i32 [ %355, %381 ], [ %404, %413 ]
  %417 = phi i64 [ %356, %381 ], [ %410, %413 ]
  %418 = phi i32 [ %357, %381 ], [ %414, %413 ]
  %419 = zext nneg i8 %358 to i64
  %420 = lshr i64 %417, %419
  %421 = sub i32 %418, %354
  %422 = load i32, ptr %30, align 4, !tbaa !66
  %423 = icmp eq i32 %422, 0
  br i1 %423, label %424, label %425

424:                                              ; preds = %415
  store ptr @.str.5, ptr %13, align 8, !tbaa !37
  store i32 29, ptr %10, align 8, !tbaa !53
  br label %1059

425:                                              ; preds = %415
  %426 = add i32 %422, -1
  %427 = zext i32 %426 to i64
  %428 = getelementptr inbounds %struct.inflate_state, ptr %10, i64 0, i32 28, i64 %427
  %429 = load i16, ptr %428, align 2, !tbaa !67
  %430 = trunc i64 %420 to i32
  %431 = and i32 %430, 3
  %432 = add nuw nsw i32 %431, 3
  %433 = lshr i64 %420, 2
  %434 = add i32 %421, -2
  br label %503

435:                                              ; preds = %378, %444
  %436 = phi i64 [ %379, %378 ], [ %453, %444 ]
  %437 = phi i64 [ %356, %378 ], [ %452, %444 ]
  %438 = phi i32 [ %355, %378 ], [ %446, %444 ]
  %439 = icmp eq i32 %438, 0
  br i1 %439, label %440, label %444

440:                                              ; preds = %435
  %441 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %442 = icmp eq i32 %441, 0
  br i1 %442, label %443, label %444

443:                                              ; preds = %440
  store ptr null, ptr %6, align 8, !tbaa !56
  br label %1067

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
  %454 = icmp ult i64 %453, %380
  br i1 %454, label %435, label %455, !llvm.loop !76

455:                                              ; preds = %444
  %456 = trunc i64 %453 to i32
  br label %457

457:                                              ; preds = %455, %375
  %458 = phi i32 [ %355, %375 ], [ %446, %455 ]
  %459 = phi i64 [ %356, %375 ], [ %452, %455 ]
  %460 = phi i32 [ %357, %375 ], [ %456, %455 ]
  %461 = zext nneg i8 %358 to i64
  %462 = lshr i64 %459, %461
  %463 = trunc i64 %462 to i32
  %464 = and i32 %463, 7
  %465 = add nuw nsw i32 %464, 3
  %466 = lshr i64 %462, 3
  %467 = sub i32 %460, %354
  %468 = add i32 %467, -3
  br label %503

469:                                              ; preds = %390, %478
  %470 = phi i64 [ %391, %390 ], [ %487, %478 ]
  %471 = phi i64 [ %356, %390 ], [ %486, %478 ]
  %472 = phi i32 [ %355, %390 ], [ %480, %478 ]
  %473 = icmp eq i32 %472, 0
  br i1 %473, label %474, label %478

474:                                              ; preds = %469
  %475 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %476 = icmp eq i32 %475, 0
  br i1 %476, label %477, label %478

477:                                              ; preds = %474
  store ptr null, ptr %6, align 8, !tbaa !56
  br label %1067

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
  %488 = icmp ult i64 %487, %392
  br i1 %488, label %469, label %489, !llvm.loop !77

489:                                              ; preds = %478
  %490 = trunc i64 %487 to i32
  br label %491

491:                                              ; preds = %489, %387
  %492 = phi i32 [ %355, %387 ], [ %480, %489 ]
  %493 = phi i64 [ %356, %387 ], [ %486, %489 ]
  %494 = phi i32 [ %357, %387 ], [ %490, %489 ]
  %495 = zext nneg i8 %358 to i64
  %496 = lshr i64 %493, %495
  %497 = trunc i64 %496 to i32
  %498 = and i32 %497, 127
  %499 = add nuw nsw i32 %498, 11
  %500 = lshr i64 %496, 7
  %501 = sub i32 %494, %354
  %502 = add i32 %501, -7
  br label %503

503:                                              ; preds = %457, %491, %425
  %504 = phi i32 [ %416, %425 ], [ %458, %457 ], [ %492, %491 ]
  %505 = phi i64 [ %433, %425 ], [ %466, %457 ], [ %500, %491 ]
  %506 = phi i32 [ %434, %425 ], [ %468, %457 ], [ %502, %491 ]
  %507 = phi i32 [ %432, %425 ], [ %465, %457 ], [ %499, %491 ]
  %508 = phi i16 [ %429, %425 ], [ 0, %457 ], [ 0, %491 ]
  %509 = load i32, ptr %30, align 4, !tbaa !66
  %510 = add i32 %509, %507
  %511 = load i32, ptr %27, align 4, !tbaa !63
  %512 = load i32, ptr %28, align 8, !tbaa !64
  %513 = add i32 %512, %511
  %514 = icmp ugt i32 %510, %513
  br i1 %514, label %515, label %516

515:                                              ; preds = %503
  store ptr @.str.5, ptr %13, align 8, !tbaa !37
  store i32 29, ptr %10, align 8, !tbaa !53
  br label %1059

516:                                              ; preds = %503, %516
  %517 = phi i32 [ %519, %516 ], [ %507, %503 ]
  %518 = phi i32 [ %520, %516 ], [ %509, %503 ]
  %519 = add nsw i32 %517, -1
  %520 = add i32 %518, 1
  %521 = zext i32 %518 to i64
  %522 = getelementptr inbounds %struct.inflate_state, ptr %10, i64 0, i32 28, i64 %521
  store i16 %508, ptr %522, align 2, !tbaa !67
  %523 = icmp eq i32 %519, 0
  br i1 %523, label %524, label %516, !llvm.loop !78

524:                                              ; preds = %516
  store i32 %520, ptr %30, align 4, !tbaa !66
  br label %525

525:                                              ; preds = %524, %363
  %526 = phi i32 [ %513, %524 ], [ %373, %363 ]
  %527 = phi i32 [ %511, %524 ], [ %371, %363 ]
  %528 = phi i32 [ %520, %524 ], [ %368, %363 ]
  %529 = phi i32 [ %504, %524 ], [ %355, %363 ]
  %530 = phi i64 [ %505, %524 ], [ %365, %363 ]
  %531 = phi i32 [ %506, %524 ], [ %366, %363 ]
  %532 = icmp ult i32 %528, %526
  br i1 %532, label %296, label %533, !llvm.loop !79

533:                                              ; preds = %525, %291
  %534 = phi i32 [ %292, %291 ], [ %527, %525 ]
  %535 = phi i32 [ %263, %291 ], [ %529, %525 ]
  %536 = phi i64 [ %274, %291 ], [ %530, %525 ]
  %537 = phi i32 [ %275, %291 ], [ %531, %525 ]
  %538 = load i32, ptr %10, align 8, !tbaa !53
  %539 = icmp eq i32 %538, 29
  br i1 %539, label %1059, label %540

540:                                              ; preds = %533
  %541 = load i16, ptr %37, align 8, !tbaa !67
  %542 = icmp eq i16 %541, 0
  br i1 %542, label %543, label %544

543:                                              ; preds = %540
  store ptr @.str.6, ptr %13, align 8, !tbaa !37
  store i32 29, ptr %10, align 8, !tbaa !53
  br label %1059

544:                                              ; preds = %540
  store ptr %31, ptr %32, align 8, !tbaa !71
  store ptr %31, ptr %33, align 8, !tbaa !72
  store i32 9, ptr %34, align 8, !tbaa !73
  %545 = call i32 @inflate_table(i32 noundef 1, ptr noundef nonnull %35, i32 noundef %534, ptr noundef nonnull %32, ptr noundef nonnull %34, ptr noundef nonnull %36) #6
  %546 = icmp eq i32 %545, 0
  br i1 %546, label %548, label %547

547:                                              ; preds = %544
  store ptr @.str.7, ptr %13, align 8, !tbaa !37
  store i32 29, ptr %10, align 8, !tbaa !53
  br label %1059

548:                                              ; preds = %544
  %549 = load ptr, ptr %32, align 8, !tbaa !71
  store ptr %549, ptr %38, align 8, !tbaa !80
  store i32 6, ptr %39, align 4, !tbaa !81
  %550 = load i32, ptr %27, align 4, !tbaa !63
  %551 = zext i32 %550 to i64
  %552 = getelementptr inbounds i16, ptr %35, i64 %551
  %553 = load i32, ptr %28, align 8, !tbaa !64
  %554 = call i32 @inflate_table(i32 noundef 2, ptr noundef nonnull %552, i32 noundef %553, ptr noundef nonnull %32, ptr noundef nonnull %39, ptr noundef nonnull %36) #6
  %555 = icmp eq i32 %554, 0
  br i1 %555, label %557, label %556

556:                                              ; preds = %548
  store ptr @.str.8, ptr %13, align 8, !tbaa !37
  store i32 29, ptr %10, align 8, !tbaa !53
  br label %1059

557:                                              ; preds = %548
  store i32 20, ptr %10, align 8, !tbaa !53
  br label %558

558:                                              ; preds = %48, %557
  %559 = phi i32 [ %51, %48 ], [ %535, %557 ]
  %560 = phi i64 [ %53, %48 ], [ %536, %557 ]
  %561 = phi i32 [ %54, %48 ], [ %537, %557 ]
  %562 = icmp ugt i32 %559, 5
  %563 = icmp ugt i32 %52, 257
  %564 = select i1 %562, i1 %563, i1 false
  br i1 %564, label %580, label %565

565:                                              ; preds = %558
  %566 = load ptr, ptr %33, align 8, !tbaa !72
  %567 = trunc i64 %560 to i32
  %568 = load i32, ptr %34, align 8, !tbaa !73
  %569 = shl nsw i32 -1, %568
  %570 = xor i32 %569, -1
  %571 = and i32 %570, %567
  %572 = zext nneg i32 %571 to i64
  %573 = getelementptr inbounds %struct.code, ptr %566, i64 %572
  %574 = getelementptr inbounds i8, ptr %573, i64 1
  %575 = load i8, ptr %574, align 1, !tbaa.struct !74
  %576 = zext i8 %575 to i32
  %577 = icmp ult i32 %561, %576
  br i1 %577, label %578, label %633

578:                                              ; preds = %565
  %579 = zext nneg i32 %561 to i64
  br label %594

580:                                              ; preds = %558
  store ptr %50, ptr %43, align 8, !tbaa !82
  store i32 %52, ptr %44, align 8, !tbaa !83
  %581 = load ptr, ptr %6, align 8, !tbaa !56
  store ptr %581, ptr %0, align 8, !tbaa !55
  store i32 %559, ptr %45, align 8, !tbaa !57
  store i64 %560, ptr %46, align 8, !tbaa !84
  store i32 %561, ptr %47, align 8, !tbaa !85
  %582 = load i32, ptr %15, align 8, !tbaa !52
  %583 = load i32, ptr %25, align 4, !tbaa !49
  %584 = icmp ult i32 %582, %583
  br i1 %584, label %585, label %587

585:                                              ; preds = %580
  %586 = sub i32 %583, %52
  store i32 %586, ptr %15, align 8, !tbaa !52
  br label %587

587:                                              ; preds = %585, %580
  call void @inflate_fast(ptr noundef nonnull %0, i32 noundef %583) #6
  %588 = load ptr, ptr %43, align 8, !tbaa !82
  %589 = load i32, ptr %44, align 8, !tbaa !83
  %590 = load ptr, ptr %0, align 8, !tbaa !55
  store ptr %590, ptr %6, align 8, !tbaa !56
  %591 = load i32, ptr %45, align 8, !tbaa !57
  %592 = load i64, ptr %46, align 8, !tbaa !84
  %593 = load i32, ptr %47, align 8, !tbaa !85
  br label %1059

594:                                              ; preds = %578, %608
  %595 = phi i32 [ %568, %578 ], [ %609, %608 ]
  %596 = phi ptr [ %566, %578 ], [ %610, %608 ]
  %597 = phi i64 [ %579, %578 ], [ %619, %608 ]
  %598 = phi i64 [ %560, %578 ], [ %618, %608 ]
  %599 = phi i32 [ %559, %578 ], [ %612, %608 ]
  %600 = icmp eq i32 %599, 0
  br i1 %600, label %601, label %608

601:                                              ; preds = %594
  %602 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %603 = icmp eq i32 %602, 0
  br i1 %603, label %607, label %604

604:                                              ; preds = %601
  %605 = load ptr, ptr %33, align 8, !tbaa !72
  %606 = load i32, ptr %34, align 8, !tbaa !73
  br label %608

607:                                              ; preds = %601
  store ptr null, ptr %6, align 8, !tbaa !56
  br label %1067

608:                                              ; preds = %604, %594
  %609 = phi i32 [ %606, %604 ], [ %595, %594 ]
  %610 = phi ptr [ %605, %604 ], [ %596, %594 ]
  %611 = phi i32 [ %602, %604 ], [ %599, %594 ]
  %612 = add i32 %611, -1
  %613 = load ptr, ptr %6, align 8, !tbaa !56
  %614 = getelementptr inbounds i8, ptr %613, i64 1
  store ptr %614, ptr %6, align 8, !tbaa !56
  %615 = load i8, ptr %613, align 1, !tbaa !34
  %616 = zext i8 %615 to i64
  %617 = shl i64 %616, %597
  %618 = add i64 %617, %598
  %619 = add nuw nsw i64 %597, 8
  %620 = trunc i64 %618 to i32
  %621 = shl nsw i32 -1, %609
  %622 = xor i32 %621, -1
  %623 = and i32 %622, %620
  %624 = zext nneg i32 %623 to i64
  %625 = getelementptr inbounds %struct.code, ptr %610, i64 %624
  %626 = getelementptr inbounds i8, ptr %625, i64 1
  %627 = load i8, ptr %626, align 1, !tbaa.struct !74
  %628 = zext i8 %627 to i64
  %629 = icmp ult i64 %619, %628
  br i1 %629, label %594, label %630

630:                                              ; preds = %608
  %631 = zext i8 %627 to i32
  %632 = trunc i64 %619 to i32
  br label %633

633:                                              ; preds = %630, %565
  %634 = phi ptr [ %566, %565 ], [ %610, %630 ]
  %635 = phi i32 [ %559, %565 ], [ %612, %630 ]
  %636 = phi i64 [ %560, %565 ], [ %618, %630 ]
  %637 = phi i32 [ %561, %565 ], [ %632, %630 ]
  %638 = phi ptr [ %573, %565 ], [ %625, %630 ]
  %639 = phi i8 [ %575, %565 ], [ %627, %630 ]
  %640 = phi i32 [ %576, %565 ], [ %631, %630 ]
  %641 = getelementptr inbounds i8, ptr %638, i64 2
  %642 = load i16, ptr %641, align 2
  %643 = load i8, ptr %638, align 2, !tbaa.struct !86
  %644 = add i8 %643, -1
  %645 = icmp ult i8 %644, 15
  br i1 %645, label %646, label %714

646:                                              ; preds = %633
  %647 = zext nneg i8 %643 to i32
  %648 = zext i16 %642 to i32
  %649 = add nuw nsw i32 %640, %647
  %650 = shl nsw i32 -1, %649
  %651 = xor i32 %650, -1
  %652 = trunc i64 %636 to i32
  %653 = and i32 %652, %651
  %654 = lshr i32 %653, %640
  %655 = add nuw i32 %654, %648
  %656 = zext i32 %655 to i64
  %657 = getelementptr inbounds %struct.code, ptr %634, i64 %656
  %658 = getelementptr inbounds i8, ptr %657, i64 1
  %659 = load i8, ptr %658, align 1, !tbaa.struct !74
  %660 = zext i8 %659 to i32
  %661 = add nuw nsw i32 %640, %660
  %662 = icmp ugt i32 %661, %637
  br i1 %662, label %663, label %702

663:                                              ; preds = %646
  %664 = zext nneg i32 %637 to i64
  br label %665

665:                                              ; preds = %663, %677
  %666 = phi ptr [ %634, %663 ], [ %678, %677 ]
  %667 = phi i64 [ %664, %663 ], [ %687, %677 ]
  %668 = phi i64 [ %636, %663 ], [ %686, %677 ]
  %669 = phi i32 [ %635, %663 ], [ %680, %677 ]
  %670 = icmp eq i32 %669, 0
  br i1 %670, label %671, label %677

671:                                              ; preds = %665
  %672 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %673 = icmp eq i32 %672, 0
  br i1 %673, label %676, label %674

674:                                              ; preds = %671
  %675 = load ptr, ptr %33, align 8, !tbaa !72
  br label %677

676:                                              ; preds = %671
  store ptr null, ptr %6, align 8, !tbaa !56
  br label %1067

677:                                              ; preds = %674, %665
  %678 = phi ptr [ %675, %674 ], [ %666, %665 ]
  %679 = phi i32 [ %672, %674 ], [ %669, %665 ]
  %680 = add i32 %679, -1
  %681 = load ptr, ptr %6, align 8, !tbaa !56
  %682 = getelementptr inbounds i8, ptr %681, i64 1
  store ptr %682, ptr %6, align 8, !tbaa !56
  %683 = load i8, ptr %681, align 1, !tbaa !34
  %684 = zext i8 %683 to i64
  %685 = shl i64 %684, %667
  %686 = add i64 %685, %668
  %687 = add nuw nsw i64 %667, 8
  %688 = trunc i64 %686 to i32
  %689 = and i32 %688, %651
  %690 = lshr i32 %689, %640
  %691 = add nuw i32 %690, %648
  %692 = zext i32 %691 to i64
  %693 = getelementptr inbounds %struct.code, ptr %678, i64 %692
  %694 = getelementptr inbounds i8, ptr %693, i64 1
  %695 = load i8, ptr %694, align 1, !tbaa.struct !74
  %696 = zext i8 %695 to i32
  %697 = add nuw nsw i32 %640, %696
  %698 = zext nneg i32 %697 to i64
  %699 = icmp ult i64 %687, %698
  br i1 %699, label %665, label %700

700:                                              ; preds = %677
  %701 = trunc i64 %687 to i32
  br label %702

702:                                              ; preds = %700, %646
  %703 = phi i32 [ %635, %646 ], [ %680, %700 ]
  %704 = phi i64 [ %636, %646 ], [ %686, %700 ]
  %705 = phi i32 [ %637, %646 ], [ %701, %700 ]
  %706 = phi ptr [ %657, %646 ], [ %693, %700 ]
  %707 = phi i8 [ %659, %646 ], [ %695, %700 ]
  %708 = getelementptr inbounds i8, ptr %706, i64 2
  %709 = load i16, ptr %708, align 2, !tbaa.struct !87
  %710 = load i8, ptr %706, align 2, !tbaa.struct !86
  %711 = zext nneg i8 %639 to i64
  %712 = lshr i64 %704, %711
  %713 = sub i32 %705, %640
  br label %714

714:                                              ; preds = %633, %702
  %715 = phi i32 [ %703, %702 ], [ %635, %633 ]
  %716 = phi i64 [ %712, %702 ], [ %636, %633 ]
  %717 = phi i32 [ %713, %702 ], [ %637, %633 ]
  %718 = phi i16 [ %709, %702 ], [ %642, %633 ]
  %719 = phi i8 [ %707, %702 ], [ %639, %633 ]
  %720 = phi i8 [ %710, %702 ], [ %643, %633 ]
  %721 = zext i8 %719 to i32
  %722 = zext nneg i8 %719 to i64
  %723 = lshr i64 %716, %722
  %724 = sub i32 %717, %721
  %725 = zext i16 %718 to i32
  store i32 %725, ptr %40, align 4, !tbaa !60
  %726 = zext i8 %720 to i32
  %727 = icmp eq i8 %720, 0
  br i1 %727, label %728, label %744

728:                                              ; preds = %714
  %729 = icmp eq i32 %52, 0
  br i1 %729, label %730, label %737

730:                                              ; preds = %728
  %731 = load ptr, ptr %23, align 8, !tbaa !50
  %732 = load i32, ptr %25, align 4, !tbaa !49
  store i32 %732, ptr %15, align 8, !tbaa !52
  %733 = call i32 %3(ptr noundef %4, ptr noundef %731, i32 noundef %732) #6
  %734 = icmp eq i32 %733, 0
  br i1 %734, label %735, label %1067

735:                                              ; preds = %730
  %736 = load i32, ptr %40, align 4, !tbaa !60
  br label %737

737:                                              ; preds = %735, %728
  %738 = phi i32 [ %736, %735 ], [ %725, %728 ]
  %739 = phi ptr [ %731, %735 ], [ %50, %728 ]
  %740 = phi i32 [ %732, %735 ], [ %52, %728 ]
  %741 = trunc i32 %738 to i8
  %742 = getelementptr inbounds i8, ptr %739, i64 1
  store i8 %741, ptr %739, align 1, !tbaa !34
  %743 = add i32 %740, -1
  store i32 20, ptr %10, align 8, !tbaa !53
  br label %1059

744:                                              ; preds = %714
  %745 = and i32 %726, 32
  %746 = icmp eq i32 %745, 0
  br i1 %746, label %748, label %747

747:                                              ; preds = %744
  store i32 11, ptr %10, align 8, !tbaa !53
  br label %1059

748:                                              ; preds = %744
  %749 = and i32 %726, 64
  %750 = icmp eq i32 %749, 0
  br i1 %750, label %752, label %751

751:                                              ; preds = %748
  store ptr @.str.9, ptr %13, align 8, !tbaa !37
  store i32 29, ptr %10, align 8, !tbaa !53
  br label %1059

752:                                              ; preds = %748
  %753 = and i32 %726, 15
  store i32 %753, ptr %41, align 4, !tbaa !88
  %754 = icmp eq i32 %753, 0
  br i1 %754, label %798, label %755

755:                                              ; preds = %752
  %756 = icmp ult i32 %724, %753
  br i1 %756, label %757, label %784

757:                                              ; preds = %755, %769
  %758 = phi i32 [ %770, %769 ], [ %753, %755 ]
  %759 = phi i32 [ %780, %769 ], [ %724, %755 ]
  %760 = phi i64 [ %779, %769 ], [ %723, %755 ]
  %761 = phi i32 [ %772, %769 ], [ %715, %755 ]
  %762 = icmp eq i32 %761, 0
  br i1 %762, label %763, label %769

763:                                              ; preds = %757
  %764 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %765 = icmp eq i32 %764, 0
  br i1 %765, label %768, label %766

766:                                              ; preds = %763
  %767 = load i32, ptr %41, align 4, !tbaa !88
  br label %769

768:                                              ; preds = %763
  store ptr null, ptr %6, align 8, !tbaa !56
  br label %1067

769:                                              ; preds = %766, %757
  %770 = phi i32 [ %767, %766 ], [ %758, %757 ]
  %771 = phi i32 [ %764, %766 ], [ %761, %757 ]
  %772 = add i32 %771, -1
  %773 = load ptr, ptr %6, align 8, !tbaa !56
  %774 = getelementptr inbounds i8, ptr %773, i64 1
  store ptr %774, ptr %6, align 8, !tbaa !56
  %775 = load i8, ptr %773, align 1, !tbaa !34
  %776 = zext i8 %775 to i64
  %777 = zext nneg i32 %759 to i64
  %778 = shl i64 %776, %777
  %779 = add i64 %778, %760
  %780 = add i32 %759, 8
  %781 = icmp ult i32 %780, %770
  br i1 %781, label %757, label %782, !llvm.loop !89

782:                                              ; preds = %769
  %783 = load i32, ptr %40, align 4, !tbaa !60
  br label %784

784:                                              ; preds = %782, %755
  %785 = phi i32 [ %725, %755 ], [ %783, %782 ]
  %786 = phi i32 [ %715, %755 ], [ %772, %782 ]
  %787 = phi i64 [ %723, %755 ], [ %779, %782 ]
  %788 = phi i32 [ %724, %755 ], [ %780, %782 ]
  %789 = phi i32 [ %753, %755 ], [ %770, %782 ]
  %790 = trunc i64 %787 to i32
  %791 = shl nsw i32 -1, %789
  %792 = xor i32 %791, -1
  %793 = and i32 %792, %790
  %794 = add i32 %785, %793
  store i32 %794, ptr %40, align 4, !tbaa !60
  %795 = zext nneg i32 %789 to i64
  %796 = lshr i64 %787, %795
  %797 = sub i32 %788, %789
  br label %798

798:                                              ; preds = %784, %752
  %799 = phi i32 [ %786, %784 ], [ %715, %752 ]
  %800 = phi i64 [ %796, %784 ], [ %723, %752 ]
  %801 = phi i32 [ %797, %784 ], [ %724, %752 ]
  %802 = load ptr, ptr %38, align 8, !tbaa !80
  %803 = trunc i64 %800 to i32
  %804 = load i32, ptr %39, align 4, !tbaa !81
  %805 = shl nsw i32 -1, %804
  %806 = xor i32 %805, -1
  %807 = and i32 %806, %803
  %808 = zext nneg i32 %807 to i64
  %809 = getelementptr inbounds %struct.code, ptr %802, i64 %808
  %810 = getelementptr inbounds i8, ptr %809, i64 1
  %811 = load i8, ptr %810, align 1, !tbaa.struct !74
  %812 = zext i8 %811 to i32
  %813 = icmp ult i32 %801, %812
  br i1 %813, label %814, label %855

814:                                              ; preds = %798
  %815 = zext nneg i32 %801 to i64
  br label %816

816:                                              ; preds = %814, %830
  %817 = phi i32 [ %804, %814 ], [ %831, %830 ]
  %818 = phi ptr [ %802, %814 ], [ %832, %830 ]
  %819 = phi i64 [ %815, %814 ], [ %841, %830 ]
  %820 = phi i64 [ %800, %814 ], [ %840, %830 ]
  %821 = phi i32 [ %799, %814 ], [ %834, %830 ]
  %822 = icmp eq i32 %821, 0
  br i1 %822, label %823, label %830

823:                                              ; preds = %816
  %824 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %825 = icmp eq i32 %824, 0
  br i1 %825, label %829, label %826

826:                                              ; preds = %823
  %827 = load ptr, ptr %38, align 8, !tbaa !80
  %828 = load i32, ptr %39, align 4, !tbaa !81
  br label %830

829:                                              ; preds = %823
  store ptr null, ptr %6, align 8, !tbaa !56
  br label %1067

830:                                              ; preds = %826, %816
  %831 = phi i32 [ %828, %826 ], [ %817, %816 ]
  %832 = phi ptr [ %827, %826 ], [ %818, %816 ]
  %833 = phi i32 [ %824, %826 ], [ %821, %816 ]
  %834 = add i32 %833, -1
  %835 = load ptr, ptr %6, align 8, !tbaa !56
  %836 = getelementptr inbounds i8, ptr %835, i64 1
  store ptr %836, ptr %6, align 8, !tbaa !56
  %837 = load i8, ptr %835, align 1, !tbaa !34
  %838 = zext i8 %837 to i64
  %839 = shl i64 %838, %819
  %840 = add i64 %839, %820
  %841 = add nuw nsw i64 %819, 8
  %842 = trunc i64 %840 to i32
  %843 = shl nsw i32 -1, %831
  %844 = xor i32 %843, -1
  %845 = and i32 %844, %842
  %846 = zext nneg i32 %845 to i64
  %847 = getelementptr inbounds %struct.code, ptr %832, i64 %846
  %848 = getelementptr inbounds i8, ptr %847, i64 1
  %849 = load i8, ptr %848, align 1, !tbaa.struct !74
  %850 = zext i8 %849 to i64
  %851 = icmp ult i64 %841, %850
  br i1 %851, label %816, label %852

852:                                              ; preds = %830
  %853 = zext i8 %849 to i32
  %854 = trunc i64 %841 to i32
  br label %855

855:                                              ; preds = %852, %798
  %856 = phi ptr [ %802, %798 ], [ %832, %852 ]
  %857 = phi i32 [ %799, %798 ], [ %834, %852 ]
  %858 = phi i64 [ %800, %798 ], [ %840, %852 ]
  %859 = phi i32 [ %801, %798 ], [ %854, %852 ]
  %860 = phi ptr [ %809, %798 ], [ %847, %852 ]
  %861 = phi i8 [ %811, %798 ], [ %849, %852 ]
  %862 = phi i32 [ %812, %798 ], [ %853, %852 ]
  %863 = getelementptr inbounds i8, ptr %860, i64 2
  %864 = load i16, ptr %863, align 2
  %865 = load i8, ptr %860, align 2, !tbaa.struct !86
  %866 = icmp ult i8 %865, 16
  br i1 %866, label %867, label %935

867:                                              ; preds = %855
  %868 = zext nneg i8 %865 to i32
  %869 = zext i16 %864 to i32
  %870 = add nuw nsw i32 %862, %868
  %871 = shl nsw i32 -1, %870
  %872 = xor i32 %871, -1
  %873 = trunc i64 %858 to i32
  %874 = and i32 %873, %872
  %875 = lshr i32 %874, %862
  %876 = add nuw i32 %875, %869
  %877 = zext i32 %876 to i64
  %878 = getelementptr inbounds %struct.code, ptr %856, i64 %877
  %879 = getelementptr inbounds i8, ptr %878, i64 1
  %880 = load i8, ptr %879, align 1, !tbaa.struct !74
  %881 = zext i8 %880 to i32
  %882 = add nuw nsw i32 %862, %881
  %883 = icmp ugt i32 %882, %859
  br i1 %883, label %884, label %923

884:                                              ; preds = %867
  %885 = zext nneg i32 %859 to i64
  br label %886

886:                                              ; preds = %884, %898
  %887 = phi ptr [ %856, %884 ], [ %899, %898 ]
  %888 = phi i64 [ %885, %884 ], [ %908, %898 ]
  %889 = phi i64 [ %858, %884 ], [ %907, %898 ]
  %890 = phi i32 [ %857, %884 ], [ %901, %898 ]
  %891 = icmp eq i32 %890, 0
  br i1 %891, label %892, label %898

892:                                              ; preds = %886
  %893 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %894 = icmp eq i32 %893, 0
  br i1 %894, label %897, label %895

895:                                              ; preds = %892
  %896 = load ptr, ptr %38, align 8, !tbaa !80
  br label %898

897:                                              ; preds = %892
  store ptr null, ptr %6, align 8, !tbaa !56
  br label %1067

898:                                              ; preds = %895, %886
  %899 = phi ptr [ %896, %895 ], [ %887, %886 ]
  %900 = phi i32 [ %893, %895 ], [ %890, %886 ]
  %901 = add i32 %900, -1
  %902 = load ptr, ptr %6, align 8, !tbaa !56
  %903 = getelementptr inbounds i8, ptr %902, i64 1
  store ptr %903, ptr %6, align 8, !tbaa !56
  %904 = load i8, ptr %902, align 1, !tbaa !34
  %905 = zext i8 %904 to i64
  %906 = shl i64 %905, %888
  %907 = add i64 %906, %889
  %908 = add nuw nsw i64 %888, 8
  %909 = trunc i64 %907 to i32
  %910 = and i32 %909, %872
  %911 = lshr i32 %910, %862
  %912 = add nuw i32 %911, %869
  %913 = zext i32 %912 to i64
  %914 = getelementptr inbounds %struct.code, ptr %899, i64 %913
  %915 = getelementptr inbounds i8, ptr %914, i64 1
  %916 = load i8, ptr %915, align 1, !tbaa.struct !74
  %917 = zext i8 %916 to i32
  %918 = add nuw nsw i32 %862, %917
  %919 = zext nneg i32 %918 to i64
  %920 = icmp ult i64 %908, %919
  br i1 %920, label %886, label %921

921:                                              ; preds = %898
  %922 = trunc i64 %908 to i32
  br label %923

923:                                              ; preds = %921, %867
  %924 = phi i32 [ %857, %867 ], [ %901, %921 ]
  %925 = phi i64 [ %858, %867 ], [ %907, %921 ]
  %926 = phi i32 [ %859, %867 ], [ %922, %921 ]
  %927 = phi ptr [ %878, %867 ], [ %914, %921 ]
  %928 = phi i8 [ %880, %867 ], [ %916, %921 ]
  %929 = getelementptr inbounds i8, ptr %927, i64 2
  %930 = load i16, ptr %929, align 2, !tbaa.struct !87
  %931 = load i8, ptr %927, align 2, !tbaa.struct !86
  %932 = zext nneg i8 %861 to i64
  %933 = lshr i64 %925, %932
  %934 = sub i32 %926, %862
  br label %935

935:                                              ; preds = %855, %923
  %936 = phi i32 [ %924, %923 ], [ %857, %855 ]
  %937 = phi i64 [ %933, %923 ], [ %858, %855 ]
  %938 = phi i32 [ %934, %923 ], [ %859, %855 ]
  %939 = phi i16 [ %930, %923 ], [ %864, %855 ]
  %940 = phi i8 [ %928, %923 ], [ %861, %855 ]
  %941 = phi i8 [ %931, %923 ], [ %865, %855 ]
  %942 = zext i8 %940 to i32
  %943 = zext nneg i8 %940 to i64
  %944 = lshr i64 %937, %943
  %945 = sub i32 %938, %942
  %946 = zext i8 %941 to i32
  %947 = and i32 %946, 64
  %948 = icmp eq i32 %947, 0
  br i1 %948, label %950, label %949

949:                                              ; preds = %935
  store ptr @.str.10, ptr %13, align 8, !tbaa !37
  store i32 29, ptr %10, align 8, !tbaa !53
  br label %1059

950:                                              ; preds = %935
  %951 = zext i16 %939 to i32
  store i32 %951, ptr %42, align 8, !tbaa !90
  %952 = and i32 %946, 15
  store i32 %952, ptr %41, align 4, !tbaa !88
  %953 = icmp eq i32 %952, 0
  br i1 %953, label %997, label %954

954:                                              ; preds = %950
  %955 = icmp ult i32 %945, %952
  br i1 %955, label %956, label %983

956:                                              ; preds = %954, %968
  %957 = phi i32 [ %969, %968 ], [ %952, %954 ]
  %958 = phi i32 [ %979, %968 ], [ %945, %954 ]
  %959 = phi i64 [ %978, %968 ], [ %944, %954 ]
  %960 = phi i32 [ %971, %968 ], [ %936, %954 ]
  %961 = icmp eq i32 %960, 0
  br i1 %961, label %962, label %968

962:                                              ; preds = %956
  %963 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %964 = icmp eq i32 %963, 0
  br i1 %964, label %967, label %965

965:                                              ; preds = %962
  %966 = load i32, ptr %41, align 4, !tbaa !88
  br label %968

967:                                              ; preds = %962
  store ptr null, ptr %6, align 8, !tbaa !56
  br label %1067

968:                                              ; preds = %965, %956
  %969 = phi i32 [ %966, %965 ], [ %957, %956 ]
  %970 = phi i32 [ %963, %965 ], [ %960, %956 ]
  %971 = add i32 %970, -1
  %972 = load ptr, ptr %6, align 8, !tbaa !56
  %973 = getelementptr inbounds i8, ptr %972, i64 1
  store ptr %973, ptr %6, align 8, !tbaa !56
  %974 = load i8, ptr %972, align 1, !tbaa !34
  %975 = zext i8 %974 to i64
  %976 = zext nneg i32 %958 to i64
  %977 = shl i64 %975, %976
  %978 = add i64 %977, %959
  %979 = add i32 %958, 8
  %980 = icmp ult i32 %979, %969
  br i1 %980, label %956, label %981, !llvm.loop !91

981:                                              ; preds = %968
  %982 = load i32, ptr %42, align 8, !tbaa !90
  br label %983

983:                                              ; preds = %981, %954
  %984 = phi i32 [ %951, %954 ], [ %982, %981 ]
  %985 = phi i32 [ %936, %954 ], [ %971, %981 ]
  %986 = phi i64 [ %944, %954 ], [ %978, %981 ]
  %987 = phi i32 [ %945, %954 ], [ %979, %981 ]
  %988 = phi i32 [ %952, %954 ], [ %969, %981 ]
  %989 = trunc i64 %986 to i32
  %990 = shl nsw i32 -1, %988
  %991 = xor i32 %990, -1
  %992 = and i32 %991, %989
  %993 = add i32 %984, %992
  store i32 %993, ptr %42, align 8, !tbaa !90
  %994 = zext nneg i32 %988 to i64
  %995 = lshr i64 %986, %994
  %996 = sub i32 %987, %988
  br label %997

997:                                              ; preds = %983, %950
  %998 = phi i32 [ %993, %983 ], [ %951, %950 ]
  %999 = phi i32 [ %985, %983 ], [ %936, %950 ]
  %1000 = phi i64 [ %995, %983 ], [ %944, %950 ]
  %1001 = phi i32 [ %996, %983 ], [ %945, %950 ]
  %1002 = load i32, ptr %25, align 4, !tbaa !49
  %1003 = load i32, ptr %15, align 8, !tbaa !52
  %1004 = icmp ult i32 %1003, %1002
  %1005 = select i1 %1004, i32 %52, i32 0
  %1006 = sub i32 %1002, %1005
  %1007 = icmp ugt i32 %998, %1006
  br i1 %1007, label %1008, label %1009

1008:                                             ; preds = %997
  store ptr @.str.11, ptr %13, align 8, !tbaa !37
  store i32 29, ptr %10, align 8, !tbaa !53
  br label %1059

1009:                                             ; preds = %997, %1046
  %1010 = phi ptr [ %1043, %1046 ], [ %50, %997 ]
  %1011 = phi i32 [ %1047, %1046 ], [ %52, %997 ]
  %1012 = icmp eq i32 %1011, 0
  %1013 = load i32, ptr %25, align 4, !tbaa !49
  br i1 %1012, label %1014, label %1020

1014:                                             ; preds = %1009
  %1015 = load ptr, ptr %23, align 8, !tbaa !50
  store i32 %1013, ptr %15, align 8, !tbaa !52
  %1016 = call i32 %3(ptr noundef %4, ptr noundef %1015, i32 noundef %1013) #6
  %1017 = icmp eq i32 %1016, 0
  br i1 %1017, label %1018, label %1067

1018:                                             ; preds = %1014
  %1019 = load i32, ptr %25, align 4, !tbaa !49
  br label %1020

1020:                                             ; preds = %1018, %1009
  %1021 = phi i32 [ %1019, %1018 ], [ %1013, %1009 ]
  %1022 = phi ptr [ %1015, %1018 ], [ %1010, %1009 ]
  %1023 = phi i32 [ %1013, %1018 ], [ %1011, %1009 ]
  %1024 = load i32, ptr %42, align 8, !tbaa !90
  %1025 = sub i32 %1021, %1024
  %1026 = icmp ult i32 %1025, %1023
  %1027 = zext i32 %1025 to i64
  %1028 = zext i32 %1024 to i64
  %1029 = sub nsw i64 0, %1028
  %1030 = select i1 %1026, i32 %1025, i32 0
  %1031 = sub i32 %1023, %1030
  %1032 = select i1 %1026, i64 %1027, i64 %1029
  %1033 = getelementptr i8, ptr %1022, i64 %1032
  %1034 = load i32, ptr %40, align 4, !tbaa !60
  %1035 = call i32 @llvm.umin.i32(i32 %1031, i32 %1034)
  %1036 = sub i32 %1034, %1035
  store i32 %1036, ptr %40, align 4, !tbaa !60
  br label %1037

1037:                                             ; preds = %1037, %1020
  %1038 = phi ptr [ %1022, %1020 ], [ %1043, %1037 ]
  %1039 = phi i32 [ %1035, %1020 ], [ %1044, %1037 ]
  %1040 = phi ptr [ %1033, %1020 ], [ %1041, %1037 ]
  %1041 = getelementptr inbounds i8, ptr %1040, i64 1
  %1042 = load i8, ptr %1040, align 1, !tbaa !34
  %1043 = getelementptr inbounds i8, ptr %1038, i64 1
  store i8 %1042, ptr %1038, align 1, !tbaa !34
  %1044 = add i32 %1039, -1
  %1045 = icmp eq i32 %1044, 0
  br i1 %1045, label %1046, label %1037, !llvm.loop !92

1046:                                             ; preds = %1037
  %1047 = sub i32 %1023, %1035
  %1048 = load i32, ptr %40, align 4, !tbaa !60
  %1049 = icmp eq i32 %1048, 0
  br i1 %1049, label %1059, label %1009, !llvm.loop !93

1050:                                             ; preds = %48
  %1051 = load i32, ptr %25, align 4, !tbaa !49
  %1052 = icmp ult i32 %52, %1051
  br i1 %1052, label %1053, label %1067

1053:                                             ; preds = %1050
  %1054 = load ptr, ptr %23, align 8, !tbaa !50
  %1055 = sub i32 %1051, %52
  %1056 = call i32 %3(ptr noundef %4, ptr noundef %1054, i32 noundef %1055) #6
  %1057 = icmp eq i32 %1056, 0
  %1058 = select i1 %1057, i32 1, i32 -5
  br label %1067

1059:                                             ; preds = %1046, %424, %515, %533, %1008, %949, %751, %747, %737, %587, %556, %547, %543, %290, %223, %179, %141, %98, %67
  %1060 = phi ptr [ %588, %587 ], [ %742, %737 ], [ %50, %747 ], [ %50, %751 ], [ %50, %949 ], [ %50, %1008 ], [ %50, %223 ], [ %50, %290 ], [ %50, %533 ], [ %50, %543 ], [ %50, %547 ], [ %50, %556 ], [ %50, %141 ], [ %180, %179 ], [ %50, %67 ], [ %50, %98 ], [ %50, %515 ], [ %50, %424 ], [ %1043, %1046 ]
  %1061 = phi i32 [ %591, %587 ], [ %715, %737 ], [ %715, %747 ], [ %715, %751 ], [ %936, %949 ], [ %999, %1008 ], [ %206, %223 ], [ %263, %290 ], [ %535, %533 ], [ %535, %543 ], [ %535, %547 ], [ %535, %556 ], [ %134, %141 ], [ %181, %179 ], [ %51, %67 ], [ %87, %98 ], [ %504, %515 ], [ %416, %424 ], [ %999, %1046 ]
  %1062 = phi i32 [ %589, %587 ], [ %743, %737 ], [ %52, %747 ], [ %52, %751 ], [ %52, %949 ], [ %52, %1008 ], [ %52, %223 ], [ %52, %290 ], [ %52, %533 ], [ %52, %543 ], [ %52, %547 ], [ %52, %556 ], [ %52, %141 ], [ %182, %179 ], [ %52, %67 ], [ %52, %98 ], [ %52, %515 ], [ %52, %424 ], [ %1047, %1046 ]
  %1063 = phi i64 [ %592, %587 ], [ %723, %737 ], [ %723, %747 ], [ %723, %751 ], [ %944, %949 ], [ %1000, %1008 ], [ %218, %223 ], [ %274, %290 ], [ %536, %533 ], [ %536, %543 ], [ %536, %547 ], [ %536, %556 ], [ %135, %141 ], [ 0, %179 ], [ %70, %67 ], [ %100, %98 ], [ %505, %515 ], [ %420, %424 ], [ %1000, %1046 ]
  %1064 = phi i32 [ %593, %587 ], [ %724, %737 ], [ %724, %747 ], [ %724, %751 ], [ %945, %949 ], [ %1001, %1008 ], [ %219, %223 ], [ %275, %290 ], [ %537, %533 ], [ %537, %543 ], [ %537, %547 ], [ %537, %556 ], [ %136, %141 ], [ 0, %179 ], [ %71, %67 ], [ %101, %98 ], [ %506, %515 ], [ %421, %424 ], [ %1001, %1046 ]
  %1065 = load i32, ptr %10, align 8, !tbaa !53
  br label %48

1066:                                             ; preds = %48
  br label %1067

1067:                                             ; preds = %730, %1014, %159, %48, %1066, %1053, %1050, %967, %897, %829, %768, %676, %607, %477, %443, %401, %327, %246, %191, %155, %119, %75
  %1068 = phi i32 [ %51, %1050 ], [ 0, %768 ], [ 0, %967 ], [ 0, %897 ], [ 0, %829 ], [ 0, %676 ], [ 0, %607 ], [ 0, %191 ], [ 0, %246 ], [ 0, %401 ], [ 0, %443 ], [ 0, %477 ], [ 0, %327 ], [ 0, %119 ], [ 0, %155 ], [ 0, %75 ], [ %51, %1053 ], [ %51, %48 ], [ %157, %159 ], [ %999, %1014 ], [ %715, %730 ], [ %51, %1066 ]
  %1069 = phi i32 [ 1, %1050 ], [ -5, %768 ], [ -5, %967 ], [ -5, %897 ], [ -5, %829 ], [ -5, %676 ], [ -5, %607 ], [ -5, %191 ], [ -5, %246 ], [ -5, %401 ], [ -5, %443 ], [ -5, %477 ], [ -5, %327 ], [ -5, %119 ], [ -5, %155 ], [ -5, %75 ], [ %1058, %1053 ], [ -2, %48 ], [ -5, %159 ], [ -5, %1014 ], [ -5, %730 ], [ -3, %1066 ]
  %1070 = load ptr, ptr %6, align 8, !tbaa !56
  store ptr %1070, ptr %0, align 8, !tbaa !55
  store i32 %1068, ptr %45, align 8, !tbaa !57
  br label %1071

1071:                                             ; preds = %5, %8, %1067
  %1072 = phi i32 [ %1069, %1067 ], [ -2, %8 ], [ -2, %5 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #7
  ret i32 %1072
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @fixedtables(ptr nocapture noundef writeonly %0) unnamed_addr #3 !PGOFuncName !94 {
  %2 = getelementptr inbounds %struct.inflate_state, ptr %0, i64 0, i32 19
  store ptr @fixedtables.lenfix, ptr %2, align 8, !tbaa !72
  %3 = getelementptr inbounds %struct.inflate_state, ptr %0, i64 0, i32 21
  store i32 9, ptr %3, align 8, !tbaa !73
  %4 = getelementptr inbounds %struct.inflate_state, ptr %0, i64 0, i32 20
  store ptr @fixedtables.distfix, ptr %4, align 8, !tbaa !80
  %5 = getelementptr inbounds %struct.inflate_state, ptr %0, i64 0, i32 22
  store i32 5, ptr %5, align 4, !tbaa !81
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: optsize
declare hidden i32 @inflate_table(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare hidden void @inflate_fast(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
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
  tail call void %9(ptr noundef %13, ptr noundef nonnull %5) #6
  store ptr null, ptr %4, align 8, !tbaa !45
  br label %14

14:                                               ; preds = %1, %3, %7, %11
  %15 = phi i32 [ 0, %11 ], [ -2, %7 ], [ -2, %3 ], [ -2, %1 ]
  ret i32 %15
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind optsize }
attributes #7 = { nounwind }
attributes #8 = { optsize }

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
!58 = distinct !{!58, !59}
!59 = !{!"llvm.loop.mustprogress"}
!60 = !{!47, !40, i64 84}
!61 = distinct !{!61, !59}
!62 = distinct !{!62, !59}
!63 = !{!47, !40, i64 124}
!64 = !{!47, !40, i64 128}
!65 = !{!47, !40, i64 120}
!66 = !{!47, !40, i64 132}
!67 = !{!68, !68, i64 0}
!68 = !{!"short", !35, i64 0}
!69 = distinct !{!69, !59}
!70 = distinct !{!70, !59}
!71 = !{!47, !39, i64 136}
!72 = !{!47, !39, i64 96}
!73 = !{!47, !40, i64 112}
!74 = !{i64 0, i64 1, !34, i64 1, i64 2, !67}
!75 = distinct !{!75, !59}
!76 = distinct !{!76, !59}
!77 = distinct !{!77, !59}
!78 = distinct !{!78, !59}
!79 = distinct !{!79, !59}
!80 = !{!47, !39, i64 104}
!81 = !{!47, !40, i64 116}
!82 = !{!38, !39, i64 24}
!83 = !{!38, !40, i64 32}
!84 = !{!47, !41, i64 72}
!85 = !{!47, !40, i64 80}
!86 = !{i64 0, i64 1, !34, i64 1, i64 1, !34, i64 2, i64 2, !67}
!87 = !{i64 0, i64 2, !67}
!88 = !{!47, !40, i64 92}
!89 = distinct !{!89, !59}
!90 = !{!47, !40, i64 88}
!91 = distinct !{!91, !59}
!92 = distinct !{!92, !59}
!93 = distinct !{!93, !59}
!94 = !{!"infback.c:fixedtables"}
