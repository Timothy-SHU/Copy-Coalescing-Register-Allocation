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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @inflateReset(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.inflate_state, ptr %5, i64 0, i32 10
  store i32 0, ptr %8, align 4, !tbaa !58
  %9 = getelementptr inbounds %struct.inflate_state, ptr %5, i64 0, i32 11
  store i32 0, ptr %9, align 8, !tbaa !59
  %10 = getelementptr inbounds %struct.inflate_state, ptr %5, i64 0, i32 12
  store i32 0, ptr %10, align 4, !tbaa !60
  %11 = tail call i32 @inflateResetKeep(ptr noundef nonnull %0) #12, !range !61
  br label %12

12:                                               ; preds = %1, %3, %7
  %13 = phi i32 [ %11, %7 ], [ -2, %3 ], [ -2, %1 ]
  ret i32 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @inflateReset2(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %38, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %38, label %8

8:                                                ; preds = %4
  %9 = icmp slt i32 %1, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %8
  %11 = sub nsw i32 0, %1
  br label %18

12:                                               ; preds = %8
  %13 = lshr i32 %1, 4
  %14 = add nuw nsw i32 %13, 1
  %15 = icmp ult i32 %1, 48
  %16 = and i32 %1, 15
  %17 = select i1 %15, i32 %16, i32 %1
  br label %18

18:                                               ; preds = %12, %10
  %19 = phi i32 [ %11, %10 ], [ %17, %12 ]
  %20 = phi i32 [ 0, %10 ], [ %14, %12 ]
  switch i32 %19, label %38 [
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
  %23 = load ptr, ptr %22, align 8, !tbaa !62
  %24 = icmp eq ptr %23, null
  br i1 %24, label %34, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.inflate_state, ptr %6, i64 0, i32 9
  %27 = load i32, ptr %26, align 8, !tbaa !63
  %28 = icmp eq i32 %27, %19
  br i1 %28, label %34, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 9
  %31 = load ptr, ptr %30, align 8, !tbaa !64
  %32 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 10
  %33 = load ptr, ptr %32, align 8, !tbaa !65
  tail call void %31(ptr noundef %33, ptr noundef nonnull %23) #13
  store ptr null, ptr %22, align 8, !tbaa !62
  br label %34

34:                                               ; preds = %29, %25, %21
  %35 = getelementptr inbounds %struct.inflate_state, ptr %6, i64 0, i32 2
  store i32 %20, ptr %35, align 8, !tbaa !44
  %36 = getelementptr inbounds %struct.inflate_state, ptr %6, i64 0, i32 9
  store i32 %19, ptr %36, align 8, !tbaa !63
  %37 = tail call i32 @inflateReset(ptr noundef nonnull %0) #12, !range !61
  br label %38

38:                                               ; preds = %18, %2, %4, %34
  %39 = phi i32 [ %37, %34 ], [ -2, %4 ], [ -2, %2 ], [ -2, %18 ]
  ret i32 %39
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @inflateInit2_(ptr noundef %0, i32 noundef %1, ptr noundef readonly %2, i32 noundef %3) local_unnamed_addr #2 {
  %5 = icmp eq ptr %2, null
  br i1 %5, label %39, label %6

6:                                                ; preds = %4
  %7 = load i8, ptr %2, align 1, !tbaa !66
  %8 = icmp ne i8 %7, 49
  %9 = icmp ne i32 %3, 112
  %10 = or i1 %9, %8
  br i1 %10, label %39, label %11

11:                                               ; preds = %6
  %12 = icmp eq ptr %0, null
  br i1 %12, label %39, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 6
  store ptr null, ptr %14, align 8, !tbaa !67
  %15 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 8
  %16 = load ptr, ptr %15, align 8, !tbaa !68
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  store ptr @zcalloc, ptr %15, align 8, !tbaa !68
  %19 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 10
  store ptr null, ptr %19, align 8, !tbaa !65
  br label %20

20:                                               ; preds = %18, %13
  %21 = phi ptr [ @zcalloc, %18 ], [ %16, %13 ]
  %22 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 9
  %23 = load ptr, ptr %22, align 8, !tbaa !64
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store ptr @zcfree, ptr %22, align 8, !tbaa !64
  br label %26

26:                                               ; preds = %25, %20
  %27 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 10
  %28 = load ptr, ptr %27, align 8, !tbaa !65
  %29 = tail call ptr %21(ptr noundef %28, i32 noundef 1, i32 noundef 7152) #13
  %30 = icmp eq ptr %29, null
  br i1 %30, label %39, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  store ptr %29, ptr %32, align 8, !tbaa !34
  %33 = getelementptr inbounds %struct.inflate_state, ptr %29, i64 0, i32 13
  store ptr null, ptr %33, align 8, !tbaa !62
  %34 = tail call i32 @inflateReset2(ptr noundef nonnull %0, i32 noundef %1) #12, !range !61
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = load ptr, ptr %22, align 8, !tbaa !64
  %38 = load ptr, ptr %27, align 8, !tbaa !65
  tail call void %37(ptr noundef %38, ptr noundef nonnull %29) #13
  store ptr null, ptr %32, align 8, !tbaa !34
  br label %39

39:                                               ; preds = %31, %36, %26, %11, %4, %6
  %40 = phi i32 [ -6, %6 ], [ -6, %4 ], [ -2, %11 ], [ -4, %26 ], [ %34, %36 ], [ 0, %31 ]
  ret i32 %40
}

; Function Attrs: optsize
declare hidden ptr @zcalloc(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: optsize
declare hidden void @zcfree(ptr noundef, ptr noundef) #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @inflateInit_(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = tail call i32 @inflateInit2_(ptr noundef %0, i32 noundef 15, ptr noundef %1, i32 noundef %2) #12, !range !69
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
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
  %15 = icmp ugt i32 %1, 16
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @inflate(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = alloca [4 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  %4 = icmp eq ptr %0, null
  br i1 %4, label %1834, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %1834, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !70
  %12 = icmp eq ptr %11, null
  br i1 %12, label %1834, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %0, align 8, !tbaa !71
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 1
  %18 = load i32, ptr %17, align 8, !tbaa !72
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %1834

20:                                               ; preds = %16, %13
  %21 = load i32, ptr %7, align 8, !tbaa !46
  %22 = icmp eq i32 %21, 11
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i32 12, ptr %7, align 8, !tbaa !46
  br label %24

24:                                               ; preds = %20, %23
  %25 = phi i32 [ %21, %20 ], [ 12, %23 ]
  %26 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 4
  %27 = load i32, ptr %26, align 8, !tbaa !73
  %28 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 1
  %29 = load i32, ptr %28, align 8, !tbaa !72
  %30 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 14
  %31 = load i64, ptr %30, align 8, !tbaa !51
  %32 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 15
  %33 = load i32, ptr %32, align 8, !tbaa !52
  %34 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 2
  %35 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 5
  %36 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 7
  %37 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 4
  %38 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 6
  %39 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 12
  %40 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 6
  %41 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 16
  %42 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 24
  %43 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 25
  %44 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 23
  %45 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 26
  %46 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 30
  %47 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 27
  %48 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 19
  %49 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 21
  %50 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 28
  %51 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 29
  %52 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 28, i64 256
  %53 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 20
  %54 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 22
  %55 = icmp eq i32 %1, 6
  %56 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 32
  %57 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 18
  %58 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 33
  %59 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 17
  %60 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 11
  %61 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 31
  %62 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 12
  %63 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 13
  %64 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 10
  %65 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 3
  %66 = add i32 %1, -5
  %67 = icmp ult i32 %66, 2
  %68 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 1
  %69 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 8
  %70 = getelementptr inbounds [4 x i8], ptr %3, i64 0, i64 1
  %71 = getelementptr inbounds [4 x i8], ptr %3, i64 0, i64 2
  %72 = getelementptr inbounds [4 x i8], ptr %3, i64 0, i64 3
  %73 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 9
  %74 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 5
  br label %75

75:                                               ; preds = %1678, %24
  %76 = phi i32 [ %25, %24 ], [ %1687, %1678 ]
  %77 = phi ptr [ %14, %24 ], [ %1679, %1678 ]
  %78 = phi ptr [ %11, %24 ], [ %1680, %1678 ]
  %79 = phi i32 [ %29, %24 ], [ %1681, %1678 ]
  %80 = phi i32 [ %27, %24 ], [ %1682, %1678 ]
  %81 = phi i64 [ %31, %24 ], [ %1683, %1678 ]
  %82 = phi i32 [ %33, %24 ], [ %1684, %1678 ]
  %83 = phi i32 [ %27, %24 ], [ %1685, %1678 ]
  %84 = phi i32 [ 0, %24 ], [ %1686, %1678 ]
  switch i32 %76, label %1834 [
    i32 0, label %103
    i32 1, label %99
    i32 2, label %224
    i32 3, label %270
    i32 4, label %316
    i32 5, label %381
    i32 6, label %435
    i32 7, label %491
    i32 8, label %547
    i32 9, label %95
    i32 10, label %621
    i32 11, label %631
    i32 12, label %636
    i32 13, label %682
    i32 14, label %721
    i32 15, label %726
    i32 16, label %91
    i32 17, label %784
    i32 18, label %89
    i32 19, label %1092
    i32 20, label %1098
    i32 21, label %87
    i32 22, label %1308
    i32 23, label %85
    i32 24, label %1497
    i32 25, label %1558
    i32 26, label %1565
    i32 27, label %1632
    i32 28, label %1751
    i32 29, label %1752
    i32 30, label %1833
  ]

85:                                               ; preds = %75
  %86 = load i32, ptr %57, align 4, !tbaa !74
  br label %1450

87:                                               ; preds = %75
  %88 = load i32, ptr %57, align 4, !tbaa !74
  br label %1258

89:                                               ; preds = %75
  %90 = load i32, ptr %45, align 4, !tbaa !75
  br label %855

91:                                               ; preds = %75
  %92 = icmp ult i32 %82, 14
  br i1 %92, label %93, label %763

93:                                               ; preds = %91
  %94 = zext nneg i32 %82 to i64
  br label %746

95:                                               ; preds = %75
  %96 = icmp ult i32 %82, 32
  br i1 %96, label %97, label %614

97:                                               ; preds = %95
  %98 = zext nneg i32 %82 to i64
  br label %599

99:                                               ; preds = %75
  %100 = icmp ult i32 %82, 16
  br i1 %100, label %101, label %195

101:                                              ; preds = %99
  %102 = zext nneg i32 %82 to i64
  br label %178

103:                                              ; preds = %75
  %104 = load i32, ptr %34, align 8, !tbaa !44
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %110, label %106

106:                                              ; preds = %103
  %107 = icmp ult i32 %82, 16
  br i1 %107, label %108, label %128

108:                                              ; preds = %106
  %109 = zext nneg i32 %82 to i64
  br label %111

110:                                              ; preds = %103
  store i32 12, ptr %7, align 8, !tbaa !46
  br label %1678

111:                                              ; preds = %108, %117
  %112 = phi i64 [ %109, %108 ], [ %124, %117 ]
  %113 = phi i64 [ %81, %108 ], [ %123, %117 ]
  %114 = phi i32 [ %79, %108 ], [ %118, %117 ]
  %115 = phi ptr [ %77, %108 ], [ %119, %117 ]
  %116 = icmp eq i32 %114, 0
  br i1 %116, label %1694, label %117

117:                                              ; preds = %111
  %118 = add i32 %114, -1
  %119 = getelementptr inbounds i8, ptr %115, i64 1
  %120 = load i8, ptr %115, align 1, !tbaa !66
  %121 = zext i8 %120 to i64
  %122 = shl nuw nsw i64 %121, %112
  %123 = add i64 %122, %113
  %124 = add nuw nsw i64 %112, 8
  %125 = icmp ult i64 %112, 8
  br i1 %125, label %111, label %126, !llvm.loop !76

126:                                              ; preds = %117
  %127 = trunc i64 %124 to i32
  br label %128

128:                                              ; preds = %126, %106
  %129 = phi ptr [ %77, %106 ], [ %119, %126 ]
  %130 = phi i32 [ %79, %106 ], [ %118, %126 ]
  %131 = phi i64 [ %81, %106 ], [ %123, %126 ]
  %132 = phi i32 [ %82, %106 ], [ %127, %126 ]
  %133 = and i32 %104, 2
  %134 = icmp ne i32 %133, 0
  %135 = icmp eq i64 %131, 35615
  %136 = select i1 %134, i1 %135, i1 false
  br i1 %136, label %137, label %140

137:                                              ; preds = %128
  %138 = call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #13
  store i64 %138, ptr %38, align 8, !tbaa !78
  store i8 31, ptr %3, align 1, !tbaa !66
  store i8 -117, ptr %70, align 1, !tbaa !66
  %139 = call i64 @crc32(i64 noundef %138, ptr noundef nonnull %3, i32 noundef 2) #13
  store i64 %139, ptr %38, align 8, !tbaa !78
  store i32 1, ptr %7, align 8, !tbaa !46
  br label %1678

140:                                              ; preds = %128
  store i32 0, ptr %37, align 8, !tbaa !79
  %141 = load ptr, ptr %69, align 8, !tbaa !50
  %142 = icmp eq ptr %141, null
  br i1 %142, label %145, label %143

143:                                              ; preds = %140
  %144 = getelementptr inbounds %struct.gz_header_s, ptr %141, i64 0, i32 12
  store i32 -1, ptr %144, align 8, !tbaa !80
  br label %145

145:                                              ; preds = %143, %140
  %146 = and i32 %104, 1
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %155, label %148

148:                                              ; preds = %145
  %149 = shl i64 %131, 8
  %150 = and i64 %149, 65280
  %151 = lshr i64 %131, 8
  %152 = add nuw nsw i64 %150, %151
  %153 = urem i64 %152, 31
  %154 = icmp eq i64 %153, 0
  br i1 %154, label %156, label %155

155:                                              ; preds = %148, %145
  store ptr @.str.1, ptr %40, align 8, !tbaa !67
  store i32 29, ptr %7, align 8, !tbaa !46
  br label %1678

156:                                              ; preds = %148
  %157 = and i64 %131, 15
  %158 = icmp eq i64 %157, 8
  br i1 %158, label %160, label %159

159:                                              ; preds = %156
  store ptr @.str.2, ptr %40, align 8, !tbaa !67
  store i32 29, ptr %7, align 8, !tbaa !46
  br label %1678

160:                                              ; preds = %156
  %161 = lshr i64 %131, 4
  %162 = add i32 %132, -4
  %163 = trunc i64 %161 to i32
  %164 = and i32 %163, 15
  %165 = add nuw nsw i32 %164, 8
  %166 = load i32, ptr %73, align 8, !tbaa !63
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %160
  store i32 %165, ptr %73, align 8, !tbaa !63
  br label %172

169:                                              ; preds = %160
  %170 = icmp ugt i32 %165, %166
  br i1 %170, label %171, label %172

171:                                              ; preds = %169
  store ptr @.str.3, ptr %40, align 8, !tbaa !67
  store i32 29, ptr %7, align 8, !tbaa !46
  br label %1678

172:                                              ; preds = %169, %168
  %173 = shl nuw nsw i32 256, %164
  store i32 %173, ptr %74, align 4, !tbaa !49
  %174 = call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #13
  store i64 %174, ptr %38, align 8, !tbaa !78
  store i64 %174, ptr %39, align 8, !tbaa !45
  %175 = and i64 %131, 8192
  %176 = icmp eq i64 %175, 0
  %177 = select i1 %176, i32 11, i32 9
  store i32 %177, ptr %7, align 8, !tbaa !46
  br label %1678

178:                                              ; preds = %101, %184
  %179 = phi i64 [ %102, %101 ], [ %191, %184 ]
  %180 = phi i64 [ %81, %101 ], [ %190, %184 ]
  %181 = phi i32 [ %79, %101 ], [ %185, %184 ]
  %182 = phi ptr [ %77, %101 ], [ %186, %184 ]
  %183 = icmp eq i32 %181, 0
  br i1 %183, label %1704, label %184

184:                                              ; preds = %178
  %185 = add i32 %181, -1
  %186 = getelementptr inbounds i8, ptr %182, i64 1
  %187 = load i8, ptr %182, align 1, !tbaa !66
  %188 = zext i8 %187 to i64
  %189 = shl nuw nsw i64 %188, %179
  %190 = add i64 %189, %180
  %191 = add nuw nsw i64 %179, 8
  %192 = icmp ult i64 %179, 8
  br i1 %192, label %178, label %193, !llvm.loop !82

193:                                              ; preds = %184
  %194 = trunc i64 %191 to i32
  br label %195

195:                                              ; preds = %193, %99
  %196 = phi ptr [ %77, %99 ], [ %186, %193 ]
  %197 = phi i32 [ %79, %99 ], [ %185, %193 ]
  %198 = phi i64 [ %81, %99 ], [ %190, %193 ]
  %199 = phi i32 [ %82, %99 ], [ %194, %193 ]
  %200 = trunc i64 %198 to i32
  store i32 %200, ptr %37, align 8, !tbaa !79
  %201 = and i32 %200, 255
  %202 = icmp eq i32 %201, 8
  br i1 %202, label %204, label %203

203:                                              ; preds = %195
  store ptr @.str.2, ptr %40, align 8, !tbaa !67
  store i32 29, ptr %7, align 8, !tbaa !46
  br label %1678

204:                                              ; preds = %195
  %205 = and i32 %200, 57344
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %208, label %207

207:                                              ; preds = %204
  store ptr @.str.4, ptr %40, align 8, !tbaa !67
  store i32 29, ptr %7, align 8, !tbaa !46
  br label %1678

208:                                              ; preds = %204
  %209 = load ptr, ptr %69, align 8, !tbaa !50
  %210 = icmp eq ptr %209, null
  br i1 %210, label %214, label %211

211:                                              ; preds = %208
  %212 = lshr i32 %200, 8
  %213 = and i32 %212, 1
  store i32 %213, ptr %209, align 8, !tbaa !83
  br label %214

214:                                              ; preds = %211, %208
  %215 = and i32 %200, 512
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %223, label %217

217:                                              ; preds = %214
  %218 = trunc i64 %198 to i8
  store i8 %218, ptr %3, align 1, !tbaa !66
  %219 = lshr i64 %198, 8
  %220 = trunc i64 %219 to i8
  store i8 %220, ptr %70, align 1, !tbaa !66
  %221 = load i64, ptr %38, align 8, !tbaa !78
  %222 = call i64 @crc32(i64 noundef %221, ptr noundef nonnull %3, i32 noundef 2) #13
  store i64 %222, ptr %38, align 8, !tbaa !78
  br label %223

223:                                              ; preds = %217, %214
  store i32 2, ptr %7, align 8, !tbaa !46
  br label %226

224:                                              ; preds = %75
  %225 = icmp ult i32 %82, 32
  br i1 %225, label %226, label %247

226:                                              ; preds = %223, %224
  %227 = phi i32 [ 0, %223 ], [ %82, %224 ]
  %228 = phi i64 [ 0, %223 ], [ %81, %224 ]
  %229 = phi i32 [ %197, %223 ], [ %79, %224 ]
  %230 = phi ptr [ %196, %223 ], [ %77, %224 ]
  %231 = zext nneg i32 %227 to i64
  br label %232

232:                                              ; preds = %226, %238
  %233 = phi i64 [ %231, %226 ], [ %245, %238 ]
  %234 = phi i64 [ %228, %226 ], [ %244, %238 ]
  %235 = phi i32 [ %229, %226 ], [ %239, %238 ]
  %236 = phi ptr [ %230, %226 ], [ %240, %238 ]
  %237 = icmp eq i32 %235, 0
  br i1 %237, label %1702, label %238

238:                                              ; preds = %232
  %239 = add i32 %235, -1
  %240 = getelementptr inbounds i8, ptr %236, i64 1
  %241 = load i8, ptr %236, align 1, !tbaa !66
  %242 = zext i8 %241 to i64
  %243 = shl nuw nsw i64 %242, %233
  %244 = add i64 %243, %234
  %245 = add nuw nsw i64 %233, 8
  %246 = icmp ult i64 %233, 24
  br i1 %246, label %232, label %247, !llvm.loop !84

247:                                              ; preds = %238, %224
  %248 = phi ptr [ %77, %224 ], [ %240, %238 ]
  %249 = phi i32 [ %79, %224 ], [ %239, %238 ]
  %250 = phi i64 [ %81, %224 ], [ %244, %238 ]
  %251 = load ptr, ptr %69, align 8, !tbaa !50
  %252 = icmp eq ptr %251, null
  br i1 %252, label %255, label %253

253:                                              ; preds = %247
  %254 = getelementptr inbounds %struct.gz_header_s, ptr %251, i64 0, i32 1
  store i64 %250, ptr %254, align 8, !tbaa !85
  br label %255

255:                                              ; preds = %253, %247
  %256 = load i32, ptr %37, align 8, !tbaa !79
  %257 = and i32 %256, 512
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %269, label %259

259:                                              ; preds = %255
  %260 = trunc i64 %250 to i8
  store i8 %260, ptr %3, align 1, !tbaa !66
  %261 = lshr i64 %250, 8
  %262 = trunc i64 %261 to i8
  store i8 %262, ptr %70, align 1, !tbaa !66
  %263 = lshr i64 %250, 16
  %264 = trunc i64 %263 to i8
  store i8 %264, ptr %71, align 1, !tbaa !66
  %265 = lshr i64 %250, 24
  %266 = trunc i64 %265 to i8
  store i8 %266, ptr %72, align 1, !tbaa !66
  %267 = load i64, ptr %38, align 8, !tbaa !78
  %268 = call i64 @crc32(i64 noundef %267, ptr noundef nonnull %3, i32 noundef 4) #13
  store i64 %268, ptr %38, align 8, !tbaa !78
  br label %269

269:                                              ; preds = %259, %255
  store i32 3, ptr %7, align 8, !tbaa !46
  br label %272

270:                                              ; preds = %75
  %271 = icmp ult i32 %82, 16
  br i1 %271, label %272, label %293

272:                                              ; preds = %269, %270
  %273 = phi i32 [ 0, %269 ], [ %82, %270 ]
  %274 = phi i64 [ 0, %269 ], [ %81, %270 ]
  %275 = phi i32 [ %249, %269 ], [ %79, %270 ]
  %276 = phi ptr [ %248, %269 ], [ %77, %270 ]
  %277 = zext nneg i32 %273 to i64
  br label %278

278:                                              ; preds = %272, %284
  %279 = phi i64 [ %277, %272 ], [ %291, %284 ]
  %280 = phi i64 [ %274, %272 ], [ %290, %284 ]
  %281 = phi i32 [ %275, %272 ], [ %285, %284 ]
  %282 = phi ptr [ %276, %272 ], [ %286, %284 ]
  %283 = icmp eq i32 %281, 0
  br i1 %283, label %1700, label %284

284:                                              ; preds = %278
  %285 = add i32 %281, -1
  %286 = getelementptr inbounds i8, ptr %282, i64 1
  %287 = load i8, ptr %282, align 1, !tbaa !66
  %288 = zext i8 %287 to i64
  %289 = shl nuw nsw i64 %288, %279
  %290 = add i64 %289, %280
  %291 = add nuw nsw i64 %279, 8
  %292 = icmp ult i64 %279, 8
  br i1 %292, label %278, label %293, !llvm.loop !86

293:                                              ; preds = %284, %270
  %294 = phi ptr [ %77, %270 ], [ %286, %284 ]
  %295 = phi i32 [ %79, %270 ], [ %285, %284 ]
  %296 = phi i64 [ %81, %270 ], [ %290, %284 ]
  %297 = load ptr, ptr %69, align 8, !tbaa !50
  %298 = icmp eq ptr %297, null
  br i1 %298, label %306, label %299

299:                                              ; preds = %293
  %300 = trunc i64 %296 to i32
  %301 = and i32 %300, 255
  %302 = getelementptr inbounds %struct.gz_header_s, ptr %297, i64 0, i32 2
  store i32 %301, ptr %302, align 8, !tbaa !87
  %303 = lshr i64 %296, 8
  %304 = trunc i64 %303 to i32
  %305 = getelementptr inbounds %struct.gz_header_s, ptr %297, i64 0, i32 3
  store i32 %304, ptr %305, align 4, !tbaa !88
  br label %306

306:                                              ; preds = %299, %293
  %307 = load i32, ptr %37, align 8, !tbaa !79
  %308 = and i32 %307, 512
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %320, label %310

310:                                              ; preds = %306
  %311 = trunc i64 %296 to i8
  store i8 %311, ptr %3, align 1, !tbaa !66
  %312 = lshr i64 %296, 8
  %313 = trunc i64 %312 to i8
  store i8 %313, ptr %70, align 1, !tbaa !66
  %314 = load i64, ptr %38, align 8, !tbaa !78
  %315 = call i64 @crc32(i64 noundef %314, ptr noundef nonnull %3, i32 noundef 2) #13
  store i64 %315, ptr %38, align 8, !tbaa !78
  br label %320

316:                                              ; preds = %75
  %317 = load i32, ptr %37, align 8, !tbaa !79
  %318 = and i32 %317, 1024
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %367, label %324

320:                                              ; preds = %310, %306
  store i32 4, ptr %7, align 8, !tbaa !46
  %321 = load i32, ptr %37, align 8, !tbaa !79
  %322 = and i32 %321, 1024
  %323 = icmp eq i32 %322, 0
  br i1 %323, label %367, label %326

324:                                              ; preds = %316
  %325 = icmp ult i32 %82, 16
  br i1 %325, label %326, label %348

326:                                              ; preds = %320, %324
  %327 = phi ptr [ %77, %324 ], [ %294, %320 ]
  %328 = phi i32 [ %79, %324 ], [ %295, %320 ]
  %329 = phi i64 [ %81, %324 ], [ 0, %320 ]
  %330 = phi i32 [ %82, %324 ], [ 0, %320 ]
  %331 = phi i32 [ %317, %324 ], [ %321, %320 ]
  %332 = zext nneg i32 %330 to i64
  br label %333

333:                                              ; preds = %326, %339
  %334 = phi i64 [ %332, %326 ], [ %346, %339 ]
  %335 = phi i64 [ %329, %326 ], [ %345, %339 ]
  %336 = phi i32 [ %328, %326 ], [ %340, %339 ]
  %337 = phi ptr [ %327, %326 ], [ %341, %339 ]
  %338 = icmp eq i32 %336, 0
  br i1 %338, label %1698, label %339

339:                                              ; preds = %333
  %340 = add i32 %336, -1
  %341 = getelementptr inbounds i8, ptr %337, i64 1
  %342 = load i8, ptr %337, align 1, !tbaa !66
  %343 = zext i8 %342 to i64
  %344 = shl nuw nsw i64 %343, %334
  %345 = add i64 %344, %335
  %346 = add nuw nsw i64 %334, 8
  %347 = icmp ult i64 %334, 8
  br i1 %347, label %333, label %348, !llvm.loop !89

348:                                              ; preds = %339, %324
  %349 = phi i32 [ %317, %324 ], [ %331, %339 ]
  %350 = phi ptr [ %77, %324 ], [ %341, %339 ]
  %351 = phi i32 [ %79, %324 ], [ %340, %339 ]
  %352 = phi i64 [ %81, %324 ], [ %345, %339 ]
  %353 = trunc i64 %352 to i32
  store i32 %353, ptr %41, align 4, !tbaa !90
  %354 = load ptr, ptr %69, align 8, !tbaa !50
  %355 = icmp eq ptr %354, null
  br i1 %355, label %358, label %356

356:                                              ; preds = %348
  %357 = getelementptr inbounds %struct.gz_header_s, ptr %354, i64 0, i32 5
  store i32 %353, ptr %357, align 8, !tbaa !91
  br label %358

358:                                              ; preds = %356, %348
  %359 = and i32 %349, 512
  %360 = icmp eq i32 %359, 0
  br i1 %360, label %376, label %361

361:                                              ; preds = %358
  %362 = trunc i64 %352 to i8
  store i8 %362, ptr %3, align 1, !tbaa !66
  %363 = lshr i64 %352, 8
  %364 = trunc i64 %363 to i8
  store i8 %364, ptr %70, align 1, !tbaa !66
  %365 = load i64, ptr %38, align 8, !tbaa !78
  %366 = call i64 @crc32(i64 noundef %365, ptr noundef nonnull %3, i32 noundef 2) #13
  store i64 %366, ptr %38, align 8, !tbaa !78
  br label %376

367:                                              ; preds = %320, %316
  %368 = phi i32 [ 0, %320 ], [ %82, %316 ]
  %369 = phi i64 [ 0, %320 ], [ %81, %316 ]
  %370 = phi i32 [ %295, %320 ], [ %79, %316 ]
  %371 = phi ptr [ %294, %320 ], [ %77, %316 ]
  %372 = load ptr, ptr %69, align 8, !tbaa !50
  %373 = icmp eq ptr %372, null
  br i1 %373, label %376, label %374

374:                                              ; preds = %367
  %375 = getelementptr inbounds %struct.gz_header_s, ptr %372, i64 0, i32 4
  store ptr null, ptr %375, align 8, !tbaa !92
  br label %376

376:                                              ; preds = %361, %358, %367, %374
  %377 = phi ptr [ %371, %374 ], [ %371, %367 ], [ %350, %358 ], [ %350, %361 ]
  %378 = phi i32 [ %370, %374 ], [ %370, %367 ], [ %351, %358 ], [ %351, %361 ]
  %379 = phi i64 [ %369, %374 ], [ %369, %367 ], [ 0, %358 ], [ 0, %361 ]
  %380 = phi i32 [ %368, %374 ], [ %368, %367 ], [ 0, %358 ], [ 0, %361 ]
  store i32 5, ptr %7, align 8, !tbaa !46
  br label %381

381:                                              ; preds = %75, %376
  %382 = phi ptr [ %77, %75 ], [ %377, %376 ]
  %383 = phi i32 [ %79, %75 ], [ %378, %376 ]
  %384 = phi i64 [ %81, %75 ], [ %379, %376 ]
  %385 = phi i32 [ %82, %75 ], [ %380, %376 ]
  %386 = load i32, ptr %37, align 8, !tbaa !79
  %387 = and i32 %386, 1024
  %388 = icmp eq i32 %387, 0
  br i1 %388, label %432, label %389

389:                                              ; preds = %381
  %390 = load i32, ptr %41, align 4, !tbaa !90
  %391 = call i32 @llvm.umin.i32(i32 %390, i32 %383)
  %392 = icmp eq i32 %391, 0
  br i1 %392, label %427, label %393

393:                                              ; preds = %389
  %394 = load ptr, ptr %69, align 8, !tbaa !50
  %395 = icmp eq ptr %394, null
  br i1 %395, label %414, label %396

396:                                              ; preds = %393
  %397 = getelementptr inbounds %struct.gz_header_s, ptr %394, i64 0, i32 4
  %398 = load ptr, ptr %397, align 8, !tbaa !92
  %399 = icmp eq ptr %398, null
  br i1 %399, label %414, label %400

400:                                              ; preds = %396
  %401 = getelementptr inbounds %struct.gz_header_s, ptr %394, i64 0, i32 5
  %402 = load i32, ptr %401, align 8, !tbaa !91
  %403 = sub i32 %402, %390
  %404 = zext i32 %403 to i64
  %405 = getelementptr inbounds i8, ptr %398, i64 %404
  %406 = add i32 %403, %391
  %407 = getelementptr inbounds %struct.gz_header_s, ptr %394, i64 0, i32 6
  %408 = load i32, ptr %407, align 4, !tbaa !93
  %409 = icmp ugt i32 %406, %408
  %410 = sub i32 %408, %403
  %411 = select i1 %409, i32 %410, i32 %391
  %412 = zext i32 %411 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %405, ptr align 1 %382, i64 %412, i1 false)
  %413 = load i32, ptr %37, align 8, !tbaa !79
  br label %414

414:                                              ; preds = %400, %396, %393
  %415 = phi i32 [ %413, %400 ], [ %386, %396 ], [ %386, %393 ]
  %416 = and i32 %415, 512
  %417 = icmp eq i32 %416, 0
  br i1 %417, label %421, label %418

418:                                              ; preds = %414
  %419 = load i64, ptr %38, align 8, !tbaa !78
  %420 = call i64 @crc32(i64 noundef %419, ptr noundef %382, i32 noundef %391) #13
  store i64 %420, ptr %38, align 8, !tbaa !78
  br label %421

421:                                              ; preds = %418, %414
  %422 = sub i32 %383, %391
  %423 = zext i32 %391 to i64
  %424 = getelementptr inbounds i8, ptr %382, i64 %423
  %425 = load i32, ptr %41, align 4, !tbaa !90
  %426 = sub i32 %425, %391
  store i32 %426, ptr %41, align 4, !tbaa !90
  br label %427

427:                                              ; preds = %421, %389
  %428 = phi i32 [ %426, %421 ], [ %390, %389 ]
  %429 = phi ptr [ %424, %421 ], [ %382, %389 ]
  %430 = phi i32 [ %422, %421 ], [ %383, %389 ]
  %431 = icmp eq i32 %428, 0
  br i1 %431, label %432, label %1752

432:                                              ; preds = %427, %381
  %433 = phi ptr [ %429, %427 ], [ %382, %381 ]
  %434 = phi i32 [ %430, %427 ], [ %383, %381 ]
  store i32 0, ptr %41, align 4, !tbaa !90
  store i32 6, ptr %7, align 8, !tbaa !46
  br label %435

435:                                              ; preds = %75, %432
  %436 = phi ptr [ %77, %75 ], [ %433, %432 ]
  %437 = phi i32 [ %79, %75 ], [ %434, %432 ]
  %438 = phi i64 [ %81, %75 ], [ %384, %432 ]
  %439 = phi i32 [ %82, %75 ], [ %385, %432 ]
  %440 = load i32, ptr %37, align 8, !tbaa !79
  %441 = and i32 %440, 2048
  %442 = icmp eq i32 %441, 0
  br i1 %442, label %483, label %443

443:                                              ; preds = %435
  %444 = icmp eq i32 %437, 0
  br i1 %444, label %1752, label %445

445:                                              ; preds = %443
  %446 = zext i32 %437 to i64
  br label %447

447:                                              ; preds = %445, %467
  %448 = phi i64 [ 0, %445 ], [ %449, %467 ]
  %449 = add nuw nsw i64 %448, 1
  %450 = getelementptr inbounds i8, ptr %436, i64 %448
  %451 = load i8, ptr %450, align 1, !tbaa !66
  %452 = load ptr, ptr %69, align 8, !tbaa !50
  %453 = icmp eq ptr %452, null
  br i1 %453, label %467, label %454

454:                                              ; preds = %447
  %455 = getelementptr inbounds %struct.gz_header_s, ptr %452, i64 0, i32 7
  %456 = load ptr, ptr %455, align 8, !tbaa !94
  %457 = icmp eq ptr %456, null
  br i1 %457, label %467, label %458

458:                                              ; preds = %454
  %459 = load i32, ptr %41, align 4, !tbaa !90
  %460 = getelementptr inbounds %struct.gz_header_s, ptr %452, i64 0, i32 8
  %461 = load i32, ptr %460, align 8, !tbaa !95
  %462 = icmp ult i32 %459, %461
  br i1 %462, label %463, label %467

463:                                              ; preds = %458
  %464 = add nuw i32 %459, 1
  store i32 %464, ptr %41, align 4, !tbaa !90
  %465 = zext i32 %459 to i64
  %466 = getelementptr inbounds i8, ptr %456, i64 %465
  store i8 %451, ptr %466, align 1, !tbaa !66
  br label %467

467:                                              ; preds = %447, %454, %458, %463
  %468 = icmp ne i8 %451, 0
  %469 = icmp ult i64 %449, %446
  %470 = select i1 %468, i1 %469, i1 false
  br i1 %470, label %447, label %471, !llvm.loop !96

471:                                              ; preds = %467
  %472 = trunc i64 %449 to i32
  %473 = load i32, ptr %37, align 8, !tbaa !79
  %474 = and i32 %473, 512
  %475 = icmp eq i32 %474, 0
  br i1 %475, label %479, label %476

476:                                              ; preds = %471
  %477 = load i64, ptr %38, align 8, !tbaa !78
  %478 = call i64 @crc32(i64 noundef %477, ptr noundef nonnull %436, i32 noundef %472) #13
  store i64 %478, ptr %38, align 8, !tbaa !78
  br label %479

479:                                              ; preds = %476, %471
  %480 = sub i32 %437, %472
  %481 = and i64 %449, 4294967295
  %482 = getelementptr inbounds i8, ptr %436, i64 %481
  br i1 %468, label %1752, label %488

483:                                              ; preds = %435
  %484 = load ptr, ptr %69, align 8, !tbaa !50
  %485 = icmp eq ptr %484, null
  br i1 %485, label %488, label %486

486:                                              ; preds = %483
  %487 = getelementptr inbounds %struct.gz_header_s, ptr %484, i64 0, i32 7
  store ptr null, ptr %487, align 8, !tbaa !94
  br label %488

488:                                              ; preds = %483, %486, %479
  %489 = phi ptr [ %482, %479 ], [ %436, %486 ], [ %436, %483 ]
  %490 = phi i32 [ %480, %479 ], [ %437, %486 ], [ %437, %483 ]
  store i32 0, ptr %41, align 4, !tbaa !90
  store i32 7, ptr %7, align 8, !tbaa !46
  br label %491

491:                                              ; preds = %75, %488
  %492 = phi ptr [ %77, %75 ], [ %489, %488 ]
  %493 = phi i32 [ %79, %75 ], [ %490, %488 ]
  %494 = phi i64 [ %81, %75 ], [ %438, %488 ]
  %495 = phi i32 [ %82, %75 ], [ %439, %488 ]
  %496 = load i32, ptr %37, align 8, !tbaa !79
  %497 = and i32 %496, 4096
  %498 = icmp eq i32 %497, 0
  br i1 %498, label %539, label %499

499:                                              ; preds = %491
  %500 = icmp eq i32 %493, 0
  br i1 %500, label %1752, label %501

501:                                              ; preds = %499
  %502 = zext i32 %493 to i64
  br label %503

503:                                              ; preds = %501, %523
  %504 = phi i64 [ 0, %501 ], [ %505, %523 ]
  %505 = add nuw nsw i64 %504, 1
  %506 = getelementptr inbounds i8, ptr %492, i64 %504
  %507 = load i8, ptr %506, align 1, !tbaa !66
  %508 = load ptr, ptr %69, align 8, !tbaa !50
  %509 = icmp eq ptr %508, null
  br i1 %509, label %523, label %510

510:                                              ; preds = %503
  %511 = getelementptr inbounds %struct.gz_header_s, ptr %508, i64 0, i32 9
  %512 = load ptr, ptr %511, align 8, !tbaa !97
  %513 = icmp eq ptr %512, null
  br i1 %513, label %523, label %514

514:                                              ; preds = %510
  %515 = load i32, ptr %41, align 4, !tbaa !90
  %516 = getelementptr inbounds %struct.gz_header_s, ptr %508, i64 0, i32 10
  %517 = load i32, ptr %516, align 8, !tbaa !98
  %518 = icmp ult i32 %515, %517
  br i1 %518, label %519, label %523

519:                                              ; preds = %514
  %520 = add nuw i32 %515, 1
  store i32 %520, ptr %41, align 4, !tbaa !90
  %521 = zext i32 %515 to i64
  %522 = getelementptr inbounds i8, ptr %512, i64 %521
  store i8 %507, ptr %522, align 1, !tbaa !66
  br label %523

523:                                              ; preds = %503, %510, %514, %519
  %524 = icmp ne i8 %507, 0
  %525 = icmp ult i64 %505, %502
  %526 = select i1 %524, i1 %525, i1 false
  br i1 %526, label %503, label %527, !llvm.loop !99

527:                                              ; preds = %523
  %528 = trunc i64 %505 to i32
  %529 = load i32, ptr %37, align 8, !tbaa !79
  %530 = and i32 %529, 512
  %531 = icmp eq i32 %530, 0
  br i1 %531, label %535, label %532

532:                                              ; preds = %527
  %533 = load i64, ptr %38, align 8, !tbaa !78
  %534 = call i64 @crc32(i64 noundef %533, ptr noundef nonnull %492, i32 noundef %528) #13
  store i64 %534, ptr %38, align 8, !tbaa !78
  br label %535

535:                                              ; preds = %532, %527
  %536 = sub i32 %493, %528
  %537 = and i64 %505, 4294967295
  %538 = getelementptr inbounds i8, ptr %492, i64 %537
  br i1 %524, label %1752, label %544

539:                                              ; preds = %491
  %540 = load ptr, ptr %69, align 8, !tbaa !50
  %541 = icmp eq ptr %540, null
  br i1 %541, label %544, label %542

542:                                              ; preds = %539
  %543 = getelementptr inbounds %struct.gz_header_s, ptr %540, i64 0, i32 9
  store ptr null, ptr %543, align 8, !tbaa !97
  br label %544

544:                                              ; preds = %539, %542, %535
  %545 = phi ptr [ %538, %535 ], [ %492, %542 ], [ %492, %539 ]
  %546 = phi i32 [ %536, %535 ], [ %493, %542 ], [ %493, %539 ]
  store i32 8, ptr %7, align 8, !tbaa !46
  br label %547

547:                                              ; preds = %75, %544
  %548 = phi ptr [ %77, %75 ], [ %545, %544 ]
  %549 = phi i32 [ %79, %75 ], [ %546, %544 ]
  %550 = phi i64 [ %81, %75 ], [ %494, %544 ]
  %551 = phi i32 [ %82, %75 ], [ %495, %544 ]
  %552 = load i32, ptr %37, align 8, !tbaa !79
  %553 = and i32 %552, 512
  %554 = icmp eq i32 %553, 0
  br i1 %554, label %585, label %555

555:                                              ; preds = %547
  %556 = icmp ult i32 %551, 16
  br i1 %556, label %557, label %576

557:                                              ; preds = %555
  %558 = zext nneg i32 %551 to i64
  br label %559

559:                                              ; preds = %557, %565
  %560 = phi i64 [ %558, %557 ], [ %572, %565 ]
  %561 = phi i64 [ %550, %557 ], [ %571, %565 ]
  %562 = phi i32 [ %549, %557 ], [ %566, %565 ]
  %563 = phi ptr [ %548, %557 ], [ %567, %565 ]
  %564 = icmp eq i32 %562, 0
  br i1 %564, label %1696, label %565

565:                                              ; preds = %559
  %566 = add i32 %562, -1
  %567 = getelementptr inbounds i8, ptr %563, i64 1
  %568 = load i8, ptr %563, align 1, !tbaa !66
  %569 = zext i8 %568 to i64
  %570 = shl nuw nsw i64 %569, %560
  %571 = add i64 %570, %561
  %572 = add nuw nsw i64 %560, 8
  %573 = icmp ult i64 %560, 8
  br i1 %573, label %559, label %574, !llvm.loop !100

574:                                              ; preds = %565
  %575 = trunc i64 %572 to i32
  br label %576

576:                                              ; preds = %574, %555
  %577 = phi ptr [ %548, %555 ], [ %567, %574 ]
  %578 = phi i32 [ %549, %555 ], [ %566, %574 ]
  %579 = phi i64 [ %550, %555 ], [ %571, %574 ]
  %580 = phi i32 [ %551, %555 ], [ %575, %574 ]
  %581 = load i64, ptr %38, align 8, !tbaa !78
  %582 = and i64 %581, 65535
  %583 = icmp eq i64 %579, %582
  br i1 %583, label %585, label %584

584:                                              ; preds = %576
  store ptr @.str.5, ptr %40, align 8, !tbaa !67
  store i32 29, ptr %7, align 8, !tbaa !46
  br label %1678

585:                                              ; preds = %576, %547
  %586 = phi ptr [ %548, %547 ], [ %577, %576 ]
  %587 = phi i32 [ %549, %547 ], [ %578, %576 ]
  %588 = phi i64 [ %550, %547 ], [ 0, %576 ]
  %589 = phi i32 [ %551, %547 ], [ 0, %576 ]
  %590 = load ptr, ptr %69, align 8, !tbaa !50
  %591 = icmp eq ptr %590, null
  br i1 %591, label %597, label %592

592:                                              ; preds = %585
  %593 = lshr i32 %552, 9
  %594 = and i32 %593, 1
  %595 = getelementptr inbounds %struct.gz_header_s, ptr %590, i64 0, i32 11
  store i32 %594, ptr %595, align 4, !tbaa !101
  %596 = getelementptr inbounds %struct.gz_header_s, ptr %590, i64 0, i32 12
  store i32 1, ptr %596, align 8, !tbaa !80
  br label %597

597:                                              ; preds = %592, %585
  %598 = call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #13
  store i64 %598, ptr %38, align 8, !tbaa !78
  store i64 %598, ptr %39, align 8, !tbaa !45
  store i32 11, ptr %7, align 8, !tbaa !46
  br label %1678

599:                                              ; preds = %97, %605
  %600 = phi i64 [ %98, %97 ], [ %612, %605 ]
  %601 = phi i64 [ %81, %97 ], [ %611, %605 ]
  %602 = phi i32 [ %79, %97 ], [ %606, %605 ]
  %603 = phi ptr [ %77, %97 ], [ %607, %605 ]
  %604 = icmp eq i32 %602, 0
  br i1 %604, label %1706, label %605

605:                                              ; preds = %599
  %606 = add i32 %602, -1
  %607 = getelementptr inbounds i8, ptr %603, i64 1
  %608 = load i8, ptr %603, align 1, !tbaa !66
  %609 = zext i8 %608 to i64
  %610 = shl nuw nsw i64 %609, %600
  %611 = add i64 %610, %601
  %612 = add nuw nsw i64 %600, 8
  %613 = icmp ult i64 %600, 24
  br i1 %613, label %599, label %614, !llvm.loop !102

614:                                              ; preds = %605, %95
  %615 = phi ptr [ %77, %95 ], [ %607, %605 ]
  %616 = phi i32 [ %79, %95 ], [ %606, %605 ]
  %617 = phi i64 [ %81, %95 ], [ %611, %605 ]
  %618 = trunc i64 %617 to i32
  %619 = call i32 @llvm.bswap.i32(i32 %618)
  %620 = zext i32 %619 to i64
  store i64 %620, ptr %38, align 8, !tbaa !78
  store i64 %620, ptr %39, align 8, !tbaa !45
  store i32 10, ptr %7, align 8, !tbaa !46
  br label %621

621:                                              ; preds = %75, %614
  %622 = phi ptr [ %77, %75 ], [ %615, %614 ]
  %623 = phi i32 [ %79, %75 ], [ %616, %614 ]
  %624 = phi i64 [ %81, %75 ], [ 0, %614 ]
  %625 = phi i32 [ %82, %75 ], [ 0, %614 ]
  %626 = load i32, ptr %65, align 4, !tbaa !48
  %627 = icmp eq i32 %626, 0
  br i1 %627, label %628, label %629

628:                                              ; preds = %621
  store ptr %78, ptr %10, align 8, !tbaa !70
  store i32 %80, ptr %26, align 8, !tbaa !73
  store ptr %622, ptr %0, align 8, !tbaa !71
  store i32 %623, ptr %28, align 8, !tbaa !72
  store i64 %624, ptr %30, align 8, !tbaa !51
  store i32 %625, ptr %32, align 8, !tbaa !52
  br label %1834

629:                                              ; preds = %621
  %630 = call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #13
  store i64 %630, ptr %38, align 8, !tbaa !78
  store i64 %630, ptr %39, align 8, !tbaa !45
  store i32 11, ptr %7, align 8, !tbaa !46
  br label %631

631:                                              ; preds = %75, %629
  %632 = phi ptr [ %77, %75 ], [ %622, %629 ]
  %633 = phi i32 [ %79, %75 ], [ %623, %629 ]
  %634 = phi i64 [ %81, %75 ], [ %624, %629 ]
  %635 = phi i32 [ %82, %75 ], [ %625, %629 ]
  br i1 %67, label %1752, label %636

636:                                              ; preds = %631, %75
  %637 = phi ptr [ %77, %75 ], [ %632, %631 ]
  %638 = phi i32 [ %79, %75 ], [ %633, %631 ]
  %639 = phi i64 [ %81, %75 ], [ %634, %631 ]
  %640 = phi i32 [ %82, %75 ], [ %635, %631 ]
  %641 = load i32, ptr %68, align 4, !tbaa !47
  %642 = icmp eq i32 %641, 0
  br i1 %642, label %643, label %647

643:                                              ; preds = %636
  %644 = icmp ult i32 %640, 3
  br i1 %644, label %645, label %661

645:                                              ; preds = %643
  %646 = icmp eq i32 %638, 0
  br i1 %646, label %1752, label %652

647:                                              ; preds = %636
  %648 = and i32 %640, 7
  %649 = zext nneg i32 %648 to i64
  %650 = lshr i64 %639, %649
  %651 = and i32 %640, -8
  store i32 26, ptr %7, align 8, !tbaa !46
  br label %1678

652:                                              ; preds = %645
  %653 = or disjoint i32 %640, 8
  %654 = add i32 %638, -1
  %655 = getelementptr inbounds i8, ptr %637, i64 1
  %656 = load i8, ptr %637, align 1, !tbaa !66
  %657 = zext i8 %656 to i64
  %658 = zext nneg i32 %640 to i64
  %659 = shl nuw nsw i64 %657, %658
  %660 = add i64 %659, %639
  br label %661

661:                                              ; preds = %652, %643
  %662 = phi ptr [ %655, %652 ], [ %637, %643 ]
  %663 = phi i32 [ %654, %652 ], [ %638, %643 ]
  %664 = phi i64 [ %660, %652 ], [ %639, %643 ]
  %665 = phi i32 [ %653, %652 ], [ %640, %643 ]
  %666 = trunc i64 %664 to i32
  %667 = and i32 %666, 1
  store i32 %667, ptr %68, align 4, !tbaa !47
  %668 = lshr i32 %666, 1
  %669 = and i32 %668, 3
  switch i32 %669, label %676 [
    i32 0, label %677
    i32 1, label %670
    i32 2, label %674
    i32 3, label %675
  ]

670:                                              ; preds = %661
  call fastcc void @fixedtables(ptr noundef nonnull %7) #12
  store i32 19, ptr %7, align 8, !tbaa !46
  br i1 %55, label %671, label %679

671:                                              ; preds = %670
  %672 = lshr i64 %664, 3
  %673 = add i32 %665, -3
  br label %1752

674:                                              ; preds = %661
  br label %677

675:                                              ; preds = %661
  store ptr @.str.6, ptr %40, align 8, !tbaa !67
  br label %677

676:                                              ; preds = %661
  unreachable

677:                                              ; preds = %661, %675, %674
  %678 = phi i32 [ 16, %674 ], [ 29, %675 ], [ 13, %661 ]
  store i32 %678, ptr %7, align 8, !tbaa !46
  br label %679

679:                                              ; preds = %677, %670
  %680 = lshr i64 %664, 3
  %681 = add i32 %665, -3
  br label %1678

682:                                              ; preds = %75
  %683 = and i32 %82, 7
  %684 = zext nneg i32 %683 to i64
  %685 = lshr i64 %81, %684
  %686 = and i32 %82, -8
  %687 = icmp ult i32 %686, 32
  br i1 %687, label %688, label %708

688:                                              ; preds = %682
  %689 = and i32 %82, -8
  %690 = zext i32 %689 to i64
  br label %691

691:                                              ; preds = %688, %697
  %692 = phi i64 [ %690, %688 ], [ %704, %697 ]
  %693 = phi i64 [ %685, %688 ], [ %703, %697 ]
  %694 = phi i32 [ %79, %688 ], [ %698, %697 ]
  %695 = phi ptr [ %77, %688 ], [ %699, %697 ]
  %696 = icmp eq i32 %694, 0
  br i1 %696, label %1708, label %697

697:                                              ; preds = %691
  %698 = add i32 %694, -1
  %699 = getelementptr inbounds i8, ptr %695, i64 1
  %700 = load i8, ptr %695, align 1, !tbaa !66
  %701 = zext i8 %700 to i64
  %702 = shl nuw nsw i64 %701, %692
  %703 = add i64 %702, %693
  %704 = add nuw nsw i64 %692, 8
  %705 = icmp ult i64 %692, 24
  br i1 %705, label %691, label %706, !llvm.loop !103

706:                                              ; preds = %697
  %707 = trunc i64 %704 to i32
  br label %708

708:                                              ; preds = %706, %682
  %709 = phi ptr [ %77, %682 ], [ %699, %706 ]
  %710 = phi i32 [ %79, %682 ], [ %698, %706 ]
  %711 = phi i64 [ %685, %682 ], [ %703, %706 ]
  %712 = phi i32 [ %686, %682 ], [ %707, %706 ]
  %713 = and i64 %711, 65535
  %714 = lshr i64 %711, 16
  %715 = xor i64 %714, %713
  %716 = icmp eq i64 %715, 65535
  br i1 %716, label %718, label %717

717:                                              ; preds = %708
  store ptr @.str.7, ptr %40, align 8, !tbaa !67
  store i32 29, ptr %7, align 8, !tbaa !46
  br label %1678

718:                                              ; preds = %708
  %719 = trunc i64 %711 to i32
  %720 = and i32 %719, 65535
  store i32 %720, ptr %41, align 4, !tbaa !90
  store i32 14, ptr %7, align 8, !tbaa !46
  br i1 %55, label %1752, label %721

721:                                              ; preds = %718, %75
  %722 = phi ptr [ %77, %75 ], [ %709, %718 ]
  %723 = phi i32 [ %79, %75 ], [ %710, %718 ]
  %724 = phi i64 [ %81, %75 ], [ 0, %718 ]
  %725 = phi i32 [ %82, %75 ], [ 0, %718 ]
  store i32 15, ptr %7, align 8, !tbaa !46
  br label %726

726:                                              ; preds = %75, %721
  %727 = phi ptr [ %77, %75 ], [ %722, %721 ]
  %728 = phi i32 [ %79, %75 ], [ %723, %721 ]
  %729 = phi i64 [ %81, %75 ], [ %724, %721 ]
  %730 = phi i32 [ %82, %75 ], [ %725, %721 ]
  %731 = load i32, ptr %41, align 4, !tbaa !90
  %732 = icmp eq i32 %731, 0
  br i1 %732, label %745, label %733

733:                                              ; preds = %726
  %734 = call i32 @llvm.umin.i32(i32 %731, i32 %728)
  %735 = call i32 @llvm.umin.i32(i32 %734, i32 %80)
  %736 = icmp eq i32 %735, 0
  br i1 %736, label %1752, label %737

737:                                              ; preds = %733
  %738 = zext i32 %735 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %78, ptr align 1 %727, i64 %738, i1 false)
  %739 = sub i32 %728, %735
  %740 = getelementptr inbounds i8, ptr %727, i64 %738
  %741 = sub i32 %80, %735
  %742 = getelementptr inbounds i8, ptr %78, i64 %738
  %743 = load i32, ptr %41, align 4, !tbaa !90
  %744 = sub i32 %743, %735
  store i32 %744, ptr %41, align 4, !tbaa !90
  br label %1678

745:                                              ; preds = %726
  store i32 11, ptr %7, align 8, !tbaa !46
  br label %1678

746:                                              ; preds = %93, %752
  %747 = phi i64 [ %94, %93 ], [ %759, %752 ]
  %748 = phi i64 [ %81, %93 ], [ %758, %752 ]
  %749 = phi i32 [ %79, %93 ], [ %753, %752 ]
  %750 = phi ptr [ %77, %93 ], [ %754, %752 ]
  %751 = icmp eq i32 %749, 0
  br i1 %751, label %1710, label %752

752:                                              ; preds = %746
  %753 = add i32 %749, -1
  %754 = getelementptr inbounds i8, ptr %750, i64 1
  %755 = load i8, ptr %750, align 1, !tbaa !66
  %756 = zext i8 %755 to i64
  %757 = shl nuw nsw i64 %756, %747
  %758 = add i64 %757, %748
  %759 = add nuw nsw i64 %747, 8
  %760 = icmp ult i64 %747, 6
  br i1 %760, label %746, label %761, !llvm.loop !104

761:                                              ; preds = %752
  %762 = trunc i64 %759 to i32
  br label %763

763:                                              ; preds = %761, %91
  %764 = phi ptr [ %77, %91 ], [ %754, %761 ]
  %765 = phi i32 [ %79, %91 ], [ %753, %761 ]
  %766 = phi i64 [ %81, %91 ], [ %758, %761 ]
  %767 = phi i32 [ %82, %91 ], [ %762, %761 ]
  %768 = trunc i64 %766 to i32
  %769 = and i32 %768, 31
  %770 = add nuw nsw i32 %769, 257
  store i32 %770, ptr %42, align 4, !tbaa !105
  %771 = lshr i32 %768, 5
  %772 = and i32 %771, 31
  %773 = add nuw nsw i32 %772, 1
  store i32 %773, ptr %43, align 8, !tbaa !106
  %774 = lshr i32 %768, 10
  %775 = and i32 %774, 15
  %776 = add nuw nsw i32 %775, 4
  store i32 %776, ptr %44, align 8, !tbaa !107
  %777 = lshr i64 %766, 14
  %778 = add i32 %767, -14
  %779 = icmp ugt i32 %769, 29
  %780 = icmp ugt i32 %772, 29
  %781 = or i1 %779, %780
  br i1 %781, label %782, label %783

782:                                              ; preds = %763
  store ptr @.str.8, ptr %40, align 8, !tbaa !67
  store i32 29, ptr %7, align 8, !tbaa !46
  br label %1678

783:                                              ; preds = %763
  store i32 0, ptr %45, align 4, !tbaa !75
  store i32 17, ptr %7, align 8, !tbaa !46
  br label %788

784:                                              ; preds = %75
  %785 = load i32, ptr %44, align 8, !tbaa !107
  %786 = load i32, ptr %45, align 4, !tbaa !75
  %787 = icmp ult i32 %786, %785
  br i1 %787, label %788, label %797

788:                                              ; preds = %783, %784
  %789 = phi i32 [ %778, %783 ], [ %82, %784 ]
  %790 = phi i64 [ %777, %783 ], [ %81, %784 ]
  %791 = phi i32 [ %765, %783 ], [ %79, %784 ]
  %792 = phi ptr [ %764, %783 ], [ %77, %784 ]
  %793 = phi i32 [ %776, %783 ], [ %785, %784 ]
  %794 = phi i32 [ 0, %783 ], [ %786, %784 ]
  %795 = zext i32 %794 to i64
  %796 = zext i32 %793 to i64
  br label %806

797:                                              ; preds = %824, %784
  %798 = phi ptr [ %77, %784 ], [ %825, %824 ]
  %799 = phi i32 [ %79, %784 ], [ %826, %824 ]
  %800 = phi i64 [ %81, %784 ], [ %837, %824 ]
  %801 = phi i32 [ %82, %784 ], [ %838, %824 ]
  %802 = phi i32 [ %786, %784 ], [ %793, %824 ]
  %803 = icmp ult i32 %802, 19
  br i1 %803, label %804, label %850

804:                                              ; preds = %797
  %805 = zext nneg i32 %802 to i64
  br label %840

806:                                              ; preds = %788, %824
  %807 = phi i64 [ %795, %788 ], [ %831, %824 ]
  %808 = phi i32 [ %789, %788 ], [ %838, %824 ]
  %809 = phi i64 [ %790, %788 ], [ %837, %824 ]
  %810 = phi i32 [ %791, %788 ], [ %826, %824 ]
  %811 = phi ptr [ %792, %788 ], [ %825, %824 ]
  %812 = icmp ult i32 %808, 3
  br i1 %812, label %813, label %824

813:                                              ; preds = %806
  %814 = icmp eq i32 %810, 0
  br i1 %814, label %1752, label %815

815:                                              ; preds = %813
  %816 = or disjoint i32 %808, 8
  %817 = add i32 %810, -1
  %818 = getelementptr inbounds i8, ptr %811, i64 1
  %819 = load i8, ptr %811, align 1, !tbaa !66
  %820 = zext i8 %819 to i64
  %821 = zext nneg i32 %808 to i64
  %822 = shl nuw nsw i64 %820, %821
  %823 = add i64 %822, %809
  br label %824

824:                                              ; preds = %815, %806
  %825 = phi ptr [ %818, %815 ], [ %811, %806 ]
  %826 = phi i32 [ %817, %815 ], [ %810, %806 ]
  %827 = phi i64 [ %823, %815 ], [ %809, %806 ]
  %828 = phi i32 [ %816, %815 ], [ %808, %806 ]
  %829 = trunc i64 %827 to i16
  %830 = and i16 %829, 7
  %831 = add nuw nsw i64 %807, 1
  %832 = trunc i64 %831 to i32
  store i32 %832, ptr %45, align 4, !tbaa !75
  %833 = getelementptr inbounds [19 x i16], ptr @inflate.order, i64 0, i64 %807
  %834 = load i16, ptr %833, align 2, !tbaa !108
  %835 = zext i16 %834 to i64
  %836 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 28, i64 %835
  store i16 %830, ptr %836, align 2, !tbaa !108
  %837 = lshr i64 %827, 3
  %838 = add i32 %828, -3
  %839 = icmp eq i64 %831, %796
  br i1 %839, label %797, label %806, !llvm.loop !110

840:                                              ; preds = %804, %840
  %841 = phi i64 [ %805, %804 ], [ %842, %840 ]
  %842 = add nuw nsw i64 %841, 1
  %843 = getelementptr inbounds [19 x i16], ptr @inflate.order, i64 0, i64 %841
  %844 = load i16, ptr %843, align 2, !tbaa !108
  %845 = zext i16 %844 to i64
  %846 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 28, i64 %845
  store i16 0, ptr %846, align 2, !tbaa !108
  %847 = and i64 %842, 4294967295
  %848 = icmp eq i64 %847, 19
  br i1 %848, label %849, label %840, !llvm.loop !111

849:                                              ; preds = %840
  store i32 19, ptr %45, align 4, !tbaa !75
  br label %850

850:                                              ; preds = %849, %797
  store ptr %46, ptr %47, align 8, !tbaa !53
  store ptr %46, ptr %48, align 8, !tbaa !55
  store i32 7, ptr %49, align 8, !tbaa !112
  %851 = call i32 @inflate_table(i32 noundef 0, ptr noundef nonnull %50, i32 noundef 19, ptr noundef nonnull %47, ptr noundef nonnull %49, ptr noundef nonnull %51) #13
  %852 = icmp eq i32 %851, 0
  br i1 %852, label %854, label %853

853:                                              ; preds = %850
  store ptr @.str.9, ptr %40, align 8, !tbaa !67
  store i32 29, ptr %7, align 8, !tbaa !46
  br label %1678

854:                                              ; preds = %850
  store i32 0, ptr %45, align 4, !tbaa !75
  store i32 18, ptr %7, align 8, !tbaa !46
  br label %855

855:                                              ; preds = %89, %854
  %856 = phi i32 [ %90, %89 ], [ 0, %854 ]
  %857 = phi ptr [ %77, %89 ], [ %798, %854 ]
  %858 = phi i32 [ %79, %89 ], [ %799, %854 ]
  %859 = phi i64 [ %81, %89 ], [ %800, %854 ]
  %860 = phi i32 [ %82, %89 ], [ %801, %854 ]
  %861 = phi i32 [ %84, %89 ], [ 0, %854 ]
  %862 = load i32, ptr %42, align 4, !tbaa !105
  %863 = load i32, ptr %43, align 8, !tbaa !106
  %864 = add i32 %863, %862
  %865 = icmp ult i32 %856, %864
  br i1 %865, label %866, label %1070

866:                                              ; preds = %855
  %867 = load ptr, ptr %48, align 8, !tbaa !55
  %868 = load i32, ptr %49, align 8, !tbaa !112
  %869 = shl nsw i32 -1, %868
  %870 = xor i32 %869, -1
  br label %871

871:                                              ; preds = %866, %1063
  %872 = phi i32 [ %860, %866 ], [ %1068, %1063 ]
  %873 = phi i64 [ %859, %866 ], [ %1067, %1063 ]
  %874 = phi i32 [ %858, %866 ], [ %1066, %1063 ]
  %875 = phi ptr [ %857, %866 ], [ %1065, %1063 ]
  %876 = phi i32 [ %856, %866 ], [ %1064, %1063 ]
  %877 = trunc i64 %873 to i32
  %878 = and i32 %870, %877
  %879 = zext nneg i32 %878 to i64
  %880 = getelementptr inbounds %struct.code, ptr %867, i64 %879, i32 1
  %881 = load i8, ptr %880, align 1, !tbaa.struct !113
  %882 = zext i8 %881 to i32
  %883 = icmp ult i32 %872, %882
  br i1 %883, label %884, label %910

884:                                              ; preds = %871
  %885 = zext nneg i32 %872 to i64
  br label %886

886:                                              ; preds = %884, %892
  %887 = phi i64 [ %885, %884 ], [ %899, %892 ]
  %888 = phi i64 [ %873, %884 ], [ %898, %892 ]
  %889 = phi i32 [ %874, %884 ], [ %893, %892 ]
  %890 = phi ptr [ %875, %884 ], [ %894, %892 ]
  %891 = icmp eq i32 %889, 0
  br i1 %891, label %1716, label %892

892:                                              ; preds = %886
  %893 = add i32 %889, -1
  %894 = getelementptr inbounds i8, ptr %890, i64 1
  %895 = load i8, ptr %890, align 1, !tbaa !66
  %896 = zext i8 %895 to i64
  %897 = shl i64 %896, %887
  %898 = add i64 %897, %888
  %899 = add nuw nsw i64 %887, 8
  %900 = trunc i64 %898 to i32
  %901 = and i32 %870, %900
  %902 = zext nneg i32 %901 to i64
  %903 = getelementptr inbounds %struct.code, ptr %867, i64 %902, i32 1
  %904 = load i8, ptr %903, align 1, !tbaa.struct !113
  %905 = zext i8 %904 to i64
  %906 = icmp ult i64 %899, %905
  br i1 %906, label %886, label %907

907:                                              ; preds = %892
  %908 = zext i8 %904 to i32
  %909 = trunc i64 %899 to i32
  br label %910

910:                                              ; preds = %907, %871
  %911 = phi i64 [ %879, %871 ], [ %902, %907 ]
  %912 = phi i32 [ %882, %871 ], [ %908, %907 ]
  %913 = phi ptr [ %875, %871 ], [ %894, %907 ]
  %914 = phi i32 [ %874, %871 ], [ %893, %907 ]
  %915 = phi i64 [ %873, %871 ], [ %898, %907 ]
  %916 = phi i32 [ %872, %871 ], [ %909, %907 ]
  %917 = phi i8 [ %881, %871 ], [ %904, %907 ]
  %918 = getelementptr inbounds %struct.code, ptr %867, i64 %911, i32 2
  %919 = load i16, ptr %918, align 2, !tbaa.struct !114
  %920 = icmp ult i16 %919, 16
  br i1 %920, label %921, label %928

921:                                              ; preds = %910
  %922 = zext nneg i8 %917 to i64
  %923 = lshr i64 %915, %922
  %924 = sub i32 %916, %912
  %925 = add i32 %876, 1
  store i32 %925, ptr %45, align 4, !tbaa !75
  %926 = zext i32 %876 to i64
  %927 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 28, i64 %926
  store i16 %919, ptr %927, align 2, !tbaa !108
  br label %1063

928:                                              ; preds = %910
  switch i16 %919, label %941 [
    i16 16, label %935
    i16 17, label %929
  ]

929:                                              ; preds = %928
  %930 = add nuw nsw i32 %912, 3
  %931 = icmp ult i32 %916, %930
  br i1 %931, label %932, label %1001

932:                                              ; preds = %929
  %933 = zext nneg i32 %916 to i64
  %934 = zext nneg i32 %930 to i64
  br label %984

935:                                              ; preds = %928
  %936 = add nuw nsw i32 %912, 2
  %937 = icmp ult i32 %916, %936
  br i1 %937, label %938, label %964

938:                                              ; preds = %935
  %939 = zext nneg i32 %916 to i64
  %940 = zext nneg i32 %936 to i64
  br label %947

941:                                              ; preds = %928
  %942 = add nuw nsw i32 %912, 7
  %943 = icmp ult i32 %916, %942
  br i1 %943, label %944, label %1031

944:                                              ; preds = %941
  %945 = zext nneg i32 %916 to i64
  %946 = zext nneg i32 %942 to i64
  br label %1014

947:                                              ; preds = %938, %953
  %948 = phi i64 [ %939, %938 ], [ %960, %953 ]
  %949 = phi i64 [ %915, %938 ], [ %959, %953 ]
  %950 = phi i32 [ %914, %938 ], [ %954, %953 ]
  %951 = phi ptr [ %913, %938 ], [ %955, %953 ]
  %952 = icmp eq i32 %950, 0
  br i1 %952, label %1690, label %953

953:                                              ; preds = %947
  %954 = add i32 %950, -1
  %955 = getelementptr inbounds i8, ptr %951, i64 1
  %956 = load i8, ptr %951, align 1, !tbaa !66
  %957 = zext i8 %956 to i64
  %958 = shl i64 %957, %948
  %959 = add i64 %958, %949
  %960 = add nuw nsw i64 %948, 8
  %961 = icmp ult i64 %960, %940
  br i1 %961, label %947, label %962, !llvm.loop !115

962:                                              ; preds = %953
  %963 = trunc i64 %960 to i32
  br label %964

964:                                              ; preds = %962, %935
  %965 = phi ptr [ %913, %935 ], [ %955, %962 ]
  %966 = phi i32 [ %914, %935 ], [ %954, %962 ]
  %967 = phi i64 [ %915, %935 ], [ %959, %962 ]
  %968 = phi i32 [ %916, %935 ], [ %963, %962 ]
  %969 = zext nneg i8 %917 to i64
  %970 = lshr i64 %967, %969
  %971 = sub i32 %968, %912
  %972 = icmp eq i32 %876, 0
  br i1 %972, label %973, label %974

973:                                              ; preds = %964
  store ptr @.str.10, ptr %40, align 8, !tbaa !67
  store i32 29, ptr %7, align 8, !tbaa !46
  br label %1678

974:                                              ; preds = %964
  %975 = add i32 %876, -1
  %976 = zext i32 %975 to i64
  %977 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 28, i64 %976
  %978 = load i16, ptr %977, align 2, !tbaa !108
  %979 = trunc i64 %970 to i32
  %980 = and i32 %979, 3
  %981 = add nuw nsw i32 %980, 3
  %982 = lshr i64 %970, 2
  %983 = add i32 %971, -2
  br label %1044

984:                                              ; preds = %932, %990
  %985 = phi i64 [ %933, %932 ], [ %997, %990 ]
  %986 = phi i64 [ %915, %932 ], [ %996, %990 ]
  %987 = phi i32 [ %914, %932 ], [ %991, %990 ]
  %988 = phi ptr [ %913, %932 ], [ %992, %990 ]
  %989 = icmp eq i32 %987, 0
  br i1 %989, label %1692, label %990

990:                                              ; preds = %984
  %991 = add i32 %987, -1
  %992 = getelementptr inbounds i8, ptr %988, i64 1
  %993 = load i8, ptr %988, align 1, !tbaa !66
  %994 = zext i8 %993 to i64
  %995 = shl i64 %994, %985
  %996 = add i64 %995, %986
  %997 = add nuw nsw i64 %985, 8
  %998 = icmp ult i64 %997, %934
  br i1 %998, label %984, label %999, !llvm.loop !116

999:                                              ; preds = %990
  %1000 = trunc i64 %997 to i32
  br label %1001

1001:                                             ; preds = %999, %929
  %1002 = phi ptr [ %913, %929 ], [ %992, %999 ]
  %1003 = phi i32 [ %914, %929 ], [ %991, %999 ]
  %1004 = phi i64 [ %915, %929 ], [ %996, %999 ]
  %1005 = phi i32 [ %916, %929 ], [ %1000, %999 ]
  %1006 = zext nneg i8 %917 to i64
  %1007 = lshr i64 %1004, %1006
  %1008 = trunc i64 %1007 to i32
  %1009 = and i32 %1008, 7
  %1010 = add nuw nsw i32 %1009, 3
  %1011 = lshr i64 %1007, 3
  %1012 = sub i32 %1005, %912
  %1013 = add i32 %1012, -3
  br label %1044

1014:                                             ; preds = %944, %1020
  %1015 = phi i64 [ %945, %944 ], [ %1027, %1020 ]
  %1016 = phi i64 [ %915, %944 ], [ %1026, %1020 ]
  %1017 = phi i32 [ %914, %944 ], [ %1021, %1020 ]
  %1018 = phi ptr [ %913, %944 ], [ %1022, %1020 ]
  %1019 = icmp eq i32 %1017, 0
  br i1 %1019, label %1688, label %1020

1020:                                             ; preds = %1014
  %1021 = add i32 %1017, -1
  %1022 = getelementptr inbounds i8, ptr %1018, i64 1
  %1023 = load i8, ptr %1018, align 1, !tbaa !66
  %1024 = zext i8 %1023 to i64
  %1025 = shl i64 %1024, %1015
  %1026 = add i64 %1025, %1016
  %1027 = add nuw nsw i64 %1015, 8
  %1028 = icmp ult i64 %1027, %946
  br i1 %1028, label %1014, label %1029, !llvm.loop !117

1029:                                             ; preds = %1020
  %1030 = trunc i64 %1027 to i32
  br label %1031

1031:                                             ; preds = %1029, %941
  %1032 = phi ptr [ %913, %941 ], [ %1022, %1029 ]
  %1033 = phi i32 [ %914, %941 ], [ %1021, %1029 ]
  %1034 = phi i64 [ %915, %941 ], [ %1026, %1029 ]
  %1035 = phi i32 [ %916, %941 ], [ %1030, %1029 ]
  %1036 = zext nneg i8 %917 to i64
  %1037 = lshr i64 %1034, %1036
  %1038 = trunc i64 %1037 to i32
  %1039 = and i32 %1038, 127
  %1040 = add nuw nsw i32 %1039, 11
  %1041 = lshr i64 %1037, 7
  %1042 = sub i32 %1035, %912
  %1043 = add i32 %1042, -7
  br label %1044

1044:                                             ; preds = %1001, %1031, %974
  %1045 = phi ptr [ %965, %974 ], [ %1002, %1001 ], [ %1032, %1031 ]
  %1046 = phi i32 [ %966, %974 ], [ %1003, %1001 ], [ %1033, %1031 ]
  %1047 = phi i64 [ %982, %974 ], [ %1011, %1001 ], [ %1041, %1031 ]
  %1048 = phi i32 [ %983, %974 ], [ %1013, %1001 ], [ %1043, %1031 ]
  %1049 = phi i32 [ %981, %974 ], [ %1010, %1001 ], [ %1040, %1031 ]
  %1050 = phi i16 [ %978, %974 ], [ 0, %1001 ], [ 0, %1031 ]
  %1051 = add i32 %1049, %876
  %1052 = icmp ugt i32 %1051, %864
  br i1 %1052, label %1053, label %1054

1053:                                             ; preds = %1044
  store ptr @.str.10, ptr %40, align 8, !tbaa !67
  store i32 29, ptr %7, align 8, !tbaa !46
  br label %1678

1054:                                             ; preds = %1044, %1054
  %1055 = phi i32 [ %1057, %1054 ], [ %1049, %1044 ]
  %1056 = phi i32 [ %1058, %1054 ], [ %876, %1044 ]
  %1057 = add nsw i32 %1055, -1
  %1058 = add i32 %1056, 1
  %1059 = zext i32 %1056 to i64
  %1060 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 28, i64 %1059
  store i16 %1050, ptr %1060, align 2, !tbaa !108
  %1061 = icmp eq i32 %1057, 0
  br i1 %1061, label %1062, label %1054, !llvm.loop !118

1062:                                             ; preds = %1054
  store i32 %1058, ptr %45, align 4, !tbaa !75
  br label %1063

1063:                                             ; preds = %1062, %921
  %1064 = phi i32 [ %925, %921 ], [ %1058, %1062 ]
  %1065 = phi ptr [ %913, %921 ], [ %1045, %1062 ]
  %1066 = phi i32 [ %914, %921 ], [ %1046, %1062 ]
  %1067 = phi i64 [ %923, %921 ], [ %1047, %1062 ]
  %1068 = phi i32 [ %924, %921 ], [ %1048, %1062 ]
  %1069 = icmp ult i32 %1064, %864
  br i1 %1069, label %871, label %1070, !llvm.loop !119

1070:                                             ; preds = %1063, %855
  %1071 = phi ptr [ %857, %855 ], [ %1065, %1063 ]
  %1072 = phi i32 [ %858, %855 ], [ %1066, %1063 ]
  %1073 = phi i64 [ %859, %855 ], [ %1067, %1063 ]
  %1074 = phi i32 [ %860, %855 ], [ %1068, %1063 ]
  %1075 = load i16, ptr %52, align 8, !tbaa !108
  %1076 = icmp eq i16 %1075, 0
  br i1 %1076, label %1077, label %1078

1077:                                             ; preds = %1070
  store ptr @.str.11, ptr %40, align 8, !tbaa !67
  store i32 29, ptr %7, align 8, !tbaa !46
  br label %1678

1078:                                             ; preds = %1070
  store ptr %46, ptr %47, align 8, !tbaa !53
  store ptr %46, ptr %48, align 8, !tbaa !55
  store i32 9, ptr %49, align 8, !tbaa !112
  %1079 = call i32 @inflate_table(i32 noundef 1, ptr noundef nonnull %50, i32 noundef %862, ptr noundef nonnull %47, ptr noundef nonnull %49, ptr noundef nonnull %51) #13
  %1080 = icmp eq i32 %1079, 0
  br i1 %1080, label %1082, label %1081

1081:                                             ; preds = %1078
  store ptr @.str.12, ptr %40, align 8, !tbaa !67
  store i32 29, ptr %7, align 8, !tbaa !46
  br label %1678

1082:                                             ; preds = %1078
  %1083 = load ptr, ptr %47, align 8, !tbaa !53
  store ptr %1083, ptr %53, align 8, !tbaa !54
  store i32 6, ptr %54, align 4, !tbaa !120
  %1084 = load i32, ptr %42, align 4, !tbaa !105
  %1085 = zext i32 %1084 to i64
  %1086 = getelementptr inbounds i16, ptr %50, i64 %1085
  %1087 = load i32, ptr %43, align 8, !tbaa !106
  %1088 = call i32 @inflate_table(i32 noundef 2, ptr noundef nonnull %1086, i32 noundef %1087, ptr noundef nonnull %47, ptr noundef nonnull %54, ptr noundef nonnull %51) #13
  %1089 = icmp eq i32 %1088, 0
  br i1 %1089, label %1091, label %1090

1090:                                             ; preds = %1082
  store ptr @.str.13, ptr %40, align 8, !tbaa !67
  store i32 29, ptr %7, align 8, !tbaa !46
  br label %1678

1091:                                             ; preds = %1082
  store i32 19, ptr %7, align 8, !tbaa !46
  br i1 %55, label %1752, label %1092

1092:                                             ; preds = %1091, %75
  %1093 = phi ptr [ %77, %75 ], [ %1071, %1091 ]
  %1094 = phi i32 [ %79, %75 ], [ %1072, %1091 ]
  %1095 = phi i64 [ %81, %75 ], [ %1073, %1091 ]
  %1096 = phi i32 [ %82, %75 ], [ %1074, %1091 ]
  %1097 = phi i32 [ %84, %75 ], [ 0, %1091 ]
  store i32 20, ptr %7, align 8, !tbaa !46
  br label %1098

1098:                                             ; preds = %75, %1092
  %1099 = phi ptr [ %77, %75 ], [ %1093, %1092 ]
  %1100 = phi i32 [ %79, %75 ], [ %1094, %1092 ]
  %1101 = phi i64 [ %81, %75 ], [ %1095, %1092 ]
  %1102 = phi i32 [ %82, %75 ], [ %1096, %1092 ]
  %1103 = phi i32 [ %84, %75 ], [ %1097, %1092 ]
  %1104 = icmp ugt i32 %1100, 5
  %1105 = icmp ugt i32 %80, 257
  %1106 = select i1 %1104, i1 %1105, i1 false
  br i1 %1106, label %1107, label %1117

1107:                                             ; preds = %1098
  store ptr %78, ptr %10, align 8, !tbaa !70
  store i32 %80, ptr %26, align 8, !tbaa !73
  store ptr %1099, ptr %0, align 8, !tbaa !71
  store i32 %1100, ptr %28, align 8, !tbaa !72
  store i64 %1101, ptr %30, align 8, !tbaa !51
  store i32 %1102, ptr %32, align 8, !tbaa !52
  call void @inflate_fast(ptr noundef nonnull %0, i32 noundef %83) #13
  %1108 = load ptr, ptr %10, align 8, !tbaa !70
  %1109 = load i32, ptr %26, align 8, !tbaa !73
  %1110 = load ptr, ptr %0, align 8, !tbaa !71
  %1111 = load i32, ptr %28, align 8, !tbaa !72
  %1112 = load i64, ptr %30, align 8, !tbaa !51
  %1113 = load i32, ptr %32, align 8, !tbaa !52
  %1114 = load i32, ptr %7, align 8, !tbaa !46
  %1115 = icmp eq i32 %1114, 11
  br i1 %1115, label %1116, label %1678

1116:                                             ; preds = %1107
  store i32 -1, ptr %56, align 4, !tbaa !57
  br label %1678

1117:                                             ; preds = %1098
  store i32 0, ptr %56, align 4, !tbaa !57
  %1118 = load ptr, ptr %48, align 8, !tbaa !55
  %1119 = load i32, ptr %49, align 8, !tbaa !112
  %1120 = shl nsw i32 -1, %1119
  %1121 = xor i32 %1120, -1
  %1122 = trunc i64 %1101 to i32
  %1123 = and i32 %1121, %1122
  %1124 = zext nneg i32 %1123 to i64
  %1125 = getelementptr inbounds %struct.code, ptr %1118, i64 %1124
  %1126 = getelementptr inbounds i8, ptr %1125, i64 1
  %1127 = load i8, ptr %1126, align 1, !tbaa.struct !113
  %1128 = zext i8 %1127 to i32
  %1129 = icmp ult i32 %1102, %1128
  br i1 %1129, label %1130, label %1157

1130:                                             ; preds = %1117
  %1131 = zext nneg i32 %1102 to i64
  br label %1132

1132:                                             ; preds = %1130, %1138
  %1133 = phi i64 [ %1131, %1130 ], [ %1145, %1138 ]
  %1134 = phi i64 [ %1101, %1130 ], [ %1144, %1138 ]
  %1135 = phi i32 [ %1100, %1130 ], [ %1139, %1138 ]
  %1136 = phi ptr [ %1099, %1130 ], [ %1140, %1138 ]
  %1137 = icmp eq i32 %1135, 0
  br i1 %1137, label %1746, label %1138

1138:                                             ; preds = %1132
  %1139 = add i32 %1135, -1
  %1140 = getelementptr inbounds i8, ptr %1136, i64 1
  %1141 = load i8, ptr %1136, align 1, !tbaa !66
  %1142 = zext i8 %1141 to i64
  %1143 = shl i64 %1142, %1133
  %1144 = add i64 %1143, %1134
  %1145 = add nuw nsw i64 %1133, 8
  %1146 = trunc i64 %1144 to i32
  %1147 = and i32 %1121, %1146
  %1148 = zext nneg i32 %1147 to i64
  %1149 = getelementptr inbounds %struct.code, ptr %1118, i64 %1148
  %1150 = getelementptr inbounds i8, ptr %1149, i64 1
  %1151 = load i8, ptr %1150, align 1, !tbaa.struct !113
  %1152 = zext i8 %1151 to i64
  %1153 = icmp ult i64 %1145, %1152
  br i1 %1153, label %1132, label %1154

1154:                                             ; preds = %1138
  %1155 = zext i8 %1151 to i32
  %1156 = trunc i64 %1145 to i32
  br label %1157

1157:                                             ; preds = %1154, %1117
  %1158 = phi ptr [ %1125, %1117 ], [ %1149, %1154 ]
  %1159 = phi ptr [ %1099, %1117 ], [ %1140, %1154 ]
  %1160 = phi i32 [ %1100, %1117 ], [ %1139, %1154 ]
  %1161 = phi i64 [ %1101, %1117 ], [ %1144, %1154 ]
  %1162 = phi i32 [ %1102, %1117 ], [ %1156, %1154 ]
  %1163 = phi i8 [ %1127, %1117 ], [ %1151, %1154 ]
  %1164 = phi i32 [ %1128, %1117 ], [ %1155, %1154 ]
  %1165 = getelementptr inbounds i8, ptr %1158, i64 2
  %1166 = load i16, ptr %1165, align 2, !tbaa.struct !114
  %1167 = load i8, ptr %1158, align 2, !tbaa.struct !121
  %1168 = add i8 %1167, -1
  %1169 = icmp ult i8 %1168, 15
  br i1 %1169, label %1170, label %1230

1170:                                             ; preds = %1157
  %1171 = zext nneg i8 %1167 to i32
  %1172 = zext i16 %1166 to i32
  %1173 = add nuw nsw i32 %1164, %1171
  %1174 = shl nsw i32 -1, %1173
  %1175 = xor i32 %1174, -1
  %1176 = trunc i64 %1161 to i32
  %1177 = and i32 %1176, %1175
  %1178 = lshr i32 %1177, %1164
  %1179 = add nuw i32 %1178, %1172
  %1180 = zext i32 %1179 to i64
  %1181 = getelementptr inbounds %struct.code, ptr %1118, i64 %1180
  %1182 = getelementptr inbounds i8, ptr %1181, i64 1
  %1183 = load i8, ptr %1182, align 1, !tbaa.struct !113
  %1184 = zext i8 %1183 to i32
  %1185 = add nuw nsw i32 %1164, %1184
  %1186 = icmp ugt i32 %1185, %1162
  br i1 %1186, label %1187, label %1217

1187:                                             ; preds = %1170
  %1188 = zext nneg i32 %1162 to i64
  br label %1189

1189:                                             ; preds = %1187, %1195
  %1190 = phi i64 [ %1188, %1187 ], [ %1202, %1195 ]
  %1191 = phi i64 [ %1161, %1187 ], [ %1201, %1195 ]
  %1192 = phi i32 [ %1160, %1187 ], [ %1196, %1195 ]
  %1193 = phi ptr [ %1159, %1187 ], [ %1197, %1195 ]
  %1194 = icmp eq i32 %1192, 0
  br i1 %1194, label %1741, label %1195

1195:                                             ; preds = %1189
  %1196 = add i32 %1192, -1
  %1197 = getelementptr inbounds i8, ptr %1193, i64 1
  %1198 = load i8, ptr %1193, align 1, !tbaa !66
  %1199 = zext i8 %1198 to i64
  %1200 = shl i64 %1199, %1190
  %1201 = add i64 %1200, %1191
  %1202 = add nuw nsw i64 %1190, 8
  %1203 = trunc i64 %1201 to i32
  %1204 = and i32 %1203, %1175
  %1205 = lshr i32 %1204, %1164
  %1206 = add nuw i32 %1205, %1172
  %1207 = zext i32 %1206 to i64
  %1208 = getelementptr inbounds %struct.code, ptr %1118, i64 %1207
  %1209 = getelementptr inbounds i8, ptr %1208, i64 1
  %1210 = load i8, ptr %1209, align 1, !tbaa.struct !113
  %1211 = zext i8 %1210 to i32
  %1212 = add nuw nsw i32 %1164, %1211
  %1213 = zext nneg i32 %1212 to i64
  %1214 = icmp ult i64 %1202, %1213
  br i1 %1214, label %1189, label %1215

1215:                                             ; preds = %1195
  %1216 = trunc i64 %1202 to i32
  br label %1217

1217:                                             ; preds = %1215, %1170
  %1218 = phi ptr [ %1159, %1170 ], [ %1197, %1215 ]
  %1219 = phi i32 [ %1160, %1170 ], [ %1196, %1215 ]
  %1220 = phi i64 [ %1161, %1170 ], [ %1201, %1215 ]
  %1221 = phi i32 [ %1162, %1170 ], [ %1216, %1215 ]
  %1222 = phi ptr [ %1181, %1170 ], [ %1208, %1215 ]
  %1223 = phi i8 [ %1183, %1170 ], [ %1210, %1215 ]
  %1224 = getelementptr inbounds i8, ptr %1222, i64 2
  %1225 = load i16, ptr %1224, align 2, !tbaa.struct !114
  %1226 = load i8, ptr %1222, align 2, !tbaa.struct !121
  %1227 = zext nneg i8 %1163 to i64
  %1228 = lshr i64 %1220, %1227
  %1229 = sub i32 %1221, %1164
  br label %1230

1230:                                             ; preds = %1157, %1217
  %1231 = phi i32 [ %1164, %1217 ], [ 0, %1157 ]
  %1232 = phi ptr [ %1218, %1217 ], [ %1159, %1157 ]
  %1233 = phi i32 [ %1219, %1217 ], [ %1160, %1157 ]
  %1234 = phi i64 [ %1228, %1217 ], [ %1161, %1157 ]
  %1235 = phi i32 [ %1229, %1217 ], [ %1162, %1157 ]
  %1236 = phi i16 [ %1225, %1217 ], [ %1166, %1157 ]
  %1237 = phi i8 [ %1223, %1217 ], [ %1163, %1157 ]
  %1238 = phi i8 [ %1226, %1217 ], [ %1167, %1157 ]
  %1239 = zext i8 %1237 to i32
  %1240 = zext nneg i8 %1237 to i64
  %1241 = lshr i64 %1234, %1240
  %1242 = sub i32 %1235, %1239
  %1243 = add nuw nsw i32 %1231, %1239
  store i32 %1243, ptr %56, align 4, !tbaa !57
  %1244 = zext i16 %1236 to i32
  store i32 %1244, ptr %41, align 4, !tbaa !90
  %1245 = zext i8 %1238 to i32
  %1246 = icmp eq i8 %1238, 0
  br i1 %1246, label %1247, label %1248

1247:                                             ; preds = %1230
  store i32 25, ptr %7, align 8, !tbaa !46
  br label %1678

1248:                                             ; preds = %1230
  %1249 = and i32 %1245, 32
  %1250 = icmp eq i32 %1249, 0
  br i1 %1250, label %1252, label %1251

1251:                                             ; preds = %1248
  store i32 -1, ptr %56, align 4, !tbaa !57
  store i32 11, ptr %7, align 8, !tbaa !46
  br label %1678

1252:                                             ; preds = %1248
  %1253 = and i32 %1245, 64
  %1254 = icmp eq i32 %1253, 0
  br i1 %1254, label %1256, label %1255

1255:                                             ; preds = %1252
  store ptr @.str.14, ptr %40, align 8, !tbaa !67
  store i32 29, ptr %7, align 8, !tbaa !46
  br label %1678

1256:                                             ; preds = %1252
  %1257 = and i32 %1245, 15
  store i32 %1257, ptr %57, align 4, !tbaa !74
  store i32 21, ptr %7, align 8, !tbaa !46
  br label %1258

1258:                                             ; preds = %87, %1256
  %1259 = phi i32 [ %88, %87 ], [ %1257, %1256 ]
  %1260 = phi ptr [ %77, %87 ], [ %1232, %1256 ]
  %1261 = phi i32 [ %79, %87 ], [ %1233, %1256 ]
  %1262 = phi i64 [ %81, %87 ], [ %1241, %1256 ]
  %1263 = phi i32 [ %82, %87 ], [ %1242, %1256 ]
  %1264 = phi i32 [ %84, %87 ], [ %1103, %1256 ]
  %1265 = icmp eq i32 %1259, 0
  br i1 %1265, label %1266, label %1268

1266:                                             ; preds = %1258
  %1267 = load i32, ptr %41, align 4, !tbaa !90
  br label %1302

1268:                                             ; preds = %1258
  %1269 = icmp ult i32 %1263, %1259
  br i1 %1269, label %1270, label %1286

1270:                                             ; preds = %1268, %1276
  %1271 = phi i32 [ %1284, %1276 ], [ %1263, %1268 ]
  %1272 = phi i64 [ %1283, %1276 ], [ %1262, %1268 ]
  %1273 = phi i32 [ %1277, %1276 ], [ %1261, %1268 ]
  %1274 = phi ptr [ %1278, %1276 ], [ %1260, %1268 ]
  %1275 = icmp eq i32 %1273, 0
  br i1 %1275, label %1736, label %1276

1276:                                             ; preds = %1270
  %1277 = add i32 %1273, -1
  %1278 = getelementptr inbounds i8, ptr %1274, i64 1
  %1279 = load i8, ptr %1274, align 1, !tbaa !66
  %1280 = zext i8 %1279 to i64
  %1281 = zext nneg i32 %1271 to i64
  %1282 = shl i64 %1280, %1281
  %1283 = add i64 %1282, %1272
  %1284 = add i32 %1271, 8
  %1285 = icmp ult i32 %1284, %1259
  br i1 %1285, label %1270, label %1286, !llvm.loop !122

1286:                                             ; preds = %1276, %1268
  %1287 = phi ptr [ %1260, %1268 ], [ %1278, %1276 ]
  %1288 = phi i32 [ %1261, %1268 ], [ %1277, %1276 ]
  %1289 = phi i64 [ %1262, %1268 ], [ %1283, %1276 ]
  %1290 = phi i32 [ %1263, %1268 ], [ %1284, %1276 ]
  %1291 = trunc i64 %1289 to i32
  %1292 = shl nsw i32 -1, %1259
  %1293 = xor i32 %1292, -1
  %1294 = and i32 %1291, %1293
  %1295 = load i32, ptr %41, align 4, !tbaa !90
  %1296 = add i32 %1295, %1294
  store i32 %1296, ptr %41, align 4, !tbaa !90
  %1297 = zext nneg i32 %1259 to i64
  %1298 = lshr i64 %1289, %1297
  %1299 = sub i32 %1290, %1259
  %1300 = load i32, ptr %56, align 4, !tbaa !57
  %1301 = add i32 %1300, %1259
  store i32 %1301, ptr %56, align 4, !tbaa !57
  br label %1302

1302:                                             ; preds = %1266, %1286
  %1303 = phi i32 [ %1296, %1286 ], [ %1267, %1266 ]
  %1304 = phi ptr [ %1287, %1286 ], [ %1260, %1266 ]
  %1305 = phi i32 [ %1288, %1286 ], [ %1261, %1266 ]
  %1306 = phi i64 [ %1298, %1286 ], [ %1262, %1266 ]
  %1307 = phi i32 [ %1299, %1286 ], [ %1263, %1266 ]
  store i32 %1303, ptr %58, align 8, !tbaa !123
  store i32 22, ptr %7, align 8, !tbaa !46
  br label %1308

1308:                                             ; preds = %75, %1302
  %1309 = phi ptr [ %77, %75 ], [ %1304, %1302 ]
  %1310 = phi i32 [ %79, %75 ], [ %1305, %1302 ]
  %1311 = phi i64 [ %81, %75 ], [ %1306, %1302 ]
  %1312 = phi i32 [ %82, %75 ], [ %1307, %1302 ]
  %1313 = phi i32 [ %84, %75 ], [ %1264, %1302 ]
  %1314 = load ptr, ptr %53, align 8, !tbaa !54
  %1315 = load i32, ptr %54, align 4, !tbaa !120
  %1316 = shl nsw i32 -1, %1315
  %1317 = xor i32 %1316, -1
  %1318 = trunc i64 %1311 to i32
  %1319 = and i32 %1317, %1318
  %1320 = zext nneg i32 %1319 to i64
  %1321 = getelementptr inbounds %struct.code, ptr %1314, i64 %1320
  %1322 = getelementptr inbounds i8, ptr %1321, i64 1
  %1323 = load i8, ptr %1322, align 1, !tbaa.struct !113
  %1324 = zext i8 %1323 to i32
  %1325 = icmp ult i32 %1312, %1324
  br i1 %1325, label %1326, label %1353

1326:                                             ; preds = %1308
  %1327 = zext nneg i32 %1312 to i64
  br label %1328

1328:                                             ; preds = %1326, %1334
  %1329 = phi i64 [ %1327, %1326 ], [ %1341, %1334 ]
  %1330 = phi i64 [ %1311, %1326 ], [ %1340, %1334 ]
  %1331 = phi i32 [ %1310, %1326 ], [ %1335, %1334 ]
  %1332 = phi ptr [ %1309, %1326 ], [ %1336, %1334 ]
  %1333 = icmp eq i32 %1331, 0
  br i1 %1333, label %1731, label %1334

1334:                                             ; preds = %1328
  %1335 = add i32 %1331, -1
  %1336 = getelementptr inbounds i8, ptr %1332, i64 1
  %1337 = load i8, ptr %1332, align 1, !tbaa !66
  %1338 = zext i8 %1337 to i64
  %1339 = shl i64 %1338, %1329
  %1340 = add i64 %1339, %1330
  %1341 = add nuw nsw i64 %1329, 8
  %1342 = trunc i64 %1340 to i32
  %1343 = and i32 %1317, %1342
  %1344 = zext nneg i32 %1343 to i64
  %1345 = getelementptr inbounds %struct.code, ptr %1314, i64 %1344
  %1346 = getelementptr inbounds i8, ptr %1345, i64 1
  %1347 = load i8, ptr %1346, align 1, !tbaa.struct !113
  %1348 = zext i8 %1347 to i64
  %1349 = icmp ult i64 %1341, %1348
  br i1 %1349, label %1328, label %1350

1350:                                             ; preds = %1334
  %1351 = zext i8 %1347 to i32
  %1352 = trunc i64 %1341 to i32
  br label %1353

1353:                                             ; preds = %1350, %1308
  %1354 = phi ptr [ %1321, %1308 ], [ %1345, %1350 ]
  %1355 = phi ptr [ %1309, %1308 ], [ %1336, %1350 ]
  %1356 = phi i32 [ %1310, %1308 ], [ %1335, %1350 ]
  %1357 = phi i64 [ %1311, %1308 ], [ %1340, %1350 ]
  %1358 = phi i32 [ %1312, %1308 ], [ %1352, %1350 ]
  %1359 = phi i8 [ %1323, %1308 ], [ %1347, %1350 ]
  %1360 = phi i32 [ %1324, %1308 ], [ %1351, %1350 ]
  %1361 = getelementptr inbounds i8, ptr %1354, i64 2
  %1362 = load i16, ptr %1361, align 2, !tbaa.struct !114
  %1363 = load i8, ptr %1354, align 2, !tbaa.struct !121
  %1364 = icmp ult i8 %1363, 16
  br i1 %1364, label %1367, label %1365

1365:                                             ; preds = %1353
  %1366 = load i32, ptr %56, align 4, !tbaa !57
  br label %1429

1367:                                             ; preds = %1353
  %1368 = zext nneg i8 %1363 to i32
  %1369 = zext i16 %1362 to i32
  %1370 = add nuw nsw i32 %1360, %1368
  %1371 = shl nsw i32 -1, %1370
  %1372 = xor i32 %1371, -1
  %1373 = trunc i64 %1357 to i32
  %1374 = and i32 %1373, %1372
  %1375 = lshr i32 %1374, %1360
  %1376 = add nuw i32 %1375, %1369
  %1377 = zext i32 %1376 to i64
  %1378 = getelementptr inbounds %struct.code, ptr %1314, i64 %1377
  %1379 = getelementptr inbounds i8, ptr %1378, i64 1
  %1380 = load i8, ptr %1379, align 1, !tbaa.struct !113
  %1381 = zext i8 %1380 to i32
  %1382 = add nuw nsw i32 %1360, %1381
  %1383 = icmp ugt i32 %1382, %1358
  br i1 %1383, label %1384, label %1414

1384:                                             ; preds = %1367
  %1385 = zext nneg i32 %1358 to i64
  br label %1386

1386:                                             ; preds = %1384, %1392
  %1387 = phi i64 [ %1385, %1384 ], [ %1399, %1392 ]
  %1388 = phi i64 [ %1357, %1384 ], [ %1398, %1392 ]
  %1389 = phi i32 [ %1356, %1384 ], [ %1393, %1392 ]
  %1390 = phi ptr [ %1355, %1384 ], [ %1394, %1392 ]
  %1391 = icmp eq i32 %1389, 0
  br i1 %1391, label %1726, label %1392

1392:                                             ; preds = %1386
  %1393 = add i32 %1389, -1
  %1394 = getelementptr inbounds i8, ptr %1390, i64 1
  %1395 = load i8, ptr %1390, align 1, !tbaa !66
  %1396 = zext i8 %1395 to i64
  %1397 = shl i64 %1396, %1387
  %1398 = add i64 %1397, %1388
  %1399 = add nuw nsw i64 %1387, 8
  %1400 = trunc i64 %1398 to i32
  %1401 = and i32 %1400, %1372
  %1402 = lshr i32 %1401, %1360
  %1403 = add nuw i32 %1402, %1369
  %1404 = zext i32 %1403 to i64
  %1405 = getelementptr inbounds %struct.code, ptr %1314, i64 %1404
  %1406 = getelementptr inbounds i8, ptr %1405, i64 1
  %1407 = load i8, ptr %1406, align 1, !tbaa.struct !113
  %1408 = zext i8 %1407 to i32
  %1409 = add nuw nsw i32 %1360, %1408
  %1410 = zext nneg i32 %1409 to i64
  %1411 = icmp ult i64 %1399, %1410
  br i1 %1411, label %1386, label %1412

1412:                                             ; preds = %1392
  %1413 = trunc i64 %1399 to i32
  br label %1414

1414:                                             ; preds = %1412, %1367
  %1415 = phi ptr [ %1355, %1367 ], [ %1394, %1412 ]
  %1416 = phi i32 [ %1356, %1367 ], [ %1393, %1412 ]
  %1417 = phi i64 [ %1357, %1367 ], [ %1398, %1412 ]
  %1418 = phi i32 [ %1358, %1367 ], [ %1413, %1412 ]
  %1419 = phi ptr [ %1378, %1367 ], [ %1405, %1412 ]
  %1420 = phi i8 [ %1380, %1367 ], [ %1407, %1412 ]
  %1421 = getelementptr inbounds i8, ptr %1419, i64 2
  %1422 = load i16, ptr %1421, align 2, !tbaa.struct !114
  %1423 = load i8, ptr %1419, align 2, !tbaa.struct !121
  %1424 = zext nneg i8 %1359 to i64
  %1425 = lshr i64 %1417, %1424
  %1426 = sub i32 %1418, %1360
  %1427 = load i32, ptr %56, align 4, !tbaa !57
  %1428 = add nsw i32 %1427, %1360
  br label %1429

1429:                                             ; preds = %1365, %1414
  %1430 = phi i32 [ %1428, %1414 ], [ %1366, %1365 ]
  %1431 = phi ptr [ %1415, %1414 ], [ %1355, %1365 ]
  %1432 = phi i32 [ %1416, %1414 ], [ %1356, %1365 ]
  %1433 = phi i64 [ %1425, %1414 ], [ %1357, %1365 ]
  %1434 = phi i32 [ %1426, %1414 ], [ %1358, %1365 ]
  %1435 = phi i16 [ %1422, %1414 ], [ %1362, %1365 ]
  %1436 = phi i8 [ %1420, %1414 ], [ %1359, %1365 ]
  %1437 = phi i8 [ %1423, %1414 ], [ %1363, %1365 ]
  %1438 = zext i8 %1436 to i32
  %1439 = zext nneg i8 %1436 to i64
  %1440 = lshr i64 %1433, %1439
  %1441 = sub i32 %1434, %1438
  %1442 = add nsw i32 %1430, %1438
  store i32 %1442, ptr %56, align 4, !tbaa !57
  %1443 = zext i8 %1437 to i32
  %1444 = and i32 %1443, 64
  %1445 = icmp eq i32 %1444, 0
  br i1 %1445, label %1447, label %1446

1446:                                             ; preds = %1429
  store ptr @.str.15, ptr %40, align 8, !tbaa !67
  store i32 29, ptr %7, align 8, !tbaa !46
  br label %1678

1447:                                             ; preds = %1429
  %1448 = zext i16 %1435 to i32
  store i32 %1448, ptr %59, align 8, !tbaa !124
  %1449 = and i32 %1443, 15
  store i32 %1449, ptr %57, align 4, !tbaa !74
  store i32 23, ptr %7, align 8, !tbaa !46
  br label %1450

1450:                                             ; preds = %85, %1447
  %1451 = phi i32 [ %86, %85 ], [ %1449, %1447 ]
  %1452 = phi ptr [ %77, %85 ], [ %1431, %1447 ]
  %1453 = phi i32 [ %79, %85 ], [ %1432, %1447 ]
  %1454 = phi i64 [ %81, %85 ], [ %1440, %1447 ]
  %1455 = phi i32 [ %82, %85 ], [ %1441, %1447 ]
  %1456 = phi i32 [ %84, %85 ], [ %1313, %1447 ]
  %1457 = icmp eq i32 %1451, 0
  br i1 %1457, label %1492, label %1458

1458:                                             ; preds = %1450
  %1459 = icmp ult i32 %1455, %1451
  br i1 %1459, label %1460, label %1476

1460:                                             ; preds = %1458, %1466
  %1461 = phi i32 [ %1474, %1466 ], [ %1455, %1458 ]
  %1462 = phi i64 [ %1473, %1466 ], [ %1454, %1458 ]
  %1463 = phi i32 [ %1467, %1466 ], [ %1453, %1458 ]
  %1464 = phi ptr [ %1468, %1466 ], [ %1452, %1458 ]
  %1465 = icmp eq i32 %1463, 0
  br i1 %1465, label %1721, label %1466

1466:                                             ; preds = %1460
  %1467 = add i32 %1463, -1
  %1468 = getelementptr inbounds i8, ptr %1464, i64 1
  %1469 = load i8, ptr %1464, align 1, !tbaa !66
  %1470 = zext i8 %1469 to i64
  %1471 = zext nneg i32 %1461 to i64
  %1472 = shl i64 %1470, %1471
  %1473 = add i64 %1472, %1462
  %1474 = add i32 %1461, 8
  %1475 = icmp ult i32 %1474, %1451
  br i1 %1475, label %1460, label %1476, !llvm.loop !125

1476:                                             ; preds = %1466, %1458
  %1477 = phi ptr [ %1452, %1458 ], [ %1468, %1466 ]
  %1478 = phi i32 [ %1453, %1458 ], [ %1467, %1466 ]
  %1479 = phi i64 [ %1454, %1458 ], [ %1473, %1466 ]
  %1480 = phi i32 [ %1455, %1458 ], [ %1474, %1466 ]
  %1481 = trunc i64 %1479 to i32
  %1482 = shl nsw i32 -1, %1451
  %1483 = xor i32 %1482, -1
  %1484 = and i32 %1481, %1483
  %1485 = load i32, ptr %59, align 8, !tbaa !124
  %1486 = add i32 %1485, %1484
  store i32 %1486, ptr %59, align 8, !tbaa !124
  %1487 = zext nneg i32 %1451 to i64
  %1488 = lshr i64 %1479, %1487
  %1489 = sub i32 %1480, %1451
  %1490 = load i32, ptr %56, align 4, !tbaa !57
  %1491 = add i32 %1490, %1451
  store i32 %1491, ptr %56, align 4, !tbaa !57
  br label %1492

1492:                                             ; preds = %1476, %1450
  %1493 = phi ptr [ %1477, %1476 ], [ %1452, %1450 ]
  %1494 = phi i32 [ %1478, %1476 ], [ %1453, %1450 ]
  %1495 = phi i64 [ %1488, %1476 ], [ %1454, %1450 ]
  %1496 = phi i32 [ %1489, %1476 ], [ %1455, %1450 ]
  store i32 24, ptr %7, align 8, !tbaa !46
  br label %1497

1497:                                             ; preds = %75, %1492
  %1498 = phi ptr [ %77, %75 ], [ %1493, %1492 ]
  %1499 = phi i32 [ %79, %75 ], [ %1494, %1492 ]
  %1500 = phi i64 [ %81, %75 ], [ %1495, %1492 ]
  %1501 = phi i32 [ %82, %75 ], [ %1496, %1492 ]
  %1502 = phi i32 [ %84, %75 ], [ %1456, %1492 ]
  %1503 = icmp eq i32 %80, 0
  br i1 %1503, label %1752, label %1504

1504:                                             ; preds = %1497
  %1505 = sub i32 %83, %80
  %1506 = load i32, ptr %59, align 8, !tbaa !124
  %1507 = icmp ugt i32 %1506, %1505
  br i1 %1507, label %1508, label %1533

1508:                                             ; preds = %1504
  %1509 = sub i32 %1506, %1505
  %1510 = load i32, ptr %60, align 8, !tbaa !59
  %1511 = icmp ugt i32 %1509, %1510
  br i1 %1511, label %1512, label %1516

1512:                                             ; preds = %1508
  %1513 = load i32, ptr %61, align 8, !tbaa !56
  %1514 = icmp eq i32 %1513, 0
  br i1 %1514, label %1516, label %1515

1515:                                             ; preds = %1512
  store ptr @.str.16, ptr %40, align 8, !tbaa !67
  store i32 29, ptr %7, align 8, !tbaa !46
  br label %1678

1516:                                             ; preds = %1512, %1508
  %1517 = load i32, ptr %62, align 4, !tbaa !60
  %1518 = icmp ugt i32 %1509, %1517
  br i1 %1518, label %1519, label %1523

1519:                                             ; preds = %1516
  %1520 = sub i32 %1509, %1517
  %1521 = load i32, ptr %64, align 4, !tbaa !58
  %1522 = sub i32 %1521, %1520
  br label %1525

1523:                                             ; preds = %1516
  %1524 = sub i32 %1517, %1509
  br label %1525

1525:                                             ; preds = %1523, %1519
  %1526 = phi i32 [ %1524, %1523 ], [ %1522, %1519 ]
  %1527 = phi i32 [ %1509, %1523 ], [ %1520, %1519 ]
  %1528 = load ptr, ptr %63, align 8, !tbaa !62
  %1529 = zext i32 %1526 to i64
  %1530 = getelementptr inbounds i8, ptr %1528, i64 %1529
  %1531 = load i32, ptr %41, align 4, !tbaa !90
  %1532 = call i32 @llvm.umin.i32(i32 %1527, i32 %1531)
  br label %1538

1533:                                             ; preds = %1504
  %1534 = zext i32 %1506 to i64
  %1535 = sub nsw i64 0, %1534
  %1536 = getelementptr inbounds i8, ptr %78, i64 %1535
  %1537 = load i32, ptr %41, align 4, !tbaa !90
  br label %1538

1538:                                             ; preds = %1525, %1533
  %1539 = phi i32 [ %1537, %1533 ], [ %1531, %1525 ]
  %1540 = phi i32 [ %1537, %1533 ], [ %1532, %1525 ]
  %1541 = phi ptr [ %1536, %1533 ], [ %1530, %1525 ]
  %1542 = call i32 @llvm.umin.i32(i32 %1540, i32 %80)
  %1543 = sub i32 %1539, %1542
  store i32 %1543, ptr %41, align 4, !tbaa !90
  br label %1544

1544:                                             ; preds = %1544, %1538
  %1545 = phi ptr [ %78, %1538 ], [ %1550, %1544 ]
  %1546 = phi i32 [ %1542, %1538 ], [ %1551, %1544 ]
  %1547 = phi ptr [ %1541, %1538 ], [ %1548, %1544 ]
  %1548 = getelementptr inbounds i8, ptr %1547, i64 1
  %1549 = load i8, ptr %1547, align 1, !tbaa !66
  %1550 = getelementptr inbounds i8, ptr %1545, i64 1
  store i8 %1549, ptr %1545, align 1, !tbaa !66
  %1551 = add i32 %1546, -1
  %1552 = icmp eq i32 %1551, 0
  br i1 %1552, label %1553, label %1544, !llvm.loop !126

1553:                                             ; preds = %1544
  %1554 = sub i32 %80, %1542
  %1555 = load i32, ptr %41, align 4, !tbaa !90
  %1556 = icmp eq i32 %1555, 0
  br i1 %1556, label %1557, label %1678

1557:                                             ; preds = %1553
  store i32 20, ptr %7, align 8, !tbaa !46
  br label %1678

1558:                                             ; preds = %75
  %1559 = icmp eq i32 %80, 0
  br i1 %1559, label %1752, label %1560

1560:                                             ; preds = %1558
  %1561 = load i32, ptr %41, align 4, !tbaa !90
  %1562 = trunc i32 %1561 to i8
  %1563 = getelementptr inbounds i8, ptr %78, i64 1
  store i8 %1562, ptr %78, align 1, !tbaa !66
  %1564 = add i32 %80, -1
  store i32 20, ptr %7, align 8, !tbaa !46
  br label %1678

1565:                                             ; preds = %75
  %1566 = load i32, ptr %34, align 8, !tbaa !44
  %1567 = icmp eq i32 %1566, 0
  br i1 %1567, label %1626, label %1568

1568:                                             ; preds = %1565
  %1569 = icmp ult i32 %82, 32
  br i1 %1569, label %1570, label %1589

1570:                                             ; preds = %1568
  %1571 = zext nneg i32 %82 to i64
  br label %1572

1572:                                             ; preds = %1570, %1578
  %1573 = phi i64 [ %1571, %1570 ], [ %1585, %1578 ]
  %1574 = phi i64 [ %81, %1570 ], [ %1584, %1578 ]
  %1575 = phi i32 [ %79, %1570 ], [ %1579, %1578 ]
  %1576 = phi ptr [ %77, %1570 ], [ %1580, %1578 ]
  %1577 = icmp eq i32 %1575, 0
  br i1 %1577, label %1714, label %1578

1578:                                             ; preds = %1572
  %1579 = add i32 %1575, -1
  %1580 = getelementptr inbounds i8, ptr %1576, i64 1
  %1581 = load i8, ptr %1576, align 1, !tbaa !66
  %1582 = zext i8 %1581 to i64
  %1583 = shl nuw nsw i64 %1582, %1573
  %1584 = add i64 %1583, %1574
  %1585 = add nuw nsw i64 %1573, 8
  %1586 = icmp ult i64 %1573, 24
  br i1 %1586, label %1572, label %1587, !llvm.loop !127

1587:                                             ; preds = %1578
  %1588 = trunc i64 %1585 to i32
  br label %1589

1589:                                             ; preds = %1587, %1568
  %1590 = phi ptr [ %77, %1568 ], [ %1580, %1587 ]
  %1591 = phi i32 [ %79, %1568 ], [ %1579, %1587 ]
  %1592 = phi i64 [ %81, %1568 ], [ %1584, %1587 ]
  %1593 = phi i32 [ %82, %1568 ], [ %1588, %1587 ]
  %1594 = sub i32 %83, %80
  %1595 = zext i32 %1594 to i64
  %1596 = load i64, ptr %35, align 8, !tbaa !128
  %1597 = add i64 %1596, %1595
  store i64 %1597, ptr %35, align 8, !tbaa !128
  %1598 = load i64, ptr %36, align 8, !tbaa !41
  %1599 = add i64 %1598, %1595
  store i64 %1599, ptr %36, align 8, !tbaa !41
  %1600 = icmp eq i32 %83, %80
  %1601 = load i32, ptr %37, align 8, !tbaa !79
  br i1 %1600, label %1602, label %1604

1602:                                             ; preds = %1589
  %1603 = load i64, ptr %38, align 8, !tbaa !78
  br label %1616

1604:                                             ; preds = %1589
  %1605 = icmp eq i32 %1601, 0
  %1606 = load i64, ptr %38, align 8, !tbaa !78
  %1607 = sub nsw i64 0, %1595
  %1608 = getelementptr inbounds i8, ptr %78, i64 %1607
  br i1 %1605, label %1611, label %1609

1609:                                             ; preds = %1604
  %1610 = call i64 @crc32(i64 noundef %1606, ptr noundef %1608, i32 noundef %1594) #13
  br label %1613

1611:                                             ; preds = %1604
  %1612 = call i64 @adler32(i64 noundef %1606, ptr noundef %1608, i32 noundef %1594) #13
  br label %1613

1613:                                             ; preds = %1611, %1609
  %1614 = phi i64 [ %1610, %1609 ], [ %1612, %1611 ]
  store i64 %1614, ptr %38, align 8, !tbaa !78
  store i64 %1614, ptr %39, align 8, !tbaa !45
  %1615 = load i32, ptr %37, align 8, !tbaa !79
  br label %1616

1616:                                             ; preds = %1602, %1613
  %1617 = phi i64 [ %1614, %1613 ], [ %1603, %1602 ]
  %1618 = phi i32 [ %1615, %1613 ], [ %1601, %1602 ]
  %1619 = icmp eq i32 %1618, 0
  %1620 = trunc i64 %1592 to i32
  %1621 = call i32 @llvm.bswap.i32(i32 %1620)
  %1622 = zext i32 %1621 to i64
  %1623 = select i1 %1619, i64 %1622, i64 %1592
  %1624 = icmp eq i64 %1623, %1617
  br i1 %1624, label %1626, label %1625

1625:                                             ; preds = %1616
  store ptr @.str.17, ptr %40, align 8, !tbaa !67
  store i32 29, ptr %7, align 8, !tbaa !46
  br label %1678

1626:                                             ; preds = %1616, %1565
  %1627 = phi ptr [ %77, %1565 ], [ %1590, %1616 ]
  %1628 = phi i32 [ %79, %1565 ], [ %1591, %1616 ]
  %1629 = phi i64 [ %81, %1565 ], [ 0, %1616 ]
  %1630 = phi i32 [ %82, %1565 ], [ 0, %1616 ]
  %1631 = phi i32 [ %83, %1565 ], [ %80, %1616 ]
  store i32 27, ptr %7, align 8, !tbaa !46
  br label %1632

1632:                                             ; preds = %75, %1626
  %1633 = phi ptr [ %77, %75 ], [ %1627, %1626 ]
  %1634 = phi i32 [ %79, %75 ], [ %1628, %1626 ]
  %1635 = phi i64 [ %81, %75 ], [ %1629, %1626 ]
  %1636 = phi i32 [ %82, %75 ], [ %1630, %1626 ]
  %1637 = phi i32 [ %83, %75 ], [ %1631, %1626 ]
  %1638 = load i32, ptr %34, align 8, !tbaa !44
  %1639 = icmp eq i32 %1638, 0
  br i1 %1639, label %1673, label %1640

1640:                                             ; preds = %1632
  %1641 = load i32, ptr %37, align 8, !tbaa !79
  %1642 = icmp eq i32 %1641, 0
  br i1 %1642, label %1673, label %1643

1643:                                             ; preds = %1640
  %1644 = icmp ult i32 %1636, 32
  br i1 %1644, label %1645, label %1664

1645:                                             ; preds = %1643
  %1646 = zext nneg i32 %1636 to i64
  br label %1647

1647:                                             ; preds = %1645, %1653
  %1648 = phi i64 [ %1646, %1645 ], [ %1660, %1653 ]
  %1649 = phi i64 [ %1635, %1645 ], [ %1659, %1653 ]
  %1650 = phi i32 [ %1634, %1645 ], [ %1654, %1653 ]
  %1651 = phi ptr [ %1633, %1645 ], [ %1655, %1653 ]
  %1652 = icmp eq i32 %1650, 0
  br i1 %1652, label %1712, label %1653

1653:                                             ; preds = %1647
  %1654 = add i32 %1650, -1
  %1655 = getelementptr inbounds i8, ptr %1651, i64 1
  %1656 = load i8, ptr %1651, align 1, !tbaa !66
  %1657 = zext i8 %1656 to i64
  %1658 = shl nuw nsw i64 %1657, %1648
  %1659 = add i64 %1658, %1649
  %1660 = add nuw nsw i64 %1648, 8
  %1661 = icmp ult i64 %1648, 24
  br i1 %1661, label %1647, label %1662, !llvm.loop !129

1662:                                             ; preds = %1653
  %1663 = trunc i64 %1660 to i32
  br label %1664

1664:                                             ; preds = %1662, %1643
  %1665 = phi ptr [ %1633, %1643 ], [ %1655, %1662 ]
  %1666 = phi i32 [ %1634, %1643 ], [ %1654, %1662 ]
  %1667 = phi i64 [ %1635, %1643 ], [ %1659, %1662 ]
  %1668 = phi i32 [ %1636, %1643 ], [ %1663, %1662 ]
  %1669 = load i64, ptr %36, align 8, !tbaa !41
  %1670 = and i64 %1669, 4294967295
  %1671 = icmp eq i64 %1667, %1670
  br i1 %1671, label %1673, label %1672

1672:                                             ; preds = %1664
  store ptr @.str.18, ptr %40, align 8, !tbaa !67
  store i32 29, ptr %7, align 8, !tbaa !46
  br label %1678

1673:                                             ; preds = %1664, %1640, %1632
  %1674 = phi ptr [ %1633, %1640 ], [ %1633, %1632 ], [ %1665, %1664 ]
  %1675 = phi i32 [ %1634, %1640 ], [ %1634, %1632 ], [ %1666, %1664 ]
  %1676 = phi i64 [ %1635, %1640 ], [ %1635, %1632 ], [ 0, %1664 ]
  %1677 = phi i32 [ %1636, %1640 ], [ %1636, %1632 ], [ 0, %1664 ]
  store i32 28, ptr %7, align 8, !tbaa !46
  br label %1752

1678:                                             ; preds = %973, %1053, %1553, %1557, %1107, %1116, %1672, %1625, %1560, %1515, %1446, %1255, %1251, %1247, %1090, %1081, %1077, %853, %782, %745, %737, %717, %679, %647, %597, %584, %207, %203, %172, %171, %159, %155, %137, %110
  %1679 = phi ptr [ %1665, %1672 ], [ %1590, %1625 ], [ %77, %1560 ], [ %1498, %1515 ], [ %1498, %1557 ], [ %1498, %1553 ], [ %1431, %1446 ], [ %1110, %1116 ], [ %1110, %1107 ], [ %1232, %1247 ], [ %1232, %1251 ], [ %1232, %1255 ], [ %1071, %1077 ], [ %1071, %1081 ], [ %1071, %1090 ], [ %798, %853 ], [ %764, %782 ], [ %740, %737 ], [ %727, %745 ], [ %709, %717 ], [ %637, %647 ], [ %662, %679 ], [ %577, %584 ], [ %586, %597 ], [ %196, %203 ], [ %196, %207 ], [ %77, %110 ], [ %129, %137 ], [ %129, %155 ], [ %129, %159 ], [ %129, %172 ], [ %129, %171 ], [ %1045, %1053 ], [ %965, %973 ]
  %1680 = phi ptr [ %78, %1672 ], [ %78, %1625 ], [ %1563, %1560 ], [ %78, %1515 ], [ %1550, %1557 ], [ %1550, %1553 ], [ %78, %1446 ], [ %1108, %1116 ], [ %1108, %1107 ], [ %78, %1247 ], [ %78, %1251 ], [ %78, %1255 ], [ %78, %1077 ], [ %78, %1081 ], [ %78, %1090 ], [ %78, %853 ], [ %78, %782 ], [ %742, %737 ], [ %78, %745 ], [ %78, %717 ], [ %78, %647 ], [ %78, %679 ], [ %78, %584 ], [ %78, %597 ], [ %78, %203 ], [ %78, %207 ], [ %78, %110 ], [ %78, %137 ], [ %78, %155 ], [ %78, %159 ], [ %78, %172 ], [ %78, %171 ], [ %78, %1053 ], [ %78, %973 ]
  %1681 = phi i32 [ %1666, %1672 ], [ %1591, %1625 ], [ %79, %1560 ], [ %1499, %1515 ], [ %1499, %1557 ], [ %1499, %1553 ], [ %1432, %1446 ], [ %1111, %1116 ], [ %1111, %1107 ], [ %1233, %1247 ], [ %1233, %1251 ], [ %1233, %1255 ], [ %1072, %1077 ], [ %1072, %1081 ], [ %1072, %1090 ], [ %799, %853 ], [ %765, %782 ], [ %739, %737 ], [ %728, %745 ], [ %710, %717 ], [ %638, %647 ], [ %663, %679 ], [ %578, %584 ], [ %587, %597 ], [ %197, %203 ], [ %197, %207 ], [ %79, %110 ], [ %130, %137 ], [ %130, %155 ], [ %130, %159 ], [ %130, %172 ], [ %130, %171 ], [ %1046, %1053 ], [ %966, %973 ]
  %1682 = phi i32 [ %80, %1672 ], [ %80, %1625 ], [ %1564, %1560 ], [ %80, %1515 ], [ %1554, %1557 ], [ %1554, %1553 ], [ %80, %1446 ], [ %1109, %1116 ], [ %1109, %1107 ], [ %80, %1247 ], [ %80, %1251 ], [ %80, %1255 ], [ %80, %1077 ], [ %80, %1081 ], [ %80, %1090 ], [ %80, %853 ], [ %80, %782 ], [ %741, %737 ], [ %80, %745 ], [ %80, %717 ], [ %80, %647 ], [ %80, %679 ], [ %80, %584 ], [ %80, %597 ], [ %80, %203 ], [ %80, %207 ], [ %80, %110 ], [ %80, %137 ], [ %80, %155 ], [ %80, %159 ], [ %80, %172 ], [ %80, %171 ], [ %80, %1053 ], [ %80, %973 ]
  %1683 = phi i64 [ %1667, %1672 ], [ %1592, %1625 ], [ %81, %1560 ], [ %1500, %1515 ], [ %1500, %1557 ], [ %1500, %1553 ], [ %1440, %1446 ], [ %1112, %1116 ], [ %1112, %1107 ], [ %1241, %1247 ], [ %1241, %1251 ], [ %1241, %1255 ], [ %1073, %1077 ], [ %1073, %1081 ], [ %1073, %1090 ], [ %800, %853 ], [ %777, %782 ], [ %729, %737 ], [ %729, %745 ], [ %711, %717 ], [ %650, %647 ], [ %680, %679 ], [ %579, %584 ], [ %588, %597 ], [ %198, %203 ], [ %198, %207 ], [ %81, %110 ], [ 0, %137 ], [ %131, %155 ], [ %131, %159 ], [ 0, %172 ], [ %161, %171 ], [ %1047, %1053 ], [ %970, %973 ]
  %1684 = phi i32 [ %1668, %1672 ], [ %1593, %1625 ], [ %82, %1560 ], [ %1501, %1515 ], [ %1501, %1557 ], [ %1501, %1553 ], [ %1441, %1446 ], [ %1113, %1116 ], [ %1113, %1107 ], [ %1242, %1247 ], [ %1242, %1251 ], [ %1242, %1255 ], [ %1074, %1077 ], [ %1074, %1081 ], [ %1074, %1090 ], [ %801, %853 ], [ %778, %782 ], [ %730, %737 ], [ %730, %745 ], [ %712, %717 ], [ %651, %647 ], [ %681, %679 ], [ %580, %584 ], [ %589, %597 ], [ %199, %203 ], [ %199, %207 ], [ %82, %110 ], [ 0, %137 ], [ %132, %155 ], [ %132, %159 ], [ 0, %172 ], [ %162, %171 ], [ %1048, %1053 ], [ %971, %973 ]
  %1685 = phi i32 [ %1637, %1672 ], [ %80, %1625 ], [ %83, %1560 ], [ %83, %1515 ], [ %83, %1557 ], [ %83, %1553 ], [ %83, %1446 ], [ %83, %1116 ], [ %83, %1107 ], [ %83, %1247 ], [ %83, %1251 ], [ %83, %1255 ], [ %83, %1077 ], [ %83, %1081 ], [ %83, %1090 ], [ %83, %853 ], [ %83, %782 ], [ %83, %737 ], [ %83, %745 ], [ %83, %717 ], [ %83, %647 ], [ %83, %679 ], [ %83, %584 ], [ %83, %597 ], [ %83, %203 ], [ %83, %207 ], [ %83, %110 ], [ %83, %137 ], [ %83, %155 ], [ %83, %159 ], [ %83, %172 ], [ %83, %171 ], [ %83, %1053 ], [ %83, %973 ]
  %1686 = phi i32 [ %84, %1672 ], [ %84, %1625 ], [ %84, %1560 ], [ %1502, %1515 ], [ %1502, %1557 ], [ %1502, %1553 ], [ %1313, %1446 ], [ %1103, %1116 ], [ %1103, %1107 ], [ %1103, %1247 ], [ %1103, %1251 ], [ %1103, %1255 ], [ %861, %1077 ], [ %1079, %1081 ], [ %1088, %1090 ], [ %851, %853 ], [ %84, %782 ], [ %84, %737 ], [ %84, %745 ], [ %84, %717 ], [ %84, %647 ], [ %84, %679 ], [ %84, %584 ], [ %84, %597 ], [ %84, %203 ], [ %84, %207 ], [ %84, %110 ], [ %84, %137 ], [ %84, %155 ], [ %84, %159 ], [ %84, %172 ], [ %84, %171 ], [ %861, %1053 ], [ %861, %973 ]
  %1687 = load i32, ptr %7, align 8, !tbaa !46
  br label %75

1688:                                             ; preds = %1014
  %1689 = trunc i64 %1015 to i32
  br label %1752

1690:                                             ; preds = %947
  %1691 = trunc i64 %948 to i32
  br label %1752

1692:                                             ; preds = %984
  %1693 = trunc i64 %985 to i32
  br label %1752

1694:                                             ; preds = %111
  %1695 = trunc i64 %112 to i32
  br label %1752

1696:                                             ; preds = %559
  %1697 = trunc i64 %560 to i32
  br label %1752

1698:                                             ; preds = %333
  %1699 = trunc i64 %334 to i32
  br label %1752

1700:                                             ; preds = %278
  %1701 = trunc i64 %279 to i32
  br label %1752

1702:                                             ; preds = %232
  %1703 = trunc i64 %233 to i32
  br label %1752

1704:                                             ; preds = %178
  %1705 = trunc i64 %179 to i32
  br label %1752

1706:                                             ; preds = %599
  %1707 = trunc i64 %600 to i32
  br label %1752

1708:                                             ; preds = %691
  %1709 = trunc i64 %692 to i32
  br label %1752

1710:                                             ; preds = %746
  %1711 = trunc i64 %747 to i32
  br label %1752

1712:                                             ; preds = %1647
  %1713 = trunc i64 %1648 to i32
  br label %1752

1714:                                             ; preds = %1572
  %1715 = trunc i64 %1573 to i32
  br label %1752

1716:                                             ; preds = %886
  %1717 = zext i32 %874 to i64
  %1718 = shl i32 %874, 3
  %1719 = add i32 %1718, %872
  %1720 = getelementptr i8, ptr %875, i64 %1717
  br label %1752

1721:                                             ; preds = %1460
  %1722 = shl i32 %1453, 3
  %1723 = add i32 %1455, %1722
  %1724 = zext i32 %1453 to i64
  %1725 = getelementptr i8, ptr %1452, i64 %1724
  br label %1752

1726:                                             ; preds = %1386
  %1727 = zext i32 %1356 to i64
  %1728 = shl i32 %1356, 3
  %1729 = add i32 %1728, %1358
  %1730 = getelementptr i8, ptr %1355, i64 %1727
  br label %1752

1731:                                             ; preds = %1328
  %1732 = zext i32 %1310 to i64
  %1733 = shl i32 %1310, 3
  %1734 = add i32 %1733, %1312
  %1735 = getelementptr i8, ptr %1309, i64 %1732
  br label %1752

1736:                                             ; preds = %1270
  %1737 = shl i32 %1261, 3
  %1738 = add i32 %1263, %1737
  %1739 = zext i32 %1261 to i64
  %1740 = getelementptr i8, ptr %1260, i64 %1739
  br label %1752

1741:                                             ; preds = %1189
  %1742 = zext i32 %1160 to i64
  %1743 = shl i32 %1160, 3
  %1744 = add i32 %1743, %1162
  %1745 = getelementptr i8, ptr %1159, i64 %1742
  br label %1752

1746:                                             ; preds = %1132
  %1747 = zext i32 %1100 to i64
  %1748 = shl i32 %1100, 3
  %1749 = add i32 %1748, %1102
  %1750 = getelementptr i8, ptr %1099, i64 %1747
  br label %1752

1751:                                             ; preds = %75
  br label %1752

1752:                                             ; preds = %427, %443, %479, %499, %535, %631, %718, %733, %1091, %1497, %1558, %645, %813, %75, %1751, %1746, %1741, %1736, %1731, %1726, %1721, %1716, %1714, %1712, %1710, %1708, %1706, %1704, %1702, %1700, %1698, %1696, %1694, %1692, %1690, %1688, %1673, %671
  %1753 = phi i32 [ %80, %671 ], [ %80, %1673 ], [ %80, %1688 ], [ %80, %1690 ], [ %80, %1692 ], [ %80, %1694 ], [ %80, %1696 ], [ %80, %1698 ], [ %80, %1700 ], [ %80, %1702 ], [ %80, %1704 ], [ %80, %1706 ], [ %80, %1708 ], [ %80, %1710 ], [ %80, %1712 ], [ %80, %1714 ], [ %80, %1716 ], [ %80, %1721 ], [ %80, %1726 ], [ %80, %1731 ], [ %80, %1736 ], [ %80, %1741 ], [ %80, %1746 ], [ %80, %75 ], [ %80, %813 ], [ %80, %427 ], [ %80, %443 ], [ %80, %479 ], [ %80, %499 ], [ %80, %535 ], [ %80, %631 ], [ %80, %718 ], [ %80, %733 ], [ %80, %1091 ], [ 0, %1497 ], [ 0, %1558 ], [ %80, %645 ], [ %80, %1751 ]
  %1754 = phi ptr [ %662, %671 ], [ %1674, %1673 ], [ %1018, %1688 ], [ %951, %1690 ], [ %988, %1692 ], [ %115, %1694 ], [ %563, %1696 ], [ %337, %1698 ], [ %282, %1700 ], [ %236, %1702 ], [ %182, %1704 ], [ %603, %1706 ], [ %695, %1708 ], [ %750, %1710 ], [ %1651, %1712 ], [ %1576, %1714 ], [ %1720, %1716 ], [ %1725, %1721 ], [ %1730, %1726 ], [ %1735, %1731 ], [ %1740, %1736 ], [ %1745, %1741 ], [ %1750, %1746 ], [ %77, %75 ], [ %811, %813 ], [ %429, %427 ], [ %436, %443 ], [ %482, %479 ], [ %492, %499 ], [ %538, %535 ], [ %632, %631 ], [ %709, %718 ], [ %727, %733 ], [ %1071, %1091 ], [ %1498, %1497 ], [ %77, %1558 ], [ %637, %645 ], [ %77, %1751 ]
  %1755 = phi i32 [ %663, %671 ], [ %1675, %1673 ], [ 0, %1688 ], [ 0, %1690 ], [ 0, %1692 ], [ 0, %1694 ], [ 0, %1696 ], [ 0, %1698 ], [ 0, %1700 ], [ 0, %1702 ], [ 0, %1704 ], [ 0, %1706 ], [ 0, %1708 ], [ 0, %1710 ], [ 0, %1712 ], [ 0, %1714 ], [ 0, %1716 ], [ 0, %1721 ], [ 0, %1726 ], [ 0, %1731 ], [ 0, %1736 ], [ 0, %1741 ], [ 0, %1746 ], [ %79, %75 ], [ 0, %813 ], [ %430, %427 ], [ 0, %443 ], [ %480, %479 ], [ 0, %499 ], [ %536, %535 ], [ %633, %631 ], [ %710, %718 ], [ %728, %733 ], [ %1072, %1091 ], [ %1499, %1497 ], [ %79, %1558 ], [ 0, %645 ], [ %79, %1751 ]
  %1756 = phi i64 [ %672, %671 ], [ %1676, %1673 ], [ %1016, %1688 ], [ %949, %1690 ], [ %986, %1692 ], [ %113, %1694 ], [ %561, %1696 ], [ %335, %1698 ], [ %280, %1700 ], [ %234, %1702 ], [ %180, %1704 ], [ %601, %1706 ], [ %693, %1708 ], [ %748, %1710 ], [ %1649, %1712 ], [ %1574, %1714 ], [ %888, %1716 ], [ %1462, %1721 ], [ %1388, %1726 ], [ %1330, %1731 ], [ %1272, %1736 ], [ %1191, %1741 ], [ %1134, %1746 ], [ %81, %75 ], [ %809, %813 ], [ %384, %427 ], [ %438, %443 ], [ %438, %479 ], [ %494, %499 ], [ %494, %535 ], [ %634, %631 ], [ 0, %718 ], [ %729, %733 ], [ %1073, %1091 ], [ %1500, %1497 ], [ %81, %1558 ], [ %639, %645 ], [ %81, %1751 ]
  %1757 = phi i32 [ %673, %671 ], [ %1677, %1673 ], [ %1689, %1688 ], [ %1691, %1690 ], [ %1693, %1692 ], [ %1695, %1694 ], [ %1697, %1696 ], [ %1699, %1698 ], [ %1701, %1700 ], [ %1703, %1702 ], [ %1705, %1704 ], [ %1707, %1706 ], [ %1709, %1708 ], [ %1711, %1710 ], [ %1713, %1712 ], [ %1715, %1714 ], [ %1719, %1716 ], [ %1723, %1721 ], [ %1729, %1726 ], [ %1734, %1731 ], [ %1738, %1736 ], [ %1744, %1741 ], [ %1749, %1746 ], [ %82, %75 ], [ %808, %813 ], [ %385, %427 ], [ %439, %443 ], [ %439, %479 ], [ %495, %499 ], [ %495, %535 ], [ %635, %631 ], [ 0, %718 ], [ %730, %733 ], [ %1074, %1091 ], [ %1501, %1497 ], [ %82, %1558 ], [ %640, %645 ], [ %82, %1751 ]
  %1758 = phi i32 [ %83, %671 ], [ %1637, %1673 ], [ %83, %1688 ], [ %83, %1690 ], [ %83, %1692 ], [ %83, %1694 ], [ %83, %1696 ], [ %83, %1698 ], [ %83, %1700 ], [ %83, %1702 ], [ %83, %1704 ], [ %83, %1706 ], [ %83, %1708 ], [ %83, %1710 ], [ %1637, %1712 ], [ %83, %1714 ], [ %83, %1716 ], [ %83, %1721 ], [ %83, %1726 ], [ %83, %1731 ], [ %83, %1736 ], [ %83, %1741 ], [ %83, %1746 ], [ %83, %75 ], [ %83, %813 ], [ %83, %645 ], [ %83, %1558 ], [ %83, %1497 ], [ %83, %1091 ], [ %83, %733 ], [ %83, %718 ], [ %83, %631 ], [ %83, %535 ], [ %83, %499 ], [ %83, %479 ], [ %83, %443 ], [ %83, %427 ], [ %83, %1751 ]
  %1759 = phi i32 [ %84, %671 ], [ 1, %1673 ], [ %861, %1688 ], [ %861, %1690 ], [ %861, %1692 ], [ %84, %1694 ], [ %84, %1696 ], [ %84, %1698 ], [ %84, %1700 ], [ %84, %1702 ], [ %84, %1704 ], [ %84, %1706 ], [ %84, %1708 ], [ %84, %1710 ], [ %84, %1712 ], [ %84, %1714 ], [ %861, %1716 ], [ %1456, %1721 ], [ %1313, %1726 ], [ %1313, %1731 ], [ %1264, %1736 ], [ %1103, %1741 ], [ %1103, %1746 ], [ -3, %75 ], [ %84, %813 ], [ %84, %427 ], [ %84, %443 ], [ %84, %479 ], [ %84, %499 ], [ %84, %535 ], [ %84, %631 ], [ %84, %718 ], [ %84, %733 ], [ 0, %1091 ], [ %1502, %1497 ], [ %84, %1558 ], [ %84, %645 ], [ 1, %1751 ]
  store ptr %78, ptr %10, align 8, !tbaa !70
  store i32 %1753, ptr %26, align 8, !tbaa !73
  store ptr %1754, ptr %0, align 8, !tbaa !71
  store i32 %1755, ptr %28, align 8, !tbaa !72
  store i64 %1756, ptr %30, align 8, !tbaa !51
  store i32 %1757, ptr %32, align 8, !tbaa !52
  %1760 = load i32, ptr %64, align 4, !tbaa !58
  %1761 = icmp eq i32 %1760, 0
  br i1 %1761, label %1762, label %1771

1762:                                             ; preds = %1752
  %1763 = icmp eq i32 %1758, %1753
  br i1 %1763, label %1778, label %1764

1764:                                             ; preds = %1762
  %1765 = load i32, ptr %7, align 8, !tbaa !46
  %1766 = icmp ult i32 %1765, 29
  br i1 %1766, label %1767, label %1778

1767:                                             ; preds = %1764
  %1768 = icmp ult i32 %1765, 26
  %1769 = icmp ne i32 %1, 4
  %1770 = or i1 %1769, %1768
  br i1 %1770, label %1771, label %1778

1771:                                             ; preds = %1767, %1752
  %1772 = call fastcc i32 @updatewindow(ptr noundef nonnull %0, i32 noundef %1758) #12, !range !130
  %1773 = icmp eq i32 %1772, 0
  br i1 %1773, label %1774, label %1777

1774:                                             ; preds = %1771
  %1775 = load i32, ptr %28, align 8, !tbaa !72
  %1776 = load i32, ptr %26, align 8, !tbaa !73
  br label %1778

1777:                                             ; preds = %1771
  store i32 30, ptr %7, align 8, !tbaa !46
  br label %1834

1778:                                             ; preds = %1774, %1767, %1764, %1762
  %1779 = phi i32 [ %1776, %1774 ], [ %1753, %1767 ], [ %1753, %1764 ], [ %1753, %1762 ]
  %1780 = phi i32 [ %1775, %1774 ], [ %1755, %1767 ], [ %1755, %1764 ], [ %1755, %1762 ]
  %1781 = sub i32 %29, %1780
  %1782 = sub i32 %1758, %1779
  %1783 = zext i32 %1781 to i64
  %1784 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 2
  %1785 = load i64, ptr %1784, align 8, !tbaa !43
  %1786 = add i64 %1785, %1783
  store i64 %1786, ptr %1784, align 8, !tbaa !43
  %1787 = zext i32 %1782 to i64
  %1788 = load i64, ptr %35, align 8, !tbaa !128
  %1789 = add i64 %1788, %1787
  store i64 %1789, ptr %35, align 8, !tbaa !128
  %1790 = load i64, ptr %36, align 8, !tbaa !41
  %1791 = add i64 %1790, %1787
  store i64 %1791, ptr %36, align 8, !tbaa !41
  %1792 = load i32, ptr %34, align 8, !tbaa !44
  %1793 = icmp ne i32 %1792, 0
  %1794 = icmp ne i32 %1758, %1779
  %1795 = select i1 %1793, i1 %1794, i1 false
  br i1 %1795, label %1796, label %1809

1796:                                             ; preds = %1778
  %1797 = load i32, ptr %37, align 8, !tbaa !79
  %1798 = icmp eq i32 %1797, 0
  %1799 = load i64, ptr %38, align 8, !tbaa !78
  %1800 = load ptr, ptr %10, align 8, !tbaa !70
  %1801 = sub nsw i64 0, %1787
  %1802 = getelementptr inbounds i8, ptr %1800, i64 %1801
  br i1 %1798, label %1805, label %1803

1803:                                             ; preds = %1796
  %1804 = call i64 @crc32(i64 noundef %1799, ptr noundef %1802, i32 noundef %1782) #13
  br label %1807

1805:                                             ; preds = %1796
  %1806 = call i64 @adler32(i64 noundef %1799, ptr noundef %1802, i32 noundef %1782) #13
  br label %1807

1807:                                             ; preds = %1805, %1803
  %1808 = phi i64 [ %1804, %1803 ], [ %1806, %1805 ]
  store i64 %1808, ptr %38, align 8, !tbaa !78
  store i64 %1808, ptr %39, align 8, !tbaa !45
  br label %1809

1809:                                             ; preds = %1807, %1778
  %1810 = load i32, ptr %32, align 8, !tbaa !52
  %1811 = load i32, ptr %68, align 4, !tbaa !47
  %1812 = icmp eq i32 %1811, 0
  %1813 = select i1 %1812, i32 0, i32 64
  %1814 = add i32 %1813, %1810
  %1815 = load i32, ptr %7, align 8, !tbaa !46
  %1816 = icmp eq i32 %1815, 11
  %1817 = select i1 %1816, i32 128, i32 0
  %1818 = add i32 %1814, %1817
  %1819 = icmp eq i32 %1815, 19
  %1820 = icmp eq i32 %1815, 14
  %1821 = or i1 %1819, %1820
  %1822 = select i1 %1821, i32 256, i32 0
  %1823 = add i32 %1818, %1822
  %1824 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 11
  store i32 %1823, ptr %1824, align 8, !tbaa !131
  %1825 = icmp eq i32 %29, %1780
  %1826 = icmp eq i32 %1758, %1779
  %1827 = select i1 %1825, i1 %1826, i1 false
  %1828 = icmp eq i32 %1, 4
  %1829 = or i1 %1828, %1827
  %1830 = icmp eq i32 %1759, 0
  %1831 = select i1 %1829, i1 %1830, i1 false
  %1832 = select i1 %1831, i32 -5, i32 %1759
  br label %1834

1833:                                             ; preds = %75
  br label %1834

1834:                                             ; preds = %75, %1833, %2, %5, %9, %16, %1809, %1777, %628
  %1835 = phi i32 [ -4, %1777 ], [ %1832, %1809 ], [ 2, %628 ], [ -2, %16 ], [ -2, %9 ], [ -2, %5 ], [ -2, %2 ], [ -4, %1833 ], [ -2, %75 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  ret i32 %1835
}

; Function Attrs: optsize
declare i64 @crc32(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i64 @adler32(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @fixedtables(ptr nocapture noundef writeonly %0) unnamed_addr #5 !PGOFuncName !132 {
  %2 = getelementptr inbounds %struct.inflate_state, ptr %0, i64 0, i32 19
  store ptr @fixedtables.lenfix, ptr %2, align 8, !tbaa !55
  %3 = getelementptr inbounds %struct.inflate_state, ptr %0, i64 0, i32 21
  store i32 9, ptr %3, align 8, !tbaa !112
  %4 = getelementptr inbounds %struct.inflate_state, ptr %0, i64 0, i32 20
  store ptr @fixedtables.distfix, ptr %4, align 8, !tbaa !54
  %5 = getelementptr inbounds %struct.inflate_state, ptr %0, i64 0, i32 22
  store i32 5, ptr %5, align 4, !tbaa !120
  ret void
}

; Function Attrs: optsize
declare hidden i32 @inflate_table(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare hidden void @inflate_fast(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @updatewindow(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #2 !PGOFuncName !133 {
  %3 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.inflate_state, ptr %4, i64 0, i32 13
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %18

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 8
  %10 = load ptr, ptr %9, align 8, !tbaa !68
  %11 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 10
  %12 = load ptr, ptr %11, align 8, !tbaa !65
  %13 = getelementptr inbounds %struct.inflate_state, ptr %4, i64 0, i32 9
  %14 = load i32, ptr %13, align 8, !tbaa !63
  %15 = shl nuw i32 1, %14
  %16 = tail call ptr %10(ptr noundef %12, i32 noundef %15, i32 noundef 1) #13
  store ptr %16, ptr %5, align 8, !tbaa !62
  %17 = icmp eq ptr %16, null
  br i1 %17, label %78, label %18

18:                                               ; preds = %8, %2
  %19 = phi ptr [ %16, %8 ], [ %6, %2 ]
  %20 = getelementptr inbounds %struct.inflate_state, ptr %4, i64 0, i32 10
  %21 = load i32, ptr %20, align 4, !tbaa !58
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.inflate_state, ptr %4, i64 0, i32 9
  %25 = load i32, ptr %24, align 8, !tbaa !63
  %26 = shl nuw i32 1, %25
  store i32 %26, ptr %20, align 4, !tbaa !58
  %27 = getelementptr inbounds %struct.inflate_state, ptr %4, i64 0, i32 12
  store i32 0, ptr %27, align 4, !tbaa !60
  %28 = getelementptr inbounds %struct.inflate_state, ptr %4, i64 0, i32 11
  store i32 0, ptr %28, align 8, !tbaa !59
  br label %29

29:                                               ; preds = %23, %18
  %30 = phi i32 [ %26, %23 ], [ %21, %18 ]
  %31 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 4
  %32 = load i32, ptr %31, align 8, !tbaa !73
  %33 = sub i32 %1, %32
  %34 = icmp ult i32 %33, %30
  br i1 %34, label %44, label %35

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !70
  %38 = zext i32 %30 to i64
  %39 = sub nsw i64 0, %38
  %40 = getelementptr inbounds i8, ptr %37, i64 %39
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %19, ptr noundef nonnull align 1 dereferenceable(1) %40, i64 %38, i1 false)
  %41 = getelementptr inbounds %struct.inflate_state, ptr %4, i64 0, i32 12
  store i32 0, ptr %41, align 4, !tbaa !60
  %42 = load i32, ptr %20, align 4, !tbaa !58
  %43 = getelementptr inbounds %struct.inflate_state, ptr %4, i64 0, i32 11
  store i32 %42, ptr %43, align 8, !tbaa !59
  br label %78

44:                                               ; preds = %29
  %45 = getelementptr inbounds %struct.inflate_state, ptr %4, i64 0, i32 12
  %46 = load i32, ptr %45, align 4, !tbaa !60
  %47 = sub i32 %30, %46
  %48 = tail call i32 @llvm.umin.i32(i32 %47, i32 %33)
  %49 = zext i32 %46 to i64
  %50 = getelementptr inbounds i8, ptr %19, i64 %49
  %51 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !70
  %53 = zext i32 %33 to i64
  %54 = sub nsw i64 0, %53
  %55 = getelementptr inbounds i8, ptr %52, i64 %54
  %56 = zext i32 %48 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %50, ptr align 1 %55, i64 %56, i1 false)
  %57 = icmp ugt i32 %33, %47
  br i1 %57, label %58, label %67

58:                                               ; preds = %44
  %59 = sub i32 %33, %48
  %60 = load ptr, ptr %5, align 8, !tbaa !62
  %61 = load ptr, ptr %51, align 8, !tbaa !70
  %62 = zext i32 %59 to i64
  %63 = sub nsw i64 0, %62
  %64 = getelementptr inbounds i8, ptr %61, i64 %63
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %60, ptr align 1 %64, i64 %62, i1 false)
  store i32 %59, ptr %45, align 4, !tbaa !60
  %65 = load i32, ptr %20, align 4, !tbaa !58
  %66 = getelementptr inbounds %struct.inflate_state, ptr %4, i64 0, i32 11
  store i32 %65, ptr %66, align 8, !tbaa !59
  br label %78

67:                                               ; preds = %44
  %68 = load i32, ptr %45, align 4, !tbaa !60
  %69 = add i32 %68, %48
  %70 = load i32, ptr %20, align 4, !tbaa !58
  %71 = icmp eq i32 %69, %70
  %72 = select i1 %71, i32 0, i32 %69
  store i32 %72, ptr %45, align 4
  %73 = getelementptr inbounds %struct.inflate_state, ptr %4, i64 0, i32 11
  %74 = load i32, ptr %73, align 8, !tbaa !59
  %75 = icmp ult i32 %74, %70
  br i1 %75, label %76, label %78

76:                                               ; preds = %67
  %77 = add i32 %74, %48
  store i32 %77, ptr %73, align 8, !tbaa !59
  br label %78

78:                                               ; preds = %35, %67, %76, %58, %8
  %79 = phi i32 [ 1, %8 ], [ 0, %58 ], [ 0, %76 ], [ 0, %67 ], [ 0, %35 ]
  ret i32 %79
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @inflateEnd(ptr noundef %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %25, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %25, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !64
  %10 = icmp eq ptr %9, null
  br i1 %10, label %25, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.inflate_state, ptr %5, i64 0, i32 13
  %13 = load ptr, ptr %12, align 8, !tbaa !62
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 10
  %17 = load ptr, ptr %16, align 8, !tbaa !65
  tail call void %9(ptr noundef %17, ptr noundef nonnull %13) #13
  %18 = load ptr, ptr %8, align 8, !tbaa !64
  %19 = load ptr, ptr %4, align 8, !tbaa !34
  br label %20

20:                                               ; preds = %15, %11
  %21 = phi ptr [ %19, %15 ], [ %5, %11 ]
  %22 = phi ptr [ %18, %15 ], [ %9, %11 ]
  %23 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 10
  %24 = load ptr, ptr %23, align 8, !tbaa !65
  tail call void %22(ptr noundef %24, ptr noundef %21) #13
  store ptr null, ptr %4, align 8, !tbaa !34
  br label %25

25:                                               ; preds = %1, %3, %7, %20
  %26 = phi i32 [ 0, %20 ], [ -2, %7 ], [ -2, %3 ], [ -2, %1 ]
  ret i32 %26
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @inflateSetDictionary(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %35, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %35, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !44
  %12 = icmp eq i32 %11, 0
  %13 = load i32, ptr %7, align 8, !tbaa !46
  %14 = icmp eq i32 %13, 10
  br i1 %12, label %16, label %15

15:                                               ; preds = %9
  br i1 %14, label %17, label %35

16:                                               ; preds = %9
  br i1 %14, label %17, label %23

17:                                               ; preds = %15, %16
  %18 = tail call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #13
  %19 = tail call i64 @adler32(i64 noundef %18, ptr noundef %1, i32 noundef %2) #13
  %20 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 6
  %21 = load i64, ptr %20, align 8, !tbaa !78
  %22 = icmp eq i64 %19, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %17, %16
  %24 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !70
  %26 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 4
  %27 = load i32, ptr %26, align 8, !tbaa !73
  %28 = zext i32 %2 to i64
  %29 = getelementptr inbounds i8, ptr %1, i64 %28
  store ptr %29, ptr %24, align 8, !tbaa !70
  store i32 0, ptr %26, align 8, !tbaa !73
  %30 = tail call fastcc i32 @updatewindow(ptr noundef nonnull %0, i32 noundef %2) #12, !range !130
  store i32 %27, ptr %26, align 8, !tbaa !73
  store ptr %25, ptr %24, align 8, !tbaa !70
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %23
  store i32 30, ptr %7, align 8, !tbaa !46
  br label %35

33:                                               ; preds = %23
  %34 = getelementptr inbounds %struct.inflate_state, ptr %7, i64 0, i32 3
  store i32 1, ptr %34, align 4, !tbaa !48
  br label %35

35:                                               ; preds = %17, %15, %3, %5, %33, %32
  %36 = phi i32 [ -4, %32 ], [ 0, %33 ], [ -2, %5 ], [ -2, %3 ], [ -2, %15 ], [ -3, %17 ]
  ret i32 %36
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
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
  store i32 0, ptr %15, align 8, !tbaa !80
  br label %16

16:                                               ; preds = %8, %2, %4, %13
  %17 = phi i32 [ 0, %13 ], [ -2, %4 ], [ -2, %2 ], [ -2, %8 ]
  ret i32 %17
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @inflateSync(ptr noundef %0) local_unnamed_addr #6 {
  %2 = alloca [4 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #14
  %3 = icmp eq ptr %0, null
  br i1 %3, label %65, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %65, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !72
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.inflate_state, ptr %6, i64 0, i32 15
  %14 = load i32, ptr %13, align 8, !tbaa !52
  %15 = icmp ult i32 %14, 8
  br i1 %15, label %65, label %16

16:                                               ; preds = %12, %8
  %17 = load i32, ptr %6, align 8, !tbaa !46
  %18 = icmp eq i32 %17, 31
  br i1 %18, label %46, label %19

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
  br i1 %28, label %41, label %29

29:                                               ; preds = %19, %29
  %30 = phi i64 [ %34, %29 ], [ 0, %19 ]
  %31 = phi i64 [ %36, %29 ], [ %26, %19 ]
  %32 = phi i32 [ %37, %29 ], [ %27, %19 ]
  %33 = trunc i64 %31 to i8
  %34 = add nuw nsw i64 %30, 1
  %35 = getelementptr inbounds [4 x i8], ptr %2, i64 0, i64 %30
  store i8 %33, ptr %35, align 1, !tbaa !66
  %36 = lshr i64 %31, 8
  %37 = add i32 %32, -8
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %29, !llvm.loop !134

39:                                               ; preds = %29
  %40 = trunc i64 %34 to i32
  store i64 %36, ptr %23, align 8, !tbaa !51
  br label %41

41:                                               ; preds = %39, %19
  %42 = phi i32 [ %40, %39 ], [ 0, %19 ]
  store i32 0, ptr %20, align 8, !tbaa !52
  %43 = getelementptr inbounds %struct.inflate_state, ptr %6, i64 0, i32 26
  store i32 0, ptr %43, align 4, !tbaa !75
  %44 = call fastcc i32 @syncsearch(ptr noundef nonnull %43, ptr noundef nonnull %2, i32 noundef %42) #12
  %45 = load i32, ptr %9, align 8, !tbaa !72
  br label %46

46:                                               ; preds = %41, %16
  %47 = phi i32 [ %45, %41 ], [ %10, %16 ]
  %48 = getelementptr inbounds %struct.inflate_state, ptr %6, i64 0, i32 26
  %49 = load ptr, ptr %0, align 8, !tbaa !71
  %50 = tail call fastcc i32 @syncsearch(ptr noundef nonnull %48, ptr noundef %49, i32 noundef %47) #12
  %51 = load i32, ptr %9, align 8, !tbaa !72
  %52 = sub i32 %51, %50
  store i32 %52, ptr %9, align 8, !tbaa !72
  %53 = load ptr, ptr %0, align 8, !tbaa !71
  %54 = zext i32 %50 to i64
  %55 = getelementptr inbounds i8, ptr %53, i64 %54
  store ptr %55, ptr %0, align 8, !tbaa !71
  %56 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 2
  %57 = load i64, ptr %56, align 8, !tbaa !43
  %58 = add i64 %57, %54
  store i64 %58, ptr %56, align 8, !tbaa !43
  %59 = load i32, ptr %48, align 4, !tbaa !75
  %60 = icmp eq i32 %59, 4
  br i1 %60, label %61, label %65

61:                                               ; preds = %46
  %62 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 5
  %63 = load i64, ptr %62, align 8, !tbaa !128
  %64 = tail call i32 @inflateReset(ptr noundef nonnull %0) #12, !range !61
  store i64 %58, ptr %56, align 8, !tbaa !43
  store i64 %63, ptr %62, align 8, !tbaa !128
  store i32 11, ptr %6, align 8, !tbaa !46
  br label %65

65:                                               ; preds = %46, %12, %1, %4, %61
  %66 = phi i32 [ 0, %61 ], [ -2, %4 ], [ -2, %1 ], [ -5, %12 ], [ -3, %46 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #14
  ret i32 %66
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc i32 @syncsearch(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #7 !PGOFuncName !135 {
  %4 = load i32, ptr %0, align 4, !tbaa !136
  %5 = icmp ne i32 %2, 0
  %6 = icmp ult i32 %4, 4
  %7 = select i1 %5, i1 %6, i1 false
  br i1 %7, label %8, label %30

8:                                                ; preds = %3
  %9 = zext i32 %2 to i64
  br label %10

10:                                               ; preds = %8, %10
  %11 = phi i64 [ 0, %8 ], [ %24, %10 ]
  %12 = phi i32 [ %4, %8 ], [ %23, %10 ]
  %13 = getelementptr inbounds i8, ptr %1, i64 %11
  %14 = load i8, ptr %13, align 1, !tbaa !66
  %15 = zext i8 %14 to i32
  %16 = icmp ult i32 %12, 2
  %17 = select i1 %16, i32 0, i32 255
  %18 = icmp eq i32 %17, %15
  %19 = add nuw nsw i32 %12, 1
  %20 = icmp eq i8 %14, 0
  %21 = sub nuw nsw i32 4, %12
  %22 = select i1 %20, i32 %21, i32 0
  %23 = select i1 %18, i32 %19, i32 %22
  %24 = add nuw nsw i64 %11, 1
  %25 = icmp ult i64 %24, %9
  %26 = icmp ult i32 %23, 4
  %27 = select i1 %25, i1 %26, i1 false
  br i1 %27, label %10, label %28, !llvm.loop !137

28:                                               ; preds = %10
  %29 = trunc i64 %24 to i32
  br label %30

30:                                               ; preds = %28, %3
  %31 = phi i32 [ %4, %3 ], [ %23, %28 ]
  %32 = phi i32 [ 0, %3 ], [ %29, %28 ]
  store i32 %31, ptr %0, align 4, !tbaa !136
  ret i32 %32
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @inflateSyncPoint(ptr noundef readonly %0) local_unnamed_addr #8 {
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @inflateCopy(ptr noundef writeonly %0, ptr noundef readonly %1) local_unnamed_addr #2 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %81, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.z_stream_s, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %81, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.z_stream_s, ptr %1, i64 0, i32 8
  %12 = load ptr, ptr %11, align 8, !tbaa !68
  %13 = icmp eq ptr %12, null
  br i1 %13, label %81, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.z_stream_s, ptr %1, i64 0, i32 9
  %16 = load ptr, ptr %15, align 8, !tbaa !64
  %17 = icmp eq ptr %16, null
  br i1 %17, label %81, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.z_stream_s, ptr %1, i64 0, i32 10
  %20 = load ptr, ptr %19, align 8, !tbaa !65
  %21 = tail call ptr %12(ptr noundef %20, i32 noundef 1, i32 noundef 7152) #13
  %22 = icmp eq ptr %21, null
  br i1 %22, label %81, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.inflate_state, ptr %8, i64 0, i32 13
  %25 = load ptr, ptr %24, align 8, !tbaa !62
  %26 = icmp eq ptr %25, null
  br i1 %26, label %38, label %27

27:                                               ; preds = %23
  %28 = load ptr, ptr %11, align 8, !tbaa !68
  %29 = load ptr, ptr %19, align 8, !tbaa !65
  %30 = getelementptr inbounds %struct.inflate_state, ptr %8, i64 0, i32 9
  %31 = load i32, ptr %30, align 8, !tbaa !63
  %32 = shl nuw i32 1, %31
  %33 = tail call ptr %28(ptr noundef %29, i32 noundef %32, i32 noundef 1) #13
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %27
  %36 = load ptr, ptr %15, align 8, !tbaa !64
  %37 = load ptr, ptr %19, align 8, !tbaa !65
  tail call void %36(ptr noundef %37, ptr noundef nonnull %21) #13
  br label %81

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
  br i1 %46, label %47, label %49

47:                                               ; preds = %38
  %48 = ptrtoint ptr %42 to i64
  br label %62

49:                                               ; preds = %38
  %50 = getelementptr inbounds %struct.inflate_state, ptr %21, i64 0, i32 30
  %51 = ptrtoint ptr %41 to i64
  %52 = ptrtoint ptr %42 to i64
  %53 = sub i64 %51, %52
  %54 = getelementptr inbounds i8, ptr %50, i64 %53
  %55 = getelementptr inbounds %struct.inflate_state, ptr %21, i64 0, i32 19
  store ptr %54, ptr %55, align 8, !tbaa !55
  %56 = getelementptr inbounds %struct.inflate_state, ptr %8, i64 0, i32 20
  %57 = load ptr, ptr %56, align 8, !tbaa !54
  %58 = ptrtoint ptr %57 to i64
  %59 = sub i64 %58, %52
  %60 = getelementptr inbounds i8, ptr %50, i64 %59
  %61 = getelementptr inbounds %struct.inflate_state, ptr %21, i64 0, i32 20
  store ptr %60, ptr %61, align 8, !tbaa !54
  br label %62

62:                                               ; preds = %47, %49
  %63 = phi i64 [ %48, %47 ], [ %52, %49 ]
  %64 = getelementptr inbounds %struct.inflate_state, ptr %21, i64 0, i32 30
  %65 = getelementptr inbounds %struct.inflate_state, ptr %8, i64 0, i32 27
  %66 = load ptr, ptr %65, align 8, !tbaa !53
  %67 = ptrtoint ptr %66 to i64
  %68 = sub i64 %67, %63
  %69 = getelementptr inbounds i8, ptr %64, i64 %68
  %70 = getelementptr inbounds %struct.inflate_state, ptr %21, i64 0, i32 27
  store ptr %69, ptr %70, align 8, !tbaa !53
  %71 = icmp eq ptr %39, null
  br i1 %71, label %78, label %72

72:                                               ; preds = %62
  %73 = getelementptr inbounds %struct.inflate_state, ptr %8, i64 0, i32 9
  %74 = load i32, ptr %73, align 8, !tbaa !63
  %75 = shl nuw i32 1, %74
  %76 = load ptr, ptr %24, align 8, !tbaa !62
  %77 = zext i32 %75 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %39, ptr noundef nonnull align 1 dereferenceable(1) %76, i64 %77, i1 false)
  br label %78

78:                                               ; preds = %72, %62
  %79 = getelementptr inbounds %struct.inflate_state, ptr %21, i64 0, i32 13
  store ptr %39, ptr %79, align 8, !tbaa !62
  %80 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  store ptr %21, ptr %80, align 8, !tbaa !34
  br label %81

81:                                               ; preds = %18, %2, %6, %10, %14, %78, %35
  %82 = phi i32 [ -4, %35 ], [ 0, %78 ], [ -2, %14 ], [ -2, %10 ], [ -2, %6 ], [ -2, %2 ], [ -4, %18 ]
  ret i32 %82
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @inflateUndermine(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #9 {
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @inflateMark(ptr noundef readonly %0) local_unnamed_addr #8 {
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
  %15 = load i32, ptr %14, align 4, !tbaa !90
  br label %22

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.inflate_state, ptr %5, i64 0, i32 33
  %18 = load i32, ptr %17, align 8, !tbaa !123
  %19 = getelementptr inbounds %struct.inflate_state, ptr %5, i64 0, i32 16
  %20 = load i32, ptr %19, align 4, !tbaa !90
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
declare i32 @llvm.bswap.i32(i32) #10

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #10

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { optsize }
attributes #13 = { nounwind optsize }
attributes #14 = { nounwind }

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
!61 = !{i32 -2, i32 1}
!62 = !{!42, !36, i64 64}
!63 = !{!42, !39, i64 48}
!64 = !{!35, !36, i64 72}
!65 = !{!35, !36, i64 80}
!66 = !{!37, !37, i64 0}
!67 = !{!35, !36, i64 48}
!68 = !{!35, !36, i64 64}
!69 = !{i32 -6, i32 1}
!70 = !{!35, !36, i64 24}
!71 = !{!35, !36, i64 0}
!72 = !{!35, !39, i64 8}
!73 = !{!35, !39, i64 32}
!74 = !{!42, !39, i64 92}
!75 = !{!42, !39, i64 132}
!76 = distinct !{!76, !77}
!77 = !{!"llvm.loop.mustprogress"}
!78 = !{!42, !40, i64 24}
!79 = !{!42, !39, i64 16}
!80 = !{!81, !39, i64 72}
!81 = !{!"gz_header_s", !39, i64 0, !40, i64 8, !39, i64 16, !39, i64 20, !36, i64 24, !39, i64 32, !39, i64 36, !36, i64 40, !39, i64 48, !36, i64 56, !39, i64 64, !39, i64 68, !39, i64 72}
!82 = distinct !{!82, !77}
!83 = !{!81, !39, i64 0}
!84 = distinct !{!84, !77}
!85 = !{!81, !40, i64 8}
!86 = distinct !{!86, !77}
!87 = !{!81, !39, i64 16}
!88 = !{!81, !39, i64 20}
!89 = distinct !{!89, !77}
!90 = !{!42, !39, i64 84}
!91 = !{!81, !39, i64 32}
!92 = !{!81, !36, i64 24}
!93 = !{!81, !39, i64 36}
!94 = !{!81, !36, i64 40}
!95 = !{!81, !39, i64 48}
!96 = distinct !{!96, !77}
!97 = !{!81, !36, i64 56}
!98 = !{!81, !39, i64 64}
!99 = distinct !{!99, !77}
!100 = distinct !{!100, !77}
!101 = !{!81, !39, i64 68}
!102 = distinct !{!102, !77}
!103 = distinct !{!103, !77}
!104 = distinct !{!104, !77}
!105 = !{!42, !39, i64 124}
!106 = !{!42, !39, i64 128}
!107 = !{!42, !39, i64 120}
!108 = !{!109, !109, i64 0}
!109 = !{!"short", !37, i64 0}
!110 = distinct !{!110, !77}
!111 = distinct !{!111, !77}
!112 = !{!42, !39, i64 112}
!113 = !{i64 0, i64 1, !66, i64 1, i64 2, !108}
!114 = !{i64 0, i64 2, !108}
!115 = distinct !{!115, !77}
!116 = distinct !{!116, !77}
!117 = distinct !{!117, !77}
!118 = distinct !{!118, !77}
!119 = distinct !{!119, !77}
!120 = !{!42, !39, i64 116}
!121 = !{i64 0, i64 1, !66, i64 1, i64 1, !66, i64 2, i64 2, !108}
!122 = distinct !{!122, !77}
!123 = !{!42, !39, i64 7144}
!124 = !{!42, !39, i64 88}
!125 = distinct !{!125, !77}
!126 = distinct !{!126, !77}
!127 = distinct !{!127, !77}
!128 = !{!35, !40, i64 40}
!129 = distinct !{!129, !77}
!130 = !{i32 0, i32 2}
!131 = !{!35, !39, i64 88}
!132 = !{!"inflate.c:fixedtables"}
!133 = !{!"inflate.c:updatewindow"}
!134 = distinct !{!134, !77}
!135 = !{!"inflate.c:syncsearch"}
!136 = !{!39, !39, i64 0}
!137 = distinct !{!137, !77}
