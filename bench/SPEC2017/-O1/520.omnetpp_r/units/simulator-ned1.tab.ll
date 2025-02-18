; ModuleID = 'simulator/ned1.tab.cc'
source_filename = "simulator/ned1.tab.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.my_yyltype = type { i32, i32, i32, i32, i32, ptr }
%struct.NED1ParserState = type { i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.LineColumn = type { i32, i32 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%class.NEDParser = type { i8, i8, ptr, ptr, ptr }
%class.ImportElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string" }
%class.NEDElement = type { ptr, i64, %"class.std::__cxx11::basic_string", %struct.NEDSourceRegion, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.NEDSourceRegion = type { i32, i32, i32, i32 }
%class.ChannelElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string" }
%class.ExtendsElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string" }
%class.ParametersElement = type <{ %class.NEDElement, i8, [7 x i8] }>
%class.SimpleModuleElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string" }
%class.CompoundModuleElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string" }
%class.LiteralElement = type { %class.NEDElement, i32, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%class.ParamElement = type <{ %class.NEDElement, i32, i8, [3 x i8], %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", i8, [7 x i8] }>
%class.GateElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string", i32, i8, %"class.std::__cxx11::basic_string" }
%class.SubmoduleElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%class.ConnectionsElement = type <{ %class.NEDElement, i8, [7 x i8] }>
%class.LoopElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%class.ConnectionElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", i8, %"class.std::__cxx11::basic_string", i32, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", i8, %"class.std::__cxx11::basic_string", i32, i32 }
%class.ChannelSpecElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%class.NedFileElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%class.opp_runtime_error = type { %"class.std::runtime_error", %"class.std::__cxx11::basic_string" }
%"class.std::runtime_error" = type { %"class.std::exception", %"struct.std::__cow_string" }
%"class.std::exception" = type { ptr }
%"struct.std::__cow_string" = type { %union.anon.3 }
%union.anon.3 = type { ptr }

$__clang_call_terminate = comdat any

$_ZN17opp_runtime_errorD2Ev = comdat any

$_ZN17opp_runtime_errorD0Ev = comdat any

$_ZNK17opp_runtime_error4whatEv = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag = comdat any

$_ZTS12NEDException = comdat any

$_ZTI12NEDException = comdat any

$_ZTS17opp_runtime_error = comdat any

$_ZTI17opp_runtime_error = comdat any

$_ZTV17opp_runtime_error = comdat any

@ned1yydebug = dso_local local_unnamed_addr global i32 0, align 4
@ned1yychar = dso_local local_unnamed_addr global i32 0, align 4
@ned1yylval = dso_local local_unnamed_addr global ptr null, align 8
@ned1yynerrs = dso_local local_unnamed_addr global i32 0, align 4
@ned1yylloc = dso_local local_unnamed_addr global %struct.my_yyltype zeroinitializer, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [16 x i8] c"Starting parse\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Entering state %d\0A\00", align 1
@_ZL6yypact = internal unnamed_addr constant [419 x i16] [i16 -341, i16 31, i16 166, i16 -341, i16 14, i16 6, i16 30, i16 68, i16 102, i16 -341, i16 -341, i16 -341, i16 123, i16 -341, i16 134, i16 -341, i16 134, i16 -341, i16 154, i16 -341, i16 26, i16 -341, i16 -341, i16 -341, i16 -341, i16 86, i16 236, i16 157, i16 146, i16 100, i16 202, i16 -341, i16 202, i16 1, i16 169, i16 154, i16 -341, i16 -341, i16 14, i16 190, i16 192, i16 195, i16 136, i16 -341, i16 -341, i16 -341, i16 141, i16 85, i16 12, i16 150, i16 161, i16 162, i16 163, i16 165, i16 290, i16 290, i16 290, i16 290, i16 144, i16 -341, i16 601, i16 -341, i16 -341, i16 -341, i16 -341, i16 -341, i16 -341, i16 -341, i16 107, i16 -5, i16 -341, i16 236, i16 -341, i16 159, i16 228, i16 -341, i16 262, i16 236, i16 -341, i16 144, i16 -341, i16 -341, i16 -341, i16 144, i16 -341, i16 -341, i16 83, i16 240, i16 -341, i16 245, i16 -341, i16 252, i16 290, i16 290, i16 290, i16 253, i16 186, i16 -341, i16 -341, i16 -341, i16 411, i16 -341, i16 -341, i16 290, i16 290, i16 290, i16 290, i16 290, i16 290, i16 290, i16 290, i16 290, i16 290, i16 290, i16 290, i16 290, i16 290, i16 290, i16 290, i16 290, i16 290, i16 290, i16 290, i16 290, i16 261, i16 263, i16 144, i16 -341, i16 144, i16 -6, i16 -341, i16 -2, i16 -341, i16 208, i16 287, i16 -341, i16 212, i16 268, i16 -341, i16 -341, i16 -341, i16 312, i16 -67, i16 -341, i16 -341, i16 444, i16 477, i16 510, i16 204, i16 -341, i16 -341, i16 164, i16 164, i16 164, i16 164, i16 164, i16 164, i16 676, i16 626, i16 651, i16 687, i16 200, i16 249, i16 126, i16 126, i16 576, i16 88, i16 88, i16 213, i16 213, i16 213, i16 213, i16 -341, i16 -341, i16 -341, i16 -341, i16 220, i16 276, i16 -341, i16 47, i16 -341, i16 139, i16 144, i16 -341, i16 -341, i16 5, i16 299, i16 -341, i16 -341, i16 214, i16 -341, i16 62, i16 -341, i16 290, i16 -341, i16 240, i16 -341, i16 -341, i16 -341, i16 -341, i16 -341, i16 290, i16 188, i16 -341, i16 -341, i16 -6, i16 278, i16 279, i16 -341, i16 151, i16 -341, i16 282, i16 229, i16 -341, i16 230, i16 296, i16 -341, i16 268, i16 160, i16 -341, i16 268, i16 345, i16 234, i16 601, i16 286, i16 301, i16 -341, i16 -341, i16 -341, i16 -341, i16 -341, i16 247, i16 79, i16 -341, i16 248, i16 90, i16 -341, i16 278, i16 279, i16 259, i16 -341, i16 282, i16 -341, i16 -341, i16 8, i16 313, i16 0, i16 -341, i16 -341, i16 -341, i16 -341, i16 -341, i16 290, i16 -341, i16 -341, i16 -341, i16 -341, i16 250, i16 -341, i16 278, i16 251, i16 -341, i16 279, i16 94, i16 110, i16 317, i16 -341, i16 8, i16 -341, i16 -62, i16 -341, i16 8, i16 -341, i16 -341, i16 -341, i16 187, i16 256, i16 -341, i16 258, i16 144, i16 -341, i16 255, i16 378, i16 -341, i16 -341, i16 -341, i16 -341, i16 -341, i16 -341, i16 -10, i16 -341, i16 318, i16 -341, i16 236, i16 257, i16 -341, i16 78, i16 78, i16 327, i16 -341, i16 -341, i16 66, i16 -341, i16 290, i16 -341, i16 328, i16 -9, i16 -341, i16 264, i16 343, i16 269, i16 266, i16 236, i16 -8, i16 346, i16 265, i16 -341, i16 354, i16 340, i16 -341, i16 346, i16 355, i16 -55, i16 -341, i16 -341, i16 33, i16 543, i16 144, i16 341, i16 -341, i16 154, i16 236, i16 342, i16 318, i16 -341, i16 -341, i16 -341, i16 271, i16 236, i16 365, i16 344, i16 347, i16 -341, i16 365, i16 347, i16 -341, i16 -341, i16 360, i16 -341, i16 -341, i16 -341, i16 144, i16 154, i16 -341, i16 370, i16 379, i16 98, i16 -341, i16 -341, i16 -341, i16 372, i16 112, i16 -36, i16 -341, i16 -59, i16 346, i16 112, i16 346, i16 298, i16 154, i16 -341, i16 -341, i16 4, i16 396, i16 370, i16 -341, i16 236, i16 144, i16 -341, i16 -341, i16 -341, i16 -341, i16 -341, i16 -341, i16 -341, i16 365, i16 -341, i16 365, i16 -341, i16 -341, i16 154, i16 236, i16 -341, i16 322, i16 -341, i16 -341, i16 -341, i16 -341, i16 112, i16 112, i16 -341, i16 323, i16 390, i16 377, i16 -341, i16 -341, i16 -341, i16 315, i16 -341, i16 116, i16 -341, i16 332, i16 390, i16 -341, i16 -341, i16 390, i16 -341, i16 -341, i16 -341], align 16
@.str.2 = private unnamed_addr constant [18 x i8] c"Reading a token: \00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Now at end of input.\0A\00", align 1
@_ZL11yytranslate = internal unnamed_addr constant [343 x i8] c"\00\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02]\02\02ef[YaZg\\\02\02\02\02\02\02\02\02\02\02X`\02d\02W\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02b\02c^\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUV_", align 16
@.str.4 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"Next token is\00", align 1
@_ZL7yycheck = internal unnamed_addr constant [782 x i16] [i16 71, i16 69, i16 87, i16 343, i16 269, i16 320, i16 77, i16 69, i16 16, i16 17, i16 69, i16 79, i16 22, i16 22, i16 69, i16 83, i16 54, i16 55, i16 56, i16 57, i16 15, i16 352, i16 21, i16 31, i16 289, i16 21, i16 18, i16 332, i16 34, i16 34, i16 97, i16 0, i16 34, i16 69, i16 34, i16 102, i16 98, i16 43, i16 369, i16 98, i16 34, i16 103, i16 34, i16 98, i16 103, i16 385, i16 34, i16 387, i16 86, i16 35, i16 365, i16 356, i16 367, i16 41, i16 92, i16 93, i16 94, i16 322, i16 126, i16 390, i16 128, i16 69, i16 98, i16 131, i16 34, i16 103, i16 104, i16 105, i16 106, i16 107, i16 108, i16 109, i16 110, i16 111, i16 112, i16 113, i16 114, i16 115, i16 116, i16 117, i16 118, i16 119, i16 120, i16 121, i16 122, i16 123, i16 96, i16 96, i16 98, i16 88, i16 98, i16 96, i16 88, i16 88, i16 96, i16 103, i16 96, i16 362, i16 32, i16 33, i16 34, i16 35, i16 34, i16 37, i16 38, i16 366, i16 40, i16 41, i16 42, i16 31, i16 195, i16 45, i16 34, i16 297, i16 182, i16 32, i16 33, i16 34, i16 35, i16 34, i16 37, i16 38, i16 96, i16 97, i16 41, i16 42, i16 28, i16 42, i16 45, i16 63, i16 97, i16 65, i16 34, i16 67, i16 68, i16 102, i16 34, i16 398, i16 399, i16 32, i16 33, i16 7, i16 407, i16 96, i16 97, i16 79, i16 63, i16 218, i16 65, i16 83, i16 67, i16 68, i16 13, i16 14, i16 31, i16 193, i16 90, i16 341, i16 96, i16 97, i16 344, i16 7, i16 79, i16 201, i16 13, i16 14, i16 83, i16 101, i16 102, i16 3, i16 4, i16 5, i16 6, i16 90, i16 88, i16 96, i16 97, i16 31, i16 246, i16 91, i16 92, i16 93, i16 94, i16 26, i16 101, i16 102, i16 96, i16 97, i16 88, i16 23, i16 96, i16 97, i16 32, i16 33, i16 34, i16 35, i16 27, i16 37, i16 38, i16 39, i16 40, i16 41, i16 42, i16 16, i16 17, i16 45, i16 96, i16 97, i16 96, i16 97, i16 8, i16 279, i16 96, i16 97, i16 252, i16 89, i16 90, i16 91, i16 92, i16 93, i16 94, i16 289, i16 293, i16 63, i16 34, i16 65, i16 34, i16 67, i16 68, i16 34, i16 301, i16 43, i16 44, i16 45, i16 46, i16 47, i16 48, i16 101, i16 306, i16 79, i16 96, i16 312, i16 101, i16 83, i16 80, i16 81, i16 82, i16 88, i16 84, i16 85, i16 90, i16 101, i16 24, i16 89, i16 90, i16 91, i16 92, i16 93, i16 94, i16 327, i16 331, i16 101, i16 101, i16 101, i16 101, i16 303, i16 101, i16 338, i16 32, i16 33, i16 34, i16 35, i16 10, i16 37, i16 38, i16 35, i16 40, i16 41, i16 42, i16 34, i16 80, i16 45, i16 82, i16 351, i16 84, i16 85, i16 34, i16 34, i16 102, i16 89, i16 90, i16 91, i16 92, i16 93, i16 94, i16 34, i16 88, i16 34, i16 11, i16 63, i16 88, i16 65, i16 34, i16 67, i16 68, i16 376, i16 102, i16 94, i16 88, i16 377, i16 34, i16 12, i16 34, i16 34, i16 100, i16 79, i16 34, i16 88, i16 88, i16 83, i16 391, i16 25, i16 32, i16 33, i16 34, i16 35, i16 90, i16 37, i16 38, i16 80, i16 44, i16 41, i16 42, i16 84, i16 85, i16 45, i16 102, i16 101, i16 89, i16 90, i16 91, i16 92, i16 93, i16 94, i16 43, i16 98, i16 98, i16 88, i16 35, i16 99, i16 99, i16 34, i16 34, i16 63, i16 96, i16 65, i16 101, i16 67, i16 68, i16 103, i16 103, i16 34, i16 34, i16 20, i16 100, i16 99, i16 97, i16 21, i16 103, i16 79, i16 16, i16 31, i16 17, i16 83, i16 103, i16 34, i16 34, i16 12, i16 34, i16 9, i16 90, i16 34, i16 70, i16 71, i16 72, i16 73, i16 74, i16 75, i16 76, i16 77, i16 78, i16 101, i16 80, i16 81, i16 82, i16 35, i16 84, i16 85, i16 19, i16 87, i16 102, i16 89, i16 90, i16 91, i16 92, i16 93, i16 94, i16 35, i16 12, i16 97, i16 88, i16 88, i16 35, i16 98, i16 102, i16 70, i16 71, i16 72, i16 73, i16 74, i16 75, i16 76, i16 77, i16 78, i16 34, i16 80, i16 81, i16 82, i16 96, i16 84, i16 85, i16 38, i16 87, i16 16, i16 89, i16 90, i16 91, i16 92, i16 93, i16 94, i16 205, i16 32, i16 97, i16 237, i16 259, i16 238, i16 262, i16 102, i16 70, i16 71, i16 72, i16 73, i16 74, i16 75, i16 76, i16 77, i16 78, i16 241, i16 80, i16 81, i16 82, i16 18, i16 84, i16 85, i16 35, i16 87, i16 220, i16 89, i16 90, i16 91, i16 92, i16 93, i16 94, i16 374, i16 415, i16 97, i16 412, i16 217, i16 267, i16 297, i16 102, i16 70, i16 71, i16 72, i16 73, i16 74, i16 75, i16 76, i16 77, i16 78, i16 271, i16 80, i16 81, i16 82, i16 318, i16 84, i16 85, i16 -1, i16 87, i16 -1, i16 89, i16 90, i16 91, i16 92, i16 93, i16 94, i16 333, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 102, i16 70, i16 71, i16 72, i16 73, i16 74, i16 75, i16 76, i16 77, i16 78, i16 -1, i16 80, i16 81, i16 82, i16 -1, i16 84, i16 85, i16 -1, i16 87, i16 -1, i16 89, i16 90, i16 91, i16 92, i16 93, i16 94, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 102, i16 70, i16 71, i16 72, i16 73, i16 74, i16 75, i16 76, i16 77, i16 78, i16 -1, i16 80, i16 81, i16 82, i16 -1, i16 84, i16 85, i16 -1, i16 87, i16 -1, i16 89, i16 90, i16 91, i16 92, i16 93, i16 94, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 102, i16 70, i16 71, i16 72, i16 73, i16 74, i16 75, i16 76, i16 77, i16 78, i16 -1, i16 80, i16 81, i16 82, i16 -1, i16 84, i16 85, i16 -1, i16 87, i16 -1, i16 89, i16 90, i16 91, i16 92, i16 93, i16 94, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 102, i16 70, i16 71, i16 72, i16 73, i16 74, i16 75, i16 76, i16 77, i16 78, i16 -1, i16 80, i16 81, i16 82, i16 -1, i16 84, i16 85, i16 -1, i16 87, i16 -1, i16 89, i16 90, i16 91, i16 92, i16 93, i16 94, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 102, i16 70, i16 71, i16 72, i16 73, i16 74, i16 75, i16 76, i16 77, i16 78, i16 -1, i16 80, i16 81, i16 82, i16 -1, i16 84, i16 85, i16 -1, i16 87, i16 88, i16 89, i16 90, i16 91, i16 92, i16 93, i16 94, i16 70, i16 71, i16 72, i16 73, i16 74, i16 75, i16 76, i16 77, i16 78, i16 -1, i16 80, i16 81, i16 82, i16 -1, i16 84, i16 85, i16 -1, i16 87, i16 -1, i16 89, i16 90, i16 91, i16 92, i16 93, i16 94, i16 70, i16 71, i16 72, i16 73, i16 74, i16 75, i16 76, i16 -1, i16 78, i16 -1, i16 80, i16 81, i16 82, i16 -1, i16 84, i16 85, i16 -1, i16 -1, i16 -1, i16 89, i16 90, i16 91, i16 92, i16 93, i16 94, i16 70, i16 71, i16 72, i16 73, i16 74, i16 75, i16 76, i16 -1, i16 -1, i16 -1, i16 80, i16 81, i16 82, i16 -1, i16 84, i16 85, i16 -1, i16 -1, i16 -1, i16 89, i16 90, i16 91, i16 92, i16 93, i16 94, i16 70, i16 71, i16 72, i16 73, i16 74, i16 75, i16 -1, i16 -1, i16 -1, i16 -1, i16 80, i16 81, i16 82, i16 -1, i16 84, i16 85, i16 -1, i16 -1, i16 -1, i16 89, i16 90, i16 91, i16 92, i16 93, i16 94, i16 84, i16 85, i16 -1, i16 -1, i16 -1, i16 89, i16 90, i16 91, i16 92, i16 93, i16 94], align 16
@_ZL7yytable = internal unnamed_addr constant [782 x i16] [i16 128, i16 127, i16 142, i16 366, i16 294, i16 343, i16 136, i16 292, i16 -168, i16 -168, i16 336, i16 138, i16 305, i16 328, i16 345, i16 139, i16 97, i16 98, i16 99, i16 100, i16 212, i16 371, i16 77, i16 -168, i16 306, i16 391, i16 268, i16 357, i16 176, i16 126, i16 195, i16 3, i16 182, i16 383, i16 279, i16 196, i16 293, i16 177, i16 389, i16 293, i16 22, i16 -150, i16 269, i16 293, i16 -160, i16 398, i16 90, i16 399, i16 141, i16 19, i16 385, i16 378, i16 387, i16 91, i16 145, i16 146, i16 147, i16 346, i16 174, i16 400, i16 175, i16 336, i16 293, i16 183, i16 23, i16 151, i16 152, i16 153, i16 154, i16 155, i16 156, i16 157, i16 158, i16 159, i16 160, i16 161, i16 162, i16 163, i16 164, i16 165, i16 166, i16 167, i16 168, i16 169, i16 170, i16 171, i16 101, i16 101, i16 293, i16 78, i16 293, i16 101, i16 392, i16 213, i16 101, i16 -160, i16 101, i16 384, i16 40, i16 41, i16 42, i16 43, i16 24, i16 44, i16 45, i16 386, i16 46, i16 47, i16 48, i16 312, i16 222, i16 49, i16 313, i16 320, i16 210, i16 40, i16 41, i16 42, i16 43, i16 88, i16 44, i16 45, i16 37, i16 38, i16 47, i16 48, i16 377, i16 89, i16 49, i16 50, i16 347, i16 51, i16 269, i16 52, i16 53, i16 348, i16 25, i16 404, i16 405, i16 124, i16 125, i16 29, i16 413, i16 204, i16 205, i16 54, i16 50, i16 250, i16 51, i16 55, i16 52, i16 53, i16 206, i16 207, i16 26, i16 221, i16 56, i16 365, i16 219, i16 220, i16 367, i16 33, i16 54, i16 223, i16 237, i16 238, i16 55, i16 57, i16 324, i16 4, i16 5, i16 6, i16 7, i16 56, i16 39, i16 258, i16 259, i16 71, i16 280, i16 120, i16 121, i16 122, i16 123, i16 69, i16 57, i16 140, i16 261, i16 262, i16 72, i16 8, i16 287, i16 259, i16 40, i16 41, i16 42, i16 43, i16 79, i16 44, i16 45, i16 249, i16 46, i16 47, i16 48, i16 296, i16 297, i16 49, i16 288, i16 262, i16 380, i16 381, i16 73, i16 300, i16 414, i16 415, i16 282, i16 118, i16 119, i16 120, i16 121, i16 122, i16 123, i16 307, i16 311, i16 50, i16 83, i16 51, i16 84, i16 52, i16 53, i16 85, i16 325, i16 224, i16 225, i16 226, i16 227, i16 228, i16 229, i16 86, i16 329, i16 54, i16 101, i16 335, i16 87, i16 55, i16 112, i16 113, i16 114, i16 130, i16 115, i16 116, i16 56, i16 92, i16 131, i16 118, i16 119, i16 120, i16 121, i16 122, i16 123, i16 350, i16 355, i16 57, i16 93, i16 94, i16 95, i16 326, i16 96, i16 359, i16 40, i16 41, i16 42, i16 43, i16 133, i16 44, i16 45, i16 43, i16 46, i16 47, i16 48, i16 143, i16 112, i16 49, i16 114, i16 370, i16 115, i16 116, i16 144, i16 148, i16 149, i16 118, i16 119, i16 120, i16 121, i16 122, i16 123, i16 172, i16 184, i16 173, i16 185, i16 50, i16 188, i16 51, i16 189, i16 52, i16 53, i16 396, i16 200, i16 123, i16 202, i16 397, i16 203, i16 214, i16 231, i16 234, i16 218, i16 54, i16 239, i16 243, i16 245, i16 55, i16 401, i16 246, i16 40, i16 41, i16 42, i16 43, i16 56, i16 44, i16 45, i16 112, i16 255, i16 47, i16 48, i16 115, i16 116, i16 49, i16 254, i16 57, i16 118, i16 119, i16 120, i16 121, i16 122, i16 123, i16 256, i16 257, i16 260, i16 265, i16 278, i16 283, i16 285, i16 289, i16 308, i16 50, i16 299, i16 51, i16 301, i16 52, i16 53, i16 298, i16 -149, i16 322, i16 327, i16 332, i16 331, i16 334, i16 333, i16 338, i16 340, i16 54, i16 341, i16 312, i16 344, i16 55, i16 -159, i16 351, i16 269, i16 360, i16 362, i16 372, i16 56, i16 364, i16 103, i16 104, i16 105, i16 106, i16 107, i16 108, i16 109, i16 110, i16 111, i16 57, i16 112, i16 113, i16 114, i16 368, i16 115, i16 116, i16 376, i16 117, i16 388, i16 118, i16 119, i16 120, i16 121, i16 122, i16 123, i16 379, i16 393, i16 193, i16 403, i16 406, i16 411, i16 293, i16 194, i16 103, i16 104, i16 105, i16 106, i16 107, i16 108, i16 109, i16 110, i16 111, i16 407, i16 112, i16 113, i16 114, i16 416, i16 115, i16 116, i16 82, i16 117, i16 32, i16 118, i16 119, i16 120, i16 121, i16 122, i16 123, i16 230, i16 76, i16 252, i16 263, i16 284, i16 264, i16 286, i16 253, i16 103, i16 104, i16 105, i16 106, i16 107, i16 108, i16 109, i16 110, i16 111, i16 266, i16 112, i16 113, i16 114, i16 34, i16 115, i16 116, i16 81, i16 117, i16 251, i16 118, i16 119, i16 120, i16 121, i16 122, i16 123, i16 395, i16 418, i16 303, i16 417, i16 248, i16 290, i16 321, i16 304, i16 103, i16 104, i16 105, i16 106, i16 107, i16 108, i16 109, i16 110, i16 111, i16 295, i16 112, i16 113, i16 114, i16 342, i16 115, i16 116, i16 0, i16 117, i16 0, i16 118, i16 119, i16 120, i16 121, i16 122, i16 123, i16 358, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 150, i16 103, i16 104, i16 105, i16 106, i16 107, i16 108, i16 109, i16 110, i16 111, i16 0, i16 112, i16 113, i16 114, i16 0, i16 115, i16 116, i16 0, i16 117, i16 0, i16 118, i16 119, i16 120, i16 121, i16 122, i16 123, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 197, i16 103, i16 104, i16 105, i16 106, i16 107, i16 108, i16 109, i16 110, i16 111, i16 0, i16 112, i16 113, i16 114, i16 0, i16 115, i16 116, i16 0, i16 117, i16 0, i16 118, i16 119, i16 120, i16 121, i16 122, i16 123, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 198, i16 103, i16 104, i16 105, i16 106, i16 107, i16 108, i16 109, i16 110, i16 111, i16 0, i16 112, i16 113, i16 114, i16 0, i16 115, i16 116, i16 0, i16 117, i16 0, i16 118, i16 119, i16 120, i16 121, i16 122, i16 123, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 199, i16 103, i16 104, i16 105, i16 106, i16 107, i16 108, i16 109, i16 110, i16 111, i16 0, i16 112, i16 113, i16 114, i16 0, i16 115, i16 116, i16 0, i16 117, i16 0, i16 118, i16 119, i16 120, i16 121, i16 122, i16 123, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 349, i16 103, i16 104, i16 105, i16 106, i16 107, i16 108, i16 109, i16 110, i16 111, i16 0, i16 112, i16 113, i16 114, i16 0, i16 115, i16 116, i16 0, i16 117, i16 201, i16 118, i16 119, i16 120, i16 121, i16 122, i16 123, i16 103, i16 104, i16 105, i16 106, i16 107, i16 108, i16 109, i16 110, i16 111, i16 0, i16 112, i16 113, i16 114, i16 0, i16 115, i16 116, i16 0, i16 117, i16 0, i16 118, i16 119, i16 120, i16 121, i16 122, i16 123, i16 103, i16 104, i16 105, i16 106, i16 107, i16 108, i16 109, i16 0, i16 111, i16 0, i16 112, i16 113, i16 114, i16 0, i16 115, i16 116, i16 0, i16 0, i16 0, i16 118, i16 119, i16 120, i16 121, i16 122, i16 123, i16 103, i16 104, i16 105, i16 106, i16 107, i16 108, i16 109, i16 0, i16 0, i16 0, i16 112, i16 113, i16 114, i16 0, i16 115, i16 116, i16 0, i16 0, i16 0, i16 118, i16 119, i16 120, i16 121, i16 122, i16 123, i16 103, i16 104, i16 105, i16 106, i16 107, i16 108, i16 0, i16 0, i16 0, i16 0, i16 112, i16 113, i16 114, i16 0, i16 115, i16 116, i16 0, i16 0, i16 0, i16 118, i16 119, i16 120, i16 121, i16 122, i16 123, i16 115, i16 116, i16 0, i16 0, i16 0, i16 118, i16 119, i16 120, i16 121, i16 122, i16 123], align 16
@.str.7 = private unnamed_addr constant [9 x i8] c"Shifting\00", align 1
@_ZL8yydefact = internal unnamed_addr constant [419 x i8] c"\04\00\02\01\00\00\00\00\00\03\05\06\10\07\22\08\22\09W\0D\00\0C\17\0F\1B\00\00\00\11\004!4\00\00VY\0A\00\00\E7\E8\D9\E4\E5\E6\00\00\00\00\00\00\00\DE\00\00\00\00\EF\B1\B0\B4\D6\D7\D8\E1\E2\E3\E9\EF\0E\00#\00\003F\00Z\EF\ACX\0B\EF\EC\ED\00\00\DA\00\DD\00\00\00\00\00\00\C6\CA\BC\00\EE\13\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\EF\15\EF&5\EF\16\00yE\00_\AE\AD\D1\00\00\DB\DC\00\00\00\00\DF\B5\BD\BE\BF\C0\C1\C2\C3\C4\C5\C7\C8\C9\CB\CC\00\B6\B7\B8\B9\BA\BB\EA\EB\14\12)\00$\00(8\EF\19G\00\1Fx\\\00[\00a\00\D2\00\B3\D0\CE\CF\E0\00\00+%\00\00\0067\18J\00|\00\00\1E_\00^\00\00\00\CD,*/012'@\00>D\00B\00\00\00HILz\7F\00\EF\1A]cb`\00\D3\B2-.\00:\00\00<\00\00\00\00K\7F\84\9B}~\81\82\83\00\00\94\00\EF\1Dh\00?=CA9;\EF{\00\9C\00\9A\80\00\00\00 \1C\00d\00\D4\00\EFM\00\00\87\00\00\A5\8A\00\9E\00\A7\A9\8A\00\98\93g\00\00\EF\00OW\00\00\00\AF\AB\A6\A4\00\8C\00\00\AA\8C\00\99\97\00f\D5Q\EFWNj\00\00\8E\86\89\00\00\A2\9D\A5\8A\00\8A\00WSP\00wil\00\EF\8D\8B\F1\F0\91\A3\A1\8C\8F\8CeRW\00m\00Uk\88\85\00\00T\00r\00\92\90o\00n\00t\00ruq\00vps", align 16
@_ZL4yyr2 = internal unnamed_addr constant [242 x i8] c"\00\02\01\02\00\01\01\01\01\01\03\03\01\01\03\02\00\01\04\03\03\02\04\02\03\02\07\02\03\02\01\00\04\01\00\00\04\02\00\03\01\01\03\02\03\04\04\03\03\03\03\01\00\00\04\01\00\04\03\04\03\03\01\03\01\03\01\03\01\01\00\00\04\01\00\02\01\00\06\00\07\00\08\00\09\03\01\00\02\01\00\04\00\06\02\00\03\01\03\00\05\05\03\02\00\01\00\02\01\00\04\00\06\02\00\03\01\02\04\00\01\00\00\05\00\04\01\00\02\01\01\01\00\07\03\01\05\02\00\02\00\02\01\06\08\06\08\03\01\02\01\02\01\02\02\01\02\03\01\02\01\02\01\02\02\01\02\01\01\01\02\02\03\05\02\03\01\01\06\04\01\03\03\03\03\03\03\03\02\03\03\03\03\03\03\03\03\03\02\03\03\03\02\03\03\05\04\04\04\03\04\06\08\0A\01\01\01\01\02\03\03\02\01\03\04\01\01\01\01\01\01\01\01\01\03\03\02\02\01\00\01\01", align 16
@np = external local_unnamed_addr global ptr, align 8
@_ZL2ps = internal unnamed_addr global %struct.NED1ParserState zeroinitializer, align 8
@.str.8 = private unnamed_addr constant [20 x i8] c"ned.DatarateChannel\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"ber\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"display\00", align 1
@_ZTISt9exception = external constant ptr
@.str.13 = private unnamed_addr constant [35 x i8] c"type 'anytype' no longer supported\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"vector-size\00", align 1
@.str.15 = private unnamed_addr constant [135 x i8] c"conditional parameters no longer supported -- please rewrite parameter assignments to use conditional expression syntax (cond ? a : b)\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"prompt\00", align 1
@.str.17 = private unnamed_addr constant [133 x i8] c"conditional gatesizes no longer supported -- please rewrite gatesize assignments to use conditional expression syntax (cond ? a : b)\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"from-value\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"to-value\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"condition\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"src-module-index\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"src-gate-index\00", align 1
@.str.23 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"dest-module-index\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"dest-gate-index\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"xmldoc\00", align 1
@.str.27 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.30 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.31 = private unnamed_addr constant [2 x i8] c"%\00", align 1
@.str.32 = private unnamed_addr constant [2 x i8] c"^\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"==\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"!=\00", align 1
@.str.35 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c">=\00", align 1
@.str.37 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c"<=\00", align 1
@.str.39 = private unnamed_addr constant [3 x i8] c"&&\00", align 1
@.str.40 = private unnamed_addr constant [3 x i8] c"||\00", align 1
@.str.41 = private unnamed_addr constant [3 x i8] c"##\00", align 1
@.str.42 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@.str.43 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@.str.44 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.45 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@.str.46 = private unnamed_addr constant [2 x i8] c"~\00", align 1
@.str.47 = private unnamed_addr constant [3 x i8] c"<<\00", align 1
@.str.48 = private unnamed_addr constant [3 x i8] c">>\00", align 1
@.str.49 = private unnamed_addr constant [3 x i8] c"?:\00", align 1
@.str.50 = private unnamed_addr constant [94 x i8] c"`ref' modifier no longer supported (add `volatile' modifier to destination parameter instead)\00", align 1
@.str.51 = private unnamed_addr constant [51 x i8] c"`ancestor' and `ref' modifiers no longer supported\00", align 1
@.str.52 = private unnamed_addr constant [40 x i8] c"`ancestor' modifier no longer supported\00", align 1
@.str.53 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@.str.54 = private unnamed_addr constant [7 x i8] c"sizeof\00", align 1
@.str.55 = private unnamed_addr constant [8 x i8] c"-> $$ =\00", align 1
@_ZL4yyr1 = internal unnamed_addr constant [242 x i8] c"\00hijjkkkkklmmnopqqrrsstuvvwxyyzz{||~}\7F\7F\80\80\81\81\81\81\81\81\81\81\81\81\82\82\84\83\85\85\86\86\86\86\87\87\88\88\89\89\8A\8A\8B\8B\8D\8C\8E\8E\8F\8F\91\90\92\90\93\90\94\90\95\96\96\97\97\99\98\9A\98\9B\9B\9C\9C\9D\9E\9D\9F\9F\9F\9F\A0\A0\A1\A1\A3\A2\A4\A2\A5\A5\A6\A6\A7\A8\A8\A9\A9\AB\AA\AC\AA\AD\AD\AE\AE\AF\AF\B1\B0\B2\B2\B3\B4\B4\B5\B5\B6\B6\B7\B7\B7\B7\B8\B8\B9\B9\BA\BA\BA\BB\BB\BB\BC\BC\BD\BD\BE\BE\BE\BF\BF\BF\C0\C1\C1\C1\C2\C3\C4\C5\C6\C7\C7\C8\C8\C9\C9\C9\C9\C9\C9\C9\C9\C9\C9\C9\C9\C9\C9\C9\C9\C9\C9\C9\C9\C9\C9\C9\C9\C9\C9\C9\C9\C9\C9\C9\C9\C9\C9\CA\CA\CA\CB\CB\CB\CB\CB\CC\CC\CC\CD\CD\CD\CE\CF\CF\D0\D0\D0\D1\D1\D1\D1\D2\D2\D3\D3", align 16
@_ZL7yypgoto = internal unnamed_addr constant [108 x i16] [i16 -341, i16 -341, i16 -341, i16 -341, i16 -341, i16 -341, i16 393, i16 -341, i16 -341, i16 -341, i16 -341, i16 -341, i16 -341, i16 -341, i16 -341, i16 -341, i16 -341, i16 -341, i16 -341, i16 -341, i16 417, i16 -341, i16 -341, i16 -341, i16 -341, i16 235, i16 409, i16 -341, i16 -341, i16 -341, i16 -341, i16 206, i16 185, i16 207, i16 184, i16 -341, i16 -341, i16 -341, i16 -341, i16 -341, i16 216, i16 -341, i16 -341, i16 -341, i16 -341, i16 -331, i16 443, i16 -341, i16 429, i16 -341, i16 -341, i16 260, i16 -341, i16 246, i16 -341, i16 -341, i16 -341, i16 -341, i16 99, i16 -341, i16 -341, i16 64, i16 -341, i16 59, i16 -341, i16 -341, i16 -341, i16 -341, i16 -341, i16 211, i16 -341, i16 219, i16 -341, i16 -341, i16 173, i16 -341, i16 -315, i16 -340, i16 -341, i16 -305, i16 -341, i16 -341, i16 -341, i16 -341, i16 -184, i16 -341, i16 -341, i16 -341, i16 182, i16 -341, i16 176, i16 -341, i16 -341, i16 -341, i16 -265, i16 -71, i16 -341, i16 -38, i16 -341, i16 -341, i16 -341, i16 -341, i16 -85, i16 -341, i16 -341, i16 -341, i16 -68, i16 -261], align 16
@_ZL9yydefgoto = internal unnamed_addr constant [108 x i16] [i16 -1, i16 1, i16 2, i16 9, i16 10, i16 20, i16 21, i16 11, i16 12, i16 27, i16 28, i16 70, i16 13, i16 14, i16 132, i16 15, i16 16, i16 247, i16 215, i16 216, i16 30, i16 31, i16 129, i16 178, i16 179, i16 180, i16 74, i16 75, i16 181, i16 208, i16 209, i16 232, i16 233, i16 235, i16 236, i16 134, i16 135, i16 211, i16 240, i16 241, i16 242, i16 330, i16 352, i16 369, i16 390, i16 353, i16 354, i16 35, i16 36, i16 137, i16 217, i16 190, i16 191, i16 192, i16 281, i16 302, i16 373, i16 374, i16 375, i16 402, i16 412, i16 408, i16 409, i16 410, i16 394, i16 186, i16 187, i16 267, i16 244, i16 270, i16 271, i16 272, i16 273, i16 291, i16 309, i16 310, i16 339, i16 361, i16 356, i16 274, i16 275, i16 276, i16 323, i16 277, i16 314, i16 315, i16 363, i16 316, i16 317, i16 318, i16 319, i16 17, i16 18, i16 80, i16 337, i16 58, i16 59, i16 60, i16 61, i16 62, i16 63, i16 64, i16 65, i16 66, i16 67, i16 68, i16 102, i16 382], align 16
@.str.56 = private unnamed_addr constant [13 x i8] c"syntax error\00", align 1
@.str.58 = private unnamed_addr constant [15 x i8] c"Error: popping\00", align 1
@_ZL6yystos = internal unnamed_addr constant [419 x i8] c"\00ij\00\03\04\05\06\17kloptuwx\C3\C4#mn\22\22\22\22\1Fqr\07|}|\07\96\97\98`aX !\22#%&()*-?ACDOSZe\C7\C8\C9\CA\CB\CC\CD\CE\CF\D0\D1\1As\1FX\08\82\83\82\15X\1B\C5\98n\22\22\22ee\22*\22)eeeee\C9\C9\C9\C9`\D2FGHIJKLMNPQRTUWYZ[\\]^ !\22\D2\C7~X\18v\0A\8B\8C\C7\99\D2\D2f\C9\CE\22\22\C9\C9\C9\22ff\C9\C9\C9\C9\C9\C9\C9\C9\C9\C9\C9\C9\C9\C9\C9\C9\C9\C9\C9\C9\C9\22\22\D2\D2\22+\7F\80\81\84\22\D2X\0B\A9\AAX\22\9B\9C\9DafafffffXX\22`a\0D\0E\85\86\D2\8D\0FX\0Cz{\9Ad`a\C9\CE\C9+,-./0\81\22\87\88\22\89\8A\0D\0E\22\8E\8F\90X\ACX\19y\9B'\C7\9Daff,+b`ab`a\87\89X\90\AB\12\22\AD\AE\AF\B0\B7\B8\B9\BB#\22\D2\9E\C9c\88c\8A``\22\AD\B1Eb\C6\AF\10\11g`\D2e\9Faf\16\C6\D2\22\B2\B3\C7\1F\22\BC\BD\BF\C0\C1\C2\BC\C0\22\BAf\C7\C9\22\16\D2\91d\14ac\C7E\C6\15\B4g\10\C2\B4\11E\C6aff\D2\22\92\95\96\C7\B6\B7\B2\C7\0C\B5\22\BE\22\BC\B5\BC#\93\D2\95\09\A0\A1\A2\13\1C\B7#`a\D3E\C6\B4\D3\B4f\95\94\15X\0C\A8\A2\C7\D2\B5\B5\95\C7\A3X\D3\D3X\22\A5\A6\A7#\A4\C6`a`\A5\A7", align 16
@.str.59 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.60 = private unnamed_addr constant [30 x i8] c"Cleanup: discarding lookahead\00", align 1
@.str.61 = private unnamed_addr constant [17 x i8] c"Cleanup: popping\00", align 1
@pos = external local_unnamed_addr global %struct.LineColumn, align 4
@prevpos = external local_unnamed_addr global %struct.LineColumn, align 4
@ned1yyin = external local_unnamed_addr global ptr, align 8
@ned1yyout = external local_unnamed_addr global ptr, align 8
@.str.62 = private unnamed_addr constant [31 x i8] c"unable to allocate work memory\00", align 1
@.str.63 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS12NEDException = linkonce_odr dso_local constant [15 x i8] c"12NEDException\00", comdat, align 1
@_ZTISt13runtime_error = external constant ptr
@_ZTI12NEDException = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS12NEDException, ptr @_ZTISt13runtime_error }, comdat, align 8
@.str.64 = private unnamed_addr constant [23 x i8] c"error during parsing: \00", align 1
@.str.65 = private unnamed_addr constant [11 x i8] c"token %s (\00", align 1
@_ZL7yytname = internal unnamed_addr constant [213 x ptr] [ptr @.str.69, ptr @.str.9, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @.str.226, ptr @.str.227, ptr @.str.228, ptr @.str.229, ptr @.str.230, ptr @.str.231, ptr @.str.232, ptr @.str.233, ptr @.str.234, ptr @.str.235, ptr @.str.236, ptr @.str.237, ptr @.str.238, ptr @.str.239, ptr @.str.240, ptr @.str.241, ptr @.str.242, ptr @.str.243, ptr @.str.244, ptr @.str.245, ptr @.str.246, ptr @.str.247, ptr @.str.248, ptr @.str.249, ptr @.str.250, ptr @.str.251, ptr @.str.252, ptr @.str.253, ptr @.str.254, ptr @.str.255, ptr @.str.256, ptr @.str.257, ptr @.str.258, ptr @.str.259, ptr @.str.260, ptr @.str.261, ptr @.str.262, ptr @.str.263, ptr @.str.264, ptr @.str.265, ptr @.str.266, ptr @.str.267, ptr @.str.268, ptr @.str.269, ptr @.str.270, ptr @.str.271, ptr @.str.272, ptr @.str.273, ptr @.str.274, ptr @.str.275, ptr @.str.276, ptr @.str.277, ptr @.str.278, ptr @.str.279, ptr null], align 16
@.str.66 = private unnamed_addr constant [11 x i8] c"nterm %s (\00", align 1
@.str.67 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.69 = private unnamed_addr constant [5 x i8] c"$end\00", align 1
@.str.70 = private unnamed_addr constant [11 x i8] c"$undefined\00", align 1
@.str.71 = private unnamed_addr constant [8 x i8] c"INCLUDE\00", align 1
@.str.72 = private unnamed_addr constant [7 x i8] c"SIMPLE\00", align 1
@.str.73 = private unnamed_addr constant [8 x i8] c"CHANNEL\00", align 1
@.str.74 = private unnamed_addr constant [7 x i8] c"MODULE\00", align 1
@.str.75 = private unnamed_addr constant [11 x i8] c"PARAMETERS\00", align 1
@.str.76 = private unnamed_addr constant [6 x i8] c"GATES\00", align 1
@.str.77 = private unnamed_addr constant [10 x i8] c"GATESIZES\00", align 1
@.str.78 = private unnamed_addr constant [11 x i8] c"SUBMODULES\00", align 1
@.str.79 = private unnamed_addr constant [12 x i8] c"CONNECTIONS\00", align 1
@.str.80 = private unnamed_addr constant [8 x i8] c"DISPLAY\00", align 1
@.str.81 = private unnamed_addr constant [3 x i8] c"IN\00", align 1
@.str.82 = private unnamed_addr constant [4 x i8] c"OUT\00", align 1
@.str.83 = private unnamed_addr constant [8 x i8] c"NOCHECK\00", align 1
@.str.84 = private unnamed_addr constant [11 x i8] c"LEFT_ARROW\00", align 1
@.str.85 = private unnamed_addr constant [12 x i8] c"RIGHT_ARROW\00", align 1
@.str.86 = private unnamed_addr constant [4 x i8] c"FOR\00", align 1
@.str.87 = private unnamed_addr constant [3 x i8] c"TO\00", align 1
@.str.88 = private unnamed_addr constant [3 x i8] c"DO\00", align 1
@.str.89 = private unnamed_addr constant [3 x i8] c"IF\00", align 1
@.str.90 = private unnamed_addr constant [5 x i8] c"LIKE\00", align 1
@.str.91 = private unnamed_addr constant [8 x i8] c"NETWORK\00", align 1
@.str.92 = private unnamed_addr constant [10 x i8] c"ENDSIMPLE\00", align 1
@.str.93 = private unnamed_addr constant [10 x i8] c"ENDMODULE\00", align 1
@.str.94 = private unnamed_addr constant [11 x i8] c"ENDCHANNEL\00", align 1
@.str.95 = private unnamed_addr constant [11 x i8] c"ENDNETWORK\00", align 1
@.str.96 = private unnamed_addr constant [7 x i8] c"ENDFOR\00", align 1
@.str.97 = private unnamed_addr constant [9 x i8] c"MACHINES\00", align 1
@.str.98 = private unnamed_addr constant [3 x i8] c"ON\00", align 1
@.str.99 = private unnamed_addr constant [13 x i8] c"CHANATTRNAME\00", align 1
@.str.100 = private unnamed_addr constant [12 x i8] c"INTCONSTANT\00", align 1
@.str.101 = private unnamed_addr constant [13 x i8] c"REALCONSTANT\00", align 1
@.str.102 = private unnamed_addr constant [5 x i8] c"NAME\00", align 1
@.str.103 = private unnamed_addr constant [15 x i8] c"STRINGCONSTANT\00", align 1
@.str.104 = private unnamed_addr constant [13 x i8] c"CHARCONSTANT\00", align 1
@.str.105 = private unnamed_addr constant [6 x i8] c"TRUE_\00", align 1
@.str.106 = private unnamed_addr constant [7 x i8] c"FALSE_\00", align 1
@.str.107 = private unnamed_addr constant [7 x i8] c"INPUT_\00", align 1
@.str.108 = private unnamed_addr constant [7 x i8] c"XMLDOC\00", align 1
@.str.109 = private unnamed_addr constant [4 x i8] c"REF\00", align 1
@.str.110 = private unnamed_addr constant [9 x i8] c"ANCESTOR\00", align 1
@.str.111 = private unnamed_addr constant [10 x i8] c"CONSTDECL\00", align 1
@.str.112 = private unnamed_addr constant [12 x i8] c"NUMERICTYPE\00", align 1
@.str.113 = private unnamed_addr constant [11 x i8] c"STRINGTYPE\00", align 1
@.str.114 = private unnamed_addr constant [9 x i8] c"BOOLTYPE\00", align 1
@.str.115 = private unnamed_addr constant [8 x i8] c"XMLTYPE\00", align 1
@.str.116 = private unnamed_addr constant [8 x i8] c"ANYTYPE\00", align 1
@.str.117 = private unnamed_addr constant [10 x i8] c"CPLUSPLUS\00", align 1
@.str.118 = private unnamed_addr constant [14 x i8] c"CPLUSPLUSBODY\00", align 1
@.str.119 = private unnamed_addr constant [8 x i8] c"MESSAGE\00", align 1
@.str.120 = private unnamed_addr constant [6 x i8] c"CLASS\00", align 1
@.str.121 = private unnamed_addr constant [7 x i8] c"STRUCT\00", align 1
@.str.122 = private unnamed_addr constant [5 x i8] c"ENUM\00", align 1
@.str.123 = private unnamed_addr constant [11 x i8] c"NONCOBJECT\00", align 1
@.str.124 = private unnamed_addr constant [8 x i8] c"EXTENDS\00", align 1
@.str.125 = private unnamed_addr constant [7 x i8] c"FIELDS\00", align 1
@.str.126 = private unnamed_addr constant [11 x i8] c"PROPERTIES\00", align 1
@.str.127 = private unnamed_addr constant [9 x i8] c"ABSTRACT\00", align 1
@.str.128 = private unnamed_addr constant [9 x i8] c"READONLY\00", align 1
@.str.129 = private unnamed_addr constant [9 x i8] c"CHARTYPE\00", align 1
@.str.130 = private unnamed_addr constant [10 x i8] c"SHORTTYPE\00", align 1
@.str.131 = private unnamed_addr constant [8 x i8] c"INTTYPE\00", align 1
@.str.132 = private unnamed_addr constant [9 x i8] c"LONGTYPE\00", align 1
@.str.133 = private unnamed_addr constant [11 x i8] c"DOUBLETYPE\00", align 1
@.str.134 = private unnamed_addr constant [10 x i8] c"UNSIGNED_\00", align 1
@.str.135 = private unnamed_addr constant [7 x i8] c"SIZEOF\00", align 1
@.str.136 = private unnamed_addr constant [12 x i8] c"SUBMODINDEX\00", align 1
@.str.137 = private unnamed_addr constant [9 x i8] c"PLUSPLUS\00", align 1
@.str.138 = private unnamed_addr constant [3 x i8] c"EQ\00", align 1
@.str.139 = private unnamed_addr constant [3 x i8] c"NE\00", align 1
@.str.140 = private unnamed_addr constant [3 x i8] c"GT\00", align 1
@.str.141 = private unnamed_addr constant [3 x i8] c"GE\00", align 1
@.str.142 = private unnamed_addr constant [3 x i8] c"LS\00", align 1
@.str.143 = private unnamed_addr constant [3 x i8] c"LE\00", align 1
@.str.144 = private unnamed_addr constant [4 x i8] c"AND\00", align 1
@.str.145 = private unnamed_addr constant [3 x i8] c"OR\00", align 1
@.str.146 = private unnamed_addr constant [4 x i8] c"XOR\00", align 1
@.str.147 = private unnamed_addr constant [4 x i8] c"NOT\00", align 1
@.str.148 = private unnamed_addr constant [8 x i8] c"BIN_AND\00", align 1
@.str.149 = private unnamed_addr constant [7 x i8] c"BIN_OR\00", align 1
@.str.150 = private unnamed_addr constant [8 x i8] c"BIN_XOR\00", align 1
@.str.151 = private unnamed_addr constant [10 x i8] c"BIN_COMPL\00", align 1
@.str.152 = private unnamed_addr constant [11 x i8] c"SHIFT_LEFT\00", align 1
@.str.153 = private unnamed_addr constant [12 x i8] c"SHIFT_RIGHT\00", align 1
@.str.154 = private unnamed_addr constant [13 x i8] c"INVALID_CHAR\00", align 1
@.str.155 = private unnamed_addr constant [4 x i8] c"'?'\00", align 1
@.str.156 = private unnamed_addr constant [4 x i8] c"':'\00", align 1
@.str.157 = private unnamed_addr constant [4 x i8] c"'+'\00", align 1
@.str.158 = private unnamed_addr constant [4 x i8] c"'-'\00", align 1
@.str.159 = private unnamed_addr constant [4 x i8] c"'*'\00", align 1
@.str.160 = private unnamed_addr constant [4 x i8] c"'/'\00", align 1
@.str.161 = private unnamed_addr constant [4 x i8] c"'%'\00", align 1
@.str.162 = private unnamed_addr constant [4 x i8] c"'^'\00", align 1
@.str.163 = private unnamed_addr constant [5 x i8] c"UMIN\00", align 1
@.str.164 = private unnamed_addr constant [4 x i8] c"';'\00", align 1
@.str.165 = private unnamed_addr constant [4 x i8] c"','\00", align 1
@.str.166 = private unnamed_addr constant [4 x i8] c"'['\00", align 1
@.str.167 = private unnamed_addr constant [4 x i8] c"']'\00", align 1
@.str.168 = private unnamed_addr constant [4 x i8] c"'='\00", align 1
@.str.169 = private unnamed_addr constant [4 x i8] c"'('\00", align 1
@.str.170 = private unnamed_addr constant [4 x i8] c"')'\00", align 1
@.str.171 = private unnamed_addr constant [4 x i8] c"'.'\00", align 1
@.str.172 = private unnamed_addr constant [8 x i8] c"$accept\00", align 1
@.str.173 = private unnamed_addr constant [19 x i8] c"networkdescription\00", align 1
@.str.174 = private unnamed_addr constant [16 x i8] c"somedefinitions\00", align 1
@.str.175 = private unnamed_addr constant [11 x i8] c"definition\00", align 1
@.str.176 = private unnamed_addr constant [7 x i8] c"import\00", align 1
@.str.177 = private unnamed_addr constant [10 x i8] c"filenames\00", align 1
@.str.178 = private unnamed_addr constant [9 x i8] c"filename\00", align 1
@.str.179 = private unnamed_addr constant [18 x i8] c"channeldefinition\00", align 1
@.str.180 = private unnamed_addr constant [14 x i8] c"channelheader\00", align 1
@.str.181 = private unnamed_addr constant [21 x i8] c"opt_channelattrblock\00", align 1
@.str.182 = private unnamed_addr constant [17 x i8] c"channelattrblock\00", align 1
@.str.183 = private unnamed_addr constant [11 x i8] c"endchannel\00", align 1
@.str.184 = private unnamed_addr constant [17 x i8] c"simpledefinition\00", align 1
@.str.185 = private unnamed_addr constant [13 x i8] c"simpleheader\00", align 1
@.str.186 = private unnamed_addr constant [10 x i8] c"endsimple\00", align 1
@.str.187 = private unnamed_addr constant [17 x i8] c"moduledefinition\00", align 1
@.str.188 = private unnamed_addr constant [13 x i8] c"moduleheader\00", align 1
@.str.189 = private unnamed_addr constant [10 x i8] c"endmodule\00", align 1
@.str.190 = private unnamed_addr constant [17 x i8] c"opt_displayblock\00", align 1
@.str.191 = private unnamed_addr constant [13 x i8] c"displayblock\00", align 1
@.str.192 = private unnamed_addr constant [15 x i8] c"opt_paramblock\00", align 1
@.str.193 = private unnamed_addr constant [11 x i8] c"paramblock\00", align 1
@.str.194 = private unnamed_addr constant [3 x i8] c"@1\00", align 1
@.str.195 = private unnamed_addr constant [15 x i8] c"opt_parameters\00", align 1
@.str.196 = private unnamed_addr constant [11 x i8] c"parameters\00", align 1
@.str.197 = private unnamed_addr constant [10 x i8] c"parameter\00", align 1
@.str.198 = private unnamed_addr constant [14 x i8] c"opt_gateblock\00", align 1
@.str.199 = private unnamed_addr constant [10 x i8] c"gateblock\00", align 1
@.str.200 = private unnamed_addr constant [3 x i8] c"@2\00", align 1
@.str.201 = private unnamed_addr constant [10 x i8] c"opt_gates\00", align 1
@.str.202 = private unnamed_addr constant [6 x i8] c"gates\00", align 1
@.str.203 = private unnamed_addr constant [7 x i8] c"gatesI\00", align 1
@.str.204 = private unnamed_addr constant [6 x i8] c"gateI\00", align 1
@.str.205 = private unnamed_addr constant [7 x i8] c"gatesO\00", align 1
@.str.206 = private unnamed_addr constant [6 x i8] c"gateO\00", align 1
@.str.207 = private unnamed_addr constant [16 x i8] c"opt_submodblock\00", align 1
@.str.208 = private unnamed_addr constant [12 x i8] c"submodblock\00", align 1
@.str.209 = private unnamed_addr constant [3 x i8] c"@3\00", align 1
@.str.210 = private unnamed_addr constant [15 x i8] c"opt_submodules\00", align 1
@.str.211 = private unnamed_addr constant [11 x i8] c"submodules\00", align 1
@.str.212 = private unnamed_addr constant [10 x i8] c"submodule\00", align 1
@.str.213 = private unnamed_addr constant [3 x i8] c"@4\00", align 1
@.str.214 = private unnamed_addr constant [3 x i8] c"@5\00", align 1
@.str.215 = private unnamed_addr constant [3 x i8] c"@6\00", align 1
@.str.216 = private unnamed_addr constant [3 x i8] c"@7\00", align 1
@.str.217 = private unnamed_addr constant [15 x i8] c"submodule_body\00", align 1
@.str.218 = private unnamed_addr constant [21 x i8] c"opt_substparamblocks\00", align 1
@.str.219 = private unnamed_addr constant [17 x i8] c"substparamblocks\00", align 1
@.str.220 = private unnamed_addr constant [16 x i8] c"substparamblock\00", align 1
@.str.221 = private unnamed_addr constant [3 x i8] c"@8\00", align 1
@.str.222 = private unnamed_addr constant [3 x i8] c"@9\00", align 1
@.str.223 = private unnamed_addr constant [20 x i8] c"opt_substparameters\00", align 1
@.str.224 = private unnamed_addr constant [16 x i8] c"substparameters\00", align 1
@.str.225 = private unnamed_addr constant [15 x i8] c"substparameter\00", align 1
@.str.226 = private unnamed_addr constant [4 x i8] c"@10\00", align 1
@.str.227 = private unnamed_addr constant [11 x i8] c"inputvalue\00", align 1
@.str.228 = private unnamed_addr constant [19 x i8] c"opt_gatesizeblocks\00", align 1
@.str.229 = private unnamed_addr constant [15 x i8] c"gatesizeblocks\00", align 1
@.str.230 = private unnamed_addr constant [14 x i8] c"gatesizeblock\00", align 1
@.str.231 = private unnamed_addr constant [4 x i8] c"@11\00", align 1
@.str.232 = private unnamed_addr constant [4 x i8] c"@12\00", align 1
@.str.233 = private unnamed_addr constant [14 x i8] c"opt_gatesizes\00", align 1
@.str.234 = private unnamed_addr constant [10 x i8] c"gatesizes\00", align 1
@.str.235 = private unnamed_addr constant [9 x i8] c"gatesize\00", align 1
@.str.236 = private unnamed_addr constant [24 x i8] c"opt_submod_displayblock\00", align 1
@.str.237 = private unnamed_addr constant [14 x i8] c"opt_connblock\00", align 1
@.str.238 = private unnamed_addr constant [10 x i8] c"connblock\00", align 1
@.str.239 = private unnamed_addr constant [4 x i8] c"@13\00", align 1
@.str.240 = private unnamed_addr constant [4 x i8] c"@14\00", align 1
@.str.241 = private unnamed_addr constant [16 x i8] c"opt_connections\00", align 1
@.str.242 = private unnamed_addr constant [12 x i8] c"connections\00", align 1
@.str.243 = private unnamed_addr constant [11 x i8] c"connection\00", align 1
@.str.244 = private unnamed_addr constant [15 x i8] c"loopconnection\00", align 1
@.str.245 = private unnamed_addr constant [4 x i8] c"@15\00", align 1
@.str.246 = private unnamed_addr constant [12 x i8] c"loopvarlist\00", align 1
@.str.247 = private unnamed_addr constant [8 x i8] c"loopvar\00", align 1
@.str.248 = private unnamed_addr constant [18 x i8] c"opt_conncondition\00", align 1
@.str.249 = private unnamed_addr constant [20 x i8] c"opt_conn_displaystr\00", align 1
@.str.250 = private unnamed_addr constant [19 x i8] c"notloopconnections\00", align 1
@.str.251 = private unnamed_addr constant [18 x i8] c"notloopconnection\00", align 1
@.str.252 = private unnamed_addr constant [13 x i8] c"leftgatespec\00", align 1
@.str.253 = private unnamed_addr constant [8 x i8] c"leftmod\00", align 1
@.str.254 = private unnamed_addr constant [9 x i8] c"leftgate\00", align 1
@.str.255 = private unnamed_addr constant [15 x i8] c"parentleftgate\00", align 1
@.str.256 = private unnamed_addr constant [14 x i8] c"rightgatespec\00", align 1
@.str.257 = private unnamed_addr constant [9 x i8] c"rightmod\00", align 1
@.str.258 = private unnamed_addr constant [10 x i8] c"rightgate\00", align 1
@.str.259 = private unnamed_addr constant [16 x i8] c"parentrightgate\00", align 1
@.str.260 = private unnamed_addr constant [13 x i8] c"channeldescr\00", align 1
@.str.261 = private unnamed_addr constant [13 x i8] c"channelattrs\00", align 1
@.str.262 = private unnamed_addr constant [9 x i8] c"chanattr\00", align 1
@.str.263 = private unnamed_addr constant [18 x i8] c"networkdefinition\00", align 1
@.str.264 = private unnamed_addr constant [14 x i8] c"networkheader\00", align 1
@.str.265 = private unnamed_addr constant [11 x i8] c"endnetwork\00", align 1
@.str.266 = private unnamed_addr constant [7 x i8] c"vector\00", align 1
@.str.267 = private unnamed_addr constant [11 x i8] c"expression\00", align 1
@.str.268 = private unnamed_addr constant [12 x i8] c"xmldocvalue\00", align 1
@.str.269 = private unnamed_addr constant [5 x i8] c"expr\00", align 1
@.str.270 = private unnamed_addr constant [12 x i8] c"simple_expr\00", align 1
@.str.271 = private unnamed_addr constant [15 x i8] c"parameter_expr\00", align 1
@.str.272 = private unnamed_addr constant [13 x i8] c"special_expr\00", align 1
@.str.273 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.274 = private unnamed_addr constant [14 x i8] c"stringliteral\00", align 1
@.str.275 = private unnamed_addr constant [12 x i8] c"boolliteral\00", align 1
@.str.276 = private unnamed_addr constant [11 x i8] c"numliteral\00", align 1
@.str.277 = private unnamed_addr constant [9 x i8] c"quantity\00", align 1
@.str.278 = private unnamed_addr constant [14 x i8] c"opt_semicolon\00", align 1
@.str.279 = private unnamed_addr constant [19 x i8] c"comma_or_semicolon\00", align 1
@_ZL7yyrline = internal unnamed_addr constant [242 x i16] [i16 0, i16 185, i16 185, i16 189, i16 190, i16 194, i16 196, i16 198, i16 200, i16 202, i16 210, i16 215, i16 216, i16 220, i16 233, i16 241, i16 253, i16 255, i16 260, i16 270, i16 283, i16 284, i16 291, i16 302, i16 311, i16 312, i16 319, i16 333, i16 342, i16 343, i16 350, i16 351, i16 355, i16 382, i16 383, i16 388, i16 387, i16 399, i16 400, i16 404, i16 409, i16 420, i16 426, i16 432, i16 437, i16 442, i16 447, i16 452, i16 457, i16 462, i16 467, i16 478, i16 479, i16 484, i16 483, i16 495, i16 496, i16 500, i16 501, i16 502, i16 503, i16 507, i16 508, i16 512, i16 520, i16 530, i16 531, i16 535, i16 543, i16 556, i16 557, i16 562, i16 561, i16 573, i16 574, i16 578, i16 579, i16 584, i16 583, i16 595, i16 594, i16 607, i16 606, i16 619, i16 618, i16 634, i16 643, i16 645, i16 649, i16 650, i16 655, i16 654, i16 661, i16 660, i16 673, i16 674, i16 678, i16 679, i16 683, i16 691, i16 690, i16 703, i16 711, i16 715, i16 716, i16 723, i16 725, i16 729, i16 730, i16 735, i16 734, i16 741, i16 740, i16 753, i16 754, i16 758, i16 759, i16 763, i16 777, i16 798, i16 805, i16 806, i16 811, i16 810, i16 821, i16 820, i16 833, i16 834, i16 838, i16 839, i16 843, i16 844, i16 849, i16 848, i16 863, i16 864, i16 868, i16 879, i16 886, i16 890, i16 914, i16 918, i16 919, i16 923, i16 929, i16 936, i16 943, i16 954, i16 955, i16 959, i16 966, i16 975, i16 980, i16 984, i16 992, i16 1000, i16 1007, i16 1018, i16 1019, i16 1023, i16 1028, i16 1035, i16 1040, i16 1044, i16 1052, i16 1057, i16 1061, i16 1070, i16 1079, i16 1085, i16 1086, i16 1090, i16 1104, i16 1114, i16 1128, i16 1138, i16 1144, i16 1148, i16 1159, i16 1161, i16 1166, i16 1167, i16 1170, i16 1172, i16 1174, i16 1176, i16 1178, i16 1180, i16 1183, i16 1187, i16 1189, i16 1191, i16 1193, i16 1195, i16 1197, i16 1200, i16 1202, i16 1204, i16 1207, i16 1211, i16 1213, i16 1215, i16 1218, i16 1221, i16 1223, i16 1225, i16 1228, i16 1230, i16 1232, i16 1235, i16 1237, i16 1239, i16 1241, i16 1243, i16 1248, i16 1249, i16 1250, i16 1254, i16 1259, i16 1264, i16 1269, i16 1274, i16 1282, i16 1284, i16 1286, i16 1291, i16 1292, i16 1293, i16 1297, i16 1302, i16 1304, i16 1309, i16 1311, i16 1313, i16 1318, i16 1319, i16 1320, i16 1321, i16 1324, i16 1324, i16 1326, i16 1326], align 16
@.str.280 = private unnamed_addr constant [39 x i8] c"Reducing stack by rule %d (line %lu):\0A\00", align 1
@.str.281 = private unnamed_addr constant [10 x i8] c"   $%d = \00", align 1
@_ZL5yyrhs = internal unnamed_addr constant [784 x i16] [i16 105, i16 0, i16 -1, i16 106, i16 -1, i16 106, i16 107, i16 -1, i16 -1, i16 108, i16 -1, i16 111, i16 -1, i16 116, i16 -1, i16 119, i16 -1, i16 195, i16 -1, i16 3, i16 109, i16 96, i16 -1, i16 109, i16 97, i16 110, i16 -1, i16 110, i16 -1, i16 35, i16 -1, i16 112, i16 113, i16 115, i16 -1, i16 5, i16 34, i16 -1, i16 -1, i16 114, i16 -1, i16 114, i16 31, i16 199, i16 210, i16 -1, i16 31, i16 199, i16 210, i16 -1, i16 26, i16 34, i16 210, i16 -1, i16 26, i16 210, i16 -1, i16 117, i16 124, i16 130, i16 118, i16 -1, i16 4, i16 34, i16 -1, i16 24, i16 34, i16 210, i16 -1, i16 24, i16 210, i16 -1, i16 120, i16 124, i16 130, i16 139, i16 169, i16 122, i16 121, i16 -1, i16 6, i16 34, i16 -1, i16 25, i16 34, i16 210, i16 -1, i16 25, i16 210, i16 -1, i16 123, i16 -1, i16 -1, i16 12, i16 88, i16 35, i16 96, i16 -1, i16 125, i16 -1, i16 -1, i16 -1, i16 7, i16 88, i16 126, i16 127, i16 -1, i16 128, i16 96, i16 -1, i16 -1, i16 128, i16 97, i16 129, i16 -1, i16 129, i16 -1, i16 34, i16 -1, i16 34, i16 88, i16 44, i16 -1, i16 43, i16 34, i16 -1, i16 34, i16 88, i16 43, i16 -1, i16 34, i16 88, i16 43, i16 44, i16 -1, i16 34, i16 88, i16 44, i16 43, i16 -1, i16 34, i16 88, i16 45, i16 -1, i16 34, i16 88, i16 46, i16 -1, i16 34, i16 88, i16 47, i16 -1, i16 34, i16 88, i16 48, i16 -1, i16 131, i16 -1, i16 -1, i16 -1, i16 8, i16 88, i16 132, i16 133, i16 -1, i16 134, i16 -1, i16 -1, i16 134, i16 13, i16 135, i16 96, i16 -1, i16 13, i16 135, i16 96, i16 -1, i16 134, i16 14, i16 137, i16 96, i16 -1, i16 14, i16 137, i16 96, i16 -1, i16 135, i16 97, i16 136, i16 -1, i16 136, i16 -1, i16 34, i16 98, i16 99, i16 -1, i16 34, i16 -1, i16 137, i16 97, i16 138, i16 -1, i16 138, i16 -1, i16 34, i16 98, i16 99, i16 -1, i16 34, i16 -1, i16 140, i16 -1, i16 -1, i16 -1, i16 10, i16 88, i16 141, i16 142, i16 -1, i16 143, i16 -1, i16 -1, i16 143, i16 144, i16 -1, i16 144, i16 -1, i16 -1, i16 34, i16 88, i16 34, i16 210, i16 145, i16 149, i16 -1, i16 -1, i16 34, i16 88, i16 34, i16 198, i16 210, i16 146, i16 149, i16 -1, i16 -1, i16 34, i16 88, i16 34, i16 22, i16 34, i16 210, i16 147, i16 149, i16 -1, i16 -1, i16 34, i16 88, i16 34, i16 198, i16 22, i16 34, i16 210, i16 148, i16 149, i16 -1, i16 150, i16 160, i16 168, i16 -1, i16 151, i16 -1, i16 -1, i16 151, i16 152, i16 -1, i16 152, i16 -1, i16 -1, i16 7, i16 88, i16 153, i16 155, i16 -1, i16 -1, i16 7, i16 21, i16 199, i16 88, i16 154, i16 155, i16 -1, i16 156, i16 96, i16 -1, i16 -1, i16 156, i16 97, i16 157, i16 -1, i16 157, i16 -1, i16 34, i16 100, i16 199, i16 -1, i16 -1, i16 34, i16 100, i16 39, i16 158, i16 159, i16 -1, i16 101, i16 199, i16 97, i16 35, i16 102, i16 -1, i16 101, i16 199, i16 102, i16 -1, i16 101, i16 102, i16 -1, i16 -1, i16 161, i16 -1, i16 -1, i16 161, i16 162, i16 -1, i16 162, i16 -1, i16 -1, i16 9, i16 88, i16 163, i16 165, i16 -1, i16 -1, i16 9, i16 21, i16 199, i16 88, i16 164, i16 165, i16 -1, i16 166, i16 96, i16 -1, i16 -1, i16 166, i16 97, i16 167, i16 -1, i16 167, i16 -1, i16 34, i16 198, i16 -1, i16 12, i16 88, i16 35, i16 96, i16 -1, i16 -1, i16 170, i16 -1, i16 -1, i16 -1, i16 11, i16 15, i16 88, i16 171, i16 173, i16 -1, i16 -1, i16 11, i16 88, i16 172, i16 173, i16 -1, i16 174, i16 -1, i16 -1, i16 174, i16 175, i16 -1, i16 175, i16 -1, i16 176, i16 -1, i16 183, i16 -1, i16 -1, i16 18, i16 177, i16 178, i16 20, i16 182, i16 28, i16 210, i16 -1, i16 179, i16 97, i16 178, i16 -1, i16 179, i16 -1, i16 34, i16 100, i16 199, i16 19, i16 199, i16 -1, i16 21, i16 199, i16 -1, i16 -1, i16 12, i16 35, i16 -1, i16 -1, i16 182, i16 183, i16 -1, i16 183, i16 -1, i16 184, i16 17, i16 188, i16 180, i16 181, i16 211, i16 -1, i16 184, i16 17, i16 192, i16 17, i16 188, i16 180, i16 181, i16 211, i16 -1, i16 184, i16 16, i16 188, i16 180, i16 181, i16 211, i16 -1, i16 184, i16 16, i16 192, i16 16, i16 188, i16 180, i16 181, i16 211, i16 -1, i16 185, i16 103, i16 186, i16 -1, i16 187, i16 -1, i16 34, i16 198, i16 -1, i16 34, i16 -1, i16 34, i16 198, i16 -1, i16 34, i16 -1, i16 34, i16 69, i16 -1, i16 34, i16 198, i16 -1, i16 34, i16 -1, i16 34, i16 69, i16 -1, i16 189, i16 103, i16 190, i16 -1, i16 191, i16 -1, i16 34, i16 198, i16 -1, i16 34, i16 -1, i16 34, i16 198, i16 -1, i16 34, i16 -1, i16 34, i16 69, i16 -1, i16 34, i16 198, i16 -1, i16 34, i16 -1, i16 34, i16 69, i16 -1, i16 193, i16 -1, i16 34, i16 -1, i16 194, i16 -1, i16 193, i16 194, i16 -1, i16 31, i16 199, i16 -1, i16 196, i16 150, i16 197, i16 -1, i16 23, i16 34, i16 88, i16 34, i16 210, i16 -1, i16 27, i16 210, i16 -1, i16 98, i16 199, i16 99, i16 -1, i16 201, i16 -1, i16 200, i16 -1, i16 40, i16 101, i16 206, i16 97, i16 206, i16 102, i16 -1, i16 40, i16 101, i16 206, i16 102, i16 -1, i16 202, i16 -1, i16 101, i16 201, i16 102, i16 -1, i16 201, i16 89, i16 201, i16 -1, i16 201, i16 90, i16 201, i16 -1, i16 201, i16 91, i16 201, i16 -1, i16 201, i16 92, i16 201, i16 -1, i16 201, i16 93, i16 201, i16 -1, i16 201, i16 94, i16 201, i16 -1, i16 90, i16 201, i16 -1, i16 201, i16 70, i16 201, i16 -1, i16 201, i16 71, i16 201, i16 -1, i16 201, i16 72, i16 201, i16 -1, i16 201, i16 73, i16 201, i16 -1, i16 201, i16 74, i16 201, i16 -1, i16 201, i16 75, i16 201, i16 -1, i16 201, i16 76, i16 201, i16 -1, i16 201, i16 77, i16 201, i16 -1, i16 201, i16 78, i16 201, i16 -1, i16 79, i16 201, i16 -1, i16 201, i16 80, i16 201, i16 -1, i16 201, i16 81, i16 201, i16 -1, i16 201, i16 82, i16 201, i16 -1, i16 83, i16 201, i16 -1, i16 201, i16 84, i16 201, i16 -1, i16 201, i16 85, i16 201, i16 -1, i16 201, i16 87, i16 201, i16 88, i16 201, i16 -1, i16 63, i16 101, i16 201, i16 102, i16 -1, i16 65, i16 101, i16 201, i16 102, i16 -1, i16 45, i16 101, i16 201, i16 102, i16 -1, i16 34, i16 101, i16 102, i16 -1, i16 34, i16 101, i16 201, i16 102, i16 -1, i16 34, i16 101, i16 201, i16 97, i16 201, i16 102, i16 -1, i16 34, i16 101, i16 201, i16 97, i16 201, i16 97, i16 201, i16 102, i16 -1, i16 34, i16 101, i16 201, i16 97, i16 201, i16 97, i16 201, i16 97, i16 201, i16 102, i16 -1, i16 203, i16 -1, i16 204, i16 -1, i16 205, i16 -1, i16 34, i16 -1, i16 41, i16 34, i16 -1, i16 41, i16 42, i16 34, i16 -1, i16 42, i16 41, i16 34, i16 -1, i16 42, i16 34, i16 -1, i16 68, i16 -1, i16 68, i16 101, i16 102, i16 -1, i16 67, i16 101, i16 34, i16 102, i16 -1, i16 206, i16 -1, i16 207, i16 -1, i16 208, i16 -1, i16 35, i16 -1, i16 37, i16 -1, i16 38, i16 -1, i16 32, i16 -1, i16 33, i16 -1, i16 209, i16 -1, i16 209, i16 32, i16 34, i16 -1, i16 209, i16 33, i16 34, i16 -1, i16 32, i16 34, i16 -1, i16 33, i16 34, i16 -1, i16 96, i16 -1, i16 -1, i16 97, i16 -1, i16 96, i16 -1], align 16
@_ZL6yyprhs = internal unnamed_addr constant [242 x i16] [i16 0, i16 0, i16 3, i16 5, i16 8, i16 9, i16 11, i16 13, i16 15, i16 17, i16 19, i16 23, i16 27, i16 29, i16 31, i16 35, i16 38, i16 39, i16 41, i16 46, i16 50, i16 54, i16 57, i16 62, i16 65, i16 69, i16 72, i16 80, i16 83, i16 87, i16 90, i16 92, i16 93, i16 98, i16 100, i16 101, i16 102, i16 107, i16 110, i16 111, i16 115, i16 117, i16 119, i16 123, i16 126, i16 130, i16 135, i16 140, i16 144, i16 148, i16 152, i16 156, i16 158, i16 159, i16 160, i16 165, i16 167, i16 168, i16 173, i16 177, i16 182, i16 186, i16 190, i16 192, i16 196, i16 198, i16 202, i16 204, i16 208, i16 210, i16 212, i16 213, i16 214, i16 219, i16 221, i16 222, i16 225, i16 227, i16 228, i16 235, i16 236, i16 244, i16 245, i16 254, i16 255, i16 265, i16 269, i16 271, i16 272, i16 275, i16 277, i16 278, i16 283, i16 284, i16 291, i16 294, i16 295, i16 299, i16 301, i16 305, i16 306, i16 312, i16 318, i16 322, i16 325, i16 326, i16 328, i16 329, i16 332, i16 334, i16 335, i16 340, i16 341, i16 348, i16 351, i16 352, i16 356, i16 358, i16 361, i16 366, i16 367, i16 369, i16 370, i16 371, i16 377, i16 378, i16 383, i16 385, i16 386, i16 389, i16 391, i16 393, i16 395, i16 396, i16 404, i16 408, i16 410, i16 416, i16 419, i16 420, i16 423, i16 424, i16 427, i16 429, i16 436, i16 445, i16 452, i16 461, i16 465, i16 467, i16 470, i16 472, i16 475, i16 477, i16 480, i16 483, i16 485, i16 488, i16 492, i16 494, i16 497, i16 499, i16 502, i16 504, i16 507, i16 510, i16 512, i16 515, i16 517, i16 519, i16 521, i16 524, i16 527, i16 531, i16 537, i16 540, i16 544, i16 546, i16 548, i16 555, i16 560, i16 562, i16 566, i16 570, i16 574, i16 578, i16 582, i16 586, i16 590, i16 593, i16 597, i16 601, i16 605, i16 609, i16 613, i16 617, i16 621, i16 625, i16 629, i16 632, i16 636, i16 640, i16 644, i16 647, i16 651, i16 655, i16 661, i16 666, i16 671, i16 676, i16 680, i16 685, i16 692, i16 701, i16 712, i16 714, i16 716, i16 718, i16 720, i16 723, i16 727, i16 731, i16 734, i16 736, i16 740, i16 745, i16 747, i16 749, i16 751, i16 753, i16 755, i16 757, i16 759, i16 761, i16 763, i16 767, i16 771, i16 774, i16 777, i16 779, i16 780, i16 782], align 16
@.str.282 = private unnamed_addr constant [10 x i8] c"Stack now\00", align 1
@.str.283 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@_ZZL14yysyntax_errorPciiE12yyunexpected = internal unnamed_addr constant [28 x i8] c"syntax error, unexpected %s\00", align 16
@_ZZL14yysyntax_errorPciiE11yyexpecting = internal constant [15 x i8] c", expecting %s\00", align 1
@_ZZL14yysyntax_errorPciiE4yyor = internal constant [7 x i8] c" or %s\00", align 1
@.str.284 = private unnamed_addr constant [9 x i8] c"Deleting\00", align 1
@.str.285 = private unnamed_addr constant [49 x i8] c"non-reentrant parser invoked again while parsing\00", align 1
@_ZTS17opp_runtime_error = linkonce_odr dso_local constant [20 x i8] c"17opp_runtime_error\00", comdat, align 1
@_ZTI17opp_runtime_error = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS17opp_runtime_error, ptr @_ZTISt13runtime_error }, comdat, align 8
@_ZTV17opp_runtime_error = linkonce_odr dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTI17opp_runtime_error, ptr @_ZN17opp_runtime_errorD2Ev, ptr @_ZN17opp_runtime_errorD0Ev, ptr @_ZNK17opp_runtime_error4whatEv] }, comdat, align 8

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_Z11ned1yyparsev() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 !prof !37 {
  %1 = alloca [128 x i8], align 16
  %2 = alloca [200 x i16], align 16
  %3 = alloca [200 x ptr], align 16
  %4 = alloca [200 x %struct.my_yyltype], align 16
  %5 = alloca %struct.my_yyltype, align 8
  %6 = alloca %struct.my_yyltype, align 8
  %7 = alloca %struct.my_yyltype, align 8
  %8 = alloca %struct.my_yyltype, align 8
  %9 = alloca %struct.my_yyltype, align 8
  %10 = alloca %struct.my_yyltype, align 8
  %11 = alloca %struct.my_yyltype, align 8
  %12 = alloca %struct.my_yyltype, align 8
  %13 = alloca %"class.std::__cxx11::basic_string", align 8
  %14 = alloca %"class.std::__cxx11::basic_string", align 8
  %15 = alloca %struct.my_yyltype, align 8
  %16 = alloca %struct.my_yyltype, align 8
  %17 = alloca %struct.my_yyltype, align 8
  %18 = alloca %struct.my_yyltype, align 8
  %19 = alloca %struct.my_yyltype, align 8
  %20 = alloca %struct.my_yyltype, align 8
  %21 = alloca %struct.my_yyltype, align 8
  %22 = alloca %struct.my_yyltype, align 8
  %23 = alloca %struct.my_yyltype, align 8
  %24 = alloca %struct.my_yyltype, align 8
  %25 = alloca %struct.my_yyltype, align 8
  %26 = alloca %struct.my_yyltype, align 8
  %27 = alloca %struct.my_yyltype, align 8
  %28 = alloca %struct.my_yyltype, align 8
  %29 = alloca %struct.my_yyltype, align 8
  %30 = alloca %"class.std::__cxx11::basic_string", align 8
  %31 = alloca %"class.std::__cxx11::basic_string", align 8
  %32 = alloca %struct.my_yyltype, align 8
  %33 = alloca %struct.my_yyltype, align 8
  %34 = alloca %struct.my_yyltype, align 8
  %35 = alloca %"class.std::__cxx11::basic_string", align 8
  %36 = alloca %"class.std::__cxx11::basic_string", align 8
  %37 = alloca %struct.my_yyltype, align 8
  %38 = alloca %struct.my_yyltype, align 8
  %39 = alloca %struct.my_yyltype, align 8
  %40 = alloca %struct.my_yyltype, align 8
  %41 = alloca %struct.my_yyltype, align 8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %1) #23
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %2) #23
  call void @llvm.lifetime.start.p0(i64 1600, ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(i64 6400, ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #23
  %42 = load i32, ptr @ned1yydebug, align 4, !tbaa !38
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %0
  %45 = load ptr, ptr @stderr, align 8, !tbaa !42
  %46 = tail call i64 @fwrite(ptr nonnull @.str, i64 15, i64 1, ptr %45) #24
  br label %47

47:                                               ; preds = %44, %0
  store i32 0, ptr @ned1yynerrs, align 4, !tbaa !38
  store i32 -2, ptr @ned1yychar, align 4, !tbaa !38
  store i16 0, ptr %2, align 16, !tbaa !44
  %48 = getelementptr inbounds %struct.my_yyltype, ptr %5, i64 0, i32 1
  %49 = getelementptr inbounds %struct.my_yyltype, ptr %5, i64 0, i32 2
  %50 = getelementptr inbounds %struct.my_yyltype, ptr %5, i64 0, i32 3
  %51 = getelementptr inbounds %struct.my_yyltype, ptr %5, i64 0, i32 4
  %52 = getelementptr inbounds %struct.my_yyltype, ptr %5, i64 0, i32 3
  %53 = getelementptr inbounds %struct.my_yyltype, ptr %5, i64 0, i32 1
  %54 = getelementptr inbounds %struct.my_yyltype, ptr %5, i64 0, i32 4
  %55 = getelementptr inbounds %struct.my_yyltype, ptr %5, i64 0, i32 2
  %56 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %36, i64 0, i32 2
  %57 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %35, i64 0, i32 2
  %58 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %31, i64 0, i32 2
  %59 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %30, i64 0, i32 2
  %60 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %14, i64 0, i32 2
  %61 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %13, i64 0, i32 2
  br label %72

62:                                               ; preds = %1739, %1743, %160
  %63 = phi ptr [ %1722, %1739 ], [ %1722, %1743 ], [ %163, %160 ]
  %64 = phi ptr [ %1721, %1739 ], [ %1721, %1743 ], [ %162, %160 ]
  %65 = phi i64 [ %1714, %1739 ], [ %1714, %1743 ], [ %75, %160 ]
  %66 = phi i32 [ %171, %1739 ], [ %171, %1743 ], [ %127, %160 ]
  %67 = phi i32 [ %1742, %1739 ], [ %1746, %1743 ], [ %139, %160 ]
  %68 = add nsw i64 %65, 2
  %69 = getelementptr inbounds i8, ptr %2, i64 %68
  %70 = trunc i32 %67 to i16
  store i16 %70, ptr %69, align 2, !tbaa !44
  %71 = icmp slt i64 %65, 396
  br i1 %71, label %72, label %1793

72:                                               ; preds = %47, %62
  %73 = phi i32 [ 0, %47 ], [ %67, %62 ]
  %74 = phi i32 [ 0, %47 ], [ %66, %62 ]
  %75 = phi i64 [ 0, %47 ], [ %68, %62 ]
  %76 = phi ptr [ %3, %47 ], [ %64, %62 ]
  %77 = phi ptr [ %4, %47 ], [ %63, %62 ]
  %78 = load i32, ptr @ned1yydebug, align 4, !tbaa !38
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %72
  %81 = load ptr, ptr @stderr, align 8, !tbaa !42
  %82 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %81, ptr noundef nonnull @.str.1, i32 noundef %73) #24
  br label %83

83:                                               ; preds = %72, %80
  %84 = sext i32 %73 to i64
  %85 = getelementptr inbounds [419 x i16], ptr @_ZL6yypact, i64 0, i64 %84
  %86 = load i16, ptr %85, align 2, !tbaa !44
  %87 = sext i16 %86 to i32
  %88 = icmp eq i16 %86, -341
  br i1 %88, label %164, label %89

89:                                               ; preds = %83
  %90 = load i32, ptr @ned1yychar, align 4, !tbaa !38
  %91 = icmp eq i32 %90, -2
  br i1 %91, label %92, label %100

92:                                               ; preds = %89
  %93 = load i32, ptr @ned1yydebug, align 4, !tbaa !38
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %98, label %95

95:                                               ; preds = %92
  %96 = load ptr, ptr @stderr, align 8, !tbaa !42
  %97 = call i64 @fwrite(ptr nonnull @.str.2, i64 17, i64 1, ptr %96) #24
  br label %98

98:                                               ; preds = %95, %92
  %99 = call noundef i32 @_Z9ned1yylexv()
  store i32 %99, ptr @ned1yychar, align 4, !tbaa !38
  br label %100

100:                                              ; preds = %98, %89
  %101 = load i32, ptr @ned1yychar, align 4, !tbaa !38
  %102 = icmp slt i32 %101, 1
  br i1 %102, label %103, label %109

103:                                              ; preds = %100
  store i32 0, ptr @ned1yychar, align 4, !tbaa !38
  %104 = load i32, ptr @ned1yydebug, align 4, !tbaa !38
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %126, label %106

106:                                              ; preds = %103
  %107 = load ptr, ptr @stderr, align 8, !tbaa !42
  %108 = call i64 @fwrite(ptr nonnull @.str.3, i64 21, i64 1, ptr %107) #24
  br label %126

109:                                              ; preds = %100
  %110 = icmp ult i32 %101, 343
  br i1 %110, label %111, label %116

111:                                              ; preds = %109
  %112 = zext nneg i32 %101 to i64
  %113 = getelementptr inbounds [343 x i8], ptr @_ZL11yytranslate, i64 0, i64 %112
  %114 = load i8, ptr %113, align 1, !tbaa !46
  %115 = zext i8 %114 to i32
  br label %116

116:                                              ; preds = %109, %111
  %117 = phi i32 [ %115, %111 ], [ 2, %109 ]
  %118 = load i32, ptr @ned1yydebug, align 4, !tbaa !38
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %126, label %120

120:                                              ; preds = %116
  %121 = load ptr, ptr @stderr, align 8, !tbaa !42
  %122 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %121, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #24
  %123 = load ptr, ptr @stderr, align 8, !tbaa !42
  call fastcc void @_ZL15yy_symbol_printP8_IO_FILEiPKP10NEDElementPK10my_yyltype(ptr noundef %123, i32 noundef %117)
  %124 = load ptr, ptr @stderr, align 8, !tbaa !42
  %125 = call i32 @fputc(i32 10, ptr %124)
  br label %126

126:                                              ; preds = %116, %120, %103, %106
  %127 = phi i32 [ 0, %106 ], [ 0, %103 ], [ %117, %120 ], [ %117, %116 ]
  %128 = add nsw i32 %127, %87
  %129 = icmp ugt i32 %128, 781
  br i1 %129, label %164, label %130

130:                                              ; preds = %126
  %131 = zext nneg i32 %128 to i64
  %132 = getelementptr inbounds [782 x i16], ptr @_ZL7yycheck, i64 0, i64 %131
  %133 = load i16, ptr %132, align 2, !tbaa !44
  %134 = sext i16 %133 to i32
  %135 = icmp eq i32 %127, %134
  br i1 %135, label %136, label %164

136:                                              ; preds = %130
  %137 = getelementptr inbounds [782 x i16], ptr @_ZL7yytable, i64 0, i64 %131
  %138 = load i16, ptr %137, align 2, !tbaa !44
  %139 = sext i16 %138 to i32
  %140 = icmp slt i16 %138, 1
  br i1 %140, label %141, label %145

141:                                              ; preds = %136
  %142 = icmp eq i16 %138, 0
  br i1 %142, label %1747, label %143

143:                                              ; preds = %141
  %144 = sub nsw i32 0, %139
  br label %170

145:                                              ; preds = %136
  %146 = icmp eq i32 %128, 31
  br i1 %146, label %1801, label %147

147:                                              ; preds = %145
  %148 = load i32, ptr @ned1yydebug, align 4, !tbaa !38
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %156, label %150

150:                                              ; preds = %147
  %151 = load ptr, ptr @stderr, align 8, !tbaa !42
  %152 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %151, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.7) #24
  %153 = load ptr, ptr @stderr, align 8, !tbaa !42
  call fastcc void @_ZL15yy_symbol_printP8_IO_FILEiPKP10NEDElementPK10my_yyltype(ptr noundef %153, i32 noundef %127)
  %154 = load ptr, ptr @stderr, align 8, !tbaa !42
  %155 = call i32 @fputc(i32 10, ptr %154)
  br label %156

