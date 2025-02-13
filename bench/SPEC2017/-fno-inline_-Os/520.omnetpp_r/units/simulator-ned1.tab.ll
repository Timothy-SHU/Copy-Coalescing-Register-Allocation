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
%"class.std::allocator" = type { i8 }
%class.NedFileElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%class.opp_runtime_error = type { %"class.std::runtime_error", %"class.std::__cxx11::basic_string" }
%"class.std::runtime_error" = type { %"class.std::exception", %"struct.std::__cow_string" }
%"class.std::exception" = type { ptr }
%"struct.std::__cow_string" = type { %union.anon.3 }
%union.anon.3 = type { ptr }
%struct._Guard = type { ptr }

$_ZN9NEDParser18getStoreSourceFlagEv = comdat any

$_ZN13ImportElement13setImportSpecEPKc = comdat any

$_ZN14ChannelElement7setNameEPKc = comdat any

$_ZN14ExtendsElement7setNameEPKc = comdat any

$_ZN17ParametersElement13setIsImplicitEb = comdat any

$_ZN19SimpleModuleElement7setNameEPKc = comdat any

$_ZN21CompoundModuleElement7setNameEPKc = comdat any

$_ZN14LiteralElement8setValueEPKc = comdat any

$_ZN9NEDParser9getErrorsEv = comdat any

$__clang_call_terminate = comdat any

$_ZN12ParamElement13setIsVolatileEb = comdat any

$_ZN11GateElement11setIsVectorEb = comdat any

$_ZN16SubmoduleElement7setNameEPKc = comdat any

$_ZN16SubmoduleElement7setTypeEPKc = comdat any

$_ZN16SubmoduleElement11setLikeTypeEPKc = comdat any

$_ZN16SubmoduleElement12setLikeParamEPKc = comdat any

$_ZN12ParamElement12setIsDefaultEb = comdat any

$_ZN18ConnectionsElement19setAllowUnconnectedEb = comdat any

$_ZN11LoopElement12setParamNameEPKc = comdat any

$_ZN17ConnectionElement12setSrcModuleEPKc = comdat any

$_ZN17ConnectionElement10setSrcGateEPKc = comdat any

$_ZN17ConnectionElement18setSrcGatePlusplusEb = comdat any

$_ZN17ConnectionElement13setDestModuleEPKc = comdat any

$_ZN17ConnectionElement11setDestGateEPKc = comdat any

$_ZN17ConnectionElement19setDestGatePlusplusEb = comdat any

$_ZN18ChannelSpecElement7setTypeEPKc = comdat any

$_ZN9NEDParser23getParseExpressionsFlagEv = comdat any

$_ZN14NedFileElement11setFilenameEPKc = comdat any

$_ZN9NEDParser11getFileNameEv = comdat any

$_ZN14NedFileElement10setVersionEPKc = comdat any

$_ZN9NEDParser9getSourceEv = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZNSt11char_traitsIcE6lengthEPKc = comdat any

$_ZN17opp_runtime_errorD2Ev = comdat any

$_ZN17opp_runtime_errorD0Ev = comdat any

$_ZNK17opp_runtime_error4whatEv = comdat any

$_ZNSt15__new_allocatorIcED2Ev = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag = comdat any

$_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_ = comdat any

$_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_ = comdat any

$_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev = comdat any

$_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag = comdat any

$_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_ = comdat any

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
@.str.286 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_Z11ned1yyparsev() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 !prof !67 {
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
  %42 = load i32, ptr @ned1yydebug, align 4, !tbaa !68
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %0
  %45 = load ptr, ptr @stderr, align 8, !tbaa !72
  %46 = tail call i64 @fwrite(ptr nonnull @.str, i64 15, i64 1, ptr %45) #24
  br label %47

47:                                               ; preds = %44, %0
  store i32 0, ptr @ned1yynerrs, align 4, !tbaa !68
  store i32 -2, ptr @ned1yychar, align 4, !tbaa !68
  store i16 0, ptr %2, align 16, !tbaa !74
  %48 = getelementptr inbounds %struct.my_yyltype, ptr %5, i64 0, i32 1
  br label %59

49:                                               ; preds = %1314, %1318, %147
  %50 = phi ptr [ %1297, %1314 ], [ %1297, %1318 ], [ %150, %147 ]
  %51 = phi ptr [ %1296, %1314 ], [ %1296, %1318 ], [ %149, %147 ]
  %52 = phi i64 [ %1294, %1314 ], [ %1294, %1318 ], [ %62, %147 ]
  %53 = phi i32 [ %158, %1314 ], [ %158, %1318 ], [ %114, %147 ]
  %54 = phi i32 [ %1317, %1314 ], [ %1321, %1318 ], [ %126, %147 ]
  %55 = add nsw i64 %52, 2
  %56 = getelementptr inbounds i8, ptr %2, i64 %55
  %57 = trunc i32 %54 to i16
  store i16 %57, ptr %56, align 2, !tbaa !74
  %58 = icmp slt i64 %52, 396
  br i1 %58, label %59, label %1365

59:                                               ; preds = %47, %49
  %60 = phi i32 [ 0, %47 ], [ %54, %49 ]
  %61 = phi i32 [ 0, %47 ], [ %53, %49 ]
  %62 = phi i64 [ 0, %47 ], [ %55, %49 ]
  %63 = phi ptr [ %3, %47 ], [ %51, %49 ]
  %64 = phi ptr [ %4, %47 ], [ %50, %49 ]
  %65 = load i32, ptr @ned1yydebug, align 4, !tbaa !68
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %59
  %68 = load ptr, ptr @stderr, align 8, !tbaa !72
  %69 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %68, ptr noundef nonnull @.str.1, i32 noundef %60) #25
  br label %70

70:                                               ; preds = %59, %67
  %71 = sext i32 %60 to i64
  %72 = getelementptr inbounds [419 x i16], ptr @_ZL6yypact, i64 0, i64 %71
  %73 = load i16, ptr %72, align 2, !tbaa !74
  %74 = sext i16 %73 to i32
  %75 = icmp eq i16 %73, -341
  br i1 %75, label %151, label %76

76:                                               ; preds = %70
  %77 = load i32, ptr @ned1yychar, align 4, !tbaa !68
  %78 = icmp eq i32 %77, -2
  br i1 %78, label %79, label %87

79:                                               ; preds = %76
  %80 = load i32, ptr @ned1yydebug, align 4, !tbaa !68
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %79
  %83 = load ptr, ptr @stderr, align 8, !tbaa !72
  %84 = call i64 @fwrite(ptr nonnull @.str.2, i64 17, i64 1, ptr %83) #24
  br label %85

85:                                               ; preds = %82, %79
  %86 = call noundef i32 @_Z9ned1yylexv() #26
  store i32 %86, ptr @ned1yychar, align 4, !tbaa !68
  br label %87

87:                                               ; preds = %85, %76
  %88 = phi i32 [ %86, %85 ], [ %77, %76 ]
  %89 = icmp slt i32 %88, 1
  br i1 %89, label %90, label %96

90:                                               ; preds = %87
  store i32 0, ptr @ned1yychar, align 4, !tbaa !68
  %91 = load i32, ptr @ned1yydebug, align 4, !tbaa !68
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %113, label %93

93:                                               ; preds = %90
  %94 = load ptr, ptr @stderr, align 8, !tbaa !72
  %95 = call i64 @fwrite(ptr nonnull @.str.3, i64 21, i64 1, ptr %94) #24
  br label %113

96:                                               ; preds = %87
  %97 = icmp ult i32 %88, 343
  br i1 %97, label %98, label %103

98:                                               ; preds = %96
  %99 = zext nneg i32 %88 to i64
  %100 = getelementptr inbounds [343 x i8], ptr @_ZL11yytranslate, i64 0, i64 %99
  %101 = load i8, ptr %100, align 1, !tbaa !76
  %102 = zext i8 %101 to i32
  br label %103

103:                                              ; preds = %96, %98
  %104 = phi i32 [ %102, %98 ], [ 2, %96 ]
  %105 = load i32, ptr @ned1yydebug, align 4, !tbaa !68
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %113, label %107

107:                                              ; preds = %103
  %108 = load ptr, ptr @stderr, align 8, !tbaa !72
  %109 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %108, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #25
  %110 = load ptr, ptr @stderr, align 8, !tbaa !72
  call fastcc void @_ZL15yy_symbol_printP8_IO_FILEiPKP10NEDElementPK10my_yyltype(ptr noundef %110, i32 noundef %104) #26
  %111 = load ptr, ptr @stderr, align 8, !tbaa !72
  %112 = call i32 @fputc(i32 10, ptr %111)
  br label %113

113:                                              ; preds = %103, %107, %90, %93
  %114 = phi i32 [ 0, %93 ], [ 0, %90 ], [ %104, %107 ], [ %104, %103 ]
  %115 = add nsw i32 %114, %74
  %116 = icmp ugt i32 %115, 781
  br i1 %116, label %151, label %117

117:                                              ; preds = %113
  %118 = zext nneg i32 %115 to i64
  %119 = getelementptr inbounds [782 x i16], ptr @_ZL7yycheck, i64 0, i64 %118
  %120 = load i16, ptr %119, align 2, !tbaa !74
  %121 = sext i16 %120 to i32
  %122 = icmp eq i32 %114, %121
  br i1 %122, label %123, label %151

123:                                              ; preds = %117
  %124 = getelementptr inbounds [782 x i16], ptr @_ZL7yytable, i64 0, i64 %118
  %125 = load i16, ptr %124, align 2, !tbaa !74
  %126 = sext i16 %125 to i32
  %127 = icmp slt i16 %125, 1
  br i1 %127, label %128, label %132

128:                                              ; preds = %123
  %129 = icmp eq i16 %125, 0
  br i1 %129, label %1322, label %130

130:                                              ; preds = %128
  %131 = sub nsw i32 0, %126
  br label %157

132:                                              ; preds = %123
  %133 = icmp eq i32 %115, 31
  br i1 %133, label %1370, label %134

134:                                              ; preds = %132
  %135 = load i32, ptr @ned1yydebug, align 4, !tbaa !68
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %143, label %137

137:                                              ; preds = %134
  %138 = load ptr, ptr @stderr, align 8, !tbaa !72
  %139 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %138, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.7) #25
  %140 = load ptr, ptr @stderr, align 8, !tbaa !72
  call fastcc void @_ZL15yy_symbol_printP8_IO_FILEiPKP10NEDElementPK10my_yyltype(ptr noundef %140, i32 noundef %114) #26
  %141 = load ptr, ptr @stderr, align 8, !tbaa !72
  %142 = call i32 @fputc(i32 10, ptr %141)
  br label %143

143:                                              ; preds = %137, %134
  %144 = load i32, ptr @ned1yychar, align 4, !tbaa !68
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %147, label %146

146:                                              ; preds = %143
  store i32 -2, ptr @ned1yychar, align 4, !tbaa !68
  br label %147

147:                                              ; preds = %146, %143
  %148 = load ptr, ptr @ned1yylval, align 8, !tbaa !72
  %149 = getelementptr inbounds ptr, ptr %63, i64 1
  store ptr %148, ptr %149, align 8, !tbaa !72
  %150 = getelementptr inbounds %struct.my_yyltype, ptr %64, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %150, ptr noundef nonnull align 8 dereferenceable(32) @ned1yylloc, i64 32, i1 false), !tbaa.struct !77
  br label %49

151:                                              ; preds = %113, %117, %70
  %152 = phi i32 [ %61, %70 ], [ %114, %113 ], [ %114, %117 ]
  %153 = getelementptr inbounds [419 x i8], ptr @_ZL8yydefact, i64 0, i64 %71
  %154 = load i8, ptr %153, align 1, !tbaa !76
  %155 = zext i8 %154 to i32
  %156 = icmp eq i8 %154, 0
  br i1 %156, label %1322, label %157

157:                                              ; preds = %151, %130
  %158 = phi i32 [ %152, %151 ], [ %114, %130 ]
  %159 = phi i32 [ %155, %151 ], [ %131, %130 ]
  %160 = zext nneg i32 %159 to i64
  %161 = getelementptr inbounds [242 x i8], ptr @_ZL4yyr2, i64 0, i64 %160
  %162 = load i8, ptr %161, align 1, !tbaa !76
  %163 = zext i8 %162 to i64
  %164 = sub nsw i64 1, %163
  %165 = getelementptr inbounds ptr, ptr %63, i64 %164
  %166 = load ptr, ptr %165, align 8, !tbaa !72
  %167 = icmp eq i8 %162, 0
  br i1 %167, label %176, label %168

168:                                              ; preds = %157
  %169 = sub nsw i64 0, %163
  %170 = getelementptr inbounds %struct.my_yyltype, ptr %64, i64 %169
  %171 = getelementptr inbounds %struct.my_yyltype, ptr %170, i64 1, i32 1
  %172 = load <2 x i32>, ptr %171, align 4, !tbaa !68
  %173 = getelementptr inbounds %struct.my_yyltype, ptr %64, i64 0, i32 3
  %174 = load <2 x i32>, ptr %173, align 4, !tbaa !68
  %175 = shufflevector <2 x i32> %172, <2 x i32> %174, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  br label %180

176:                                              ; preds = %157
  %177 = getelementptr inbounds %struct.my_yyltype, ptr %64, i64 0, i32 3
  %178 = load <2 x i32>, ptr %177, align 4, !tbaa !68
  %179 = shufflevector <2 x i32> %178, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  br label %180

180:                                              ; preds = %168, %176
  %181 = phi <4 x i32> [ %175, %168 ], [ %179, %176 ]
  store <4 x i32> %181, ptr %48, align 4, !tbaa !68
  %182 = load i32, ptr @ned1yydebug, align 4, !tbaa !68
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %185, label %184

184:                                              ; preds = %180
  call fastcc void @_ZL15yy_reduce_printPP10NEDElementP10my_yyltypei(ptr noundef nonnull %63, ptr noundef nonnull %64, i32 noundef %159) #26
  br label %185

185:                                              ; preds = %184, %180
  switch i32 %159, label %1262 [
    i32 6, label %186
    i32 7, label %192
    i32 8, label %198
    i32 9, label %204
    i32 13, label %210
    i32 14, label %216
    i32 15, label %219
    i32 17, label %229
    i32 18, label %231
    i32 19, label %245
    i32 22, label %259
    i32 23, label %262
    i32 26, label %268
    i32 27, label %271
    i32 32, label %277
    i32 35, label %330
    i32 36, label %334
    i32 39, label %336
    i32 40, label %339
    i32 41, label %342
    i32 42, label %346
    i32 43, label %351
    i32 44, label %354
    i32 45, label %358
    i32 46, label %362
    i32 47, label %366
    i32 48, label %370
    i32 49, label %374
    i32 50, label %378
    i32 53, label %385
    i32 54, label %389
    i32 63, label %391
    i32 64, label %398
    i32 67, label %403
    i32 68, label %410
    i32 71, label %415
    i32 72, label %419
    i32 77, label %421
    i32 78, label %430
    i32 79, label %432
    i32 80, label %445
    i32 81, label %447
    i32 82, label %459
    i32 83, label %461
    i32 84, label %477
    i32 86, label %479
    i32 90, label %481
    i32 92, label %484
    i32 98, label %496
    i32 99, label %503
    i32 100, label %507
    i32 101, label %511
    i32 102, label %524
    i32 105, label %529
    i32 109, label %531
    i32 111, label %534
    i32 117, label %546
    i32 118, label %554
    i32 122, label %607
    i32 123, label %612
    i32 124, label %614
    i32 125, label %619
    i32 132, label %621
    i32 133, label %624
    i32 136, label %630
    i32 137, label %642
    i32 139, label %647
    i32 143, label %699
    i32 144, label %703
    i32 145, label %707
    i32 146, label %712
    i32 149, label %717
    i32 150, label %728
    i32 151, label %736
    i32 152, label %742
    i32 153, label %745
    i32 154, label %750
    i32 155, label %762
    i32 156, label %771
    i32 159, label %782
    i32 160, label %788
    i32 161, label %791
    i32 162, label %797
    i32 163, label %800
    i32 164, label %805
    i32 165, label %811
    i32 166, label %814
    i32 167, label %819
    i32 168, label %829
    i32 171, label %837
    i32 172, label %848
    i32 173, label %851
    i32 174, label %865
    i32 175, label %866
    i32 176, label %869
    i32 177, label %875
    i32 178, label %881
    i32 179, label %890
    i32 181, label %897
    i32 182, label %900
    i32 183, label %908
    i32 184, label %916
    i32 185, label %924
    i32 186, label %932
    i32 187, label %940
    i32 188, label %948
    i32 189, label %954
    i32 190, label %962
    i32 191, label %970
    i32 192, label %978
    i32 193, label %986
    i32 194, label %994
    i32 195, label %1002
    i32 196, label %1010
    i32 197, label %1018
    i32 198, label %1026
    i32 199, label %1032
    i32 200, label %1040
    i32 201, label %1048
    i32 202, label %1056
    i32 203, label %1062
    i32 204, label %1070
    i32 205, label %1078
    i32 206, label %1088
    i32 207, label %1097
    i32 208, label %1106
    i32 209, label %1115
    i32 210, label %1122
    i32 211, label %1131
    i32 212, label %1142
    i32 213, label %1155
    i32 217, label %1170
    i32 218, label %1175
    i32 219, label %1185
    i32 220, label %1195
    i32 221, label %1205
    i32 222, label %1215
    i32 223, label %1220
    i32 224, label %1225
    i32 228, label %1232
    i32 229, label %1237
    i32 230, label %1242
    i32 231, label %1247
    i32 232, label %1252
    i32 233, label %1257
  ]

186:                                              ; preds = %185
  %187 = load ptr, ptr @np, align 8, !tbaa !72
  %188 = call noundef zeroext i1 @_ZN9NEDParser18getStoreSourceFlagEv(ptr noundef nonnull align 8 dereferenceable(32) %187) #26
  br i1 %188, label %189, label %1262

189:                                              ; preds = %186
  %190 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 9), align 8, !tbaa !78
  %191 = call noundef ptr @_Z24storeComponentSourceCodeP10NEDElement10my_yyltype(ptr noundef %190, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %64) #26
  br label %1262

192:                                              ; preds = %185
  %193 = load ptr, ptr @np, align 8, !tbaa !72
  %194 = call noundef zeroext i1 @_ZN9NEDParser18getStoreSourceFlagEv(ptr noundef nonnull align 8 dereferenceable(32) %193) #26
  br i1 %194, label %195, label %1262

195:                                              ; preds = %192
  %196 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 10), align 8, !tbaa !81
  %197 = call noundef ptr @_Z24storeComponentSourceCodeP10NEDElement10my_yyltype(ptr noundef %196, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %64) #26
  br label %1262

198:                                              ; preds = %185
  %199 = load ptr, ptr @np, align 8, !tbaa !72
  %200 = call noundef zeroext i1 @_ZN9NEDParser18getStoreSourceFlagEv(ptr noundef nonnull align 8 dereferenceable(32) %199) #26
  br i1 %200, label %201, label %1262

201:                                              ; preds = %198
  %202 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 10), align 8, !tbaa !81
  %203 = call noundef ptr @_Z24storeComponentSourceCodeP10NEDElement10my_yyltype(ptr noundef %202, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %64) #26
  br label %1262

204:                                              ; preds = %185
  %205 = load ptr, ptr @np, align 8, !tbaa !72
  %206 = call noundef zeroext i1 @_ZN9NEDParser18getStoreSourceFlagEv(ptr noundef nonnull align 8 dereferenceable(32) %205) #26
  br i1 %206, label %207, label %1262

207:                                              ; preds = %204
  %208 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 10), align 8, !tbaa !81
  %209 = call noundef ptr @_Z24storeComponentSourceCodeP10NEDElement10my_yyltype(ptr noundef %208, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %64) #26
  br label %1262

210:                                              ; preds = %185
  %211 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 5), align 8, !tbaa !82
  %212 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 5, ptr noundef %211) #26
  store ptr %212, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 7), align 8, !tbaa !83
  call void @_Z10trimQuotes10my_yyltype(ptr dead_on_unwind nonnull writable sret(%struct.my_yyltype) align 8 %6, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %64) #26
  %213 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %6) #26
  call void @_ZN13ImportElement13setImportSpecEPKc(ptr noundef nonnull align 8 dereferenceable(144) %212, ptr noundef %213) #26
  %214 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 7), align 8, !tbaa !83
  call void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltype(ptr noundef %214, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %64) #26
  %215 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 7), align 8, !tbaa !83
  call void @_Z8storePosP10NEDElement10my_yyltype(ptr noundef %215, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5) #26
  br label %1262

216:                                              ; preds = %185
  %217 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 9), align 8, !tbaa !78
  call void @_Z8storePosP10NEDElement10my_yyltype(ptr noundef %217, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5) #26
  %218 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 9), align 8, !tbaa !78
  call void @_Z20storeTrailingCommentP10NEDElement10my_yyltype(ptr noundef %218, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5) #26
  br label %1262

219:                                              ; preds = %185
  %220 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 5), align 8, !tbaa !82
  %221 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 13, ptr noundef %220) #26
  store ptr %221, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 9), align 8, !tbaa !78
  %222 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %64) #26
  call void @_ZN14ChannelElement7setNameEPKc(ptr noundef nonnull align 8 dereferenceable(144) %221, ptr noundef %222) #26
  %223 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 9), align 8, !tbaa !78
  %224 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 7, ptr noundef %223) #26
  store ptr %224, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 8), align 8, !tbaa !84
  call void @_ZN14ExtendsElement7setNameEPKc(ptr noundef nonnull align 8 dereferenceable(144) %224, ptr noundef nonnull @.str.8) #26
  %225 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 9), align 8, !tbaa !78
  %226 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 14, ptr noundef %225) #26
  store ptr %226, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 11), align 8, !tbaa !85
  call void @_ZN17ParametersElement13setIsImplicitEb(ptr noundef nonnull align 8 dereferenceable(113) %226, i1 noundef zeroext true) #26
  %227 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 9), align 8, !tbaa !78
  %228 = getelementptr inbounds %struct.my_yyltype, ptr %64, i64 -1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %228, i64 32, i1 false), !tbaa.struct !77
  call void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltypeS1_(ptr noundef %227, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %7, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %64) #26
  br label %1262

229:                                              ; preds = %185
  %230 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 11), align 8, !tbaa !85
  call void @_Z8storePosP10NEDElement10my_yyltype(ptr noundef %230, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5) #26
  br label %1262

231:                                              ; preds = %185
  %232 = getelementptr inbounds %struct.my_yyltype, ptr %64, i64 -2
  %233 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %232) #26
  %234 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %233, ptr noundef nonnull dereferenceable(6) @.str.9) #27
  %235 = icmp eq i32 %234, 0
  %236 = select i1 %235, ptr @.str.10, ptr %233
  %237 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 11), align 8, !tbaa !85
  call void @_ZN17ParametersElement13setIsImplicitEb(ptr noundef nonnull align 8 dereferenceable(113) %237, i1 noundef zeroext false) #26
  %238 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 11), align 8, !tbaa !85
  %239 = call noundef ptr @_Z12addParameterP10NEDElementPKc10my_yyltype(ptr noundef %238, ptr noundef %236, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %232) #26
  store ptr %239, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 12), align 8, !tbaa !86
  %240 = getelementptr inbounds %struct.my_yyltype, ptr %64, i64 -1
  %241 = getelementptr inbounds ptr, ptr %63, i64 -1
  %242 = load ptr, ptr %241, align 8, !tbaa !72
  call void @_Z13addExpressionP10NEDElementPKc10my_yyltypeS0_(ptr noundef %239, ptr noundef nonnull @.str.11, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %240, ptr noundef %242) #26
  %243 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 12), align 8, !tbaa !86
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %232, i64 32, i1 false), !tbaa.struct !77
  call void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltypeS1_(ptr noundef %243, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %8, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %240) #26
  %244 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 12), align 8, !tbaa !86
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %232, i64 32, i1 false), !tbaa.struct !77
  call void @_Z8storePosP10NEDElement10my_yyltypeS1_(ptr noundef %244, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %9, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %64) #26
  br label %1262

245:                                              ; preds = %185
  %246 = getelementptr inbounds %struct.my_yyltype, ptr %64, i64 -2
  %247 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %246) #26
  %248 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %247, ptr noundef nonnull dereferenceable(6) @.str.9) #27
  %249 = icmp eq i32 %248, 0
  %250 = select i1 %249, ptr @.str.10, ptr %247
  %251 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 11), align 8, !tbaa !85
  call void @_ZN17ParametersElement13setIsImplicitEb(ptr noundef nonnull align 8 dereferenceable(113) %251, i1 noundef zeroext false) #26
  %252 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 11), align 8, !tbaa !85
  %253 = call noundef ptr @_Z12addParameterP10NEDElementPKc10my_yyltype(ptr noundef %252, ptr noundef %250, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %246) #26
  store ptr %253, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 12), align 8, !tbaa !86
  %254 = getelementptr inbounds %struct.my_yyltype, ptr %64, i64 -1
  %255 = getelementptr inbounds ptr, ptr %63, i64 -1
  %256 = load ptr, ptr %255, align 8, !tbaa !72
  call void @_Z13addExpressionP10NEDElementPKc10my_yyltypeS0_(ptr noundef %253, ptr noundef nonnull @.str.11, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %254, ptr noundef %256) #26
  %257 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 12), align 8, !tbaa !86
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %246, i64 32, i1 false), !tbaa.struct !77
  call void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltypeS1_(ptr noundef %257, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %10, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %254) #26
  %258 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 12), align 8, !tbaa !86
  call void @_Z8storePosP10NEDElement10my_yyltype(ptr noundef %258, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5) #26
  br label %1262

259:                                              ; preds = %185
  %260 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 10), align 8, !tbaa !81
  call void @_Z8storePosP10NEDElement10my_yyltype(ptr noundef %260, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5) #26
  %261 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 10), align 8, !tbaa !81
  call void @_Z20storeTrailingCommentP10NEDElement10my_yyltype(ptr noundef %261, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5) #26
  br label %1262

