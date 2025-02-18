; ModuleID = 'zlib/inflate.c'
source_filename = "zlib/inflate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.code = type { i8, i8, i16 }
%struct.z_stream_s = type { ptr, i32, i64, ptr, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i64, i64 }
%struct.inflate_state = type { i32, i32, i32, i32, i32, i32, i64, i64, ptr, i32, i32, i32, i32, ptr, i64, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, [320 x i16], [288 x i16], [1444 x %struct.code], i32, i32, i32 }
%struct.gz_header_s = type { i32, i64, i32, i32, ptr, i32, i32, ptr, i32, ptr, i32, i32, i32 }

@inflate.order = internal unnamed_addr constant [19 x i16] [i16 16, i16 17, i16 18, i16 0, i16 8, i16 7, i16 9, i16 6, i16 10, i16 5, i16 11, i16 4, i16 12, i16 3, i16 13, i16 2, i16 14, i16 1, i16 15], align 16
@.str.1 = private unnamed_addr constant [23 x i8] c"incorrect header check\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"unknown compression method\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"invalid window size\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"unknown header flags set\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"header crc mismatch\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"invalid block type\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"invalid stored block lengths\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"too many length or distance symbols\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"invalid code lengths set\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"invalid bit length repeat\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"invalid code -- missing end-of-block\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"invalid literal/lengths set\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"invalid distances set\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"invalid literal/length code\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"invalid distance code\00", align 1
@.str.16 = private unnamed_addr constant [30 x i8] c"invalid distance too far back\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"incorrect data check\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"incorrect length check\00", align 1
@fixedtables.lenfix = internal constant [512 x %struct.code] [%struct.code { i8 96, i8 7, i16 0 }, %struct.code { i8 0, i8 8, i16 80 }, %struct.code { i8 0, i8 8, i16 16 }, %struct.code { i8 20, i8 8, i16 115 }, %struct.code { i8 18, i8 7, i16 31 }, %struct.code { i8 0, i8 8, i16 112 }, %struct.code { i8 0, i8 8, i16 48 }, %struct.code { i8 0, i8 9, i16 192 }, %struct.code { i8 16, i8 7, i16 10 }, %struct.code { i8 0, i8 8, i16 96 }, %struct.code { i8 0, i8 8, i16 32 }, %struct.code { i8 0, i8 9, i16 160 }, %struct.code { i8 0, i8 8, i16 0 }, %struct.code { i8 0, i8 8, i16 128 }, %struct.code { i8 0, i8 8, i16 64 }, %struct.code { i8 0, i8 9, i16 224 }, %struct.code { i8 16, i8 7, i16 6 }, %struct.code { i8 0, i8 8, i16 88 }, %struct.code { i8 0, i8 8, i16 24 }, %struct.code { i8 0, i8 9, i16 144 }, %struct.code { i8 19, i8 7, i16 59 }, %struct.code { i8 0, i8 8, i16 120 }, %struct.code { i8 0, i8 8, i16 56 }, %struct.code { i8 0, i8 9, i16 208 }, %struct.code { i8 17, i8 7, i16 17 }, %struct.code { i8 0, i8 8, i16 104 }, %struct.code { i8 0, i8 8, i16 40 }, %struct.code { i8 0, i8 9, i16 176 }, %struct.code { i8 0, i8 8, i16 8 }, %struct.code { i8 0, i8 8, i16 136 }, %struct.code { i8 0, i8 8, i16 72 }, %struct.code { i8 0, i8 9, i16 240 }, %struct.code { i8 16, i8 7, i16 4 }, %struct.code { i8 0, i8 8, i16 84 }, %struct.code { i8 0, i8 8, i16 20 }, %struct.code { i8 21, i8 8, i16 227 }, %struct.code { i8 19, i8 7, i16 43 }, %struct.code { i8 0, i8 8, i16 116 }, %struct.code { i8 0, i8 8, i16 52 }, %struct.code { i8 0, i8 9, i16 200 }, %struct.code { i8 17, i8 7, i16 13 }, %struct.code { i8 0, i8 8, i16 100 }, %struct.code { i8 0, i8 8, i16 36 }, %struct.code { i8 0, i8 9, i16 168 }, %struct.code { i8 0, i8 8, i16 4 }, %struct.code { i8 0, i8 8, i16 132 }, %struct.code { i8 0, i8 8, i16 68 }, %struct.code { i8 0, i8 9, i16 232 }, %struct.code { i8 16, i8 7, i16 8 }, %struct.code { i8 0, i8 8, i16 92 }, %struct.code { i8 0, i8 8, i16 28 }, %struct.code { i8 0, i8 9, i16 152 }, %struct.code { i8 20, i8 7, i16 83 }, %struct.code { i8 0, i8 8, i16 124 }, %struct.code { i8 0, i8 8, i16 60 }, %struct.code { i8 0, i8 9, i16 216 }, %struct.code { i8 18, i8 7, i16 23 }, %struct.code { i8 0, i8 8, i16 108 }, %struct.code { i8 0, i8 8, i16 44 }, %struct.code { i8 0, i8 9, i16 184 }, %struct.code { i8 0, i8 8, i16 12 }, %struct.code { i8 0, i8 8, i16 140 }, %struct.code { i8 0, i8 8, i16 76 }, %struct.code { i8 0, i8 9, i16 248 }, %struct.code { i8 16, i8 7, i16 3 }, %struct.code { i8 0, i8 8, i16 82 }, %struct.code { i8 0, i8 8, i16 18 }, %struct.code { i8 21, i8 8, i16 163 }, %struct.code { i8 19, i8 7, i16 35 }, %struct.code { i8 0, i8 8, i16 114 }, %struct.code { i8 0, i8 8, i16 50 }, %struct.code { i8 0, i8 9, i16 196 }, %struct.code { i8 17, i8 7, i16 11 }, %struct.code { i8 0, i8 8, i16 98 }, %struct.code { i8 0, i8 8, i16 34 }, %struct.code { i8 0, i8 9, i16 164 }, %struct.code { i8 0, i8 8, i16 2 }, %struct.code { i8 0, i8 8, i16 130 }, %struct.code { i8 0, i8 8, i16 66 }, %struct.code { i8 0, i8 9, i16 228 }, %struct.code { i8 16, i8 7, i16 7 }, %struct.code { i8 0, i8 8, i16 90 }, %struct.code { i8 0, i8 8, i16 26 }, %struct.code { i8 0, i8 9, i16 148 }, %struct.code { i8 20, i8 7, i16 67 }, %struct.code { i8 0, i8 8, i16 122 }, %struct.code { i8 0, i8 8, i16 58 }, %struct.code { i8 0, i8 9, i16 212 }, %struct.code { i8 18, i8 7, i16 19 }, %struct.code { i8 0, i8 8, i16 106 }, %struct.code { i8 0, i8 8, i16 42 }, %struct.code { i8 0, i8 9, i16 180 }, %struct.code { i8 0, i8 8, i16 10 }, %struct.code { i8 0, i8 8, i16 138 }, %struct.code { i8 0, i8 8, i16 74 }, %struct.code { i8 0, i8 9, i16 244 }, %struct.code { i8 16, i8 7, i16 5 }, %struct.code { i8 0, i8 8, i16 86 }, %struct.code { i8 0, i8 8, i16 22 }, %struct.code { i8 64, i8 8, i16 0 }, %struct.code { i8 19, i8 7, i16 51 }, %struct.code { i8 0, i8 8, i16 118 }, %struct.code { i8 0, i8 8, i16 54 }, %struct.code { i8 0, i8 9, i16 204 }, %struct.code { i8 17, i8 7, i16 15 }, %struct.code { i8 0, i8 8, i16 102 }, %struct.code { i8 0, i8 8, i16 38 }, %struct.code { i8 0, i8 9, i16 172 }, %struct.code { i8 0, i8 8, i16 6 }, %struct.code { i8 0, i8 8, i16 134 }, %struct.code { i8 0, i8 8, i16 70 }, %struct.code { i8 0, i8 9, i16 236 }, %struct.code { i8 16, i8 7, i16 9 }, %struct.code { i8 0, i8 8, i16 94 }, %struct.code { i8 0, i8 8, i16 30 }, %struct.code { i8 0, i8 9, i16 156 }, %struct.code { i8 20, i8 7, i16 99 }, %struct.code { i8 0, i8 8, i16 126 }, %struct.code { i8 0, i8 8, i16 62 }, %struct.code { i8 0, i8 9, i16 220 }, %struct.code { i8 18, i8 7, i16 27 }, %struct.code { i8 0, i8 8, i16 110 }, %struct.code { i8 0, i8 8, i16 46 }, %struct.code { i8 0, i8 9, i16 188 }, %struct.code { i8 0, i8 8, i16 14 }, %struct.code { i8 0, i8 8, i16 142 }, %struct.code { i8 0, i8 8, i16 78 }, %struct.code { i8 0, i8 9, i16 252 }, %struct.code { i8 96, i8 7, i16 0 }, %struct.code { i8 0, i8 8, i16 81 }, %struct.code { i8 0, i8 8, i16 17 }, %struct.code { i8 21, i8 8, i16 131 }, %struct.code { i8 18, i8 7, i16 31 }, %struct.code { i8 0, i8 8, i16 113 }, %struct.code { i8 0, i8 8, i16 49 }, %struct.code { i8 0, i8 9, i16 194 }, %struct.code { i8 16, i8 7, i16 10 }, %struct.code { i8 0, i8 8, i16 97 }, %struct.code { i8 0, i8 8, i16 33 }, %struct.code { i8 0, i8 9, i16 162 }, %struct.code { i8 0, i8 8, i16 1 }, %struct.code { i8 0, i8 8, i16 129 }, %struct.code { i8 0, i8 8, i16 65 }, %struct.code { i8 0, i8 9, i16 226 }, %struct.code { i8 16, i8 7, i16 6 }, %struct.code { i8 0, i8 8, i16 89 }, %struct.code { i8 0, i8 8, i16 25 }, %struct.code { i8 0, i8 9, i16 146 }, %struct.code { i8 19, i8 7, i16 59 }, %struct.code { i8 0, i8 8, i16 121 }, %struct.code { i8 0, i8 8, i16 57 }, %struct.code { i8 0, i8 9, i16 210 }, %struct.code { i8 17, i8 7, i16 17 }, %struct.code { i8 0, i8 8, i16 105 }, %struct.code { i8 0, i8 8, i16 41 }, %struct.code { i8 0, i8 9, i16 178 }, %struct.code { i8 0, i8 8, i16 9 }, %struct.code { i8 0, i8 8, i16 137 }, %struct.code { i8 0, i8 8, i16 73 }, %struct.code { i8 0, i8 9, i16 242 }, %struct.code { i8 16, i8 7, i16 4 }, %struct.code { i8 0, i8 8, i16 85 }, %struct.code { i8 0, i8 8, i16 21 }, %struct.code { i8 16, i8 8, i16 258 }, %struct.code { i8 19, i8 7, i16 43 }, %struct.code { i8 0, i8 8, i16 117 }, %struct.code { i8 0, i8 8, i16 53 }, %struct.code { i8 0, i8 9, i16 202 }, %struct.code { i8 17, i8 7, i16 13 }, %struct.code { i8 0, i8 8, i16 101 }, %struct.code { i8 0, i8 8, i16 37 }, %struct.code { i8 0, i8 9, i16 170 }, %struct.code { i8 0, i8 8, i16 5 }, %struct.code { i8 0, i8 8, i16 133 }, %struct.code { i8 0, i8 8, i16 69 }, %struct.code { i8 0, i8 9, i16 234 }, %struct.code { i8 16, i8 7, i16 8 }, %struct.code { i8 0, i8 8, i16 93 }, %struct.code { i8 0, i8 8, i16 29 }, %struct.code { i8 0, i8 9, i16 154 }, %struct.code { i8 20, i8 7, i16 83 }, %struct.code { i8 0, i8 8, i16 125 }, %struct.code { i8 0, i8 8, i16 61 }, %struct.code { i8 0, i8 9, i16 218 }, %struct.code { i8 18, i8 7, i16 23 }, %struct.code { i8 0, i8 8, i16 109 }, %struct.code { i8 0, i8 8, i16 45 }, %struct.code { i8 0, i8 9, i16 186 }, %struct.code { i8 0, i8 8, i16 13 }, %struct.code { i8 0, i8 8, i16 141 }, %struct.code { i8 0, i8 8, i16 77 }, %struct.code { i8 0, i8 9, i16 250 }, %struct.code { i8 16, i8 7, i16 3 }, %struct.code { i8 0, i8 8, i16 83 }, %struct.code { i8 0, i8 8, i16 19 }, %struct.code { i8 21, i8 8, i16 195 }, %struct.code { i8 19, i8 7, i16 35 }, %struct.code { i8 0, i8 8, i16 115 }, %struct.code { i8 0, i8 8, i16 51 }, %struct.code { i8 0, i8 9, i16 198 }, %struct.code { i8 17, i8 7, i16 11 }, %struct.code { i8 0, i8 8, i16 99 }, %struct.code { i8 0, i8 8, i16 35 }, %struct.code { i8 0, i8 9, i16 166 }, %struct.code { i8 0, i8 8, i16 3 }, %struct.code { i8 0, i8 8, i16 131 }, %struct.code { i8 0, i8 8, i16 67 }, %struct.code { i8 0, i8 9, i16 230 }, %struct.code { i8 16, i8 7, i16 7 }, %struct.code { i8 0, i8 8, i16 91 }, %struct.code { i8 0, i8 8, i16 27 }, %struct.code { i8 0, i8 9, i16 150 }, %struct.code { i8 20, i8 7, i16 67 }, %struct.code { i8 0, i8 8, i16 123 }, %struct.code { i8 0, i8 8, i16 59 }, %struct.code { i8 0, i8 9, i16 214 }, %struct.code { i8 18, i8 7, i16 19 }, %struct.code { i8 0, i8 8, i16 107 }, %struct.code { i8 0, i8 8, i16 43 }, %struct.code { i8 0, i8 9, i16 182 }, %struct.code { i8 0, i8 8, i16 11 }, %struct.code { i8 0, i8 8, i16 139 }, %struct.code { i8 0, i8 8, i16 75 }, %struct.code { i8 0, i8 9, i16 246 }, %struct.code { i8 16, i8 7, i16 5 }, %struct.code { i8 0, i8 8, i16 87 }, %struct.code { i8 0, i8 8, i16 23 }, %struct.code { i8 64, i8 8, i16 0 }, %struct.code { i8 19, i8 7, i16 51 }, %struct.code { i8 0, i8 8, i16 119 }, %struct.code { i8 0, i8 8, i16 55 }, %struct.code { i8 0, i8 9, i16 206 }, %struct.code { i8 17, i8 7, i16 15 }, %struct.code { i8 0, i8 8, i16 103 }, %struct.code { i8 0, i8 8, i16 39 }, %struct.code { i8 0, i8 9, i16 174 }, %struct.code { i8 0, i8 8, i16 7 }, %struct.code { i8 0, i8 8, i16 135 }, %struct.code { i8 0, i8 8, i16 71 }, %struct.code { i8 0, i8 9, i16 238 }, %struct.code { i8 16, i8 7, i16 9 }, %struct.code { i8 0, i8 8, i16 95 }, %struct.code { i8 0, i8 8, i16 31 }, %struct.code { i8 0, i8 9, i16 158 }, %struct.code { i8 20, i8 7, i16 99 }, %struct.code { i8 0, i8 8, i16 127 }, %struct.code { i8 0, i8 8, i16 63 }, %struct.code { i8 0, i8 9, i16 222 }, %struct.code { i8 18, i8 7, i16 27 }, %struct.code { i8 0, i8 8, i16 111 }, %struct.code { i8 0, i8 8, i16 47 }, %struct.code { i8 0, i8 9, i16 190 }, %struct.code { i8 0, i8 8, i16 15 }, %struct.code { i8 0, i8 8, i16 143 }, %struct.code { i8 0, i8 8, i16 79 }, %struct.code { i8 0, i8 9, i16 254 }, %struct.code { i8 96, i8 7, i16 0 }, %struct.code { i8 0, i8 8, i16 80 }, %struct.code { i8 0, i8 8, i16 16 }, %struct.code { i8 20, i8 8, i16 115 }, %struct.code { i8 18, i8 7, i16 31 }, %struct.code { i8 0, i8 8, i16 112 }, %struct.code { i8 0, i8 8, i16 48 }, %struct.code { i8 0, i8 9, i16 193 }, %struct.code { i8 16, i8 7, i16 10 }, %struct.code { i8 0, i8 8, i16 96 }, %struct.code { i8 0, i8 8, i16 32 }, %struct.code { i8 0, i8 9, i16 161 }, %struct.code { i8 0, i8 8, i16 0 }, %struct.code { i8 0, i8 8, i16 128 }, %struct.code { i8 0, i8 8, i16 64 }, %struct.code { i8 0, i8 9, i16 225 }, %struct.code { i8 16, i8 7, i16 6 }, %struct.code { i8 0, i8 8, i16 88 }, %struct.code { i8 0, i8 8, i16 24 }, %struct.code { i8 0, i8 9, i16 145 }, %struct.code { i8 19, i8 7, i16 59 }, %struct.code { i8 0, i8 8, i16 120 }, %struct.code { i8 0, i8 8, i16 56 }, %struct.code { i8 0, i8 9, i16 209 }, %struct.code { i8 17, i8 7, i16 17 }, %struct.code { i8 0, i8 8, i16 104 }, %struct.code { i8 0, i8 8, i16 40 }, %struct.code { i8 0, i8 9, i16 177 }, %struct.code { i8 0, i8 8, i16 8 }, %struct.code { i8 0, i8 8, i16 136 }, %struct.code { i8 0, i8 8, i16 72 }, %struct.code { i8 0, i8 9, i16 241 }, %struct.code { i8 16, i8 7, i16 4 }, %struct.code { i8 0, i8 8, i16 84 }, %struct.code { i8 0, i8 8, i16 20 }, %struct.code { i8 21, i8 8, i16 227 }, %struct.code { i8 19, i8 7, i16 43 }, %struct.code { i8 0, i8 8, i16 116 }, %struct.code { i8 0, i8 8, i16 52 }, %struct.code { i8 0, i8 9, i16 201 }, %struct.code { i8 17, i8 7, i16 13 }, %struct.code { i8 0, i8 8, i16 100 }, %struct.code { i8 0, i8 8, i16 36 }, %struct.code { i8 0, i8 9, i16 169 }, %struct.code { i8 0, i8 8, i16 4 }, %struct.code { i8 0, i8 8, i16 132 }, %struct.code { i8 0, i8 8, i16 68 }, %struct.code { i8 0, i8 9, i16 233 }, %struct.code { i8 16, i8 7, i16 8 }, %struct.code { i8 0, i8 8, i16 92 }, %struct.code { i8 0, i8 8, i16 28 }, %struct.code { i8 0, i8 9, i16 153 }, %struct.code { i8 20, i8 7, i16 83 }, %struct.code { i8 0, i8 8, i16 124 }, %struct.code { i8 0, i8 8, i16 60 }, %struct.code { i8 0, i8 9, i16 217 }, %struct.code { i8 18, i8 7, i16 23 }, %struct.code { i8 0, i8 8, i16 108 }, %struct.code { i8 0, i8 8, i16 44 }, %struct.code { i8 0, i8 9, i16 185 }, %struct.code { i8 0, i8 8, i16 12 }, %struct.code { i8 0, i8 8, i16 140 }, %struct.code { i8 0, i8 8, i16 76 }, %struct.code { i8 0, i8 9, i16 249 }, %struct.code { i8 16, i8 7, i16 3 }, %struct.code { i8 0, i8 8, i16 82 }, %struct.code { i8 0, i8 8, i16 18 }, %struct.code { i8 21, i8 8, i16 163 }, %struct.code { i8 19, i8 7, i16 35 }, %struct.code { i8 0, i8 8, i16 114 }, %struct.code { i8 0, i8 8, i16 50 }, %struct.code { i8 0, i8 9, i16 197 }, %struct.code { i8 17, i8 7, i16 11 }, %struct.code { i8 0, i8 8, i16 98 }, %struct.code { i8 0, i8 8, i16 34 }, %struct.code { i8 0, i8 9, i16 165 }, %struct.code { i8 0, i8 8, i16 2 }, %struct.code { i8 0, i8 8, i16 130 }, %struct.code { i8 0, i8 8, i16 66 }, %struct.code { i8 0, i8 9, i16 229 }, %struct.code { i8 16, i8 7, i16 7 }, %struct.code { i8 0, i8 8, i16 90 }, %struct.code { i8 0, i8 8, i16 26 }, %struct.code { i8 0, i8 9, i16 149 }, %struct.code { i8 20, i8 7, i16 67 }, %struct.code { i8 0, i8 8, i16 122 }, %struct.code { i8 0, i8 8, i16 58 }, %struct.code { i8 0, i8 9, i16 213 }, %struct.code { i8 18, i8 7, i16 19 }, %struct.code { i8 0, i8 8, i16 106 }, %struct.code { i8 0, i8 8, i16 42 }, %struct.code { i8 0, i8 9, i16 181 }, %struct.code { i8 0, i8 8, i16 10 }, %struct.code { i8 0, i8 8, i16 138 }, %struct.code { i8 0, i8 8, i16 74 }, %struct.code { i8 0, i8 9, i16 245 }, %struct.code { i8 16, i8 7, i16 5 }, %struct.code { i8 0, i8 8, i16 86 }, %struct.code { i8 0, i8 8, i16 22 }, %struct.code { i8 64, i8 8, i16 0 }, %struct.code { i8 19, i8 7, i16 51 }, %struct.code { i8 0, i8 8, i16 118 }, %struct.code { i8 0, i8 8, i16 54 }, %struct.code { i8 0, i8 9, i16 205 }, %struct.code { i8 17, i8 7, i16 15 }, %struct.code { i8 0, i8 8, i16 102 }, %struct.code { i8 0, i8 8, i16 38 }, %struct.code { i8 0, i8 9, i16 173 }, %struct.code { i8 0, i8 8, i16 6 }, %struct.code { i8 0, i8 8, i16 134 }, %struct.code { i8 0, i8 8, i16 70 }, %struct.code { i8 0, i8 9, i16 237 }, %struct.code { i8 16, i8 7, i16 9 }, %struct.code { i8 0, i8 8, i16 94 }, %struct.code { i8 0, i8 8, i16 30 }, %struct.code { i8 0, i8 9, i16 157 }, %struct.code { i8 20, i8 7, i16 99 }, %struct.code { i8 0, i8 8, i16 126 }, %struct.code { i8 0, i8 8, i16 62 }, %struct.code { i8 0, i8 9, i16 221 }, %struct.code { i8 18, i8 7, i16 27 }, %struct.code { i8 0, i8 8, i16 110 }, %struct.code { i8 0, i8 8, i16 46 }, %struct.code { i8 0, i8 9, i16 189 }, %struct.code { i8 0, i8 8, i16 14 }, %struct.code { i8 0, i8 8, i16 142 }, %struct.code { i8 0, i8 8, i16 78 }, %struct.code { i8 0, i8 9, i16 253 }, %struct.code { i8 96, i8 7, i16 0 }, %struct.code { i8 0, i8 8, i16 81 }, %struct.code { i8 0, i8 8, i16 17 }, %struct.code { i8 21, i8 8, i16 131 }, %struct.code { i8 18, i8 7, i16 31 }, %struct.code { i8 0, i8 8, i16 113 }, %struct.code { i8 0, i8 8, i16 49 }, %struct.code { i8 0, i8 9, i16 195 }, %struct.code { i8 16, i8 7, i16 10 }, %struct.code { i8 0, i8 8, i16 97 }, %struct.code { i8 0, i8 8, i16 33 }, %struct.code { i8 0, i8 9, i16 163 }, %struct.code { i8 0, i8 8, i16 1 }, %struct.code { i8 0, i8 8, i16 129 }, %struct.code { i8 0, i8 8, i16 65 }, %struct.code { i8 0, i8 9, i16 227 }, %struct.code { i8 16, i8 7, i16 6 }, %struct.code { i8 0, i8 8, i16 89 }, %struct.code { i8 0, i8 8, i16 25 }, %struct.code { i8 0, i8 9, i16 147 }, %struct.code { i8 19, i8 7, i16 59 }, %struct.code { i8 0, i8 8, i16 121 }, %struct.code { i8 0, i8 8, i16 57 }, %struct.code { i8 0, i8 9, i16 211 }, %struct.code { i8 17, i8 7, i16 17 }, %struct.code { i8 0, i8 8, i16 105 }, %struct.code { i8 0, i8 8, i16 41 }, %struct.code { i8 0, i8 9, i16 179 }, %struct.code { i8 0, i8 8, i16 9 }, %struct.code { i8 0, i8 8, i16 137 }, %struct.code { i8 0, i8 8, i16 73 }, %struct.code { i8 0, i8 9, i16 243 }, %struct.code { i8 16, i8 7, i16 4 }, %struct.code { i8 0, i8 8, i16 85 }, %struct.code { i8 0, i8 8, i16 21 }, %struct.code { i8 16, i8 8, i16 258 }, %struct.code { i8 19, i8 7, i16 43 }, %struct.code { i8 0, i8 8, i16 117 }, %struct.code { i8 0, i8 8, i16 53 }, %struct.code { i8 0, i8 9, i16 203 }, %struct.code { i8 17, i8 7, i16 13 }, %struct.code { i8 0, i8 8, i16 101 }, %struct.code { i8 0, i8 8, i16 37 }, %struct.code { i8 0, i8 9, i16 171 }, %struct.code { i8 0, i8 8, i16 5 }, %struct.code { i8 0, i8 8, i16 133 }, %struct.code { i8 0, i8 8, i16 69 }, %struct.code { i8 0, i8 9, i16 235 }, %struct.code { i8 16, i8 7, i16 8 }, %struct.code { i8 0, i8 8, i16 93 }, %struct.code { i8 0, i8 8, i16 29 }, %struct.code { i8 0, i8 9, i16 155 }, %struct.code { i8 20, i8 7, i16 83 }, %struct.code { i8 0, i8 8, i16 125 }, %struct.code { i8 0, i8 8, i16 61 }, %struct.code { i8 0, i8 9, i16 219 }, %struct.code { i8 18, i8 7, i16 23 }, %struct.code { i8 0, i8 8, i16 109 }, %struct.code { i8 0, i8 8, i16 45 }, %struct.code { i8 0, i8 9, i16 187 }, %struct.code { i8 0, i8 8, i16 13 }, %struct.code { i8 0, i8 8, i16 141 }, %struct.code { i8 0, i8 8, i16 77 }, %struct.code { i8 0, i8 9, i16 251 }, %struct.code { i8 16, i8 7, i16 3 }, %struct.code { i8 0, i8 8, i16 83 }, %struct.code { i8 0, i8 8, i16 19 }, %struct.code { i8 21, i8 8, i16 195 }, %struct.code { i8 19, i8 7, i16 35 }, %struct.code { i8 0, i8 8, i16 115 }, %struct.code { i8 0, i8 8, i16 51 }, %struct.code { i8 0, i8 9, i16 199 }, %struct.code { i8 17, i8 7, i16 11 }, %struct.code { i8 0, i8 8, i16 99 }, %struct.code { i8 0, i8 8, i16 35 }, %struct.code { i8 0, i8 9, i16 167 }, %struct.code { i8 0, i8 8, i16 3 }, %struct.code { i8 0, i8 8, i16 131 }, %struct.code { i8 0, i8 8, i16 67 }, %struct.code { i8 0, i8 9, i16 231 }, %struct.code { i8 16, i8 7, i16 7 }, %struct.code { i8 0, i8 8, i16 91 }, %struct.code { i8 0, i8 8, i16 27 }, %struct.code { i8 0, i8 9, i16 151 }, %struct.code { i8 20, i8 7, i16 67 }, %struct.code { i8 0, i8 8, i16 123 }, %struct.code { i8 0, i8 8, i16 59 }, %struct.code { i8 0, i8 9, i16 215 }, %struct.code { i8 18, i8 7, i16 19 }, %struct.code { i8 0, i8 8, i16 107 }, %struct.code { i8 0, i8 8, i16 43 }, %struct.code { i8 0, i8 9, i16 183 }, %struct.code { i8 0, i8 8, i16 11 }, %struct.code { i8 0, i8 8, i16 139 }, %struct.code { i8 0, i8 8, i16 75 }, %struct.code { i8 0, i8 9, i16 247 }, %struct.code { i8 16, i8 7, i16 5 }, %struct.code { i8 0, i8 8, i16 87 }, %struct.code { i8 0, i8 8, i16 23 }, %struct.code { i8 64, i8 8, i16 0 }, %struct.code { i8 19, i8 7, i16 51 }, %struct.code { i8 0, i8 8, i16 119 }, %struct.code { i8 0, i8 8, i16 55 }, %struct.code { i8 0, i8 9, i16 207 }, %struct.code { i8 17, i8 7, i16 15 }, %struct.code { i8 0, i8 8, i16 103 }, %struct.code { i8 0, i8 8, i16 39 }, %struct.code { i8 0, i8 9, i16 175 }, %struct.code { i8 0, i8 8, i16 7 }, %struct.code { i8 0, i8 8, i16 135 }, %struct.code { i8 0, i8 8, i16 71 }, %struct.code { i8 0, i8 9, i16 239 }, %struct.code { i8 16, i8 7, i16 9 }, %struct.code { i8 0, i8 8, i16 95 }, %struct.code { i8 0, i8 8, i16 31 }, %struct.code { i8 0, i8 9, i16 159 }, %struct.code { i8 20, i8 7, i16 99 }, %struct.code { i8 0, i8 8, i16 127 }, %struct.code { i8 0, i8 8, i16 63 }, %struct.code { i8 0, i8 9, i16 223 }, %struct.code { i8 18, i8 7, i16 27 }, %struct.code { i8 0, i8 8, i16 111 }, %struct.code { i8 0, i8 8, i16 47 }, %struct.code { i8 0, i8 9, i16 191 }, %struct.code { i8 0, i8 8, i16 15 }, %struct.code { i8 0, i8 8, i16 143 }, %struct.code { i8 0, i8 8, i16 79 }, %struct.code { i8 0, i8 9, i16 255 }], align 16
@fixedtables.distfix = internal constant [32 x %struct.code] [%struct.code { i8 16, i8 5, i16 1 }, %struct.code { i8 23, i8 5, i16 257 }, %struct.code { i8 19, i8 5, i16 17 }, %struct.code { i8 27, i8 5, i16 4097 }, %struct.code { i8 17, i8 5, i16 5 }, %struct.code { i8 25, i8 5, i16 1025 }, %struct.code { i8 21, i8 5, i16 65 }, %struct.code { i8 29, i8 5, i16 16385 }, %struct.code { i8 16, i8 5, i16 3 }, %struct.code { i8 24, i8 5, i16 513 }, %struct.code { i8 20, i8 5, i16 33 }, %struct.code { i8 28, i8 5, i16 8193 }, %struct.code { i8 18, i8 5, i16 9 }, %struct.code { i8 26, i8 5, i16 2049 }, %struct.code { i8 22, i8 5, i16 129 }, %struct.code { i8 64, i8 5, i16 0 }, %struct.code { i8 16, i8 5, i16 2 }, %struct.code { i8 23, i8 5, i16 385 }, %struct.code { i8 19, i8 5, i16 25 }, %struct.code { i8 27, i8 5, i16 6145 }, %struct.code { i8 17, i8 5, i16 7 }, %struct.code { i8 25, i8 5, i16 1537 }, %struct.code { i8 21, i8 5, i16 97 }, %struct.code { i8 29, i8 5, i16 24577 }, %struct.code { i8 16, i8 5, i16 4 }, %struct.code { i8 24, i8 5, i16 769 }, %struct.code { i8 20, i8 5, i16 49 }, %struct.code { i8 28, i8 5, i16 12289 }, %struct.code { i8 18, i8 5, i16 13 }, %struct.code { i8 26, i8 5, i16 3073 }, %struct.code { i8 22, i8 5, i16 193 }, %struct.code { i8 64, i8 5, i16 0 }], align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @inflateResetKeep(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %31, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %31, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.inflate_state, ptr %5, i64 0, i32 7
  store i64 0, ptr %8, align 8, !tbaa !41
  %9 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 5
  %10 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 2
  store i64 0, ptr %10, align 8, !tbaa !43
  %11 = getelementptr inbounds %struct.inflate_state, ptr %5, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  %12 = load i32, ptr %11, align 8, !tbaa !44
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %7
  %15 = and i32 %12, 1
  %16 = zext nneg i32 %15 to i64
  %17 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 12
  store i64 %16, ptr %17, align 8, !tbaa !45
  br label %18

18:                                               ; preds = %14, %7
  store i32 0, ptr %5, align 8, !tbaa !46
  %19 = getelementptr inbounds %struct.inflate_state, ptr %5, i64 0, i32 1
  store i32 0, ptr %19, align 4, !tbaa !47
  %20 = getelementptr inbounds %struct.inflate_state, ptr %5, i64 0, i32 3
  store i32 0, ptr %20, align 4, !tbaa !48
  %21 = getelementptr inbounds %struct.inflate_state, ptr %5, i64 0, i32 5
  store i32 32768, ptr %21, align 4, !tbaa !49
  %22 = getelementptr inbounds %struct.inflate_state, ptr %5, i64 0, i32 8
  store ptr null, ptr %22, align 8, !tbaa !50
  %23 = getelementptr inbounds %struct.inflate_state, ptr %5, i64 0, i32 14
  store i64 0, ptr %23, align 8, !tbaa !51
  %24 = getelementptr inbounds %struct.inflate_state, ptr %5, i64 0, i32 15
  store i32 0, ptr %24, align 8, !tbaa !52
  %25 = getelementptr inbounds %struct.inflate_state, ptr %5, i64 0, i32 30
  %26 = getelementptr inbounds %struct.inflate_state, ptr %5, i64 0, i32 27
  store ptr %25, ptr %26, align 8, !tbaa !53
  %27 = getelementptr inbounds %struct.inflate_state, ptr %5, i64 0, i32 20
  store ptr %25, ptr %27, align 8, !tbaa !54
  %28 = getelementptr inbounds %struct.inflate_state, ptr %5, i64 0, i32 19
  store ptr %25, ptr %28, align 8, !tbaa !55
  %29 = getelementptr inbounds %struct.inflate_state, ptr %5, i64 0, i32 31
  store i32 1, ptr %29, align 8, !tbaa !56
  %30 = getelementptr inbounds %struct.inflate_state, ptr %5, i64 0, i32 32
  store i32 -1, ptr %30, align 4, !tbaa !57
  br label %31

31:                                               ; preds = %1, %3, %18
  %32 = phi i32 [ 0, %18 ], [ -2, %3 ], [ -2, %1 ]
  ret i32 %32
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @inflateReset(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %34, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %34, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.inflate_state, ptr %5, i64 0, i32 10
  store i32 0, ptr %8, align 4, !tbaa !58
  %9 = getelementptr inbounds %struct.inflate_state, ptr %5, i64 0, i32 11
  store i32 0, ptr %9, align 8, !tbaa !59
  %10 = getelementptr inbounds %struct.inflate_state, ptr %5, i64 0, i32 12
  store i32 0, ptr %10, align 4, !tbaa !60
  %11 = getelementptr inbounds %struct.inflate_state, ptr %5, i64 0, i32 7
  store i64 0, ptr %11, align 8, !tbaa !41
  %12 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 5
  %13 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 2
  store i64 0, ptr %13, align 8, !tbaa !43
  %14 = getelementptr inbounds %struct.inflate_state, ptr %5, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i64 16, i1 false)
  %15 = load i32, ptr %14, align 8, !tbaa !44
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %7
  %18 = and i32 %15, 1
  %19 = zext nneg i32 %18 to i64
  %20 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 12
  store i64 %19, ptr %20, align 8, !tbaa !45
  br label %21

21:                                               ; preds = %17, %7
  store i32 0, ptr %5, align 8, !tbaa !46
  %22 = getelementptr inbounds %struct.inflate_state, ptr %5, i64 0, i32 1
  store i32 0, ptr %22, align 4, !tbaa !47
  %23 = getelementptr inbounds %struct.inflate_state, ptr %5, i64 0, i32 3
  store i32 0, ptr %23, align 4, !tbaa !48
  %24 = getelementptr inbounds %struct.inflate_state, ptr %5, i64 0, i32 5
  store i32 32768, ptr %24, align 4, !tbaa !49
  %25 = getelementptr inbounds %struct.inflate_state, ptr %5, i64 0, i32 8
  store ptr null, ptr %25, align 8, !tbaa !50
  %26 = getelementptr inbounds %struct.inflate_state, ptr %5, i64 0, i32 14
  store i64 0, ptr %26, align 8, !tbaa !51
  %27 = getelementptr inbounds %struct.inflate_state, ptr %5, i64 0, i32 15
  store i32 0, ptr %27, align 8, !tbaa !52
  %28 = getelementptr inbounds %struct.inflate_state, ptr %5, i64 0, i32 30
  %29 = getelementptr inbounds %struct.inflate_state, ptr %5, i64 0, i32 27
  store ptr %28, ptr %29, align 8, !tbaa !53
  %30 = getelementptr inbounds %struct.inflate_state, ptr %5, i64 0, i32 20
  store ptr %28, ptr %30, align 8, !tbaa !54
  %31 = getelementptr inbounds %struct.inflate_state, ptr %5, i64 0, i32 19
  store ptr %28, ptr %31, align 8, !tbaa !55
  %32 = getelementptr inbounds %struct.inflate_state, ptr %5, i64 0, i32 31
  store i32 1, ptr %32, align 8, !tbaa !56
  %33 = getelementptr inbounds %struct.inflate_state, ptr %5, i64 0, i32 32
  store i32 -1, ptr %33, align 4, !tbaa !57
  br label %34

34:                                               ; preds = %1, %3, %21
  %35 = phi i32 [ 0, %21 ], [ -2, %3 ], [ -2, %1 ]
  ret i32 %35
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @inflateReset2(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %66, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %66, label %8

8:                                                ; preds = %4
  %9 = icmp slt i32 %1, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %8
  %11 = sub nsw i32 0, %1
  br label %18

12:                                               ; preds = %8
  %13 = lshr i32 %1, 4
  %14 = add nuw nsw i32 %13, 1
  %15 = icmp slt i32 %1, 48
  %16 = and i32 %1, 15
  %17 = select i1 %15, i32 %16, i32 %1
  br label %18

18:                                               ; preds = %12, %10
  %19 = phi i32 [ %11, %10 ], [ %17, %12 ]
  %20 = phi i32 [ 0, %10 ], [ %14, %12 ]
  switch i32 %19, label %66 [
    i32 15, label %21
    i32 14, label %21
    i32 13, label %21
    i32 12, label %21
    i32 11, label %21
    i32 10, label %21
    i32 9, label %21
    i32 8, label %21
    i32 0, label %21
  ]

21:                                               ; preds = %18, %18, %18, %18, %18, %18, %18, %18, %18
  %22 = getelementptr inbounds %struct.inflate_state, ptr %6, i64 0, i32 13
  %23 = load ptr, ptr %22, align 8, !tbaa !61
  %24 = icmp eq ptr %23, null
  br i1 %24, label %34, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.inflate_state, ptr %6, i64 0, i32 9
  %27 = load i32, ptr %26, align 8, !tbaa !62
  %28 = icmp eq i32 %27, %19
  br i1 %28, label %34, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 9
  %31 = load ptr, ptr %30, align 8, !tbaa !63
  %32 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 10
  %33 = load ptr, ptr %32, align 8, !tbaa !64
  tail call void %31(ptr noundef %33, ptr noundef nonnull %23) #10
  store ptr null, ptr %22, align 8, !tbaa !61
  br label %34

34:                                               ; preds = %29, %25, %21
  %35 = getelementptr inbounds %struct.inflate_state, ptr %6, i64 0, i32 2
  store i32 %20, ptr %35, align 8, !tbaa !44
  %36 = getelementptr inbounds %struct.inflate_state, ptr %6, i64 0, i32 9
  store i32 %19, ptr %36, align 8, !tbaa !62
  %37 = load ptr, ptr %5, align 8, !tbaa !34
  %38 = icmp eq ptr %37, null
  br i1 %38, label %66, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.inflate_state, ptr %37, i64 0, i32 10
  store i32 0, ptr %40, align 4, !tbaa !58
  %41 = getelementptr inbounds %struct.inflate_state, ptr %37, i64 0, i32 11
  store i32 0, ptr %41, align 8, !tbaa !59
  %42 = getelementptr inbounds %struct.inflate_state, ptr %37, i64 0, i32 12
  store i32 0, ptr %42, align 4, !tbaa !60
  %43 = getelementptr inbounds %struct.inflate_state, ptr %37, i64 0, i32 7
  store i64 0, ptr %43, align 8, !tbaa !41
  %44 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 5
  %45 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 2
  store i64 0, ptr %45, align 8, !tbaa !43
  %46 = getelementptr inbounds %struct.inflate_state, ptr %37, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %44, i8 0, i64 16, i1 false)
  %47 = load i32, ptr %46, align 8, !tbaa !44
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %39
  %50 = and i32 %47, 1
  %51 = zext nneg i32 %50 to i64
  %52 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 12
  store i64 %51, ptr %52, align 8, !tbaa !45
  br label %53

53:                                               ; preds = %49, %39
  store i32 0, ptr %37, align 8, !tbaa !46
  %54 = getelementptr inbounds %struct.inflate_state, ptr %37, i64 0, i32 1
  store i32 0, ptr %54, align 4, !tbaa !47
  %55 = getelementptr inbounds %struct.inflate_state, ptr %37, i64 0, i32 3
  store i32 0, ptr %55, align 4, !tbaa !48
  %56 = getelementptr inbounds %struct.inflate_state, ptr %37, i64 0, i32 5
  store i32 32768, ptr %56, align 4, !tbaa !49
  %57 = getelementptr inbounds %struct.inflate_state, ptr %37, i64 0, i32 8
  store ptr null, ptr %57, align 8, !tbaa !50
  %58 = getelementptr inbounds %struct.inflate_state, ptr %37, i64 0, i32 14
  store i64 0, ptr %58, align 8, !tbaa !51
  %59 = getelementptr inbounds %struct.inflate_state, ptr %37, i64 0, i32 15
  store i32 0, ptr %59, align 8, !tbaa !52
  %60 = getelementptr inbounds %struct.inflate_state, ptr %37, i64 0, i32 30
  %61 = getelementptr inbounds %struct.inflate_state, ptr %37, i64 0, i32 27
  store ptr %60, ptr %61, align 8, !tbaa !53
  %62 = getelementptr inbounds %struct.inflate_state, ptr %37, i64 0, i32 20
  store ptr %60, ptr %62, align 8, !tbaa !54
  %63 = getelementptr inbounds %struct.inflate_state, ptr %37, i64 0, i32 19
  store ptr %60, ptr %63, align 8, !tbaa !55
  %64 = getelementptr inbounds %struct.inflate_state, ptr %37, i64 0, i32 31
  store i32 1, ptr %64, align 8, !tbaa !56
  %65 = getelementptr inbounds %struct.inflate_state, ptr %37, i64 0, i32 32
  store i32 -1, ptr %65, align 4, !tbaa !57
  br label %66

66:                                               ; preds = %53, %34, %18, %2, %4
  %67 = phi i32 [ -2, %4 ], [ -2, %2 ], [ -2, %18 ], [ 0, %53 ], [ -2, %34 ]
  ret i32 %67
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @inflateInit2_(ptr noundef %0, i32 noundef %1, ptr noundef readonly %2, i32 noundef %3) local_unnamed_addr #2 {
  %5 = icmp eq ptr %2, null
  br i1 %5, label %39, label %6

6:                                                ; preds = %4
  %7 = load i8, ptr %2, align 1, !tbaa !65
  %8 = icmp ne i8 %7, 49
  %9 = icmp ne i32 %3, 112
  %10 = or i1 %9, %8
  br i1 %10, label %39, label %11

11:                                               ; preds = %6
  %12 = icmp eq ptr %0, null
  br i1 %12, label %39, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 6
  store ptr null, ptr %14, align 8, !tbaa !66
  %15 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 8
  %16 = load ptr, ptr %15, align 8, !tbaa !67
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  store ptr @zcalloc, ptr %15, align 8, !tbaa !67
  %19 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 10
  store ptr null, ptr %19, align 8, !tbaa !64
  br label %20

20:                                               ; preds = %18, %13
  %21 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 9
  %22 = load ptr, ptr %21, align 8, !tbaa !63
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store ptr @zcfree, ptr %21, align 8, !tbaa !63
  br label %25

25:                                               ; preds = %24, %20
  %26 = load ptr, ptr %15, align 8, !tbaa !67
  %27 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 10
  %28 = load ptr, ptr %27, align 8, !tbaa !64
  %29 = tail call ptr %26(ptr noundef %28, i32 noundef 1, i32 noundef 7152) #10
  %30 = icmp eq ptr %29, null
  br i1 %30, label %39, label %31

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  store ptr %29, ptr %32, align 8, !tbaa !34
  %33 = getelementptr inbounds %struct.inflate_state, ptr %29, i64 0, i32 13
  store ptr null, ptr %33, align 8, !tbaa !61
  %34 = tail call i32 @inflateReset2(ptr noundef nonnull %0, i32 noundef %1), !range !68
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = load ptr, ptr %21, align 8, !tbaa !63
  %38 = load ptr, ptr %27, align 8, !tbaa !64
  tail call void %37(ptr noundef %38, ptr noundef nonnull %29) #10
  store ptr null, ptr %32, align 8, !tbaa !34
  br label %39

39:                                               ; preds = %31, %36, %25, %11, %4, %6
  %40 = phi i32 [ -6, %6 ], [ -6, %4 ], [ -2, %11 ], [ -4, %25 ], [ %34, %36 ], [ %34, %31 ]
  ret i32 %40
}