156:                                              ; preds = %150, %147
  %157 = load i32, ptr @ned1yychar, align 4, !tbaa !38
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %160, label %159

159:                                              ; preds = %156
  store i32 -2, ptr @ned1yychar, align 4, !tbaa !38
  br label %160

160:                                              ; preds = %159, %156
  %161 = load ptr, ptr @ned1yylval, align 8, !tbaa !42
  %162 = getelementptr inbounds ptr, ptr %76, i64 1
  store ptr %161, ptr %162, align 8, !tbaa !42
  %163 = getelementptr inbounds %struct.my_yyltype, ptr %77, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %163, ptr noundef nonnull align 8 dereferenceable(32) @ned1yylloc, i64 32, i1 false), !tbaa.struct !47
  br label %62

164:                                              ; preds = %126, %130, %83
  %165 = phi i32 [ %74, %83 ], [ %127, %126 ], [ %127, %130 ]
  %166 = getelementptr inbounds [419 x i8], ptr @_ZL8yydefact, i64 0, i64 %84
  %167 = load i8, ptr %166, align 1, !tbaa !46
  %168 = zext i8 %167 to i32
  %169 = icmp eq i8 %167, 0
  br i1 %169, label %1747, label %170

170:                                              ; preds = %164, %143
  %171 = phi i32 [ %165, %164 ], [ %127, %143 ]
  %172 = phi i32 [ %168, %164 ], [ %144, %143 ]
  %173 = zext nneg i32 %172 to i64
  %174 = getelementptr inbounds [242 x i8], ptr @_ZL4yyr2, i64 0, i64 %173
  %175 = load i8, ptr %174, align 1, !tbaa !46
  %176 = zext i8 %175 to i64
  %177 = sub nsw i64 1, %176
  %178 = getelementptr inbounds ptr, ptr %76, i64 %177
  %179 = load ptr, ptr %178, align 8, !tbaa !42
  %180 = icmp eq i8 %175, 0
  br i1 %180, label %192, label %181