262:                                              ; preds = %185
  %263 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 5), align 8, !tbaa !82
  %264 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 9, ptr noundef %263) #26
  store ptr %264, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 10), align 8, !tbaa !81
  %265 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %64) #26
  call void @_ZN19SimpleModuleElement7setNameEPKc(ptr noundef nonnull align 8 dereferenceable(144) %264, ptr noundef %265) #26
  %266 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 10), align 8, !tbaa !81
  %267 = getelementptr inbounds %struct.my_yyltype, ptr %64, i64 -1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %267, i64 32, i1 false), !tbaa.struct !77
  call void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltypeS1_(ptr noundef %266, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %11, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %64) #26
  br label %1262

268:                                              ; preds = %185
  %269 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 10), align 8, !tbaa !81
  call void @_Z8storePosP10NEDElement10my_yyltype(ptr noundef %269, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5) #26
  %270 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 10), align 8, !tbaa !81
  call void @_Z20storeTrailingCommentP10NEDElement10my_yyltype(ptr noundef %270, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5) #26
  br label %1262

271:                                              ; preds = %185
  %272 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 5), align 8, !tbaa !82
  %273 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 11, ptr noundef %272) #26
  store ptr %273, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 10), align 8, !tbaa !81
  %274 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %64) #26
  call void @_ZN21CompoundModuleElement7setNameEPKc(ptr noundef nonnull align 8 dereferenceable(144) %273, ptr noundef %274) #26
  %275 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 10), align 8, !tbaa !81
  %276 = getelementptr inbounds %struct.my_yyltype, ptr %64, i64 -1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %276, i64 32, i1 false), !tbaa.struct !77
  call void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltypeS1_(ptr noundef %275, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %12, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %64) #26
  br label %1262

277:                                              ; preds = %185
  %278 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 10), align 8, !tbaa !81
  %279 = call noundef ptr @_Z20addComponentPropertyP10NEDElementPKc(ptr noundef %278, ptr noundef nonnull @.str.12) #26
  store ptr %279, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 15), align 8, !tbaa !87
  %280 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 10), align 8, !tbaa !81
  %281 = load ptr, ptr %280, align 8, !tbaa !88
  %282 = getelementptr inbounds ptr, ptr %281, i64 30
  %283 = load ptr, ptr %282, align 8
  %284 = call noundef ptr %283(ptr noundef nonnull align 8 dereferenceable(112) %280, i32 noundef 14) #26
  store ptr %284, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 11), align 8, !tbaa !85
  %285 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 15), align 8, !tbaa !87
  %286 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 18, ptr noundef %285) #26
  store ptr %286, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 16), align 8, !tbaa !90
  %287 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 34, ptr noundef null) #26
  call void @_ZN14LiteralElement7setTypeEi(ptr noundef nonnull align 8 dereferenceable(216) %287, i32 noundef 2) #26
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %13) #23
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %14) #23
  %288 = getelementptr inbounds %struct.my_yyltype, ptr %64, i64 -1
  %289 = invoke noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %288) #26
          to label %290 unwind label %296

290:                                              ; preds = %277
  invoke void @_Z18opp_parsequotedstrB5cxx11PKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef %289) #26
          to label %291 unwind label %296

291:                                              ; preds = %290
  %292 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %14) #28
  invoke void @_ZN17DisplayStringUtil30upgradeBackgroundDisplayStringB5cxx11EPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef %292) #26
          to label %293 unwind label %298

293:                                              ; preds = %291
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %14) #28
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %14) #23
  %294 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %13) #28
  invoke void @_ZN14LiteralElement8setValueEPKc(ptr noundef nonnull align 8 dereferenceable(216) %287, ptr noundef %294) #26
          to label %295 unwind label %302

295:                                              ; preds = %293
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %13) #28
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %13) #23
  br label %320

296:                                              ; preds = %290, %277
  %297 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %300

298:                                              ; preds = %291
  %299 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %14) #28
  br label %300

300:                                              ; preds = %298, %296
  %301 = phi { ptr, i32 } [ %299, %298 ], [ %297, %296 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %14) #23
  br label %304

302:                                              ; preds = %293
  %303 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %13) #28
  br label %304

304:                                              ; preds = %302, %300
  %305 = phi { ptr, i32 } [ %303, %302 ], [ %301, %300 ]
  %306 = extractvalue { ptr, i32 } %305, 1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %13) #23
  %307 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTISt9exception) #23
  %308 = icmp eq i32 %306, %307
  br i1 %308, label %309, label %1398

309:                                              ; preds = %304
  %310 = extractvalue { ptr, i32 } %305, 0
  %311 = call ptr @__cxa_begin_catch(ptr %310) #23
  %312 = load ptr, ptr @np, align 8, !tbaa !72
  %313 = call noundef ptr @_ZN9NEDParser9getErrorsEv(ptr noundef nonnull align 8 dereferenceable(32) %312) #26
  %314 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 15), align 8, !tbaa !87
  %315 = load ptr, ptr %311, align 8, !tbaa !88
  %316 = getelementptr inbounds ptr, ptr %315, i64 2
  %317 = load ptr, ptr %316, align 8
  %318 = call noundef ptr %317(ptr noundef nonnull align 8 dereferenceable(8) %311) #28
  invoke void (ptr, ptr, ptr, ...) @_ZN13NEDErrorStore8addErrorEP10NEDElementPKcz(ptr noundef nonnull align 8 dereferenceable(25) %313, ptr noundef %314, ptr noundef %318) #26
          to label %319 unwind label %328

319:                                              ; preds = %309
  call void @__cxa_end_catch()
  br label %320

320:                                              ; preds = %319, %295
  %321 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 16), align 8, !tbaa !90
  %322 = load ptr, ptr %321, align 8, !tbaa !88
  %323 = getelementptr inbounds ptr, ptr %322, i64 27
  %324 = load ptr, ptr %323, align 8
  call void %324(ptr noundef nonnull align 8 dereferenceable(112) %321, ptr noundef nonnull %287) #26
  %325 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 16), align 8, !tbaa !90
  call void @_Z8storePosP10NEDElement10my_yyltype(ptr noundef %325, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5) #26
  call void @_Z8storePosP10NEDElement10my_yyltype(ptr noundef nonnull %287, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %288) #26
  %326 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 15), align 8, !tbaa !87
  call void @_Z8storePosP10NEDElement10my_yyltype(ptr noundef %326, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5) #26
  %327 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 15), align 8, !tbaa !87
  call void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltype(ptr noundef %327, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5) #26
  br label %1262

328:                                              ; preds = %309
  %329 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %1398 unwind label %1400

330:                                              ; preds = %185
  %331 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 10), align 8, !tbaa !81
  %332 = call noundef ptr @_Z25getOrCreateElementWithTagiP10NEDElement(i32 noundef 14, ptr noundef %331) #26
  store ptr %332, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 11), align 8, !tbaa !85
  %333 = getelementptr inbounds %struct.my_yyltype, ptr %64, i64 -1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %333, i64 32, i1 false), !tbaa.struct !77
  call void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltypeS1_(ptr noundef %332, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %15, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %64) #26
  br label %1262

334:                                              ; preds = %185
  %335 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 11), align 8, !tbaa !85
  call void @_Z8storePosP10NEDElement10my_yyltype(ptr noundef %335, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5) #26
  br label %1262

336:                                              ; preds = %185
  %337 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 12), align 8, !tbaa !86
  call void @_Z8storePosP10NEDElement10my_yyltype(ptr noundef %337, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %64) #26
  %338 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 12), align 8, !tbaa !86
  call void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltype(ptr noundef %338, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %64) #26
  br label %1262

339:                                              ; preds = %185
  %340 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 12), align 8, !tbaa !86
  call void @_Z8storePosP10NEDElement10my_yyltype(ptr noundef %340, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %64) #26
  %341 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 12), align 8, !tbaa !86
  call void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltype(ptr noundef %341, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %64) #26
  br label %1262

342:                                              ; preds = %185
  %343 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 11), align 8, !tbaa !85
  %344 = call noundef ptr @_Z12addParameterP10NEDElement10my_yyltype(ptr noundef %343, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %64) #26
  store ptr %344, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 12), align 8, !tbaa !86
  call void @_ZN12ParamElement7setTypeEi(ptr noundef nonnull align 8 dereferenceable(185) %344, i32 noundef 1) #26
  %345 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 12), align 8, !tbaa !86
  call void @_ZN12ParamElement13setIsVolatileEb(ptr noundef nonnull align 8 dereferenceable(185) %345, i1 noundef zeroext true) #26
  br label %1262

346:                                              ; preds = %185
  %347 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 11), align 8, !tbaa !85
  %348 = getelementptr inbounds %struct.my_yyltype, ptr %64, i64 -2
  %349 = call noundef ptr @_Z12addParameterP10NEDElement10my_yyltype(ptr noundef %347, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %348) #26
  store ptr %349, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 12), align 8, !tbaa !86
  call void @_ZN12ParamElement7setTypeEi(ptr noundef nonnull align 8 dereferenceable(185) %349, i32 noundef 1) #26
  %350 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 12), align 8, !tbaa !86
  call void @_ZN12ParamElement13setIsVolatileEb(ptr noundef nonnull align 8 dereferenceable(185) %350, i1 noundef zeroext true) #26
  br label %1262

351:                                              ; preds = %185
  %352 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 11), align 8, !tbaa !85
  %353 = call noundef ptr @_Z12addParameterP10NEDElement10my_yyltype(ptr noundef %352, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %64) #26
  store ptr %353, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 12), align 8, !tbaa !86
  call void @_ZN12ParamElement7setTypeEi(ptr noundef nonnull align 8 dereferenceable(185) %353, i32 noundef 1) #26
  br label %1262

354:                                              ; preds = %185
  %355 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 11), align 8, !tbaa !85
  %356 = getelementptr inbounds %struct.my_yyltype, ptr %64, i64 -2
  %357 = call noundef ptr @_Z12addParameterP10NEDElement10my_yyltype(ptr noundef %355, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %356) #26
  store ptr %357, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 12), align 8, !tbaa !86
  call void @_ZN12ParamElement7setTypeEi(ptr noundef nonnull align 8 dereferenceable(185) %357, i32 noundef 1) #26
  br label %1262

358:                                              ; preds = %185
  %359 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 11), align 8, !tbaa !85
  %360 = getelementptr inbounds %struct.my_yyltype, ptr %64, i64 -3
  %361 = call noundef ptr @_Z12addParameterP10NEDElement10my_yyltype(ptr noundef %359, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %360) #26
  store ptr %361, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 12), align 8, !tbaa !86
  call void @_ZN12ParamElement7setTypeEi(ptr noundef nonnull align 8 dereferenceable(185) %361, i32 noundef 1) #26
  br label %1262

362:                                              ; preds = %185
  %363 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 11), align 8, !tbaa !85
  %364 = getelementptr inbounds %struct.my_yyltype, ptr %64, i64 -3
  %365 = call noundef ptr @_Z12addParameterP10NEDElement10my_yyltype(ptr noundef %363, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %364) #26
  store ptr %365, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 12), align 8, !tbaa !86
  call void @_ZN12ParamElement7setTypeEi(ptr noundef nonnull align 8 dereferenceable(185) %365, i32 noundef 1) #26
  br label %1262

366:                                              ; preds = %185
  %367 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 11), align 8, !tbaa !85
  %368 = getelementptr inbounds %struct.my_yyltype, ptr %64, i64 -2
  %369 = call noundef ptr @_Z12addParameterP10NEDElement10my_yyltype(ptr noundef %367, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %368) #26
  store ptr %369, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 12), align 8, !tbaa !86
  call void @_ZN12ParamElement7setTypeEi(ptr noundef nonnull align 8 dereferenceable(185) %369, i32 noundef 3) #26
  br label %1262

370:                                              ; preds = %185
  %371 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 11), align 8, !tbaa !85
  %372 = getelementptr inbounds %struct.my_yyltype, ptr %64, i64 -2
  %373 = call noundef ptr @_Z12addParameterP10NEDElement10my_yyltype(ptr noundef %371, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %372) #26
  store ptr %373, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 12), align 8, !tbaa !86
  call void @_ZN12ParamElement7setTypeEi(ptr noundef nonnull align 8 dereferenceable(185) %373, i32 noundef 4) #26
  br label %1262

374:                                              ; preds = %185
  %375 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 11), align 8, !tbaa !85
  %376 = getelementptr inbounds %struct.my_yyltype, ptr %64, i64 -2
  %377 = call noundef ptr @_Z12addParameterP10NEDElement10my_yyltype(ptr noundef %375, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %376) #26
  store ptr %377, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 12), align 8, !tbaa !86
  call void @_ZN12ParamElement7setTypeEi(ptr noundef nonnull align 8 dereferenceable(185) %377, i32 noundef 5) #26
  br label %1262

378:                                              ; preds = %185
  %379 = load ptr, ptr @np, align 8, !tbaa !72
  %380 = call noundef ptr @_ZN9NEDParser9getErrorsEv(ptr noundef nonnull align 8 dereferenceable(32) %379) #26
  %381 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 11), align 8, !tbaa !85
  call void (ptr, ptr, ptr, ...) @_ZN13NEDErrorStore8addErrorEP10NEDElementPKcz(ptr noundef nonnull align 8 dereferenceable(25) %380, ptr noundef %381, ptr noundef nonnull @.str.13) #26
  %382 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 11), align 8, !tbaa !85
  %383 = getelementptr inbounds %struct.my_yyltype, ptr %64, i64 -2
  %384 = call noundef ptr @_Z12addParameterP10NEDElement10my_yyltype(ptr noundef %382, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %383) #26
  store ptr %384, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 12), align 8, !tbaa !86
  br label %1262

385:                                              ; preds = %185
  %386 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 10), align 8, !tbaa !81
  %387 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 19, ptr noundef %386) #26
  store ptr %387, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 17), align 8, !tbaa !91
  %388 = getelementptr inbounds %struct.my_yyltype, ptr %64, i64 -1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(32) %388, i64 32, i1 false), !tbaa.struct !77
  call void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltypeS1_(ptr noundef %387, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %16, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %64) #26
  br label %1262

389:                                              ; preds = %185
  %390 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 17), align 8, !tbaa !91
  call void @_Z8storePosP10NEDElement10my_yyltype(ptr noundef %390, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5) #26
  br label %1262

391:                                              ; preds = %185
  %392 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 17), align 8, !tbaa !91
  %393 = getelementptr inbounds %struct.my_yyltype, ptr %64, i64 -2
  %394 = call noundef ptr @_Z7addGateP10NEDElement10my_yyltype(ptr noundef %392, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %393) #26
  store ptr %394, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 18), align 8, !tbaa !92
  call void @_ZN11GateElement7setTypeEi(ptr noundef nonnull align 8 dereferenceable(184) %394, i32 noundef 1) #26
  %395 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 18), align 8, !tbaa !92
  call void @_ZN11GateElement11setIsVectorEb(ptr noundef nonnull align 8 dereferenceable(184) %395, i1 noundef zeroext true) #26
  %396 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 18), align 8, !tbaa !92
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(32) %393, i64 32, i1 false), !tbaa.struct !77
  call void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltypeS1_(ptr noundef %396, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %17, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %64) #26
  %397 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 18), align 8, !tbaa !92
  call void @_Z8storePosP10NEDElement10my_yyltype(ptr noundef %397, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5) #26
  br label %1262

398:                                              ; preds = %185
  %399 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 17), align 8, !tbaa !91
  %400 = call noundef ptr @_Z7addGateP10NEDElement10my_yyltype(ptr noundef %399, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %64) #26
  store ptr %400, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 18), align 8, !tbaa !92
  call void @_ZN11GateElement7setTypeEi(ptr noundef nonnull align 8 dereferenceable(184) %400, i32 noundef 1) #26
  %401 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 18), align 8, !tbaa !92
  call void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltype(ptr noundef %401, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %64) #26
  %402 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 18), align 8, !tbaa !92
  call void @_Z8storePosP10NEDElement10my_yyltype(ptr noundef %402, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5) #26
  br label %1262

403:                                              ; preds = %185
  %404 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 17), align 8, !tbaa !91
  %405 = getelementptr inbounds %struct.my_yyltype, ptr %64, i64 -2
  %406 = call noundef ptr @_Z7addGateP10NEDElement10my_yyltype(ptr noundef %404, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %405) #26
  store ptr %406, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 18), align 8, !tbaa !92
  call void @_ZN11GateElement7setTypeEi(ptr noundef nonnull align 8 dereferenceable(184) %406, i32 noundef 2) #26
  %407 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 18), align 8, !tbaa !92
  call void @_ZN11GateElement11setIsVectorEb(ptr noundef nonnull align 8 dereferenceable(184) %407, i1 noundef zeroext true) #26
  %408 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 18), align 8, !tbaa !92
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(32) %405, i64 32, i1 false), !tbaa.struct !77
  call void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltypeS1_(ptr noundef %408, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %18, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %64) #26
  %409 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 18), align 8, !tbaa !92
  call void @_Z8storePosP10NEDElement10my_yyltype(ptr noundef %409, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5) #26
  br label %1262

410:                                              ; preds = %185
  %411 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 17), align 8, !tbaa !91
  %412 = call noundef ptr @_Z7addGateP10NEDElement10my_yyltype(ptr noundef %411, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %64) #26
  store ptr %412, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 18), align 8, !tbaa !92
  call void @_ZN11GateElement7setTypeEi(ptr noundef nonnull align 8 dereferenceable(184) %412, i32 noundef 2) #26
  %413 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 18), align 8, !tbaa !92
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 8 dereferenceable(32) %64, i64 32, i1 false), !tbaa.struct !77
  call void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltypeS1_(ptr noundef %413, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %19, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %64) #26
  %414 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 18), align 8, !tbaa !92
  call void @_Z8storePosP10NEDElement10my_yyltype(ptr noundef %414, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5) #26
  br label %1262

415:                                              ; preds = %185
  %416 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 10), align 8, !tbaa !81
  %417 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 22, ptr noundef %416) #26
  store ptr %417, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 21), align 8, !tbaa !93
  %418 = getelementptr inbounds %struct.my_yyltype, ptr %64, i64 -1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(32) %418, i64 32, i1 false), !tbaa.struct !77
  call void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltypeS1_(ptr noundef %417, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %20, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %64) #26
  br label %1262

419:                                              ; preds = %185
  %420 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 21), align 8, !tbaa !93
  call void @_Z8storePosP10NEDElement10my_yyltype(ptr noundef %420, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5) #26
  br label %1262

421:                                              ; preds = %185
  %422 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 21), align 8, !tbaa !93
  %423 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 23, ptr noundef %422) #26
  store ptr %423, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 22), align 8, !tbaa !94
  %424 = getelementptr inbounds %struct.my_yyltype, ptr %64, i64 -3
  %425 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %424) #26
  call void @_ZN16SubmoduleElement7setNameEPKc(ptr noundef nonnull align 8 dereferenceable(272) %423, ptr noundef %425) #26
  %426 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 22), align 8, !tbaa !94
  %427 = getelementptr inbounds %struct.my_yyltype, ptr %64, i64 -1
  %428 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %427) #26
  call void @_ZN16SubmoduleElement7setTypeEPKc(ptr noundef nonnull align 8 dereferenceable(272) %426, ptr noundef %428) #26
  %429 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 22), align 8, !tbaa !94
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(32) %424, i64 32, i1 false), !tbaa.struct !77
  call void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltypeS1_(ptr noundef %429, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %21, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %64) #26
  br label %1262

430:                                              ; preds = %185
  %431 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 22), align 8, !tbaa !94
  call void @_Z8storePosP10NEDElement10my_yyltype(ptr noundef %431, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5) #26
  br label %1262

432:                                              ; preds = %185
  %433 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 21), align 8, !tbaa !93
  %434 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 23, ptr noundef %433) #26
  store ptr %434, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 22), align 8, !tbaa !94
  %435 = getelementptr inbounds %struct.my_yyltype, ptr %64, i64 -4
  %436 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %435) #26
  call void @_ZN16SubmoduleElement7setNameEPKc(ptr noundef nonnull align 8 dereferenceable(272) %434, ptr noundef %436) #26
  %437 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 22), align 8, !tbaa !94
  %438 = getelementptr inbounds %struct.my_yyltype, ptr %64, i64 -2
  %439 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %438) #26
  call void @_ZN16SubmoduleElement7setTypeEPKc(ptr noundef nonnull align 8 dereferenceable(272) %437, ptr noundef %439) #26
  %440 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 22), align 8, !tbaa !94
  %441 = getelementptr inbounds %struct.my_yyltype, ptr %64, i64 -1
  %442 = getelementptr inbounds ptr, ptr %63, i64 -1
  %443 = load ptr, ptr %442, align 8, !tbaa !72
  call void @_Z9addVectorP10NEDElementPKc10my_yyltypeS0_(ptr noundef %440, ptr noundef nonnull @.str.14, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %441, ptr noundef %443) #26
  %444 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 22), align 8, !tbaa !94
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 8 dereferenceable(32) %435, i64 32, i1 false), !tbaa.struct !77
  call void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltypeS1_(ptr noundef %444, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %22, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %64) #26
  br label %1262

445:                                              ; preds = %185
  %446 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 22), align 8, !tbaa !94
  call void @_Z8storePosP10NEDElement10my_yyltype(ptr noundef %446, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5) #26
  br label %1262

447:                                              ; preds = %185
  %448 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 21), align 8, !tbaa !93
  %449 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 23, ptr noundef %448) #26
  store ptr %449, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 22), align 8, !tbaa !94
  %450 = getelementptr inbounds %struct.my_yyltype, ptr %64, i64 -5
  %451 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %450) #26
  call void @_ZN16SubmoduleElement7setNameEPKc(ptr noundef nonnull align 8 dereferenceable(272) %449, ptr noundef %451) #26
  %452 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 22), align 8, !tbaa !94
  %453 = getelementptr inbounds %struct.my_yyltype, ptr %64, i64 -1
  %454 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %453) #26
  call void @_ZN16SubmoduleElement11setLikeTypeEPKc(ptr noundef nonnull align 8 dereferenceable(272) %452, ptr noundef %454) #26
  %455 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 22), align 8, !tbaa !94
  %456 = getelementptr inbounds %struct.my_yyltype, ptr %64, i64 -3
  %457 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %456) #26
  call void @_ZN16SubmoduleElement12setLikeParamEPKc(ptr noundef nonnull align 8 dereferenceable(272) %455, ptr noundef %457) #26
  %458 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 22), align 8, !tbaa !94
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull align 8 dereferenceable(32) %450, i64 32, i1 false), !tbaa.struct !77
  call void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltypeS1_(ptr noundef %458, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %23, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %64) #26
  br label %1262

459:                                              ; preds = %185
  %460 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 22), align 8, !tbaa !94
  call void @_Z8storePosP10NEDElement10my_yyltype(ptr noundef %460, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5) #26
  br label %1262

461:                                              ; preds = %185
  %462 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 21), align 8, !tbaa !93
  %463 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 23, ptr noundef %462) #26
  store ptr %463, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 22), align 8, !tbaa !94
  %464 = getelementptr inbounds %struct.my_yyltype, ptr %64, i64 -6
  %465 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %464) #26
  call void @_ZN16SubmoduleElement7setNameEPKc(ptr noundef nonnull align 8 dereferenceable(272) %463, ptr noundef %465) #26
  %466 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 22), align 8, !tbaa !94
  %467 = getelementptr inbounds %struct.my_yyltype, ptr %64, i64 -1
  %468 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %467) #26
  call void @_ZN16SubmoduleElement11setLikeTypeEPKc(ptr noundef nonnull align 8 dereferenceable(272) %466, ptr noundef %468) #26
  %469 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 22), align 8, !tbaa !94
  %470 = getelementptr inbounds %struct.my_yyltype, ptr %64, i64 -4
  %471 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %470) #26
  call void @_ZN16SubmoduleElement12setLikeParamEPKc(ptr noundef nonnull align 8 dereferenceable(272) %469, ptr noundef %471) #26
  %472 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 22), align 8, !tbaa !94
  %473 = getelementptr inbounds %struct.my_yyltype, ptr %64, i64 -3
  %474 = getelementptr inbounds ptr, ptr %63, i64 -3
  %475 = load ptr, ptr %474, align 8, !tbaa !72
  call void @_Z9addVectorP10NEDElementPKc10my_yyltypeS0_(ptr noundef %472, ptr noundef nonnull @.str.14, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %473, ptr noundef %475) #26
  %476 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 22), align 8, !tbaa !94
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull align 8 dereferenceable(32) %464, i64 32, i1 false), !tbaa.struct !77
  call void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltypeS1_(ptr noundef %476, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %24, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %64) #26
  br label %1262

477:                                              ; preds = %185
  %478 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 22), align 8, !tbaa !94
  call void @_Z8storePosP10NEDElement10my_yyltype(ptr noundef %478, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5) #26
  br label %1262

479:                                              ; preds = %185
  %480 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 13), align 8, !tbaa !95
  call void @_Z8storePosP10NEDElement10my_yyltype(ptr noundef %480, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5) #26
  br label %1262

481:                                              ; preds = %185
  call void @_Z35createSubstparamsElementIfNotExistsv() #26
  %482 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 13), align 8, !tbaa !95
  %483 = getelementptr inbounds %struct.my_yyltype, ptr %64, i64 -1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull align 8 dereferenceable(32) %483, i64 32, i1 false), !tbaa.struct !77
  call void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltypeS1_(ptr noundef %482, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %25, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %64) #26
  br label %1262

484:                                              ; preds = %185
  call void @_Z35createSubstparamsElementIfNotExistsv() #26
  %485 = getelementptr inbounds ptr, ptr %63, i64 -1
  %486 = load ptr, ptr %485, align 8, !tbaa !72
  %487 = icmp eq ptr %486, null
  br i1 %487, label %492, label %488

