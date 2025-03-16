; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.fmtdesc = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [3 x i64] }
%struct.gsm_state = type { [280 x i16], i16, i64, i32, [8 x i16], [2 x [8 x i16]], i16, i16, [9 x i16], i16, i8, i8 }

@.str = private unnamed_addr constant [31 x i8] c"a != MIN_WORD || b != MIN_WORD\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"src/add.c\00", align 1
@__PRETTY_FUNCTION__.gsm_L_mult = private unnamed_addr constant [32 x i8] c"longword gsm_L_mult(word, word)\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"a != 0\00", align 1
@__PRETTY_FUNCTION__.gsm_norm = private unnamed_addr constant [24 x i8] c"word gsm_norm(longword)\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"num >= 0 && denum >= num\00", align 1
@__PRETTY_FUNCTION__.gsm_div = private unnamed_addr constant [25 x i8] c"word gsm_div(word, word)\00", align 1
@bitoff = internal unnamed_addr constant <{ [128 x i8], [128 x i8] }> <{ [128 x i8] c"\08\07\06\06\05\05\05\05\04\04\04\04\04\04\04\04\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01", [128 x i8] zeroinitializer }>, align 16
@Gsm_Coder.e = internal global [50 x i16] zeroinitializer, align 16
@.str.4 = private unnamed_addr constant [16 x i8] c"%s [%d .. %d]: \00", align 1
@.str.1.5 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.2.6 = private unnamed_addr constant [8 x i8] c"%s: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [62 x i8] c"LARc:\09%2.2d  %2.2d  %2.2d  %2.2d  %2.2d  %2.2d  %2.2d  %2.2d\0A\00", align 1
@.str.1.8 = private unnamed_addr constant [45 x i8] c"#1: \09Nc %4.4d    bc %d    Mc %d    xmaxc %d\0A\00", align 1
@.str.2.9 = private unnamed_addr constant [67 x i8] c"\09%.2d %.2d %.2d %.2d %.2d %.2d %.2d %.2d %.2d %.2d %.2d %.2d %.2d\0A\00", align 1
@.str.3.10 = private unnamed_addr constant [45 x i8] c"#2: \09Nc %4.4d    bc %d    Mc %d    xmaxc %d\0A\00", align 1
@.str.4.11 = private unnamed_addr constant [45 x i8] c"#3: \09Nc %4.4d    bc %d    Mc %d    xmaxc %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"#4: \09Nc %4.4d    bc %d    Mc %d    xmaxc %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.1.15 = private unnamed_addr constant [16 x i8] c"src/long_term.c\00", align 1
@__PRETTY_FUNCTION__.Gsm_Long_Term_Predictor = private unnamed_addr constant [97 x i8] c"void Gsm_Long_Term_Predictor(struct gsm_state *, word *, word *, word *, word *, word *, word *)\00", align 1
@.str.2.16 = private unnamed_addr constant [3 x i8] c"dp\00", align 1
@.str.3.17 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.4.18 = private unnamed_addr constant [4 x i8] c"dpp\00", align 1
@.str.5.19 = private unnamed_addr constant [3 x i8] c"Nc\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"bc\00", align 1
@.str.7.22 = private unnamed_addr constant [22 x i8] c"Nr >= 40 && Nr <= 120\00", align 1
@__PRETTY_FUNCTION__.Gsm_Long_Term_Synthesis_Filtering = private unnamed_addr constant [87 x i8] c"void Gsm_Long_Term_Synthesis_Filtering(struct gsm_state *, word, word, word *, word *)\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"brp != MIN_WORD\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"dmax > 0\00", align 1
@__PRETTY_FUNCTION__.Calculation_of_the_LTP_parameters = private unnamed_addr constant [71 x i8] c"void Calculation_of_the_LTP_parameters(word *, word *, word *, word *)\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"scal >= 0\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"scal <= 100 && scal >= -100\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"Nc <= 120 && Nc >= 40\00", align 1
@.str.1.26 = private unnamed_addr constant [10 x i8] c"src/lpc.c\00", align 1
@__PRETTY_FUNCTION__.Autocorrelation = private unnamed_addr constant [41 x i8] c"void Autocorrelation(word *, longword *)\00", align 1
@.str.2.25 = private unnamed_addr constant [14 x i8] c"scalauto <= 4\00", align 1
@__PRETTY_FUNCTION__.Reflection_coefficients = private unnamed_addr constant [49 x i8] c"void Reflection_coefficients(longword *, word *)\00", align 1
@.str.4.27 = private unnamed_addr constant [23 x i8] c"temp >= 0 && temp < 32\00", align 1
@.str.5.28 = private unnamed_addr constant [8 x i8] c"*r >= 0\00", align 1
@.str.6.29 = private unnamed_addr constant [15 x i8] c"*r != MIN_WORD\00", align 1
@.str.7.30 = private unnamed_addr constant [10 x i8] c"temp >= 0\00", align 1
@__PRETTY_FUNCTION__.Transformation_to_Log_Area_Ratios = private unnamed_addr constant [47 x i8] c"void Transformation_to_Log_Area_Ratios(word *)\00", align 1
@.str.33 = private unnamed_addr constant [14 x i8] c"SO >= -0x4000\00", align 1
@.str.1.34 = private unnamed_addr constant [17 x i8] c"src/preprocess.c\00", align 1
@__PRETTY_FUNCTION__.Gsm_Preprocess = private unnamed_addr constant [56 x i8] c"void Gsm_Preprocess(struct gsm_state *, word *, word *)\00", align 1
@.str.2.35 = private unnamed_addr constant [13 x i8] c"SO <= 0x3FFC\00", align 1
@.str.3.36 = private unnamed_addr constant [15 x i8] c"s1 != MIN_WORD\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"exp <= 5\00", align 1
@.str.1.40 = private unnamed_addr constant [10 x i8] c"src/rpe.c\00", align 1
@__PRETTY_FUNCTION__.APCM_quantization = private unnamed_addr constant [63 x i8] c"void APCM_quantization(word *, word *, word *, word *, word *)\00", align 1
@.str.2.41 = private unnamed_addr constant [21 x i8] c"exp <= 6 && exp >= 0\00", align 1
@.str.4.44 = private unnamed_addr constant [28 x i8] c"exp <= 4096 && exp >= -4096\00", align 1
@.str.5.43 = private unnamed_addr constant [23 x i8] c"mant >= 0 && mant <= 7\00", align 1
@.str.6.45 = private unnamed_addr constant [25 x i8] c"temp1 >= 0 && temp1 < 16\00", align 1
@__PRETTY_FUNCTION__.APCM_inverse_quantization = private unnamed_addr constant [59 x i8] c"void APCM_inverse_quantization(word *, word, word, word *)\00", align 1
@.str.7.47 = private unnamed_addr constant [23 x i8] c"*xMc <= 7 && *xMc >= 0\00", align 1
@.str.9.46 = private unnamed_addr constant [19 x i8] c"0 <= Mc && Mc <= 3\00", align 1
@__PRETTY_FUNCTION__.RPE_grid_positioning = private unnamed_addr constant [48 x i8] c"void RPE_grid_positioning(word, word *, word *)\00", align 1
@.str.10.42 = private unnamed_addr constant [22 x i8] c"exp >= -4 && exp <= 6\00", align 1
@__PRETTY_FUNCTION__.APCM_quantization_xmaxc_to_exp_mant = private unnamed_addr constant [63 x i8] c"void APCM_quantization_xmaxc_to_exp_mant(word, word *, word *)\00", align 1
@gsm_A = dso_local local_unnamed_addr global [8 x i16] [i16 20480, i16 20480, i16 20480, i16 20480, i16 13964, i16 15360, i16 8534, i16 9036], align 16
@gsm_B = dso_local local_unnamed_addr global [8 x i16] [i16 0, i16 0, i16 2048, i16 -2560, i16 94, i16 -1792, i16 -341, i16 -1144], align 16
@gsm_MIC = dso_local local_unnamed_addr global [8 x i16] [i16 -32, i16 -32, i16 -16, i16 -16, i16 -8, i16 -8, i16 -4, i16 -4], align 16
@gsm_MAC = dso_local local_unnamed_addr global [8 x i16] [i16 31, i16 31, i16 15, i16 15, i16 7, i16 7, i16 3, i16 3], align 16
@gsm_INVA = dso_local local_unnamed_addr global [8 x i16] [i16 13107, i16 13107, i16 13107, i16 13107, i16 19223, i16 17476, i16 31454, i16 29708], align 16
@gsm_DLB = dso_local local_unnamed_addr global [4 x i16] [i16 6554, i16 16384, i16 26214, i16 32767], align 2
@gsm_QLB = dso_local local_unnamed_addr global [4 x i16] [i16 3277, i16 11469, i16 21299, i16 32767], align 2
@gsm_H = dso_local local_unnamed_addr global [11 x i16] [i16 -134, i16 -374, i16 0, i16 2054, i16 5741, i16 8192, i16 5741, i16 2054, i16 0, i16 -374, i16 -134], align 16
@gsm_NRFAC = dso_local local_unnamed_addr global [8 x i16] [i16 29128, i16 26215, i16 23832, i16 21846, i16 20165, i16 18725, i16 17476, i16 16384], align 16
@gsm_FAC = dso_local local_unnamed_addr global [8 x i16] [i16 18431, i16 20479, i16 22527, i16 24575, i16 26623, i16 28671, i16 30719, i16 32767], align 16
@a2s = internal unnamed_addr constant [256 x i16] [i16 5120, i16 -5376, i16 320, i16 -336, i16 20480, i16 -21504, i16 1280, i16 -1344, i16 2560, i16 -2688, i16 64, i16 -80, i16 10240, i16 -10752, i16 640, i16 -672, i16 7168, i16 -7424, i16 448, i16 -464, i16 28672, i16 -29696, i16 1792, i16 -1856, i16 3584, i16 -3712, i16 192, i16 -208, i16 14336, i16 -14848, i16 896, i16 -928, i16 4096, i16 -4352, i16 256, i16 -272, i16 16384, i16 -17408, i16 1024, i16 -1088, i16 2048, i16 -2176, i16 0, i16 -16, i16 8192, i16 -8704, i16 512, i16 -544, i16 6144, i16 -6400, i16 384, i16 -400, i16 24576, i16 -25600, i16 1536, i16 -1600, i16 3072, i16 -3200, i16 128, i16 -144, i16 12288, i16 -12800, i16 768, i16 -800, i16 5632, i16 -5888, i16 352, i16 -368, i16 22528, i16 -23552, i16 1408, i16 -1472, i16 2816, i16 -2944, i16 96, i16 -112, i16 11264, i16 -11776, i16 704, i16 -736, i16 7680, i16 -7936, i16 480, i16 -496, i16 30720, i16 -31744, i16 1920, i16 -1984, i16 3840, i16 -3968, i16 224, i16 -240, i16 15360, i16 -15872, i16 960, i16 -992, i16 4608, i16 -4864, i16 288, i16 -304, i16 18432, i16 -19456, i16 1152, i16 -1216, i16 2304, i16 -2432, i16 32, i16 -48, i16 9216, i16 -9728, i16 576, i16 -608, i16 6656, i16 -6912, i16 416, i16 -432, i16 26624, i16 -27648, i16 1664, i16 -1728, i16 3328, i16 -3456, i16 160, i16 -176, i16 13312, i16 -13824, i16 832, i16 -864, i16 5376, i16 -5632, i16 336, i16 -352, i16 21504, i16 -22528, i16 1344, i16 -1408, i16 2688, i16 -2816, i16 80, i16 -96, i16 10752, i16 -11264, i16 672, i16 -704, i16 7424, i16 -7680, i16 464, i16 -480, i16 29696, i16 -30720, i16 1856, i16 -1920, i16 3712, i16 -3840, i16 208, i16 -224, i16 14848, i16 -15360, i16 928, i16 -960, i16 4352, i16 -4608, i16 272, i16 -288, i16 17408, i16 -18432, i16 1088, i16 -1152, i16 2176, i16 -2304, i16 16, i16 -32, i16 8704, i16 -9216, i16 544, i16 -576, i16 6400, i16 -6656, i16 400, i16 -416, i16 25600, i16 -26624, i16 1600, i16 -1664, i16 3200, i16 -3328, i16 144, i16 -160, i16 12800, i16 -13312, i16 800, i16 -832, i16 5888, i16 -6144, i16 368, i16 -384, i16 23552, i16 -24576, i16 1472, i16 -1536, i16 2944, i16 -3072, i16 112, i16 -128, i16 11776, i16 -12288, i16 736, i16 -768, i16 7936, i16 -8192, i16 496, i16 -512, i16 31744, i16 -32768, i16 1984, i16 -2048, i16 3968, i16 -4096, i16 240, i16 -256, i16 15872, i16 -16384, i16 992, i16 -1024, i16 4864, i16 -5120, i16 304, i16 -320, i16 19456, i16 -20480, i16 1216, i16 -1280, i16 2432, i16 -2560, i16 48, i16 -64, i16 9728, i16 -10240, i16 608, i16 -640, i16 6912, i16 -7168, i16 432, i16 -448, i16 27648, i16 -28672, i16 1728, i16 -1792, i16 3456, i16 -3584, i16 176, i16 -192, i16 13824, i16 -14336, i16 864, i16 -896], align 16
@s2a = internal unnamed_addr constant [4096 x i8] c"\AA*\EAj\8A\0A\CAJ\BA:\FAz\9A\1A\DAZ\A2\22\E2b\82\02\C2B\B22\F2r\92\12\D2R\AE..\EE\EEnn\8E\8E\0E\0E\CE\CENN\BE\BE>>\FE\FE~~\9E\9E\1E\1E\DE\DE^^\A6\A6&&&&\E6\E6\E6\E6ffff\86\86\86\86\06\06\06\06\C6\C6\C6\C6FFFF\B6\B6\B6\B66666\F6\F6\F6\F6vvvv\96\96\96\96\16\16\16\16\D6\D6\D6\D6VVVV\A8\A8\A8\A8((((((((\E8\E8\E8\E8\E8\E8\E8\E8hhhhhhhh\88\88\88\88\88\88\88\88\08\08\08\08\08\08\08\08\C8\C8\C8\C8\C8\C8\C8\C8HHHHHHHH\B8\B8\B8\B8\B8\B8\B8\B888888888\F8\F8\F8\F8\F8\F8\F8\F8xxxxxxxx\98\98\98\98\98\98\98\98\18\18\18\18\18\18\18\18\D8\D8\D8\D8\D8\D8\D8\D8XXXXXXXX\A0\A0\A0\A0\A0\A0\A0\A0                \E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0````````````````\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0@@@@@@@@@@@@@@@@\B0\B0\B0\B0\B0\B0\B0\B0\B0\B0\B0\B0\B0\B0\B0\B00000000000000000\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0pppppppppppppppp\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\D0\D0\D0\D0\D0\D0\D0\D0\D0\D0\D0\D0\D0\D0\D0\D0PPPPPPPPPPPPPPPP\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\ECllllllllllllllllllllllllllllllll\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\CC\CC\CC\CC\CC\CC\CC\CC\CC\CC\CC\CC\CC\CC\CC\CC\CC\CC\CC\CC\CC\CC\CC\CC\CC\CC\CC\CC\CC\CC\CC\CCLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL\BC\BC\BC\BC\BC\BC\BC\BC\BC\BC\BC\BC\BC\BC\BC\BC\BC\BC\BC\BC\BC\BC\BC\BC\BC\BC\BC\BC\BC\BC\BC\BC<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<\FC\FC\FC\FC\FC\FC\FC\FC\FC\FC\FC\FC\FC\FC\FC\FC\FC\FC\FC\FC\FC\FC\FC\FC\FC\FC\FC\FC\FC\FC\FC\FC||||||||||||||||||||||||||||||||\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\DC\DC\DC\DC\DC\DC\DC\DC\DC\DC\DC\DC\DC\DC\DC\DC\DC\DC\DC\DC\DC\DC\DC\DC\DC\DC\DC\DC\DC\DC\DC\DC\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4dddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B44444444444444444444444444444444444444444444444444444444444444444\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4tttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttt\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F55555555555555555555555555555555555555555555555555555555555555555\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}\FD\FD\FD\FD\FD\FD\FD\FD\FD\FD\FD\FD\FD\FD\FD\FD\FD\FD\FD\FD\FD\FD\FD\FD\FD\FD\FD\FD\FD\FD\FD\FD================================\BD\BD\BD\BD\BD\BD\BD\BD\BD\BD\BD\BD\BD\BD\BD\BD\BD\BD\BD\BD\BD\BD\BD\BD\BD\BD\BD\BD\BD\BD\BD\BDMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8Dmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm\ED\ED\ED\ED\ED\ED\ED\ED\ED\ED\ED\ED\ED\ED\ED\ED\ED\ED\ED\ED\ED\ED\ED\ED\ED\ED\ED\ED\ED\ED\ED\ED--------------------------------\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\ADQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQ\D1\D1\D1\D1\D1\D1\D1\D1\D1\D1\D1\D1\D1\D1\D1\D1\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91qqqqqqqqqqqqqqqq\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F11111111111111111\B1\B1\B1\B1\B1\B1\B1\B1\B1\B1\B1\B1\B1\B1\B1\B1AAAAAAAAAAAAAAAA\C1\C1\C1\C1\C1\C1\C1\C1\C1\C1\C1\C1\C1\C1\C1\C1\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81aaaaaaaaaaaaaaaa\E1\E1\E1\E1\E1\E1\E1\E1\E1\E1\E1\E1\E1\E1\E1\E1!!!!!!!!!!!!!!!!\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1YYYYYYYYYYYYYYYY\D9\D9\D9\D9\D9\D9\D9\D9\19\19\19\19\19\19\19\19\99\99\99\99\99\99\99\99yyyyyyyy\F9\F9\F9\F9\F9\F9\F9\F999999999\B9\B9\B9\B9\B9\B9\B9\B9IIIIIIII\C9\C9\C9\C9\C9\C9\C9\C9\09\09\09\09\09\09\09\09\89\89\89\89\89\89\89\89iiiiiiii\E9\E9\E9\E9\E9\E9\E9\E9))))))))\A9\A9\A9\A9\A9\A9\A9\A9WWWWWWWW\D7\D7\D7\D7\17\17\17\17\97\97\97\97wwww\F7\F7\F7\F77777\B7\B7\B7\B7GGGG\C7\C7\C7\C7\07\07\07\07\87\87\87\87gggg\E7\E7\E7\E7''''\A7\A7\A7\A7____\DF\DF\1F\1F\9F\9F\7F\7F\FF\FF??\BF\BFOO\CF\CF\0F\0F\8F\8Foo\EF\EF//\AF\AFSS\D3\13\93s\F33\B3C\C3\03\83c\E3#\A3[\DB\1B\9B{\FB;\BBK\CB\0B\8Bk\EB+\AB", align 16
@.str.63 = private unnamed_addr constant [100 x i8] c"%s: bad (missing?) header in Sun audio file \22%s\22;\0A\09Try one of -u, -a, -l instead (%s -h for help).\0A\00", align 1
@.str.1.62 = private unnamed_addr constant [6 x i8] c"stdin\00", align 1
@.str.2.64 = private unnamed_addr constant [76 x i8] c"%s: warning: file format #%lu for %s not implemented, defaulting to u-law.\0A\00", align 1
@.str.3.65 = private unnamed_addr constant [5 x i8] c".snd\00", align 1
@f_decode = dso_local local_unnamed_addr global i32 0, align 4
@f_cat = dso_local local_unnamed_addr global i32 0, align 4
@f_force = dso_local local_unnamed_addr global i32 0, align 4
@f_precious = dso_local local_unnamed_addr global i32 0, align 4
@f_fast = dso_local global i32 0, align 4
@f_verbose = dso_local global i32 0, align 4
@.str.66 = private unnamed_addr constant [6 x i8] c"audio\00", align 1
@.str.1.67 = private unnamed_addr constant [50 x i8] c"8 kHz, 8 bit u-law encoding with Sun audio header\00", align 1
@.str.2.68 = private unnamed_addr constant [4 x i8] c".au\00", align 1
@f_audio = dso_local global %struct.fmtdesc { ptr @.str.66, ptr @.str.1.67, ptr @.str.2.68, ptr @audio_init_input, ptr @audio_init_output, ptr @ulaw_input, ptr @ulaw_output }, align 8
@.str.3.69 = private unnamed_addr constant [6 x i8] c"u-law\00", align 1
@.str.4.70 = private unnamed_addr constant [34 x i8] c"plain 8 kHz, 8 bit u-law encoding\00", align 1
@.str.5.71 = private unnamed_addr constant [3 x i8] c".u\00", align 1
@f_ulaw = dso_local global %struct.fmtdesc { ptr @.str.3.69, ptr @.str.4.70, ptr @.str.5.71, ptr @generic_init, ptr @generic_init, ptr @ulaw_input, ptr @ulaw_output }, align 8
@.str.6.72 = private unnamed_addr constant [6 x i8] c"A-law\00", align 1
@.str.7.73 = private unnamed_addr constant [28 x i8] c"8 kHz, 8 bit A-law encoding\00", align 1
@.str.8.74 = private unnamed_addr constant [3 x i8] c".A\00", align 1
@f_alaw = dso_local global %struct.fmtdesc { ptr @.str.6.72, ptr @.str.7.73, ptr @.str.8.74, ptr @generic_init, ptr @generic_init, ptr @alaw_input, ptr @alaw_output }, align 8
@.str.9.75 = private unnamed_addr constant [7 x i8] c"linear\00", align 1
@.str.10.76 = private unnamed_addr constant [44 x i8] c"16 bit (13 significant) signed 8 kHz signal\00", align 1
@.str.11.77 = private unnamed_addr constant [3 x i8] c".l\00", align 1
@f_linear = dso_local global %struct.fmtdesc { ptr @.str.9.75, ptr @.str.10.76, ptr @.str.11.77, ptr @generic_init, ptr @generic_init, ptr @linear_input, ptr @linear_output }, align 8
@alldescs = dso_local local_unnamed_addr global [5 x ptr] [ptr @f_audio, ptr @f_alaw, ptr @f_ulaw, ptr @f_linear, ptr null], align 16
@f_format = dso_local local_unnamed_addr global ptr null, align 8
@.str.12.89 = private unnamed_addr constant [13 x i8] c"fcdpvhuaslVF\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.13 = private unnamed_addr constant [51 x i8] c"Usage: %s [-fcpdhvuaslF] [files...] (-h for help)\0A\00", align 1
@progname = dso_local local_unnamed_addr global ptr null, align 8
@optind = external local_unnamed_addr global i32, align 4
@instat = dso_local global %struct.stat zeroinitializer, align 8
@inname = dso_local local_unnamed_addr global ptr null, align 8
@outname = dso_local local_unnamed_addr global ptr null, align 8
@output = dso_local local_unnamed_addr global ptr null, align 8
@input = dso_local local_unnamed_addr global ptr null, align 8
@init_input = dso_local local_unnamed_addr global ptr null, align 8
@init_output = dso_local local_unnamed_addr global ptr null, align 8
@.str.14.88 = private unnamed_addr constant [6 x i8] c"toast\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"un\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"cat\00", align 1
@.str.17 = private unnamed_addr constant [54 x i8] c"%s: only one of -[uals] is possible (%s -h for help)\0A\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"%s 1.0, version %s\0A\00", align 1
@.str.19 = private unnamed_addr constant [58 x i8] c"$Id: toast.c,v 1.1.1.1 2000/11/06 19:54:26 mguthaus Exp $\00", align 1
@.str.20 = private unnamed_addr constant [37 x i8] c"Usage: %s [-fcpdhvaulsF] [files...]\0A\00", align 1
@.str.33.90 = private unnamed_addr constant [17 x i8] c"%s: error %s %s\0A\00", align 1
@.str.34 = private unnamed_addr constant [18 x i8] c"writing header to\00", align 1
@.str.35 = private unnamed_addr constant [20 x i8] c"reading header from\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"stdout\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"stdin\00", align 1
@.str.38 = private unnamed_addr constant [24 x i8] c"%s: error writing \22%s\22\0A\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@.str.39.91 = private unnamed_addr constant [30 x i8] c"%s: source \22%s\22 not deleted.\0A\00", align 1
@.str.40 = private unnamed_addr constant [27 x i8] c"%s: could not unlink \22%s\22\0A\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c".gsm\00", align 1
@.str.42 = private unnamed_addr constant [46 x i8] c"%s: %s already has \22%s\22 suffix -- unchanged.\0A\00", align 1
@.str.43 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.44 = private unnamed_addr constant [34 x i8] c"%s: cannot open \22%s\22 for reading\0A\00", align 1
@.str.45 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.46 = private unnamed_addr constant [40 x i8] c"%s: failed to malloc %d bytes -- abort\0A\00", align 1
@.str.47 = private unnamed_addr constant [22 x i8] c"%s: cannot stat \22%s\22\0A\00", align 1
@.str.48 = private unnamed_addr constant [46 x i8] c"%s: \22%s\22 is not a regular file -- unchanged.\0A\00", align 1
@.str.49 = private unnamed_addr constant [44 x i8] c"%s: \22%s\22 has %s other link%s -- unchanged.\0A\00", align 1
@.str.50 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.51 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.52 = private unnamed_addr constant [33 x i8] c"%s: can't open \22%s\22 for writing\0A\00", align 1
@.str.54 = private unnamed_addr constant [58 x i8] c"%s already exists; do you wish to overwrite %s (y or n)? \00", align 1
@.str.55 = private unnamed_addr constant [18 x i8] c"\09not overwritten\0A\00", align 1
@.str.56 = private unnamed_addr constant [50 x i8] c"%s: incomplete frame (%d byte%s missing) from %s\0A\00", align 1
@.str.57 = private unnamed_addr constant [21 x i8] c"%s: bad frame in %s\0A\00", align 1
@.str.58 = private unnamed_addr constant [25 x i8] c"%s: error writing to %s\0A\00", align 1
@.str.59 = private unnamed_addr constant [27 x i8] c"%s: error reading from %s\0A\00", align 1
@.str.60 = private unnamed_addr constant [40 x i8] c"%s: could not change file mode of \22%s\22\0A\00", align 1
@str = private unnamed_addr constant [53 x i8] c" -f  force     Replace existing files without asking\00", align 1
@str.61 = private unnamed_addr constant [59 x i8] c" -c  cat       Write to stdout, do not remove source files\00", align 1
@str.62 = private unnamed_addr constant [47 x i8] c" -d  decode    Decode data (default is encode)\00", align 1
@str.63 = private unnamed_addr constant [40 x i8] c" -p  precious  Do not delete the source\00", align 1
@str.64 = private unnamed_addr constant [56 x i8] c" -u  u-law     Force 8 kHz/8 bit u-law in/output format\00", align 1
@str.65 = private unnamed_addr constant [52 x i8] c" -s  sun .au   Force Sun .au u-law in/output format\00", align 1
@str.66 = private unnamed_addr constant [56 x i8] c" -a  A-law     Force 8 kHz/8 bit A-law in/output format\00", align 1
@str.67 = private unnamed_addr constant [52 x i8] c" -l  linear    Force 16 bit linear in/output format\00", align 1
@str.68 = private unnamed_addr constant [52 x i8] c" -F  fast      Sacrifice conformance to performance\00", align 1
@str.69 = private unnamed_addr constant [40 x i8] c" -v  version   Show version information\00", align 1
@str.70 = private unnamed_addr constant [31 x i8] c" -h  help      Print this text\00", align 1
@in = dso_local local_unnamed_addr global ptr null, align 8
@u2s = internal unnamed_addr constant [256 x i16] [i16 -32256, i16 -31228, i16 -30200, i16 -29172, i16 -28143, i16 -27115, i16 -26087, i16 -25059, i16 -24031, i16 -23002, i16 -21974, i16 -20946, i16 -19918, i16 -18889, i16 -17861, i16 -16833, i16 -16062, i16 -15548, i16 -15033, i16 -14519, i16 -14005, i16 -13491, i16 -12977, i16 -12463, i16 -11949, i16 -11435, i16 -10920, i16 -10406, i16 -9892, i16 -9378, i16 -8864, i16 -8350, i16 -7964, i16 -7707, i16 -7450, i16 -7193, i16 -6936, i16 -6679, i16 -6422, i16 -6165, i16 -5908, i16 -5651, i16 -5394, i16 -5137, i16 -4880, i16 -4623, i16 -4365, i16 -4108, i16 -3916, i16 -3787, i16 -3659, i16 -3530, i16 -3402, i16 -3273, i16 -3144, i16 -3016, i16 -2887, i16 -2759, i16 -2630, i16 -2502, i16 -2373, i16 -2245, i16 -2116, i16 -1988, i16 -1891, i16 -1827, i16 -1763, i16 -1698, i16 -1634, i16 -1570, i16 -1506, i16 -1441, i16 -1377, i16 -1313, i16 -1249, i16 -1184, i16 -1120, i16 -1056, i16 -992, i16 -927, i16 -879, i16 -847, i16 -815, i16 -783, i16 -751, i16 -718, i16 -686, i16 -654, i16 -622, i16 -590, i16 -558, i16 -526, i16 -494, i16 -461, i16 -429, i16 -397, i16 -373, i16 -357, i16 -341, i16 -325, i16 -309, i16 -293, i16 -277, i16 -261, i16 -245, i16 -228, i16 -212, i16 -196, i16 -180, i16 -164, i16 -148, i16 -132, i16 -120, i16 -112, i16 -104, i16 -96, i16 -88, i16 -80, i16 -72, i16 -64, i16 -56, i16 -48, i16 -40, i16 -32, i16 -24, i16 -16, i16 -8, i16 0, i16 32256, i16 31228, i16 30200, i16 29172, i16 28143, i16 27115, i16 26087, i16 25059, i16 24031, i16 23002, i16 21974, i16 20946, i16 19918, i16 18889, i16 17861, i16 16833, i16 16062, i16 15548, i16 15033, i16 14519, i16 14005, i16 13491, i16 12977, i16 12463, i16 11949, i16 11435, i16 10920, i16 10406, i16 9892, i16 9378, i16 8864, i16 8350, i16 7964, i16 7707, i16 7450, i16 7193, i16 6936, i16 6679, i16 6422, i16 6165, i16 5908, i16 5651, i16 5394, i16 5137, i16 4880, i16 4623, i16 4365, i16 4108, i16 3916, i16 3787, i16 3659, i16 3530, i16 3402, i16 3273, i16 3144, i16 3016, i16 2887, i16 2759, i16 2630, i16 2502, i16 2373, i16 2245, i16 2116, i16 1988, i16 1891, i16 1827, i16 1763, i16 1698, i16 1634, i16 1570, i16 1506, i16 1441, i16 1377, i16 1313, i16 1249, i16 1184, i16 1120, i16 1056, i16 992, i16 927, i16 879, i16 847, i16 815, i16 783, i16 751, i16 718, i16 686, i16 654, i16 622, i16 590, i16 558, i16 526, i16 494, i16 461, i16 429, i16 397, i16 373, i16 357, i16 341, i16 325, i16 309, i16 293, i16 277, i16 261, i16 245, i16 228, i16 212, i16 196, i16 180, i16 164, i16 148, i16 132, i16 120, i16 112, i16 104, i16 96, i16 88, i16 80, i16 72, i16 64, i16 56, i16 48, i16 40, i16 32, i16 24, i16 16, i16 8, i16 0], align 16
@s2u = internal unnamed_addr constant [8192 x i8] c"\FF\FE\FD\FC\FB\FA\F9\F8\F7\F6\F5\F4\F3\F2\F1\F0\EF\EF\EE\EE\ED\ED\EC\EC\EB\EB\EA\EA\E9\E9\E8\E8\E7\E7\E6\E6\E5\E5\E4\E4\E3\E3\E2\E2\E1\E1\E0\E0\DF\DF\DF\DF\DE\DE\DE\DE\DD\DD\DD\DD\DC\DC\DC\DC\DB\DB\DB\DB\DA\DA\DA\DA\D9\D9\D9\D9\D8\D8\D8\D8\D7\D7\D7\D7\D6\D6\D6\D6\D5\D5\D5\D5\D4\D4\D4\D4\D3\D3\D3\D3\D2\D2\D2\D2\D1\D1\D1\D1\D0\D0\D0\D0\CF\CF\CF\CF\CF\CF\CF\CF\CE\CE\CE\CE\CE\CE\CE\CE\CD\CD\CD\CD\CD\CD\CD\CD\CC\CC\CC\CC\CC\CC\CC\CC\CB\CB\CB\CB\CB\CB\CB\CB\CA\CA\CA\CA\CA\CA\CA\CA\C9\C9\C9\C9\C9\C9\C9\C9\C8\C8\C8\C8\C8\C8\C8\C8\C7\C7\C7\C7\C7\C7\C7\C7\C6\C6\C6\C6\C6\C6\C6\C6\C5\C5\C5\C5\C5\C5\C5\C5\C4\C4\C4\C4\C4\C4\C4\C4\C3\C3\C3\C3\C3\C3\C3\C3\C3\C2\C2\C2\C2\C2\C2\C2\C2\C1\C1\C1\C1\C1\C1\C1\C1\C0\C0\C0\C0\C0\C0\C0\C0\BF\BF\BF\BF\BF\BF\BF\BF\BF\BF\BF\BF\BF\BF\BF\BF\BE\BE\BE\BE\BE\BE\BE\BE\BE\BE\BE\BE\BE\BE\BE\BE\BD\BD\BD\BD\BD\BD\BD\BD\BD\BD\BD\BD\BD\BD\BD\BD\BC\BC\BC\BC\BC\BC\BC\BC\BC\BC\BC\BC\BC\BC\BC\BC\BB\BB\BB\BB\BB\BB\BB\BB\BB\BB\BB\BB\BB\BB\BB\BB\BA\BA\BA\BA\BA\BA\BA\BA\BA\BA\BA\BA\BA\BA\BA\BA\B9\B9\B9\B9\B9\B9\B9\B9\B9\B9\B9\B9\B9\B9\B9\B9\B8\B8\B8\B8\B8\B8\B8\B8\B8\B8\B8\B8\B8\B8\B8\B8\B7\B7\B7\B7\B7\B7\B7\B7\B7\B7\B7\B7\B7\B7\B7\B7\B6\B6\B6\B6\B6\B6\B6\B6\B6\B6\B6\B6\B6\B6\B6\B6\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B3\B3\B3\B3\B3\B3\B3\B3\B3\B3\B3\B3\B3\B3\B3\B3\B2\B2\B2\B2\B2\B2\B2\B2\B2\B2\B2\B2\B2\B2\B2\B2\B2\B1\B1\B1\B1\B1\B1\B1\B1\B1\B1\B1\B1\B1\B1\B1\B1\B0\B0\B0\B0\B0\B0\B0\B0\B0\B0\B0\B0\B0\B0\B0\B0\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F                                 !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22################################$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&'''''''''''''''''''''''''''''''''(((((((((((((((((((((((((((((((())))))))))))))))))))))))))))))))********************************++++++++++++++++++++++++++++++++,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,--------------------------------................................/////////////////////////////////0000000000000000111111111111111122222222222222223333333333333333444444444444444455555555555555556666666666666666777777777777777788888888888888889999999999999999::::::::::::::::;;;;;;;;;;;;;;;;<<<<<<<<<<<<<<<<=================>>>>>>>>>>>>>>>>????????????????@@@@@@@@AAAAAAAABBBBBBBBCCCCCCCCDDDDDDDDEEEEEEEEFFFFFFFFGGGGGGGGHHHHHHHHIIIIIIIIJJJJJJJJKKKKKKKKLLLLLLLLMMMMMMMMNNNNNNNNOOOOOOOOPPPPQQQQRRRRSSSSTTTTUUUUVVVVWWWWXXXXYYYYZZZZ[[[[\\\\\\\\]]]]^^^^____``aabbccddeeffgghhhiijjkkllmmnnoopqrstuvwxyz{|}~", align 16
@out = dso_local local_unnamed_addr global ptr null, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef signext i16 @gsm_add(i16 noundef signext %0, i16 noundef signext %1) local_unnamed_addr #0 {
  %3 = tail call i16 @llvm.sadd.sat.i16(i16 %0, i16 %1)
  ret i16 %3
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.sadd.sat.i16(i16, i16) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef signext i16 @gsm_sub(i16 noundef signext %0, i16 noundef signext %1) local_unnamed_addr #0 {
  %3 = tail call i16 @llvm.ssub.sat.i16(i16 %0, i16 %1)
  ret i16 %3
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.ssub.sat.i16(i16, i16) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local signext i16 @gsm_mult(i16 noundef signext %0, i16 noundef signext %1) local_unnamed_addr #0 {
  %3 = icmp eq i16 %0, -32768
  %4 = icmp eq i16 %1, -32768
  %5 = and i1 %3, %4
  %6 = sext i16 %0 to i32
  %7 = sext i16 %1 to i32
  %8 = mul nsw i32 %7, %6
  %9 = lshr i32 %8, 15
  %10 = trunc i32 %9 to i16
  %11 = select i1 %5, i16 32767, i16 %10
  ret i16 %11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local signext i16 @gsm_mult_r(i16 noundef signext %0, i16 noundef signext %1) local_unnamed_addr #0 {
  %3 = icmp eq i16 %1, -32768
  %4 = icmp eq i16 %0, -32768
  %5 = and i1 %4, %3
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = sext i16 %0 to i64
  %8 = sext i16 %1 to i64
  %9 = mul nsw i64 %8, %7
  %10 = add nsw i64 %9, 16384
  %11 = lshr i64 %10, 15
  %12 = trunc i64 %11 to i16
  br label %13

13:                                               ; preds = %6, %2
  %14 = phi i16 [ %12, %6 ], [ 32767, %2 ]
  ret i16 %14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef signext i16 @gsm_abs(i16 noundef signext %0) local_unnamed_addr #0 {
  %2 = icmp slt i16 %0, 0
  %3 = icmp eq i16 %0, -32768
  %4 = sub i16 0, %0
  %5 = select i1 %3, i16 32767, i16 %4
  %6 = select i1 %2, i16 %5, i16 %0
  ret i16 %6
}

; Function Attrs: nounwind uwtable
define dso_local i64 @gsm_L_mult(i16 noundef signext %0, i16 noundef signext %1) local_unnamed_addr #2 {
  %3 = icmp ne i16 %0, -32768
  %4 = icmp ne i16 %1, -32768
  %5 = or i1 %3, %4
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 58, ptr noundef nonnull @__PRETTY_FUNCTION__.gsm_L_mult) #25
  unreachable

7:                                                ; preds = %2
  %8 = sext i16 %0 to i64
  %9 = sext i16 %1 to i64
  %10 = shl nsw i64 %8, 1
  %11 = mul nsw i64 %10, %9
  ret i64 %11
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @gsm_L_add(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = icmp slt i64 %0, 0
  %4 = add i64 %1, %0
  br i1 %3, label %5, label %11

5:                                                ; preds = %2
  %6 = icmp sgt i64 %1, -1
  br i1 %6, label %15, label %7

7:                                                ; preds = %5
  %8 = add i64 %4, 1
  %9 = icmp ult i64 %8, -2147483647
  %10 = select i1 %9, i64 -2147483648, i64 %4
  br label %15

11:                                               ; preds = %2
  %12 = icmp slt i64 %1, 1
  br i1 %12, label %15, label %13

13:                                               ; preds = %11
  %14 = tail call i64 @llvm.umin.i64(i64 %4, i64 2147483647)
  br label %15

15:                                               ; preds = %13, %11, %7, %5
  %16 = phi i64 [ %10, %7 ], [ %14, %13 ], [ %4, %5 ], [ %4, %11 ]
  ret i64 %16
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @gsm_L_sub(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = icmp sgt i64 %0, -1
  br i1 %3, label %4, label %13

4:                                                ; preds = %2
  %5 = icmp sgt i64 %1, -1
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  %7 = sub nsw i64 %0, %1
  br label %18

8:                                                ; preds = %4
  %9 = sub nuw i64 %1, %0
  %10 = icmp ult i64 %9, -2147483647
  %11 = sub i64 %0, %1
  %12 = select i1 %10, i64 2147483647, i64 %11
  br label %18

13:                                               ; preds = %2
  %14 = icmp slt i64 %1, 1
  %15 = sub i64 %0, %1
  br i1 %14, label %18, label %16

16:                                               ; preds = %13
  %17 = tail call i64 @llvm.umax.i64(i64 %15, i64 -2147483648)
  br label %18

18:                                               ; preds = %16, %13, %8, %6
  %19 = phi i64 [ %7, %6 ], [ %12, %8 ], [ %17, %16 ], [ %15, %13 ]
  ret i64 %19
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local signext i16 @gsm_norm(i64 noundef %0) local_unnamed_addr #2 {
  %2 = icmp eq i64 %0, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 137, ptr noundef nonnull @__PRETTY_FUNCTION__.gsm_norm) #25
  unreachable

4:                                                ; preds = %1
  %5 = icmp slt i64 %0, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %4
  %7 = icmp slt i64 %0, -1073741823
  br i1 %7, label %35, label %8

8:                                                ; preds = %6
  %9 = xor i64 %0, -1
  br label %10

10:                                               ; preds = %8, %4
  %11 = phi i64 [ %9, %8 ], [ %0, %4 ]
  %12 = and i64 %11, 4294901760
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %10
  %15 = and i64 %11, 4278190080
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %14
  %18 = lshr i64 %11, 24
  br label %27

19:                                               ; preds = %14
  %20 = lshr i64 %11, 16
  br label %27

21:                                               ; preds = %10
  %22 = and i64 %11, 65280
  %23 = icmp eq i64 %22, 0
  %24 = lshr i64 %11, 8
  %25 = select i1 %23, i64 %11, i64 %24
  %26 = select i1 %23, i16 23, i16 15
  br label %27

27:                                               ; preds = %21, %19, %17
  %28 = phi i64 [ %20, %19 ], [ %18, %17 ], [ %25, %21 ]
  %29 = phi i16 [ 7, %19 ], [ -1, %17 ], [ %26, %21 ]
  %30 = and i64 %28, 255
  %31 = getelementptr inbounds [256 x i8], ptr @bitoff, i64 0, i64 %30
  %32 = load i8, ptr %31, align 1, !tbaa !7
  %33 = zext i8 %32 to i16
  %34 = add nsw i16 %29, %33
  br label %35

35:                                               ; preds = %27, %6
  %36 = phi i16 [ 0, %6 ], [ %34, %27 ]
  ret i16 %36
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @gsm_L_asl(i64 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp sgt i32 %1, 31
  br i1 %3, label %17, label %4

4:                                                ; preds = %2
  %5 = icmp slt i32 %1, -31
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  %7 = ashr i64 %0, 63
  br label %17

8:                                                ; preds = %4
  %9 = icmp slt i32 %1, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %8
  %11 = sub nsw i32 0, %1
  %12 = zext nneg i32 %11 to i64
  %13 = ashr i64 %0, %12
  br label %17

14:                                               ; preds = %8
  %15 = zext nneg i32 %1 to i64
  %16 = shl i64 %0, %15
  br label %17

17:                                               ; preds = %14, %10, %6, %2
  %18 = phi i64 [ %7, %6 ], [ %16, %14 ], [ 0, %2 ], [ %13, %10 ]
  ret i64 %18
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @gsm_L_asr(i64 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp sgt i32 %1, 31
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = ashr i64 %0, 63
  br label %17

6:                                                ; preds = %2
  %7 = icmp slt i32 %1, -31
  br i1 %7, label %17, label %8

8:                                                ; preds = %6
  %9 = icmp slt i32 %1, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %8
  %11 = sub nsw i32 0, %1
  %12 = zext nneg i32 %11 to i64
  %13 = shl i64 %0, %12
  br label %17

14:                                               ; preds = %8
  %15 = zext nneg i32 %1 to i64
  %16 = ashr i64 %0, %15
  br label %17

17:                                               ; preds = %14, %10, %6, %4
  %18 = phi i64 [ %5, %4 ], [ %13, %10 ], [ %16, %14 ], [ 0, %6 ]
  ret i64 %18
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local signext i16 @gsm_asl(i16 noundef signext %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp sgt i32 %1, 15
  br i1 %3, label %19, label %4

4:                                                ; preds = %2
  %5 = icmp slt i32 %1, -15
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  %7 = ashr i16 %0, 15
  br label %19

8:                                                ; preds = %4
  %9 = icmp slt i32 %1, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %8
  %11 = sub nsw i32 0, %1
  %12 = sext i16 %0 to i32
  %13 = ashr i32 %12, %11
  %14 = trunc i32 %13 to i16
  br label %19

15:                                               ; preds = %8
  %16 = zext i16 %0 to i32
  %17 = shl i32 %16, %1
  %18 = trunc i32 %17 to i16
  br label %19

19:                                               ; preds = %15, %10, %6, %2
  %20 = phi i16 [ %7, %6 ], [ %18, %15 ], [ 0, %2 ], [ %14, %10 ]
  ret i16 %20
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local signext i16 @gsm_asr(i16 noundef signext %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp sgt i32 %1, 15
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = ashr i16 %0, 15
  br label %19

6:                                                ; preds = %2
  %7 = icmp slt i32 %1, -15
  br i1 %7, label %19, label %8

8:                                                ; preds = %6
  %9 = icmp slt i32 %1, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %8
  %11 = zext i16 %0 to i32
  %12 = sub nsw i32 0, %1
  %13 = shl i32 %11, %12
  %14 = trunc i32 %13 to i16
  br label %19

15:                                               ; preds = %8
  %16 = sext i16 %0 to i32
  %17 = ashr i32 %16, %1
  %18 = trunc i32 %17 to i16
  br label %19

19:                                               ; preds = %15, %10, %6, %4
  %20 = phi i16 [ %5, %4 ], [ %14, %10 ], [ %18, %15 ], [ 0, %6 ]
  ret i16 %20
}

; Function Attrs: nounwind uwtable
define dso_local signext i16 @gsm_div(i16 noundef signext %0, i16 noundef signext %1) local_unnamed_addr #2 {
  %3 = sext i16 %1 to i64
  %4 = icmp slt i16 %0, 0
  %5 = icmp slt i16 %1, %0
  %6 = or i1 %4, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 220, ptr noundef nonnull @__PRETTY_FUNCTION__.gsm_div) #25
  unreachable

8:                                                ; preds = %2
  %9 = icmp eq i16 %0, 0
  br i1 %9, label %25, label %10

10:                                               ; preds = %8
  %11 = sext i16 %0 to i64
  br label %12

12:                                               ; preds = %12, %10
  %13 = phi i32 [ %16, %12 ], [ 15, %10 ]
  %14 = phi i16 [ %23, %12 ], [ 0, %10 ]
  %15 = phi i64 [ %21, %12 ], [ %11, %10 ]
  %16 = add nsw i32 %13, -1
  %17 = shl i16 %14, 1
  %18 = shl i64 %15, 1
  %19 = icmp sge i64 %18, %3
  %20 = select i1 %19, i64 %3, i64 0
  %21 = sub nsw i64 %18, %20
  %22 = zext i1 %19 to i16
  %23 = or disjoint i16 %17, %22
  %24 = icmp eq i32 %16, 0
  br i1 %24, label %25, label %12, !llvm.loop !10

25:                                               ; preds = %12, %8
  %26 = phi i16 [ 0, %8 ], [ %23, %12 ]
  ret i16 %26
}

; Function Attrs: nounwind uwtable
define dso_local void @Gsm_Coder(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #2 {
  %9 = alloca [160 x i16], align 16
  %10 = getelementptr inbounds i16, ptr %0, i64 120
  call void @llvm.lifetime.start.p0(i64 320, ptr nonnull %9) #26
  call void @Gsm_Preprocess(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %9) #26
  call void @Gsm_LPC_Analysis(ptr noundef %0, ptr noundef nonnull %9, ptr noundef %2) #26
  call void @Gsm_Short_Term_Analysis_Filter(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %9) #26
  br label %11

11:                                               ; preds = %34, %8
  %12 = phi i64 [ 0, %8 ], [ %38, %34 ]
  %13 = phi ptr [ %3, %8 ], [ %21, %34 ]
  %14 = phi ptr [ %10, %8 ], [ %37, %34 ]
  %15 = phi ptr [ %7, %8 ], [ %39, %34 ]
  %16 = phi ptr [ %6, %8 ], [ %22, %34 ]
  %17 = phi ptr [ %5, %8 ], [ %36, %34 ]
  %18 = phi ptr [ %4, %8 ], [ %35, %34 ]
  %19 = mul nuw nsw i64 %12, 40
  %20 = getelementptr inbounds i16, ptr %9, i64 %19
  %21 = getelementptr inbounds i16, ptr %13, i64 1
  call void @Gsm_Long_Term_Predictor(ptr noundef %0, ptr noundef nonnull %20, ptr noundef nonnull %14, ptr noundef nonnull getelementptr inbounds ([50 x i16], ptr @Gsm_Coder.e, i64 0, i64 5), ptr noundef nonnull %14, ptr noundef %13, ptr noundef %18) #26
  %22 = getelementptr inbounds i16, ptr %16, i64 1
  call void @Gsm_RPE_Encoding(ptr noundef %0, ptr noundef nonnull getelementptr inbounds ([50 x i16], ptr @Gsm_Coder.e, i64 0, i64 5), ptr noundef %16, ptr noundef %17, ptr noundef %15) #26
  br label %23

23:                                               ; preds = %23, %11
  %24 = phi i64 [ 0, %11 ], [ %32, %23 ]
  %25 = add nuw nsw i64 %24, 5
  %26 = getelementptr inbounds [50 x i16], ptr @Gsm_Coder.e, i64 0, i64 %25
  %27 = load i16, ptr %26, align 2, !tbaa !12
  %28 = getelementptr inbounds i16, ptr %14, i64 %24
  %29 = load i16, ptr %28, align 2, !tbaa !12
  %30 = call i16 @llvm.sadd.sat.i16(i16 %27, i16 %29)
  %31 = getelementptr inbounds i16, ptr %14, i64 %24
  store i16 %30, ptr %31, align 2, !tbaa !12
  %32 = add nuw nsw i64 %24, 1
  %33 = icmp eq i64 %32, 40
  br i1 %33, label %34, label %23, !llvm.loop !14

34:                                               ; preds = %23
  %35 = getelementptr inbounds i16, ptr %18, i64 1
  %36 = getelementptr inbounds i16, ptr %17, i64 1
  %37 = getelementptr i16, ptr %14, i64 40
  %38 = add nuw nsw i64 %12, 1
  %39 = getelementptr inbounds i16, ptr %15, i64 13
  %40 = icmp eq i64 %38, 4
  br i1 %40, label %41, label %11, !llvm.loop !15

41:                                               ; preds = %34
  %42 = getelementptr inbounds i16, ptr %0, i64 160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 1 dereferenceable(240) %42, i64 240, i1 false)
  call void @llvm.lifetime.end.p0(i64 320, ptr nonnull %9) #26
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nofree nounwind uwtable
define dso_local void @gsm_debug_words(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #6 {
  %5 = load ptr, ptr @stderr, align 8, !tbaa !16
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str.4, ptr noundef %0, i32 noundef %1, i32 noundef %2) #27
  %7 = icmp sgt i32 %1, %2
  br i1 %7, label %32, label %8

8:                                                ; preds = %4
  %9 = sext i32 %1 to i64
  %10 = sext i32 %2 to i64
  %11 = add i32 %2, 1
  br label %12

12:                                               ; preds = %28, %8
  %13 = phi i64 [ %9, %8 ], [ %20, %28 ]
  %14 = phi i32 [ 0, %8 ], [ %29, %28 ]
  %15 = load ptr, ptr @stderr, align 8, !tbaa !16
  %16 = getelementptr inbounds i16, ptr %3, i64 %13
  %17 = load i16, ptr %16, align 2, !tbaa !12
  %18 = sext i16 %17 to i32
  %19 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef nonnull @.str.1.5, i32 noundef %18) #27
  %20 = add nsw i64 %13, 1
  %21 = add nsw i32 %14, 1
  %22 = icmp sgt i32 %14, 6
  br i1 %22, label %23, label %28

23:                                               ; preds = %12
  %24 = icmp slt i64 %20, %10
  br i1 %24, label %25, label %28

25:                                               ; preds = %23
  %26 = load ptr, ptr @stderr, align 8, !tbaa !16
  %27 = tail call i32 @putc(i32 noundef 10, ptr noundef %26)
  br label %28

28:                                               ; preds = %25, %23, %12
  %29 = phi i32 [ 0, %25 ], [ 0, %23 ], [ %21, %12 ]
  %30 = trunc i64 %20 to i32
  %31 = icmp eq i32 %11, %30
  br i1 %31, label %32, label %12, !llvm.loop !18

32:                                               ; preds = %28, %4
  %33 = load ptr, ptr @stderr, align 8, !tbaa !16
  %34 = tail call i32 @putc(i32 noundef 10, ptr noundef %33)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind uwtable
define dso_local void @gsm_debug_longwords(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #6 {
  %5 = load ptr, ptr @stderr, align 8, !tbaa !16
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str.4, ptr noundef %0, i32 noundef %1, i32 noundef %2) #27
  %7 = icmp sgt i32 %1, %2
  br i1 %7, label %31, label %8

8:                                                ; preds = %4
  %9 = sext i32 %1 to i64
  %10 = sext i32 %2 to i64
  %11 = add i32 %2, 1
  br label %12

12:                                               ; preds = %27, %8
  %13 = phi i64 [ %9, %8 ], [ %19, %27 ]
  %14 = phi i32 [ 0, %8 ], [ %28, %27 ]
  %15 = load ptr, ptr @stderr, align 8, !tbaa !16
  %16 = getelementptr inbounds i64, ptr %3, i64 %13
  %17 = load i64, ptr %16, align 8, !tbaa !19
  %18 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef nonnull @.str.1.5, i64 noundef %17) #27
  %19 = add nsw i64 %13, 1
  %20 = add nsw i32 %14, 1
  %21 = icmp sgt i32 %14, 6
  br i1 %21, label %22, label %27

22:                                               ; preds = %12
  %23 = icmp slt i64 %19, %10
  br i1 %23, label %24, label %27

24:                                               ; preds = %22
  %25 = load ptr, ptr @stderr, align 8, !tbaa !16
  %26 = tail call i32 @putc(i32 noundef 10, ptr noundef %25)
  br label %27

27:                                               ; preds = %24, %22, %12
  %28 = phi i32 [ 0, %24 ], [ 0, %22 ], [ %20, %12 ]
  %29 = trunc i64 %19 to i32
  %30 = icmp eq i32 %11, %29
  br i1 %30, label %31, label %12, !llvm.loop !21

31:                                               ; preds = %27, %4
  %32 = load ptr, ptr @stderr, align 8, !tbaa !16
  %33 = tail call i32 @putc(i32 noundef 10, ptr noundef %32)
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @gsm_debug_longword(ptr noundef %0, i64 noundef %1) local_unnamed_addr #6 {
  %3 = load ptr, ptr @stderr, align 8, !tbaa !16
  %4 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str.2.6, ptr noundef %0, i64 noundef %1) #27
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @gsm_debug_word(ptr noundef %0, i16 noundef signext %1) local_unnamed_addr #6 {
  %3 = load ptr, ptr @stderr, align 8, !tbaa !16
  %4 = sext i16 %1 to i64
  %5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str.2.6, ptr noundef %0, i64 noundef %4) #27
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Gsm_Decoder(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #2 {
  %9 = alloca [40 x i16], align 16
  %10 = alloca [160 x i16], align 16
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %9) #26
  call void @llvm.lifetime.start.p0(i64 320, ptr nonnull %10) #26
  %11 = getelementptr i16, ptr %0, i64 120
  br label %12

12:                                               ; preds = %12, %8
  %13 = phi i64 [ 0, %8 ], [ %25, %12 ]
  %14 = phi ptr [ %2, %8 ], [ %28, %12 ]
  %15 = phi ptr [ %3, %8 ], [ %27, %12 ]
  %16 = phi ptr [ %6, %8 ], [ %30, %12 ]
  %17 = phi ptr [ %5, %8 ], [ %26, %12 ]
  %18 = phi ptr [ %4, %8 ], [ %29, %12 ]
  %19 = mul nuw nsw i64 %13, 80
  %20 = getelementptr i8, ptr %10, i64 %19
  %21 = load i16, ptr %17, align 2, !tbaa !12
  %22 = load i16, ptr %18, align 2, !tbaa !12
  call void @Gsm_RPE_Decoding(ptr noundef %0, i16 noundef signext %21, i16 noundef signext %22, ptr noundef %16, ptr noundef nonnull %9) #26
  %23 = load i16, ptr %14, align 2, !tbaa !12
  %24 = load i16, ptr %15, align 2, !tbaa !12
  call void @Gsm_Long_Term_Synthesis_Filtering(ptr noundef %0, i16 noundef signext %23, i16 noundef signext %24, ptr noundef nonnull %9, ptr noundef nonnull %11) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %20, ptr noundef nonnull align 2 dereferenceable(80) %11, i64 80, i1 false), !tbaa !12
  %25 = add nuw nsw i64 %13, 1
  %26 = getelementptr inbounds i16, ptr %17, i64 1
  %27 = getelementptr inbounds i16, ptr %15, i64 1
  %28 = getelementptr inbounds i16, ptr %14, i64 1
  %29 = getelementptr inbounds i16, ptr %18, i64 1
  %30 = getelementptr inbounds i16, ptr %16, i64 13
  %31 = icmp eq i64 %25, 4
  br i1 %31, label %32, label %12, !llvm.loop !22

32:                                               ; preds = %12
  call void @Gsm_Short_Term_Synthesis_Filter(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %10, ptr noundef %7) #26
  %33 = getelementptr inbounds %struct.gsm_state, ptr %0, i64 0, i32 9
  %34 = load i16, ptr %33, align 2, !tbaa !23
  br label %35

35:                                               ; preds = %35, %32
  %36 = phi ptr [ %7, %32 ], [ %54, %35 ]
  %37 = phi i16 [ %34, %32 ], [ %46, %35 ]
  %38 = phi i32 [ 160, %32 ], [ %39, %35 ]
  %39 = add nsw i32 %38, -1
  %40 = sext i16 %37 to i64
  %41 = load i16, ptr %36, align 2, !tbaa !12
  %42 = mul nsw i64 %40, 242064356802560
  %43 = add nsw i64 %42, 140737488355328
  %44 = lshr i64 %43, 48
  %45 = trunc i64 %44 to i16
  %46 = call i16 @llvm.sadd.sat.i16(i16 %45, i16 %41)
  %47 = zext i16 %46 to i64
  %48 = shl nuw i64 %47, 48
  %49 = ashr exact i64 %48, 47
  %50 = call i64 @llvm.smax.i64(i64 %49, i64 -32768)
  %51 = call i64 @llvm.smin.i64(i64 %50, i64 32767)
  %52 = trunc i64 %51 to i16
  %53 = and i16 %52, -8
  store i16 %53, ptr %36, align 2, !tbaa !12
  %54 = getelementptr inbounds i16, ptr %36, i64 1
  %55 = icmp eq i32 %39, 0
  br i1 %55, label %56, label %35, !llvm.loop !26

56:                                               ; preds = %35
  store i16 %46, ptr %33, align 2, !tbaa !23
  call void @llvm.lifetime.end.p0(i64 320, ptr nonnull %10) #26
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %9) #26
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @gsm_create() local_unnamed_addr #8 {
  %1 = tail call noalias dereferenceable_or_null(656) ptr @malloc(i64 noundef 656) #28
  %2 = icmp eq ptr %1, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(656) %1, i8 0, i64 656, i1 false)
  %4 = getelementptr inbounds %struct.gsm_state, ptr %1, i64 0, i32 7
  store i16 40, ptr %4, align 2, !tbaa !27
  br label %5

5:                                                ; preds = %3, %0
  ret ptr %1
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsm_decode(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #2 {
  %4 = alloca [8 x i16], align 16
  %5 = alloca [4 x i16], align 2
  %6 = alloca [4 x i16], align 2
  %7 = alloca [4 x i16], align 2
  %8 = alloca [4 x i16], align 2
  %9 = alloca [52 x i16], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #26
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %9) #26
  %10 = load i8, ptr %1, align 1, !tbaa !7
  %11 = and i8 %10, -16
  %12 = icmp eq i8 %11, -48
  br i1 %12, label %13, label %426

13:                                               ; preds = %3
  %14 = getelementptr inbounds i8, ptr %1, i64 1
  %15 = zext i8 %10 to i16
  %16 = shl nuw nsw i16 %15, 2
  %17 = and i16 %16, 60
  store i16 %17, ptr %4, align 16, !tbaa !12
  %18 = load i8, ptr %14, align 1, !tbaa !7
  %19 = lshr i8 %18, 6
  %20 = zext nneg i8 %19 to i16
  %21 = or disjoint i16 %17, %20
  store i16 %21, ptr %4, align 16, !tbaa !12
  %22 = getelementptr inbounds i8, ptr %1, i64 2
  %23 = and i8 %18, 63
  %24 = zext nneg i8 %23 to i16
  %25 = getelementptr inbounds [8 x i16], ptr %4, i64 0, i64 1
  store i16 %24, ptr %25, align 2, !tbaa !12
  %26 = load i8, ptr %22, align 1, !tbaa !7
  %27 = lshr i8 %26, 3
  %28 = zext nneg i8 %27 to i16
  %29 = getelementptr inbounds [8 x i16], ptr %4, i64 0, i64 2
  store i16 %28, ptr %29, align 4, !tbaa !12
  %30 = getelementptr inbounds i8, ptr %1, i64 3
  %31 = shl i8 %26, 2
  %32 = and i8 %31, 28
  %33 = zext nneg i8 %32 to i16
  %34 = getelementptr inbounds [8 x i16], ptr %4, i64 0, i64 3
  store i16 %33, ptr %34, align 2, !tbaa !12
  %35 = load i8, ptr %30, align 1, !tbaa !7
  %36 = lshr i8 %35, 6
  %37 = or disjoint i8 %36, %32
  %38 = zext nneg i8 %37 to i16
  store i16 %38, ptr %34, align 2, !tbaa !12
  %39 = lshr i8 %35, 2
  %40 = and i8 %39, 15
  %41 = zext nneg i8 %40 to i16
  %42 = getelementptr inbounds [8 x i16], ptr %4, i64 0, i64 4
  store i16 %41, ptr %42, align 8, !tbaa !12
  %43 = getelementptr inbounds i8, ptr %1, i64 4
  %44 = shl i8 %35, 2
  %45 = and i8 %44, 12
  %46 = zext nneg i8 %45 to i16
  %47 = getelementptr inbounds [8 x i16], ptr %4, i64 0, i64 5
  store i16 %46, ptr %47, align 2, !tbaa !12
  %48 = load i8, ptr %43, align 1, !tbaa !7
  %49 = lshr i8 %48, 6
  %50 = or disjoint i8 %49, %45
  %51 = zext nneg i8 %50 to i16
  store i16 %51, ptr %47, align 2, !tbaa !12
  %52 = lshr i8 %48, 3
  %53 = and i8 %52, 7
  %54 = zext nneg i8 %53 to i16
  %55 = getelementptr inbounds [8 x i16], ptr %4, i64 0, i64 6
  store i16 %54, ptr %55, align 4, !tbaa !12
  %56 = getelementptr inbounds i8, ptr %1, i64 5
  %57 = and i8 %48, 7
  %58 = zext nneg i8 %57 to i16
  %59 = getelementptr inbounds [8 x i16], ptr %4, i64 0, i64 7
  store i16 %58, ptr %59, align 2, !tbaa !12
  %60 = load i8, ptr %56, align 1, !tbaa !7
  %61 = lshr i8 %60, 1
  %62 = zext nneg i8 %61 to i16
  store i16 %62, ptr %5, align 2, !tbaa !12
  %63 = getelementptr inbounds i8, ptr %1, i64 6
  %64 = shl i8 %60, 1
  %65 = and i8 %64, 2
  %66 = zext nneg i8 %65 to i16
  store i16 %66, ptr %7, align 2, !tbaa !12
  %67 = load i8, ptr %63, align 1, !tbaa !7
  %68 = lshr i8 %67, 7
  %69 = or disjoint i8 %68, %65
  %70 = zext nneg i8 %69 to i16
  store i16 %70, ptr %7, align 2, !tbaa !12
  %71 = lshr i8 %67, 5
  %72 = and i8 %71, 3
  %73 = zext nneg i8 %72 to i16
  store i16 %73, ptr %6, align 2, !tbaa !12
  %74 = getelementptr inbounds i8, ptr %1, i64 7
  %75 = shl i8 %67, 1
  %76 = and i8 %75, 62
  %77 = zext nneg i8 %76 to i16
  store i16 %77, ptr %8, align 2, !tbaa !12
  %78 = load i8, ptr %74, align 1, !tbaa !7
  %79 = lshr i8 %78, 7
  %80 = or disjoint i8 %79, %76
  %81 = zext nneg i8 %80 to i16
  store i16 %81, ptr %8, align 2, !tbaa !12
  %82 = lshr i8 %78, 4
  %83 = and i8 %82, 7
  %84 = zext nneg i8 %83 to i16
  store i16 %84, ptr %9, align 16, !tbaa !12
  %85 = lshr i8 %78, 1
  %86 = and i8 %85, 7
  %87 = zext nneg i8 %86 to i16
  %88 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 1
  store i16 %87, ptr %88, align 2, !tbaa !12
  %89 = getelementptr inbounds i8, ptr %1, i64 8
  %90 = shl i8 %78, 2
  %91 = and i8 %90, 4
  %92 = zext nneg i8 %91 to i16
  %93 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 2
  store i16 %92, ptr %93, align 4, !tbaa !12
  %94 = load i8, ptr %89, align 1, !tbaa !7
  %95 = lshr i8 %94, 6
  %96 = or disjoint i8 %95, %91
  %97 = zext nneg i8 %96 to i16
  store i16 %97, ptr %93, align 4, !tbaa !12
  %98 = lshr i8 %94, 3
  %99 = and i8 %98, 7
  %100 = zext nneg i8 %99 to i16
  %101 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 3
  store i16 %100, ptr %101, align 2, !tbaa !12
  %102 = getelementptr inbounds i8, ptr %1, i64 9
  %103 = and i8 %94, 7
  %104 = zext nneg i8 %103 to i16
  %105 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 4
  store i16 %104, ptr %105, align 8, !tbaa !12
  %106 = load i8, ptr %102, align 1, !tbaa !7
  %107 = lshr i8 %106, 5
  %108 = zext nneg i8 %107 to i16
  %109 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 5
  store i16 %108, ptr %109, align 2, !tbaa !12
  %110 = lshr i8 %106, 2
  %111 = and i8 %110, 7
  %112 = zext nneg i8 %111 to i16
  %113 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 6
  store i16 %112, ptr %113, align 4, !tbaa !12
  %114 = getelementptr inbounds i8, ptr %1, i64 10
  %115 = shl i8 %106, 1
  %116 = and i8 %115, 6
  %117 = zext nneg i8 %116 to i16
  %118 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 7
  store i16 %117, ptr %118, align 2, !tbaa !12
  %119 = load i8, ptr %114, align 1, !tbaa !7
  %120 = lshr i8 %119, 7
  %121 = or disjoint i8 %120, %116
  %122 = zext nneg i8 %121 to i16
  store i16 %122, ptr %118, align 2, !tbaa !12
  %123 = lshr i8 %119, 4
  %124 = and i8 %123, 7
  %125 = zext nneg i8 %124 to i16
  %126 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 8
  store i16 %125, ptr %126, align 16, !tbaa !12
  %127 = lshr i8 %119, 1
  %128 = and i8 %127, 7
  %129 = zext nneg i8 %128 to i16
  %130 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 9
  store i16 %129, ptr %130, align 2, !tbaa !12
  %131 = getelementptr inbounds i8, ptr %1, i64 11
  %132 = shl i8 %119, 2
  %133 = and i8 %132, 4
  %134 = zext nneg i8 %133 to i16
  %135 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 10
  store i16 %134, ptr %135, align 4, !tbaa !12
  %136 = load i8, ptr %131, align 1, !tbaa !7
  %137 = lshr i8 %136, 6
  %138 = or disjoint i8 %137, %133
  %139 = zext nneg i8 %138 to i16
  store i16 %139, ptr %135, align 4, !tbaa !12
  %140 = lshr i8 %136, 3
  %141 = and i8 %140, 7
  %142 = zext nneg i8 %141 to i16
  %143 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 11
  store i16 %142, ptr %143, align 2, !tbaa !12
  %144 = getelementptr inbounds i8, ptr %1, i64 12
  %145 = and i8 %136, 7
  %146 = zext nneg i8 %145 to i16
  %147 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 12
  store i16 %146, ptr %147, align 8, !tbaa !12
  %148 = load i8, ptr %144, align 1, !tbaa !7
  %149 = lshr i8 %148, 1
  %150 = zext nneg i8 %149 to i16
  %151 = getelementptr inbounds [4 x i16], ptr %5, i64 0, i64 1
  store i16 %150, ptr %151, align 2, !tbaa !12
  %152 = getelementptr inbounds i8, ptr %1, i64 13
  %153 = shl i8 %148, 1
  %154 = and i8 %153, 2
  %155 = zext nneg i8 %154 to i16
  %156 = getelementptr inbounds [4 x i16], ptr %7, i64 0, i64 1
  store i16 %155, ptr %156, align 2, !tbaa !12
  %157 = load i8, ptr %152, align 1, !tbaa !7
  %158 = lshr i8 %157, 7
  %159 = or disjoint i8 %158, %154
  %160 = zext nneg i8 %159 to i16
  store i16 %160, ptr %156, align 2, !tbaa !12
  %161 = lshr i8 %157, 5
  %162 = and i8 %161, 3
  %163 = zext nneg i8 %162 to i16
  %164 = getelementptr inbounds [4 x i16], ptr %6, i64 0, i64 1
  store i16 %163, ptr %164, align 2, !tbaa !12
  %165 = getelementptr inbounds i8, ptr %1, i64 14
  %166 = shl i8 %157, 1
  %167 = and i8 %166, 62
  %168 = zext nneg i8 %167 to i16
  %169 = getelementptr inbounds [4 x i16], ptr %8, i64 0, i64 1
  store i16 %168, ptr %169, align 2, !tbaa !12
  %170 = load i8, ptr %165, align 1, !tbaa !7
  %171 = lshr i8 %170, 7
  %172 = or disjoint i8 %171, %167
  %173 = zext nneg i8 %172 to i16
  store i16 %173, ptr %169, align 2, !tbaa !12
  %174 = lshr i8 %170, 4
  %175 = and i8 %174, 7
  %176 = zext nneg i8 %175 to i16
  %177 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 13
  store i16 %176, ptr %177, align 2, !tbaa !12
  %178 = lshr i8 %170, 1
  %179 = and i8 %178, 7
  %180 = zext nneg i8 %179 to i16
  %181 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 14
  store i16 %180, ptr %181, align 4, !tbaa !12
  %182 = getelementptr inbounds i8, ptr %1, i64 15
  %183 = shl i8 %170, 2
  %184 = and i8 %183, 4
  %185 = zext nneg i8 %184 to i16
  %186 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 15
  store i16 %185, ptr %186, align 2, !tbaa !12
  %187 = load i8, ptr %182, align 1, !tbaa !7
  %188 = lshr i8 %187, 6
  %189 = or disjoint i8 %188, %184
  %190 = zext nneg i8 %189 to i16
  store i16 %190, ptr %186, align 2, !tbaa !12
  %191 = lshr i8 %187, 3
  %192 = and i8 %191, 7
  %193 = zext nneg i8 %192 to i16
  %194 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 16
  store i16 %193, ptr %194, align 16, !tbaa !12
  %195 = getelementptr inbounds i8, ptr %1, i64 16
  %196 = and i8 %187, 7
  %197 = zext nneg i8 %196 to i16
  %198 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 17
  store i16 %197, ptr %198, align 2, !tbaa !12
  %199 = load i8, ptr %195, align 1, !tbaa !7
  %200 = lshr i8 %199, 5
  %201 = zext nneg i8 %200 to i16
  %202 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 18
  store i16 %201, ptr %202, align 4, !tbaa !12
  %203 = lshr i8 %199, 2
  %204 = and i8 %203, 7
  %205 = zext nneg i8 %204 to i16
  %206 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 19
  store i16 %205, ptr %206, align 2, !tbaa !12
  %207 = getelementptr inbounds i8, ptr %1, i64 17
  %208 = shl i8 %199, 1
  %209 = and i8 %208, 6
  %210 = zext nneg i8 %209 to i16
  %211 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 20
  store i16 %210, ptr %211, align 8, !tbaa !12
  %212 = load i8, ptr %207, align 1, !tbaa !7
  %213 = lshr i8 %212, 7
  %214 = or disjoint i8 %213, %209
  %215 = zext nneg i8 %214 to i16
  store i16 %215, ptr %211, align 8, !tbaa !12
  %216 = lshr i8 %212, 4
  %217 = and i8 %216, 7
  %218 = zext nneg i8 %217 to i16
  %219 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 21
  store i16 %218, ptr %219, align 2, !tbaa !12
  %220 = lshr i8 %212, 1
  %221 = and i8 %220, 7
  %222 = zext nneg i8 %221 to i16
  %223 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 22
  store i16 %222, ptr %223, align 4, !tbaa !12
  %224 = getelementptr inbounds i8, ptr %1, i64 18
  %225 = shl i8 %212, 2
  %226 = and i8 %225, 4
  %227 = zext nneg i8 %226 to i16
  %228 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 23
  store i16 %227, ptr %228, align 2, !tbaa !12
  %229 = load i8, ptr %224, align 1, !tbaa !7
  %230 = lshr i8 %229, 6
  %231 = or disjoint i8 %230, %226
  %232 = zext nneg i8 %231 to i16
  store i16 %232, ptr %228, align 2, !tbaa !12
  %233 = lshr i8 %229, 3
  %234 = and i8 %233, 7
  %235 = zext nneg i8 %234 to i16
  %236 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 24
  store i16 %235, ptr %236, align 16, !tbaa !12
  %237 = getelementptr inbounds i8, ptr %1, i64 19
  %238 = and i8 %229, 7
  %239 = zext nneg i8 %238 to i16
  %240 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 25
  store i16 %239, ptr %240, align 2, !tbaa !12
  %241 = load i8, ptr %237, align 1, !tbaa !7
  %242 = lshr i8 %241, 1
  %243 = zext nneg i8 %242 to i16
  %244 = getelementptr inbounds [4 x i16], ptr %5, i64 0, i64 2
  store i16 %243, ptr %244, align 2, !tbaa !12
  %245 = getelementptr inbounds i8, ptr %1, i64 20
  %246 = shl i8 %241, 1
  %247 = and i8 %246, 2
  %248 = zext nneg i8 %247 to i16
  %249 = getelementptr inbounds [4 x i16], ptr %7, i64 0, i64 2
  store i16 %248, ptr %249, align 2, !tbaa !12
  %250 = load i8, ptr %245, align 1, !tbaa !7
  %251 = lshr i8 %250, 7
  %252 = or disjoint i8 %251, %247
  %253 = zext nneg i8 %252 to i16
  store i16 %253, ptr %249, align 2, !tbaa !12
  %254 = lshr i8 %250, 5
  %255 = and i8 %254, 3
  %256 = zext nneg i8 %255 to i16
  %257 = getelementptr inbounds [4 x i16], ptr %6, i64 0, i64 2
  store i16 %256, ptr %257, align 2, !tbaa !12
  %258 = getelementptr inbounds i8, ptr %1, i64 21
  %259 = shl i8 %250, 1
  %260 = and i8 %259, 62
  %261 = zext nneg i8 %260 to i16
  %262 = getelementptr inbounds [4 x i16], ptr %8, i64 0, i64 2
  store i16 %261, ptr %262, align 2, !tbaa !12
  %263 = load i8, ptr %258, align 1, !tbaa !7
  %264 = lshr i8 %263, 7
  %265 = or disjoint i8 %264, %260
  %266 = zext nneg i8 %265 to i16
  store i16 %266, ptr %262, align 2, !tbaa !12
  %267 = lshr i8 %263, 4
  %268 = and i8 %267, 7
  %269 = zext nneg i8 %268 to i16
  %270 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 26
  store i16 %269, ptr %270, align 4, !tbaa !12
  %271 = lshr i8 %263, 1
  %272 = and i8 %271, 7
  %273 = zext nneg i8 %272 to i16
  %274 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 27
  store i16 %273, ptr %274, align 2, !tbaa !12
  %275 = getelementptr inbounds i8, ptr %1, i64 22
  %276 = shl i8 %263, 2
  %277 = and i8 %276, 4
  %278 = zext nneg i8 %277 to i16
  %279 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 28
  store i16 %278, ptr %279, align 8, !tbaa !12
  %280 = load i8, ptr %275, align 1, !tbaa !7
  %281 = lshr i8 %280, 6
  %282 = or disjoint i8 %281, %277
  %283 = zext nneg i8 %282 to i16
  store i16 %283, ptr %279, align 8, !tbaa !12
  %284 = lshr i8 %280, 3
  %285 = and i8 %284, 7
  %286 = zext nneg i8 %285 to i16
  %287 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 29
  store i16 %286, ptr %287, align 2, !tbaa !12
  %288 = getelementptr inbounds i8, ptr %1, i64 23
  %289 = and i8 %280, 7
  %290 = zext nneg i8 %289 to i16
  %291 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 30
  store i16 %290, ptr %291, align 4, !tbaa !12
  %292 = load i8, ptr %288, align 1, !tbaa !7
  %293 = lshr i8 %292, 5
  %294 = zext nneg i8 %293 to i16
  %295 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 31
  store i16 %294, ptr %295, align 2, !tbaa !12
  %296 = lshr i8 %292, 2
  %297 = and i8 %296, 7
  %298 = zext nneg i8 %297 to i16
  %299 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 32
  store i16 %298, ptr %299, align 16, !tbaa !12
  %300 = getelementptr inbounds i8, ptr %1, i64 24
  %301 = shl i8 %292, 1
  %302 = and i8 %301, 6
  %303 = zext nneg i8 %302 to i16
  %304 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 33
  store i16 %303, ptr %304, align 2, !tbaa !12
  %305 = load i8, ptr %300, align 1, !tbaa !7
  %306 = lshr i8 %305, 7
  %307 = or disjoint i8 %306, %302
  %308 = zext nneg i8 %307 to i16
  store i16 %308, ptr %304, align 2, !tbaa !12
  %309 = lshr i8 %305, 4
  %310 = and i8 %309, 7
  %311 = zext nneg i8 %310 to i16
  %312 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 34
  store i16 %311, ptr %312, align 4, !tbaa !12
  %313 = lshr i8 %305, 1
  %314 = and i8 %313, 7
  %315 = zext nneg i8 %314 to i16
  %316 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 35
  store i16 %315, ptr %316, align 2, !tbaa !12
  %317 = getelementptr inbounds i8, ptr %1, i64 25
  %318 = shl i8 %305, 2
  %319 = and i8 %318, 4
  %320 = zext nneg i8 %319 to i16
  %321 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 36
  store i16 %320, ptr %321, align 8, !tbaa !12
  %322 = load i8, ptr %317, align 1, !tbaa !7
  %323 = lshr i8 %322, 6
  %324 = or disjoint i8 %323, %319
  %325 = zext nneg i8 %324 to i16
  store i16 %325, ptr %321, align 8, !tbaa !12
  %326 = lshr i8 %322, 3
  %327 = and i8 %326, 7
  %328 = zext nneg i8 %327 to i16
  %329 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 37
  store i16 %328, ptr %329, align 2, !tbaa !12
  %330 = getelementptr inbounds i8, ptr %1, i64 26
  %331 = and i8 %322, 7
  %332 = zext nneg i8 %331 to i16
  %333 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 38
  store i16 %332, ptr %333, align 4, !tbaa !12
  %334 = load i8, ptr %330, align 1, !tbaa !7
  %335 = lshr i8 %334, 1
  %336 = zext nneg i8 %335 to i16
  %337 = getelementptr inbounds [4 x i16], ptr %5, i64 0, i64 3
  store i16 %336, ptr %337, align 2, !tbaa !12
  %338 = getelementptr inbounds i8, ptr %1, i64 27
  %339 = shl i8 %334, 1
  %340 = and i8 %339, 2
  %341 = zext nneg i8 %340 to i16
  %342 = getelementptr inbounds [4 x i16], ptr %7, i64 0, i64 3
  store i16 %341, ptr %342, align 2, !tbaa !12
  %343 = load i8, ptr %338, align 1, !tbaa !7
  %344 = lshr i8 %343, 7
  %345 = or disjoint i8 %344, %340
  %346 = zext nneg i8 %345 to i16
  store i16 %346, ptr %342, align 2, !tbaa !12
  %347 = lshr i8 %343, 5
  %348 = and i8 %347, 3
  %349 = zext nneg i8 %348 to i16
  %350 = getelementptr inbounds [4 x i16], ptr %6, i64 0, i64 3
  store i16 %349, ptr %350, align 2, !tbaa !12
  %351 = getelementptr inbounds i8, ptr %1, i64 28
  %352 = shl i8 %343, 1
  %353 = and i8 %352, 62
  %354 = zext nneg i8 %353 to i16
  %355 = getelementptr inbounds [4 x i16], ptr %8, i64 0, i64 3
  store i16 %354, ptr %355, align 2, !tbaa !12
  %356 = load i8, ptr %351, align 1, !tbaa !7
  %357 = lshr i8 %356, 7
  %358 = or disjoint i8 %357, %353
  %359 = zext nneg i8 %358 to i16
  store i16 %359, ptr %355, align 2, !tbaa !12
  %360 = lshr i8 %356, 4
  %361 = and i8 %360, 7
  %362 = zext nneg i8 %361 to i16
  %363 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 39
  store i16 %362, ptr %363, align 2, !tbaa !12
  %364 = lshr i8 %356, 1
  %365 = and i8 %364, 7
  %366 = zext nneg i8 %365 to i16
  %367 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 40
  store i16 %366, ptr %367, align 16, !tbaa !12
  %368 = getelementptr inbounds i8, ptr %1, i64 29
  %369 = shl i8 %356, 2
  %370 = and i8 %369, 4
  %371 = zext nneg i8 %370 to i16
  %372 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 41
  store i16 %371, ptr %372, align 2, !tbaa !12
  %373 = load i8, ptr %368, align 1, !tbaa !7
  %374 = lshr i8 %373, 6
  %375 = or disjoint i8 %374, %370
  %376 = zext nneg i8 %375 to i16
  store i16 %376, ptr %372, align 2, !tbaa !12
  %377 = lshr i8 %373, 3
  %378 = and i8 %377, 7
  %379 = zext nneg i8 %378 to i16
  %380 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 42
  store i16 %379, ptr %380, align 4, !tbaa !12
  %381 = getelementptr inbounds i8, ptr %1, i64 30
  %382 = and i8 %373, 7
  %383 = zext nneg i8 %382 to i16
  %384 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 43
  store i16 %383, ptr %384, align 2, !tbaa !12
  %385 = load i8, ptr %381, align 1, !tbaa !7
  %386 = lshr i8 %385, 5
  %387 = zext nneg i8 %386 to i16
  %388 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 44
  store i16 %387, ptr %388, align 8, !tbaa !12
  %389 = lshr i8 %385, 2
  %390 = and i8 %389, 7
  %391 = zext nneg i8 %390 to i16
  %392 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 45
  store i16 %391, ptr %392, align 2, !tbaa !12
  %393 = getelementptr inbounds i8, ptr %1, i64 31
  %394 = shl i8 %385, 1
  %395 = and i8 %394, 6
  %396 = zext nneg i8 %395 to i16
  %397 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 46
  store i16 %396, ptr %397, align 4, !tbaa !12
  %398 = load i8, ptr %393, align 1, !tbaa !7
  %399 = lshr i8 %398, 7
  %400 = or disjoint i8 %399, %395
  %401 = zext nneg i8 %400 to i16
  store i16 %401, ptr %397, align 4, !tbaa !12
  %402 = lshr i8 %398, 4
  %403 = and i8 %402, 7
  %404 = zext nneg i8 %403 to i16
  %405 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 47
  store i16 %404, ptr %405, align 2, !tbaa !12
  %406 = lshr i8 %398, 1
  %407 = and i8 %406, 7
  %408 = zext nneg i8 %407 to i16
  %409 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 48
  store i16 %408, ptr %409, align 16, !tbaa !12
  %410 = getelementptr inbounds i8, ptr %1, i64 32
  %411 = shl i8 %398, 2
  %412 = and i8 %411, 4
  %413 = zext nneg i8 %412 to i16
  %414 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 49
  store i16 %413, ptr %414, align 2, !tbaa !12
  %415 = load i8, ptr %410, align 1, !tbaa !7
  %416 = lshr i8 %415, 6
  %417 = or disjoint i8 %416, %412
  %418 = zext nneg i8 %417 to i16
  store i16 %418, ptr %414, align 2, !tbaa !12
  %419 = lshr i8 %415, 3
  %420 = and i8 %419, 7
  %421 = zext nneg i8 %420 to i16
  %422 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 50
  store i16 %421, ptr %422, align 4, !tbaa !12
  %423 = and i8 %415, 7
  %424 = zext nneg i8 %423 to i16
  %425 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 51
  store i16 %424, ptr %425, align 2, !tbaa !12
  call void @Gsm_Decoder(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef %2) #26
  br label %426

426:                                              ; preds = %13, %3
  %427 = phi i32 [ 0, %13 ], [ -1, %3 ]
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %9) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #26
  ret i32 %427
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @gsm_destroy(ptr noundef %0) local_unnamed_addr #11 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %1
  tail call void @free(ptr noundef %0) #26
  br label %4

4:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nounwind uwtable
define dso_local void @gsm_encode(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #2 {
  %4 = alloca [8 x i16], align 16
  %5 = alloca [4 x i16], align 2
  %6 = alloca [4 x i16], align 2
  %7 = alloca [4 x i16], align 2
  %8 = alloca [4 x i16], align 2
  %9 = alloca [52 x i16], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #26
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %9) #26
  call void @Gsm_Coder(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef nonnull %8, ptr noundef nonnull %9) #26
  %10 = load i16, ptr %4, align 16, !tbaa !12
  %11 = trunc i16 %10 to i8
  %12 = lshr i8 %11, 2
  %13 = and i8 %12, 15
  %14 = or disjoint i8 %13, -48
  %15 = getelementptr inbounds i8, ptr %2, i64 1
  store i8 %14, ptr %2, align 1, !tbaa !7
  %16 = shl i16 %10, 6
  %17 = getelementptr inbounds [8 x i16], ptr %4, i64 0, i64 1
  %18 = load i16, ptr %17, align 2, !tbaa !12
  %19 = and i16 %18, 63
  %20 = or disjoint i16 %19, %16
  %21 = trunc i16 %20 to i8
  %22 = getelementptr inbounds i8, ptr %2, i64 2
  store i8 %21, ptr %15, align 1, !tbaa !7
  %23 = getelementptr inbounds [8 x i16], ptr %4, i64 0, i64 2
  %24 = load i16, ptr %23, align 4, !tbaa !12
  %25 = shl i16 %24, 3
  %26 = getelementptr inbounds [8 x i16], ptr %4, i64 0, i64 3
  %27 = load i16, ptr %26, align 2, !tbaa !12
  %28 = lshr i16 %27, 2
  %29 = and i16 %28, 7
  %30 = or disjoint i16 %29, %25
  %31 = trunc i16 %30 to i8
  %32 = getelementptr inbounds i8, ptr %2, i64 3
  store i8 %31, ptr %22, align 1, !tbaa !7
  %33 = shl i16 %27, 6
  %34 = getelementptr inbounds [8 x i16], ptr %4, i64 0, i64 4
  %35 = load i16, ptr %34, align 8, !tbaa !12
  %36 = shl i16 %35, 2
  %37 = and i16 %36, 60
  %38 = or disjoint i16 %37, %33
  %39 = getelementptr inbounds [8 x i16], ptr %4, i64 0, i64 5
  %40 = load i16, ptr %39, align 2, !tbaa !12
  %41 = lshr i16 %40, 2
  %42 = and i16 %41, 3
  %43 = or disjoint i16 %38, %42
  %44 = trunc i16 %43 to i8
  %45 = getelementptr inbounds i8, ptr %2, i64 4
  store i8 %44, ptr %32, align 1, !tbaa !7
  %46 = shl i16 %40, 6
  %47 = getelementptr inbounds [8 x i16], ptr %4, i64 0, i64 6
  %48 = load i16, ptr %47, align 4, !tbaa !12
  %49 = shl i16 %48, 3
  %50 = and i16 %49, 56
  %51 = or disjoint i16 %50, %46
  %52 = getelementptr inbounds [8 x i16], ptr %4, i64 0, i64 7
  %53 = load i16, ptr %52, align 2, !tbaa !12
  %54 = and i16 %53, 7
  %55 = or disjoint i16 %51, %54
  %56 = trunc i16 %55 to i8
  %57 = getelementptr inbounds i8, ptr %2, i64 5
  store i8 %56, ptr %45, align 1, !tbaa !7
  %58 = load i16, ptr %5, align 2, !tbaa !12
  %59 = shl i16 %58, 1
  %60 = load i16, ptr %7, align 2, !tbaa !12
  %61 = lshr i16 %60, 1
  %62 = and i16 %61, 1
  %63 = or disjoint i16 %62, %59
  %64 = trunc i16 %63 to i8
  %65 = getelementptr inbounds i8, ptr %2, i64 6
  store i8 %64, ptr %57, align 1, !tbaa !7
  %66 = shl i16 %60, 7
  %67 = load i16, ptr %6, align 2, !tbaa !12
  %68 = shl i16 %67, 5
  %69 = and i16 %68, 96
  %70 = or disjoint i16 %69, %66
  %71 = load i16, ptr %8, align 2, !tbaa !12
  %72 = lshr i16 %71, 1
  %73 = and i16 %72, 31
  %74 = or disjoint i16 %70, %73
  %75 = trunc i16 %74 to i8
  %76 = getelementptr inbounds i8, ptr %2, i64 7
  store i8 %75, ptr %65, align 1, !tbaa !7
  %77 = shl i16 %71, 7
  %78 = load i16, ptr %9, align 16, !tbaa !12
  %79 = shl i16 %78, 4
  %80 = and i16 %79, 112
  %81 = or disjoint i16 %80, %77
  %82 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 1
  %83 = load i16, ptr %82, align 2, !tbaa !12
  %84 = shl i16 %83, 1
  %85 = and i16 %84, 14
  %86 = or disjoint i16 %81, %85
  %87 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 2
  %88 = load i16, ptr %87, align 4, !tbaa !12
  %89 = lshr i16 %88, 2
  %90 = and i16 %89, 1
  %91 = or disjoint i16 %86, %90
  %92 = trunc i16 %91 to i8
  %93 = getelementptr inbounds i8, ptr %2, i64 8
  store i8 %92, ptr %76, align 1, !tbaa !7
  %94 = shl i16 %88, 6
  %95 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 3
  %96 = load i16, ptr %95, align 2, !tbaa !12
  %97 = shl i16 %96, 3
  %98 = and i16 %97, 56
  %99 = or disjoint i16 %98, %94
  %100 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 4
  %101 = load i16, ptr %100, align 8, !tbaa !12
  %102 = and i16 %101, 7
  %103 = or disjoint i16 %99, %102
  %104 = trunc i16 %103 to i8
  %105 = getelementptr inbounds i8, ptr %2, i64 9
  store i8 %104, ptr %93, align 1, !tbaa !7
  %106 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 5
  %107 = load i16, ptr %106, align 2, !tbaa !12
  %108 = shl i16 %107, 5
  %109 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 6
  %110 = load i16, ptr %109, align 4, !tbaa !12
  %111 = shl i16 %110, 2
  %112 = and i16 %111, 28
  %113 = or disjoint i16 %112, %108
  %114 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 7
  %115 = load i16, ptr %114, align 2, !tbaa !12
  %116 = lshr i16 %115, 1
  %117 = and i16 %116, 3
  %118 = or disjoint i16 %113, %117
  %119 = trunc i16 %118 to i8
  %120 = getelementptr inbounds i8, ptr %2, i64 10
  store i8 %119, ptr %105, align 1, !tbaa !7
  %121 = shl i16 %115, 7
  %122 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 8
  %123 = load i16, ptr %122, align 16, !tbaa !12
  %124 = shl i16 %123, 4
  %125 = and i16 %124, 112
  %126 = or disjoint i16 %125, %121
  %127 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 9
  %128 = load i16, ptr %127, align 2, !tbaa !12
  %129 = shl i16 %128, 1
  %130 = and i16 %129, 14
  %131 = or disjoint i16 %126, %130
  %132 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 10
  %133 = load i16, ptr %132, align 4, !tbaa !12
  %134 = lshr i16 %133, 2
  %135 = and i16 %134, 1
  %136 = or disjoint i16 %131, %135
  %137 = trunc i16 %136 to i8
  %138 = getelementptr inbounds i8, ptr %2, i64 11
  store i8 %137, ptr %120, align 1, !tbaa !7
  %139 = shl i16 %133, 6
  %140 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 11
  %141 = load i16, ptr %140, align 2, !tbaa !12
  %142 = shl i16 %141, 3
  %143 = and i16 %142, 56
  %144 = or disjoint i16 %143, %139
  %145 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 12
  %146 = load i16, ptr %145, align 8, !tbaa !12
  %147 = and i16 %146, 7
  %148 = or disjoint i16 %144, %147
  %149 = trunc i16 %148 to i8
  %150 = getelementptr inbounds i8, ptr %2, i64 12
  store i8 %149, ptr %138, align 1, !tbaa !7
  %151 = getelementptr inbounds [4 x i16], ptr %5, i64 0, i64 1
  %152 = load i16, ptr %151, align 2, !tbaa !12
  %153 = shl i16 %152, 1
  %154 = getelementptr inbounds [4 x i16], ptr %7, i64 0, i64 1
  %155 = load i16, ptr %154, align 2, !tbaa !12
  %156 = lshr i16 %155, 1
  %157 = and i16 %156, 1
  %158 = or disjoint i16 %157, %153
  %159 = trunc i16 %158 to i8
  %160 = getelementptr inbounds i8, ptr %2, i64 13
  store i8 %159, ptr %150, align 1, !tbaa !7
  %161 = shl i16 %155, 7
  %162 = getelementptr inbounds [4 x i16], ptr %6, i64 0, i64 1
  %163 = load i16, ptr %162, align 2, !tbaa !12
  %164 = shl i16 %163, 5
  %165 = and i16 %164, 96
  %166 = or disjoint i16 %165, %161
  %167 = getelementptr inbounds [4 x i16], ptr %8, i64 0, i64 1
  %168 = load i16, ptr %167, align 2, !tbaa !12
  %169 = lshr i16 %168, 1
  %170 = and i16 %169, 31
  %171 = or disjoint i16 %166, %170
  %172 = trunc i16 %171 to i8
  %173 = getelementptr inbounds i8, ptr %2, i64 14
  store i8 %172, ptr %160, align 1, !tbaa !7
  %174 = shl i16 %168, 7
  %175 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 13
  %176 = load i16, ptr %175, align 2, !tbaa !12
  %177 = shl i16 %176, 4
  %178 = and i16 %177, 112
  %179 = or disjoint i16 %178, %174
  %180 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 14
  %181 = load i16, ptr %180, align 4, !tbaa !12
  %182 = shl i16 %181, 1
  %183 = and i16 %182, 14
  %184 = or disjoint i16 %179, %183
  %185 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 15
  %186 = load i16, ptr %185, align 2, !tbaa !12
  %187 = lshr i16 %186, 2
  %188 = and i16 %187, 1
  %189 = or disjoint i16 %184, %188
  %190 = trunc i16 %189 to i8
  %191 = getelementptr inbounds i8, ptr %2, i64 15
  store i8 %190, ptr %173, align 1, !tbaa !7
  %192 = shl i16 %186, 6
  %193 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 16
  %194 = load i16, ptr %193, align 16, !tbaa !12
  %195 = shl i16 %194, 3
  %196 = and i16 %195, 56
  %197 = or disjoint i16 %196, %192
  %198 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 17
  %199 = load i16, ptr %198, align 2, !tbaa !12
  %200 = and i16 %199, 7
  %201 = or disjoint i16 %197, %200
  %202 = trunc i16 %201 to i8
  %203 = getelementptr inbounds i8, ptr %2, i64 16
  store i8 %202, ptr %191, align 1, !tbaa !7
  %204 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 18
  %205 = load i16, ptr %204, align 4, !tbaa !12
  %206 = shl i16 %205, 5
  %207 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 19
  %208 = load i16, ptr %207, align 2, !tbaa !12
  %209 = shl i16 %208, 2
  %210 = and i16 %209, 28
  %211 = or disjoint i16 %210, %206
  %212 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 20
  %213 = load i16, ptr %212, align 8, !tbaa !12
  %214 = lshr i16 %213, 1
  %215 = and i16 %214, 3
  %216 = or disjoint i16 %211, %215
  %217 = trunc i16 %216 to i8
  %218 = getelementptr inbounds i8, ptr %2, i64 17
  store i8 %217, ptr %203, align 1, !tbaa !7
  %219 = shl i16 %213, 7
  %220 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 21
  %221 = load i16, ptr %220, align 2, !tbaa !12
  %222 = shl i16 %221, 4
  %223 = and i16 %222, 112
  %224 = or disjoint i16 %223, %219
  %225 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 22
  %226 = load i16, ptr %225, align 4, !tbaa !12
  %227 = shl i16 %226, 1
  %228 = and i16 %227, 14
  %229 = or disjoint i16 %224, %228
  %230 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 23
  %231 = load i16, ptr %230, align 2, !tbaa !12
  %232 = lshr i16 %231, 2
  %233 = and i16 %232, 1
  %234 = or disjoint i16 %229, %233
  %235 = trunc i16 %234 to i8
  %236 = getelementptr inbounds i8, ptr %2, i64 18
  store i8 %235, ptr %218, align 1, !tbaa !7
  %237 = shl i16 %231, 6
  %238 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 24
  %239 = load i16, ptr %238, align 16, !tbaa !12
  %240 = shl i16 %239, 3
  %241 = and i16 %240, 56
  %242 = or disjoint i16 %241, %237
  %243 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 25
  %244 = load i16, ptr %243, align 2, !tbaa !12
  %245 = and i16 %244, 7
  %246 = or disjoint i16 %242, %245
  %247 = trunc i16 %246 to i8
  %248 = getelementptr inbounds i8, ptr %2, i64 19
  store i8 %247, ptr %236, align 1, !tbaa !7
  %249 = getelementptr inbounds [4 x i16], ptr %5, i64 0, i64 2
  %250 = load i16, ptr %249, align 2, !tbaa !12
  %251 = shl i16 %250, 1
  %252 = getelementptr inbounds [4 x i16], ptr %7, i64 0, i64 2
  %253 = load i16, ptr %252, align 2, !tbaa !12
  %254 = lshr i16 %253, 1
  %255 = and i16 %254, 1
  %256 = or disjoint i16 %255, %251
  %257 = trunc i16 %256 to i8
  %258 = getelementptr inbounds i8, ptr %2, i64 20
  store i8 %257, ptr %248, align 1, !tbaa !7
  %259 = shl i16 %253, 7
  %260 = getelementptr inbounds [4 x i16], ptr %6, i64 0, i64 2
  %261 = load i16, ptr %260, align 2, !tbaa !12
  %262 = shl i16 %261, 5
  %263 = and i16 %262, 96
  %264 = or disjoint i16 %263, %259
  %265 = getelementptr inbounds [4 x i16], ptr %8, i64 0, i64 2
  %266 = load i16, ptr %265, align 2, !tbaa !12
  %267 = lshr i16 %266, 1
  %268 = and i16 %267, 31
  %269 = or disjoint i16 %264, %268
  %270 = trunc i16 %269 to i8
  %271 = getelementptr inbounds i8, ptr %2, i64 21
  store i8 %270, ptr %258, align 1, !tbaa !7
  %272 = shl i16 %266, 7
  %273 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 26
  %274 = load i16, ptr %273, align 4, !tbaa !12
  %275 = shl i16 %274, 4
  %276 = and i16 %275, 112
  %277 = or disjoint i16 %276, %272
  %278 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 27
  %279 = load i16, ptr %278, align 2, !tbaa !12
  %280 = shl i16 %279, 1
  %281 = and i16 %280, 14
  %282 = or disjoint i16 %277, %281
  %283 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 28
  %284 = load i16, ptr %283, align 8, !tbaa !12
  %285 = lshr i16 %284, 2
  %286 = and i16 %285, 1
  %287 = or disjoint i16 %282, %286
  %288 = trunc i16 %287 to i8
  %289 = getelementptr inbounds i8, ptr %2, i64 22
  store i8 %288, ptr %271, align 1, !tbaa !7
  %290 = shl i16 %284, 6
  %291 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 29
  %292 = load i16, ptr %291, align 2, !tbaa !12
  %293 = shl i16 %292, 3
  %294 = and i16 %293, 56
  %295 = or disjoint i16 %294, %290
  %296 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 30
  %297 = load i16, ptr %296, align 4, !tbaa !12
  %298 = and i16 %297, 7
  %299 = or disjoint i16 %295, %298
  %300 = trunc i16 %299 to i8
  %301 = getelementptr inbounds i8, ptr %2, i64 23
  store i8 %300, ptr %289, align 1, !tbaa !7
  %302 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 31
  %303 = load i16, ptr %302, align 2, !tbaa !12
  %304 = shl i16 %303, 5
  %305 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 32
  %306 = load i16, ptr %305, align 16, !tbaa !12
  %307 = shl i16 %306, 2
  %308 = and i16 %307, 28
  %309 = or disjoint i16 %308, %304
  %310 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 33
  %311 = load i16, ptr %310, align 2, !tbaa !12
  %312 = lshr i16 %311, 1
  %313 = and i16 %312, 3
  %314 = or disjoint i16 %309, %313
  %315 = trunc i16 %314 to i8
  %316 = getelementptr inbounds i8, ptr %2, i64 24
  store i8 %315, ptr %301, align 1, !tbaa !7
  %317 = shl i16 %311, 7
  %318 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 34
  %319 = load i16, ptr %318, align 4, !tbaa !12
  %320 = shl i16 %319, 4
  %321 = and i16 %320, 112
  %322 = or disjoint i16 %321, %317
  %323 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 35
  %324 = load i16, ptr %323, align 2, !tbaa !12
  %325 = shl i16 %324, 1
  %326 = and i16 %325, 14
  %327 = or disjoint i16 %322, %326
  %328 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 36
  %329 = load i16, ptr %328, align 8, !tbaa !12
  %330 = lshr i16 %329, 2
  %331 = and i16 %330, 1
  %332 = or disjoint i16 %327, %331
  %333 = trunc i16 %332 to i8
  %334 = getelementptr inbounds i8, ptr %2, i64 25
  store i8 %333, ptr %316, align 1, !tbaa !7
  %335 = shl i16 %329, 6
  %336 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 37
  %337 = load i16, ptr %336, align 2, !tbaa !12
  %338 = shl i16 %337, 3
  %339 = and i16 %338, 56
  %340 = or disjoint i16 %339, %335
  %341 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 38
  %342 = load i16, ptr %341, align 4, !tbaa !12
  %343 = and i16 %342, 7
  %344 = or disjoint i16 %340, %343
  %345 = trunc i16 %344 to i8
  %346 = getelementptr inbounds i8, ptr %2, i64 26
  store i8 %345, ptr %334, align 1, !tbaa !7
  %347 = getelementptr inbounds [4 x i16], ptr %5, i64 0, i64 3
  %348 = load i16, ptr %347, align 2, !tbaa !12
  %349 = shl i16 %348, 1
  %350 = getelementptr inbounds [4 x i16], ptr %7, i64 0, i64 3
  %351 = load i16, ptr %350, align 2, !tbaa !12
  %352 = lshr i16 %351, 1
  %353 = and i16 %352, 1
  %354 = or disjoint i16 %353, %349
  %355 = trunc i16 %354 to i8
  %356 = getelementptr inbounds i8, ptr %2, i64 27
  store i8 %355, ptr %346, align 1, !tbaa !7
  %357 = shl i16 %351, 7
  %358 = getelementptr inbounds [4 x i16], ptr %6, i64 0, i64 3
  %359 = load i16, ptr %358, align 2, !tbaa !12
  %360 = shl i16 %359, 5
  %361 = and i16 %360, 96
  %362 = or disjoint i16 %361, %357
  %363 = getelementptr inbounds [4 x i16], ptr %8, i64 0, i64 3
  %364 = load i16, ptr %363, align 2, !tbaa !12
  %365 = lshr i16 %364, 1
  %366 = and i16 %365, 31
  %367 = or disjoint i16 %362, %366
  %368 = trunc i16 %367 to i8
  %369 = getelementptr inbounds i8, ptr %2, i64 28
  store i8 %368, ptr %356, align 1, !tbaa !7
  %370 = shl i16 %364, 7
  %371 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 39
  %372 = load i16, ptr %371, align 2, !tbaa !12
  %373 = shl i16 %372, 4
  %374 = and i16 %373, 112
  %375 = or disjoint i16 %374, %370
  %376 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 40
  %377 = load i16, ptr %376, align 16, !tbaa !12
  %378 = shl i16 %377, 1
  %379 = and i16 %378, 14
  %380 = or disjoint i16 %375, %379
  %381 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 41
  %382 = load i16, ptr %381, align 2, !tbaa !12
  %383 = lshr i16 %382, 2
  %384 = and i16 %383, 1
  %385 = or disjoint i16 %380, %384
  %386 = trunc i16 %385 to i8
  %387 = getelementptr inbounds i8, ptr %2, i64 29
  store i8 %386, ptr %369, align 1, !tbaa !7
  %388 = shl i16 %382, 6
  %389 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 42
  %390 = load i16, ptr %389, align 4, !tbaa !12
  %391 = shl i16 %390, 3
  %392 = and i16 %391, 56
  %393 = or disjoint i16 %392, %388
  %394 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 43
  %395 = load i16, ptr %394, align 2, !tbaa !12
  %396 = and i16 %395, 7
  %397 = or disjoint i16 %393, %396
  %398 = trunc i16 %397 to i8
  %399 = getelementptr inbounds i8, ptr %2, i64 30
  store i8 %398, ptr %387, align 1, !tbaa !7
  %400 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 44
  %401 = load i16, ptr %400, align 8, !tbaa !12
  %402 = shl i16 %401, 5
  %403 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 45
  %404 = load i16, ptr %403, align 2, !tbaa !12
  %405 = shl i16 %404, 2
  %406 = and i16 %405, 28
  %407 = or disjoint i16 %406, %402
  %408 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 46
  %409 = load i16, ptr %408, align 4, !tbaa !12
  %410 = lshr i16 %409, 1
  %411 = and i16 %410, 3
  %412 = or disjoint i16 %407, %411
  %413 = trunc i16 %412 to i8
  %414 = getelementptr inbounds i8, ptr %2, i64 31
  store i8 %413, ptr %399, align 1, !tbaa !7
  %415 = shl i16 %409, 7
  %416 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 47
  %417 = load i16, ptr %416, align 2, !tbaa !12
  %418 = shl i16 %417, 4
  %419 = and i16 %418, 112
  %420 = or disjoint i16 %419, %415
  %421 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 48
  %422 = load i16, ptr %421, align 16, !tbaa !12
  %423 = shl i16 %422, 1
  %424 = and i16 %423, 14
  %425 = or disjoint i16 %420, %424
  %426 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 49
  %427 = load i16, ptr %426, align 2, !tbaa !12
  %428 = lshr i16 %427, 2
  %429 = and i16 %428, 1
  %430 = or disjoint i16 %425, %429
  %431 = trunc i16 %430 to i8
  %432 = getelementptr inbounds i8, ptr %2, i64 32
  store i8 %431, ptr %414, align 1, !tbaa !7
  %433 = shl i16 %427, 6
  %434 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 50
  %435 = load i16, ptr %434, align 4, !tbaa !12
  %436 = shl i16 %435, 3
  %437 = and i16 %436, 56
  %438 = or disjoint i16 %437, %433
  %439 = getelementptr inbounds [52 x i16], ptr %9, i64 0, i64 51
  %440 = load i16, ptr %439, align 2, !tbaa !12
  %441 = and i16 %440, 7
  %442 = or disjoint i16 %438, %441
  %443 = trunc i16 %442 to i8
  store i8 %443, ptr %432, align 1, !tbaa !7
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %9) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #26
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @gsm_explode(ptr nocapture noundef readnone %0, ptr noundef readonly %1, ptr noundef writeonly %2) local_unnamed_addr #13 {
  %4 = load i8, ptr %1, align 1, !tbaa !7
  %5 = and i8 %4, -16
  %6 = icmp eq i8 %5, -48
  br i1 %6, label %7, label %491

7:                                                ; preds = %3
  %8 = getelementptr inbounds i8, ptr %1, i64 1
  %9 = zext i8 %4 to i16
  %10 = shl nuw nsw i16 %9, 2
  %11 = and i16 %10, 60
  store i16 %11, ptr %2, align 2, !tbaa !12
  %12 = load i8, ptr %8, align 1, !tbaa !7
  %13 = lshr i8 %12, 6
  %14 = zext nneg i8 %13 to i16
  %15 = or disjoint i16 %11, %14
  store i16 %15, ptr %2, align 2, !tbaa !12
  %16 = getelementptr inbounds i8, ptr %1, i64 2
  %17 = load i8, ptr %8, align 1, !tbaa !7
  %18 = and i8 %17, 63
  %19 = zext nneg i8 %18 to i16
  %20 = getelementptr inbounds i16, ptr %2, i64 1
  store i16 %19, ptr %20, align 2, !tbaa !12
  %21 = load i8, ptr %16, align 1, !tbaa !7
  %22 = lshr i8 %21, 3
  %23 = zext nneg i8 %22 to i16
  %24 = getelementptr inbounds i16, ptr %2, i64 2
  store i16 %23, ptr %24, align 2, !tbaa !12
  %25 = getelementptr inbounds i8, ptr %1, i64 3
  %26 = load i8, ptr %16, align 1, !tbaa !7
  %27 = shl i8 %26, 2
  %28 = and i8 %27, 28
  %29 = zext nneg i8 %28 to i16
  %30 = getelementptr inbounds i16, ptr %2, i64 3
  store i16 %29, ptr %30, align 2, !tbaa !12
  %31 = load i8, ptr %25, align 1, !tbaa !7
  %32 = lshr i8 %31, 6
  %33 = or disjoint i8 %32, %28
  %34 = zext nneg i8 %33 to i16
  store i16 %34, ptr %30, align 2, !tbaa !12
  %35 = load i8, ptr %25, align 1, !tbaa !7
  %36 = lshr i8 %35, 2
  %37 = and i8 %36, 15
  %38 = zext nneg i8 %37 to i16
  %39 = getelementptr inbounds i16, ptr %2, i64 4
  store i16 %38, ptr %39, align 2, !tbaa !12
  %40 = getelementptr inbounds i8, ptr %1, i64 4
  %41 = load i8, ptr %25, align 1, !tbaa !7
  %42 = shl i8 %41, 2
  %43 = and i8 %42, 12
  %44 = zext nneg i8 %43 to i16
  %45 = getelementptr inbounds i16, ptr %2, i64 5
  store i16 %44, ptr %45, align 2, !tbaa !12
  %46 = load i8, ptr %40, align 1, !tbaa !7
  %47 = lshr i8 %46, 6
  %48 = or disjoint i8 %47, %43
  %49 = zext nneg i8 %48 to i16
  store i16 %49, ptr %45, align 2, !tbaa !12
  %50 = load i8, ptr %40, align 1, !tbaa !7
  %51 = lshr i8 %50, 3
  %52 = and i8 %51, 7
  %53 = zext nneg i8 %52 to i16
  %54 = getelementptr inbounds i16, ptr %2, i64 6
  store i16 %53, ptr %54, align 2, !tbaa !12
  %55 = getelementptr inbounds i8, ptr %1, i64 5
  %56 = load i8, ptr %40, align 1, !tbaa !7
  %57 = and i8 %56, 7
  %58 = zext nneg i8 %57 to i16
  %59 = getelementptr inbounds i16, ptr %2, i64 7
  store i16 %58, ptr %59, align 2, !tbaa !12
  %60 = load i8, ptr %55, align 1, !tbaa !7
  %61 = lshr i8 %60, 1
  %62 = zext nneg i8 %61 to i16
  %63 = getelementptr inbounds i16, ptr %2, i64 8
  store i16 %62, ptr %63, align 2, !tbaa !12
  %64 = getelementptr inbounds i8, ptr %1, i64 6
  %65 = load i8, ptr %55, align 1, !tbaa !7
  %66 = shl i8 %65, 1
  %67 = and i8 %66, 2
  %68 = zext nneg i8 %67 to i16
  %69 = getelementptr inbounds i16, ptr %2, i64 9
  store i16 %68, ptr %69, align 2, !tbaa !12
  %70 = load i8, ptr %64, align 1, !tbaa !7
  %71 = lshr i8 %70, 7
  %72 = or disjoint i8 %71, %67
  %73 = zext nneg i8 %72 to i16
  store i16 %73, ptr %69, align 2, !tbaa !12
  %74 = load i8, ptr %64, align 1, !tbaa !7
  %75 = lshr i8 %74, 5
  %76 = and i8 %75, 3
  %77 = zext nneg i8 %76 to i16
  %78 = getelementptr inbounds i16, ptr %2, i64 10
  store i16 %77, ptr %78, align 2, !tbaa !12
  %79 = getelementptr inbounds i8, ptr %1, i64 7
  %80 = load i8, ptr %64, align 1, !tbaa !7
  %81 = shl i8 %80, 1
  %82 = and i8 %81, 62
  %83 = zext nneg i8 %82 to i16
  %84 = getelementptr inbounds i16, ptr %2, i64 11
  store i16 %83, ptr %84, align 2, !tbaa !12
  %85 = load i8, ptr %79, align 1, !tbaa !7
  %86 = lshr i8 %85, 7
  %87 = or disjoint i8 %86, %82
  %88 = zext nneg i8 %87 to i16
  store i16 %88, ptr %84, align 2, !tbaa !12
  %89 = load i8, ptr %79, align 1, !tbaa !7
  %90 = lshr i8 %89, 4
  %91 = and i8 %90, 7
  %92 = zext nneg i8 %91 to i16
  %93 = getelementptr inbounds i16, ptr %2, i64 12
  store i16 %92, ptr %93, align 2, !tbaa !12
  %94 = load i8, ptr %79, align 1, !tbaa !7
  %95 = lshr i8 %94, 1
  %96 = and i8 %95, 7
  %97 = zext nneg i8 %96 to i16
  %98 = getelementptr inbounds i16, ptr %2, i64 13
  store i16 %97, ptr %98, align 2, !tbaa !12
  %99 = getelementptr inbounds i8, ptr %1, i64 8
  %100 = load i8, ptr %79, align 1, !tbaa !7
  %101 = shl i8 %100, 2
  %102 = and i8 %101, 4
  %103 = zext nneg i8 %102 to i16
  %104 = getelementptr inbounds i16, ptr %2, i64 14
  store i16 %103, ptr %104, align 2, !tbaa !12
  %105 = load i8, ptr %99, align 1, !tbaa !7
  %106 = lshr i8 %105, 6
  %107 = or disjoint i8 %106, %102
  %108 = zext nneg i8 %107 to i16
  store i16 %108, ptr %104, align 2, !tbaa !12
  %109 = load i8, ptr %99, align 1, !tbaa !7
  %110 = lshr i8 %109, 3
  %111 = and i8 %110, 7
  %112 = zext nneg i8 %111 to i16
  %113 = getelementptr inbounds i16, ptr %2, i64 15
  store i16 %112, ptr %113, align 2, !tbaa !12
  %114 = getelementptr inbounds i8, ptr %1, i64 9
  %115 = load i8, ptr %99, align 1, !tbaa !7
  %116 = and i8 %115, 7
  %117 = zext nneg i8 %116 to i16
  %118 = getelementptr inbounds i16, ptr %2, i64 16
  store i16 %117, ptr %118, align 2, !tbaa !12
  %119 = load i8, ptr %114, align 1, !tbaa !7
  %120 = lshr i8 %119, 5
  %121 = zext nneg i8 %120 to i16
  %122 = getelementptr inbounds i16, ptr %2, i64 17
  store i16 %121, ptr %122, align 2, !tbaa !12
  %123 = load i8, ptr %114, align 1, !tbaa !7
  %124 = lshr i8 %123, 2
  %125 = and i8 %124, 7
  %126 = zext nneg i8 %125 to i16
  %127 = getelementptr inbounds i16, ptr %2, i64 18
  store i16 %126, ptr %127, align 2, !tbaa !12
  %128 = getelementptr inbounds i8, ptr %1, i64 10
  %129 = load i8, ptr %114, align 1, !tbaa !7
  %130 = shl i8 %129, 1
  %131 = and i8 %130, 6
  %132 = zext nneg i8 %131 to i16
  %133 = getelementptr inbounds i16, ptr %2, i64 19
  store i16 %132, ptr %133, align 2, !tbaa !12
  %134 = load i8, ptr %128, align 1, !tbaa !7
  %135 = lshr i8 %134, 7
  %136 = or disjoint i8 %135, %131
  %137 = zext nneg i8 %136 to i16
  store i16 %137, ptr %133, align 2, !tbaa !12
  %138 = load i8, ptr %128, align 1, !tbaa !7
  %139 = lshr i8 %138, 4
  %140 = and i8 %139, 7
  %141 = zext nneg i8 %140 to i16
  %142 = getelementptr inbounds i16, ptr %2, i64 20
  store i16 %141, ptr %142, align 2, !tbaa !12
  %143 = load i8, ptr %128, align 1, !tbaa !7
  %144 = lshr i8 %143, 1
  %145 = and i8 %144, 7
  %146 = zext nneg i8 %145 to i16
  %147 = getelementptr inbounds i16, ptr %2, i64 21
  store i16 %146, ptr %147, align 2, !tbaa !12
  %148 = getelementptr inbounds i8, ptr %1, i64 11
  %149 = load i8, ptr %128, align 1, !tbaa !7
  %150 = shl i8 %149, 2
  %151 = and i8 %150, 4
  %152 = zext nneg i8 %151 to i16
  %153 = getelementptr inbounds i16, ptr %2, i64 22
  store i16 %152, ptr %153, align 2, !tbaa !12
  %154 = load i8, ptr %148, align 1, !tbaa !7
  %155 = lshr i8 %154, 6
  %156 = or disjoint i8 %155, %151
  %157 = zext nneg i8 %156 to i16
  store i16 %157, ptr %153, align 2, !tbaa !12
  %158 = load i8, ptr %148, align 1, !tbaa !7
  %159 = lshr i8 %158, 3
  %160 = and i8 %159, 7
  %161 = zext nneg i8 %160 to i16
  %162 = getelementptr inbounds i16, ptr %2, i64 23
  store i16 %161, ptr %162, align 2, !tbaa !12
  %163 = getelementptr inbounds i8, ptr %1, i64 12
  %164 = load i8, ptr %148, align 1, !tbaa !7
  %165 = and i8 %164, 7
  %166 = zext nneg i8 %165 to i16
  %167 = getelementptr inbounds i16, ptr %2, i64 24
  store i16 %166, ptr %167, align 2, !tbaa !12
  %168 = load i8, ptr %163, align 1, !tbaa !7
  %169 = lshr i8 %168, 1
  %170 = zext nneg i8 %169 to i16
  %171 = getelementptr inbounds i16, ptr %2, i64 25
  store i16 %170, ptr %171, align 2, !tbaa !12
  %172 = getelementptr inbounds i8, ptr %1, i64 13
  %173 = load i8, ptr %163, align 1, !tbaa !7
  %174 = shl i8 %173, 1
  %175 = and i8 %174, 2
  %176 = zext nneg i8 %175 to i16
  %177 = getelementptr inbounds i16, ptr %2, i64 26
  store i16 %176, ptr %177, align 2, !tbaa !12
  %178 = load i8, ptr %172, align 1, !tbaa !7
  %179 = lshr i8 %178, 7
  %180 = or disjoint i8 %179, %175
  %181 = zext nneg i8 %180 to i16
  store i16 %181, ptr %177, align 2, !tbaa !12
  %182 = load i8, ptr %172, align 1, !tbaa !7
  %183 = lshr i8 %182, 5
  %184 = and i8 %183, 3
  %185 = zext nneg i8 %184 to i16
  %186 = getelementptr inbounds i16, ptr %2, i64 27
  store i16 %185, ptr %186, align 2, !tbaa !12
  %187 = getelementptr inbounds i8, ptr %1, i64 14
  %188 = load i8, ptr %172, align 1, !tbaa !7
  %189 = shl i8 %188, 1
  %190 = and i8 %189, 62
  %191 = zext nneg i8 %190 to i16
  %192 = getelementptr inbounds i16, ptr %2, i64 28
  store i16 %191, ptr %192, align 2, !tbaa !12
  %193 = load i8, ptr %187, align 1, !tbaa !7
  %194 = lshr i8 %193, 7
  %195 = or disjoint i8 %194, %190
  %196 = zext nneg i8 %195 to i16
  store i16 %196, ptr %192, align 2, !tbaa !12
  %197 = load i8, ptr %187, align 1, !tbaa !7
  %198 = lshr i8 %197, 4
  %199 = and i8 %198, 7
  %200 = zext nneg i8 %199 to i16
  %201 = getelementptr inbounds i16, ptr %2, i64 29
  store i16 %200, ptr %201, align 2, !tbaa !12
  %202 = load i8, ptr %187, align 1, !tbaa !7
  %203 = lshr i8 %202, 1
  %204 = and i8 %203, 7
  %205 = zext nneg i8 %204 to i16
  %206 = getelementptr inbounds i16, ptr %2, i64 30
  store i16 %205, ptr %206, align 2, !tbaa !12
  %207 = getelementptr inbounds i8, ptr %1, i64 15
  %208 = load i8, ptr %187, align 1, !tbaa !7
  %209 = shl i8 %208, 2
  %210 = and i8 %209, 4
  %211 = zext nneg i8 %210 to i16
  %212 = getelementptr inbounds i16, ptr %2, i64 31
  store i16 %211, ptr %212, align 2, !tbaa !12
  %213 = load i8, ptr %207, align 1, !tbaa !7
  %214 = lshr i8 %213, 6
  %215 = or disjoint i8 %214, %210
  %216 = zext nneg i8 %215 to i16
  store i16 %216, ptr %212, align 2, !tbaa !12
  %217 = load i8, ptr %207, align 1, !tbaa !7
  %218 = lshr i8 %217, 3
  %219 = and i8 %218, 7
  %220 = zext nneg i8 %219 to i16
  %221 = getelementptr inbounds i16, ptr %2, i64 32
  store i16 %220, ptr %221, align 2, !tbaa !12
  %222 = getelementptr inbounds i8, ptr %1, i64 16
  %223 = load i8, ptr %207, align 1, !tbaa !7
  %224 = and i8 %223, 7
  %225 = zext nneg i8 %224 to i16
  %226 = getelementptr inbounds i16, ptr %2, i64 33
  store i16 %225, ptr %226, align 2, !tbaa !12
  %227 = load i8, ptr %222, align 1, !tbaa !7
  %228 = lshr i8 %227, 5
  %229 = zext nneg i8 %228 to i16
  %230 = getelementptr inbounds i16, ptr %2, i64 34
  store i16 %229, ptr %230, align 2, !tbaa !12
  %231 = load i8, ptr %222, align 1, !tbaa !7
  %232 = lshr i8 %231, 2
  %233 = and i8 %232, 7
  %234 = zext nneg i8 %233 to i16
  %235 = getelementptr inbounds i16, ptr %2, i64 35
  store i16 %234, ptr %235, align 2, !tbaa !12
  %236 = getelementptr inbounds i8, ptr %1, i64 17
  %237 = load i8, ptr %222, align 1, !tbaa !7
  %238 = shl i8 %237, 1
  %239 = and i8 %238, 6
  %240 = zext nneg i8 %239 to i16
  %241 = getelementptr inbounds i16, ptr %2, i64 36
  store i16 %240, ptr %241, align 2, !tbaa !12
  %242 = load i8, ptr %236, align 1, !tbaa !7
  %243 = lshr i8 %242, 7
  %244 = or disjoint i8 %243, %239
  %245 = zext nneg i8 %244 to i16
  store i16 %245, ptr %241, align 2, !tbaa !12
  %246 = load i8, ptr %236, align 1, !tbaa !7
  %247 = lshr i8 %246, 4
  %248 = and i8 %247, 7
  %249 = zext nneg i8 %248 to i16
  %250 = getelementptr inbounds i16, ptr %2, i64 37
  store i16 %249, ptr %250, align 2, !tbaa !12
  %251 = load i8, ptr %236, align 1, !tbaa !7
  %252 = lshr i8 %251, 1
  %253 = and i8 %252, 7
  %254 = zext nneg i8 %253 to i16
  %255 = getelementptr inbounds i16, ptr %2, i64 38
  store i16 %254, ptr %255, align 2, !tbaa !12
  %256 = getelementptr inbounds i8, ptr %1, i64 18
  %257 = load i8, ptr %236, align 1, !tbaa !7
  %258 = shl i8 %257, 2
  %259 = and i8 %258, 4
  %260 = zext nneg i8 %259 to i16
  %261 = getelementptr inbounds i16, ptr %2, i64 39
  store i16 %260, ptr %261, align 2, !tbaa !12
  %262 = load i8, ptr %256, align 1, !tbaa !7
  %263 = lshr i8 %262, 6
  %264 = or disjoint i8 %263, %259
  %265 = zext nneg i8 %264 to i16
  store i16 %265, ptr %261, align 2, !tbaa !12
  %266 = load i8, ptr %256, align 1, !tbaa !7
  %267 = lshr i8 %266, 3
  %268 = and i8 %267, 7
  %269 = zext nneg i8 %268 to i16
  %270 = getelementptr inbounds i16, ptr %2, i64 40
  store i16 %269, ptr %270, align 2, !tbaa !12
  %271 = getelementptr inbounds i8, ptr %1, i64 19
  %272 = load i8, ptr %256, align 1, !tbaa !7
  %273 = and i8 %272, 7
  %274 = zext nneg i8 %273 to i16
  %275 = getelementptr inbounds i16, ptr %2, i64 41
  store i16 %274, ptr %275, align 2, !tbaa !12
  %276 = load i8, ptr %271, align 1, !tbaa !7
  %277 = lshr i8 %276, 1
  %278 = zext nneg i8 %277 to i16
  %279 = getelementptr inbounds i16, ptr %2, i64 42
  store i16 %278, ptr %279, align 2, !tbaa !12
  %280 = getelementptr inbounds i8, ptr %1, i64 20
  %281 = load i8, ptr %271, align 1, !tbaa !7
  %282 = shl i8 %281, 1
  %283 = and i8 %282, 2
  %284 = zext nneg i8 %283 to i16
  %285 = getelementptr inbounds i16, ptr %2, i64 43
  store i16 %284, ptr %285, align 2, !tbaa !12
  %286 = load i8, ptr %280, align 1, !tbaa !7
  %287 = lshr i8 %286, 7
  %288 = or disjoint i8 %287, %283
  %289 = zext nneg i8 %288 to i16
  store i16 %289, ptr %285, align 2, !tbaa !12
  %290 = load i8, ptr %280, align 1, !tbaa !7
  %291 = lshr i8 %290, 5
  %292 = and i8 %291, 3
  %293 = zext nneg i8 %292 to i16
  %294 = getelementptr inbounds i16, ptr %2, i64 44
  store i16 %293, ptr %294, align 2, !tbaa !12
  %295 = getelementptr inbounds i8, ptr %1, i64 21
  %296 = load i8, ptr %280, align 1, !tbaa !7
  %297 = shl i8 %296, 1
  %298 = and i8 %297, 62
  %299 = zext nneg i8 %298 to i16
  %300 = getelementptr inbounds i16, ptr %2, i64 45
  store i16 %299, ptr %300, align 2, !tbaa !12
  %301 = load i8, ptr %295, align 1, !tbaa !7
  %302 = lshr i8 %301, 7
  %303 = or disjoint i8 %302, %298
  %304 = zext nneg i8 %303 to i16
  store i16 %304, ptr %300, align 2, !tbaa !12
  %305 = load i8, ptr %295, align 1, !tbaa !7
  %306 = lshr i8 %305, 4
  %307 = and i8 %306, 7
  %308 = zext nneg i8 %307 to i16
  %309 = getelementptr inbounds i16, ptr %2, i64 46
  store i16 %308, ptr %309, align 2, !tbaa !12
  %310 = load i8, ptr %295, align 1, !tbaa !7
  %311 = lshr i8 %310, 1
  %312 = and i8 %311, 7
  %313 = zext nneg i8 %312 to i16
  %314 = getelementptr inbounds i16, ptr %2, i64 47
  store i16 %313, ptr %314, align 2, !tbaa !12
  %315 = getelementptr inbounds i8, ptr %1, i64 22
  %316 = load i8, ptr %295, align 1, !tbaa !7
  %317 = shl i8 %316, 2
  %318 = and i8 %317, 4
  %319 = zext nneg i8 %318 to i16
  %320 = getelementptr inbounds i16, ptr %2, i64 48
  store i16 %319, ptr %320, align 2, !tbaa !12
  %321 = load i8, ptr %315, align 1, !tbaa !7
  %322 = lshr i8 %321, 6
  %323 = or disjoint i8 %322, %318
  %324 = zext nneg i8 %323 to i16
  store i16 %324, ptr %320, align 2, !tbaa !12
  %325 = load i8, ptr %315, align 1, !tbaa !7
  %326 = lshr i8 %325, 3
  %327 = and i8 %326, 7
  %328 = zext nneg i8 %327 to i16
  %329 = getelementptr inbounds i16, ptr %2, i64 49
  store i16 %328, ptr %329, align 2, !tbaa !12
  %330 = getelementptr inbounds i8, ptr %1, i64 23
  %331 = load i8, ptr %315, align 1, !tbaa !7
  %332 = and i8 %331, 7
  %333 = zext nneg i8 %332 to i16
  %334 = getelementptr inbounds i16, ptr %2, i64 50
  store i16 %333, ptr %334, align 2, !tbaa !12
  %335 = load i8, ptr %330, align 1, !tbaa !7
  %336 = lshr i8 %335, 5
  %337 = zext nneg i8 %336 to i16
  %338 = getelementptr inbounds i16, ptr %2, i64 51
  store i16 %337, ptr %338, align 2, !tbaa !12
  %339 = load i8, ptr %330, align 1, !tbaa !7
  %340 = lshr i8 %339, 2
  %341 = and i8 %340, 7
  %342 = zext nneg i8 %341 to i16
  %343 = getelementptr inbounds i16, ptr %2, i64 52
  store i16 %342, ptr %343, align 2, !tbaa !12
  %344 = getelementptr inbounds i8, ptr %1, i64 24
  %345 = load i8, ptr %330, align 1, !tbaa !7
  %346 = shl i8 %345, 1
  %347 = and i8 %346, 6
  %348 = zext nneg i8 %347 to i16
  %349 = getelementptr inbounds i16, ptr %2, i64 53
  store i16 %348, ptr %349, align 2, !tbaa !12
  %350 = load i8, ptr %344, align 1, !tbaa !7
  %351 = lshr i8 %350, 7
  %352 = or disjoint i8 %351, %347
  %353 = zext nneg i8 %352 to i16
  store i16 %353, ptr %349, align 2, !tbaa !12
  %354 = load i8, ptr %344, align 1, !tbaa !7
  %355 = lshr i8 %354, 4
  %356 = and i8 %355, 7
  %357 = zext nneg i8 %356 to i16
  %358 = getelementptr inbounds i16, ptr %2, i64 54
  store i16 %357, ptr %358, align 2, !tbaa !12
  %359 = load i8, ptr %344, align 1, !tbaa !7
  %360 = lshr i8 %359, 1
  %361 = and i8 %360, 7
  %362 = zext nneg i8 %361 to i16
  %363 = getelementptr inbounds i16, ptr %2, i64 55
  store i16 %362, ptr %363, align 2, !tbaa !12
  %364 = getelementptr inbounds i8, ptr %1, i64 25
  %365 = load i8, ptr %344, align 1, !tbaa !7
  %366 = shl i8 %365, 2
  %367 = and i8 %366, 4
  %368 = zext nneg i8 %367 to i16
  %369 = getelementptr inbounds i16, ptr %2, i64 56
  store i16 %368, ptr %369, align 2, !tbaa !12
  %370 = load i8, ptr %364, align 1, !tbaa !7
  %371 = lshr i8 %370, 6
  %372 = or disjoint i8 %371, %367
  %373 = zext nneg i8 %372 to i16
  store i16 %373, ptr %369, align 2, !tbaa !12
  %374 = load i8, ptr %364, align 1, !tbaa !7
  %375 = lshr i8 %374, 3
  %376 = and i8 %375, 7
  %377 = zext nneg i8 %376 to i16
  %378 = getelementptr inbounds i16, ptr %2, i64 57
  store i16 %377, ptr %378, align 2, !tbaa !12
  %379 = getelementptr inbounds i8, ptr %1, i64 26
  %380 = load i8, ptr %364, align 1, !tbaa !7
  %381 = and i8 %380, 7
  %382 = zext nneg i8 %381 to i16
  %383 = getelementptr inbounds i16, ptr %2, i64 58
  store i16 %382, ptr %383, align 2, !tbaa !12
  %384 = load i8, ptr %379, align 1, !tbaa !7
  %385 = lshr i8 %384, 1
  %386 = zext nneg i8 %385 to i16
  %387 = getelementptr inbounds i16, ptr %2, i64 59
  store i16 %386, ptr %387, align 2, !tbaa !12
  %388 = getelementptr inbounds i8, ptr %1, i64 27
  %389 = load i8, ptr %379, align 1, !tbaa !7
  %390 = shl i8 %389, 1
  %391 = and i8 %390, 2
  %392 = zext nneg i8 %391 to i16
  %393 = getelementptr inbounds i16, ptr %2, i64 60
  store i16 %392, ptr %393, align 2, !tbaa !12
  %394 = load i8, ptr %388, align 1, !tbaa !7
  %395 = lshr i8 %394, 7
  %396 = or disjoint i8 %395, %391
  %397 = zext nneg i8 %396 to i16
  store i16 %397, ptr %393, align 2, !tbaa !12
  %398 = load i8, ptr %388, align 1, !tbaa !7
  %399 = lshr i8 %398, 5
  %400 = and i8 %399, 3
  %401 = zext nneg i8 %400 to i16
  %402 = getelementptr inbounds i16, ptr %2, i64 61
  store i16 %401, ptr %402, align 2, !tbaa !12
  %403 = getelementptr inbounds i8, ptr %1, i64 28
  %404 = load i8, ptr %388, align 1, !tbaa !7
  %405 = shl i8 %404, 1
  %406 = and i8 %405, 62
  %407 = zext nneg i8 %406 to i16
  %408 = getelementptr inbounds i16, ptr %2, i64 62
  store i16 %407, ptr %408, align 2, !tbaa !12
  %409 = load i8, ptr %403, align 1, !tbaa !7
  %410 = lshr i8 %409, 7
  %411 = or disjoint i8 %410, %406
  %412 = zext nneg i8 %411 to i16
  store i16 %412, ptr %408, align 2, !tbaa !12
  %413 = load i8, ptr %403, align 1, !tbaa !7
  %414 = lshr i8 %413, 4
  %415 = and i8 %414, 7
  %416 = zext nneg i8 %415 to i16
  %417 = getelementptr inbounds i16, ptr %2, i64 63
  store i16 %416, ptr %417, align 2, !tbaa !12
  %418 = load i8, ptr %403, align 1, !tbaa !7
  %419 = lshr i8 %418, 1
  %420 = and i8 %419, 7
  %421 = zext nneg i8 %420 to i16
  %422 = getelementptr inbounds i16, ptr %2, i64 64
  store i16 %421, ptr %422, align 2, !tbaa !12
  %423 = getelementptr inbounds i8, ptr %1, i64 29
  %424 = load i8, ptr %403, align 1, !tbaa !7
  %425 = shl i8 %424, 2
  %426 = and i8 %425, 4
  %427 = zext nneg i8 %426 to i16
  %428 = getelementptr inbounds i16, ptr %2, i64 65
  store i16 %427, ptr %428, align 2, !tbaa !12
  %429 = load i8, ptr %423, align 1, !tbaa !7
  %430 = lshr i8 %429, 6
  %431 = or disjoint i8 %430, %426
  %432 = zext nneg i8 %431 to i16
  store i16 %432, ptr %428, align 2, !tbaa !12
  %433 = load i8, ptr %423, align 1, !tbaa !7
  %434 = lshr i8 %433, 3
  %435 = and i8 %434, 7
  %436 = zext nneg i8 %435 to i16
  %437 = getelementptr inbounds i16, ptr %2, i64 66
  store i16 %436, ptr %437, align 2, !tbaa !12
  %438 = getelementptr inbounds i8, ptr %1, i64 30
  %439 = load i8, ptr %423, align 1, !tbaa !7
  %440 = and i8 %439, 7
  %441 = zext nneg i8 %440 to i16
  %442 = getelementptr inbounds i16, ptr %2, i64 67
  store i16 %441, ptr %442, align 2, !tbaa !12
  %443 = load i8, ptr %438, align 1, !tbaa !7
  %444 = lshr i8 %443, 5
  %445 = zext nneg i8 %444 to i16
  %446 = getelementptr inbounds i16, ptr %2, i64 68
  store i16 %445, ptr %446, align 2, !tbaa !12
  %447 = load i8, ptr %438, align 1, !tbaa !7
  %448 = lshr i8 %447, 2
  %449 = and i8 %448, 7
  %450 = zext nneg i8 %449 to i16
  %451 = getelementptr inbounds i16, ptr %2, i64 69
  store i16 %450, ptr %451, align 2, !tbaa !12
  %452 = getelementptr inbounds i8, ptr %1, i64 31
  %453 = load i8, ptr %438, align 1, !tbaa !7
  %454 = shl i8 %453, 1
  %455 = and i8 %454, 6
  %456 = zext nneg i8 %455 to i16
  %457 = getelementptr inbounds i16, ptr %2, i64 70
  store i16 %456, ptr %457, align 2, !tbaa !12
  %458 = load i8, ptr %452, align 1, !tbaa !7
  %459 = lshr i8 %458, 7
  %460 = or disjoint i8 %459, %455
  %461 = zext nneg i8 %460 to i16
  store i16 %461, ptr %457, align 2, !tbaa !12
  %462 = load i8, ptr %452, align 1, !tbaa !7
  %463 = lshr i8 %462, 4
  %464 = and i8 %463, 7
  %465 = zext nneg i8 %464 to i16
  %466 = getelementptr inbounds i16, ptr %2, i64 71
  store i16 %465, ptr %466, align 2, !tbaa !12
  %467 = load i8, ptr %452, align 1, !tbaa !7
  %468 = lshr i8 %467, 1
  %469 = and i8 %468, 7
  %470 = zext nneg i8 %469 to i16
  %471 = getelementptr inbounds i16, ptr %2, i64 72
  store i16 %470, ptr %471, align 2, !tbaa !12
  %472 = getelementptr inbounds i8, ptr %1, i64 32
  %473 = load i8, ptr %452, align 1, !tbaa !7
  %474 = shl i8 %473, 2
  %475 = and i8 %474, 4
  %476 = zext nneg i8 %475 to i16
  %477 = getelementptr inbounds i16, ptr %2, i64 73
  store i16 %476, ptr %477, align 2, !tbaa !12
  %478 = load i8, ptr %472, align 1, !tbaa !7
  %479 = lshr i8 %478, 6
  %480 = or disjoint i8 %479, %475
  %481 = zext nneg i8 %480 to i16
  store i16 %481, ptr %477, align 2, !tbaa !12
  %482 = load i8, ptr %472, align 1, !tbaa !7
  %483 = lshr i8 %482, 3
  %484 = and i8 %483, 7
  %485 = zext nneg i8 %484 to i16
  %486 = getelementptr inbounds i16, ptr %2, i64 74
  store i16 %485, ptr %486, align 2, !tbaa !12
  %487 = load i8, ptr %472, align 1, !tbaa !7
  %488 = and i8 %487, 7
  %489 = zext nneg i8 %488 to i16
  %490 = getelementptr inbounds i16, ptr %2, i64 75
  store i16 %489, ptr %490, align 2, !tbaa !12
  br label %491

491:                                              ; preds = %7, %3
  %492 = phi i32 [ 0, %7 ], [ -1, %3 ]
  ret i32 %492
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @gsm_implode(ptr nocapture noundef readnone %0, ptr noundef readonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #13 {
  %4 = load i16, ptr %1, align 2, !tbaa !12
  %5 = trunc i16 %4 to i8
  %6 = lshr i8 %5, 2
  %7 = and i8 %6, 15
  %8 = or disjoint i8 %7, -48
  %9 = getelementptr inbounds i8, ptr %2, i64 1
  store i8 %8, ptr %2, align 1, !tbaa !7
  %10 = load i16, ptr %1, align 2, !tbaa !12
  %11 = shl i16 %10, 6
  %12 = getelementptr inbounds i16, ptr %1, i64 1
  %13 = load i16, ptr %12, align 2, !tbaa !12
  %14 = and i16 %13, 63
  %15 = or disjoint i16 %14, %11
  %16 = trunc i16 %15 to i8
  %17 = getelementptr inbounds i8, ptr %2, i64 2
  store i8 %16, ptr %9, align 1, !tbaa !7
  %18 = getelementptr inbounds i16, ptr %1, i64 2
  %19 = load i16, ptr %18, align 2, !tbaa !12
  %20 = shl i16 %19, 3
  %21 = getelementptr inbounds i16, ptr %1, i64 3
  %22 = load i16, ptr %21, align 2, !tbaa !12
  %23 = lshr i16 %22, 2
  %24 = and i16 %23, 7
  %25 = or disjoint i16 %24, %20
  %26 = trunc i16 %25 to i8
  %27 = getelementptr inbounds i8, ptr %2, i64 3
  store i8 %26, ptr %17, align 1, !tbaa !7
  %28 = load i16, ptr %21, align 2, !tbaa !12
  %29 = shl i16 %28, 6
  %30 = getelementptr inbounds i16, ptr %1, i64 4
  %31 = load i16, ptr %30, align 2, !tbaa !12
  %32 = shl i16 %31, 2
  %33 = and i16 %32, 60
  %34 = or disjoint i16 %33, %29
  %35 = getelementptr inbounds i16, ptr %1, i64 5
  %36 = load i16, ptr %35, align 2, !tbaa !12
  %37 = lshr i16 %36, 2
  %38 = and i16 %37, 3
  %39 = or disjoint i16 %34, %38
  %40 = trunc i16 %39 to i8
  %41 = getelementptr inbounds i8, ptr %2, i64 4
  store i8 %40, ptr %27, align 1, !tbaa !7
  %42 = load i16, ptr %35, align 2, !tbaa !12
  %43 = shl i16 %42, 6
  %44 = getelementptr inbounds i16, ptr %1, i64 6
  %45 = load i16, ptr %44, align 2, !tbaa !12
  %46 = shl i16 %45, 3
  %47 = and i16 %46, 56
  %48 = or disjoint i16 %47, %43
  %49 = getelementptr inbounds i16, ptr %1, i64 7
  %50 = load i16, ptr %49, align 2, !tbaa !12
  %51 = and i16 %50, 7
  %52 = or disjoint i16 %48, %51
  %53 = trunc i16 %52 to i8
  %54 = getelementptr inbounds i8, ptr %2, i64 5
  store i8 %53, ptr %41, align 1, !tbaa !7
  %55 = getelementptr inbounds i16, ptr %1, i64 8
  %56 = load i16, ptr %55, align 2, !tbaa !12
  %57 = shl i16 %56, 1
  %58 = getelementptr inbounds i16, ptr %1, i64 9
  %59 = load i16, ptr %58, align 2, !tbaa !12
  %60 = lshr i16 %59, 1
  %61 = and i16 %60, 1
  %62 = or disjoint i16 %61, %57
  %63 = trunc i16 %62 to i8
  %64 = getelementptr inbounds i8, ptr %2, i64 6
  store i8 %63, ptr %54, align 1, !tbaa !7
  %65 = load i16, ptr %58, align 2, !tbaa !12
  %66 = shl i16 %65, 7
  %67 = getelementptr inbounds i16, ptr %1, i64 10
  %68 = load i16, ptr %67, align 2, !tbaa !12
  %69 = shl i16 %68, 5
  %70 = and i16 %69, 96
  %71 = or disjoint i16 %70, %66
  %72 = getelementptr inbounds i16, ptr %1, i64 11
  %73 = load i16, ptr %72, align 2, !tbaa !12
  %74 = lshr i16 %73, 1
  %75 = and i16 %74, 31
  %76 = or disjoint i16 %71, %75
  %77 = trunc i16 %76 to i8
  %78 = getelementptr inbounds i8, ptr %2, i64 7
  store i8 %77, ptr %64, align 1, !tbaa !7
  %79 = load i16, ptr %72, align 2, !tbaa !12
  %80 = shl i16 %79, 7
  %81 = getelementptr inbounds i16, ptr %1, i64 12
  %82 = load i16, ptr %81, align 2, !tbaa !12
  %83 = shl i16 %82, 4
  %84 = and i16 %83, 112
  %85 = or disjoint i16 %84, %80
  %86 = getelementptr inbounds i16, ptr %1, i64 13
  %87 = load i16, ptr %86, align 2, !tbaa !12
  %88 = shl i16 %87, 1
  %89 = and i16 %88, 14
  %90 = or disjoint i16 %85, %89
  %91 = getelementptr inbounds i16, ptr %1, i64 14
  %92 = load i16, ptr %91, align 2, !tbaa !12
  %93 = lshr i16 %92, 2
  %94 = and i16 %93, 1
  %95 = or disjoint i16 %90, %94
  %96 = trunc i16 %95 to i8
  %97 = getelementptr inbounds i8, ptr %2, i64 8
  store i8 %96, ptr %78, align 1, !tbaa !7
  %98 = load i16, ptr %91, align 2, !tbaa !12
  %99 = shl i16 %98, 6
  %100 = getelementptr inbounds i16, ptr %1, i64 15
  %101 = load i16, ptr %100, align 2, !tbaa !12
  %102 = shl i16 %101, 3
  %103 = and i16 %102, 56
  %104 = or disjoint i16 %103, %99
  %105 = getelementptr inbounds i16, ptr %1, i64 16
  %106 = load i16, ptr %105, align 2, !tbaa !12
  %107 = and i16 %106, 7
  %108 = or disjoint i16 %104, %107
  %109 = trunc i16 %108 to i8
  %110 = getelementptr inbounds i8, ptr %2, i64 9
  store i8 %109, ptr %97, align 1, !tbaa !7
  %111 = getelementptr inbounds i16, ptr %1, i64 17
  %112 = load i16, ptr %111, align 2, !tbaa !12
  %113 = shl i16 %112, 5
  %114 = getelementptr inbounds i16, ptr %1, i64 18
  %115 = load i16, ptr %114, align 2, !tbaa !12
  %116 = shl i16 %115, 2
  %117 = and i16 %116, 28
  %118 = or disjoint i16 %117, %113
  %119 = getelementptr inbounds i16, ptr %1, i64 19
  %120 = load i16, ptr %119, align 2, !tbaa !12
  %121 = lshr i16 %120, 1
  %122 = and i16 %121, 3
  %123 = or disjoint i16 %118, %122
  %124 = trunc i16 %123 to i8
  %125 = getelementptr inbounds i8, ptr %2, i64 10
  store i8 %124, ptr %110, align 1, !tbaa !7
  %126 = load i16, ptr %119, align 2, !tbaa !12
  %127 = shl i16 %126, 7
  %128 = getelementptr inbounds i16, ptr %1, i64 20
  %129 = load i16, ptr %128, align 2, !tbaa !12
  %130 = shl i16 %129, 4
  %131 = and i16 %130, 112
  %132 = or disjoint i16 %131, %127
  %133 = getelementptr inbounds i16, ptr %1, i64 21
  %134 = load i16, ptr %133, align 2, !tbaa !12
  %135 = shl i16 %134, 1
  %136 = and i16 %135, 14
  %137 = or disjoint i16 %132, %136
  %138 = getelementptr inbounds i16, ptr %1, i64 22
  %139 = load i16, ptr %138, align 2, !tbaa !12
  %140 = lshr i16 %139, 2
  %141 = and i16 %140, 1
  %142 = or disjoint i16 %137, %141
  %143 = trunc i16 %142 to i8
  %144 = getelementptr inbounds i8, ptr %2, i64 11
  store i8 %143, ptr %125, align 1, !tbaa !7
  %145 = load i16, ptr %138, align 2, !tbaa !12
  %146 = shl i16 %145, 6
  %147 = getelementptr inbounds i16, ptr %1, i64 23
  %148 = load i16, ptr %147, align 2, !tbaa !12
  %149 = shl i16 %148, 3
  %150 = and i16 %149, 56
  %151 = or disjoint i16 %150, %146
  %152 = getelementptr inbounds i16, ptr %1, i64 24
  %153 = load i16, ptr %152, align 2, !tbaa !12
  %154 = and i16 %153, 7
  %155 = or disjoint i16 %151, %154
  %156 = trunc i16 %155 to i8
  %157 = getelementptr inbounds i8, ptr %2, i64 12
  store i8 %156, ptr %144, align 1, !tbaa !7
  %158 = getelementptr inbounds i16, ptr %1, i64 25
  %159 = load i16, ptr %158, align 2, !tbaa !12
  %160 = shl i16 %159, 1
  %161 = getelementptr inbounds i16, ptr %1, i64 26
  %162 = load i16, ptr %161, align 2, !tbaa !12
  %163 = lshr i16 %162, 1
  %164 = and i16 %163, 1
  %165 = or disjoint i16 %164, %160
  %166 = trunc i16 %165 to i8
  %167 = getelementptr inbounds i8, ptr %2, i64 13
  store i8 %166, ptr %157, align 1, !tbaa !7
  %168 = load i16, ptr %161, align 2, !tbaa !12
  %169 = shl i16 %168, 7
  %170 = getelementptr inbounds i16, ptr %1, i64 27
  %171 = load i16, ptr %170, align 2, !tbaa !12
  %172 = shl i16 %171, 5
  %173 = and i16 %172, 96
  %174 = or disjoint i16 %173, %169
  %175 = getelementptr inbounds i16, ptr %1, i64 28
  %176 = load i16, ptr %175, align 2, !tbaa !12
  %177 = lshr i16 %176, 1
  %178 = and i16 %177, 31
  %179 = or disjoint i16 %174, %178
  %180 = trunc i16 %179 to i8
  %181 = getelementptr inbounds i8, ptr %2, i64 14
  store i8 %180, ptr %167, align 1, !tbaa !7
  %182 = load i16, ptr %175, align 2, !tbaa !12
  %183 = shl i16 %182, 7
  %184 = getelementptr inbounds i16, ptr %1, i64 29
  %185 = load i16, ptr %184, align 2, !tbaa !12
  %186 = shl i16 %185, 4
  %187 = and i16 %186, 112
  %188 = or disjoint i16 %187, %183
  %189 = getelementptr inbounds i16, ptr %1, i64 30
  %190 = load i16, ptr %189, align 2, !tbaa !12
  %191 = shl i16 %190, 1
  %192 = and i16 %191, 14
  %193 = or disjoint i16 %188, %192
  %194 = getelementptr inbounds i16, ptr %1, i64 31
  %195 = load i16, ptr %194, align 2, !tbaa !12
  %196 = lshr i16 %195, 2
  %197 = and i16 %196, 1
  %198 = or disjoint i16 %193, %197
  %199 = trunc i16 %198 to i8
  %200 = getelementptr inbounds i8, ptr %2, i64 15
  store i8 %199, ptr %181, align 1, !tbaa !7
  %201 = load i16, ptr %194, align 2, !tbaa !12
  %202 = shl i16 %201, 6
  %203 = getelementptr inbounds i16, ptr %1, i64 32
  %204 = load i16, ptr %203, align 2, !tbaa !12
  %205 = shl i16 %204, 3
  %206 = and i16 %205, 56
  %207 = or disjoint i16 %206, %202
  %208 = getelementptr inbounds i16, ptr %1, i64 33
  %209 = load i16, ptr %208, align 2, !tbaa !12
  %210 = and i16 %209, 7
  %211 = or disjoint i16 %207, %210
  %212 = trunc i16 %211 to i8
  %213 = getelementptr inbounds i8, ptr %2, i64 16
  store i8 %212, ptr %200, align 1, !tbaa !7
  %214 = getelementptr inbounds i16, ptr %1, i64 34
  %215 = load i16, ptr %214, align 2, !tbaa !12
  %216 = shl i16 %215, 5
  %217 = getelementptr inbounds i16, ptr %1, i64 35
  %218 = load i16, ptr %217, align 2, !tbaa !12
  %219 = shl i16 %218, 2
  %220 = and i16 %219, 28
  %221 = or disjoint i16 %220, %216
  %222 = getelementptr inbounds i16, ptr %1, i64 36
  %223 = load i16, ptr %222, align 2, !tbaa !12
  %224 = lshr i16 %223, 1
  %225 = and i16 %224, 3
  %226 = or disjoint i16 %221, %225
  %227 = trunc i16 %226 to i8
  %228 = getelementptr inbounds i8, ptr %2, i64 17
  store i8 %227, ptr %213, align 1, !tbaa !7
  %229 = load i16, ptr %222, align 2, !tbaa !12
  %230 = shl i16 %229, 7
  %231 = getelementptr inbounds i16, ptr %1, i64 37
  %232 = load i16, ptr %231, align 2, !tbaa !12
  %233 = shl i16 %232, 4
  %234 = and i16 %233, 112
  %235 = or disjoint i16 %234, %230
  %236 = getelementptr inbounds i16, ptr %1, i64 38
  %237 = load i16, ptr %236, align 2, !tbaa !12
  %238 = shl i16 %237, 1
  %239 = and i16 %238, 14
  %240 = or disjoint i16 %235, %239
  %241 = getelementptr inbounds i16, ptr %1, i64 39
  %242 = load i16, ptr %241, align 2, !tbaa !12
  %243 = lshr i16 %242, 2
  %244 = and i16 %243, 1
  %245 = or disjoint i16 %240, %244
  %246 = trunc i16 %245 to i8
  %247 = getelementptr inbounds i8, ptr %2, i64 18
  store i8 %246, ptr %228, align 1, !tbaa !7
  %248 = load i16, ptr %241, align 2, !tbaa !12
  %249 = shl i16 %248, 6
  %250 = getelementptr inbounds i16, ptr %1, i64 40
  %251 = load i16, ptr %250, align 2, !tbaa !12
  %252 = shl i16 %251, 3
  %253 = and i16 %252, 56
  %254 = or disjoint i16 %253, %249
  %255 = getelementptr inbounds i16, ptr %1, i64 41
  %256 = load i16, ptr %255, align 2, !tbaa !12
  %257 = and i16 %256, 7
  %258 = or disjoint i16 %254, %257
  %259 = trunc i16 %258 to i8
  %260 = getelementptr inbounds i8, ptr %2, i64 19
  store i8 %259, ptr %247, align 1, !tbaa !7
  %261 = getelementptr inbounds i16, ptr %1, i64 42
  %262 = load i16, ptr %261, align 2, !tbaa !12
  %263 = shl i16 %262, 1
  %264 = getelementptr inbounds i16, ptr %1, i64 43
  %265 = load i16, ptr %264, align 2, !tbaa !12
  %266 = lshr i16 %265, 1
  %267 = and i16 %266, 1
  %268 = or disjoint i16 %267, %263
  %269 = trunc i16 %268 to i8
  %270 = getelementptr inbounds i8, ptr %2, i64 20
  store i8 %269, ptr %260, align 1, !tbaa !7
  %271 = load i16, ptr %264, align 2, !tbaa !12
  %272 = shl i16 %271, 7
  %273 = getelementptr inbounds i16, ptr %1, i64 44
  %274 = load i16, ptr %273, align 2, !tbaa !12
  %275 = shl i16 %274, 5
  %276 = and i16 %275, 96
  %277 = or disjoint i16 %276, %272
  %278 = getelementptr inbounds i16, ptr %1, i64 45
  %279 = load i16, ptr %278, align 2, !tbaa !12
  %280 = lshr i16 %279, 1
  %281 = and i16 %280, 31
  %282 = or disjoint i16 %277, %281
  %283 = trunc i16 %282 to i8
  %284 = getelementptr inbounds i8, ptr %2, i64 21
  store i8 %283, ptr %270, align 1, !tbaa !7
  %285 = load i16, ptr %278, align 2, !tbaa !12
  %286 = shl i16 %285, 7
  %287 = getelementptr inbounds i16, ptr %1, i64 46
  %288 = load i16, ptr %287, align 2, !tbaa !12
  %289 = shl i16 %288, 4
  %290 = and i16 %289, 112
  %291 = or disjoint i16 %290, %286
  %292 = getelementptr inbounds i16, ptr %1, i64 47
  %293 = load i16, ptr %292, align 2, !tbaa !12
  %294 = shl i16 %293, 1
  %295 = and i16 %294, 14
  %296 = or disjoint i16 %291, %295
  %297 = getelementptr inbounds i16, ptr %1, i64 48
  %298 = load i16, ptr %297, align 2, !tbaa !12
  %299 = lshr i16 %298, 2
  %300 = and i16 %299, 1
  %301 = or disjoint i16 %296, %300
  %302 = trunc i16 %301 to i8
  %303 = getelementptr inbounds i8, ptr %2, i64 22
  store i8 %302, ptr %284, align 1, !tbaa !7
  %304 = load i16, ptr %297, align 2, !tbaa !12
  %305 = shl i16 %304, 6
  %306 = getelementptr inbounds i16, ptr %1, i64 49
  %307 = load i16, ptr %306, align 2, !tbaa !12
  %308 = shl i16 %307, 3
  %309 = and i16 %308, 56
  %310 = or disjoint i16 %309, %305
  %311 = getelementptr inbounds i16, ptr %1, i64 50
  %312 = load i16, ptr %311, align 2, !tbaa !12
  %313 = and i16 %312, 7
  %314 = or disjoint i16 %310, %313
  %315 = trunc i16 %314 to i8
  %316 = getelementptr inbounds i8, ptr %2, i64 23
  store i8 %315, ptr %303, align 1, !tbaa !7
  %317 = getelementptr inbounds i16, ptr %1, i64 51
  %318 = load i16, ptr %317, align 2, !tbaa !12
  %319 = shl i16 %318, 5
  %320 = getelementptr inbounds i16, ptr %1, i64 52
  %321 = load i16, ptr %320, align 2, !tbaa !12
  %322 = shl i16 %321, 2
  %323 = and i16 %322, 28
  %324 = or disjoint i16 %323, %319
  %325 = getelementptr inbounds i16, ptr %1, i64 53
  %326 = load i16, ptr %325, align 2, !tbaa !12
  %327 = lshr i16 %326, 1
  %328 = and i16 %327, 3
  %329 = or disjoint i16 %324, %328
  %330 = trunc i16 %329 to i8
  %331 = getelementptr inbounds i8, ptr %2, i64 24
  store i8 %330, ptr %316, align 1, !tbaa !7
  %332 = load i16, ptr %325, align 2, !tbaa !12
  %333 = shl i16 %332, 7
  %334 = getelementptr inbounds i16, ptr %1, i64 54
  %335 = load i16, ptr %334, align 2, !tbaa !12
  %336 = shl i16 %335, 4
  %337 = and i16 %336, 112
  %338 = or disjoint i16 %337, %333
  %339 = getelementptr inbounds i16, ptr %1, i64 55
  %340 = load i16, ptr %339, align 2, !tbaa !12
  %341 = shl i16 %340, 1
  %342 = and i16 %341, 14
  %343 = or disjoint i16 %338, %342
  %344 = getelementptr inbounds i16, ptr %1, i64 56
  %345 = load i16, ptr %344, align 2, !tbaa !12
  %346 = lshr i16 %345, 2
  %347 = and i16 %346, 1
  %348 = or disjoint i16 %343, %347
  %349 = trunc i16 %348 to i8
  %350 = getelementptr inbounds i8, ptr %2, i64 25
  store i8 %349, ptr %331, align 1, !tbaa !7
  %351 = load i16, ptr %344, align 2, !tbaa !12
  %352 = shl i16 %351, 6
  %353 = getelementptr inbounds i16, ptr %1, i64 57
  %354 = load i16, ptr %353, align 2, !tbaa !12
  %355 = shl i16 %354, 3
  %356 = and i16 %355, 56
  %357 = or disjoint i16 %356, %352
  %358 = getelementptr inbounds i16, ptr %1, i64 58
  %359 = load i16, ptr %358, align 2, !tbaa !12
  %360 = and i16 %359, 7
  %361 = or disjoint i16 %357, %360
  %362 = trunc i16 %361 to i8
  %363 = getelementptr inbounds i8, ptr %2, i64 26
  store i8 %362, ptr %350, align 1, !tbaa !7
  %364 = getelementptr inbounds i16, ptr %1, i64 59
  %365 = load i16, ptr %364, align 2, !tbaa !12
  %366 = shl i16 %365, 1
  %367 = getelementptr inbounds i16, ptr %1, i64 60
  %368 = load i16, ptr %367, align 2, !tbaa !12
  %369 = lshr i16 %368, 1
  %370 = and i16 %369, 1
  %371 = or disjoint i16 %370, %366
  %372 = trunc i16 %371 to i8
  %373 = getelementptr inbounds i8, ptr %2, i64 27
  store i8 %372, ptr %363, align 1, !tbaa !7
  %374 = load i16, ptr %367, align 2, !tbaa !12
  %375 = shl i16 %374, 7
  %376 = getelementptr inbounds i16, ptr %1, i64 61
  %377 = load i16, ptr %376, align 2, !tbaa !12
  %378 = shl i16 %377, 5
  %379 = and i16 %378, 96
  %380 = or disjoint i16 %379, %375
  %381 = getelementptr inbounds i16, ptr %1, i64 62
  %382 = load i16, ptr %381, align 2, !tbaa !12
  %383 = lshr i16 %382, 1
  %384 = and i16 %383, 31
  %385 = or disjoint i16 %380, %384
  %386 = trunc i16 %385 to i8
  %387 = getelementptr inbounds i8, ptr %2, i64 28
  store i8 %386, ptr %373, align 1, !tbaa !7
  %388 = load i16, ptr %381, align 2, !tbaa !12
  %389 = shl i16 %388, 7
  %390 = getelementptr inbounds i16, ptr %1, i64 63
  %391 = load i16, ptr %390, align 2, !tbaa !12
  %392 = shl i16 %391, 4
  %393 = and i16 %392, 112
  %394 = or disjoint i16 %393, %389
  %395 = getelementptr inbounds i16, ptr %1, i64 64
  %396 = load i16, ptr %395, align 2, !tbaa !12
  %397 = shl i16 %396, 1
  %398 = and i16 %397, 14
  %399 = or disjoint i16 %394, %398
  %400 = getelementptr inbounds i16, ptr %1, i64 65
  %401 = load i16, ptr %400, align 2, !tbaa !12
  %402 = lshr i16 %401, 2
  %403 = and i16 %402, 1
  %404 = or disjoint i16 %399, %403
  %405 = trunc i16 %404 to i8
  %406 = getelementptr inbounds i8, ptr %2, i64 29
  store i8 %405, ptr %387, align 1, !tbaa !7
  %407 = load i16, ptr %400, align 2, !tbaa !12
  %408 = shl i16 %407, 6
  %409 = getelementptr inbounds i16, ptr %1, i64 66
  %410 = load i16, ptr %409, align 2, !tbaa !12
  %411 = shl i16 %410, 3
  %412 = and i16 %411, 56
  %413 = or disjoint i16 %412, %408
  %414 = getelementptr inbounds i16, ptr %1, i64 67
  %415 = load i16, ptr %414, align 2, !tbaa !12
  %416 = and i16 %415, 7
  %417 = or disjoint i16 %413, %416
  %418 = trunc i16 %417 to i8
  %419 = getelementptr inbounds i8, ptr %2, i64 30
  store i8 %418, ptr %406, align 1, !tbaa !7
  %420 = getelementptr inbounds i16, ptr %1, i64 68
  %421 = load i16, ptr %420, align 2, !tbaa !12
  %422 = shl i16 %421, 5
  %423 = getelementptr inbounds i16, ptr %1, i64 69
  %424 = load i16, ptr %423, align 2, !tbaa !12
  %425 = shl i16 %424, 2
  %426 = and i16 %425, 28
  %427 = or disjoint i16 %426, %422
  %428 = getelementptr inbounds i16, ptr %1, i64 70
  %429 = load i16, ptr %428, align 2, !tbaa !12
  %430 = lshr i16 %429, 1
  %431 = and i16 %430, 3
  %432 = or disjoint i16 %427, %431
  %433 = trunc i16 %432 to i8
  %434 = getelementptr inbounds i8, ptr %2, i64 31
  store i8 %433, ptr %419, align 1, !tbaa !7
  %435 = load i16, ptr %428, align 2, !tbaa !12
  %436 = shl i16 %435, 7
  %437 = getelementptr inbounds i16, ptr %1, i64 71
  %438 = load i16, ptr %437, align 2, !tbaa !12
  %439 = shl i16 %438, 4
  %440 = and i16 %439, 112
  %441 = or disjoint i16 %440, %436
  %442 = getelementptr inbounds i16, ptr %1, i64 72
  %443 = load i16, ptr %442, align 2, !tbaa !12
  %444 = shl i16 %443, 1
  %445 = and i16 %444, 14
  %446 = or disjoint i16 %441, %445
  %447 = getelementptr inbounds i16, ptr %1, i64 73
  %448 = load i16, ptr %447, align 2, !tbaa !12
  %449 = lshr i16 %448, 2
  %450 = and i16 %449, 1
  %451 = or disjoint i16 %446, %450
  %452 = trunc i16 %451 to i8
  %453 = getelementptr inbounds i8, ptr %2, i64 32
  store i8 %452, ptr %434, align 1, !tbaa !7
  %454 = load i16, ptr %447, align 2, !tbaa !12
  %455 = shl i16 %454, 6
  %456 = getelementptr inbounds i16, ptr %1, i64 74
  %457 = load i16, ptr %456, align 2, !tbaa !12
  %458 = shl i16 %457, 3
  %459 = and i16 %458, 56
  %460 = or disjoint i16 %459, %455
  %461 = getelementptr inbounds i16, ptr %1, i64 75
  %462 = load i16, ptr %461, align 2, !tbaa !12
  %463 = and i16 %462, 7
  %464 = or disjoint i16 %460, %463
  %465 = trunc i16 %464 to i8
  store i8 %465, ptr %453, align 1, !tbaa !7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local i32 @gsm_option(ptr nocapture noundef %0, i32 noundef %1, ptr noundef readonly %2) local_unnamed_addr #13 {
  %4 = icmp eq i32 %1, 1
  br i1 %4, label %5, label %13

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.gsm_state, ptr %0, i64 0, i32 10
  %7 = load i8, ptr %6, align 4, !tbaa !28
  %8 = sext i8 %7 to i32
  %9 = icmp eq ptr %2, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %5
  %11 = load i32, ptr %2, align 4, !tbaa !29
  %12 = trunc i32 %11 to i8
  store i8 %12, ptr %6, align 4, !tbaa !28
  br label %13

13:                                               ; preds = %10, %5, %3
  %14 = phi i32 [ %8, %10 ], [ %8, %5 ], [ -1, %3 ]
  ret i32 %14
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @gsm_print(ptr nocapture noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2) local_unnamed_addr #6 {
  %4 = load i8, ptr %2, align 1, !tbaa !7
  %5 = and i8 %4, -16
  %6 = icmp eq i8 %5, -48
  br i1 %6, label %7, label %359

7:                                                ; preds = %3
  %8 = getelementptr inbounds i8, ptr %2, i64 1
  %9 = zext i8 %4 to i32
  %10 = shl nuw nsw i32 %9, 2
  %11 = and i32 %10, 60
  %12 = load i8, ptr %8, align 1, !tbaa !7
  %13 = lshr i8 %12, 6
  %14 = zext nneg i8 %13 to i32
  %15 = or disjoint i32 %11, %14
  %16 = getelementptr inbounds i8, ptr %2, i64 2
  %17 = and i8 %12, 63
  %18 = load i8, ptr %16, align 1, !tbaa !7
  %19 = lshr i8 %18, 3
  %20 = getelementptr inbounds i8, ptr %2, i64 3
  %21 = zext i8 %18 to i32
  %22 = shl nuw nsw i32 %21, 2
  %23 = and i32 %22, 28
  %24 = load i8, ptr %20, align 1, !tbaa !7
  %25 = lshr i8 %24, 6
  %26 = zext nneg i8 %25 to i32
  %27 = or disjoint i32 %23, %26
  %28 = lshr i8 %24, 2
  %29 = and i8 %28, 15
  %30 = getelementptr inbounds i8, ptr %2, i64 4
  %31 = zext i8 %24 to i32
  %32 = shl nuw nsw i32 %31, 2
  %33 = and i32 %32, 12
  %34 = load i8, ptr %30, align 1, !tbaa !7
  %35 = lshr i8 %34, 6
  %36 = zext nneg i8 %35 to i32
  %37 = or disjoint i32 %33, %36
  %38 = lshr i8 %34, 3
  %39 = and i8 %38, 7
  %40 = getelementptr inbounds i8, ptr %2, i64 5
  %41 = and i8 %34, 7
  %42 = load i8, ptr %40, align 1, !tbaa !7
  %43 = lshr i8 %42, 1
  %44 = getelementptr inbounds i8, ptr %2, i64 6
  %45 = zext i8 %42 to i32
  %46 = shl nuw nsw i32 %45, 1
  %47 = and i32 %46, 2
  %48 = load i8, ptr %44, align 1, !tbaa !7
  %49 = lshr i8 %48, 7
  %50 = zext nneg i8 %49 to i32
  %51 = or disjoint i32 %47, %50
  %52 = lshr i8 %48, 5
  %53 = and i8 %52, 3
  %54 = getelementptr inbounds i8, ptr %2, i64 7
  %55 = zext i8 %48 to i32
  %56 = shl nuw nsw i32 %55, 1
  %57 = and i32 %56, 62
  %58 = load i8, ptr %54, align 1, !tbaa !7
  %59 = lshr i8 %58, 7
  %60 = zext nneg i8 %59 to i32
  %61 = or disjoint i32 %57, %60
  %62 = lshr i8 %58, 4
  %63 = and i8 %62, 7
  %64 = lshr i8 %58, 1
  %65 = and i8 %64, 7
  %66 = getelementptr inbounds i8, ptr %2, i64 8
  %67 = zext i8 %58 to i32
  %68 = shl nuw nsw i32 %67, 2
  %69 = and i32 %68, 4
  %70 = load i8, ptr %66, align 1, !tbaa !7
  %71 = lshr i8 %70, 6
  %72 = zext nneg i8 %71 to i32
  %73 = or disjoint i32 %69, %72
  %74 = lshr i8 %70, 3
  %75 = and i8 %74, 7
  %76 = getelementptr inbounds i8, ptr %2, i64 9
  %77 = and i8 %70, 7
  %78 = load i8, ptr %76, align 1, !tbaa !7
  %79 = lshr i8 %78, 5
  %80 = lshr i8 %78, 2
  %81 = and i8 %80, 7
  %82 = getelementptr inbounds i8, ptr %2, i64 10
  %83 = zext i8 %78 to i32
  %84 = shl nuw nsw i32 %83, 1
  %85 = and i32 %84, 6
  %86 = load i8, ptr %82, align 1, !tbaa !7
  %87 = lshr i8 %86, 7
  %88 = zext nneg i8 %87 to i32
  %89 = or disjoint i32 %85, %88
  %90 = lshr i8 %86, 4
  %91 = and i8 %90, 7
  %92 = lshr i8 %86, 1
  %93 = and i8 %92, 7
  %94 = getelementptr inbounds i8, ptr %2, i64 11
  %95 = zext i8 %86 to i32
  %96 = shl nuw nsw i32 %95, 2
  %97 = and i32 %96, 4
  %98 = load i8, ptr %94, align 1, !tbaa !7
  %99 = lshr i8 %98, 6
  %100 = zext nneg i8 %99 to i32
  %101 = or disjoint i32 %97, %100
  %102 = lshr i8 %98, 3
  %103 = and i8 %102, 7
  %104 = getelementptr inbounds i8, ptr %2, i64 12
  %105 = and i8 %98, 7
  %106 = load i8, ptr %104, align 1, !tbaa !7
  %107 = lshr i8 %106, 1
  %108 = getelementptr inbounds i8, ptr %2, i64 13
  %109 = zext i8 %106 to i32
  %110 = shl nuw nsw i32 %109, 1
  %111 = and i32 %110, 2
  %112 = load i8, ptr %108, align 1, !tbaa !7
  %113 = lshr i8 %112, 7
  %114 = zext nneg i8 %113 to i32
  %115 = or disjoint i32 %111, %114
  %116 = lshr i8 %112, 5
  %117 = and i8 %116, 3
  %118 = getelementptr inbounds i8, ptr %2, i64 14
  %119 = zext i8 %112 to i32
  %120 = shl nuw nsw i32 %119, 1
  %121 = and i32 %120, 62
  %122 = load i8, ptr %118, align 1, !tbaa !7
  %123 = lshr i8 %122, 7
  %124 = zext nneg i8 %123 to i32
  %125 = or disjoint i32 %121, %124
  %126 = lshr i8 %122, 4
  %127 = and i8 %126, 7
  %128 = lshr i8 %122, 1
  %129 = and i8 %128, 7
  %130 = getelementptr inbounds i8, ptr %2, i64 15
  %131 = zext i8 %122 to i32
  %132 = shl nuw nsw i32 %131, 2
  %133 = and i32 %132, 4
  %134 = load i8, ptr %130, align 1, !tbaa !7
  %135 = lshr i8 %134, 6
  %136 = zext nneg i8 %135 to i32
  %137 = or disjoint i32 %133, %136
  %138 = lshr i8 %134, 3
  %139 = and i8 %138, 7
  %140 = getelementptr inbounds i8, ptr %2, i64 16
  %141 = and i8 %134, 7
  %142 = load i8, ptr %140, align 1, !tbaa !7
  %143 = lshr i8 %142, 5
  %144 = lshr i8 %142, 2
  %145 = and i8 %144, 7
  %146 = getelementptr inbounds i8, ptr %2, i64 17
  %147 = zext i8 %142 to i32
  %148 = shl nuw nsw i32 %147, 1
  %149 = and i32 %148, 6
  %150 = load i8, ptr %146, align 1, !tbaa !7
  %151 = lshr i8 %150, 7
  %152 = zext nneg i8 %151 to i32
  %153 = or disjoint i32 %149, %152
  %154 = lshr i8 %150, 4
  %155 = and i8 %154, 7
  %156 = lshr i8 %150, 1
  %157 = and i8 %156, 7
  %158 = getelementptr inbounds i8, ptr %2, i64 18
  %159 = zext i8 %150 to i32
  %160 = shl nuw nsw i32 %159, 2
  %161 = and i32 %160, 4
  %162 = load i8, ptr %158, align 1, !tbaa !7
  %163 = lshr i8 %162, 6
  %164 = zext nneg i8 %163 to i32
  %165 = or disjoint i32 %161, %164
  %166 = lshr i8 %162, 3
  %167 = and i8 %166, 7
  %168 = getelementptr inbounds i8, ptr %2, i64 19
  %169 = and i8 %162, 7
  %170 = load i8, ptr %168, align 1, !tbaa !7
  %171 = lshr i8 %170, 1
  %172 = getelementptr inbounds i8, ptr %2, i64 20
  %173 = zext i8 %170 to i32
  %174 = shl nuw nsw i32 %173, 1
  %175 = and i32 %174, 2
  %176 = load i8, ptr %172, align 1, !tbaa !7
  %177 = lshr i8 %176, 7
  %178 = zext nneg i8 %177 to i32
  %179 = or disjoint i32 %175, %178
  %180 = lshr i8 %176, 5
  %181 = and i8 %180, 3
  %182 = getelementptr inbounds i8, ptr %2, i64 21
  %183 = zext i8 %176 to i32
  %184 = shl nuw nsw i32 %183, 1
  %185 = and i32 %184, 62
  %186 = load i8, ptr %182, align 1, !tbaa !7
  %187 = lshr i8 %186, 7
  %188 = zext nneg i8 %187 to i32
  %189 = or disjoint i32 %185, %188
  %190 = lshr i8 %186, 4
  %191 = and i8 %190, 7
  %192 = lshr i8 %186, 1
  %193 = and i8 %192, 7
  %194 = getelementptr inbounds i8, ptr %2, i64 22
  %195 = zext i8 %186 to i32
  %196 = shl nuw nsw i32 %195, 2
  %197 = and i32 %196, 4
  %198 = load i8, ptr %194, align 1, !tbaa !7
  %199 = lshr i8 %198, 6
  %200 = zext nneg i8 %199 to i32
  %201 = or disjoint i32 %197, %200
  %202 = lshr i8 %198, 3
  %203 = and i8 %202, 7
  %204 = getelementptr inbounds i8, ptr %2, i64 23
  %205 = and i8 %198, 7
  %206 = load i8, ptr %204, align 1, !tbaa !7
  %207 = lshr i8 %206, 5
  %208 = lshr i8 %206, 2
  %209 = and i8 %208, 7
  %210 = getelementptr inbounds i8, ptr %2, i64 24
  %211 = zext i8 %206 to i32
  %212 = shl nuw nsw i32 %211, 1
  %213 = and i32 %212, 6
  %214 = load i8, ptr %210, align 1, !tbaa !7
  %215 = lshr i8 %214, 7
  %216 = zext nneg i8 %215 to i32
  %217 = or disjoint i32 %213, %216
  %218 = lshr i8 %214, 4
  %219 = and i8 %218, 7
  %220 = lshr i8 %214, 1
  %221 = and i8 %220, 7
  %222 = getelementptr inbounds i8, ptr %2, i64 25
  %223 = zext i8 %214 to i32
  %224 = shl nuw nsw i32 %223, 2
  %225 = and i32 %224, 4
  %226 = load i8, ptr %222, align 1, !tbaa !7
  %227 = lshr i8 %226, 6
  %228 = zext nneg i8 %227 to i32
  %229 = or disjoint i32 %225, %228
  %230 = lshr i8 %226, 3
  %231 = and i8 %230, 7
  %232 = getelementptr inbounds i8, ptr %2, i64 26
  %233 = and i8 %226, 7
  %234 = load i8, ptr %232, align 1, !tbaa !7
  %235 = lshr i8 %234, 1
  %236 = getelementptr inbounds i8, ptr %2, i64 27
  %237 = zext i8 %234 to i32
  %238 = shl nuw nsw i32 %237, 1
  %239 = and i32 %238, 2
  %240 = load i8, ptr %236, align 1, !tbaa !7
  %241 = lshr i8 %240, 7
  %242 = zext nneg i8 %241 to i32
  %243 = or disjoint i32 %239, %242
  %244 = lshr i8 %240, 5
  %245 = and i8 %244, 3
  %246 = getelementptr inbounds i8, ptr %2, i64 28
  %247 = zext i8 %240 to i32
  %248 = shl nuw nsw i32 %247, 1
  %249 = and i32 %248, 62
  %250 = load i8, ptr %246, align 1, !tbaa !7
  %251 = lshr i8 %250, 7
  %252 = zext nneg i8 %251 to i32
  %253 = or disjoint i32 %249, %252
  %254 = lshr i8 %250, 4
  %255 = and i8 %254, 7
  %256 = lshr i8 %250, 1
  %257 = and i8 %256, 7
  %258 = getelementptr inbounds i8, ptr %2, i64 29
  %259 = zext i8 %250 to i32
  %260 = shl nuw nsw i32 %259, 2
  %261 = and i32 %260, 4
  %262 = load i8, ptr %258, align 1, !tbaa !7
  %263 = lshr i8 %262, 6
  %264 = zext nneg i8 %263 to i32
  %265 = or disjoint i32 %261, %264
  %266 = lshr i8 %262, 3
  %267 = and i8 %266, 7
  %268 = getelementptr inbounds i8, ptr %2, i64 30
  %269 = and i8 %262, 7
  %270 = load i8, ptr %268, align 1, !tbaa !7
  %271 = lshr i8 %270, 5
  %272 = lshr i8 %270, 2
  %273 = and i8 %272, 7
  %274 = getelementptr inbounds i8, ptr %2, i64 31
  %275 = zext i8 %270 to i32
  %276 = shl nuw nsw i32 %275, 1
  %277 = and i32 %276, 6
  %278 = load i8, ptr %274, align 1, !tbaa !7
  %279 = lshr i8 %278, 7
  %280 = zext nneg i8 %279 to i32
  %281 = or disjoint i32 %277, %280
  %282 = lshr i8 %278, 4
  %283 = and i8 %282, 7
  %284 = lshr i8 %278, 1
  %285 = and i8 %284, 7
  %286 = getelementptr inbounds i8, ptr %2, i64 32
  %287 = zext i8 %278 to i32
  %288 = shl nuw nsw i32 %287, 2
  %289 = and i32 %288, 4
  %290 = load i8, ptr %286, align 1, !tbaa !7
  %291 = lshr i8 %290, 6
  %292 = zext nneg i8 %291 to i32
  %293 = or disjoint i32 %289, %292
  %294 = lshr i8 %290, 3
  %295 = and i8 %294, 7
  %296 = and i8 %290, 7
  %297 = zext nneg i8 %17 to i32
  %298 = zext nneg i8 %19 to i32
  %299 = zext nneg i8 %29 to i32
  %300 = zext nneg i8 %39 to i32
  %301 = zext nneg i8 %41 to i32
  %302 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.7, i32 noundef %15, i32 noundef %297, i32 noundef %298, i32 noundef %27, i32 noundef %299, i32 noundef %37, i32 noundef %300, i32 noundef %301)
  %303 = zext nneg i8 %43 to i32
  %304 = zext nneg i8 %53 to i32
  %305 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1.8, i32 noundef %303, i32 noundef %51, i32 noundef %304, i32 noundef %61)
  %306 = zext nneg i8 %63 to i32
  %307 = zext nneg i8 %65 to i32
  %308 = zext nneg i8 %75 to i32
  %309 = zext nneg i8 %77 to i32
  %310 = zext nneg i8 %79 to i32
  %311 = zext nneg i8 %81 to i32
  %312 = zext nneg i8 %91 to i32
  %313 = zext nneg i8 %93 to i32
  %314 = zext nneg i8 %103 to i32
  %315 = zext nneg i8 %105 to i32
  %316 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.2.9, i32 noundef %306, i32 noundef %307, i32 noundef %73, i32 noundef %308, i32 noundef %309, i32 noundef %310, i32 noundef %311, i32 noundef %89, i32 noundef %312, i32 noundef %313, i32 noundef %101, i32 noundef %314, i32 noundef %315)
  %317 = zext nneg i8 %107 to i32
  %318 = zext nneg i8 %117 to i32
  %319 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.3.10, i32 noundef %317, i32 noundef %115, i32 noundef %318, i32 noundef %125)
  %320 = zext nneg i8 %127 to i32
  %321 = zext nneg i8 %129 to i32
  %322 = zext nneg i8 %139 to i32
  %323 = zext nneg i8 %141 to i32
  %324 = zext nneg i8 %143 to i32
  %325 = zext nneg i8 %145 to i32
  %326 = zext nneg i8 %155 to i32
  %327 = zext nneg i8 %157 to i32
  %328 = zext nneg i8 %167 to i32
  %329 = zext nneg i8 %169 to i32
  %330 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.2.9, i32 noundef %320, i32 noundef %321, i32 noundef %137, i32 noundef %322, i32 noundef %323, i32 noundef %324, i32 noundef %325, i32 noundef %153, i32 noundef %326, i32 noundef %327, i32 noundef %165, i32 noundef %328, i32 noundef %329)
  %331 = zext nneg i8 %171 to i32
  %332 = zext nneg i8 %181 to i32
  %333 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.4.11, i32 noundef %331, i32 noundef %179, i32 noundef %332, i32 noundef %189)
  %334 = zext nneg i8 %191 to i32
  %335 = zext nneg i8 %193 to i32
  %336 = zext nneg i8 %203 to i32
  %337 = zext nneg i8 %205 to i32
  %338 = zext nneg i8 %207 to i32
  %339 = zext nneg i8 %209 to i32
  %340 = zext nneg i8 %219 to i32
  %341 = zext nneg i8 %221 to i32
  %342 = zext nneg i8 %231 to i32
  %343 = zext nneg i8 %233 to i32
  %344 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.2.9, i32 noundef %334, i32 noundef %335, i32 noundef %201, i32 noundef %336, i32 noundef %337, i32 noundef %338, i32 noundef %339, i32 noundef %217, i32 noundef %340, i32 noundef %341, i32 noundef %229, i32 noundef %342, i32 noundef %343)
  %345 = zext nneg i8 %235 to i32
  %346 = zext nneg i8 %245 to i32
  %347 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef %345, i32 noundef %243, i32 noundef %346, i32 noundef %253)
  %348 = zext nneg i8 %255 to i32
  %349 = zext nneg i8 %257 to i32
  %350 = zext nneg i8 %267 to i32
  %351 = zext nneg i8 %269 to i32
  %352 = zext nneg i8 %271 to i32
  %353 = zext nneg i8 %273 to i32
  %354 = zext nneg i8 %283 to i32
  %355 = zext nneg i8 %285 to i32
  %356 = zext nneg i8 %295 to i32
  %357 = zext nneg i8 %296 to i32
  %358 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.2.9, i32 noundef %348, i32 noundef %349, i32 noundef %265, i32 noundef %350, i32 noundef %351, i32 noundef %352, i32 noundef %353, i32 noundef %281, i32 noundef %354, i32 noundef %355, i32 noundef %293, i32 noundef %356, i32 noundef %357)
  br label %359

359:                                              ; preds = %7, %3
  %360 = phi i32 [ 0, %7 ], [ -1, %3 ]
  ret i32 %360
}

; Function Attrs: nounwind uwtable
define dso_local void @Gsm_Long_Term_Predictor(ptr nocapture noundef readnone %0, ptr noundef readonly %1, ptr noundef readonly %2, ptr noundef writeonly %3, ptr noundef writeonly %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #2 {
  %8 = alloca [40 x i16], align 16
  %9 = icmp eq ptr %1, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  tail call void @__assert_fail(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1.15, i32 noundef 545, ptr noundef nonnull @__PRETTY_FUNCTION__.Gsm_Long_Term_Predictor) #25
  unreachable

11:                                               ; preds = %7
  %12 = icmp eq ptr %2, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %11
  tail call void @__assert_fail(ptr noundef nonnull @.str.2.16, ptr noundef nonnull @.str.1.15, i32 noundef 545, ptr noundef nonnull @__PRETTY_FUNCTION__.Gsm_Long_Term_Predictor) #25
  unreachable

14:                                               ; preds = %11
  %15 = icmp eq ptr %3, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %14
  tail call void @__assert_fail(ptr noundef nonnull @.str.3.17, ptr noundef nonnull @.str.1.15, i32 noundef 545, ptr noundef nonnull @__PRETTY_FUNCTION__.Gsm_Long_Term_Predictor) #25
  unreachable

17:                                               ; preds = %14
  %18 = icmp eq ptr %4, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %17
  tail call void @__assert_fail(ptr noundef nonnull @.str.4.18, ptr noundef nonnull @.str.1.15, i32 noundef 546, ptr noundef nonnull @__PRETTY_FUNCTION__.Gsm_Long_Term_Predictor) #25
  unreachable

20:                                               ; preds = %17
  %21 = icmp eq ptr %5, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %20
  tail call void @__assert_fail(ptr noundef nonnull @.str.5.19, ptr noundef nonnull @.str.1.15, i32 noundef 546, ptr noundef nonnull @__PRETTY_FUNCTION__.Gsm_Long_Term_Predictor) #25
  unreachable

23:                                               ; preds = %20
  %24 = icmp eq ptr %6, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %23
  tail call void @__assert_fail(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1.15, i32 noundef 546, ptr noundef nonnull @__PRETTY_FUNCTION__.Gsm_Long_Term_Predictor) #25
  unreachable

26:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %8) #26
  br label %27

27:                                               ; preds = %27, %26
  %28 = phi i64 [ 0, %26 ], [ %38, %27 ]
  %29 = phi i16 [ 0, %26 ], [ %37, %27 ]
  %30 = getelementptr inbounds i16, ptr %1, i64 %28
  %31 = load i16, ptr %30, align 2, !tbaa !12
  %32 = icmp slt i16 %31, 0
  %33 = icmp eq i16 %31, -32768
  %34 = sub i16 0, %31
  %35 = select i1 %33, i16 32767, i16 %34
  %36 = select i1 %32, i16 %35, i16 %31
  %37 = tail call i16 @llvm.smax.i16(i16 %36, i16 %29)
  %38 = add nuw nsw i64 %28, 1
  %39 = icmp eq i64 %38, 40
  br i1 %39, label %40, label %27, !llvm.loop !30

40:                                               ; preds = %27
  %41 = icmp eq i16 %37, 0
  br i1 %41, label %50, label %42

42:                                               ; preds = %40
  %43 = icmp sgt i16 %37, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %42
  tail call void @__assert_fail(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1.15, i32 noundef 101, ptr noundef nonnull @__PRETTY_FUNCTION__.Calculation_of_the_LTP_parameters) #25
  unreachable

45:                                               ; preds = %42
  %46 = zext nneg i16 %37 to i64
  %47 = shl nuw nsw i64 %46, 16
  %48 = tail call signext i16 @gsm_norm(i64 noundef %47) #26
  %49 = sext i16 %48 to i32
  br label %50

50:                                               ; preds = %45, %40
  %51 = phi i32 [ %49, %45 ], [ 0, %40 ]
  %52 = icmp sgt i32 %51, 6
  %53 = shl nsw i32 %51, 16
  %54 = sub i32 393216, %53
  %55 = ashr exact i32 %54, 16
  %56 = select i1 %52, i32 0, i32 %55
  %57 = icmp sgt i32 %56, -1
  br i1 %57, label %179, label %58

58:                                               ; preds = %50
  tail call void @__assert_fail(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1.15, i32 noundef 108, ptr noundef nonnull @__PRETTY_FUNCTION__.Calculation_of_the_LTP_parameters) #25
  unreachable

59:                                               ; preds = %179
  %60 = load i16, ptr %8, align 16, !tbaa !12
  %61 = sext i16 %60 to i64
  %62 = getelementptr inbounds [40 x i16], ptr %8, i64 0, i64 1
  %63 = load i16, ptr %62, align 2, !tbaa !12
  %64 = sext i16 %63 to i64
  %65 = getelementptr inbounds [40 x i16], ptr %8, i64 0, i64 2
  %66 = load i16, ptr %65, align 4, !tbaa !12
  %67 = sext i16 %66 to i64
  %68 = getelementptr inbounds [40 x i16], ptr %8, i64 0, i64 3
  %69 = load i16, ptr %68, align 2, !tbaa !12
  %70 = sext i16 %69 to i64
  %71 = getelementptr inbounds [40 x i16], ptr %8, i64 0, i64 4
  %72 = load i16, ptr %71, align 8, !tbaa !12
  %73 = sext i16 %72 to i64
  %74 = getelementptr inbounds [40 x i16], ptr %8, i64 0, i64 5
  %75 = load i16, ptr %74, align 2, !tbaa !12
  %76 = sext i16 %75 to i64
  %77 = getelementptr inbounds [40 x i16], ptr %8, i64 0, i64 6
  %78 = load i16, ptr %77, align 4, !tbaa !12
  %79 = sext i16 %78 to i64
  %80 = getelementptr inbounds [40 x i16], ptr %8, i64 0, i64 7
  %81 = load i16, ptr %80, align 2, !tbaa !12
  %82 = sext i16 %81 to i64
  %83 = getelementptr inbounds [40 x i16], ptr %8, i64 0, i64 8
  %84 = load i16, ptr %83, align 16, !tbaa !12
  %85 = sext i16 %84 to i64
  %86 = getelementptr inbounds [40 x i16], ptr %8, i64 0, i64 9
  %87 = load i16, ptr %86, align 2, !tbaa !12
  %88 = sext i16 %87 to i64
  %89 = getelementptr inbounds [40 x i16], ptr %8, i64 0, i64 10
  %90 = load i16, ptr %89, align 4, !tbaa !12
  %91 = sext i16 %90 to i64
  %92 = getelementptr inbounds [40 x i16], ptr %8, i64 0, i64 11
  %93 = load i16, ptr %92, align 2, !tbaa !12
  %94 = sext i16 %93 to i64
  %95 = getelementptr inbounds [40 x i16], ptr %8, i64 0, i64 12
  %96 = load i16, ptr %95, align 8, !tbaa !12
  %97 = sext i16 %96 to i64
  %98 = getelementptr inbounds [40 x i16], ptr %8, i64 0, i64 13
  %99 = load i16, ptr %98, align 2, !tbaa !12
  %100 = sext i16 %99 to i64
  %101 = getelementptr inbounds [40 x i16], ptr %8, i64 0, i64 14
  %102 = load i16, ptr %101, align 4, !tbaa !12
  %103 = sext i16 %102 to i64
  %104 = getelementptr inbounds [40 x i16], ptr %8, i64 0, i64 15
  %105 = load i16, ptr %104, align 2, !tbaa !12
  %106 = sext i16 %105 to i64
  %107 = getelementptr inbounds [40 x i16], ptr %8, i64 0, i64 16
  %108 = load i16, ptr %107, align 16, !tbaa !12
  %109 = sext i16 %108 to i64
  %110 = getelementptr inbounds [40 x i16], ptr %8, i64 0, i64 17
  %111 = load i16, ptr %110, align 2, !tbaa !12
  %112 = sext i16 %111 to i64
  %113 = getelementptr inbounds [40 x i16], ptr %8, i64 0, i64 18
  %114 = load i16, ptr %113, align 4, !tbaa !12
  %115 = sext i16 %114 to i64
  %116 = getelementptr inbounds [40 x i16], ptr %8, i64 0, i64 19
  %117 = load i16, ptr %116, align 2, !tbaa !12
  %118 = sext i16 %117 to i64
  %119 = getelementptr inbounds [40 x i16], ptr %8, i64 0, i64 20
  %120 = load i16, ptr %119, align 8, !tbaa !12
  %121 = sext i16 %120 to i64
  %122 = getelementptr inbounds [40 x i16], ptr %8, i64 0, i64 21
  %123 = load i16, ptr %122, align 2, !tbaa !12
  %124 = sext i16 %123 to i64
  %125 = getelementptr inbounds [40 x i16], ptr %8, i64 0, i64 22
  %126 = load i16, ptr %125, align 4, !tbaa !12
  %127 = sext i16 %126 to i64
  %128 = getelementptr inbounds [40 x i16], ptr %8, i64 0, i64 23
  %129 = load i16, ptr %128, align 2, !tbaa !12
  %130 = sext i16 %129 to i64
  %131 = getelementptr inbounds [40 x i16], ptr %8, i64 0, i64 24
  %132 = load i16, ptr %131, align 16, !tbaa !12
  %133 = sext i16 %132 to i64
  %134 = getelementptr inbounds [40 x i16], ptr %8, i64 0, i64 25
  %135 = load i16, ptr %134, align 2, !tbaa !12
  %136 = sext i16 %135 to i64
  %137 = getelementptr inbounds [40 x i16], ptr %8, i64 0, i64 26
  %138 = load i16, ptr %137, align 4, !tbaa !12
  %139 = sext i16 %138 to i64
  %140 = getelementptr inbounds [40 x i16], ptr %8, i64 0, i64 27
  %141 = load i16, ptr %140, align 2, !tbaa !12
  %142 = sext i16 %141 to i64
  %143 = getelementptr inbounds [40 x i16], ptr %8, i64 0, i64 28
  %144 = load i16, ptr %143, align 8, !tbaa !12
  %145 = sext i16 %144 to i64
  %146 = getelementptr inbounds [40 x i16], ptr %8, i64 0, i64 29
  %147 = load i16, ptr %146, align 2, !tbaa !12
  %148 = sext i16 %147 to i64
  %149 = getelementptr inbounds [40 x i16], ptr %8, i64 0, i64 30
  %150 = load i16, ptr %149, align 4, !tbaa !12
  %151 = sext i16 %150 to i64
  %152 = getelementptr inbounds [40 x i16], ptr %8, i64 0, i64 31
  %153 = load i16, ptr %152, align 2, !tbaa !12
  %154 = sext i16 %153 to i64
  %155 = getelementptr inbounds [40 x i16], ptr %8, i64 0, i64 32
  %156 = load i16, ptr %155, align 16, !tbaa !12
  %157 = sext i16 %156 to i64
  %158 = getelementptr inbounds [40 x i16], ptr %8, i64 0, i64 33
  %159 = load i16, ptr %158, align 2, !tbaa !12
  %160 = sext i16 %159 to i64
  %161 = getelementptr inbounds [40 x i16], ptr %8, i64 0, i64 34
  %162 = load i16, ptr %161, align 4, !tbaa !12
  %163 = sext i16 %162 to i64
  %164 = getelementptr inbounds [40 x i16], ptr %8, i64 0, i64 35
  %165 = load i16, ptr %164, align 2, !tbaa !12
  %166 = sext i16 %165 to i64
  %167 = getelementptr inbounds [40 x i16], ptr %8, i64 0, i64 36
  %168 = load i16, ptr %167, align 8, !tbaa !12
  %169 = sext i16 %168 to i64
  %170 = getelementptr inbounds [40 x i16], ptr %8, i64 0, i64 37
  %171 = load i16, ptr %170, align 2, !tbaa !12
  %172 = sext i16 %171 to i64
  %173 = getelementptr inbounds [40 x i16], ptr %8, i64 0, i64 38
  %174 = load i16, ptr %173, align 4, !tbaa !12
  %175 = sext i16 %174 to i64
  %176 = getelementptr inbounds [40 x i16], ptr %8, i64 0, i64 39
  %177 = load i16, ptr %176, align 2, !tbaa !12
  %178 = sext i16 %177 to i64
  br label %189

179:                                              ; preds = %179, %50
  %180 = phi i64 [ %187, %179 ], [ 0, %50 ]
  %181 = getelementptr inbounds i16, ptr %1, i64 %180
  %182 = load i16, ptr %181, align 2, !tbaa !12
  %183 = sext i16 %182 to i32
  %184 = ashr i32 %183, %56
  %185 = trunc i32 %184 to i16
  %186 = getelementptr inbounds [40 x i16], ptr %8, i64 0, i64 %180
  store i16 %185, ptr %186, align 2, !tbaa !12
  %187 = add nuw nsw i64 %180, 1
  %188 = icmp eq i64 %187, 40
  br i1 %188, label %59, label %179, !llvm.loop !31

189:                                              ; preds = %189, %59
  %190 = phi i64 [ 40, %59 ], [ %436, %189 ]
  %191 = phi i16 [ 40, %59 ], [ %435, %189 ]
  %192 = phi i64 [ 0, %59 ], [ %434, %189 ]
  %193 = sub nsw i64 0, %190
  %194 = getelementptr inbounds i16, ptr %2, i64 %193
  %195 = load i16, ptr %194, align 2, !tbaa !12
  %196 = sext i16 %195 to i64
  %197 = mul nsw i64 %196, %61
  %198 = sub nsw i64 1, %190
  %199 = getelementptr inbounds i16, ptr %2, i64 %198
  %200 = load i16, ptr %199, align 2, !tbaa !12
  %201 = sext i16 %200 to i64
  %202 = mul nsw i64 %201, %64
  %203 = add nsw i64 %202, %197
  %204 = sub nsw i64 2, %190
  %205 = getelementptr inbounds i16, ptr %2, i64 %204
  %206 = load i16, ptr %205, align 2, !tbaa !12
  %207 = sext i16 %206 to i64
  %208 = mul nsw i64 %207, %67
  %209 = add nsw i64 %203, %208
  %210 = sub nsw i64 3, %190
  %211 = getelementptr inbounds i16, ptr %2, i64 %210
  %212 = load i16, ptr %211, align 2, !tbaa !12
  %213 = sext i16 %212 to i64
  %214 = mul nsw i64 %213, %70
  %215 = add nsw i64 %209, %214
  %216 = sub nsw i64 4, %190
  %217 = getelementptr inbounds i16, ptr %2, i64 %216
  %218 = load i16, ptr %217, align 2, !tbaa !12
  %219 = sext i16 %218 to i64
  %220 = mul nsw i64 %219, %73
  %221 = add nsw i64 %215, %220
  %222 = sub nsw i64 5, %190
  %223 = getelementptr inbounds i16, ptr %2, i64 %222
  %224 = load i16, ptr %223, align 2, !tbaa !12
  %225 = sext i16 %224 to i64
  %226 = mul nsw i64 %225, %76
  %227 = add nsw i64 %221, %226
  %228 = sub nsw i64 6, %190
  %229 = getelementptr inbounds i16, ptr %2, i64 %228
  %230 = load i16, ptr %229, align 2, !tbaa !12
  %231 = sext i16 %230 to i64
  %232 = mul nsw i64 %231, %79
  %233 = add nsw i64 %227, %232
  %234 = sub nsw i64 7, %190
  %235 = getelementptr inbounds i16, ptr %2, i64 %234
  %236 = load i16, ptr %235, align 2, !tbaa !12
  %237 = sext i16 %236 to i64
  %238 = mul nsw i64 %237, %82
  %239 = add nsw i64 %233, %238
  %240 = sub nsw i64 8, %190
  %241 = getelementptr inbounds i16, ptr %2, i64 %240
  %242 = load i16, ptr %241, align 2, !tbaa !12
  %243 = sext i16 %242 to i64
  %244 = mul nsw i64 %243, %85
  %245 = add nsw i64 %239, %244
  %246 = sub nsw i64 9, %190
  %247 = getelementptr inbounds i16, ptr %2, i64 %246
  %248 = load i16, ptr %247, align 2, !tbaa !12
  %249 = sext i16 %248 to i64
  %250 = mul nsw i64 %249, %88
  %251 = add nsw i64 %245, %250
  %252 = sub nsw i64 10, %190
  %253 = getelementptr inbounds i16, ptr %2, i64 %252
  %254 = load i16, ptr %253, align 2, !tbaa !12
  %255 = sext i16 %254 to i64
  %256 = mul nsw i64 %255, %91
  %257 = add nsw i64 %251, %256
  %258 = sub nsw i64 11, %190
  %259 = getelementptr inbounds i16, ptr %2, i64 %258
  %260 = load i16, ptr %259, align 2, !tbaa !12
  %261 = sext i16 %260 to i64
  %262 = mul nsw i64 %261, %94
  %263 = add nsw i64 %257, %262
  %264 = sub nsw i64 12, %190
  %265 = getelementptr inbounds i16, ptr %2, i64 %264
  %266 = load i16, ptr %265, align 2, !tbaa !12
  %267 = sext i16 %266 to i64
  %268 = mul nsw i64 %267, %97
  %269 = add nsw i64 %263, %268
  %270 = sub nsw i64 13, %190
  %271 = getelementptr inbounds i16, ptr %2, i64 %270
  %272 = load i16, ptr %271, align 2, !tbaa !12
  %273 = sext i16 %272 to i64
  %274 = mul nsw i64 %273, %100
  %275 = add nsw i64 %269, %274
  %276 = sub nsw i64 14, %190
  %277 = getelementptr inbounds i16, ptr %2, i64 %276
  %278 = load i16, ptr %277, align 2, !tbaa !12
  %279 = sext i16 %278 to i64
  %280 = mul nsw i64 %279, %103
  %281 = add nsw i64 %275, %280
  %282 = sub nsw i64 15, %190
  %283 = getelementptr inbounds i16, ptr %2, i64 %282
  %284 = load i16, ptr %283, align 2, !tbaa !12
  %285 = sext i16 %284 to i64
  %286 = mul nsw i64 %285, %106
  %287 = add nsw i64 %281, %286
  %288 = sub nsw i64 16, %190
  %289 = getelementptr inbounds i16, ptr %2, i64 %288
  %290 = load i16, ptr %289, align 2, !tbaa !12
  %291 = sext i16 %290 to i64
  %292 = mul nsw i64 %291, %109
  %293 = add nsw i64 %287, %292
  %294 = sub nsw i64 17, %190
  %295 = getelementptr inbounds i16, ptr %2, i64 %294
  %296 = load i16, ptr %295, align 2, !tbaa !12
  %297 = sext i16 %296 to i64
  %298 = mul nsw i64 %297, %112
  %299 = add nsw i64 %293, %298
  %300 = sub nsw i64 18, %190
  %301 = getelementptr inbounds i16, ptr %2, i64 %300
  %302 = load i16, ptr %301, align 2, !tbaa !12
  %303 = sext i16 %302 to i64
  %304 = mul nsw i64 %303, %115
  %305 = add nsw i64 %299, %304
  %306 = sub nsw i64 19, %190
  %307 = getelementptr inbounds i16, ptr %2, i64 %306
  %308 = load i16, ptr %307, align 2, !tbaa !12
  %309 = sext i16 %308 to i64
  %310 = mul nsw i64 %309, %118
  %311 = add nsw i64 %305, %310
  %312 = sub nsw i64 20, %190
  %313 = getelementptr inbounds i16, ptr %2, i64 %312
  %314 = load i16, ptr %313, align 2, !tbaa !12
  %315 = sext i16 %314 to i64
  %316 = mul nsw i64 %315, %121
  %317 = add nsw i64 %311, %316
  %318 = sub nsw i64 21, %190
  %319 = getelementptr inbounds i16, ptr %2, i64 %318
  %320 = load i16, ptr %319, align 2, !tbaa !12
  %321 = sext i16 %320 to i64
  %322 = mul nsw i64 %321, %124
  %323 = add nsw i64 %317, %322
  %324 = sub nsw i64 22, %190
  %325 = getelementptr inbounds i16, ptr %2, i64 %324
  %326 = load i16, ptr %325, align 2, !tbaa !12
  %327 = sext i16 %326 to i64
  %328 = mul nsw i64 %327, %127
  %329 = add nsw i64 %323, %328
  %330 = sub nsw i64 23, %190
  %331 = getelementptr inbounds i16, ptr %2, i64 %330
  %332 = load i16, ptr %331, align 2, !tbaa !12
  %333 = sext i16 %332 to i64
  %334 = mul nsw i64 %333, %130
  %335 = add nsw i64 %329, %334
  %336 = sub nsw i64 24, %190
  %337 = getelementptr inbounds i16, ptr %2, i64 %336
  %338 = load i16, ptr %337, align 2, !tbaa !12
  %339 = sext i16 %338 to i64
  %340 = mul nsw i64 %339, %133
  %341 = add nsw i64 %335, %340
  %342 = sub nsw i64 25, %190
  %343 = getelementptr inbounds i16, ptr %2, i64 %342
  %344 = load i16, ptr %343, align 2, !tbaa !12
  %345 = sext i16 %344 to i64
  %346 = mul nsw i64 %345, %136
  %347 = add nsw i64 %341, %346
  %348 = sub nsw i64 26, %190
  %349 = getelementptr inbounds i16, ptr %2, i64 %348
  %350 = load i16, ptr %349, align 2, !tbaa !12
  %351 = sext i16 %350 to i64
  %352 = mul nsw i64 %351, %139
  %353 = add nsw i64 %347, %352
  %354 = sub nsw i64 27, %190
  %355 = getelementptr inbounds i16, ptr %2, i64 %354
  %356 = load i16, ptr %355, align 2, !tbaa !12
  %357 = sext i16 %356 to i64
  %358 = mul nsw i64 %357, %142
  %359 = add nsw i64 %353, %358
  %360 = sub nsw i64 28, %190
  %361 = getelementptr inbounds i16, ptr %2, i64 %360
  %362 = load i16, ptr %361, align 2, !tbaa !12
  %363 = sext i16 %362 to i64
  %364 = mul nsw i64 %363, %145
  %365 = add nsw i64 %359, %364
  %366 = sub nsw i64 29, %190
  %367 = getelementptr inbounds i16, ptr %2, i64 %366
  %368 = load i16, ptr %367, align 2, !tbaa !12
  %369 = sext i16 %368 to i64
  %370 = mul nsw i64 %369, %148
  %371 = add nsw i64 %365, %370
  %372 = sub nsw i64 30, %190
  %373 = getelementptr inbounds i16, ptr %2, i64 %372
  %374 = load i16, ptr %373, align 2, !tbaa !12
  %375 = sext i16 %374 to i64
  %376 = mul nsw i64 %375, %151
  %377 = add nsw i64 %371, %376
  %378 = sub nsw i64 31, %190
  %379 = getelementptr inbounds i16, ptr %2, i64 %378
  %380 = load i16, ptr %379, align 2, !tbaa !12
  %381 = sext i16 %380 to i64
  %382 = mul nsw i64 %381, %154
  %383 = add nsw i64 %377, %382
  %384 = sub nsw i64 32, %190
  %385 = getelementptr inbounds i16, ptr %2, i64 %384
  %386 = load i16, ptr %385, align 2, !tbaa !12
  %387 = sext i16 %386 to i64
  %388 = mul nsw i64 %387, %157
  %389 = add nsw i64 %383, %388
  %390 = sub nsw i64 33, %190
  %391 = getelementptr inbounds i16, ptr %2, i64 %390
  %392 = load i16, ptr %391, align 2, !tbaa !12
  %393 = sext i16 %392 to i64
  %394 = mul nsw i64 %393, %160
  %395 = add nsw i64 %389, %394
  %396 = sub nsw i64 34, %190
  %397 = getelementptr inbounds i16, ptr %2, i64 %396
  %398 = load i16, ptr %397, align 2, !tbaa !12
  %399 = sext i16 %398 to i64
  %400 = mul nsw i64 %399, %163
  %401 = add nsw i64 %395, %400
  %402 = sub nsw i64 35, %190
  %403 = getelementptr inbounds i16, ptr %2, i64 %402
  %404 = load i16, ptr %403, align 2, !tbaa !12
  %405 = sext i16 %404 to i64
  %406 = mul nsw i64 %405, %166
  %407 = add nsw i64 %401, %406
  %408 = sub nsw i64 36, %190
  %409 = getelementptr inbounds i16, ptr %2, i64 %408
  %410 = load i16, ptr %409, align 2, !tbaa !12
  %411 = sext i16 %410 to i64
  %412 = mul nsw i64 %411, %169
  %413 = add nsw i64 %407, %412
  %414 = sub nsw i64 37, %190
  %415 = getelementptr inbounds i16, ptr %2, i64 %414
  %416 = load i16, ptr %415, align 2, !tbaa !12
  %417 = sext i16 %416 to i64
  %418 = mul nsw i64 %417, %172
  %419 = add nsw i64 %413, %418
  %420 = sub nsw i64 38, %190
  %421 = getelementptr inbounds i16, ptr %2, i64 %420
  %422 = load i16, ptr %421, align 2, !tbaa !12
  %423 = sext i16 %422 to i64
  %424 = mul nsw i64 %423, %175
  %425 = add nsw i64 %419, %424
  %426 = sub nsw i64 39, %190
  %427 = getelementptr inbounds i16, ptr %2, i64 %426
  %428 = load i16, ptr %427, align 2, !tbaa !12
  %429 = sext i16 %428 to i64
  %430 = mul nsw i64 %429, %178
  %431 = add nsw i64 %425, %430
  %432 = icmp sgt i64 %431, %192
  %433 = trunc i64 %190 to i16
  %434 = tail call i64 @llvm.smax.i64(i64 %431, i64 %192)
  %435 = select i1 %432, i16 %433, i16 %191
  %436 = add nuw nsw i64 %190, 1
  %437 = icmp eq i64 %436, 121
  br i1 %437, label %438, label %189, !llvm.loop !32

438:                                              ; preds = %189
  store i16 %435, ptr %5, align 2, !tbaa !12
  %439 = icmp slt i32 %56, 101
  br i1 %439, label %441, label %440

440:                                              ; preds = %438
  tail call void @__assert_fail(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1.15, i32 noundef 165, ptr noundef nonnull @__PRETTY_FUNCTION__.Calculation_of_the_LTP_parameters) #25
  unreachable

441:                                              ; preds = %438
  %442 = shl nuw nsw i64 %434, 1
  %443 = sub nsw i32 6, %56
  %444 = zext nneg i32 %443 to i64
  %445 = lshr i64 %442, %444
  %446 = add i16 %435, -40
  %447 = icmp ult i16 %446, 81
  br i1 %447, label %448, label %450

448:                                              ; preds = %441
  %449 = zext nneg i16 %435 to i64
  br label %451

450:                                              ; preds = %441
  tail call void @__assert_fail(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1.15, i32 noundef 168, ptr noundef nonnull @__PRETTY_FUNCTION__.Calculation_of_the_LTP_parameters) #25
  unreachable

451:                                              ; preds = %451, %448
  %452 = phi i64 [ 0, %448 ], [ %461, %451 ]
  %453 = phi i64 [ 0, %448 ], [ %460, %451 ]
  %454 = sub nsw i64 %452, %449
  %455 = getelementptr inbounds i16, ptr %2, i64 %454
  %456 = load i16, ptr %455, align 2, !tbaa !12
  %457 = ashr i16 %456, 3
  %458 = sext i16 %457 to i64
  %459 = mul nsw i64 %458, %458
  %460 = add nuw nsw i64 %459, %453
  %461 = add nuw nsw i64 %452, 1
  %462 = icmp eq i64 %461, 40
  br i1 %462, label %463, label %451, !llvm.loop !33

463:                                              ; preds = %451
  %464 = shl nuw i64 %460, 1
  %465 = icmp eq i64 %445, 0
  br i1 %465, label %490, label %466

466:                                              ; preds = %463
  %467 = icmp slt i64 %445, %464
  br i1 %467, label %468, label %490

468:                                              ; preds = %466
  %469 = tail call signext i16 @gsm_norm(i64 noundef %464) #26
  %470 = sext i16 %469 to i64
  %471 = and i64 %470, 4294967295
  %472 = shl i64 %445, %471
  %473 = trunc i64 %472 to i32
  %474 = shl i64 %464, %471
  %475 = lshr i64 %474, 16
  %476 = trunc i64 %475 to i16
  %477 = ashr i32 %473, 16
  br label %478

478:                                              ; preds = %485, %468
  %479 = phi i64 [ 0, %468 ], [ %486, %485 ]
  %480 = getelementptr inbounds [4 x i16], ptr @gsm_DLB, i64 0, i64 %479
  %481 = load i16, ptr %480, align 2, !tbaa !12
  %482 = tail call signext i16 @gsm_mult(i16 noundef signext %476, i16 noundef signext %481) #26
  %483 = sext i16 %482 to i32
  %484 = icmp sgt i32 %477, %483
  br i1 %484, label %485, label %488

485:                                              ; preds = %478
  %486 = add nuw nsw i64 %479, 1
  %487 = icmp eq i64 %486, 3
  br i1 %487, label %490, label %478, !llvm.loop !34

488:                                              ; preds = %478
  %489 = trunc i64 %479 to i16
  br label %490

490:                                              ; preds = %488, %485, %466, %463
  %491 = phi i16 [ 0, %463 ], [ 3, %466 ], [ %489, %488 ], [ 3, %485 ]
  store i16 %491, ptr %6, align 2, !tbaa !12
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %8) #26
  %492 = load i16, ptr %5, align 2, !tbaa !12
  switch i16 %491, label %569 [
    i16 0, label %499
    i16 1, label %497
    i16 2, label %495
    i16 3, label %493
  ]

493:                                              ; preds = %490
  %494 = sext i16 %492 to i64
  br label %552

495:                                              ; preds = %490
  %496 = sext i16 %492 to i64
  br label %535

497:                                              ; preds = %490
  %498 = sext i16 %492 to i64
  br label %518

499:                                              ; preds = %490
  %500 = sext i16 %492 to i64
  br label %501

501:                                              ; preds = %501, %499
  %502 = phi i64 [ 0, %499 ], [ %516, %501 ]
  %503 = sub nsw i64 %502, %500
  %504 = getelementptr inbounds i16, ptr %2, i64 %503
  %505 = load i16, ptr %504, align 2, !tbaa !12
  %506 = sext i16 %505 to i32
  %507 = mul nsw i32 %506, 3277
  %508 = add nsw i32 %507, 16384
  %509 = ashr i32 %508, 15
  %510 = trunc i32 %509 to i16
  %511 = getelementptr inbounds i16, ptr %4, i64 %502
  store i16 %510, ptr %511, align 2, !tbaa !12
  %512 = getelementptr inbounds i16, ptr %1, i64 %502
  %513 = load i16, ptr %512, align 2, !tbaa !12
  %514 = tail call i16 @llvm.ssub.sat.i16(i16 %513, i16 %510)
  %515 = getelementptr inbounds i16, ptr %3, i64 %502
  store i16 %514, ptr %515, align 2, !tbaa !12
  %516 = add nuw nsw i64 %502, 1
  %517 = icmp eq i64 %516, 40
  br i1 %517, label %569, label %501, !llvm.loop !35

518:                                              ; preds = %518, %497
  %519 = phi i64 [ 0, %497 ], [ %533, %518 ]
  %520 = sub nsw i64 %519, %498
  %521 = getelementptr inbounds i16, ptr %2, i64 %520
  %522 = load i16, ptr %521, align 2, !tbaa !12
  %523 = sext i16 %522 to i32
  %524 = mul nsw i32 %523, 11469
  %525 = add nsw i32 %524, 16384
  %526 = lshr i32 %525, 15
  %527 = trunc i32 %526 to i16
  %528 = getelementptr inbounds i16, ptr %4, i64 %519
  store i16 %527, ptr %528, align 2, !tbaa !12
  %529 = getelementptr inbounds i16, ptr %1, i64 %519
  %530 = load i16, ptr %529, align 2, !tbaa !12
  %531 = tail call i16 @llvm.ssub.sat.i16(i16 %530, i16 %527)
  %532 = getelementptr inbounds i16, ptr %3, i64 %519
  store i16 %531, ptr %532, align 2, !tbaa !12
  %533 = add nuw nsw i64 %519, 1
  %534 = icmp eq i64 %533, 40
  br i1 %534, label %569, label %518, !llvm.loop !36

535:                                              ; preds = %535, %495
  %536 = phi i64 [ 0, %495 ], [ %550, %535 ]
  %537 = sub nsw i64 %536, %496
  %538 = getelementptr inbounds i16, ptr %2, i64 %537
  %539 = load i16, ptr %538, align 2, !tbaa !12
  %540 = sext i16 %539 to i64
  %541 = mul nsw i64 %540, 21299
  %542 = add nsw i64 %541, 16384
  %543 = lshr i64 %542, 15
  %544 = trunc i64 %543 to i16
  %545 = getelementptr inbounds i16, ptr %4, i64 %536
  store i16 %544, ptr %545, align 2, !tbaa !12
  %546 = getelementptr inbounds i16, ptr %1, i64 %536
  %547 = load i16, ptr %546, align 2, !tbaa !12
  %548 = tail call i16 @llvm.ssub.sat.i16(i16 %547, i16 %544)
  %549 = getelementptr inbounds i16, ptr %3, i64 %536
  store i16 %548, ptr %549, align 2, !tbaa !12
  %550 = add nuw nsw i64 %536, 1
  %551 = icmp eq i64 %550, 40
  br i1 %551, label %569, label %535, !llvm.loop !37

552:                                              ; preds = %552, %493
  %553 = phi i64 [ 0, %493 ], [ %567, %552 ]
  %554 = sub nsw i64 %553, %494
  %555 = getelementptr inbounds i16, ptr %2, i64 %554
  %556 = load i16, ptr %555, align 2, !tbaa !12
  %557 = sext i16 %556 to i64
  %558 = mul nsw i64 %557, 32767
  %559 = add nsw i64 %558, 16384
  %560 = lshr i64 %559, 15
  %561 = trunc i64 %560 to i16
  %562 = getelementptr inbounds i16, ptr %4, i64 %553
  store i16 %561, ptr %562, align 2, !tbaa !12
  %563 = getelementptr inbounds i16, ptr %1, i64 %553
  %564 = load i16, ptr %563, align 2, !tbaa !12
  %565 = tail call i16 @llvm.ssub.sat.i16(i16 %564, i16 %561)
  %566 = getelementptr inbounds i16, ptr %3, i64 %553
  store i16 %565, ptr %566, align 2, !tbaa !12
  %567 = add nuw nsw i64 %553, 1
  %568 = icmp eq i64 %567, 40
  br i1 %568, label %569, label %552, !llvm.loop !38

569:                                              ; preds = %552, %535, %518, %501, %490
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #1

; Function Attrs: nounwind uwtable
define dso_local void @Gsm_Long_Term_Synthesis_Filtering(ptr nocapture noundef %0, i16 noundef signext %1, i16 noundef signext %2, ptr nocapture noundef readonly %3, ptr nocapture noundef %4) local_unnamed_addr #2 {
  %6 = add i16 %1, -121
  %7 = icmp ult i16 %6, -81
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.gsm_state, ptr %0, i64 0, i32 7
  %10 = load i16, ptr %9, align 2, !tbaa !27
  br label %11

11:                                               ; preds = %8, %5
  %12 = phi i16 [ %10, %8 ], [ %1, %5 ]
  %13 = getelementptr inbounds %struct.gsm_state, ptr %0, i64 0, i32 7
  store i16 %12, ptr %13, align 2, !tbaa !27
  %14 = add i16 %12, -40
  %15 = icmp ult i16 %14, 81
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  tail call void @__assert_fail(ptr noundef nonnull @.str.7.22, ptr noundef nonnull @.str.1.15, i32 noundef 581, ptr noundef nonnull @__PRETTY_FUNCTION__.Gsm_Long_Term_Synthesis_Filtering) #25
  unreachable

17:                                               ; preds = %11
  %18 = sext i16 %2 to i64
  %19 = getelementptr inbounds [4 x i16], ptr @gsm_QLB, i64 0, i64 %18
  %20 = load i16, ptr %19, align 2, !tbaa !12
  %21 = icmp eq i16 %20, -32768
  br i1 %21, label %26, label %22

22:                                               ; preds = %17
  %23 = sext i16 %20 to i64
  %24 = shl nsw i64 %23, 33
  %25 = zext nneg i16 %12 to i64
  br label %27

26:                                               ; preds = %17
  tail call void @__assert_fail(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1.15, i32 noundef 590, ptr noundef nonnull @__PRETTY_FUNCTION__.Gsm_Long_Term_Synthesis_Filtering) #25
  unreachable

27:                                               ; preds = %27, %22
  %28 = phi i64 [ 0, %22 ], [ %41, %27 ]
  %29 = sub nsw i64 %28, %25
  %30 = getelementptr inbounds i16, ptr %4, i64 %29
  %31 = load i16, ptr %30, align 2, !tbaa !12
  %32 = sext i16 %31 to i64
  %33 = getelementptr inbounds i16, ptr %3, i64 %28
  %34 = load i16, ptr %33, align 2, !tbaa !12
  %35 = mul i64 %24, %32
  %36 = add i64 %35, 140737488355328
  %37 = lshr i64 %36, 48
  %38 = trunc i64 %37 to i16
  %39 = tail call i16 @llvm.sadd.sat.i16(i16 %38, i16 %34)
  %40 = getelementptr inbounds i16, ptr %4, i64 %28
  store i16 %39, ptr %40, align 2, !tbaa !12
  %41 = add nuw nsw i64 %28, 1
  %42 = icmp eq i64 %41, 40
  br i1 %42, label %43, label %27, !llvm.loop !39

43:                                               ; preds = %27
  %44 = getelementptr i8, ptr %4, i64 -240
  %45 = getelementptr i8, ptr %4, i64 -160
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(240) %44, ptr noundef nonnull align 2 dereferenceable(240) %45, i64 240, i1 false), !tbaa !12
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nounwind uwtable
define dso_local void @Gsm_LPC_Analysis(ptr nocapture noundef readnone %0, ptr nocapture noundef %1, ptr nocapture noundef %2) local_unnamed_addr #2 {
  %4 = alloca [9 x i16], align 16
  %5 = alloca [9 x i16], align 16
  %6 = alloca [9 x i64], align 16
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %6) #26
  br label %7

7:                                                ; preds = %7, %3
  %8 = phi i64 [ 0, %3 ], [ %18, %7 ]
  %9 = phi i16 [ 0, %3 ], [ %17, %7 ]
  %10 = getelementptr inbounds i16, ptr %1, i64 %8
  %11 = load i16, ptr %10, align 2, !tbaa !12
  %12 = icmp slt i16 %11, 0
  %13 = icmp eq i16 %11, -32768
  %14 = sub i16 0, %11
  %15 = select i1 %13, i16 32767, i16 %14
  %16 = select i1 %12, i16 %15, i16 %11
  %17 = tail call i16 @llvm.umax.i16(i16 %16, i16 %9)
  %18 = add nuw nsw i64 %8, 1
  %19 = icmp eq i64 %18, 160
  br i1 %19, label %20, label %7, !llvm.loop !40

20:                                               ; preds = %7
  %21 = icmp eq i16 %17, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %20
  %23 = zext nneg i16 %17 to i64
  %24 = shl nuw nsw i64 %23, 16
  %25 = tail call signext i16 @gsm_norm(i64 noundef %24) #26
  %26 = sub i16 4, %25
  %27 = sext i16 %26 to i32
  br label %28

28:                                               ; preds = %22, %20
  %29 = phi i32 [ %27, %22 ], [ 0, %20 ]
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %76

31:                                               ; preds = %28
  switch i32 %29, label %76 [
    i32 1, label %32
    i32 2, label %43
    i32 3, label %54
    i32 4, label %65
  ]

32:                                               ; preds = %32, %31
  %33 = phi i64 [ %41, %32 ], [ 0, %31 ]
  %34 = getelementptr inbounds i16, ptr %1, i64 %33
  %35 = load i16, ptr %34, align 2, !tbaa !12
  %36 = sext i16 %35 to i32
  %37 = shl nsw i32 %36, 14
  %38 = add nsw i32 %37, 16384
  %39 = lshr i32 %38, 15
  %40 = trunc i32 %39 to i16
  store i16 %40, ptr %34, align 2, !tbaa !12
  %41 = add nuw nsw i64 %33, 1
  %42 = icmp eq i64 %41, 160
  br i1 %42, label %76, label %32, !llvm.loop !41

43:                                               ; preds = %43, %31
  %44 = phi i64 [ %52, %43 ], [ 0, %31 ]
  %45 = getelementptr inbounds i16, ptr %1, i64 %44
  %46 = load i16, ptr %45, align 2, !tbaa !12
  %47 = sext i16 %46 to i32
  %48 = shl nsw i32 %47, 13
  %49 = add nsw i32 %48, 16384
  %50 = ashr i32 %49, 15
  %51 = trunc i32 %50 to i16
  store i16 %51, ptr %45, align 2, !tbaa !12
  %52 = add nuw nsw i64 %44, 1
  %53 = icmp eq i64 %52, 160
  br i1 %53, label %76, label %43, !llvm.loop !42

54:                                               ; preds = %54, %31
  %55 = phi i64 [ %63, %54 ], [ 0, %31 ]
  %56 = getelementptr inbounds i16, ptr %1, i64 %55
  %57 = load i16, ptr %56, align 2, !tbaa !12
  %58 = sext i16 %57 to i32
  %59 = shl nsw i32 %58, 12
  %60 = add nsw i32 %59, 16384
  %61 = ashr i32 %60, 15
  %62 = trunc i32 %61 to i16
  store i16 %62, ptr %56, align 2, !tbaa !12
  %63 = add nuw nsw i64 %55, 1
  %64 = icmp eq i64 %63, 160
  br i1 %64, label %76, label %54, !llvm.loop !43

65:                                               ; preds = %65, %31
  %66 = phi i64 [ %74, %65 ], [ 0, %31 ]
  %67 = getelementptr inbounds i16, ptr %1, i64 %66
  %68 = load i16, ptr %67, align 2, !tbaa !12
  %69 = sext i16 %68 to i32
  %70 = shl nsw i32 %69, 11
  %71 = add nsw i32 %70, 16384
  %72 = ashr i32 %71, 15
  %73 = trunc i32 %72 to i16
  store i16 %73, ptr %67, align 2, !tbaa !12
  %74 = add nuw nsw i64 %66, 1
  %75 = icmp eq i64 %74, 160
  br i1 %75, label %76, label %65, !llvm.loop !44

76:                                               ; preds = %65, %54, %43, %32, %31, %28
  %77 = load i16, ptr %1, align 2, !tbaa !12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %6, i8 0, i64 72, i1 false), !tbaa !19
  %78 = sext i16 %77 to i64
  %79 = mul nsw i64 %78, %78
  store i64 %79, ptr %6, align 16, !tbaa !19
  %80 = getelementptr inbounds i16, ptr %1, i64 1
  %81 = load i16, ptr %80, align 2, !tbaa !12
  %82 = sext i16 %81 to i64
  %83 = mul nsw i64 %82, %82
  %84 = add nuw nsw i64 %83, %79
  store i64 %84, ptr %6, align 16, !tbaa !19
  %85 = mul nsw i64 %82, %78
  %86 = getelementptr inbounds i64, ptr %6, i64 1
  %87 = load i64, ptr %86, align 8, !tbaa !19
  %88 = add nsw i64 %87, %85
  store i64 %88, ptr %86, align 8, !tbaa !19
  %89 = getelementptr inbounds i16, ptr %1, i64 2
  %90 = load i16, ptr %89, align 2, !tbaa !12
  %91 = sext i16 %90 to i64
  %92 = mul nsw i64 %91, %91
  %93 = add nuw nsw i64 %92, %84
  store i64 %93, ptr %6, align 16, !tbaa !19
  %94 = mul nsw i64 %91, %82
  %95 = add nsw i64 %94, %88
  store i64 %95, ptr %86, align 8, !tbaa !19
  %96 = mul nsw i64 %91, %78
  %97 = getelementptr inbounds i64, ptr %6, i64 2
  %98 = load i64, ptr %97, align 16, !tbaa !19
  %99 = add nsw i64 %98, %96
  store i64 %99, ptr %97, align 16, !tbaa !19
  %100 = getelementptr inbounds i16, ptr %1, i64 3
  %101 = load i16, ptr %100, align 2, !tbaa !12
  %102 = sext i16 %101 to i64
  %103 = mul nsw i64 %102, %102
  %104 = add nuw nsw i64 %103, %93
  store i64 %104, ptr %6, align 16, !tbaa !19
  %105 = mul nsw i64 %102, %91
  %106 = add nsw i64 %105, %95
  store i64 %106, ptr %86, align 8, !tbaa !19
  %107 = mul nsw i64 %102, %82
  %108 = add nsw i64 %107, %99
  store i64 %108, ptr %97, align 16, !tbaa !19
  %109 = mul nsw i64 %102, %78
  %110 = getelementptr inbounds i64, ptr %6, i64 3
  %111 = load i64, ptr %110, align 8, !tbaa !19
  %112 = add nsw i64 %111, %109
  store i64 %112, ptr %110, align 8, !tbaa !19
  %113 = getelementptr inbounds i16, ptr %1, i64 4
  %114 = load i16, ptr %113, align 2, !tbaa !12
  %115 = sext i16 %114 to i64
  %116 = mul nsw i64 %115, %115
  %117 = add nuw nsw i64 %116, %104
  store i64 %117, ptr %6, align 16, !tbaa !19
  %118 = mul nsw i64 %115, %102
  %119 = add nsw i64 %118, %106
  store i64 %119, ptr %86, align 8, !tbaa !19
  %120 = mul nsw i64 %115, %91
  %121 = add nsw i64 %120, %108
  store i64 %121, ptr %97, align 16, !tbaa !19
  %122 = mul nsw i64 %115, %82
  %123 = add nsw i64 %122, %112
  store i64 %123, ptr %110, align 8, !tbaa !19
  %124 = mul nsw i64 %115, %78
  %125 = getelementptr inbounds i64, ptr %6, i64 4
  %126 = load i64, ptr %125, align 16, !tbaa !19
  %127 = add nsw i64 %126, %124
  store i64 %127, ptr %125, align 16, !tbaa !19
  %128 = getelementptr inbounds i16, ptr %1, i64 5
  %129 = load i16, ptr %128, align 2, !tbaa !12
  %130 = sext i16 %129 to i64
  %131 = mul nsw i64 %130, %130
  %132 = add nuw nsw i64 %131, %117
  store i64 %132, ptr %6, align 16, !tbaa !19
  %133 = mul nsw i64 %130, %115
  %134 = add nsw i64 %133, %119
  store i64 %134, ptr %86, align 8, !tbaa !19
  %135 = mul nsw i64 %130, %102
  %136 = add nsw i64 %135, %121
  store i64 %136, ptr %97, align 16, !tbaa !19
  %137 = mul nsw i64 %130, %91
  %138 = add nsw i64 %137, %123
  store i64 %138, ptr %110, align 8, !tbaa !19
  %139 = mul nsw i64 %130, %82
  %140 = add nsw i64 %139, %127
  store i64 %140, ptr %125, align 16, !tbaa !19
  %141 = mul nsw i64 %130, %78
  %142 = getelementptr inbounds i64, ptr %6, i64 5
  %143 = load i64, ptr %142, align 8, !tbaa !19
  %144 = add nsw i64 %143, %141
  store i64 %144, ptr %142, align 8, !tbaa !19
  %145 = getelementptr inbounds i16, ptr %1, i64 6
  %146 = load i16, ptr %145, align 2, !tbaa !12
  %147 = sext i16 %146 to i64
  %148 = mul nsw i64 %147, %147
  %149 = add nuw nsw i64 %148, %132
  store i64 %149, ptr %6, align 16, !tbaa !19
  %150 = mul nsw i64 %147, %130
  %151 = add nsw i64 %150, %134
  store i64 %151, ptr %86, align 8, !tbaa !19
  %152 = mul nsw i64 %147, %115
  %153 = add nsw i64 %152, %136
  store i64 %153, ptr %97, align 16, !tbaa !19
  %154 = mul nsw i64 %147, %102
  %155 = add nsw i64 %154, %138
  store i64 %155, ptr %110, align 8, !tbaa !19
  %156 = mul nsw i64 %147, %91
  %157 = add nsw i64 %156, %140
  store i64 %157, ptr %125, align 16, !tbaa !19
  %158 = mul nsw i64 %147, %82
  %159 = add nsw i64 %158, %144
  store i64 %159, ptr %142, align 8, !tbaa !19
  %160 = mul nsw i64 %147, %78
  %161 = getelementptr inbounds i64, ptr %6, i64 6
  %162 = load i64, ptr %161, align 16, !tbaa !19
  %163 = add nsw i64 %162, %160
  store i64 %163, ptr %161, align 16, !tbaa !19
  %164 = getelementptr inbounds i16, ptr %1, i64 7
  %165 = load i16, ptr %164, align 2, !tbaa !12
  %166 = sext i16 %165 to i64
  %167 = mul nsw i64 %166, %166
  %168 = add nsw i64 %167, %149
  store i64 %168, ptr %6, align 16, !tbaa !19
  %169 = mul nsw i64 %166, %147
  %170 = add nsw i64 %169, %151
  store i64 %170, ptr %86, align 8, !tbaa !19
  %171 = mul nsw i64 %166, %130
  %172 = add nsw i64 %171, %153
  store i64 %172, ptr %97, align 16, !tbaa !19
  %173 = mul nsw i64 %166, %115
  %174 = add nsw i64 %173, %155
  store i64 %174, ptr %110, align 8, !tbaa !19
  %175 = mul nsw i64 %166, %102
  %176 = add nsw i64 %175, %157
  store i64 %176, ptr %125, align 16, !tbaa !19
  %177 = mul nsw i64 %166, %91
  %178 = add nsw i64 %177, %159
  store i64 %178, ptr %142, align 8, !tbaa !19
  %179 = mul nsw i64 %166, %82
  %180 = add nsw i64 %179, %163
  store i64 %180, ptr %161, align 16, !tbaa !19
  %181 = mul nsw i64 %166, %78
  %182 = getelementptr inbounds i64, ptr %6, i64 7
  %183 = load i64, ptr %182, align 8, !tbaa !19
  %184 = add nsw i64 %183, %181
  store i64 %184, ptr %182, align 8, !tbaa !19
  %185 = getelementptr inbounds i64, ptr %6, i64 8
  %186 = load i64, ptr %185, align 16, !tbaa !19
  br label %188

187:                                              ; preds = %188
  store i64 %204, ptr %6, align 16, !tbaa !19
  store i64 %208, ptr %86, align 8, !tbaa !19
  store i64 %213, ptr %97, align 16, !tbaa !19
  store i64 %218, ptr %110, align 8, !tbaa !19
  store i64 %223, ptr %125, align 16, !tbaa !19
  store i64 %228, ptr %142, align 8, !tbaa !19
  store i64 %233, ptr %161, align 16, !tbaa !19
  store i64 %238, ptr %182, align 8, !tbaa !19
  store i64 %243, ptr %185, align 16, !tbaa !19
  br label %246

188:                                              ; preds = %188, %76
  %189 = phi ptr [ %164, %76 ], [ %200, %188 ]
  %190 = phi i32 [ 8, %76 ], [ %244, %188 ]
  %191 = phi i64 [ %168, %76 ], [ %204, %188 ]
  %192 = phi i64 [ %170, %76 ], [ %208, %188 ]
  %193 = phi i64 [ %172, %76 ], [ %213, %188 ]
  %194 = phi i64 [ %174, %76 ], [ %218, %188 ]
  %195 = phi i64 [ %176, %76 ], [ %223, %188 ]
  %196 = phi i64 [ %178, %76 ], [ %228, %188 ]
  %197 = phi i64 [ %180, %76 ], [ %233, %188 ]
  %198 = phi i64 [ %184, %76 ], [ %238, %188 ]
  %199 = phi i64 [ %186, %76 ], [ %243, %188 ]
  %200 = getelementptr inbounds i16, ptr %189, i64 1
  %201 = load i16, ptr %200, align 2, !tbaa !12
  %202 = sext i16 %201 to i64
  %203 = mul nsw i64 %202, %202
  %204 = add nsw i64 %203, %191
  %205 = load i16, ptr %189, align 2, !tbaa !12
  %206 = sext i16 %205 to i64
  %207 = mul nsw i64 %206, %202
  %208 = add nsw i64 %207, %192
  %209 = getelementptr inbounds i16, ptr %189, i64 -1
  %210 = load i16, ptr %209, align 2, !tbaa !12
  %211 = sext i16 %210 to i64
  %212 = mul nsw i64 %211, %202
  %213 = add nsw i64 %212, %193
  %214 = getelementptr inbounds i16, ptr %189, i64 -2
  %215 = load i16, ptr %214, align 2, !tbaa !12
  %216 = sext i16 %215 to i64
  %217 = mul nsw i64 %216, %202
  %218 = add nsw i64 %217, %194
  %219 = getelementptr inbounds i16, ptr %189, i64 -3
  %220 = load i16, ptr %219, align 2, !tbaa !12
  %221 = sext i16 %220 to i64
  %222 = mul nsw i64 %221, %202
  %223 = add nsw i64 %222, %195
  %224 = getelementptr inbounds i16, ptr %189, i64 -4
  %225 = load i16, ptr %224, align 2, !tbaa !12
  %226 = sext i16 %225 to i64
  %227 = mul nsw i64 %226, %202
  %228 = add nsw i64 %227, %196
  %229 = getelementptr inbounds i16, ptr %189, i64 -5
  %230 = load i16, ptr %229, align 2, !tbaa !12
  %231 = sext i16 %230 to i64
  %232 = mul nsw i64 %231, %202
  %233 = add nsw i64 %232, %197
  %234 = getelementptr inbounds i16, ptr %189, i64 -6
  %235 = load i16, ptr %234, align 2, !tbaa !12
  %236 = sext i16 %235 to i64
  %237 = mul nsw i64 %236, %202
  %238 = add nsw i64 %237, %198
  %239 = getelementptr inbounds i16, ptr %189, i64 -7
  %240 = load i16, ptr %239, align 2, !tbaa !12
  %241 = sext i16 %240 to i64
  %242 = mul nsw i64 %241, %202
  %243 = add nsw i64 %242, %199
  %244 = add nuw nsw i32 %190, 1
  %245 = icmp eq i32 %244, 160
  br i1 %245, label %187, label %188, !llvm.loop !45

246:                                              ; preds = %246, %187
  %247 = phi i64 [ 9, %187 ], [ %248, %246 ]
  %248 = add nsw i64 %247, -1
  %249 = getelementptr inbounds i64, ptr %6, i64 %248
  %250 = load i64, ptr %249, align 8, !tbaa !19
  %251 = shl i64 %250, 1
  store i64 %251, ptr %249, align 8, !tbaa !19
  %252 = icmp eq i64 %248, 0
  br i1 %252, label %253, label %246, !llvm.loop !46

253:                                              ; preds = %246
  br i1 %30, label %254, label %267

254:                                              ; preds = %253
  %255 = icmp slt i32 %29, 5
  br i1 %255, label %257, label %256

256:                                              ; preds = %254
  tail call void @__assert_fail(ptr noundef nonnull @.str.2.25, ptr noundef nonnull @.str.1.26, i32 noundef 142, ptr noundef nonnull @__PRETTY_FUNCTION__.Autocorrelation) #25
  unreachable

257:                                              ; preds = %257, %254
  %258 = phi ptr [ %261, %257 ], [ %1, %254 ]
  %259 = phi i32 [ %260, %257 ], [ 160, %254 ]
  %260 = add nsw i32 %259, -1
  %261 = getelementptr inbounds i16, ptr %258, i64 1
  %262 = load i16, ptr %258, align 2, !tbaa !12
  %263 = zext i16 %262 to i32
  %264 = shl i32 %263, %29
  %265 = trunc i32 %264 to i16
  store i16 %265, ptr %258, align 2, !tbaa !12
  %266 = icmp eq i32 %260, 0
  br i1 %266, label %267, label %257, !llvm.loop !47

267:                                              ; preds = %257, %253
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %4)
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %5) #26
  %268 = load i64, ptr %6, align 16, !tbaa !19
  %269 = icmp eq i64 %268, 0
  br i1 %269, label %270, label %271

270:                                              ; preds = %267
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %2, i8 0, i64 16, i1 false), !tbaa !12
  br label %377

271:                                              ; preds = %267
  %272 = tail call signext i16 @gsm_norm(i64 noundef %268) #26
  %273 = icmp ult i16 %272, 32
  br i1 %273, label %274, label %276

274:                                              ; preds = %271
  %275 = zext nneg i16 %272 to i64
  br label %277

276:                                              ; preds = %271
  tail call void @__assert_fail(ptr noundef nonnull @.str.4.27, ptr noundef nonnull @.str.1.26, i32 noundef 200, ptr noundef nonnull @__PRETTY_FUNCTION__.Reflection_coefficients) #25
  unreachable

277:                                              ; preds = %277, %274
  %278 = phi i64 [ 0, %274 ], [ %285, %277 ]
  %279 = getelementptr inbounds i64, ptr %6, i64 %278
  %280 = load i64, ptr %279, align 8, !tbaa !19
  %281 = shl i64 %280, %275
  %282 = lshr i64 %281, 16
  %283 = trunc i64 %282 to i16
  %284 = getelementptr inbounds [9 x i16], ptr %4, i64 0, i64 %278
  store i16 %283, ptr %284, align 2, !tbaa !12
  %285 = add nuw nsw i64 %278, 1
  %286 = icmp eq i64 %285, 9
  br i1 %286, label %287, label %277, !llvm.loop !48

287:                                              ; preds = %277
  %288 = getelementptr inbounds i8, ptr %5, i64 2
  %289 = getelementptr inbounds i8, ptr %4, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %288, ptr noundef nonnull align 2 dereferenceable(14) %289, i64 14, i1 false), !tbaa !12
  %290 = load i16, ptr %4, align 16, !tbaa !12
  %291 = load i16, ptr %289, align 2, !tbaa !12
  %292 = icmp slt i16 %291, 0
  %293 = icmp eq i16 %291, -32768
  %294 = sub i16 0, %291
  %295 = select i1 %293, i16 32767, i16 %294
  %296 = select i1 %292, i16 %295, i16 %291
  %297 = icmp slt i16 %290, %296
  br i1 %297, label %303, label %309

298:                                              ; preds = %364
  %299 = trunc i64 %365 to i32
  %300 = icmp ult i32 %299, 9
  %301 = shl nuw i64 %367, 1
  %302 = sub i64 16, %301
  br label %303

303:                                              ; preds = %298, %287
  %304 = phi i64 [ 16, %287 ], [ %302, %298 ]
  %305 = phi i1 [ true, %287 ], [ %300, %298 ]
  %306 = phi ptr [ %2, %287 ], [ %366, %298 ]
  %307 = phi i16 [ %290, %287 ], [ %339, %298 ]
  store i16 %307, ptr %4, align 16, !tbaa !12
  br i1 %305, label %308, label %377

308:                                              ; preds = %303
  tail call void @llvm.memset.p0.i64(ptr align 2 %306, i8 0, i64 %304, i1 false), !tbaa !12
  br label %377

309:                                              ; preds = %364, %287
  %310 = phi i64 [ %375, %364 ], [ 7, %287 ]
  %311 = phi i16 [ %373, %364 ], [ %296, %287 ]
  %312 = phi i16 [ %368, %364 ], [ %291, %287 ]
  %313 = phi i16 [ %339, %364 ], [ %290, %287 ]
  %314 = phi ptr [ %366, %364 ], [ %2, %287 ]
  %315 = phi i64 [ %365, %364 ], [ 1, %287 ]
  %316 = phi i64 [ %367, %364 ], [ 0, %287 ]
  %317 = tail call i64 @llvm.umax.i64(i64 %310, i64 1)
  %318 = tail call signext i16 @gsm_div(i16 noundef signext %311, i16 noundef signext %313) #26
  store i16 %318, ptr %314, align 2, !tbaa !12
  %319 = icmp sgt i16 %318, -1
  br i1 %319, label %321, label %320

320:                                              ; preds = %309
  store i16 %313, ptr %4, align 16, !tbaa !12
  tail call void @__assert_fail(ptr noundef nonnull @.str.5.28, ptr noundef nonnull @.str.1.26, i32 noundef 224, ptr noundef nonnull @__PRETTY_FUNCTION__.Reflection_coefficients) #25
  unreachable

321:                                              ; preds = %309
  %322 = icmp sgt i16 %312, 0
  br i1 %322, label %323, label %325

323:                                              ; preds = %321
  %324 = sub nsw i16 0, %318
  store i16 %324, ptr %314, align 2, !tbaa !12
  br label %325

325:                                              ; preds = %323, %321
  %326 = load i16, ptr %314, align 2, !tbaa !12
  %327 = icmp eq i16 %326, -32768
  br i1 %327, label %328, label %329

328:                                              ; preds = %325
  store i16 %313, ptr %4, align 16, !tbaa !12
  tail call void @__assert_fail(ptr noundef nonnull @.str.6.29, ptr noundef nonnull @.str.1.26, i32 noundef 226, ptr noundef nonnull @__PRETTY_FUNCTION__.Reflection_coefficients) #25
  unreachable

329:                                              ; preds = %325
  %330 = icmp eq i64 %315, 8
  br i1 %330, label %376, label %331

331:                                              ; preds = %329
  %332 = sext i16 %312 to i64
  %333 = sext i16 %326 to i64
  %334 = shl nsw i64 %332, 33
  %335 = mul i64 %334, %333
  %336 = add i64 %335, 140737488355328
  %337 = lshr i64 %336, 48
  %338 = trunc i64 %337 to i16
  %339 = tail call i16 @llvm.sadd.sat.i16(i16 %338, i16 %313)
  %340 = icmp ugt i64 %315, 7
  br i1 %340, label %364, label %341

341:                                              ; preds = %331
  %342 = shl nsw i64 %333, 33
  br label %343

343:                                              ; preds = %343, %341
  %344 = phi i64 [ 1, %341 ], [ %348, %343 ]
  %345 = getelementptr inbounds [9 x i16], ptr %5, i64 0, i64 %344
  %346 = load i16, ptr %345, align 2, !tbaa !12
  %347 = sext i16 %346 to i64
  %348 = add nuw nsw i64 %344, 1
  %349 = getelementptr inbounds [9 x i16], ptr %4, i64 0, i64 %348
  %350 = load i16, ptr %349, align 2, !tbaa !12
  %351 = sext i16 %350 to i64
  %352 = mul i64 %342, %347
  %353 = add i64 %352, 140737488355328
  %354 = lshr i64 %353, 48
  %355 = trunc i64 %354 to i16
  %356 = tail call i16 @llvm.sadd.sat.i16(i16 %355, i16 %350)
  %357 = getelementptr inbounds [9 x i16], ptr %4, i64 0, i64 %344
  store i16 %356, ptr %357, align 2, !tbaa !12
  %358 = mul i64 %342, %351
  %359 = add i64 %358, 140737488355328
  %360 = lshr i64 %359, 48
  %361 = trunc i64 %360 to i16
  %362 = tail call i16 @llvm.sadd.sat.i16(i16 %361, i16 %346)
  store i16 %362, ptr %345, align 2, !tbaa !12
  %363 = icmp eq i64 %344, %317
  br i1 %363, label %364, label %343, !llvm.loop !49

364:                                              ; preds = %343, %331
  %365 = add nuw nsw i64 %315, 1
  %366 = getelementptr i16, ptr %314, i64 1
  %367 = add nuw nsw i64 %316, 1
  %368 = load i16, ptr %289, align 2, !tbaa !12
  %369 = icmp slt i16 %368, 0
  %370 = icmp eq i16 %368, -32768
  %371 = sub i16 0, %368
  %372 = select i1 %370, i16 32767, i16 %371
  %373 = select i1 %369, i16 %372, i16 %368
  %374 = icmp slt i16 %339, %373
  %375 = add nsw i64 %310, -1
  br i1 %374, label %298, label %309

376:                                              ; preds = %329
  store i16 %313, ptr %4, align 16, !tbaa !12
  br label %377

377:                                              ; preds = %376, %308, %303, %270
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %4)
  br label %378

378:                                              ; preds = %400, %377
  %379 = phi i32 [ 1, %377 ], [ %404, %400 ]
  %380 = phi ptr [ %2, %377 ], [ %405, %400 ]
  %381 = load i16, ptr %380, align 2, !tbaa !12
  %382 = icmp slt i16 %381, 0
  %383 = icmp eq i16 %381, -32768
  %384 = sub i16 0, %381
  %385 = select i1 %383, i16 32767, i16 %384
  %386 = select i1 %382, i16 %385, i16 %381
  %387 = icmp sgt i16 %386, -1
  br i1 %387, label %389, label %388

388:                                              ; preds = %378
  tail call void @__assert_fail(ptr noundef nonnull @.str.7.30, ptr noundef nonnull @.str.1.26, i32 noundef 267, ptr noundef nonnull @__PRETTY_FUNCTION__.Transformation_to_Log_Area_Ratios) #25
  unreachable

389:                                              ; preds = %378
  %390 = icmp slt i16 %386, 22118
  br i1 %390, label %391, label %393

391:                                              ; preds = %389
  %392 = lshr i16 %386, 1
  br label %400

393:                                              ; preds = %389
  %394 = icmp slt i16 %386, 31130
  br i1 %394, label %395, label %397

395:                                              ; preds = %393
  %396 = add nsw i16 %386, -11059
  br label %400

397:                                              ; preds = %393
  %398 = shl i16 %386, 2
  %399 = add nsw i16 %398, 26624
  br label %400

400:                                              ; preds = %397, %395, %391
  %401 = phi i16 [ %392, %391 ], [ %396, %395 ], [ %399, %397 ]
  %402 = sub i16 0, %401
  %403 = select i1 %382, i16 %402, i16 %401
  store i16 %403, ptr %380, align 2, !tbaa !12
  %404 = add nuw nsw i32 %379, 1
  %405 = getelementptr inbounds i16, ptr %380, i64 1
  %406 = icmp eq i32 %404, 9
  br i1 %406, label %407, label %378, !llvm.loop !50

407:                                              ; preds = %400
  %408 = load i16, ptr %2, align 2, !tbaa !12
  %409 = sext i16 %408 to i64
  %410 = mul nsw i64 %409, 175921860444160
  %411 = lshr exact i64 %410, 32
  %412 = trunc i64 %411 to i32
  %413 = add i32 %412, 16777216
  %414 = ashr i32 %413, 25
  %415 = icmp sgt i32 %414, 31
  %416 = icmp slt i32 %414, -32
  %417 = trunc i32 %414 to i16
  %418 = add nsw i16 %417, 32
  %419 = select i1 %416, i16 0, i16 %418
  %420 = select i1 %415, i16 63, i16 %419
  store i16 %420, ptr %2, align 2, !tbaa !12
  %421 = getelementptr inbounds i16, ptr %2, i64 1
  %422 = load i16, ptr %421, align 2, !tbaa !12
  %423 = sext i16 %422 to i64
  %424 = mul nsw i64 %423, 175921860444160
  %425 = lshr exact i64 %424, 32
  %426 = trunc i64 %425 to i32
  %427 = add i32 %426, 16777216
  %428 = ashr i32 %427, 25
  %429 = icmp sgt i32 %428, 31
  %430 = icmp slt i32 %428, -32
  %431 = trunc i32 %428 to i16
  %432 = add nsw i16 %431, 32
  %433 = select i1 %430, i16 0, i16 %432
  %434 = select i1 %429, i16 63, i16 %433
  store i16 %434, ptr %421, align 2, !tbaa !12
  %435 = getelementptr inbounds i16, ptr %2, i64 2
  %436 = load i16, ptr %435, align 2, !tbaa !12
  %437 = sext i16 %436 to i64
  %438 = mul nsw i64 %437, 175921860444160
  %439 = add nsw i64 %438, 576460752303423488
  %440 = lshr exact i64 %439, 32
  %441 = trunc i64 %440 to i32
  %442 = add i32 %441, 16777216
  %443 = ashr i32 %442, 25
  %444 = icmp sgt i32 %443, 15
  %445 = icmp slt i32 %443, -16
  %446 = trunc i32 %443 to i16
  %447 = add nsw i16 %446, 16
  %448 = select i1 %445, i16 0, i16 %447
  %449 = select i1 %444, i16 31, i16 %448
  store i16 %449, ptr %435, align 2, !tbaa !12
  %450 = getelementptr inbounds i16, ptr %2, i64 3
  %451 = load i16, ptr %450, align 2, !tbaa !12
  %452 = sext i16 %451 to i64
  %453 = mul nsw i64 %452, 175921860444160
  %454 = add nsw i64 %453, -720575940379279360
  %455 = lshr exact i64 %454, 32
  %456 = trunc i64 %455 to i32
  %457 = add i32 %456, 16777216
  %458 = ashr i32 %457, 25
  %459 = icmp sgt i32 %458, 15
  %460 = icmp slt i32 %458, -16
  %461 = trunc i32 %458 to i16
  %462 = add nsw i16 %461, 16
  %463 = select i1 %460, i16 0, i16 %462
  %464 = select i1 %459, i16 31, i16 %463
  store i16 %464, ptr %450, align 2, !tbaa !12
  %465 = getelementptr inbounds i16, ptr %2, i64 4
  %466 = load i16, ptr %465, align 2, !tbaa !12
  %467 = sext i16 %466 to i64
  %468 = mul nsw i64 %467, 119949846642688
  %469 = add nsw i64 %468, 26458647810801664
  %470 = lshr exact i64 %469, 32
  %471 = trunc i64 %470 to i32
  %472 = add i32 %471, 16777216
  %473 = ashr i32 %472, 25
  %474 = icmp sgt i32 %473, 7
  %475 = icmp slt i32 %473, -8
  %476 = trunc i32 %473 to i16
  %477 = add nsw i16 %476, 8
  %478 = select i1 %475, i16 0, i16 %477
  %479 = select i1 %474, i16 15, i16 %478
  store i16 %479, ptr %465, align 2, !tbaa !12
  %480 = getelementptr inbounds i16, ptr %2, i64 5
  %481 = load i16, ptr %480, align 2, !tbaa !12
  %482 = sext i16 %481 to i64
  %483 = mul nsw i64 %482, 131941395333120
  %484 = add nsw i64 %483, -504403158265495552
  %485 = lshr exact i64 %484, 32
  %486 = trunc i64 %485 to i32
  %487 = add i32 %486, 16777216
  %488 = ashr i32 %487, 25
  %489 = icmp sgt i32 %488, 7
  %490 = icmp slt i32 %488, -8
  %491 = trunc i32 %488 to i16
  %492 = add nsw i16 %491, 8
  %493 = select i1 %490, i16 0, i16 %492
  %494 = select i1 %489, i16 15, i16 %493
  store i16 %494, ptr %480, align 2, !tbaa !12
  %495 = getelementptr inbounds i16, ptr %2, i64 6
  %496 = load i16, ptr %495, align 2, !tbaa !12
  %497 = sext i16 %496 to i64
  %498 = mul nsw i64 %497, 73306501808128
  %499 = add nsw i64 %498, -95982967058333696
  %500 = lshr exact i64 %499, 32
  %501 = trunc i64 %500 to i32
  %502 = add i32 %501, 16777216
  %503 = ashr i32 %502, 25
  %504 = icmp sgt i32 %503, 3
  %505 = icmp slt i32 %503, -4
  %506 = trunc i32 %503 to i16
  %507 = add nsw i16 %506, 4
  %508 = select i1 %505, i16 0, i16 %507
  %509 = select i1 %504, i16 7, i16 %508
  store i16 %509, ptr %495, align 2, !tbaa !12
  %510 = getelementptr inbounds i16, ptr %2, i64 7
  %511 = load i16, ptr %510, align 2, !tbaa !12
  %512 = sext i16 %511 to i64
  %513 = mul nsw i64 %512, 77618648973312
  %514 = add nsw i64 %513, -322007373356990464
  %515 = lshr exact i64 %514, 32
  %516 = trunc i64 %515 to i32
  %517 = add i32 %516, 16777216
  %518 = ashr i32 %517, 25
  %519 = icmp sgt i32 %518, 3
  %520 = icmp slt i32 %518, -4
  %521 = trunc i32 %518 to i16
  %522 = add nsw i16 %521, 4
  %523 = select i1 %520, i16 0, i16 %522
  %524 = select i1 %519, i16 7, i16 %523
  store i16 %524, ptr %510, align 2, !tbaa !12
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %6) #26
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #1

; Function Attrs: nounwind uwtable
define dso_local void @Gsm_Preprocess(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.gsm_state, ptr %0, i64 0, i32 1
  %5 = load i16, ptr %4, align 8, !tbaa !51
  %6 = getelementptr inbounds %struct.gsm_state, ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !52
  %8 = getelementptr inbounds %struct.gsm_state, ptr %0, i64 0, i32 3
  %9 = load i32, ptr %8, align 8, !tbaa !53
  %10 = zext i32 %9 to i64
  br label %11

11:                                               ; preds = %57, %3
  %12 = phi i32 [ 159, %3 ], [ %74, %57 ]
  %13 = phi ptr [ %1, %3 ], [ %21, %57 ]
  %14 = phi ptr [ %2, %3 ], [ %73, %57 ]
  %15 = phi i16 [ %5, %3 ], [ %20, %57 ]
  %16 = phi i64 [ %7, %3 ], [ %58, %57 ]
  %17 = phi i64 [ %10, %3 ], [ %66, %57 ]
  %18 = load i16, ptr %13, align 2, !tbaa !12
  %19 = ashr i16 %18, 1
  %20 = and i16 %19, -4
  %21 = getelementptr inbounds i16, ptr %13, i64 1
  %22 = icmp sgt i16 %20, -16385
  br i1 %22, label %24, label %23

23:                                               ; preds = %11
  tail call void @__assert_fail(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.1.34, i32 noundef 64, ptr noundef nonnull @__PRETTY_FUNCTION__.Gsm_Preprocess) #25
  unreachable

24:                                               ; preds = %11
  %25 = icmp slt i16 %20, 16381
  br i1 %25, label %27, label %26

26:                                               ; preds = %24
  tail call void @__assert_fail(ptr noundef nonnull @.str.2.35, ptr noundef nonnull @.str.1.34, i32 noundef 65, ptr noundef nonnull @__PRETTY_FUNCTION__.Gsm_Preprocess) #25
  unreachable

27:                                               ; preds = %24
  %28 = sub i16 %20, %15
  %29 = icmp eq i16 %28, -32768
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  tail call void @__assert_fail(ptr noundef nonnull @.str.3.36, ptr noundef nonnull @.str.1.34, i32 noundef 81, ptr noundef nonnull @__PRETTY_FUNCTION__.Gsm_Preprocess) #25
  unreachable

31:                                               ; preds = %27
  %32 = sext i16 %28 to i64
  %33 = shl nsw i64 %32, 15
  %34 = shl i64 %16, 33
  %35 = ashr i64 %34, 48
  %36 = shl i64 %35, 63
  %37 = shl i64 %16, 48
  %38 = sub i64 %37, %36
  %39 = ashr exact i64 %38, 48
  %40 = mul nsw i64 %39, 32735
  %41 = add nsw i64 %40, 16384
  %42 = ashr i64 %41, 15
  %43 = add nsw i64 %33, %42
  %44 = mul nsw i64 %35, 32735
  %45 = icmp slt i64 %35, 0
  %46 = add nsw i64 %43, %44
  br i1 %45, label %47, label %53

47:                                               ; preds = %31
  %48 = icmp sgt i64 %43, -1
  br i1 %48, label %57, label %49

49:                                               ; preds = %47
  %50 = add nsw i64 %46, 1
  %51 = icmp ult i64 %50, -2147483647
  %52 = select i1 %51, i64 -2147483648, i64 %46
  br label %57

53:                                               ; preds = %31
  %54 = icmp slt i64 %43, 1
  br i1 %54, label %57, label %55

55:                                               ; preds = %53
  %56 = tail call i64 @llvm.umin.i64(i64 %46, i64 2147483647)
  br label %57

57:                                               ; preds = %55, %53, %49, %47
  %58 = phi i64 [ %52, %49 ], [ %56, %55 ], [ %46, %47 ], [ %46, %53 ]
  %59 = icmp slt i64 %58, 0
  %60 = add nsw i64 %58, 16384
  %61 = icmp ugt i64 %58, 2147467262
  %62 = select i1 %61, i64 2147467262, i64 %60
  %63 = select i1 %59, i64 %60, i64 %62
  %64 = shl i64 %17, 48
  %65 = ashr exact i64 %64, 48
  %66 = lshr i64 %63, 15
  %67 = mul nsw i64 %65, -242064356802560
  %68 = add nsw i64 %67, 140737488355328
  %69 = lshr i64 %68, 48
  %70 = trunc i64 %66 to i16
  %71 = trunc i64 %69 to i16
  %72 = tail call i16 @llvm.sadd.sat.i16(i16 %70, i16 %71)
  %73 = getelementptr inbounds i16, ptr %14, i64 1
  store i16 %72, ptr %14, align 2, !tbaa !12
  %74 = add nsw i32 %12, -1
  %75 = icmp eq i32 %12, 0
  br i1 %75, label %76, label %11, !llvm.loop !54

76:                                               ; preds = %57
  %77 = trunc i64 %66 to i32
  store i16 %20, ptr %4, align 8, !tbaa !51
  store i64 %58, ptr %6, align 8, !tbaa !52
  %78 = shl i32 %77, 16
  %79 = ashr exact i32 %78, 16
  store i32 %79, ptr %8, align 8, !tbaa !53
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Gsm_RPE_Encoding(ptr nocapture noundef readnone %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef %3, ptr nocapture noundef %4) local_unnamed_addr #2 {
  %6 = alloca [40 x i16], align 16
  %7 = alloca [13 x i16], align 16
  %8 = alloca [13 x i16], align 16
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #26
  call void @llvm.lifetime.start.p0(i64 26, ptr nonnull %7) #26
  call void @llvm.lifetime.start.p0(i64 26, ptr nonnull %8) #26
  %9 = getelementptr inbounds i16, ptr %1, i64 -5
  br label %10

10:                                               ; preds = %10, %5
  %11 = phi i64 [ 0, %5 ], [ %15, %10 ]
  %12 = getelementptr inbounds i16, ptr %9, i64 %11
  %13 = load i16, ptr %12, align 2, !tbaa !12
  %14 = sext i16 %13 to i64
  %15 = add nuw nsw i64 %11, 1
  %16 = getelementptr inbounds i16, ptr %9, i64 %15
  %17 = load i16, ptr %16, align 2, !tbaa !12
  %18 = sext i16 %17 to i64
  %19 = getelementptr i16, ptr %12, i64 3
  %20 = load i16, ptr %19, align 2, !tbaa !12
  %21 = sext i16 %20 to i64
  %22 = getelementptr i16, ptr %12, i64 4
  %23 = load i16, ptr %22, align 2, !tbaa !12
  %24 = sext i16 %23 to i64
  %25 = getelementptr i16, ptr %12, i64 5
  %26 = load i16, ptr %25, align 2, !tbaa !12
  %27 = sext i16 %26 to i64
  %28 = shl nsw i64 %27, 13
  %29 = getelementptr i16, ptr %12, i64 6
  %30 = load i16, ptr %29, align 2, !tbaa !12
  %31 = sext i16 %30 to i64
  %32 = getelementptr i16, ptr %12, i64 7
  %33 = load i16, ptr %32, align 2, !tbaa !12
  %34 = sext i16 %33 to i64
  %35 = getelementptr i16, ptr %12, i64 9
  %36 = load i16, ptr %35, align 2, !tbaa !12
  %37 = sext i16 %36 to i64
  %38 = getelementptr i16, ptr %12, i64 10
  %39 = load i16, ptr %38, align 2, !tbaa !12
  %40 = sext i16 %39 to i64
  %41 = add nsw i64 %31, %24
  %42 = mul nsw i64 %41, 5741
  %43 = add nsw i64 %34, %21
  %44 = mul nsw i64 %43, 2054
  %45 = add nsw i64 %37, %18
  %46 = mul nsw i64 %45, -374
  %47 = add nsw i64 %40, %14
  %48 = mul nsw i64 %47, -134
  %49 = or disjoint i64 %28, 4096
  %50 = add nsw i64 %49, %42
  %51 = add nsw i64 %50, %44
  %52 = add nsw i64 %51, %46
  %53 = add nsw i64 %52, %48
  %54 = ashr i64 %53, 13
  %55 = tail call i64 @llvm.smin.i64(i64 %54, i64 32767)
  %56 = tail call i64 @llvm.smax.i64(i64 %55, i64 -32768)
  %57 = trunc i64 %56 to i16
  %58 = getelementptr inbounds i16, ptr %6, i64 %11
  store i16 %57, ptr %58, align 2, !tbaa !12
  %59 = icmp eq i64 %15, 40
  br i1 %59, label %60, label %10, !llvm.loop !55

60:                                               ; preds = %10
  %61 = getelementptr inbounds i16, ptr %6, i64 3
  %62 = load i16, ptr %61, align 2, !tbaa !12
  %63 = ashr i16 %62, 2
  %64 = sext i16 %63 to i64
  %65 = mul nsw i64 %64, %64
  %66 = getelementptr inbounds i16, ptr %6, i64 6
  %67 = load i16, ptr %66, align 4, !tbaa !12
  %68 = ashr i16 %67, 2
  %69 = sext i16 %68 to i64
  %70 = mul nsw i64 %69, %69
  %71 = add nuw nsw i64 %70, %65
  %72 = getelementptr inbounds i16, ptr %6, i64 9
  %73 = load i16, ptr %72, align 2, !tbaa !12
  %74 = ashr i16 %73, 2
  %75 = sext i16 %74 to i64
  %76 = mul nsw i64 %75, %75
  %77 = add nuw nsw i64 %71, %76
  %78 = getelementptr inbounds i16, ptr %6, i64 12
  %79 = load i16, ptr %78, align 8, !tbaa !12
  %80 = ashr i16 %79, 2
  %81 = sext i16 %80 to i64
  %82 = mul nsw i64 %81, %81
  %83 = add nuw nsw i64 %77, %82
  %84 = getelementptr inbounds i16, ptr %6, i64 15
  %85 = load i16, ptr %84, align 2, !tbaa !12
  %86 = ashr i16 %85, 2
  %87 = sext i16 %86 to i64
  %88 = mul nsw i64 %87, %87
  %89 = add nuw nsw i64 %83, %88
  %90 = getelementptr inbounds i16, ptr %6, i64 18
  %91 = load i16, ptr %90, align 4, !tbaa !12
  %92 = ashr i16 %91, 2
  %93 = sext i16 %92 to i64
  %94 = mul nsw i64 %93, %93
  %95 = add nuw nsw i64 %89, %94
  %96 = getelementptr inbounds i16, ptr %6, i64 21
  %97 = load i16, ptr %96, align 2, !tbaa !12
  %98 = ashr i16 %97, 2
  %99 = sext i16 %98 to i64
  %100 = mul nsw i64 %99, %99
  %101 = add nuw nsw i64 %95, %100
  %102 = getelementptr inbounds i16, ptr %6, i64 24
  %103 = load i16, ptr %102, align 16, !tbaa !12
  %104 = ashr i16 %103, 2
  %105 = sext i16 %104 to i64
  %106 = mul nsw i64 %105, %105
  %107 = add nsw i64 %101, %106
  %108 = getelementptr inbounds i16, ptr %6, i64 27
  %109 = load i16, ptr %108, align 2, !tbaa !12
  %110 = ashr i16 %109, 2
  %111 = sext i16 %110 to i64
  %112 = mul nsw i64 %111, %111
  %113 = add nsw i64 %107, %112
  %114 = getelementptr inbounds i16, ptr %6, i64 30
  %115 = load i16, ptr %114, align 4, !tbaa !12
  %116 = ashr i16 %115, 2
  %117 = sext i16 %116 to i64
  %118 = mul nsw i64 %117, %117
  %119 = add nsw i64 %113, %118
  %120 = getelementptr inbounds i16, ptr %6, i64 33
  %121 = load i16, ptr %120, align 2, !tbaa !12
  %122 = ashr i16 %121, 2
  %123 = sext i16 %122 to i64
  %124 = mul nsw i64 %123, %123
  %125 = add nsw i64 %119, %124
  %126 = getelementptr inbounds i16, ptr %6, i64 36
  %127 = load i16, ptr %126, align 8, !tbaa !12
  %128 = ashr i16 %127, 2
  %129 = sext i16 %128 to i64
  %130 = mul nsw i64 %129, %129
  %131 = add nsw i64 %125, %130
  %132 = load i16, ptr %6, align 16, !tbaa !12
  %133 = ashr i16 %132, 2
  %134 = sext i16 %133 to i64
  %135 = mul nsw i64 %134, %134
  %136 = add nsw i64 %131, %135
  %137 = shl nsw i64 %136, 1
  %138 = getelementptr inbounds i16, ptr %6, i64 1
  %139 = load i16, ptr %138, align 2, !tbaa !12
  %140 = ashr i16 %139, 2
  %141 = sext i16 %140 to i64
  %142 = mul nsw i64 %141, %141
  %143 = getelementptr inbounds i16, ptr %6, i64 4
  %144 = load i16, ptr %143, align 8, !tbaa !12
  %145 = ashr i16 %144, 2
  %146 = sext i16 %145 to i64
  %147 = mul nsw i64 %146, %146
  %148 = add nuw nsw i64 %147, %142
  %149 = getelementptr inbounds i16, ptr %6, i64 7
  %150 = load i16, ptr %149, align 2, !tbaa !12
  %151 = ashr i16 %150, 2
  %152 = sext i16 %151 to i64
  %153 = mul nsw i64 %152, %152
  %154 = add nuw nsw i64 %148, %153
  %155 = getelementptr inbounds i16, ptr %6, i64 10
  %156 = load i16, ptr %155, align 4, !tbaa !12
  %157 = ashr i16 %156, 2
  %158 = sext i16 %157 to i64
  %159 = mul nsw i64 %158, %158
  %160 = add nuw nsw i64 %154, %159
  %161 = getelementptr inbounds i16, ptr %6, i64 13
  %162 = load i16, ptr %161, align 2, !tbaa !12
  %163 = ashr i16 %162, 2
  %164 = sext i16 %163 to i64
  %165 = mul nsw i64 %164, %164
  %166 = add nuw nsw i64 %160, %165
  %167 = getelementptr inbounds i16, ptr %6, i64 16
  %168 = load i16, ptr %167, align 16, !tbaa !12
  %169 = ashr i16 %168, 2
  %170 = sext i16 %169 to i64
  %171 = mul nsw i64 %170, %170
  %172 = add nuw nsw i64 %166, %171
  %173 = getelementptr inbounds i16, ptr %6, i64 19
  %174 = load i16, ptr %173, align 2, !tbaa !12
  %175 = ashr i16 %174, 2
  %176 = sext i16 %175 to i64
  %177 = mul nsw i64 %176, %176
  %178 = add nuw nsw i64 %172, %177
  %179 = getelementptr inbounds i16, ptr %6, i64 22
  %180 = load i16, ptr %179, align 4, !tbaa !12
  %181 = ashr i16 %180, 2
  %182 = sext i16 %181 to i64
  %183 = mul nsw i64 %182, %182
  %184 = add nsw i64 %178, %183
  %185 = getelementptr inbounds i16, ptr %6, i64 25
  %186 = load i16, ptr %185, align 2, !tbaa !12
  %187 = ashr i16 %186, 2
  %188 = sext i16 %187 to i64
  %189 = mul nsw i64 %188, %188
  %190 = add nsw i64 %184, %189
  %191 = getelementptr inbounds i16, ptr %6, i64 28
  %192 = load i16, ptr %191, align 8, !tbaa !12
  %193 = ashr i16 %192, 2
  %194 = sext i16 %193 to i64
  %195 = mul nsw i64 %194, %194
  %196 = add nsw i64 %190, %195
  %197 = getelementptr inbounds i16, ptr %6, i64 31
  %198 = load i16, ptr %197, align 2, !tbaa !12
  %199 = ashr i16 %198, 2
  %200 = sext i16 %199 to i64
  %201 = mul nsw i64 %200, %200
  %202 = add nsw i64 %196, %201
  %203 = getelementptr inbounds i16, ptr %6, i64 34
  %204 = load i16, ptr %203, align 4, !tbaa !12
  %205 = ashr i16 %204, 2
  %206 = sext i16 %205 to i64
  %207 = mul nsw i64 %206, %206
  %208 = add nsw i64 %202, %207
  %209 = getelementptr inbounds i16, ptr %6, i64 37
  %210 = load i16, ptr %209, align 2, !tbaa !12
  %211 = ashr i16 %210, 2
  %212 = sext i16 %211 to i64
  %213 = mul nsw i64 %212, %212
  %214 = add nsw i64 %208, %213
  %215 = shl nsw i64 %214, 1
  %216 = icmp sgt i64 %215, %137
  %217 = tail call i64 @llvm.smax.i64(i64 %215, i64 %137)
  %218 = zext i1 %216 to i16
  %219 = getelementptr inbounds i16, ptr %6, i64 2
  %220 = load i16, ptr %219, align 4, !tbaa !12
  %221 = ashr i16 %220, 2
  %222 = sext i16 %221 to i64
  %223 = mul nsw i64 %222, %222
  %224 = getelementptr inbounds i16, ptr %6, i64 5
  %225 = load i16, ptr %224, align 2, !tbaa !12
  %226 = ashr i16 %225, 2
  %227 = sext i16 %226 to i64
  %228 = mul nsw i64 %227, %227
  %229 = add nuw nsw i64 %228, %223
  %230 = getelementptr inbounds i16, ptr %6, i64 8
  %231 = load i16, ptr %230, align 16, !tbaa !12
  %232 = ashr i16 %231, 2
  %233 = sext i16 %232 to i64
  %234 = mul nsw i64 %233, %233
  %235 = add nuw nsw i64 %229, %234
  %236 = getelementptr inbounds i16, ptr %6, i64 11
  %237 = load i16, ptr %236, align 2, !tbaa !12
  %238 = ashr i16 %237, 2
  %239 = sext i16 %238 to i64
  %240 = mul nsw i64 %239, %239
  %241 = add nuw nsw i64 %235, %240
  %242 = getelementptr inbounds i16, ptr %6, i64 14
  %243 = load i16, ptr %242, align 4, !tbaa !12
  %244 = ashr i16 %243, 2
  %245 = sext i16 %244 to i64
  %246 = mul nsw i64 %245, %245
  %247 = add nuw nsw i64 %241, %246
  %248 = getelementptr inbounds i16, ptr %6, i64 17
  %249 = load i16, ptr %248, align 2, !tbaa !12
  %250 = ashr i16 %249, 2
  %251 = sext i16 %250 to i64
  %252 = mul nsw i64 %251, %251
  %253 = add nuw nsw i64 %247, %252
  %254 = getelementptr inbounds i16, ptr %6, i64 20
  %255 = load i16, ptr %254, align 8, !tbaa !12
  %256 = ashr i16 %255, 2
  %257 = sext i16 %256 to i64
  %258 = mul nsw i64 %257, %257
  %259 = add nuw nsw i64 %253, %258
  %260 = getelementptr inbounds i16, ptr %6, i64 23
  %261 = load i16, ptr %260, align 2, !tbaa !12
  %262 = ashr i16 %261, 2
  %263 = sext i16 %262 to i64
  %264 = mul nsw i64 %263, %263
  %265 = add nsw i64 %259, %264
  %266 = getelementptr inbounds i16, ptr %6, i64 26
  %267 = load i16, ptr %266, align 4, !tbaa !12
  %268 = ashr i16 %267, 2
  %269 = sext i16 %268 to i64
  %270 = mul nsw i64 %269, %269
  %271 = add nsw i64 %265, %270
  %272 = getelementptr inbounds i16, ptr %6, i64 29
  %273 = load i16, ptr %272, align 2, !tbaa !12
  %274 = ashr i16 %273, 2
  %275 = sext i16 %274 to i64
  %276 = mul nsw i64 %275, %275
  %277 = add nsw i64 %271, %276
  %278 = getelementptr inbounds i16, ptr %6, i64 32
  %279 = load i16, ptr %278, align 16, !tbaa !12
  %280 = ashr i16 %279, 2
  %281 = sext i16 %280 to i64
  %282 = mul nsw i64 %281, %281
  %283 = add nsw i64 %277, %282
  %284 = getelementptr inbounds i16, ptr %6, i64 35
  %285 = load i16, ptr %284, align 2, !tbaa !12
  %286 = ashr i16 %285, 2
  %287 = sext i16 %286 to i64
  %288 = mul nsw i64 %287, %287
  %289 = add nsw i64 %283, %288
  %290 = getelementptr inbounds i16, ptr %6, i64 38
  %291 = load i16, ptr %290, align 4, !tbaa !12
  %292 = ashr i16 %291, 2
  %293 = sext i16 %292 to i64
  %294 = mul nsw i64 %293, %293
  %295 = add nsw i64 %289, %294
  %296 = shl nsw i64 %295, 1
  %297 = icmp sgt i64 %296, %217
  %298 = tail call i64 @llvm.smax.i64(i64 %296, i64 %217)
  %299 = select i1 %297, i16 2, i16 %218
  %300 = getelementptr inbounds i16, ptr %6, i64 39
  %301 = load i16, ptr %300, align 2, !tbaa !12
  %302 = ashr i16 %301, 2
  %303 = sext i16 %302 to i64
  %304 = mul nsw i64 %303, %303
  %305 = add nsw i64 %304, %131
  %306 = shl nsw i64 %305, 1
  %307 = icmp sgt i64 %306, %298
  %308 = select i1 %307, i16 3, i16 %299
  %309 = zext nneg i16 %308 to i64
  %310 = getelementptr i16, ptr %6, i64 %309
  br label %311

311:                                              ; preds = %311, %60
  %312 = phi i64 [ 0, %60 ], [ %317, %311 ]
  %313 = mul nuw nsw i64 %312, 3
  %314 = getelementptr i16, ptr %310, i64 %313
  %315 = load i16, ptr %314, align 2, !tbaa !12
  %316 = getelementptr inbounds i16, ptr %7, i64 %312
  store i16 %315, ptr %316, align 2, !tbaa !12
  %317 = add nuw nsw i64 %312, 1
  %318 = icmp eq i64 %317, 13
  br i1 %318, label %319, label %311, !llvm.loop !56

319:                                              ; preds = %311
  store i16 %308, ptr %3, align 2, !tbaa !12
  br label %320

320:                                              ; preds = %320, %319
  %321 = phi i64 [ 0, %319 ], [ %331, %320 ]
  %322 = phi i16 [ 0, %319 ], [ %330, %320 ]
  %323 = getelementptr inbounds i16, ptr %7, i64 %321
  %324 = load i16, ptr %323, align 2, !tbaa !12
  %325 = icmp slt i16 %324, 0
  %326 = icmp eq i16 %324, -32768
  %327 = sub i16 0, %324
  %328 = select i1 %326, i16 32767, i16 %327
  %329 = select i1 %325, i16 %328, i16 %324
  %330 = tail call i16 @llvm.smax.i16(i16 %329, i16 %322)
  %331 = add nuw nsw i64 %321, 1
  %332 = icmp eq i64 %331, 13
  br i1 %332, label %333, label %320, !llvm.loop !57

333:                                              ; preds = %320
  %334 = zext nneg i16 %330 to i32
  %335 = lshr i16 %330, 9
  br label %336

336:                                              ; preds = %343, %333
  %337 = phi i32 [ 0, %333 ], [ %351, %343 ]
  %338 = phi i32 [ 0, %333 ], [ %347, %343 ]
  %339 = phi i16 [ %335, %333 ], [ %344, %343 ]
  %340 = phi i16 [ 0, %333 ], [ %350, %343 ]
  %341 = icmp slt i16 %340, 6
  br i1 %341, label %343, label %342

342:                                              ; preds = %336
  tail call void @__assert_fail(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.1.40, i32 noundef 293, ptr noundef nonnull @__PRETTY_FUNCTION__.APCM_quantization) #25
  unreachable

343:                                              ; preds = %336
  %344 = lshr i16 %339, 1
  %345 = icmp eq i16 %339, 0
  %346 = zext i1 %345 to i32
  %347 = or i32 %338, %346
  %348 = icmp eq i32 %347, 0
  %349 = zext i1 %348 to i16
  %350 = add i16 %340, %349
  %351 = add nuw nsw i32 %337, 1
  %352 = icmp eq i32 %351, 6
  br i1 %352, label %353, label %336, !llvm.loop !58

353:                                              ; preds = %343
  %354 = icmp ult i16 %350, 7
  br i1 %354, label %356, label %355

355:                                              ; preds = %353
  tail call void @__assert_fail(ptr noundef nonnull @.str.2.41, ptr noundef nonnull @.str.1.40, i32 noundef 297, ptr noundef nonnull @__PRETTY_FUNCTION__.APCM_quantization) #25
  unreachable

356:                                              ; preds = %353
  %357 = add nuw nsw i16 %350, 5
  %358 = zext nneg i16 %357 to i32
  %359 = lshr i32 %334, %358
  %360 = trunc i32 %359 to i16
  %361 = shl nuw nsw i16 %350, 3
  %362 = tail call signext i16 @gsm_add(i16 noundef signext %360, i16 noundef signext %361) #26
  %363 = icmp sgt i16 %362, 15
  %364 = lshr i16 %362, 3
  %365 = add nsw i16 %364, -1
  %366 = select i1 %363, i16 %365, i16 0
  %367 = shl i16 %366, 3
  %368 = sub i16 %362, %367
  %369 = icmp eq i16 %368, 0
  br i1 %369, label %383, label %370

370:                                              ; preds = %356
  %371 = icmp slt i16 %368, 8
  br i1 %371, label %372, label %379

372:                                              ; preds = %372, %370
  %373 = phi i16 [ %376, %372 ], [ %368, %370 ]
  %374 = phi i16 [ %377, %372 ], [ %366, %370 ]
  %375 = shl i16 %373, 1
  %376 = or disjoint i16 %375, 1
  %377 = add i16 %374, -1
  %378 = icmp slt i16 %376, 8
  br i1 %378, label %372, label %379, !llvm.loop !59

379:                                              ; preds = %372, %370
  %380 = phi i16 [ %366, %370 ], [ %377, %372 ]
  %381 = phi i16 [ %368, %370 ], [ %376, %372 ]
  %382 = add nsw i16 %381, -8
  br label %383

383:                                              ; preds = %379, %356
  %384 = phi i16 [ %380, %379 ], [ -4, %356 ]
  %385 = phi i16 [ %382, %379 ], [ 7, %356 ]
  %386 = add i16 %384, 4
  %387 = icmp ult i16 %386, 11
  br i1 %387, label %389, label %388

388:                                              ; preds = %383
  tail call void @__assert_fail(ptr noundef nonnull @.str.10.42, ptr noundef nonnull @.str.1.40, i32 noundef 249, ptr noundef nonnull @__PRETTY_FUNCTION__.APCM_quantization_xmaxc_to_exp_mant) #25
  unreachable

389:                                              ; preds = %383
  %390 = icmp ult i16 %385, 8
  br i1 %390, label %392, label %391

391:                                              ; preds = %389
  tail call void @__assert_fail(ptr noundef nonnull @.str.5.43, ptr noundef nonnull @.str.1.40, i32 noundef 250, ptr noundef nonnull @__PRETTY_FUNCTION__.APCM_quantization_xmaxc_to_exp_mant) #25
  unreachable

392:                                              ; preds = %389
  %393 = add i16 %384, 4096
  %394 = icmp ult i16 %393, 8193
  br i1 %394, label %396, label %395

395:                                              ; preds = %392
  tail call void @__assert_fail(ptr noundef nonnull @.str.4.44, ptr noundef nonnull @.str.1.40, i32 noundef 323, ptr noundef nonnull @__PRETTY_FUNCTION__.APCM_quantization) #25
  unreachable

396:                                              ; preds = %392
  %397 = sub i16 6, %384
  %398 = zext nneg i16 %385 to i64
  %399 = getelementptr inbounds [8 x i16], ptr @gsm_NRFAC, i64 0, i64 %398
  %400 = load i16, ptr %399, align 2, !tbaa !12
  %401 = icmp ult i16 %397, 16
  %402 = zext nneg i16 %397 to i32
  %403 = sext i16 %400 to i64
  br i1 %401, label %404, label %422

404:                                              ; preds = %404, %396
  %405 = phi i64 [ %420, %404 ], [ 0, %396 ]
  %406 = getelementptr inbounds i16, ptr %7, i64 %405
  %407 = load i16, ptr %406, align 2, !tbaa !12
  %408 = zext i16 %407 to i32
  %409 = shl nuw nsw i32 %408, %402
  %410 = zext nneg i32 %409 to i64
  %411 = shl i64 %410, 48
  %412 = ashr exact i64 %411, 48
  %413 = mul nsw i64 %412, %403
  %414 = trunc i64 %413 to i32
  %415 = shl i32 %414, 1
  %416 = ashr i32 %415, 28
  %417 = trunc i32 %416 to i16
  %418 = add nsw i16 %417, 4
  %419 = getelementptr inbounds i16, ptr %4, i64 %405
  store i16 %418, ptr %419, align 2, !tbaa !12
  %420 = add nuw nsw i64 %405, 1
  %421 = icmp eq i64 %420, 13
  br i1 %421, label %423, label %404, !llvm.loop !60

422:                                              ; preds = %396
  tail call void @__assert_fail(ptr noundef nonnull @.str.6.45, ptr noundef nonnull @.str.1.40, i32 noundef 331, ptr noundef nonnull @__PRETTY_FUNCTION__.APCM_quantization) #25
  unreachable

423:                                              ; preds = %404
  store i16 %362, ptr %2, align 2, !tbaa !12
  call fastcc void @APCM_inverse_quantization(ptr noundef %4, i16 noundef signext %385, i16 noundef signext %384, ptr noundef nonnull %8)
  %424 = load i16, ptr %3, align 2, !tbaa !12
  %425 = icmp ult i16 %424, 4
  br i1 %425, label %427, label %426

426:                                              ; preds = %423
  tail call void @__assert_fail(ptr noundef nonnull @.str.9.46, ptr noundef nonnull @.str.1.40, i32 noundef 402, ptr noundef nonnull @__PRETTY_FUNCTION__.RPE_grid_positioning) #25
  unreachable

427:                                              ; preds = %423
  switch i16 %424, label %457 [
    i16 3, label %428
    i16 2, label %430
    i16 1, label %435
    i16 0, label %440
  ]

428:                                              ; preds = %427
  %429 = getelementptr inbounds i16, ptr %1, i64 1
  store i16 0, ptr %1, align 2, !tbaa !12
  br label %430

430:                                              ; preds = %440, %428, %427
  %431 = phi ptr [ %444, %440 ], [ %8, %428 ], [ %8, %427 ]
  %432 = phi ptr [ %446, %440 ], [ %429, %428 ], [ %1, %427 ]
  %433 = phi i32 [ %447, %440 ], [ 13, %428 ], [ 13, %427 ]
  %434 = getelementptr inbounds i16, ptr %432, i64 1
  store i16 0, ptr %432, align 2, !tbaa !12
  br label %435

435:                                              ; preds = %430, %427
  %436 = phi ptr [ %431, %430 ], [ %8, %427 ]
  %437 = phi ptr [ %434, %430 ], [ %1, %427 ]
  %438 = phi i32 [ %433, %430 ], [ 13, %427 ]
  %439 = getelementptr inbounds i16, ptr %437, i64 1
  store i16 0, ptr %437, align 2, !tbaa !12
  br label %440

440:                                              ; preds = %435, %427
  %441 = phi ptr [ %8, %427 ], [ %436, %435 ]
  %442 = phi ptr [ %1, %427 ], [ %439, %435 ]
  %443 = phi i32 [ 13, %427 ], [ %438, %435 ]
  %444 = getelementptr inbounds i16, ptr %441, i64 1
  %445 = load i16, ptr %441, align 2, !tbaa !12
  %446 = getelementptr i16, ptr %442, i64 1
  store i16 %445, ptr %442, align 2, !tbaa !12
  %447 = add nsw i32 %443, -1
  %448 = icmp eq i32 %447, 0
  br i1 %448, label %449, label %430, !llvm.loop !61

449:                                              ; preds = %440
  %450 = icmp eq i16 %424, 3
  br i1 %450, label %458, label %451

451:                                              ; preds = %449
  %452 = tail call i16 @llvm.smax.i16(i16 %424, i16 2)
  %453 = sub nsw i16 %452, %424
  %454 = zext i16 %453 to i64
  %455 = shl nuw nsw i64 %454, 1
  %456 = add nuw nsw i64 %455, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %446, i8 0, i64 %456, i1 false), !tbaa !12
  br label %458

457:                                              ; preds = %427
  unreachable

458:                                              ; preds = %451, %449
  call void @llvm.lifetime.end.p0(i64 26, ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(i64 26, ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #26
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @APCM_inverse_quantization(ptr nocapture noundef readonly %0, i16 noundef signext %1, i16 noundef signext %2, ptr nocapture noundef writeonly %3) unnamed_addr #2 {
  %5 = icmp ult i16 %1, 8
  br i1 %5, label %7, label %6

6:                                                ; preds = %4
  tail call void @__assert_fail(ptr noundef nonnull @.str.5.43, ptr noundef nonnull @.str.1.40, i32 noundef 364, ptr noundef nonnull @__PRETTY_FUNCTION__.APCM_inverse_quantization) #25
  unreachable

7:                                                ; preds = %4
  %8 = zext nneg i16 %1 to i64
  %9 = getelementptr inbounds [8 x i16], ptr @gsm_FAC, i64 0, i64 %8
  %10 = load i16, ptr %9, align 2, !tbaa !12
  %11 = tail call signext i16 @gsm_sub(i16 noundef signext 6, i16 noundef signext %2) #26
  %12 = tail call signext i16 @gsm_sub(i16 noundef signext %11, i16 noundef signext 1) #26
  %13 = sext i16 %12 to i32
  %14 = tail call signext i16 @gsm_asl(i16 noundef signext 1, i32 noundef %13) #26
  %15 = sext i16 %10 to i64
  %16 = shl nsw i64 %15, 33
  %17 = sext i16 %11 to i32
  br label %18

18:                                               ; preds = %25, %7
  %19 = phi i32 [ 12, %7 ], [ %37, %25 ]
  %20 = phi ptr [ %0, %7 ], [ %26, %25 ]
  %21 = phi ptr [ %3, %7 ], [ %36, %25 ]
  %22 = load i16, ptr %20, align 2, !tbaa !12
  %23 = icmp ult i16 %22, 8
  br i1 %23, label %25, label %24

24:                                               ; preds = %18
  tail call void @__assert_fail(ptr noundef nonnull @.str.7.47, ptr noundef nonnull @.str.1.40, i32 noundef 372, ptr noundef nonnull @__PRETTY_FUNCTION__.APCM_inverse_quantization) #25
  unreachable

25:                                               ; preds = %18
  %26 = getelementptr inbounds i16, ptr %20, i64 1
  %27 = shl nuw i16 %22, 13
  %28 = add i16 %27, -28672
  %29 = sext i16 %28 to i64
  %30 = mul i64 %16, %29
  %31 = add i64 %30, 140737488355328
  %32 = lshr i64 %31, 48
  %33 = trunc i64 %32 to i16
  %34 = tail call i16 @llvm.sadd.sat.i16(i16 %33, i16 %14)
  %35 = tail call signext i16 @gsm_asr(i16 noundef signext %34, i32 noundef %17) #26
  %36 = getelementptr inbounds i16, ptr %21, i64 1
  store i16 %35, ptr %21, align 2, !tbaa !12
  %37 = add nsw i32 %19, -1
  %38 = icmp eq i32 %19, 0
  br i1 %38, label %39, label %18, !llvm.loop !62

39:                                               ; preds = %25
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Gsm_RPE_Decoding(ptr nocapture noundef readnone %0, i16 noundef signext %1, i16 noundef signext %2, ptr nocapture noundef readonly %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #2 {
  %6 = alloca [13 x i16], align 16
  call void @llvm.lifetime.start.p0(i64 26, ptr nonnull %6) #26
  %7 = icmp sgt i16 %1, 15
  %8 = lshr i16 %1, 3
  %9 = add nsw i16 %8, -1
  %10 = select i1 %7, i16 %9, i16 0
  %11 = shl i16 %10, 3
  %12 = sub i16 %1, %11
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %27, label %14

14:                                               ; preds = %5
  %15 = icmp slt i16 %12, 8
  br i1 %15, label %16, label %23

16:                                               ; preds = %16, %14
  %17 = phi i16 [ %20, %16 ], [ %12, %14 ]
  %18 = phi i16 [ %21, %16 ], [ %10, %14 ]
  %19 = shl i16 %17, 1
  %20 = or disjoint i16 %19, 1
  %21 = add i16 %18, -1
  %22 = icmp slt i16 %20, 8
  br i1 %22, label %16, label %23, !llvm.loop !59

23:                                               ; preds = %16, %14
  %24 = phi i16 [ %10, %14 ], [ %21, %16 ]
  %25 = phi i16 [ %12, %14 ], [ %20, %16 ]
  %26 = add nsw i16 %25, -8
  br label %27

27:                                               ; preds = %23, %5
  %28 = phi i16 [ %24, %23 ], [ -4, %5 ]
  %29 = phi i16 [ %26, %23 ], [ 7, %5 ]
  %30 = add i16 %28, 4
  %31 = icmp ult i16 %30, 11
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  tail call void @__assert_fail(ptr noundef nonnull @.str.10.42, ptr noundef nonnull @.str.1.40, i32 noundef 249, ptr noundef nonnull @__PRETTY_FUNCTION__.APCM_quantization_xmaxc_to_exp_mant) #25
  unreachable

33:                                               ; preds = %27
  %34 = icmp ult i16 %29, 8
  br i1 %34, label %36, label %35

35:                                               ; preds = %33
  tail call void @__assert_fail(ptr noundef nonnull @.str.5.43, ptr noundef nonnull @.str.1.40, i32 noundef 250, ptr noundef nonnull @__PRETTY_FUNCTION__.APCM_quantization_xmaxc_to_exp_mant) #25
  unreachable

36:                                               ; preds = %33
  call fastcc void @APCM_inverse_quantization(ptr noundef %3, i16 noundef signext %29, i16 noundef signext %28, ptr noundef nonnull %6)
  %37 = icmp ult i16 %2, 4
  br i1 %37, label %39, label %38

38:                                               ; preds = %36
  tail call void @__assert_fail(ptr noundef nonnull @.str.9.46, ptr noundef nonnull @.str.1.40, i32 noundef 402, ptr noundef nonnull @__PRETTY_FUNCTION__.RPE_grid_positioning) #25
  unreachable

39:                                               ; preds = %36
  switch i16 %2, label %69 [
    i16 3, label %40
    i16 2, label %42
    i16 1, label %47
    i16 0, label %52
  ]

40:                                               ; preds = %39
  %41 = getelementptr inbounds i16, ptr %4, i64 1
  store i16 0, ptr %4, align 2, !tbaa !12
  br label %42

42:                                               ; preds = %52, %40, %39
  %43 = phi ptr [ %56, %52 ], [ %6, %40 ], [ %6, %39 ]
  %44 = phi ptr [ %58, %52 ], [ %41, %40 ], [ %4, %39 ]
  %45 = phi i32 [ %59, %52 ], [ 13, %40 ], [ 13, %39 ]
  %46 = getelementptr inbounds i16, ptr %44, i64 1
  store i16 0, ptr %44, align 2, !tbaa !12
  br label %47

47:                                               ; preds = %42, %39
  %48 = phi ptr [ %43, %42 ], [ %6, %39 ]
  %49 = phi ptr [ %46, %42 ], [ %4, %39 ]
  %50 = phi i32 [ %45, %42 ], [ 13, %39 ]
  %51 = getelementptr inbounds i16, ptr %49, i64 1
  store i16 0, ptr %49, align 2, !tbaa !12
  br label %52

52:                                               ; preds = %47, %39
  %53 = phi ptr [ %6, %39 ], [ %48, %47 ]
  %54 = phi ptr [ %4, %39 ], [ %51, %47 ]
  %55 = phi i32 [ 13, %39 ], [ %50, %47 ]
  %56 = getelementptr inbounds i16, ptr %53, i64 1
  %57 = load i16, ptr %53, align 2, !tbaa !12
  %58 = getelementptr i16, ptr %54, i64 1
  store i16 %57, ptr %54, align 2, !tbaa !12
  %59 = add nsw i32 %55, -1
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %42, !llvm.loop !61

61:                                               ; preds = %52
  %62 = icmp eq i16 %2, 3
  br i1 %62, label %70, label %63

63:                                               ; preds = %61
  %64 = tail call i16 @llvm.smax.i16(i16 %2, i16 2)
  %65 = sub nsw i16 %64, %2
  %66 = zext i16 %65 to i64
  %67 = shl nuw nsw i64 %66, 1
  %68 = add nuw nsw i64 %67, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %58, i8 0, i64 %68, i1 false), !tbaa !12
  br label %70

69:                                               ; preds = %39
  unreachable

70:                                               ; preds = %63, %61
  call void @llvm.lifetime.end.p0(i64 26, ptr nonnull %6) #26
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Gsm_Short_Term_Analysis_Filter(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) local_unnamed_addr #14 {
  %4 = alloca [8 x i16], align 16
  %5 = getelementptr inbounds %struct.gsm_state, ptr %0, i64 0, i32 6
  %6 = load i16, ptr %5, align 4, !tbaa !63
  %7 = sext i16 %6 to i64
  %8 = getelementptr inbounds %struct.gsm_state, ptr %0, i64 0, i32 5, i64 %7
  %9 = xor i16 %6, 1
  store i16 %9, ptr %5, align 4, !tbaa !63
  %10 = sext i16 %9 to i64
  %11 = getelementptr inbounds %struct.gsm_state, ptr %0, i64 0, i32 5, i64 %10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #26
  tail call fastcc void @Decoding_of_the_coded_Log_Area_Ratios(ptr noundef %1, ptr noundef nonnull %8)
  br label %12

12:                                               ; preds = %12, %3
  %13 = phi i32 [ 1, %3 ], [ %24, %12 ]
  %14 = phi ptr [ %4, %3 ], [ %25, %12 ]
  %15 = phi ptr [ %8, %3 ], [ %27, %12 ]
  %16 = phi ptr [ %11, %3 ], [ %26, %12 ]
  %17 = load i16, ptr %16, align 2, !tbaa !12
  %18 = ashr i16 %17, 2
  %19 = load i16, ptr %15, align 2, !tbaa !12
  %20 = ashr i16 %19, 2
  %21 = ashr i16 %17, 1
  %22 = add nsw i16 %21, %18
  %23 = add nsw i16 %22, %20
  store i16 %23, ptr %14, align 2, !tbaa !12
  %24 = add nuw nsw i32 %13, 1
  %25 = getelementptr inbounds i16, ptr %14, i64 1
  %26 = getelementptr inbounds i16, ptr %16, i64 1
  %27 = getelementptr inbounds i16, ptr %15, i64 1
  %28 = icmp eq i32 %24, 9
  br i1 %28, label %29, label %12, !llvm.loop !64

29:                                               ; preds = %63, %12
  %30 = phi i32 [ %65, %63 ], [ 1, %12 ]
  %31 = phi ptr [ %66, %63 ], [ %4, %12 ]
  %32 = load i16, ptr %31, align 2, !tbaa !12
  %33 = icmp slt i16 %32, 0
  br i1 %33, label %34, label %50

34:                                               ; preds = %29
  %35 = icmp eq i16 %32, -32768
  %36 = sub i16 0, %32
  %37 = select i1 %35, i16 32767, i16 %36
  %38 = icmp ult i16 %37, 11059
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = mul nsw i16 %37, -2
  br label %63

41:                                               ; preds = %34
  %42 = icmp ult i16 %37, 20070
  br i1 %42, label %43, label %45

43:                                               ; preds = %41
  %44 = sub nuw i16 -11059, %37
  br label %63

45:                                               ; preds = %41
  %46 = icmp ugt i16 %37, 26623
  br i1 %46, label %63, label %47

47:                                               ; preds = %45
  %48 = lshr i16 %37, 2
  %49 = sub nuw i16 -26112, %48
  br label %63

50:                                               ; preds = %29
  %51 = icmp slt i16 %32, 11059
  br i1 %51, label %52, label %54

52:                                               ; preds = %50
  %53 = shl nuw i16 %32, 1
  br label %63

54:                                               ; preds = %50
  %55 = icmp slt i16 %32, 20070
  br i1 %55, label %56, label %58

56:                                               ; preds = %54
  %57 = add nuw i16 %32, 11059
  br label %63

58:                                               ; preds = %54
  %59 = icmp ugt i16 %32, 26623
  br i1 %59, label %63, label %60

60:                                               ; preds = %58
  %61 = lshr i16 %32, 2
  %62 = add nuw i16 %61, 26112
  br label %63

63:                                               ; preds = %60, %58, %56, %52, %47, %45, %43, %39
  %64 = phi i16 [ %40, %39 ], [ %44, %43 ], [ %49, %47 ], [ -32767, %45 ], [ %53, %52 ], [ %57, %56 ], [ %62, %60 ], [ 32767, %58 ]
  store i16 %64, ptr %31, align 2, !tbaa !12
  %65 = add nuw nsw i32 %30, 1
  %66 = getelementptr inbounds i16, ptr %31, i64 1
  %67 = icmp eq i32 %65, 9
  br i1 %67, label %68, label %29, !llvm.loop !65

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.gsm_state, ptr %0, i64 0, i32 4
  br label %70

70:                                               ; preds = %99, %68
  %71 = phi i32 [ %100, %99 ], [ 13, %68 ]
  %72 = phi ptr [ %101, %99 ], [ %2, %68 ]
  %73 = load i16, ptr %72, align 2, !tbaa !12
  br label %74

74:                                               ; preds = %74, %70
  %75 = phi i64 [ 0, %70 ], [ %97, %74 ]
  %76 = phi i16 [ %73, %70 ], [ %90, %74 ]
  %77 = phi i16 [ %73, %70 ], [ %96, %74 ]
  %78 = getelementptr inbounds i16, ptr %69, i64 %75
  %79 = load i16, ptr %78, align 2, !tbaa !12
  %80 = getelementptr inbounds i16, ptr %4, i64 %75
  %81 = load i16, ptr %80, align 2, !tbaa !12
  store i16 %76, ptr %78, align 2, !tbaa !12
  %82 = sext i16 %81 to i64
  %83 = sext i16 %77 to i64
  %84 = sext i16 %79 to i64
  %85 = shl nsw i64 %83, 33
  %86 = mul i64 %85, %82
  %87 = add i64 %86, 140737488355328
  %88 = lshr i64 %87, 48
  %89 = trunc i64 %88 to i16
  %90 = tail call i16 @llvm.sadd.sat.i16(i16 %89, i16 %79)
  %91 = shl nsw i64 %84, 33
  %92 = mul i64 %91, %82
  %93 = add i64 %92, 140737488355328
  %94 = lshr i64 %93, 48
  %95 = trunc i64 %94 to i16
  %96 = tail call i16 @llvm.sadd.sat.i16(i16 %95, i16 %77)
  %97 = add nuw nsw i64 %75, 1
  %98 = icmp eq i64 %97, 8
  br i1 %98, label %99, label %74, !llvm.loop !66

99:                                               ; preds = %74
  %100 = add nsw i32 %71, -1
  store i16 %96, ptr %72, align 2, !tbaa !12
  %101 = getelementptr inbounds i16, ptr %72, i64 1
  %102 = icmp eq i32 %100, 0
  br i1 %102, label %103, label %70, !llvm.loop !67

103:                                              ; preds = %103, %99
  %104 = phi ptr [ %114, %103 ], [ %11, %99 ]
  %105 = phi i32 [ %113, %103 ], [ 1, %99 ]
  %106 = phi ptr [ %116, %103 ], [ %4, %99 ]
  %107 = phi ptr [ %115, %103 ], [ %8, %99 ]
  %108 = load i16, ptr %104, align 2, !tbaa !12
  %109 = ashr i16 %108, 1
  %110 = load i16, ptr %107, align 2, !tbaa !12
  %111 = ashr i16 %110, 1
  %112 = add nsw i16 %111, %109
  store i16 %112, ptr %106, align 2, !tbaa !12
  %113 = add nuw nsw i32 %105, 1
  %114 = getelementptr inbounds i16, ptr %104, i64 1
  %115 = getelementptr inbounds i16, ptr %107, i64 1
  %116 = getelementptr inbounds i16, ptr %106, i64 1
  %117 = icmp eq i32 %113, 9
  br i1 %117, label %118, label %103, !llvm.loop !68

118:                                              ; preds = %152, %103
  %119 = phi i32 [ %154, %152 ], [ 1, %103 ]
  %120 = phi ptr [ %155, %152 ], [ %4, %103 ]
  %121 = load i16, ptr %120, align 2, !tbaa !12
  %122 = icmp slt i16 %121, 0
  br i1 %122, label %123, label %139

123:                                              ; preds = %118
  %124 = icmp eq i16 %121, -32768
  %125 = sub i16 0, %121
  %126 = select i1 %124, i16 32767, i16 %125
  %127 = icmp ult i16 %126, 11059
  br i1 %127, label %128, label %130

128:                                              ; preds = %123
  %129 = mul nsw i16 %126, -2
  br label %152

130:                                              ; preds = %123
  %131 = icmp ult i16 %126, 20070
  br i1 %131, label %132, label %134

132:                                              ; preds = %130
  %133 = sub nuw i16 -11059, %126
  br label %152

134:                                              ; preds = %130
  %135 = icmp ugt i16 %126, 26623
  br i1 %135, label %152, label %136

136:                                              ; preds = %134
  %137 = lshr i16 %126, 2
  %138 = sub nuw i16 -26112, %137
  br label %152

139:                                              ; preds = %118
  %140 = icmp slt i16 %121, 11059
  br i1 %140, label %141, label %143

141:                                              ; preds = %139
  %142 = shl nuw i16 %121, 1
  br label %152

143:                                              ; preds = %139
  %144 = icmp slt i16 %121, 20070
  br i1 %144, label %145, label %147

145:                                              ; preds = %143
  %146 = add nuw i16 %121, 11059
  br label %152

147:                                              ; preds = %143
  %148 = icmp ugt i16 %121, 26623
  br i1 %148, label %152, label %149

149:                                              ; preds = %147
  %150 = lshr i16 %121, 2
  %151 = add nuw i16 %150, 26112
  br label %152

152:                                              ; preds = %149, %147, %145, %141, %136, %134, %132, %128
  %153 = phi i16 [ %129, %128 ], [ %133, %132 ], [ %138, %136 ], [ -32767, %134 ], [ %142, %141 ], [ %146, %145 ], [ %151, %149 ], [ 32767, %147 ]
  store i16 %153, ptr %120, align 2, !tbaa !12
  %154 = add nuw nsw i32 %119, 1
  %155 = getelementptr inbounds i16, ptr %120, i64 1
  %156 = icmp eq i32 %154, 9
  br i1 %156, label %157, label %118, !llvm.loop !65

157:                                              ; preds = %152
  %158 = getelementptr inbounds i16, ptr %2, i64 13
  br label %159

159:                                              ; preds = %188, %157
  %160 = phi i32 [ %189, %188 ], [ 14, %157 ]
  %161 = phi ptr [ %190, %188 ], [ %158, %157 ]
  %162 = load i16, ptr %161, align 2, !tbaa !12
  br label %163

163:                                              ; preds = %163, %159
  %164 = phi i64 [ 0, %159 ], [ %186, %163 ]
  %165 = phi i16 [ %162, %159 ], [ %179, %163 ]
  %166 = phi i16 [ %162, %159 ], [ %185, %163 ]
  %167 = getelementptr inbounds i16, ptr %69, i64 %164
  %168 = load i16, ptr %167, align 2, !tbaa !12
  %169 = getelementptr inbounds i16, ptr %4, i64 %164
  %170 = load i16, ptr %169, align 2, !tbaa !12
  store i16 %165, ptr %167, align 2, !tbaa !12
  %171 = sext i16 %170 to i64
  %172 = sext i16 %166 to i64
  %173 = sext i16 %168 to i64
  %174 = shl nsw i64 %172, 33
  %175 = mul i64 %174, %171
  %176 = add i64 %175, 140737488355328
  %177 = lshr i64 %176, 48
  %178 = trunc i64 %177 to i16
  %179 = tail call i16 @llvm.sadd.sat.i16(i16 %178, i16 %168)
  %180 = shl nsw i64 %173, 33
  %181 = mul i64 %180, %171
  %182 = add i64 %181, 140737488355328
  %183 = lshr i64 %182, 48
  %184 = trunc i64 %183 to i16
  %185 = tail call i16 @llvm.sadd.sat.i16(i16 %184, i16 %166)
  %186 = add nuw nsw i64 %164, 1
  %187 = icmp eq i64 %186, 8
  br i1 %187, label %188, label %163, !llvm.loop !66

188:                                              ; preds = %163
  %189 = add nsw i32 %160, -1
  store i16 %185, ptr %161, align 2, !tbaa !12
  %190 = getelementptr inbounds i16, ptr %161, i64 1
  %191 = icmp eq i32 %189, 0
  br i1 %191, label %192, label %159, !llvm.loop !67

192:                                              ; preds = %192, %188
  %193 = phi i32 [ %204, %192 ], [ 1, %188 ]
  %194 = phi ptr [ %207, %192 ], [ %4, %188 ]
  %195 = phi ptr [ %206, %192 ], [ %8, %188 ]
  %196 = phi ptr [ %205, %192 ], [ %11, %188 ]
  %197 = load i16, ptr %196, align 2, !tbaa !12
  %198 = ashr i16 %197, 2
  %199 = load i16, ptr %195, align 2, !tbaa !12
  %200 = ashr i16 %199, 2
  %201 = add nsw i16 %200, %198
  %202 = ashr i16 %199, 1
  %203 = add nsw i16 %201, %202
  store i16 %203, ptr %194, align 2, !tbaa !12
  %204 = add nuw nsw i32 %193, 1
  %205 = getelementptr inbounds i16, ptr %196, i64 1
  %206 = getelementptr inbounds i16, ptr %195, i64 1
  %207 = getelementptr inbounds i16, ptr %194, i64 1
  %208 = icmp eq i32 %204, 9
  br i1 %208, label %209, label %192, !llvm.loop !69

209:                                              ; preds = %243, %192
  %210 = phi i32 [ %245, %243 ], [ 1, %192 ]
  %211 = phi ptr [ %246, %243 ], [ %4, %192 ]
  %212 = load i16, ptr %211, align 2, !tbaa !12
  %213 = icmp slt i16 %212, 0
  br i1 %213, label %214, label %230

214:                                              ; preds = %209
  %215 = icmp eq i16 %212, -32768
  %216 = sub i16 0, %212
  %217 = select i1 %215, i16 32767, i16 %216
  %218 = icmp ult i16 %217, 11059
  br i1 %218, label %219, label %221

219:                                              ; preds = %214
  %220 = mul nsw i16 %217, -2
  br label %243

221:                                              ; preds = %214
  %222 = icmp ult i16 %217, 20070
  br i1 %222, label %223, label %225

223:                                              ; preds = %221
  %224 = sub nuw i16 -11059, %217
  br label %243

225:                                              ; preds = %221
  %226 = icmp ugt i16 %217, 26623
  br i1 %226, label %243, label %227

227:                                              ; preds = %225
  %228 = lshr i16 %217, 2
  %229 = sub nuw i16 -26112, %228
  br label %243

230:                                              ; preds = %209
  %231 = icmp slt i16 %212, 11059
  br i1 %231, label %232, label %234

232:                                              ; preds = %230
  %233 = shl nuw i16 %212, 1
  br label %243

234:                                              ; preds = %230
  %235 = icmp slt i16 %212, 20070
  br i1 %235, label %236, label %238

236:                                              ; preds = %234
  %237 = add nuw i16 %212, 11059
  br label %243

238:                                              ; preds = %234
  %239 = icmp ugt i16 %212, 26623
  br i1 %239, label %243, label %240

240:                                              ; preds = %238
  %241 = lshr i16 %212, 2
  %242 = add nuw i16 %241, 26112
  br label %243

243:                                              ; preds = %240, %238, %236, %232, %227, %225, %223, %219
  %244 = phi i16 [ %220, %219 ], [ %224, %223 ], [ %229, %227 ], [ -32767, %225 ], [ %233, %232 ], [ %237, %236 ], [ %242, %240 ], [ 32767, %238 ]
  store i16 %244, ptr %211, align 2, !tbaa !12
  %245 = add nuw nsw i32 %210, 1
  %246 = getelementptr inbounds i16, ptr %211, i64 1
  %247 = icmp eq i32 %245, 9
  br i1 %247, label %248, label %209, !llvm.loop !65

248:                                              ; preds = %243
  %249 = getelementptr inbounds i16, ptr %2, i64 27
  br label %250

250:                                              ; preds = %279, %248
  %251 = phi i32 [ %280, %279 ], [ 13, %248 ]
  %252 = phi ptr [ %281, %279 ], [ %249, %248 ]
  %253 = load i16, ptr %252, align 2, !tbaa !12
  br label %254

254:                                              ; preds = %254, %250
  %255 = phi i64 [ 0, %250 ], [ %277, %254 ]
  %256 = phi i16 [ %253, %250 ], [ %270, %254 ]
  %257 = phi i16 [ %253, %250 ], [ %276, %254 ]
  %258 = getelementptr inbounds i16, ptr %69, i64 %255
  %259 = load i16, ptr %258, align 2, !tbaa !12
  %260 = getelementptr inbounds i16, ptr %4, i64 %255
  %261 = load i16, ptr %260, align 2, !tbaa !12
  store i16 %256, ptr %258, align 2, !tbaa !12
  %262 = sext i16 %261 to i64
  %263 = sext i16 %257 to i64
  %264 = sext i16 %259 to i64
  %265 = shl nsw i64 %263, 33
  %266 = mul i64 %265, %262
  %267 = add i64 %266, 140737488355328
  %268 = lshr i64 %267, 48
  %269 = trunc i64 %268 to i16
  %270 = tail call i16 @llvm.sadd.sat.i16(i16 %269, i16 %259)
  %271 = shl nsw i64 %264, 33
  %272 = mul i64 %271, %262
  %273 = add i64 %272, 140737488355328
  %274 = lshr i64 %273, 48
  %275 = trunc i64 %274 to i16
  %276 = tail call i16 @llvm.sadd.sat.i16(i16 %275, i16 %257)
  %277 = add nuw nsw i64 %255, 1
  %278 = icmp eq i64 %277, 8
  br i1 %278, label %279, label %254, !llvm.loop !66

279:                                              ; preds = %254
  %280 = add nsw i32 %251, -1
  store i16 %276, ptr %252, align 2, !tbaa !12
  %281 = getelementptr inbounds i16, ptr %252, i64 1
  %282 = icmp eq i32 %280, 0
  br i1 %282, label %283, label %250, !llvm.loop !67

283:                                              ; preds = %279
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, ptr noundef nonnull align 2 dereferenceable(16) %8, i64 16, i1 false), !tbaa !12
  br label %284

284:                                              ; preds = %318, %283
  %285 = phi i32 [ %320, %318 ], [ 1, %283 ]
  %286 = phi ptr [ %321, %318 ], [ %4, %283 ]
  %287 = load i16, ptr %286, align 2, !tbaa !12
  %288 = icmp slt i16 %287, 0
  br i1 %288, label %289, label %305

289:                                              ; preds = %284
  %290 = icmp eq i16 %287, -32768
  %291 = sub i16 0, %287
  %292 = select i1 %290, i16 32767, i16 %291
  %293 = icmp ult i16 %292, 11059
  br i1 %293, label %294, label %296

294:                                              ; preds = %289
  %295 = mul nsw i16 %292, -2
  br label %318

296:                                              ; preds = %289
  %297 = icmp ult i16 %292, 20070
  br i1 %297, label %298, label %300

298:                                              ; preds = %296
  %299 = sub nuw i16 -11059, %292
  br label %318

300:                                              ; preds = %296
  %301 = icmp ugt i16 %292, 26623
  br i1 %301, label %318, label %302

302:                                              ; preds = %300
  %303 = lshr i16 %292, 2
  %304 = sub nuw i16 -26112, %303
  br label %318

305:                                              ; preds = %284
  %306 = icmp slt i16 %287, 11059
  br i1 %306, label %307, label %309

307:                                              ; preds = %305
  %308 = shl nuw i16 %287, 1
  br label %318

309:                                              ; preds = %305
  %310 = icmp slt i16 %287, 20070
  br i1 %310, label %311, label %313

311:                                              ; preds = %309
  %312 = add nuw i16 %287, 11059
  br label %318

313:                                              ; preds = %309
  %314 = icmp ugt i16 %287, 26623
  br i1 %314, label %318, label %315

315:                                              ; preds = %313
  %316 = lshr i16 %287, 2
  %317 = add nuw i16 %316, 26112
  br label %318

318:                                              ; preds = %315, %313, %311, %307, %302, %300, %298, %294
  %319 = phi i16 [ %295, %294 ], [ %299, %298 ], [ %304, %302 ], [ -32767, %300 ], [ %308, %307 ], [ %312, %311 ], [ %317, %315 ], [ 32767, %313 ]
  store i16 %319, ptr %286, align 2, !tbaa !12
  %320 = add nuw nsw i32 %285, 1
  %321 = getelementptr inbounds i16, ptr %286, i64 1
  %322 = icmp eq i32 %320, 9
  br i1 %322, label %323, label %284, !llvm.loop !65

323:                                              ; preds = %318
  %324 = getelementptr inbounds i16, ptr %2, i64 40
  br label %325

325:                                              ; preds = %354, %323
  %326 = phi i32 [ %355, %354 ], [ 120, %323 ]
  %327 = phi ptr [ %356, %354 ], [ %324, %323 ]
  %328 = load i16, ptr %327, align 2, !tbaa !12
  br label %329

329:                                              ; preds = %329, %325
  %330 = phi i64 [ 0, %325 ], [ %352, %329 ]
  %331 = phi i16 [ %328, %325 ], [ %345, %329 ]
  %332 = phi i16 [ %328, %325 ], [ %351, %329 ]
  %333 = getelementptr inbounds i16, ptr %69, i64 %330
  %334 = load i16, ptr %333, align 2, !tbaa !12
  %335 = getelementptr inbounds i16, ptr %4, i64 %330
  %336 = load i16, ptr %335, align 2, !tbaa !12
  store i16 %331, ptr %333, align 2, !tbaa !12
  %337 = sext i16 %336 to i64
  %338 = sext i16 %332 to i64
  %339 = sext i16 %334 to i64
  %340 = shl nsw i64 %338, 33
  %341 = mul i64 %340, %337
  %342 = add i64 %341, 140737488355328
  %343 = lshr i64 %342, 48
  %344 = trunc i64 %343 to i16
  %345 = tail call i16 @llvm.sadd.sat.i16(i16 %344, i16 %334)
  %346 = shl nsw i64 %339, 33
  %347 = mul i64 %346, %337
  %348 = add i64 %347, 140737488355328
  %349 = lshr i64 %348, 48
  %350 = trunc i64 %349 to i16
  %351 = tail call i16 @llvm.sadd.sat.i16(i16 %350, i16 %332)
  %352 = add nuw nsw i64 %330, 1
  %353 = icmp eq i64 %352, 8
  br i1 %353, label %354, label %329, !llvm.loop !66

354:                                              ; preds = %329
  %355 = add nsw i32 %326, -1
  store i16 %351, ptr %327, align 2, !tbaa !12
  %356 = getelementptr inbounds i16, ptr %327, i64 1
  %357 = icmp eq i32 %355, 0
  br i1 %357, label %358, label %325, !llvm.loop !67

358:                                              ; preds = %354
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #26
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @Decoding_of_the_coded_Log_Area_Ratios(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #13 {
  %3 = getelementptr inbounds i16, ptr %0, i64 1
  %4 = load i16, ptr %0, align 2, !tbaa !12
  %5 = sext i16 %4 to i64
  %6 = add nsw i64 %5, -32800
  %7 = icmp ult i64 %6, -65536
  %8 = icmp sgt i16 %4, 32
  %9 = select i1 %8, i16 63, i16 0
  %10 = xor i16 %4, 32
  %11 = select i1 %7, i16 %9, i16 %10
  %12 = shl i16 %11, 10
  %13 = sext i16 %12 to i64
  %14 = mul nsw i64 %13, 112588272697344
  %15 = add nsw i64 %14, 140737488355328
  %16 = lshr i64 %15, 47
  %17 = trunc i64 %16 to i16
  %18 = and i16 %17, -2
  %19 = getelementptr inbounds i16, ptr %1, i64 1
  store i16 %18, ptr %1, align 2, !tbaa !12
  %20 = getelementptr inbounds i16, ptr %0, i64 2
  %21 = load i16, ptr %3, align 2, !tbaa !12
  %22 = sext i16 %21 to i64
  %23 = add nsw i64 %22, -32800
  %24 = icmp ult i64 %23, -65536
  %25 = icmp sgt i16 %21, 32
  %26 = select i1 %25, i16 63, i16 0
  %27 = xor i16 %21, 32
  %28 = select i1 %24, i16 %26, i16 %27
  %29 = shl i16 %28, 10
  %30 = sext i16 %29 to i64
  %31 = mul nsw i64 %30, 112588272697344
  %32 = add nsw i64 %31, 140737488355328
  %33 = lshr i64 %32, 47
  %34 = trunc i64 %33 to i16
  %35 = and i16 %34, -2
  %36 = getelementptr inbounds i16, ptr %1, i64 2
  store i16 %35, ptr %19, align 2, !tbaa !12
  %37 = getelementptr inbounds i16, ptr %0, i64 3
  %38 = load i16, ptr %20, align 2, !tbaa !12
  %39 = sext i16 %38 to i64
  %40 = add nsw i64 %39, -32784
  %41 = icmp ult i64 %40, -65536
  %42 = icmp sgt i16 %38, 16
  %43 = select i1 %42, i16 63, i16 0
  %44 = add i16 %38, 48
  %45 = select i1 %41, i16 %43, i16 %44
  %46 = shl i16 %45, 10
  %47 = add i16 %46, -4096
  %48 = icmp slt i16 %46, -28671
  %49 = select i1 %48, i16 -32768, i16 %47
  %50 = sext i16 %49 to i64
  %51 = mul nsw i64 %50, 112588272697344
  %52 = add nsw i64 %51, 140737488355328
  %53 = lshr i64 %52, 47
  %54 = trunc i64 %53 to i16
  %55 = and i16 %54, -2
  %56 = getelementptr inbounds i16, ptr %1, i64 3
  store i16 %55, ptr %36, align 2, !tbaa !12
  %57 = getelementptr inbounds i16, ptr %0, i64 4
  %58 = load i16, ptr %37, align 2, !tbaa !12
  %59 = sext i16 %58 to i64
  %60 = add nsw i64 %59, -32784
  %61 = icmp ult i64 %60, -65536
  %62 = icmp sgt i16 %58, 16
  %63 = select i1 %62, i16 63, i16 0
  %64 = add i16 %58, 48
  %65 = select i1 %61, i16 %63, i16 %64
  %66 = shl i16 %65, 10
  %67 = add i16 %66, 5120
  %68 = icmp sgt i16 %66, 27646
  %69 = select i1 %68, i16 32767, i16 %67
  %70 = sext i16 %69 to i64
  %71 = mul nsw i64 %70, 112588272697344
  %72 = add nsw i64 %71, 140737488355328
  %73 = lshr i64 %72, 47
  %74 = trunc i64 %73 to i16
  %75 = and i16 %74, -2
  %76 = getelementptr inbounds i16, ptr %1, i64 4
  store i16 %75, ptr %56, align 2, !tbaa !12
  %77 = getelementptr inbounds i16, ptr %0, i64 5
  %78 = load i16, ptr %57, align 2, !tbaa !12
  %79 = sext i16 %78 to i64
  %80 = add nsw i64 %79, -32776
  %81 = icmp ult i64 %80, -65536
  %82 = icmp sgt i16 %78, 8
  %83 = select i1 %82, i16 63, i16 0
  %84 = add i16 %78, 56
  %85 = select i1 %81, i16 %83, i16 %84
  %86 = shl i16 %85, 10
  %87 = add i16 %86, -188
  %88 = icmp slt i16 %86, -32579
  %89 = select i1 %88, i16 -32768, i16 %87
  %90 = sext i16 %89 to i64
  %91 = mul nsw i64 %90, 165124312662016
  %92 = add nsw i64 %91, 140737488355328
  %93 = ashr i64 %92, 47
  %94 = and i64 %93, -2
  %95 = add nsw i64 %93, -32768
  %96 = icmp ult i64 %95, -65536
  %97 = icmp sgt i64 %94, 0
  %98 = select i1 %97, i64 32767, i64 32768
  %99 = select i1 %96, i64 %98, i64 %94
  %100 = trunc i64 %99 to i16
  %101 = getelementptr inbounds i16, ptr %1, i64 5
  store i16 %100, ptr %76, align 2, !tbaa !12
  %102 = getelementptr inbounds i16, ptr %0, i64 6
  %103 = load i16, ptr %77, align 2, !tbaa !12
  %104 = sext i16 %103 to i64
  %105 = add nsw i64 %104, -32776
  %106 = icmp ult i64 %105, -65536
  %107 = icmp sgt i16 %103, 8
  %108 = select i1 %107, i16 63, i16 0
  %109 = add i16 %103, 56
  %110 = select i1 %106, i16 %108, i16 %109
  %111 = shl i16 %110, 10
  %112 = add i16 %111, 3584
  %113 = icmp sgt i16 %111, 29182
  %114 = select i1 %113, i16 32767, i16 %112
  %115 = sext i16 %114 to i64
  %116 = mul nsw i64 %115, 150117696929792
  %117 = add nsw i64 %116, 140737488355328
  %118 = ashr i64 %117, 47
  %119 = and i64 %118, -2
  %120 = add nsw i64 %118, -32768
  %121 = icmp ult i64 %120, -65536
  %122 = icmp sgt i64 %119, 0
  %123 = select i1 %122, i64 32767, i64 32768
  %124 = select i1 %121, i64 %123, i64 %119
  %125 = trunc i64 %124 to i16
  %126 = getelementptr inbounds i16, ptr %1, i64 6
  store i16 %125, ptr %101, align 2, !tbaa !12
  %127 = getelementptr inbounds i16, ptr %0, i64 7
  %128 = load i16, ptr %102, align 2, !tbaa !12
  %129 = sext i16 %128 to i64
  %130 = add nsw i64 %129, -32772
  %131 = icmp ult i64 %130, -65536
  %132 = icmp sgt i16 %128, 4
  %133 = select i1 %132, i16 63, i16 0
  %134 = add i16 %128, 60
  %135 = select i1 %131, i16 %133, i16 %134
  %136 = shl i16 %135, 10
  %137 = or disjoint i16 %136, 682
  %138 = sext i16 %137 to i64
  %139 = mul nsw i64 %138, 270187802656768
  %140 = add nsw i64 %139, 140737488355328
  %141 = ashr i64 %140, 47
  %142 = and i64 %141, -2
  %143 = add nsw i64 %141, -32768
  %144 = icmp ult i64 %143, -65536
  %145 = icmp sgt i64 %142, 0
  %146 = select i1 %145, i64 32767, i64 32768
  %147 = select i1 %144, i64 %146, i64 %142
  %148 = trunc i64 %147 to i16
  store i16 %148, ptr %126, align 2, !tbaa !12
  %149 = load i16, ptr %127, align 2, !tbaa !12
  %150 = sext i16 %149 to i64
  %151 = add nsw i64 %150, -32772
  %152 = icmp ult i64 %151, -65536
  %153 = icmp sgt i16 %149, 4
  %154 = select i1 %153, i16 63, i16 0
  %155 = add i16 %149, 60
  %156 = select i1 %152, i16 %154, i16 %155
  %157 = shl i16 %156, 10
  %158 = add i16 %157, 2288
  %159 = icmp sgt i16 %157, 30478
  %160 = select i1 %159, i16 32767, i16 %158
  %161 = sext i16 %160 to i64
  %162 = mul nsw i64 %161, 255189776859136
  %163 = add nsw i64 %162, 140737488355328
  %164 = ashr i64 %163, 47
  %165 = and i64 %164, -2
  %166 = add nsw i64 %164, -32768
  %167 = icmp ult i64 %166, -65536
  %168 = icmp sgt i64 %165, 0
  %169 = select i1 %168, i64 32767, i64 32768
  %170 = select i1 %167, i64 %169, i64 %165
  %171 = getelementptr inbounds i16, ptr %1, i64 7
  %172 = trunc i64 %170 to i16
  store i16 %172, ptr %171, align 2, !tbaa !12
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Gsm_Short_Term_Synthesis_Filter(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #14 {
  %5 = alloca [8 x i16], align 16
  %6 = getelementptr inbounds %struct.gsm_state, ptr %0, i64 0, i32 6
  %7 = load i16, ptr %6, align 4, !tbaa !63
  %8 = sext i16 %7 to i64
  %9 = getelementptr inbounds %struct.gsm_state, ptr %0, i64 0, i32 5, i64 %8
  %10 = xor i16 %7, 1
  store i16 %10, ptr %6, align 4, !tbaa !63
  %11 = sext i16 %10 to i64
  %12 = getelementptr inbounds %struct.gsm_state, ptr %0, i64 0, i32 5, i64 %11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #26
  tail call fastcc void @Decoding_of_the_coded_Log_Area_Ratios(ptr noundef %1, ptr noundef nonnull %9)
  br label %13

13:                                               ; preds = %13, %4
  %14 = phi i32 [ 1, %4 ], [ %25, %13 ]
  %15 = phi ptr [ %5, %4 ], [ %26, %13 ]
  %16 = phi ptr [ %9, %4 ], [ %28, %13 ]
  %17 = phi ptr [ %12, %4 ], [ %27, %13 ]
  %18 = load i16, ptr %17, align 2, !tbaa !12
  %19 = ashr i16 %18, 2
  %20 = load i16, ptr %16, align 2, !tbaa !12
  %21 = ashr i16 %20, 2
  %22 = ashr i16 %18, 1
  %23 = add nsw i16 %22, %19
  %24 = add nsw i16 %23, %21
  store i16 %24, ptr %15, align 2, !tbaa !12
  %25 = add nuw nsw i32 %14, 1
  %26 = getelementptr inbounds i16, ptr %15, i64 1
  %27 = getelementptr inbounds i16, ptr %17, i64 1
  %28 = getelementptr inbounds i16, ptr %16, i64 1
  %29 = icmp eq i32 %25, 9
  br i1 %29, label %30, label %13, !llvm.loop !64

30:                                               ; preds = %64, %13
  %31 = phi i32 [ %66, %64 ], [ 1, %13 ]
  %32 = phi ptr [ %67, %64 ], [ %5, %13 ]
  %33 = load i16, ptr %32, align 2, !tbaa !12
  %34 = icmp slt i16 %33, 0
  br i1 %34, label %35, label %51

35:                                               ; preds = %30
  %36 = icmp eq i16 %33, -32768
  %37 = sub i16 0, %33
  %38 = select i1 %36, i16 32767, i16 %37
  %39 = icmp ult i16 %38, 11059
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = mul nsw i16 %38, -2
  br label %64

42:                                               ; preds = %35
  %43 = icmp ult i16 %38, 20070
  br i1 %43, label %44, label %46

44:                                               ; preds = %42
  %45 = sub nuw i16 -11059, %38
  br label %64

46:                                               ; preds = %42
  %47 = icmp ugt i16 %38, 26623
  br i1 %47, label %64, label %48

48:                                               ; preds = %46
  %49 = lshr i16 %38, 2
  %50 = sub nuw i16 -26112, %49
  br label %64

51:                                               ; preds = %30
  %52 = icmp slt i16 %33, 11059
  br i1 %52, label %53, label %55

53:                                               ; preds = %51
  %54 = shl nuw i16 %33, 1
  br label %64

55:                                               ; preds = %51
  %56 = icmp slt i16 %33, 20070
  br i1 %56, label %57, label %59

57:                                               ; preds = %55
  %58 = add nuw i16 %33, 11059
  br label %64

59:                                               ; preds = %55
  %60 = icmp ugt i16 %33, 26623
  br i1 %60, label %64, label %61

61:                                               ; preds = %59
  %62 = lshr i16 %33, 2
  %63 = add nuw i16 %62, 26112
  br label %64

64:                                               ; preds = %61, %59, %57, %53, %48, %46, %44, %40
  %65 = phi i16 [ %41, %40 ], [ %45, %44 ], [ %50, %48 ], [ -32767, %46 ], [ %54, %53 ], [ %58, %57 ], [ %63, %61 ], [ 32767, %59 ]
  store i16 %65, ptr %32, align 2, !tbaa !12
  %66 = add nuw nsw i32 %31, 1
  %67 = getelementptr inbounds i16, ptr %32, i64 1
  %68 = icmp eq i32 %66, 9
  br i1 %68, label %69, label %30, !llvm.loop !65

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.gsm_state, ptr %0, i64 0, i32 8
  br label %71

71:                                               ; preds = %115, %69
  %72 = phi i32 [ %116, %115 ], [ 13, %69 ]
  %73 = phi ptr [ %118, %115 ], [ %3, %69 ]
  %74 = phi ptr [ %117, %115 ], [ %2, %69 ]
  %75 = load i16, ptr %74, align 2, !tbaa !12
  br label %76

76:                                               ; preds = %107, %71
  %77 = phi i64 [ 8, %71 ], [ %114, %107 ]
  %78 = phi i64 [ 7, %71 ], [ %112, %107 ]
  %79 = phi i16 [ %75, %71 ], [ %97, %107 ]
  %80 = getelementptr inbounds i16, ptr %5, i64 %78
  %81 = load i16, ptr %80, align 2, !tbaa !12
  %82 = getelementptr inbounds i16, ptr %70, i64 %78
  %83 = load i16, ptr %82, align 2, !tbaa !12
  %84 = icmp eq i16 %81, -32768
  %85 = icmp eq i16 %83, -32768
  %86 = select i1 %84, i1 %85, i1 false
  br i1 %86, label %94, label %87

87:                                               ; preds = %76
  %88 = sext i16 %81 to i64
  %89 = sext i16 %83 to i64
  %90 = mul nsw i64 %89, %88
  %91 = add nsw i64 %90, 16384
  %92 = lshr i64 %91, 15
  %93 = and i64 %92, 65535
  br label %94

94:                                               ; preds = %87, %76
  %95 = phi i64 [ %93, %87 ], [ 32767, %76 ]
  %96 = trunc i64 %95 to i16
  %97 = tail call i16 @llvm.ssub.sat.i16(i16 %79, i16 %96)
  %98 = icmp eq i16 %97, -32768
  %99 = select i1 %84, i1 %98, i1 false
  br i1 %99, label %107, label %100

100:                                              ; preds = %94
  %101 = sext i16 %81 to i64
  %102 = sext i16 %97 to i64
  %103 = mul nsw i64 %102, %101
  %104 = add nsw i64 %103, 16384
  %105 = lshr i64 %104, 15
  %106 = and i64 %105, 65535
  br label %107

107:                                              ; preds = %100, %94
  %108 = phi i64 [ %106, %100 ], [ 32767, %94 ]
  %109 = trunc i64 %108 to i16
  %110 = tail call i16 @llvm.sadd.sat.i16(i16 %109, i16 %83)
  %111 = getelementptr inbounds i16, ptr %70, i64 %77
  store i16 %110, ptr %111, align 2, !tbaa !12
  %112 = add nsw i64 %78, -1
  %113 = icmp eq i64 %78, 0
  %114 = add nsw i64 %77, -1
  br i1 %113, label %115, label %76, !llvm.loop !70

115:                                              ; preds = %107
  %116 = add nsw i32 %72, -1
  %117 = getelementptr inbounds i16, ptr %74, i64 1
  store i16 %97, ptr %70, align 2, !tbaa !12
  %118 = getelementptr inbounds i16, ptr %73, i64 1
  store i16 %97, ptr %73, align 2, !tbaa !12
  %119 = icmp eq i32 %116, 0
  br i1 %119, label %120, label %71, !llvm.loop !71

120:                                              ; preds = %120, %115
  %121 = phi ptr [ %131, %120 ], [ %12, %115 ]
  %122 = phi i32 [ %130, %120 ], [ 1, %115 ]
  %123 = phi ptr [ %133, %120 ], [ %5, %115 ]
  %124 = phi ptr [ %132, %120 ], [ %9, %115 ]
  %125 = load i16, ptr %121, align 2, !tbaa !12
  %126 = ashr i16 %125, 1
  %127 = load i16, ptr %124, align 2, !tbaa !12
  %128 = ashr i16 %127, 1
  %129 = add nsw i16 %128, %126
  store i16 %129, ptr %123, align 2, !tbaa !12
  %130 = add nuw nsw i32 %122, 1
  %131 = getelementptr inbounds i16, ptr %121, i64 1
  %132 = getelementptr inbounds i16, ptr %124, i64 1
  %133 = getelementptr inbounds i16, ptr %123, i64 1
  %134 = icmp eq i32 %130, 9
  br i1 %134, label %135, label %120, !llvm.loop !68

135:                                              ; preds = %169, %120
  %136 = phi i32 [ %171, %169 ], [ 1, %120 ]
  %137 = phi ptr [ %172, %169 ], [ %5, %120 ]
  %138 = load i16, ptr %137, align 2, !tbaa !12
  %139 = icmp slt i16 %138, 0
  br i1 %139, label %140, label %156

140:                                              ; preds = %135
  %141 = icmp eq i16 %138, -32768
  %142 = sub i16 0, %138
  %143 = select i1 %141, i16 32767, i16 %142
  %144 = icmp ult i16 %143, 11059
  br i1 %144, label %145, label %147

145:                                              ; preds = %140
  %146 = mul nsw i16 %143, -2
  br label %169

147:                                              ; preds = %140
  %148 = icmp ult i16 %143, 20070
  br i1 %148, label %149, label %151

149:                                              ; preds = %147
  %150 = sub nuw i16 -11059, %143
  br label %169

151:                                              ; preds = %147
  %152 = icmp ugt i16 %143, 26623
  br i1 %152, label %169, label %153

153:                                              ; preds = %151
  %154 = lshr i16 %143, 2
  %155 = sub nuw i16 -26112, %154
  br label %169

156:                                              ; preds = %135
  %157 = icmp slt i16 %138, 11059
  br i1 %157, label %158, label %160

158:                                              ; preds = %156
  %159 = shl nuw i16 %138, 1
  br label %169

160:                                              ; preds = %156
  %161 = icmp slt i16 %138, 20070
  br i1 %161, label %162, label %164

162:                                              ; preds = %160
  %163 = add nuw i16 %138, 11059
  br label %169

164:                                              ; preds = %160
  %165 = icmp ugt i16 %138, 26623
  br i1 %165, label %169, label %166

166:                                              ; preds = %164
  %167 = lshr i16 %138, 2
  %168 = add nuw i16 %167, 26112
  br label %169

169:                                              ; preds = %166, %164, %162, %158, %153, %151, %149, %145
  %170 = phi i16 [ %146, %145 ], [ %150, %149 ], [ %155, %153 ], [ -32767, %151 ], [ %159, %158 ], [ %163, %162 ], [ %168, %166 ], [ 32767, %164 ]
  store i16 %170, ptr %137, align 2, !tbaa !12
  %171 = add nuw nsw i32 %136, 1
  %172 = getelementptr inbounds i16, ptr %137, i64 1
  %173 = icmp eq i32 %171, 9
  br i1 %173, label %174, label %135, !llvm.loop !65

174:                                              ; preds = %169
  %175 = getelementptr inbounds i16, ptr %2, i64 13
  %176 = getelementptr inbounds i16, ptr %3, i64 13
  br label %177

177:                                              ; preds = %221, %174
  %178 = phi i32 [ %222, %221 ], [ 14, %174 ]
  %179 = phi ptr [ %224, %221 ], [ %176, %174 ]
  %180 = phi ptr [ %223, %221 ], [ %175, %174 ]
  %181 = load i16, ptr %180, align 2, !tbaa !12
  br label %182

182:                                              ; preds = %213, %177
  %183 = phi i64 [ 8, %177 ], [ %220, %213 ]
  %184 = phi i64 [ 7, %177 ], [ %218, %213 ]
  %185 = phi i16 [ %181, %177 ], [ %203, %213 ]
  %186 = getelementptr inbounds i16, ptr %5, i64 %184
  %187 = load i16, ptr %186, align 2, !tbaa !12
  %188 = getelementptr inbounds i16, ptr %70, i64 %184
  %189 = load i16, ptr %188, align 2, !tbaa !12
  %190 = icmp eq i16 %187, -32768
  %191 = icmp eq i16 %189, -32768
  %192 = select i1 %190, i1 %191, i1 false
  br i1 %192, label %200, label %193

193:                                              ; preds = %182
  %194 = sext i16 %187 to i64
  %195 = sext i16 %189 to i64
  %196 = mul nsw i64 %195, %194
  %197 = add nsw i64 %196, 16384
  %198 = lshr i64 %197, 15
  %199 = and i64 %198, 65535
  br label %200

200:                                              ; preds = %193, %182
  %201 = phi i64 [ %199, %193 ], [ 32767, %182 ]
  %202 = trunc i64 %201 to i16
  %203 = tail call i16 @llvm.ssub.sat.i16(i16 %185, i16 %202)
  %204 = icmp eq i16 %203, -32768
  %205 = select i1 %190, i1 %204, i1 false
  br i1 %205, label %213, label %206

206:                                              ; preds = %200
  %207 = sext i16 %187 to i64
  %208 = sext i16 %203 to i64
  %209 = mul nsw i64 %208, %207
  %210 = add nsw i64 %209, 16384
  %211 = lshr i64 %210, 15
  %212 = and i64 %211, 65535
  br label %213

213:                                              ; preds = %206, %200
  %214 = phi i64 [ %212, %206 ], [ 32767, %200 ]
  %215 = trunc i64 %214 to i16
  %216 = tail call i16 @llvm.sadd.sat.i16(i16 %215, i16 %189)
  %217 = getelementptr inbounds i16, ptr %70, i64 %183
  store i16 %216, ptr %217, align 2, !tbaa !12
  %218 = add nsw i64 %184, -1
  %219 = icmp eq i64 %184, 0
  %220 = add nsw i64 %183, -1
  br i1 %219, label %221, label %182, !llvm.loop !70

221:                                              ; preds = %213
  %222 = add nsw i32 %178, -1
  %223 = getelementptr inbounds i16, ptr %180, i64 1
  store i16 %203, ptr %70, align 2, !tbaa !12
  %224 = getelementptr inbounds i16, ptr %179, i64 1
  store i16 %203, ptr %179, align 2, !tbaa !12
  %225 = icmp eq i32 %222, 0
  br i1 %225, label %226, label %177, !llvm.loop !71

226:                                              ; preds = %226, %221
  %227 = phi i32 [ %238, %226 ], [ 1, %221 ]
  %228 = phi ptr [ %241, %226 ], [ %5, %221 ]
  %229 = phi ptr [ %240, %226 ], [ %9, %221 ]
  %230 = phi ptr [ %239, %226 ], [ %12, %221 ]
  %231 = load i16, ptr %230, align 2, !tbaa !12
  %232 = ashr i16 %231, 2
  %233 = load i16, ptr %229, align 2, !tbaa !12
  %234 = ashr i16 %233, 2
  %235 = add nsw i16 %234, %232
  %236 = ashr i16 %233, 1
  %237 = add nsw i16 %235, %236
  store i16 %237, ptr %228, align 2, !tbaa !12
  %238 = add nuw nsw i32 %227, 1
  %239 = getelementptr inbounds i16, ptr %230, i64 1
  %240 = getelementptr inbounds i16, ptr %229, i64 1
  %241 = getelementptr inbounds i16, ptr %228, i64 1
  %242 = icmp eq i32 %238, 9
  br i1 %242, label %243, label %226, !llvm.loop !69

243:                                              ; preds = %277, %226
  %244 = phi i32 [ %279, %277 ], [ 1, %226 ]
  %245 = phi ptr [ %280, %277 ], [ %5, %226 ]
  %246 = load i16, ptr %245, align 2, !tbaa !12
  %247 = icmp slt i16 %246, 0
  br i1 %247, label %248, label %264

248:                                              ; preds = %243
  %249 = icmp eq i16 %246, -32768
  %250 = sub i16 0, %246
  %251 = select i1 %249, i16 32767, i16 %250
  %252 = icmp ult i16 %251, 11059
  br i1 %252, label %253, label %255

253:                                              ; preds = %248
  %254 = mul nsw i16 %251, -2
  br label %277

255:                                              ; preds = %248
  %256 = icmp ult i16 %251, 20070
  br i1 %256, label %257, label %259

257:                                              ; preds = %255
  %258 = sub nuw i16 -11059, %251
  br label %277

259:                                              ; preds = %255
  %260 = icmp ugt i16 %251, 26623
  br i1 %260, label %277, label %261

261:                                              ; preds = %259
  %262 = lshr i16 %251, 2
  %263 = sub nuw i16 -26112, %262
  br label %277

264:                                              ; preds = %243
  %265 = icmp slt i16 %246, 11059
  br i1 %265, label %266, label %268

266:                                              ; preds = %264
  %267 = shl nuw i16 %246, 1
  br label %277

268:                                              ; preds = %264
  %269 = icmp slt i16 %246, 20070
  br i1 %269, label %270, label %272

270:                                              ; preds = %268
  %271 = add nuw i16 %246, 11059
  br label %277

272:                                              ; preds = %268
  %273 = icmp ugt i16 %246, 26623
  br i1 %273, label %277, label %274

274:                                              ; preds = %272
  %275 = lshr i16 %246, 2
  %276 = add nuw i16 %275, 26112
  br label %277

277:                                              ; preds = %274, %272, %270, %266, %261, %259, %257, %253
  %278 = phi i16 [ %254, %253 ], [ %258, %257 ], [ %263, %261 ], [ -32767, %259 ], [ %267, %266 ], [ %271, %270 ], [ %276, %274 ], [ 32767, %272 ]
  store i16 %278, ptr %245, align 2, !tbaa !12
  %279 = add nuw nsw i32 %244, 1
  %280 = getelementptr inbounds i16, ptr %245, i64 1
  %281 = icmp eq i32 %279, 9
  br i1 %281, label %282, label %243, !llvm.loop !65

282:                                              ; preds = %277
  %283 = getelementptr inbounds i16, ptr %2, i64 27
  %284 = getelementptr inbounds i16, ptr %3, i64 27
  br label %285

285:                                              ; preds = %329, %282
  %286 = phi i32 [ %330, %329 ], [ 13, %282 ]
  %287 = phi ptr [ %332, %329 ], [ %284, %282 ]
  %288 = phi ptr [ %331, %329 ], [ %283, %282 ]
  %289 = load i16, ptr %288, align 2, !tbaa !12
  br label %290

290:                                              ; preds = %321, %285
  %291 = phi i64 [ 8, %285 ], [ %328, %321 ]
  %292 = phi i64 [ 7, %285 ], [ %326, %321 ]
  %293 = phi i16 [ %289, %285 ], [ %311, %321 ]
  %294 = getelementptr inbounds i16, ptr %5, i64 %292
  %295 = load i16, ptr %294, align 2, !tbaa !12
  %296 = getelementptr inbounds i16, ptr %70, i64 %292
  %297 = load i16, ptr %296, align 2, !tbaa !12
  %298 = icmp eq i16 %295, -32768
  %299 = icmp eq i16 %297, -32768
  %300 = select i1 %298, i1 %299, i1 false
  br i1 %300, label %308, label %301

301:                                              ; preds = %290
  %302 = sext i16 %295 to i64
  %303 = sext i16 %297 to i64
  %304 = mul nsw i64 %303, %302
  %305 = add nsw i64 %304, 16384
  %306 = lshr i64 %305, 15
  %307 = and i64 %306, 65535
  br label %308

308:                                              ; preds = %301, %290
  %309 = phi i64 [ %307, %301 ], [ 32767, %290 ]
  %310 = trunc i64 %309 to i16
  %311 = tail call i16 @llvm.ssub.sat.i16(i16 %293, i16 %310)
  %312 = icmp eq i16 %311, -32768
  %313 = select i1 %298, i1 %312, i1 false
  br i1 %313, label %321, label %314

314:                                              ; preds = %308
  %315 = sext i16 %295 to i64
  %316 = sext i16 %311 to i64
  %317 = mul nsw i64 %316, %315
  %318 = add nsw i64 %317, 16384
  %319 = lshr i64 %318, 15
  %320 = and i64 %319, 65535
  br label %321

321:                                              ; preds = %314, %308
  %322 = phi i64 [ %320, %314 ], [ 32767, %308 ]
  %323 = trunc i64 %322 to i16
  %324 = tail call i16 @llvm.sadd.sat.i16(i16 %323, i16 %297)
  %325 = getelementptr inbounds i16, ptr %70, i64 %291
  store i16 %324, ptr %325, align 2, !tbaa !12
  %326 = add nsw i64 %292, -1
  %327 = icmp eq i64 %292, 0
  %328 = add nsw i64 %291, -1
  br i1 %327, label %329, label %290, !llvm.loop !70

329:                                              ; preds = %321
  %330 = add nsw i32 %286, -1
  %331 = getelementptr inbounds i16, ptr %288, i64 1
  store i16 %311, ptr %70, align 2, !tbaa !12
  %332 = getelementptr inbounds i16, ptr %287, i64 1
  store i16 %311, ptr %287, align 2, !tbaa !12
  %333 = icmp eq i32 %330, 0
  br i1 %333, label %334, label %285, !llvm.loop !71

334:                                              ; preds = %329
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 2 dereferenceable(16) %9, i64 16, i1 false), !tbaa !12
  br label %335

335:                                              ; preds = %369, %334
  %336 = phi i32 [ %371, %369 ], [ 1, %334 ]
  %337 = phi ptr [ %372, %369 ], [ %5, %334 ]
  %338 = load i16, ptr %337, align 2, !tbaa !12
  %339 = icmp slt i16 %338, 0
  br i1 %339, label %340, label %356

340:                                              ; preds = %335
  %341 = icmp eq i16 %338, -32768
  %342 = sub i16 0, %338
  %343 = select i1 %341, i16 32767, i16 %342
  %344 = icmp ult i16 %343, 11059
  br i1 %344, label %345, label %347

345:                                              ; preds = %340
  %346 = mul nsw i16 %343, -2
  br label %369

347:                                              ; preds = %340
  %348 = icmp ult i16 %343, 20070
  br i1 %348, label %349, label %351

349:                                              ; preds = %347
  %350 = sub nuw i16 -11059, %343
  br label %369

351:                                              ; preds = %347
  %352 = icmp ugt i16 %343, 26623
  br i1 %352, label %369, label %353

353:                                              ; preds = %351
  %354 = lshr i16 %343, 2
  %355 = sub nuw i16 -26112, %354
  br label %369

356:                                              ; preds = %335
  %357 = icmp slt i16 %338, 11059
  br i1 %357, label %358, label %360

358:                                              ; preds = %356
  %359 = shl nuw i16 %338, 1
  br label %369

360:                                              ; preds = %356
  %361 = icmp slt i16 %338, 20070
  br i1 %361, label %362, label %364

362:                                              ; preds = %360
  %363 = add nuw i16 %338, 11059
  br label %369

364:                                              ; preds = %360
  %365 = icmp ugt i16 %338, 26623
  br i1 %365, label %369, label %366

366:                                              ; preds = %364
  %367 = lshr i16 %338, 2
  %368 = add nuw i16 %367, 26112
  br label %369

369:                                              ; preds = %366, %364, %362, %358, %353, %351, %349, %345
  %370 = phi i16 [ %346, %345 ], [ %350, %349 ], [ %355, %353 ], [ -32767, %351 ], [ %359, %358 ], [ %363, %362 ], [ %368, %366 ], [ 32767, %364 ]
  store i16 %370, ptr %337, align 2, !tbaa !12
  %371 = add nuw nsw i32 %336, 1
  %372 = getelementptr inbounds i16, ptr %337, i64 1
  %373 = icmp eq i32 %371, 9
  br i1 %373, label %374, label %335, !llvm.loop !65

374:                                              ; preds = %369
  %375 = getelementptr inbounds i16, ptr %2, i64 40
  %376 = getelementptr inbounds i16, ptr %3, i64 40
  br label %377

377:                                              ; preds = %421, %374
  %378 = phi i32 [ %422, %421 ], [ 120, %374 ]
  %379 = phi ptr [ %424, %421 ], [ %376, %374 ]
  %380 = phi ptr [ %423, %421 ], [ %375, %374 ]
  %381 = load i16, ptr %380, align 2, !tbaa !12
  br label %382

382:                                              ; preds = %413, %377
  %383 = phi i64 [ 8, %377 ], [ %420, %413 ]
  %384 = phi i64 [ 7, %377 ], [ %418, %413 ]
  %385 = phi i16 [ %381, %377 ], [ %403, %413 ]
  %386 = getelementptr inbounds i16, ptr %5, i64 %384
  %387 = load i16, ptr %386, align 2, !tbaa !12
  %388 = getelementptr inbounds i16, ptr %70, i64 %384
  %389 = load i16, ptr %388, align 2, !tbaa !12
  %390 = icmp eq i16 %387, -32768
  %391 = icmp eq i16 %389, -32768
  %392 = select i1 %390, i1 %391, i1 false
  br i1 %392, label %400, label %393

393:                                              ; preds = %382
  %394 = sext i16 %387 to i64
  %395 = sext i16 %389 to i64
  %396 = mul nsw i64 %395, %394
  %397 = add nsw i64 %396, 16384
  %398 = lshr i64 %397, 15
  %399 = and i64 %398, 65535
  br label %400

400:                                              ; preds = %393, %382
  %401 = phi i64 [ %399, %393 ], [ 32767, %382 ]
  %402 = trunc i64 %401 to i16
  %403 = tail call i16 @llvm.ssub.sat.i16(i16 %385, i16 %402)
  %404 = icmp eq i16 %403, -32768
  %405 = select i1 %390, i1 %404, i1 false
  br i1 %405, label %413, label %406

406:                                              ; preds = %400
  %407 = sext i16 %387 to i64
  %408 = sext i16 %403 to i64
  %409 = mul nsw i64 %408, %407
  %410 = add nsw i64 %409, 16384
  %411 = lshr i64 %410, 15
  %412 = and i64 %411, 65535
  br label %413

413:                                              ; preds = %406, %400
  %414 = phi i64 [ %412, %406 ], [ 32767, %400 ]
  %415 = trunc i64 %414 to i16
  %416 = tail call i16 @llvm.sadd.sat.i16(i16 %415, i16 %389)
  %417 = getelementptr inbounds i16, ptr %70, i64 %383
  store i16 %416, ptr %417, align 2, !tbaa !12
  %418 = add nsw i64 %384, -1
  %419 = icmp eq i64 %384, 0
  %420 = add nsw i64 %383, -1
  br i1 %419, label %421, label %382, !llvm.loop !70

421:                                              ; preds = %413
  %422 = add nsw i32 %378, -1
  %423 = getelementptr inbounds i16, ptr %380, i64 1
  store i16 %403, ptr %70, align 2, !tbaa !12
  %424 = getelementptr inbounds i16, ptr %379, i64 1
  store i16 %403, ptr %379, align 2, !tbaa !12
  %425 = icmp eq i32 %422, 0
  br i1 %425, label %426, label %377, !llvm.loop !71

426:                                              ; preds = %421
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #26
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @alaw_input(ptr nocapture noundef writeonly %0) #6 {
  br label %2

2:                                                ; preds = %7, %1
  %3 = phi i64 [ 0, %1 ], [ %13, %7 ]
  %4 = load ptr, ptr @in, align 8, !tbaa !16
  %5 = tail call i32 @fgetc(ptr noundef %4)
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %15, label %7

7:                                                ; preds = %2
  %8 = and i32 %5, 255
  %9 = zext nneg i32 %8 to i64
  %10 = getelementptr inbounds [256 x i16], ptr @a2s, i64 0, i64 %9
  %11 = load i16, ptr %10, align 2, !tbaa !12
  %12 = getelementptr inbounds i16, ptr %0, i64 %3
  store i16 %11, ptr %12, align 2, !tbaa !12
  %13 = add nuw nsw i64 %3, 1
  %14 = icmp eq i64 %13, 160
  br i1 %14, label %17, label %2, !llvm.loop !72

15:                                               ; preds = %2
  %16 = trunc i64 %3 to i32
  br label %17

17:                                               ; preds = %15, %7
  %18 = phi i32 [ %16, %15 ], [ 160, %7 ]
  br i1 %6, label %19, label %23

19:                                               ; preds = %17
  %20 = load ptr, ptr @in, align 8, !tbaa !16
  %21 = tail call i32 @ferror(ptr noundef %20) #26
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19, %17
  br label %24

24:                                               ; preds = %23, %19
  %25 = phi i32 [ %18, %23 ], [ -1, %19 ]
  ret i32 %25
}

; Function Attrs: nofree nounwind
declare noundef i32 @fgetc(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare noundef i32 @ferror(ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @alaw_output(ptr nocapture noundef readonly %0) #6 {
  br label %2

2:                                                ; preds = %14, %1
  %3 = phi i32 [ 0, %1 ], [ %15, %14 ]
  %4 = phi ptr [ %0, %1 ], [ %16, %14 ]
  %5 = load i16, ptr %4, align 2, !tbaa !12
  %6 = lshr i16 %5, 4
  %7 = zext nneg i16 %6 to i64
  %8 = getelementptr inbounds [4096 x i8], ptr @s2a, i64 0, i64 %7
  %9 = load i8, ptr %8, align 1, !tbaa !7
  %10 = zext i8 %9 to i32
  %11 = load ptr, ptr @out, align 8, !tbaa !16
  %12 = tail call i32 @fputc(i32 noundef %10, ptr noundef %11)
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = add nuw nsw i32 %3, 1
  %16 = getelementptr inbounds i16, ptr %4, i64 1
  %17 = icmp eq i32 %15, 160
  br i1 %17, label %18, label %2, !llvm.loop !73

18:                                               ; preds = %14, %2
  %19 = phi i32 [ -1, %2 ], [ 0, %14 ]
  ret i32 %19
}

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @audio_init_input() #6 {
  %1 = load ptr, ptr @in, align 8, !tbaa !16
  %2 = tail call i32 @fgetc(ptr noundef %1)
  %3 = icmp eq i32 %2, 46
  br i1 %3, label %4, label %102

4:                                                ; preds = %0
  %5 = load ptr, ptr @in, align 8, !tbaa !16
  %6 = tail call i32 @fgetc(ptr noundef %5)
  %7 = icmp eq i32 %6, 115
  br i1 %7, label %8, label %102

8:                                                ; preds = %4
  %9 = load ptr, ptr @in, align 8, !tbaa !16
  %10 = tail call i32 @fgetc(ptr noundef %9)
  %11 = icmp eq i32 %10, 110
  br i1 %11, label %12, label %102

12:                                               ; preds = %8
  %13 = load ptr, ptr @in, align 8, !tbaa !16
  %14 = tail call i32 @fgetc(ptr noundef %13)
  %15 = icmp eq i32 %14, 100
  br i1 %15, label %16, label %102

16:                                               ; preds = %12
  %17 = load ptr, ptr @in, align 8, !tbaa !16
  %18 = tail call i32 @getc(ptr noundef %17)
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %41, label %20

20:                                               ; preds = %16
  %21 = tail call i32 @getc(ptr noundef %17)
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %41, label %23

23:                                               ; preds = %20
  %24 = tail call i32 @getc(ptr noundef %17)
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %41, label %26

26:                                               ; preds = %23
  %27 = tail call i32 @getc(ptr noundef %17)
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %41, label %29

29:                                               ; preds = %26
  %30 = shl i32 %18, 24
  %31 = shl i32 %21, 16
  %32 = and i32 %31, 16711680
  %33 = or disjoint i32 %32, %30
  %34 = shl i32 %24, 8
  %35 = and i32 %34, 65280
  %36 = or disjoint i32 %35, %33
  %37 = and i32 %27, 255
  %38 = or disjoint i32 %37, %36
  %39 = zext i32 %38 to i64
  %40 = add nsw i64 %39, -16
  br label %41

41:                                               ; preds = %29, %26, %23, %20, %16
  %42 = phi i64 [ undef, %16 ], [ undef, %20 ], [ undef, %23 ], [ undef, %26 ], [ %40, %29 ]
  %43 = phi i1 [ false, %16 ], [ false, %20 ], [ false, %23 ], [ false, %26 ], [ true, %29 ]
  br i1 %43, label %44, label %102

44:                                               ; preds = %41
  %45 = load ptr, ptr @in, align 8, !tbaa !16
  %46 = tail call i32 @getc(ptr noundef %45)
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %68, label %48

48:                                               ; preds = %44
  %49 = tail call i32 @getc(ptr noundef %45)
  %50 = icmp eq i32 %49, -1
  br i1 %50, label %68, label %51

51:                                               ; preds = %48
  %52 = tail call i32 @getc(ptr noundef %45)
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %68, label %54

54:                                               ; preds = %51
  %55 = tail call i32 @getc(ptr noundef %45)
  %56 = icmp eq i32 %55, -1
  br i1 %56, label %68, label %57

57:                                               ; preds = %54
  %58 = shl i32 %46, 24
  %59 = shl i32 %49, 16
  %60 = and i32 %59, 16711680
  %61 = or disjoint i32 %60, %58
  %62 = shl i32 %52, 8
  %63 = and i32 %62, 65280
  %64 = or disjoint i32 %63, %61
  %65 = and i32 %55, 255
  %66 = or disjoint i32 %65, %64
  %67 = zext i32 %66 to i64
  br label %68

68:                                               ; preds = %57, %54, %51, %48, %44
  %69 = phi i64 [ undef, %44 ], [ undef, %48 ], [ undef, %51 ], [ undef, %54 ], [ %67, %57 ]
  %70 = phi i1 [ false, %44 ], [ false, %48 ], [ false, %51 ], [ false, %54 ], [ true, %57 ]
  br i1 %70, label %71, label %102

71:                                               ; preds = %68
  %72 = load ptr, ptr @in, align 8, !tbaa !16
  %73 = tail call i32 @getc(ptr noundef %72)
  %74 = icmp eq i32 %73, -1
  br i1 %74, label %95, label %75

75:                                               ; preds = %71
  %76 = tail call i32 @getc(ptr noundef %72)
  %77 = icmp eq i32 %76, -1
  br i1 %77, label %95, label %78

78:                                               ; preds = %75
  %79 = tail call i32 @getc(ptr noundef %72)
  %80 = icmp eq i32 %79, -1
  br i1 %80, label %95, label %81

81:                                               ; preds = %78
  %82 = tail call i32 @getc(ptr noundef %72)
  %83 = icmp eq i32 %82, -1
  br i1 %83, label %95, label %84

84:                                               ; preds = %81
  %85 = shl i32 %73, 24
  %86 = shl i32 %76, 16
  %87 = and i32 %86, 16711680
  %88 = or disjoint i32 %87, %85
  %89 = shl i32 %79, 8
  %90 = and i32 %89, 65280
  %91 = or disjoint i32 %90, %88
  %92 = and i32 %82, 255
  %93 = or disjoint i32 %92, %91
  %94 = zext i32 %93 to i64
  br label %95

95:                                               ; preds = %84, %81, %78, %75, %71
  %96 = phi i64 [ %69, %71 ], [ %69, %75 ], [ %69, %78 ], [ %69, %81 ], [ %94, %84 ]
  %97 = phi i1 [ false, %71 ], [ false, %75 ], [ false, %78 ], [ false, %81 ], [ true, %84 ]
  br i1 %97, label %98, label %102

98:                                               ; preds = %95
  %99 = load ptr, ptr @in, align 8, !tbaa !16
  %100 = tail call i32 @fseek(ptr noundef %99, i64 noundef %42, i32 noundef 1)
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %109

102:                                              ; preds = %98, %95, %68, %41, %12, %8, %4, %0
  %103 = load ptr, ptr @stderr, align 8, !tbaa !16
  %104 = load ptr, ptr @progname, align 8, !tbaa !16
  %105 = load ptr, ptr @inname, align 8
  %106 = icmp eq ptr %105, null
  %107 = select i1 %106, ptr @.str.1.62, ptr %105
  %108 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %103, ptr noundef nonnull @.str.63, ptr noundef %104, ptr noundef nonnull %107, ptr noundef %104) #27
  br label %118

109:                                              ; preds = %98
  switch i64 %96, label %113 [
    i64 1, label %110
    i64 2, label %111
    i64 3, label %112
  ]

110:                                              ; preds = %109
  store ptr @ulaw_input, ptr @input, align 8, !tbaa !16
  br label %118

111:                                              ; preds = %109
  store ptr @alaw_input, ptr @input, align 8, !tbaa !16
  br label %118

112:                                              ; preds = %109
  store ptr @linear_input, ptr @input, align 8, !tbaa !16
  br label %118

113:                                              ; preds = %109
  %114 = load ptr, ptr @stderr, align 8, !tbaa !16
  %115 = load ptr, ptr @progname, align 8, !tbaa !16
  %116 = load ptr, ptr @inname, align 8, !tbaa !16
  %117 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %114, ptr noundef nonnull @.str.2.64, ptr noundef %115, i64 noundef %96, ptr noundef %116) #27
  store ptr @ulaw_input, ptr @input, align 8, !tbaa !16
  br label %118

118:                                              ; preds = %113, %112, %111, %110, %102
  %119 = phi i32 [ -1, %102 ], [ 0, %113 ], [ 0, %112 ], [ 0, %111 ], [ 0, %110 ]
  ret i32 %119
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @audio_init_output() #6 {
  %1 = load ptr, ptr @out, align 8, !tbaa !16
  %2 = tail call i32 @fputs(ptr noundef nonnull @.str.3.65, ptr noundef %1)
  %3 = icmp eq i32 %2, -1
  br i1 %3, label %69, label %4

4:                                                ; preds = %0
  %5 = load ptr, ptr @out, align 8, !tbaa !16
  %6 = tail call i32 @putc(i32 noundef 0, ptr noundef %5)
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %69, label %8

8:                                                ; preds = %4
  %9 = tail call i32 @putc(i32 noundef 0, ptr noundef %5)
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %69, label %11

11:                                               ; preds = %8
  %12 = tail call i32 @putc(i32 noundef 0, ptr noundef %5)
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %69, label %14

14:                                               ; preds = %11
  %15 = tail call i32 @putc(i32 noundef 32, ptr noundef %5)
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %69, label %17

17:                                               ; preds = %14
  %18 = load ptr, ptr @out, align 8, !tbaa !16
  %19 = tail call i32 @putc(i32 noundef -1, ptr noundef %18)
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %69, label %21

21:                                               ; preds = %17
  %22 = tail call i32 @putc(i32 noundef -1, ptr noundef %18)
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %69, label %24

24:                                               ; preds = %21
  %25 = tail call i32 @putc(i32 noundef -1, ptr noundef %18)
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %69, label %27

27:                                               ; preds = %24
  %28 = tail call i32 @putc(i32 noundef -1, ptr noundef %18)
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %69, label %30

30:                                               ; preds = %27
  %31 = load ptr, ptr @out, align 8, !tbaa !16
  %32 = tail call i32 @putc(i32 noundef 0, ptr noundef %31)
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %69, label %34

34:                                               ; preds = %30
  %35 = tail call i32 @putc(i32 noundef 0, ptr noundef %31)
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %69, label %37

37:                                               ; preds = %34
  %38 = tail call i32 @putc(i32 noundef 0, ptr noundef %31)
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %69, label %40

40:                                               ; preds = %37
  %41 = tail call i32 @putc(i32 noundef 1, ptr noundef %31)
  %42 = icmp eq i32 %41, -1
  br i1 %42, label %69, label %43

43:                                               ; preds = %40
  %44 = load ptr, ptr @out, align 8, !tbaa !16
  %45 = tail call i32 @putc(i32 noundef 0, ptr noundef %44)
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %69, label %47

47:                                               ; preds = %43
  %48 = tail call i32 @putc(i32 noundef 0, ptr noundef %44)
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %69, label %50

50:                                               ; preds = %47
  %51 = tail call i32 @putc(i32 noundef 31, ptr noundef %44)
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %69, label %53

53:                                               ; preds = %50
  %54 = tail call i32 @putc(i32 noundef 64, ptr noundef %44)
  %55 = icmp eq i32 %54, -1
  br i1 %55, label %69, label %56

56:                                               ; preds = %53
  %57 = load ptr, ptr @out, align 8, !tbaa !16
  %58 = tail call fastcc i32 @put_u32(ptr noundef %57, i64 noundef 1), !range !74
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %56
  %61 = load ptr, ptr @out, align 8, !tbaa !16
  %62 = tail call fastcc i32 @put_u32(ptr noundef %61, i64 noundef 0), !range !74
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %60
  %65 = load ptr, ptr @out, align 8, !tbaa !16
  %66 = tail call fastcc i32 @put_u32(ptr noundef %65, i64 noundef 0), !range !74
  %67 = icmp ne i32 %66, 0
  %68 = sext i1 %67 to i32
  br label %69

69:                                               ; preds = %64, %60, %56, %53, %50, %47, %43, %40, %37, %34, %30, %27, %24, %21, %17, %14, %11, %8, %4, %0
  %70 = phi i32 [ -1, %60 ], [ -1, %56 ], [ -1, %53 ], [ -1, %40 ], [ -1, %27 ], [ -1, %14 ], [ -1, %0 ], [ %68, %64 ], [ -1, %4 ], [ -1, %8 ], [ -1, %11 ], [ -1, %17 ], [ -1, %21 ], [ -1, %24 ], [ -1, %30 ], [ -1, %34 ], [ -1, %37 ], [ -1, %43 ], [ -1, %47 ], [ -1, %50 ]
  ret i32 %70
}

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind uwtable
define internal fastcc noundef i32 @put_u32(ptr nocapture noundef %0, i64 noundef %1) unnamed_addr #6 {
  %3 = trunc i64 %1 to i32
  %4 = ashr i32 %3, 24
  %5 = tail call i32 @putc(i32 noundef %4, ptr noundef %0)
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %23, label %7

7:                                                ; preds = %2
  %8 = shl i32 %3, 8
  %9 = ashr i32 %8, 24
  %10 = tail call i32 @putc(i32 noundef %9, ptr noundef %0)
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %23, label %12

12:                                               ; preds = %7
  %13 = shl i32 %3, 16
  %14 = ashr i32 %13, 24
  %15 = tail call i32 @putc(i32 noundef %14, ptr noundef %0)
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %23, label %17

17:                                               ; preds = %12
  %18 = shl i32 %3, 24
  %19 = ashr exact i32 %18, 24
  %20 = tail call i32 @putc(i32 noundef %19, ptr noundef %0)
  %21 = icmp eq i32 %20, -1
  %22 = sext i1 %21 to i32
  br label %23

23:                                               ; preds = %17, %12, %7, %2
  %24 = phi i32 [ -1, %12 ], [ -1, %7 ], [ -1, %2 ], [ %22, %17 ]
  ret i32 %24
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @generic_init() #0 {
  ret i32 0
}

; Function Attrs: noreturn nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #16 {
  %3 = load ptr, ptr %1, align 8, !tbaa !16
  %4 = icmp eq ptr %3, null
  %5 = select i1 %4, ptr @.str.14.88, ptr %3
  %6 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %5, i32 noundef 47) #29
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds i8, ptr %6, i64 1
  %10 = load i8, ptr %9, align 1, !tbaa !7
  %11 = icmp eq i8 %10, 0
  %12 = select i1 %11, ptr %5, ptr %9
  br label %13

13:                                               ; preds = %8, %2
  %14 = phi ptr [ %5, %2 ], [ %12, %8 ]
  store ptr %14, ptr @progname, align 8, !tbaa !16
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(3) @.str.15, i64 noundef 2) #29
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i32 1, ptr @f_decode, align 4, !tbaa !29
  br label %18

18:                                               ; preds = %17, %13
  %19 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %14) #29
  %20 = trunc i64 %19 to i32
  %21 = icmp sgt i32 %20, 2
  br i1 %21, label %22, label %29

22:                                               ; preds = %18
  %23 = and i64 %19, 4294967295
  %24 = getelementptr inbounds i8, ptr %14, i64 %23
  %25 = getelementptr inbounds i8, ptr %24, i64 -3
  %26 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %25, ptr noundef nonnull dereferenceable(4) @.str.16) #29
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i32 1, ptr @f_decode, align 4, !tbaa !29
  store i32 1, ptr @f_cat, align 4, !tbaa !29
  br label %29

29:                                               ; preds = %28, %22, %18
  br label %30

30:                                               ; preds = %78, %29
  %31 = tail call i32 (i32, ptr, ptr, ...) @getopt(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.12.89) #26
  switch i32 %31, label %81 [
    i32 -1, label %85
    i32 100, label %32
    i32 102, label %33
    i32 99, label %34
    i32 112, label %35
    i32 70, label %36
    i32 86, label %37
    i32 117, label %38
    i32 108, label %48
    i32 97, label %58
    i32 115, label %68
    i32 118, label %79
    i32 104, label %80
  ]

32:                                               ; preds = %30
  store i32 1, ptr @f_decode, align 4, !tbaa !29
  br label %78

33:                                               ; preds = %30
  store i32 1, ptr @f_force, align 4, !tbaa !29
  br label %78

34:                                               ; preds = %30
  store i32 1, ptr @f_cat, align 4, !tbaa !29
  br label %78

35:                                               ; preds = %30
  store i32 1, ptr @f_precious, align 4, !tbaa !29
  br label %78

36:                                               ; preds = %30
  store i32 1, ptr @f_fast, align 4, !tbaa !29
  br label %78

37:                                               ; preds = %30
  store i32 1, ptr @f_verbose, align 4, !tbaa !29
  br label %78

38:                                               ; preds = %30
  %39 = load ptr, ptr @f_format, align 8, !tbaa !16
  %40 = icmp eq ptr %39, null
  %41 = icmp eq ptr %39, @f_ulaw
  %42 = or i1 %40, %41
  br i1 %42, label %47, label %43

43:                                               ; preds = %38
  %44 = load ptr, ptr @stderr, align 8, !tbaa !16
  %45 = load ptr, ptr @progname, align 8, !tbaa !16
  %46 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %44, ptr noundef nonnull @.str.17, ptr noundef %45, ptr noundef %45) #27
  tail call void @exit(i32 noundef 1) #25
  unreachable

47:                                               ; preds = %38
  store ptr @f_ulaw, ptr @f_format, align 8, !tbaa !16
  br label %78

48:                                               ; preds = %30
  %49 = load ptr, ptr @f_format, align 8, !tbaa !16
  %50 = icmp eq ptr %49, null
  %51 = icmp eq ptr %49, @f_linear
  %52 = or i1 %50, %51
  br i1 %52, label %57, label %53

53:                                               ; preds = %48
  %54 = load ptr, ptr @stderr, align 8, !tbaa !16
  %55 = load ptr, ptr @progname, align 8, !tbaa !16
  %56 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %54, ptr noundef nonnull @.str.17, ptr noundef %55, ptr noundef %55) #27
  tail call void @exit(i32 noundef 1) #25
  unreachable

57:                                               ; preds = %48
  store ptr @f_linear, ptr @f_format, align 8, !tbaa !16
  br label %78

58:                                               ; preds = %30
  %59 = load ptr, ptr @f_format, align 8, !tbaa !16
  %60 = icmp eq ptr %59, null
  %61 = icmp eq ptr %59, @f_alaw
  %62 = or i1 %60, %61
  br i1 %62, label %67, label %63

63:                                               ; preds = %58
  %64 = load ptr, ptr @stderr, align 8, !tbaa !16
  %65 = load ptr, ptr @progname, align 8, !tbaa !16
  %66 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %64, ptr noundef nonnull @.str.17, ptr noundef %65, ptr noundef %65) #27
  tail call void @exit(i32 noundef 1) #25
  unreachable

67:                                               ; preds = %58
  store ptr @f_alaw, ptr @f_format, align 8, !tbaa !16
  br label %78

68:                                               ; preds = %30
  %69 = load ptr, ptr @f_format, align 8, !tbaa !16
  %70 = icmp eq ptr %69, null
  %71 = icmp eq ptr %69, @f_audio
  %72 = or i1 %70, %71
  br i1 %72, label %77, label %73

73:                                               ; preds = %68
  %74 = load ptr, ptr @stderr, align 8, !tbaa !16
  %75 = load ptr, ptr @progname, align 8, !tbaa !16
  %76 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %74, ptr noundef nonnull @.str.17, ptr noundef %75, ptr noundef %75) #27
  tail call void @exit(i32 noundef 1) #25
  unreachable

77:                                               ; preds = %68
  store ptr @f_audio, ptr @f_format, align 8, !tbaa !16
  br label %78

78:                                               ; preds = %77, %67, %57, %47, %37, %36, %35, %34, %33, %32
  br label %30, !llvm.loop !75

79:                                               ; preds = %30
  tail call fastcc void @version()
  tail call void @exit(i32 noundef 0) #25
  unreachable

80:                                               ; preds = %30
  tail call fastcc void @help()
  tail call void @exit(i32 noundef 0) #25
  unreachable

81:                                               ; preds = %30
  %82 = load ptr, ptr @stderr, align 8, !tbaa !16
  %83 = load ptr, ptr @progname, align 8, !tbaa !16
  %84 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %82, ptr noundef nonnull @.str.13, ptr noundef %83) #27
  tail call void @exit(i32 noundef 1) #25
  unreachable

85:                                               ; preds = %30
  %86 = load i32, ptr @f_cat, align 4, !tbaa !29
  %87 = load i32, ptr @f_precious, align 4, !tbaa !29
  %88 = or i32 %87, %86
  store i32 %88, ptr @f_precious, align 4, !tbaa !29
  %89 = load i32, ptr @optind, align 4, !tbaa !29
  %90 = sub nsw i32 %0, %89
  %91 = tail call ptr @__sysv_signal(i32 noundef 1, ptr noundef nonnull @onintr) #26
  %92 = tail call ptr @__sysv_signal(i32 noundef 2, ptr noundef nonnull @onintr) #26
  %93 = tail call ptr @__sysv_signal(i32 noundef 13, ptr noundef nonnull @onintr) #26
  %94 = tail call ptr @__sysv_signal(i32 noundef 15, ptr noundef nonnull @onintr) #26
  %95 = tail call ptr @__sysv_signal(i32 noundef 25, ptr noundef nonnull @onintr) #26
  %96 = icmp slt i32 %90, 1
  br i1 %96, label %100, label %97

97:                                               ; preds = %85
  %98 = sext i32 %89 to i64
  %99 = getelementptr inbounds ptr, ptr %1, i64 %98
  br label %101

100:                                              ; preds = %85
  tail call fastcc void @process(ptr noundef null)
  br label %108

101:                                              ; preds = %101, %97
  %102 = phi i32 [ %104, %101 ], [ %90, %97 ]
  %103 = phi ptr [ %105, %101 ], [ %99, %97 ]
  %104 = add nsw i32 %102, -1
  %105 = getelementptr inbounds ptr, ptr %103, i64 1
  %106 = load ptr, ptr %103, align 8, !tbaa !16
  tail call fastcc void @process(ptr noundef %106)
  %107 = icmp eq i32 %104, 0
  br i1 %107, label %108, label %101, !llvm.loop !76

108:                                              ; preds = %101, %100
  tail call void @exit(i32 noundef 0) #25
  unreachable
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #17

declare i32 @getopt(...) local_unnamed_addr #18

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @version() unnamed_addr #6 {
  %1 = load ptr, ptr @progname, align 8, !tbaa !16
  %2 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, ptr noundef %1, ptr noundef nonnull @.str.19)
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @help() unnamed_addr #6 {
  %1 = load ptr, ptr @progname, align 8, !tbaa !16
  %2 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, ptr noundef %1)
  %3 = tail call i32 @putchar(i32 10)
  %4 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %5 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.61)
  %6 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.62)
  %7 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.63)
  %8 = tail call i32 @putchar(i32 10)
  %9 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.64)
  %10 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.65)
  %11 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.66)
  %12 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.67)
  %13 = tail call i32 @putchar(i32 10)
  %14 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.68)
  %15 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.69)
  %16 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.70)
  %17 = tail call i32 @putchar(i32 10)
  ret void
}

; Function Attrs: noreturn nounwind uwtable
define internal void @onintr() #16 {
  %1 = load ptr, ptr @outname, align 8, !tbaa !16
  store ptr null, ptr @outname, align 8, !tbaa !16
  %2 = icmp eq ptr %1, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = tail call i32 @unlink(ptr noundef nonnull %1) #26
  br label %5

5:                                                ; preds = %3, %0
  tail call void @exit(i32 noundef 1) #25
  unreachable
}

; Function Attrs: nounwind
declare ptr @__sysv_signal(i32 noundef, ptr noundef) local_unnamed_addr #19

; Function Attrs: nounwind uwtable
define internal fastcc void @process(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca [2 x i64], align 16
  store ptr null, ptr @out, align 8, !tbaa !16
  store ptr null, ptr @in, align 8, !tbaa !16
  store ptr null, ptr @outname, align 8, !tbaa !16
  store ptr null, ptr @inname, align 8, !tbaa !16
  %3 = load ptr, ptr @f_format, align 8, !tbaa !16
  store i64 0, ptr getelementptr inbounds (%struct.stat, ptr @instat, i64 0, i32 2), align 8, !tbaa !77
  %4 = icmp eq ptr %0, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  store ptr null, ptr @inname, align 8, !tbaa !16
  %6 = load ptr, ptr @stdin, align 8, !tbaa !16
  store ptr %6, ptr @in, align 8, !tbaa !16
  br label %123

7:                                                ; preds = %1
  %8 = load i32, ptr @f_decode, align 4, !tbaa !29
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = tail call fastcc noundef ptr @normalname(ptr noundef nonnull %0, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.45)
  br label %40

12:                                               ; preds = %7
  %13 = load i32, ptr @f_cat, align 4, !tbaa !29
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %29

15:                                               ; preds = %12
  %16 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #29
  %17 = icmp ugt i64 %16, 4
  br i1 %17, label %18, label %29

18:                                               ; preds = %15
  %19 = getelementptr i8, ptr %0, i64 %16
  %20 = getelementptr i8, ptr %19, i64 -4
  %21 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %20, ptr noundef nonnull dereferenceable(4) @.str.41, i64 4)
  %22 = icmp ne i32 %21, 0
  %23 = icmp eq ptr %20, null
  %24 = or i1 %23, %22
  br i1 %24, label %29, label %25

25:                                               ; preds = %18
  %26 = load ptr, ptr @stderr, align 8, !tbaa !16
  %27 = load ptr, ptr @progname, align 8, !tbaa !16
  %28 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %26, ptr noundef nonnull @.str.42, ptr noundef %27, ptr noundef nonnull %0, ptr noundef nonnull @.str.41) #27
  br label %319

29:                                               ; preds = %18, %15, %12
  %30 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #29
  %31 = add i64 %30, 1
  %32 = tail call noalias ptr @malloc(i64 noundef %31) #28
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load ptr, ptr @stderr, align 8, !tbaa !16
  %36 = load ptr, ptr @progname, align 8, !tbaa !16
  %37 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %35, ptr noundef nonnull @.str.46, ptr noundef %36, i64 noundef %31) #27
  tail call void @onintr()
  unreachable

38:                                               ; preds = %29
  %39 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %32, ptr noundef nonnull dereferenceable(1) %0) #26
  br label %40

40:                                               ; preds = %38, %10
  %41 = phi ptr [ %32, %38 ], [ %11, %10 ]
  store ptr %41, ptr @inname, align 8, !tbaa !16
  %42 = tail call noalias ptr @fopen(ptr noundef %41, ptr noundef nonnull @.str.43)
  store ptr %42, ptr @in, align 8, !tbaa !16
  %43 = icmp eq ptr %42, null
  %44 = load ptr, ptr @inname, align 8, !tbaa !16
  br i1 %43, label %45, label %50

45:                                               ; preds = %40
  tail call void @perror(ptr noundef %44) #27
  %46 = load ptr, ptr @stderr, align 8, !tbaa !16
  %47 = load ptr, ptr @progname, align 8, !tbaa !16
  %48 = load ptr, ptr @inname, align 8, !tbaa !16
  %49 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %46, ptr noundef nonnull @.str.44, ptr noundef %47, ptr noundef %48) #27
  br label %319

50:                                               ; preds = %40
  %51 = tail call i32 (ptr, ...) @fileno(ptr noundef nonnull %42) #26
  %52 = tail call i32 @fstat(i32 noundef %51, ptr noundef nonnull @instat) #26
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  tail call void @perror(ptr noundef %44) #27
  %55 = load ptr, ptr @stderr, align 8, !tbaa !16
  %56 = load ptr, ptr @progname, align 8, !tbaa !16
  %57 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %55, ptr noundef nonnull @.str.47, ptr noundef %56, ptr noundef %44) #27
  br label %319

58:                                               ; preds = %50
  %59 = load i32, ptr getelementptr inbounds (%struct.stat, ptr @instat, i64 0, i32 3), align 8, !tbaa !79
  %60 = and i32 %59, 61440
  %61 = icmp eq i32 %60, 32768
  br i1 %61, label %66, label %62

62:                                               ; preds = %58
  %63 = load ptr, ptr @stderr, align 8, !tbaa !16
  %64 = load ptr, ptr @progname, align 8, !tbaa !16
  %65 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %63, ptr noundef nonnull @.str.48, ptr noundef %64, ptr noundef %44) #27
  br label %319

66:                                               ; preds = %58
  %67 = load i64, ptr getelementptr inbounds (%struct.stat, ptr @instat, i64 0, i32 2), align 8, !tbaa !77
  %68 = icmp ult i64 %67, 2
  %69 = load i32, ptr @f_cat, align 4
  %70 = icmp ne i32 %69, 0
  %71 = select i1 %68, i1 true, i1 %70
  %72 = load i32, ptr @f_precious, align 4
  %73 = icmp ne i32 %72, 0
  %74 = select i1 %71, i1 true, i1 %73
  br i1 %74, label %83, label %75

75:                                               ; preds = %66
  %76 = load ptr, ptr @stderr, align 8, !tbaa !16
  %77 = load ptr, ptr @progname, align 8, !tbaa !16
  %78 = add i64 %67, -1
  %79 = icmp ult i64 %67, 3
  %80 = zext i1 %79 to i64
  %81 = getelementptr inbounds i8, ptr @.str.50, i64 %80
  %82 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %76, ptr noundef nonnull @.str.49, ptr noundef %77, ptr noundef %44, i64 noundef %78, ptr noundef nonnull %81) #27
  br label %319

83:                                               ; preds = %66
  %84 = icmp eq ptr %3, null
  br i1 %84, label %85, label %123

85:                                               ; preds = %83
  %86 = load ptr, ptr @inname, align 8, !tbaa !16
  %87 = icmp eq ptr %86, null
  br i1 %87, label %123, label %88

88:                                               ; preds = %85
  %89 = tail call fastcc noundef ptr @normalname(ptr noundef nonnull %86, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.41)
  %90 = load ptr, ptr @alldescs, align 16, !tbaa !16
  %91 = icmp eq ptr %90, null
  br i1 %91, label %122, label %92

92:                                               ; preds = %118, %88
  %93 = phi ptr [ %120, %118 ], [ %90, %88 ]
  %94 = phi ptr [ %119, %118 ], [ @alldescs, %88 ]
  %95 = getelementptr inbounds %struct.fmtdesc, ptr %93, i64 0, i32 2
  %96 = load ptr, ptr %95, align 8, !tbaa !80
  %97 = icmp eq ptr %96, null
  br i1 %97, label %118, label %98

98:                                               ; preds = %92
  %99 = load i8, ptr %96, align 1, !tbaa !7
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %118, label %101

101:                                              ; preds = %98
  %102 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %89) #29
  %103 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %96) #29
  %104 = icmp ne i64 %103, 0
  %105 = icmp ugt i64 %102, %103
  %106 = select i1 %104, i1 %105, i1 false
  br i1 %106, label %107, label %113

107:                                              ; preds = %101
  %108 = sub i64 %102, %103
  %109 = getelementptr inbounds i8, ptr %89, i64 %108
  %110 = tail call i32 @bcmp(ptr %109, ptr nonnull %96, i64 %103)
  %111 = icmp eq i32 %110, 0
  %112 = select i1 %111, ptr %109, ptr null
  br label %113

113:                                              ; preds = %107, %101
  %114 = phi ptr [ %112, %107 ], [ null, %101 ]
  %115 = icmp eq ptr %114, null
  br i1 %115, label %118, label %116

116:                                              ; preds = %113
  tail call void @free(ptr noundef %89) #26
  %117 = load ptr, ptr %94, align 8, !tbaa !16
  br label %123

118:                                              ; preds = %113, %98, %92
  %119 = getelementptr inbounds ptr, ptr %94, i64 1
  %120 = load ptr, ptr %119, align 8, !tbaa !16
  %121 = icmp eq ptr %120, null
  br i1 %121, label %122, label %92, !llvm.loop !82

122:                                              ; preds = %118, %88
  tail call void @free(ptr noundef %89) #26
  br label %123

123:                                              ; preds = %122, %116, %85, %83, %5
  %124 = phi ptr [ %3, %83 ], [ %3, %5 ], [ %117, %116 ], [ null, %122 ], [ null, %85 ]
  %125 = icmp eq ptr %124, null
  %126 = select i1 %125, ptr @f_ulaw, ptr %124
  %127 = getelementptr inbounds %struct.fmtdesc, ptr %126, i64 0, i32 6
  %128 = load ptr, ptr %127, align 8, !tbaa !83
  store ptr %128, ptr @output, align 8, !tbaa !16
  %129 = getelementptr inbounds %struct.fmtdesc, ptr %126, i64 0, i32 5
  %130 = load ptr, ptr %129, align 8, !tbaa !84
  store ptr %130, ptr @input, align 8, !tbaa !16
  %131 = getelementptr inbounds %struct.fmtdesc, ptr %126, i64 0, i32 3
  %132 = load ptr, ptr %131, align 8, !tbaa !85
  store ptr %132, ptr @init_input, align 8, !tbaa !16
  %133 = getelementptr inbounds %struct.fmtdesc, ptr %126, i64 0, i32 4
  %134 = load ptr, ptr %133, align 8, !tbaa !86
  store ptr %134, ptr @init_output, align 8, !tbaa !16
  %135 = load i32, ptr @f_cat, align 4
  %136 = icmp ne i32 %135, 0
  %137 = select i1 %4, i1 true, i1 %136
  br i1 %137, label %138, label %140

138:                                              ; preds = %123
  %139 = load ptr, ptr @stdout, align 8, !tbaa !16
  store ptr %139, ptr @out, align 8, !tbaa !16
  br label %191

140:                                              ; preds = %123
  %141 = load i32, ptr @f_decode, align 4, !tbaa !29
  %142 = icmp eq i32 %141, 0
  %143 = select i1 %142, ptr @codename, ptr @plainname
  %144 = tail call ptr %143(ptr noundef %0) #26, !callees !87
  %145 = icmp eq ptr %144, null
  br i1 %145, label %319, label %146

146:                                              ; preds = %140
  %147 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %144, i32 noundef 193, i32 noundef 438) #26
  %148 = icmp sgt i32 %147, -1
  br i1 %148, label %182, label %149

149:                                              ; preds = %146
  %150 = tail call ptr @__errno_location() #30
  %151 = load i32, ptr %150, align 4, !tbaa !29
  %152 = icmp eq i32 %151, 17
  br i1 %152, label %153, label %180

153:                                              ; preds = %149
  %154 = load i32, ptr @f_force, align 4, !tbaa !29
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %178

156:                                              ; preds = %153
  %157 = load ptr, ptr @stderr, align 8, !tbaa !16
  %158 = tail call i32 (ptr, ...) @fileno(ptr noundef %157) #26
  %159 = tail call i32 @isatty(i32 noundef %158) #26
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %319, label %161

161:                                              ; preds = %156
  %162 = load ptr, ptr @stderr, align 8, !tbaa !16
  %163 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %162, ptr noundef nonnull @.str.54, ptr noundef nonnull %144, ptr noundef nonnull %144) #27
  %164 = load ptr, ptr @stderr, align 8, !tbaa !16
  %165 = tail call i32 @fflush(ptr noundef %164)
  %166 = load ptr, ptr @stdin, align 8, !tbaa !16
  %167 = tail call i32 @getc(ptr noundef %166)
  br label %168

168:                                              ; preds = %170, %161
  %169 = phi i32 [ %167, %161 ], [ %172, %170 ]
  switch i32 %169, label %170 [
    i32 -1, label %173
    i32 10, label %173
  ]

170:                                              ; preds = %168
  %171 = load ptr, ptr @stdin, align 8, !tbaa !16
  %172 = tail call i32 @getc(ptr noundef %171)
  br label %168, !llvm.loop !88

173:                                              ; preds = %168, %168
  %174 = icmp eq i32 %167, 121
  br i1 %174, label %178, label %175

175:                                              ; preds = %173
  %176 = load ptr, ptr @stderr, align 8, !tbaa !16
  %177 = tail call i64 @fwrite(ptr nonnull @.str.55, i64 17, i64 1, ptr %176) #27
  br label %319

178:                                              ; preds = %173, %153
  %179 = tail call noalias ptr @fopen(ptr noundef nonnull %144, ptr noundef nonnull @.str.51)
  br label %180

180:                                              ; preds = %178, %149
  %181 = phi ptr [ %179, %178 ], [ null, %149 ]
  store ptr %181, ptr @out, align 8, !tbaa !16
  br label %182

182:                                              ; preds = %180, %146
  %183 = load ptr, ptr @out, align 8, !tbaa !16
  %184 = icmp eq ptr %183, null
  br i1 %184, label %185, label %191

185:                                              ; preds = %182
  tail call void @perror(ptr noundef nonnull %144) #27
  %186 = load ptr, ptr @stderr, align 8, !tbaa !16
  %187 = load ptr, ptr @progname, align 8, !tbaa !16
  %188 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %186, ptr noundef nonnull @.str.52, ptr noundef %187, ptr noundef nonnull %144) #27
  br i1 %148, label %189, label %319

189:                                              ; preds = %185
  %190 = tail call i32 @close(i32 noundef %147) #26
  br label %319

191:                                              ; preds = %182, %138
  %192 = phi ptr [ null, %138 ], [ %144, %182 ]
  store ptr %192, ptr @outname, align 8, !tbaa !16
  %193 = load i32, ptr @f_decode, align 4, !tbaa !29
  %194 = icmp eq i32 %193, 0
  %195 = load ptr, ptr @init_output, align 8
  %196 = load ptr, ptr @init_input, align 8
  %197 = select i1 %194, ptr %196, ptr %195
  %198 = tail call i32 %197() #26
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %217, label %200

200:                                              ; preds = %191
  %201 = load ptr, ptr @stderr, align 8, !tbaa !16
  %202 = load ptr, ptr @progname, align 8, !tbaa !16
  %203 = load i32, ptr @f_decode, align 4, !tbaa !29
  %204 = icmp eq i32 %203, 0
  %205 = select i1 %204, ptr @.str.35, ptr @.str.34
  br i1 %204, label %210, label %206

206:                                              ; preds = %200
  %207 = load ptr, ptr @outname, align 8
  %208 = icmp eq ptr %207, null
  %209 = select i1 %208, ptr @.str.36, ptr %207
  br label %214

210:                                              ; preds = %200
  %211 = load ptr, ptr @inname, align 8
  %212 = icmp eq ptr %211, null
  %213 = select i1 %212, ptr @.str.37, ptr %211
  br label %214

214:                                              ; preds = %210, %206
  %215 = phi ptr [ %209, %206 ], [ %213, %210 ]
  %216 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %201, ptr noundef nonnull @.str.33.90, ptr noundef %202, ptr noundef nonnull %205, ptr noundef nonnull %215) #27
  br label %319

217:                                              ; preds = %191
  %218 = load i32, ptr @f_decode, align 4, !tbaa !29
  %219 = icmp eq i32 %218, 0
  %220 = select i1 %219, ptr @process_encode, ptr @process_decode
  %221 = tail call i32 %220() #26, !callees !89
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %223, label %319

223:                                              ; preds = %217
  %224 = load ptr, ptr @out, align 8, !tbaa !16
  %225 = tail call i32 @fflush(ptr noundef %224)
  %226 = icmp slt i32 %225, 0
  br i1 %226, label %231, label %227

227:                                              ; preds = %223
  %228 = load ptr, ptr @out, align 8, !tbaa !16
  %229 = tail call i32 @ferror(ptr noundef %228) #26
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %241, label %231

231:                                              ; preds = %227, %223
  %232 = load ptr, ptr @outname, align 8
  %233 = icmp eq ptr %232, null
  %234 = select i1 %233, ptr @.str.36, ptr %232
  tail call void @perror(ptr noundef nonnull %234) #27
  %235 = load ptr, ptr @stderr, align 8, !tbaa !16
  %236 = load ptr, ptr @progname, align 8, !tbaa !16
  %237 = load ptr, ptr @outname, align 8
  %238 = icmp eq ptr %237, null
  %239 = select i1 %238, ptr @.str.36, ptr %237
  %240 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %235, ptr noundef nonnull @.str.38, ptr noundef %236, ptr noundef nonnull %239) #27
  br label %319

241:                                              ; preds = %227
  %242 = load ptr, ptr @stdout, align 8, !tbaa !16
  %243 = icmp eq ptr %228, %242
  br i1 %243, label %294, label %244

244:                                              ; preds = %241
  %245 = load i64, ptr getelementptr inbounds (%struct.stat, ptr @instat, i64 0, i32 2), align 8, !tbaa !77
  %246 = icmp ne i64 %245, 0
  %247 = load ptr, ptr @outname, align 8
  %248 = icmp ne ptr %247, null
  %249 = select i1 %246, i1 %248, i1 false
  br i1 %249, label %250, label %255

250:                                              ; preds = %244
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #26
  %251 = load i64, ptr getelementptr inbounds (%struct.stat, ptr @instat, i64 0, i32 11), align 8, !tbaa !90
  store i64 %251, ptr %2, align 16, !tbaa !19
  %252 = load i64, ptr getelementptr inbounds (%struct.stat, ptr @instat, i64 0, i32 13), align 8, !tbaa !91
  %253 = getelementptr inbounds [2 x i64], ptr %2, i64 0, i64 1
  store i64 %252, ptr %253, align 8, !tbaa !19
  %254 = call i32 @utime(ptr noundef nonnull %247, ptr noundef nonnull %2) #26
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #26
  br label %255

255:                                              ; preds = %250, %244
  %256 = load i64, ptr getelementptr inbounds (%struct.stat, ptr @instat, i64 0, i32 2), align 8, !tbaa !77
  %257 = icmp eq i64 %256, 0
  br i1 %257, label %271, label %258

258:                                              ; preds = %255
  %259 = load ptr, ptr @out, align 8, !tbaa !16
  %260 = tail call i32 (ptr, ...) @fileno(ptr noundef %259) #26
  %261 = load i32, ptr getelementptr inbounds (%struct.stat, ptr @instat, i64 0, i32 3), align 8, !tbaa !79
  %262 = and i32 %261, 4095
  %263 = tail call i32 (i32, i32, ...) @fchmod(i32 noundef %260, i32 noundef %262) #26
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %271, label %265

265:                                              ; preds = %258
  %266 = load ptr, ptr @outname, align 8, !tbaa !16
  tail call void @perror(ptr noundef %266) #27
  %267 = load ptr, ptr @stderr, align 8, !tbaa !16
  %268 = load ptr, ptr @progname, align 8, !tbaa !16
  %269 = load ptr, ptr @outname, align 8, !tbaa !16
  %270 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %267, ptr noundef nonnull @.str.60, ptr noundef %268, ptr noundef %269) #27
  br label %271

271:                                              ; preds = %265, %258, %255
  %272 = load i64, ptr getelementptr inbounds (%struct.stat, ptr @instat, i64 0, i32 2), align 8, !tbaa !77
  %273 = icmp eq i64 %272, 0
  br i1 %273, label %280, label %274

274:                                              ; preds = %271
  %275 = load ptr, ptr @out, align 8, !tbaa !16
  %276 = tail call i32 (ptr, ...) @fileno(ptr noundef %275) #26
  %277 = load i32, ptr getelementptr inbounds (%struct.stat, ptr @instat, i64 0, i32 4), align 4, !tbaa !92
  %278 = load i32, ptr getelementptr inbounds (%struct.stat, ptr @instat, i64 0, i32 5), align 8, !tbaa !93
  %279 = tail call i32 (i32, i32, i32, ...) @fchown(i32 noundef %276, i32 noundef %277, i32 noundef %278) #26
  br label %280

280:                                              ; preds = %274, %271
  %281 = load ptr, ptr @out, align 8, !tbaa !16
  %282 = tail call i32 @fclose(ptr noundef %281)
  %283 = icmp slt i32 %282, 0
  %284 = load ptr, ptr @outname, align 8, !tbaa !16
  br i1 %283, label %285, label %290

285:                                              ; preds = %280
  tail call void @perror(ptr noundef %284) #27
  %286 = load ptr, ptr @stderr, align 8, !tbaa !16
  %287 = load ptr, ptr @progname, align 8, !tbaa !16
  %288 = load ptr, ptr @outname, align 8, !tbaa !16
  %289 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %286, ptr noundef nonnull @.str.38, ptr noundef %287, ptr noundef %288) #27
  br label %319

290:                                              ; preds = %280
  %291 = icmp eq ptr %284, %0
  br i1 %291, label %293, label %292

292:                                              ; preds = %290
  tail call void @free(ptr noundef %284) #26
  br label %293

293:                                              ; preds = %292, %290
  store ptr null, ptr @outname, align 8, !tbaa !16
  br label %294

294:                                              ; preds = %293, %241
  store ptr null, ptr @out, align 8, !tbaa !16
  %295 = load ptr, ptr @in, align 8, !tbaa !16
  %296 = load ptr, ptr @stdin, align 8, !tbaa !16
  %297 = icmp eq ptr %295, %296
  br i1 %297, label %359, label %298

298:                                              ; preds = %294
  %299 = tail call i32 @fclose(ptr noundef %295)
  store ptr null, ptr @in, align 8, !tbaa !16
  %300 = load i32, ptr @f_cat, align 4, !tbaa !29
  %301 = icmp ne i32 %300, 0
  %302 = load i32, ptr @f_precious, align 4
  %303 = icmp ne i32 %302, 0
  %304 = select i1 %301, i1 true, i1 %303
  %305 = load ptr, ptr @inname, align 8, !tbaa !16
  br i1 %304, label %315, label %306

306:                                              ; preds = %298
  %307 = tail call i32 @unlink(ptr noundef %305) #26
  %308 = icmp slt i32 %307, 0
  br i1 %308, label %309, label %319

309:                                              ; preds = %306
  %310 = load ptr, ptr @inname, align 8, !tbaa !16
  tail call void @perror(ptr noundef %310) #27
  %311 = load ptr, ptr @stderr, align 8, !tbaa !16
  %312 = load ptr, ptr @progname, align 8, !tbaa !16
  %313 = load ptr, ptr @inname, align 8, !tbaa !16
  %314 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %311, ptr noundef nonnull @.str.39.91, ptr noundef %312, ptr noundef %313) #27
  br label %319

315:                                              ; preds = %298
  %316 = icmp eq ptr %305, %0
  br i1 %316, label %318, label %317

317:                                              ; preds = %315
  tail call void @free(ptr noundef %305) #26
  br label %318

318:                                              ; preds = %317, %315
  store ptr null, ptr @inname, align 8, !tbaa !16
  br label %359

319:                                              ; preds = %309, %306, %285, %231, %217, %214, %189, %185, %175, %156, %140, %75, %62, %54, %45, %25
  %320 = load ptr, ptr @out, align 8, !tbaa !16
  %321 = icmp eq ptr %320, null
  %322 = load ptr, ptr @stdout, align 8
  %323 = icmp eq ptr %320, %322
  %324 = select i1 %321, i1 true, i1 %323
  br i1 %324, label %339, label %325

325:                                              ; preds = %319
  %326 = tail call i32 @fclose(ptr noundef nonnull %320)
  store ptr null, ptr @out, align 8, !tbaa !16
  %327 = load ptr, ptr @outname, align 8, !tbaa !16
  %328 = tail call i32 @unlink(ptr noundef %327) #26
  %329 = icmp slt i32 %328, 0
  br i1 %329, label %330, label %339

330:                                              ; preds = %325
  %331 = tail call ptr @__errno_location() #30
  %332 = load i32, ptr %331, align 4, !tbaa !29
  switch i32 %332, label %333 [
    i32 2, label %339
    i32 4, label %339
  ]

333:                                              ; preds = %330
  %334 = load ptr, ptr @outname, align 8, !tbaa !16
  tail call void @perror(ptr noundef %334) #27
  %335 = load ptr, ptr @stderr, align 8, !tbaa !16
  %336 = load ptr, ptr @progname, align 8, !tbaa !16
  %337 = load ptr, ptr @outname, align 8, !tbaa !16
  %338 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %335, ptr noundef nonnull @.str.40, ptr noundef %336, ptr noundef %337) #27
  br label %339

339:                                              ; preds = %333, %330, %330, %325, %319
  %340 = load ptr, ptr @in, align 8, !tbaa !16
  %341 = icmp eq ptr %340, null
  %342 = load ptr, ptr @stdin, align 8
  %343 = icmp eq ptr %340, %342
  %344 = select i1 %341, i1 true, i1 %343
  br i1 %344, label %347, label %345

345:                                              ; preds = %339
  %346 = tail call i32 @fclose(ptr noundef nonnull %340)
  store ptr null, ptr @in, align 8, !tbaa !16
  br label %347

347:                                              ; preds = %345, %339
  %348 = load ptr, ptr @inname, align 8, !tbaa !16
  %349 = icmp eq ptr %348, null
  %350 = icmp eq ptr %348, %0
  %351 = or i1 %349, %350
  br i1 %351, label %353, label %352

352:                                              ; preds = %347
  tail call void @free(ptr noundef %348) #26
  br label %353

353:                                              ; preds = %352, %347
  %354 = load ptr, ptr @outname, align 8, !tbaa !16
  %355 = icmp eq ptr %354, null
  %356 = icmp eq ptr %354, %0
  %357 = or i1 %355, %356
  br i1 %357, label %359, label %358

358:                                              ; preds = %353
  tail call void @free(ptr noundef %354) #26
  br label %359

359:                                              ; preds = %358, %353, %318, %294
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @normalname(ptr noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #2 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %51, label %5

5:                                                ; preds = %3
  %6 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #29
  %7 = add i64 %6, 1
  %8 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #29
  %9 = add i64 %7, %8
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #29
  %11 = add i64 %9, %10
  %12 = tail call noalias ptr @malloc(i64 noundef %11) #28
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %5
  %15 = load ptr, ptr @stderr, align 8, !tbaa !16
  %16 = load ptr, ptr @progname, align 8, !tbaa !16
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef nonnull @.str.46, ptr noundef %16, i64 noundef %11) #27
  tail call void @onintr()
  unreachable

18:                                               ; preds = %5
  %19 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull dereferenceable(1) %0) #26
  %20 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %12) #29
  %21 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #29
  %22 = icmp ne i64 %21, 0
  %23 = icmp ugt i64 %20, %21
  %24 = select i1 %22, i1 %23, i1 false
  br i1 %24, label %25, label %31

25:                                               ; preds = %18
  %26 = sub i64 %20, %21
  %27 = getelementptr inbounds i8, ptr %12, i64 %26
  %28 = tail call i32 @bcmp(ptr nonnull %27, ptr %2, i64 %21)
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %29, ptr %27, ptr null
  br label %31

31:                                               ; preds = %25, %18
  %32 = phi ptr [ %30, %25 ], [ null, %18 ]
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %31
  %35 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %32, ptr noundef nonnull dereferenceable(1) %1) #26
  br label %51

36:                                               ; preds = %31
  %37 = load i8, ptr %1, align 1, !tbaa !7
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %51, label %39

39:                                               ; preds = %36
  %40 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #29
  %41 = icmp ne i64 %40, 0
  %42 = icmp ugt i64 %20, %40
  %43 = select i1 %41, i1 %42, i1 false
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = sub i64 %20, %40
  %46 = getelementptr inbounds i8, ptr %12, i64 %45
  %47 = tail call i32 @bcmp(ptr nonnull %46, ptr nonnull %1, i64 %40)
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %44, %39
  %50 = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull dereferenceable(1) %1) #26
  br label %51

51:                                               ; preds = %49, %44, %36, %34, %3
  %52 = phi ptr [ null, %3 ], [ %12, %36 ], [ %12, %44 ], [ %12, %49 ], [ %12, %34 ]
  ret ptr %52
}

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #20

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #21

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare void @perror(ptr nocapture noundef readonly) local_unnamed_addr #7

declare i32 @fileno(...) local_unnamed_addr #18

; Function Attrs: nofree nounwind
declare noundef i32 @fstat(i32 noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal noundef ptr @codename(ptr noundef %0) unnamed_addr #2 {
  %2 = tail call fastcc ptr @normalname(ptr noundef %0, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.45)
  ret ptr %2
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @plainname(ptr noundef %0) unnamed_addr #2 {
  %2 = tail call fastcc ptr @normalname(ptr noundef %0, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.41)
  ret ptr %2
}

; Function Attrs: nofree
declare noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #22

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #23

; Function Attrs: nounwind
declare i32 @isatty(i32 noundef) local_unnamed_addr #19

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #7

declare i32 @close(i32 noundef) local_unnamed_addr #18

; Function Attrs: nounwind uwtable
define internal noundef i32 @process_encode() unnamed_addr #2 {
  %1 = alloca [160 x i16], align 16
  %2 = alloca [33 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 320, ptr nonnull %1) #26
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %2) #26
  %3 = tail call ptr @gsm_create() #26
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = load ptr, ptr @progname, align 8, !tbaa !16
  tail call void @perror(ptr noundef %6) #27
  br label %48

7:                                                ; preds = %0
  %8 = tail call i32 @gsm_option(ptr noundef nonnull %3, i32 noundef 2, ptr noundef nonnull @f_fast) #26
  %9 = tail call i32 @gsm_option(ptr noundef nonnull %3, i32 noundef 1, ptr noundef nonnull @f_verbose) #26
  br label %10

10:                                               ; preds = %21, %7
  %11 = load ptr, ptr @input, align 8, !tbaa !16
  %12 = call i32 %11(ptr noundef nonnull %1) #26
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %35

14:                                               ; preds = %10
  %15 = icmp ult i32 %12, 160
  br i1 %15, label %16, label %21

16:                                               ; preds = %14
  %17 = zext nneg i32 %12 to i64
  %18 = getelementptr inbounds i16, ptr %1, i64 %17
  %19 = shl nuw nsw i64 %17, 1
  %20 = sub nuw nsw i64 320, %19
  call void @llvm.memset.p0.i64(ptr nonnull align 2 %18, i8 0, i64 %20, i1 false)
  br label %21

21:                                               ; preds = %16, %14
  call void @gsm_encode(ptr noundef nonnull %3, ptr noundef nonnull %1, ptr noundef nonnull %2) #26
  %22 = load ptr, ptr @out, align 8, !tbaa !16
  %23 = call i64 @fwrite(ptr noundef nonnull %2, i64 noundef 33, i64 noundef 1, ptr noundef %22)
  %24 = icmp eq i64 %23, 1
  br i1 %24, label %10, label %25, !llvm.loop !94

25:                                               ; preds = %21
  %26 = load ptr, ptr @outname, align 8
  %27 = icmp eq ptr %26, null
  %28 = select i1 %27, ptr @.str.36, ptr %26
  call void @perror(ptr noundef nonnull %28) #27
  %29 = load ptr, ptr @stderr, align 8, !tbaa !16
  %30 = load ptr, ptr @progname, align 8, !tbaa !16
  %31 = load ptr, ptr @outname, align 8
  %32 = icmp eq ptr %31, null
  %33 = select i1 %32, ptr @.str.36, ptr %31
  %34 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %29, ptr noundef nonnull @.str.58, ptr noundef %30, ptr noundef nonnull %33) #27
  call void @gsm_destroy(ptr noundef nonnull %3) #26
  br label %48

35:                                               ; preds = %10
  %36 = icmp slt i32 %12, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %35
  %38 = load ptr, ptr @inname, align 8
  %39 = icmp eq ptr %38, null
  %40 = select i1 %39, ptr @.str.37, ptr %38
  call void @perror(ptr noundef nonnull %40) #27
  %41 = load ptr, ptr @stderr, align 8, !tbaa !16
  %42 = load ptr, ptr @progname, align 8, !tbaa !16
  %43 = load ptr, ptr @inname, align 8
  %44 = icmp eq ptr %43, null
  %45 = select i1 %44, ptr @.str.37, ptr %43
  %46 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %41, ptr noundef nonnull @.str.59, ptr noundef %42, ptr noundef nonnull %45) #27
  call void @gsm_destroy(ptr noundef nonnull %3) #26
  br label %48

47:                                               ; preds = %35
  call void @gsm_destroy(ptr noundef nonnull %3) #26
  br label %48

48:                                               ; preds = %47, %37, %25, %5
  %49 = phi i32 [ -1, %25 ], [ -1, %37 ], [ 0, %47 ], [ -1, %5 ]
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(i64 320, ptr nonnull %1) #26
  ret i32 %49
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @process_decode() unnamed_addr #2 {
  %1 = alloca [33 x i8], align 16
  %2 = alloca [160 x i16], align 16
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %1) #26
  call void @llvm.lifetime.start.p0(i64 320, ptr nonnull %2) #26
  %3 = tail call ptr @gsm_create() #26
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = load ptr, ptr @progname, align 8, !tbaa !16
  tail call void @perror(ptr noundef %6) #27
  br label %64

7:                                                ; preds = %0
  %8 = tail call i32 @gsm_option(ptr noundef nonnull %3, i32 noundef 2, ptr noundef nonnull @f_fast) #26
  %9 = tail call i32 @gsm_option(ptr noundef nonnull %3, i32 noundef 1, ptr noundef nonnull @f_verbose) #26
  br label %10

10:                                               ; preds = %41, %7
  %11 = load ptr, ptr @in, align 8, !tbaa !16
  %12 = call i64 @fread(ptr noundef nonnull %1, i64 noundef 1, i64 noundef 33, ptr noundef %11)
  %13 = trunc i64 %12 to i32
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %51

15:                                               ; preds = %10
  %16 = and i64 %12, 4294967295
  %17 = icmp eq i64 %16, 33
  br i1 %17, label %30, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr @stderr, align 8, !tbaa !16
  %20 = load ptr, ptr @progname, align 8, !tbaa !16
  %21 = sub nsw i64 33, %16
  %22 = icmp eq i64 %16, 32
  %23 = zext i1 %22 to i64
  %24 = getelementptr inbounds i8, ptr @.str.50, i64 %23
  %25 = load ptr, ptr @inname, align 8
  %26 = icmp eq ptr %25, null
  %27 = select i1 %26, ptr @.str.37, ptr %25
  %28 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @.str.56, ptr noundef %20, i64 noundef %21, ptr noundef nonnull %24, ptr noundef nonnull %27) #27
  call void @gsm_destroy(ptr noundef nonnull %3) #26
  %29 = tail call ptr @__errno_location() #30
  store i32 0, ptr %29, align 4, !tbaa !29
  br label %64

30:                                               ; preds = %15
  %31 = call i32 @gsm_decode(ptr noundef nonnull %3, ptr noundef nonnull %1, ptr noundef nonnull %2) #26
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %41, label %33

33:                                               ; preds = %30
  %34 = load ptr, ptr @stderr, align 8, !tbaa !16
  %35 = load ptr, ptr @progname, align 8, !tbaa !16
  %36 = load ptr, ptr @inname, align 8
  %37 = icmp eq ptr %36, null
  %38 = select i1 %37, ptr @.str.37, ptr %36
  %39 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %34, ptr noundef nonnull @.str.57, ptr noundef %35, ptr noundef nonnull %38) #27
  call void @gsm_destroy(ptr noundef nonnull %3) #26
  %40 = tail call ptr @__errno_location() #30
  store i32 0, ptr %40, align 4, !tbaa !29
  br label %64

41:                                               ; preds = %30
  %42 = load ptr, ptr @output, align 8, !tbaa !16
  %43 = call i32 %42(ptr noundef nonnull %2) #26
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %10, !llvm.loop !95

45:                                               ; preds = %41
  %46 = load ptr, ptr @outname, align 8, !tbaa !16
  call void @perror(ptr noundef %46) #27
  %47 = load ptr, ptr @stderr, align 8, !tbaa !16
  %48 = load ptr, ptr @progname, align 8, !tbaa !16
  %49 = load ptr, ptr @outname, align 8, !tbaa !16
  %50 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %47, ptr noundef nonnull @.str.58, ptr noundef %48, ptr noundef %49) #27
  call void @gsm_destroy(ptr noundef nonnull %3) #26
  br label %64

51:                                               ; preds = %10
  %52 = icmp slt i32 %13, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %51
  %54 = load ptr, ptr @inname, align 8
  %55 = icmp eq ptr %54, null
  %56 = select i1 %55, ptr @.str.37, ptr %54
  call void @perror(ptr noundef nonnull %56) #27
  %57 = load ptr, ptr @stderr, align 8, !tbaa !16
  %58 = load ptr, ptr @progname, align 8, !tbaa !16
  %59 = load ptr, ptr @inname, align 8
  %60 = icmp eq ptr %59, null
  %61 = select i1 %60, ptr @.str.37, ptr %59
  %62 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %57, ptr noundef nonnull @.str.59, ptr noundef %58, ptr noundef nonnull %61) #27
  call void @gsm_destroy(ptr noundef nonnull %3) #26
  br label %64

63:                                               ; preds = %51
  call void @gsm_destroy(ptr noundef nonnull %3) #26
  br label %64

64:                                               ; preds = %63, %53, %45, %33, %18, %5
  %65 = phi i32 [ -1, %18 ], [ -1, %33 ], [ -1, %45 ], [ -1, %53 ], [ 0, %63 ], [ -1, %5 ]
  call void @llvm.lifetime.end.p0(i64 320, ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %1) #26
  ret i32 %65
}

; Function Attrs: nofree nounwind
declare noundef i32 @utime(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #7

declare i32 @fchmod(...) local_unnamed_addr #18

declare i32 @fchown(...) local_unnamed_addr #18

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @unlink(ptr nocapture noundef readonly) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly) local_unnamed_addr #21

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #24

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #24

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @linear_input(ptr nocapture noundef %0) #6 {
  %2 = load ptr, ptr @in, align 8, !tbaa !16
  %3 = tail call i64 @fread(ptr noundef %0, i64 noundef 2, i64 noundef 160, ptr noundef %2)
  %4 = trunc i64 %3 to i32
  ret i32 %4
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @linear_output(ptr nocapture noundef %0) #6 {
  %2 = load ptr, ptr @out, align 8, !tbaa !16
  %3 = tail call i64 @fwrite(ptr noundef %0, i64 noundef 2, i64 noundef 160, ptr noundef %2)
  %4 = icmp ne i64 %3, 160
  %5 = sext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @ulaw_input(ptr nocapture noundef writeonly %0) #6 {
  br label %2

2:                                                ; preds = %7, %1
  %3 = phi i64 [ 0, %1 ], [ %13, %7 ]
  %4 = load ptr, ptr @in, align 8, !tbaa !16
  %5 = tail call i32 @fgetc(ptr noundef %4)
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %15, label %7

7:                                                ; preds = %2
  %8 = and i32 %5, 255
  %9 = zext nneg i32 %8 to i64
  %10 = getelementptr inbounds [256 x i16], ptr @u2s, i64 0, i64 %9
  %11 = load i16, ptr %10, align 2, !tbaa !12
  %12 = getelementptr inbounds i16, ptr %0, i64 %3
  store i16 %11, ptr %12, align 2, !tbaa !12
  %13 = add nuw nsw i64 %3, 1
  %14 = icmp eq i64 %13, 160
  br i1 %14, label %17, label %2, !llvm.loop !96

15:                                               ; preds = %2
  %16 = trunc i64 %3 to i32
  br label %17

17:                                               ; preds = %15, %7
  %18 = phi i32 [ %16, %15 ], [ 160, %7 ]
  br i1 %6, label %19, label %23

19:                                               ; preds = %17
  %20 = load ptr, ptr @in, align 8, !tbaa !16
  %21 = tail call i32 @ferror(ptr noundef %20) #26
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19, %17
  br label %24

24:                                               ; preds = %23, %19
  %25 = phi i32 [ %18, %23 ], [ -1, %19 ]
  ret i32 %25
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @ulaw_output(ptr nocapture noundef readonly %0) #6 {
  br label %2

2:                                                ; preds = %14, %1
  %3 = phi i32 [ 0, %1 ], [ %15, %14 ]
  %4 = phi ptr [ %0, %1 ], [ %16, %14 ]
  %5 = load i16, ptr %4, align 2, !tbaa !12
  %6 = lshr i16 %5, 3
  %7 = zext nneg i16 %6 to i64
  %8 = getelementptr inbounds [8192 x i8], ptr @s2u, i64 0, i64 %7
  %9 = load i8, ptr %8, align 1, !tbaa !7
  %10 = sext i8 %9 to i32
  %11 = load ptr, ptr @out, align 8, !tbaa !16
  %12 = tail call i32 @fputc(i32 noundef %10, ptr noundef %11)
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = add nuw nsw i32 %3, 1
  %16 = getelementptr inbounds i16, ptr %4, i64 1
  %17 = icmp eq i32 %15, 160
  br i1 %17, label %18, label %2, !llvm.loop !97

18:                                               ; preds = %14, %2
  %19 = phi i32 [ -1, %2 ], [ 0, %14 ]
  ret i32 %19
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree nounwind willreturn memory(argmem: read) }
attributes #21 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nofree nounwind }
attributes #25 = { noreturn nounwind }
attributes #26 = { nounwind }
attributes #27 = { cold }
attributes #28 = { nounwind allocsize(0) }
attributes #29 = { nounwind willreturn memory(read) }
attributes #30 = { nounwind willreturn memory(none) }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6}

!0 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 1, !"ThinLTO", i32 0}
!6 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!7 = !{!8, !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = !{!13, !13, i64 0}
!13 = !{!"short", !8, i64 0}
!14 = distinct !{!14, !11}
!15 = distinct !{!15, !11}
!16 = !{!17, !17, i64 0}
!17 = !{!"any pointer", !8, i64 0}
!18 = distinct !{!18, !11}
!19 = !{!20, !20, i64 0}
!20 = !{!"long", !8, i64 0}
!21 = distinct !{!21, !11}
!22 = distinct !{!22, !11}
!23 = !{!24, !13, i64 650}
!24 = !{!"gsm_state", !8, i64 0, !13, i64 560, !20, i64 568, !25, i64 576, !8, i64 580, !8, i64 596, !13, i64 628, !13, i64 630, !8, i64 632, !13, i64 650, !8, i64 652, !8, i64 653}
!25 = !{!"int", !8, i64 0}
!26 = distinct !{!26, !11}
!27 = !{!24, !13, i64 630}
!28 = !{!24, !8, i64 652}
!29 = !{!25, !25, i64 0}
!30 = distinct !{!30, !11}
!31 = distinct !{!31, !11}
!32 = distinct !{!32, !11}
!33 = distinct !{!33, !11}
!34 = distinct !{!34, !11}
!35 = distinct !{!35, !11}
!36 = distinct !{!36, !11}
!37 = distinct !{!37, !11}
!38 = distinct !{!38, !11}
!39 = distinct !{!39, !11}
!40 = distinct !{!40, !11}
!41 = distinct !{!41, !11}
!42 = distinct !{!42, !11}
!43 = distinct !{!43, !11}
!44 = distinct !{!44, !11}
!45 = distinct !{!45, !11}
!46 = distinct !{!46, !11}
!47 = distinct !{!47, !11}
!48 = distinct !{!48, !11}
!49 = distinct !{!49, !11}
!50 = distinct !{!50, !11}
!51 = !{!24, !13, i64 560}
!52 = !{!24, !20, i64 568}
!53 = !{!24, !25, i64 576}
!54 = distinct !{!54, !11}
!55 = distinct !{!55, !11}
!56 = distinct !{!56, !11}
!57 = distinct !{!57, !11}
!58 = distinct !{!58, !11}
!59 = distinct !{!59, !11}
!60 = distinct !{!60, !11}
!61 = distinct !{!61, !11}
!62 = distinct !{!62, !11}
!63 = !{!24, !13, i64 628}
!64 = distinct !{!64, !11}
!65 = distinct !{!65, !11}
!66 = distinct !{!66, !11}
!67 = distinct !{!67, !11}
!68 = distinct !{!68, !11}
!69 = distinct !{!69, !11}
!70 = distinct !{!70, !11}
!71 = distinct !{!71, !11}
!72 = distinct !{!72, !11}
!73 = distinct !{!73, !11}
!74 = !{i32 -1, i32 1}
!75 = distinct !{!75, !11}
!76 = distinct !{!76, !11}
!77 = !{!78, !20, i64 16}
!78 = !{!"stat", !20, i64 0, !20, i64 8, !20, i64 16, !25, i64 24, !25, i64 28, !25, i64 32, !25, i64 36, !20, i64 40, !20, i64 48, !20, i64 56, !20, i64 64, !20, i64 72, !20, i64 80, !20, i64 88, !20, i64 96, !20, i64 104, !20, i64 112, !8, i64 120}
!79 = !{!78, !25, i64 24}
!80 = !{!81, !17, i64 16}
!81 = !{!"fmtdesc", !17, i64 0, !17, i64 8, !17, i64 16, !17, i64 24, !17, i64 32, !17, i64 40, !17, i64 48}
!82 = distinct !{!82, !11}
!83 = !{!81, !17, i64 48}
!84 = !{!81, !17, i64 40}
!85 = !{!81, !17, i64 24}
!86 = !{!81, !17, i64 32}
!87 = !{ptr @codename, ptr @plainname}
!88 = distinct !{!88, !11}
!89 = !{ptr @process_decode, ptr @process_encode}
!90 = !{!78, !20, i64 72}
!91 = !{!78, !20, i64 88}
!92 = !{!78, !25, i64 28}
!93 = !{!78, !25, i64 32}
!94 = distinct !{!94, !11}
!95 = distinct !{!95, !11}
!96 = distinct !{!96, !11}
!97 = distinct !{!97, !11}