181:                                              ; preds = %170
  %182 = sub nsw i64 0, %176
  %183 = getelementptr inbounds %struct.my_yyltype, ptr %77, i64 %182
  %184 = getelementptr inbounds %struct.my_yyltype, ptr %183, i64 1, i32 1
  %185 = load i32, ptr %184, align 4, !tbaa !48
  store i32 %185, ptr %48, align 4, !tbaa !48
  %186 = getelementptr inbounds %struct.my_yyltype, ptr %183, i64 1, i32 2
  %187 = load i32, ptr %186, align 8, !tbaa !50
  store i32 %187, ptr %49, align 8, !tbaa !50
  %188 = getelementptr inbounds %struct.my_yyltype, ptr %77, i64 0, i32 3
  %189 = load i32, ptr %188, align 4, !tbaa !51
  store i32 %189, ptr %50, align 4, !tbaa !51
  %190 = getelementptr inbounds %struct.my_yyltype, ptr %77, i64 0, i32 4
  %191 = load i32, ptr %190, align 8, !tbaa !52
  store i32 %191, ptr %51, align 8, !tbaa !52
  br label %197

192:                                              ; preds = %170
  %193 = getelementptr inbounds %struct.my_yyltype, ptr %77, i64 0, i32 3
  %194 = load i32, ptr %193, align 4, !tbaa !51
  store i32 %194, ptr %52, align 4, !tbaa !51
  store i32 %194, ptr %53, align 4, !tbaa !48
  %195 = getelementptr inbounds %struct.my_yyltype, ptr %77, i64 0, i32 4
  %196 = load i32, ptr %195, align 8, !tbaa !52
  store i32 %196, ptr %54, align 8, !tbaa !52
  store i32 %196, ptr %55, align 8, !tbaa !50
  br label %197

197:                                              ; preds = %181, %192
  %198 = load i32, ptr @ned1yydebug, align 4, !tbaa !38
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %228, label %200

200:                                              ; preds = %197
  %201 = getelementptr inbounds [242 x i16], ptr @_ZL7yyrline, i64 0, i64 %173
  %202 = load i16, ptr %201, align 2, !tbaa !44
  %203 = zext i16 %202 to i64
  %204 = load ptr, ptr @stderr, align 8, !tbaa !42
  %205 = add nsw i32 %172, -1
  %206 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %204, ptr noundef nonnull @.str.280, i32 noundef %205, i64 noundef %203) #24
  %207 = icmp eq i8 %175, 0
  br i1 %207, label %228, label %208

208:                                              ; preds = %200
  %209 = getelementptr inbounds [242 x i16], ptr @_ZL6yyprhs, i64 0, i64 %173
  %210 = zext i8 %175 to i64
  br label %211

211:                                              ; preds = %208, %211
  %212 = phi i64 [ 0, %208 ], [ %214, %211 ]
  %213 = load ptr, ptr @stderr, align 8, !tbaa !42
  %214 = add nuw nsw i64 %212, 1
  %215 = trunc i64 %214 to i32
  %216 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %213, ptr noundef nonnull @.str.281, i32 noundef %215) #24
  %217 = load ptr, ptr @stderr, align 8, !tbaa !42
  %218 = load i16, ptr %209, align 2, !tbaa !44
  %219 = zext i16 %218 to i64
  %220 = add nuw i64 %212, %219
  %221 = and i64 %220, 4294967295
  %222 = getelementptr inbounds [784 x i16], ptr @_ZL5yyrhs, i64 0, i64 %221
  %223 = load i16, ptr %222, align 2, !tbaa !44
  %224 = sext i16 %223 to i32
  call fastcc void @_ZL15yy_symbol_printP8_IO_FILEiPKP10NEDElementPK10my_yyltype(ptr noundef %217, i32 noundef %224)
  %225 = load ptr, ptr @stderr, align 8, !tbaa !42
  %226 = call i32 @fputc(i32 10, ptr %225)
  %227 = icmp eq i64 %214, %210
  br i1 %227, label %228, label %211, !llvm.loop !53

228:                                              ; preds = %211, %200, %197
  switch i32 %172, label %1697 [
    i32 6, label %229
    i32 7, label %237
    i32 8, label %245
    i32 9, label %253
    i32 13, label %261
    i32 14, label %272
    i32 15, label %275
    i32 17, label %295
    i32 18, label %297
    i32 19, label %311
    i32 22, label %325
    i32 23, label %328
    i32 26, label %339
    i32 27, label %342
    i32 32, label %353
    i32 35, label %444
    i32 36, label %448
    i32 39, label %450
    i32 40, label %453
    i32 41, label %456
    i32 42, label %461
    i32 43, label %467
    i32 44, label %470
    i32 45, label %474
    i32 46, label %478
    i32 47, label %482
    i32 48, label %486
    i32 49, label %490
    i32 50, label %494
    i32 53, label %502
    i32 54, label %506
    i32 63, label %508
    i32 64, label %515
    i32 67, label %520
    i32 68, label %527
    i32 71, label %532
    i32 72, label %536
    i32 77, label %538
    i32 78, label %557
    i32 79, label %559
    i32 80, label %582
    i32 81, label %584
    i32 82, label %611
    i32 83, label %613
    i32 84, label %644
    i32 86, label %646
    i32 90, label %648
    i32 92, label %651
    i32 98, label %664
    i32 99, label %671
    i32 100, label %676
    i32 101, label %680
    i32 102, label %693
    i32 105, label %698
    i32 109, label %700
    i32 111, label %713
    i32 117, label %726
    i32 118, label %734
    i32 122, label %825
    i32 123, label %830
    i32 124, label %832
    i32 125, label %837
    i32 132, label %839
    i32 133, label %842
    i32 136, label %848
    i32 137, label %865
    i32 139, label %870
    i32 143, label %963
    i32 144, label %967
    i32 145, label %971
    i32 146, label %976
    i32 149, label %981
    i32 150, label %997
    i32 151, label %1010
    i32 152, label %1021
    i32 153, label %1029
    i32 154, label %1040
    i32 155, label %1061
    i32 156, label %1079
    i32 159, label %1100
    i32 160, label %1111
    i32 161, label %1119
    i32 162, label %1130
    i32 163, label %1138
    i32 164, label %1149
    i32 165, label %1160
    i32 166, label %1168
    i32 167, label %1179
    i32 168, label %1189
    i32 171, label %1205
    i32 172, label %1219
    i32 173, label %1222
    i32 174, label %1246
    i32 175, label %1247
    i32 176, label %1250
    i32 177, label %1257
    i32 178, label %1264
    i32 179, label %1274
    i32 181, label %1282
    i32 182, label %1285
    i32 183, label %1294
    i32 184, label %1303
    i32 185, label %1312
    i32 186, label %1321
    i32 187, label %1330
    i32 188, label %1339
    i32 189, label %1346
    i32 190, label %1355
    i32 191, label %1364
    i32 192, label %1373
    i32 193, label %1382
    i32 194, label %1391
    i32 195, label %1400
    i32 196, label %1409
    i32 197, label %1418
    i32 198, label %1427
    i32 199, label %1434
    i32 200, label %1443
    i32 201, label %1452
    i32 202, label %1461
    i32 203, label %1468
    i32 204, label %1477
    i32 205, label %1486
    i32 206, label %1497
    i32 207, label %1507
    i32 208, label %1517
    i32 209, label %1527
    i32 210, label %1535
    i32 211, label %1545
    i32 212, label %1557
    i32 213, label %1571
    i32 217, label %1587
    i32 218, label %1593
    i32 219, label %1605
    i32 220, label %1617
    i32 221, label %1629
    i32 222, label %1641
    i32 223, label %1647
    i32 224, label %1653
    i32 228, label %1661
    i32 229, label %1667
    i32 230, label %1673
    i32 231, label %1679
    i32 232, label %1685
    i32 233, label %1691
  ]

229:                                              ; preds = %228
  %230 = load ptr, ptr @np, align 8, !tbaa !42
  %231 = getelementptr inbounds %class.NEDParser, ptr %230, i64 0, i32 1
  %232 = load i8, ptr %231, align 1, !tbaa !56, !range !59, !noundef !60
  %233 = icmp eq i8 %232, 0
  br i1 %233, label %1697, label %234

234:                                              ; preds = %229
  %235 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 9), align 8, !tbaa !61
  %236 = call noundef ptr @_Z24storeComponentSourceCodeP10NEDElement10my_yyltype(ptr noundef %235, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %77)
  br label %1697

237:                                              ; preds = %228
  %238 = load ptr, ptr @np, align 8, !tbaa !42
  %239 = getelementptr inbounds %class.NEDParser, ptr %238, i64 0, i32 1
  %240 = load i8, ptr %239, align 1, !tbaa !56, !range !59, !noundef !60
  %241 = icmp eq i8 %240, 0
  br i1 %241, label %1697, label %242

242:                                              ; preds = %237
  %243 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 10), align 8, !tbaa !63
  %244 = call noundef ptr @_Z24storeComponentSourceCodeP10NEDElement10my_yyltype(ptr noundef %243, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %77)
  br label %1697

245:                                              ; preds = %228
  %246 = load ptr, ptr @np, align 8, !tbaa !42
  %247 = getelementptr inbounds %class.NEDParser, ptr %246, i64 0, i32 1
  %248 = load i8, ptr %247, align 1, !tbaa !56, !range !59, !noundef !60
  %249 = icmp eq i8 %248, 0
  br i1 %249, label %1697, label %250

250:                                              ; preds = %245
  %251 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 10), align 8, !tbaa !63
  %252 = call noundef ptr @_Z24storeComponentSourceCodeP10NEDElement10my_yyltype(ptr noundef %251, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %77)
  br label %1697

253:                                              ; preds = %228
  %254 = load ptr, ptr @np, align 8, !tbaa !42
  %255 = getelementptr inbounds %class.NEDParser, ptr %254, i64 0, i32 1
  %256 = load i8, ptr %255, align 1, !tbaa !56, !range !59, !noundef !60
  %257 = icmp eq i8 %256, 0
  br i1 %257, label %1697, label %258

258:                                              ; preds = %253
  %259 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 10), align 8, !tbaa !63
  %260 = call noundef ptr @_Z24storeComponentSourceCodeP10NEDElement10my_yyltype(ptr noundef %259, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %77)
  br label %1697

261:                                              ; preds = %228
  %262 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 5), align 8, !tbaa !64
  %263 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 5, ptr noundef %262)
  store ptr %263, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 7), align 8, !tbaa !65
  call void @_Z10trimQuotes10my_yyltype(ptr dead_on_unwind nonnull writable sret(%struct.my_yyltype) align 8 %6, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %77)
  %264 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %6)
  %265 = getelementptr inbounds %class.ImportElement, ptr %263, i64 0, i32 1
  %266 = getelementptr inbounds %class.ImportElement, ptr %263, i64 0, i32 1, i32 1
  %267 = load i64, ptr %266, align 8, !tbaa !66
  %268 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %264) #23
  %269 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %265, i64 noundef 0, i64 noundef %267, ptr noundef %264, i64 noundef %268)
  %270 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 7), align 8, !tbaa !65
  call void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltype(ptr noundef %270, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %77)
  %271 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 7), align 8, !tbaa !65
  call void @_Z8storePosP10NEDElement10my_yyltype(ptr noundef %271, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5)
  br label %1697

272:                                              ; preds = %228
  %273 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 9), align 8, !tbaa !61
  call void @_Z8storePosP10NEDElement10my_yyltype(ptr noundef %273, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5)
  %274 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 9), align 8, !tbaa !61
  call void @_Z20storeTrailingCommentP10NEDElement10my_yyltype(ptr noundef %274, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5)
  br label %1697

275:                                              ; preds = %228
  %276 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 5), align 8, !tbaa !64
  %277 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 13, ptr noundef %276)
  store ptr %277, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 9), align 8, !tbaa !61
  %278 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %77)
  %279 = getelementptr inbounds %class.ChannelElement, ptr %277, i64 0, i32 1
  %280 = getelementptr inbounds %class.ChannelElement, ptr %277, i64 0, i32 1, i32 1
  %281 = load i64, ptr %280, align 8, !tbaa !66
  %282 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %278) #23
  %283 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %279, i64 noundef 0, i64 noundef %281, ptr noundef %278, i64 noundef %282)
  %284 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 9), align 8, !tbaa !61
  %285 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 7, ptr noundef %284)
  store ptr %285, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 8), align 8, !tbaa !70
  %286 = getelementptr inbounds %class.ExtendsElement, ptr %285, i64 0, i32 1
  %287 = getelementptr inbounds %class.ExtendsElement, ptr %285, i64 0, i32 1, i32 1
  %288 = load i64, ptr %287, align 8, !tbaa !66
  %289 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %286, i64 noundef 0, i64 noundef %288, ptr noundef nonnull @.str.8, i64 noundef 19)
  %290 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 9), align 8, !tbaa !61
  %291 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 14, ptr noundef %290)
  store ptr %291, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 11), align 8, !tbaa !71
  %292 = getelementptr inbounds %class.ParametersElement, ptr %291, i64 0, i32 1
  store i8 1, ptr %292, align 8, !tbaa !72
  %293 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 9), align 8, !tbaa !61
  %294 = getelementptr inbounds %struct.my_yyltype, ptr %77, i64 -1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %294, i64 32, i1 false), !tbaa.struct !47
  call void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltypeS1_(ptr noundef %293, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %7, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %77)
  br label %1697

295:                                              ; preds = %228
  %296 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 11), align 8, !tbaa !71
  call void @_Z8storePosP10NEDElement10my_yyltype(ptr noundef %296, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5)
  br label %1697

297:                                              ; preds = %228
  %298 = getelementptr inbounds %struct.my_yyltype, ptr %77, i64 -2
  %299 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %298)
  %300 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %299, ptr noundef nonnull dereferenceable(6) @.str.9) #25
  %301 = icmp eq i32 %300, 0
  %302 = select i1 %301, ptr @.str.10, ptr %299
  %303 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 11), align 8, !tbaa !71
  %304 = getelementptr inbounds %class.ParametersElement, ptr %303, i64 0, i32 1
  store i8 0, ptr %304, align 8, !tbaa !72
  %305 = call noundef ptr @_Z12addParameterP10NEDElementPKc10my_yyltype(ptr noundef %303, ptr noundef %302, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %298)
  store ptr %305, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 12), align 8, !tbaa !76
  %306 = getelementptr inbounds %struct.my_yyltype, ptr %77, i64 -1
  %307 = getelementptr inbounds ptr, ptr %76, i64 -1
  %308 = load ptr, ptr %307, align 8, !tbaa !42
  call void @_Z13addExpressionP10NEDElementPKc10my_yyltypeS0_(ptr noundef %305, ptr noundef nonnull @.str.11, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %306, ptr noundef %308)
  %309 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 12), align 8, !tbaa !76
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %298, i64 32, i1 false), !tbaa.struct !47
  call void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltypeS1_(ptr noundef %309, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %8, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %306)
  %310 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 12), align 8, !tbaa !76
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %298, i64 32, i1 false), !tbaa.struct !47
  call void @_Z8storePosP10NEDElement10my_yyltypeS1_(ptr noundef %310, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %9, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %77)
  br label %1697

311:                                              ; preds = %228
  %312 = getelementptr inbounds %struct.my_yyltype, ptr %77, i64 -2
  %313 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %312)
  %314 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %313, ptr noundef nonnull dereferenceable(6) @.str.9) #25
  %315 = icmp eq i32 %314, 0
  %316 = select i1 %315, ptr @.str.10, ptr %313
  %317 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 11), align 8, !tbaa !71
  %318 = getelementptr inbounds %class.ParametersElement, ptr %317, i64 0, i32 1
  store i8 0, ptr %318, align 8, !tbaa !72
  %319 = call noundef ptr @_Z12addParameterP10NEDElementPKc10my_yyltype(ptr noundef %317, ptr noundef %316, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %312)
  store ptr %319, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 12), align 8, !tbaa !76
  %320 = getelementptr inbounds %struct.my_yyltype, ptr %77, i64 -1
  %321 = getelementptr inbounds ptr, ptr %76, i64 -1
  %322 = load ptr, ptr %321, align 8, !tbaa !42
  call void @_Z13addExpressionP10NEDElementPKc10my_yyltypeS0_(ptr noundef %319, ptr noundef nonnull @.str.11, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %320, ptr noundef %322)
  %323 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 12), align 8, !tbaa !76
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %312, i64 32, i1 false), !tbaa.struct !47
  call void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltypeS1_(ptr noundef %323, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %10, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %320)
  %324 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 12), align 8, !tbaa !76
  call void @_Z8storePosP10NEDElement10my_yyltype(ptr noundef %324, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5)
  br label %1697

325:                                              ; preds = %228
  %326 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 10), align 8, !tbaa !63
  call void @_Z8storePosP10NEDElement10my_yyltype(ptr noundef %326, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5)
  %327 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 10), align 8, !tbaa !63
  call void @_Z20storeTrailingCommentP10NEDElement10my_yyltype(ptr noundef %327, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5)
  br label %1697

328:                                              ; preds = %228
  %329 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 5), align 8, !tbaa !64
  %330 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 9, ptr noundef %329)
  store ptr %330, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 10), align 8, !tbaa !63
  %331 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %77)
  %332 = getelementptr inbounds %class.SimpleModuleElement, ptr %330, i64 0, i32 1
  %333 = getelementptr inbounds %class.SimpleModuleElement, ptr %330, i64 0, i32 1, i32 1
  %334 = load i64, ptr %333, align 8, !tbaa !66
  %335 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %331) #23
  %336 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %332, i64 noundef 0, i64 noundef %334, ptr noundef %331, i64 noundef %335)
  %337 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 10), align 8, !tbaa !63
  %338 = getelementptr inbounds %struct.my_yyltype, ptr %77, i64 -1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %338, i64 32, i1 false), !tbaa.struct !47
  call void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltypeS1_(ptr noundef %337, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %11, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %77)
  br label %1697

339:                                              ; preds = %228
  %340 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 10), align 8, !tbaa !63
  call void @_Z8storePosP10NEDElement10my_yyltype(ptr noundef %340, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5)
  %341 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 10), align 8, !tbaa !63
  call void @_Z20storeTrailingCommentP10NEDElement10my_yyltype(ptr noundef %341, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5)
  br label %1697

342:                                              ; preds = %228
  %343 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 5), align 8, !tbaa !64
  %344 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 11, ptr noundef %343)
  store ptr %344, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 10), align 8, !tbaa !63
  %345 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %77)
  %346 = getelementptr inbounds %class.CompoundModuleElement, ptr %344, i64 0, i32 1
  %347 = getelementptr inbounds %class.CompoundModuleElement, ptr %344, i64 0, i32 1, i32 1
  %348 = load i64, ptr %347, align 8, !tbaa !66
  %349 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %345) #23
  %350 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %346, i64 noundef 0, i64 noundef %348, ptr noundef %345, i64 noundef %349)
  %351 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 10), align 8, !tbaa !63
  %352 = getelementptr inbounds %struct.my_yyltype, ptr %77, i64 -1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %352, i64 32, i1 false), !tbaa.struct !47
  call void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltypeS1_(ptr noundef %351, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %12, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %77)
  br label %1697