488:                                              ; preds = %484
  %489 = load ptr, ptr %486, align 8, !tbaa !88
  %490 = getelementptr inbounds ptr, ptr %489, i64 1
  %491 = load ptr, ptr %490, align 8
  call void %491(ptr noundef nonnull align 8 dereferenceable(112) %486) #28
  br label %492

492:                                              ; preds = %488, %484
  %493 = load ptr, ptr @np, align 8, !tbaa !72
  %494 = call noundef ptr @_ZN9NEDParser9getErrorsEv(ptr noundef nonnull align 8 dereferenceable(32) %493) #26
  %495 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 13), align 8, !tbaa !95
  call void (ptr, ptr, ptr, ...) @_ZN13NEDErrorStore8addErrorEP10NEDElementPKcz(ptr noundef nonnull align 8 dereferenceable(25) %494, ptr noundef %495, ptr noundef nonnull @.str.15) #26
  br label %1262

496:                                              ; preds = %185
  %497 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 13), align 8, !tbaa !95
  %498 = getelementptr inbounds %struct.my_yyltype, ptr %64, i64 -2
  %499 = call noundef ptr @_Z12addParameterP10NEDElement10my_yyltype(ptr noundef %497, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %498) #26
  store ptr %499, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 14), align 8, !tbaa !96
  %500 = load ptr, ptr %63, align 8, !tbaa !72
  call void @_Z13addExpressionP10NEDElementPKc10my_yyltypeS0_(ptr noundef %499, ptr noundef nonnull @.str.11, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %64, ptr noundef %500) #26
  %501 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 14), align 8, !tbaa !96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef nonnull align 8 dereferenceable(32) %498, i64 32, i1 false), !tbaa.struct !77
  call void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltypeS1_(ptr noundef %501, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %26, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %64) #26
  %502 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 14), align 8, !tbaa !96
  call void @_Z8storePosP10NEDElement10my_yyltype(ptr noundef %502, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5) #26
  br label %1262

503:                                              ; preds = %185
  %504 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 13), align 8, !tbaa !95
  %505 = getelementptr inbounds %struct.my_yyltype, ptr %64, i64 -2
  %506 = call noundef ptr @_Z12addParameterP10NEDElement10my_yyltype(ptr noundef %504, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %505) #26
  store ptr %506, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 14), align 8, !tbaa !96
  call void @_ZN12ParamElement12setIsDefaultEb(ptr noundef nonnull align 8 dereferenceable(185) %506, i1 noundef zeroext true) #26
  br label %1262

507:                                              ; preds = %185
  %508 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 14), align 8, !tbaa !96
  %509 = getelementptr inbounds %struct.my_yyltype, ptr %64, i64 -4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull align 8 dereferenceable(32) %509, i64 32, i1 false), !tbaa.struct !77
  call void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltypeS1_(ptr noundef %508, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %27, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %64) #26
  %510 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 14), align 8, !tbaa !96
  call void @_Z8storePosP10NEDElement10my_yyltype(ptr noundef %510, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5) #26
  br label %1262

511:                                              ; preds = %185
  %512 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 14), align 8, !tbaa !96
  %513 = getelementptr inbounds %struct.my_yyltype, ptr %64, i64 -3
  %514 = getelementptr inbounds ptr, ptr %63, i64 -3
  %515 = load ptr, ptr %514, align 8, !tbaa !72
  call void @_Z13addExpressionP10NEDElementPKc10my_yyltypeS0_(ptr noundef %512, ptr noundef nonnull @.str.11, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %513, ptr noundef %515) #26
  %516 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 14), align 8, !tbaa !96
  %517 = call noundef ptr @_Z11addPropertyP10NEDElementPKc(ptr noundef %516, ptr noundef nonnull @.str.16) #26
  %518 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 18, ptr noundef %517) #26
  %519 = getelementptr inbounds %struct.my_yyltype, ptr %64, i64 -1
  %520 = call noundef ptr @_Z19createStringLiteral10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %519) #26
  %521 = load ptr, ptr %518, align 8, !tbaa !88
  %522 = getelementptr inbounds ptr, ptr %521, i64 27
  %523 = load ptr, ptr %522, align 8
  call void %523(ptr noundef nonnull align 8 dereferenceable(112) %518, ptr noundef %520) #26
  br label %1262

524:                                              ; preds = %185
  %525 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 14), align 8, !tbaa !96
  %526 = getelementptr inbounds %struct.my_yyltype, ptr %64, i64 -1
  %527 = getelementptr inbounds ptr, ptr %63, i64 -1
  %528 = load ptr, ptr %527, align 8, !tbaa !72
  call void @_Z13addExpressionP10NEDElementPKc10my_yyltypeS0_(ptr noundef %525, ptr noundef nonnull @.str.11, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %526, ptr noundef %528) #26
  br label %1262

529:                                              ; preds = %185
  %530 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 19), align 8, !tbaa !97
  call void @_Z8storePosP10NEDElement10my_yyltype(ptr noundef %530, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5) #26
  br label %1262

531:                                              ; preds = %185
  call void @_Z33createGatesizesElementIfNotExistsv() #26
  %532 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 19), align 8, !tbaa !97
  %533 = getelementptr inbounds %struct.my_yyltype, ptr %64, i64 -1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %28, ptr noundef nonnull align 8 dereferenceable(32) %533, i64 32, i1 false), !tbaa.struct !77
  call void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltypeS1_(ptr noundef %532, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %28, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %64) #26
  br label %1262

534:                                              ; preds = %185
  call void @_Z35createSubstparamsElementIfNotExistsv() #26
  %535 = getelementptr inbounds ptr, ptr %63, i64 -1
  %536 = load ptr, ptr %535, align 8, !tbaa !72
  %537 = icmp eq ptr %536, null
  br i1 %537, label %542, label %538

538:                                              ; preds = %534
  %539 = load ptr, ptr %536, align 8, !tbaa !88
  %540 = getelementptr inbounds ptr, ptr %539, i64 1
  %541 = load ptr, ptr %540, align 8
  call void %541(ptr noundef nonnull align 8 dereferenceable(112) %536) #28
  br label %542

542:                                              ; preds = %538, %534
  %543 = load ptr, ptr @np, align 8, !tbaa !72
  %544 = call noundef ptr @_ZN9NEDParser9getErrorsEv(ptr noundef nonnull align 8 dereferenceable(32) %543) #26
  %545 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 13), align 8, !tbaa !95
  call void (ptr, ptr, ptr, ...) @_ZN13NEDErrorStore8addErrorEP10NEDElementPKcz(ptr noundef nonnull align 8 dereferenceable(25) %544, ptr noundef %545, ptr noundef nonnull @.str.17) #26
  br label %1262

546:                                              ; preds = %185
  %547 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 19), align 8, !tbaa !97
  %548 = getelementptr inbounds %struct.my_yyltype, ptr %64, i64 -1
  %549 = call noundef ptr @_Z7addGateP10NEDElement10my_yyltype(ptr noundef %547, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %548) #26
  store ptr %549, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 20), align 8, !tbaa !98
  call void @_ZN11GateElement11setIsVectorEb(ptr noundef nonnull align 8 dereferenceable(184) %549, i1 noundef zeroext true) #26
  %550 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 20), align 8, !tbaa !98
  %551 = load ptr, ptr %63, align 8, !tbaa !72
  call void @_Z9addVectorP10NEDElementPKc10my_yyltypeS0_(ptr noundef %550, ptr noundef nonnull @.str.14, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %64, ptr noundef %551) #26
  %552 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 20), align 8, !tbaa !98
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef nonnull align 8 dereferenceable(32) %548, i64 32, i1 false), !tbaa.struct !77
  call void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltypeS1_(ptr noundef %552, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %29, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %64) #26
  %553 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 20), align 8, !tbaa !98
  call void @_Z8storePosP10NEDElement10my_yyltype(ptr noundef %553, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5) #26
  br label %1262

554:                                              ; preds = %185
  %555 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 22), align 8, !tbaa !94
  %556 = call noundef ptr @_Z20addComponentPropertyP10NEDElementPKc(ptr noundef %555, ptr noundef nonnull @.str.12) #26
  store ptr %556, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 15), align 8, !tbaa !87
  %557 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 22), align 8, !tbaa !94
  %558 = load ptr, ptr %557, align 8, !tbaa !88
  %559 = getelementptr inbounds ptr, ptr %558, i64 30
  %560 = load ptr, ptr %559, align 8
  %561 = call noundef ptr %560(ptr noundef nonnull align 8 dereferenceable(112) %557, i32 noundef 14) #26
  store ptr %561, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 13), align 8, !tbaa !95
  %562 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 15), align 8, !tbaa !87
  %563 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 18, ptr noundef %562) #26
  store ptr %563, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 16), align 8, !tbaa !90
  %564 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 34, ptr noundef null) #26
  call void @_ZN14LiteralElement7setTypeEi(ptr noundef nonnull align 8 dereferenceable(216) %564, i32 noundef 2) #26
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %30) #23
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %31) #23
  %565 = getelementptr inbounds %struct.my_yyltype, ptr %64, i64 -1
  %566 = invoke noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %565) #26
          to label %567 unwind label %573

567:                                              ; preds = %554
  invoke void @_Z18opp_parsequotedstrB5cxx11PKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %31, ptr noundef %566) #26
          to label %568 unwind label %573

568:                                              ; preds = %567
  %569 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %31) #28
  invoke void @_ZN17DisplayStringUtil29upgradeSubmoduleDisplayStringB5cxx11EPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %30, ptr noundef %569) #26
          to label %570 unwind label %575

570:                                              ; preds = %568
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %31) #28
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %31) #23
  %571 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %30) #28
  invoke void @_ZN14LiteralElement8setValueEPKc(ptr noundef nonnull align 8 dereferenceable(216) %564, ptr noundef %571) #26
          to label %572 unwind label %579

572:                                              ; preds = %570
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %30) #28
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %30) #23
  br label %597

573:                                              ; preds = %567, %554
  %574 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %577

575:                                              ; preds = %568
  %576 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %31) #28
  br label %577

577:                                              ; preds = %575, %573
  %578 = phi { ptr, i32 } [ %576, %575 ], [ %574, %573 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %31) #23
  br label %581

579:                                              ; preds = %570
  %580 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %30) #28
  br label %581

581:                                              ; preds = %579, %577
  %582 = phi { ptr, i32 } [ %580, %579 ], [ %578, %577 ]
  %583 = extractvalue { ptr, i32 } %582, 1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %30) #23
  %584 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTISt9exception) #23
  %585 = icmp eq i32 %583, %584
  br i1 %585, label %586, label %1398

586:                                              ; preds = %581
  %587 = extractvalue { ptr, i32 } %582, 0
  %588 = call ptr @__cxa_begin_catch(ptr %587) #23
  %589 = load ptr, ptr @np, align 8, !tbaa !72
  %590 = call noundef ptr @_ZN9NEDParser9getErrorsEv(ptr noundef nonnull align 8 dereferenceable(32) %589) #26
  %591 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 15), align 8, !tbaa !87
  %592 = load ptr, ptr %588, align 8, !tbaa !88
  %593 = getelementptr inbounds ptr, ptr %592, i64 2
  %594 = load ptr, ptr %593, align 8
  %595 = call noundef ptr %594(ptr noundef nonnull align 8 dereferenceable(8) %588) #28
  invoke void (ptr, ptr, ptr, ...) @_ZN13NEDErrorStore8addErrorEP10NEDElementPKcz(ptr noundef nonnull align 8 dereferenceable(25) %590, ptr noundef %591, ptr noundef %595) #26
          to label %596 unwind label %605

596:                                              ; preds = %586
  call void @__cxa_end_catch()
  br label %597

597:                                              ; preds = %596, %572
  %598 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 16), align 8, !tbaa !90
  %599 = load ptr, ptr %598, align 8, !tbaa !88
  %600 = getelementptr inbounds ptr, ptr %599, i64 27
  %601 = load ptr, ptr %600, align 8
  call void %601(ptr noundef nonnull align 8 dereferenceable(112) %598, ptr noundef nonnull %564) #26
  %602 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 16), align 8, !tbaa !90
  call void @_Z8storePosP10NEDElement10my_yyltype(ptr noundef %602, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5) #26
  call void @_Z8storePosP10NEDElement10my_yyltype(ptr noundef nonnull %564, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %565) #26
  %603 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 15), align 8, !tbaa !87
  call void @_Z8storePosP10NEDElement10my_yyltype(ptr noundef %603, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5) #26
  %604 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 15), align 8, !tbaa !87
  call void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltype(ptr noundef %604, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5) #26
  br label %1262

605:                                              ; preds = %586
  %606 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %1398 unwind label %1400

607:                                              ; preds = %185
  %608 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 10), align 8, !tbaa !81
  %609 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 24, ptr noundef %608) #26
  store ptr %609, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 23), align 8, !tbaa !99
  call void @_ZN18ConnectionsElement19setAllowUnconnectedEb(ptr noundef nonnull align 8 dereferenceable(113) %609, i1 noundef zeroext true) #26
  %610 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 23), align 8, !tbaa !99
  %611 = getelementptr inbounds %struct.my_yyltype, ptr %64, i64 -2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %32, ptr noundef nonnull align 8 dereferenceable(32) %611, i64 32, i1 false), !tbaa.struct !77
  call void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltypeS1_(ptr noundef %610, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %32, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %64) #26
  br label %1262

612:                                              ; preds = %185
  %613 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 23), align 8, !tbaa !99
  call void @_Z8storePosP10NEDElement10my_yyltype(ptr noundef %613, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5) #26
  br label %1262

614:                                              ; preds = %185
  %615 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 10), align 8, !tbaa !81
  %616 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 24, ptr noundef %615) #26
  store ptr %616, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 23), align 8, !tbaa !99
  call void @_ZN18ConnectionsElement19setAllowUnconnectedEb(ptr noundef nonnull align 8 dereferenceable(113) %616, i1 noundef zeroext false) #26
  %617 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 23), align 8, !tbaa !99
  %618 = getelementptr inbounds %struct.my_yyltype, ptr %64, i64 -1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %33, ptr noundef nonnull align 8 dereferenceable(32) %618, i64 32, i1 false), !tbaa.struct !77
  call void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltypeS1_(ptr noundef %617, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %33, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %64) #26
  br label %1262

619:                                              ; preds = %185
  %620 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 23), align 8, !tbaa !99
  call void @_Z8storePosP10NEDElement10my_yyltype(ptr noundef %620, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5) #26
  br label %1262

621:                                              ; preds = %185
  %622 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 23), align 8, !tbaa !99
  %623 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 27, ptr noundef %622) #26
  store ptr %623, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 24), align 8, !tbaa !100
  store i8 1, ptr @_ZL2ps, align 8, !tbaa !101
  br label %1262

624:                                              ; preds = %185
  store i8 0, ptr @_ZL2ps, align 8, !tbaa !101
  %625 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 24), align 8, !tbaa !100
  call void @_Z8storePosP10NEDElement10my_yyltype(ptr noundef %625, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5) #26
  %626 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 24), align 8, !tbaa !100
  %627 = getelementptr inbounds %struct.my_yyltype, ptr %64, i64 -6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %34, ptr noundef nonnull align 8 dereferenceable(32) %627, i64 32, i1 false), !tbaa.struct !77
  %628 = getelementptr inbounds %struct.my_yyltype, ptr %64, i64 -3
  call void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltypeS1_(ptr noundef %626, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %34, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %628) #26
  %629 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 24), align 8, !tbaa !100
  call void @_Z20storeTrailingCommentP10NEDElement10my_yyltype(ptr noundef %629, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5) #26
  br label %1262

630:                                              ; preds = %185
  %631 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 24), align 8, !tbaa !100
  %632 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 28, ptr noundef %631) #26
  store ptr %632, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 27), align 8, !tbaa !102
  %633 = getelementptr inbounds %struct.my_yyltype, ptr %64, i64 -4
  %634 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %633) #26
  call void @_ZN11LoopElement12setParamNameEPKc(ptr noundef nonnull align 8 dereferenceable(208) %632, ptr noundef %634) #26
  %635 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 27), align 8, !tbaa !102
  %636 = getelementptr inbounds %struct.my_yyltype, ptr %64, i64 -2
  %637 = getelementptr inbounds ptr, ptr %63, i64 -2
  %638 = load ptr, ptr %637, align 8, !tbaa !72
  call void @_Z13addExpressionP10NEDElementPKc10my_yyltypeS0_(ptr noundef %635, ptr noundef nonnull @.str.18, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %636, ptr noundef %638) #26
  %639 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 27), align 8, !tbaa !102
  %640 = load ptr, ptr %63, align 8, !tbaa !72
  call void @_Z13addExpressionP10NEDElementPKc10my_yyltypeS0_(ptr noundef %639, ptr noundef nonnull @.str.19, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %64, ptr noundef %640) #26
  %641 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 27), align 8, !tbaa !102
  call void @_Z8storePosP10NEDElement10my_yyltype(ptr noundef %641, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5) #26
  br label %1262

642:                                              ; preds = %185
  %643 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 25), align 8, !tbaa !103
  %644 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 29, ptr noundef %643) #26
  store ptr %644, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 28), align 8, !tbaa !104
  %645 = load ptr, ptr %63, align 8, !tbaa !72
  call void @_Z13addExpressionP10NEDElementPKc10my_yyltypeS0_(ptr noundef %644, ptr noundef nonnull @.str.20, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %64, ptr noundef %645) #26
  %646 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 28), align 8, !tbaa !104
  call void @_Z8storePosP10NEDElement10my_yyltype(ptr noundef %646, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5) #26
  br label %1262

647:                                              ; preds = %185
  %648 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 26), align 8, !tbaa !105
  %649 = icmp eq ptr %648, null
  br i1 %649, label %650, label %652

650:                                              ; preds = %647
  %651 = call noundef ptr @_Z17createChannelSpecP10NEDElement(ptr poison) #26
  store ptr %651, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 26), align 8, !tbaa !105
  br label %652

652:                                              ; preds = %650, %647
  %653 = phi ptr [ %651, %650 ], [ %648, %647 ]
  %654 = call noundef ptr @_Z20addComponentPropertyP10NEDElementPKc(ptr noundef %653, ptr noundef nonnull @.str.12) #26
  store ptr %654, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 15), align 8, !tbaa !87
  %655 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 18, ptr noundef %654) #26
  store ptr %655, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 16), align 8, !tbaa !90
  %656 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 34, ptr noundef null) #26
  call void @_ZN14LiteralElement7setTypeEi(ptr noundef nonnull align 8 dereferenceable(216) %656, i32 noundef 2) #26
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %35) #23
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %36) #23
  %657 = invoke noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %64) #26
          to label %658 unwind label %664

658:                                              ; preds = %652
  invoke void @_Z18opp_parsequotedstrB5cxx11PKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %36, ptr noundef %657) #26
          to label %659 unwind label %664

659:                                              ; preds = %658
  %660 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %36) #28
  invoke void @_ZN17DisplayStringUtil30upgradeConnectionDisplayStringB5cxx11EPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %35, ptr noundef %660) #26
          to label %661 unwind label %666

661:                                              ; preds = %659
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %36) #28
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %36) #23
  %662 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %35) #28
  invoke void @_ZN14LiteralElement8setValueEPKc(ptr noundef nonnull align 8 dereferenceable(216) %656, ptr noundef %662) #26
          to label %663 unwind label %670

663:                                              ; preds = %661
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %35) #28
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %35) #23
  br label %688

664:                                              ; preds = %658, %652
  %665 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %668

666:                                              ; preds = %659
  %667 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %36) #28
  br label %668

668:                                              ; preds = %666, %664
  %669 = phi { ptr, i32 } [ %667, %666 ], [ %665, %664 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %36) #23
  br label %672

670:                                              ; preds = %661
  %671 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %35) #28
  br label %672

672:                                              ; preds = %670, %668
  %673 = phi { ptr, i32 } [ %671, %670 ], [ %669, %668 ]
  %674 = extractvalue { ptr, i32 } %673, 1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %35) #23
  %675 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTISt9exception) #23
  %676 = icmp eq i32 %674, %675
  br i1 %676, label %677, label %1398

677:                                              ; preds = %672
  %678 = extractvalue { ptr, i32 } %673, 0
  %679 = call ptr @__cxa_begin_catch(ptr %678) #23
  %680 = load ptr, ptr @np, align 8, !tbaa !72
  %681 = call noundef ptr @_ZN9NEDParser9getErrorsEv(ptr noundef nonnull align 8 dereferenceable(32) %680) #26
  %682 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 15), align 8, !tbaa !87
  %683 = load ptr, ptr %679, align 8, !tbaa !88
  %684 = getelementptr inbounds ptr, ptr %683, i64 2
  %685 = load ptr, ptr %684, align 8
  %686 = call noundef ptr %685(ptr noundef nonnull align 8 dereferenceable(8) %679) #28
  invoke void (ptr, ptr, ptr, ...) @_ZN13NEDErrorStore8addErrorEP10NEDElementPKcz(ptr noundef nonnull align 8 dereferenceable(25) %681, ptr noundef %682, ptr noundef %686) #26
          to label %687 unwind label %697

687:                                              ; preds = %677
  call void @__cxa_end_catch()
  br label %688

688:                                              ; preds = %687, %663
  %689 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 16), align 8, !tbaa !90
  %690 = load ptr, ptr %689, align 8, !tbaa !88
  %691 = getelementptr inbounds ptr, ptr %690, i64 27
  %692 = load ptr, ptr %691, align 8
  call void %692(ptr noundef nonnull align 8 dereferenceable(112) %689, ptr noundef nonnull %656) #26
  %693 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 16), align 8, !tbaa !90
  call void @_Z8storePosP10NEDElement10my_yyltype(ptr noundef %693, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5) #26
  call void @_Z8storePosP10NEDElement10my_yyltype(ptr noundef nonnull %656, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %64) #26
  %694 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 15), align 8, !tbaa !87
  call void @_Z8storePosP10NEDElement10my_yyltype(ptr noundef %694, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5) #26
  br i1 %649, label %695, label %1262

695:                                              ; preds = %688
  %696 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 26), align 8, !tbaa !105
  call void @_Z8storePosP10NEDElement10my_yyltype(ptr noundef %696, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5) #26
  br label %1262

697:                                              ; preds = %677
  %698 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %1398 unwind label %1400

699:                                              ; preds = %185
  %700 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 25), align 8, !tbaa !103
  call void @_ZN17ConnectionElement17setArrowDirectionEi(ptr noundef nonnull align 8 dereferenceable(400) %700, i32 noundef 1) #26
  %701 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 25), align 8, !tbaa !103
  call void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltype(ptr noundef %701, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5) #26
  %702 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 25), align 8, !tbaa !103
  call void @_Z8storePosP10NEDElement10my_yyltype(ptr noundef %702, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5) #26
  br label %1262

703:                                              ; preds = %185
  %704 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 25), align 8, !tbaa !103
  call void @_ZN17ConnectionElement17setArrowDirectionEi(ptr noundef nonnull align 8 dereferenceable(400) %704, i32 noundef 1) #26
  call void @_Z29removeRedundantChanSpecParamsv() #26
  %705 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 25), align 8, !tbaa !103
  call void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltype(ptr noundef %705, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5) #26
  %706 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 25), align 8, !tbaa !103
  call void @_Z8storePosP10NEDElement10my_yyltype(ptr noundef %706, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5) #26
  br label %1262

707:                                              ; preds = %185
  %708 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 25), align 8, !tbaa !103
  call void @_Z14swapConnectionP10NEDElement(ptr noundef %708) #26
  %709 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 25), align 8, !tbaa !103
  call void @_ZN17ConnectionElement17setArrowDirectionEi(ptr noundef nonnull align 8 dereferenceable(400) %709, i32 noundef 0) #26
  %710 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 25), align 8, !tbaa !103
  call void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltype(ptr noundef %710, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5) #26
  %711 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 25), align 8, !tbaa !103
  call void @_Z8storePosP10NEDElement10my_yyltype(ptr noundef %711, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5) #26
  br label %1262

712:                                              ; preds = %185
  %713 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 25), align 8, !tbaa !103
  call void @_Z14swapConnectionP10NEDElement(ptr noundef %713) #26
  %714 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 25), align 8, !tbaa !103
  call void @_ZN17ConnectionElement17setArrowDirectionEi(ptr noundef nonnull align 8 dereferenceable(400) %714, i32 noundef 0) #26
  call void @_Z29removeRedundantChanSpecParamsv() #26
  %715 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 25), align 8, !tbaa !103
  call void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltype(ptr noundef %715, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5) #26
  %716 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 25), align 8, !tbaa !103
  call void @_Z8storePosP10NEDElement10my_yyltype(ptr noundef %716, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5) #26
  br label %1262

717:                                              ; preds = %185
  %718 = load i8, ptr @_ZL2ps, align 8, !tbaa !101, !range !106, !noundef !107
  %719 = icmp eq i8 %718, 0
  %720 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 24), align 8
  %721 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 23), align 8
  %722 = select i1 %719, ptr %721, ptr %720
  %723 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 25, ptr noundef %722) #26
  store ptr %723, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 25), align 8, !tbaa !103
  %724 = getelementptr inbounds %struct.my_yyltype, ptr %64, i64 -1
  %725 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %724) #26
  call void @_ZN17ConnectionElement12setSrcModuleEPKc(ptr noundef nonnull align 8 dereferenceable(400) %723, ptr noundef %725) #26
  %726 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 25), align 8, !tbaa !103
  %727 = load ptr, ptr %63, align 8, !tbaa !72
  call void @_Z9addVectorP10NEDElementPKc10my_yyltypeS0_(ptr noundef %726, ptr noundef nonnull @.str.21, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %64, ptr noundef %727) #26
  store ptr null, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 26), align 8, !tbaa !105
  br label %1262