declare hidden ptr @zcalloc(ptr noundef, i32 noundef, i32 noundef) #3

declare hidden void @zcfree(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @inflateInit_(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %69, label %5

5:                                                ; preds = %3
  %6 = load i8, ptr %1, align 1, !tbaa !65
  %7 = icmp ne i8 %6, 49
  %8 = icmp ne i32 %2, 112
  %9 = or i1 %8, %7
  br i1 %9, label %69, label %10

10:                                               ; preds = %5
  %11 = icmp eq ptr %0, null
  br i1 %11, label %69, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 6
  store ptr null, ptr %13, align 8, !tbaa !66
  %14 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 8
  %15 = load ptr, ptr %14, align 8, !tbaa !67
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  store ptr @zcalloc, ptr %14, align 8, !tbaa !67
  %18 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 10
  store ptr null, ptr %18, align 8, !tbaa !64
  br label %19

19:                                               ; preds = %17, %12
  %20 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 9
  %21 = load ptr, ptr %20, align 8, !tbaa !63
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store ptr @zcfree, ptr %20, align 8, !tbaa !63
  br label %24

24:                                               ; preds = %23, %19
  %25 = load ptr, ptr %14, align 8, !tbaa !67
  %26 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 10
  %27 = load ptr, ptr %26, align 8, !tbaa !64
  %28 = tail call ptr %25(ptr noundef %27, i32 noundef 1, i32 noundef 7152) #10
  %29 = icmp eq ptr %28, null
  br i1 %29, label %69, label %30

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  store ptr %28, ptr %31, align 8, !tbaa !34
  %32 = getelementptr inbounds %struct.inflate_state, ptr %28, i64 0, i32 13
  store ptr null, ptr %32, align 8, !tbaa !61
  %33 = getelementptr inbounds %struct.inflate_state, ptr %28, i64 0, i32 2
  store i32 1, ptr %33, align 8, !tbaa !44
  %34 = getelementptr inbounds %struct.inflate_state, ptr %28, i64 0, i32 9
  store i32 15, ptr %34, align 8, !tbaa !62
  %35 = load ptr, ptr %31, align 8, !tbaa !34
  %36 = icmp eq ptr %35, null
  br i1 %36, label %64, label %37

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.inflate_state, ptr %35, i64 0, i32 10
  store i32 0, ptr %38, align 4, !tbaa !58
  %39 = getelementptr inbounds %struct.inflate_state, ptr %35, i64 0, i32 11
  store i32 0, ptr %39, align 8, !tbaa !59
  %40 = getelementptr inbounds %struct.inflate_state, ptr %35, i64 0, i32 12
  store i32 0, ptr %40, align 4, !tbaa !60
  %41 = getelementptr inbounds %struct.inflate_state, ptr %35, i64 0, i32 7
  store i64 0, ptr %41, align 8, !tbaa !41
  %42 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 5
  %43 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 2
  store i64 0, ptr %43, align 8, !tbaa !43
  %44 = getelementptr inbounds %struct.inflate_state, ptr %35, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %42, i8 0, i64 16, i1 false)
  %45 = load i32, ptr %44, align 8, !tbaa !44
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %37
  %48 = and i32 %45, 1
  %49 = zext nneg i32 %48 to i64
  %50 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 12
  store i64 %49, ptr %50, align 8, !tbaa !45
  br label %51

51:                                               ; preds = %47, %37
  store i32 0, ptr %35, align 8, !tbaa !46
  %52 = getelementptr inbounds %struct.inflate_state, ptr %35, i64 0, i32 1
  store i32 0, ptr %52, align 4, !tbaa !47
  %53 = getelementptr inbounds %struct.inflate_state, ptr %35, i64 0, i32 3
  store i32 0, ptr %53, align 4, !tbaa !48
  %54 = getelementptr inbounds %struct.inflate_state, ptr %35, i64 0, i32 5
  store i32 32768, ptr %54, align 4, !tbaa !49
  %55 = getelementptr inbounds %struct.inflate_state, ptr %35, i64 0, i32 8
  store ptr null, ptr %55, align 8, !tbaa !50
  %56 = getelementptr inbounds %struct.inflate_state, ptr %35, i64 0, i32 14
  store i64 0, ptr %56, align 8, !tbaa !51
  %57 = getelementptr inbounds %struct.inflate_state, ptr %35, i64 0, i32 15
  store i32 0, ptr %57, align 8, !tbaa !52
  %58 = getelementptr inbounds %struct.inflate_state, ptr %35, i64 0, i32 30
  %59 = getelementptr inbounds %struct.inflate_state, ptr %35, i64 0, i32 27
  store ptr %58, ptr %59, align 8, !tbaa !53
  %60 = getelementptr inbounds %struct.inflate_state, ptr %35, i64 0, i32 20
  store ptr %58, ptr %60, align 8, !tbaa !54
  %61 = getelementptr inbounds %struct.inflate_state, ptr %35, i64 0, i32 19
  store ptr %58, ptr %61, align 8, !tbaa !55
  %62 = getelementptr inbounds %struct.inflate_state, ptr %35, i64 0, i32 31
  store i32 1, ptr %62, align 8, !tbaa !56
  %63 = getelementptr inbounds %struct.inflate_state, ptr %35, i64 0, i32 32
  store i32 -1, ptr %63, align 4, !tbaa !57
  br label %64

64:                                               ; preds = %30, %51
  %65 = phi i32 [ 0, %51 ], [ -2, %30 ]
  br i1 %36, label %66, label %69

66:                                               ; preds = %64
  %67 = load ptr, ptr %20, align 8, !tbaa !63
  %68 = load ptr, ptr %26, align 8, !tbaa !64
  tail call void %67(ptr noundef %68, ptr noundef nonnull %28) #10
  store ptr null, ptr %31, align 8, !tbaa !34
  br label %69

69:                                               ; preds = %3, %5, %10, %24, %64, %66
  %70 = phi i32 [ -6, %5 ], [ -6, %3 ], [ -2, %10 ], [ -4, %24 ], [ %65, %66 ], [ %65, %64 ]
  ret i32 %70
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @inflatePrime(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %32, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %32, label %9

9:                                                ; preds = %5
  %10 = icmp slt i32 %1, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 14
  store i64 0, ptr %12, align 8, !tbaa !51
  %13 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 15
  store i32 0, ptr %13, align 8, !tbaa !52
  br label %32

14:                                               ; preds = %9
  %15 = icmp sgt i32 %1, 16
  br i1 %15, label %32, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 15
  %18 = load i32, ptr %17, align 8, !tbaa !52
  %19 = add i32 %18, %1
  %20 = icmp ugt i32 %19, 32
  br i1 %20, label %32, label %21

21:                                               ; preds = %16
  %22 = zext nneg i32 %1 to i64
  %23 = shl nsw i64 -1, %22
  %24 = trunc i64 %23 to i32
  %25 = xor i32 %24, -1
  %26 = and i32 %25, %2
  %27 = shl i32 %26, %18
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 14
  %30 = load i64, ptr %29, align 8, !tbaa !51
  %31 = add i64 %30, %28
  store i64 %31, ptr %29, align 8, !tbaa !51
  store i32 %19, ptr %17, align 8, !tbaa !52
  br label %32

32:                                               ; preds = %14, %16, %3, %5, %21, %11
  %33 = phi i32 [ 0, %11 ], [ 0, %21 ], [ -2, %5 ], [ -2, %3 ], [ -2, %16 ], [ -2, %14 ]
  ret i32 %33
}

; Function Attrs: nounwind uwtable
define dso_local i32 @inflate(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = alloca [4 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  %4 = icmp eq ptr %0, null
  br i1 %4, label %1931, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %1931, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !69
  %12 = icmp eq ptr %11, null
  br i1 %12, label %1931, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %0, align 8, !tbaa !70
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 1
  %18 = load i32, ptr %17, align 8, !tbaa !71
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %1931

20:                                               ; preds = %16, %13
  %21 = load i32, ptr %7, align 8, !tbaa !46
  %22 = icmp eq i32 %21, 11
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i32 12, ptr %7, align 8, !tbaa !46
  br label %24

24:                                               ; preds = %20, %23
  %25 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 4
  %26 = load i32, ptr %25, align 8, !tbaa !72
  %27 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 1
  %28 = load i32, ptr %27, align 8, !tbaa !71
  %29 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 14
  %30 = load i64, ptr %29, align 8, !tbaa !51
  %31 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 15
  %32 = load i32, ptr %31, align 8, !tbaa !52
  %33 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 2
  %34 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 5
  %35 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 7
  %36 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 4
  %37 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 6
  %38 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 6
  %39 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 6
  %40 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 12
  %41 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 4
  %42 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 6
  %43 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 6
  %44 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 2
  %45 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 4
  %46 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 7
  %47 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 6
  %48 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 16
  %49 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 24
  %50 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 25
  %51 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 23
  %52 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 26
  %53 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 26
  %54 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 23
  %55 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 30
  %56 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 27
  %57 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 19
  %58 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 21
  %59 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 28
  %60 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 29
  %61 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 6
  %62 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 26
  %63 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 24
  %64 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 25
  %65 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 19
  %66 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 21
  %67 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 28
  %68 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 28, i64 256
  %69 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 30
  %70 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 27
  %71 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 19
  %72 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 21
  %73 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 29
  %74 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 6
  %75 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 20
  %76 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 22
  %77 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 6
  %78 = icmp eq i32 %1, 6
  %79 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 32
  %80 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 19
  %81 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 21
  %82 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 16
  %83 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 6
  %84 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 18
  %85 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 18
  %86 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 16
  %87 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 32
  %88 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 16
  %89 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 33
  %90 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 20
  %91 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 22
  %92 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 32
  %93 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 32
  %94 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 6
  %95 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 17
  %96 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 18
  %97 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 18
  %98 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 17
  %99 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 32
  %100 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 17
  %101 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 16
  %102 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 11
  %103 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 31
  %104 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 6
  %105 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 12
  %106 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 10
  %107 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 16
  %108 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 16
  %109 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 32
  %110 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 6
  %111 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 6
  %112 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 6
  %113 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 16
  %114 = icmp eq i32 %1, 6
  %115 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 16
  %116 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 6
  %117 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 12
  %118 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 3
  %119 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 6
  %120 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 12
  %121 = add i32 %1, -5
  %122 = icmp ult i32 %121, 2
  %123 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 1
  %124 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 6
  %125 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 19
  %126 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 21
  %127 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 20
  %128 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 22
  %129 = icmp eq i32 %1, 6
  %130 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 4
  %131 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 6
  %132 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 6
  %133 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 8
  %134 = getelementptr inbounds [4 x i8], ptr %3, i64 0, i64 1
  %135 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 6
  %136 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 8
  %137 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 4
  %138 = getelementptr inbounds [4 x i8], ptr %3, i64 0, i64 1
  %139 = getelementptr inbounds [4 x i8], ptr %3, i64 0, i64 2
  %140 = getelementptr inbounds [4 x i8], ptr %3, i64 0, i64 3
  %141 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 6
  %142 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 8
  %143 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 4
  %144 = getelementptr inbounds [4 x i8], ptr %3, i64 0, i64 1
  %145 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 6
  %146 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 4
  %147 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 16
  %148 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 8
  %149 = getelementptr inbounds [4 x i8], ptr %3, i64 0, i64 1
  %150 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 6
  %151 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 8
  %152 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 4
  %153 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 16
  %154 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 8
  %155 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 6
  %156 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 16
  %157 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 4
  %158 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 8
  %159 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 16
  %160 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 6
  %161 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 8
  %162 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 16
  %163 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 4
  %164 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 8
  %165 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 16
  %166 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 6
  %167 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 8
  %168 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 4
  %169 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 6
  %170 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 6
  %171 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 8
  %172 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 6
  %173 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 12
  %174 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 2
  %175 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 4
  %176 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 8
  %177 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 6
  %178 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 9
  %179 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 6
  %180 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 5
  %181 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 6
  %182 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 12
  %183 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 6
  %184 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 6
  %185 = getelementptr inbounds [4 x i8], ptr %3, i64 0, i64 1
  %186 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 6
  %187 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 25
  %188 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 24
  %189 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 13
  br label %190

190:                                              ; preds = %1652, %24
  %191 = phi ptr [ %14, %24 ], [ %1653, %1652 ]
  %192 = phi ptr [ %11, %24 ], [ %1654, %1652 ]
  %193 = phi i32 [ %28, %24 ], [ %1655, %1652 ]
  %194 = phi i32 [ %26, %24 ], [ %1656, %1652 ]
  %195 = phi i64 [ %30, %24 ], [ %1657, %1652 ]
  %196 = phi i32 [ %32, %24 ], [ %1658, %1652 ]
  %197 = phi i32 [ %26, %24 ], [ %1659, %1652 ]
  %198 = phi i32 [ 0, %24 ], [ %1660, %1652 ]
  %199 = load i32, ptr %7, align 8, !tbaa !46
  switch i32 %199, label %1930 [
    i32 0, label %212
    i32 1, label %208
    i32 2, label %333
    i32 3, label %379
    i32 4, label %426
    i32 5, label %481
    i32 6, label %534
    i32 7, label %588
    i32 8, label %642
    i32 9, label %204
    i32 10, label %716
    i32 11, label %726
    i32 12, label %731
    i32 13, label %777
    i32 14, label %816
    i32 15, label %821
    i32 16, label %200
    i32 17, label %879
    i32 18, label %948
    i32 19, label %1191
    i32 20, label %1197
    i32 21, label %1357
    i32 22, label %1405
    i32 23, label %1545
    i32 24, label %1592
    i32 25, label %1662
    i32 26, label %1669
    i32 27, label %1734
    i32 28, label %1844
    i32 29, label %1843
    i32 30, label %1931
  ]

200:                                              ; preds = %190
  %201 = icmp ult i32 %196, 14
  br i1 %201, label %202, label %858

202:                                              ; preds = %200
  %203 = zext nneg i32 %196 to i64
  br label %841

204:                                              ; preds = %190
  %205 = icmp ult i32 %196, 32
  br i1 %205, label %206, label %709

206:                                              ; preds = %204
  %207 = zext nneg i32 %196 to i64
  br label %694

208:                                              ; preds = %190
  %209 = icmp ult i32 %196, 16
  br i1 %209, label %210, label %304

210:                                              ; preds = %208
  %211 = zext nneg i32 %196 to i64
  br label %287

212:                                              ; preds = %190
  %213 = load i32, ptr %174, align 8, !tbaa !44
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %219, label %215

215:                                              ; preds = %212
  %216 = icmp ult i32 %196, 16
  br i1 %216, label %217, label %237

217:                                              ; preds = %215
  %218 = zext nneg i32 %196 to i64
  br label %220

219:                                              ; preds = %212
  store i32 12, ptr %7, align 8, !tbaa !46
  br label %1652

220:                                              ; preds = %217, %226
  %221 = phi i64 [ %218, %217 ], [ %233, %226 ]
  %222 = phi i64 [ %195, %217 ], [ %232, %226 ]
  %223 = phi i32 [ %193, %217 ], [ %227, %226 ]
  %224 = phi ptr [ %191, %217 ], [ %228, %226 ]
  %225 = icmp eq i32 %223, 0
  br i1 %225, label %1786, label %226

226:                                              ; preds = %220
  %227 = add i32 %223, -1
  %228 = getelementptr inbounds i8, ptr %224, i64 1
  %229 = load i8, ptr %224, align 1, !tbaa !65
  %230 = zext i8 %229 to i64
  %231 = shl nuw nsw i64 %230, %221
  %232 = add i64 %231, %222
  %233 = add nuw nsw i64 %221, 8
  %234 = icmp ult i64 %221, 8
  br i1 %234, label %220, label %235, !llvm.loop !73

235:                                              ; preds = %226
  %236 = trunc i64 %233 to i32
  br label %237

237:                                              ; preds = %235, %215
  %238 = phi ptr [ %191, %215 ], [ %228, %235 ]
  %239 = phi i32 [ %193, %215 ], [ %227, %235 ]
  %240 = phi i64 [ %195, %215 ], [ %232, %235 ]
  %241 = phi i32 [ %196, %215 ], [ %236, %235 ]
  %242 = and i32 %213, 2
  %243 = icmp ne i32 %242, 0
  %244 = icmp eq i64 %240, 35615
  %245 = select i1 %243, i1 %244, i1 false
  br i1 %245, label %246, label %249

246:                                              ; preds = %237
  %247 = call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #10
  store i64 %247, ptr %184, align 8, !tbaa !76
  store i8 31, ptr %3, align 1, !tbaa !65
  store i8 -117, ptr %185, align 1, !tbaa !65
  %248 = call i64 @crc32(i64 noundef %247, ptr noundef nonnull %3, i32 noundef 2) #10
  store i64 %248, ptr %184, align 8, !tbaa !76
  store i32 1, ptr %7, align 8, !tbaa !46
  br label %1652

249:                                              ; preds = %237
  store i32 0, ptr %175, align 8, !tbaa !77
  %250 = load ptr, ptr %176, align 8, !tbaa !50
  %251 = icmp eq ptr %250, null
  br i1 %251, label %254, label %252

252:                                              ; preds = %249
  %253 = getelementptr inbounds %struct.gz_header_s, ptr %250, i64 0, i32 12
  store i32 -1, ptr %253, align 8, !tbaa !78
  br label %254

254:                                              ; preds = %252, %249
  %255 = and i32 %213, 1
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %264, label %257

257:                                              ; preds = %254
  %258 = shl i64 %240, 8
  %259 = and i64 %258, 65280
  %260 = lshr i64 %240, 8
  %261 = add nuw nsw i64 %259, %260
  %262 = urem i64 %261, 31
  %263 = icmp eq i64 %262, 0
  br i1 %263, label %265, label %264

264:                                              ; preds = %257, %254
  store ptr @.str.1, ptr %183, align 8, !tbaa !66
  store i32 29, ptr %7, align 8, !tbaa !46
  br label %1652

265:                                              ; preds = %257
  %266 = and i64 %240, 15
  %267 = icmp eq i64 %266, 8
  br i1 %267, label %269, label %268

268:                                              ; preds = %265
  store ptr @.str.2, ptr %177, align 8, !tbaa !66
  store i32 29, ptr %7, align 8, !tbaa !46
  br label %1652

269:                                              ; preds = %265
  %270 = lshr i64 %240, 4
  %271 = add i32 %241, -4
  %272 = trunc i64 %270 to i32
  %273 = and i32 %272, 15
  %274 = add nuw nsw i32 %273, 8
  %275 = load i32, ptr %178, align 8, !tbaa !62
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %277, label %278

277:                                              ; preds = %269
  store i32 %274, ptr %178, align 8, !tbaa !62
  br label %281

278:                                              ; preds = %269
  %279 = icmp ugt i32 %274, %275
  br i1 %279, label %280, label %281

280:                                              ; preds = %278
  store ptr @.str.3, ptr %179, align 8, !tbaa !66
  store i32 29, ptr %7, align 8, !tbaa !46
  br label %1652

281:                                              ; preds = %278, %277
  %282 = shl nuw nsw i32 256, %273
  store i32 %282, ptr %180, align 4, !tbaa !49
  %283 = call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #10
  store i64 %283, ptr %181, align 8, !tbaa !76
  store i64 %283, ptr %182, align 8, !tbaa !45
  %284 = and i64 %240, 8192
  %285 = icmp eq i64 %284, 0
  %286 = select i1 %285, i32 11, i32 9
  store i32 %286, ptr %7, align 8, !tbaa !46
  br label %1652

287:                                              ; preds = %210, %293
  %288 = phi i64 [ %211, %210 ], [ %300, %293 ]
  %289 = phi i64 [ %195, %210 ], [ %299, %293 ]
  %290 = phi i32 [ %193, %210 ], [ %294, %293 ]
  %291 = phi ptr [ %191, %210 ], [ %295, %293 ]
  %292 = icmp eq i32 %290, 0
  br i1 %292, label %1796, label %293

293:                                              ; preds = %287
  %294 = add i32 %290, -1
  %295 = getelementptr inbounds i8, ptr %291, i64 1
  %296 = load i8, ptr %291, align 1, !tbaa !65
  %297 = zext i8 %296 to i64
  %298 = shl nuw nsw i64 %297, %288
  %299 = add i64 %298, %289
  %300 = add nuw nsw i64 %288, 8
  %301 = icmp ult i64 %288, 8
  br i1 %301, label %287, label %302, !llvm.loop !80

302:                                              ; preds = %293
  %303 = trunc i64 %300 to i32
  br label %304

304:                                              ; preds = %302, %208
  %305 = phi ptr [ %191, %208 ], [ %295, %302 ]
  %306 = phi i32 [ %193, %208 ], [ %294, %302 ]
  %307 = phi i64 [ %195, %208 ], [ %299, %302 ]
  %308 = phi i32 [ %196, %208 ], [ %303, %302 ]
  %309 = trunc i64 %307 to i32
  store i32 %309, ptr %130, align 8, !tbaa !77
  %310 = and i32 %309, 255
  %311 = icmp eq i32 %310, 8
  br i1 %311, label %313, label %312

312:                                              ; preds = %304
  store ptr @.str.2, ptr %131, align 8, !tbaa !66
  store i32 29, ptr %7, align 8, !tbaa !46
  br label %1652

313:                                              ; preds = %304
  %314 = and i32 %309, 57344
  %315 = icmp eq i32 %314, 0
  br i1 %315, label %317, label %316

316:                                              ; preds = %313
  store ptr @.str.4, ptr %132, align 8, !tbaa !66
  store i32 29, ptr %7, align 8, !tbaa !46
  br label %1652

317:                                              ; preds = %313
  %318 = load ptr, ptr %133, align 8, !tbaa !50
  %319 = icmp eq ptr %318, null
  br i1 %319, label %323, label %320

320:                                              ; preds = %317
  %321 = lshr i32 %309, 8
  %322 = and i32 %321, 1
  store i32 %322, ptr %318, align 8, !tbaa !81
  br label %323

323:                                              ; preds = %320, %317
  %324 = and i32 %309, 512
  %325 = icmp eq i32 %324, 0
  br i1 %325, label %332, label %326

326:                                              ; preds = %323
  %327 = trunc i64 %307 to i8
  store i8 %327, ptr %3, align 1, !tbaa !65
  %328 = lshr i64 %307, 8
  %329 = trunc i64 %328 to i8
  store i8 %329, ptr %134, align 1, !tbaa !65
  %330 = load i64, ptr %135, align 8, !tbaa !76
  %331 = call i64 @crc32(i64 noundef %330, ptr noundef nonnull %3, i32 noundef 2) #10
  store i64 %331, ptr %135, align 8, !tbaa !76
  br label %332

332:                                              ; preds = %323, %326
  store i32 2, ptr %7, align 8, !tbaa !46
  br label %333

333:                                              ; preds = %332, %190
  %334 = phi ptr [ %191, %190 ], [ %305, %332 ]
  %335 = phi i32 [ %193, %190 ], [ %306, %332 ]
  %336 = phi i64 [ %195, %190 ], [ 0, %332 ]
  %337 = phi i32 [ %196, %190 ], [ 0, %332 ]
  %338 = icmp ult i32 %337, 32
  br i1 %338, label %339, label %356

339:                                              ; preds = %333
  %340 = zext nneg i32 %337 to i64
  br label %341

341:                                              ; preds = %339, %347
  %342 = phi i64 [ %340, %339 ], [ %354, %347 ]
  %343 = phi i64 [ %336, %339 ], [ %353, %347 ]
  %344 = phi i32 [ %335, %339 ], [ %348, %347 ]
  %345 = phi ptr [ %334, %339 ], [ %349, %347 ]
  %346 = icmp eq i32 %344, 0
  br i1 %346, label %1794, label %347

347:                                              ; preds = %341
  %348 = add i32 %344, -1
  %349 = getelementptr inbounds i8, ptr %345, i64 1
  %350 = load i8, ptr %345, align 1, !tbaa !65
  %351 = zext i8 %350 to i64
  %352 = shl nuw nsw i64 %351, %342
  %353 = add i64 %352, %343
  %354 = add nuw nsw i64 %342, 8
  %355 = icmp ult i64 %342, 24
  br i1 %355, label %341, label %356, !llvm.loop !82

356:                                              ; preds = %347, %333
  %357 = phi ptr [ %334, %333 ], [ %349, %347 ]
  %358 = phi i32 [ %335, %333 ], [ %348, %347 ]
  %359 = phi i64 [ %336, %333 ], [ %353, %347 ]
  %360 = load ptr, ptr %136, align 8, !tbaa !50
  %361 = icmp eq ptr %360, null
  br i1 %361, label %364, label %362

362:                                              ; preds = %356
  %363 = getelementptr inbounds %struct.gz_header_s, ptr %360, i64 0, i32 1
  store i64 %359, ptr %363, align 8, !tbaa !83
  br label %364

364:                                              ; preds = %362, %356
  %365 = load i32, ptr %137, align 8, !tbaa !77
  %366 = and i32 %365, 512
  %367 = icmp eq i32 %366, 0
  br i1 %367, label %378, label %368

368:                                              ; preds = %364
  %369 = trunc i64 %359 to i8
  store i8 %369, ptr %3, align 1, !tbaa !65
  %370 = lshr i64 %359, 8
  %371 = trunc i64 %370 to i8
  store i8 %371, ptr %138, align 1, !tbaa !65
  %372 = lshr i64 %359, 16
  %373 = trunc i64 %372 to i8
  store i8 %373, ptr %139, align 1, !tbaa !65
  %374 = lshr i64 %359, 24
  %375 = trunc i64 %374 to i8
  store i8 %375, ptr %140, align 1, !tbaa !65
  %376 = load i64, ptr %141, align 8, !tbaa !76
  %377 = call i64 @crc32(i64 noundef %376, ptr noundef nonnull %3, i32 noundef 4) #10
  store i64 %377, ptr %141, align 8, !tbaa !76
  br label %378

378:                                              ; preds = %364, %368
  store i32 3, ptr %7, align 8, !tbaa !46
  br label %379

379:                                              ; preds = %378, %190
  %380 = phi ptr [ %191, %190 ], [ %357, %378 ]
  %381 = phi i32 [ %193, %190 ], [ %358, %378 ]
  %382 = phi i64 [ %195, %190 ], [ 0, %378 ]
  %383 = phi i32 [ %196, %190 ], [ 0, %378 ]
  %384 = icmp ult i32 %383, 16
  br i1 %384, label %385, label %402

385:                                              ; preds = %379
  %386 = zext nneg i32 %383 to i64
  br label %387

387:                                              ; preds = %385, %393
  %388 = phi i64 [ %386, %385 ], [ %400, %393 ]
  %389 = phi i64 [ %382, %385 ], [ %399, %393 ]
  %390 = phi i32 [ %381, %385 ], [ %394, %393 ]
  %391 = phi ptr [ %380, %385 ], [ %395, %393 ]
  %392 = icmp eq i32 %390, 0
  br i1 %392, label %1792, label %393

393:                                              ; preds = %387
  %394 = add i32 %390, -1
  %395 = getelementptr inbounds i8, ptr %391, i64 1
  %396 = load i8, ptr %391, align 1, !tbaa !65
  %397 = zext i8 %396 to i64
  %398 = shl nuw nsw i64 %397, %388
  %399 = add i64 %398, %389
  %400 = add nuw nsw i64 %388, 8
  %401 = icmp ult i64 %388, 8
  br i1 %401, label %387, label %402, !llvm.loop !84

402:                                              ; preds = %393, %379
  %403 = phi ptr [ %380, %379 ], [ %395, %393 ]
  %404 = phi i32 [ %381, %379 ], [ %394, %393 ]
  %405 = phi i64 [ %382, %379 ], [ %399, %393 ]
  %406 = load ptr, ptr %142, align 8, !tbaa !50
  %407 = icmp eq ptr %406, null
  br i1 %407, label %415, label %408

408:                                              ; preds = %402
  %409 = trunc i64 %405 to i32
  %410 = and i32 %409, 255
  %411 = getelementptr inbounds %struct.gz_header_s, ptr %406, i64 0, i32 2
  store i32 %410, ptr %411, align 8, !tbaa !85
  %412 = lshr i64 %405, 8
  %413 = trunc i64 %412 to i32
  %414 = getelementptr inbounds %struct.gz_header_s, ptr %406, i64 0, i32 3
  store i32 %413, ptr %414, align 4, !tbaa !86
  br label %415

415:                                              ; preds = %408, %402
  %416 = load i32, ptr %143, align 8, !tbaa !77
  %417 = and i32 %416, 512
  %418 = icmp eq i32 %417, 0
  br i1 %418, label %425, label %419

419:                                              ; preds = %415
  %420 = trunc i64 %405 to i8
  store i8 %420, ptr %3, align 1, !tbaa !65
  %421 = lshr i64 %405, 8
  %422 = trunc i64 %421 to i8
  store i8 %422, ptr %144, align 1, !tbaa !65
  %423 = load i64, ptr %145, align 8, !tbaa !76
  %424 = call i64 @crc32(i64 noundef %423, ptr noundef nonnull %3, i32 noundef 2) #10
  store i64 %424, ptr %145, align 8, !tbaa !76
  br label %425

425:                                              ; preds = %415, %419
  store i32 4, ptr %7, align 8, !tbaa !46
  br label %426

426:                                              ; preds = %190, %425
  %427 = phi ptr [ %191, %190 ], [ %403, %425 ]
  %428 = phi i32 [ %193, %190 ], [ %404, %425 ]
  %429 = phi i64 [ %195, %190 ], [ 0, %425 ]
  %430 = phi i32 [ %196, %190 ], [ 0, %425 ]
  %431 = load i32, ptr %146, align 8, !tbaa !77
  %432 = and i32 %431, 1024
  %433 = icmp eq i32 %432, 0
  br i1 %433, label %471, label %434

434:                                              ; preds = %426
  %435 = icmp ult i32 %430, 16
  br i1 %435, label %436, label %453

436:                                              ; preds = %434
  %437 = zext nneg i32 %430 to i64
  br label %438

438:                                              ; preds = %436, %444
  %439 = phi i64 [ %437, %436 ], [ %451, %444 ]
  %440 = phi i64 [ %429, %436 ], [ %450, %444 ]
  %441 = phi i32 [ %428, %436 ], [ %445, %444 ]
  %442 = phi ptr [ %427, %436 ], [ %446, %444 ]
  %443 = icmp eq i32 %441, 0
  br i1 %443, label %1790, label %444

444:                                              ; preds = %438
  %445 = add i32 %441, -1
  %446 = getelementptr inbounds i8, ptr %442, i64 1
  %447 = load i8, ptr %442, align 1, !tbaa !65
  %448 = zext i8 %447 to i64
  %449 = shl nuw nsw i64 %448, %439
  %450 = add i64 %449, %440
  %451 = add nuw nsw i64 %439, 8
  %452 = icmp ult i64 %439, 8
  br i1 %452, label %438, label %453, !llvm.loop !87

453:                                              ; preds = %444, %434
  %454 = phi ptr [ %427, %434 ], [ %446, %444 ]
  %455 = phi i32 [ %428, %434 ], [ %445, %444 ]
  %456 = phi i64 [ %429, %434 ], [ %450, %444 ]
  %457 = trunc i64 %456 to i32
  store i32 %457, ptr %147, align 4, !tbaa !88
  %458 = load ptr, ptr %148, align 8, !tbaa !50
  %459 = icmp eq ptr %458, null
  br i1 %459, label %462, label %460

460:                                              ; preds = %453
  %461 = getelementptr inbounds %struct.gz_header_s, ptr %458, i64 0, i32 5
  store i32 %457, ptr %461, align 8, !tbaa !89
  br label %462

462:                                              ; preds = %460, %453
  %463 = and i32 %431, 512
  %464 = icmp eq i32 %463, 0
  br i1 %464, label %476, label %465

465:                                              ; preds = %462
  %466 = trunc i64 %456 to i8
  store i8 %466, ptr %3, align 1, !tbaa !65
  %467 = lshr i64 %456, 8
  %468 = trunc i64 %467 to i8
  store i8 %468, ptr %149, align 1, !tbaa !65
  %469 = load i64, ptr %150, align 8, !tbaa !76
  %470 = call i64 @crc32(i64 noundef %469, ptr noundef nonnull %3, i32 noundef 2) #10
  store i64 %470, ptr %150, align 8, !tbaa !76
  br label %476

471:                                              ; preds = %426
  %472 = load ptr, ptr %151, align 8, !tbaa !50
  %473 = icmp eq ptr %472, null
  br i1 %473, label %476, label %474

474:                                              ; preds = %471
  %475 = getelementptr inbounds %struct.gz_header_s, ptr %472, i64 0, i32 4
  store ptr null, ptr %475, align 8, !tbaa !90
  br label %476

476:                                              ; preds = %465, %462, %471, %474
  %477 = phi ptr [ %427, %474 ], [ %427, %471 ], [ %454, %462 ], [ %454, %465 ]
  %478 = phi i32 [ %428, %474 ], [ %428, %471 ], [ %455, %462 ], [ %455, %465 ]
  %479 = phi i64 [ %429, %474 ], [ %429, %471 ], [ 0, %462 ], [ 0, %465 ]
  %480 = phi i32 [ %430, %474 ], [ %430, %471 ], [ 0, %462 ], [ 0, %465 ]
  store i32 5, ptr %7, align 8, !tbaa !46
  br label %481

481:                                              ; preds = %190, %476
  %482 = phi ptr [ %191, %190 ], [ %477, %476 ]
  %483 = phi i32 [ %193, %190 ], [ %478, %476 ]
  %484 = phi i64 [ %195, %190 ], [ %479, %476 ]
  %485 = phi i32 [ %196, %190 ], [ %480, %476 ]
  %486 = load i32, ptr %152, align 8, !tbaa !77
  %487 = and i32 %486, 1024
  %488 = icmp eq i32 %487, 0
  br i1 %488, label %531, label %489

489:                                              ; preds = %481
  %490 = load i32, ptr %153, align 4, !tbaa !88
  %491 = call i32 @llvm.umin.i32(i32 %490, i32 %483)
  %492 = icmp eq i32 %491, 0
  br i1 %492, label %526, label %493

493:                                              ; preds = %489
  %494 = load ptr, ptr %154, align 8, !tbaa !50
  %495 = icmp eq ptr %494, null
  br i1 %495, label %513, label %496

496:                                              ; preds = %493
  %497 = getelementptr inbounds %struct.gz_header_s, ptr %494, i64 0, i32 4
  %498 = load ptr, ptr %497, align 8, !tbaa !90
  %499 = icmp eq ptr %498, null
  br i1 %499, label %513, label %500

500:                                              ; preds = %496
  %501 = getelementptr inbounds %struct.gz_header_s, ptr %494, i64 0, i32 5
  %502 = load i32, ptr %501, align 8, !tbaa !89
  %503 = sub i32 %502, %490
  %504 = zext i32 %503 to i64
  %505 = getelementptr inbounds i8, ptr %498, i64 %504
  %506 = add i32 %503, %491
  %507 = getelementptr inbounds %struct.gz_header_s, ptr %494, i64 0, i32 6
  %508 = load i32, ptr %507, align 4, !tbaa !91
  %509 = icmp ugt i32 %506, %508
  %510 = sub i32 %508, %503
  %511 = select i1 %509, i32 %510, i32 %491
  %512 = zext i32 %511 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %505, ptr align 1 %482, i64 %512, i1 false)
  br label %513

513:                                              ; preds = %500, %496, %493
  %514 = load i32, ptr %152, align 8, !tbaa !77
  %515 = and i32 %514, 512
  %516 = icmp eq i32 %515, 0
  br i1 %516, label %520, label %517

517:                                              ; preds = %513
  %518 = load i64, ptr %155, align 8, !tbaa !76
  %519 = call i64 @crc32(i64 noundef %518, ptr noundef %482, i32 noundef %491) #10
  store i64 %519, ptr %155, align 8, !tbaa !76
  br label %520

520:                                              ; preds = %517, %513
  %521 = sub i32 %483, %491
  %522 = zext i32 %491 to i64
  %523 = getelementptr inbounds i8, ptr %482, i64 %522
  %524 = load i32, ptr %153, align 4, !tbaa !88
  %525 = sub i32 %524, %491
  store i32 %525, ptr %153, align 4, !tbaa !88
  br label %526

526:                                              ; preds = %520, %489
  %527 = phi ptr [ %523, %520 ], [ %482, %489 ]
  %528 = phi i32 [ %521, %520 ], [ %483, %489 ]
  %529 = load i32, ptr %153, align 4, !tbaa !88
  %530 = icmp eq i32 %529, 0
  br i1 %530, label %531, label %1844

531:                                              ; preds = %526, %481
  %532 = phi ptr [ %527, %526 ], [ %482, %481 ]
  %533 = phi i32 [ %528, %526 ], [ %483, %481 ]
  store i32 0, ptr %156, align 4, !tbaa !88
  store i32 6, ptr %7, align 8, !tbaa !46
  br label %534

534:                                              ; preds = %190, %531
  %535 = phi ptr [ %191, %190 ], [ %532, %531 ]
  %536 = phi i32 [ %193, %190 ], [ %533, %531 ]
  %537 = phi i64 [ %195, %190 ], [ %484, %531 ]
  %538 = phi i32 [ %196, %190 ], [ %485, %531 ]
  %539 = load i32, ptr %157, align 8, !tbaa !77
  %540 = and i32 %539, 2048
  %541 = icmp eq i32 %540, 0
  br i1 %541, label %580, label %542

542:                                              ; preds = %534
  %543 = icmp eq i32 %536, 0
  br i1 %543, label %1844, label %544

544:                                              ; preds = %542, %565
  %545 = phi i32 [ %546, %565 ], [ 0, %542 ]
  %546 = add nuw i32 %545, 1
  %547 = zext i32 %545 to i64
  %548 = getelementptr inbounds i8, ptr %535, i64 %547
  %549 = load i8, ptr %548, align 1, !tbaa !65
  %550 = load ptr, ptr %158, align 8, !tbaa !50
  %551 = icmp eq ptr %550, null
  br i1 %551, label %565, label %552

552:                                              ; preds = %544
  %553 = getelementptr inbounds %struct.gz_header_s, ptr %550, i64 0, i32 7
  %554 = load ptr, ptr %553, align 8, !tbaa !92
  %555 = icmp eq ptr %554, null
  br i1 %555, label %565, label %556

556:                                              ; preds = %552
  %557 = load i32, ptr %159, align 4, !tbaa !88
  %558 = getelementptr inbounds %struct.gz_header_s, ptr %550, i64 0, i32 8
  %559 = load i32, ptr %558, align 8, !tbaa !93
  %560 = icmp ult i32 %557, %559
  br i1 %560, label %561, label %565

561:                                              ; preds = %556
  %562 = add i32 %557, 1
  store i32 %562, ptr %159, align 4, !tbaa !88
  %563 = zext i32 %557 to i64
  %564 = getelementptr inbounds i8, ptr %554, i64 %563
  store i8 %549, ptr %564, align 1, !tbaa !65
  br label %565

565:                                              ; preds = %544, %552, %556, %561
  %566 = icmp ne i8 %549, 0
  %567 = icmp ult i32 %546, %536
  %568 = select i1 %566, i1 %567, i1 false
  br i1 %568, label %544, label %569, !llvm.loop !94

569:                                              ; preds = %565
  %570 = load i32, ptr %157, align 8, !tbaa !77
  %571 = and i32 %570, 512
  %572 = icmp eq i32 %571, 0
  br i1 %572, label %576, label %573

573:                                              ; preds = %569
  %574 = load i64, ptr %160, align 8, !tbaa !76
  %575 = call i64 @crc32(i64 noundef %574, ptr noundef %535, i32 noundef %546) #10
  store i64 %575, ptr %160, align 8, !tbaa !76
  br label %576

576:                                              ; preds = %573, %569
  %577 = sub i32 %536, %546
  %578 = zext i32 %546 to i64
  %579 = getelementptr inbounds i8, ptr %535, i64 %578
  br i1 %566, label %1844, label %585

580:                                              ; preds = %534
  %581 = load ptr, ptr %161, align 8, !tbaa !50
  %582 = icmp eq ptr %581, null
  br i1 %582, label %585, label %583

583:                                              ; preds = %580
  %584 = getelementptr inbounds %struct.gz_header_s, ptr %581, i64 0, i32 7
  store ptr null, ptr %584, align 8, !tbaa !92
  br label %585

585:                                              ; preds = %580, %583, %576
  %586 = phi ptr [ %579, %576 ], [ %535, %583 ], [ %535, %580 ]
  %587 = phi i32 [ %577, %576 ], [ %536, %583 ], [ %536, %580 ]
  store i32 0, ptr %162, align 4, !tbaa !88
  store i32 7, ptr %7, align 8, !tbaa !46
  br label %588

588:                                              ; preds = %190, %585
  %589 = phi ptr [ %191, %190 ], [ %586, %585 ]
  %590 = phi i32 [ %193, %190 ], [ %587, %585 ]
  %591 = phi i64 [ %195, %190 ], [ %537, %585 ]
  %592 = phi i32 [ %196, %190 ], [ %538, %585 ]
  %593 = load i32, ptr %163, align 8, !tbaa !77
  %594 = and i32 %593, 4096
  %595 = icmp eq i32 %594, 0
  br i1 %595, label %634, label %596

596:                                              ; preds = %588
  %597 = icmp eq i32 %590, 0
  br i1 %597, label %1844, label %598

598:                                              ; preds = %596, %619
  %599 = phi i32 [ %600, %619 ], [ 0, %596 ]
  %600 = add nuw i32 %599, 1
  %601 = zext i32 %599 to i64
  %602 = getelementptr inbounds i8, ptr %589, i64 %601
  %603 = load i8, ptr %602, align 1, !tbaa !65
  %604 = load ptr, ptr %164, align 8, !tbaa !50
  %605 = icmp eq ptr %604, null
  br i1 %605, label %619, label %606

606:                                              ; preds = %598
  %607 = getelementptr inbounds %struct.gz_header_s, ptr %604, i64 0, i32 9
  %608 = load ptr, ptr %607, align 8, !tbaa !95
  %609 = icmp eq ptr %608, null
  br i1 %609, label %619, label %610

610:                                              ; preds = %606
  %611 = load i32, ptr %165, align 4, !tbaa !88
  %612 = getelementptr inbounds %struct.gz_header_s, ptr %604, i64 0, i32 10
  %613 = load i32, ptr %612, align 8, !tbaa !96
  %614 = icmp ult i32 %611, %613
  br i1 %614, label %615, label %619

615:                                              ; preds = %610
  %616 = add i32 %611, 1
  store i32 %616, ptr %165, align 4, !tbaa !88
  %617 = zext i32 %611 to i64
  %618 = getelementptr inbounds i8, ptr %608, i64 %617
  store i8 %603, ptr %618, align 1, !tbaa !65
  br label %619

619:                                              ; preds = %598, %606, %610, %615
  %620 = icmp ne i8 %603, 0
  %621 = icmp ult i32 %600, %590
  %622 = select i1 %620, i1 %621, i1 false
  br i1 %622, label %598, label %623, !llvm.loop !97

623:                                              ; preds = %619
  %624 = load i32, ptr %163, align 8, !tbaa !77
  %625 = and i32 %624, 512
  %626 = icmp eq i32 %625, 0
  br i1 %626, label %630, label %627

627:                                              ; preds = %623
  %628 = load i64, ptr %166, align 8, !tbaa !76
  %629 = call i64 @crc32(i64 noundef %628, ptr noundef %589, i32 noundef %600) #10
  store i64 %629, ptr %166, align 8, !tbaa !76
  br label %630

630:                                              ; preds = %627, %623
  %631 = sub i32 %590, %600
  %632 = zext i32 %600 to i64
  %633 = getelementptr inbounds i8, ptr %589, i64 %632
  br i1 %620, label %1844, label %639

634:                                              ; preds = %588
  %635 = load ptr, ptr %167, align 8, !tbaa !50
  %636 = icmp eq ptr %635, null
  br i1 %636, label %639, label %637

637:                                              ; preds = %634
  %638 = getelementptr inbounds %struct.gz_header_s, ptr %635, i64 0, i32 9
  store ptr null, ptr %638, align 8, !tbaa !95
  br label %639

639:                                              ; preds = %634, %637, %630
  %640 = phi ptr [ %633, %630 ], [ %589, %637 ], [ %589, %634 ]
  %641 = phi i32 [ %631, %630 ], [ %590, %637 ], [ %590, %634 ]
  store i32 8, ptr %7, align 8, !tbaa !46
  br label %642

642:                                              ; preds = %190, %639
  %643 = phi ptr [ %191, %190 ], [ %640, %639 ]
  %644 = phi i32 [ %193, %190 ], [ %641, %639 ]
  %645 = phi i64 [ %195, %190 ], [ %591, %639 ]
  %646 = phi i32 [ %196, %190 ], [ %592, %639 ]
  %647 = load i32, ptr %168, align 8, !tbaa !77
  %648 = and i32 %647, 512
  %649 = icmp eq i32 %648, 0
  br i1 %649, label %680, label %650

650:                                              ; preds = %642
  %651 = icmp ult i32 %646, 16
  br i1 %651, label %652, label %671

652:                                              ; preds = %650
  %653 = zext nneg i32 %646 to i64
  br label %654

654:                                              ; preds = %652, %660
  %655 = phi i64 [ %653, %652 ], [ %667, %660 ]
  %656 = phi i64 [ %645, %652 ], [ %666, %660 ]
  %657 = phi i32 [ %644, %652 ], [ %661, %660 ]
  %658 = phi ptr [ %643, %652 ], [ %662, %660 ]
  %659 = icmp eq i32 %657, 0
  br i1 %659, label %1788, label %660

660:                                              ; preds = %654
  %661 = add i32 %657, -1
  %662 = getelementptr inbounds i8, ptr %658, i64 1
  %663 = load i8, ptr %658, align 1, !tbaa !65
  %664 = zext i8 %663 to i64
  %665 = shl nuw nsw i64 %664, %655
  %666 = add i64 %665, %656
  %667 = add nuw nsw i64 %655, 8
  %668 = icmp ult i64 %655, 8
  br i1 %668, label %654, label %669, !llvm.loop !98

669:                                              ; preds = %660
  %670 = trunc i64 %667 to i32
  br label %671

671:                                              ; preds = %669, %650
  %672 = phi ptr [ %643, %650 ], [ %662, %669 ]
  %673 = phi i32 [ %644, %650 ], [ %661, %669 ]
  %674 = phi i64 [ %645, %650 ], [ %666, %669 ]
  %675 = phi i32 [ %646, %650 ], [ %670, %669 ]
  %676 = load i64, ptr %169, align 8, !tbaa !76
  %677 = and i64 %676, 65535
  %678 = icmp eq i64 %674, %677
  br i1 %678, label %680, label %679

679:                                              ; preds = %671
  store ptr @.str.5, ptr %170, align 8, !tbaa !66
  store i32 29, ptr %7, align 8, !tbaa !46
  br label %1652

680:                                              ; preds = %671, %642
  %681 = phi ptr [ %643, %642 ], [ %672, %671 ]
  %682 = phi i32 [ %644, %642 ], [ %673, %671 ]
  %683 = phi i64 [ %645, %642 ], [ 0, %671 ]
  %684 = phi i32 [ %646, %642 ], [ 0, %671 ]
  %685 = load ptr, ptr %171, align 8, !tbaa !50
  %686 = icmp eq ptr %685, null
  br i1 %686, label %692, label %687

687:                                              ; preds = %680
  %688 = lshr i32 %647, 9
  %689 = and i32 %688, 1
  %690 = getelementptr inbounds %struct.gz_header_s, ptr %685, i64 0, i32 11
  store i32 %689, ptr %690, align 4, !tbaa !99
  %691 = getelementptr inbounds %struct.gz_header_s, ptr %685, i64 0, i32 12
  store i32 1, ptr %691, align 8, !tbaa !78
  br label %692

692:                                              ; preds = %687, %680
  %693 = call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #10
  store i64 %693, ptr %172, align 8, !tbaa !76
  store i64 %693, ptr %173, align 8, !tbaa !45
  store i32 11, ptr %7, align 8, !tbaa !46
  br label %1652

694:                                              ; preds = %206, %700
  %695 = phi i64 [ %207, %206 ], [ %707, %700 ]
  %696 = phi i64 [ %195, %206 ], [ %706, %700 ]
  %697 = phi i32 [ %193, %206 ], [ %701, %700 ]
  %698 = phi ptr [ %191, %206 ], [ %702, %700 ]
  %699 = icmp eq i32 %697, 0
  br i1 %699, label %1798, label %700

700:                                              ; preds = %694
  %701 = add i32 %697, -1
  %702 = getelementptr inbounds i8, ptr %698, i64 1
  %703 = load i8, ptr %698, align 1, !tbaa !65
  %704 = zext i8 %703 to i64
  %705 = shl nuw nsw i64 %704, %695
  %706 = add i64 %705, %696
  %707 = add nuw nsw i64 %695, 8
  %708 = icmp ult i64 %695, 24
  br i1 %708, label %694, label %709, !llvm.loop !100

709:                                              ; preds = %700, %204
  %710 = phi ptr [ %191, %204 ], [ %702, %700 ]
  %711 = phi i32 [ %193, %204 ], [ %701, %700 ]
  %712 = phi i64 [ %195, %204 ], [ %706, %700 ]
  %713 = trunc i64 %712 to i32
  %714 = call i32 @llvm.bswap.i32(i32 %713)
  %715 = zext i32 %714 to i64
  store i64 %715, ptr %116, align 8, !tbaa !76
  store i64 %715, ptr %117, align 8, !tbaa !45
  store i32 10, ptr %7, align 8, !tbaa !46
  br label %716

716:                                              ; preds = %190, %709
  %717 = phi ptr [ %191, %190 ], [ %710, %709 ]
  %718 = phi i32 [ %193, %190 ], [ %711, %709 ]
  %719 = phi i64 [ %195, %190 ], [ 0, %709 ]
  %720 = phi i32 [ %196, %190 ], [ 0, %709 ]
  %721 = load i32, ptr %118, align 4, !tbaa !48
  %722 = icmp eq i32 %721, 0
  br i1 %722, label %723, label %724

723:                                              ; preds = %716
  store ptr %192, ptr %10, align 8, !tbaa !69
  store i32 %194, ptr %25, align 8, !tbaa !72
  store ptr %717, ptr %0, align 8, !tbaa !70
  store i32 %718, ptr %27, align 8, !tbaa !71
  store i64 %719, ptr %29, align 8, !tbaa !51
  store i32 %720, ptr %31, align 8, !tbaa !52
  br label %1931

724:                                              ; preds = %716
  %725 = call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #10
  store i64 %725, ptr %119, align 8, !tbaa !76
  store i64 %725, ptr %120, align 8, !tbaa !45
  store i32 11, ptr %7, align 8, !tbaa !46
  br label %726

726:                                              ; preds = %190, %724
  %727 = phi ptr [ %191, %190 ], [ %717, %724 ]
  %728 = phi i32 [ %193, %190 ], [ %718, %724 ]
  %729 = phi i64 [ %195, %190 ], [ %719, %724 ]
  %730 = phi i32 [ %196, %190 ], [ %720, %724 ]
  br i1 %122, label %1844, label %731

731:                                              ; preds = %726, %190
  %732 = phi ptr [ %191, %190 ], [ %727, %726 ]
  %733 = phi i32 [ %193, %190 ], [ %728, %726 ]
  %734 = phi i64 [ %195, %190 ], [ %729, %726 ]
  %735 = phi i32 [ %196, %190 ], [ %730, %726 ]
  %736 = load i32, ptr %123, align 4, !tbaa !47
  %737 = icmp eq i32 %736, 0
  br i1 %737, label %738, label %742

738:                                              ; preds = %731
  %739 = icmp ult i32 %735, 3
  br i1 %739, label %740, label %756

740:                                              ; preds = %738
  %741 = icmp eq i32 %733, 0
  br i1 %741, label %1844, label %747

742:                                              ; preds = %731
  %743 = and i32 %735, 7
  %744 = zext nneg i32 %743 to i64
  %745 = lshr i64 %734, %744
  %746 = and i32 %735, -8
  store i32 26, ptr %7, align 8, !tbaa !46
  br label %1652

747:                                              ; preds = %740
  %748 = or disjoint i32 %735, 8
  %749 = add i32 %733, -1
  %750 = getelementptr inbounds i8, ptr %732, i64 1
  %751 = load i8, ptr %732, align 1, !tbaa !65
  %752 = zext i8 %751 to i64
  %753 = zext nneg i32 %735 to i64
  %754 = shl nuw nsw i64 %752, %753
  %755 = add i64 %754, %734
  br label %756

756:                                              ; preds = %747, %738
  %757 = phi ptr [ %750, %747 ], [ %732, %738 ]
  %758 = phi i32 [ %749, %747 ], [ %733, %738 ]
  %759 = phi i64 [ %755, %747 ], [ %734, %738 ]
  %760 = phi i32 [ %748, %747 ], [ %735, %738 ]
  %761 = trunc i64 %759 to i32
  %762 = and i32 %761, 1
  store i32 %762, ptr %123, align 4, !tbaa !47
  %763 = lshr i32 %761, 1
  %764 = and i32 %763, 3
  switch i32 %764, label %771 [
    i32 0, label %772
    i32 1, label %765
    i32 2, label %769
    i32 3, label %770
  ]

765:                                              ; preds = %756
  store ptr @fixedtables.lenfix, ptr %125, align 8, !tbaa !55
  store i32 9, ptr %126, align 8, !tbaa !101
  store ptr @fixedtables.distfix, ptr %127, align 8, !tbaa !54
  store i32 5, ptr %128, align 4, !tbaa !102
  store i32 19, ptr %7, align 8, !tbaa !46
  br i1 %129, label %766, label %774

766:                                              ; preds = %765
  %767 = lshr i64 %759, 3
  %768 = add i32 %760, -3
  br label %1844

769:                                              ; preds = %756
  br label %772

770:                                              ; preds = %756
  store ptr @.str.6, ptr %124, align 8, !tbaa !66
  br label %772

771:                                              ; preds = %756
  unreachable

772:                                              ; preds = %756, %770, %769
  %773 = phi i32 [ 16, %769 ], [ 29, %770 ], [ 13, %756 ]
  store i32 %773, ptr %7, align 8, !tbaa !46
  br label %774

774:                                              ; preds = %772, %765
  %775 = lshr i64 %759, 3
  %776 = add i32 %760, -3
  br label %1652

777:                                              ; preds = %190
  %778 = and i32 %196, 7
  %779 = zext nneg i32 %778 to i64
  %780 = lshr i64 %195, %779
  %781 = and i32 %196, -8
  %782 = icmp ult i32 %781, 32
  br i1 %782, label %783, label %803

783:                                              ; preds = %777
  %784 = and i32 %196, -8
  %785 = zext i32 %784 to i64
  br label %786

786:                                              ; preds = %783, %792
  %787 = phi i64 [ %785, %783 ], [ %799, %792 ]
  %788 = phi i64 [ %780, %783 ], [ %798, %792 ]
  %789 = phi i32 [ %193, %783 ], [ %793, %792 ]
  %790 = phi ptr [ %191, %783 ], [ %794, %792 ]
  %791 = icmp eq i32 %789, 0
  br i1 %791, label %1800, label %792

792:                                              ; preds = %786
  %793 = add i32 %789, -1
  %794 = getelementptr inbounds i8, ptr %790, i64 1
  %795 = load i8, ptr %790, align 1, !tbaa !65
  %796 = zext i8 %795 to i64
  %797 = shl nuw nsw i64 %796, %787
  %798 = add i64 %797, %788
  %799 = add nuw nsw i64 %787, 8
  %800 = icmp ult i64 %787, 24
  br i1 %800, label %786, label %801, !llvm.loop !103

801:                                              ; preds = %792
  %802 = trunc i64 %799 to i32
  br label %803

803:                                              ; preds = %801, %777
  %804 = phi ptr [ %191, %777 ], [ %794, %801 ]
  %805 = phi i32 [ %193, %777 ], [ %793, %801 ]
  %806 = phi i64 [ %780, %777 ], [ %798, %801 ]
  %807 = phi i32 [ %781, %777 ], [ %802, %801 ]
  %808 = and i64 %806, 65535
  %809 = lshr i64 %806, 16
  %810 = xor i64 %809, %808
  %811 = icmp eq i64 %810, 65535
  br i1 %811, label %813, label %812

812:                                              ; preds = %803
  store ptr @.str.7, ptr %112, align 8, !tbaa !66
  store i32 29, ptr %7, align 8, !tbaa !46
  br label %1652

813:                                              ; preds = %803
  %814 = trunc i64 %806 to i32
  %815 = and i32 %814, 65535
  store i32 %815, ptr %113, align 4, !tbaa !88
  store i32 14, ptr %7, align 8, !tbaa !46
  br i1 %114, label %1844, label %816

816:                                              ; preds = %813, %190
  %817 = phi ptr [ %191, %190 ], [ %804, %813 ]
  %818 = phi i32 [ %193, %190 ], [ %805, %813 ]
  %819 = phi i64 [ %195, %190 ], [ 0, %813 ]
  %820 = phi i32 [ %196, %190 ], [ 0, %813 ]
  store i32 15, ptr %7, align 8, !tbaa !46
  br label %821

821:                                              ; preds = %190, %816
  %822 = phi ptr [ %191, %190 ], [ %817, %816 ]
  %823 = phi i32 [ %193, %190 ], [ %818, %816 ]
  %824 = phi i64 [ %195, %190 ], [ %819, %816 ]
  %825 = phi i32 [ %196, %190 ], [ %820, %816 ]
  %826 = load i32, ptr %115, align 4, !tbaa !88
  %827 = icmp eq i32 %826, 0
  br i1 %827, label %840, label %828

828:                                              ; preds = %821
  %829 = call i32 @llvm.umin.i32(i32 %826, i32 %823)
  %830 = call i32 @llvm.umin.i32(i32 %829, i32 %194)
  %831 = icmp eq i32 %830, 0
  br i1 %831, label %1844, label %832

832:                                              ; preds = %828
  %833 = zext i32 %830 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %192, ptr align 1 %822, i64 %833, i1 false)
  %834 = sub i32 %823, %830
  %835 = getelementptr inbounds i8, ptr %822, i64 %833
  %836 = sub i32 %194, %830
  %837 = getelementptr inbounds i8, ptr %192, i64 %833
  %838 = load i32, ptr %115, align 4, !tbaa !88
  %839 = sub i32 %838, %830
  store i32 %839, ptr %115, align 4, !tbaa !88
  br label %1652

840:                                              ; preds = %821
  store i32 11, ptr %7, align 8, !tbaa !46
  br label %1652

841:                                              ; preds = %202, %847
  %842 = phi i64 [ %203, %202 ], [ %854, %847 ]
  %843 = phi i64 [ %195, %202 ], [ %853, %847 ]
  %844 = phi i32 [ %193, %202 ], [ %848, %847 ]
  %845 = phi ptr [ %191, %202 ], [ %849, %847 ]
  %846 = icmp eq i32 %844, 0
  br i1 %846, label %1802, label %847

847:                                              ; preds = %841
  %848 = add i32 %844, -1
  %849 = getelementptr inbounds i8, ptr %845, i64 1
  %850 = load i8, ptr %845, align 1, !tbaa !65
  %851 = zext i8 %850 to i64
  %852 = shl nuw nsw i64 %851, %842
  %853 = add i64 %852, %843
  %854 = add nuw nsw i64 %842, 8
  %855 = icmp ult i64 %842, 6
  br i1 %855, label %841, label %856, !llvm.loop !104

856:                                              ; preds = %847
  %857 = trunc i64 %854 to i32
  br label %858

858:                                              ; preds = %856, %200
  %859 = phi ptr [ %191, %200 ], [ %849, %856 ]
  %860 = phi i32 [ %193, %200 ], [ %848, %856 ]
  %861 = phi i64 [ %195, %200 ], [ %853, %856 ]
  %862 = phi i32 [ %196, %200 ], [ %857, %856 ]
  %863 = trunc i64 %861 to i32
  %864 = and i32 %863, 31
  %865 = add nuw nsw i32 %864, 257
  store i32 %865, ptr %49, align 4, !tbaa !105
  %866 = lshr i32 %863, 5
  %867 = and i32 %866, 31
  %868 = add nuw nsw i32 %867, 1
  store i32 %868, ptr %50, align 8, !tbaa !106
  %869 = lshr i32 %863, 10
  %870 = and i32 %869, 15
  %871 = add nuw nsw i32 %870, 4
  store i32 %871, ptr %51, align 8, !tbaa !107
  %872 = lshr i64 %861, 14
  %873 = add i32 %862, -14
  %874 = icmp ugt i32 %864, 29
  %875 = icmp ugt i32 %867, 29
  %876 = or i1 %874, %875
  br i1 %876, label %877, label %878

877:                                              ; preds = %858
  store ptr @.str.8, ptr %111, align 8, !tbaa !66
  store i32 29, ptr %7, align 8, !tbaa !46
  br label %1652

878:                                              ; preds = %858
  store i32 0, ptr %52, align 4, !tbaa !108
  store i32 17, ptr %7, align 8, !tbaa !46
  br label %879

879:                                              ; preds = %190, %878
  %880 = phi ptr [ %191, %190 ], [ %859, %878 ]
  %881 = phi i32 [ %193, %190 ], [ %860, %878 ]
  %882 = phi i64 [ %195, %190 ], [ %872, %878 ]
  %883 = phi i32 [ %196, %190 ], [ %873, %878 ]
  %884 = load i32, ptr %54, align 8, !tbaa !107
  %885 = load i32, ptr %53, align 4, !tbaa !108
  %886 = icmp ult i32 %885, %884
  br i1 %886, label %887, label %890

887:                                              ; preds = %879
  %888 = zext i32 %885 to i64
  %889 = zext i32 %884 to i64
  br label %899

890:                                              ; preds = %917, %879
  %891 = phi ptr [ %880, %879 ], [ %918, %917 ]
  %892 = phi i32 [ %881, %879 ], [ %919, %917 ]
  %893 = phi i64 [ %882, %879 ], [ %930, %917 ]
  %894 = phi i32 [ %883, %879 ], [ %931, %917 ]
  %895 = load i32, ptr %53, align 4, !tbaa !108
  %896 = icmp ult i32 %895, 19
  br i1 %896, label %897, label %943

897:                                              ; preds = %890
  %898 = zext nneg i32 %895 to i64
  br label %933

899:                                              ; preds = %887, %917
  %900 = phi i64 [ %888, %887 ], [ %924, %917 ]
  %901 = phi i32 [ %883, %887 ], [ %931, %917 ]
  %902 = phi i64 [ %882, %887 ], [ %930, %917 ]
  %903 = phi i32 [ %881, %887 ], [ %919, %917 ]
  %904 = phi ptr [ %880, %887 ], [ %918, %917 ]
  %905 = icmp ult i32 %901, 3
  br i1 %905, label %906, label %917

906:                                              ; preds = %899
  %907 = icmp eq i32 %903, 0
  br i1 %907, label %1844, label %908

908:                                              ; preds = %906
  %909 = or disjoint i32 %901, 8
  %910 = add i32 %903, -1
  %911 = getelementptr inbounds i8, ptr %904, i64 1
  %912 = load i8, ptr %904, align 1, !tbaa !65
  %913 = zext i8 %912 to i64
  %914 = zext nneg i32 %901 to i64
  %915 = shl nuw nsw i64 %913, %914
  %916 = add i64 %915, %902
  br label %917

917:                                              ; preds = %908, %899
  %918 = phi ptr [ %911, %908 ], [ %904, %899 ]
  %919 = phi i32 [ %910, %908 ], [ %903, %899 ]
  %920 = phi i64 [ %916, %908 ], [ %902, %899 ]
  %921 = phi i32 [ %909, %908 ], [ %901, %899 ]
  %922 = trunc i64 %920 to i16
  %923 = and i16 %922, 7
  %924 = add nuw nsw i64 %900, 1
  %925 = trunc i64 %924 to i32
  store i32 %925, ptr %53, align 4, !tbaa !108
  %926 = getelementptr inbounds [19 x i16], ptr @inflate.order, i64 0, i64 %900
  %927 = load i16, ptr %926, align 2, !tbaa !109
  %928 = zext i16 %927 to i64
  %929 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 28, i64 %928
  store i16 %923, ptr %929, align 2, !tbaa !109
  %930 = lshr i64 %920, 3
  %931 = add i32 %921, -3
  %932 = icmp eq i64 %924, %889
  br i1 %932, label %890, label %899, !llvm.loop !111

933:                                              ; preds = %897, %933
  %934 = phi i64 [ %898, %897 ], [ %935, %933 ]
  %935 = add nuw nsw i64 %934, 1
  %936 = getelementptr inbounds [19 x i16], ptr @inflate.order, i64 0, i64 %934
  %937 = load i16, ptr %936, align 2, !tbaa !109
  %938 = zext i16 %937 to i64
  %939 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 28, i64 %938
  store i16 0, ptr %939, align 2, !tbaa !109
  %940 = and i64 %935, 4294967295
  %941 = icmp eq i64 %940, 19
  br i1 %941, label %942, label %933, !llvm.loop !112

942:                                              ; preds = %933
  store i32 19, ptr %53, align 4, !tbaa !108
  br label %943

943:                                              ; preds = %942, %890
  store ptr %55, ptr %56, align 8, !tbaa !53
  store ptr %55, ptr %57, align 8, !tbaa !55
  store i32 7, ptr %58, align 8, !tbaa !101
  %944 = call i32 @inflate_table(i32 noundef 0, ptr noundef nonnull %59, i32 noundef 19, ptr noundef nonnull %56, ptr noundef nonnull %58, ptr noundef nonnull %60) #10
  %945 = icmp eq i32 %944, 0
  br i1 %945, label %947, label %946

946:                                              ; preds = %943
  store ptr @.str.9, ptr %61, align 8, !tbaa !66
  store i32 29, ptr %7, align 8, !tbaa !46
  br label %1652

947:                                              ; preds = %943
  store i32 0, ptr %53, align 4, !tbaa !108
  store i32 18, ptr %7, align 8, !tbaa !46
  br label %948

948:                                              ; preds = %190, %947
  %949 = phi ptr [ %191, %190 ], [ %891, %947 ]
  %950 = phi i32 [ %193, %190 ], [ %892, %947 ]
  %951 = phi i64 [ %195, %190 ], [ %893, %947 ]
  %952 = phi i32 [ %196, %190 ], [ %894, %947 ]
  %953 = phi i32 [ %198, %190 ], [ 0, %947 ]
  %954 = load i32, ptr %63, align 4, !tbaa !105
  %955 = load i32, ptr %64, align 8, !tbaa !106
  %956 = add i32 %955, %954
  %957 = load i32, ptr %62, align 4, !tbaa !108
  %958 = icmp ult i32 %957, %956
  br i1 %958, label %959, label %1166

959:                                              ; preds = %948
  %960 = load ptr, ptr %65, align 8, !tbaa !55
  %961 = load i32, ptr %66, align 8, !tbaa !101
  %962 = shl nsw i32 -1, %961
  %963 = xor i32 %962, -1
  br label %964

964:                                              ; preds = %959, %1154
  %965 = phi i32 [ %952, %959 ], [ %1159, %1154 ]
  %966 = phi i64 [ %951, %959 ], [ %1158, %1154 ]
  %967 = phi i32 [ %950, %959 ], [ %1157, %1154 ]
  %968 = phi ptr [ %949, %959 ], [ %1156, %1154 ]
  %969 = phi i32 [ %957, %959 ], [ %1155, %1154 ]
  %970 = trunc i64 %966 to i32
  %971 = and i32 %963, %970
  %972 = zext nneg i32 %971 to i64
  %973 = getelementptr inbounds %struct.code, ptr %960, i64 %972, i32 1
  %974 = load i8, ptr %973, align 1, !tbaa.struct !113
  %975 = zext i8 %974 to i32
  %976 = icmp ult i32 %965, %975
  br i1 %976, label %977, label %1003

977:                                              ; preds = %964
  %978 = zext i32 %965 to i64
  br label %979

979:                                              ; preds = %977, %985
  %980 = phi i64 [ %978, %977 ], [ %992, %985 ]
  %981 = phi i64 [ %966, %977 ], [ %991, %985 ]
  %982 = phi i32 [ %967, %977 ], [ %986, %985 ]
  %983 = phi ptr [ %968, %977 ], [ %987, %985 ]
  %984 = icmp eq i32 %982, 0
  br i1 %984, label %1808, label %985

985:                                              ; preds = %979
  %986 = add i32 %982, -1
  %987 = getelementptr inbounds i8, ptr %983, i64 1
  %988 = load i8, ptr %983, align 1, !tbaa !65
  %989 = zext i8 %988 to i64
  %990 = shl i64 %989, %980
  %991 = add i64 %990, %981
  %992 = add nuw nsw i64 %980, 8
  %993 = trunc i64 %991 to i32
  %994 = and i32 %963, %993
  %995 = zext nneg i32 %994 to i64
  %996 = getelementptr inbounds %struct.code, ptr %960, i64 %995, i32 1
  %997 = load i8, ptr %996, align 1, !tbaa.struct !113
  %998 = zext i8 %997 to i64
  %999 = icmp ult i64 %992, %998
  br i1 %999, label %979, label %1000, !llvm.loop !114

1000:                                             ; preds = %985
  %1001 = zext i8 %997 to i32
  %1002 = trunc i64 %992 to i32
  br label %1003

1003:                                             ; preds = %1000, %964
  %1004 = phi i64 [ %972, %964 ], [ %995, %1000 ]
  %1005 = phi i32 [ %975, %964 ], [ %1001, %1000 ]
  %1006 = phi ptr [ %968, %964 ], [ %987, %1000 ]
  %1007 = phi i32 [ %967, %964 ], [ %986, %1000 ]
  %1008 = phi i64 [ %966, %964 ], [ %991, %1000 ]
  %1009 = phi i32 [ %965, %964 ], [ %1002, %1000 ]
  %1010 = phi i8 [ %974, %964 ], [ %997, %1000 ]
  %1011 = getelementptr inbounds %struct.code, ptr %960, i64 %1004, i32 2
  %1012 = load i16, ptr %1011, align 2, !tbaa.struct !115
  %1013 = icmp ult i16 %1012, 16
  br i1 %1013, label %1014, label %1021

1014:                                             ; preds = %1003
  %1015 = zext nneg i8 %1010 to i64
  %1016 = lshr i64 %1008, %1015
  %1017 = sub i32 %1009, %1005
  %1018 = add i32 %969, 1
  store i32 %1018, ptr %62, align 4, !tbaa !108
  %1019 = zext i32 %969 to i64
  %1020 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 28, i64 %1019
  store i16 %1012, ptr %1020, align 2, !tbaa !109
  br label %1154

1021:                                             ; preds = %1003
  switch i16 %1012, label %1034 [
    i16 16, label %1028
    i16 17, label %1022
  ]

1022:                                             ; preds = %1021
  %1023 = add nuw nsw i32 %1005, 3
  %1024 = icmp ult i32 %1009, %1023
  br i1 %1024, label %1025, label %1093

1025:                                             ; preds = %1022
  %1026 = zext i32 %1009 to i64
  %1027 = zext nneg i32 %1023 to i64
  br label %1076

1028:                                             ; preds = %1021
  %1029 = add nuw nsw i32 %1005, 2
  %1030 = icmp ult i32 %1009, %1029
  br i1 %1030, label %1031, label %1057

1031:                                             ; preds = %1028
  %1032 = zext i32 %1009 to i64
  %1033 = zext nneg i32 %1029 to i64
  br label %1040

1034:                                             ; preds = %1021
  %1035 = add nuw nsw i32 %1005, 7
  %1036 = icmp ult i32 %1009, %1035
  br i1 %1036, label %1037, label %1123

1037:                                             ; preds = %1034
  %1038 = zext i32 %1009 to i64
  %1039 = zext nneg i32 %1035 to i64
  br label %1106

1040:                                             ; preds = %1031, %1046
  %1041 = phi i64 [ %1032, %1031 ], [ %1053, %1046 ]
  %1042 = phi i64 [ %1008, %1031 ], [ %1052, %1046 ]
  %1043 = phi i32 [ %1007, %1031 ], [ %1047, %1046 ]
  %1044 = phi ptr [ %1006, %1031 ], [ %1048, %1046 ]
  %1045 = icmp eq i32 %1043, 0
  br i1 %1045, label %1782, label %1046

1046:                                             ; preds = %1040
  %1047 = add i32 %1043, -1
  %1048 = getelementptr inbounds i8, ptr %1044, i64 1
  %1049 = load i8, ptr %1044, align 1, !tbaa !65
  %1050 = zext i8 %1049 to i64
  %1051 = shl i64 %1050, %1041
  %1052 = add i64 %1051, %1042
  %1053 = add nuw nsw i64 %1041, 8
  %1054 = icmp ult i64 %1053, %1033
  br i1 %1054, label %1040, label %1055, !llvm.loop !116

1055:                                             ; preds = %1046
  %1056 = trunc i64 %1053 to i32
  br label %1057

1057:                                             ; preds = %1055, %1028
  %1058 = phi ptr [ %1006, %1028 ], [ %1048, %1055 ]
  %1059 = phi i32 [ %1007, %1028 ], [ %1047, %1055 ]
  %1060 = phi i64 [ %1008, %1028 ], [ %1052, %1055 ]
  %1061 = phi i32 [ %1009, %1028 ], [ %1056, %1055 ]
  %1062 = zext nneg i8 %1010 to i64
  %1063 = lshr i64 %1060, %1062
  %1064 = sub i32 %1061, %1005
  %1065 = icmp eq i32 %969, 0
  br i1 %1065, label %1161, label %1066

1066:                                             ; preds = %1057
  %1067 = add i32 %969, -1
  %1068 = zext i32 %1067 to i64
  %1069 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 28, i64 %1068
  %1070 = load i16, ptr %1069, align 2, !tbaa !109
  %1071 = trunc i64 %1063 to i32
  %1072 = and i32 %1071, 3
  %1073 = add nuw nsw i32 %1072, 3
  %1074 = lshr i64 %1063, 2
  %1075 = add i32 %1064, -2
  br label %1136

1076:                                             ; preds = %1025, %1082
  %1077 = phi i64 [ %1026, %1025 ], [ %1089, %1082 ]
  %1078 = phi i64 [ %1008, %1025 ], [ %1088, %1082 ]
  %1079 = phi i32 [ %1007, %1025 ], [ %1083, %1082 ]
  %1080 = phi ptr [ %1006, %1025 ], [ %1084, %1082 ]
  %1081 = icmp eq i32 %1079, 0
  br i1 %1081, label %1784, label %1082

1082:                                             ; preds = %1076
  %1083 = add i32 %1079, -1
  %1084 = getelementptr inbounds i8, ptr %1080, i64 1
  %1085 = load i8, ptr %1080, align 1, !tbaa !65
  %1086 = zext i8 %1085 to i64
  %1087 = shl i64 %1086, %1077
  %1088 = add i64 %1087, %1078
  %1089 = add nuw nsw i64 %1077, 8
  %1090 = icmp ult i64 %1089, %1027
  br i1 %1090, label %1076, label %1091, !llvm.loop !117

1091:                                             ; preds = %1082
  %1092 = trunc i64 %1089 to i32
  br label %1093

1093:                                             ; preds = %1091, %1022
  %1094 = phi ptr [ %1006, %1022 ], [ %1084, %1091 ]
  %1095 = phi i32 [ %1007, %1022 ], [ %1083, %1091 ]
  %1096 = phi i64 [ %1008, %1022 ], [ %1088, %1091 ]
  %1097 = phi i32 [ %1009, %1022 ], [ %1092, %1091 ]
  %1098 = zext nneg i8 %1010 to i64
  %1099 = lshr i64 %1096, %1098
  %1100 = trunc i64 %1099 to i32
  %1101 = and i32 %1100, 7
  %1102 = add nuw nsw i32 %1101, 3
  %1103 = lshr i64 %1099, 3
  %1104 = sub i32 %1097, %1005
  %1105 = add i32 %1104, -3
  br label %1136

1106:                                             ; preds = %1037, %1112
  %1107 = phi i64 [ %1038, %1037 ], [ %1119, %1112 ]
  %1108 = phi i64 [ %1008, %1037 ], [ %1118, %1112 ]
  %1109 = phi i32 [ %1007, %1037 ], [ %1113, %1112 ]
  %1110 = phi ptr [ %1006, %1037 ], [ %1114, %1112 ]
  %1111 = icmp eq i32 %1109, 0
  br i1 %1111, label %1780, label %1112

1112:                                             ; preds = %1106
  %1113 = add i32 %1109, -1
  %1114 = getelementptr inbounds i8, ptr %1110, i64 1
  %1115 = load i8, ptr %1110, align 1, !tbaa !65
  %1116 = zext i8 %1115 to i64
  %1117 = shl i64 %1116, %1107
  %1118 = add i64 %1117, %1108
  %1119 = add nuw nsw i64 %1107, 8
  %1120 = icmp ult i64 %1119, %1039
  br i1 %1120, label %1106, label %1121, !llvm.loop !118

1121:                                             ; preds = %1112
  %1122 = trunc i64 %1119 to i32
  br label %1123

1123:                                             ; preds = %1121, %1034
  %1124 = phi ptr [ %1006, %1034 ], [ %1114, %1121 ]
  %1125 = phi i32 [ %1007, %1034 ], [ %1113, %1121 ]
  %1126 = phi i64 [ %1008, %1034 ], [ %1118, %1121 ]
  %1127 = phi i32 [ %1009, %1034 ], [ %1122, %1121 ]
  %1128 = zext nneg i8 %1010 to i64
  %1129 = lshr i64 %1126, %1128
  %1130 = trunc i64 %1129 to i32
  %1131 = and i32 %1130, 127
  %1132 = add nuw nsw i32 %1131, 11
  %1133 = lshr i64 %1129, 7
  %1134 = sub i32 %1127, %1005
  %1135 = add i32 %1134, -7
  br label %1136

1136:                                             ; preds = %1093, %1123, %1066
  %1137 = phi ptr [ %1058, %1066 ], [ %1094, %1093 ], [ %1124, %1123 ]
  %1138 = phi i32 [ %1059, %1066 ], [ %1095, %1093 ], [ %1125, %1123 ]
  %1139 = phi i64 [ %1074, %1066 ], [ %1103, %1093 ], [ %1133, %1123 ]
  %1140 = phi i32 [ %1075, %1066 ], [ %1105, %1093 ], [ %1135, %1123 ]
  %1141 = phi i32 [ %1073, %1066 ], [ %1102, %1093 ], [ %1132, %1123 ]
  %1142 = phi i16 [ %1070, %1066 ], [ 0, %1093 ], [ 0, %1123 ]
  %1143 = add i32 %1141, %969
  %1144 = icmp ugt i32 %1143, %956
  br i1 %1144, label %1161, label %1145

1145:                                             ; preds = %1136, %1145
  %1146 = phi i32 [ %1148, %1145 ], [ %1141, %1136 ]
  %1147 = phi i32 [ %1149, %1145 ], [ %969, %1136 ]
  %1148 = add nsw i32 %1146, -1
  %1149 = add i32 %1147, 1
  %1150 = zext i32 %1147 to i64
  %1151 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 28, i64 %1150
  store i16 %1142, ptr %1151, align 2, !tbaa !109
  %1152 = icmp eq i32 %1148, 0
  br i1 %1152, label %1153, label %1145, !llvm.loop !119

1153:                                             ; preds = %1145
  store i32 %1149, ptr %62, align 4, !tbaa !108
  br label %1154

1154:                                             ; preds = %1153, %1014
  %1155 = phi i32 [ %1018, %1014 ], [ %1149, %1153 ]
  %1156 = phi ptr [ %1006, %1014 ], [ %1137, %1153 ]
  %1157 = phi i32 [ %1007, %1014 ], [ %1138, %1153 ]
  %1158 = phi i64 [ %1016, %1014 ], [ %1139, %1153 ]
  %1159 = phi i32 [ %1017, %1014 ], [ %1140, %1153 ]
  %1160 = icmp ult i32 %1155, %956
  br i1 %1160, label %964, label %1166, !llvm.loop !120

1161:                                             ; preds = %1136, %1057
  %1162 = phi ptr [ %1058, %1057 ], [ %1137, %1136 ]
  %1163 = phi i32 [ %1059, %1057 ], [ %1138, %1136 ]
  %1164 = phi i64 [ %1063, %1057 ], [ %1139, %1136 ]
  %1165 = phi i32 [ %1064, %1057 ], [ %1140, %1136 ]
  store ptr @.str.10, ptr %186, align 8, !tbaa !66
  store i32 29, ptr %7, align 8, !tbaa !46
  br label %1166

1166:                                             ; preds = %1154, %1161, %948
  %1167 = phi ptr [ %949, %948 ], [ %1162, %1161 ], [ %1156, %1154 ]
  %1168 = phi i32 [ %950, %948 ], [ %1163, %1161 ], [ %1157, %1154 ]
  %1169 = phi i64 [ %951, %948 ], [ %1164, %1161 ], [ %1158, %1154 ]
  %1170 = phi i32 [ %952, %948 ], [ %1165, %1161 ], [ %1159, %1154 ]
  %1171 = load i32, ptr %7, align 8, !tbaa !46
  %1172 = icmp eq i32 %1171, 29
  br i1 %1172, label %1652, label %1173

1173:                                             ; preds = %1166
  %1174 = load i16, ptr %68, align 8, !tbaa !109
  %1175 = icmp eq i16 %1174, 0
  br i1 %1175, label %1176, label %1177

1176:                                             ; preds = %1173
  store ptr @.str.11, ptr %110, align 8, !tbaa !66
  store i32 29, ptr %7, align 8, !tbaa !46
  br label %1652

1177:                                             ; preds = %1173
  store ptr %69, ptr %70, align 8, !tbaa !53
  store ptr %69, ptr %71, align 8, !tbaa !55
  store i32 9, ptr %72, align 8, !tbaa !101
  %1178 = call i32 @inflate_table(i32 noundef 1, ptr noundef nonnull %67, i32 noundef %954, ptr noundef nonnull %70, ptr noundef nonnull %72, ptr noundef nonnull %73) #10
  %1179 = icmp eq i32 %1178, 0
  br i1 %1179, label %1181, label %1180

1180:                                             ; preds = %1177
  store ptr @.str.12, ptr %74, align 8, !tbaa !66
  store i32 29, ptr %7, align 8, !tbaa !46
  br label %1652

1181:                                             ; preds = %1177
  %1182 = load ptr, ptr %70, align 8, !tbaa !53
  store ptr %1182, ptr %75, align 8, !tbaa !54
  store i32 6, ptr %76, align 4, !tbaa !102
  %1183 = load i32, ptr %188, align 4, !tbaa !105
  %1184 = zext i32 %1183 to i64
  %1185 = getelementptr inbounds i16, ptr %67, i64 %1184
  %1186 = load i32, ptr %187, align 8, !tbaa !106
  %1187 = call i32 @inflate_table(i32 noundef 2, ptr noundef nonnull %1185, i32 noundef %1186, ptr noundef nonnull %70, ptr noundef nonnull %76, ptr noundef nonnull %73) #10
  %1188 = icmp eq i32 %1187, 0
  br i1 %1188, label %1190, label %1189

1189:                                             ; preds = %1181
  store ptr @.str.13, ptr %77, align 8, !tbaa !66
  store i32 29, ptr %7, align 8, !tbaa !46
  br label %1652

1190:                                             ; preds = %1181
  store i32 19, ptr %7, align 8, !tbaa !46
  br i1 %78, label %1844, label %1191

1191:                                             ; preds = %1190, %190
  %1192 = phi ptr [ %191, %190 ], [ %1167, %1190 ]
  %1193 = phi i32 [ %193, %190 ], [ %1168, %1190 ]
  %1194 = phi i64 [ %195, %190 ], [ %1169, %1190 ]
  %1195 = phi i32 [ %196, %190 ], [ %1170, %1190 ]
  %1196 = phi i32 [ %198, %190 ], [ 0, %1190 ]
  store i32 20, ptr %7, align 8, !tbaa !46
  br label %1197

1197:                                             ; preds = %190, %1191
  %1198 = phi ptr [ %191, %190 ], [ %1192, %1191 ]
  %1199 = phi i32 [ %193, %190 ], [ %1193, %1191 ]
  %1200 = phi i64 [ %195, %190 ], [ %1194, %1191 ]
  %1201 = phi i32 [ %196, %190 ], [ %1195, %1191 ]
  %1202 = phi i32 [ %198, %190 ], [ %1196, %1191 ]
  %1203 = icmp ugt i32 %1199, 5
  %1204 = icmp ugt i32 %194, 257
  %1205 = select i1 %1203, i1 %1204, i1 false
  br i1 %1205, label %1206, label %1216

1206:                                             ; preds = %1197
  store ptr %192, ptr %10, align 8, !tbaa !69
  store i32 %194, ptr %25, align 8, !tbaa !72
  store ptr %1198, ptr %0, align 8, !tbaa !70
  store i32 %1199, ptr %27, align 8, !tbaa !71
  store i64 %1200, ptr %29, align 8, !tbaa !51
  store i32 %1201, ptr %31, align 8, !tbaa !52
  call void @inflate_fast(ptr noundef nonnull %0, i32 noundef %197) #10
  %1207 = load ptr, ptr %10, align 8, !tbaa !69
  %1208 = load i32, ptr %25, align 8, !tbaa !72
  %1209 = load ptr, ptr %0, align 8, !tbaa !70
  %1210 = load i32, ptr %27, align 8, !tbaa !71
  %1211 = load i64, ptr %29, align 8, !tbaa !51
  %1212 = load i32, ptr %31, align 8, !tbaa !52
  %1213 = load i32, ptr %7, align 8, !tbaa !46
  %1214 = icmp eq i32 %1213, 11
  br i1 %1214, label %1215, label %1652

1215:                                             ; preds = %1206
  store i32 -1, ptr %109, align 4, !tbaa !57
  br label %1652

1216:                                             ; preds = %1197
  store i32 0, ptr %79, align 4, !tbaa !57
  %1217 = load ptr, ptr %80, align 8, !tbaa !55
  %1218 = load i32, ptr %81, align 8, !tbaa !101
  %1219 = shl nsw i32 -1, %1218
  %1220 = xor i32 %1219, -1
  %1221 = trunc i64 %1200 to i32
  %1222 = and i32 %1220, %1221
  %1223 = zext nneg i32 %1222 to i64
  %1224 = getelementptr inbounds %struct.code, ptr %1217, i64 %1223
  %1225 = getelementptr inbounds i8, ptr %1224, i64 1
  %1226 = load i8, ptr %1225, align 1, !tbaa.struct !113
  %1227 = zext i8 %1226 to i32
  %1228 = icmp ult i32 %1201, %1227
  br i1 %1228, label %1229, label %1256

1229:                                             ; preds = %1216
  %1230 = zext i32 %1201 to i64
  br label %1231

1231:                                             ; preds = %1229, %1237
  %1232 = phi i64 [ %1230, %1229 ], [ %1244, %1237 ]
  %1233 = phi i64 [ %1200, %1229 ], [ %1243, %1237 ]
  %1234 = phi i32 [ %1199, %1229 ], [ %1238, %1237 ]
  %1235 = phi ptr [ %1198, %1229 ], [ %1239, %1237 ]
  %1236 = icmp eq i32 %1234, 0
  br i1 %1236, label %1838, label %1237

1237:                                             ; preds = %1231
  %1238 = add i32 %1234, -1
  %1239 = getelementptr inbounds i8, ptr %1235, i64 1
  %1240 = load i8, ptr %1235, align 1, !tbaa !65
  %1241 = zext i8 %1240 to i64
  %1242 = shl i64 %1241, %1232
  %1243 = add i64 %1242, %1233
  %1244 = add nuw nsw i64 %1232, 8
  %1245 = trunc i64 %1243 to i32
  %1246 = and i32 %1220, %1245
  %1247 = zext nneg i32 %1246 to i64
  %1248 = getelementptr inbounds %struct.code, ptr %1217, i64 %1247
  %1249 = getelementptr inbounds i8, ptr %1248, i64 1
  %1250 = load i8, ptr %1249, align 1, !tbaa.struct !113
  %1251 = zext i8 %1250 to i64
  %1252 = icmp ult i64 %1244, %1251
  br i1 %1252, label %1231, label %1253, !llvm.loop !121

1253:                                             ; preds = %1237
  %1254 = zext i8 %1250 to i32
  %1255 = trunc i64 %1244 to i32
  br label %1256

1256:                                             ; preds = %1253, %1216
  %1257 = phi ptr [ %1224, %1216 ], [ %1248, %1253 ]
  %1258 = phi ptr [ %1198, %1216 ], [ %1239, %1253 ]
  %1259 = phi i32 [ %1199, %1216 ], [ %1238, %1253 ]
  %1260 = phi i64 [ %1200, %1216 ], [ %1243, %1253 ]
  %1261 = phi i32 [ %1201, %1216 ], [ %1255, %1253 ]
  %1262 = phi i8 [ %1226, %1216 ], [ %1250, %1253 ]
  %1263 = phi i32 [ %1227, %1216 ], [ %1254, %1253 ]
  %1264 = getelementptr inbounds i8, ptr %1257, i64 2
  %1265 = load i16, ptr %1264, align 2, !tbaa.struct !115
  %1266 = load i8, ptr %1257, align 2, !tbaa.struct !122
  %1267 = add i8 %1266, -1
  %1268 = icmp ult i8 %1267, 15
  br i1 %1268, label %1269, label %1329

1269:                                             ; preds = %1256
  %1270 = zext nneg i8 %1266 to i32
  %1271 = zext i16 %1265 to i32
  %1272 = add nuw nsw i32 %1263, %1270
  %1273 = shl nsw i32 -1, %1272
  %1274 = xor i32 %1273, -1
  %1275 = trunc i64 %1260 to i32
  %1276 = and i32 %1275, %1274
  %1277 = lshr i32 %1276, %1263
  %1278 = add nuw i32 %1277, %1271
  %1279 = zext i32 %1278 to i64
  %1280 = getelementptr inbounds %struct.code, ptr %1217, i64 %1279
  %1281 = getelementptr inbounds i8, ptr %1280, i64 1
  %1282 = load i8, ptr %1281, align 1, !tbaa.struct !113
  %1283 = zext i8 %1282 to i32
  %1284 = add nuw nsw i32 %1263, %1283
  %1285 = icmp ugt i32 %1284, %1261
  br i1 %1285, label %1286, label %1316

1286:                                             ; preds = %1269
  %1287 = zext i32 %1261 to i64
  br label %1288

1288:                                             ; preds = %1286, %1294
  %1289 = phi i64 [ %1287, %1286 ], [ %1301, %1294 ]
  %1290 = phi i64 [ %1260, %1286 ], [ %1300, %1294 ]
  %1291 = phi i32 [ %1259, %1286 ], [ %1295, %1294 ]
  %1292 = phi ptr [ %1258, %1286 ], [ %1296, %1294 ]
  %1293 = icmp eq i32 %1291, 0
  br i1 %1293, label %1833, label %1294

1294:                                             ; preds = %1288
  %1295 = add i32 %1291, -1
  %1296 = getelementptr inbounds i8, ptr %1292, i64 1
  %1297 = load i8, ptr %1292, align 1, !tbaa !65
  %1298 = zext i8 %1297 to i64
  %1299 = shl i64 %1298, %1289
  %1300 = add i64 %1299, %1290
  %1301 = add nuw nsw i64 %1289, 8
  %1302 = trunc i64 %1300 to i32
  %1303 = and i32 %1302, %1274
  %1304 = lshr i32 %1303, %1263
  %1305 = add nuw i32 %1304, %1271
  %1306 = zext i32 %1305 to i64
  %1307 = getelementptr inbounds %struct.code, ptr %1217, i64 %1306
  %1308 = getelementptr inbounds i8, ptr %1307, i64 1
  %1309 = load i8, ptr %1308, align 1, !tbaa.struct !113
  %1310 = zext i8 %1309 to i32
  %1311 = add nuw nsw i32 %1263, %1310
  %1312 = zext nneg i32 %1311 to i64
  %1313 = icmp ult i64 %1301, %1312
  br i1 %1313, label %1288, label %1314, !llvm.loop !123

1314:                                             ; preds = %1294
  %1315 = trunc i64 %1301 to i32
  br label %1316

1316:                                             ; preds = %1314, %1269
  %1317 = phi ptr [ %1258, %1269 ], [ %1296, %1314 ]
  %1318 = phi i32 [ %1259, %1269 ], [ %1295, %1314 ]
  %1319 = phi i64 [ %1260, %1269 ], [ %1300, %1314 ]
  %1320 = phi i32 [ %1261, %1269 ], [ %1315, %1314 ]
  %1321 = phi ptr [ %1280, %1269 ], [ %1307, %1314 ]
  %1322 = phi i8 [ %1282, %1269 ], [ %1309, %1314 ]
  %1323 = getelementptr inbounds i8, ptr %1321, i64 2
  %1324 = load i16, ptr %1323, align 2, !tbaa.struct !115
  %1325 = load i8, ptr %1321, align 2, !tbaa.struct !122
  %1326 = zext nneg i8 %1262 to i64
  %1327 = lshr i64 %1319, %1326
  %1328 = sub i32 %1320, %1263
  store i32 %1263, ptr %79, align 4, !tbaa !57
  br label %1329

1329:                                             ; preds = %1256, %1316
  %1330 = phi ptr [ %1317, %1316 ], [ %1258, %1256 ]
  %1331 = phi i32 [ %1318, %1316 ], [ %1259, %1256 ]
  %1332 = phi i64 [ %1327, %1316 ], [ %1260, %1256 ]
  %1333 = phi i32 [ %1328, %1316 ], [ %1261, %1256 ]
  %1334 = phi i16 [ %1324, %1316 ], [ %1265, %1256 ]
  %1335 = phi i8 [ %1322, %1316 ], [ %1262, %1256 ]
  %1336 = phi i8 [ %1325, %1316 ], [ %1266, %1256 ]
  %1337 = zext i8 %1335 to i32
  %1338 = zext nneg i8 %1335 to i64
  %1339 = lshr i64 %1332, %1338
  %1340 = sub i32 %1333, %1337
  %1341 = load i32, ptr %79, align 4, !tbaa !57
  %1342 = add nsw i32 %1341, %1337
  store i32 %1342, ptr %79, align 4, !tbaa !57
  %1343 = zext i16 %1334 to i32
  store i32 %1343, ptr %82, align 4, !tbaa !88
  %1344 = zext i8 %1336 to i32
  %1345 = icmp eq i8 %1336, 0
  br i1 %1345, label %1346, label %1347

1346:                                             ; preds = %1329
  store i32 25, ptr %7, align 8, !tbaa !46
  br label %1652

1347:                                             ; preds = %1329
  %1348 = and i32 %1344, 32
  %1349 = icmp eq i32 %1348, 0
  br i1 %1349, label %1351, label %1350

1350:                                             ; preds = %1347
  store i32 -1, ptr %79, align 4, !tbaa !57
  store i32 11, ptr %7, align 8, !tbaa !46
  br label %1652

1351:                                             ; preds = %1347
  %1352 = and i32 %1344, 64
  %1353 = icmp eq i32 %1352, 0
  br i1 %1353, label %1355, label %1354

1354:                                             ; preds = %1351
  store ptr @.str.14, ptr %83, align 8, !tbaa !66
  store i32 29, ptr %7, align 8, !tbaa !46
  br label %1652

1355:                                             ; preds = %1351
  %1356 = and i32 %1344, 15
  store i32 %1356, ptr %84, align 4, !tbaa !124
  store i32 21, ptr %7, align 8, !tbaa !46
  br label %1357

1357:                                             ; preds = %190, %1355
  %1358 = phi ptr [ %191, %190 ], [ %1330, %1355 ]
  %1359 = phi i32 [ %193, %190 ], [ %1331, %1355 ]
  %1360 = phi i64 [ %195, %190 ], [ %1339, %1355 ]
  %1361 = phi i32 [ %196, %190 ], [ %1340, %1355 ]
  %1362 = phi i32 [ %198, %190 ], [ %1202, %1355 ]
  %1363 = load i32, ptr %85, align 4, !tbaa !124
  %1364 = icmp eq i32 %1363, 0
  br i1 %1364, label %1399, label %1365

1365:                                             ; preds = %1357
  %1366 = icmp ult i32 %1361, %1363
  br i1 %1366, label %1367, label %1383

1367:                                             ; preds = %1365, %1373
  %1368 = phi i32 [ %1381, %1373 ], [ %1361, %1365 ]
  %1369 = phi i64 [ %1380, %1373 ], [ %1360, %1365 ]
  %1370 = phi i32 [ %1374, %1373 ], [ %1359, %1365 ]
  %1371 = phi ptr [ %1375, %1373 ], [ %1358, %1365 ]
  %1372 = icmp eq i32 %1370, 0
  br i1 %1372, label %1828, label %1373

1373:                                             ; preds = %1367
  %1374 = add i32 %1370, -1
  %1375 = getelementptr inbounds i8, ptr %1371, i64 1
  %1376 = load i8, ptr %1371, align 1, !tbaa !65
  %1377 = zext i8 %1376 to i64
  %1378 = zext nneg i32 %1368 to i64
  %1379 = shl i64 %1377, %1378
  %1380 = add i64 %1379, %1369
  %1381 = add i32 %1368, 8
  %1382 = icmp ult i32 %1381, %1363
  br i1 %1382, label %1367, label %1383, !llvm.loop !125

1383:                                             ; preds = %1373, %1365
  %1384 = phi ptr [ %1358, %1365 ], [ %1375, %1373 ]
  %1385 = phi i32 [ %1359, %1365 ], [ %1374, %1373 ]
  %1386 = phi i64 [ %1360, %1365 ], [ %1380, %1373 ]
  %1387 = phi i32 [ %1361, %1365 ], [ %1381, %1373 ]
  %1388 = trunc i64 %1386 to i32
  %1389 = shl nsw i32 -1, %1363
  %1390 = xor i32 %1389, -1
  %1391 = and i32 %1388, %1390
  %1392 = load i32, ptr %86, align 4, !tbaa !88
  %1393 = add i32 %1392, %1391
  store i32 %1393, ptr %86, align 4, !tbaa !88
  %1394 = zext nneg i32 %1363 to i64
  %1395 = lshr i64 %1386, %1394
  %1396 = sub i32 %1387, %1363
  %1397 = load i32, ptr %87, align 4, !tbaa !57
  %1398 = add i32 %1397, %1363
  store i32 %1398, ptr %87, align 4, !tbaa !57
  br label %1399

1399:                                             ; preds = %1383, %1357
  %1400 = phi ptr [ %1384, %1383 ], [ %1358, %1357 ]
  %1401 = phi i32 [ %1385, %1383 ], [ %1359, %1357 ]
  %1402 = phi i64 [ %1395, %1383 ], [ %1360, %1357 ]
  %1403 = phi i32 [ %1396, %1383 ], [ %1361, %1357 ]
  %1404 = load i32, ptr %88, align 4, !tbaa !88
  store i32 %1404, ptr %89, align 8, !tbaa !126
  store i32 22, ptr %7, align 8, !tbaa !46
  br label %1405

1405:                                             ; preds = %190, %1399
  %1406 = phi ptr [ %191, %190 ], [ %1400, %1399 ]
  %1407 = phi i32 [ %193, %190 ], [ %1401, %1399 ]
  %1408 = phi i64 [ %195, %190 ], [ %1402, %1399 ]
  %1409 = phi i32 [ %196, %190 ], [ %1403, %1399 ]
  %1410 = phi i32 [ %198, %190 ], [ %1362, %1399 ]
  %1411 = load ptr, ptr %90, align 8, !tbaa !54
  %1412 = load i32, ptr %91, align 4, !tbaa !102
  %1413 = shl nsw i32 -1, %1412
  %1414 = xor i32 %1413, -1
  %1415 = trunc i64 %1408 to i32
  %1416 = and i32 %1414, %1415
  %1417 = zext nneg i32 %1416 to i64
  %1418 = getelementptr inbounds %struct.code, ptr %1411, i64 %1417
  %1419 = getelementptr inbounds i8, ptr %1418, i64 1
  %1420 = load i8, ptr %1419, align 1, !tbaa.struct !113
  %1421 = zext i8 %1420 to i32
  %1422 = icmp ult i32 %1409, %1421
  br i1 %1422, label %1423, label %1450

1423:                                             ; preds = %1405
  %1424 = zext i32 %1409 to i64
  br label %1425

1425:                                             ; preds = %1423, %1431
  %1426 = phi i64 [ %1424, %1423 ], [ %1438, %1431 ]
  %1427 = phi i64 [ %1408, %1423 ], [ %1437, %1431 ]
  %1428 = phi i32 [ %1407, %1423 ], [ %1432, %1431 ]
  %1429 = phi ptr [ %1406, %1423 ], [ %1433, %1431 ]
  %1430 = icmp eq i32 %1428, 0
  br i1 %1430, label %1823, label %1431

1431:                                             ; preds = %1425
  %1432 = add i32 %1428, -1
  %1433 = getelementptr inbounds i8, ptr %1429, i64 1
  %1434 = load i8, ptr %1429, align 1, !tbaa !65
  %1435 = zext i8 %1434 to i64
  %1436 = shl i64 %1435, %1426
  %1437 = add i64 %1436, %1427
  %1438 = add nuw nsw i64 %1426, 8
  %1439 = trunc i64 %1437 to i32
  %1440 = and i32 %1414, %1439
  %1441 = zext nneg i32 %1440 to i64
  %1442 = getelementptr inbounds %struct.code, ptr %1411, i64 %1441
  %1443 = getelementptr inbounds i8, ptr %1442, i64 1
  %1444 = load i8, ptr %1443, align 1, !tbaa.struct !113
  %1445 = zext i8 %1444 to i64
  %1446 = icmp ult i64 %1438, %1445
  br i1 %1446, label %1425, label %1447, !llvm.loop !127

1447:                                             ; preds = %1431
  %1448 = zext i8 %1444 to i32
  %1449 = trunc i64 %1438 to i32
  br label %1450

1450:                                             ; preds = %1447, %1405
  %1451 = phi ptr [ %1418, %1405 ], [ %1442, %1447 ]
  %1452 = phi ptr [ %1406, %1405 ], [ %1433, %1447 ]
  %1453 = phi i32 [ %1407, %1405 ], [ %1432, %1447 ]
  %1454 = phi i64 [ %1408, %1405 ], [ %1437, %1447 ]
  %1455 = phi i32 [ %1409, %1405 ], [ %1449, %1447 ]
  %1456 = phi i8 [ %1420, %1405 ], [ %1444, %1447 ]
  %1457 = phi i32 [ %1421, %1405 ], [ %1448, %1447 ]
  %1458 = getelementptr inbounds i8, ptr %1451, i64 2
  %1459 = load i16, ptr %1458, align 2, !tbaa.struct !115
  %1460 = load i8, ptr %1451, align 2, !tbaa.struct !122
  %1461 = icmp ult i8 %1460, 16
  br i1 %1461, label %1462, label %1524

1462:                                             ; preds = %1450
  %1463 = zext nneg i8 %1460 to i32
  %1464 = zext i16 %1459 to i32
  %1465 = add nuw nsw i32 %1457, %1463
  %1466 = shl nsw i32 -1, %1465
  %1467 = xor i32 %1466, -1
  %1468 = trunc i64 %1454 to i32
  %1469 = and i32 %1468, %1467
  %1470 = lshr i32 %1469, %1457
  %1471 = add nuw i32 %1470, %1464
  %1472 = zext i32 %1471 to i64
  %1473 = getelementptr inbounds %struct.code, ptr %1411, i64 %1472
  %1474 = getelementptr inbounds i8, ptr %1473, i64 1
  %1475 = load i8, ptr %1474, align 1, !tbaa.struct !113
  %1476 = zext i8 %1475 to i32
  %1477 = add nuw nsw i32 %1457, %1476
  %1478 = icmp ugt i32 %1477, %1455
  br i1 %1478, label %1479, label %1509

1479:                                             ; preds = %1462
  %1480 = zext i32 %1455 to i64
  br label %1481

1481:                                             ; preds = %1479, %1487
  %1482 = phi i64 [ %1480, %1479 ], [ %1494, %1487 ]
  %1483 = phi i64 [ %1454, %1479 ], [ %1493, %1487 ]
  %1484 = phi i32 [ %1453, %1479 ], [ %1488, %1487 ]
  %1485 = phi ptr [ %1452, %1479 ], [ %1489, %1487 ]
  %1486 = icmp eq i32 %1484, 0
  br i1 %1486, label %1818, label %1487

1487:                                             ; preds = %1481
  %1488 = add i32 %1484, -1
  %1489 = getelementptr inbounds i8, ptr %1485, i64 1
  %1490 = load i8, ptr %1485, align 1, !tbaa !65
  %1491 = zext i8 %1490 to i64
  %1492 = shl i64 %1491, %1482
  %1493 = add i64 %1492, %1483
  %1494 = add nuw nsw i64 %1482, 8
  %1495 = trunc i64 %1493 to i32
  %1496 = and i32 %1495, %1467
  %1497 = lshr i32 %1496, %1457
  %1498 = add nuw i32 %1497, %1464
  %1499 = zext i32 %1498 to i64
  %1500 = getelementptr inbounds %struct.code, ptr %1411, i64 %1499
  %1501 = getelementptr inbounds i8, ptr %1500, i64 1
  %1502 = load i8, ptr %1501, align 1, !tbaa.struct !113
  %1503 = zext i8 %1502 to i32
  %1504 = add nuw nsw i32 %1457, %1503
  %1505 = zext nneg i32 %1504 to i64
  %1506 = icmp ult i64 %1494, %1505
  br i1 %1506, label %1481, label %1507, !llvm.loop !128

1507:                                             ; preds = %1487
  %1508 = trunc i64 %1494 to i32
  br label %1509

1509:                                             ; preds = %1507, %1462
  %1510 = phi ptr [ %1452, %1462 ], [ %1489, %1507 ]
  %1511 = phi i32 [ %1453, %1462 ], [ %1488, %1507 ]
  %1512 = phi i64 [ %1454, %1462 ], [ %1493, %1507 ]
  %1513 = phi i32 [ %1455, %1462 ], [ %1508, %1507 ]
  %1514 = phi ptr [ %1473, %1462 ], [ %1500, %1507 ]
  %1515 = phi i8 [ %1475, %1462 ], [ %1502, %1507 ]
  %1516 = getelementptr inbounds i8, ptr %1514, i64 2
  %1517 = load i16, ptr %1516, align 2, !tbaa.struct !115
  %1518 = load i8, ptr %1514, align 2, !tbaa.struct !122
  %1519 = zext nneg i8 %1456 to i64
  %1520 = lshr i64 %1512, %1519
  %1521 = sub i32 %1513, %1457
  %1522 = load i32, ptr %92, align 4, !tbaa !57
  %1523 = add nsw i32 %1522, %1457
  store i32 %1523, ptr %92, align 4, !tbaa !57
  br label %1524

1524:                                             ; preds = %1450, %1509
  %1525 = phi ptr [ %1510, %1509 ], [ %1452, %1450 ]
  %1526 = phi i32 [ %1511, %1509 ], [ %1453, %1450 ]
  %1527 = phi i64 [ %1520, %1509 ], [ %1454, %1450 ]
  %1528 = phi i32 [ %1521, %1509 ], [ %1455, %1450 ]
  %1529 = phi i16 [ %1517, %1509 ], [ %1459, %1450 ]
  %1530 = phi i8 [ %1515, %1509 ], [ %1456, %1450 ]
  %1531 = phi i8 [ %1518, %1509 ], [ %1460, %1450 ]
  %1532 = zext i8 %1530 to i32
  %1533 = zext nneg i8 %1530 to i64
  %1534 = lshr i64 %1527, %1533
  %1535 = sub i32 %1528, %1532
  %1536 = load i32, ptr %93, align 4, !tbaa !57
  %1537 = add nsw i32 %1536, %1532
  store i32 %1537, ptr %93, align 4, !tbaa !57
  %1538 = zext i8 %1531 to i32
  %1539 = and i32 %1538, 64
  %1540 = icmp eq i32 %1539, 0
  br i1 %1540, label %1542, label %1541

1541:                                             ; preds = %1524
  store ptr @.str.15, ptr %94, align 8, !tbaa !66
  store i32 29, ptr %7, align 8, !tbaa !46
  br label %1652

1542:                                             ; preds = %1524
  %1543 = zext i16 %1529 to i32
  store i32 %1543, ptr %95, align 8, !tbaa !129
  %1544 = and i32 %1538, 15
  store i32 %1544, ptr %96, align 4, !tbaa !124
  store i32 23, ptr %7, align 8, !tbaa !46
  br label %1545

1545:                                             ; preds = %190, %1542
  %1546 = phi ptr [ %191, %190 ], [ %1525, %1542 ]
  %1547 = phi i32 [ %193, %190 ], [ %1526, %1542 ]
  %1548 = phi i64 [ %195, %190 ], [ %1534, %1542 ]
  %1549 = phi i32 [ %196, %190 ], [ %1535, %1542 ]
  %1550 = phi i32 [ %198, %190 ], [ %1410, %1542 ]
  %1551 = load i32, ptr %97, align 4, !tbaa !124
  %1552 = icmp eq i32 %1551, 0
  br i1 %1552, label %1587, label %1553

1553:                                             ; preds = %1545
  %1554 = icmp ult i32 %1549, %1551
  br i1 %1554, label %1555, label %1571

1555:                                             ; preds = %1553, %1561
  %1556 = phi i32 [ %1569, %1561 ], [ %1549, %1553 ]
  %1557 = phi i64 [ %1568, %1561 ], [ %1548, %1553 ]
  %1558 = phi i32 [ %1562, %1561 ], [ %1547, %1553 ]
  %1559 = phi ptr [ %1563, %1561 ], [ %1546, %1553 ]
  %1560 = icmp eq i32 %1558, 0
  br i1 %1560, label %1813, label %1561

1561:                                             ; preds = %1555
  %1562 = add i32 %1558, -1
  %1563 = getelementptr inbounds i8, ptr %1559, i64 1
  %1564 = load i8, ptr %1559, align 1, !tbaa !65
  %1565 = zext i8 %1564 to i64
  %1566 = zext nneg i32 %1556 to i64
  %1567 = shl i64 %1565, %1566
  %1568 = add i64 %1567, %1557
  %1569 = add i32 %1556, 8
  %1570 = icmp ult i32 %1569, %1551
  br i1 %1570, label %1555, label %1571, !llvm.loop !130

1571:                                             ; preds = %1561, %1553
  %1572 = phi ptr [ %1546, %1553 ], [ %1563, %1561 ]
  %1573 = phi i32 [ %1547, %1553 ], [ %1562, %1561 ]
  %1574 = phi i64 [ %1548, %1553 ], [ %1568, %1561 ]
  %1575 = phi i32 [ %1549, %1553 ], [ %1569, %1561 ]
  %1576 = trunc i64 %1574 to i32
  %1577 = shl nsw i32 -1, %1551
  %1578 = xor i32 %1577, -1
  %1579 = and i32 %1576, %1578
  %1580 = load i32, ptr %98, align 8, !tbaa !129
  %1581 = add i32 %1580, %1579
  store i32 %1581, ptr %98, align 8, !tbaa !129
  %1582 = zext nneg i32 %1551 to i64
  %1583 = lshr i64 %1574, %1582
  %1584 = sub i32 %1575, %1551
  %1585 = load i32, ptr %99, align 4, !tbaa !57
  %1586 = add i32 %1585, %1551
  store i32 %1586, ptr %99, align 4, !tbaa !57
  br label %1587

1587:                                             ; preds = %1571, %1545
  %1588 = phi ptr [ %1572, %1571 ], [ %1546, %1545 ]
  %1589 = phi i32 [ %1573, %1571 ], [ %1547, %1545 ]
  %1590 = phi i64 [ %1583, %1571 ], [ %1548, %1545 ]
  %1591 = phi i32 [ %1584, %1571 ], [ %1549, %1545 ]
  store i32 24, ptr %7, align 8, !tbaa !46
  br label %1592

1592:                                             ; preds = %190, %1587
  %1593 = phi ptr [ %191, %190 ], [ %1588, %1587 ]
  %1594 = phi i32 [ %193, %190 ], [ %1589, %1587 ]
  %1595 = phi i64 [ %195, %190 ], [ %1590, %1587 ]
  %1596 = phi i32 [ %196, %190 ], [ %1591, %1587 ]
  %1597 = phi i32 [ %198, %190 ], [ %1550, %1587 ]
  %1598 = icmp eq i32 %194, 0
  br i1 %1598, label %1844, label %1599

1599:                                             ; preds = %1592
  %1600 = sub i32 %197, %194
  %1601 = load i32, ptr %100, align 8, !tbaa !129
  %1602 = icmp ugt i32 %1601, %1600
  br i1 %1602, label %1603, label %1628

1603:                                             ; preds = %1599
  %1604 = sub i32 %1601, %1600
  %1605 = load i32, ptr %102, align 8, !tbaa !59
  %1606 = icmp ugt i32 %1604, %1605
  br i1 %1606, label %1607, label %1611

1607:                                             ; preds = %1603
  %1608 = load i32, ptr %103, align 8, !tbaa !56
  %1609 = icmp eq i32 %1608, 0
  br i1 %1609, label %1611, label %1610

1610:                                             ; preds = %1607
  store ptr @.str.16, ptr %104, align 8, !tbaa !66
  store i32 29, ptr %7, align 8, !tbaa !46
  br label %1652

1611:                                             ; preds = %1607, %1603
  %1612 = load i32, ptr %105, align 4, !tbaa !60
  %1613 = icmp ugt i32 %1604, %1612
  br i1 %1613, label %1614, label %1618

1614:                                             ; preds = %1611
  %1615 = sub i32 %1604, %1612
  %1616 = load i32, ptr %106, align 4, !tbaa !58
  %1617 = sub i32 %1616, %1615
  br label %1620

1618:                                             ; preds = %1611
  %1619 = sub i32 %1612, %1604
  br label %1620

1620:                                             ; preds = %1618, %1614
  %1621 = phi i32 [ %1619, %1618 ], [ %1617, %1614 ]
  %1622 = phi i32 [ %1604, %1618 ], [ %1615, %1614 ]
  %1623 = load ptr, ptr %189, align 8, !tbaa !61
  %1624 = zext i32 %1621 to i64
  %1625 = getelementptr inbounds i8, ptr %1623, i64 %1624
  %1626 = load i32, ptr %107, align 4, !tbaa !88
  %1627 = call i32 @llvm.umin.i32(i32 %1622, i32 %1626)
  br label %1633

1628:                                             ; preds = %1599
  %1629 = zext i32 %1601 to i64
  %1630 = sub nsw i64 0, %1629
  %1631 = getelementptr inbounds i8, ptr %192, i64 %1630
  %1632 = load i32, ptr %101, align 4, !tbaa !88
  br label %1633

1633:                                             ; preds = %1620, %1628
  %1634 = phi i32 [ %1632, %1628 ], [ %1627, %1620 ]
  %1635 = phi ptr [ %1631, %1628 ], [ %1625, %1620 ]
  %1636 = call i32 @llvm.umin.i32(i32 %1634, i32 %194)
  %1637 = load i32, ptr %108, align 4, !tbaa !88
  %1638 = sub i32 %1637, %1636
  store i32 %1638, ptr %108, align 4, !tbaa !88
  br label %1639

1639:                                             ; preds = %1639, %1633
  %1640 = phi ptr [ %192, %1633 ], [ %1645, %1639 ]
  %1641 = phi i32 [ %1636, %1633 ], [ %1646, %1639 ]
  %1642 = phi ptr [ %1635, %1633 ], [ %1643, %1639 ]
  %1643 = getelementptr inbounds i8, ptr %1642, i64 1
  %1644 = load i8, ptr %1642, align 1, !tbaa !65
  %1645 = getelementptr inbounds i8, ptr %1640, i64 1
  store i8 %1644, ptr %1640, align 1, !tbaa !65
  %1646 = add i32 %1641, -1
  %1647 = icmp eq i32 %1646, 0
  br i1 %1647, label %1648, label %1639, !llvm.loop !131

1648:                                             ; preds = %1639
  %1649 = sub i32 %194, %1636
  %1650 = load i32, ptr %108, align 4, !tbaa !88
  %1651 = icmp eq i32 %1650, 0
  br i1 %1651, label %1661, label %1652

1652:                                             ; preds = %1648, %1661, %1206, %1215, %1166, %1774, %1727, %1664, %1610, %1541, %1354, %1350, %1346, %1189, %1180, %1176, %946, %877, %840, %832, %812, %774, %742, %692, %679, %316, %312, %281, %280, %268, %264, %246, %219
  %1653 = phi ptr [ %1767, %1774 ], [ %1694, %1727 ], [ %191, %1664 ], [ %1593, %1610 ], [ %1593, %1661 ], [ %1593, %1648 ], [ %1525, %1541 ], [ %1209, %1215 ], [ %1209, %1206 ], [ %1330, %1346 ], [ %1330, %1350 ], [ %1330, %1354 ], [ %1167, %1166 ], [ %1167, %1176 ], [ %1167, %1180 ], [ %1167, %1189 ], [ %891, %946 ], [ %859, %877 ], [ %835, %832 ], [ %822, %840 ], [ %804, %812 ], [ %732, %742 ], [ %757, %774 ], [ %672, %679 ], [ %681, %692 ], [ %305, %312 ], [ %305, %316 ], [ %191, %219 ], [ %238, %246 ], [ %238, %264 ], [ %238, %268 ], [ %238, %281 ], [ %238, %280 ]
  %1654 = phi ptr [ %192, %1774 ], [ %192, %1727 ], [ %1667, %1664 ], [ %192, %1610 ], [ %1645, %1661 ], [ %1645, %1648 ], [ %192, %1541 ], [ %1207, %1215 ], [ %1207, %1206 ], [ %192, %1346 ], [ %192, %1350 ], [ %192, %1354 ], [ %192, %1166 ], [ %192, %1176 ], [ %192, %1180 ], [ %192, %1189 ], [ %192, %946 ], [ %192, %877 ], [ %837, %832 ], [ %192, %840 ], [ %192, %812 ], [ %192, %742 ], [ %192, %774 ], [ %192, %679 ], [ %192, %692 ], [ %192, %312 ], [ %192, %316 ], [ %192, %219 ], [ %192, %246 ], [ %192, %264 ], [ %192, %268 ], [ %192, %281 ], [ %192, %280 ]
  %1655 = phi i32 [ %1768, %1774 ], [ %1695, %1727 ], [ %193, %1664 ], [ %1594, %1610 ], [ %1594, %1661 ], [ %1594, %1648 ], [ %1526, %1541 ], [ %1210, %1215 ], [ %1210, %1206 ], [ %1331, %1346 ], [ %1331, %1350 ], [ %1331, %1354 ], [ %1168, %1166 ], [ %1168, %1176 ], [ %1168, %1180 ], [ %1168, %1189 ], [ %892, %946 ], [ %860, %877 ], [ %834, %832 ], [ %823, %840 ], [ %805, %812 ], [ %733, %742 ], [ %758, %774 ], [ %673, %679 ], [ %682, %692 ], [ %306, %312 ], [ %306, %316 ], [ %193, %219 ], [ %239, %246 ], [ %239, %264 ], [ %239, %268 ], [ %239, %281 ], [ %239, %280 ]
  %1656 = phi i32 [ %194, %1774 ], [ %194, %1727 ], [ %1668, %1664 ], [ %194, %1610 ], [ %1649, %1661 ], [ %1649, %1648 ], [ %194, %1541 ], [ %1208, %1215 ], [ %1208, %1206 ], [ %194, %1346 ], [ %194, %1350 ], [ %194, %1354 ], [ %194, %1166 ], [ %194, %1176 ], [ %194, %1180 ], [ %194, %1189 ], [ %194, %946 ], [ %194, %877 ], [ %836, %832 ], [ %194, %840 ], [ %194, %812 ], [ %194, %742 ], [ %194, %774 ], [ %194, %679 ], [ %194, %692 ], [ %194, %312 ], [ %194, %316 ], [ %194, %219 ], [ %194, %246 ], [ %194, %264 ], [ %194, %268 ], [ %194, %281 ], [ %194, %280 ]
  %1657 = phi i64 [ %1769, %1774 ], [ %1696, %1727 ], [ %195, %1664 ], [ %1595, %1610 ], [ %1595, %1661 ], [ %1595, %1648 ], [ %1534, %1541 ], [ %1211, %1215 ], [ %1211, %1206 ], [ %1339, %1346 ], [ %1339, %1350 ], [ %1339, %1354 ], [ %1169, %1166 ], [ %1169, %1176 ], [ %1169, %1180 ], [ %1169, %1189 ], [ %893, %946 ], [ %872, %877 ], [ %824, %832 ], [ %824, %840 ], [ %806, %812 ], [ %745, %742 ], [ %775, %774 ], [ %674, %679 ], [ %683, %692 ], [ %307, %312 ], [ %307, %316 ], [ %195, %219 ], [ 0, %246 ], [ %240, %264 ], [ %240, %268 ], [ 0, %281 ], [ %270, %280 ]
  %1658 = phi i32 [ %1770, %1774 ], [ %1697, %1727 ], [ %196, %1664 ], [ %1596, %1610 ], [ %1596, %1661 ], [ %1596, %1648 ], [ %1535, %1541 ], [ %1212, %1215 ], [ %1212, %1206 ], [ %1340, %1346 ], [ %1340, %1350 ], [ %1340, %1354 ], [ %1170, %1166 ], [ %1170, %1176 ], [ %1170, %1180 ], [ %1170, %1189 ], [ %894, %946 ], [ %873, %877 ], [ %825, %832 ], [ %825, %840 ], [ %807, %812 ], [ %746, %742 ], [ %776, %774 ], [ %675, %679 ], [ %684, %692 ], [ %308, %312 ], [ %308, %316 ], [ %196, %219 ], [ 0, %246 ], [ %241, %264 ], [ %241, %268 ], [ 0, %281 ], [ %271, %280 ]
  %1659 = phi i32 [ %1739, %1774 ], [ %194, %1727 ], [ %197, %1664 ], [ %197, %1610 ], [ %197, %1661 ], [ %197, %1648 ], [ %197, %1541 ], [ %197, %1215 ], [ %197, %1206 ], [ %197, %1346 ], [ %197, %1350 ], [ %197, %1354 ], [ %197, %1166 ], [ %197, %1176 ], [ %197, %1180 ], [ %197, %1189 ], [ %197, %946 ], [ %197, %877 ], [ %197, %832 ], [ %197, %840 ], [ %197, %812 ], [ %197, %742 ], [ %197, %774 ], [ %197, %679 ], [ %197, %692 ], [ %197, %312 ], [ %197, %316 ], [ %197, %219 ], [ %197, %246 ], [ %197, %264 ], [ %197, %268 ], [ %197, %281 ], [ %197, %280 ]
  %1660 = phi i32 [ %198, %1774 ], [ %198, %1727 ], [ %198, %1664 ], [ %1597, %1610 ], [ %1597, %1661 ], [ %1597, %1648 ], [ %1410, %1541 ], [ %1202, %1215 ], [ %1202, %1206 ], [ %1202, %1346 ], [ %1202, %1350 ], [ %1202, %1354 ], [ %953, %1166 ], [ %953, %1176 ], [ %1178, %1180 ], [ %1187, %1189 ], [ %944, %946 ], [ %198, %877 ], [ %198, %832 ], [ %198, %840 ], [ %198, %812 ], [ %198, %742 ], [ %198, %774 ], [ %198, %679 ], [ %198, %692 ], [ %198, %312 ], [ %198, %316 ], [ %198, %219 ], [ %198, %246 ], [ %198, %264 ], [ %198, %268 ], [ %198, %281 ], [ %198, %280 ]
  br label %190, !llvm.loop !132

1661:                                             ; preds = %1648
  store i32 20, ptr %7, align 8, !tbaa !46
  br label %1652

1662:                                             ; preds = %190
  %1663 = icmp eq i32 %194, 0
  br i1 %1663, label %1844, label %1664

1664:                                             ; preds = %1662
  %1665 = load i32, ptr %48, align 4, !tbaa !88
  %1666 = trunc i32 %1665 to i8
  %1667 = getelementptr inbounds i8, ptr %192, i64 1
  store i8 %1666, ptr %192, align 1, !tbaa !65
  %1668 = add i32 %194, -1
  store i32 20, ptr %7, align 8, !tbaa !46
  br label %1652

1669:                                             ; preds = %190
  %1670 = load i32, ptr %33, align 8, !tbaa !44
  %1671 = icmp eq i32 %1670, 0
  br i1 %1671, label %1728, label %1672

1672:                                             ; preds = %1669
  %1673 = icmp ult i32 %196, 32
  br i1 %1673, label %1674, label %1693

1674:                                             ; preds = %1672
  %1675 = zext nneg i32 %196 to i64
  br label %1676

1676:                                             ; preds = %1674, %1682
  %1677 = phi i64 [ %1675, %1674 ], [ %1689, %1682 ]
  %1678 = phi i64 [ %195, %1674 ], [ %1688, %1682 ]
  %1679 = phi i32 [ %193, %1674 ], [ %1683, %1682 ]
  %1680 = phi ptr [ %191, %1674 ], [ %1684, %1682 ]
  %1681 = icmp eq i32 %1679, 0
  br i1 %1681, label %1806, label %1682

1682:                                             ; preds = %1676
  %1683 = add i32 %1679, -1
  %1684 = getelementptr inbounds i8, ptr %1680, i64 1
  %1685 = load i8, ptr %1680, align 1, !tbaa !65
  %1686 = zext i8 %1685 to i64
  %1687 = shl nuw nsw i64 %1686, %1677
  %1688 = add i64 %1687, %1678
  %1689 = add nuw nsw i64 %1677, 8
  %1690 = icmp ult i64 %1677, 24
  br i1 %1690, label %1676, label %1691, !llvm.loop !133

1691:                                             ; preds = %1682
  %1692 = trunc i64 %1689 to i32
  br label %1693

1693:                                             ; preds = %1691, %1672
  %1694 = phi ptr [ %191, %1672 ], [ %1684, %1691 ]
  %1695 = phi i32 [ %193, %1672 ], [ %1683, %1691 ]
  %1696 = phi i64 [ %195, %1672 ], [ %1688, %1691 ]
  %1697 = phi i32 [ %196, %1672 ], [ %1692, %1691 ]
  %1698 = sub i32 %197, %194
  %1699 = zext i32 %1698 to i64
  %1700 = load i64, ptr %34, align 8, !tbaa !134
  %1701 = add i64 %1700, %1699
  store i64 %1701, ptr %34, align 8, !tbaa !134
  %1702 = load i64, ptr %35, align 8, !tbaa !41
  %1703 = add i64 %1702, %1699
  store i64 %1703, ptr %35, align 8, !tbaa !41
  %1704 = icmp eq i32 %197, %194
  br i1 %1704, label %1718, label %1705

1705:                                             ; preds = %1693
  %1706 = load i32, ptr %36, align 8, !tbaa !77
  %1707 = icmp eq i32 %1706, 0
  %1708 = sub nsw i64 0, %1699
  %1709 = getelementptr inbounds i8, ptr %192, i64 %1708
  br i1 %1707, label %1713, label %1710

1710:                                             ; preds = %1705
  %1711 = load i64, ptr %37, align 8, !tbaa !76
  %1712 = call i64 @crc32(i64 noundef %1711, ptr noundef %1709, i32 noundef %1698) #10
  br label %1716

1713:                                             ; preds = %1705
  %1714 = load i64, ptr %38, align 8, !tbaa !76
  %1715 = call i64 @adler32(i64 noundef %1714, ptr noundef %1709, i32 noundef %1698) #10
  br label %1716

1716:                                             ; preds = %1713, %1710
  %1717 = phi i64 [ %1712, %1710 ], [ %1715, %1713 ]
  store i64 %1717, ptr %39, align 8, !tbaa !76
  store i64 %1717, ptr %40, align 8, !tbaa !45
  br label %1718

1718:                                             ; preds = %1716, %1693
  %1719 = load i32, ptr %41, align 8, !tbaa !77
  %1720 = icmp eq i32 %1719, 0
  %1721 = trunc i64 %1696 to i32
  %1722 = call i32 @llvm.bswap.i32(i32 %1721)
  %1723 = zext i32 %1722 to i64
  %1724 = select i1 %1720, i64 %1723, i64 %1696
  %1725 = load i64, ptr %42, align 8, !tbaa !76
  %1726 = icmp eq i64 %1724, %1725
  br i1 %1726, label %1728, label %1727

1727:                                             ; preds = %1718
  store ptr @.str.17, ptr %43, align 8, !tbaa !66
  store i32 29, ptr %7, align 8, !tbaa !46
  br label %1652

1728:                                             ; preds = %1718, %1669
  %1729 = phi ptr [ %191, %1669 ], [ %1694, %1718 ]
  %1730 = phi i32 [ %193, %1669 ], [ %1695, %1718 ]
  %1731 = phi i64 [ %195, %1669 ], [ 0, %1718 ]
  %1732 = phi i32 [ %196, %1669 ], [ 0, %1718 ]
  %1733 = phi i32 [ %197, %1669 ], [ %194, %1718 ]
  store i32 27, ptr %7, align 8, !tbaa !46
  br label %1734

1734:                                             ; preds = %190, %1728
  %1735 = phi ptr [ %191, %190 ], [ %1729, %1728 ]
  %1736 = phi i32 [ %193, %190 ], [ %1730, %1728 ]
  %1737 = phi i64 [ %195, %190 ], [ %1731, %1728 ]
  %1738 = phi i32 [ %196, %190 ], [ %1732, %1728 ]
  %1739 = phi i32 [ %197, %190 ], [ %1733, %1728 ]
  %1740 = load i32, ptr %44, align 8, !tbaa !44
  %1741 = icmp eq i32 %1740, 0
  br i1 %1741, label %1775, label %1742

1742:                                             ; preds = %1734
  %1743 = load i32, ptr %45, align 8, !tbaa !77
  %1744 = icmp eq i32 %1743, 0
  br i1 %1744, label %1775, label %1745

1745:                                             ; preds = %1742
  %1746 = icmp ult i32 %1738, 32
  br i1 %1746, label %1747, label %1766

1747:                                             ; preds = %1745
  %1748 = zext nneg i32 %1738 to i64
  br label %1749

1749:                                             ; preds = %1747, %1755
  %1750 = phi i64 [ %1748, %1747 ], [ %1762, %1755 ]
  %1751 = phi i64 [ %1737, %1747 ], [ %1761, %1755 ]
  %1752 = phi i32 [ %1736, %1747 ], [ %1756, %1755 ]
  %1753 = phi ptr [ %1735, %1747 ], [ %1757, %1755 ]
  %1754 = icmp eq i32 %1752, 0
  br i1 %1754, label %1804, label %1755

1755:                                             ; preds = %1749
  %1756 = add i32 %1752, -1
  %1757 = getelementptr inbounds i8, ptr %1753, i64 1
  %1758 = load i8, ptr %1753, align 1, !tbaa !65
  %1759 = zext i8 %1758 to i64
  %1760 = shl nuw nsw i64 %1759, %1750
  %1761 = add i64 %1760, %1751
  %1762 = add nuw nsw i64 %1750, 8
  %1763 = icmp ult i64 %1750, 24
  br i1 %1763, label %1749, label %1764, !llvm.loop !135

1764:                                             ; preds = %1755
  %1765 = trunc i64 %1762 to i32
  br label %1766

1766:                                             ; preds = %1764, %1745
  %1767 = phi ptr [ %1735, %1745 ], [ %1757, %1764 ]
  %1768 = phi i32 [ %1736, %1745 ], [ %1756, %1764 ]
  %1769 = phi i64 [ %1737, %1745 ], [ %1761, %1764 ]
  %1770 = phi i32 [ %1738, %1745 ], [ %1765, %1764 ]
  %1771 = load i64, ptr %46, align 8, !tbaa !41
  %1772 = and i64 %1771, 4294967295
  %1773 = icmp eq i64 %1769, %1772
  br i1 %1773, label %1775, label %1774

1774:                                             ; preds = %1766
  store ptr @.str.18, ptr %47, align 8, !tbaa !66
  store i32 29, ptr %7, align 8, !tbaa !46
  br label %1652

1775:                                             ; preds = %1766, %1742, %1734
  %1776 = phi ptr [ %1735, %1742 ], [ %1735, %1734 ], [ %1767, %1766 ]
  %1777 = phi i32 [ %1736, %1742 ], [ %1736, %1734 ], [ %1768, %1766 ]
  %1778 = phi i64 [ %1737, %1742 ], [ %1737, %1734 ], [ 0, %1766 ]
  %1779 = phi i32 [ %1738, %1742 ], [ %1738, %1734 ], [ 0, %1766 ]
  store i32 28, ptr %7, align 8, !tbaa !46
  br label %1844

1780:                                             ; preds = %1106
  %1781 = trunc i64 %1107 to i32
  br label %1844

1782:                                             ; preds = %1040
  %1783 = trunc i64 %1041 to i32
  br label %1844

1784:                                             ; preds = %1076
  %1785 = trunc i64 %1077 to i32
  br label %1844

1786:                                             ; preds = %220
  %1787 = trunc i64 %221 to i32
  br label %1844

1788:                                             ; preds = %654
  %1789 = trunc i64 %655 to i32
  br label %1844

1790:                                             ; preds = %438
  %1791 = trunc i64 %439 to i32
  br label %1844

1792:                                             ; preds = %387
  %1793 = trunc i64 %388 to i32
  br label %1844

1794:                                             ; preds = %341
  %1795 = trunc i64 %342 to i32
  br label %1844

1796:                                             ; preds = %287
  %1797 = trunc i64 %288 to i32
  br label %1844

1798:                                             ; preds = %694
  %1799 = trunc i64 %695 to i32
  br label %1844

1800:                                             ; preds = %786
  %1801 = trunc i64 %787 to i32
  br label %1844

1802:                                             ; preds = %841
  %1803 = trunc i64 %842 to i32
  br label %1844

1804:                                             ; preds = %1749
  %1805 = trunc i64 %1750 to i32
  br label %1844

1806:                                             ; preds = %1676
  %1807 = trunc i64 %1677 to i32
  br label %1844

1808:                                             ; preds = %979
  %1809 = zext i32 %967 to i64
  %1810 = shl i32 %967, 3
  %1811 = add i32 %1810, %965
  %1812 = getelementptr i8, ptr %968, i64 %1809
  br label %1844

1813:                                             ; preds = %1555
  %1814 = shl i32 %1547, 3
  %1815 = add i32 %1549, %1814
  %1816 = zext i32 %1547 to i64
  %1817 = getelementptr i8, ptr %1546, i64 %1816
  br label %1844

1818:                                             ; preds = %1481
  %1819 = zext i32 %1453 to i64
  %1820 = shl i32 %1453, 3
  %1821 = add i32 %1820, %1455
  %1822 = getelementptr i8, ptr %1452, i64 %1819
  br label %1844

1823:                                             ; preds = %1425
  %1824 = zext i32 %1407 to i64
  %1825 = shl i32 %1407, 3
  %1826 = add i32 %1825, %1409
  %1827 = getelementptr i8, ptr %1406, i64 %1824
  br label %1844

1828:                                             ; preds = %1367
  %1829 = shl i32 %1359, 3
  %1830 = add i32 %1361, %1829
  %1831 = zext i32 %1359 to i64
  %1832 = getelementptr i8, ptr %1358, i64 %1831
  br label %1844

1833:                                             ; preds = %1288
  %1834 = zext i32 %1259 to i64
  %1835 = shl i32 %1259, 3
  %1836 = add i32 %1835, %1261
  %1837 = getelementptr i8, ptr %1258, i64 %1834
  br label %1844

1838:                                             ; preds = %1231
  %1839 = zext i32 %1199 to i64
  %1840 = shl i32 %1199, 3
  %1841 = add i32 %1840, %1201
  %1842 = getelementptr i8, ptr %1198, i64 %1839
  br label %1844

1843:                                             ; preds = %190
  br label %1844

1844:                                             ; preds = %526, %542, %576, %596, %630, %726, %813, %828, %1190, %1592, %1662, %740, %906, %190, %1843, %1838, %1833, %1828, %1823, %1818, %1813, %1808, %1806, %1804, %1802, %1800, %1798, %1796, %1794, %1792, %1790, %1788, %1786, %1784, %1782, %1780, %1775, %766
  %1845 = phi ptr [ %757, %766 ], [ %1776, %1775 ], [ %1110, %1780 ], [ %1044, %1782 ], [ %1080, %1784 ], [ %224, %1786 ], [ %658, %1788 ], [ %442, %1790 ], [ %391, %1792 ], [ %345, %1794 ], [ %291, %1796 ], [ %698, %1798 ], [ %790, %1800 ], [ %845, %1802 ], [ %1753, %1804 ], [ %1680, %1806 ], [ %1812, %1808 ], [ %1817, %1813 ], [ %1822, %1818 ], [ %1827, %1823 ], [ %1832, %1828 ], [ %1837, %1833 ], [ %1842, %1838 ], [ %191, %190 ], [ %904, %906 ], [ %191, %1662 ], [ %1593, %1592 ], [ %1167, %1190 ], [ %822, %828 ], [ %804, %813 ], [ %727, %726 ], [ %589, %596 ], [ %633, %630 ], [ %535, %542 ], [ %579, %576 ], [ %527, %526 ], [ %732, %740 ], [ %191, %1843 ]
  %1846 = phi i32 [ %758, %766 ], [ %1777, %1775 ], [ 0, %1780 ], [ 0, %1782 ], [ 0, %1784 ], [ 0, %1786 ], [ 0, %1788 ], [ 0, %1790 ], [ 0, %1792 ], [ 0, %1794 ], [ 0, %1796 ], [ 0, %1798 ], [ 0, %1800 ], [ 0, %1802 ], [ 0, %1804 ], [ 0, %1806 ], [ 0, %1808 ], [ 0, %1813 ], [ 0, %1818 ], [ 0, %1823 ], [ 0, %1828 ], [ 0, %1833 ], [ 0, %1838 ], [ %193, %190 ], [ 0, %906 ], [ %193, %1662 ], [ %1594, %1592 ], [ %1168, %1190 ], [ %823, %828 ], [ %805, %813 ], [ %728, %726 ], [ 0, %596 ], [ %631, %630 ], [ 0, %542 ], [ %577, %576 ], [ %528, %526 ], [ 0, %740 ], [ %193, %1843 ]
  %1847 = phi i64 [ %767, %766 ], [ %1778, %1775 ], [ %1108, %1780 ], [ %1042, %1782 ], [ %1078, %1784 ], [ %222, %1786 ], [ %656, %1788 ], [ %440, %1790 ], [ %389, %1792 ], [ %343, %1794 ], [ %289, %1796 ], [ %696, %1798 ], [ %788, %1800 ], [ %843, %1802 ], [ %1751, %1804 ], [ %1678, %1806 ], [ %981, %1808 ], [ %1557, %1813 ], [ %1483, %1818 ], [ %1427, %1823 ], [ %1369, %1828 ], [ %1290, %1833 ], [ %1233, %1838 ], [ %195, %190 ], [ %902, %906 ], [ %195, %1662 ], [ %1595, %1592 ], [ %1169, %1190 ], [ %824, %828 ], [ 0, %813 ], [ %729, %726 ], [ %591, %596 ], [ %591, %630 ], [ %537, %542 ], [ %537, %576 ], [ %484, %526 ], [ %734, %740 ], [ %195, %1843 ]
  %1848 = phi i32 [ %768, %766 ], [ %1779, %1775 ], [ %1781, %1780 ], [ %1783, %1782 ], [ %1785, %1784 ], [ %1787, %1786 ], [ %1789, %1788 ], [ %1791, %1790 ], [ %1793, %1792 ], [ %1795, %1794 ], [ %1797, %1796 ], [ %1799, %1798 ], [ %1801, %1800 ], [ %1803, %1802 ], [ %1805, %1804 ], [ %1807, %1806 ], [ %1811, %1808 ], [ %1815, %1813 ], [ %1821, %1818 ], [ %1826, %1823 ], [ %1830, %1828 ], [ %1836, %1833 ], [ %1841, %1838 ], [ %196, %190 ], [ %901, %906 ], [ %196, %1662 ], [ %1596, %1592 ], [ %1170, %1190 ], [ %825, %828 ], [ 0, %813 ], [ %730, %726 ], [ %592, %596 ], [ %592, %630 ], [ %538, %542 ], [ %538, %576 ], [ %485, %526 ], [ %735, %740 ], [ %196, %1843 ]
  %1849 = phi i32 [ %197, %766 ], [ %1739, %1775 ], [ %197, %1780 ], [ %197, %1782 ], [ %197, %1784 ], [ %197, %1786 ], [ %197, %1788 ], [ %197, %1790 ], [ %197, %1792 ], [ %197, %1794 ], [ %197, %1796 ], [ %197, %1798 ], [ %197, %1800 ], [ %197, %1802 ], [ %1739, %1804 ], [ %197, %1806 ], [ %197, %1808 ], [ %197, %1813 ], [ %197, %1818 ], [ %197, %1823 ], [ %197, %1828 ], [ %197, %1833 ], [ %197, %1838 ], [ %197, %190 ], [ %197, %906 ], [ %197, %740 ], [ %197, %1662 ], [ %197, %1592 ], [ %197, %1190 ], [ %197, %828 ], [ %197, %813 ], [ %197, %726 ], [ %197, %630 ], [ %197, %596 ], [ %197, %576 ], [ %197, %542 ], [ %197, %526 ], [ %197, %1843 ]
  %1850 = phi i32 [ %198, %766 ], [ 1, %1775 ], [ %953, %1780 ], [ %953, %1782 ], [ %953, %1784 ], [ %198, %1786 ], [ %198, %1788 ], [ %198, %1790 ], [ %198, %1792 ], [ %198, %1794 ], [ %198, %1796 ], [ %198, %1798 ], [ %198, %1800 ], [ %198, %1802 ], [ %198, %1804 ], [ %198, %1806 ], [ %953, %1808 ], [ %1550, %1813 ], [ %1410, %1818 ], [ %1410, %1823 ], [ %1362, %1828 ], [ %1202, %1833 ], [ %1202, %1838 ], [ 1, %190 ], [ %198, %906 ], [ %198, %1662 ], [ %1597, %1592 ], [ 0, %1190 ], [ %198, %828 ], [ %198, %813 ], [ %198, %726 ], [ %198, %596 ], [ %198, %630 ], [ %198, %542 ], [ %198, %576 ], [ %198, %526 ], [ %198, %740 ], [ -3, %1843 ]
  store ptr %192, ptr %10, align 8, !tbaa !69
  store i32 %194, ptr %25, align 8, !tbaa !72
  store ptr %1845, ptr %0, align 8, !tbaa !70
  store i32 %1846, ptr %27, align 8, !tbaa !71
  store i64 %1847, ptr %29, align 8, !tbaa !51
  store i32 %1848, ptr %31, align 8, !tbaa !52
  %1851 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 10
  %1852 = load i32, ptr %1851, align 4, !tbaa !58
  %1853 = icmp eq i32 %1852, 0
  br i1 %1853, label %1854, label %1863

1854:                                             ; preds = %1844
  %1855 = icmp eq i32 %1849, %194
  br i1 %1855, label %1867, label %1856

1856:                                             ; preds = %1854
  %1857 = load i32, ptr %7, align 8, !tbaa !46
  %1858 = icmp ult i32 %1857, 29
  br i1 %1858, label %1859, label %1867

1859:                                             ; preds = %1856
  %1860 = icmp ult i32 %1857, 26
  %1861 = icmp ne i32 %1, 4
  %1862 = or i1 %1861, %1860
  br i1 %1862, label %1863, label %1867

1863:                                             ; preds = %1859, %1844
  %1864 = call fastcc i32 @updatewindow(ptr noundef nonnull %0, i32 noundef %1849), !range !136
  %1865 = icmp eq i32 %1864, 0
  br i1 %1865, label %1867, label %1866

1866:                                             ; preds = %1863
  store i32 30, ptr %7, align 8, !tbaa !46
  br label %1931

1867:                                             ; preds = %1863, %1859, %1856, %1854
  %1868 = load i32, ptr %27, align 8, !tbaa !71
  %1869 = sub i32 %28, %1868
  %1870 = load i32, ptr %25, align 8, !tbaa !72
  %1871 = sub i32 %1849, %1870
  %1872 = zext i32 %1869 to i64
  %1873 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 2
  %1874 = load i64, ptr %1873, align 8, !tbaa !43
  %1875 = add i64 %1874, %1872
  store i64 %1875, ptr %1873, align 8, !tbaa !43
  %1876 = zext i32 %1871 to i64
  %1877 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 5
  %1878 = load i64, ptr %1877, align 8, !tbaa !134
  %1879 = add i64 %1878, %1876
  store i64 %1879, ptr %1877, align 8, !tbaa !134
  %1880 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 7
  %1881 = load i64, ptr %1880, align 8, !tbaa !41
  %1882 = add i64 %1881, %1876
  store i64 %1882, ptr %1880, align 8, !tbaa !41
  %1883 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 2
  %1884 = load i32, ptr %1883, align 8, !tbaa !44
  %1885 = icmp ne i32 %1884, 0
  %1886 = icmp ne i32 %1849, %1870
  %1887 = select i1 %1885, i1 %1886, i1 false
  br i1 %1887, label %1888, label %1905

1888:                                             ; preds = %1867
  %1889 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 4
  %1890 = load i32, ptr %1889, align 8, !tbaa !77
  %1891 = icmp eq i32 %1890, 0
  %1892 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 6
  %1893 = load i64, ptr %1892, align 8, !tbaa !76
  %1894 = load ptr, ptr %10, align 8, !tbaa !69
  %1895 = sub nsw i64 0, %1876
  %1896 = getelementptr inbounds i8, ptr %1894, i64 %1895
  br i1 %1891, label %1899, label %1897

1897:                                             ; preds = %1888
  %1898 = call i64 @crc32(i64 noundef %1893, ptr noundef %1896, i32 noundef %1871) #10
  br label %1901

1899:                                             ; preds = %1888
  %1900 = call i64 @adler32(i64 noundef %1893, ptr noundef %1896, i32 noundef %1871) #10
  br label %1901

1901:                                             ; preds = %1899, %1897
  %1902 = phi i64 [ %1898, %1897 ], [ %1900, %1899 ]
  %1903 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 6
  store i64 %1902, ptr %1903, align 8, !tbaa !76
  %1904 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 12
  store i64 %1902, ptr %1904, align 8, !tbaa !45
  br label %1905

1905:                                             ; preds = %1901, %1867
  %1906 = load i32, ptr %31, align 8, !tbaa !52
  %1907 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 1
  %1908 = load i32, ptr %1907, align 4, !tbaa !47
  %1909 = icmp eq i32 %1908, 0
  %1910 = select i1 %1909, i32 0, i32 64
  %1911 = add i32 %1910, %1906
  %1912 = load i32, ptr %7, align 8, !tbaa !46
  %1913 = icmp eq i32 %1912, 11
  %1914 = select i1 %1913, i32 128, i32 0
  %1915 = add i32 %1911, %1914
  %1916 = icmp eq i32 %1912, 19
  %1917 = icmp eq i32 %1912, 14
  %1918 = or i1 %1916, %1917
  %1919 = select i1 %1918, i32 256, i32 0
  %1920 = add i32 %1915, %1919
  %1921 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 11
  store i32 %1920, ptr %1921, align 8, !tbaa !137
  %1922 = icmp eq i32 %28, %1868
  %1923 = icmp eq i32 %1849, %1870
  %1924 = select i1 %1922, i1 %1923, i1 false
  %1925 = icmp eq i32 %1, 4
  %1926 = or i1 %1925, %1924
  %1927 = icmp eq i32 %1850, 0
  %1928 = select i1 %1926, i1 %1927, i1 false
  %1929 = select i1 %1928, i32 -5, i32 %1850
  br label %1931

1930:                                             ; preds = %190
  br label %1931

1931:                                             ; preds = %190, %1930, %2, %5, %9, %16, %1905, %1866, %723
  %1932 = phi i32 [ -4, %1866 ], [ %1929, %1905 ], [ 2, %723 ], [ -2, %16 ], [ -2, %9 ], [ -2, %5 ], [ -2, %2 ], [ -2, %1930 ], [ -4, %190 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  ret i32 %1932
}

declare i64 @crc32(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i64 @adler32(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare hidden i32 @inflate_table(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare hidden void @inflate_fast(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @updatewindow(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.inflate_state, ptr %4, i64 0, i32 13
  %6 = load ptr, ptr %5, align 8, !tbaa !61
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %18

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 8
  %10 = load ptr, ptr %9, align 8, !tbaa !67
  %11 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 10
  %12 = load ptr, ptr %11, align 8, !tbaa !64
  %13 = getelementptr inbounds %struct.inflate_state, ptr %4, i64 0, i32 9
  %14 = load i32, ptr %13, align 8, !tbaa !62
  %15 = shl nuw i32 1, %14
  %16 = tail call ptr %10(ptr noundef %12, i32 noundef %15, i32 noundef 1) #10
  store ptr %16, ptr %5, align 8, !tbaa !61
  %17 = icmp eq ptr %16, null
  br i1 %17, label %79, label %18

18:                                               ; preds = %8, %2
  %19 = getelementptr inbounds %struct.inflate_state, ptr %4, i64 0, i32 10
  %20 = load i32, ptr %19, align 4, !tbaa !58
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.inflate_state, ptr %4, i64 0, i32 9
  %24 = load i32, ptr %23, align 8, !tbaa !62
  %25 = shl nuw i32 1, %24
  store i32 %25, ptr %19, align 4, !tbaa !58
  %26 = getelementptr inbounds %struct.inflate_state, ptr %4, i64 0, i32 12
  store i32 0, ptr %26, align 4, !tbaa !60
  %27 = getelementptr inbounds %struct.inflate_state, ptr %4, i64 0, i32 11
  store i32 0, ptr %27, align 8, !tbaa !59
  br label %28

28:                                               ; preds = %22, %18
  %29 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 4
  %30 = load i32, ptr %29, align 8, !tbaa !72
  %31 = sub i32 %1, %30
  %32 = load i32, ptr %19, align 4, !tbaa !58
  %33 = icmp ult i32 %31, %32
  br i1 %33, label %44, label %34

34:                                               ; preds = %28
  %35 = load ptr, ptr %5, align 8, !tbaa !61
  %36 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !69
  %38 = zext i32 %32 to i64
  %39 = sub nsw i64 0, %38
  %40 = getelementptr inbounds i8, ptr %37, i64 %39
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %35, ptr align 1 %40, i64 %38, i1 false)
  %41 = getelementptr inbounds %struct.inflate_state, ptr %4, i64 0, i32 12
  store i32 0, ptr %41, align 4, !tbaa !60
  %42 = load i32, ptr %19, align 4, !tbaa !58
  %43 = getelementptr inbounds %struct.inflate_state, ptr %4, i64 0, i32 11
  store i32 %42, ptr %43, align 8, !tbaa !59
  br label %79

44:                                               ; preds = %28
  %45 = getelementptr inbounds %struct.inflate_state, ptr %4, i64 0, i32 12
  %46 = load i32, ptr %45, align 4, !tbaa !60
  %47 = sub i32 %32, %46
  %48 = tail call i32 @llvm.umin.i32(i32 %47, i32 %31)
  %49 = load ptr, ptr %5, align 8, !tbaa !61
  %50 = zext i32 %46 to i64
  %51 = getelementptr inbounds i8, ptr %49, i64 %50
  %52 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 3
  %53 = load ptr, ptr %52, align 8, !tbaa !69
  %54 = zext i32 %31 to i64
  %55 = sub nsw i64 0, %54
  %56 = getelementptr inbounds i8, ptr %53, i64 %55
  %57 = zext i32 %48 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %51, ptr align 1 %56, i64 %57, i1 false)
  %58 = icmp ugt i32 %31, %47
  br i1 %58, label %59, label %68

59:                                               ; preds = %44
  %60 = sub i32 %31, %48
  %61 = load ptr, ptr %5, align 8, !tbaa !61
  %62 = load ptr, ptr %52, align 8, !tbaa !69
  %63 = zext i32 %60 to i64
  %64 = sub nsw i64 0, %63
  %65 = getelementptr inbounds i8, ptr %62, i64 %64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %61, ptr align 1 %65, i64 %63, i1 false)
  store i32 %60, ptr %45, align 4, !tbaa !60
  %66 = load i32, ptr %19, align 4, !tbaa !58
  %67 = getelementptr inbounds %struct.inflate_state, ptr %4, i64 0, i32 11
  store i32 %66, ptr %67, align 8, !tbaa !59
  br label %79

68:                                               ; preds = %44
  %69 = load i32, ptr %45, align 4, !tbaa !60
  %70 = add i32 %69, %48
  store i32 %70, ptr %45, align 4, !tbaa !60
  %71 = load i32, ptr %19, align 4, !tbaa !58
  %72 = icmp eq i32 %70, %71
  %73 = select i1 %72, i32 0, i32 %70
  store i32 %73, ptr %45, align 4
  %74 = getelementptr inbounds %struct.inflate_state, ptr %4, i64 0, i32 11
  %75 = load i32, ptr %74, align 8, !tbaa !59
  %76 = icmp ult i32 %75, %71
  br i1 %76, label %77, label %79

77:                                               ; preds = %68
  %78 = add i32 %75, %48
  store i32 %78, ptr %74, align 8, !tbaa !59
  br label %79

79:                                               ; preds = %34, %68, %77, %59, %8
  %80 = phi i32 [ 1, %8 ], [ 0, %59 ], [ 0, %77 ], [ 0, %68 ], [ 0, %34 ]
  ret i32 %80
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @inflateEnd(ptr noundef %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %23, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %23, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !63
  %10 = icmp eq ptr %9, null
  br i1 %10, label %23, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.inflate_state, ptr %5, i64 0, i32 13
  %13 = load ptr, ptr %12, align 8, !tbaa !61
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 10
  %17 = load ptr, ptr %16, align 8, !tbaa !64
  tail call void %9(ptr noundef %17, ptr noundef nonnull %13) #10
  br label %18

18:                                               ; preds = %15, %11
  %19 = load ptr, ptr %8, align 8, !tbaa !63
  %20 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 10
  %21 = load ptr, ptr %20, align 8, !tbaa !64
  %22 = load ptr, ptr %4, align 8, !tbaa !34
  tail call void %19(ptr noundef %21, ptr noundef %22) #10
  store ptr null, ptr %4, align 8, !tbaa !34
  br label %23

23:                                               ; preds = %1, %3, %7, %18
  %24 = phi i32 [ 0, %18 ], [ -2, %7 ], [ -2, %3 ], [ -2, %1 ]
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @inflateSetDictionary(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %37, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %37, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !44
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = load i32, ptr %7, align 8, !tbaa !46
  %15 = icmp eq i32 %14, 10
  br i1 %15, label %16, label %37

16:                                               ; preds = %13, %9
  %17 = load i32, ptr %7, align 8, !tbaa !46
  %18 = icmp eq i32 %17, 10
  br i1 %18, label %19, label %25

19:                                               ; preds = %16
  %20 = tail call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #10
  %21 = tail call i64 @adler32(i64 noundef %20, ptr noundef %1, i32 noundef %2) #10
  %22 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 6
  %23 = load i64, ptr %22, align 8, !tbaa !76
  %24 = icmp eq i64 %21, %23
  br i1 %24, label %25, label %37

25:                                               ; preds = %19, %16
  %26 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !69
  %28 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 4
  %29 = load i32, ptr %28, align 8, !tbaa !72
  %30 = zext i32 %2 to i64
  %31 = getelementptr inbounds i8, ptr %1, i64 %30
  store ptr %31, ptr %26, align 8, !tbaa !69
  store i32 0, ptr %28, align 8, !tbaa !72
  %32 = tail call fastcc i32 @updatewindow(ptr noundef nonnull %0, i32 noundef %2), !range !136
  store i32 %29, ptr %28, align 8, !tbaa !72
  store ptr %27, ptr %26, align 8, !tbaa !69
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %25
  store i32 30, ptr %7, align 8, !tbaa !46
  br label %37

35:                                               ; preds = %25
  %36 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 3
  store i32 1, ptr %36, align 4, !tbaa !48
  br label %37

37:                                               ; preds = %19, %13, %3, %5, %35, %34
  %38 = phi i32 [ -4, %34 ], [ 0, %35 ], [ -2, %5 ], [ -2, %3 ], [ -2, %13 ], [ -3, %19 ]
  ret i32 %38
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @inflateGetHeader(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %16, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.inflate_state, ptr %6, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !44
  %11 = and i32 %10, 2
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.inflate_state, ptr %6, i64 0, i32 8
  store ptr %1, ptr %14, align 8, !tbaa !50
  %15 = getelementptr inbounds %struct.gz_header_s, ptr %1, i64 0, i32 12
  store i32 0, ptr %15, align 8, !tbaa !78
  br label %16

16:                                               ; preds = %8, %2, %4, %13
  %17 = phi i32 [ 0, %13 ], [ -2, %4 ], [ -2, %2 ], [ -2, %8 ]
  ret i32 %17
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @inflateSync(ptr noundef %0) local_unnamed_addr #5 {
  %2 = alloca [4 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #10
  %3 = icmp eq ptr %0, null
  br i1 %3, label %138, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %138, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !71
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.inflate_state, ptr %6, i64 0, i32 15
  %14 = load i32, ptr %13, align 8, !tbaa !52
  %15 = icmp ult i32 %14, 8
  br i1 %15, label %138, label %16

16:                                               ; preds = %12, %8
  %17 = load i32, ptr %6, align 8, !tbaa !46
  %18 = icmp eq i32 %17, 31
  br i1 %18, label %70, label %19

19:                                               ; preds = %16
  store i32 31, ptr %6, align 8, !tbaa !46
  %20 = getelementptr inbounds %struct.inflate_state, ptr %6, i64 0, i32 15
  %21 = load i32, ptr %20, align 8, !tbaa !52
  %22 = and i32 %21, 7
  %23 = getelementptr inbounds %struct.inflate_state, ptr %6, i64 0, i32 14
  %24 = load i64, ptr %23, align 8, !tbaa !51
  %25 = zext nneg i32 %22 to i64
  %26 = shl i64 %24, %25
  store i64 %26, ptr %23, align 8, !tbaa !51
  %27 = and i32 %21, -8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %43, label %29

29:                                               ; preds = %19
  %30 = load i64, ptr %23, align 8, !tbaa !51
  br label %31

31:                                               ; preds = %29, %31
  %32 = phi i64 [ 0, %29 ], [ %36, %31 ]
  %33 = phi i64 [ %30, %29 ], [ %38, %31 ]
  %34 = phi i32 [ %27, %29 ], [ %39, %31 ]
  %35 = trunc i64 %33 to i8
  %36 = add nuw nsw i64 %32, 1
  %37 = getelementptr inbounds [4 x i8], ptr %2, i64 0, i64 %32
  store i8 %35, ptr %37, align 1, !tbaa !65
  %38 = lshr i64 %33, 8
  %39 = add i32 %34, -8
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %31, !llvm.loop !138

41:                                               ; preds = %31
  %42 = trunc i64 %36 to i32
  store i64 %38, ptr %23, align 8, !tbaa !51
  br label %43

43:                                               ; preds = %41, %19
  %44 = phi i32 [ %39, %41 ], [ %27, %19 ]
  %45 = phi i32 [ %42, %41 ], [ 0, %19 ]
  store i32 %44, ptr %20, align 8, !tbaa !52
  %46 = getelementptr inbounds %struct.inflate_state, ptr %6, i64 0, i32 26
  store i32 0, ptr %46, align 4, !tbaa !108
  %47 = icmp eq i32 %45, 0
  br i1 %47, label %68, label %48

48:                                               ; preds = %43
  %49 = zext i32 %45 to i64
  br label %50

50:                                               ; preds = %48, %50
  %51 = phi i64 [ 0, %48 ], [ %64, %50 ]
  %52 = phi i32 [ 0, %48 ], [ %63, %50 ]
  %53 = getelementptr inbounds i8, ptr %2, i64 %51
  %54 = load i8, ptr %53, align 1, !tbaa !65
  %55 = zext i8 %54 to i32
  %56 = icmp ult i32 %52, 2
  %57 = select i1 %56, i32 0, i32 255
  %58 = icmp eq i32 %57, %55
  %59 = add nuw nsw i32 %52, 1
  %60 = icmp eq i8 %54, 0
  %61 = sub nuw nsw i32 4, %52
  %62 = select i1 %60, i32 %61, i32 0
  %63 = select i1 %58, i32 %59, i32 %62
  %64 = add nuw nsw i64 %51, 1
  %65 = icmp ult i64 %64, %49
  %66 = icmp ult i32 %63, 4
  %67 = select i1 %65, i1 %66, i1 false
  br i1 %67, label %50, label %68, !llvm.loop !139

68:                                               ; preds = %50, %43
  %69 = phi i32 [ 0, %43 ], [ %63, %50 ]
  store i32 %69, ptr %46, align 4, !tbaa !140
  br label %70

70:                                               ; preds = %68, %16
  %71 = getelementptr inbounds %struct.inflate_state, ptr %6, i64 0, i32 26
  %72 = load ptr, ptr %0, align 8, !tbaa !70
  %73 = load i32, ptr %9, align 8, !tbaa !71
  %74 = load i32, ptr %71, align 4, !tbaa !140
  %75 = icmp ne i32 %73, 0
  %76 = icmp ult i32 %74, 4
  %77 = select i1 %75, i1 %76, i1 false
  br i1 %77, label %78, label %100

78:                                               ; preds = %70
  %79 = zext i32 %73 to i64
  br label %80

80:                                               ; preds = %78, %80
  %81 = phi i64 [ 0, %78 ], [ %94, %80 ]
  %82 = phi i32 [ %74, %78 ], [ %93, %80 ]
  %83 = getelementptr inbounds i8, ptr %72, i64 %81
  %84 = load i8, ptr %83, align 1, !tbaa !65
  %85 = zext i8 %84 to i32
  %86 = icmp ult i32 %82, 2
  %87 = select i1 %86, i32 0, i32 255
  %88 = icmp eq i32 %87, %85
  %89 = add nuw nsw i32 %82, 1
  %90 = icmp eq i8 %84, 0
  %91 = sub nuw nsw i32 4, %82
  %92 = select i1 %90, i32 %91, i32 0
  %93 = select i1 %88, i32 %89, i32 %92
  %94 = add nuw nsw i64 %81, 1
  %95 = icmp ult i64 %94, %79
  %96 = icmp ult i32 %93, 4
  %97 = select i1 %95, i1 %96, i1 false
  br i1 %97, label %80, label %98, !llvm.loop !139

98:                                               ; preds = %80
  %99 = trunc i64 %94 to i32
  br label %100

100:                                              ; preds = %98, %70
  %101 = phi i32 [ %74, %70 ], [ %93, %98 ]
  %102 = phi i32 [ 0, %70 ], [ %99, %98 ]
  store i32 %101, ptr %71, align 4, !tbaa !140
  %103 = load i32, ptr %9, align 8, !tbaa !71
  %104 = sub i32 %103, %102
  store i32 %104, ptr %9, align 8, !tbaa !71
  %105 = zext i32 %102 to i64
  %106 = getelementptr inbounds i8, ptr %72, i64 %105
  store ptr %106, ptr %0, align 8, !tbaa !70
  %107 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 2
  %108 = load i64, ptr %107, align 8, !tbaa !43
  %109 = add i64 %108, %105
  store i64 %109, ptr %107, align 8, !tbaa !43
  %110 = icmp eq i32 %101, 4
  br i1 %110, label %111, label %138

111:                                              ; preds = %100
  %112 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 5
  %113 = load i64, ptr %112, align 8, !tbaa !134
  %114 = getelementptr inbounds %struct.inflate_state, ptr %6, i64 0, i32 10
  store i32 0, ptr %114, align 4, !tbaa !58
  %115 = getelementptr inbounds %struct.inflate_state, ptr %6, i64 0, i32 11
  store i32 0, ptr %115, align 8, !tbaa !59
  %116 = getelementptr inbounds %struct.inflate_state, ptr %6, i64 0, i32 12
  store i32 0, ptr %116, align 4, !tbaa !60
  %117 = getelementptr inbounds %struct.inflate_state, ptr %6, i64 0, i32 7
  store i64 0, ptr %117, align 8, !tbaa !41
  store i64 0, ptr %107, align 8, !tbaa !43
  %118 = getelementptr inbounds %struct.inflate_state, ptr %6, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %112, i8 0, i64 16, i1 false)
  %119 = load i32, ptr %118, align 8, !tbaa !44
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %125, label %121

121:                                              ; preds = %111
  %122 = and i32 %119, 1
  %123 = zext nneg i32 %122 to i64
  %124 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 12
  store i64 %123, ptr %124, align 8, !tbaa !45
  br label %125

125:                                              ; preds = %121, %111
  store i32 0, ptr %6, align 8, !tbaa !46
  %126 = getelementptr inbounds %struct.inflate_state, ptr %6, i64 0, i32 1
  store i32 0, ptr %126, align 4, !tbaa !47
  %127 = getelementptr inbounds %struct.inflate_state, ptr %6, i64 0, i32 3
  store i32 0, ptr %127, align 4, !tbaa !48
  %128 = getelementptr inbounds %struct.inflate_state, ptr %6, i64 0, i32 5
  store i32 32768, ptr %128, align 4, !tbaa !49
  %129 = getelementptr inbounds %struct.inflate_state, ptr %6, i64 0, i32 8
  store ptr null, ptr %129, align 8, !tbaa !50
  %130 = getelementptr inbounds %struct.inflate_state, ptr %6, i64 0, i32 14
  store i64 0, ptr %130, align 8, !tbaa !51
  %131 = getelementptr inbounds %struct.inflate_state, ptr %6, i64 0, i32 15
  store i32 0, ptr %131, align 8, !tbaa !52
  %132 = getelementptr inbounds %struct.inflate_state, ptr %6, i64 0, i32 30
  %133 = getelementptr inbounds %struct.inflate_state, ptr %6, i64 0, i32 27
  store ptr %132, ptr %133, align 8, !tbaa !53
  %134 = getelementptr inbounds %struct.inflate_state, ptr %6, i64 0, i32 20
  store ptr %132, ptr %134, align 8, !tbaa !54
  %135 = getelementptr inbounds %struct.inflate_state, ptr %6, i64 0, i32 19
  store ptr %132, ptr %135, align 8, !tbaa !55
  %136 = getelementptr inbounds %struct.inflate_state, ptr %6, i64 0, i32 31
  store i32 1, ptr %136, align 8, !tbaa !56
  %137 = getelementptr inbounds %struct.inflate_state, ptr %6, i64 0, i32 32
  store i32 -1, ptr %137, align 4, !tbaa !57
  store i64 %109, ptr %107, align 8, !tbaa !43
  store i64 %113, ptr %112, align 8, !tbaa !134
  store i32 11, ptr %6, align 8, !tbaa !46
  br label %138

138:                                              ; preds = %100, %12, %1, %4, %125
  %139 = phi i32 [ 0, %125 ], [ -2, %4 ], [ -2, %1 ], [ -5, %12 ], [ -3, %100 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  ret i32 %139
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @inflateSyncPoint(ptr noundef readonly %0) local_unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %15, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %3
  %8 = load i32, ptr %5, align 8, !tbaa !46
  %9 = icmp eq i32 %8, 13
  br i1 %9, label %10, label %15

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.inflate_state, ptr %5, i64 0, i32 15
  %12 = load i32, ptr %11, align 8, !tbaa !52
  %13 = icmp eq i32 %12, 0
  %14 = zext i1 %13 to i32
  br label %15

15:                                               ; preds = %7, %10, %1, %3
  %16 = phi i32 [ -2, %3 ], [ -2, %1 ], [ 0, %7 ], [ %14, %10 ]
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @inflateCopy(ptr noundef writeonly %0, ptr noundef readonly %1) local_unnamed_addr #2 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %79, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.z_stream_s, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %79, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.z_stream_s, ptr %1, i64 0, i32 8
  %12 = load ptr, ptr %11, align 8, !tbaa !67
  %13 = icmp eq ptr %12, null
  br i1 %13, label %79, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.z_stream_s, ptr %1, i64 0, i32 9
  %16 = load ptr, ptr %15, align 8, !tbaa !63
  %17 = icmp eq ptr %16, null
  br i1 %17, label %79, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.z_stream_s, ptr %1, i64 0, i32 10
  %20 = load ptr, ptr %19, align 8, !tbaa !64
  %21 = tail call ptr %12(ptr noundef %20, i32 noundef 1, i32 noundef 7152) #10
  %22 = icmp eq ptr %21, null
  br i1 %22, label %79, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.inflate_state, ptr %8, i64 0, i32 13
  %25 = load ptr, ptr %24, align 8, !tbaa !61
  %26 = icmp eq ptr %25, null
  br i1 %26, label %38, label %27

27:                                               ; preds = %23
  %28 = load ptr, ptr %11, align 8, !tbaa !67
  %29 = load ptr, ptr %19, align 8, !tbaa !64
  %30 = getelementptr inbounds %struct.inflate_state, ptr %8, i64 0, i32 9
  %31 = load i32, ptr %30, align 8, !tbaa !62
  %32 = shl nuw i32 1, %31
  %33 = tail call ptr %28(ptr noundef %29, i32 noundef %32, i32 noundef 1) #10
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %27
  %36 = load ptr, ptr %15, align 8, !tbaa !63
  %37 = load ptr, ptr %19, align 8, !tbaa !64
  tail call void %36(ptr noundef %37, ptr noundef nonnull %21) #10
  br label %79

38:                                               ; preds = %27, %23
  %39 = phi ptr [ %33, %27 ], [ null, %23 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(112) %0, ptr noundef nonnull align 1 dereferenceable(112) %1, i64 112, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7152) %21, ptr noundef nonnull align 1 dereferenceable(7152) %8, i64 7152, i1 false)
  %40 = getelementptr inbounds %struct.inflate_state, ptr %8, i64 0, i32 19
  %41 = load ptr, ptr %40, align 8, !tbaa !55
  %42 = getelementptr inbounds %struct.inflate_state, ptr %8, i64 0, i32 30
  %43 = icmp ult ptr %41, %42
  %44 = getelementptr inbounds %struct.inflate_state, ptr %8, i64 0, i32 30, i64 1443
  %45 = icmp ugt ptr %41, %44
  %46 = select i1 %43, i1 true, i1 %45
  br i1 %46, label %60, label %47

47:                                               ; preds = %38
  %48 = getelementptr inbounds %struct.inflate_state, ptr %21, i64 0, i32 30
  %49 = ptrtoint ptr %41 to i64
  %50 = ptrtoint ptr %42 to i64
  %51 = sub i64 %49, %50
  %52 = getelementptr inbounds i8, ptr %48, i64 %51
  %53 = getelementptr inbounds %struct.inflate_state, ptr %21, i64 0, i32 19
  store ptr %52, ptr %53, align 8, !tbaa !55
  %54 = getelementptr inbounds %struct.inflate_state, ptr %8, i64 0, i32 20
  %55 = load ptr, ptr %54, align 8, !tbaa !54
  %56 = ptrtoint ptr %55 to i64
  %57 = sub i64 %56, %50
  %58 = getelementptr inbounds i8, ptr %48, i64 %57
  %59 = getelementptr inbounds %struct.inflate_state, ptr %21, i64 0, i32 20
  store ptr %58, ptr %59, align 8, !tbaa !54
  br label %60

60:                                               ; preds = %47, %38
  %61 = getelementptr inbounds %struct.inflate_state, ptr %21, i64 0, i32 30
  %62 = getelementptr inbounds %struct.inflate_state, ptr %8, i64 0, i32 27
  %63 = load ptr, ptr %62, align 8, !tbaa !53
  %64 = ptrtoint ptr %63 to i64
  %65 = ptrtoint ptr %42 to i64
  %66 = sub i64 %64, %65
  %67 = getelementptr inbounds i8, ptr %61, i64 %66
  %68 = getelementptr inbounds %struct.inflate_state, ptr %21, i64 0, i32 27
  store ptr %67, ptr %68, align 8, !tbaa !53
  %69 = icmp eq ptr %39, null
  br i1 %69, label %76, label %70

70:                                               ; preds = %60
  %71 = getelementptr inbounds %struct.inflate_state, ptr %8, i64 0, i32 9
  %72 = load i32, ptr %71, align 8, !tbaa !62
  %73 = shl nuw i32 1, %72
  %74 = load ptr, ptr %24, align 8, !tbaa !61
  %75 = zext i32 %73 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %39, ptr noundef nonnull align 1 dereferenceable(1) %74, i64 %75, i1 false)
  br label %76

76:                                               ; preds = %70, %60
  %77 = getelementptr inbounds %struct.inflate_state, ptr %21, i64 0, i32 13
  store ptr %39, ptr %77, align 8, !tbaa !61
  %78 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  store ptr %21, ptr %78, align 8, !tbaa !34
  br label %79

79:                                               ; preds = %18, %2, %6, %10, %14, %76, %35
  %80 = phi i32 [ -4, %35 ], [ 0, %76 ], [ -2, %14 ], [ -2, %10 ], [ -2, %6 ], [ -2, %2 ], [ -4, %18 ]
  ret i32 %80
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @inflateUndermine(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #7 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.inflate_state, ptr %6, i64 0, i32 31
  store i32 1, ptr %9, align 8, !tbaa !56
  br label %10

10:                                               ; preds = %2, %4, %8
  %11 = phi i32 [ -3, %8 ], [ -2, %4 ], [ -2, %2 ]
  ret i32 %11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @inflateMark(ptr noundef readonly %0) local_unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %26, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %26, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.inflate_state, ptr %5, i64 0, i32 32
  %9 = load i32, ptr %8, align 4, !tbaa !57
  %10 = sext i32 %9 to i64
  %11 = shl nsw i64 %10, 16
  %12 = load i32, ptr %5, align 8, !tbaa !46
  switch i32 %12, label %22 [
    i32 15, label %13
    i32 24, label %16
  ]

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.inflate_state, ptr %5, i64 0, i32 16
  %15 = load i32, ptr %14, align 4, !tbaa !88
  br label %22

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.inflate_state, ptr %5, i64 0, i32 33
  %18 = load i32, ptr %17, align 8, !tbaa !126
  %19 = getelementptr inbounds %struct.inflate_state, ptr %5, i64 0, i32 16
  %20 = load i32, ptr %19, align 4, !tbaa !88
  %21 = sub i32 %18, %20
  br label %22

22:                                               ; preds = %7, %16, %13
  %23 = phi i32 [ %15, %13 ], [ %21, %16 ], [ 0, %7 ]
  %24 = zext i32 %23 to i64
  %25 = add nsw i64 %11, %24
  br label %26

26:                                               ; preds = %1, %3, %22
  %27 = phi i64 [ %25, %22 ], [ -65536, %3 ], [ -65536, %1 ]
  ret i64 %27
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { nounwind }

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
!34 = !{!35, !36, i64 56}
!35 = !{!"z_stream_s", !36, i64 0, !39, i64 8, !40, i64 16, !36, i64 24, !39, i64 32, !40, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !39, i64 88, !40, i64 96, !40, i64 104}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"int", !37, i64 0}
!40 = !{!"long", !37, i64 0}
!41 = !{!42, !40, i64 32}
!42 = !{!"inflate_state", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !40, i64 24, !40, i64 32, !36, i64 40, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !36, i64 64, !40, i64 72, !39, i64 80, !39, i64 84, !39, i64 88, !39, i64 92, !36, i64 96, !36, i64 104, !39, i64 112, !39, i64 116, !39, i64 120, !39, i64 124, !39, i64 128, !39, i64 132, !36, i64 136, !37, i64 144, !37, i64 784, !37, i64 1360, !39, i64 7136, !39, i64 7140, !39, i64 7144}
!43 = !{!35, !40, i64 16}
!44 = !{!42, !39, i64 8}
!45 = !{!35, !40, i64 96}
!46 = !{!42, !39, i64 0}
!47 = !{!42, !39, i64 4}
!48 = !{!42, !39, i64 12}
!49 = !{!42, !39, i64 20}
!50 = !{!42, !36, i64 40}
!51 = !{!42, !40, i64 72}
!52 = !{!42, !39, i64 80}
!53 = !{!42, !36, i64 136}
!54 = !{!42, !36, i64 104}
!55 = !{!42, !36, i64 96}
!56 = !{!42, !39, i64 7136}
!57 = !{!42, !39, i64 7140}
!58 = !{!42, !39, i64 52}
!59 = !{!42, !39, i64 56}
!60 = !{!42, !39, i64 60}
!61 = !{!42, !36, i64 64}
!62 = !{!42, !39, i64 48}
!63 = !{!35, !36, i64 72}
!64 = !{!35, !36, i64 80}
!65 = !{!37, !37, i64 0}
!66 = !{!35, !36, i64 48}
!67 = !{!35, !36, i64 64}
!68 = !{i32 -2, i32 1}
!69 = !{!35, !36, i64 24}
!70 = !{!35, !36, i64 0}
!71 = !{!35, !39, i64 8}
!72 = !{!35, !39, i64 32}
!73 = distinct !{!73, !74, !75}
!74 = !{!"llvm.loop.mustprogress"}
!75 = !{!"llvm.loop.unroll.disable"}
!76 = !{!42, !40, i64 24}
!77 = !{!42, !39, i64 16}
!78 = !{!79, !39, i64 72}
!79 = !{!"gz_header_s", !39, i64 0, !40, i64 8, !39, i64 16, !39, i64 20, !36, i64 24, !39, i64 32, !39, i64 36, !36, i64 40, !39, i64 48, !36, i64 56, !39, i64 64, !39, i64 68, !39, i64 72}
!80 = distinct !{!80, !74, !75}
!81 = !{!79, !39, i64 0}
!82 = distinct !{!82, !74, !75}
!83 = !{!79, !40, i64 8}
!84 = distinct !{!84, !74, !75}
!85 = !{!79, !39, i64 16}
!86 = !{!79, !39, i64 20}
!87 = distinct !{!87, !74, !75}
!88 = !{!42, !39, i64 84}
!89 = !{!79, !39, i64 32}
!90 = !{!79, !36, i64 24}
!91 = !{!79, !39, i64 36}
!92 = !{!79, !36, i64 40}
!93 = !{!79, !39, i64 48}
!94 = distinct !{!94, !74, !75}
!95 = !{!79, !36, i64 56}
!96 = !{!79, !39, i64 64}
!97 = distinct !{!97, !74, !75}
!98 = distinct !{!98, !74, !75}
!99 = !{!79, !39, i64 68}
!100 = distinct !{!100, !74, !75}
!101 = !{!42, !39, i64 112}
!102 = !{!42, !39, i64 116}
!103 = distinct !{!103, !74, !75}
!104 = distinct !{!104, !74, !75}
!105 = !{!42, !39, i64 124}
!106 = !{!42, !39, i64 128}
!107 = !{!42, !39, i64 120}
!108 = !{!42, !39, i64 132}
!109 = !{!110, !110, i64 0}
!110 = !{!"short", !37, i64 0}
!111 = distinct !{!111, !74, !75}
!112 = distinct !{!112, !74, !75}
!113 = !{i64 0, i64 1, !65, i64 1, i64 2, !109}
!114 = distinct !{!114, !75}
!115 = !{i64 0, i64 2, !109}
!116 = distinct !{!116, !74, !75}
!117 = distinct !{!117, !74, !75}
!118 = distinct !{!118, !74, !75}
!119 = distinct !{!119, !74, !75}
!120 = distinct !{!120, !74, !75}
!121 = distinct !{!121, !75}
!122 = !{i64 0, i64 1, !65, i64 1, i64 1, !65, i64 2, i64 2, !109}
!123 = distinct !{!123, !75}
!124 = !{!42, !39, i64 92}
!125 = distinct !{!125, !74, !75}
!126 = !{!42, !39, i64 7144}
!127 = distinct !{!127, !75}
!128 = distinct !{!128, !75}
!129 = !{!42, !39, i64 88}
!130 = distinct !{!130, !74, !75}
!131 = distinct !{!131, !74, !75}
!132 = distinct !{!132, !75}
!133 = distinct !{!133, !74, !75}
!134 = !{!35, !40, i64 40}
!135 = distinct !{!135, !74, !75}
!136 = !{i32 0, i32 2}
!137 = !{!35, !39, i64 88}
!138 = distinct !{!138, !74, !75}
!139 = distinct !{!139, !74, !75}
!140 = !{!39, !39, i64 0}