353:                                              ; preds = %228
  %354 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 10), align 8, !tbaa !63
  %355 = call noundef ptr @_Z20addComponentPropertyP10NEDElementPKc(ptr noundef %354, ptr noundef nonnull @.str.12)
  store ptr %355, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 15), align 8, !tbaa !77
  %356 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 10), align 8, !tbaa !63
  %357 = load ptr, ptr %356, align 8, !tbaa !78
  %358 = getelementptr inbounds ptr, ptr %357, i64 30
  %359 = load ptr, ptr %358, align 8
  %360 = call noundef ptr %359(ptr noundef nonnull align 8 dereferenceable(112) %356, i32 noundef 14)
  store ptr %360, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 11), align 8, !tbaa !71
  %361 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 15), align 8, !tbaa !77
  %362 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 18, ptr noundef %361)
  store ptr %362, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 16), align 8, !tbaa !80
  %363 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 34, ptr noundef null)
  call void @_ZN14LiteralElement7setTypeEi(ptr noundef nonnull align 8 dereferenceable(216) %363, i32 noundef 2)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %13) #23
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %14) #23
  %364 = getelementptr inbounds %struct.my_yyltype, ptr %77, i64 -1
  %365 = invoke noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %364)
          to label %366 unwind label %393

366:                                              ; preds = %353
  invoke void @_Z18opp_parsequotedstrB5cxx11PKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef %365)
          to label %367 unwind label %393

367:                                              ; preds = %366
  %368 = load ptr, ptr %14, align 8, !tbaa !81
  invoke void @_ZN17DisplayStringUtil30upgradeBackgroundDisplayStringB5cxx11EPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef %368)
          to label %369 unwind label %395

369:                                              ; preds = %367
  %370 = load ptr, ptr %14, align 8, !tbaa !81
  %371 = icmp eq ptr %370, %60
  br i1 %371, label %372, label %376

372:                                              ; preds = %369
  %373 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %14, i64 0, i32 1
  %374 = load i64, ptr %373, align 8, !tbaa !66
  %375 = icmp ult i64 %374, 16
  call void @llvm.assume(i1 %375)
  br label %377

376:                                              ; preds = %369
  call void @_ZdlPv(ptr noundef %370) #26
  br label %377

377:                                              ; preds = %372, %376
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %14) #23
  %378 = load ptr, ptr %13, align 8, !tbaa !81
  %379 = getelementptr inbounds %class.LiteralElement, ptr %363, i64 0, i32 4
  %380 = getelementptr inbounds %class.LiteralElement, ptr %363, i64 0, i32 4, i32 1
  %381 = load i64, ptr %380, align 8, !tbaa !66
  %382 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %378) #23
  %383 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %379, i64 noundef 0, i64 noundef %381, ptr noundef %378, i64 noundef %382)
          to label %384 unwind label %407

384:                                              ; preds = %377
  %385 = load ptr, ptr %13, align 8, !tbaa !81
  %386 = icmp eq ptr %385, %61
  br i1 %386, label %387, label %391

387:                                              ; preds = %384
  %388 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %13, i64 0, i32 1
  %389 = load i64, ptr %388, align 8, !tbaa !66
  %390 = icmp ult i64 %389, 16
  call void @llvm.assume(i1 %390)
  br label %392

391:                                              ; preds = %384
  call void @_ZdlPv(ptr noundef %385) #26
  br label %392

392:                                              ; preds = %387, %391
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %13) #23
  br label %434

393:                                              ; preds = %366, %353
  %394 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %405

395:                                              ; preds = %367
  %396 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  %397 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %14, i64 0, i32 2
  %398 = load ptr, ptr %14, align 8, !tbaa !81
  %399 = icmp eq ptr %398, %397
  br i1 %399, label %400, label %404

400:                                              ; preds = %395
  %401 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %14, i64 0, i32 1
  %402 = load i64, ptr %401, align 8, !tbaa !66
  %403 = icmp ult i64 %402, 16
  call void @llvm.assume(i1 %403)
  br label %405

404:                                              ; preds = %395
  call void @_ZdlPv(ptr noundef %398) #26
  br label %405

405:                                              ; preds = %404, %400, %393
  %406 = phi { ptr, i32 } [ %394, %393 ], [ %396, %400 ], [ %396, %404 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %14) #23
  br label %417

407:                                              ; preds = %377
  %408 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  %409 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %13, i64 0, i32 2
  %410 = load ptr, ptr %13, align 8, !tbaa !81
  %411 = icmp eq ptr %410, %409
  br i1 %411, label %412, label %416

412:                                              ; preds = %407
  %413 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %13, i64 0, i32 1
  %414 = load i64, ptr %413, align 8, !tbaa !66
  %415 = icmp ult i64 %414, 16
  call void @llvm.assume(i1 %415)
  br label %417

416:                                              ; preds = %407
  call void @_ZdlPv(ptr noundef %410) #26
  br label %417

417:                                              ; preds = %416, %412, %405
  %418 = phi { ptr, i32 } [ %406, %405 ], [ %408, %412 ], [ %408, %416 ]
  %419 = extractvalue { ptr, i32 } %418, 1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %13) #23
  %420 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTISt9exception) #23
  %421 = icmp eq i32 %419, %420
  br i1 %421, label %422, label %1830

422:                                              ; preds = %417
  %423 = extractvalue { ptr, i32 } %418, 0
  %424 = call ptr @__cxa_begin_catch(ptr %423) #23
  %425 = load ptr, ptr @np, align 8, !tbaa !42
  %426 = getelementptr inbounds %class.NEDParser, ptr %425, i64 0, i32 3
  %427 = load ptr, ptr %426, align 8, !tbaa !82
  %428 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 15), align 8, !tbaa !77
  %429 = load ptr, ptr %424, align 8, !tbaa !78
  %430 = getelementptr inbounds ptr, ptr %429, i64 2
  %431 = load ptr, ptr %430, align 8
  %432 = call noundef ptr %431(ptr noundef nonnull align 8 dereferenceable(8) %424) #23
  invoke void (ptr, ptr, ptr, ...) @_ZN13NEDErrorStore8addErrorEP10NEDElementPKcz(ptr noundef nonnull align 8 dereferenceable(25) %427, ptr noundef %428, ptr noundef %432)
          to label %433 unwind label %442

433:                                              ; preds = %422
  call void @__cxa_end_catch()
  br label %434

434:                                              ; preds = %433, %392
  %435 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 16), align 8, !tbaa !80
  %436 = load ptr, ptr %435, align 8, !tbaa !78
  %437 = getelementptr inbounds ptr, ptr %436, i64 27
  %438 = load ptr, ptr %437, align 8
  call void %438(ptr noundef nonnull align 8 dereferenceable(112) %435, ptr noundef nonnull %363)
  %439 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 16), align 8, !tbaa !80
  call void @_Z8storePosP10NEDElement10my_yyltype(ptr noundef %439, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5)
  call void @_Z8storePosP10NEDElement10my_yyltype(ptr noundef nonnull %363, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %364)
  %440 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 15), align 8, !tbaa !77
  call void @_Z8storePosP10NEDElement10my_yyltype(ptr noundef %440, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5)
  %441 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 15), align 8, !tbaa !77
  call void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltype(ptr noundef %441, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5)
  br label %1697

442:                                              ; preds = %422
  %443 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %1830 unwind label %1832

444:                                              ; preds = %228
  %445 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 10), align 8, !tbaa !63
  %446 = call noundef ptr @_Z25getOrCreateElementWithTagiP10NEDElement(i32 noundef 14, ptr noundef %445)
  store ptr %446, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 11), align 8, !tbaa !71
  %447 = getelementptr inbounds %struct.my_yyltype, ptr %77, i64 -1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %447, i64 32, i1 false), !tbaa.struct !47
  call void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltypeS1_(ptr noundef %446, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %15, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %77)
  br label %1697

448:                                              ; preds = %228
  %449 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 11), align 8, !tbaa !71
  call void @_Z8storePosP10NEDElement10my_yyltype(ptr noundef %449, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5)
  br label %1697

450:                                              ; preds = %228
  %451 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 12), align 8, !tbaa !76
  call void @_Z8storePosP10NEDElement10my_yyltype(ptr noundef %451, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %77)
  %452 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 12), align 8, !tbaa !76
  call void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltype(ptr noundef %452, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %77)
  br label %1697

453:                                              ; preds = %228
  %454 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 12), align 8, !tbaa !76
  call void @_Z8storePosP10NEDElement10my_yyltype(ptr noundef %454, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %77)
  %455 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 12), align 8, !tbaa !76
  call void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltype(ptr noundef %455, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %77)
  br label %1697

456:                                              ; preds = %228
  %457 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 11), align 8, !tbaa !71
  %458 = call noundef ptr @_Z12addParameterP10NEDElement10my_yyltype(ptr noundef %457, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %77)
  store ptr %458, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 12), align 8, !tbaa !76
  call void @_ZN12ParamElement7setTypeEi(ptr noundef nonnull align 8 dereferenceable(185) %458, i32 noundef 1)
  %459 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 12), align 8, !tbaa !76
  %460 = getelementptr inbounds %class.ParamElement, ptr %459, i64 0, i32 2
  store i8 1, ptr %460, align 4, !tbaa !83
  br label %1697

461:                                              ; preds = %228
  %462 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 11), align 8, !tbaa !71
  %463 = getelementptr inbounds %struct.my_yyltype, ptr %77, i64 -2
  %464 = call noundef ptr @_Z12addParameterP10NEDElement10my_yyltype(ptr noundef %462, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %463)
  store ptr %464, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 12), align 8, !tbaa !76
  call void @_ZN12ParamElement7setTypeEi(ptr noundef nonnull align 8 dereferenceable(185) %464, i32 noundef 1)
  %465 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 12), align 8, !tbaa !76
  %466 = getelementptr inbounds %class.ParamElement, ptr %465, i64 0, i32 2
  store i8 1, ptr %466, align 4, !tbaa !83
  br label %1697

467:                                              ; preds = %228
  %468 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 11), align 8, !tbaa !71
  %469 = call noundef ptr @_Z12addParameterP10NEDElement10my_yyltype(ptr noundef %468, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %77)
  store ptr %469, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 12), align 8, !tbaa !76
  call void @_ZN12ParamElement7setTypeEi(ptr noundef nonnull align 8 dereferenceable(185) %469, i32 noundef 1)
  br label %1697

470:                                              ; preds = %228
  %471 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 11), align 8, !tbaa !71
  %472 = getelementptr inbounds %struct.my_yyltype, ptr %77, i64 -2
  %473 = call noundef ptr @_Z12addParameterP10NEDElement10my_yyltype(ptr noundef %471, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %472)
  store ptr %473, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 12), align 8, !tbaa !76
  call void @_ZN12ParamElement7setTypeEi(ptr noundef nonnull align 8 dereferenceable(185) %473, i32 noundef 1)
  br label %1697

474:                                              ; preds = %228
  %475 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 11), align 8, !tbaa !71
  %476 = getelementptr inbounds %struct.my_yyltype, ptr %77, i64 -3
  %477 = call noundef ptr @_Z12addParameterP10NEDElement10my_yyltype(ptr noundef %475, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %476)
  store ptr %477, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 12), align 8, !tbaa !76
  call void @_ZN12ParamElement7setTypeEi(ptr noundef nonnull align 8 dereferenceable(185) %477, i32 noundef 1)
  br label %1697

478:                                              ; preds = %228
  %479 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 11), align 8, !tbaa !71
  %480 = getelementptr inbounds %struct.my_yyltype, ptr %77, i64 -3
  %481 = call noundef ptr @_Z12addParameterP10NEDElement10my_yyltype(ptr noundef %479, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %480)
  store ptr %481, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 12), align 8, !tbaa !76
  call void @_ZN12ParamElement7setTypeEi(ptr noundef nonnull align 8 dereferenceable(185) %481, i32 noundef 1)
  br label %1697

482:                                              ; preds = %228
  %483 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 11), align 8, !tbaa !71
  %484 = getelementptr inbounds %struct.my_yyltype, ptr %77, i64 -2
  %485 = call noundef ptr @_Z12addParameterP10NEDElement10my_yyltype(ptr noundef %483, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %484)
  store ptr %485, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 12), align 8, !tbaa !76
  call void @_ZN12ParamElement7setTypeEi(ptr noundef nonnull align 8 dereferenceable(185) %485, i32 noundef 3)
  br label %1697

486:                                              ; preds = %228
  %487 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 11), align 8, !tbaa !71
  %488 = getelementptr inbounds %struct.my_yyltype, ptr %77, i64 -2
  %489 = call noundef ptr @_Z12addParameterP10NEDElement10my_yyltype(ptr noundef %487, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %488)
  store ptr %489, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 12), align 8, !tbaa !76
  call void @_ZN12ParamElement7setTypeEi(ptr noundef nonnull align 8 dereferenceable(185) %489, i32 noundef 4)
  br label %1697

490:                                              ; preds = %228
  %491 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 11), align 8, !tbaa !71
  %492 = getelementptr inbounds %struct.my_yyltype, ptr %77, i64 -2
  %493 = call noundef ptr @_Z12addParameterP10NEDElement10my_yyltype(ptr noundef %491, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %492)
  store ptr %493, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 12), align 8, !tbaa !76
  call void @_ZN12ParamElement7setTypeEi(ptr noundef nonnull align 8 dereferenceable(185) %493, i32 noundef 5)
  br label %1697

494:                                              ; preds = %228
  %495 = load ptr, ptr @np, align 8, !tbaa !42
  %496 = getelementptr inbounds %class.NEDParser, ptr %495, i64 0, i32 3
  %497 = load ptr, ptr %496, align 8, !tbaa !82
  %498 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 11), align 8, !tbaa !71
  call void (ptr, ptr, ptr, ...) @_ZN13NEDErrorStore8addErrorEP10NEDElementPKcz(ptr noundef nonnull align 8 dereferenceable(25) %497, ptr noundef %498, ptr noundef nonnull @.str.13)
  %499 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 11), align 8, !tbaa !71
  %500 = getelementptr inbounds %struct.my_yyltype, ptr %77, i64 -2
  %501 = call noundef ptr @_Z12addParameterP10NEDElement10my_yyltype(ptr noundef %499, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %500)
  store ptr %501, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 12), align 8, !tbaa !76
  br label %1697

502:                                              ; preds = %228
  %503 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 10), align 8, !tbaa !63
  %504 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 19, ptr noundef %503)
  store ptr %504, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 17), align 8, !tbaa !85
  %505 = getelementptr inbounds %struct.my_yyltype, ptr %77, i64 -1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(32) %505, i64 32, i1 false), !tbaa.struct !47
  call void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltypeS1_(ptr noundef %504, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %16, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %77)
  br label %1697

506:                                              ; preds = %228
  %507 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 17), align 8, !tbaa !85
  call void @_Z8storePosP10NEDElement10my_yyltype(ptr noundef %507, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5)
  br label %1697

508:                                              ; preds = %228
  %509 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 17), align 8, !tbaa !85
  %510 = getelementptr inbounds %struct.my_yyltype, ptr %77, i64 -2
  %511 = call noundef ptr @_Z7addGateP10NEDElement10my_yyltype(ptr noundef %509, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %510)
  store ptr %511, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 18), align 8, !tbaa !86
  call void @_ZN11GateElement7setTypeEi(ptr noundef nonnull align 8 dereferenceable(184) %511, i32 noundef 1)
  %512 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 18), align 8, !tbaa !86
  %513 = getelementptr inbounds %class.GateElement, ptr %512, i64 0, i32 3
  store i8 1, ptr %513, align 4, !tbaa !87
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(32) %510, i64 32, i1 false), !tbaa.struct !47
  call void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltypeS1_(ptr noundef %512, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %17, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %77)
  %514 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 18), align 8, !tbaa !86
  call void @_Z8storePosP10NEDElement10my_yyltype(ptr noundef %514, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5)
  br label %1697

515:                                              ; preds = %228
  %516 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 17), align 8, !tbaa !85
  %517 = call noundef ptr @_Z7addGateP10NEDElement10my_yyltype(ptr noundef %516, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %77)
  store ptr %517, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 18), align 8, !tbaa !86
  call void @_ZN11GateElement7setTypeEi(ptr noundef nonnull align 8 dereferenceable(184) %517, i32 noundef 1)
  %518 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 18), align 8, !tbaa !86
  call void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltype(ptr noundef %518, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %77)
  %519 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 18), align 8, !tbaa !86
  call void @_Z8storePosP10NEDElement10my_yyltype(ptr noundef %519, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5)
  br label %1697

520:                                              ; preds = %228
  %521 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 17), align 8, !tbaa !85
  %522 = getelementptr inbounds %struct.my_yyltype, ptr %77, i64 -2
  %523 = call noundef ptr @_Z7addGateP10NEDElement10my_yyltype(ptr noundef %521, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %522)
  store ptr %523, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 18), align 8, !tbaa !86
  call void @_ZN11GateElement7setTypeEi(ptr noundef nonnull align 8 dereferenceable(184) %523, i32 noundef 2)
  %524 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 18), align 8, !tbaa !86
  %525 = getelementptr inbounds %class.GateElement, ptr %524, i64 0, i32 3
  store i8 1, ptr %525, align 4, !tbaa !87
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(32) %522, i64 32, i1 false), !tbaa.struct !47
  call void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltypeS1_(ptr noundef %524, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %18, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %77)
  %526 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 18), align 8, !tbaa !86
  call void @_Z8storePosP10NEDElement10my_yyltype(ptr noundef %526, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5)
  br label %1697

527:                                              ; preds = %228
  %528 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 17), align 8, !tbaa !85
  %529 = call noundef ptr @_Z7addGateP10NEDElement10my_yyltype(ptr noundef %528, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %77)
  store ptr %529, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 18), align 8, !tbaa !86
  call void @_ZN11GateElement7setTypeEi(ptr noundef nonnull align 8 dereferenceable(184) %529, i32 noundef 2)
  %530 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 18), align 8, !tbaa !86
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 8 dereferenceable(32) %77, i64 32, i1 false), !tbaa.struct !47
  call void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltypeS1_(ptr noundef %530, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %19, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %77)
  %531 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 18), align 8, !tbaa !86
  call void @_Z8storePosP10NEDElement10my_yyltype(ptr noundef %531, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5)
  br label %1697

532:                                              ; preds = %228
  %533 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 10), align 8, !tbaa !63
  %534 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 22, ptr noundef %533)
  store ptr %534, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 21), align 8, !tbaa !89
  %535 = getelementptr inbounds %struct.my_yyltype, ptr %77, i64 -1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(32) %535, i64 32, i1 false), !tbaa.struct !47
  call void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltypeS1_(ptr noundef %534, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %20, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %77)
  br label %1697

536:                                              ; preds = %228
  %537 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 21), align 8, !tbaa !89
  call void @_Z8storePosP10NEDElement10my_yyltype(ptr noundef %537, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5)
  br label %1697

538:                                              ; preds = %228
  %539 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 21), align 8, !tbaa !89
  %540 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 23, ptr noundef %539)
  store ptr %540, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 22), align 8, !tbaa !90
  %541 = getelementptr inbounds %struct.my_yyltype, ptr %77, i64 -3
  %542 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %541)
  %543 = getelementptr inbounds %class.SubmoduleElement, ptr %540, i64 0, i32 1
  %544 = getelementptr inbounds %class.SubmoduleElement, ptr %540, i64 0, i32 1, i32 1
  %545 = load i64, ptr %544, align 8, !tbaa !66
  %546 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %542) #23
  %547 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %543, i64 noundef 0, i64 noundef %545, ptr noundef %542, i64 noundef %546)
  %548 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 22), align 8, !tbaa !90
  %549 = getelementptr inbounds %struct.my_yyltype, ptr %77, i64 -1
  %550 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %549)
  %551 = getelementptr inbounds %class.SubmoduleElement, ptr %548, i64 0, i32 2
  %552 = getelementptr inbounds %class.SubmoduleElement, ptr %548, i64 0, i32 2, i32 1
  %553 = load i64, ptr %552, align 8, !tbaa !66
  %554 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %550) #23
  %555 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %551, i64 noundef 0, i64 noundef %553, ptr noundef %550, i64 noundef %554)
  %556 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 22), align 8, !tbaa !90
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(32) %541, i64 32, i1 false), !tbaa.struct !47
  call void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltypeS1_(ptr noundef %556, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %21, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %77)
  br label %1697

557:                                              ; preds = %228
  %558 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 22), align 8, !tbaa !90
  call void @_Z8storePosP10NEDElement10my_yyltype(ptr noundef %558, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5)
  br label %1697

559:                                              ; preds = %228
  %560 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 21), align 8, !tbaa !89
  %561 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 23, ptr noundef %560)
  store ptr %561, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 22), align 8, !tbaa !90
  %562 = getelementptr inbounds %struct.my_yyltype, ptr %77, i64 -4
  %563 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %562)
  %564 = getelementptr inbounds %class.SubmoduleElement, ptr %561, i64 0, i32 1
  %565 = getelementptr inbounds %class.SubmoduleElement, ptr %561, i64 0, i32 1, i32 1
  %566 = load i64, ptr %565, align 8, !tbaa !66
  %567 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %563) #23
  %568 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %564, i64 noundef 0, i64 noundef %566, ptr noundef %563, i64 noundef %567)
  %569 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 22), align 8, !tbaa !90
  %570 = getelementptr inbounds %struct.my_yyltype, ptr %77, i64 -2
  %571 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %570)
  %572 = getelementptr inbounds %class.SubmoduleElement, ptr %569, i64 0, i32 2
  %573 = getelementptr inbounds %class.SubmoduleElement, ptr %569, i64 0, i32 2, i32 1
  %574 = load i64, ptr %573, align 8, !tbaa !66
  %575 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %571) #23
  %576 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %572, i64 noundef 0, i64 noundef %574, ptr noundef %571, i64 noundef %575)
  %577 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 22), align 8, !tbaa !90
  %578 = getelementptr inbounds %struct.my_yyltype, ptr %77, i64 -1
  %579 = getelementptr inbounds ptr, ptr %76, i64 -1
  %580 = load ptr, ptr %579, align 8, !tbaa !42
  call void @_Z9addVectorP10NEDElementPKc10my_yyltypeS0_(ptr noundef %577, ptr noundef nonnull @.str.14, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %578, ptr noundef %580)
  %581 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 22), align 8, !tbaa !90
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 8 dereferenceable(32) %562, i64 32, i1 false), !tbaa.struct !47
  call void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltypeS1_(ptr noundef %581, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %22, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %77)
  br label %1697

582:                                              ; preds = %228
  %583 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 22), align 8, !tbaa !90
  call void @_Z8storePosP10NEDElement10my_yyltype(ptr noundef %583, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5)
  br label %1697

584:                                              ; preds = %228
  %585 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 21), align 8, !tbaa !89
  %586 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 23, ptr noundef %585)
  store ptr %586, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 22), align 8, !tbaa !90
  %587 = getelementptr inbounds %struct.my_yyltype, ptr %77, i64 -5
  %588 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %587)
  %589 = getelementptr inbounds %class.SubmoduleElement, ptr %586, i64 0, i32 1
  %590 = getelementptr inbounds %class.SubmoduleElement, ptr %586, i64 0, i32 1, i32 1
  %591 = load i64, ptr %590, align 8, !tbaa !66
  %592 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %588) #23
  %593 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %589, i64 noundef 0, i64 noundef %591, ptr noundef %588, i64 noundef %592)
  %594 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 22), align 8, !tbaa !90
  %595 = getelementptr inbounds %struct.my_yyltype, ptr %77, i64 -1
  %596 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %595)
  %597 = getelementptr inbounds %class.SubmoduleElement, ptr %594, i64 0, i32 3
  %598 = getelementptr inbounds %class.SubmoduleElement, ptr %594, i64 0, i32 3, i32 1
  %599 = load i64, ptr %598, align 8, !tbaa !66
  %600 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %596) #23
  %601 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %597, i64 noundef 0, i64 noundef %599, ptr noundef %596, i64 noundef %600)
  %602 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 22), align 8, !tbaa !90
  %603 = getelementptr inbounds %struct.my_yyltype, ptr %77, i64 -3
  %604 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %603)
  %605 = getelementptr inbounds %class.SubmoduleElement, ptr %602, i64 0, i32 4
  %606 = getelementptr inbounds %class.SubmoduleElement, ptr %602, i64 0, i32 4, i32 1
  %607 = load i64, ptr %606, align 8, !tbaa !66
  %608 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %604) #23
  %609 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %605, i64 noundef 0, i64 noundef %607, ptr noundef %604, i64 noundef %608)
  %610 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 22), align 8, !tbaa !90
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull align 8 dereferenceable(32) %587, i64 32, i1 false), !tbaa.struct !47
  call void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltypeS1_(ptr noundef %610, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %23, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %77)
  br label %1697

611:                                              ; preds = %228
  %612 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 22), align 8, !tbaa !90
  call void @_Z8storePosP10NEDElement10my_yyltype(ptr noundef %612, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5)
  br label %1697

613:                                              ; preds = %228
  %614 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 21), align 8, !tbaa !89
  %615 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 23, ptr noundef %614)
  store ptr %615, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 22), align 8, !tbaa !90
  %616 = getelementptr inbounds %struct.my_yyltype, ptr %77, i64 -6
  %617 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %616)
  %618 = getelementptr inbounds %class.SubmoduleElement, ptr %615, i64 0, i32 1
  %619 = getelementptr inbounds %class.SubmoduleElement, ptr %615, i64 0, i32 1, i32 1
  %620 = load i64, ptr %619, align 8, !tbaa !66
  %621 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %617) #23
  %622 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %618, i64 noundef 0, i64 noundef %620, ptr noundef %617, i64 noundef %621)
  %623 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 22), align 8, !tbaa !90
  %624 = getelementptr inbounds %struct.my_yyltype, ptr %77, i64 -1
  %625 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %624)
  %626 = getelementptr inbounds %class.SubmoduleElement, ptr %623, i64 0, i32 3
  %627 = getelementptr inbounds %class.SubmoduleElement, ptr %623, i64 0, i32 3, i32 1
  %628 = load i64, ptr %627, align 8, !tbaa !66
  %629 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %625) #23
  %630 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %626, i64 noundef 0, i64 noundef %628, ptr noundef %625, i64 noundef %629)
  %631 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 22), align 8, !tbaa !90
  %632 = getelementptr inbounds %struct.my_yyltype, ptr %77, i64 -4
  %633 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %632)
  %634 = getelementptr inbounds %class.SubmoduleElement, ptr %631, i64 0, i32 4
  %635 = getelementptr inbounds %class.SubmoduleElement, ptr %631, i64 0, i32 4, i32 1
  %636 = load i64, ptr %635, align 8, !tbaa !66
  %637 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %633) #23
  %638 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %634, i64 noundef 0, i64 noundef %636, ptr noundef %633, i64 noundef %637)
  %639 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 22), align 8, !tbaa !90
  %640 = getelementptr inbounds %struct.my_yyltype, ptr %77, i64 -3
  %641 = getelementptr inbounds ptr, ptr %76, i64 -3
  %642 = load ptr, ptr %641, align 8, !tbaa !42
  call void @_Z9addVectorP10NEDElementPKc10my_yyltypeS0_(ptr noundef %639, ptr noundef nonnull @.str.14, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %640, ptr noundef %642)
  %643 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 22), align 8, !tbaa !90
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull align 8 dereferenceable(32) %616, i64 32, i1 false), !tbaa.struct !47
  call void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltypeS1_(ptr noundef %643, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %24, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %77)
  br label %1697

644:                                              ; preds = %228
  %645 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 22), align 8, !tbaa !90
  call void @_Z8storePosP10NEDElement10my_yyltype(ptr noundef %645, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5)
  br label %1697

646:                                              ; preds = %228
  %647 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 13), align 8, !tbaa !91
  call void @_Z8storePosP10NEDElement10my_yyltype(ptr noundef %647, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5)
  br label %1697

648:                                              ; preds = %228
  call void @_Z35createSubstparamsElementIfNotExistsv()
  %649 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 13), align 8, !tbaa !91
  %650 = getelementptr inbounds %struct.my_yyltype, ptr %77, i64 -1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull align 8 dereferenceable(32) %650, i64 32, i1 false), !tbaa.struct !47
  call void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltypeS1_(ptr noundef %649, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %25, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %77)
  br label %1697

651:                                              ; preds = %228
  call void @_Z35createSubstparamsElementIfNotExistsv()
  %652 = getelementptr inbounds ptr, ptr %76, i64 -1
  %653 = load ptr, ptr %652, align 8, !tbaa !42
  %654 = icmp eq ptr %653, null
  br i1 %654, label %659, label %655

655:                                              ; preds = %651
  %656 = load ptr, ptr %653, align 8, !tbaa !78
  %657 = getelementptr inbounds ptr, ptr %656, i64 1
  %658 = load ptr, ptr %657, align 8
  call void %658(ptr noundef nonnull align 8 dereferenceable(112) %653) #23
  br label %659

659:                                              ; preds = %655, %651
  %660 = load ptr, ptr @np, align 8, !tbaa !42
  %661 = getelementptr inbounds %class.NEDParser, ptr %660, i64 0, i32 3
  %662 = load ptr, ptr %661, align 8, !tbaa !82
  %663 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 13), align 8, !tbaa !91
  call void (ptr, ptr, ptr, ...) @_ZN13NEDErrorStore8addErrorEP10NEDElementPKcz(ptr noundef nonnull align 8 dereferenceable(25) %662, ptr noundef %663, ptr noundef nonnull @.str.15)
  br label %1697

664:                                              ; preds = %228
  %665 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 13), align 8, !tbaa !91
  %666 = getelementptr inbounds %struct.my_yyltype, ptr %77, i64 -2
  %667 = call noundef ptr @_Z12addParameterP10NEDElement10my_yyltype(ptr noundef %665, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %666)
  store ptr %667, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 14), align 8, !tbaa !92
  %668 = load ptr, ptr %76, align 8, !tbaa !42
  call void @_Z13addExpressionP10NEDElementPKc10my_yyltypeS0_(ptr noundef %667, ptr noundef nonnull @.str.11, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %77, ptr noundef %668)
  %669 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 14), align 8, !tbaa !92
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef nonnull align 8 dereferenceable(32) %666, i64 32, i1 false), !tbaa.struct !47
  call void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltypeS1_(ptr noundef %669, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %26, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %77)
  %670 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 14), align 8, !tbaa !92
  call void @_Z8storePosP10NEDElement10my_yyltype(ptr noundef %670, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5)
  br label %1697

671:                                              ; preds = %228
  %672 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 13), align 8, !tbaa !91
  %673 = getelementptr inbounds %struct.my_yyltype, ptr %77, i64 -2
  %674 = call noundef ptr @_Z12addParameterP10NEDElement10my_yyltype(ptr noundef %672, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %673)
  store ptr %674, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 14), align 8, !tbaa !92
  %675 = getelementptr inbounds %class.ParamElement, ptr %674, i64 0, i32 6
  store i8 1, ptr %675, align 8, !tbaa !93
  br label %1697

676:                                              ; preds = %228
  %677 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 14), align 8, !tbaa !92
  %678 = getelementptr inbounds %struct.my_yyltype, ptr %77, i64 -4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull align 8 dereferenceable(32) %678, i64 32, i1 false), !tbaa.struct !47
  call void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltypeS1_(ptr noundef %677, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %27, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %77)
  %679 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 14), align 8, !tbaa !92
  call void @_Z8storePosP10NEDElement10my_yyltype(ptr noundef %679, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5)
  br label %1697

680:                                              ; preds = %228
  %681 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 14), align 8, !tbaa !92
  %682 = getelementptr inbounds %struct.my_yyltype, ptr %77, i64 -3
  %683 = getelementptr inbounds ptr, ptr %76, i64 -3
  %684 = load ptr, ptr %683, align 8, !tbaa !42
  call void @_Z13addExpressionP10NEDElementPKc10my_yyltypeS0_(ptr noundef %681, ptr noundef nonnull @.str.11, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %682, ptr noundef %684)
  %685 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 14), align 8, !tbaa !92
  %686 = call noundef ptr @_Z11addPropertyP10NEDElementPKc(ptr noundef %685, ptr noundef nonnull @.str.16)
  %687 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 18, ptr noundef %686)
  %688 = getelementptr inbounds %struct.my_yyltype, ptr %77, i64 -1
  %689 = call noundef ptr @_Z19createStringLiteral10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %688)
  %690 = load ptr, ptr %687, align 8, !tbaa !78
  %691 = getelementptr inbounds ptr, ptr %690, i64 27
  %692 = load ptr, ptr %691, align 8
  call void %692(ptr noundef nonnull align 8 dereferenceable(112) %687, ptr noundef %689)
  br label %1697

693:                                              ; preds = %228
  %694 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 14), align 8, !tbaa !92
  %695 = getelementptr inbounds %struct.my_yyltype, ptr %77, i64 -1
  %696 = getelementptr inbounds ptr, ptr %76, i64 -1
  %697 = load ptr, ptr %696, align 8, !tbaa !42
  call void @_Z13addExpressionP10NEDElementPKc10my_yyltypeS0_(ptr noundef %694, ptr noundef nonnull @.str.11, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %695, ptr noundef %697)
  br label %1697

698:                                              ; preds = %228
  %699 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 19), align 8, !tbaa !94
  call void @_Z8storePosP10NEDElement10my_yyltype(ptr noundef %699, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5)
  br label %1697

700:                                              ; preds = %228
  %701 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 22), align 8, !tbaa !90
  %702 = load ptr, ptr %701, align 8, !tbaa !78
  %703 = getelementptr inbounds ptr, ptr %702, i64 30
  %704 = load ptr, ptr %703, align 8
  %705 = call noundef ptr %704(ptr noundef nonnull align 8 dereferenceable(112) %701, i32 noundef 19)
  store ptr %705, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 19), align 8, !tbaa !94
  %706 = icmp eq ptr %705, null
  br i1 %706, label %707, label %710

707:                                              ; preds = %700
  %708 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 22), align 8, !tbaa !90
  %709 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 19, ptr noundef %708)
  store ptr %709, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 19), align 8, !tbaa !94
  br label %710

710:                                              ; preds = %700, %707
  %711 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 19), align 8, !tbaa !94
  %712 = getelementptr inbounds %struct.my_yyltype, ptr %77, i64 -1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %28, ptr noundef nonnull align 8 dereferenceable(32) %712, i64 32, i1 false), !tbaa.struct !47
  call void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltypeS1_(ptr noundef %711, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %28, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %77)
  br label %1697

713:                                              ; preds = %228
  call void @_Z35createSubstparamsElementIfNotExistsv()
  %714 = getelementptr inbounds ptr, ptr %76, i64 -1
  %715 = load ptr, ptr %714, align 8, !tbaa !42
  %716 = icmp eq ptr %715, null
  br i1 %716, label %721, label %717

717:                                              ; preds = %713
  %718 = load ptr, ptr %715, align 8, !tbaa !78
  %719 = getelementptr inbounds ptr, ptr %718, i64 1
  %720 = load ptr, ptr %719, align 8
  call void %720(ptr noundef nonnull align 8 dereferenceable(112) %715) #23
  br label %721

721:                                              ; preds = %717, %713
  %722 = load ptr, ptr @np, align 8, !tbaa !42
  %723 = getelementptr inbounds %class.NEDParser, ptr %722, i64 0, i32 3
  %724 = load ptr, ptr %723, align 8, !tbaa !82
  %725 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 13), align 8, !tbaa !91
  call void (ptr, ptr, ptr, ...) @_ZN13NEDErrorStore8addErrorEP10NEDElementPKcz(ptr noundef nonnull align 8 dereferenceable(25) %724, ptr noundef %725, ptr noundef nonnull @.str.17)
  br label %1697

726:                                              ; preds = %228
  %727 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 19), align 8, !tbaa !94
  %728 = getelementptr inbounds %struct.my_yyltype, ptr %77, i64 -1
  %729 = call noundef ptr @_Z7addGateP10NEDElement10my_yyltype(ptr noundef %727, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %728)
  store ptr %729, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 20), align 8, !tbaa !95
  %730 = getelementptr inbounds %class.GateElement, ptr %729, i64 0, i32 3
  store i8 1, ptr %730, align 4, !tbaa !87
  %731 = load ptr, ptr %76, align 8, !tbaa !42
  call void @_Z9addVectorP10NEDElementPKc10my_yyltypeS0_(ptr noundef %729, ptr noundef nonnull @.str.14, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %77, ptr noundef %731)
  %732 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 20), align 8, !tbaa !95
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef nonnull align 8 dereferenceable(32) %728, i64 32, i1 false), !tbaa.struct !47
  call void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltypeS1_(ptr noundef %732, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %29, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %77)
  %733 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 20), align 8, !tbaa !95
  call void @_Z8storePosP10NEDElement10my_yyltype(ptr noundef %733, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5)
  br label %1697

734:                                              ; preds = %228
  %735 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 22), align 8, !tbaa !90
  %736 = call noundef ptr @_Z20addComponentPropertyP10NEDElementPKc(ptr noundef %735, ptr noundef nonnull @.str.12)
  store ptr %736, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 15), align 8, !tbaa !77
  %737 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 22), align 8, !tbaa !90
  %738 = load ptr, ptr %737, align 8, !tbaa !78
  %739 = getelementptr inbounds ptr, ptr %738, i64 30
  %740 = load ptr, ptr %739, align 8
  %741 = call noundef ptr %740(ptr noundef nonnull align 8 dereferenceable(112) %737, i32 noundef 14)
  store ptr %741, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 13), align 8, !tbaa !91
  %742 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 15), align 8, !tbaa !77
  %743 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 18, ptr noundef %742)
  store ptr %743, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 16), align 8, !tbaa !80
  %744 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 34, ptr noundef null)
  call void @_ZN14LiteralElement7setTypeEi(ptr noundef nonnull align 8 dereferenceable(216) %744, i32 noundef 2)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %30) #23
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %31) #23
  %745 = getelementptr inbounds %struct.my_yyltype, ptr %77, i64 -1
  %746 = invoke noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %745)
          to label %747 unwind label %774