728:                                              ; preds = %185
  %729 = load i8, ptr @_ZL2ps, align 8, !tbaa !101, !range !106, !noundef !107
  %730 = icmp eq i8 %729, 0
  %731 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 24), align 8
  %732 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 23), align 8
  %733 = select i1 %730, ptr %732, ptr %731
  %734 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 25, ptr noundef %733) #26
  store ptr %734, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 25), align 8, !tbaa !103
  %735 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %64) #26
  call void @_ZN17ConnectionElement12setSrcModuleEPKc(ptr noundef nonnull align 8 dereferenceable(400) %734, ptr noundef %735) #26
  store ptr null, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 26), align 8, !tbaa !105
  br label %1262

736:                                              ; preds = %185
  %737 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 25), align 8, !tbaa !103
  %738 = getelementptr inbounds %struct.my_yyltype, ptr %64, i64 -1
  %739 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %738) #26
  call void @_ZN17ConnectionElement10setSrcGateEPKc(ptr noundef nonnull align 8 dereferenceable(400) %737, ptr noundef %739) #26
  %740 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 25), align 8, !tbaa !103
  %741 = load ptr, ptr %63, align 8, !tbaa !72
  call void @_Z9addVectorP10NEDElementPKc10my_yyltypeS0_(ptr noundef %740, ptr noundef nonnull @.str.22, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %64, ptr noundef %741) #26
  br label %1262

742:                                              ; preds = %185
  %743 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 25), align 8, !tbaa !103
  %744 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %64) #26
  call void @_ZN17ConnectionElement10setSrcGateEPKc(ptr noundef nonnull align 8 dereferenceable(400) %743, ptr noundef %744) #26
  br label %1262

745:                                              ; preds = %185
  %746 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 25), align 8, !tbaa !103
  %747 = getelementptr inbounds %struct.my_yyltype, ptr %64, i64 -1
  %748 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %747) #26
  call void @_ZN17ConnectionElement10setSrcGateEPKc(ptr noundef nonnull align 8 dereferenceable(400) %746, ptr noundef %748) #26
  %749 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 25), align 8, !tbaa !103
  call void @_ZN17ConnectionElement18setSrcGatePlusplusEb(ptr noundef nonnull align 8 dereferenceable(400) %749, i1 noundef zeroext true) #26
  br label %1262

750:                                              ; preds = %185
  %751 = load i8, ptr @_ZL2ps, align 8, !tbaa !101, !range !106, !noundef !107
  %752 = icmp eq i8 %751, 0
  %753 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 24), align 8
  %754 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 23), align 8
  %755 = select i1 %752, ptr %754, ptr %753
  %756 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 25, ptr noundef %755) #26
  store ptr %756, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 25), align 8, !tbaa !103
  call void @_ZN17ConnectionElement12setSrcModuleEPKc(ptr noundef nonnull align 8 dereferenceable(400) %756, ptr noundef nonnull @.str.23) #26
  %757 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 25), align 8, !tbaa !103
  %758 = getelementptr inbounds %struct.my_yyltype, ptr %64, i64 -1
  %759 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %758) #26
  call void @_ZN17ConnectionElement10setSrcGateEPKc(ptr noundef nonnull align 8 dereferenceable(400) %757, ptr noundef %759) #26
  %760 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 25), align 8, !tbaa !103
  %761 = load ptr, ptr %63, align 8, !tbaa !72
  call void @_Z9addVectorP10NEDElementPKc10my_yyltypeS0_(ptr noundef %760, ptr noundef nonnull @.str.22, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %64, ptr noundef %761) #26
  store ptr null, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 26), align 8, !tbaa !105
  br label %1262

762:                                              ; preds = %185
  %763 = load i8, ptr @_ZL2ps, align 8, !tbaa !101, !range !106, !noundef !107
  %764 = icmp eq i8 %763, 0
  %765 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 24), align 8
  %766 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 23), align 8
  %767 = select i1 %764, ptr %766, ptr %765
  %768 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 25, ptr noundef %767) #26
  store ptr %768, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 25), align 8, !tbaa !103
  call void @_ZN17ConnectionElement12setSrcModuleEPKc(ptr noundef nonnull align 8 dereferenceable(400) %768, ptr noundef nonnull @.str.23) #26
  %769 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 25), align 8, !tbaa !103
  %770 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %64) #26
  call void @_ZN17ConnectionElement10setSrcGateEPKc(ptr noundef nonnull align 8 dereferenceable(400) %769, ptr noundef %770) #26
  store ptr null, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 26), align 8, !tbaa !105
  br label %1262

771:                                              ; preds = %185
  %772 = load i8, ptr @_ZL2ps, align 8, !tbaa !101, !range !106, !noundef !107
  %773 = icmp eq i8 %772, 0
  %774 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 24), align 8
  %775 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 23), align 8
  %776 = select i1 %773, ptr %775, ptr %774
  %777 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 25, ptr noundef %776) #26
  store ptr %777, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 25), align 8, !tbaa !103
  call void @_ZN17ConnectionElement12setSrcModuleEPKc(ptr noundef nonnull align 8 dereferenceable(400) %777, ptr noundef nonnull @.str.23) #26
  %778 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 25), align 8, !tbaa !103
  %779 = getelementptr inbounds %struct.my_yyltype, ptr %64, i64 -1
  %780 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %779) #26
  call void @_ZN17ConnectionElement10setSrcGateEPKc(ptr noundef nonnull align 8 dereferenceable(400) %778, ptr noundef %780) #26
  %781 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 25), align 8, !tbaa !103
  call void @_ZN17ConnectionElement18setSrcGatePlusplusEb(ptr noundef nonnull align 8 dereferenceable(400) %781, i1 noundef zeroext true) #26
  store ptr null, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 26), align 8, !tbaa !105
  br label %1262

782:                                              ; preds = %185
  %783 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 25), align 8, !tbaa !103
  %784 = getelementptr inbounds %struct.my_yyltype, ptr %64, i64 -1
  %785 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %784) #26
  call void @_ZN17ConnectionElement13setDestModuleEPKc(ptr noundef nonnull align 8 dereferenceable(400) %783, ptr noundef %785) #26
  %786 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 25), align 8, !tbaa !103
  %787 = load ptr, ptr %63, align 8, !tbaa !72
  call void @_Z9addVectorP10NEDElementPKc10my_yyltypeS0_(ptr noundef %786, ptr noundef nonnull @.str.24, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %64, ptr noundef %787) #26
  br label %1262

788:                                              ; preds = %185
  %789 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 25), align 8, !tbaa !103
  %790 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %64) #26
  call void @_ZN17ConnectionElement13setDestModuleEPKc(ptr noundef nonnull align 8 dereferenceable(400) %789, ptr noundef %790) #26
  br label %1262

791:                                              ; preds = %185
  %792 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 25), align 8, !tbaa !103
  %793 = getelementptr inbounds %struct.my_yyltype, ptr %64, i64 -1
  %794 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %793) #26
  call void @_ZN17ConnectionElement11setDestGateEPKc(ptr noundef nonnull align 8 dereferenceable(400) %792, ptr noundef %794) #26
  %795 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 25), align 8, !tbaa !103
  %796 = load ptr, ptr %63, align 8, !tbaa !72
  call void @_Z9addVectorP10NEDElementPKc10my_yyltypeS0_(ptr noundef %795, ptr noundef nonnull @.str.25, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %64, ptr noundef %796) #26
  br label %1262

797:                                              ; preds = %185
  %798 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 25), align 8, !tbaa !103
  %799 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %64) #26
  call void @_ZN17ConnectionElement11setDestGateEPKc(ptr noundef nonnull align 8 dereferenceable(400) %798, ptr noundef %799) #26
  br label %1262

800:                                              ; preds = %185
  %801 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 25), align 8, !tbaa !103
  %802 = getelementptr inbounds %struct.my_yyltype, ptr %64, i64 -1
  %803 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %802) #26
  call void @_ZN17ConnectionElement11setDestGateEPKc(ptr noundef nonnull align 8 dereferenceable(400) %801, ptr noundef %803) #26
  %804 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 25), align 8, !tbaa !103
  call void @_ZN17ConnectionElement19setDestGatePlusplusEb(ptr noundef nonnull align 8 dereferenceable(400) %804, i1 noundef zeroext true) #26
  br label %1262

805:                                              ; preds = %185
  %806 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 25), align 8, !tbaa !103
  %807 = getelementptr inbounds %struct.my_yyltype, ptr %64, i64 -1
  %808 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %807) #26
  call void @_ZN17ConnectionElement11setDestGateEPKc(ptr noundef nonnull align 8 dereferenceable(400) %806, ptr noundef %808) #26
  %809 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 25), align 8, !tbaa !103
  %810 = load ptr, ptr %63, align 8, !tbaa !72
  call void @_Z9addVectorP10NEDElementPKc10my_yyltypeS0_(ptr noundef %809, ptr noundef nonnull @.str.25, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %64, ptr noundef %810) #26
  br label %1262

811:                                              ; preds = %185
  %812 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 25), align 8, !tbaa !103
  %813 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %64) #26
  call void @_ZN17ConnectionElement11setDestGateEPKc(ptr noundef nonnull align 8 dereferenceable(400) %812, ptr noundef %813) #26
  br label %1262

814:                                              ; preds = %185
  %815 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 25), align 8, !tbaa !103
  %816 = getelementptr inbounds %struct.my_yyltype, ptr %64, i64 -1
  %817 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %816) #26
  call void @_ZN17ConnectionElement11setDestGateEPKc(ptr noundef nonnull align 8 dereferenceable(400) %815, ptr noundef %817) #26
  %818 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 25), align 8, !tbaa !103
  call void @_ZN17ConnectionElement19setDestGatePlusplusEb(ptr noundef nonnull align 8 dereferenceable(400) %818, i1 noundef zeroext true) #26
  br label %1262

819:                                              ; preds = %185
  %820 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 26), align 8, !tbaa !105
  call void @_Z8storePosP10NEDElement10my_yyltype(ptr noundef %820, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5) #26
  %821 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 26), align 8, !tbaa !105
  %822 = load ptr, ptr %821, align 8, !tbaa !88
  %823 = getelementptr inbounds ptr, ptr %822, i64 30
  %824 = load ptr, ptr %823, align 8
  %825 = call noundef ptr %824(ptr noundef nonnull align 8 dereferenceable(112) %821, i32 noundef 14) #26
  %826 = icmp eq ptr %825, null
  br i1 %826, label %1262, label %827

827:                                              ; preds = %819
  %828 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 11), align 8, !tbaa !85
  call void @_Z8storePosP10NEDElement10my_yyltype(ptr noundef %828, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5) #26
  br label %1262

829:                                              ; preds = %185
  %830 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 26), align 8, !tbaa !105
  %831 = icmp eq ptr %830, null
  br i1 %831, label %832, label %834

832:                                              ; preds = %829
  %833 = call noundef ptr @_Z17createChannelSpecP10NEDElement(ptr poison) #26
  store ptr %833, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 26), align 8, !tbaa !105
  br label %834

834:                                              ; preds = %832, %829
  %835 = phi ptr [ %833, %832 ], [ %830, %829 ]
  %836 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %64) #26
  call void @_ZN18ChannelSpecElement7setTypeEPKc(ptr noundef nonnull align 8 dereferenceable(208) %835, ptr noundef %836) #26
  br label %1262

837:                                              ; preds = %185
  %838 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 26), align 8, !tbaa !105
  %839 = icmp eq ptr %838, null
  br i1 %839, label %840, label %842

840:                                              ; preds = %837
  %841 = call noundef ptr @_Z17createChannelSpecP10NEDElement(ptr poison) #26
  store ptr %841, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 26), align 8, !tbaa !105
  br label %842

842:                                              ; preds = %840, %837
  %843 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 11), align 8, !tbaa !85
  %844 = getelementptr inbounds %struct.my_yyltype, ptr %64, i64 -1
  %845 = call noundef ptr @_Z12addParameterP10NEDElement10my_yyltype(ptr noundef %843, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %844) #26
  store ptr %845, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 12), align 8, !tbaa !86
  %846 = load ptr, ptr %63, align 8, !tbaa !72
  call void @_Z13addExpressionP10NEDElementPKc10my_yyltypeS0_(ptr noundef %845, ptr noundef nonnull @.str.11, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %64, ptr noundef %846) #26
  %847 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 12), align 8, !tbaa !86
  call void @_Z8storePosP10NEDElement10my_yyltype(ptr noundef %847, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5) #26
  br label %1262

848:                                              ; preds = %185
  %849 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 10), align 8, !tbaa !81
  call void @_Z8storePosP10NEDElement10my_yyltype(ptr noundef %849, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5) #26
  %850 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 10), align 8, !tbaa !81
  call void @_Z20storeTrailingCommentP10NEDElement10my_yyltype(ptr noundef %850, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5) #26
  br label %1262

851:                                              ; preds = %185
  %852 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 5), align 8, !tbaa !82
  %853 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 11, ptr noundef %852) #26
  store ptr %853, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 10), align 8, !tbaa !81
  %854 = getelementptr inbounds %struct.my_yyltype, ptr %64, i64 -3
  %855 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %854) #26
  call void @_ZN21CompoundModuleElement7setNameEPKc(ptr noundef nonnull align 8 dereferenceable(144) %853, ptr noundef %855) #26
  %856 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 10), align 8, !tbaa !81
  %857 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 7, ptr noundef %856) #26
  store ptr %857, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 8), align 8, !tbaa !84
  %858 = getelementptr inbounds %struct.my_yyltype, ptr %64, i64 -1
  %859 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %858) #26
  call void @_ZN14ExtendsElement7setNameEPKc(ptr noundef nonnull align 8 dereferenceable(144) %857, ptr noundef %859) #26
  %860 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 10), align 8, !tbaa !81
  %861 = getelementptr inbounds %struct.my_yyltype, ptr %64, i64 -4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %37, ptr noundef nonnull align 8 dereferenceable(32) %861, i64 32, i1 false), !tbaa.struct !77
  call void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltypeS1_(ptr noundef %860, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %37, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %64) #26
  %862 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 8), align 8, !tbaa !84
  call void @_Z8storePosP10NEDElement10my_yyltype(ptr noundef %862, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %858) #26
  %863 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 10), align 8, !tbaa !81
  %864 = call noundef ptr @_Z20setIsNetworkPropertyP10NEDElement(ptr noundef %863) #26
  store i8 1, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 1), align 1, !tbaa !108
  br label %1262

865:                                              ; preds = %185
  store i8 0, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 1), align 1, !tbaa !108
  br label %1262

866:                                              ; preds = %185
  %867 = getelementptr inbounds ptr, ptr %63, i64 -1
  %868 = load ptr, ptr %867, align 8, !tbaa !72
  br label %1262

869:                                              ; preds = %185
  %870 = load ptr, ptr @np, align 8, !tbaa !72
  %871 = call noundef zeroext i1 @_ZN9NEDParser23getParseExpressionsFlagEv(ptr noundef nonnull align 8 dereferenceable(32) %870) #26
  br i1 %871, label %872, label %1262

872:                                              ; preds = %869
  %873 = load ptr, ptr %63, align 8, !tbaa !72
  %874 = call noundef ptr @_Z16createExpressionP10NEDElement(ptr noundef %873) #26
  br label %1262

875:                                              ; preds = %185
  %876 = load ptr, ptr @np, align 8, !tbaa !72
  %877 = call noundef zeroext i1 @_ZN9NEDParser23getParseExpressionsFlagEv(ptr noundef nonnull align 8 dereferenceable(32) %876) #26
  br i1 %877, label %878, label %1262

878:                                              ; preds = %875
  %879 = load ptr, ptr %63, align 8, !tbaa !72
  %880 = call noundef ptr @_Z16createExpressionP10NEDElement(ptr noundef %879) #26
  br label %1262

881:                                              ; preds = %185
  %882 = load ptr, ptr @np, align 8, !tbaa !72
  %883 = call noundef zeroext i1 @_ZN9NEDParser23getParseExpressionsFlagEv(ptr noundef nonnull align 8 dereferenceable(32) %882) #26
  br i1 %883, label %884, label %1262

884:                                              ; preds = %881
  %885 = getelementptr inbounds ptr, ptr %63, i64 -3
  %886 = load ptr, ptr %885, align 8, !tbaa !72
  %887 = getelementptr inbounds ptr, ptr %63, i64 -1
  %888 = load ptr, ptr %887, align 8, !tbaa !72
  %889 = call noundef ptr @_Z14createFunctionPKcP10NEDElementS2_S2_S2_S2_S2_S2_S2_S2_S2_(ptr noundef nonnull @.str.26, ptr noundef %886, ptr noundef %888, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #26
  br label %1262

890:                                              ; preds = %185
  %891 = load ptr, ptr @np, align 8, !tbaa !72
  %892 = call noundef zeroext i1 @_ZN9NEDParser23getParseExpressionsFlagEv(ptr noundef nonnull align 8 dereferenceable(32) %891) #26
  br i1 %892, label %893, label %1262

893:                                              ; preds = %890
  %894 = getelementptr inbounds ptr, ptr %63, i64 -1
  %895 = load ptr, ptr %894, align 8, !tbaa !72
  %896 = call noundef ptr @_Z14createFunctionPKcP10NEDElementS2_S2_S2_S2_S2_S2_S2_S2_S2_(ptr noundef nonnull @.str.26, ptr noundef %895, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #26
  br label %1262

897:                                              ; preds = %185
  %898 = getelementptr inbounds ptr, ptr %63, i64 -1
  %899 = load ptr, ptr %898, align 8, !tbaa !72
  br label %1262

900:                                              ; preds = %185
  %901 = load ptr, ptr @np, align 8, !tbaa !72
  %902 = call noundef zeroext i1 @_ZN9NEDParser23getParseExpressionsFlagEv(ptr noundef nonnull align 8 dereferenceable(32) %901) #26
  br i1 %902, label %903, label %1262

903:                                              ; preds = %900
  %904 = getelementptr inbounds ptr, ptr %63, i64 -2
  %905 = load ptr, ptr %904, align 8, !tbaa !72
  %906 = load ptr, ptr %63, align 8, !tbaa !72
  %907 = call noundef ptr @_Z14createOperatorPKcP10NEDElementS2_S2_(ptr noundef nonnull @.str.27, ptr noundef %905, ptr noundef %906, ptr noundef null) #26
  br label %1262

908:                                              ; preds = %185
  %909 = load ptr, ptr @np, align 8, !tbaa !72
  %910 = call noundef zeroext i1 @_ZN9NEDParser23getParseExpressionsFlagEv(ptr noundef nonnull align 8 dereferenceable(32) %909) #26
  br i1 %910, label %911, label %1262

911:                                              ; preds = %908
  %912 = getelementptr inbounds ptr, ptr %63, i64 -2
  %913 = load ptr, ptr %912, align 8, !tbaa !72
  %914 = load ptr, ptr %63, align 8, !tbaa !72
  %915 = call noundef ptr @_Z14createOperatorPKcP10NEDElementS2_S2_(ptr noundef nonnull @.str.28, ptr noundef %913, ptr noundef %914, ptr noundef null) #26
  br label %1262

916:                                              ; preds = %185
  %917 = load ptr, ptr @np, align 8, !tbaa !72
  %918 = call noundef zeroext i1 @_ZN9NEDParser23getParseExpressionsFlagEv(ptr noundef nonnull align 8 dereferenceable(32) %917) #26
  br i1 %918, label %919, label %1262

919:                                              ; preds = %916
  %920 = getelementptr inbounds ptr, ptr %63, i64 -2
  %921 = load ptr, ptr %920, align 8, !tbaa !72
  %922 = load ptr, ptr %63, align 8, !tbaa !72
  %923 = call noundef ptr @_Z14createOperatorPKcP10NEDElementS2_S2_(ptr noundef nonnull @.str.29, ptr noundef %921, ptr noundef %922, ptr noundef null) #26
  br label %1262

924:                                              ; preds = %185
  %925 = load ptr, ptr @np, align 8, !tbaa !72
  %926 = call noundef zeroext i1 @_ZN9NEDParser23getParseExpressionsFlagEv(ptr noundef nonnull align 8 dereferenceable(32) %925) #26
  br i1 %926, label %927, label %1262

927:                                              ; preds = %924
  %928 = getelementptr inbounds ptr, ptr %63, i64 -2
  %929 = load ptr, ptr %928, align 8, !tbaa !72
  %930 = load ptr, ptr %63, align 8, !tbaa !72
  %931 = call noundef ptr @_Z14createOperatorPKcP10NEDElementS2_S2_(ptr noundef nonnull @.str.30, ptr noundef %929, ptr noundef %930, ptr noundef null) #26
  br label %1262

932:                                              ; preds = %185
  %933 = load ptr, ptr @np, align 8, !tbaa !72
  %934 = call noundef zeroext i1 @_ZN9NEDParser23getParseExpressionsFlagEv(ptr noundef nonnull align 8 dereferenceable(32) %933) #26
  br i1 %934, label %935, label %1262

935:                                              ; preds = %932
  %936 = getelementptr inbounds ptr, ptr %63, i64 -2
  %937 = load ptr, ptr %936, align 8, !tbaa !72
  %938 = load ptr, ptr %63, align 8, !tbaa !72
  %939 = call noundef ptr @_Z14createOperatorPKcP10NEDElementS2_S2_(ptr noundef nonnull @.str.31, ptr noundef %937, ptr noundef %938, ptr noundef null) #26
  br label %1262

940:                                              ; preds = %185
  %941 = load ptr, ptr @np, align 8, !tbaa !72
  %942 = call noundef zeroext i1 @_ZN9NEDParser23getParseExpressionsFlagEv(ptr noundef nonnull align 8 dereferenceable(32) %941) #26
  br i1 %942, label %943, label %1262

943:                                              ; preds = %940
  %944 = getelementptr inbounds ptr, ptr %63, i64 -2
  %945 = load ptr, ptr %944, align 8, !tbaa !72
  %946 = load ptr, ptr %63, align 8, !tbaa !72
  %947 = call noundef ptr @_Z14createOperatorPKcP10NEDElementS2_S2_(ptr noundef nonnull @.str.32, ptr noundef %945, ptr noundef %946, ptr noundef null) #26
  br label %1262

948:                                              ; preds = %185
  %949 = load ptr, ptr @np, align 8, !tbaa !72
  %950 = call noundef zeroext i1 @_ZN9NEDParser23getParseExpressionsFlagEv(ptr noundef nonnull align 8 dereferenceable(32) %949) #26
  br i1 %950, label %951, label %1262

951:                                              ; preds = %948
  %952 = load ptr, ptr %63, align 8, !tbaa !72
  %953 = call noundef ptr @_Z10unaryMinusP10NEDElement(ptr noundef %952) #26
  br label %1262

954:                                              ; preds = %185
  %955 = load ptr, ptr @np, align 8, !tbaa !72
  %956 = call noundef zeroext i1 @_ZN9NEDParser23getParseExpressionsFlagEv(ptr noundef nonnull align 8 dereferenceable(32) %955) #26
  br i1 %956, label %957, label %1262

957:                                              ; preds = %954
  %958 = getelementptr inbounds ptr, ptr %63, i64 -2
  %959 = load ptr, ptr %958, align 8, !tbaa !72
  %960 = load ptr, ptr %63, align 8, !tbaa !72
  %961 = call noundef ptr @_Z14createOperatorPKcP10NEDElementS2_S2_(ptr noundef nonnull @.str.33, ptr noundef %959, ptr noundef %960, ptr noundef null) #26
  br label %1262

962:                                              ; preds = %185
  %963 = load ptr, ptr @np, align 8, !tbaa !72
  %964 = call noundef zeroext i1 @_ZN9NEDParser23getParseExpressionsFlagEv(ptr noundef nonnull align 8 dereferenceable(32) %963) #26
  br i1 %964, label %965, label %1262

965:                                              ; preds = %962
  %966 = getelementptr inbounds ptr, ptr %63, i64 -2
  %967 = load ptr, ptr %966, align 8, !tbaa !72
  %968 = load ptr, ptr %63, align 8, !tbaa !72
  %969 = call noundef ptr @_Z14createOperatorPKcP10NEDElementS2_S2_(ptr noundef nonnull @.str.34, ptr noundef %967, ptr noundef %968, ptr noundef null) #26
  br label %1262

970:                                              ; preds = %185
  %971 = load ptr, ptr @np, align 8, !tbaa !72
  %972 = call noundef zeroext i1 @_ZN9NEDParser23getParseExpressionsFlagEv(ptr noundef nonnull align 8 dereferenceable(32) %971) #26
  br i1 %972, label %973, label %1262

973:                                              ; preds = %970
  %974 = getelementptr inbounds ptr, ptr %63, i64 -2
  %975 = load ptr, ptr %974, align 8, !tbaa !72
  %976 = load ptr, ptr %63, align 8, !tbaa !72
  %977 = call noundef ptr @_Z14createOperatorPKcP10NEDElementS2_S2_(ptr noundef nonnull @.str.35, ptr noundef %975, ptr noundef %976, ptr noundef null) #26
  br label %1262

978:                                              ; preds = %185
  %979 = load ptr, ptr @np, align 8, !tbaa !72
  %980 = call noundef zeroext i1 @_ZN9NEDParser23getParseExpressionsFlagEv(ptr noundef nonnull align 8 dereferenceable(32) %979) #26
  br i1 %980, label %981, label %1262

981:                                              ; preds = %978
  %982 = getelementptr inbounds ptr, ptr %63, i64 -2
  %983 = load ptr, ptr %982, align 8, !tbaa !72
  %984 = load ptr, ptr %63, align 8, !tbaa !72
  %985 = call noundef ptr @_Z14createOperatorPKcP10NEDElementS2_S2_(ptr noundef nonnull @.str.36, ptr noundef %983, ptr noundef %984, ptr noundef null) #26
  br label %1262

986:                                              ; preds = %185
  %987 = load ptr, ptr @np, align 8, !tbaa !72
  %988 = call noundef zeroext i1 @_ZN9NEDParser23getParseExpressionsFlagEv(ptr noundef nonnull align 8 dereferenceable(32) %987) #26
  br i1 %988, label %989, label %1262

989:                                              ; preds = %986
  %990 = getelementptr inbounds ptr, ptr %63, i64 -2
  %991 = load ptr, ptr %990, align 8, !tbaa !72
  %992 = load ptr, ptr %63, align 8, !tbaa !72
  %993 = call noundef ptr @_Z14createOperatorPKcP10NEDElementS2_S2_(ptr noundef nonnull @.str.37, ptr noundef %991, ptr noundef %992, ptr noundef null) #26
  br label %1262

994:                                              ; preds = %185
  %995 = load ptr, ptr @np, align 8, !tbaa !72
  %996 = call noundef zeroext i1 @_ZN9NEDParser23getParseExpressionsFlagEv(ptr noundef nonnull align 8 dereferenceable(32) %995) #26
  br i1 %996, label %997, label %1262

997:                                              ; preds = %994
  %998 = getelementptr inbounds ptr, ptr %63, i64 -2
  %999 = load ptr, ptr %998, align 8, !tbaa !72
  %1000 = load ptr, ptr %63, align 8, !tbaa !72
  %1001 = call noundef ptr @_Z14createOperatorPKcP10NEDElementS2_S2_(ptr noundef nonnull @.str.38, ptr noundef %999, ptr noundef %1000, ptr noundef null) #26
  br label %1262

1002:                                             ; preds = %185
  %1003 = load ptr, ptr @np, align 8, !tbaa !72
  %1004 = call noundef zeroext i1 @_ZN9NEDParser23getParseExpressionsFlagEv(ptr noundef nonnull align 8 dereferenceable(32) %1003) #26
  br i1 %1004, label %1005, label %1262

1005:                                             ; preds = %1002
  %1006 = getelementptr inbounds ptr, ptr %63, i64 -2
  %1007 = load ptr, ptr %1006, align 8, !tbaa !72
  %1008 = load ptr, ptr %63, align 8, !tbaa !72
  %1009 = call noundef ptr @_Z14createOperatorPKcP10NEDElementS2_S2_(ptr noundef nonnull @.str.39, ptr noundef %1007, ptr noundef %1008, ptr noundef null) #26
  br label %1262

1010:                                             ; preds = %185
  %1011 = load ptr, ptr @np, align 8, !tbaa !72
  %1012 = call noundef zeroext i1 @_ZN9NEDParser23getParseExpressionsFlagEv(ptr noundef nonnull align 8 dereferenceable(32) %1011) #26
  br i1 %1012, label %1013, label %1262

1013:                                             ; preds = %1010
  %1014 = getelementptr inbounds ptr, ptr %63, i64 -2
  %1015 = load ptr, ptr %1014, align 8, !tbaa !72
  %1016 = load ptr, ptr %63, align 8, !tbaa !72
  %1017 = call noundef ptr @_Z14createOperatorPKcP10NEDElementS2_S2_(ptr noundef nonnull @.str.40, ptr noundef %1015, ptr noundef %1016, ptr noundef null) #26
  br label %1262

1018:                                             ; preds = %185
  %1019 = load ptr, ptr @np, align 8, !tbaa !72
  %1020 = call noundef zeroext i1 @_ZN9NEDParser23getParseExpressionsFlagEv(ptr noundef nonnull align 8 dereferenceable(32) %1019) #26
  br i1 %1020, label %1021, label %1262

1021:                                             ; preds = %1018
  %1022 = getelementptr inbounds ptr, ptr %63, i64 -2
  %1023 = load ptr, ptr %1022, align 8, !tbaa !72
  %1024 = load ptr, ptr %63, align 8, !tbaa !72
  %1025 = call noundef ptr @_Z14createOperatorPKcP10NEDElementS2_S2_(ptr noundef nonnull @.str.41, ptr noundef %1023, ptr noundef %1024, ptr noundef null) #26
  br label %1262

1026:                                             ; preds = %185
  %1027 = load ptr, ptr @np, align 8, !tbaa !72
  %1028 = call noundef zeroext i1 @_ZN9NEDParser23getParseExpressionsFlagEv(ptr noundef nonnull align 8 dereferenceable(32) %1027) #26
  br i1 %1028, label %1029, label %1262

1029:                                             ; preds = %1026
  %1030 = load ptr, ptr %63, align 8, !tbaa !72
  %1031 = call noundef ptr @_Z14createOperatorPKcP10NEDElementS2_S2_(ptr noundef nonnull @.str.42, ptr noundef %1030, ptr noundef null, ptr noundef null) #26
  br label %1262

1032:                                             ; preds = %185
  %1033 = load ptr, ptr @np, align 8, !tbaa !72
  %1034 = call noundef zeroext i1 @_ZN9NEDParser23getParseExpressionsFlagEv(ptr noundef nonnull align 8 dereferenceable(32) %1033) #26
  br i1 %1034, label %1035, label %1262

1035:                                             ; preds = %1032
  %1036 = getelementptr inbounds ptr, ptr %63, i64 -2
  %1037 = load ptr, ptr %1036, align 8, !tbaa !72
  %1038 = load ptr, ptr %63, align 8, !tbaa !72
  %1039 = call noundef ptr @_Z14createOperatorPKcP10NEDElementS2_S2_(ptr noundef nonnull @.str.43, ptr noundef %1037, ptr noundef %1038, ptr noundef null) #26
  br label %1262

1040:                                             ; preds = %185
  %1041 = load ptr, ptr @np, align 8, !tbaa !72
  %1042 = call noundef zeroext i1 @_ZN9NEDParser23getParseExpressionsFlagEv(ptr noundef nonnull align 8 dereferenceable(32) %1041) #26
  br i1 %1042, label %1043, label %1262

1043:                                             ; preds = %1040
  %1044 = getelementptr inbounds ptr, ptr %63, i64 -2
  %1045 = load ptr, ptr %1044, align 8, !tbaa !72
  %1046 = load ptr, ptr %63, align 8, !tbaa !72
  %1047 = call noundef ptr @_Z14createOperatorPKcP10NEDElementS2_S2_(ptr noundef nonnull @.str.44, ptr noundef %1045, ptr noundef %1046, ptr noundef null) #26
  br label %1262

1048:                                             ; preds = %185
  %1049 = load ptr, ptr @np, align 8, !tbaa !72
  %1050 = call noundef zeroext i1 @_ZN9NEDParser23getParseExpressionsFlagEv(ptr noundef nonnull align 8 dereferenceable(32) %1049) #26
  br i1 %1050, label %1051, label %1262

1051:                                             ; preds = %1048
  %1052 = getelementptr inbounds ptr, ptr %63, i64 -2
  %1053 = load ptr, ptr %1052, align 8, !tbaa !72
  %1054 = load ptr, ptr %63, align 8, !tbaa !72
  %1055 = call noundef ptr @_Z14createOperatorPKcP10NEDElementS2_S2_(ptr noundef nonnull @.str.45, ptr noundef %1053, ptr noundef %1054, ptr noundef null) #26
  br label %1262

1056:                                             ; preds = %185
  %1057 = load ptr, ptr @np, align 8, !tbaa !72
  %1058 = call noundef zeroext i1 @_ZN9NEDParser23getParseExpressionsFlagEv(ptr noundef nonnull align 8 dereferenceable(32) %1057) #26
  br i1 %1058, label %1059, label %1262

1059:                                             ; preds = %1056
  %1060 = load ptr, ptr %63, align 8, !tbaa !72
  %1061 = call noundef ptr @_Z14createOperatorPKcP10NEDElementS2_S2_(ptr noundef nonnull @.str.46, ptr noundef %1060, ptr noundef null, ptr noundef null) #26
  br label %1262

1062:                                             ; preds = %185
  %1063 = load ptr, ptr @np, align 8, !tbaa !72
  %1064 = call noundef zeroext i1 @_ZN9NEDParser23getParseExpressionsFlagEv(ptr noundef nonnull align 8 dereferenceable(32) %1063) #26
  br i1 %1064, label %1065, label %1262

1065:                                             ; preds = %1062
  %1066 = getelementptr inbounds ptr, ptr %63, i64 -2
  %1067 = load ptr, ptr %1066, align 8, !tbaa !72
  %1068 = load ptr, ptr %63, align 8, !tbaa !72
  %1069 = call noundef ptr @_Z14createOperatorPKcP10NEDElementS2_S2_(ptr noundef nonnull @.str.47, ptr noundef %1067, ptr noundef %1068, ptr noundef null) #26
  br label %1262

1070:                                             ; preds = %185
  %1071 = load ptr, ptr @np, align 8, !tbaa !72
  %1072 = call noundef zeroext i1 @_ZN9NEDParser23getParseExpressionsFlagEv(ptr noundef nonnull align 8 dereferenceable(32) %1071) #26
  br i1 %1072, label %1073, label %1262

1073:                                             ; preds = %1070
  %1074 = getelementptr inbounds ptr, ptr %63, i64 -2
  %1075 = load ptr, ptr %1074, align 8, !tbaa !72
  %1076 = load ptr, ptr %63, align 8, !tbaa !72
  %1077 = call noundef ptr @_Z14createOperatorPKcP10NEDElementS2_S2_(ptr noundef nonnull @.str.48, ptr noundef %1075, ptr noundef %1076, ptr noundef null) #26
  br label %1262

1078:                                             ; preds = %185
  %1079 = load ptr, ptr @np, align 8, !tbaa !72
  %1080 = call noundef zeroext i1 @_ZN9NEDParser23getParseExpressionsFlagEv(ptr noundef nonnull align 8 dereferenceable(32) %1079) #26
  br i1 %1080, label %1081, label %1262

1081:                                             ; preds = %1078
  %1082 = getelementptr inbounds ptr, ptr %63, i64 -4
  %1083 = load ptr, ptr %1082, align 8, !tbaa !72
  %1084 = getelementptr inbounds ptr, ptr %63, i64 -2
  %1085 = load ptr, ptr %1084, align 8, !tbaa !72
  %1086 = load ptr, ptr %63, align 8, !tbaa !72
  %1087 = call noundef ptr @_Z14createOperatorPKcP10NEDElementS2_S2_(ptr noundef nonnull @.str.49, ptr noundef %1083, ptr noundef %1085, ptr noundef %1086) #26
  br label %1262

1088:                                             ; preds = %185
  %1089 = load ptr, ptr @np, align 8, !tbaa !72
  %1090 = call noundef zeroext i1 @_ZN9NEDParser23getParseExpressionsFlagEv(ptr noundef nonnull align 8 dereferenceable(32) %1089) #26
  br i1 %1090, label %1091, label %1262

1091:                                             ; preds = %1088
  %1092 = getelementptr inbounds %struct.my_yyltype, ptr %64, i64 -3
  %1093 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %1092) #26
  %1094 = getelementptr inbounds ptr, ptr %63, i64 -1
  %1095 = load ptr, ptr %1094, align 8, !tbaa !72
  %1096 = call noundef ptr @_Z14createFunctionPKcP10NEDElementS2_S2_S2_S2_S2_S2_S2_S2_S2_(ptr noundef %1093, ptr noundef %1095, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #26
  br label %1262

1097:                                             ; preds = %185
  %1098 = load ptr, ptr @np, align 8, !tbaa !72
  %1099 = call noundef zeroext i1 @_ZN9NEDParser23getParseExpressionsFlagEv(ptr noundef nonnull align 8 dereferenceable(32) %1098) #26
  br i1 %1099, label %1100, label %1262

1100:                                             ; preds = %1097
  %1101 = getelementptr inbounds %struct.my_yyltype, ptr %64, i64 -3
  %1102 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %1101) #26
  %1103 = getelementptr inbounds ptr, ptr %63, i64 -1
  %1104 = load ptr, ptr %1103, align 8, !tbaa !72
  %1105 = call noundef ptr @_Z14createFunctionPKcP10NEDElementS2_S2_S2_S2_S2_S2_S2_S2_S2_(ptr noundef %1102, ptr noundef %1104, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #26
  br label %1262

1106:                                             ; preds = %185
  %1107 = load ptr, ptr @np, align 8, !tbaa !72
  %1108 = call noundef zeroext i1 @_ZN9NEDParser23getParseExpressionsFlagEv(ptr noundef nonnull align 8 dereferenceable(32) %1107) #26
  br i1 %1108, label %1109, label %1262

1109:                                             ; preds = %1106
  %1110 = getelementptr inbounds %struct.my_yyltype, ptr %64, i64 -3
  %1111 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %1110) #26
  %1112 = getelementptr inbounds ptr, ptr %63, i64 -1
  %1113 = load ptr, ptr %1112, align 8, !tbaa !72
  %1114 = call noundef ptr @_Z14createFunctionPKcP10NEDElementS2_S2_S2_S2_S2_S2_S2_S2_S2_(ptr noundef %1111, ptr noundef %1113, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #26
  br label %1262

1115:                                             ; preds = %185
  %1116 = load ptr, ptr @np, align 8, !tbaa !72
  %1117 = call noundef zeroext i1 @_ZN9NEDParser23getParseExpressionsFlagEv(ptr noundef nonnull align 8 dereferenceable(32) %1116) #26
  br i1 %1117, label %1118, label %1262

1118:                                             ; preds = %1115
  %1119 = getelementptr inbounds %struct.my_yyltype, ptr %64, i64 -2
  %1120 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %1119) #26
  %1121 = call noundef ptr @_Z14createFunctionPKcP10NEDElementS2_S2_S2_S2_S2_S2_S2_S2_S2_(ptr noundef %1120, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #26
  br label %1262

1122:                                             ; preds = %185
  %1123 = load ptr, ptr @np, align 8, !tbaa !72
  %1124 = call noundef zeroext i1 @_ZN9NEDParser23getParseExpressionsFlagEv(ptr noundef nonnull align 8 dereferenceable(32) %1123) #26
  br i1 %1124, label %1125, label %1262

1125:                                             ; preds = %1122
  %1126 = getelementptr inbounds %struct.my_yyltype, ptr %64, i64 -3
  %1127 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %1126) #26
  %1128 = getelementptr inbounds ptr, ptr %63, i64 -1
  %1129 = load ptr, ptr %1128, align 8, !tbaa !72
  %1130 = call noundef ptr @_Z14createFunctionPKcP10NEDElementS2_S2_S2_S2_S2_S2_S2_S2_S2_(ptr noundef %1127, ptr noundef %1129, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #26
  br label %1262

1131:                                             ; preds = %185
  %1132 = load ptr, ptr @np, align 8, !tbaa !72
  %1133 = call noundef zeroext i1 @_ZN9NEDParser23getParseExpressionsFlagEv(ptr noundef nonnull align 8 dereferenceable(32) %1132) #26
  br i1 %1133, label %1134, label %1262

1134:                                             ; preds = %1131
  %1135 = getelementptr inbounds %struct.my_yyltype, ptr %64, i64 -5
  %1136 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %1135) #26
  %1137 = getelementptr inbounds ptr, ptr %63, i64 -3
  %1138 = load ptr, ptr %1137, align 8, !tbaa !72
  %1139 = getelementptr inbounds ptr, ptr %63, i64 -1
  %1140 = load ptr, ptr %1139, align 8, !tbaa !72
  %1141 = call noundef ptr @_Z14createFunctionPKcP10NEDElementS2_S2_S2_S2_S2_S2_S2_S2_S2_(ptr noundef %1136, ptr noundef %1138, ptr noundef %1140, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #26
  br label %1262

1142:                                             ; preds = %185
  %1143 = load ptr, ptr @np, align 8, !tbaa !72
  %1144 = call noundef zeroext i1 @_ZN9NEDParser23getParseExpressionsFlagEv(ptr noundef nonnull align 8 dereferenceable(32) %1143) #26
  br i1 %1144, label %1145, label %1262

1145:                                             ; preds = %1142
  %1146 = getelementptr inbounds %struct.my_yyltype, ptr %64, i64 -7
  %1147 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %1146) #26
  %1148 = getelementptr inbounds ptr, ptr %63, i64 -5
  %1149 = load ptr, ptr %1148, align 8, !tbaa !72
  %1150 = getelementptr inbounds ptr, ptr %63, i64 -3
  %1151 = load ptr, ptr %1150, align 8, !tbaa !72
  %1152 = getelementptr inbounds ptr, ptr %63, i64 -1
  %1153 = load ptr, ptr %1152, align 8, !tbaa !72
  %1154 = call noundef ptr @_Z14createFunctionPKcP10NEDElementS2_S2_S2_S2_S2_S2_S2_S2_S2_(ptr noundef %1147, ptr noundef %1149, ptr noundef %1151, ptr noundef %1153, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #26
  br label %1262

1155:                                             ; preds = %185
  %1156 = load ptr, ptr @np, align 8, !tbaa !72
  %1157 = call noundef zeroext i1 @_ZN9NEDParser23getParseExpressionsFlagEv(ptr noundef nonnull align 8 dereferenceable(32) %1156) #26
  br i1 %1157, label %1158, label %1262

1158:                                             ; preds = %1155
  %1159 = getelementptr inbounds %struct.my_yyltype, ptr %64, i64 -9
  %1160 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %1159) #26
  %1161 = getelementptr inbounds ptr, ptr %63, i64 -7
  %1162 = load ptr, ptr %1161, align 8, !tbaa !72
  %1163 = getelementptr inbounds ptr, ptr %63, i64 -5
  %1164 = load ptr, ptr %1163, align 8, !tbaa !72
  %1165 = getelementptr inbounds ptr, ptr %63, i64 -3
  %1166 = load ptr, ptr %1165, align 8, !tbaa !72
  %1167 = getelementptr inbounds ptr, ptr %63, i64 -1
  %1168 = load ptr, ptr %1167, align 8, !tbaa !72
  %1169 = call noundef ptr @_Z14createFunctionPKcP10NEDElementS2_S2_S2_S2_S2_S2_S2_S2_S2_(ptr noundef %1160, ptr noundef %1162, ptr noundef %1164, ptr noundef %1166, ptr noundef %1168, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #26
  br label %1262

1170:                                             ; preds = %185
  %1171 = load ptr, ptr @np, align 8, !tbaa !72
  %1172 = call noundef zeroext i1 @_ZN9NEDParser23getParseExpressionsFlagEv(ptr noundef nonnull align 8 dereferenceable(32) %1171) #26
  br i1 %1172, label %1173, label %1262

1173:                                             ; preds = %1170
  %1174 = call noundef ptr @_Z11createIdent10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %64) #26
  br label %1262

1175:                                             ; preds = %185
  %1176 = load ptr, ptr @np, align 8, !tbaa !72
  %1177 = call noundef zeroext i1 @_ZN9NEDParser23getParseExpressionsFlagEv(ptr noundef nonnull align 8 dereferenceable(32) %1176) #26
  br i1 %1177, label %1178, label %1180

1178:                                             ; preds = %1175
  %1179 = call noundef ptr @_Z11createIdent10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %64) #26
  br label %1180

1180:                                             ; preds = %1178, %1175
  %1181 = phi ptr [ %1179, %1178 ], [ %166, %1175 ]
  %1182 = load ptr, ptr @np, align 8, !tbaa !72
  %1183 = call noundef ptr @_ZN9NEDParser9getErrorsEv(ptr noundef nonnull align 8 dereferenceable(32) %1182) #26
  %1184 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 13), align 8, !tbaa !95
  call void (ptr, ptr, ptr, ...) @_ZN13NEDErrorStore8addErrorEP10NEDElementPKcz(ptr noundef nonnull align 8 dereferenceable(25) %1183, ptr noundef %1184, ptr noundef nonnull @.str.50) #26
  br label %1262

1185:                                             ; preds = %185
  %1186 = load ptr, ptr @np, align 8, !tbaa !72
  %1187 = call noundef zeroext i1 @_ZN9NEDParser23getParseExpressionsFlagEv(ptr noundef nonnull align 8 dereferenceable(32) %1186) #26
  br i1 %1187, label %1188, label %1190

1188:                                             ; preds = %1185
  %1189 = call noundef ptr @_Z11createIdent10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %64) #26
  br label %1190

1190:                                             ; preds = %1188, %1185
  %1191 = phi ptr [ %1189, %1188 ], [ %166, %1185 ]
  %1192 = load ptr, ptr @np, align 8, !tbaa !72
  %1193 = call noundef ptr @_ZN9NEDParser9getErrorsEv(ptr noundef nonnull align 8 dereferenceable(32) %1192) #26
  %1194 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 13), align 8, !tbaa !95
  call void (ptr, ptr, ptr, ...) @_ZN13NEDErrorStore8addErrorEP10NEDElementPKcz(ptr noundef nonnull align 8 dereferenceable(25) %1193, ptr noundef %1194, ptr noundef nonnull @.str.51) #26
  br label %1262

1195:                                             ; preds = %185
  %1196 = load ptr, ptr @np, align 8, !tbaa !72
  %1197 = call noundef zeroext i1 @_ZN9NEDParser23getParseExpressionsFlagEv(ptr noundef nonnull align 8 dereferenceable(32) %1196) #26
  br i1 %1197, label %1198, label %1200

1198:                                             ; preds = %1195
  %1199 = call noundef ptr @_Z11createIdent10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %64) #26
  br label %1200

1200:                                             ; preds = %1198, %1195
  %1201 = phi ptr [ %1199, %1198 ], [ %166, %1195 ]
  %1202 = load ptr, ptr @np, align 8, !tbaa !72
  %1203 = call noundef ptr @_ZN9NEDParser9getErrorsEv(ptr noundef nonnull align 8 dereferenceable(32) %1202) #26
  %1204 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 13), align 8, !tbaa !95
  call void (ptr, ptr, ptr, ...) @_ZN13NEDErrorStore8addErrorEP10NEDElementPKcz(ptr noundef nonnull align 8 dereferenceable(25) %1203, ptr noundef %1204, ptr noundef nonnull @.str.51) #26
  br label %1262

1205:                                             ; preds = %185
  %1206 = load ptr, ptr @np, align 8, !tbaa !72
  %1207 = call noundef zeroext i1 @_ZN9NEDParser23getParseExpressionsFlagEv(ptr noundef nonnull align 8 dereferenceable(32) %1206) #26
  br i1 %1207, label %1208, label %1210

1208:                                             ; preds = %1205
  %1209 = call noundef ptr @_Z11createIdent10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %64) #26
  br label %1210

1210:                                             ; preds = %1208, %1205
  %1211 = phi ptr [ %1209, %1208 ], [ %166, %1205 ]
  %1212 = load ptr, ptr @np, align 8, !tbaa !72
  %1213 = call noundef ptr @_ZN9NEDParser9getErrorsEv(ptr noundef nonnull align 8 dereferenceable(32) %1212) #26
  %1214 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 13), align 8, !tbaa !95
  call void (ptr, ptr, ptr, ...) @_ZN13NEDErrorStore8addErrorEP10NEDElementPKcz(ptr noundef nonnull align 8 dereferenceable(25) %1213, ptr noundef %1214, ptr noundef nonnull @.str.52) #26
  br label %1262

1215:                                             ; preds = %185
  %1216 = load ptr, ptr @np, align 8, !tbaa !72
  %1217 = call noundef zeroext i1 @_ZN9NEDParser23getParseExpressionsFlagEv(ptr noundef nonnull align 8 dereferenceable(32) %1216) #26
  br i1 %1217, label %1218, label %1262

1218:                                             ; preds = %1215
  %1219 = call noundef ptr @_Z14createFunctionPKcP10NEDElementS2_S2_S2_S2_S2_S2_S2_S2_S2_(ptr noundef nonnull @.str.53, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #26
  br label %1262

1220:                                             ; preds = %185
  %1221 = load ptr, ptr @np, align 8, !tbaa !72
  %1222 = call noundef zeroext i1 @_ZN9NEDParser23getParseExpressionsFlagEv(ptr noundef nonnull align 8 dereferenceable(32) %1221) #26
  br i1 %1222, label %1223, label %1262

1223:                                             ; preds = %1220
  %1224 = call noundef ptr @_Z14createFunctionPKcP10NEDElementS2_S2_S2_S2_S2_S2_S2_S2_S2_(ptr noundef nonnull @.str.53, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #26
  br label %1262

1225:                                             ; preds = %185
  %1226 = load ptr, ptr @np, align 8, !tbaa !72
  %1227 = call noundef zeroext i1 @_ZN9NEDParser23getParseExpressionsFlagEv(ptr noundef nonnull align 8 dereferenceable(32) %1226) #26
  br i1 %1227, label %1228, label %1262

1228:                                             ; preds = %1225
  %1229 = getelementptr inbounds %struct.my_yyltype, ptr %64, i64 -1
  %1230 = call noundef ptr @_Z11createIdent10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %1229) #26
  %1231 = call noundef ptr @_Z14createFunctionPKcP10NEDElementS2_S2_S2_S2_S2_S2_S2_S2_S2_(ptr noundef nonnull @.str.54, ptr noundef %1230, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #26
  br label %1262

1232:                                             ; preds = %185
  %1233 = load ptr, ptr @np, align 8, !tbaa !72
  %1234 = call noundef zeroext i1 @_ZN9NEDParser23getParseExpressionsFlagEv(ptr noundef nonnull align 8 dereferenceable(32) %1233) #26
  br i1 %1234, label %1235, label %1262

1235:                                             ; preds = %1232
  %1236 = call noundef ptr @_Z19createStringLiteral10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %64) #26
  br label %1262

1237:                                             ; preds = %185
  %1238 = load ptr, ptr @np, align 8, !tbaa !72
  %1239 = call noundef zeroext i1 @_ZN9NEDParser23getParseExpressionsFlagEv(ptr noundef nonnull align 8 dereferenceable(32) %1238) #26
  br i1 %1239, label %1240, label %1262

1240:                                             ; preds = %1237
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %38, ptr noundef nonnull align 8 dereferenceable(32) %64, i64 32, i1 false), !tbaa.struct !77
  %1241 = call noundef ptr @_Z13createLiterali10my_yyltypeS_(i32 noundef 3, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %38, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %64) #26
  br label %1262