747:                                              ; preds = %734
  invoke void @_Z18opp_parsequotedstrB5cxx11PKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %31, ptr noundef %746)
          to label %748 unwind label %774

748:                                              ; preds = %747
  %749 = load ptr, ptr %31, align 8, !tbaa !81
  invoke void @_ZN17DisplayStringUtil29upgradeSubmoduleDisplayStringB5cxx11EPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %30, ptr noundef %749)
          to label %750 unwind label %776

750:                                              ; preds = %748
  %751 = load ptr, ptr %31, align 8, !tbaa !81
  %752 = icmp eq ptr %751, %58
  br i1 %752, label %753, label %757

753:                                              ; preds = %750
  %754 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %31, i64 0, i32 1
  %755 = load i64, ptr %754, align 8, !tbaa !66
  %756 = icmp ult i64 %755, 16
  call void @llvm.assume(i1 %756)
  br label %758

757:                                              ; preds = %750
  call void @_ZdlPv(ptr noundef %751) #26
  br label %758

758:                                              ; preds = %753, %757
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %31) #23
  %759 = load ptr, ptr %30, align 8, !tbaa !81
  %760 = getelementptr inbounds %class.LiteralElement, ptr %744, i64 0, i32 4
  %761 = getelementptr inbounds %class.LiteralElement, ptr %744, i64 0, i32 4, i32 1
  %762 = load i64, ptr %761, align 8, !tbaa !66
  %763 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %759) #23
  %764 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %760, i64 noundef 0, i64 noundef %762, ptr noundef %759, i64 noundef %763)
          to label %765 unwind label %788

765:                                              ; preds = %758
  %766 = load ptr, ptr %30, align 8, !tbaa !81
  %767 = icmp eq ptr %766, %59
  br i1 %767, label %768, label %772

768:                                              ; preds = %765
  %769 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %30, i64 0, i32 1
  %770 = load i64, ptr %769, align 8, !tbaa !66
  %771 = icmp ult i64 %770, 16
  call void @llvm.assume(i1 %771)
  br label %773

772:                                              ; preds = %765
  call void @_ZdlPv(ptr noundef %766) #26
  br label %773

773:                                              ; preds = %768, %772
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %30) #23
  br label %815

774:                                              ; preds = %747, %734
  %775 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %786

776:                                              ; preds = %748
  %777 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  %778 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %31, i64 0, i32 2
  %779 = load ptr, ptr %31, align 8, !tbaa !81
  %780 = icmp eq ptr %779, %778
  br i1 %780, label %781, label %785

781:                                              ; preds = %776
  %782 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %31, i64 0, i32 1
  %783 = load i64, ptr %782, align 8, !tbaa !66
  %784 = icmp ult i64 %783, 16
  call void @llvm.assume(i1 %784)
  br label %786

785:                                              ; preds = %776
  call void @_ZdlPv(ptr noundef %779) #26
  br label %786

786:                                              ; preds = %785, %781, %774
  %787 = phi { ptr, i32 } [ %775, %774 ], [ %777, %781 ], [ %777, %785 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %31) #23
  br label %798

788:                                              ; preds = %758
  %789 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  %790 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %30, i64 0, i32 2
  %791 = load ptr, ptr %30, align 8, !tbaa !81
  %792 = icmp eq ptr %791, %790
  br i1 %792, label %793, label %797

793:                                              ; preds = %788
  %794 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %30, i64 0, i32 1
  %795 = load i64, ptr %794, align 8, !tbaa !66
  %796 = icmp ult i64 %795, 16
  call void @llvm.assume(i1 %796)
  br label %798

797:                                              ; preds = %788
  call void @_ZdlPv(ptr noundef %791) #26
  br label %798

798:                                              ; preds = %797, %793, %786
  %799 = phi { ptr, i32 } [ %787, %786 ], [ %789, %793 ], [ %789, %797 ]
  %800 = extractvalue { ptr, i32 } %799, 1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %30) #23
  %801 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTISt9exception) #23
  %802 = icmp eq i32 %800, %801
  br i1 %802, label %803, label %1830

803:                                              ; preds = %798
  %804 = extractvalue { ptr, i32 } %799, 0
  %805 = call ptr @__cxa_begin_catch(ptr %804) #23
  %806 = load ptr, ptr @np, align 8, !tbaa !42
  %807 = getelementptr inbounds %class.NEDParser, ptr %806, i64 0, i32 3
  %808 = load ptr, ptr %807, align 8, !tbaa !82
  %809 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 15), align 8, !tbaa !77
  %810 = load ptr, ptr %805, align 8, !tbaa !78
  %811 = getelementptr inbounds ptr, ptr %810, i64 2
  %812 = load ptr, ptr %811, align 8
  %813 = call noundef ptr %812(ptr noundef nonnull align 8 dereferenceable(8) %805) #23
  invoke void (ptr, ptr, ptr, ...) @_ZN13NEDErrorStore8addErrorEP10NEDElementPKcz(ptr noundef nonnull align 8 dereferenceable(25) %808, ptr noundef %809, ptr noundef %813)
          to label %814 unwind label %823

814:                                              ; preds = %803
  call void @__cxa_end_catch()
  br label %815

815:                                              ; preds = %814, %773
  %816 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 16), align 8, !tbaa !80
  %817 = load ptr, ptr %816, align 8, !tbaa !78
  %818 = getelementptr inbounds ptr, ptr %817, i64 27
  %819 = load ptr, ptr %818, align 8
  call void %819(ptr noundef nonnull align 8 dereferenceable(112) %816, ptr noundef nonnull %744)
  %820 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 16), align 8, !tbaa !80
  call void @_Z8storePosP10NEDElement10my_yyltype(ptr noundef %820, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5)
  call void @_Z8storePosP10NEDElement10my_yyltype(ptr noundef nonnull %744, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %745)
  %821 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 15), align 8, !tbaa !77
  call void @_Z8storePosP10NEDElement10my_yyltype(ptr noundef %821, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5)
  %822 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 15), align 8, !tbaa !77
  call void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltype(ptr noundef %822, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5)
  br label %1697

823:                                              ; preds = %803
  %824 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %1830 unwind label %1832

825:                                              ; preds = %228
  %826 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 10), align 8, !tbaa !63
  %827 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 24, ptr noundef %826)
  store ptr %827, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 23), align 8, !tbaa !96
  %828 = getelementptr inbounds %class.ConnectionsElement, ptr %827, i64 0, i32 1
  store i8 1, ptr %828, align 8, !tbaa !97
  %829 = getelementptr inbounds %struct.my_yyltype, ptr %77, i64 -2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %32, ptr noundef nonnull align 8 dereferenceable(32) %829, i64 32, i1 false), !tbaa.struct !47
  call void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltypeS1_(ptr noundef %827, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %32, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %77)
  br label %1697

830:                                              ; preds = %228
  %831 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 23), align 8, !tbaa !96
  call void @_Z8storePosP10NEDElement10my_yyltype(ptr noundef %831, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5)
  br label %1697

832:                                              ; preds = %228
  %833 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 10), align 8, !tbaa !63
  %834 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 24, ptr noundef %833)
  store ptr %834, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 23), align 8, !tbaa !96
  %835 = getelementptr inbounds %class.ConnectionsElement, ptr %834, i64 0, i32 1
  store i8 0, ptr %835, align 8, !tbaa !97
  %836 = getelementptr inbounds %struct.my_yyltype, ptr %77, i64 -1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %33, ptr noundef nonnull align 8 dereferenceable(32) %836, i64 32, i1 false), !tbaa.struct !47
  call void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltypeS1_(ptr noundef %834, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %33, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %77)
  br label %1697

837:                                              ; preds = %228
  %838 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 23), align 8, !tbaa !96
  call void @_Z8storePosP10NEDElement10my_yyltype(ptr noundef %838, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5)
  br label %1697

839:                                              ; preds = %228
  %840 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 23), align 8, !tbaa !96
  %841 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 27, ptr noundef %840)
  store ptr %841, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 24), align 8, !tbaa !99
  store i8 1, ptr @_ZL2ps, align 8, !tbaa !100
  br label %1697

842:                                              ; preds = %228
  store i8 0, ptr @_ZL2ps, align 8, !tbaa !100
  %843 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 24), align 8, !tbaa !99
  call void @_Z8storePosP10NEDElement10my_yyltype(ptr noundef %843, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5)
  %844 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 24), align 8, !tbaa !99
  %845 = getelementptr inbounds %struct.my_yyltype, ptr %77, i64 -6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %34, ptr noundef nonnull align 8 dereferenceable(32) %845, i64 32, i1 false), !tbaa.struct !47
  %846 = getelementptr inbounds %struct.my_yyltype, ptr %77, i64 -3
  call void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltypeS1_(ptr noundef %844, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %34, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %846)
  %847 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 24), align 8, !tbaa !99
  call void @_Z20storeTrailingCommentP10NEDElement10my_yyltype(ptr noundef %847, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5)
  br label %1697

848:                                              ; preds = %228
  %849 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 24), align 8, !tbaa !99
  %850 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 28, ptr noundef %849)
  store ptr %850, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 27), align 8, !tbaa !101
  %851 = getelementptr inbounds %struct.my_yyltype, ptr %77, i64 -4
  %852 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %851)
  %853 = getelementptr inbounds %class.LoopElement, ptr %850, i64 0, i32 1
  %854 = getelementptr inbounds %class.LoopElement, ptr %850, i64 0, i32 1, i32 1
  %855 = load i64, ptr %854, align 8, !tbaa !66
  %856 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %852) #23
  %857 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %853, i64 noundef 0, i64 noundef %855, ptr noundef %852, i64 noundef %856)
  %858 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 27), align 8, !tbaa !101
  %859 = getelementptr inbounds %struct.my_yyltype, ptr %77, i64 -2
  %860 = getelementptr inbounds ptr, ptr %76, i64 -2
  %861 = load ptr, ptr %860, align 8, !tbaa !42
  call void @_Z13addExpressionP10NEDElementPKc10my_yyltypeS0_(ptr noundef %858, ptr noundef nonnull @.str.18, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %859, ptr noundef %861)
  %862 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 27), align 8, !tbaa !101
  %863 = load ptr, ptr %76, align 8, !tbaa !42
  call void @_Z13addExpressionP10NEDElementPKc10my_yyltypeS0_(ptr noundef %862, ptr noundef nonnull @.str.19, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %77, ptr noundef %863)
  %864 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 27), align 8, !tbaa !101
  call void @_Z8storePosP10NEDElement10my_yyltype(ptr noundef %864, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5)
  br label %1697

865:                                              ; preds = %228
  %866 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 25), align 8, !tbaa !102
  %867 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 29, ptr noundef %866)
  store ptr %867, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 28), align 8, !tbaa !103
  %868 = load ptr, ptr %76, align 8, !tbaa !42
  call void @_Z13addExpressionP10NEDElementPKc10my_yyltypeS0_(ptr noundef %867, ptr noundef nonnull @.str.20, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %77, ptr noundef %868)
  %869 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 28), align 8, !tbaa !103
  call void @_Z8storePosP10NEDElement10my_yyltype(ptr noundef %869, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5)
  br label %1697

870:                                              ; preds = %228
  %871 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 26), align 8, !tbaa !104
  %872 = icmp eq ptr %871, null
  br i1 %872, label %873, label %878

873:                                              ; preds = %870
  %874 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 25), align 8, !tbaa !102
  %875 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 26, ptr noundef %874)
  %876 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 14, ptr noundef %875)
  store ptr %876, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 11), align 8, !tbaa !71
  %877 = getelementptr inbounds %class.ParametersElement, ptr %876, i64 0, i32 1
  store i8 1, ptr %877, align 8, !tbaa !72
  store ptr %875, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 26), align 8, !tbaa !104
  br label %878

878:                                              ; preds = %873, %870
  %879 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 26), align 8, !tbaa !104
  %880 = call noundef ptr @_Z20addComponentPropertyP10NEDElementPKc(ptr noundef %879, ptr noundef nonnull @.str.12)
  store ptr %880, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 15), align 8, !tbaa !77
  %881 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 18, ptr noundef %880)
  store ptr %881, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 16), align 8, !tbaa !80
  %882 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 34, ptr noundef null)
  call void @_ZN14LiteralElement7setTypeEi(ptr noundef nonnull align 8 dereferenceable(216) %882, i32 noundef 2)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %35) #23
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %36) #23
  %883 = invoke noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %77)
          to label %884 unwind label %911

884:                                              ; preds = %878
  invoke void @_Z18opp_parsequotedstrB5cxx11PKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %36, ptr noundef %883)
          to label %885 unwind label %911

885:                                              ; preds = %884
  %886 = load ptr, ptr %36, align 8, !tbaa !81
  invoke void @_ZN17DisplayStringUtil30upgradeConnectionDisplayStringB5cxx11EPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %35, ptr noundef %886)
          to label %887 unwind label %913

887:                                              ; preds = %885
  %888 = load ptr, ptr %36, align 8, !tbaa !81
  %889 = icmp eq ptr %888, %56
  br i1 %889, label %890, label %894

890:                                              ; preds = %887
  %891 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %36, i64 0, i32 1
  %892 = load i64, ptr %891, align 8, !tbaa !66
  %893 = icmp ult i64 %892, 16
  call void @llvm.assume(i1 %893)
  br label %895

894:                                              ; preds = %887
  call void @_ZdlPv(ptr noundef %888) #26
  br label %895

895:                                              ; preds = %890, %894
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %36) #23
  %896 = load ptr, ptr %35, align 8, !tbaa !81
  %897 = getelementptr inbounds %class.LiteralElement, ptr %882, i64 0, i32 4
  %898 = getelementptr inbounds %class.LiteralElement, ptr %882, i64 0, i32 4, i32 1
  %899 = load i64, ptr %898, align 8, !tbaa !66
  %900 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %896) #23
  %901 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %897, i64 noundef 0, i64 noundef %899, ptr noundef %896, i64 noundef %900)
          to label %902 unwind label %925

902:                                              ; preds = %895
  %903 = load ptr, ptr %35, align 8, !tbaa !81
  %904 = icmp eq ptr %903, %57
  br i1 %904, label %905, label %909

905:                                              ; preds = %902
  %906 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %35, i64 0, i32 1
  %907 = load i64, ptr %906, align 8, !tbaa !66
  %908 = icmp ult i64 %907, 16
  call void @llvm.assume(i1 %908)
  br label %910

909:                                              ; preds = %902
  call void @_ZdlPv(ptr noundef %903) #26
  br label %910

910:                                              ; preds = %905, %909
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %35) #23
  br label %952

911:                                              ; preds = %884, %878
  %912 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %923

913:                                              ; preds = %885
  %914 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  %915 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %36, i64 0, i32 2
  %916 = load ptr, ptr %36, align 8, !tbaa !81
  %917 = icmp eq ptr %916, %915
  br i1 %917, label %918, label %922

918:                                              ; preds = %913
  %919 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %36, i64 0, i32 1
  %920 = load i64, ptr %919, align 8, !tbaa !66
  %921 = icmp ult i64 %920, 16
  call void @llvm.assume(i1 %921)
  br label %923

922:                                              ; preds = %913
  call void @_ZdlPv(ptr noundef %916) #26
  br label %923

923:                                              ; preds = %922, %918, %911
  %924 = phi { ptr, i32 } [ %912, %911 ], [ %914, %918 ], [ %914, %922 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %36) #23
  br label %935

925:                                              ; preds = %895
  %926 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  %927 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %35, i64 0, i32 2
  %928 = load ptr, ptr %35, align 8, !tbaa !81
  %929 = icmp eq ptr %928, %927
  br i1 %929, label %930, label %934

930:                                              ; preds = %925
  %931 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %35, i64 0, i32 1
  %932 = load i64, ptr %931, align 8, !tbaa !66
  %933 = icmp ult i64 %932, 16
  call void @llvm.assume(i1 %933)
  br label %935

934:                                              ; preds = %925
  call void @_ZdlPv(ptr noundef %928) #26
  br label %935

935:                                              ; preds = %934, %930, %923
  %936 = phi { ptr, i32 } [ %924, %923 ], [ %926, %930 ], [ %926, %934 ]
  %937 = extractvalue { ptr, i32 } %936, 1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %35) #23
  %938 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTISt9exception) #23
  %939 = icmp eq i32 %937, %938
  br i1 %939, label %940, label %1830

940:                                              ; preds = %935
  %941 = extractvalue { ptr, i32 } %936, 0
  %942 = call ptr @__cxa_begin_catch(ptr %941) #23
  %943 = load ptr, ptr @np, align 8, !tbaa !42
  %944 = getelementptr inbounds %class.NEDParser, ptr %943, i64 0, i32 3
  %945 = load ptr, ptr %944, align 8, !tbaa !82
  %946 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 15), align 8, !tbaa !77
  %947 = load ptr, ptr %942, align 8, !tbaa !78
  %948 = getelementptr inbounds ptr, ptr %947, i64 2
  %949 = load ptr, ptr %948, align 8
  %950 = call noundef ptr %949(ptr noundef nonnull align 8 dereferenceable(8) %942) #23
  invoke void (ptr, ptr, ptr, ...) @_ZN13NEDErrorStore8addErrorEP10NEDElementPKcz(ptr noundef nonnull align 8 dereferenceable(25) %945, ptr noundef %946, ptr noundef %950)
          to label %951 unwind label %961

951:                                              ; preds = %940
  call void @__cxa_end_catch()
  br label %952

952:                                              ; preds = %951, %910
  %953 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 16), align 8, !tbaa !80
  %954 = load ptr, ptr %953, align 8, !tbaa !78
  %955 = getelementptr inbounds ptr, ptr %954, i64 27
  %956 = load ptr, ptr %955, align 8
  call void %956(ptr noundef nonnull align 8 dereferenceable(112) %953, ptr noundef nonnull %882)
  %957 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 16), align 8, !tbaa !80
  call void @_Z8storePosP10NEDElement10my_yyltype(ptr noundef %957, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5)
  call void @_Z8storePosP10NEDElement10my_yyltype(ptr noundef nonnull %882, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %77)
  %958 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 15), align 8, !tbaa !77
  call void @_Z8storePosP10NEDElement10my_yyltype(ptr noundef %958, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5)
  br i1 %872, label %959, label %1697

959:                                              ; preds = %952
  %960 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 26), align 8, !tbaa !104
  call void @_Z8storePosP10NEDElement10my_yyltype(ptr noundef %960, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5)
  br label %1697

961:                                              ; preds = %940
  %962 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %1830 unwind label %1832

963:                                              ; preds = %228
  %964 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 25), align 8, !tbaa !102
  call void @_ZN17ConnectionElement17setArrowDirectionEi(ptr noundef nonnull align 8 dereferenceable(400) %964, i32 noundef 1)
  %965 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 25), align 8, !tbaa !102
  call void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltype(ptr noundef %965, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5)
  %966 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 25), align 8, !tbaa !102
  call void @_Z8storePosP10NEDElement10my_yyltype(ptr noundef %966, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5)
  br label %1697

967:                                              ; preds = %228
  %968 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 25), align 8, !tbaa !102
  call void @_ZN17ConnectionElement17setArrowDirectionEi(ptr noundef nonnull align 8 dereferenceable(400) %968, i32 noundef 1)
  call void @_Z29removeRedundantChanSpecParamsv()
  %969 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 25), align 8, !tbaa !102
  call void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltype(ptr noundef %969, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5)
  %970 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 25), align 8, !tbaa !102
  call void @_Z8storePosP10NEDElement10my_yyltype(ptr noundef %970, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5)
  br label %1697

971:                                              ; preds = %228
  %972 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 25), align 8, !tbaa !102
  call void @_Z14swapConnectionP10NEDElement(ptr noundef %972)
  %973 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 25), align 8, !tbaa !102
  call void @_ZN17ConnectionElement17setArrowDirectionEi(ptr noundef nonnull align 8 dereferenceable(400) %973, i32 noundef 0)
  %974 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 25), align 8, !tbaa !102
  call void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltype(ptr noundef %974, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5)
  %975 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 25), align 8, !tbaa !102
  call void @_Z8storePosP10NEDElement10my_yyltype(ptr noundef %975, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5)
  br label %1697

976:                                              ; preds = %228
  %977 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 25), align 8, !tbaa !102
  call void @_Z14swapConnectionP10NEDElement(ptr noundef %977)
  %978 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 25), align 8, !tbaa !102
  call void @_ZN17ConnectionElement17setArrowDirectionEi(ptr noundef nonnull align 8 dereferenceable(400) %978, i32 noundef 0)
  call void @_Z29removeRedundantChanSpecParamsv()
  %979 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 25), align 8, !tbaa !102
  call void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltype(ptr noundef %979, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5)
  %980 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 25), align 8, !tbaa !102
  call void @_Z8storePosP10NEDElement10my_yyltype(ptr noundef %980, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5)
  br label %1697

981:                                              ; preds = %228
  %982 = load i8, ptr @_ZL2ps, align 8, !tbaa !100, !range !59, !noundef !60
  %983 = icmp eq i8 %982, 0
  %984 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 24), align 8
  %985 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 23), align 8
  %986 = select i1 %983, ptr %985, ptr %984
  %987 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 25, ptr noundef %986)
  store ptr %987, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 25), align 8, !tbaa !102
  %988 = getelementptr inbounds %struct.my_yyltype, ptr %77, i64 -1
  %989 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %988)
  %990 = getelementptr inbounds %class.ConnectionElement, ptr %987, i64 0, i32 1
  %991 = getelementptr inbounds %class.ConnectionElement, ptr %987, i64 0, i32 1, i32 1
  %992 = load i64, ptr %991, align 8, !tbaa !66
  %993 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %989) #23
  %994 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %990, i64 noundef 0, i64 noundef %992, ptr noundef %989, i64 noundef %993)
  %995 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 25), align 8, !tbaa !102
  %996 = load ptr, ptr %76, align 8, !tbaa !42
  call void @_Z9addVectorP10NEDElementPKc10my_yyltypeS0_(ptr noundef %995, ptr noundef nonnull @.str.21, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %77, ptr noundef %996)
  store ptr null, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 26), align 8, !tbaa !104
  br label %1697

997:                                              ; preds = %228
  %998 = load i8, ptr @_ZL2ps, align 8, !tbaa !100, !range !59, !noundef !60
  %999 = icmp eq i8 %998, 0
  %1000 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 24), align 8
  %1001 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 23), align 8
  %1002 = select i1 %999, ptr %1001, ptr %1000
  %1003 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 25, ptr noundef %1002)
  store ptr %1003, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 25), align 8, !tbaa !102
  %1004 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %77)
  %1005 = getelementptr inbounds %class.ConnectionElement, ptr %1003, i64 0, i32 1
  %1006 = getelementptr inbounds %class.ConnectionElement, ptr %1003, i64 0, i32 1, i32 1
  %1007 = load i64, ptr %1006, align 8, !tbaa !66
  %1008 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1004) #23
  %1009 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1005, i64 noundef 0, i64 noundef %1007, ptr noundef %1004, i64 noundef %1008)
  store ptr null, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 26), align 8, !tbaa !104
  br label %1697

1010:                                             ; preds = %228
  %1011 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 25), align 8, !tbaa !102
  %1012 = getelementptr inbounds %struct.my_yyltype, ptr %77, i64 -1
  %1013 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %1012)
  %1014 = getelementptr inbounds %class.ConnectionElement, ptr %1011, i64 0, i32 3
  %1015 = getelementptr inbounds %class.ConnectionElement, ptr %1011, i64 0, i32 3, i32 1
  %1016 = load i64, ptr %1015, align 8, !tbaa !66
  %1017 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1013) #23
  %1018 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1014, i64 noundef 0, i64 noundef %1016, ptr noundef %1013, i64 noundef %1017)
  %1019 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 25), align 8, !tbaa !102
  %1020 = load ptr, ptr %76, align 8, !tbaa !42
  call void @_Z9addVectorP10NEDElementPKc10my_yyltypeS0_(ptr noundef %1019, ptr noundef nonnull @.str.22, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %77, ptr noundef %1020)
  br label %1697

1021:                                             ; preds = %228
  %1022 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 25), align 8, !tbaa !102
  %1023 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %77)
  %1024 = getelementptr inbounds %class.ConnectionElement, ptr %1022, i64 0, i32 3
  %1025 = getelementptr inbounds %class.ConnectionElement, ptr %1022, i64 0, i32 3, i32 1
  %1026 = load i64, ptr %1025, align 8, !tbaa !66
  %1027 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1023) #23
  %1028 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1024, i64 noundef 0, i64 noundef %1026, ptr noundef %1023, i64 noundef %1027)
  br label %1697

1029:                                             ; preds = %228
  %1030 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 25), align 8, !tbaa !102
  %1031 = getelementptr inbounds %struct.my_yyltype, ptr %77, i64 -1
  %1032 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %1031)
  %1033 = getelementptr inbounds %class.ConnectionElement, ptr %1030, i64 0, i32 3
  %1034 = getelementptr inbounds %class.ConnectionElement, ptr %1030, i64 0, i32 3, i32 1
  %1035 = load i64, ptr %1034, align 8, !tbaa !66
  %1036 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1032) #23
  %1037 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1033, i64 noundef 0, i64 noundef %1035, ptr noundef %1032, i64 noundef %1036)
  %1038 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 25), align 8, !tbaa !102
  %1039 = getelementptr inbounds %class.ConnectionElement, ptr %1038, i64 0, i32 4
  store i8 1, ptr %1039, align 8, !tbaa !105
  br label %1697

1040:                                             ; preds = %228
  %1041 = load i8, ptr @_ZL2ps, align 8, !tbaa !100, !range !59, !noundef !60
  %1042 = icmp eq i8 %1041, 0
  %1043 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 24), align 8
  %1044 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 23), align 8
  %1045 = select i1 %1042, ptr %1044, ptr %1043
  %1046 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 25, ptr noundef %1045)
  store ptr %1046, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 25), align 8, !tbaa !102
  %1047 = getelementptr inbounds %class.ConnectionElement, ptr %1046, i64 0, i32 1
  %1048 = getelementptr inbounds %class.ConnectionElement, ptr %1046, i64 0, i32 1, i32 1
  %1049 = load i64, ptr %1048, align 8, !tbaa !66
  %1050 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1047, i64 noundef 0, i64 noundef %1049, ptr noundef nonnull @.str.23, i64 noundef 0)
  %1051 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 25), align 8, !tbaa !102
  %1052 = getelementptr inbounds %struct.my_yyltype, ptr %77, i64 -1
  %1053 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %1052)
  %1054 = getelementptr inbounds %class.ConnectionElement, ptr %1051, i64 0, i32 3
  %1055 = getelementptr inbounds %class.ConnectionElement, ptr %1051, i64 0, i32 3, i32 1
  %1056 = load i64, ptr %1055, align 8, !tbaa !66
  %1057 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1053) #23
  %1058 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1054, i64 noundef 0, i64 noundef %1056, ptr noundef %1053, i64 noundef %1057)
  %1059 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 25), align 8, !tbaa !102
  %1060 = load ptr, ptr %76, align 8, !tbaa !42
  call void @_Z9addVectorP10NEDElementPKc10my_yyltypeS0_(ptr noundef %1059, ptr noundef nonnull @.str.22, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %77, ptr noundef %1060)
  store ptr null, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 26), align 8, !tbaa !104
  br label %1697

1061:                                             ; preds = %228
  %1062 = load i8, ptr @_ZL2ps, align 8, !tbaa !100, !range !59, !noundef !60
  %1063 = icmp eq i8 %1062, 0
  %1064 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 24), align 8
  %1065 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 23), align 8
  %1066 = select i1 %1063, ptr %1065, ptr %1064
  %1067 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 25, ptr noundef %1066)
  store ptr %1067, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 25), align 8, !tbaa !102
  %1068 = getelementptr inbounds %class.ConnectionElement, ptr %1067, i64 0, i32 1
  %1069 = getelementptr inbounds %class.ConnectionElement, ptr %1067, i64 0, i32 1, i32 1
  %1070 = load i64, ptr %1069, align 8, !tbaa !66
  %1071 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1068, i64 noundef 0, i64 noundef %1070, ptr noundef nonnull @.str.23, i64 noundef 0)
  %1072 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 25), align 8, !tbaa !102
  %1073 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %77)
  %1074 = getelementptr inbounds %class.ConnectionElement, ptr %1072, i64 0, i32 3
  %1075 = getelementptr inbounds %class.ConnectionElement, ptr %1072, i64 0, i32 3, i32 1
  %1076 = load i64, ptr %1075, align 8, !tbaa !66
  %1077 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1073) #23
  %1078 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1074, i64 noundef 0, i64 noundef %1076, ptr noundef %1073, i64 noundef %1077)
  store ptr null, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 26), align 8, !tbaa !104
  br label %1697

1079:                                             ; preds = %228
  %1080 = load i8, ptr @_ZL2ps, align 8, !tbaa !100, !range !59, !noundef !60
  %1081 = icmp eq i8 %1080, 0
  %1082 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 24), align 8
  %1083 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 23), align 8
  %1084 = select i1 %1081, ptr %1083, ptr %1082
  %1085 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 25, ptr noundef %1084)
  store ptr %1085, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 25), align 8, !tbaa !102
  %1086 = getelementptr inbounds %class.ConnectionElement, ptr %1085, i64 0, i32 1
  %1087 = getelementptr inbounds %class.ConnectionElement, ptr %1085, i64 0, i32 1, i32 1
  %1088 = load i64, ptr %1087, align 8, !tbaa !66
  %1089 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1086, i64 noundef 0, i64 noundef %1088, ptr noundef nonnull @.str.23, i64 noundef 0)
  %1090 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 25), align 8, !tbaa !102
  %1091 = getelementptr inbounds %struct.my_yyltype, ptr %77, i64 -1
  %1092 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %1091)
  %1093 = getelementptr inbounds %class.ConnectionElement, ptr %1090, i64 0, i32 3
  %1094 = getelementptr inbounds %class.ConnectionElement, ptr %1090, i64 0, i32 3, i32 1
  %1095 = load i64, ptr %1094, align 8, !tbaa !66
  %1096 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1092) #23
  %1097 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1093, i64 noundef 0, i64 noundef %1095, ptr noundef %1092, i64 noundef %1096)
  %1098 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 25), align 8, !tbaa !102
  %1099 = getelementptr inbounds %class.ConnectionElement, ptr %1098, i64 0, i32 4
  store i8 1, ptr %1099, align 8, !tbaa !105
  store ptr null, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 26), align 8, !tbaa !104
  br label %1697

1100:                                             ; preds = %228
  %1101 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 25), align 8, !tbaa !102
  %1102 = getelementptr inbounds %struct.my_yyltype, ptr %77, i64 -1
  %1103 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %1102)
  %1104 = getelementptr inbounds %class.ConnectionElement, ptr %1101, i64 0, i32 7
  %1105 = getelementptr inbounds %class.ConnectionElement, ptr %1101, i64 0, i32 7, i32 1
  %1106 = load i64, ptr %1105, align 8, !tbaa !66
  %1107 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1103) #23
  %1108 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1104, i64 noundef 0, i64 noundef %1106, ptr noundef %1103, i64 noundef %1107)
  %1109 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 25), align 8, !tbaa !102
  %1110 = load ptr, ptr %76, align 8, !tbaa !42
  call void @_Z9addVectorP10NEDElementPKc10my_yyltypeS0_(ptr noundef %1109, ptr noundef nonnull @.str.24, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %77, ptr noundef %1110)
  br label %1697

1111:                                             ; preds = %228
  %1112 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 25), align 8, !tbaa !102
  %1113 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %77)
  %1114 = getelementptr inbounds %class.ConnectionElement, ptr %1112, i64 0, i32 7
  %1115 = getelementptr inbounds %class.ConnectionElement, ptr %1112, i64 0, i32 7, i32 1
  %1116 = load i64, ptr %1115, align 8, !tbaa !66
  %1117 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1113) #23
  %1118 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1114, i64 noundef 0, i64 noundef %1116, ptr noundef %1113, i64 noundef %1117)
  br label %1697

1119:                                             ; preds = %228
  %1120 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 25), align 8, !tbaa !102
  %1121 = getelementptr inbounds %struct.my_yyltype, ptr %77, i64 -1
  %1122 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %1121)
  %1123 = getelementptr inbounds %class.ConnectionElement, ptr %1120, i64 0, i32 9
  %1124 = getelementptr inbounds %class.ConnectionElement, ptr %1120, i64 0, i32 9, i32 1
  %1125 = load i64, ptr %1124, align 8, !tbaa !66
  %1126 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1122) #23
  %1127 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1123, i64 noundef 0, i64 noundef %1125, ptr noundef %1122, i64 noundef %1126)
  %1128 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 25), align 8, !tbaa !102
  %1129 = load ptr, ptr %76, align 8, !tbaa !42
  call void @_Z9addVectorP10NEDElementPKc10my_yyltypeS0_(ptr noundef %1128, ptr noundef nonnull @.str.25, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %77, ptr noundef %1129)
  br label %1697

1130:                                             ; preds = %228
  %1131 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 25), align 8, !tbaa !102
  %1132 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %77)
  %1133 = getelementptr inbounds %class.ConnectionElement, ptr %1131, i64 0, i32 9
  %1134 = getelementptr inbounds %class.ConnectionElement, ptr %1131, i64 0, i32 9, i32 1
  %1135 = load i64, ptr %1134, align 8, !tbaa !66
  %1136 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1132) #23
  %1137 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1133, i64 noundef 0, i64 noundef %1135, ptr noundef %1132, i64 noundef %1136)
  br label %1697

1138:                                             ; preds = %228
  %1139 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 25), align 8, !tbaa !102
  %1140 = getelementptr inbounds %struct.my_yyltype, ptr %77, i64 -1
  %1141 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %1140)
  %1142 = getelementptr inbounds %class.ConnectionElement, ptr %1139, i64 0, i32 9
  %1143 = getelementptr inbounds %class.ConnectionElement, ptr %1139, i64 0, i32 9, i32 1
  %1144 = load i64, ptr %1143, align 8, !tbaa !66
  %1145 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1141) #23
  %1146 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1142, i64 noundef 0, i64 noundef %1144, ptr noundef %1141, i64 noundef %1145)
  %1147 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 25), align 8, !tbaa !102
  %1148 = getelementptr inbounds %class.ConnectionElement, ptr %1147, i64 0, i32 10
  store i8 1, ptr %1148, align 8, !tbaa !107
  br label %1697

1149:                                             ; preds = %228
  %1150 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 25), align 8, !tbaa !102
  %1151 = getelementptr inbounds %struct.my_yyltype, ptr %77, i64 -1
  %1152 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %1151)
  %1153 = getelementptr inbounds %class.ConnectionElement, ptr %1150, i64 0, i32 9
  %1154 = getelementptr inbounds %class.ConnectionElement, ptr %1150, i64 0, i32 9, i32 1
  %1155 = load i64, ptr %1154, align 8, !tbaa !66
  %1156 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1152) #23
  %1157 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1153, i64 noundef 0, i64 noundef %1155, ptr noundef %1152, i64 noundef %1156)
  %1158 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 25), align 8, !tbaa !102
  %1159 = load ptr, ptr %76, align 8, !tbaa !42
  call void @_Z9addVectorP10NEDElementPKc10my_yyltypeS0_(ptr noundef %1158, ptr noundef nonnull @.str.25, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %77, ptr noundef %1159)
  br label %1697

1160:                                             ; preds = %228
  %1161 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 25), align 8, !tbaa !102
  %1162 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %77)
  %1163 = getelementptr inbounds %class.ConnectionElement, ptr %1161, i64 0, i32 9
  %1164 = getelementptr inbounds %class.ConnectionElement, ptr %1161, i64 0, i32 9, i32 1
  %1165 = load i64, ptr %1164, align 8, !tbaa !66
  %1166 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1162) #23
  %1167 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1163, i64 noundef 0, i64 noundef %1165, ptr noundef %1162, i64 noundef %1166)
  br label %1697

1168:                                             ; preds = %228
  %1169 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 25), align 8, !tbaa !102
  %1170 = getelementptr inbounds %struct.my_yyltype, ptr %77, i64 -1
  %1171 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %1170)
  %1172 = getelementptr inbounds %class.ConnectionElement, ptr %1169, i64 0, i32 9
  %1173 = getelementptr inbounds %class.ConnectionElement, ptr %1169, i64 0, i32 9, i32 1
  %1174 = load i64, ptr %1173, align 8, !tbaa !66
  %1175 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1171) #23
  %1176 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1172, i64 noundef 0, i64 noundef %1174, ptr noundef %1171, i64 noundef %1175)
  %1177 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 25), align 8, !tbaa !102
  %1178 = getelementptr inbounds %class.ConnectionElement, ptr %1177, i64 0, i32 10
  store i8 1, ptr %1178, align 8, !tbaa !107
  br label %1697

1179:                                             ; preds = %228
  %1180 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 26), align 8, !tbaa !104
  call void @_Z8storePosP10NEDElement10my_yyltype(ptr noundef %1180, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5)
  %1181 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 26), align 8, !tbaa !104
  %1182 = load ptr, ptr %1181, align 8, !tbaa !78
  %1183 = getelementptr inbounds ptr, ptr %1182, i64 30
  %1184 = load ptr, ptr %1183, align 8
  %1185 = call noundef ptr %1184(ptr noundef nonnull align 8 dereferenceable(112) %1181, i32 noundef 14)
  %1186 = icmp eq ptr %1185, null
  br i1 %1186, label %1697, label %1187

1187:                                             ; preds = %1179
  %1188 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 11), align 8, !tbaa !71
  call void @_Z8storePosP10NEDElement10my_yyltype(ptr noundef %1188, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5)
  br label %1697

1189:                                             ; preds = %228
  %1190 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 26), align 8, !tbaa !104
  %1191 = icmp eq ptr %1190, null
  br i1 %1191, label %1192, label %1197

1192:                                             ; preds = %1189
  %1193 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 25), align 8, !tbaa !102
  %1194 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 26, ptr noundef %1193)
  %1195 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 14, ptr noundef %1194)
  store ptr %1195, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 11), align 8, !tbaa !71
  %1196 = getelementptr inbounds %class.ParametersElement, ptr %1195, i64 0, i32 1
  store i8 1, ptr %1196, align 8, !tbaa !72
  store ptr %1194, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 26), align 8, !tbaa !104
  br label %1197

1197:                                             ; preds = %1192, %1189
  %1198 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 26), align 8, !tbaa !104
  %1199 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %77)
  %1200 = getelementptr inbounds %class.ChannelSpecElement, ptr %1198, i64 0, i32 1
  %1201 = getelementptr inbounds %class.ChannelSpecElement, ptr %1198, i64 0, i32 1, i32 1
  %1202 = load i64, ptr %1201, align 8, !tbaa !66
  %1203 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1199) #23
  %1204 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1200, i64 noundef 0, i64 noundef %1202, ptr noundef %1199, i64 noundef %1203)
  br label %1697

1205:                                             ; preds = %228
  %1206 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 26), align 8, !tbaa !104
  %1207 = icmp eq ptr %1206, null
  br i1 %1207, label %1208, label %1213

1208:                                             ; preds = %1205
  %1209 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 25), align 8, !tbaa !102
  %1210 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 26, ptr noundef %1209)
  %1211 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 14, ptr noundef %1210)
  store ptr %1211, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 11), align 8, !tbaa !71
  %1212 = getelementptr inbounds %class.ParametersElement, ptr %1211, i64 0, i32 1
  store i8 1, ptr %1212, align 8, !tbaa !72
  store ptr %1210, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 26), align 8, !tbaa !104
  br label %1213

1213:                                             ; preds = %1208, %1205
  %1214 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 11), align 8, !tbaa !71
  %1215 = getelementptr inbounds %struct.my_yyltype, ptr %77, i64 -1
  %1216 = call noundef ptr @_Z12addParameterP10NEDElement10my_yyltype(ptr noundef %1214, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %1215)
  store ptr %1216, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 12), align 8, !tbaa !76
  %1217 = load ptr, ptr %76, align 8, !tbaa !42
  call void @_Z13addExpressionP10NEDElementPKc10my_yyltypeS0_(ptr noundef %1216, ptr noundef nonnull @.str.11, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %77, ptr noundef %1217)
  %1218 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 12), align 8, !tbaa !76
  call void @_Z8storePosP10NEDElement10my_yyltype(ptr noundef %1218, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5)
  br label %1697

1219:                                             ; preds = %228
  %1220 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 10), align 8, !tbaa !63
  call void @_Z8storePosP10NEDElement10my_yyltype(ptr noundef %1220, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5)
  %1221 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 10), align 8, !tbaa !63
  call void @_Z20storeTrailingCommentP10NEDElement10my_yyltype(ptr noundef %1221, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5)
  br label %1697

1222:                                             ; preds = %228
  %1223 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 5), align 8, !tbaa !64
  %1224 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 11, ptr noundef %1223)
  store ptr %1224, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 10), align 8, !tbaa !63
  %1225 = getelementptr inbounds %struct.my_yyltype, ptr %77, i64 -3
  %1226 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %1225)
  %1227 = getelementptr inbounds %class.CompoundModuleElement, ptr %1224, i64 0, i32 1
  %1228 = getelementptr inbounds %class.CompoundModuleElement, ptr %1224, i64 0, i32 1, i32 1
  %1229 = load i64, ptr %1228, align 8, !tbaa !66
  %1230 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1226) #23
  %1231 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1227, i64 noundef 0, i64 noundef %1229, ptr noundef %1226, i64 noundef %1230)
  %1232 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 10), align 8, !tbaa !63
  %1233 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 7, ptr noundef %1232)
  store ptr %1233, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 8), align 8, !tbaa !70
  %1234 = getelementptr inbounds %struct.my_yyltype, ptr %77, i64 -1
  %1235 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %1234)
  %1236 = getelementptr inbounds %class.ExtendsElement, ptr %1233, i64 0, i32 1
  %1237 = getelementptr inbounds %class.ExtendsElement, ptr %1233, i64 0, i32 1, i32 1
  %1238 = load i64, ptr %1237, align 8, !tbaa !66
  %1239 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1235) #23
  %1240 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1236, i64 noundef 0, i64 noundef %1238, ptr noundef %1235, i64 noundef %1239)
  %1241 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 10), align 8, !tbaa !63
  %1242 = getelementptr inbounds %struct.my_yyltype, ptr %77, i64 -4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %37, ptr noundef nonnull align 8 dereferenceable(32) %1242, i64 32, i1 false), !tbaa.struct !47
  call void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltypeS1_(ptr noundef %1241, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %37, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %77)
  %1243 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 8), align 8, !tbaa !70
  call void @_Z8storePosP10NEDElement10my_yyltype(ptr noundef %1243, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %1234)
  %1244 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 10), align 8, !tbaa !63
  %1245 = call noundef ptr @_Z20setIsNetworkPropertyP10NEDElement(ptr noundef %1244)
  store i8 1, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 1), align 1, !tbaa !108
  br label %1697

1246:                                             ; preds = %228
  store i8 0, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 1), align 1, !tbaa !108
  br label %1697

1247:                                             ; preds = %228
  %1248 = getelementptr inbounds ptr, ptr %76, i64 -1
  %1249 = load ptr, ptr %1248, align 8, !tbaa !42
  br label %1697

1250:                                             ; preds = %228
  %1251 = load ptr, ptr @np, align 8, !tbaa !42
  %1252 = load i8, ptr %1251, align 8, !tbaa !109, !range !59, !noundef !60
  %1253 = icmp eq i8 %1252, 0
  br i1 %1253, label %1697, label %1254

1254:                                             ; preds = %1250
  %1255 = load ptr, ptr %76, align 8, !tbaa !42
  %1256 = call noundef ptr @_Z16createExpressionP10NEDElement(ptr noundef %1255)
  br label %1697

1257:                                             ; preds = %228
  %1258 = load ptr, ptr @np, align 8, !tbaa !42
  %1259 = load i8, ptr %1258, align 8, !tbaa !109, !range !59, !noundef !60
  %1260 = icmp eq i8 %1259, 0
  br i1 %1260, label %1697, label %1261

1261:                                             ; preds = %1257
  %1262 = load ptr, ptr %76, align 8, !tbaa !42
  %1263 = call noundef ptr @_Z16createExpressionP10NEDElement(ptr noundef %1262)
  br label %1697

1264:                                             ; preds = %228
  %1265 = load ptr, ptr @np, align 8, !tbaa !42
  %1266 = load i8, ptr %1265, align 8, !tbaa !109, !range !59, !noundef !60
  %1267 = icmp eq i8 %1266, 0
  br i1 %1267, label %1697, label %1268

1268:                                             ; preds = %1264
  %1269 = getelementptr inbounds ptr, ptr %76, i64 -3
  %1270 = load ptr, ptr %1269, align 8, !tbaa !42
  %1271 = getelementptr inbounds ptr, ptr %76, i64 -1
  %1272 = load ptr, ptr %1271, align 8, !tbaa !42
  %1273 = call noundef ptr @_Z14createFunctionPKcP10NEDElementS2_S2_S2_S2_S2_S2_S2_S2_S2_(ptr noundef nonnull @.str.26, ptr noundef %1270, ptr noundef %1272, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %1697

1274:                                             ; preds = %228
  %1275 = load ptr, ptr @np, align 8, !tbaa !42
  %1276 = load i8, ptr %1275, align 8, !tbaa !109, !range !59, !noundef !60
  %1277 = icmp eq i8 %1276, 0
  br i1 %1277, label %1697, label %1278

1278:                                             ; preds = %1274
  %1279 = getelementptr inbounds ptr, ptr %76, i64 -1
  %1280 = load ptr, ptr %1279, align 8, !tbaa !42
  %1281 = call noundef ptr @_Z14createFunctionPKcP10NEDElementS2_S2_S2_S2_S2_S2_S2_S2_S2_(ptr noundef nonnull @.str.26, ptr noundef %1280, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %1697

1282:                                             ; preds = %228
  %1283 = getelementptr inbounds ptr, ptr %76, i64 -1
  %1284 = load ptr, ptr %1283, align 8, !tbaa !42
  br label %1697

1285:                                             ; preds = %228
  %1286 = load ptr, ptr @np, align 8, !tbaa !42
  %1287 = load i8, ptr %1286, align 8, !tbaa !109, !range !59, !noundef !60
  %1288 = icmp eq i8 %1287, 0
  br i1 %1288, label %1697, label %1289

1289:                                             ; preds = %1285
  %1290 = getelementptr inbounds ptr, ptr %76, i64 -2
  %1291 = load ptr, ptr %1290, align 8, !tbaa !42
  %1292 = load ptr, ptr %76, align 8, !tbaa !42
  %1293 = call noundef ptr @_Z14createOperatorPKcP10NEDElementS2_S2_(ptr noundef nonnull @.str.27, ptr noundef %1291, ptr noundef %1292, ptr noundef null)
  br label %1697

1294:                                             ; preds = %228
  %1295 = load ptr, ptr @np, align 8, !tbaa !42
  %1296 = load i8, ptr %1295, align 8, !tbaa !109, !range !59, !noundef !60
  %1297 = icmp eq i8 %1296, 0
  br i1 %1297, label %1697, label %1298

1298:                                             ; preds = %1294
  %1299 = getelementptr inbounds ptr, ptr %76, i64 -2
  %1300 = load ptr, ptr %1299, align 8, !tbaa !42
  %1301 = load ptr, ptr %76, align 8, !tbaa !42
  %1302 = call noundef ptr @_Z14createOperatorPKcP10NEDElementS2_S2_(ptr noundef nonnull @.str.28, ptr noundef %1300, ptr noundef %1301, ptr noundef null)
  br label %1697

1303:                                             ; preds = %228
  %1304 = load ptr, ptr @np, align 8, !tbaa !42
  %1305 = load i8, ptr %1304, align 8, !tbaa !109, !range !59, !noundef !60
  %1306 = icmp eq i8 %1305, 0
  br i1 %1306, label %1697, label %1307

1307:                                             ; preds = %1303
  %1308 = getelementptr inbounds ptr, ptr %76, i64 -2
  %1309 = load ptr, ptr %1308, align 8, !tbaa !42
  %1310 = load ptr, ptr %76, align 8, !tbaa !42
  %1311 = call noundef ptr @_Z14createOperatorPKcP10NEDElementS2_S2_(ptr noundef nonnull @.str.29, ptr noundef %1309, ptr noundef %1310, ptr noundef null)
  br label %1697

1312:                                             ; preds = %228
  %1313 = load ptr, ptr @np, align 8, !tbaa !42
  %1314 = load i8, ptr %1313, align 8, !tbaa !109, !range !59, !noundef !60
  %1315 = icmp eq i8 %1314, 0
  br i1 %1315, label %1697, label %1316

1316:                                             ; preds = %1312
  %1317 = getelementptr inbounds ptr, ptr %76, i64 -2
  %1318 = load ptr, ptr %1317, align 8, !tbaa !42
  %1319 = load ptr, ptr %76, align 8, !tbaa !42
  %1320 = call noundef ptr @_Z14createOperatorPKcP10NEDElementS2_S2_(ptr noundef nonnull @.str.30, ptr noundef %1318, ptr noundef %1319, ptr noundef null)
  br label %1697

1321:                                             ; preds = %228
  %1322 = load ptr, ptr @np, align 8, !tbaa !42
  %1323 = load i8, ptr %1322, align 8, !tbaa !109, !range !59, !noundef !60
  %1324 = icmp eq i8 %1323, 0
  br i1 %1324, label %1697, label %1325

1325:                                             ; preds = %1321
  %1326 = getelementptr inbounds ptr, ptr %76, i64 -2
  %1327 = load ptr, ptr %1326, align 8, !tbaa !42
  %1328 = load ptr, ptr %76, align 8, !tbaa !42
  %1329 = call noundef ptr @_Z14createOperatorPKcP10NEDElementS2_S2_(ptr noundef nonnull @.str.31, ptr noundef %1327, ptr noundef %1328, ptr noundef null)
  br label %1697

1330:                                             ; preds = %228
  %1331 = load ptr, ptr @np, align 8, !tbaa !42
  %1332 = load i8, ptr %1331, align 8, !tbaa !109, !range !59, !noundef !60
  %1333 = icmp eq i8 %1332, 0
  br i1 %1333, label %1697, label %1334

1334:                                             ; preds = %1330
  %1335 = getelementptr inbounds ptr, ptr %76, i64 -2
  %1336 = load ptr, ptr %1335, align 8, !tbaa !42
  %1337 = load ptr, ptr %76, align 8, !tbaa !42
  %1338 = call noundef ptr @_Z14createOperatorPKcP10NEDElementS2_S2_(ptr noundef nonnull @.str.32, ptr noundef %1336, ptr noundef %1337, ptr noundef null)
  br label %1697

1339:                                             ; preds = %228
  %1340 = load ptr, ptr @np, align 8, !tbaa !42
  %1341 = load i8, ptr %1340, align 8, !tbaa !109, !range !59, !noundef !60
  %1342 = icmp eq i8 %1341, 0
  br i1 %1342, label %1697, label %1343

1343:                                             ; preds = %1339
  %1344 = load ptr, ptr %76, align 8, !tbaa !42
  %1345 = call noundef ptr @_Z10unaryMinusP10NEDElement(ptr noundef %1344)
  br label %1697

1346:                                             ; preds = %228
  %1347 = load ptr, ptr @np, align 8, !tbaa !42
  %1348 = load i8, ptr %1347, align 8, !tbaa !109, !range !59, !noundef !60
  %1349 = icmp eq i8 %1348, 0
  br i1 %1349, label %1697, label %1350

1350:                                             ; preds = %1346
  %1351 = getelementptr inbounds ptr, ptr %76, i64 -2
  %1352 = load ptr, ptr %1351, align 8, !tbaa !42
  %1353 = load ptr, ptr %76, align 8, !tbaa !42
  %1354 = call noundef ptr @_Z14createOperatorPKcP10NEDElementS2_S2_(ptr noundef nonnull @.str.33, ptr noundef %1352, ptr noundef %1353, ptr noundef null)
  br label %1697

1355:                                             ; preds = %228
  %1356 = load ptr, ptr @np, align 8, !tbaa !42
  %1357 = load i8, ptr %1356, align 8, !tbaa !109, !range !59, !noundef !60
  %1358 = icmp eq i8 %1357, 0
  br i1 %1358, label %1697, label %1359

1359:                                             ; preds = %1355
  %1360 = getelementptr inbounds ptr, ptr %76, i64 -2
  %1361 = load ptr, ptr %1360, align 8, !tbaa !42
  %1362 = load ptr, ptr %76, align 8, !tbaa !42
  %1363 = call noundef ptr @_Z14createOperatorPKcP10NEDElementS2_S2_(ptr noundef nonnull @.str.34, ptr noundef %1361, ptr noundef %1362, ptr noundef null)
  br label %1697

1364:                                             ; preds = %228
  %1365 = load ptr, ptr @np, align 8, !tbaa !42
  %1366 = load i8, ptr %1365, align 8, !tbaa !109, !range !59, !noundef !60
  %1367 = icmp eq i8 %1366, 0
  br i1 %1367, label %1697, label %1368

1368:                                             ; preds = %1364
  %1369 = getelementptr inbounds ptr, ptr %76, i64 -2
  %1370 = load ptr, ptr %1369, align 8, !tbaa !42
  %1371 = load ptr, ptr %76, align 8, !tbaa !42
  %1372 = call noundef ptr @_Z14createOperatorPKcP10NEDElementS2_S2_(ptr noundef nonnull @.str.35, ptr noundef %1370, ptr noundef %1371, ptr noundef null)
  br label %1697

1373:                                             ; preds = %228
  %1374 = load ptr, ptr @np, align 8, !tbaa !42
  %1375 = load i8, ptr %1374, align 8, !tbaa !109, !range !59, !noundef !60
  %1376 = icmp eq i8 %1375, 0
  br i1 %1376, label %1697, label %1377

1377:                                             ; preds = %1373
  %1378 = getelementptr inbounds ptr, ptr %76, i64 -2
  %1379 = load ptr, ptr %1378, align 8, !tbaa !42
  %1380 = load ptr, ptr %76, align 8, !tbaa !42
  %1381 = call noundef ptr @_Z14createOperatorPKcP10NEDElementS2_S2_(ptr noundef nonnull @.str.36, ptr noundef %1379, ptr noundef %1380, ptr noundef null)
  br label %1697

1382:                                             ; preds = %228
  %1383 = load ptr, ptr @np, align 8, !tbaa !42
  %1384 = load i8, ptr %1383, align 8, !tbaa !109, !range !59, !noundef !60
  %1385 = icmp eq i8 %1384, 0
  br i1 %1385, label %1697, label %1386

1386:                                             ; preds = %1382
  %1387 = getelementptr inbounds ptr, ptr %76, i64 -2
  %1388 = load ptr, ptr %1387, align 8, !tbaa !42
  %1389 = load ptr, ptr %76, align 8, !tbaa !42
  %1390 = call noundef ptr @_Z14createOperatorPKcP10NEDElementS2_S2_(ptr noundef nonnull @.str.37, ptr noundef %1388, ptr noundef %1389, ptr noundef null)
  br label %1697

1391:                                             ; preds = %228
  %1392 = load ptr, ptr @np, align 8, !tbaa !42
  %1393 = load i8, ptr %1392, align 8, !tbaa !109, !range !59, !noundef !60
  %1394 = icmp eq i8 %1393, 0
  br i1 %1394, label %1697, label %1395

1395:                                             ; preds = %1391
  %1396 = getelementptr inbounds ptr, ptr %76, i64 -2
  %1397 = load ptr, ptr %1396, align 8, !tbaa !42
  %1398 = load ptr, ptr %76, align 8, !tbaa !42
  %1399 = call noundef ptr @_Z14createOperatorPKcP10NEDElementS2_S2_(ptr noundef nonnull @.str.38, ptr noundef %1397, ptr noundef %1398, ptr noundef null)
  br label %1697

1400:                                             ; preds = %228
  %1401 = load ptr, ptr @np, align 8, !tbaa !42
  %1402 = load i8, ptr %1401, align 8, !tbaa !109, !range !59, !noundef !60
  %1403 = icmp eq i8 %1402, 0
  br i1 %1403, label %1697, label %1404

1404:                                             ; preds = %1400
  %1405 = getelementptr inbounds ptr, ptr %76, i64 -2
  %1406 = load ptr, ptr %1405, align 8, !tbaa !42
  %1407 = load ptr, ptr %76, align 8, !tbaa !42
  %1408 = call noundef ptr @_Z14createOperatorPKcP10NEDElementS2_S2_(ptr noundef nonnull @.str.39, ptr noundef %1406, ptr noundef %1407, ptr noundef null)
  br label %1697

1409:                                             ; preds = %228
  %1410 = load ptr, ptr @np, align 8, !tbaa !42
  %1411 = load i8, ptr %1410, align 8, !tbaa !109, !range !59, !noundef !60
  %1412 = icmp eq i8 %1411, 0
  br i1 %1412, label %1697, label %1413

1413:                                             ; preds = %1409
  %1414 = getelementptr inbounds ptr, ptr %76, i64 -2
  %1415 = load ptr, ptr %1414, align 8, !tbaa !42
  %1416 = load ptr, ptr %76, align 8, !tbaa !42
  %1417 = call noundef ptr @_Z14createOperatorPKcP10NEDElementS2_S2_(ptr noundef nonnull @.str.40, ptr noundef %1415, ptr noundef %1416, ptr noundef null)
  br label %1697

1418:                                             ; preds = %228
  %1419 = load ptr, ptr @np, align 8, !tbaa !42
  %1420 = load i8, ptr %1419, align 8, !tbaa !109, !range !59, !noundef !60
  %1421 = icmp eq i8 %1420, 0
  br i1 %1421, label %1697, label %1422

1422:                                             ; preds = %1418
  %1423 = getelementptr inbounds ptr, ptr %76, i64 -2
  %1424 = load ptr, ptr %1423, align 8, !tbaa !42
  %1425 = load ptr, ptr %76, align 8, !tbaa !42
  %1426 = call noundef ptr @_Z14createOperatorPKcP10NEDElementS2_S2_(ptr noundef nonnull @.str.41, ptr noundef %1424, ptr noundef %1425, ptr noundef null)
  br label %1697

1427:                                             ; preds = %228
  %1428 = load ptr, ptr @np, align 8, !tbaa !42
  %1429 = load i8, ptr %1428, align 8, !tbaa !109, !range !59, !noundef !60
  %1430 = icmp eq i8 %1429, 0
  br i1 %1430, label %1697, label %1431

1431:                                             ; preds = %1427
  %1432 = load ptr, ptr %76, align 8, !tbaa !42
  %1433 = call noundef ptr @_Z14createOperatorPKcP10NEDElementS2_S2_(ptr noundef nonnull @.str.42, ptr noundef %1432, ptr noundef null, ptr noundef null)
  br label %1697

1434:                                             ; preds = %228
  %1435 = load ptr, ptr @np, align 8, !tbaa !42
  %1436 = load i8, ptr %1435, align 8, !tbaa !109, !range !59, !noundef !60
  %1437 = icmp eq i8 %1436, 0
  br i1 %1437, label %1697, label %1438

1438:                                             ; preds = %1434
  %1439 = getelementptr inbounds ptr, ptr %76, i64 -2
  %1440 = load ptr, ptr %1439, align 8, !tbaa !42
  %1441 = load ptr, ptr %76, align 8, !tbaa !42
  %1442 = call noundef ptr @_Z14createOperatorPKcP10NEDElementS2_S2_(ptr noundef nonnull @.str.43, ptr noundef %1440, ptr noundef %1441, ptr noundef null)
  br label %1697

1443:                                             ; preds = %228
  %1444 = load ptr, ptr @np, align 8, !tbaa !42
  %1445 = load i8, ptr %1444, align 8, !tbaa !109, !range !59, !noundef !60
  %1446 = icmp eq i8 %1445, 0
  br i1 %1446, label %1697, label %1447

1447:                                             ; preds = %1443
  %1448 = getelementptr inbounds ptr, ptr %76, i64 -2
  %1449 = load ptr, ptr %1448, align 8, !tbaa !42
  %1450 = load ptr, ptr %76, align 8, !tbaa !42
  %1451 = call noundef ptr @_Z14createOperatorPKcP10NEDElementS2_S2_(ptr noundef nonnull @.str.44, ptr noundef %1449, ptr noundef %1450, ptr noundef null)
  br label %1697

1452:                                             ; preds = %228
  %1453 = load ptr, ptr @np, align 8, !tbaa !42
  %1454 = load i8, ptr %1453, align 8, !tbaa !109, !range !59, !noundef !60
  %1455 = icmp eq i8 %1454, 0
  br i1 %1455, label %1697, label %1456

1456:                                             ; preds = %1452
  %1457 = getelementptr inbounds ptr, ptr %76, i64 -2
  %1458 = load ptr, ptr %1457, align 8, !tbaa !42
  %1459 = load ptr, ptr %76, align 8, !tbaa !42
  %1460 = call noundef ptr @_Z14createOperatorPKcP10NEDElementS2_S2_(ptr noundef nonnull @.str.45, ptr noundef %1458, ptr noundef %1459, ptr noundef null)
  br label %1697

1461:                                             ; preds = %228
  %1462 = load ptr, ptr @np, align 8, !tbaa !42
  %1463 = load i8, ptr %1462, align 8, !tbaa !109, !range !59, !noundef !60
  %1464 = icmp eq i8 %1463, 0
  br i1 %1464, label %1697, label %1465

1465:                                             ; preds = %1461
  %1466 = load ptr, ptr %76, align 8, !tbaa !42
  %1467 = call noundef ptr @_Z14createOperatorPKcP10NEDElementS2_S2_(ptr noundef nonnull @.str.46, ptr noundef %1466, ptr noundef null, ptr noundef null)
  br label %1697

1468:                                             ; preds = %228
  %1469 = load ptr, ptr @np, align 8, !tbaa !42
  %1470 = load i8, ptr %1469, align 8, !tbaa !109, !range !59, !noundef !60
  %1471 = icmp eq i8 %1470, 0
  br i1 %1471, label %1697, label %1472

1472:                                             ; preds = %1468
  %1473 = getelementptr inbounds ptr, ptr %76, i64 -2
  %1474 = load ptr, ptr %1473, align 8, !tbaa !42
  %1475 = load ptr, ptr %76, align 8, !tbaa !42
  %1476 = call noundef ptr @_Z14createOperatorPKcP10NEDElementS2_S2_(ptr noundef nonnull @.str.47, ptr noundef %1474, ptr noundef %1475, ptr noundef null)
  br label %1697

1477:                                             ; preds = %228
  %1478 = load ptr, ptr @np, align 8, !tbaa !42
  %1479 = load i8, ptr %1478, align 8, !tbaa !109, !range !59, !noundef !60
  %1480 = icmp eq i8 %1479, 0
  br i1 %1480, label %1697, label %1481

1481:                                             ; preds = %1477
  %1482 = getelementptr inbounds ptr, ptr %76, i64 -2
  %1483 = load ptr, ptr %1482, align 8, !tbaa !42
  %1484 = load ptr, ptr %76, align 8, !tbaa !42
  %1485 = call noundef ptr @_Z14createOperatorPKcP10NEDElementS2_S2_(ptr noundef nonnull @.str.48, ptr noundef %1483, ptr noundef %1484, ptr noundef null)
  br label %1697

1486:                                             ; preds = %228
  %1487 = load ptr, ptr @np, align 8, !tbaa !42
  %1488 = load i8, ptr %1487, align 8, !tbaa !109, !range !59, !noundef !60
  %1489 = icmp eq i8 %1488, 0
  br i1 %1489, label %1697, label %1490

1490:                                             ; preds = %1486
  %1491 = getelementptr inbounds ptr, ptr %76, i64 -4
  %1492 = load ptr, ptr %1491, align 8, !tbaa !42
  %1493 = getelementptr inbounds ptr, ptr %76, i64 -2
  %1494 = load ptr, ptr %1493, align 8, !tbaa !42
  %1495 = load ptr, ptr %76, align 8, !tbaa !42
  %1496 = call noundef ptr @_Z14createOperatorPKcP10NEDElementS2_S2_(ptr noundef nonnull @.str.49, ptr noundef %1492, ptr noundef %1494, ptr noundef %1495)
  br label %1697

1497:                                             ; preds = %228
  %1498 = load ptr, ptr @np, align 8, !tbaa !42
  %1499 = load i8, ptr %1498, align 8, !tbaa !109, !range !59, !noundef !60
  %1500 = icmp eq i8 %1499, 0
  br i1 %1500, label %1697, label %1501

1501:                                             ; preds = %1497
  %1502 = getelementptr inbounds %struct.my_yyltype, ptr %77, i64 -3
  %1503 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %1502)
  %1504 = getelementptr inbounds ptr, ptr %76, i64 -1
  %1505 = load ptr, ptr %1504, align 8, !tbaa !42
  %1506 = call noundef ptr @_Z14createFunctionPKcP10NEDElementS2_S2_S2_S2_S2_S2_S2_S2_S2_(ptr noundef %1503, ptr noundef %1505, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %1697

1507:                                             ; preds = %228
  %1508 = load ptr, ptr @np, align 8, !tbaa !42
  %1509 = load i8, ptr %1508, align 8, !tbaa !109, !range !59, !noundef !60
  %1510 = icmp eq i8 %1509, 0
  br i1 %1510, label %1697, label %1511

1511:                                             ; preds = %1507
  %1512 = getelementptr inbounds %struct.my_yyltype, ptr %77, i64 -3
  %1513 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %1512)
  %1514 = getelementptr inbounds ptr, ptr %76, i64 -1
  %1515 = load ptr, ptr %1514, align 8, !tbaa !42
  %1516 = call noundef ptr @_Z14createFunctionPKcP10NEDElementS2_S2_S2_S2_S2_S2_S2_S2_S2_(ptr noundef %1513, ptr noundef %1515, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %1697

1517:                                             ; preds = %228
  %1518 = load ptr, ptr @np, align 8, !tbaa !42
  %1519 = load i8, ptr %1518, align 8, !tbaa !109, !range !59, !noundef !60
  %1520 = icmp eq i8 %1519, 0
  br i1 %1520, label %1697, label %1521

1521:                                             ; preds = %1517
  %1522 = getelementptr inbounds %struct.my_yyltype, ptr %77, i64 -3
  %1523 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %1522)
  %1524 = getelementptr inbounds ptr, ptr %76, i64 -1
  %1525 = load ptr, ptr %1524, align 8, !tbaa !42
  %1526 = call noundef ptr @_Z14createFunctionPKcP10NEDElementS2_S2_S2_S2_S2_S2_S2_S2_S2_(ptr noundef %1523, ptr noundef %1525, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %1697

1527:                                             ; preds = %228
  %1528 = load ptr, ptr @np, align 8, !tbaa !42
  %1529 = load i8, ptr %1528, align 8, !tbaa !109, !range !59, !noundef !60
  %1530 = icmp eq i8 %1529, 0
  br i1 %1530, label %1697, label %1531

1531:                                             ; preds = %1527
  %1532 = getelementptr inbounds %struct.my_yyltype, ptr %77, i64 -2
  %1533 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %1532)
  %1534 = call noundef ptr @_Z14createFunctionPKcP10NEDElementS2_S2_S2_S2_S2_S2_S2_S2_S2_(ptr noundef %1533, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %1697

1535:                                             ; preds = %228
  %1536 = load ptr, ptr @np, align 8, !tbaa !42
  %1537 = load i8, ptr %1536, align 8, !tbaa !109, !range !59, !noundef !60
  %1538 = icmp eq i8 %1537, 0
  br i1 %1538, label %1697, label %1539

1539:                                             ; preds = %1535
  %1540 = getelementptr inbounds %struct.my_yyltype, ptr %77, i64 -3
  %1541 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %1540)
  %1542 = getelementptr inbounds ptr, ptr %76, i64 -1
  %1543 = load ptr, ptr %1542, align 8, !tbaa !42
  %1544 = call noundef ptr @_Z14createFunctionPKcP10NEDElementS2_S2_S2_S2_S2_S2_S2_S2_S2_(ptr noundef %1541, ptr noundef %1543, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %1697

1545:                                             ; preds = %228
  %1546 = load ptr, ptr @np, align 8, !tbaa !42
  %1547 = load i8, ptr %1546, align 8, !tbaa !109, !range !59, !noundef !60
  %1548 = icmp eq i8 %1547, 0
  br i1 %1548, label %1697, label %1549

1549:                                             ; preds = %1545
  %1550 = getelementptr inbounds %struct.my_yyltype, ptr %77, i64 -5
  %1551 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %1550)
  %1552 = getelementptr inbounds ptr, ptr %76, i64 -3
  %1553 = load ptr, ptr %1552, align 8, !tbaa !42
  %1554 = getelementptr inbounds ptr, ptr %76, i64 -1
  %1555 = load ptr, ptr %1554, align 8, !tbaa !42
  %1556 = call noundef ptr @_Z14createFunctionPKcP10NEDElementS2_S2_S2_S2_S2_S2_S2_S2_S2_(ptr noundef %1551, ptr noundef %1553, ptr noundef %1555, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %1697

1557:                                             ; preds = %228
  %1558 = load ptr, ptr @np, align 8, !tbaa !42
  %1559 = load i8, ptr %1558, align 8, !tbaa !109, !range !59, !noundef !60
  %1560 = icmp eq i8 %1559, 0
  br i1 %1560, label %1697, label %1561

1561:                                             ; preds = %1557
  %1562 = getelementptr inbounds %struct.my_yyltype, ptr %77, i64 -7
  %1563 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %1562)
  %1564 = getelementptr inbounds ptr, ptr %76, i64 -5
  %1565 = load ptr, ptr %1564, align 8, !tbaa !42
  %1566 = getelementptr inbounds ptr, ptr %76, i64 -3
  %1567 = load ptr, ptr %1566, align 8, !tbaa !42
  %1568 = getelementptr inbounds ptr, ptr %76, i64 -1
  %1569 = load ptr, ptr %1568, align 8, !tbaa !42
  %1570 = call noundef ptr @_Z14createFunctionPKcP10NEDElementS2_S2_S2_S2_S2_S2_S2_S2_S2_(ptr noundef %1563, ptr noundef %1565, ptr noundef %1567, ptr noundef %1569, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %1697

1571:                                             ; preds = %228
  %1572 = load ptr, ptr @np, align 8, !tbaa !42
  %1573 = load i8, ptr %1572, align 8, !tbaa !109, !range !59, !noundef !60
  %1574 = icmp eq i8 %1573, 0
  br i1 %1574, label %1697, label %1575

1575:                                             ; preds = %1571
  %1576 = getelementptr inbounds %struct.my_yyltype, ptr %77, i64 -9
  %1577 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %1576)
  %1578 = getelementptr inbounds ptr, ptr %76, i64 -7
  %1579 = load ptr, ptr %1578, align 8, !tbaa !42
  %1580 = getelementptr inbounds ptr, ptr %76, i64 -5
  %1581 = load ptr, ptr %1580, align 8, !tbaa !42
  %1582 = getelementptr inbounds ptr, ptr %76, i64 -3
  %1583 = load ptr, ptr %1582, align 8, !tbaa !42
  %1584 = getelementptr inbounds ptr, ptr %76, i64 -1
  %1585 = load ptr, ptr %1584, align 8, !tbaa !42
  %1586 = call noundef ptr @_Z14createFunctionPKcP10NEDElementS2_S2_S2_S2_S2_S2_S2_S2_S2_(ptr noundef %1577, ptr noundef %1579, ptr noundef %1581, ptr noundef %1583, ptr noundef %1585, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %1697

1587:                                             ; preds = %228
  %1588 = load ptr, ptr @np, align 8, !tbaa !42
  %1589 = load i8, ptr %1588, align 8, !tbaa !109, !range !59, !noundef !60
  %1590 = icmp eq i8 %1589, 0
  br i1 %1590, label %1697, label %1591

1591:                                             ; preds = %1587
  %1592 = call noundef ptr @_Z11createIdent10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %77)
  br label %1697

1593:                                             ; preds = %228
  %1594 = load ptr, ptr @np, align 8, !tbaa !42
  %1595 = load i8, ptr %1594, align 8, !tbaa !109, !range !59, !noundef !60
  %1596 = icmp eq i8 %1595, 0
  br i1 %1596, label %1599, label %1597

1597:                                             ; preds = %1593
  %1598 = call noundef ptr @_Z11createIdent10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %77)
  br label %1599

1599:                                             ; preds = %1597, %1593
  %1600 = phi ptr [ %179, %1593 ], [ %1598, %1597 ]
  %1601 = load ptr, ptr @np, align 8, !tbaa !42
  %1602 = getelementptr inbounds %class.NEDParser, ptr %1601, i64 0, i32 3
  %1603 = load ptr, ptr %1602, align 8, !tbaa !82
  %1604 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 13), align 8, !tbaa !91
  call void (ptr, ptr, ptr, ...) @_ZN13NEDErrorStore8addErrorEP10NEDElementPKcz(ptr noundef nonnull align 8 dereferenceable(25) %1603, ptr noundef %1604, ptr noundef nonnull @.str.50)
  br label %1697

1605:                                             ; preds = %228
  %1606 = load ptr, ptr @np, align 8, !tbaa !42
  %1607 = load i8, ptr %1606, align 8, !tbaa !109, !range !59, !noundef !60
  %1608 = icmp eq i8 %1607, 0
  br i1 %1608, label %1611, label %1609

1609:                                             ; preds = %1605
  %1610 = call noundef ptr @_Z11createIdent10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %77)
  br label %1611

1611:                                             ; preds = %1609, %1605
  %1612 = phi ptr [ %179, %1605 ], [ %1610, %1609 ]
  %1613 = load ptr, ptr @np, align 8, !tbaa !42
  %1614 = getelementptr inbounds %class.NEDParser, ptr %1613, i64 0, i32 3
  %1615 = load ptr, ptr %1614, align 8, !tbaa !82
  %1616 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 13), align 8, !tbaa !91
  call void (ptr, ptr, ptr, ...) @_ZN13NEDErrorStore8addErrorEP10NEDElementPKcz(ptr noundef nonnull align 8 dereferenceable(25) %1615, ptr noundef %1616, ptr noundef nonnull @.str.51)
  br label %1697