1242:                                             ; preds = %185
  %1243 = load ptr, ptr @np, align 8, !tbaa !72
  %1244 = call noundef zeroext i1 @_ZN9NEDParser23getParseExpressionsFlagEv(ptr noundef nonnull align 8 dereferenceable(32) %1243) #26
  br i1 %1244, label %1245, label %1262

1245:                                             ; preds = %1242
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %39, ptr noundef nonnull align 8 dereferenceable(32) %64, i64 32, i1 false), !tbaa.struct !77
  %1246 = call noundef ptr @_Z13createLiterali10my_yyltypeS_(i32 noundef 3, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %39, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %64) #26
  br label %1262

1247:                                             ; preds = %185
  %1248 = load ptr, ptr @np, align 8, !tbaa !72
  %1249 = call noundef zeroext i1 @_ZN9NEDParser23getParseExpressionsFlagEv(ptr noundef nonnull align 8 dereferenceable(32) %1248) #26
  br i1 %1249, label %1250, label %1262

1250:                                             ; preds = %1247
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %40, ptr noundef nonnull align 8 dereferenceable(32) %64, i64 32, i1 false), !tbaa.struct !77
  %1251 = call noundef ptr @_Z13createLiterali10my_yyltypeS_(i32 noundef 1, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %40, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %64) #26
  br label %1262

1252:                                             ; preds = %185
  %1253 = load ptr, ptr @np, align 8, !tbaa !72
  %1254 = call noundef zeroext i1 @_ZN9NEDParser23getParseExpressionsFlagEv(ptr noundef nonnull align 8 dereferenceable(32) %1253) #26
  br i1 %1254, label %1255, label %1262

1255:                                             ; preds = %1252
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %41, ptr noundef nonnull align 8 dereferenceable(32) %64, i64 32, i1 false), !tbaa.struct !77
  %1256 = call noundef ptr @_Z13createLiterali10my_yyltypeS_(i32 noundef 0, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %41, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %64) #26
  br label %1262

1257:                                             ; preds = %185
  %1258 = load ptr, ptr @np, align 8, !tbaa !72
  %1259 = call noundef zeroext i1 @_ZN9NEDParser23getParseExpressionsFlagEv(ptr noundef nonnull align 8 dereferenceable(32) %1258) #26
  br i1 %1259, label %1260, label %1262

1260:                                             ; preds = %1257
  %1261 = call noundef ptr @_Z21createQuantityLiteral10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %64) #26
  br label %1262

1262:                                             ; preds = %688, %695, %210, %216, %219, %229, %231, %245, %259, %262, %268, %271, %320, %330, %334, %336, %339, %342, %346, %351, %354, %358, %362, %366, %370, %374, %378, %385, %389, %391, %398, %403, %410, %415, %419, %421, %430, %432, %445, %447, %459, %461, %477, %479, %481, %492, %496, %503, %507, %511, %524, %529, %531, %542, %546, %597, %607, %612, %614, %619, %621, %624, %630, %642, %699, %703, %707, %712, %717, %728, %736, %742, %745, %750, %762, %771, %782, %788, %791, %797, %800, %805, %811, %814, %834, %842, %848, %851, %865, %866, %897, %1180, %1190, %1200, %1210, %189, %186, %195, %192, %201, %198, %207, %204, %827, %819, %872, %869, %878, %875, %884, %881, %893, %890, %903, %900, %911, %908, %919, %916, %927, %924, %935, %932, %943, %940, %951, %948, %957, %954, %965, %962, %973, %970, %981, %978, %989, %986, %997, %994, %1005, %1002, %1013, %1010, %1021, %1018, %1029, %1026, %1035, %1032, %1043, %1040, %1051, %1048, %1059, %1056, %1065, %1062, %1073, %1070, %1081, %1078, %1091, %1088, %1100, %1097, %1109, %1106, %1118, %1115, %1125, %1122, %1134, %1131, %1145, %1142, %1158, %1155, %1173, %1170, %1218, %1215, %1223, %1220, %1228, %1225, %1235, %1232, %1240, %1237, %1245, %1242, %1250, %1247, %1255, %1252, %1260, %1257, %185
  %1263 = phi ptr [ %166, %185 ], [ %1261, %1260 ], [ %166, %1257 ], [ %1256, %1255 ], [ %166, %1252 ], [ %1251, %1250 ], [ %166, %1247 ], [ %1246, %1245 ], [ %166, %1242 ], [ %1241, %1240 ], [ %166, %1237 ], [ %1236, %1235 ], [ %166, %1232 ], [ %1231, %1228 ], [ %166, %1225 ], [ %1224, %1223 ], [ %166, %1220 ], [ %1219, %1218 ], [ %166, %1215 ], [ %1211, %1210 ], [ %1201, %1200 ], [ %1191, %1190 ], [ %1181, %1180 ], [ %1174, %1173 ], [ %166, %1170 ], [ %1169, %1158 ], [ %166, %1155 ], [ %1154, %1145 ], [ %166, %1142 ], [ %1141, %1134 ], [ %166, %1131 ], [ %1130, %1125 ], [ %166, %1122 ], [ %1121, %1118 ], [ %166, %1115 ], [ %1114, %1109 ], [ %166, %1106 ], [ %1105, %1100 ], [ %166, %1097 ], [ %1096, %1091 ], [ %166, %1088 ], [ %1087, %1081 ], [ %166, %1078 ], [ %1077, %1073 ], [ %166, %1070 ], [ %1069, %1065 ], [ %166, %1062 ], [ %1061, %1059 ], [ %166, %1056 ], [ %1055, %1051 ], [ %166, %1048 ], [ %1047, %1043 ], [ %166, %1040 ], [ %1039, %1035 ], [ %166, %1032 ], [ %1031, %1029 ], [ %166, %1026 ], [ %1025, %1021 ], [ %166, %1018 ], [ %1017, %1013 ], [ %166, %1010 ], [ %1009, %1005 ], [ %166, %1002 ], [ %1001, %997 ], [ %166, %994 ], [ %993, %989 ], [ %166, %986 ], [ %985, %981 ], [ %166, %978 ], [ %977, %973 ], [ %166, %970 ], [ %969, %965 ], [ %166, %962 ], [ %961, %957 ], [ %166, %954 ], [ %953, %951 ], [ %166, %948 ], [ %947, %943 ], [ %166, %940 ], [ %939, %935 ], [ %166, %932 ], [ %931, %927 ], [ %166, %924 ], [ %923, %919 ], [ %166, %916 ], [ %915, %911 ], [ %166, %908 ], [ %907, %903 ], [ %166, %900 ], [ %899, %897 ], [ %896, %893 ], [ %166, %890 ], [ %889, %884 ], [ %166, %881 ], [ %880, %878 ], [ %166, %875 ], [ %874, %872 ], [ %166, %869 ], [ %868, %866 ], [ %166, %865 ], [ %166, %851 ], [ %166, %848 ], [ %166, %842 ], [ %166, %834 ], [ %166, %819 ], [ %166, %827 ], [ %166, %814 ], [ %166, %811 ], [ %166, %805 ], [ %166, %800 ], [ %166, %797 ], [ %166, %791 ], [ %166, %788 ], [ %166, %782 ], [ %166, %771 ], [ %166, %762 ], [ %166, %750 ], [ %166, %745 ], [ %166, %742 ], [ %166, %736 ], [ %166, %728 ], [ %166, %717 ], [ %166, %712 ], [ %166, %707 ], [ %166, %703 ], [ %166, %699 ], [ %166, %695 ], [ %166, %688 ], [ %166, %642 ], [ %166, %630 ], [ %166, %624 ], [ %166, %621 ], [ %166, %619 ], [ %166, %614 ], [ %166, %612 ], [ %166, %607 ], [ %166, %597 ], [ %166, %546 ], [ %166, %542 ], [ %166, %531 ], [ %166, %529 ], [ %166, %524 ], [ %166, %511 ], [ %166, %507 ], [ %166, %503 ], [ %166, %496 ], [ %166, %492 ], [ %166, %481 ], [ %166, %479 ], [ %166, %477 ], [ %166, %461 ], [ %166, %459 ], [ %166, %447 ], [ %166, %445 ], [ %166, %432 ], [ %166, %430 ], [ %166, %421 ], [ %166, %419 ], [ %166, %415 ], [ %166, %410 ], [ %166, %403 ], [ %166, %398 ], [ %166, %391 ], [ %166, %389 ], [ %166, %385 ], [ %166, %378 ], [ %166, %374 ], [ %166, %370 ], [ %166, %366 ], [ %166, %362 ], [ %166, %358 ], [ %166, %354 ], [ %166, %351 ], [ %166, %346 ], [ %166, %342 ], [ %166, %339 ], [ %166, %336 ], [ %166, %334 ], [ %166, %330 ], [ %166, %320 ], [ %166, %271 ], [ %166, %268 ], [ %166, %262 ], [ %166, %259 ], [ %166, %245 ], [ %166, %231 ], [ %166, %229 ], [ %166, %219 ], [ %166, %216 ], [ %166, %210 ], [ %166, %207 ], [ %166, %204 ], [ %166, %201 ], [ %166, %198 ], [ %166, %195 ], [ %166, %192 ], [ %166, %189 ], [ %166, %186 ]
  %1264 = load i32, ptr @ned1yydebug, align 4, !tbaa !68
  %1265 = icmp eq i32 %1264, 0
  br i1 %1265, label %1266, label %1273

1266:                                             ; preds = %1262
  %1267 = sub nsw i64 0, %163
  %1268 = getelementptr inbounds ptr, ptr %63, i64 %1267
  %1269 = shl nsw i64 %1267, 1
  %1270 = add nsw i64 %1269, %62
  %1271 = getelementptr inbounds i8, ptr %2, i64 %1270
  %1272 = getelementptr inbounds %struct.my_yyltype, ptr %64, i64 %1267
  br label %1291

1273:                                             ; preds = %1262
  %1274 = load ptr, ptr @stderr, align 8, !tbaa !72
  %1275 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1274, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.55) #25
  %1276 = load ptr, ptr @stderr, align 8, !tbaa !72
  %1277 = getelementptr inbounds [242 x i8], ptr @_ZL4yyr1, i64 0, i64 %160
  %1278 = load i8, ptr %1277, align 1, !tbaa !76
  %1279 = zext i8 %1278 to i32
  call fastcc void @_ZL15yy_symbol_printP8_IO_FILEiPKP10NEDElementPK10my_yyltype(ptr noundef %1276, i32 noundef %1279) #26
  %1280 = load ptr, ptr @stderr, align 8, !tbaa !72
  %1281 = call i32 @fputc(i32 10, ptr %1280)
  %1282 = load i32, ptr @ned1yydebug, align 4, !tbaa !68
  %1283 = sub nsw i64 0, %163
  %1284 = getelementptr inbounds ptr, ptr %63, i64 %1283
  %1285 = shl nsw i64 %1283, 1
  %1286 = add nsw i64 %1285, %62
  %1287 = getelementptr inbounds i8, ptr %2, i64 %1286
  %1288 = getelementptr inbounds %struct.my_yyltype, ptr %64, i64 %1283
  %1289 = icmp eq i32 %1282, 0
  br i1 %1289, label %1291, label %1290

1290:                                             ; preds = %1273
  call fastcc void @_ZL14yy_stack_printPsS_(ptr noundef nonnull %2, ptr noundef nonnull %1287) #26
  br label %1291

1291:                                             ; preds = %1266, %1290, %1273
  %1292 = phi ptr [ %1272, %1266 ], [ %1288, %1290 ], [ %1288, %1273 ]
  %1293 = phi ptr [ %1271, %1266 ], [ %1287, %1290 ], [ %1287, %1273 ]
  %1294 = phi i64 [ %1270, %1266 ], [ %1286, %1290 ], [ %1286, %1273 ]
  %1295 = phi ptr [ %1268, %1266 ], [ %1284, %1290 ], [ %1284, %1273 ]
  %1296 = getelementptr inbounds ptr, ptr %1295, i64 1
  store ptr %1263, ptr %1296, align 8, !tbaa !72
  %1297 = getelementptr inbounds %struct.my_yyltype, ptr %1292, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1297, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !tbaa.struct !77
  %1298 = getelementptr inbounds [242 x i8], ptr @_ZL4yyr1, i64 0, i64 %160
  %1299 = load i8, ptr %1298, align 1, !tbaa !76
  %1300 = zext i8 %1299 to i64
  %1301 = add nsw i64 %1300, -104
  %1302 = getelementptr inbounds [108 x i16], ptr @_ZL7yypgoto, i64 0, i64 %1301
  %1303 = load i16, ptr %1302, align 2, !tbaa !74
  %1304 = sext i16 %1303 to i32
  %1305 = load i16, ptr %1293, align 2, !tbaa !74
  %1306 = sext i16 %1305 to i32
  %1307 = add nsw i32 %1306, %1304
  %1308 = icmp ult i32 %1307, 782
  br i1 %1308, label %1309, label %1318

1309:                                             ; preds = %1291
  %1310 = zext nneg i32 %1307 to i64
  %1311 = getelementptr inbounds [782 x i16], ptr @_ZL7yycheck, i64 0, i64 %1310
  %1312 = load i16, ptr %1311, align 2, !tbaa !74
  %1313 = icmp eq i16 %1312, %1305
  br i1 %1313, label %1314, label %1318

1314:                                             ; preds = %1309
  %1315 = getelementptr inbounds [782 x i16], ptr @_ZL7yytable, i64 0, i64 %1310
  %1316 = load i16, ptr %1315, align 2, !tbaa !74
  %1317 = sext i16 %1316 to i32
  br label %49

1318:                                             ; preds = %1309, %1291
  %1319 = getelementptr inbounds [108 x i16], ptr @_ZL9yydefgoto, i64 0, i64 %1301
  %1320 = load i16, ptr %1319, align 2, !tbaa !74
  %1321 = sext i16 %1320 to i32
  br label %49

1322:                                             ; preds = %128, %151
  %1323 = phi i32 [ %152, %151 ], [ %114, %128 ]
  %1324 = load i32, ptr @ned1yynerrs, align 4, !tbaa !68
  %1325 = add nsw i32 %1324, 1
  store i32 %1325, ptr @ned1yynerrs, align 4, !tbaa !68
  %1326 = load i32, ptr @ned1yychar, align 4, !tbaa !68
  %1327 = call fastcc noundef i64 @_ZL14yysyntax_errorPcii(ptr noundef null, i32 noundef %60, i32 noundef %1326) #26
  %1328 = icmp ugt i64 %1327, 128
  br i1 %1328, label %1329, label %1337

1329:                                             ; preds = %1322
  %1330 = shl i64 %1327, 1
  %1331 = icmp sgt i64 %1327, -1
  %1332 = select i1 %1331, i64 %1330, i64 -1
  %1333 = call noalias ptr @malloc(i64 noundef %1332) #29
  %1334 = icmp eq ptr %1333, null
  %1335 = select i1 %1334, i64 128, i64 %1332
  %1336 = select i1 %1334, ptr %1, ptr %1333
  br label %1337

1337:                                             ; preds = %1329, %1322
  %1338 = phi i64 [ %1335, %1329 ], [ 128, %1322 ]
  %1339 = phi ptr [ %1336, %1329 ], [ %1, %1322 ]
  %1340 = add i64 %1327, -1
  %1341 = icmp ult i64 %1340, %1338
  br i1 %1341, label %1342, label %1345

1342:                                             ; preds = %1337
  %1343 = load i32, ptr @ned1yychar, align 4, !tbaa !68
  %1344 = call fastcc noundef i64 @_ZL14yysyntax_errorPcii(ptr noundef %1339, i32 noundef %60, i32 noundef %1343) #26
  call void @_Z11ned1yyerrorPKc(ptr noundef %1339) #26
  br label %1347

1345:                                             ; preds = %1337
  %1346 = icmp eq i64 %1327, 0
  call void @_Z11ned1yyerrorPKc(ptr noundef nonnull @.str.56) #26
  br i1 %1346, label %1347, label %1365

1347:                                             ; preds = %1342, %1345
  %1348 = icmp eq i64 %62, 0
  br i1 %1348, label %1372, label %1349

1349:                                             ; preds = %1347, %1363
  %1350 = phi i32 [ %1359, %1363 ], [ %60, %1347 ]
  %1351 = phi i64 [ %1356, %1363 ], [ %62, %1347 ]
  %1352 = sext i32 %1350 to i64
  %1353 = getelementptr inbounds [419 x i8], ptr @_ZL6yystos, i64 0, i64 %1352
  %1354 = load i8, ptr %1353, align 1, !tbaa !76
  %1355 = zext i8 %1354 to i32
  call fastcc void @_ZL10yydestructPKciPP10NEDElementP10my_yyltype(ptr noundef nonnull @.str.58, i32 noundef %1355) #26
  %1356 = add nsw i64 %1351, -2
  %1357 = getelementptr inbounds i8, ptr %2, i64 %1356
  %1358 = load i16, ptr %1357, align 2, !tbaa !74
  %1359 = sext i16 %1358 to i32
  %1360 = load i32, ptr @ned1yydebug, align 4, !tbaa !68
  %1361 = icmp eq i32 %1360, 0
  br i1 %1361, label %1363, label %1362

1362:                                             ; preds = %1349
  call fastcc void @_ZL14yy_stack_printPsS_(ptr noundef nonnull %2, ptr noundef nonnull %1357) #26
  br label %1363

1363:                                             ; preds = %1362, %1349
  %1364 = icmp eq i64 %1356, 0
  br i1 %1364, label %1372, label %1349, !llvm.loop !109

1365:                                             ; preds = %49, %1345
  %1366 = phi i64 [ %62, %1345 ], [ %55, %49 ]
  %1367 = phi ptr [ %1339, %1345 ], [ %1, %49 ]
  %1368 = phi i32 [ %1323, %1345 ], [ %53, %49 ]
  %1369 = getelementptr inbounds i8, ptr %2, i64 %1366
  call void @_Z11ned1yyerrorPKc(ptr noundef nonnull @.str.59) #26
  br label %1372

1370:                                             ; preds = %132
  %1371 = getelementptr inbounds i8, ptr %2, i64 %62
  br label %1372

1372:                                             ; preds = %1363, %1347, %1370, %1365
  %1373 = phi ptr [ %1369, %1365 ], [ %1371, %1370 ], [ %2, %1347 ], [ %2, %1363 ]
  %1374 = phi ptr [ %1367, %1365 ], [ %1, %1370 ], [ %1339, %1347 ], [ %1339, %1363 ]
  %1375 = phi i32 [ %1368, %1365 ], [ %114, %1370 ], [ %1323, %1347 ], [ %1323, %1363 ]
  %1376 = phi i32 [ 2, %1365 ], [ 0, %1370 ], [ 1, %1347 ], [ 1, %1363 ]
  %1377 = load i32, ptr @ned1yychar, align 4
  switch i32 %1377, label %1378 [
    i32 -2, label %1379
    i32 0, label %1379
  ]

1378:                                             ; preds = %1372
  call fastcc void @_ZL10yydestructPKciPP10NEDElementP10my_yyltype(ptr noundef nonnull @.str.60, i32 noundef %1375) #26
  br label %1379

1379:                                             ; preds = %1372, %1372, %1378
  %1380 = load i32, ptr @ned1yydebug, align 4, !tbaa !68
  %1381 = icmp eq i32 %1380, 0
  br i1 %1381, label %1383, label %1382

1382:                                             ; preds = %1379
  call fastcc void @_ZL14yy_stack_printPsS_(ptr noundef nonnull %2, ptr noundef nonnull %1373) #26
  br label %1383

1383:                                             ; preds = %1382, %1379
  %1384 = icmp eq ptr %1373, %2
  br i1 %1384, label %1394, label %1385

1385:                                             ; preds = %1383, %1385
  %1386 = phi ptr [ %1392, %1385 ], [ %1373, %1383 ]
  %1387 = load i16, ptr %1386, align 2, !tbaa !74
  %1388 = sext i16 %1387 to i64
  %1389 = getelementptr inbounds [419 x i8], ptr @_ZL6yystos, i64 0, i64 %1388
  %1390 = load i8, ptr %1389, align 1, !tbaa !76
  %1391 = zext i8 %1390 to i32
  call fastcc void @_ZL10yydestructPKciPP10NEDElementP10my_yyltype(ptr noundef nonnull @.str.61, i32 noundef %1391) #26
  %1392 = getelementptr inbounds i16, ptr %1386, i64 -1
  %1393 = icmp eq ptr %1392, %2
  br i1 %1393, label %1394, label %1385, !llvm.loop !111

1394:                                             ; preds = %1385, %1383
  %1395 = icmp eq ptr %1374, %1
  br i1 %1395, label %1397, label %1396

1396:                                             ; preds = %1394
  call void @free(ptr noundef %1374) #28
  br label %1397

1397:                                             ; preds = %1394, %1396
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(i64 6400, ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(i64 1600, ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %1) #23
  ret i32 %1376

1398:                                             ; preds = %672, %581, %304, %697, %605, %328
  %1399 = phi { ptr, i32 } [ %329, %328 ], [ %606, %605 ], [ %698, %697 ], [ %673, %672 ], [ %582, %581 ], [ %305, %304 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(i64 6400, ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(i64 1600, ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %1) #23
  resume { ptr, i32 } %1399

1400:                                             ; preds = %697, %605, %328
  %1401 = landingpad { ptr, i32 }
          catch ptr null
  %1402 = extractvalue { ptr, i32 } %1401, 0
  call void @__clang_call_terminate(ptr %1402) #30
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare noundef i32 @_Z9ned1yylexv() local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline nounwind optsize uwtable
define internal fastcc void @_ZL15yy_symbol_printP8_IO_FILEiPKP10NEDElementPK10my_yyltype(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #4 !prof !67 !PGOFuncName !112 {
  %3 = icmp slt i32 %1, 104
  %4 = zext nneg i32 %1 to i64
  %5 = sext i32 %1 to i64
  %6 = select i1 %3, i64 %5, i64 %4
  %7 = select i1 %3, ptr @.str.65, ptr @.str.66
  %8 = getelementptr inbounds [213 x ptr], ptr @_ZL7yytname, i64 0, i64 %6
  %9 = load ptr, ptr %8, align 8, !tbaa !72
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull %7, ptr noundef %9) #26
  %11 = tail call i64 @fwrite(ptr nonnull @.str.67, i64 2, i64 1, ptr %0)
  %12 = tail call i32 @fputc(i32 41, ptr %0)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: mustprogress nofree noinline nounwind optsize uwtable
define internal fastcc void @_ZL15yy_reduce_printPP10NEDElementP10my_yyltypei(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, i32 noundef %2) unnamed_addr #4 !prof !67 !PGOFuncName !113 {
  %4 = zext nneg i32 %2 to i64
  %5 = getelementptr inbounds [242 x i8], ptr @_ZL4yyr2, i64 0, i64 %4
  %6 = load i8, ptr %5, align 1, !tbaa !76
  %7 = getelementptr inbounds [242 x i16], ptr @_ZL7yyrline, i64 0, i64 %4
  %8 = load i16, ptr %7, align 2, !tbaa !74
  %9 = zext i16 %8 to i64
  %10 = load ptr, ptr @stderr, align 8, !tbaa !72
  %11 = add nsw i32 %2, -1
  %12 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef nonnull @.str.280, i32 noundef %11, i64 noundef %9) #25
  %13 = icmp eq i8 %6, 0
  br i1 %13, label %34, label %14

14:                                               ; preds = %3
  %15 = getelementptr inbounds [242 x i16], ptr @_ZL6yyprhs, i64 0, i64 %4
  %16 = zext i8 %6 to i64
  br label %17

17:                                               ; preds = %14, %17
  %18 = phi i64 [ 0, %14 ], [ %20, %17 ]
  %19 = load ptr, ptr @stderr, align 8, !tbaa !72
  %20 = add nuw nsw i64 %18, 1
  %21 = trunc i64 %20 to i32
  %22 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @.str.281, i32 noundef %21) #25
  %23 = load ptr, ptr @stderr, align 8, !tbaa !72
  %24 = load i16, ptr %15, align 2, !tbaa !74
  %25 = zext i16 %24 to i64
  %26 = add nuw i64 %18, %25
  %27 = and i64 %26, 4294967295
  %28 = getelementptr inbounds [784 x i16], ptr @_ZL5yyrhs, i64 0, i64 %27
  %29 = load i16, ptr %28, align 2, !tbaa !74
  %30 = sext i16 %29 to i32
  tail call fastcc void @_ZL15yy_symbol_printP8_IO_FILEiPKP10NEDElementPK10my_yyltype(ptr noundef %23, i32 noundef %30) #26
  %31 = load ptr, ptr @stderr, align 8, !tbaa !72
  %32 = tail call i32 @fputc(i32 10, ptr %31)
  %33 = icmp eq i64 %20, %16
  br i1 %33, label %34, label %17, !llvm.loop !114

34:                                               ; preds = %17, %3
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9NEDParser18getStoreSourceFlagEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #6 comdat align 2 !prof !115 {
  %2 = getelementptr inbounds %class.NEDParser, ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 1, !tbaa !116, !range !106, !noundef !107
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: optsize
declare noundef ptr @_Z24storeComponentSourceCodeP10NEDElement10my_yyltype(ptr noundef, ptr noundef byval(%struct.my_yyltype) align 8) local_unnamed_addr #3

; Function Attrs: optsize
declare noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN13ImportElement13setImportSpecEPKc(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !67 {
  %3 = getelementptr inbounds %class.ImportElement, ptr %0, i64 0, i32 1
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %1) #26
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_Z8toString10my_yyltype(ptr noundef byval(%struct.my_yyltype) align 8) local_unnamed_addr #3

; Function Attrs: optsize
declare void @_Z10trimQuotes10my_yyltype(ptr dead_on_unwind writable sret(%struct.my_yyltype) align 8, ptr noundef byval(%struct.my_yyltype) align 8) local_unnamed_addr #3

; Function Attrs: optsize
declare void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltype(ptr noundef, ptr noundef byval(%struct.my_yyltype) align 8) local_unnamed_addr #3

; Function Attrs: optsize
declare void @_Z8storePosP10NEDElement10my_yyltype(ptr noundef, ptr noundef byval(%struct.my_yyltype) align 8) local_unnamed_addr #3

; Function Attrs: optsize
declare void @_Z20storeTrailingCommentP10NEDElement10my_yyltype(ptr noundef, ptr noundef byval(%struct.my_yyltype) align 8) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN14ChannelElement7setNameEPKc(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !118 {
  %3 = getelementptr inbounds %class.ChannelElement, ptr %0, i64 0, i32 1
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %1) #26
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN14ExtendsElement7setNameEPKc(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !119 {
  %3 = getelementptr inbounds %class.ExtendsElement, ptr %0, i64 0, i32 1
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %1) #26
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN17ParametersElement13setIsImplicitEb(ptr noundef nonnull align 8 dereferenceable(113) %0, i1 noundef zeroext %1) local_unnamed_addr #6 comdat align 2 !prof !120 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %class.ParametersElement, ptr %0, i64 0, i32 1
  store i8 %3, ptr %4, align 8, !tbaa !121
  ret void
}

; Function Attrs: optsize
declare void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltypeS1_(ptr noundef, ptr noundef byval(%struct.my_yyltype) align 8, ptr noundef byval(%struct.my_yyltype) align 8) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare noundef ptr @_Z12addParameterP10NEDElementPKc10my_yyltype(ptr noundef, ptr noundef, ptr noundef byval(%struct.my_yyltype) align 8) local_unnamed_addr #3

; Function Attrs: optsize
declare void @_Z13addExpressionP10NEDElementPKc10my_yyltypeS0_(ptr noundef, ptr noundef, ptr noundef byval(%struct.my_yyltype) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @_Z8storePosP10NEDElement10my_yyltypeS1_(ptr noundef, ptr noundef byval(%struct.my_yyltype) align 8, ptr noundef byval(%struct.my_yyltype) align 8) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN19SimpleModuleElement7setNameEPKc(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !128 {
  %3 = getelementptr inbounds %class.SimpleModuleElement, ptr %0, i64 0, i32 1
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %1) #26
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN21CompoundModuleElement7setNameEPKc(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !129 {
  %3 = getelementptr inbounds %class.CompoundModuleElement, ptr %0, i64 0, i32 1
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %1) #26
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_Z20addComponentPropertyP10NEDElementPKc(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN14LiteralElement7setTypeEi(ptr noundef nonnull align 8 dereferenceable(216), i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN17DisplayStringUtil30upgradeBackgroundDisplayStringB5cxx11EPKc(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @_Z18opp_parsequotedstrB5cxx11PKc(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef) local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #6 align 2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN14LiteralElement8setValueEPKc(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !130 {
  %3 = getelementptr inbounds %class.LiteralElement, ptr %0, i64 0, i32 4
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %1) #26
  ret void
}

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #8

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN9NEDParser9getErrorsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #6 comdat align 2 !prof !131 {
  %2 = getelementptr inbounds %class.NEDParser, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !132
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN13NEDErrorStore8addErrorEP10NEDElementPKcz(ptr noundef nonnull align 8 dereferenceable(25), ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #9 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #23
  tail call void @_ZSt9terminatev() #30
  unreachable
}

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: optsize
declare noundef ptr @_Z25getOrCreateElementWithTagiP10NEDElement(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare noundef ptr @_Z12addParameterP10NEDElement10my_yyltype(ptr noundef, ptr noundef byval(%struct.my_yyltype) align 8) local_unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN12ParamElement7setTypeEi(ptr noundef nonnull align 8 dereferenceable(185), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN12ParamElement13setIsVolatileEb(ptr noundef nonnull align 8 dereferenceable(185) %0, i1 noundef zeroext %1) local_unnamed_addr #6 comdat align 2 !prof !133 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %class.ParamElement, ptr %0, i64 0, i32 2
  store i8 %3, ptr %4, align 4, !tbaa !134
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_Z7addGateP10NEDElement10my_yyltype(ptr noundef, ptr noundef byval(%struct.my_yyltype) align 8) local_unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11GateElement7setTypeEi(ptr noundef nonnull align 8 dereferenceable(184), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11GateElement11setIsVectorEb(ptr noundef nonnull align 8 dereferenceable(184) %0, i1 noundef zeroext %1) local_unnamed_addr #6 comdat align 2 !prof !136 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %class.GateElement, ptr %0, i64 0, i32 3
  store i8 %3, ptr %4, align 4, !tbaa !137
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN16SubmoduleElement7setNameEPKc(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !139 {
  %3 = getelementptr inbounds %class.SubmoduleElement, ptr %0, i64 0, i32 1
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %1) #26
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN16SubmoduleElement7setTypeEPKc(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !140 {
  %3 = getelementptr inbounds %class.SubmoduleElement, ptr %0, i64 0, i32 2
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %1) #26
  ret void
}

; Function Attrs: optsize
declare void @_Z9addVectorP10NEDElementPKc10my_yyltypeS0_(ptr noundef, ptr noundef, ptr noundef byval(%struct.my_yyltype) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN16SubmoduleElement11setLikeTypeEPKc(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !119 {
  %3 = getelementptr inbounds %class.SubmoduleElement, ptr %0, i64 0, i32 3
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %1) #26
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN16SubmoduleElement12setLikeParamEPKc(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !67 {
  %3 = getelementptr inbounds %class.SubmoduleElement, ptr %0, i64 0, i32 4
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %1) #26
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_Z35createSubstparamsElementIfNotExistsv() local_unnamed_addr #0 !prof !67 {
  %1 = load i8, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 1), align 1, !tbaa !108, !range !106, !noundef !107
  %2 = icmp eq i8 %1, 0
  %3 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 10), align 8
  %4 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 22), align 8
  %5 = select i1 %2, ptr %4, ptr %3
  %6 = load ptr, ptr %5, align 8, !tbaa !88
  %7 = getelementptr inbounds ptr, ptr %6, i64 30
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(112) %5, i32 noundef 14) #26
  store ptr %9, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 13), align 8, !tbaa !95
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %0
  %12 = tail call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 14, ptr noundef nonnull %5) #26
  store ptr %12, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 13), align 8, !tbaa !95
  br label %13

13:                                               ; preds = %11, %0
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN12ParamElement12setIsDefaultEb(ptr noundef nonnull align 8 dereferenceable(185) %0, i1 noundef zeroext %1) local_unnamed_addr #6 comdat align 2 !prof !141 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %class.ParamElement, ptr %0, i64 0, i32 6
  store i8 %3, ptr %4, align 8, !tbaa !142
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_Z11addPropertyP10NEDElementPKc(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare noundef ptr @_Z19createStringLiteral10my_yyltype(ptr noundef byval(%struct.my_yyltype) align 8) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_Z33createGatesizesElementIfNotExistsv() local_unnamed_addr #0 !prof !67 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 22), align 8, !tbaa !94
  %2 = load ptr, ptr %1, align 8, !tbaa !88
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %1, i32 noundef 19) #26
  store ptr %5, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 19), align 8, !tbaa !97
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %0
  %8 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 22), align 8, !tbaa !94
  %9 = tail call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 19, ptr noundef %8) #26
  store ptr %9, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 19), align 8, !tbaa !97
  br label %10

10:                                               ; preds = %7, %0
  ret void
}

; Function Attrs: optsize
declare void @_ZN17DisplayStringUtil29upgradeSubmoduleDisplayStringB5cxx11EPKc(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN18ConnectionsElement19setAllowUnconnectedEb(ptr noundef nonnull align 8 dereferenceable(113) %0, i1 noundef zeroext %1) local_unnamed_addr #6 comdat align 2 !prof !67 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %class.ConnectionsElement, ptr %0, i64 0, i32 1
  store i8 %3, ptr %4, align 8, !tbaa !143
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11LoopElement12setParamNameEPKc(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !145 {
  %3 = getelementptr inbounds %class.LoopElement, ptr %0, i64 0, i32 1
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %1) #26
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_Z17createChannelSpecP10NEDElement(ptr nocapture readnone %0) local_unnamed_addr #0 !prof !67 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 25), align 8, !tbaa !103
  %3 = tail call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 26, ptr noundef %2) #26
  %4 = tail call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 14, ptr noundef %3) #26
  store ptr %4, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 11), align 8, !tbaa !85
  tail call void @_ZN17ParametersElement13setIsImplicitEb(ptr noundef nonnull align 8 dereferenceable(113) %4, i1 noundef zeroext true) #26
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN17DisplayStringUtil30upgradeConnectionDisplayStringB5cxx11EPKc(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN17ConnectionElement17setArrowDirectionEi(ptr noundef nonnull align 8 dereferenceable(400), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_Z29removeRedundantChanSpecParamsv() local_unnamed_addr #0 !prof !67 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 26), align 8, !tbaa !105
  %2 = icmp eq ptr %1, null
  br i1 %2, label %22, label %3

3:                                                ; preds = %0
  %4 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 11), align 8, !tbaa !85
  %5 = load ptr, ptr %4, align 8, !tbaa !88
  %6 = getelementptr inbounds ptr, ptr %5, i64 23
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(112) %4) #26
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %22

10:                                               ; preds = %3
  %11 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 26), align 8, !tbaa !105
  %12 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 11), align 8, !tbaa !85
  %13 = load ptr, ptr %11, align 8, !tbaa !88
  %14 = getelementptr inbounds ptr, ptr %13, i64 29
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(112) %11, ptr noundef %12) #26
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %10
  %19 = load ptr, ptr %16, align 8, !tbaa !88
  %20 = getelementptr inbounds ptr, ptr %19, i64 1
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(112) %16) #28
  br label %22

22:                                               ; preds = %10, %18, %3, %0
  ret void
}

; Function Attrs: optsize
declare void @_Z14swapConnectionP10NEDElement(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN17ConnectionElement12setSrcModuleEPKc(ptr noundef nonnull align 8 dereferenceable(400) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !146 {
  %3 = getelementptr inbounds %class.ConnectionElement, ptr %0, i64 0, i32 1
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %1) #26
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN17ConnectionElement10setSrcGateEPKc(ptr noundef nonnull align 8 dereferenceable(400) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !146 {
  %3 = getelementptr inbounds %class.ConnectionElement, ptr %0, i64 0, i32 3
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %1) #26
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN17ConnectionElement18setSrcGatePlusplusEb(ptr noundef nonnull align 8 dereferenceable(400) %0, i1 noundef zeroext %1) local_unnamed_addr #6 comdat align 2 !prof !115 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %class.ConnectionElement, ptr %0, i64 0, i32 4
  store i8 %3, ptr %4, align 8, !tbaa !147
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN17ConnectionElement13setDestModuleEPKc(ptr noundef nonnull align 8 dereferenceable(400) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !140 {
  %3 = getelementptr inbounds %class.ConnectionElement, ptr %0, i64 0, i32 7
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %1) #26
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN17ConnectionElement11setDestGateEPKc(ptr noundef nonnull align 8 dereferenceable(400) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !146 {
  %3 = getelementptr inbounds %class.ConnectionElement, ptr %0, i64 0, i32 9
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %1) #26
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN17ConnectionElement19setDestGatePlusplusEb(ptr noundef nonnull align 8 dereferenceable(400) %0, i1 noundef zeroext %1) local_unnamed_addr #6 comdat align 2 !prof !149 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %class.ConnectionElement, ptr %0, i64 0, i32 10
  store i8 %3, ptr %4, align 8, !tbaa !150
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN18ChannelSpecElement7setTypeEPKc(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !151 {
  %3 = getelementptr inbounds %class.ChannelSpecElement, ptr %0, i64 0, i32 1
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %1) #26
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_Z20setIsNetworkPropertyP10NEDElement(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9NEDParser23getParseExpressionsFlagEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #6 comdat align 2 !prof !152 {
  %2 = load i8, ptr %0, align 8, !tbaa !153, !range !106, !noundef !107
  %3 = icmp ne i8 %2, 0
  ret i1 %3
}

; Function Attrs: optsize
declare noundef ptr @_Z16createExpressionP10NEDElement(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare noundef ptr @_Z14createFunctionPKcP10NEDElementS2_S2_S2_S2_S2_S2_S2_S2_S2_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare noundef ptr @_Z14createOperatorPKcP10NEDElementS2_S2_(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare noundef ptr @_Z10unaryMinusP10NEDElement(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare noundef ptr @_Z11createIdent10my_yyltype(ptr noundef byval(%struct.my_yyltype) align 8) local_unnamed_addr #3

; Function Attrs: optsize
declare noundef ptr @_Z13createLiterali10my_yyltypeS_(i32 noundef, ptr noundef byval(%struct.my_yyltype) align 8, ptr noundef byval(%struct.my_yyltype) align 8) local_unnamed_addr #3

; Function Attrs: optsize
declare noundef ptr @_Z21createQuantityLiteral10my_yyltype(ptr noundef byval(%struct.my_yyltype) align 8) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline nounwind optsize uwtable
define internal fastcc void @_ZL14yy_stack_printPsS_(ptr noundef readonly %0, ptr noundef readnone %1) unnamed_addr #4 !prof !67 !PGOFuncName !154 {
  %3 = load ptr, ptr @stderr, align 8, !tbaa !72
  %4 = tail call i64 @fwrite(ptr nonnull @.str.282, i64 9, i64 1, ptr %3) #24
  %5 = icmp ugt ptr %0, %1
  br i1 %5, label %14, label %6

6:                                                ; preds = %2, %6
  %7 = phi ptr [ %12, %6 ], [ %0, %2 ]
  %8 = load ptr, ptr @stderr, align 8, !tbaa !72
  %9 = load i16, ptr %7, align 2, !tbaa !74
  %10 = sext i16 %9 to i32
  %11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.283, i32 noundef %10) #25
  %12 = getelementptr inbounds i16, ptr %7, i64 1
  %13 = icmp ugt ptr %12, %1
  br i1 %13, label %14, label %6, !llvm.loop !155

14:                                               ; preds = %6, %2
  %15 = load ptr, ptr @stderr, align 8, !tbaa !72
  %16 = tail call i32 @fputc(i32 10, ptr %15)
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef i64 @_ZL14yysyntax_errorPcii(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #10 !prof !67 !PGOFuncName !156 {
  %4 = alloca [5 x ptr], align 16
  %5 = alloca [60 x i8], align 16
  %6 = sext i32 %1 to i64
  %7 = getelementptr inbounds [419 x i16], ptr @_ZL6yypact, i64 0, i64 %6
  %8 = load i16, ptr %7, align 2, !tbaa !74
  %9 = sext i16 %8 to i32
  %10 = icmp sgt i16 %8, -341
  br i1 %10, label %11, label %109

11:                                               ; preds = %3
  %12 = icmp ult i32 %2, 343
  br i1 %12, label %13, label %18

13:                                               ; preds = %11
  %14 = zext nneg i32 %2 to i64
  %15 = getelementptr inbounds [343 x i8], ptr @_ZL11yytranslate, i64 0, i64 %14
  %16 = load i8, ptr %15, align 1, !tbaa !76
  %17 = zext i8 %16 to i64
  br label %18

18:                                               ; preds = %11, %13
  %19 = phi i64 [ %17, %13 ], [ 2, %11 ]
  %20 = getelementptr inbounds [213 x ptr], ptr @_ZL7yytname, i64 0, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !72
  %22 = tail call fastcc noundef i64 @_ZL9yytnamerrPcPKc(ptr noundef null, ptr noundef %21) #26
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %5) #23
  %23 = icmp slt i16 %8, 0
  %24 = sub nsw i32 0, %9
  %25 = select i1 %23, i32 %24, i32 0
  %26 = sub nsw i32 782, %9
  %27 = tail call i32 @llvm.smin.i32(i32 %26, i32 104)
  store ptr %21, ptr %4, align 16, !tbaa !72
  %28 = getelementptr inbounds i8, ptr %5, i64 27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %5, ptr noundef nonnull align 16 dereferenceable(28) @_ZZL14yysyntax_errorPciiE12yyunexpected, i64 28, i1 false) #28
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
  %43 = load i16, ptr %42, align 2, !tbaa !74
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
  store i8 0, ptr %28, align 1, !tbaa !76
  br label %72

52:                                               ; preds = %49
  %53 = getelementptr inbounds [213 x ptr], ptr @_ZL7yytname, i64 0, i64 %35
  %54 = load ptr, ptr %53, align 8, !tbaa !72
  %55 = add nsw i32 %36, 1
  %56 = sext i32 %36 to i64
  %57 = getelementptr inbounds [5 x ptr], ptr %4, i64 0, i64 %56
  store ptr %54, ptr %57, align 8, !tbaa !72
  %58 = call fastcc noundef i64 @_ZL9yytnamerrPcPKc(ptr noundef null, ptr noundef %54) #26
  %59 = add i64 %58, %37
  %60 = icmp ult i64 %59, %37
  %61 = zext i1 %60 to i32
  %62 = or i32 %40, %61
  %63 = call ptr @stpcpy(ptr noundef %39, ptr noundef %38) #28
  br label %64

64:                                               ; preds = %34, %52
  %65 = phi i32 [ %62, %52 ], [ %40, %34 ]
  %66 = phi ptr [ %63, %52 ], [ %39, %34 ]
  %67 = phi ptr [ @_ZZL14yysyntax_errorPciiE4yyor, %52 ], [ %38, %34 ]
  %68 = phi i64 [ %59, %52 ], [ %37, %34 ]
  %69 = phi i32 [ %55, %52 ], [ %36, %34 ]
  %70 = add nsw i64 %35, 1
  %71 = icmp slt i64 %70, %33
  br i1 %71, label %34, label %72, !llvm.loop !157

72:                                               ; preds = %64, %18, %51
  %73 = phi i32 [ %40, %51 ], [ 0, %18 ], [ %65, %64 ]
  %74 = phi i64 [ %22, %51 ], [ %22, %18 ], [ %68, %64 ]
  %75 = phi i32 [ 1, %51 ], [ 1, %18 ], [ %69, %64 ]
  %76 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #27
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
  %88 = load i8, ptr %85, align 1, !tbaa !76
  store i8 %88, ptr %86, align 1, !tbaa !76
  switch i8 %88, label %101 [
    i8 0, label %107
    i8 37, label %89
  ]

89:                                               ; preds = %84
  %90 = getelementptr inbounds i8, ptr %85, i64 1
  %91 = load i8, ptr %90, align 1, !tbaa !76
  %92 = icmp eq i8 %91, 115
  %93 = icmp slt i32 %87, %75
  %94 = select i1 %92, i1 %93, i1 false
  br i1 %94, label %95, label %101

95:                                               ; preds = %89
  %96 = add nsw i32 %87, 1
  %97 = sext i32 %87 to i64
  %98 = getelementptr inbounds [5 x ptr], ptr %4, i64 0, i64 %97
  %99 = load ptr, ptr %98, align 8, !tbaa !72
  %100 = call fastcc noundef i64 @_ZL9yytnamerrPcPKc(ptr noundef nonnull %86, ptr noundef %99) #26
  br label %101

101:                                              ; preds = %89, %84, %95
  %102 = phi i64 [ %100, %95 ], [ 1, %84 ], [ 1, %89 ]
  %103 = phi i64 [ 2, %95 ], [ 1, %84 ], [ 1, %89 ]
  %104 = phi i32 [ %96, %95 ], [ %87, %84 ], [ %87, %89 ]
  %105 = getelementptr inbounds i8, ptr %86, i64 %102
  %106 = getelementptr inbounds i8, ptr %85, i64 %103
  br label %84, !llvm.loop !158

107:                                              ; preds = %84, %82, %72
  %108 = phi i64 [ -1, %72 ], [ %77, %82 ], [ %77, %84 ]
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #23
  br label %109

109:                                              ; preds = %3, %107
  %110 = phi i64 [ %108, %107 ], [ 0, %3 ]
  ret i64 %110
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_Z11ned1yyerrorPKc(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !67 {
  %2 = alloca [250 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 250, ptr nonnull %2) #23
  %3 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %0) #28
  %4 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #27
  %5 = add i64 %4, -1
  %6 = getelementptr inbounds [250 x i8], ptr %2, i64 0, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !76
  %8 = icmp eq i8 %7, 10
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i8 0, ptr %6, align 1, !tbaa !76
  br label %10

10:                                               ; preds = %9, %1
  %11 = load ptr, ptr @np, align 8, !tbaa !72
  %12 = load i32, ptr @pos, align 4, !tbaa !159
  call void @_ZN9NEDParser5errorEPKci(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull %2, i32 noundef %12) #26
  call void @llvm.lifetime.end.p0(i64 250, ptr nonnull %2) #23
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize uwtable
define internal fastcc void @_ZL10yydestructPKciPP10NEDElementP10my_yyltype(ptr noundef %0, i32 noundef %1) unnamed_addr #4 !prof !67 !PGOFuncName !161 {
  %3 = load i32, ptr @ned1yydebug, align 4, !tbaa !68
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %13, label %5

5:                                                ; preds = %2
  %6 = icmp eq ptr %0, null
  %7 = select i1 %6, ptr @.str.284, ptr %0
  %8 = load ptr, ptr @stderr, align 8, !tbaa !72
  %9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.4, ptr noundef nonnull %7) #25
  %10 = load ptr, ptr @stderr, align 8, !tbaa !72
  tail call fastcc void @_ZL15yy_symbol_printP8_IO_FILEiPKP10NEDElementPK10my_yyltype(ptr noundef %10, i32 noundef %1) #26
  %11 = load ptr, ptr @stderr, align 8, !tbaa !72
  %12 = tail call i32 @fputc(i32 10, ptr %11)
  br label %13

13:                                               ; preds = %2, %5
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_Z11doParseNED1P9NEDParserPKc(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 !prof !67 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %struct.my_yyltype, align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = alloca %"class.std::allocator", align 1
  store i32 0, ptr @ned1yydebug, align 4, !tbaa !68
  tail call fastcc void @_ZZ11doParseNED1P9NEDParserPKcEN5GuardC2ES0_(ptr noundef %0) #26
  store i32 0, ptr getelementptr inbounds (%struct.LineColumn, ptr @pos, i64 0, i32 1), align 4, !tbaa !162
  store i32 1, ptr @pos, align 4, !tbaa !159
  %8 = load i64, ptr @pos, align 4
  store i64 %8, ptr @prevpos, align 4
  store ptr null, ptr @ned1yyin, align 8, !tbaa !72
  %9 = load ptr, ptr @stderr, align 8, !tbaa !72
  store ptr %9, ptr @ned1yyout, align 8, !tbaa !72
  %10 = invoke noundef ptr @_Z18ned1yy_scan_stringPKc(ptr noundef %1) #26
          to label %11 unwind label %16

11:                                               ; preds = %2
  %12 = icmp eq ptr %10, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %11
  %14 = load ptr, ptr @np, align 8, !tbaa !72
  %15 = tail call noundef ptr @_ZN9NEDParser9getErrorsEv(ptr noundef nonnull align 8 dereferenceable(32) %14) #26
  invoke void (ptr, ptr, ptr, ...) @_ZN13NEDErrorStore8addErrorEPKcS1_z(ptr noundef nonnull align 8 dereferenceable(25) %15, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.62) #26
          to label %87 unwind label %16

16:                                               ; preds = %37, %33, %28, %26, %18, %13, %2
  %17 = landingpad { ptr, i32 }
          cleanup
  br label %89

18:                                               ; preds = %11
  tail call fastcc void @_ZL16resetParserStatev() #26
  %19 = invoke noalias noundef nonnull dereferenceable(176) ptr @_Znwm(i64 noundef 176) #31
          to label %20 unwind label %16

20:                                               ; preds = %18
  invoke void @_ZN14NedFileElementC1Ev(ptr noundef nonnull align 8 dereferenceable(176) %19) #26
          to label %21 unwind label %39

21:                                               ; preds = %20
  store ptr %19, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 5), align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #23
  %22 = load ptr, ptr @np, align 8, !tbaa !72
  %23 = tail call noundef ptr @_ZN9NEDParser11getFileNameEv(ptr noundef nonnull align 8 dereferenceable(32) %22) #26
  invoke void @_Z16slashifyFilenameB5cxx11PKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef %23) #26
          to label %24 unwind label %41

24:                                               ; preds = %21
  %25 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %3) #28
  invoke void @_ZN14NedFileElement11setFilenameEPKc(ptr noundef nonnull align 8 dereferenceable(176) %19, ptr noundef %25) #26
          to label %26 unwind label %43

26:                                               ; preds = %24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #28
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #23
  %27 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 5), align 8, !tbaa !82
  invoke void @_ZN14NedFileElement10setVersionEPKc(ptr noundef nonnull align 8 dereferenceable(176) %27, ptr noundef nonnull @.str.63) #26
          to label %28 unwind label %16

28:                                               ; preds = %26
  %29 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 5), align 8, !tbaa !82
  invoke void @_Z16storeFileCommentP10NEDElement(ptr noundef %29) #26
          to label %30 unwind label %16

30:                                               ; preds = %28
  %31 = load ptr, ptr @np, align 8, !tbaa !72
  %32 = call noundef zeroext i1 @_ZN9NEDParser18getStoreSourceFlagEv(ptr noundef nonnull align 8 dereferenceable(32) %31) #26
  br i1 %32, label %33, label %47

33:                                               ; preds = %30
  %34 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 5), align 8, !tbaa !82
  %35 = load ptr, ptr @np, align 8, !tbaa !72
  %36 = call noundef ptr @_ZN9NEDParser9getSourceEv(ptr noundef nonnull align 8 dereferenceable(32) %35) #26
  invoke void @_ZN13NEDFileBuffer14getFullTextPosEv(ptr dead_on_unwind nonnull writable sret(%struct.my_yyltype) align 8 %4, ptr noundef nonnull align 8 dereferenceable(52) %36) #26
          to label %37 unwind label %16

37:                                               ; preds = %33
  %38 = invoke noundef ptr @_Z15storeSourceCodeP10NEDElement10my_yyltype(ptr noundef %34, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %4) #26
          to label %47 unwind label %16

39:                                               ; preds = %20
  %40 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %19) #32
  br label %89

41:                                               ; preds = %21
  %42 = landingpad { ptr, i32 }
          cleanup
  br label %45

43:                                               ; preds = %24
  %44 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #28
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi { ptr, i32 } [ %44, %43 ], [ %42, %41 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #23
  br label %89

47:                                               ; preds = %37, %30
  %48 = invoke noundef i32 @_Z11ned1yyparsev() #26
          to label %49 unwind label %50

49:                                               ; preds = %47
  invoke void @_Z20ned1yy_delete_bufferP15yy_buffer_state(ptr noundef nonnull %10) #26
          to label %83 unwind label %85

50:                                               ; preds = %47
  %51 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12NEDException
  %52 = extractvalue { ptr, i32 } %51, 1
  %53 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTI12NEDException) #23
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %89

55:                                               ; preds = %50
  %56 = extractvalue { ptr, i32 } %51, 0
  %57 = call ptr @__cxa_begin_catch(ptr %56) #23
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #23
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #23
  call void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %7) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.64, ptr noundef nonnull align 1 dereferenceable(1) %7) #26
          to label %58 unwind label %67