1617:                                             ; preds = %228
  %1618 = load ptr, ptr @np, align 8, !tbaa !42
  %1619 = load i8, ptr %1618, align 8, !tbaa !109, !range !59, !noundef !60
  %1620 = icmp eq i8 %1619, 0
  br i1 %1620, label %1623, label %1621

1621:                                             ; preds = %1617
  %1622 = call noundef ptr @_Z11createIdent10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %77)
  br label %1623

1623:                                             ; preds = %1621, %1617
  %1624 = phi ptr [ %179, %1617 ], [ %1622, %1621 ]
  %1625 = load ptr, ptr @np, align 8, !tbaa !42
  %1626 = getelementptr inbounds %class.NEDParser, ptr %1625, i64 0, i32 3
  %1627 = load ptr, ptr %1626, align 8, !tbaa !82
  %1628 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 13), align 8, !tbaa !91
  call void (ptr, ptr, ptr, ...) @_ZN13NEDErrorStore8addErrorEP10NEDElementPKcz(ptr noundef nonnull align 8 dereferenceable(25) %1627, ptr noundef %1628, ptr noundef nonnull @.str.51)
  br label %1697

1629:                                             ; preds = %228
  %1630 = load ptr, ptr @np, align 8, !tbaa !42
  %1631 = load i8, ptr %1630, align 8, !tbaa !109, !range !59, !noundef !60
  %1632 = icmp eq i8 %1631, 0
  br i1 %1632, label %1635, label %1633

1633:                                             ; preds = %1629
  %1634 = call noundef ptr @_Z11createIdent10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %77)
  br label %1635

1635:                                             ; preds = %1633, %1629
  %1636 = phi ptr [ %179, %1629 ], [ %1634, %1633 ]
  %1637 = load ptr, ptr @np, align 8, !tbaa !42
  %1638 = getelementptr inbounds %class.NEDParser, ptr %1637, i64 0, i32 3
  %1639 = load ptr, ptr %1638, align 8, !tbaa !82
  %1640 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 13), align 8, !tbaa !91
  call void (ptr, ptr, ptr, ...) @_ZN13NEDErrorStore8addErrorEP10NEDElementPKcz(ptr noundef nonnull align 8 dereferenceable(25) %1639, ptr noundef %1640, ptr noundef nonnull @.str.52)
  br label %1697

1641:                                             ; preds = %228
  %1642 = load ptr, ptr @np, align 8, !tbaa !42
  %1643 = load i8, ptr %1642, align 8, !tbaa !109, !range !59, !noundef !60
  %1644 = icmp eq i8 %1643, 0
  br i1 %1644, label %1697, label %1645

1645:                                             ; preds = %1641
  %1646 = call noundef ptr @_Z14createFunctionPKcP10NEDElementS2_S2_S2_S2_S2_S2_S2_S2_S2_(ptr noundef nonnull @.str.53, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %1697

1647:                                             ; preds = %228
  %1648 = load ptr, ptr @np, align 8, !tbaa !42
  %1649 = load i8, ptr %1648, align 8, !tbaa !109, !range !59, !noundef !60
  %1650 = icmp eq i8 %1649, 0
  br i1 %1650, label %1697, label %1651

1651:                                             ; preds = %1647
  %1652 = call noundef ptr @_Z14createFunctionPKcP10NEDElementS2_S2_S2_S2_S2_S2_S2_S2_S2_(ptr noundef nonnull @.str.53, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %1697

1653:                                             ; preds = %228
  %1654 = load ptr, ptr @np, align 8, !tbaa !42
  %1655 = load i8, ptr %1654, align 8, !tbaa !109, !range !59, !noundef !60
  %1656 = icmp eq i8 %1655, 0
  br i1 %1656, label %1697, label %1657

1657:                                             ; preds = %1653
  %1658 = getelementptr inbounds %struct.my_yyltype, ptr %77, i64 -1
  %1659 = call noundef ptr @_Z11createIdent10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %1658)
  %1660 = call noundef ptr @_Z14createFunctionPKcP10NEDElementS2_S2_S2_S2_S2_S2_S2_S2_S2_(ptr noundef nonnull @.str.54, ptr noundef %1659, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %1697

1661:                                             ; preds = %228
  %1662 = load ptr, ptr @np, align 8, !tbaa !42
  %1663 = load i8, ptr %1662, align 8, !tbaa !109, !range !59, !noundef !60
  %1664 = icmp eq i8 %1663, 0
  br i1 %1664, label %1697, label %1665

1665:                                             ; preds = %1661
  %1666 = call noundef ptr @_Z19createStringLiteral10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %77)
  br label %1697

1667:                                             ; preds = %228
  %1668 = load ptr, ptr @np, align 8, !tbaa !42
  %1669 = load i8, ptr %1668, align 8, !tbaa !109, !range !59, !noundef !60
  %1670 = icmp eq i8 %1669, 0
  br i1 %1670, label %1697, label %1671

1671:                                             ; preds = %1667
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %38, ptr noundef nonnull align 8 dereferenceable(32) %77, i64 32, i1 false), !tbaa.struct !47
  %1672 = call noundef ptr @_Z13createLiterali10my_yyltypeS_(i32 noundef 3, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %38, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %77)
  br label %1697

1673:                                             ; preds = %228
  %1674 = load ptr, ptr @np, align 8, !tbaa !42
  %1675 = load i8, ptr %1674, align 8, !tbaa !109, !range !59, !noundef !60
  %1676 = icmp eq i8 %1675, 0
  br i1 %1676, label %1697, label %1677

1677:                                             ; preds = %1673
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %39, ptr noundef nonnull align 8 dereferenceable(32) %77, i64 32, i1 false), !tbaa.struct !47
  %1678 = call noundef ptr @_Z13createLiterali10my_yyltypeS_(i32 noundef 3, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %39, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %77)
  br label %1697

1679:                                             ; preds = %228
  %1680 = load ptr, ptr @np, align 8, !tbaa !42
  %1681 = load i8, ptr %1680, align 8, !tbaa !109, !range !59, !noundef !60
  %1682 = icmp eq i8 %1681, 0
  br i1 %1682, label %1697, label %1683

1683:                                             ; preds = %1679
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %40, ptr noundef nonnull align 8 dereferenceable(32) %77, i64 32, i1 false), !tbaa.struct !47
  %1684 = call noundef ptr @_Z13createLiterali10my_yyltypeS_(i32 noundef 1, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %40, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %77)
  br label %1697

1685:                                             ; preds = %228
  %1686 = load ptr, ptr @np, align 8, !tbaa !42
  %1687 = load i8, ptr %1686, align 8, !tbaa !109, !range !59, !noundef !60
  %1688 = icmp eq i8 %1687, 0
  br i1 %1688, label %1697, label %1689

1689:                                             ; preds = %1685
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %41, ptr noundef nonnull align 8 dereferenceable(32) %77, i64 32, i1 false), !tbaa.struct !47
  %1690 = call noundef ptr @_Z13createLiterali10my_yyltypeS_(i32 noundef 0, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %41, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %77)
  br label %1697

1691:                                             ; preds = %228
  %1692 = load ptr, ptr @np, align 8, !tbaa !42
  %1693 = load i8, ptr %1692, align 8, !tbaa !109, !range !59, !noundef !60
  %1694 = icmp eq i8 %1693, 0
  br i1 %1694, label %1697, label %1695

1695:                                             ; preds = %1691
  %1696 = call noundef ptr @_Z21createQuantityLiteral10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %77)
  br label %1697

1697:                                             ; preds = %952, %959, %261, %272, %275, %295, %297, %311, %325, %328, %339, %342, %434, %444, %448, %450, %453, %456, %461, %467, %470, %474, %478, %482, %486, %490, %494, %502, %506, %508, %515, %520, %527, %532, %536, %538, %557, %559, %582, %584, %611, %613, %644, %646, %648, %659, %664, %671, %676, %680, %693, %698, %710, %721, %726, %815, %825, %830, %832, %837, %839, %842, %848, %865, %963, %967, %971, %976, %981, %997, %1010, %1021, %1029, %1040, %1061, %1079, %1100, %1111, %1119, %1130, %1138, %1149, %1160, %1168, %1197, %1213, %1219, %1222, %1246, %1247, %1282, %1599, %1611, %1623, %1635, %234, %229, %242, %237, %250, %245, %258, %253, %1187, %1179, %1254, %1250, %1261, %1257, %1268, %1264, %1278, %1274, %1289, %1285, %1298, %1294, %1307, %1303, %1316, %1312, %1325, %1321, %1334, %1330, %1343, %1339, %1350, %1346, %1359, %1355, %1368, %1364, %1377, %1373, %1386, %1382, %1395, %1391, %1404, %1400, %1413, %1409, %1422, %1418, %1431, %1427, %1438, %1434, %1447, %1443, %1456, %1452, %1465, %1461, %1472, %1468, %1481, %1477, %1490, %1486, %1501, %1497, %1511, %1507, %1521, %1517, %1531, %1527, %1539, %1535, %1549, %1545, %1561, %1557, %1575, %1571, %1591, %1587, %1645, %1641, %1651, %1647, %1657, %1653, %1665, %1661, %1671, %1667, %1677, %1673, %1683, %1679, %1689, %1685, %1695, %1691, %228
  %1698 = phi ptr [ %179, %228 ], [ %179, %1691 ], [ %1696, %1695 ], [ %179, %1685 ], [ %1690, %1689 ], [ %179, %1679 ], [ %1684, %1683 ], [ %179, %1673 ], [ %1678, %1677 ], [ %179, %1667 ], [ %1672, %1671 ], [ %179, %1661 ], [ %1666, %1665 ], [ %179, %1653 ], [ %1660, %1657 ], [ %179, %1647 ], [ %1652, %1651 ], [ %179, %1641 ], [ %1646, %1645 ], [ %1636, %1635 ], [ %1624, %1623 ], [ %1612, %1611 ], [ %1600, %1599 ], [ %179, %1587 ], [ %1592, %1591 ], [ %179, %1571 ], [ %1586, %1575 ], [ %179, %1557 ], [ %1570, %1561 ], [ %179, %1545 ], [ %1556, %1549 ], [ %179, %1535 ], [ %1544, %1539 ], [ %179, %1527 ], [ %1534, %1531 ], [ %179, %1517 ], [ %1526, %1521 ], [ %179, %1507 ], [ %1516, %1511 ], [ %179, %1497 ], [ %1506, %1501 ], [ %179, %1486 ], [ %1496, %1490 ], [ %179, %1477 ], [ %1485, %1481 ], [ %179, %1468 ], [ %1476, %1472 ], [ %179, %1461 ], [ %1467, %1465 ], [ %179, %1452 ], [ %1460, %1456 ], [ %179, %1443 ], [ %1451, %1447 ], [ %179, %1434 ], [ %1442, %1438 ], [ %179, %1427 ], [ %1433, %1431 ], [ %179, %1418 ], [ %1426, %1422 ], [ %179, %1409 ], [ %1417, %1413 ], [ %179, %1400 ], [ %1408, %1404 ], [ %179, %1391 ], [ %1399, %1395 ], [ %179, %1382 ], [ %1390, %1386 ], [ %179, %1373 ], [ %1381, %1377 ], [ %179, %1364 ], [ %1372, %1368 ], [ %179, %1355 ], [ %1363, %1359 ], [ %179, %1346 ], [ %1354, %1350 ], [ %179, %1339 ], [ %1345, %1343 ], [ %179, %1330 ], [ %1338, %1334 ], [ %179, %1321 ], [ %1329, %1325 ], [ %179, %1312 ], [ %1320, %1316 ], [ %179, %1303 ], [ %1311, %1307 ], [ %179, %1294 ], [ %1302, %1298 ], [ %179, %1285 ], [ %1293, %1289 ], [ %1284, %1282 ], [ %179, %1274 ], [ %1281, %1278 ], [ %179, %1264 ], [ %1273, %1268 ], [ %179, %1257 ], [ %1263, %1261 ], [ %179, %1250 ], [ %1256, %1254 ], [ %1249, %1247 ], [ %179, %1246 ], [ %179, %1222 ], [ %179, %1219 ], [ %179, %1213 ], [ %179, %1197 ], [ %179, %1179 ], [ %179, %1187 ], [ %179, %1168 ], [ %179, %1160 ], [ %179, %1149 ], [ %179, %1138 ], [ %179, %1130 ], [ %179, %1119 ], [ %179, %1111 ], [ %179, %1100 ], [ %179, %1079 ], [ %179, %1061 ], [ %179, %1040 ], [ %179, %1029 ], [ %179, %1021 ], [ %179, %1010 ], [ %179, %997 ], [ %179, %981 ], [ %179, %976 ], [ %179, %971 ], [ %179, %967 ], [ %179, %963 ], [ %179, %959 ], [ %179, %952 ], [ %179, %865 ], [ %179, %848 ], [ %179, %842 ], [ %179, %839 ], [ %179, %837 ], [ %179, %832 ], [ %179, %830 ], [ %179, %825 ], [ %179, %815 ], [ %179, %726 ], [ %179, %721 ], [ %179, %710 ], [ %179, %698 ], [ %179, %693 ], [ %179, %680 ], [ %179, %676 ], [ %179, %671 ], [ %179, %664 ], [ %179, %659 ], [ %179, %648 ], [ %179, %646 ], [ %179, %644 ], [ %179, %613 ], [ %179, %611 ], [ %179, %584 ], [ %179, %582 ], [ %179, %559 ], [ %179, %557 ], [ %179, %538 ], [ %179, %536 ], [ %179, %532 ], [ %179, %527 ], [ %179, %520 ], [ %179, %515 ], [ %179, %508 ], [ %179, %506 ], [ %179, %502 ], [ %179, %494 ], [ %179, %490 ], [ %179, %486 ], [ %179, %482 ], [ %179, %478 ], [ %179, %474 ], [ %179, %470 ], [ %179, %467 ], [ %179, %461 ], [ %179, %456 ], [ %179, %453 ], [ %179, %450 ], [ %179, %448 ], [ %179, %444 ], [ %179, %434 ], [ %179, %342 ], [ %179, %339 ], [ %179, %328 ], [ %179, %325 ], [ %179, %311 ], [ %179, %297 ], [ %179, %295 ], [ %179, %275 ], [ %179, %272 ], [ %179, %261 ], [ %179, %253 ], [ %179, %258 ], [ %179, %245 ], [ %179, %250 ], [ %179, %237 ], [ %179, %242 ], [ %179, %229 ], [ %179, %234 ]
  %1699 = load i32, ptr @ned1yydebug, align 4, !tbaa !38
  %1700 = icmp eq i32 %1699, 0
  br i1 %1700, label %1710, label %1701

1701:                                             ; preds = %1697
  %1702 = load ptr, ptr @stderr, align 8, !tbaa !42
  %1703 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1702, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.55) #24
  %1704 = load ptr, ptr @stderr, align 8, !tbaa !42
  %1705 = getelementptr inbounds [242 x i8], ptr @_ZL4yyr1, i64 0, i64 %173
  %1706 = load i8, ptr %1705, align 1, !tbaa !46
  %1707 = zext i8 %1706 to i32
  call fastcc void @_ZL15yy_symbol_printP8_IO_FILEiPKP10NEDElementPK10my_yyltype(ptr noundef %1704, i32 noundef %1707)
  %1708 = load ptr, ptr @stderr, align 8, !tbaa !42
  %1709 = call i32 @fputc(i32 10, ptr %1708)
  br label %1710

1710:                                             ; preds = %1701, %1697
  %1711 = sub nsw i64 0, %176
  %1712 = getelementptr inbounds ptr, ptr %76, i64 %1711
  %1713 = shl nsw i64 %1711, 1
  %1714 = add nsw i64 %1713, %75
  %1715 = getelementptr inbounds i8, ptr %2, i64 %1714
  %1716 = getelementptr inbounds %struct.my_yyltype, ptr %77, i64 %1711
  %1717 = load i32, ptr @ned1yydebug, align 4, !tbaa !38
  %1718 = icmp eq i32 %1717, 0
  br i1 %1718, label %1720, label %1719

1719:                                             ; preds = %1710
  call fastcc void @_ZL14yy_stack_printPsS_(ptr noundef nonnull %2, ptr noundef nonnull %1715)
  br label %1720

1720:                                             ; preds = %1719, %1710
  %1721 = getelementptr inbounds ptr, ptr %1712, i64 1
  store ptr %1698, ptr %1721, align 8, !tbaa !42
  %1722 = getelementptr inbounds %struct.my_yyltype, ptr %1716, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1722, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !tbaa.struct !47
  %1723 = getelementptr inbounds [242 x i8], ptr @_ZL4yyr1, i64 0, i64 %173
  %1724 = load i8, ptr %1723, align 1, !tbaa !46
  %1725 = zext i8 %1724 to i64
  %1726 = add nsw i64 %1725, -104
  %1727 = getelementptr inbounds [108 x i16], ptr @_ZL7yypgoto, i64 0, i64 %1726
  %1728 = load i16, ptr %1727, align 2, !tbaa !44
  %1729 = sext i16 %1728 to i32
  %1730 = load i16, ptr %1715, align 2, !tbaa !44
  %1731 = sext i16 %1730 to i32
  %1732 = add nsw i32 %1731, %1729
  %1733 = icmp ult i32 %1732, 782
  br i1 %1733, label %1734, label %1743

1734:                                             ; preds = %1720
  %1735 = zext nneg i32 %1732 to i64
  %1736 = getelementptr inbounds [782 x i16], ptr @_ZL7yycheck, i64 0, i64 %1735
  %1737 = load i16, ptr %1736, align 2, !tbaa !44
  %1738 = icmp eq i16 %1737, %1730
  br i1 %1738, label %1739, label %1743

1739:                                             ; preds = %1734
  %1740 = getelementptr inbounds [782 x i16], ptr @_ZL7yytable, i64 0, i64 %1735
  %1741 = load i16, ptr %1740, align 2, !tbaa !44
  %1742 = sext i16 %1741 to i32
  br label %62

1743:                                             ; preds = %1734, %1720
  %1744 = getelementptr inbounds [108 x i16], ptr @_ZL9yydefgoto, i64 0, i64 %1726
  %1745 = load i16, ptr %1744, align 2, !tbaa !44
  %1746 = sext i16 %1745 to i32
  br label %62

1747:                                             ; preds = %141, %164
  %1748 = phi i32 [ %165, %164 ], [ %127, %141 ]
  %1749 = load i32, ptr @ned1yynerrs, align 4, !tbaa !38
  %1750 = add nsw i32 %1749, 1
  store i32 %1750, ptr @ned1yynerrs, align 4, !tbaa !38
  %1751 = load i32, ptr @ned1yychar, align 4, !tbaa !38
  %1752 = call fastcc noundef i64 @_ZL14yysyntax_errorPcii(ptr noundef null, i32 noundef %73, i32 noundef %1751)
  %1753 = icmp ugt i64 %1752, 128
  br i1 %1753, label %1754, label %1762

1754:                                             ; preds = %1747
  %1755 = shl i64 %1752, 1
  %1756 = icmp sgt i64 %1752, -1
  %1757 = select i1 %1756, i64 %1755, i64 -1
  %1758 = call noalias ptr @malloc(i64 noundef %1757) #27
  %1759 = icmp eq ptr %1758, null
  %1760 = select i1 %1759, i64 128, i64 %1757
  %1761 = select i1 %1759, ptr %1, ptr %1758
  br label %1762

1762:                                             ; preds = %1754, %1747
  %1763 = phi i64 [ %1760, %1754 ], [ 128, %1747 ]
  %1764 = phi ptr [ %1761, %1754 ], [ %1, %1747 ]
  %1765 = add i64 %1752, -1
  %1766 = icmp ult i64 %1765, %1763
  br i1 %1766, label %1767, label %1770

1767:                                             ; preds = %1762
  %1768 = load i32, ptr @ned1yychar, align 4, !tbaa !38
  %1769 = call fastcc noundef i64 @_ZL14yysyntax_errorPcii(ptr noundef %1764, i32 noundef %73, i32 noundef %1768)
  call void @_Z11ned1yyerrorPKc(ptr noundef %1764)
  br label %1772

1770:                                             ; preds = %1762
  %1771 = icmp eq i64 %1752, 0
  call void @_Z11ned1yyerrorPKc(ptr noundef nonnull @.str.56)
  br i1 %1771, label %1772, label %1773

1772:                                             ; preds = %1770, %1767
  br label %1773

1773:                                             ; preds = %1770, %1772
  %1774 = phi i32 [ 0, %1772 ], [ 6, %1770 ]
  switch i32 %1774, label %1828 [
    i32 0, label %1775
    i32 6, label %1793
  ]

1775:                                             ; preds = %1773
  %1776 = icmp eq i64 %75, 0
  br i1 %1776, label %1798, label %1777

1777:                                             ; preds = %1775, %1791
  %1778 = phi i32 [ %1787, %1791 ], [ %73, %1775 ]
  %1779 = phi i64 [ %1784, %1791 ], [ %75, %1775 ]
  %1780 = sext i32 %1778 to i64
  %1781 = getelementptr inbounds [419 x i8], ptr @_ZL6yystos, i64 0, i64 %1780
  %1782 = load i8, ptr %1781, align 1, !tbaa !46
  %1783 = zext i8 %1782 to i32
  call fastcc void @_ZL10yydestructPKciPP10NEDElementP10my_yyltype(ptr noundef nonnull @.str.58, i32 noundef %1783)
  %1784 = add nsw i64 %1779, -2
  %1785 = getelementptr inbounds i8, ptr %2, i64 %1784
  %1786 = load i16, ptr %1785, align 2, !tbaa !44
  %1787 = sext i16 %1786 to i32
  %1788 = load i32, ptr @ned1yydebug, align 4, !tbaa !38
  %1789 = icmp eq i32 %1788, 0
  br i1 %1789, label %1791, label %1790

1790:                                             ; preds = %1777
  call fastcc void @_ZL14yy_stack_printPsS_(ptr noundef nonnull %2, ptr noundef nonnull %1785)
  br label %1791

1791:                                             ; preds = %1790, %1777
  %1792 = icmp eq i64 %1784, 0
  br i1 %1792, label %1798, label %1777, !llvm.loop !110

1793:                                             ; preds = %62, %1773
  %1794 = phi i64 [ %75, %1773 ], [ %68, %62 ]
  %1795 = phi ptr [ %1764, %1773 ], [ %1, %62 ]
  %1796 = phi i32 [ %1748, %1773 ], [ %66, %62 ]
  %1797 = getelementptr inbounds i8, ptr %2, i64 %1794
  call void @_Z11ned1yyerrorPKc(ptr noundef nonnull @.str.59)
  br label %1803

1798:                                             ; preds = %1791, %1775
  %1799 = phi i64 [ %75, %1775 ], [ %1784, %1791 ]
  %1800 = getelementptr inbounds i8, ptr %2, i64 %1799
  br label %1803

1801:                                             ; preds = %145
  %1802 = getelementptr inbounds i8, ptr %2, i64 %75
  br label %1803

1803:                                             ; preds = %1801, %1798, %1793
  %1804 = phi ptr [ %1797, %1793 ], [ %1800, %1798 ], [ %1802, %1801 ]
  %1805 = phi ptr [ %1795, %1793 ], [ %1764, %1798 ], [ %1, %1801 ]
  %1806 = phi i32 [ %1796, %1793 ], [ %1748, %1798 ], [ %127, %1801 ]
  %1807 = phi i32 [ 2, %1793 ], [ 1, %1798 ], [ 0, %1801 ]
  %1808 = load i32, ptr @ned1yychar, align 4
  switch i32 %1808, label %1809 [
    i32 -2, label %1810
    i32 0, label %1810
  ]

1809:                                             ; preds = %1803
  call fastcc void @_ZL10yydestructPKciPP10NEDElementP10my_yyltype(ptr noundef nonnull @.str.60, i32 noundef %1806)
  br label %1810

1810:                                             ; preds = %1803, %1803, %1809
  %1811 = load i32, ptr @ned1yydebug, align 4, !tbaa !38
  %1812 = icmp eq i32 %1811, 0
  br i1 %1812, label %1814, label %1813

1813:                                             ; preds = %1810
  call fastcc void @_ZL14yy_stack_printPsS_(ptr noundef nonnull %2, ptr noundef %1804)
  br label %1814

1814:                                             ; preds = %1813, %1810
  %1815 = icmp eq ptr %1804, %2
  br i1 %1815, label %1825, label %1816

1816:                                             ; preds = %1814, %1816
  %1817 = phi ptr [ %1823, %1816 ], [ %1804, %1814 ]
  %1818 = load i16, ptr %1817, align 2, !tbaa !44
  %1819 = sext i16 %1818 to i64
  %1820 = getelementptr inbounds [419 x i8], ptr @_ZL6yystos, i64 0, i64 %1819
  %1821 = load i8, ptr %1820, align 1, !tbaa !46
  %1822 = zext i8 %1821 to i32
  call fastcc void @_ZL10yydestructPKciPP10NEDElementP10my_yyltype(ptr noundef nonnull @.str.61, i32 noundef %1822)
  %1823 = getelementptr inbounds i16, ptr %1817, i64 -1
  %1824 = icmp eq ptr %1823, %2
  br i1 %1824, label %1825, label %1816, !llvm.loop !111

1825:                                             ; preds = %1816, %1814
  %1826 = icmp eq ptr %1805, %1
  br i1 %1826, label %1828, label %1827

1827:                                             ; preds = %1825
  call void @free(ptr noundef %1805) #23
  br label %1828

1828:                                             ; preds = %1825, %1827, %1773
  %1829 = phi i32 [ undef, %1773 ], [ %1807, %1827 ], [ %1807, %1825 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(i64 6400, ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(i64 1600, ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %1) #23
  ret i32 %1829

1830:                                             ; preds = %935, %798, %417, %961, %823, %442
  %1831 = phi { ptr, i32 } [ %443, %442 ], [ %824, %823 ], [ %962, %961 ], [ %418, %417 ], [ %799, %798 ], [ %936, %935 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(i64 6400, ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(i64 1600, ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %1) #23
  resume { ptr, i32 } %1831

1832:                                             ; preds = %961, %823, %442
  %1833 = landingpad { ptr, i32 }
          catch ptr null
  %1834 = extractvalue { ptr, i32 } %1833, 0
  call void @__clang_call_terminate(ptr %1834) #28
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare noundef i32 @_Z9ned1yylexv() local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree nounwind uwtable
define internal fastcc void @_ZL15yy_symbol_printP8_IO_FILEiPKP10NEDElementPK10my_yyltype(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #4 !prof !37 {
  %3 = icmp slt i32 %1, 104
  %4 = zext nneg i32 %1 to i64
  %5 = sext i32 %1 to i64
  %6 = select i1 %3, i64 %5, i64 %4
  %7 = select i1 %3, ptr @.str.65, ptr @.str.66
  %8 = getelementptr inbounds [213 x ptr], ptr @_ZL7yytname, i64 0, i64 %6
  %9 = load ptr, ptr %8, align 8, !tbaa !42
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull %7, ptr noundef %9)
  %11 = tail call i64 @fwrite(ptr nonnull @.str.67, i64 2, i64 1, ptr %0)
  %12 = tail call i32 @fputc(i32 41, ptr %0)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

declare noundef ptr @_Z24storeComponentSourceCodeP10NEDElement10my_yyltype(ptr noundef, ptr noundef byval(%struct.my_yyltype) align 8) local_unnamed_addr #3

declare noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef, ptr noundef) local_unnamed_addr #3

declare noundef ptr @_Z8toString10my_yyltype(ptr noundef byval(%struct.my_yyltype) align 8) local_unnamed_addr #3

declare void @_Z10trimQuotes10my_yyltype(ptr dead_on_unwind writable sret(%struct.my_yyltype) align 8, ptr noundef byval(%struct.my_yyltype) align 8) local_unnamed_addr #3

declare void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltype(ptr noundef, ptr noundef byval(%struct.my_yyltype) align 8) local_unnamed_addr #3

declare void @_Z8storePosP10NEDElement10my_yyltype(ptr noundef, ptr noundef byval(%struct.my_yyltype) align 8) local_unnamed_addr #3

declare void @_Z20storeTrailingCommentP10NEDElement10my_yyltype(ptr noundef, ptr noundef byval(%struct.my_yyltype) align 8) local_unnamed_addr #3

declare void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltypeS1_(ptr noundef, ptr noundef byval(%struct.my_yyltype) align 8, ptr noundef byval(%struct.my_yyltype) align 8) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

declare noundef ptr @_Z12addParameterP10NEDElementPKc10my_yyltype(ptr noundef, ptr noundef, ptr noundef byval(%struct.my_yyltype) align 8) local_unnamed_addr #3

declare void @_Z13addExpressionP10NEDElementPKc10my_yyltypeS0_(ptr noundef, ptr noundef, ptr noundef byval(%struct.my_yyltype) align 8, ptr noundef) local_unnamed_addr #3

declare void @_Z8storePosP10NEDElement10my_yyltypeS1_(ptr noundef, ptr noundef byval(%struct.my_yyltype) align 8, ptr noundef byval(%struct.my_yyltype) align 8) local_unnamed_addr #3

declare noundef ptr @_Z20addComponentPropertyP10NEDElementPKc(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_ZN14LiteralElement7setTypeEi(ptr noundef nonnull align 8 dereferenceable(216), i32 noundef) local_unnamed_addr #3

declare void @_ZN17DisplayStringUtil30upgradeBackgroundDisplayStringB5cxx11EPKc(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef) local_unnamed_addr #3

declare void @_Z18opp_parsequotedstrB5cxx11PKc(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef) local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #7

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZN13NEDErrorStore8addErrorEP10NEDElementPKcz(ptr noundef nonnull align 8 dereferenceable(25), ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat !prof !37 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #23
  tail call void @_ZSt9terminatev() #28
  unreachable
}

declare void @_ZSt9terminatev() local_unnamed_addr

declare noundef ptr @_Z25getOrCreateElementWithTagiP10NEDElement(i32 noundef, ptr noundef) local_unnamed_addr #3

declare noundef ptr @_Z12addParameterP10NEDElement10my_yyltype(ptr noundef, ptr noundef byval(%struct.my_yyltype) align 8) local_unnamed_addr #3

declare void @_ZN12ParamElement7setTypeEi(ptr noundef nonnull align 8 dereferenceable(185), i32 noundef) local_unnamed_addr #3

declare noundef ptr @_Z7addGateP10NEDElement10my_yyltype(ptr noundef, ptr noundef byval(%struct.my_yyltype) align 8) local_unnamed_addr #3

declare void @_ZN11GateElement7setTypeEi(ptr noundef nonnull align 8 dereferenceable(184), i32 noundef) local_unnamed_addr #3

declare void @_Z9addVectorP10NEDElementPKc10my_yyltypeS0_(ptr noundef, ptr noundef, ptr noundef byval(%struct.my_yyltype) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define dso_local void @_Z35createSubstparamsElementIfNotExistsv() local_unnamed_addr #0 !prof !37 {
  %1 = load i8, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 1), align 1, !tbaa !108, !range !59, !noundef !60
  %2 = icmp eq i8 %1, 0
  %3 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 10), align 8
  %4 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 22), align 8
  %5 = select i1 %2, ptr %4, ptr %3
  %6 = load ptr, ptr %5, align 8, !tbaa !78
  %7 = getelementptr inbounds ptr, ptr %6, i64 30
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(112) %5, i32 noundef 14)
  store ptr %9, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 13), align 8, !tbaa !91
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %0
  %12 = tail call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 14, ptr noundef nonnull %5)
  store ptr %12, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 13), align 8, !tbaa !91
  br label %13

13:                                               ; preds = %11, %0
  ret void
}

declare noundef ptr @_Z11addPropertyP10NEDElementPKc(ptr noundef, ptr noundef) local_unnamed_addr #3

declare noundef ptr @_Z19createStringLiteral10my_yyltype(ptr noundef byval(%struct.my_yyltype) align 8) local_unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define dso_local void @_Z33createGatesizesElementIfNotExistsv() local_unnamed_addr #0 !prof !37 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 22), align 8, !tbaa !90
  %2 = load ptr, ptr %1, align 8, !tbaa !78
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %1, i32 noundef 19)
  store ptr %5, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 19), align 8, !tbaa !94
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %0
  %8 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 22), align 8, !tbaa !90
  %9 = tail call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 19, ptr noundef %8)
  store ptr %9, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 19), align 8, !tbaa !94
  br label %10

10:                                               ; preds = %7, %0
  ret void
}

declare void @_ZN17DisplayStringUtil29upgradeSubmoduleDisplayStringB5cxx11EPKc(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_Z17createChannelSpecP10NEDElement(ptr nocapture noundef readnone %0) local_unnamed_addr #0 !prof !37 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 25), align 8, !tbaa !102
  %3 = tail call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 26, ptr noundef %2)
  %4 = tail call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 14, ptr noundef %3)
  store ptr %4, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 11), align 8, !tbaa !71
  %5 = getelementptr inbounds %class.ParametersElement, ptr %4, i64 0, i32 1
  store i8 1, ptr %5, align 8, !tbaa !72
  ret ptr %3
}

declare void @_ZN17DisplayStringUtil30upgradeConnectionDisplayStringB5cxx11EPKc(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef) local_unnamed_addr #3

declare void @_ZN17ConnectionElement17setArrowDirectionEi(ptr noundef nonnull align 8 dereferenceable(400), i32 noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define dso_local void @_Z29removeRedundantChanSpecParamsv() local_unnamed_addr #0 !prof !37 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 26), align 8, !tbaa !104
  %2 = icmp eq ptr %1, null
  br i1 %2, label %22, label %3

3:                                                ; preds = %0
  %4 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 11), align 8, !tbaa !71
  %5 = load ptr, ptr %4, align 8, !tbaa !78
  %6 = getelementptr inbounds ptr, ptr %5, i64 23
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(112) %4)
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %22

10:                                               ; preds = %3
  %11 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 26), align 8, !tbaa !104
  %12 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 11), align 8, !tbaa !71
  %13 = load ptr, ptr %11, align 8, !tbaa !78
  %14 = getelementptr inbounds ptr, ptr %13, i64 29
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(112) %11, ptr noundef %12)
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %10
  %19 = load ptr, ptr %16, align 8, !tbaa !78
  %20 = getelementptr inbounds ptr, ptr %19, i64 1
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(112) %16) #23
  br label %22

22:                                               ; preds = %10, %18, %3, %0
  ret void
}

declare void @_Z14swapConnectionP10NEDElement(ptr noundef) local_unnamed_addr #3

declare noundef ptr @_Z20setIsNetworkPropertyP10NEDElement(ptr noundef) local_unnamed_addr #3

declare noundef ptr @_Z16createExpressionP10NEDElement(ptr noundef) local_unnamed_addr #3

declare noundef ptr @_Z14createFunctionPKcP10NEDElementS2_S2_S2_S2_S2_S2_S2_S2_S2_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare noundef ptr @_Z14createOperatorPKcP10NEDElementS2_S2_(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare noundef ptr @_Z10unaryMinusP10NEDElement(ptr noundef) local_unnamed_addr #3

declare noundef ptr @_Z11createIdent10my_yyltype(ptr noundef byval(%struct.my_yyltype) align 8) local_unnamed_addr #3

declare noundef ptr @_Z13createLiterali10my_yyltypeS_(i32 noundef, ptr noundef byval(%struct.my_yyltype) align 8, ptr noundef byval(%struct.my_yyltype) align 8) local_unnamed_addr #3

declare noundef ptr @_Z21createQuantityLiteral10my_yyltype(ptr noundef byval(%struct.my_yyltype) align 8) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree nounwind uwtable
define internal fastcc void @_ZL14yy_stack_printPsS_(ptr noundef readonly %0, ptr noundef readnone %1) unnamed_addr #4 !prof !37 {
  %3 = load ptr, ptr @stderr, align 8, !tbaa !42
  %4 = tail call i64 @fwrite(ptr nonnull @.str.282, i64 9, i64 1, ptr %3) #24
  %5 = icmp ugt ptr %0, %1
  br i1 %5, label %14, label %6

6:                                                ; preds = %2, %6
  %7 = phi ptr [ %12, %6 ], [ %0, %2 ]
  %8 = load ptr, ptr @stderr, align 8, !tbaa !42
  %9 = load i16, ptr %7, align 2, !tbaa !44
  %10 = sext i16 %9 to i32
  %11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.283, i32 noundef %10) #24
  %12 = getelementptr inbounds i16, ptr %7, i64 1
  %13 = icmp ugt ptr %12, %1
  br i1 %13, label %14, label %6, !llvm.loop !112

14:                                               ; preds = %6, %2
  %15 = load ptr, ptr @stderr, align 8, !tbaa !42
  %16 = tail call i32 @fputc(i32 10, ptr %15)
  ret void
}

; Function Attrs: cold mustprogress nofree nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef i64 @_ZL14yysyntax_errorPcii(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #9 !prof !37 {
  %4 = alloca [5 x ptr], align 16
  %5 = alloca [60 x i8], align 16
  %6 = sext i32 %1 to i64
  %7 = getelementptr inbounds [419 x i16], ptr @_ZL6yypact, i64 0, i64 %6
  %8 = load i16, ptr %7, align 2, !tbaa !44
  %9 = sext i16 %8 to i32
  %10 = icmp sgt i16 %8, -341
  br i1 %10, label %11, label %109

11:                                               ; preds = %3
  %12 = icmp ult i32 %2, 343
  br i1 %12, label %13, label %18

13:                                               ; preds = %11
  %14 = zext nneg i32 %2 to i64
  %15 = getelementptr inbounds [343 x i8], ptr @_ZL11yytranslate, i64 0, i64 %14
  %16 = load i8, ptr %15, align 1, !tbaa !46
  %17 = zext i8 %16 to i64
  br label %18

18:                                               ; preds = %11, %13
  %19 = phi i64 [ %17, %13 ], [ 2, %11 ]
  %20 = getelementptr inbounds [213 x ptr], ptr @_ZL7yytname, i64 0, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !42
  %22 = tail call fastcc noundef i64 @_ZL9yytnamerrPcPKc(ptr noundef null, ptr noundef %21)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %5) #23
  %23 = icmp slt i16 %8, 0
  %24 = sub nsw i32 0, %9
  %25 = select i1 %23, i32 %24, i32 0
  %26 = sub nsw i32 782, %9
  %27 = tail call i32 @llvm.smin.i32(i32 %26, i32 104)
  store ptr %21, ptr %4, align 16, !tbaa !42
  %28 = getelementptr inbounds i8, ptr %5, i64 27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %5, ptr noundef nonnull align 16 dereferenceable(28) @_ZZL14yysyntax_errorPciiE12yyunexpected, i64 28, i1 false) #23
  %29 = icmp slt i32 %25, %27
  br i1 %29, label %30, label %72

30:                                               ; preds = %18
  %31 = sext i32 %25 to i64
  %32 = sext i16 %8 to i64
  %33 = sext i32 %27 to i64
  br label %34

34:                                               ; preds = %30, %64
  %35 = phi i64 [ %31, %30 ], [ %70, %64 ]
  %36 = phi i32 [ 1, %30 ], [ %69, %64 ]
  %37 = phi i64 [ %22, %30 ], [ %68, %64 ]
  %38 = phi ptr [ @_ZZL14yysyntax_errorPciiE11yyexpecting, %30 ], [ %67, %64 ]
  %39 = phi ptr [ %28, %30 ], [ %66, %64 ]
  %40 = phi i32 [ 0, %30 ], [ %65, %64 ]
  %41 = add nsw i64 %35, %32
  %42 = getelementptr inbounds [782 x i16], ptr @_ZL7yycheck, i64 0, i64 %41
  %43 = load i16, ptr %42, align 2, !tbaa !44
  %44 = sext i16 %43 to i32
  %45 = trunc i64 %35 to i32
  %46 = icmp eq i32 %45, %44
  %47 = icmp ne i64 %35, 1
  %48 = and i1 %47, %46
  br i1 %48, label %49, label %64

49:                                               ; preds = %34
  %50 = icmp eq i32 %36, 5
  br i1 %50, label %51, label %52

51:                                               ; preds = %49
  store i8 0, ptr %28, align 1, !tbaa !46
  br label %72

52:                                               ; preds = %49
  %53 = getelementptr inbounds [213 x ptr], ptr @_ZL7yytname, i64 0, i64 %35
  %54 = load ptr, ptr %53, align 8, !tbaa !42
  %55 = add nsw i32 %36, 1
  %56 = sext i32 %36 to i64
  %57 = getelementptr inbounds [5 x ptr], ptr %4, i64 0, i64 %56
  store ptr %54, ptr %57, align 8, !tbaa !42
  %58 = call fastcc noundef i64 @_ZL9yytnamerrPcPKc(ptr noundef null, ptr noundef %54)
  %59 = add i64 %58, %37
  %60 = icmp ult i64 %59, %37
  %61 = zext i1 %60 to i32
  %62 = or i32 %40, %61
  %63 = call ptr @stpcpy(ptr noundef %39, ptr noundef %38) #23
  br label %64

64:                                               ; preds = %34, %52
  %65 = phi i32 [ %62, %52 ], [ %40, %34 ]
  %66 = phi ptr [ %63, %52 ], [ %39, %34 ]
  %67 = phi ptr [ @_ZZL14yysyntax_errorPciiE4yyor, %52 ], [ %38, %34 ]
  %68 = phi i64 [ %59, %52 ], [ %37, %34 ]
  %69 = phi i32 [ %55, %52 ], [ %36, %34 ]
  %70 = add nsw i64 %35, 1
  %71 = icmp slt i64 %70, %33
  br i1 %71, label %34, label %72, !llvm.loop !113

72:                                               ; preds = %64, %18, %51
  %73 = phi i32 [ %40, %51 ], [ 0, %18 ], [ %65, %64 ]
  %74 = phi i64 [ %22, %51 ], [ %22, %18 ], [ %68, %64 ]
  %75 = phi i32 [ 1, %51 ], [ 1, %18 ], [ %69, %64 ]
  %76 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #25
  %77 = add i64 %76, %74
  %78 = icmp ult i64 %77, %74
  %79 = zext i1 %78 to i32
  %80 = or i32 %73, %79
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %107

82:                                               ; preds = %72
  %83 = icmp eq ptr %0, null
  br i1 %83, label %107, label %84

84:                                               ; preds = %82, %101
  %85 = phi ptr [ %106, %101 ], [ %5, %82 ]
  %86 = phi ptr [ %105, %101 ], [ %0, %82 ]
  %87 = phi i32 [ %104, %101 ], [ 0, %82 ]
  %88 = load i8, ptr %85, align 1, !tbaa !46
  store i8 %88, ptr %86, align 1, !tbaa !46
  switch i8 %88, label %101 [
    i8 0, label %107
    i8 37, label %89
  ]

89:                                               ; preds = %84
  %90 = getelementptr inbounds i8, ptr %85, i64 1
  %91 = load i8, ptr %90, align 1, !tbaa !46
  %92 = icmp eq i8 %91, 115
  %93 = icmp slt i32 %87, %75
  %94 = select i1 %92, i1 %93, i1 false
  br i1 %94, label %95, label %101

95:                                               ; preds = %89
  %96 = add nsw i32 %87, 1
  %97 = sext i32 %87 to i64
  %98 = getelementptr inbounds [5 x ptr], ptr %4, i64 0, i64 %97
  %99 = load ptr, ptr %98, align 8, !tbaa !42
  %100 = call fastcc noundef i64 @_ZL9yytnamerrPcPKc(ptr noundef nonnull %86, ptr noundef %99)
  br label %101

101:                                              ; preds = %89, %84, %95
  %102 = phi i64 [ %100, %95 ], [ 1, %84 ], [ 1, %89 ]
  %103 = phi i64 [ 2, %95 ], [ 1, %84 ], [ 1, %89 ]
  %104 = phi i32 [ %96, %95 ], [ %87, %84 ], [ %87, %89 ]
  %105 = getelementptr inbounds i8, ptr %86, i64 %102
  %106 = getelementptr inbounds i8, ptr %85, i64 %103
  br label %84, !llvm.loop !114

107:                                              ; preds = %84, %82, %72
  %108 = phi i64 [ -1, %72 ], [ %77, %82 ], [ %77, %84 ]
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #23
  br label %109

109:                                              ; preds = %3, %107
  %110 = phi i64 [ %108, %107 ], [ 0, %3 ]
  ret i64 %110
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #11

; Function Attrs: cold mustprogress uwtable
define dso_local void @_Z11ned1yyerrorPKc(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !37 {
  %2 = alloca [250 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 250, ptr nonnull %2) #23
  %3 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %0) #23
  %4 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #25
  %5 = add i64 %4, -1
  %6 = getelementptr inbounds [250 x i8], ptr %2, i64 0, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !46
  %8 = icmp eq i8 %7, 10
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i8 0, ptr %6, align 1, !tbaa !46
  br label %10

10:                                               ; preds = %9, %1
  %11 = load ptr, ptr @np, align 8, !tbaa !42
  %12 = load i32, ptr @pos, align 4, !tbaa !115
  call void @_ZN9NEDParser5errorEPKci(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull %2, i32 noundef %12)
  call void @llvm.lifetime.end.p0(i64 250, ptr nonnull %2) #23
  ret void
}

; Function Attrs: cold mustprogress nofree nounwind uwtable
define internal fastcc void @_ZL10yydestructPKciPP10NEDElementP10my_yyltype(ptr noundef %0, i32 noundef %1) unnamed_addr #4 !prof !37 {
  %3 = load i32, ptr @ned1yydebug, align 4, !tbaa !38
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %13, label %5

5:                                                ; preds = %2
  %6 = icmp eq ptr %0, null
  %7 = select i1 %6, ptr @.str.284, ptr %0
  %8 = load ptr, ptr @stderr, align 8, !tbaa !42
  %9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.4, ptr noundef nonnull %7) #24
  %10 = load ptr, ptr @stderr, align 8, !tbaa !42
  tail call fastcc void @_ZL15yy_symbol_printP8_IO_FILEiPKP10NEDElementPK10my_yyltype(ptr noundef %10, i32 noundef %1)
  %11 = load ptr, ptr @stderr, align 8, !tbaa !42
  %12 = tail call i32 @fputc(i32 10, ptr %11)
  br label %13

13:                                               ; preds = %2, %5
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_Z11doParseNED1P9NEDParserPKc(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 !prof !37 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %struct.my_yyltype, align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  store i32 0, ptr @ned1yydebug, align 4, !tbaa !38
  %7 = load ptr, ptr @np, align 8, !tbaa !42
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %2
  %10 = tail call ptr @__cxa_allocate_exception(i64 48) #23
  invoke void (ptr, ptr, ...) @_ZN17opp_runtime_errorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef nonnull @.str.285)
          to label %11 unwind label %14

11:                                               ; preds = %9
  tail call void @__cxa_throw(ptr nonnull %10, ptr nonnull @_ZTI17opp_runtime_error, ptr nonnull @_ZN17opp_runtime_errorD2Ev) #29
  unreachable

12:                                               ; preds = %173, %14
  %13 = phi { ptr, i32 } [ %15, %14 ], [ %174, %173 ]
  resume { ptr, i32 } %13

14:                                               ; preds = %9
  %15 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %10) #23
  br label %12

16:                                               ; preds = %2
  store ptr %0, ptr @np, align 8, !tbaa !42
  store i32 0, ptr getelementptr inbounds (%struct.LineColumn, ptr @pos, i64 0, i32 1), align 4, !tbaa !117
  store i32 1, ptr @pos, align 4, !tbaa !115
  %17 = load i64, ptr @pos, align 4
  store i64 %17, ptr @prevpos, align 4
  store ptr null, ptr @ned1yyin, align 8, !tbaa !42
  %18 = load ptr, ptr @stderr, align 8, !tbaa !42
  store ptr %18, ptr @ned1yyout, align 8, !tbaa !42
  %19 = invoke noundef ptr @_Z18ned1yy_scan_stringPKc(ptr noundef %1)
          to label %20 unwind label %26

20:                                               ; preds = %16
  %21 = icmp eq ptr %19, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %20
  %23 = load ptr, ptr @np, align 8, !tbaa !42
  %24 = getelementptr inbounds %class.NEDParser, ptr %23, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !82
  invoke void (ptr, ptr, ptr, ...) @_ZN13NEDErrorStore8addErrorEPKcS1_z(ptr noundef nonnull align 8 dereferenceable(25) %25, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.62)
          to label %171 unwind label %26

26:                                               ; preds = %51, %68, %64, %57, %28, %22, %16
  %27 = landingpad { ptr, i32 }
          cleanup
  br label %173

28:                                               ; preds = %20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) @_ZL2ps, i8 0, i64 200, i1 false)
  %29 = invoke noalias noundef nonnull dereferenceable(176) ptr @_Znwm(i64 noundef 176) #30
          to label %30 unwind label %26

30:                                               ; preds = %28
  invoke void @_ZN14NedFileElementC1Ev(ptr noundef nonnull align 8 dereferenceable(176) %29)
          to label %31 unwind label %70

31:                                               ; preds = %30
  store ptr %29, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 5), align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #23
  %32 = load ptr, ptr @np, align 8, !tbaa !42
  %33 = getelementptr inbounds %class.NEDParser, ptr %32, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !118
  invoke void @_Z16slashifyFilenameB5cxx11PKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef %34)
          to label %35 unwind label %72

35:                                               ; preds = %31
  %36 = load ptr, ptr %3, align 8, !tbaa !81
  %37 = getelementptr inbounds %class.NedFileElement, ptr %29, i64 0, i32 1
  %38 = getelementptr inbounds %class.NedFileElement, ptr %29, i64 0, i32 1, i32 1
  %39 = load i64, ptr %38, align 8, !tbaa !66
  %40 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %36) #23
  %41 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %37, i64 noundef 0, i64 noundef %39, ptr noundef %36, i64 noundef %40)
          to label %42 unwind label %74

42:                                               ; preds = %35
  %43 = load ptr, ptr %3, align 8, !tbaa !81
  %44 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 2
  %45 = icmp eq ptr %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 1
  %48 = load i64, ptr %47, align 8, !tbaa !66
  %49 = icmp ult i64 %48, 16
  call void @llvm.assume(i1 %49)
  br label %51

50:                                               ; preds = %42
  call void @_ZdlPv(ptr noundef %43) #26
  br label %51

51:                                               ; preds = %46, %50
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #23
  %52 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 5), align 8, !tbaa !64
  %53 = getelementptr inbounds %class.NedFileElement, ptr %52, i64 0, i32 2
  %54 = getelementptr inbounds %class.NedFileElement, ptr %52, i64 0, i32 2, i32 1
  %55 = load i64, ptr %54, align 8, !tbaa !66
  %56 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %53, i64 noundef 0, i64 noundef %55, ptr noundef nonnull @.str.63, i64 noundef 1)
          to label %57 unwind label %26

57:                                               ; preds = %51
  %58 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 5), align 8, !tbaa !64
  invoke void @_Z16storeFileCommentP10NEDElement(ptr noundef %58)
          to label %59 unwind label %26

59:                                               ; preds = %57
  %60 = load ptr, ptr @np, align 8, !tbaa !42
  %61 = getelementptr inbounds %class.NEDParser, ptr %60, i64 0, i32 1
  %62 = load i8, ptr %61, align 1, !tbaa !56, !range !59, !noundef !60
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %86, label %64

64:                                               ; preds = %59
  %65 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 5), align 8, !tbaa !64
  %66 = getelementptr inbounds %class.NEDParser, ptr %60, i64 0, i32 4
  %67 = load ptr, ptr %66, align 8, !tbaa !119
  invoke void @_ZN13NEDFileBuffer14getFullTextPosEv(ptr dead_on_unwind nonnull writable sret(%struct.my_yyltype) align 8 %4, ptr noundef nonnull align 8 dereferenceable(52) %67)
          to label %68 unwind label %26

68:                                               ; preds = %64
  %69 = invoke noundef ptr @_Z15storeSourceCodeP10NEDElement10my_yyltype(ptr noundef %65, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %4)
          to label %86 unwind label %26

70:                                               ; preds = %30
  %71 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef %29) #26
  br label %173

72:                                               ; preds = %31
  %73 = landingpad { ptr, i32 }
          cleanup
  br label %84

74:                                               ; preds = %35
  %75 = landingpad { ptr, i32 }
          cleanup
  %76 = load ptr, ptr %3, align 8, !tbaa !81
  %77 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 2
  %78 = icmp eq ptr %76, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %74
  %80 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 1
  %81 = load i64, ptr %80, align 8, !tbaa !66
  %82 = icmp ult i64 %81, 16
  call void @llvm.assume(i1 %82)
  br label %84

83:                                               ; preds = %74
  call void @_ZdlPv(ptr noundef %76) #26
  br label %84

84:                                               ; preds = %83, %79, %72
  %85 = phi { ptr, i32 } [ %73, %72 ], [ %75, %79 ], [ %75, %83 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #23
  br label %173

86:                                               ; preds = %68, %59
  %87 = invoke noundef i32 @_Z11ned1yyparsev()
          to label %88 unwind label %89

88:                                               ; preds = %86
  invoke void @_Z20ned1yy_delete_bufferP15yy_buffer_state(ptr noundef nonnull %19)
          to label %167 unwind label %169

89:                                               ; preds = %86
  %90 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12NEDException
  %91 = extractvalue { ptr, i32 } %90, 1
  %92 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTI12NEDException) #23
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %173

94:                                               ; preds = %89
  %95 = extractvalue { ptr, i32 } %90, 0
  %96 = call ptr @__cxa_begin_catch(ptr %95) #23
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #23
  %97 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 2
  store ptr %97, ptr %6, align 8, !tbaa !120
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.64, ptr noundef nonnull getelementptr inbounds ([23 x i8], ptr @.str.64, i64 0, i64 22))
          to label %98 unwind label %138

98:                                               ; preds = %94
  %99 = load ptr, ptr %96, align 8, !tbaa !78
  %100 = getelementptr inbounds ptr, ptr %99, i64 2
  %101 = load ptr, ptr %100, align 8
  %102 = call noundef ptr %101(ptr noundef nonnull align 8 dereferenceable(48) %96) #23
  %103 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef %102)
          to label %104 unwind label %140

104:                                              ; preds = %98
  %105 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 2
  store ptr %105, ptr %5, align 8, !tbaa !120, !alias.scope !121
  %106 = load ptr, ptr %103, align 8, !tbaa !81
  %107 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %103, i64 0, i32 2
  %108 = icmp eq ptr %106, %107
  br i1 %108, label %109, label %114

109:                                              ; preds = %104
  %110 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %103, i64 0, i32 1
  %111 = load i64, ptr %110, align 8, !tbaa !66
  %112 = icmp ult i64 %111, 16
  call void @llvm.assume(i1 %112)
  %113 = add nuw nsw i64 %111, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %105, ptr noundef nonnull align 8 dereferenceable(1) %107, i64 %113, i1 false)
  br label %116

114:                                              ; preds = %104
  store ptr %106, ptr %5, align 8, !tbaa !81, !alias.scope !121
  %115 = load i64, ptr %107, align 8, !tbaa !46
  store i64 %115, ptr %105, align 8, !tbaa !46, !alias.scope !121
  br label %116

116:                                              ; preds = %109, %114
  %117 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %103, i64 0, i32 1
  %118 = load i64, ptr %117, align 8, !tbaa !66
  %119 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 1
  store i64 %118, ptr %119, align 8, !tbaa !66, !alias.scope !121
  store ptr %107, ptr %103, align 8, !tbaa !81
  store i64 0, ptr %117, align 8, !tbaa !66
  store i8 0, ptr %107, align 8, !tbaa !46
  %120 = load ptr, ptr %5, align 8, !tbaa !81
  invoke void @_Z11ned1yyerrorPKc(ptr noundef %120)
          to label %121 unwind label %142

121:                                              ; preds = %116
  %122 = load ptr, ptr %5, align 8, !tbaa !81
  %123 = icmp eq ptr %122, %105
  br i1 %123, label %124, label %127

124:                                              ; preds = %121
  %125 = load i64, ptr %119, align 8, !tbaa !66
  %126 = icmp ult i64 %125, 16
  call void @llvm.assume(i1 %126)
  br label %128

127:                                              ; preds = %121
  call void @_ZdlPv(ptr noundef %122) #26
  br label %128

128:                                              ; preds = %124, %127
  %129 = load ptr, ptr %6, align 8, !tbaa !81
  %130 = icmp eq ptr %129, %97
  br i1 %130, label %131, label %135

131:                                              ; preds = %128
  %132 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 1
  %133 = load i64, ptr %132, align 8, !tbaa !66
  %134 = icmp ult i64 %133, 16
  call void @llvm.assume(i1 %134)
  br label %136

135:                                              ; preds = %128
  call void @_ZdlPv(ptr noundef %129) #26
  br label %136

136:                                              ; preds = %131, %135
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #23
  invoke void @_Z20ned1yy_delete_bufferP15yy_buffer_state(ptr noundef nonnull %19)
          to label %137 unwind label %161

137:                                              ; preds = %136
  invoke void @__cxa_end_catch()
          to label %171 unwind label %163

138:                                              ; preds = %94
  %139 = landingpad { ptr, i32 }
          cleanup
  br label %159

140:                                              ; preds = %98
  %141 = landingpad { ptr, i32 }
          cleanup
  br label %150

142:                                              ; preds = %116
  %143 = landingpad { ptr, i32 }
          cleanup
  %144 = load ptr, ptr %5, align 8, !tbaa !81
  %145 = icmp eq ptr %144, %105
  br i1 %145, label %146, label %149

146:                                              ; preds = %142
  %147 = load i64, ptr %119, align 8, !tbaa !66
  %148 = icmp ult i64 %147, 16
  call void @llvm.assume(i1 %148)
  br label %150

149:                                              ; preds = %142
  call void @_ZdlPv(ptr noundef %144) #26
  br label %150

150:                                              ; preds = %149, %146, %140
  %151 = phi { ptr, i32 } [ %141, %140 ], [ %143, %146 ], [ %143, %149 ]
  %152 = load ptr, ptr %6, align 8, !tbaa !81
  %153 = icmp eq ptr %152, %97
  br i1 %153, label %154, label %158

154:                                              ; preds = %150
  %155 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 1
  %156 = load i64, ptr %155, align 8, !tbaa !66
  %157 = icmp ult i64 %156, 16
  call void @llvm.assume(i1 %157)
  br label %159

158:                                              ; preds = %150
  call void @_ZdlPv(ptr noundef %152) #26
  br label %159

159:                                              ; preds = %158, %154, %138
  %160 = phi { ptr, i32 } [ %139, %138 ], [ %151, %154 ], [ %151, %158 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #23
  br label %165

161:                                              ; preds = %136
  %162 = landingpad { ptr, i32 }
          cleanup
  br label %165

163:                                              ; preds = %137
  %164 = landingpad { ptr, i32 }
          cleanup
  br label %173

165:                                              ; preds = %161, %159
  %166 = phi { ptr, i32 } [ %162, %161 ], [ %160, %159 ]
  invoke void @__cxa_end_catch()
          to label %173 unwind label %175

167:                                              ; preds = %88
  %168 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 5), align 8, !tbaa !64
  br label %171

169:                                              ; preds = %88
  %170 = landingpad { ptr, i32 }
          cleanup
  br label %173

171:                                              ; preds = %167, %137, %22
  %172 = phi ptr [ null, %22 ], [ %168, %167 ], [ null, %137 ]
  store ptr null, ptr @np, align 8, !tbaa !42
  ret ptr %172

173:                                              ; preds = %163, %165, %89, %169, %84, %70, %26
  %174 = phi { ptr, i32 } [ %27, %26 ], [ %85, %84 ], [ %71, %70 ], [ %170, %169 ], [ %90, %89 ], [ %164, %163 ], [ %166, %165 ]
  store ptr null, ptr @np, align 8, !tbaa !42
  br label %12

175:                                              ; preds = %165
  %176 = landingpad { ptr, i32 }
          catch ptr null
  %177 = extractvalue { ptr, i32 } %176, 0
  call void @__clang_call_terminate(ptr %177) #28
  unreachable
}

declare noundef ptr @_Z18ned1yy_scan_stringPKc(ptr noundef) local_unnamed_addr #3

declare void @_ZN13NEDErrorStore8addErrorEPKcS1_z(ptr noundef nonnull align 8 dereferenceable(25), ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #12

declare void @_ZN14NedFileElementC1Ev(ptr noundef nonnull align 8 dereferenceable(176)) unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #13

declare void @_Z16slashifyFilenameB5cxx11PKc(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef) local_unnamed_addr #3

declare void @_Z16storeFileCommentP10NEDElement(ptr noundef) local_unnamed_addr #3

declare noundef ptr @_Z15storeSourceCodeP10NEDElement10my_yyltype(ptr noundef, ptr noundef byval(%struct.my_yyltype) align 8) local_unnamed_addr #3

declare void @_ZN13NEDFileBuffer14getFullTextPosEv(ptr dead_on_unwind writable sret(%struct.my_yyltype) align 8, ptr noundef nonnull align 8 dereferenceable(52)) local_unnamed_addr #3

declare void @_Z20ned1yy_delete_bufferP15yy_buffer_state(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #14

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

declare void @_ZN9NEDParser5errorEPKci(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i32 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef i64 @_ZL9yytnamerrPcPKc(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #15 !prof !37 {
  %3 = load i8, ptr %1, align 1, !tbaa !46
  %4 = icmp eq i8 %3, 34
  br i1 %4, label %5, label %27

5:                                                ; preds = %2
  %6 = icmp eq ptr %0, null
  br label %7

7:                                                ; preds = %5, %21
  %8 = phi i64 [ %22, %21 ], [ 0, %5 ]
  %9 = phi ptr [ %17, %21 ], [ %1, %5 ]
  %10 = getelementptr inbounds i8, ptr %9, i64 1
  %11 = load i8, ptr %10, align 1, !tbaa !46
  switch i8 %11, label %16 [
    i8 39, label %27
    i8 44, label %27
    i8 92, label %12
    i8 34, label %23
  ]

12:                                               ; preds = %7
  %13 = getelementptr inbounds i8, ptr %9, i64 2
  %14 = load i8, ptr %13, align 1, !tbaa !46
  %15 = icmp eq i8 %14, 92
  br i1 %15, label %16, label %27

16:                                               ; preds = %12, %7
  %17 = phi ptr [ %10, %7 ], [ %13, %12 ]
  br i1 %6, label %21, label %18

18:                                               ; preds = %16
  %19 = load i8, ptr %17, align 1, !tbaa !46
  %20 = getelementptr inbounds i8, ptr %0, i64 %8
  store i8 %19, ptr %20, align 1, !tbaa !46
  br label %21

21:                                               ; preds = %18, %16
  %22 = add i64 %8, 1
  br label %7, !llvm.loop !124

23:                                               ; preds = %7
  %24 = icmp eq ptr %0, null
  br i1 %24, label %36, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds i8, ptr %0, i64 %8
  store i8 0, ptr %26, align 1, !tbaa !46
  br label %36

27:                                               ; preds = %12, %7, %7, %2
  %28 = icmp eq ptr %0, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %27
  %30 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #25
  br label %36

31:                                               ; preds = %27
  %32 = tail call ptr @stpcpy(ptr noundef nonnull %0, ptr noundef nonnull %1) #23
  %33 = ptrtoint ptr %32 to i64
  %34 = ptrtoint ptr %0 to i64
  %35 = sub i64 %33, %34
  br label %36

36:                                               ; preds = %25, %23, %31, %29
  %37 = phi i64 [ %35, %31 ], [ %30, %29 ], [ %8, %23 ], [ %8, %25 ]
  ret i64 %37
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @stpcpy(ptr noalias noundef writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #14

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZN17opp_runtime_errorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, ...) unnamed_addr #3

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN17opp_runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTV17opp_runtime_error, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !78
  %2 = getelementptr inbounds %class.opp_runtime_error, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !81
  %4 = getelementptr inbounds %class.opp_runtime_error, ptr %0, i64 0, i32 1, i32 2
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = getelementptr inbounds %class.opp_runtime_error, ptr %0, i64 0, i32 1, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !66
  %9 = icmp ult i64 %8, 16
  tail call void @llvm.assume(i1 %9)
  br label %11

10:                                               ; preds = %1
  tail call void @_ZdlPv(ptr noundef %3) #26
  br label %11

11:                                               ; preds = %6, %10
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #23
  ret void
}

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #17

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN17opp_runtime_errorD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTV17opp_runtime_error, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !78
  %2 = getelementptr inbounds %class.opp_runtime_error, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !81
  %4 = getelementptr inbounds %class.opp_runtime_error, ptr %0, i64 0, i32 1, i32 2
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = getelementptr inbounds %class.opp_runtime_error, ptr %0, i64 0, i32 1, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !66
  %9 = icmp ult i64 %8, 16
  tail call void @llvm.assume(i1 %9)
  br label %11

10:                                               ; preds = %1
  tail call void @_ZdlPv(ptr noundef %3) #26
  br label %11

11:                                               ; preds = %6, %10
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #23
  tail call void @_ZdlPv(ptr noundef %0) #26
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK17opp_runtime_error4whatEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %2 = getelementptr inbounds %class.opp_runtime_error, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !81
  ret ptr %3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #18 comdat align 2 personality ptr @__gxx_personality_v0 !prof !125 {
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #23
  %5 = ptrtoint ptr %2 to i64
  %6 = ptrtoint ptr %1 to i64
  %7 = sub i64 %5, %6
  store i64 %7, ptr %4, align 8, !tbaa !126
  %8 = icmp ugt i64 %7, 15
  br i1 %8, label %9, label %13, !prof !127

9:                                                ; preds = %3
  %10 = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0)
  store ptr %10, ptr %0, align 8, !tbaa !81
  %11 = load i64, ptr %4, align 8, !tbaa !126
  %12 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store i64 %11, ptr %12, align 8, !tbaa !46
  br label %13

13:                                               ; preds = %3, %9
  %14 = load ptr, ptr %0, align 8, !tbaa !81
  switch i64 %7, label %17 [
    i64 1, label %15
    i64 0, label %18
  ], !prof !128

15:                                               ; preds = %13
  %16 = load i8, ptr %1, align 1, !tbaa !46
  store i8 %16, ptr %14, align 1, !tbaa !46
  br label %18

17:                                               ; preds = %13
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %14, ptr align 1 %1, i64 %7, i1 false), !prof !129
  br label %18

18:                                               ; preds = %13, %15, %17
  %19 = load i64, ptr %4, align 8, !tbaa !126
  %20 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 %19, ptr %20, align 8, !tbaa !66
  %21 = load ptr, ptr %0, align 8, !tbaa !81
  %22 = getelementptr inbounds i8, ptr %21, i64 %19
  store i8 0, ptr %22, align 1, !tbaa !46
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #23
  ret void
}

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #18 align 2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #19

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #20

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #21

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #22

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nosync nounwind memory(none) }
attributes #8 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold mustprogress nofree nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold mustprogress nofree nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { nofree nounwind }
attributes #21 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #23 = { nounwind }
attributes #24 = { cold }
attributes #25 = { nounwind willreturn memory(read) }
attributes #26 = { builtin nounwind }
attributes #27 = { nounwind allocsize(0) }
attributes #28 = { noreturn nounwind }
attributes #29 = { noreturn }
attributes #30 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!36}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 91660338266}
!8 = !{!"MaxCount", i64 5757400812}
!9 = !{!"MaxInternalCount", i64 5721102715}
!10 = !{!"MaxFunctionCount", i64 5757400812}
!11 = !{!"NumCounts", i64 33643}
!12 = !{!"NumFunctions", i64 6537}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 5757400812, i32 1}
!18 = !{i32 100000, i64 5721102715, i32 2}
!19 = !{i32 200000, i64 5600627346, i32 4}
!20 = !{i32 300000, i64 2776518954, i32 6}
!21 = !{i32 400000, i64 1274069204, i32 12}
!22 = !{i32 500000, i64 494191607, i32 29}
!23 = !{i32 600000, i64 467312602, i32 58}
!24 = !{i32 700000, i64 347140078, i32 66}
!25 = !{i32 800000, i64 202389109, i32 102}
!26 = !{i32 900000, i64 186403596, i32 151}
!27 = !{i32 950000, i64 106255111, i32 185}
!28 = !{i32 990000, i64 47565111, i32 237}
!29 = !{i32 999000, i64 420988, i32 424}
!30 = !{i32 999900, i64 30990, i32 1111}
!31 = !{i32 999990, i64 4995, i32 1638}
!32 = !{i32 999999, i64 219, i32 2228}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35}
!35 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm, i64 1257662}
!36 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!37 = !{!"function_entry_count", i64 0}
!38 = !{!39, !39, i64 0}
!39 = !{!"int", !40, i64 0}
!40 = !{!"omnipotent char", !41, i64 0}
!41 = !{!"Simple C++ TBAA"}
!42 = !{!43, !43, i64 0}
!43 = !{!"any pointer", !40, i64 0}
!44 = !{!45, !45, i64 0}
!45 = !{!"short", !40, i64 0}
!46 = !{!40, !40, i64 0}
!47 = !{i64 0, i64 4, !38, i64 4, i64 4, !38, i64 8, i64 4, !38, i64 12, i64 4, !38, i64 16, i64 4, !38, i64 24, i64 8, !42}
!48 = !{!49, !39, i64 4}
!49 = !{!"_ZTS10my_yyltype", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !43, i64 24}
!50 = !{!49, !39, i64 8}
!51 = !{!49, !39, i64 12}
!52 = !{!49, !39, i64 16}
!53 = distinct !{!53, !54, !55}
!54 = !{!"llvm.loop.mustprogress"}
!55 = !{!"llvm.loop.unroll.disable"}
!56 = !{!57, !58, i64 1}
!57 = !{!"_ZTS9NEDParser", !58, i64 0, !58, i64 1, !43, i64 8, !43, i64 16, !43, i64 24}
!58 = !{!"bool", !40, i64 0}
!59 = !{i8 0, i8 2}
!60 = !{}
!61 = !{!62, !43, i64 40}
!62 = !{!"_ZTS15NED1ParserState", !58, i64 0, !58, i64 1, !58, i64 2, !58, i64 3, !58, i64 4, !43, i64 8, !43, i64 16, !43, i64 24, !43, i64 32, !43, i64 40, !43, i64 48, !43, i64 56, !43, i64 64, !43, i64 72, !43, i64 80, !43, i64 88, !43, i64 96, !43, i64 104, !43, i64 112, !43, i64 120, !43, i64 128, !43, i64 136, !43, i64 144, !43, i64 152, !43, i64 160, !43, i64 168, !43, i64 176, !43, i64 184, !43, i64 192}
!63 = !{!62, !43, i64 48}
!64 = !{!62, !43, i64 8}
!65 = !{!62, !43, i64 24}
!66 = !{!67, !69, i64 8}
!67 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !68, i64 0, !69, i64 8, !40, i64 16}
!68 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !43, i64 0}
!69 = !{!"long", !40, i64 0}
!70 = !{!62, !43, i64 32}
!71 = !{!62, !43, i64 56}
!72 = !{!73, !58, i64 112}
!73 = !{!"_ZTS17ParametersElement", !74, i64 0, !58, i64 112}
!74 = !{!"_ZTS10NEDElement", !69, i64 8, !67, i64 16, !75, i64 48, !43, i64 64, !43, i64 72, !43, i64 80, !43, i64 88, !43, i64 96, !43, i64 104}
!75 = !{!"_ZTS15NEDSourceRegion", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!76 = !{!62, !43, i64 64}
!77 = !{!62, !43, i64 88}
!78 = !{!79, !79, i64 0}
!79 = !{!"vtable pointer", !41, i64 0}
!80 = !{!62, !43, i64 96}
!81 = !{!67, !43, i64 0}
!82 = !{!57, !43, i64 16}
!83 = !{!84, !58, i64 116}
!84 = !{!"_ZTS12ParamElement", !74, i64 0, !39, i64 112, !58, i64 116, !67, i64 120, !67, i64 152, !58, i64 184}
!85 = !{!62, !43, i64 104}
!86 = !{!62, !43, i64 112}
!87 = !{!88, !58, i64 148}
!88 = !{!"_ZTS11GateElement", !74, i64 0, !67, i64 112, !39, i64 144, !58, i64 148, !67, i64 152}
!89 = !{!62, !43, i64 136}
!90 = !{!62, !43, i64 144}
!91 = !{!62, !43, i64 72}
!92 = !{!62, !43, i64 80}
!93 = !{!84, !58, i64 184}
!94 = !{!62, !43, i64 120}
!95 = !{!62, !43, i64 128}
!96 = !{!62, !43, i64 152}
!97 = !{!98, !58, i64 112}
!98 = !{!"_ZTS18ConnectionsElement", !74, i64 0, !58, i64 112}
!99 = !{!62, !43, i64 160}
!100 = !{!62, !58, i64 0}
!101 = !{!62, !43, i64 184}
!102 = !{!62, !43, i64 168}
!103 = !{!62, !43, i64 192}
!104 = !{!62, !43, i64 176}
!105 = !{!106, !58, i64 208}
!106 = !{!"_ZTS17ConnectionElement", !74, i64 0, !67, i64 112, !67, i64 144, !67, i64 176, !58, i64 208, !67, i64 216, !39, i64 248, !67, i64 256, !67, i64 288, !67, i64 320, !58, i64 352, !67, i64 360, !39, i64 392, !39, i64 396}
!107 = !{!106, !58, i64 352}
!108 = !{!62, !58, i64 1}
!109 = !{!57, !58, i64 0}
!110 = distinct !{!110, !54, !55}
!111 = distinct !{!111, !54, !55}
!112 = distinct !{!112, !54, !55}
!113 = distinct !{!113, !54, !55}
!114 = distinct !{!114, !54, !55}
!115 = !{!116, !39, i64 0}
!116 = !{!"_ZTS10LineColumn", !39, i64 0, !39, i64 4}
!117 = !{!116, !39, i64 4}
!118 = !{!57, !43, i64 8}
!119 = !{!57, !43, i64 24}
!120 = !{!68, !43, i64 0}
!121 = !{!122}
!122 = distinct !{!122, !123, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!123 = distinct !{!123, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!124 = distinct !{!124, !54, !55}
!125 = !{!"function_entry_count", i64 1889443}
!126 = !{!69, !69, i64 0}
!127 = !{!"branch_weights", i32 1257662, i32 631781}
!128 = !{!"branch_weights", i32 1856863, i32 32338, i32 242}
!129 = !{!"VP", i32 1, i64 1856863, i64 17, i64 729444, i64 16, i64 433786, i64 9, i64 266579, i64 8, i64 130021}