58:                                               ; preds = %55
  %59 = load ptr, ptr %57, align 8, !tbaa !88
  %60 = getelementptr inbounds ptr, ptr %59, i64 2
  %61 = load ptr, ptr %60, align 8
  %62 = call noundef ptr %61(ptr noundef nonnull align 8 dereferenceable(48) %57) #28
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef %62) #26
          to label %63 unwind label %69

63:                                               ; preds = %58
  %64 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #28
  invoke void @_Z11ned1yyerrorPKc(ptr noundef %64) #26
          to label %65 unwind label %71

65:                                               ; preds = %63
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #28
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #28
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %7) #28
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #23
  invoke void @_Z20ned1yy_delete_bufferP15yy_buffer_state(ptr noundef nonnull %10) #26
          to label %66 unwind label %77

66:                                               ; preds = %65
  invoke void @__cxa_end_catch()
          to label %87 unwind label %79

67:                                               ; preds = %55
  %68 = landingpad { ptr, i32 }
          cleanup
  br label %75

69:                                               ; preds = %58
  %70 = landingpad { ptr, i32 }
          cleanup
  br label %73

71:                                               ; preds = %63
  %72 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #28
  br label %73

73:                                               ; preds = %71, %69
  %74 = phi { ptr, i32 } [ %72, %71 ], [ %70, %69 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #28
  br label %75

75:                                               ; preds = %73, %67
  %76 = phi { ptr, i32 } [ %74, %73 ], [ %68, %67 ]
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %7) #28
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #23
  br label %81

77:                                               ; preds = %65
  %78 = landingpad { ptr, i32 }
          cleanup
  br label %81

79:                                               ; preds = %66
  %80 = landingpad { ptr, i32 }
          cleanup
  br label %89

81:                                               ; preds = %77, %75
  %82 = phi { ptr, i32 } [ %78, %77 ], [ %76, %75 ]
  invoke void @__cxa_end_catch()
          to label %89 unwind label %91

83:                                               ; preds = %49
  %84 = load ptr, ptr getelementptr inbounds (%struct.NED1ParserState, ptr @_ZL2ps, i64 0, i32 5), align 8, !tbaa !82
  br label %87

85:                                               ; preds = %49
  %86 = landingpad { ptr, i32 }
          cleanup
  br label %89

87:                                               ; preds = %83, %66, %13
  %88 = phi ptr [ null, %13 ], [ %84, %83 ], [ null, %66 ]
  call fastcc void @_ZZ11doParseNED1P9NEDParserPKcEN5GuardD2Ev() #28
  ret ptr %88

89:                                               ; preds = %79, %81, %50, %85, %45, %39, %16
  %90 = phi { ptr, i32 } [ %17, %16 ], [ %46, %45 ], [ %40, %39 ], [ %86, %85 ], [ %51, %50 ], [ %80, %79 ], [ %82, %81 ]
  call fastcc void @_ZZ11doParseNED1P9NEDParserPKcEN5GuardD2Ev() #28
  resume { ptr, i32 } %90

91:                                               ; preds = %81
  %92 = landingpad { ptr, i32 }
          catch ptr null
  %93 = extractvalue { ptr, i32 } %92, 0
  call void @__clang_call_terminate(ptr %93) #30
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal fastcc void @_ZZ11doParseNED1P9NEDParserPKcEN5GuardC2ES0_(ptr noundef %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !67 !PGOFuncName !163 {
  %2 = load ptr, ptr @np, align 8, !tbaa !72
  %3 = icmp eq ptr %2, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @__cxa_allocate_exception(i64 48) #23
  invoke void (ptr, ptr, ...) @_ZN17opp_runtime_errorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull @.str.285) #26
          to label %6 unwind label %7

6:                                                ; preds = %4
  tail call void @__cxa_throw(ptr nonnull %5, ptr nonnull @_ZTI17opp_runtime_error, ptr nonnull @_ZN17opp_runtime_errorD2Ev) #33
  unreachable

7:                                                ; preds = %4
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %5) #23
  resume { ptr, i32 } %8

9:                                                ; preds = %1
  store ptr %0, ptr @np, align 8, !tbaa !72
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_Z18ned1yy_scan_stringPKc(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN13NEDErrorStore8addErrorEPKcS1_z(ptr noundef nonnull align 8 dereferenceable(25), ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc void @_ZL16resetParserStatev() unnamed_addr #13 !prof !67 !PGOFuncName !164 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) @_ZL2ps, i8 0, i64 200, i1 false)
  ret void
}

; Function Attrs: nobuiltin optsize allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #14

; Function Attrs: optsize
declare void @_ZN14NedFileElementC1Ev(ptr noundef nonnull align 8 dereferenceable(176)) unnamed_addr #3

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #15

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN14NedFileElement11setFilenameEPKc(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !131 {
  %3 = getelementptr inbounds %class.NedFileElement, ptr %0, i64 0, i32 1
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %1) #26
  ret void
}

; Function Attrs: optsize
declare void @_Z16slashifyFilenameB5cxx11PKc(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN9NEDParser11getFileNameEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #6 comdat align 2 !prof !165 {
  %2 = getelementptr inbounds %class.NEDParser, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !166
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN14NedFileElement10setVersionEPKc(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !131 {
  %3 = getelementptr inbounds %class.NedFileElement, ptr %0, i64 0, i32 2
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %1) #26
  ret void
}

; Function Attrs: optsize
declare void @_Z16storeFileCommentP10NEDElement(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare noundef ptr @_Z15storeSourceCodeP10NEDElement10my_yyltype(ptr noundef, ptr noundef byval(%struct.my_yyltype) align 8) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN9NEDParser9getSourceEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #6 comdat align 2 !prof !167 {
  %2 = getelementptr inbounds %class.NEDParser, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !168
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN13NEDFileBuffer14getFullTextPosEv(ptr dead_on_unwind writable sret(%struct.my_yyltype) align 8, ptr noundef nonnull align 8 dereferenceable(52)) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !169 {
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) #26
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %4) #28
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #6 align 2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = tail call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #26
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC2EPcRKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %2) #26
  %5 = icmp eq ptr %1, null
  br i1 %5, label %6, label %10

6:                                                ; preds = %3
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.286) #34
          to label %7 unwind label %8

7:                                                ; preds = %6
  unreachable

8:                                                ; preds = %6
  %9 = landingpad { ptr, i32 }
          cleanup
  br label %16

10:                                               ; preds = %3
  %11 = tail call noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef nonnull %1) #26
  %12 = getelementptr inbounds i8, ptr %1, i64 %11
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr noundef nonnull %12) #26
          to label %13 unwind label %14

13:                                               ; preds = %10
  ret void

14:                                               ; preds = %10
  %15 = landingpad { ptr, i32 }
          cleanup
  br label %16

16:                                               ; preds = %14, %8
  %17 = phi { ptr, i32 } [ %9, %8 ], [ %15, %14 ]
  tail call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #28
  resume { ptr, i32 } %17
}

; Function Attrs: optsize
declare void @_Z20ned1yy_delete_bufferP15yy_buffer_state(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc void @_ZZ11doParseNED1P9NEDParserPKcEN5GuardD2Ev() unnamed_addr #13 align 2 !prof !67 !PGOFuncName !170 {
  store ptr null, ptr @np, align 8, !tbaa !72
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #16

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @_ZN9NEDParser5errorEPKci(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #0 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef %0) local_unnamed_addr #6 comdat align 2 {
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #28
  ret i64 %2
}

; Function Attrs: mustprogress nofree noinline nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef i64 @_ZL9yytnamerrPcPKc(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #17 !prof !67 !PGOFuncName !171 {
  %3 = load i8, ptr %1, align 1, !tbaa !76
  %4 = icmp eq i8 %3, 34
  br i1 %4, label %5, label %25

5:                                                ; preds = %2
  %6 = icmp eq ptr %0, null
  br label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %21, %20 ], [ 0, %5 ]
  %9 = phi ptr [ %17, %20 ], [ %1, %5 ]
  %10 = getelementptr inbounds i8, ptr %9, i64 1
  %11 = load i8, ptr %10, align 1, !tbaa !76
  switch i8 %11, label %16 [
    i8 39, label %25
    i8 44, label %25
    i8 92, label %12
    i8 34, label %22
  ]

12:                                               ; preds = %7
  %13 = getelementptr inbounds i8, ptr %9, i64 2
  %14 = load i8, ptr %13, align 1, !tbaa !76
  %15 = icmp eq i8 %14, 92
  br i1 %15, label %16, label %25

16:                                               ; preds = %12, %7
  %17 = phi ptr [ %10, %7 ], [ %13, %12 ]
  br i1 %6, label %20, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds i8, ptr %0, i64 %8
  store i8 %11, ptr %19, align 1, !tbaa !76
  br label %20

20:                                               ; preds = %18, %16
  %21 = add i64 %8, 1
  br label %7, !llvm.loop !172

22:                                               ; preds = %7
  br i1 %6, label %34, label %23

23:                                               ; preds = %22
  %24 = getelementptr inbounds i8, ptr %0, i64 %8
  store i8 0, ptr %24, align 1, !tbaa !76
  br label %34

25:                                               ; preds = %7, %7, %12, %2
  %26 = icmp eq ptr %0, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %25
  %28 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #27
  br label %34

29:                                               ; preds = %25
  %30 = tail call ptr @stpcpy(ptr noundef nonnull %0, ptr noundef nonnull %1) #28
  %31 = ptrtoint ptr %30 to i64
  %32 = ptrtoint ptr %0 to i64
  %33 = sub i64 %31, %32
  br label %34

34:                                               ; preds = %23, %22, %29, %27
  %35 = phi i64 [ %33, %29 ], [ %28, %27 ], [ %8, %22 ], [ %8, %23 ]
  ret i64 %35
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @stpcpy(ptr noalias noundef writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #16

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: optsize
declare void @_ZN17opp_runtime_errorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, ...) unnamed_addr #3

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN17opp_runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 !prof !67 {
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTV17opp_runtime_error, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !88
  %2 = getelementptr inbounds %class.opp_runtime_error, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #28
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #28
  ret void
}

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #18

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN17opp_runtime_errorD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 {
  tail call void @_ZN17opp_runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #28
  tail call void @_ZdlPv(ptr noundef nonnull %0) #32
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK17opp_runtime_error4whatEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 !prof !67 {
  %2 = getelementptr inbounds %class.opp_runtime_error, ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #28
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6 align 2

; Function Attrs: mustprogress noinline optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #0 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #6 comdat align 2 !prof !173 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC2EPcRKS3_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #6 align 2

; Function Attrs: noreturn optsize
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #19

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !174 {
  %4 = alloca i64, align 8
  %5 = alloca %struct._Guard, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #23
  %6 = tail call noundef i64 @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_(ptr noundef %1, ptr noundef %2) #26
  store i64 %6, ptr %4, align 8, !tbaa !175
  %7 = icmp ugt i64 %6, 15
  br i1 %7, label %8, label %11, !prof !176

8:                                                ; preds = %3
  %9 = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0) #26
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %9) #26
  %10 = load i64, ptr %4, align 8, !tbaa !175
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10) #26
  br label %13

11:                                               ; preds = %3
  %12 = tail call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #26
  br label %13

13:                                               ; preds = %11, %8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #23
  call void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %0) #26
  %14 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #26
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_(ptr noundef %14, ptr noundef %1, ptr noundef %2) #28
  store ptr null, ptr %5, align 8, !tbaa !177
  %15 = load i64, ptr %4, align 8, !tbaa !175
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %15) #26
          to label %16 unwind label %17

16:                                               ; preds = %13
  call void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #23
  ret void

17:                                               ; preds = %13
  %18 = landingpad { ptr, i32 }
          cleanup
  call void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #23
  resume { ptr, i32 } %18
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !174 {
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !72
  call void @_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %3) #26
  %4 = call noundef i64 @_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) #26
  ret i64 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #6 align 2

; Function Attrs: optsize
declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #6 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #6 comdat align 2 !prof !174 {
  store ptr %1, ptr %0, align 8, !tbaa !177
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6 align 2

; Function Attrs: mustprogress noinline optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #0 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !174 {
  %2 = load ptr, ptr %0, align 8, !tbaa !177
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !179

4:                                                ; preds = %1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #26
          to label %5 unwind label %6

5:                                                ; preds = %4, %1
  ret void

6:                                                ; preds = %4
  %7 = landingpad { ptr, i32 }
          catch ptr null
  %8 = extractvalue { ptr, i32 } %7, 0
  tail call void @__clang_call_terminate(ptr %8) #30
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 comdat !prof !174 {
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %0 to i64
  %5 = sub i64 %3, %4
  ret i64 %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #6 comdat !prof !174 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #0 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #6 align 2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #20

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #21

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #22

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nosync nounwind memory(none) }
attributes #9 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nobuiltin optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree noinline nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree nounwind }
attributes #21 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #23 = { nounwind }
attributes #24 = { cold }
attributes #25 = { cold optsize }
attributes #26 = { optsize }
attributes #27 = { nounwind optsize willreturn memory(read) }
attributes #28 = { nounwind optsize }
attributes #29 = { nounwind optsize allocsize(0) }
attributes #30 = { noreturn nounwind }
attributes #31 = { builtin optsize allocsize(0) }
attributes #32 = { builtin nounwind optsize }
attributes #33 = { noreturn }
attributes #34 = { noreturn optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!66}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 349786412141}
!4 = !{!"MaxCount", i64 61624744013}
!5 = !{!"MaxInternalCount", i64 9097682171}
!6 = !{!"MaxFunctionCount", i64 61624744013}
!7 = !{!"NumCounts", i64 22816}
!8 = !{!"NumFunctions", i64 10273}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 61624744013, i32 1}
!14 = !{i32 100000, i64 61624744013, i32 1}
!15 = !{i32 200000, i64 57319387120, i32 2}
!16 = !{i32 300000, i64 57319387120, i32 2}
!17 = !{i32 400000, i64 48398671114, i32 3}
!18 = !{i32 500000, i64 21674314260, i32 4}
!19 = !{i32 600000, i64 13210012293, i32 6}
!20 = !{i32 700000, i64 9097682171, i32 9}
!21 = !{i32 800000, i64 1685490447, i32 17}
!22 = !{i32 900000, i64 467312602, i32 72}
!23 = !{i32 950000, i64 202351116, i32 133}
!24 = !{i32 990000, i64 73590684, i32 225}
!25 = !{i32 999000, i64 3128957, i32 339}
!26 = !{i32 999900, i64 100587, i32 1069}
!27 = !{i32 999990, i64 10550, i32 1784}
!28 = !{i32 999999, i64 1105, i32 2320}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65}
!35 = !{ptr @_ZN14ChannelElement7setNameEPKc, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc, i64 4}
!36 = !{ptr @_ZN14ExtendsElement7setNameEPKc, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc, i64 1}
!37 = !{ptr @_ZN19SimpleModuleElement7setNameEPKc, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc, i64 9}
!38 = !{ptr @_ZN21CompoundModuleElement7setNameEPKc, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc, i64 6}
!39 = !{ptr @_ZN14LiteralElement8setValueEPKc, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc, i64 148}
!40 = !{ptr @_ZN16SubmoduleElement7setNameEPKc, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc, i64 42}
!41 = !{ptr @_ZN16SubmoduleElement7setTypeEPKc, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc, i64 41}
!42 = !{ptr @_ZN16SubmoduleElement11setLikeTypeEPKc, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc, i64 1}
!43 = !{ptr @_ZN11LoopElement12setParamNameEPKc, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc, i64 26}
!44 = !{ptr @_ZN17ConnectionElement12setSrcModuleEPKc, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc, i64 46}
!45 = !{ptr @_ZN17ConnectionElement10setSrcGateEPKc, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc, i64 46}
!46 = !{ptr @_ZN17ConnectionElement13setDestModuleEPKc, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc, i64 41}
!47 = !{ptr @_ZN17ConnectionElement11setDestGateEPKc, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc, i64 46}
!48 = !{ptr @_ZN18ChannelSpecElement7setTypeEPKc, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc, i64 31}
!49 = !{ptr @_ZN14NedFileElement11setFilenameEPKc, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc, i64 14}
!50 = !{ptr @_ZN14NedFileElement10setVersionEPKc, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc, i64 14}
!51 = !{ptr @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc, i64 2107073}
!52 = !{ptr @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_, i64 2107073}
!53 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_, i64 1889443}
!54 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm, i64 1257662}
!55 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc, i64 1257662}
!56 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm, i64 1257662}
!57 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv, i64 631781}
!58 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_, i64 1889443}
!59 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv, i64 1889443}
!60 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_, i64 1889443}
!61 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm, i64 1889443}
!62 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev, i64 1889443}
!63 = !{ptr @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_, ptr @_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_, i64 1889443}
!64 = !{ptr @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_, ptr @_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag, i64 1889443}
!65 = !{ptr @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv, i64 1}
!66 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!67 = !{!"function_entry_count", i64 0}
!68 = !{!69, !69, i64 0}
!69 = !{!"int", !70, i64 0}
!70 = !{!"omnipotent char", !71, i64 0}
!71 = !{!"Simple C++ TBAA"}
!72 = !{!73, !73, i64 0}
!73 = !{!"any pointer", !70, i64 0}
!74 = !{!75, !75, i64 0}
!75 = !{!"short", !70, i64 0}
!76 = !{!70, !70, i64 0}
!77 = !{i64 0, i64 4, !68, i64 4, i64 4, !68, i64 8, i64 4, !68, i64 12, i64 4, !68, i64 16, i64 4, !68, i64 24, i64 8, !72}
!78 = !{!79, !73, i64 40}
!79 = !{!"_ZTS15NED1ParserState", !80, i64 0, !80, i64 1, !80, i64 2, !80, i64 3, !80, i64 4, !73, i64 8, !73, i64 16, !73, i64 24, !73, i64 32, !73, i64 40, !73, i64 48, !73, i64 56, !73, i64 64, !73, i64 72, !73, i64 80, !73, i64 88, !73, i64 96, !73, i64 104, !73, i64 112, !73, i64 120, !73, i64 128, !73, i64 136, !73, i64 144, !73, i64 152, !73, i64 160, !73, i64 168, !73, i64 176, !73, i64 184, !73, i64 192}
!80 = !{!"bool", !70, i64 0}
!81 = !{!79, !73, i64 48}
!82 = !{!79, !73, i64 8}
!83 = !{!79, !73, i64 24}
!84 = !{!79, !73, i64 32}
!85 = !{!79, !73, i64 56}
!86 = !{!79, !73, i64 64}
!87 = !{!79, !73, i64 88}
!88 = !{!89, !89, i64 0}
!89 = !{!"vtable pointer", !71, i64 0}
!90 = !{!79, !73, i64 96}
!91 = !{!79, !73, i64 104}
!92 = !{!79, !73, i64 112}
!93 = !{!79, !73, i64 136}
!94 = !{!79, !73, i64 144}
!95 = !{!79, !73, i64 72}
!96 = !{!79, !73, i64 80}
!97 = !{!79, !73, i64 120}
!98 = !{!79, !73, i64 128}
!99 = !{!79, !73, i64 152}
!100 = !{!79, !73, i64 160}
!101 = !{!79, !80, i64 0}
!102 = !{!79, !73, i64 184}
!103 = !{!79, !73, i64 168}
!104 = !{!79, !73, i64 192}
!105 = !{!79, !73, i64 176}
!106 = !{i8 0, i8 2}
!107 = !{}
!108 = !{!79, !80, i64 1}
!109 = distinct !{!109, !110}
!110 = !{!"llvm.loop.mustprogress"}
!111 = distinct !{!111, !110}
!112 = !{!"ned1.tab.cc:_ZL15yy_symbol_printP8_IO_FILEiPKP10NEDElementPK10my_yyltype"}
!113 = !{!"ned1.tab.cc:_ZL15yy_reduce_printPP10NEDElementP10my_yyltypei"}
!114 = distinct !{!114, !110}
!115 = !{!"function_entry_count", i64 36}
!116 = !{!117, !80, i64 1}
!117 = !{!"_ZTS9NEDParser", !80, i64 0, !80, i64 1, !73, i64 8, !73, i64 16, !73, i64 24}
!118 = !{!"function_entry_count", i64 4}
!119 = !{!"function_entry_count", i64 1}
!120 = !{!"function_entry_count", i64 66}
!121 = !{!122, !80, i64 112}
!122 = !{!"_ZTS17ParametersElement", !123, i64 0, !80, i64 112}
!123 = !{!"_ZTS10NEDElement", !124, i64 8, !125, i64 16, !127, i64 48, !73, i64 64, !73, i64 72, !73, i64 80, !73, i64 88, !73, i64 96, !73, i64 104}
!124 = !{!"long", !70, i64 0}
!125 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !126, i64 0, !124, i64 8, !70, i64 16}
!126 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !73, i64 0}
!127 = !{!"_ZTS15NEDSourceRegion", !69, i64 0, !69, i64 4, !69, i64 8, !69, i64 12}
!128 = !{!"function_entry_count", i64 9}
!129 = !{!"function_entry_count", i64 6}
!130 = !{!"function_entry_count", i64 148}
!131 = !{!"function_entry_count", i64 14}
!132 = !{!117, !73, i64 16}
!133 = !{!"function_entry_count", i64 63}
!134 = !{!135, !80, i64 116}
!135 = !{!"_ZTS12ParamElement", !123, i64 0, !69, i64 112, !80, i64 116, !125, i64 120, !125, i64 152, !80, i64 184}
!136 = !{!"function_entry_count", i64 15}
!137 = !{!138, !80, i64 148}
!138 = !{!"_ZTS11GateElement", !123, i64 0, !125, i64 112, !69, i64 144, !80, i64 148, !125, i64 152}
!139 = !{!"function_entry_count", i64 42}
!140 = !{!"function_entry_count", i64 41}
!141 = !{!"function_entry_count", i64 38}
!142 = !{!135, !80, i64 184}
!143 = !{!144, !80, i64 112}
!144 = !{!"_ZTS18ConnectionsElement", !123, i64 0, !80, i64 112}
!145 = !{!"function_entry_count", i64 26}
!146 = !{!"function_entry_count", i64 46}
!147 = !{!148, !80, i64 208}
!148 = !{!"_ZTS17ConnectionElement", !123, i64 0, !125, i64 112, !125, i64 144, !125, i64 176, !80, i64 208, !125, i64 216, !69, i64 248, !125, i64 256, !125, i64 288, !125, i64 320, !80, i64 352, !125, i64 360, !69, i64 392, !69, i64 396}
!149 = !{!"function_entry_count", i64 8}
!150 = !{!148, !80, i64 352}
!151 = !{!"function_entry_count", i64 31}
!152 = !{!"function_entry_count", i64 541}
!153 = !{!117, !80, i64 0}
!154 = !{!"ned1.tab.cc:_ZL14yy_stack_printPsS_"}
!155 = distinct !{!155, !110}
!156 = !{!"ned1.tab.cc:_ZL14yysyntax_errorPcii"}
!157 = distinct !{!157, !110}
!158 = distinct !{!158, !110}
!159 = !{!160, !69, i64 0}
!160 = !{!"_ZTS10LineColumn", !69, i64 0, !69, i64 4}
!161 = !{!"ned1.tab.cc:_ZL10yydestructPKciPP10NEDElementP10my_yyltype"}
!162 = !{!160, !69, i64 4}
!163 = !{!"ned1.tab.cc:_ZZ11doParseNED1P9NEDParserPKcEN5GuardC2ES0_"}
!164 = !{!"ned1.tab.cc:_ZL16resetParserStatev"}
!165 = !{!"function_entry_count", i64 1159}
!166 = !{!117, !73, i64 8}
!167 = !{!"function_entry_count", i64 2924}
!168 = !{!117, !73, i64 24}
!169 = !{!"function_entry_count", i64 2107073}
!170 = !{!"ned1.tab.cc:_ZZ11doParseNED1P9NEDParserPKcEN5GuardD2Ev"}
!171 = !{!"ned1.tab.cc:_ZL9yytnamerrPcPKc"}
!172 = distinct !{!172, !110}
!173 = !{!"function_entry_count", i64 1891507}
!174 = !{!"function_entry_count", i64 1889443}
!175 = !{!124, !124, i64 0}
!176 = !{!"branch_weights", i32 1257663, i32 631782}
!177 = !{!178, !73, i64 0}
!178 = !{!"_ZTSZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagE6_Guard", !73, i64 0}
!179 = !{!"branch_weights", i32 1889444, i32 1}
