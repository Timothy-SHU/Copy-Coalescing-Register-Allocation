; ModuleID = 'simulator/msg2.tab.cc'
source_filename = "simulator/msg2.tab.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.MSG2ParserState = type { i8, i8, %"class.std::vector", ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<NEDElement *, std::allocator<NEDElement *>>::_Vector_impl" }
%"struct.std::_Vector_base<NEDElement *, std::allocator<NEDElement *>>::_Vector_impl" = type { %"struct.std::_Vector_base<NEDElement *, std::allocator<NEDElement *>>::_Vector_impl_data" }
%"struct.std::_Vector_base<NEDElement *, std::allocator<NEDElement *>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%struct.my_yyltype = type { i32, i32, i32, i32, i32, ptr }
%struct.LineColumn = type { i32, i32 }
%class.NEDParser = type { i8, i8, ptr, ptr, ptr }
%class.EnumElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%class.NEDElement = type { ptr, i64, %"class.std::__cxx11::basic_string", %struct.NEDSourceRegion, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.NEDSourceRegion = type { i32, i32, i32, i32 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%class.MessageElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%class.PacketElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%class.ClassElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%class.StructElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%class.NamespaceElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string" }
%class.CplusplusElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string" }
%class.StructDeclElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string" }
%class.ClassDeclElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string", i8, %"class.std::__cxx11::basic_string" }
%class.MessageDeclElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string" }
%class.PacketDeclElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string" }
%class.EnumDeclElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string" }
%class.EnumFieldElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%class.FieldElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", i8, i8, i8, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%class.PropertyElement = type { %class.NEDElement, i8, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%class.PropertyKeyElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string" }
%class.MsgFileElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%class.opp_runtime_error = type { %"class.std::runtime_error", %"class.std::__cxx11::basic_string" }
%"class.std::runtime_error" = type { %"class.std::exception", %"struct.std::__cow_string" }
%"class.std::exception" = type { ptr }
%"struct.std::__cow_string" = type { %union.anon.8 }
%union.anon.8 = type { ptr }

$_ZN15MSG2ParserStateD2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN17opp_runtime_errorD2Ev = comdat any

$_ZN17opp_runtime_errorD0Ev = comdat any

$_ZNK17opp_runtime_error4whatEv = comdat any

$_ZNSt6vectorIP10NEDElementSaIS1_EEaSERKS3_ = comdat any

$_ZNSt15__new_allocatorIP10NEDElementE8allocateEmPKv = comdat any

$_ZNSt6vectorIP10NEDElementSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag = comdat any

$_ZTS12NEDException = comdat any

$_ZTI12NEDException = comdat any

$_ZTS17opp_runtime_error = comdat any

$_ZTI17opp_runtime_error = comdat any

$_ZTV17opp_runtime_error = comdat any

@_ZL2ps = internal global %struct.MSG2ParserState zeroinitializer, align 8
@__dso_handle = external hidden global i8
@msg2yydebug = dso_local local_unnamed_addr global i32 0, align 4
@msg2yychar = dso_local local_unnamed_addr global i32 0, align 4
@msg2yylval = dso_local local_unnamed_addr global ptr null, align 8
@msg2yynerrs = dso_local local_unnamed_addr global i32 0, align 4
@msg2yylloc = dso_local local_unnamed_addr global %struct.my_yyltype zeroinitializer, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [16 x i8] c"Starting parse\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Entering state %d\0A\00", align 1
@_ZL6yypact = internal unnamed_addr constant [243 x i16] [i16 -132, i16 29, i16 156, i16 -132, i16 25, i16 26, i16 27, i16 32, i16 30, i16 34, i16 45, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 -12, i16 -12, i16 -12, i16 -12, i16 -132, i16 -31, i16 -2, i16 10, i16 14, i16 53, i16 16, i16 18, i16 20, i16 66, i16 75, i16 76, i16 -132, i16 78, i16 -8, i16 -132, i16 74, i16 -132, i16 36, i16 31, i16 -132, i16 -132, i16 -132, i16 48, i16 -132, i16 -132, i16 -132, i16 89, i16 -132, i16 -132, i16 97, i16 -132, i16 -132, i16 57, i16 99, i16 -132, i16 -132, i16 100, i16 -132, i16 -132, i16 101, i16 -132, i16 -132, i16 -132, i16 -132, i16 58, i16 71, i16 123, i16 -132, i16 -132, i16 -3, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 39, i16 -132, i16 131, i16 -132, i16 -7, i16 132, i16 91, i16 92, i16 -132, i16 0, i16 102, i16 108, i16 151, i16 152, i16 153, i16 124, i16 111, i16 -132, i16 112, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 114, i16 159, i16 160, i16 -132, i16 -132, i16 -132, i16 -132, i16 161, i16 69, i16 115, i16 121, i16 -132, i16 105, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 -15, i16 122, i16 151, i16 -132, i16 118, i16 125, i16 -132, i16 153, i16 -132, i16 21, i16 -2, i16 17, i16 173, i16 112, i16 1, i16 -132, i16 -132, i16 -132, i16 167, i16 168, i16 -132, i16 -7, i16 1, i16 151, i16 -132, i16 37, i16 -2, i16 -132, i16 -132, i16 1, i16 -132, i16 -132, i16 -132, i16 23, i16 -132, i16 126, i16 127, i16 -132, i16 128, i16 130, i16 173, i16 -132, i16 105, i16 -132, i16 -132, i16 -132, i16 -132, i16 133, i16 -132, i16 -132, i16 169, i16 136, i16 -132, i16 137, i16 -132, i16 -132, i16 -132, i16 171, i16 90, i16 138, i16 130, i16 -2, i16 -132, i16 -132, i16 -132, i16 134, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 90, i16 -132, i16 -132, i16 139, i16 -132, i16 -132, i16 -132, i16 -132], align 16
@.str.2 = private unnamed_addr constant [18 x i8] c"Reading a token: \00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Now at end of input.\0A\00", align 1
@_ZL11yytranslate = internal unnamed_addr constant [303 x i8] c"\00\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02F7B\02@A53D4C6\02\02\02\02\02\02\02\02\02\020:2=1/E\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02>\02?8\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02;\02<\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-.9", align 16
@.str.4 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"Next token is\00", align 1
@_ZL7yycheck = internal unnamed_addr constant [210 x i16] [i16 42, i16 13, i16 14, i16 15, i16 16, i16 13, i16 14, i16 15, i16 16, i16 140, i16 17, i16 18, i16 19, i16 20, i16 17, i16 22, i16 23, i16 48, i16 17, i16 18, i16 19, i16 20, i16 12, i16 22, i16 23, i16 156, i16 12, i16 58, i16 12, i16 0, i16 12, i16 5, i16 12, i16 152, i16 17, i16 18, i16 15, i16 16, i16 15, i16 16, i16 159, i16 11, i16 17, i16 58, i16 17, i16 52, i16 61, i16 17, i16 60, i16 17, i16 53, i16 17, i16 60, i16 52, i16 17, i16 18, i16 58, i16 69, i16 58, i16 59, i16 191, i16 69, i16 17, i16 70, i16 25, i16 26, i16 27, i16 28, i16 58, i16 59, i16 17, i16 70, i16 58, i16 59, i16 58, i16 59, i16 58, i16 59, i16 58, i16 59, i16 63, i16 60, i16 16, i16 60, i16 25, i16 26, i16 27, i16 18, i16 19, i16 52, i16 15, i16 17, i16 14, i16 17, i16 58, i16 64, i16 48, i16 139, i16 24, i16 25, i16 26, i16 27, i16 28, i16 29, i16 30, i16 31, i16 17, i16 17, i16 18, i16 19, i16 20, i16 21, i16 22, i16 23, i16 17, i16 58, i16 17, i16 17, i16 17, i16 48, i16 62, i16 163, i16 32, i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39, i16 40, i16 41, i16 42, i16 43, i16 44, i16 45, i16 13, i16 47, i16 48, i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55, i16 56, i16 57, i16 17, i16 17, i16 59, i16 59, i16 62, i16 63, i16 64, i16 65, i16 66, i16 67, i16 68, i16 3, i16 4, i16 59, i16 6, i16 7, i16 8, i16 9, i16 10, i16 59, i16 17, i16 17, i16 17, i16 60, i16 48, i16 68, i16 62, i16 61, i16 17, i16 17, i16 17, i16 58, i16 65, i16 63, i16 60, i16 10, i16 17, i16 17, i16 61, i16 18, i16 17, i16 63, i16 63, i16 61, i16 64, i16 60, i16 58, i16 58, i16 58, i16 58, i16 143, i16 65, i16 153, i16 190, i16 132, i16 170, i16 42, i16 235, i16 144, i16 151, i16 -1, i16 137], align 16
@_ZL7yytable = internal unnamed_addr constant [210 x i16] [i16 76, i16 -52, i16 -52, i16 37, i16 38, i16 -51, i16 -51, i16 37, i16 38, i16 164, i16 109, i16 110, i16 111, i16 112, i16 -66, i16 113, i16 114, i16 51, i16 171, i16 110, i16 111, i16 112, i16 55, i16 113, i16 114, i16 182, i16 58, i16 52, i16 62, i16 3, i16 65, i16 30, i16 68, i16 176, i16 165, i16 166, i16 37, i16 38, i16 37, i16 38, i16 183, i16 33, i16 28, i16 154, i16 31, i16 115, i16 155, i16 34, i16 -52, i16 32, i16 102, i16 35, i16 -51, i16 115, i16 178, i16 179, i16 53, i16 39, i16 126, i16 127, i16 239, i16 39, i16 36, i16 116, i16 104, i16 105, i16 106, i16 107, i16 56, i16 57, i16 61, i16 116, i16 59, i16 60, i16 63, i16 64, i16 66, i16 67, i16 69, i16 70, i16 167, i16 -160, i16 71, i16 -159, i16 48, i16 49, i16 50, i16 148, i16 149, i16 180, i16 72, i16 78, i16 74, i16 73, i16 88, i16 89, i16 90, i16 161, i16 79, i16 80, i16 81, i16 82, i16 83, i16 84, i16 85, i16 86, i16 91, i16 196, i16 197, i16 198, i16 199, i16 200, i16 201, i16 202, i16 92, i16 93, i16 94, i16 95, i16 96, i16 99, i16 98, i16 184, i16 203, i16 204, i16 205, i16 206, i16 207, i16 208, i16 209, i16 210, i16 211, i16 212, i16 213, i16 214, i16 215, i16 216, i16 100, i16 217, i16 218, i16 219, i16 220, i16 221, i16 222, i16 223, i16 224, i16 225, i16 226, i16 227, i16 108, i16 123, i16 124, i16 125, i16 228, i16 229, i16 230, i16 231, i16 232, i16 233, i16 234, i16 4, i16 5, i16 128, i16 6, i16 7, i16 8, i16 9, i16 10, i16 129, i16 130, i16 134, i16 135, i16 140, i16 139, i16 152, i16 141, i16 144, i16 145, i16 146, i16 147, i16 151, i16 150, i16 158, i16 156, i16 168, i16 173, i16 174, i16 159, i16 192, i16 195, i16 185, i16 186, i16 188, i16 187, i16 191, i16 193, i16 194, i16 237, i16 242, i16 170, i16 240, i16 177, i16 238, i16 157, i16 190, i16 77, i16 241, i16 172, i16 175, i16 0, i16 160], align 16
@.str.7 = private unnamed_addr constant [9 x i8] c"Shifting\00", align 1
@_ZL8yydefact = internal unnamed_addr constant [243 x i8] c"\04\00\02\01\00\00\00\00\00\00\00\03\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10AAAA\13\00\AB\00\00\00\00\00\00=>\00&\A4A7\008\00\88'()\00\11\AA\14\00\19*\00\1A,\00\00\16.\00\150\00\1B\1C?@\8A\00\9E56;NDEFGL\00M\00\87\9C\00\00\00\17\00\00\00!\00\A6\00\00CRHIJK9\93\98\99\95\96\97\9B\00\9A\00\8C\8E\90\92\12+-\18/1\1E\00\00 #\00\00\A3\A5\A8A\AB\00TR\9C\85\86\94\00\00\89\9C\9C!$\00\AB\22\8B\9C\A7\A2\9DA2\00\00Q\00VT\93\8F\83\84\8D\91\00\82\80\00\00\1D\00\A1PO\00\00\00V\AB\81%\A9\00_[\\YZ]^efhjbcdxklmyno`agipqrstuw~\7F|}vz{UX<\00\1FSW:", align 16
@_ZL4yyr2 = internal unnamed_addr constant [172 x i8] c"\00\02\01\02\00\01\01\01\01\01\01\01\01\01\01\01\01\03\04\01\03\03\03\04\05\03\03\03\00\07\00\09\01\00\02\01\02\04\02\02\02\02\03\05\03\05\03\05\03\05\05\01\00\02\02\01\01\00\08\00\07\01\01\02\02\00\01\02\01\01\01\01\02\02\02\02\01\01\01\03\03\02\00\04\00\02\00\02\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\02\01\03\03\02\02\02\01\04\02\05\01\03\01\03\01\03\01\01\02\01\01\01\01\01\01\01\00\03\00\01\00\02\01\03\00\01\00\02\01\04\01\00", align 16
@np = external local_unnamed_addr global ptr, align 8
@.str.8 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"-> $$ =\00", align 1
@_ZL4yyr1 = internal unnamed_addr constant [172 x i8] c"\00GHIIJJJJJJJJJJJJKLLMNOOOPQRTSUSVVWWXXYZ[\\]]^^__``abbccccedfdggggghhhhhhhhhhhhhiiiijjkkllmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmnnnoooopqqrrsttuuvvwwwwwwwwwwxxyyzz{{||}}~\7F\7F", align 16
@_ZL7yypgoto = internal unnamed_addr constant [57 x i16] [i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 47, i16 -132, i16 70, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 59, i16 -132, i16 -132, i16 -42, i16 -132, i16 -132, i16 -132, i16 -132, i16 55, i16 33, i16 11, i16 -132, i16 -30, i16 -132, i16 -132, i16 162, i16 -132, i16 -132, i16 -132, i16 -132, i16 56, i16 62, i16 -119, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 -132, i16 72, i16 -131], align 16
@_ZL9yydefgoto = internal unnamed_addr constant [57 x i16] [i16 -1, i16 1, i16 2, i16 11, i16 12, i16 29, i16 13, i16 14, i16 15, i16 16, i16 17, i16 18, i16 19, i16 97, i16 153, i16 131, i16 132, i16 133, i16 20, i16 21, i16 22, i16 23, i16 24, i16 25, i16 26, i16 27, i16 40, i16 41, i16 42, i16 43, i16 143, i16 103, i16 44, i16 87, i16 142, i16 169, i16 189, i16 235, i16 236, i16 181, i16 117, i16 45, i16 46, i16 47, i16 118, i16 119, i16 120, i16 121, i16 122, i16 101, i16 162, i16 163, i16 75, i16 136, i16 137, i16 138, i16 54], align 16
@.str.10 = private unnamed_addr constant [13 x i8] c"syntax error\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"Error: popping\00", align 1
@_ZL6yystos = internal unnamed_addr constant [243 x i8] c"\00HI\00\03\04\06\07\08\09\0AJKMNOPQRSYZ[\\]^_`\11L\05\11\11\0B\11\11\11\0F\10Eabcdgpqraaa0::\7F\0C:;\0C:;\11\0C:;\0C:;\0C:;\10\0F\11\0E{dp\11\18\19\1A\1B\1C\1D\1E\1Fh:@0\11\11:\11\11\11T>0\0Dx5f\19\1A\1B\1C\11\11\12\13\14\16\174Fostuvw\11;;:;;;\11VWX\11\11|}~0<>ie=\11\11\11\12\13A:DU:=<X?=~dyz\7F\11\12?\0Aji\11v\11\11uwV\11\124n\7Fwd??@=kj<\12::\11\11\12\13\14\15\16\17 !\22#$%&'()*+,-/0123456789>?@ABCDlm:k\7FAm:", align 16
@.str.13 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"Cleanup: discarding lookahead\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"Cleanup: popping\00", align 1
@pos = external local_unnamed_addr global %struct.LineColumn, align 4
@prevpos = external local_unnamed_addr global %struct.LineColumn, align 4
@msg2yyin = external local_unnamed_addr global ptr, align 8
@msg2yyout = external local_unnamed_addr global ptr, align 8
@.str.16 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.17 = private unnamed_addr constant [31 x i8] c"unable to allocate work memory\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS12NEDException = linkonce_odr dso_local constant [15 x i8] c"12NEDException\00", comdat, align 1
@_ZTISt13runtime_error = external constant ptr
@_ZTI12NEDException = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS12NEDException, ptr @_ZTISt13runtime_error }, comdat, align 8
@.str.18 = private unnamed_addr constant [23 x i8] c"error during parsing: \00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"token %s (\00", align 1
@_ZL7yytname = internal unnamed_addr constant [129 x ptr] [ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr null], align 16
@.str.20 = private unnamed_addr constant [11 x i8] c"nterm %s (\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"$end\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"$undefined\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"NAMESPACE\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"CPLUSPLUS\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"CPLUSPLUSBODY\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"MESSAGE\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"PACKET\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"CLASS\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"STRUCT\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"ENUM\00", align 1
@.str.34 = private unnamed_addr constant [11 x i8] c"NONCOBJECT\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"EXTENDS\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"FIELDS\00", align 1
@.str.37 = private unnamed_addr constant [11 x i8] c"PROPERTIES\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"ABSTRACT\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"READONLY\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"NAME\00", align 1
@.str.41 = private unnamed_addr constant [12 x i8] c"INTCONSTANT\00", align 1
@.str.42 = private unnamed_addr constant [13 x i8] c"REALCONSTANT\00", align 1
@.str.43 = private unnamed_addr constant [15 x i8] c"STRINGCONSTANT\00", align 1
@.str.44 = private unnamed_addr constant [13 x i8] c"CHARCONSTANT\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"TRUE_\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"FALSE_\00", align 1
@.str.47 = private unnamed_addr constant [9 x i8] c"BOOLTYPE\00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c"CHARTYPE\00", align 1
@.str.49 = private unnamed_addr constant [10 x i8] c"SHORTTYPE\00", align 1
@.str.50 = private unnamed_addr constant [8 x i8] c"INTTYPE\00", align 1
@.str.51 = private unnamed_addr constant [9 x i8] c"LONGTYPE\00", align 1
@.str.52 = private unnamed_addr constant [11 x i8] c"DOUBLETYPE\00", align 1
@.str.53 = private unnamed_addr constant [10 x i8] c"UNSIGNED_\00", align 1
@.str.54 = private unnamed_addr constant [11 x i8] c"STRINGTYPE\00", align 1
@.str.55 = private unnamed_addr constant [3 x i8] c"EQ\00", align 1
@.str.56 = private unnamed_addr constant [3 x i8] c"NE\00", align 1
@.str.57 = private unnamed_addr constant [3 x i8] c"GE\00", align 1
@.str.58 = private unnamed_addr constant [3 x i8] c"LE\00", align 1
@.str.59 = private unnamed_addr constant [4 x i8] c"AND\00", align 1
@.str.60 = private unnamed_addr constant [3 x i8] c"OR\00", align 1
@.str.61 = private unnamed_addr constant [4 x i8] c"XOR\00", align 1
@.str.62 = private unnamed_addr constant [4 x i8] c"NOT\00", align 1
@.str.63 = private unnamed_addr constant [8 x i8] c"BIN_AND\00", align 1
@.str.64 = private unnamed_addr constant [7 x i8] c"BIN_OR\00", align 1
@.str.65 = private unnamed_addr constant [8 x i8] c"BIN_XOR\00", align 1
@.str.66 = private unnamed_addr constant [10 x i8] c"BIN_COMPL\00", align 1
@.str.67 = private unnamed_addr constant [11 x i8] c"SHIFT_LEFT\00", align 1
@.str.68 = private unnamed_addr constant [12 x i8] c"SHIFT_RIGHT\00", align 1
@.str.69 = private unnamed_addr constant [13 x i8] c"INVALID_CHAR\00", align 1
@.str.70 = private unnamed_addr constant [4 x i8] c"'?'\00", align 1
@.str.71 = private unnamed_addr constant [4 x i8] c"':'\00", align 1
@.str.72 = private unnamed_addr constant [4 x i8] c"'>'\00", align 1
@.str.73 = private unnamed_addr constant [4 x i8] c"'<'\00", align 1
@.str.74 = private unnamed_addr constant [4 x i8] c"'+'\00", align 1
@.str.75 = private unnamed_addr constant [4 x i8] c"'-'\00", align 1
@.str.76 = private unnamed_addr constant [4 x i8] c"'*'\00", align 1
@.str.77 = private unnamed_addr constant [4 x i8] c"'/'\00", align 1
@.str.78 = private unnamed_addr constant [4 x i8] c"'%'\00", align 1
@.str.79 = private unnamed_addr constant [4 x i8] c"'^'\00", align 1
@.str.80 = private unnamed_addr constant [5 x i8] c"UMIN\00", align 1
@.str.81 = private unnamed_addr constant [4 x i8] c"';'\00", align 1
@.str.82 = private unnamed_addr constant [4 x i8] c"'{'\00", align 1
@.str.83 = private unnamed_addr constant [4 x i8] c"'}'\00", align 1
@.str.84 = private unnamed_addr constant [4 x i8] c"'='\00", align 1
@.str.85 = private unnamed_addr constant [4 x i8] c"'['\00", align 1
@.str.86 = private unnamed_addr constant [4 x i8] c"']'\00", align 1
@.str.87 = private unnamed_addr constant [4 x i8] c"'('\00", align 1
@.str.88 = private unnamed_addr constant [4 x i8] c"')'\00", align 1
@.str.89 = private unnamed_addr constant [4 x i8] c"'&'\00", align 1
@.str.90 = private unnamed_addr constant [4 x i8] c"'.'\00", align 1
@.str.91 = private unnamed_addr constant [4 x i8] c"','\00", align 1
@.str.92 = private unnamed_addr constant [4 x i8] c"'@'\00", align 1
@.str.93 = private unnamed_addr constant [4 x i8] c"'$'\00", align 1
@.str.94 = private unnamed_addr constant [8 x i8] c"$accept\00", align 1
@.str.95 = private unnamed_addr constant [8 x i8] c"msgfile\00", align 1
@.str.96 = private unnamed_addr constant [12 x i8] c"definitions\00", align 1
@.str.97 = private unnamed_addr constant [11 x i8] c"definition\00", align 1
@.str.98 = private unnamed_addr constant [15 x i8] c"namespace_decl\00", align 1
@.str.99 = private unnamed_addr constant [14 x i8] c"namespacename\00", align 1
@.str.100 = private unnamed_addr constant [10 x i8] c"cplusplus\00", align 1
@.str.101 = private unnamed_addr constant [12 x i8] c"struct_decl\00", align 1
@.str.102 = private unnamed_addr constant [11 x i8] c"class_decl\00", align 1
@.str.103 = private unnamed_addr constant [13 x i8] c"message_decl\00", align 1
@.str.104 = private unnamed_addr constant [12 x i8] c"packet_decl\00", align 1
@.str.105 = private unnamed_addr constant [10 x i8] c"enum_decl\00", align 1
@.str.106 = private unnamed_addr constant [5 x i8] c"enum\00", align 1
@.str.107 = private unnamed_addr constant [3 x i8] c"@1\00", align 1
@.str.108 = private unnamed_addr constant [3 x i8] c"@2\00", align 1
@.str.109 = private unnamed_addr constant [15 x i8] c"opt_enumfields\00", align 1
@.str.110 = private unnamed_addr constant [11 x i8] c"enumfields\00", align 1
@.str.111 = private unnamed_addr constant [10 x i8] c"enumfield\00", align 1
@.str.112 = private unnamed_addr constant [8 x i8] c"message\00", align 1
@.str.113 = private unnamed_addr constant [7 x i8] c"packet\00", align 1
@.str.114 = private unnamed_addr constant [6 x i8] c"class\00", align 1
@.str.115 = private unnamed_addr constant [7 x i8] c"struct\00", align 1
@.str.116 = private unnamed_addr constant [15 x i8] c"message_header\00", align 1
@.str.117 = private unnamed_addr constant [14 x i8] c"packet_header\00", align 1
@.str.118 = private unnamed_addr constant [13 x i8] c"class_header\00", align 1
@.str.119 = private unnamed_addr constant [14 x i8] c"struct_header\00", align 1
@.str.120 = private unnamed_addr constant [5 x i8] c"body\00", align 1
@.str.121 = private unnamed_addr constant [26 x i8] c"opt_fields_and_properties\00", align 1
@.str.122 = private unnamed_addr constant [22 x i8] c"fields_and_properties\00", align 1
@.str.123 = private unnamed_addr constant [6 x i8] c"field\00", align 1
@.str.124 = private unnamed_addr constant [3 x i8] c"@3\00", align 1
@.str.125 = private unnamed_addr constant [3 x i8] c"@4\00", align 1
@.str.126 = private unnamed_addr constant [15 x i8] c"fieldmodifiers\00", align 1
@.str.127 = private unnamed_addr constant [14 x i8] c"fielddatatype\00", align 1
@.str.128 = private unnamed_addr constant [16 x i8] c"opt_fieldvector\00", align 1
@.str.129 = private unnamed_addr constant [14 x i8] c"opt_fieldenum\00", align 1
@.str.130 = private unnamed_addr constant [15 x i8] c"opt_fieldvalue\00", align 1
@.str.131 = private unnamed_addr constant [11 x i8] c"fieldvalue\00", align 1
@.str.132 = private unnamed_addr constant [15 x i8] c"fieldvalueitem\00", align 1
@.str.133 = private unnamed_addr constant [10 x i8] c"enumvalue\00", align 1
@.str.134 = private unnamed_addr constant [9 x i8] c"quantity\00", align 1
@.str.135 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@.str.136 = private unnamed_addr constant [19 x i8] c"property_namevalue\00", align 1
@.str.137 = private unnamed_addr constant [14 x i8] c"property_name\00", align 1
@.str.138 = private unnamed_addr constant [18 x i8] c"opt_property_keys\00", align 1
@.str.139 = private unnamed_addr constant [14 x i8] c"property_keys\00", align 1
@.str.140 = private unnamed_addr constant [13 x i8] c"property_key\00", align 1
@.str.141 = private unnamed_addr constant [16 x i8] c"property_values\00", align 1
@.str.142 = private unnamed_addr constant [15 x i8] c"property_value\00", align 1
@.str.143 = private unnamed_addr constant [20 x i8] c"opt_fieldsblock_old\00", align 1
@.str.144 = private unnamed_addr constant [15 x i8] c"opt_fields_old\00", align 1
@.str.145 = private unnamed_addr constant [11 x i8] c"fields_old\00", align 1
@.str.146 = private unnamed_addr constant [24 x i8] c"opt_propertiesblock_old\00", align 1
@.str.147 = private unnamed_addr constant [19 x i8] c"opt_properties_old\00", align 1
@.str.148 = private unnamed_addr constant [15 x i8] c"properties_old\00", align 1
@.str.149 = private unnamed_addr constant [13 x i8] c"property_old\00", align 1
@.str.150 = private unnamed_addr constant [14 x i8] c"opt_semicolon\00", align 1
@_ZL7yyrline = internal unnamed_addr constant [172 x i16] [i16 0, i16 132, i16 132, i16 136, i16 137, i16 141, i16 142, i16 143, i16 144, i16 145, i16 146, i16 147, i16 149, i16 151, i16 153, i16 155, i16 157, i16 165, i16 173, i16 174, i16 181, i16 193, i16 202, i16 209, i16 216, i16 227, i16 236, i16 245, i16 258, i16 257, i16 267, i16 266, i16 279, i16 280, i16 284, i16 285, i16 289, i16 295, i16 308, i16 313, i16 318, i16 323, i16 328, i16 334, i16 344, i16 350, i16 360, i16 366, i16 376, i16 382, i16 392, i16 399, i16 400, i16 404, i16 405, i16 406, i16 407, i16 415, i16 414, i16 427, i16 426, i16 440, i16 442, i16 444, i16 446, i16 449, i16 453, i16 454, i16 456, i16 457, i16 458, i16 459, i16 461, i16 462, i16 463, i16 464, i16 466, i16 467, i16 468, i16 473, i16 478, i16 483, i16 487, i16 491, i16 495, i16 499, i16 503, i16 508, i16 509, i16 513, i16 514, i16 515, i16 516, i16 517, i16 518, i16 519, i16 520, i16 520, i16 520, i16 520, i16 520, i16 520, i16 520, i16 520, i16 520, i16 520, i16 520, i16 521, i16 521, i16 521, i16 521, i16 521, i16 522, i16 522, i16 522, i16 522, i16 522, i16 522, i16 522, i16 522, i16 522, i16 522, i16 523, i16 523, i16 523, i16 523, i16 523, i16 523, i16 527, i16 528, i16 529, i16 533, i16 534, i16 535, i16 536, i16 543, i16 551, i16 552, i16 556, i16 561, i16 570, i16 574, i16 575, i16 579, i16 588, i16 600, i16 602, i16 607, i16 609, i16 611, i16 613, i16 615, i16 617, i16 619, i16 621, i16 623, i16 626, i16 637, i16 640, i16 644, i16 645, i16 649, i16 650, i16 657, i16 660, i16 664, i16 665, i16 669, i16 670, i16 674, i16 685, i16 685], align 16
@.str.151 = private unnamed_addr constant [39 x i8] c"Reducing stack by rule %d (line %lu):\0A\00", align 1
@.str.152 = private unnamed_addr constant [10 x i8] c"   $%d = \00", align 1
@_ZL5yyrhs = internal unnamed_addr constant [466 x i8] c"H\00\FFI\FFIJ\FF\FFK\FFM\FFN\FFO\FFP\FFQ\FFR\FFS\FFY\FFZ\FF[\FF\\\FF\03L:\FFL00\11\FF\11\FF\04\05\7F\FF\09\11:\FF\08\11:\FF\08\0B\11:\FF\08\11\0C\11:\FF\06\11:\FF\07\11:\FF\0A\11:\FF\FF\0A\11;TV<\7F\FF\FF\0A\11\0C\11;UV<\7F\FFW\FF\FFWX\FFX\FF\11:\FF\11=n:\FF]a\FF^a\FF_a\FF`a\FF\06\11;\FF\06\11\0C\11;\FF\07\11;\FF\07\11\0C\11;\FF\08\11;\FF\08\11\0C\11;\FF\09\11;\FF\09\11\0C\11;\FFb{x<\7F\FFc\FF\FFcd\FFcp\FFd\FFp\FF\FFgh\11eijk:\FF\FFg\11fijk:\FF\0F\FF\10\FF\0F\10\FF\10\0F\FF\FF\11\FF\115\FF\19\FF\1A\FF\1B\FF\1C\FF\1E\19\FF\1E\1A\FF\1E\1B\FF\1E\1C\FF\1D\FF\1F\FF\18\FF>\12?\FF>\11?\FF>?\FF\FF\0A@\11A\FF\FF=l\FF\FFlm\FFm\FF\14\FF\15\FF\12\FF\13\FF\16\FF\17\FF\11\FF/\FF0\FF$\FF%\FF&\FF \FF!\FF1\FF\22\FF2\FF#\FF(\FF)\FF*\FF,\FF-\FF3\FF4\FF5\FF6\FF7\FF8\FFB\FF9\FF'\FF+\FFC\FFD\FF@\FFA\FF>\FF?\FF\12\FF4\12\FF\11\FFo\12\11\FFo\13\11\FF\12\11\FF\13\11\FFq:\FFr\FFr@sA\FFE\11\FFE\11>\11?\FFt\FFt:u\FFu\FF\11=v\FFv\FFvDw\FFw\FF\11\FFF\11\FF\14\FF\16\FF\17\FF\12\FF\13\FFo\FF4\FF\FF\0D0y\FF\FFz\FF\FFzd\FFd\FF\0E0|\FF\FF}\FF\FF}~\FF~\FF\11=w:\FF:\FF\FF", align 16
@_ZL6yyprhs = internal unnamed_addr constant [172 x i16] [i16 0, i16 0, i16 3, i16 5, i16 8, i16 9, i16 11, i16 13, i16 15, i16 17, i16 19, i16 21, i16 23, i16 25, i16 27, i16 29, i16 31, i16 33, i16 37, i16 42, i16 44, i16 48, i16 52, i16 56, i16 61, i16 67, i16 71, i16 75, i16 79, i16 80, i16 88, i16 89, i16 99, i16 101, i16 102, i16 105, i16 107, i16 110, i16 115, i16 118, i16 121, i16 124, i16 127, i16 131, i16 137, i16 141, i16 147, i16 151, i16 157, i16 161, i16 167, i16 173, i16 175, i16 176, i16 179, i16 182, i16 184, i16 186, i16 187, i16 196, i16 197, i16 205, i16 207, i16 209, i16 212, i16 215, i16 216, i16 218, i16 221, i16 223, i16 225, i16 227, i16 229, i16 232, i16 235, i16 238, i16 241, i16 243, i16 245, i16 247, i16 251, i16 255, i16 258, i16 259, i16 264, i16 265, i16 268, i16 269, i16 272, i16 274, i16 276, i16 278, i16 280, i16 282, i16 284, i16 286, i16 288, i16 290, i16 292, i16 294, i16 296, i16 298, i16 300, i16 302, i16 304, i16 306, i16 308, i16 310, i16 312, i16 314, i16 316, i16 318, i16 320, i16 322, i16 324, i16 326, i16 328, i16 330, i16 332, i16 334, i16 336, i16 338, i16 340, i16 342, i16 344, i16 346, i16 348, i16 350, i16 352, i16 354, i16 357, i16 359, i16 363, i16 367, i16 370, i16 373, i16 376, i16 378, i16 383, i16 386, i16 392, i16 394, i16 398, i16 400, i16 404, i16 406, i16 410, i16 412, i16 414, i16 417, i16 419, i16 421, i16 423, i16 425, i16 427, i16 429, i16 431, i16 432, i16 436, i16 437, i16 439, i16 440, i16 443, i16 445, i16 449, i16 450, i16 452, i16 453, i16 456, i16 458, i16 463, i16 465], align 16
@.str.153 = private unnamed_addr constant [10 x i8] c"Stack now\00", align 1
@.str.154 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@_ZZL14yysyntax_errorPciiE12yyunexpected = internal unnamed_addr constant [28 x i8] c"syntax error, unexpected %s\00", align 16
@_ZZL14yysyntax_errorPciiE11yyexpecting = internal constant [15 x i8] c", expecting %s\00", align 1
@_ZZL14yysyntax_errorPciiE4yyor = internal constant [7 x i8] c" or %s\00", align 1
@.str.155 = private unnamed_addr constant [9 x i8] c"Deleting\00", align 1
@.str.156 = private unnamed_addr constant [49 x i8] c"non-reentrant parser invoked again while parsing\00", align 1
@_ZTS17opp_runtime_error = linkonce_odr dso_local constant [20 x i8] c"17opp_runtime_error\00", comdat, align 1
@_ZTI17opp_runtime_error = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS17opp_runtime_error, ptr @_ZTISt13runtime_error }, comdat, align 8
@_ZTV17opp_runtime_error = linkonce_odr dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTI17opp_runtime_error, ptr @_ZN17opp_runtime_errorD2Ev, ptr @_ZN17opp_runtime_errorD0Ev, ptr @_ZNK17opp_runtime_error4whatEv] }, comdat, align 8
@_ZZL16resetParserStatevE7cleanps = internal global %struct.MSG2ParserState zeroinitializer, align 8
@_ZGVZL16resetParserStatevE7cleanps = internal global i64 0, align 8
@.str.157 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_msg2.tab.cc, ptr null }]

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN15MSG2ParserStateD2Ev(ptr noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %2 = getelementptr inbounds %struct.MSG2ParserState, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !41
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @_ZdlPv(ptr noundef %3) #26
  br label %6

6:                                                ; preds = %1, %5
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_Z11msg2yyparsev() local_unnamed_addr #2 personality ptr @__gxx_personality_v0 !prof !40 {
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
  %13 = alloca %struct.my_yyltype, align 8
  %14 = alloca %struct.my_yyltype, align 8
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
  %30 = alloca %struct.my_yyltype, align 8
  %31 = alloca %struct.my_yyltype, align 8
  %32 = alloca %struct.my_yyltype, align 8
  %33 = alloca %struct.my_yyltype, align 8
  %34 = alloca %struct.my_yyltype, align 8
  %35 = alloca %struct.my_yyltype, align 8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %1) #27
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %2) #27
  call void @llvm.lifetime.start.p0(i64 1600, ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(i64 6400, ptr nonnull %4) #27
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #27
  %36 = load i32, ptr @msg2yydebug, align 4, !tbaa !46
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %0
  %39 = load ptr, ptr @stderr, align 8, !tbaa !48
  %40 = tail call i64 @fwrite(ptr nonnull @.str, i64 15, i64 1, ptr %39) #28
  br label %41

41:                                               ; preds = %38, %0
  store i32 0, ptr @msg2yynerrs, align 4, !tbaa !46
  store i32 -2, ptr @msg2yychar, align 4, !tbaa !46
  store i16 0, ptr %2, align 16, !tbaa !49
  %42 = getelementptr inbounds %struct.my_yyltype, ptr %5, i64 0, i32 1
  %43 = getelementptr inbounds %struct.my_yyltype, ptr %5, i64 0, i32 2
  %44 = getelementptr inbounds %struct.my_yyltype, ptr %5, i64 0, i32 3
  %45 = getelementptr inbounds %struct.my_yyltype, ptr %5, i64 0, i32 4
  %46 = getelementptr inbounds %struct.my_yyltype, ptr %5, i64 0, i32 3
  %47 = getelementptr inbounds %struct.my_yyltype, ptr %5, i64 0, i32 1
  %48 = getelementptr inbounds %struct.my_yyltype, ptr %5, i64 0, i32 4
  %49 = getelementptr inbounds %struct.my_yyltype, ptr %5, i64 0, i32 2
  br label %60

50:                                               ; preds = %913, %917, %148
  %51 = phi i64 [ %888, %913 ], [ %888, %917 ], [ %65, %148 ]
  %52 = phi ptr [ %895, %913 ], [ %895, %917 ], [ %150, %148 ]
  %53 = phi ptr [ %896, %913 ], [ %896, %917 ], [ %151, %148 ]
  %54 = phi i32 [ %159, %913 ], [ %159, %917 ], [ %115, %148 ]
  %55 = phi i32 [ %916, %913 ], [ %920, %917 ], [ %127, %148 ]
  %56 = add nsw i64 %51, 2
  %57 = getelementptr inbounds i8, ptr %2, i64 %56
  %58 = trunc i32 %55 to i16
  store i16 %58, ptr %57, align 2, !tbaa !49
  %59 = icmp slt i64 %51, 396
  br i1 %59, label %60, label %967

60:                                               ; preds = %41, %50
  %61 = phi i32 [ 0, %41 ], [ %55, %50 ]
  %62 = phi i32 [ 0, %41 ], [ %54, %50 ]
  %63 = phi ptr [ %4, %41 ], [ %53, %50 ]
  %64 = phi ptr [ %3, %41 ], [ %52, %50 ]
  %65 = phi i64 [ 0, %41 ], [ %56, %50 ]
  %66 = load i32, ptr @msg2yydebug, align 4, !tbaa !46
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %60
  %69 = load ptr, ptr @stderr, align 8, !tbaa !48
  %70 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %69, ptr noundef nonnull @.str.1, i32 noundef %61) #28
  br label %71

71:                                               ; preds = %60, %68
  %72 = sext i32 %61 to i64
  %73 = getelementptr inbounds [243 x i16], ptr @_ZL6yypact, i64 0, i64 %72
  %74 = load i16, ptr %73, align 2, !tbaa !49
  %75 = sext i16 %74 to i32
  %76 = icmp eq i16 %74, -132
  br i1 %76, label %152, label %77

77:                                               ; preds = %71
  %78 = load i32, ptr @msg2yychar, align 4, !tbaa !46
  %79 = icmp eq i32 %78, -2
  br i1 %79, label %80, label %88

80:                                               ; preds = %77
  %81 = load i32, ptr @msg2yydebug, align 4, !tbaa !46
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %80
  %84 = load ptr, ptr @stderr, align 8, !tbaa !48
  %85 = call i64 @fwrite(ptr nonnull @.str.2, i64 17, i64 1, ptr %84) #28
  br label %86

86:                                               ; preds = %83, %80
  %87 = call noundef i32 @_Z9msg2yylexv()
  store i32 %87, ptr @msg2yychar, align 4, !tbaa !46
  br label %88

88:                                               ; preds = %86, %77
  %89 = load i32, ptr @msg2yychar, align 4, !tbaa !46
  %90 = icmp slt i32 %89, 1
  br i1 %90, label %91, label %97

91:                                               ; preds = %88
  store i32 0, ptr @msg2yychar, align 4, !tbaa !46
  %92 = load i32, ptr @msg2yydebug, align 4, !tbaa !46
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %114, label %94

94:                                               ; preds = %91
  %95 = load ptr, ptr @stderr, align 8, !tbaa !48
  %96 = call i64 @fwrite(ptr nonnull @.str.3, i64 21, i64 1, ptr %95) #28
  br label %114

97:                                               ; preds = %88
  %98 = icmp ult i32 %89, 303
  br i1 %98, label %99, label %104

99:                                               ; preds = %97
  %100 = zext nneg i32 %89 to i64
  %101 = getelementptr inbounds [303 x i8], ptr @_ZL11yytranslate, i64 0, i64 %100
  %102 = load i8, ptr %101, align 1, !tbaa !51
  %103 = zext i8 %102 to i32
  br label %104

104:                                              ; preds = %97, %99
  %105 = phi i32 [ %103, %99 ], [ 2, %97 ]
  %106 = load i32, ptr @msg2yydebug, align 4, !tbaa !46
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %114, label %108

108:                                              ; preds = %104
  %109 = load ptr, ptr @stderr, align 8, !tbaa !48
  %110 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %109, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #28
  %111 = load ptr, ptr @stderr, align 8, !tbaa !48
  call fastcc void @_ZL15yy_symbol_printP8_IO_FILEiPKP10NEDElementPK10my_yyltype(ptr noundef %111, i32 noundef %105)
  %112 = load ptr, ptr @stderr, align 8, !tbaa !48
  %113 = call i32 @fputc(i32 10, ptr %112)
  br label %114

114:                                              ; preds = %104, %108, %91, %94
  %115 = phi i32 [ 0, %94 ], [ 0, %91 ], [ %105, %108 ], [ %105, %104 ]
  %116 = add nsw i32 %115, %75
  %117 = icmp ugt i32 %116, 209
  br i1 %117, label %152, label %118

118:                                              ; preds = %114
  %119 = zext nneg i32 %116 to i64
  %120 = getelementptr inbounds [210 x i16], ptr @_ZL7yycheck, i64 0, i64 %119
  %121 = load i16, ptr %120, align 2, !tbaa !49
  %122 = sext i16 %121 to i32
  %123 = icmp eq i32 %115, %122
  br i1 %123, label %124, label %152

124:                                              ; preds = %118
  %125 = getelementptr inbounds [210 x i16], ptr @_ZL7yytable, i64 0, i64 %119
  %126 = load i16, ptr %125, align 2, !tbaa !49
  %127 = sext i16 %126 to i32
  %128 = icmp slt i16 %126, 1
  br i1 %128, label %129, label %133

129:                                              ; preds = %124
  %130 = icmp eq i32 %116, 208
  br i1 %130, label %921, label %131

131:                                              ; preds = %129
  %132 = sub nsw i32 0, %127
  br label %158

133:                                              ; preds = %124
  %134 = icmp eq i32 %116, 29
  br i1 %134, label %975, label %135

135:                                              ; preds = %133
  %136 = load i32, ptr @msg2yydebug, align 4, !tbaa !46
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %144, label %138

138:                                              ; preds = %135
  %139 = load ptr, ptr @stderr, align 8, !tbaa !48
  %140 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %139, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.7) #28
  %141 = load ptr, ptr @stderr, align 8, !tbaa !48
  call fastcc void @_ZL15yy_symbol_printP8_IO_FILEiPKP10NEDElementPK10my_yyltype(ptr noundef %141, i32 noundef %115)
  %142 = load ptr, ptr @stderr, align 8, !tbaa !48
  %143 = call i32 @fputc(i32 10, ptr %142)
  br label %144

144:                                              ; preds = %138, %135
  %145 = load i32, ptr @msg2yychar, align 4, !tbaa !46
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %148, label %147

147:                                              ; preds = %144
  store i32 -2, ptr @msg2yychar, align 4, !tbaa !46
  br label %148

148:                                              ; preds = %147, %144
  %149 = load ptr, ptr @msg2yylval, align 8, !tbaa !48
  %150 = getelementptr inbounds ptr, ptr %64, i64 1
  store ptr %149, ptr %150, align 8, !tbaa !48
  %151 = getelementptr inbounds %struct.my_yyltype, ptr %63, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %151, ptr noundef nonnull align 8 dereferenceable(32) @msg2yylloc, i64 32, i1 false), !tbaa.struct !52
  br label %50

152:                                              ; preds = %114, %118, %71
  %153 = phi i32 [ %62, %71 ], [ %115, %114 ], [ %115, %118 ]
  %154 = getelementptr inbounds [243 x i8], ptr @_ZL8yydefact, i64 0, i64 %72
  %155 = load i8, ptr %154, align 1, !tbaa !51
  %156 = zext i8 %155 to i32
  %157 = icmp eq i8 %155, 0
  br i1 %157, label %921, label %158

158:                                              ; preds = %152, %131
  %159 = phi i32 [ %153, %152 ], [ %115, %131 ]
  %160 = phi i32 [ %156, %152 ], [ %132, %131 ]
  %161 = zext nneg i32 %160 to i64
  %162 = getelementptr inbounds [172 x i8], ptr @_ZL4yyr2, i64 0, i64 %161
  %163 = load i8, ptr %162, align 1, !tbaa !51
  %164 = zext i8 %163 to i64
  %165 = sub nsw i64 1, %164
  %166 = getelementptr inbounds ptr, ptr %64, i64 %165
  %167 = load ptr, ptr %166, align 8, !tbaa !48
  %168 = icmp eq i8 %163, 0
  br i1 %168, label %180, label %169

169:                                              ; preds = %158
  %170 = sub nsw i64 0, %164
  %171 = getelementptr inbounds %struct.my_yyltype, ptr %63, i64 %170
  %172 = getelementptr inbounds %struct.my_yyltype, ptr %171, i64 1, i32 1
  %173 = load i32, ptr %172, align 4, !tbaa !53
  store i32 %173, ptr %42, align 4, !tbaa !53
  %174 = getelementptr inbounds %struct.my_yyltype, ptr %171, i64 1, i32 2
  %175 = load i32, ptr %174, align 8, !tbaa !55
  store i32 %175, ptr %43, align 8, !tbaa !55
  %176 = getelementptr inbounds %struct.my_yyltype, ptr %63, i64 0, i32 3
  %177 = load i32, ptr %176, align 4, !tbaa !56
  store i32 %177, ptr %44, align 4, !tbaa !56
  %178 = getelementptr inbounds %struct.my_yyltype, ptr %63, i64 0, i32 4
  %179 = load i32, ptr %178, align 8, !tbaa !57
  store i32 %179, ptr %45, align 8, !tbaa !57
  br label %185

180:                                              ; preds = %158
  %181 = getelementptr inbounds %struct.my_yyltype, ptr %63, i64 0, i32 3
  %182 = load i32, ptr %181, align 4, !tbaa !56
  store i32 %182, ptr %46, align 4, !tbaa !56
  store i32 %182, ptr %47, align 4, !tbaa !53
  %183 = getelementptr inbounds %struct.my_yyltype, ptr %63, i64 0, i32 4
  %184 = load i32, ptr %183, align 8, !tbaa !57
  store i32 %184, ptr %48, align 8, !tbaa !57
  store i32 %184, ptr %49, align 8, !tbaa !55
  br label %185

185:                                              ; preds = %169, %180
  %186 = load i32, ptr @msg2yydebug, align 4, !tbaa !46
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %216, label %188

188:                                              ; preds = %185
  %189 = getelementptr inbounds [172 x i16], ptr @_ZL7yyrline, i64 0, i64 %161
  %190 = load i16, ptr %189, align 2, !tbaa !49
  %191 = zext i16 %190 to i64
  %192 = load ptr, ptr @stderr, align 8, !tbaa !48
  %193 = add nsw i32 %160, -1
  %194 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %192, ptr noundef nonnull @.str.151, i32 noundef %193, i64 noundef %191) #28
  %195 = icmp eq i8 %163, 0
  br i1 %195, label %216, label %196

196:                                              ; preds = %188
  %197 = getelementptr inbounds [172 x i16], ptr @_ZL6yyprhs, i64 0, i64 %161
  %198 = zext i8 %163 to i64
  br label %199

199:                                              ; preds = %196, %199
  %200 = phi i64 [ 0, %196 ], [ %202, %199 ]
  %201 = load ptr, ptr @stderr, align 8, !tbaa !48
  %202 = add nuw nsw i64 %200, 1
  %203 = trunc i64 %202 to i32
  %204 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %201, ptr noundef nonnull @.str.152, i32 noundef %203) #28
  %205 = load ptr, ptr @stderr, align 8, !tbaa !48
  %206 = load i16, ptr %197, align 2, !tbaa !49
  %207 = zext i16 %206 to i64
  %208 = add nuw i64 %200, %207
  %209 = and i64 %208, 4294967295
  %210 = getelementptr inbounds [466 x i8], ptr @_ZL5yyrhs, i64 0, i64 %209
  %211 = load i8, ptr %210, align 1, !tbaa !51
  %212 = sext i8 %211 to i32
  call fastcc void @_ZL15yy_symbol_printP8_IO_FILEiPKP10NEDElementPK10my_yyltype(ptr noundef %205, i32 noundef %212)
  %213 = load ptr, ptr @stderr, align 8, !tbaa !48
  %214 = call i32 @fputc(i32 10, ptr %213)
  %215 = icmp eq i64 %202, %198
  br i1 %215, label %216, label %199, !llvm.loop !58

216:                                              ; preds = %199, %188, %185
  switch i32 %160, label %871 [
    i32 12, label %217
    i32 13, label %230
    i32 14, label %243
    i32 15, label %256
    i32 16, label %269
    i32 17, label %282
    i32 20, label %294
    i32 21, label %306
    i32 22, label %318
    i32 23, label %331
    i32 24, label %344
    i32 25, label %365
    i32 26, label %377
    i32 27, label %389
    i32 28, label %401
    i32 29, label %415
    i32 30, label %417
    i32 31, label %439
    i32 36, label %441
    i32 37, label %452
    i32 38, label %471
    i32 39, label %473
    i32 40, label %475
    i32 41, label %477
    i32 42, label %479
    i32 43, label %491
    i32 44, label %511
    i32 45, label %523
    i32 46, label %543
    i32 47, label %555
    i32 48, label %575
    i32 49, label %587
    i32 57, label %607
    i32 58, label %629
    i32 59, label %633
    i32 60, label %647
    i32 61, label %651
    i32 62, label %652
    i32 63, label %653
    i32 64, label %654
    i32 65, label %655
    i32 79, label %656
    i32 80, label %666
    i32 81, label %676
    i32 83, label %679
    i32 85, label %688
    i32 135, label %696
    i32 138, label %699
    i32 139, label %707
    i32 143, label %723
    i32 144, label %766
    i32 145, label %806
    i32 146, label %815
    i32 147, label %824
    i32 148, label %826
    i32 149, label %828
    i32 150, label %830
    i32 151, label %832
    i32 152, label %834
    i32 153, label %836
    i32 154, label %838
    i32 155, label %840
    i32 156, label %842
    i32 157, label %844
    i32 163, label %850
    i32 169, label %856
  ]

217:                                              ; preds = %216
  %218 = load ptr, ptr @np, align 8, !tbaa !48
  %219 = getelementptr inbounds %class.NEDParser, ptr %218, i64 0, i32 1
  %220 = load i8, ptr %219, align 1, !tbaa !61, !range !64, !noundef !65
  %221 = icmp eq i8 %220, 0
  br i1 %221, label %871, label %222

222:                                              ; preds = %217
  %223 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 11), align 8, !tbaa !66
  %224 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %63)
  %225 = getelementptr inbounds %class.EnumElement, ptr %223, i64 0, i32 3
  %226 = getelementptr inbounds %class.EnumElement, ptr %223, i64 0, i32 3, i32 1
  %227 = load i64, ptr %226, align 8, !tbaa !71
  %228 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %224) #27
  %229 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %225, i64 noundef 0, i64 noundef %227, ptr noundef %224, i64 noundef %228)
  br label %871

230:                                              ; preds = %216
  %231 = load ptr, ptr @np, align 8, !tbaa !48
  %232 = getelementptr inbounds %class.NEDParser, ptr %231, i64 0, i32 1
  %233 = load i8, ptr %232, align 1, !tbaa !61, !range !64, !noundef !65
  %234 = icmp eq i8 %233, 0
  br i1 %234, label %871, label %235

235:                                              ; preds = %230
  %236 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 12), align 8, !tbaa !75
  %237 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %63)
  %238 = getelementptr inbounds %class.MessageElement, ptr %236, i64 0, i32 3
  %239 = getelementptr inbounds %class.MessageElement, ptr %236, i64 0, i32 3, i32 1
  %240 = load i64, ptr %239, align 8, !tbaa !71
  %241 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %237) #27
  %242 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %238, i64 noundef 0, i64 noundef %240, ptr noundef %237, i64 noundef %241)
  br label %871

243:                                              ; preds = %216
  %244 = load ptr, ptr @np, align 8, !tbaa !48
  %245 = getelementptr inbounds %class.NEDParser, ptr %244, i64 0, i32 1
  %246 = load i8, ptr %245, align 1, !tbaa !61, !range !64, !noundef !65
  %247 = icmp eq i8 %246, 0
  br i1 %247, label %871, label %248

248:                                              ; preds = %243
  %249 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 13), align 8, !tbaa !76
  %250 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %63)
  %251 = getelementptr inbounds %class.PacketElement, ptr %249, i64 0, i32 3
  %252 = getelementptr inbounds %class.PacketElement, ptr %249, i64 0, i32 3, i32 1
  %253 = load i64, ptr %252, align 8, !tbaa !71
  %254 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %250) #27
  %255 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %251, i64 noundef 0, i64 noundef %253, ptr noundef %250, i64 noundef %254)
  br label %871

256:                                              ; preds = %216
  %257 = load ptr, ptr @np, align 8, !tbaa !48
  %258 = getelementptr inbounds %class.NEDParser, ptr %257, i64 0, i32 1
  %259 = load i8, ptr %258, align 1, !tbaa !61, !range !64, !noundef !65
  %260 = icmp eq i8 %259, 0
  br i1 %260, label %871, label %261

261:                                              ; preds = %256
  %262 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 14), align 8, !tbaa !77
  %263 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %63)
  %264 = getelementptr inbounds %class.ClassElement, ptr %262, i64 0, i32 3
  %265 = getelementptr inbounds %class.ClassElement, ptr %262, i64 0, i32 3, i32 1
  %266 = load i64, ptr %265, align 8, !tbaa !71
  %267 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %263) #27
  %268 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %264, i64 noundef 0, i64 noundef %266, ptr noundef %263, i64 noundef %267)
  br label %871

269:                                              ; preds = %216
  %270 = load ptr, ptr @np, align 8, !tbaa !48
  %271 = getelementptr inbounds %class.NEDParser, ptr %270, i64 0, i32 1
  %272 = load i8, ptr %271, align 1, !tbaa !61, !range !64, !noundef !65
  %273 = icmp eq i8 %272, 0
  br i1 %273, label %871, label %274

274:                                              ; preds = %269
  %275 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 15), align 8, !tbaa !78
  %276 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %63)
  %277 = getelementptr inbounds %class.StructElement, ptr %275, i64 0, i32 3
  %278 = getelementptr inbounds %class.StructElement, ptr %275, i64 0, i32 3, i32 1
  %279 = load i64, ptr %278, align 8, !tbaa !71
  %280 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %276) #27
  %281 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %277, i64 noundef 0, i64 noundef %279, ptr noundef %276, i64 noundef %280)
  br label %871

282:                                              ; preds = %216
  %283 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 3), align 8, !tbaa !79
  %284 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 36, ptr noundef %283)
  store ptr %284, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 4), align 8, !tbaa !80
  %285 = getelementptr inbounds %struct.my_yyltype, ptr %63, i64 -1
  %286 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %285)
  %287 = getelementptr inbounds %class.NamespaceElement, ptr %284, i64 0, i32 1
  %288 = getelementptr inbounds %class.NamespaceElement, ptr %284, i64 0, i32 1, i32 1
  %289 = load i64, ptr %288, align 8, !tbaa !71
  %290 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %286) #27
  %291 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %287, i64 noundef 0, i64 noundef %289, ptr noundef %286, i64 noundef %290)
  %292 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 4), align 8, !tbaa !80
  %293 = getelementptr inbounds %struct.my_yyltype, ptr %63, i64 -2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %293, i64 32, i1 false), !tbaa.struct !52
  call void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltypeS1_(ptr noundef %292, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %6, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %285)
  br label %871

294:                                              ; preds = %216
  %295 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 3), align 8, !tbaa !79
  %296 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 37, ptr noundef %295)
  store ptr %296, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 5), align 8, !tbaa !81
  %297 = getelementptr inbounds %struct.my_yyltype, ptr %63, i64 -1
  call void @_Z16trimDoubleBraces10my_yyltype(ptr dead_on_unwind nonnull writable sret(%struct.my_yyltype) align 8 %7, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %297)
  %298 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %7)
  %299 = getelementptr inbounds %class.CplusplusElement, ptr %296, i64 0, i32 1
  %300 = getelementptr inbounds %class.CplusplusElement, ptr %296, i64 0, i32 1, i32 1
  %301 = load i64, ptr %300, align 8, !tbaa !71
  %302 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %298) #27
  %303 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %299, i64 noundef 0, i64 noundef %301, ptr noundef %298, i64 noundef %302)
  %304 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 5), align 8, !tbaa !81
  %305 = getelementptr inbounds %struct.my_yyltype, ptr %63, i64 -2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %305, i64 32, i1 false), !tbaa.struct !52
  call void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltypeS1_(ptr noundef %304, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %8, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %297)
  br label %871

306:                                              ; preds = %216
  %307 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 3), align 8, !tbaa !79
  %308 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 38, ptr noundef %307)
  store ptr %308, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 6), align 8, !tbaa !82
  %309 = getelementptr inbounds %struct.my_yyltype, ptr %63, i64 -1
  %310 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %309)
  %311 = getelementptr inbounds %class.StructDeclElement, ptr %308, i64 0, i32 1
  %312 = getelementptr inbounds %class.StructDeclElement, ptr %308, i64 0, i32 1, i32 1
  %313 = load i64, ptr %312, align 8, !tbaa !71
  %314 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %310) #27
  %315 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %311, i64 noundef 0, i64 noundef %313, ptr noundef %310, i64 noundef %314)
  %316 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 6), align 8, !tbaa !82
  %317 = getelementptr inbounds %struct.my_yyltype, ptr %63, i64 -2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %317, i64 32, i1 false), !tbaa.struct !52
  call void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltypeS1_(ptr noundef %316, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %9, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %309)
  br label %871

318:                                              ; preds = %216
  %319 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 3), align 8, !tbaa !79
  %320 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 39, ptr noundef %319)
  store ptr %320, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 7), align 8, !tbaa !83
  %321 = getelementptr inbounds %struct.my_yyltype, ptr %63, i64 -1
  %322 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %321)
  %323 = getelementptr inbounds %class.ClassDeclElement, ptr %320, i64 0, i32 1
  %324 = getelementptr inbounds %class.ClassDeclElement, ptr %320, i64 0, i32 1, i32 1
  %325 = load i64, ptr %324, align 8, !tbaa !71
  %326 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %322) #27
  %327 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %323, i64 noundef 0, i64 noundef %325, ptr noundef %322, i64 noundef %326)
  %328 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 7), align 8, !tbaa !83
  %329 = getelementptr inbounds %class.ClassDeclElement, ptr %328, i64 0, i32 2
  store i8 1, ptr %329, align 8, !tbaa !84
  %330 = getelementptr inbounds %struct.my_yyltype, ptr %63, i64 -2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %330, i64 32, i1 false), !tbaa.struct !52
  call void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltypeS1_(ptr noundef %328, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %10, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %321)
  br label %871

331:                                              ; preds = %216
  %332 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 3), align 8, !tbaa !79
  %333 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 39, ptr noundef %332)
  store ptr %333, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 7), align 8, !tbaa !83
  %334 = getelementptr inbounds %class.ClassDeclElement, ptr %333, i64 0, i32 2
  store i8 0, ptr %334, align 8, !tbaa !84
  %335 = getelementptr inbounds %struct.my_yyltype, ptr %63, i64 -1
  %336 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %335)
  %337 = getelementptr inbounds %class.ClassDeclElement, ptr %333, i64 0, i32 1
  %338 = getelementptr inbounds %class.ClassDeclElement, ptr %333, i64 0, i32 1, i32 1
  %339 = load i64, ptr %338, align 8, !tbaa !71
  %340 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %336) #27
  %341 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %337, i64 noundef 0, i64 noundef %339, ptr noundef %336, i64 noundef %340)
  %342 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 7), align 8, !tbaa !83
  %343 = getelementptr inbounds %struct.my_yyltype, ptr %63, i64 -3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %343, i64 32, i1 false), !tbaa.struct !52
  call void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltypeS1_(ptr noundef %342, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %11, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %335)
  br label %871

344:                                              ; preds = %216
  %345 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 3), align 8, !tbaa !79
  %346 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 39, ptr noundef %345)
  store ptr %346, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 7), align 8, !tbaa !83
  %347 = getelementptr inbounds %class.ClassDeclElement, ptr %346, i64 0, i32 2
  store i8 1, ptr %347, align 8, !tbaa !84
  %348 = getelementptr inbounds %struct.my_yyltype, ptr %63, i64 -3
  %349 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %348)
  %350 = getelementptr inbounds %class.ClassDeclElement, ptr %346, i64 0, i32 1
  %351 = getelementptr inbounds %class.ClassDeclElement, ptr %346, i64 0, i32 1, i32 1
  %352 = load i64, ptr %351, align 8, !tbaa !71
  %353 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %349) #27
  %354 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %350, i64 noundef 0, i64 noundef %352, ptr noundef %349, i64 noundef %353)
  %355 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 7), align 8, !tbaa !83
  %356 = getelementptr inbounds %struct.my_yyltype, ptr %63, i64 -1
  %357 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %356)
  %358 = getelementptr inbounds %class.ClassDeclElement, ptr %355, i64 0, i32 3
  %359 = getelementptr inbounds %class.ClassDeclElement, ptr %355, i64 0, i32 3, i32 1
  %360 = load i64, ptr %359, align 8, !tbaa !71
  %361 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %357) #27
  %362 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %358, i64 noundef 0, i64 noundef %360, ptr noundef %357, i64 noundef %361)
  %363 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 7), align 8, !tbaa !83
  %364 = getelementptr inbounds %struct.my_yyltype, ptr %63, i64 -4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %364, i64 32, i1 false), !tbaa.struct !52
  call void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltypeS1_(ptr noundef %363, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %12, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %356)
  br label %871

365:                                              ; preds = %216
  %366 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 3), align 8, !tbaa !79
  %367 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 40, ptr noundef %366)
  store ptr %367, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 8), align 8, !tbaa !88
  %368 = getelementptr inbounds %struct.my_yyltype, ptr %63, i64 -1
  %369 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %368)
  %370 = getelementptr inbounds %class.MessageDeclElement, ptr %367, i64 0, i32 1
  %371 = getelementptr inbounds %class.MessageDeclElement, ptr %367, i64 0, i32 1, i32 1
  %372 = load i64, ptr %371, align 8, !tbaa !71
  %373 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %369) #27
  %374 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %370, i64 noundef 0, i64 noundef %372, ptr noundef %369, i64 noundef %373)
  %375 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 8), align 8, !tbaa !88
  %376 = getelementptr inbounds %struct.my_yyltype, ptr %63, i64 -2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %376, i64 32, i1 false), !tbaa.struct !52
  call void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltypeS1_(ptr noundef %375, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %13, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %368)
  br label %871

377:                                              ; preds = %216
  %378 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 3), align 8, !tbaa !79
  %379 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 41, ptr noundef %378)
  store ptr %379, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 9), align 8, !tbaa !89
  %380 = getelementptr inbounds %struct.my_yyltype, ptr %63, i64 -1
  %381 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %380)
  %382 = getelementptr inbounds %class.PacketDeclElement, ptr %379, i64 0, i32 1
  %383 = getelementptr inbounds %class.PacketDeclElement, ptr %379, i64 0, i32 1, i32 1
  %384 = load i64, ptr %383, align 8, !tbaa !71
  %385 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %381) #27
  %386 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %382, i64 noundef 0, i64 noundef %384, ptr noundef %381, i64 noundef %385)
  %387 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 9), align 8, !tbaa !89
  %388 = getelementptr inbounds %struct.my_yyltype, ptr %63, i64 -2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %388, i64 32, i1 false), !tbaa.struct !52
  call void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltypeS1_(ptr noundef %387, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %14, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %380)
  br label %871

389:                                              ; preds = %216
  %390 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 3), align 8, !tbaa !79
  %391 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 42, ptr noundef %390)
  store ptr %391, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 10), align 8, !tbaa !90
  %392 = getelementptr inbounds %struct.my_yyltype, ptr %63, i64 -1
  %393 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %392)
  %394 = getelementptr inbounds %class.EnumDeclElement, ptr %391, i64 0, i32 1
  %395 = getelementptr inbounds %class.EnumDeclElement, ptr %391, i64 0, i32 1, i32 1
  %396 = load i64, ptr %395, align 8, !tbaa !71
  %397 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %393) #27
  %398 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %394, i64 noundef 0, i64 noundef %396, ptr noundef %393, i64 noundef %397)
  %399 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 10), align 8, !tbaa !90
  %400 = getelementptr inbounds %struct.my_yyltype, ptr %63, i64 -2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %400, i64 32, i1 false), !tbaa.struct !52
  call void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltypeS1_(ptr noundef %399, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %15, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %392)
  br label %871

401:                                              ; preds = %216
  %402 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 3), align 8, !tbaa !79
  %403 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 43, ptr noundef %402)
  store ptr %403, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 11), align 8, !tbaa !66
  %404 = getelementptr inbounds %struct.my_yyltype, ptr %63, i64 -1
  %405 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %404)
  %406 = getelementptr inbounds %class.EnumElement, ptr %403, i64 0, i32 1
  %407 = getelementptr inbounds %class.EnumElement, ptr %403, i64 0, i32 1, i32 1
  %408 = load i64, ptr %407, align 8, !tbaa !71
  %409 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %405) #27
  %410 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %406, i64 noundef 0, i64 noundef %408, ptr noundef %405, i64 noundef %409)
  %411 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 11), align 8, !tbaa !66
  %412 = getelementptr inbounds %struct.my_yyltype, ptr %63, i64 -2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(32) %412, i64 32, i1 false), !tbaa.struct !52
  call void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltypeS1_(ptr noundef %411, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %16, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %404)
  %413 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 11), align 8, !tbaa !66
  %414 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 44, ptr noundef %413)
  store ptr %414, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 17), align 8, !tbaa !91
  br label %871

415:                                              ; preds = %216
  %416 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 11), align 8, !tbaa !66
  call void @_Z20storeTrailingCommentP10NEDElement10my_yyltype(ptr noundef %416, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5)
  br label %871

417:                                              ; preds = %216
  %418 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 3), align 8, !tbaa !79
  %419 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 43, ptr noundef %418)
  store ptr %419, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 11), align 8, !tbaa !66
  %420 = getelementptr inbounds %struct.my_yyltype, ptr %63, i64 -3
  %421 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %420)
  %422 = getelementptr inbounds %class.EnumElement, ptr %419, i64 0, i32 1
  %423 = getelementptr inbounds %class.EnumElement, ptr %419, i64 0, i32 1, i32 1
  %424 = load i64, ptr %423, align 8, !tbaa !71
  %425 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %421) #27
  %426 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %422, i64 noundef 0, i64 noundef %424, ptr noundef %421, i64 noundef %425)
  %427 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 11), align 8, !tbaa !66
  %428 = getelementptr inbounds %struct.my_yyltype, ptr %63, i64 -1
  %429 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %428)
  %430 = getelementptr inbounds %class.EnumElement, ptr %427, i64 0, i32 2
  %431 = getelementptr inbounds %class.EnumElement, ptr %427, i64 0, i32 2, i32 1
  %432 = load i64, ptr %431, align 8, !tbaa !71
  %433 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %429) #27
  %434 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %430, i64 noundef 0, i64 noundef %432, ptr noundef %429, i64 noundef %433)
  %435 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 11), align 8, !tbaa !66
  %436 = getelementptr inbounds %struct.my_yyltype, ptr %63, i64 -4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(32) %436, i64 32, i1 false), !tbaa.struct !52
  call void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltypeS1_(ptr noundef %435, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %17, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %428)
  %437 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 11), align 8, !tbaa !66
  %438 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 44, ptr noundef %437)
  store ptr %438, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 17), align 8, !tbaa !91
  br label %871

439:                                              ; preds = %216
  %440 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 11), align 8, !tbaa !66
  call void @_Z20storeTrailingCommentP10NEDElement10my_yyltype(ptr noundef %440, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5)
  br label %871

441:                                              ; preds = %216
  %442 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 17), align 8, !tbaa !91
  %443 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 45, ptr noundef %442)
  store ptr %443, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 18), align 8, !tbaa !92
  %444 = getelementptr inbounds %struct.my_yyltype, ptr %63, i64 -1
  %445 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %444)
  %446 = getelementptr inbounds %class.EnumFieldElement, ptr %443, i64 0, i32 1
  %447 = getelementptr inbounds %class.EnumFieldElement, ptr %443, i64 0, i32 1, i32 1
  %448 = load i64, ptr %447, align 8, !tbaa !71
  %449 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %445) #27
  %450 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %446, i64 noundef 0, i64 noundef %448, ptr noundef %445, i64 noundef %449)
  %451 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 18), align 8, !tbaa !92
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(32) %444, i64 32, i1 false), !tbaa.struct !52
  call void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltypeS1_(ptr noundef %451, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %18, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %444)
  br label %871

452:                                              ; preds = %216
  %453 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 17), align 8, !tbaa !91
  %454 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 45, ptr noundef %453)
  store ptr %454, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 18), align 8, !tbaa !92
  %455 = getelementptr inbounds %struct.my_yyltype, ptr %63, i64 -3
  %456 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %455)
  %457 = getelementptr inbounds %class.EnumFieldElement, ptr %454, i64 0, i32 1
  %458 = getelementptr inbounds %class.EnumFieldElement, ptr %454, i64 0, i32 1, i32 1
  %459 = load i64, ptr %458, align 8, !tbaa !71
  %460 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %456) #27
  %461 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %457, i64 noundef 0, i64 noundef %459, ptr noundef %456, i64 noundef %460)
  %462 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 18), align 8, !tbaa !92
  %463 = getelementptr inbounds %struct.my_yyltype, ptr %63, i64 -1
  %464 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %463)
  %465 = getelementptr inbounds %class.EnumFieldElement, ptr %462, i64 0, i32 2
  %466 = getelementptr inbounds %class.EnumFieldElement, ptr %462, i64 0, i32 2, i32 1
  %467 = load i64, ptr %466, align 8, !tbaa !71
  %468 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %464) #27
  %469 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %465, i64 noundef 0, i64 noundef %467, ptr noundef %464, i64 noundef %468)
  %470 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 18), align 8, !tbaa !92
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 8 dereferenceable(32) %455, i64 32, i1 false), !tbaa.struct !52
  call void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltypeS1_(ptr noundef %470, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %19, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %463)
  br label %871

471:                                              ; preds = %216
  %472 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 12), align 8, !tbaa !75
  call void @_Z20storeTrailingCommentP10NEDElement10my_yyltype(ptr noundef %472, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5)
  br label %871

473:                                              ; preds = %216
  %474 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 13), align 8, !tbaa !76
  call void @_Z20storeTrailingCommentP10NEDElement10my_yyltype(ptr noundef %474, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5)
  br label %871

475:                                              ; preds = %216
  %476 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 14), align 8, !tbaa !77
  call void @_Z20storeTrailingCommentP10NEDElement10my_yyltype(ptr noundef %476, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5)
  br label %871

477:                                              ; preds = %216
  %478 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 15), align 8, !tbaa !78
  call void @_Z20storeTrailingCommentP10NEDElement10my_yyltype(ptr noundef %478, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5)
  br label %871

479:                                              ; preds = %216
  %480 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 3), align 8, !tbaa !79
  %481 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 46, ptr noundef %480)
  store ptr %481, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 12), align 8, !tbaa !75
  store ptr %481, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 16), align 8, !tbaa !93
  %482 = getelementptr inbounds %struct.my_yyltype, ptr %63, i64 -1
  %483 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %482)
  %484 = getelementptr inbounds %class.MessageElement, ptr %481, i64 0, i32 1
  %485 = getelementptr inbounds %class.MessageElement, ptr %481, i64 0, i32 1, i32 1
  %486 = load i64, ptr %485, align 8, !tbaa !71
  %487 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %483) #27
  %488 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %484, i64 noundef 0, i64 noundef %486, ptr noundef %483, i64 noundef %487)
  %489 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 12), align 8, !tbaa !75
  %490 = getelementptr inbounds %struct.my_yyltype, ptr %63, i64 -2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(32) %490, i64 32, i1 false), !tbaa.struct !52
  call void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltypeS1_(ptr noundef %489, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %20, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %482)
  br label %871

491:                                              ; preds = %216
  %492 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 3), align 8, !tbaa !79
  %493 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 46, ptr noundef %492)
  store ptr %493, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 12), align 8, !tbaa !75
  store ptr %493, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 16), align 8, !tbaa !93
  %494 = getelementptr inbounds %struct.my_yyltype, ptr %63, i64 -3
  %495 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %494)
  %496 = getelementptr inbounds %class.MessageElement, ptr %493, i64 0, i32 1
  %497 = getelementptr inbounds %class.MessageElement, ptr %493, i64 0, i32 1, i32 1
  %498 = load i64, ptr %497, align 8, !tbaa !71
  %499 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %495) #27
  %500 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %496, i64 noundef 0, i64 noundef %498, ptr noundef %495, i64 noundef %499)
  %501 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 12), align 8, !tbaa !75
  %502 = getelementptr inbounds %struct.my_yyltype, ptr %63, i64 -1
  %503 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %502)
  %504 = getelementptr inbounds %class.MessageElement, ptr %501, i64 0, i32 2
  %505 = getelementptr inbounds %class.MessageElement, ptr %501, i64 0, i32 2, i32 1
  %506 = load i64, ptr %505, align 8, !tbaa !71
  %507 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %503) #27
  %508 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %504, i64 noundef 0, i64 noundef %506, ptr noundef %503, i64 noundef %507)
  %509 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 12), align 8, !tbaa !75
  %510 = getelementptr inbounds %struct.my_yyltype, ptr %63, i64 -4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(32) %510, i64 32, i1 false), !tbaa.struct !52
  call void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltypeS1_(ptr noundef %509, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %21, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %502)
  br label %871

511:                                              ; preds = %216
  %512 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 3), align 8, !tbaa !79
  %513 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 47, ptr noundef %512)
  store ptr %513, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 13), align 8, !tbaa !76
  store ptr %513, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 16), align 8, !tbaa !93
  %514 = getelementptr inbounds %struct.my_yyltype, ptr %63, i64 -1
  %515 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %514)
  %516 = getelementptr inbounds %class.PacketElement, ptr %513, i64 0, i32 1
  %517 = getelementptr inbounds %class.PacketElement, ptr %513, i64 0, i32 1, i32 1
  %518 = load i64, ptr %517, align 8, !tbaa !71
  %519 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %515) #27
  %520 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %516, i64 noundef 0, i64 noundef %518, ptr noundef %515, i64 noundef %519)
  %521 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 13), align 8, !tbaa !76
  %522 = getelementptr inbounds %struct.my_yyltype, ptr %63, i64 -2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 8 dereferenceable(32) %522, i64 32, i1 false), !tbaa.struct !52
  call void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltypeS1_(ptr noundef %521, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %22, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %514)
  br label %871

523:                                              ; preds = %216
  %524 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 3), align 8, !tbaa !79
  %525 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 47, ptr noundef %524)
  store ptr %525, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 13), align 8, !tbaa !76
  store ptr %525, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 16), align 8, !tbaa !93
  %526 = getelementptr inbounds %struct.my_yyltype, ptr %63, i64 -3
  %527 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %526)
  %528 = getelementptr inbounds %class.PacketElement, ptr %525, i64 0, i32 1
  %529 = getelementptr inbounds %class.PacketElement, ptr %525, i64 0, i32 1, i32 1
  %530 = load i64, ptr %529, align 8, !tbaa !71
  %531 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %527) #27
  %532 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %528, i64 noundef 0, i64 noundef %530, ptr noundef %527, i64 noundef %531)
  %533 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 13), align 8, !tbaa !76
  %534 = getelementptr inbounds %struct.my_yyltype, ptr %63, i64 -1
  %535 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %534)
  %536 = getelementptr inbounds %class.PacketElement, ptr %533, i64 0, i32 2
  %537 = getelementptr inbounds %class.PacketElement, ptr %533, i64 0, i32 2, i32 1
  %538 = load i64, ptr %537, align 8, !tbaa !71
  %539 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %535) #27
  %540 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %536, i64 noundef 0, i64 noundef %538, ptr noundef %535, i64 noundef %539)
  %541 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 13), align 8, !tbaa !76
  %542 = getelementptr inbounds %struct.my_yyltype, ptr %63, i64 -4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull align 8 dereferenceable(32) %542, i64 32, i1 false), !tbaa.struct !52
  call void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltypeS1_(ptr noundef %541, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %23, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %534)
  br label %871

543:                                              ; preds = %216
  %544 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 3), align 8, !tbaa !79
  %545 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 48, ptr noundef %544)
  store ptr %545, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 14), align 8, !tbaa !77
  store ptr %545, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 16), align 8, !tbaa !93
  %546 = getelementptr inbounds %struct.my_yyltype, ptr %63, i64 -1
  %547 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %546)
  %548 = getelementptr inbounds %class.ClassElement, ptr %545, i64 0, i32 1
  %549 = getelementptr inbounds %class.ClassElement, ptr %545, i64 0, i32 1, i32 1
  %550 = load i64, ptr %549, align 8, !tbaa !71
  %551 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %547) #27
  %552 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %548, i64 noundef 0, i64 noundef %550, ptr noundef %547, i64 noundef %551)
  %553 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 14), align 8, !tbaa !77
  %554 = getelementptr inbounds %struct.my_yyltype, ptr %63, i64 -2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull align 8 dereferenceable(32) %554, i64 32, i1 false), !tbaa.struct !52
  call void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltypeS1_(ptr noundef %553, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %24, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %546)
  br label %871

555:                                              ; preds = %216
  %556 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 3), align 8, !tbaa !79
  %557 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 48, ptr noundef %556)
  store ptr %557, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 14), align 8, !tbaa !77
  store ptr %557, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 16), align 8, !tbaa !93
  %558 = getelementptr inbounds %struct.my_yyltype, ptr %63, i64 -3
  %559 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %558)
  %560 = getelementptr inbounds %class.ClassElement, ptr %557, i64 0, i32 1
  %561 = getelementptr inbounds %class.ClassElement, ptr %557, i64 0, i32 1, i32 1
  %562 = load i64, ptr %561, align 8, !tbaa !71
  %563 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %559) #27
  %564 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %560, i64 noundef 0, i64 noundef %562, ptr noundef %559, i64 noundef %563)
  %565 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 14), align 8, !tbaa !77
  %566 = getelementptr inbounds %struct.my_yyltype, ptr %63, i64 -1
  %567 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %566)
  %568 = getelementptr inbounds %class.ClassElement, ptr %565, i64 0, i32 2
  %569 = getelementptr inbounds %class.ClassElement, ptr %565, i64 0, i32 2, i32 1
  %570 = load i64, ptr %569, align 8, !tbaa !71
  %571 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %567) #27
  %572 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %568, i64 noundef 0, i64 noundef %570, ptr noundef %567, i64 noundef %571)
  %573 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 14), align 8, !tbaa !77
  %574 = getelementptr inbounds %struct.my_yyltype, ptr %63, i64 -4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull align 8 dereferenceable(32) %574, i64 32, i1 false), !tbaa.struct !52
  call void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltypeS1_(ptr noundef %573, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %25, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %566)
  br label %871

575:                                              ; preds = %216
  %576 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 3), align 8, !tbaa !79
  %577 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 49, ptr noundef %576)
  store ptr %577, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 15), align 8, !tbaa !78
  store ptr %577, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 16), align 8, !tbaa !93
  %578 = getelementptr inbounds %struct.my_yyltype, ptr %63, i64 -1
  %579 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %578)
  %580 = getelementptr inbounds %class.StructElement, ptr %577, i64 0, i32 1
  %581 = getelementptr inbounds %class.StructElement, ptr %577, i64 0, i32 1, i32 1
  %582 = load i64, ptr %581, align 8, !tbaa !71
  %583 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %579) #27
  %584 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %580, i64 noundef 0, i64 noundef %582, ptr noundef %579, i64 noundef %583)
  %585 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 15), align 8, !tbaa !78
  %586 = getelementptr inbounds %struct.my_yyltype, ptr %63, i64 -2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef nonnull align 8 dereferenceable(32) %586, i64 32, i1 false), !tbaa.struct !52
  call void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltypeS1_(ptr noundef %585, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %26, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %578)
  br label %871

587:                                              ; preds = %216
  %588 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 3), align 8, !tbaa !79
  %589 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 49, ptr noundef %588)
  store ptr %589, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 15), align 8, !tbaa !78
  store ptr %589, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 16), align 8, !tbaa !93
  %590 = getelementptr inbounds %struct.my_yyltype, ptr %63, i64 -3
  %591 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %590)
  %592 = getelementptr inbounds %class.StructElement, ptr %589, i64 0, i32 1
  %593 = getelementptr inbounds %class.StructElement, ptr %589, i64 0, i32 1, i32 1
  %594 = load i64, ptr %593, align 8, !tbaa !71
  %595 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %591) #27
  %596 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %592, i64 noundef 0, i64 noundef %594, ptr noundef %591, i64 noundef %595)
  %597 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 15), align 8, !tbaa !78
  %598 = getelementptr inbounds %struct.my_yyltype, ptr %63, i64 -1
  %599 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %598)
  %600 = getelementptr inbounds %class.StructElement, ptr %597, i64 0, i32 2
  %601 = getelementptr inbounds %class.StructElement, ptr %597, i64 0, i32 2, i32 1
  %602 = load i64, ptr %601, align 8, !tbaa !71
  %603 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %599) #27
  %604 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %600, i64 noundef 0, i64 noundef %602, ptr noundef %599, i64 noundef %603)
  %605 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 15), align 8, !tbaa !78
  %606 = getelementptr inbounds %struct.my_yyltype, ptr %63, i64 -4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull align 8 dereferenceable(32) %606, i64 32, i1 false), !tbaa.struct !52
  call void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltypeS1_(ptr noundef %605, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %27, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %598)
  br label %871

607:                                              ; preds = %216
  %608 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 16), align 8, !tbaa !93
  %609 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 50, ptr noundef %608)
  store ptr %609, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 19), align 8, !tbaa !94
  %610 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %63)
  %611 = getelementptr inbounds %class.FieldElement, ptr %609, i64 0, i32 1
  %612 = getelementptr inbounds %class.FieldElement, ptr %609, i64 0, i32 1, i32 1
  %613 = load i64, ptr %612, align 8, !tbaa !71
  %614 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %610) #27
  %615 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %611, i64 noundef 0, i64 noundef %613, ptr noundef %610, i64 noundef %614)
  %616 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 19), align 8, !tbaa !94
  %617 = getelementptr inbounds %struct.my_yyltype, ptr %63, i64 -1
  %618 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %617)
  %619 = getelementptr inbounds %class.FieldElement, ptr %616, i64 0, i32 2
  %620 = getelementptr inbounds %class.FieldElement, ptr %616, i64 0, i32 2, i32 1
  %621 = load i64, ptr %620, align 8, !tbaa !71
  %622 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %618) #27
  %623 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %619, i64 noundef 0, i64 noundef %621, ptr noundef %618, i64 noundef %622)
  %624 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 19), align 8, !tbaa !94
  %625 = load i8, ptr @_ZL2ps, align 8, !tbaa !95, !range !64, !noundef !65
  %626 = getelementptr inbounds %class.FieldElement, ptr %624, i64 0, i32 3
  store i8 %625, ptr %626, align 8, !tbaa !96
  %627 = load i8, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 1), align 1, !tbaa !98, !range !64, !noundef !65
  %628 = getelementptr inbounds %class.FieldElement, ptr %624, i64 0, i32 4
  store i8 %627, ptr %628, align 1, !tbaa !99
  br label %871

629:                                              ; preds = %216
  %630 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 19), align 8, !tbaa !94
  %631 = getelementptr inbounds %struct.my_yyltype, ptr %63, i64 -7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %28, ptr noundef nonnull align 8 dereferenceable(32) %631, i64 32, i1 false), !tbaa.struct !52
  %632 = getelementptr inbounds %struct.my_yyltype, ptr %63, i64 -1
  call void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltypeS1_(ptr noundef %630, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %28, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %632)
  br label %871

633:                                              ; preds = %216
  %634 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 16), align 8, !tbaa !93
  %635 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 50, ptr noundef %634)
  store ptr %635, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 19), align 8, !tbaa !94
  %636 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %63)
  %637 = getelementptr inbounds %class.FieldElement, ptr %635, i64 0, i32 1
  %638 = getelementptr inbounds %class.FieldElement, ptr %635, i64 0, i32 1, i32 1
  %639 = load i64, ptr %638, align 8, !tbaa !71
  %640 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %636) #27
  %641 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %637, i64 noundef 0, i64 noundef %639, ptr noundef %636, i64 noundef %640)
  %642 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 19), align 8, !tbaa !94
  %643 = load i8, ptr @_ZL2ps, align 8, !tbaa !95, !range !64, !noundef !65
  %644 = getelementptr inbounds %class.FieldElement, ptr %642, i64 0, i32 3
  store i8 %643, ptr %644, align 8, !tbaa !96
  %645 = load i8, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 1), align 1, !tbaa !98, !range !64, !noundef !65
  %646 = getelementptr inbounds %class.FieldElement, ptr %642, i64 0, i32 4
  store i8 %645, ptr %646, align 1, !tbaa !99
  br label %871

647:                                              ; preds = %216
  %648 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 19), align 8, !tbaa !94
  %649 = getelementptr inbounds %struct.my_yyltype, ptr %63, i64 -6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef nonnull align 8 dereferenceable(32) %649, i64 32, i1 false), !tbaa.struct !52
  %650 = getelementptr inbounds %struct.my_yyltype, ptr %63, i64 -1
  call void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltypeS1_(ptr noundef %648, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %29, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %650)
  br label %871

651:                                              ; preds = %216
  store i8 1, ptr @_ZL2ps, align 8, !tbaa !95
  store i8 0, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 1), align 1, !tbaa !98
  br label %871

652:                                              ; preds = %216
  store i8 0, ptr @_ZL2ps, align 8, !tbaa !95
  store i8 1, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 1), align 1, !tbaa !98
  br label %871

653:                                              ; preds = %216
  store i8 1, ptr @_ZL2ps, align 8, !tbaa !95
  store i8 1, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 1), align 1, !tbaa !98
  br label %871

654:                                              ; preds = %216
  store i8 1, ptr @_ZL2ps, align 8, !tbaa !95
  store i8 1, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 1), align 1, !tbaa !98
  br label %871

655:                                              ; preds = %216
  store i8 0, ptr @_ZL2ps, align 8, !tbaa !95
  store i8 0, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 1), align 1, !tbaa !98
  br label %871

656:                                              ; preds = %216
  %657 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 19), align 8, !tbaa !94
  %658 = getelementptr inbounds %class.FieldElement, ptr %657, i64 0, i32 5
  store i8 1, ptr %658, align 2, !tbaa !100
  %659 = getelementptr inbounds %struct.my_yyltype, ptr %63, i64 -1
  %660 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %659)
  %661 = getelementptr inbounds %class.FieldElement, ptr %657, i64 0, i32 6
  %662 = getelementptr inbounds %class.FieldElement, ptr %657, i64 0, i32 6, i32 1
  %663 = load i64, ptr %662, align 8, !tbaa !71
  %664 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %660) #27
  %665 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %661, i64 noundef 0, i64 noundef %663, ptr noundef %660, i64 noundef %664)
  br label %871

666:                                              ; preds = %216
  %667 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 19), align 8, !tbaa !94
  %668 = getelementptr inbounds %class.FieldElement, ptr %667, i64 0, i32 5
  store i8 1, ptr %668, align 2, !tbaa !100
  %669 = getelementptr inbounds %struct.my_yyltype, ptr %63, i64 -1
  %670 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %669)
  %671 = getelementptr inbounds %class.FieldElement, ptr %667, i64 0, i32 6
  %672 = getelementptr inbounds %class.FieldElement, ptr %667, i64 0, i32 6, i32 1
  %673 = load i64, ptr %672, align 8, !tbaa !71
  %674 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %670) #27
  %675 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %671, i64 noundef 0, i64 noundef %673, ptr noundef %670, i64 noundef %674)
  br label %871

676:                                              ; preds = %216
  %677 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 19), align 8, !tbaa !94
  %678 = getelementptr inbounds %class.FieldElement, ptr %677, i64 0, i32 5
  store i8 1, ptr %678, align 2, !tbaa !100
  br label %871

679:                                              ; preds = %216
  %680 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 19), align 8, !tbaa !94
  %681 = getelementptr inbounds %struct.my_yyltype, ptr %63, i64 -1
  %682 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %681)
  %683 = getelementptr inbounds %class.FieldElement, ptr %680, i64 0, i32 7
  %684 = getelementptr inbounds %class.FieldElement, ptr %680, i64 0, i32 7, i32 1
  %685 = load i64, ptr %684, align 8, !tbaa !71
  %686 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %682) #27
  %687 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %683, i64 noundef 0, i64 noundef %685, ptr noundef %682, i64 noundef %686)
  br label %871

688:                                              ; preds = %216
  %689 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 19), align 8, !tbaa !94
  %690 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %63)
  %691 = getelementptr inbounds %class.FieldElement, ptr %689, i64 0, i32 8
  %692 = getelementptr inbounds %class.FieldElement, ptr %689, i64 0, i32 8, i32 1
  %693 = load i64, ptr %692, align 8, !tbaa !71
  %694 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %690) #27
  %695 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %691, i64 noundef 0, i64 noundef %693, ptr noundef %690, i64 noundef %694)
  br label %871

696:                                              ; preds = %216
  %697 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 20), align 8, !tbaa !101
  call void @_Z8storePosP10NEDElement10my_yyltype(ptr noundef %697, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5)
  %698 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 20), align 8, !tbaa !101
  call void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltype(ptr noundef %698, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5)
  br label %871

699:                                              ; preds = %216
  %700 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 16), align 8, !tbaa !93
  %701 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %63)
  %702 = call noundef ptr @_Z11addPropertyP10NEDElementPKc(ptr noundef %700, ptr noundef %701)
  store ptr %702, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 20), align 8, !tbaa !101
  %703 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 2), align 8, !tbaa !41
  %704 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1), align 8, !tbaa !102
  %705 = icmp eq ptr %704, %703
  br i1 %705, label %871, label %706

706:                                              ; preds = %699
  store ptr %703, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1), align 8, !tbaa !102
  br label %871

707:                                              ; preds = %216
  %708 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 16), align 8, !tbaa !93
  %709 = getelementptr inbounds %struct.my_yyltype, ptr %63, i64 -3
  %710 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %709)
  %711 = call noundef ptr @_Z11addPropertyP10NEDElementPKc(ptr noundef %708, ptr noundef %710)
  store ptr %711, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 20), align 8, !tbaa !101
  %712 = getelementptr inbounds %struct.my_yyltype, ptr %63, i64 -1
  %713 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %712)
  %714 = getelementptr inbounds %class.PropertyElement, ptr %711, i64 0, i32 3
  %715 = getelementptr inbounds %class.PropertyElement, ptr %711, i64 0, i32 3, i32 1
  %716 = load i64, ptr %715, align 8, !tbaa !71
  %717 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %713) #27
  %718 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %714, i64 noundef 0, i64 noundef %716, ptr noundef %713, i64 noundef %717)
  %719 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 2), align 8, !tbaa !41
  %720 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1), align 8, !tbaa !102
  %721 = icmp eq ptr %720, %719
  br i1 %721, label %871, label %722

722:                                              ; preds = %707
  store ptr %719, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1), align 8, !tbaa !102
  br label %871

723:                                              ; preds = %216
  %724 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 20), align 8, !tbaa !101
  %725 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 18, ptr noundef %724)
  store ptr %725, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 21), align 8, !tbaa !103
  %726 = getelementptr inbounds %struct.my_yyltype, ptr %63, i64 -2
  %727 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %726)
  %728 = getelementptr inbounds %class.PropertyKeyElement, ptr %725, i64 0, i32 1
  %729 = getelementptr inbounds %class.PropertyKeyElement, ptr %725, i64 0, i32 1, i32 1
  %730 = load i64, ptr %729, align 8, !tbaa !71
  %731 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %727) #27
  %732 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %728, i64 noundef 0, i64 noundef %730, ptr noundef %727, i64 noundef %731)
  %733 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1), align 8, !tbaa !102
  %734 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 2), align 8, !tbaa !41
  %735 = ptrtoint ptr %733 to i64
  %736 = ptrtoint ptr %734 to i64
  %737 = sub i64 %735, %736
  %738 = lshr exact i64 %737, 3
  %739 = trunc i64 %738 to i32
  %740 = icmp sgt i32 %739, 0
  br i1 %740, label %748, label %741

741:                                              ; preds = %748, %723
  %742 = phi ptr [ %733, %723 ], [ %758, %748 ]
  %743 = phi ptr [ %734, %723 ], [ %759, %748 ]
  %744 = icmp eq ptr %742, %743
  br i1 %744, label %746, label %745

745:                                              ; preds = %741
  store ptr %743, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1), align 8, !tbaa !102
  br label %746

746:                                              ; preds = %741, %745
  %747 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 21), align 8, !tbaa !103
  call void @_Z8storePosP10NEDElement10my_yyltype(ptr noundef %747, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5)
  br label %871

748:                                              ; preds = %723, %748
  %749 = phi i64 [ %757, %748 ], [ 0, %723 ]
  %750 = phi ptr [ %759, %748 ], [ %734, %723 ]
  %751 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 21), align 8, !tbaa !103
  %752 = getelementptr inbounds ptr, ptr %750, i64 %749
  %753 = load ptr, ptr %752, align 8, !tbaa !48
  %754 = load ptr, ptr %751, align 8, !tbaa !104
  %755 = getelementptr inbounds ptr, ptr %754, i64 27
  %756 = load ptr, ptr %755, align 8
  call void %756(ptr noundef nonnull align 8 dereferenceable(112) %751, ptr noundef %753)
  %757 = add nuw nsw i64 %749, 1
  %758 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1), align 8, !tbaa !102
  %759 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 2), align 8, !tbaa !41
  %760 = ptrtoint ptr %758 to i64
  %761 = ptrtoint ptr %759 to i64
  %762 = sub i64 %760, %761
  %763 = shl i64 %762, 29
  %764 = ashr i64 %763, 32
  %765 = icmp slt i64 %757, %764
  br i1 %765, label %748, label %741, !llvm.loop !106

766:                                              ; preds = %216
  %767 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 20), align 8, !tbaa !101
  %768 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 18, ptr noundef %767)
  store ptr %768, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 21), align 8, !tbaa !103
  %769 = load ptr, ptr %64, align 8, !tbaa !48
  %770 = load ptr, ptr %768, align 8, !tbaa !104
  %771 = getelementptr inbounds ptr, ptr %770, i64 27
  %772 = load ptr, ptr %771, align 8
  call void %772(ptr noundef nonnull align 8 dereferenceable(112) %768, ptr noundef %769)
  %773 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1), align 8, !tbaa !102
  %774 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 2), align 8, !tbaa !41
  %775 = ptrtoint ptr %773 to i64
  %776 = ptrtoint ptr %774 to i64
  %777 = sub i64 %775, %776
  %778 = lshr exact i64 %777, 3
  %779 = trunc i64 %778 to i32
  %780 = icmp sgt i32 %779, 0
  br i1 %780, label %788, label %781

781:                                              ; preds = %788, %766
  %782 = phi ptr [ %773, %766 ], [ %798, %788 ]
  %783 = phi ptr [ %774, %766 ], [ %799, %788 ]
  %784 = icmp eq ptr %782, %783
  br i1 %784, label %786, label %785

785:                                              ; preds = %781
  store ptr %783, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1), align 8, !tbaa !102
  br label %786

786:                                              ; preds = %781, %785
  %787 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 21), align 8, !tbaa !103
  call void @_Z8storePosP10NEDElement10my_yyltype(ptr noundef %787, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5)
  br label %871

788:                                              ; preds = %766, %788
  %789 = phi i64 [ %797, %788 ], [ 0, %766 ]
  %790 = phi ptr [ %799, %788 ], [ %774, %766 ]
  %791 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 21), align 8, !tbaa !103
  %792 = getelementptr inbounds ptr, ptr %790, i64 %789
  %793 = load ptr, ptr %792, align 8, !tbaa !48
  %794 = load ptr, ptr %791, align 8, !tbaa !104
  %795 = getelementptr inbounds ptr, ptr %794, i64 27
  %796 = load ptr, ptr %795, align 8
  call void %796(ptr noundef nonnull align 8 dereferenceable(112) %791, ptr noundef %793)
  %797 = add nuw nsw i64 %789, 1
  %798 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1), align 8, !tbaa !102
  %799 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 2), align 8, !tbaa !41
  %800 = ptrtoint ptr %798 to i64
  %801 = ptrtoint ptr %799 to i64
  %802 = sub i64 %800, %801
  %803 = shl i64 %802, 29
  %804 = ashr i64 %803, 32
  %805 = icmp slt i64 %797, %804
  br i1 %805, label %788, label %781, !llvm.loop !107

806:                                              ; preds = %216
  %807 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1), align 8, !tbaa !48
  %808 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 2, i32 0, i32 0, i32 0, i32 2), align 8, !tbaa !108
  %809 = icmp eq ptr %807, %808
  br i1 %809, label %814, label %810

810:                                              ; preds = %806
  %811 = load ptr, ptr %64, align 8, !tbaa !48
  store ptr %811, ptr %807, align 8, !tbaa !48
  %812 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1), align 8, !tbaa !102
  %813 = getelementptr inbounds ptr, ptr %812, i64 1
  store ptr %813, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1), align 8, !tbaa !102
  br label %871

814:                                              ; preds = %806
  call void @_ZNSt6vectorIP10NEDElementSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 2), ptr %807, ptr noundef nonnull align 8 dereferenceable(8) %64)
  br label %871

815:                                              ; preds = %216
  %816 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1), align 8, !tbaa !48
  %817 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 2, i32 0, i32 0, i32 0, i32 2), align 8, !tbaa !108
  %818 = icmp eq ptr %816, %817
  br i1 %818, label %823, label %819

819:                                              ; preds = %815
  %820 = load ptr, ptr %64, align 8, !tbaa !48
  store ptr %820, ptr %816, align 8, !tbaa !48
  %821 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1), align 8, !tbaa !102
  %822 = getelementptr inbounds ptr, ptr %821, i64 1
  store ptr %822, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1), align 8, !tbaa !102
  br label %871

823:                                              ; preds = %815
  call void @_ZNSt6vectorIP10NEDElementSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 2), ptr %816, ptr noundef nonnull align 8 dereferenceable(8) %64)
  br label %871

824:                                              ; preds = %216
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef nonnull align 8 dereferenceable(32) %63, i64 32, i1 false), !tbaa.struct !52
  %825 = call noundef ptr @_Z13createLiterali10my_yyltypeS_(i32 noundef 2, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %30, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %63)
  br label %871

826:                                              ; preds = %216
  %827 = call noundef ptr @_Z13createLiterali10my_yyltypeS_(i32 noundef 2, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5)
  br label %871

828:                                              ; preds = %216
  %829 = call noundef ptr @_Z19createStringLiteral10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %63)
  br label %871

830:                                              ; preds = %216
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %31, ptr noundef nonnull align 8 dereferenceable(32) %63, i64 32, i1 false), !tbaa.struct !52
  %831 = call noundef ptr @_Z13createLiterali10my_yyltypeS_(i32 noundef 3, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %31, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %63)
  br label %871

832:                                              ; preds = %216
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %32, ptr noundef nonnull align 8 dereferenceable(32) %63, i64 32, i1 false), !tbaa.struct !52
  %833 = call noundef ptr @_Z13createLiterali10my_yyltypeS_(i32 noundef 3, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %32, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %63)
  br label %871

834:                                              ; preds = %216
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %33, ptr noundef nonnull align 8 dereferenceable(32) %63, i64 32, i1 false), !tbaa.struct !52
  %835 = call noundef ptr @_Z13createLiterali10my_yyltypeS_(i32 noundef 1, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %33, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %63)
  br label %871

836:                                              ; preds = %216
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %34, ptr noundef nonnull align 8 dereferenceable(32) %63, i64 32, i1 false), !tbaa.struct !52
  %837 = call noundef ptr @_Z13createLiterali10my_yyltypeS_(i32 noundef 0, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %34, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %63)
  br label %871

838:                                              ; preds = %216
  %839 = call noundef ptr @_Z21createQuantityLiteral10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %63)
  br label %871

840:                                              ; preds = %216
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %35, ptr noundef nonnull align 8 dereferenceable(32) %63, i64 32, i1 false), !tbaa.struct !52
  %841 = call noundef ptr @_Z13createLiterali10my_yyltypeS_(i32 noundef 4, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %35, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %63)
  br label %871

842:                                              ; preds = %216
  %843 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 34, ptr noundef null)
  call void @_ZN14LiteralElement7setTypeEi(ptr noundef nonnull align 8 dereferenceable(216) %843, i32 noundef 4)
  br label %871

844:                                              ; preds = %216
  %845 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 3), align 8, !tbaa !79
  %846 = getelementptr inbounds %class.MsgFileElement, ptr %845, i64 0, i32 2
  %847 = getelementptr inbounds %class.MsgFileElement, ptr %845, i64 0, i32 2, i32 1
  %848 = load i64, ptr %847, align 8, !tbaa !71
  %849 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %846, i64 noundef 0, i64 noundef %848, ptr noundef nonnull @.str.8, i64 noundef 1)
  br label %871

850:                                              ; preds = %216
  %851 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 3), align 8, !tbaa !79
  %852 = getelementptr inbounds %class.MsgFileElement, ptr %851, i64 0, i32 2
  %853 = getelementptr inbounds %class.MsgFileElement, ptr %851, i64 0, i32 2, i32 1
  %854 = load i64, ptr %853, align 8, !tbaa !71
  %855 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %852, i64 noundef 0, i64 noundef %854, ptr noundef nonnull @.str.8, i64 noundef 1)
  br label %871

856:                                              ; preds = %216
  %857 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 16), align 8, !tbaa !93
  %858 = getelementptr inbounds %struct.my_yyltype, ptr %63, i64 -3
  %859 = call noundef ptr @_Z8toString10my_yyltype(ptr noundef nonnull byval(%struct.my_yyltype) align 8 %858)
  %860 = call noundef ptr @_Z11addPropertyP10NEDElementPKc(ptr noundef %857, ptr noundef %859)
  store ptr %860, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 20), align 8, !tbaa !101
  %861 = call noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef 18, ptr noundef %860)
  store ptr %861, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 21), align 8, !tbaa !103
  %862 = getelementptr inbounds ptr, ptr %64, i64 -1
  %863 = load ptr, ptr %862, align 8, !tbaa !48
  %864 = load ptr, ptr %861, align 8, !tbaa !104
  %865 = getelementptr inbounds ptr, ptr %864, i64 27
  %866 = load ptr, ptr %865, align 8
  call void %866(ptr noundef nonnull align 8 dereferenceable(112) %861, ptr noundef %863)
  %867 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 21), align 8, !tbaa !103
  %868 = getelementptr inbounds %struct.my_yyltype, ptr %63, i64 -2
  call void @_Z8storePosP10NEDElement10my_yyltype(ptr noundef %867, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %868)
  %869 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 20), align 8, !tbaa !101
  call void @_Z8storePosP10NEDElement10my_yyltype(ptr noundef %869, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5)
  %870 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 20), align 8, !tbaa !101
  call void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltype(ptr noundef %870, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %5)
  br label %871

871:                                              ; preds = %823, %819, %814, %810, %722, %707, %706, %699, %282, %294, %306, %318, %331, %344, %365, %377, %389, %401, %415, %417, %439, %441, %452, %471, %473, %475, %477, %479, %491, %511, %523, %543, %555, %575, %587, %607, %629, %633, %647, %651, %652, %653, %654, %655, %656, %666, %676, %679, %688, %696, %746, %786, %824, %826, %828, %830, %832, %834, %836, %838, %840, %842, %844, %850, %856, %222, %217, %235, %230, %248, %243, %261, %256, %274, %269, %216
  %872 = phi ptr [ %167, %216 ], [ %167, %856 ], [ %167, %850 ], [ %167, %844 ], [ %843, %842 ], [ %841, %840 ], [ %839, %838 ], [ %837, %836 ], [ %835, %834 ], [ %833, %832 ], [ %831, %830 ], [ %829, %828 ], [ %827, %826 ], [ %825, %824 ], [ %167, %823 ], [ %167, %819 ], [ %167, %814 ], [ %167, %810 ], [ %167, %786 ], [ %167, %746 ], [ %167, %707 ], [ %167, %722 ], [ %167, %699 ], [ %167, %706 ], [ %167, %696 ], [ %167, %688 ], [ %167, %679 ], [ %167, %676 ], [ %167, %666 ], [ %167, %656 ], [ %167, %655 ], [ %167, %654 ], [ %167, %653 ], [ %167, %652 ], [ %167, %651 ], [ %167, %647 ], [ %167, %633 ], [ %167, %629 ], [ %167, %607 ], [ %167, %587 ], [ %167, %575 ], [ %167, %555 ], [ %167, %543 ], [ %167, %523 ], [ %167, %511 ], [ %167, %491 ], [ %167, %479 ], [ %167, %477 ], [ %167, %475 ], [ %167, %473 ], [ %167, %471 ], [ %167, %452 ], [ %167, %441 ], [ %167, %439 ], [ %167, %417 ], [ %167, %415 ], [ %167, %401 ], [ %167, %389 ], [ %167, %377 ], [ %167, %365 ], [ %167, %344 ], [ %167, %331 ], [ %167, %318 ], [ %167, %306 ], [ %167, %294 ], [ %167, %282 ], [ %167, %269 ], [ %167, %274 ], [ %167, %256 ], [ %167, %261 ], [ %167, %243 ], [ %167, %248 ], [ %167, %230 ], [ %167, %235 ], [ %167, %217 ], [ %167, %222 ]
  %873 = load i32, ptr @msg2yydebug, align 4, !tbaa !46
  %874 = icmp eq i32 %873, 0
  br i1 %874, label %884, label %875

875:                                              ; preds = %871
  %876 = load ptr, ptr @stderr, align 8, !tbaa !48
  %877 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %876, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.9) #28
  %878 = load ptr, ptr @stderr, align 8, !tbaa !48
  %879 = getelementptr inbounds [172 x i8], ptr @_ZL4yyr1, i64 0, i64 %161
  %880 = load i8, ptr %879, align 1, !tbaa !51
  %881 = zext i8 %880 to i32
  call fastcc void @_ZL15yy_symbol_printP8_IO_FILEiPKP10NEDElementPK10my_yyltype(ptr noundef %878, i32 noundef %881)
  %882 = load ptr, ptr @stderr, align 8, !tbaa !48
  %883 = call i32 @fputc(i32 10, ptr %882)
  br label %884

884:                                              ; preds = %875, %871
  %885 = sub nsw i64 0, %164
  %886 = getelementptr inbounds ptr, ptr %64, i64 %885
  %887 = shl nsw i64 %885, 1
  %888 = add nsw i64 %887, %65
  %889 = getelementptr inbounds i8, ptr %2, i64 %888
  %890 = getelementptr inbounds %struct.my_yyltype, ptr %63, i64 %885
  %891 = load i32, ptr @msg2yydebug, align 4, !tbaa !46
  %892 = icmp eq i32 %891, 0
  br i1 %892, label %894, label %893

893:                                              ; preds = %884
  call fastcc void @_ZL14yy_stack_printPsS_(ptr noundef nonnull %2, ptr noundef nonnull %889)
  br label %894

894:                                              ; preds = %893, %884
  %895 = getelementptr inbounds ptr, ptr %886, i64 1
  store ptr %872, ptr %895, align 8, !tbaa !48
  %896 = getelementptr inbounds %struct.my_yyltype, ptr %890, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %896, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !tbaa.struct !52
  %897 = getelementptr inbounds [172 x i8], ptr @_ZL4yyr1, i64 0, i64 %161
  %898 = load i8, ptr %897, align 1, !tbaa !51
  %899 = zext i8 %898 to i64
  %900 = add nsw i64 %899, -71
  %901 = getelementptr inbounds [57 x i16], ptr @_ZL7yypgoto, i64 0, i64 %900
  %902 = load i16, ptr %901, align 2, !tbaa !49
  %903 = sext i16 %902 to i32
  %904 = load i16, ptr %889, align 2, !tbaa !49
  %905 = sext i16 %904 to i32
  %906 = add nsw i32 %905, %903
  %907 = icmp ult i32 %906, 210
  br i1 %907, label %908, label %917

908:                                              ; preds = %894
  %909 = zext nneg i32 %906 to i64
  %910 = getelementptr inbounds [210 x i16], ptr @_ZL7yycheck, i64 0, i64 %909
  %911 = load i16, ptr %910, align 2, !tbaa !49
  %912 = icmp eq i16 %911, %904
  br i1 %912, label %913, label %917

913:                                              ; preds = %908
  %914 = getelementptr inbounds [210 x i16], ptr @_ZL7yytable, i64 0, i64 %909
  %915 = load i16, ptr %914, align 2, !tbaa !49
  %916 = sext i16 %915 to i32
  br label %50

917:                                              ; preds = %908, %894
  %918 = getelementptr inbounds [57 x i16], ptr @_ZL9yydefgoto, i64 0, i64 %900
  %919 = load i16, ptr %918, align 2, !tbaa !49
  %920 = sext i16 %919 to i32
  br label %50

921:                                              ; preds = %129, %152
  %922 = phi i32 [ %153, %152 ], [ %115, %129 ]
  %923 = load i32, ptr @msg2yynerrs, align 4, !tbaa !46
  %924 = add nsw i32 %923, 1
  store i32 %924, ptr @msg2yynerrs, align 4, !tbaa !46
  %925 = load i32, ptr @msg2yychar, align 4, !tbaa !46
  %926 = call fastcc noundef i64 @_ZL14yysyntax_errorPcii(ptr noundef null, i32 noundef %61, i32 noundef %925)
  %927 = icmp ugt i64 %926, 128
  br i1 %927, label %928, label %936

928:                                              ; preds = %921
  %929 = shl i64 %926, 1
  %930 = icmp sgt i64 %926, -1
  %931 = select i1 %930, i64 %929, i64 -1
  %932 = call noalias ptr @malloc(i64 noundef %931) #29
  %933 = icmp eq ptr %932, null
  %934 = select i1 %933, i64 128, i64 %931
  %935 = select i1 %933, ptr %1, ptr %932
  br label %936

936:                                              ; preds = %928, %921
  %937 = phi i64 [ %934, %928 ], [ 128, %921 ]
  %938 = phi ptr [ %935, %928 ], [ %1, %921 ]
  %939 = add i64 %926, -1
  %940 = icmp ult i64 %939, %937
  br i1 %940, label %941, label %944

941:                                              ; preds = %936
  %942 = load i32, ptr @msg2yychar, align 4, !tbaa !46
  %943 = call fastcc noundef i64 @_ZL14yysyntax_errorPcii(ptr noundef %938, i32 noundef %61, i32 noundef %942)
  call void @_Z11msg2yyerrorPKc(ptr noundef %938)
  br label %946

944:                                              ; preds = %936
  %945 = icmp eq i64 %926, 0
  call void @_Z11msg2yyerrorPKc(ptr noundef nonnull @.str.10)
  br i1 %945, label %946, label %947

946:                                              ; preds = %944, %941
  br label %947

947:                                              ; preds = %944, %946
  %948 = phi i32 [ 0, %946 ], [ 6, %944 ]
  switch i32 %948, label %1002 [
    i32 0, label %949
    i32 6, label %967
  ]

949:                                              ; preds = %947
  %950 = icmp eq i64 %65, 0
  br i1 %950, label %972, label %951

951:                                              ; preds = %949, %965
  %952 = phi i32 [ %961, %965 ], [ %61, %949 ]
  %953 = phi i64 [ %958, %965 ], [ %65, %949 ]
  %954 = sext i32 %952 to i64
  %955 = getelementptr inbounds [243 x i8], ptr @_ZL6yystos, i64 0, i64 %954
  %956 = load i8, ptr %955, align 1, !tbaa !51
  %957 = zext i8 %956 to i32
  call fastcc void @_ZL10yydestructPKciPP10NEDElementP10my_yyltype(ptr noundef nonnull @.str.12, i32 noundef %957)
  %958 = add nsw i64 %953, -2
  %959 = getelementptr inbounds i8, ptr %2, i64 %958
  %960 = load i16, ptr %959, align 2, !tbaa !49
  %961 = sext i16 %960 to i32
  %962 = load i32, ptr @msg2yydebug, align 4, !tbaa !46
  %963 = icmp eq i32 %962, 0
  br i1 %963, label %965, label %964

964:                                              ; preds = %951
  call fastcc void @_ZL14yy_stack_printPsS_(ptr noundef nonnull %2, ptr noundef nonnull %959)
  br label %965

965:                                              ; preds = %964, %951
  %966 = icmp eq i64 %958, 0
  br i1 %966, label %972, label %951, !llvm.loop !109

967:                                              ; preds = %50, %947
  %968 = phi i64 [ %65, %947 ], [ %56, %50 ]
  %969 = phi ptr [ %938, %947 ], [ %1, %50 ]
  %970 = phi i32 [ %922, %947 ], [ %54, %50 ]
  %971 = getelementptr inbounds i8, ptr %2, i64 %968
  call void @_Z11msg2yyerrorPKc(ptr noundef nonnull @.str.13)
  br label %977

972:                                              ; preds = %965, %949
  %973 = phi i64 [ %65, %949 ], [ %958, %965 ]
  %974 = getelementptr inbounds i8, ptr %2, i64 %973
  br label %977

975:                                              ; preds = %133
  %976 = getelementptr inbounds i8, ptr %2, i64 %65
  br label %977

977:                                              ; preds = %975, %972, %967
  %978 = phi ptr [ %971, %967 ], [ %974, %972 ], [ %976, %975 ]
  %979 = phi ptr [ %969, %967 ], [ %938, %972 ], [ %1, %975 ]
  %980 = phi i32 [ %970, %967 ], [ %922, %972 ], [ %115, %975 ]
  %981 = phi i32 [ 2, %967 ], [ 1, %972 ], [ 0, %975 ]
  %982 = load i32, ptr @msg2yychar, align 4
  switch i32 %982, label %983 [
    i32 -2, label %984
    i32 0, label %984
  ]

983:                                              ; preds = %977
  call fastcc void @_ZL10yydestructPKciPP10NEDElementP10my_yyltype(ptr noundef nonnull @.str.14, i32 noundef %980)
  br label %984

984:                                              ; preds = %977, %977, %983
  %985 = load i32, ptr @msg2yydebug, align 4, !tbaa !46
  %986 = icmp eq i32 %985, 0
  br i1 %986, label %988, label %987

987:                                              ; preds = %984
  call fastcc void @_ZL14yy_stack_printPsS_(ptr noundef nonnull %2, ptr noundef %978)
  br label %988

988:                                              ; preds = %987, %984
  %989 = icmp eq ptr %978, %2
  br i1 %989, label %999, label %990

990:                                              ; preds = %988, %990
  %991 = phi ptr [ %997, %990 ], [ %978, %988 ]
  %992 = load i16, ptr %991, align 2, !tbaa !49
  %993 = sext i16 %992 to i64
  %994 = getelementptr inbounds [243 x i8], ptr @_ZL6yystos, i64 0, i64 %993
  %995 = load i8, ptr %994, align 1, !tbaa !51
  %996 = zext i8 %995 to i32
  call fastcc void @_ZL10yydestructPKciPP10NEDElementP10my_yyltype(ptr noundef nonnull @.str.15, i32 noundef %996)
  %997 = getelementptr inbounds i16, ptr %991, i64 -1
  %998 = icmp eq ptr %997, %2
  br i1 %998, label %999, label %990, !llvm.loop !110

999:                                              ; preds = %990, %988
  %1000 = icmp eq ptr %979, %1
  br i1 %1000, label %1002, label %1001

1001:                                             ; preds = %999
  call void @free(ptr noundef %979) #27
  br label %1002

1002:                                             ; preds = %999, %1001, %947
  %1003 = phi i32 [ undef, %947 ], [ %981, %1001 ], [ %981, %999 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(i64 6400, ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(i64 1600, ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %2) #27
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %1) #27
  ret i32 %1003
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

declare noundef i32 @_Z9msg2yylexv() local_unnamed_addr #5

; Function Attrs: cold mustprogress nofree nounwind uwtable
define internal fastcc void @_ZL15yy_symbol_printP8_IO_FILEiPKP10NEDElementPK10my_yyltype(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #6 !prof !40 {
  %3 = icmp slt i32 %1, 71
  %4 = zext nneg i32 %1 to i64
  %5 = sext i32 %1 to i64
  %6 = select i1 %3, i64 %5, i64 %4
  %7 = select i1 %3, ptr @.str.19, ptr @.str.20
  %8 = getelementptr inbounds [129 x ptr], ptr @_ZL7yytname, i64 0, i64 %6
  %9 = load ptr, ptr %8, align 8, !tbaa !48
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull %7, ptr noundef %9)
  %11 = tail call i64 @fwrite(ptr nonnull @.str.21, i64 2, i64 1, ptr %0)
  %12 = tail call i32 @fputc(i32 41, ptr %0)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

declare noundef ptr @_Z8toString10my_yyltype(ptr noundef byval(%struct.my_yyltype) align 8) local_unnamed_addr #5

declare noundef ptr @_Z20createElementWithTagiP10NEDElement(i32 noundef, ptr noundef) local_unnamed_addr #5

declare void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltypeS1_(ptr noundef, ptr noundef byval(%struct.my_yyltype) align 8, ptr noundef byval(%struct.my_yyltype) align 8) local_unnamed_addr #5

declare void @_Z16trimDoubleBraces10my_yyltype(ptr dead_on_unwind writable sret(%struct.my_yyltype) align 8, ptr noundef byval(%struct.my_yyltype) align 8) local_unnamed_addr #5

declare void @_Z20storeTrailingCommentP10NEDElement10my_yyltype(ptr noundef, ptr noundef byval(%struct.my_yyltype) align 8) local_unnamed_addr #5

declare void @_Z8storePosP10NEDElement10my_yyltype(ptr noundef, ptr noundef byval(%struct.my_yyltype) align 8) local_unnamed_addr #5

declare void @_Z27storeBannerAndRightCommentsP10NEDElement10my_yyltype(ptr noundef, ptr noundef byval(%struct.my_yyltype) align 8) local_unnamed_addr #5

declare noundef ptr @_Z11addPropertyP10NEDElementPKc(ptr noundef, ptr noundef) local_unnamed_addr #5

declare noundef ptr @_Z13createLiterali10my_yyltypeS_(i32 noundef, ptr noundef byval(%struct.my_yyltype) align 8, ptr noundef byval(%struct.my_yyltype) align 8) local_unnamed_addr #5

declare noundef ptr @_Z19createStringLiteral10my_yyltype(ptr noundef byval(%struct.my_yyltype) align 8) local_unnamed_addr #5

declare noundef ptr @_Z21createQuantityLiteral10my_yyltype(ptr noundef byval(%struct.my_yyltype) align 8) local_unnamed_addr #5

declare void @_ZN14LiteralElement7setTypeEi(ptr noundef nonnull align 8 dereferenceable(216), i32 noundef) local_unnamed_addr #5

; Function Attrs: cold mustprogress nofree nounwind uwtable
define internal fastcc void @_ZL14yy_stack_printPsS_(ptr noundef readonly %0, ptr noundef readnone %1) unnamed_addr #6 !prof !40 {
  %3 = load ptr, ptr @stderr, align 8, !tbaa !48
  %4 = tail call i64 @fwrite(ptr nonnull @.str.153, i64 9, i64 1, ptr %3) #28
  %5 = icmp ugt ptr %0, %1
  br i1 %5, label %14, label %6

6:                                                ; preds = %2, %6
  %7 = phi ptr [ %12, %6 ], [ %0, %2 ]
  %8 = load ptr, ptr @stderr, align 8, !tbaa !48
  %9 = load i16, ptr %7, align 2, !tbaa !49
  %10 = sext i16 %9 to i32
  %11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.154, i32 noundef %10) #28
  %12 = getelementptr inbounds i16, ptr %7, i64 1
  %13 = icmp ugt ptr %12, %1
  br i1 %13, label %14, label %6, !llvm.loop !111

14:                                               ; preds = %6, %2
  %15 = load ptr, ptr @stderr, align 8, !tbaa !48
  %16 = tail call i32 @fputc(i32 10, ptr %15)
  ret void
}

; Function Attrs: cold mustprogress nofree nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef i64 @_ZL14yysyntax_errorPcii(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #8 !prof !40 {
  %4 = alloca [5 x ptr], align 16
  %5 = alloca [60 x i8], align 16
  %6 = sext i32 %1 to i64
  %7 = getelementptr inbounds [243 x i16], ptr @_ZL6yypact, i64 0, i64 %6
  %8 = load i16, ptr %7, align 2, !tbaa !49
  %9 = sext i16 %8 to i32
  %10 = icmp sgt i16 %8, -132
  br i1 %10, label %11, label %109

11:                                               ; preds = %3
  %12 = icmp ult i32 %2, 303
  br i1 %12, label %13, label %18

13:                                               ; preds = %11
  %14 = zext nneg i32 %2 to i64
  %15 = getelementptr inbounds [303 x i8], ptr @_ZL11yytranslate, i64 0, i64 %14
  %16 = load i8, ptr %15, align 1, !tbaa !51
  %17 = zext i8 %16 to i64
  br label %18

18:                                               ; preds = %11, %13
  %19 = phi i64 [ %17, %13 ], [ 2, %11 ]
  %20 = getelementptr inbounds [129 x ptr], ptr @_ZL7yytname, i64 0, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !48
  %22 = tail call fastcc noundef i64 @_ZL9yytnamerrPcPKc(ptr noundef null, ptr noundef %21)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #27
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %5) #27
  %23 = icmp slt i16 %8, 0
  %24 = sub nsw i32 0, %9
  %25 = select i1 %23, i32 %24, i32 0
  %26 = sub nsw i32 210, %9
  %27 = tail call i32 @llvm.smin.i32(i32 %26, i32 71)
  store ptr %21, ptr %4, align 16, !tbaa !48
  %28 = getelementptr inbounds i8, ptr %5, i64 27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %5, ptr noundef nonnull align 16 dereferenceable(28) @_ZZL14yysyntax_errorPciiE12yyunexpected, i64 28, i1 false) #27
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
  %42 = getelementptr inbounds [210 x i16], ptr @_ZL7yycheck, i64 0, i64 %41
  %43 = load i16, ptr %42, align 2, !tbaa !49
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
  store i8 0, ptr %28, align 1, !tbaa !51
  br label %72

52:                                               ; preds = %49
  %53 = getelementptr inbounds [129 x ptr], ptr @_ZL7yytname, i64 0, i64 %35
  %54 = load ptr, ptr %53, align 8, !tbaa !48
  %55 = add nsw i32 %36, 1
  %56 = sext i32 %36 to i64
  %57 = getelementptr inbounds [5 x ptr], ptr %4, i64 0, i64 %56
  store ptr %54, ptr %57, align 8, !tbaa !48
  %58 = call fastcc noundef i64 @_ZL9yytnamerrPcPKc(ptr noundef null, ptr noundef %54)
  %59 = add i64 %58, %37
  %60 = icmp ult i64 %59, %37
  %61 = zext i1 %60 to i32
  %62 = or i32 %40, %61
  %63 = call ptr @stpcpy(ptr noundef %39, ptr noundef %38) #27
  br label %64

64:                                               ; preds = %34, %52
  %65 = phi i32 [ %62, %52 ], [ %40, %34 ]
  %66 = phi ptr [ %63, %52 ], [ %39, %34 ]
  %67 = phi ptr [ @_ZZL14yysyntax_errorPciiE4yyor, %52 ], [ %38, %34 ]
  %68 = phi i64 [ %59, %52 ], [ %37, %34 ]
  %69 = phi i32 [ %55, %52 ], [ %36, %34 ]
  %70 = add nsw i64 %35, 1
  %71 = icmp slt i64 %70, %33
  br i1 %71, label %34, label %72, !llvm.loop !112

72:                                               ; preds = %64, %18, %51
  %73 = phi i32 [ %40, %51 ], [ 0, %18 ], [ %65, %64 ]
  %74 = phi i64 [ %22, %51 ], [ %22, %18 ], [ %68, %64 ]
  %75 = phi i32 [ 1, %51 ], [ 1, %18 ], [ %69, %64 ]
  %76 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #30
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
  %88 = load i8, ptr %85, align 1, !tbaa !51
  store i8 %88, ptr %86, align 1, !tbaa !51
  switch i8 %88, label %101 [
    i8 0, label %107
    i8 37, label %89
  ]

89:                                               ; preds = %84
  %90 = getelementptr inbounds i8, ptr %85, i64 1
  %91 = load i8, ptr %90, align 1, !tbaa !51
  %92 = icmp eq i8 %91, 115
  %93 = icmp slt i32 %87, %75
  %94 = select i1 %92, i1 %93, i1 false
  br i1 %94, label %95, label %101

95:                                               ; preds = %89
  %96 = add nsw i32 %87, 1
  %97 = sext i32 %87 to i64
  %98 = getelementptr inbounds [5 x ptr], ptr %4, i64 0, i64 %97
  %99 = load ptr, ptr %98, align 8, !tbaa !48
  %100 = call fastcc noundef i64 @_ZL9yytnamerrPcPKc(ptr noundef nonnull %86, ptr noundef %99)
  br label %101

101:                                              ; preds = %89, %84, %95
  %102 = phi i64 [ %100, %95 ], [ 1, %84 ], [ 1, %89 ]
  %103 = phi i64 [ 2, %95 ], [ 1, %84 ], [ 1, %89 ]
  %104 = phi i32 [ %96, %95 ], [ %87, %84 ], [ %87, %89 ]
  %105 = getelementptr inbounds i8, ptr %86, i64 %102
  %106 = getelementptr inbounds i8, ptr %85, i64 %103
  br label %84, !llvm.loop !113

107:                                              ; preds = %84, %82, %72
  %108 = phi i64 [ -1, %72 ], [ %77, %82 ], [ %77, %84 ]
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #27
  br label %109

109:                                              ; preds = %3, %107
  %110 = phi i64 [ %108, %107 ], [ 0, %3 ]
  ret i64 %110
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #10

; Function Attrs: cold mustprogress uwtable
define dso_local void @_Z11msg2yyerrorPKc(ptr nocapture noundef readonly %0) local_unnamed_addr #2 !prof !40 {
  %2 = alloca [250 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 250, ptr nonnull %2) #27
  %3 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %0) #27
  %4 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #30
  %5 = add i64 %4, -1
  %6 = getelementptr inbounds [250 x i8], ptr %2, i64 0, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !51
  %8 = icmp eq i8 %7, 10
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i8 0, ptr %6, align 1, !tbaa !51
  br label %10

10:                                               ; preds = %9, %1
  %11 = load ptr, ptr @np, align 8, !tbaa !48
  %12 = load i32, ptr @pos, align 4, !tbaa !114
  call void @_ZN9NEDParser5errorEPKci(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull %2, i32 noundef %12)
  call void @llvm.lifetime.end.p0(i64 250, ptr nonnull %2) #27
  ret void
}

; Function Attrs: cold mustprogress nofree nounwind uwtable
define internal fastcc void @_ZL10yydestructPKciPP10NEDElementP10my_yyltype(ptr noundef %0, i32 noundef %1) unnamed_addr #6 !prof !40 {
  %3 = load i32, ptr @msg2yydebug, align 4, !tbaa !46
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %13, label %5

5:                                                ; preds = %2
  %6 = icmp eq ptr %0, null
  %7 = select i1 %6, ptr @.str.155, ptr %0
  %8 = load ptr, ptr @stderr, align 8, !tbaa !48
  %9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.4, ptr noundef nonnull %7) #28
  %10 = load ptr, ptr @stderr, align 8, !tbaa !48
  tail call fastcc void @_ZL15yy_symbol_printP8_IO_FILEiPKP10NEDElementPK10my_yyltype(ptr noundef %10, i32 noundef %1)
  %11 = load ptr, ptr @stderr, align 8, !tbaa !48
  %12 = tail call i32 @fputc(i32 10, ptr %11)
  br label %13

13:                                               ; preds = %2, %5
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_Z11doParseMSG2P9NEDParserPKc(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 !prof !40 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %struct.my_yyltype, align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  store i32 0, ptr @msg2yydebug, align 4, !tbaa !46
  %7 = load ptr, ptr @np, align 8, !tbaa !48
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %2
  %10 = tail call ptr @__cxa_allocate_exception(i64 48) #27
  invoke void (ptr, ptr, ...) @_ZN17opp_runtime_errorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef nonnull @.str.156)
          to label %11 unwind label %14

11:                                               ; preds = %9
  tail call void @__cxa_throw(ptr nonnull %10, ptr nonnull @_ZTI17opp_runtime_error, ptr nonnull @_ZN17opp_runtime_errorD2Ev) #31
  unreachable

12:                                               ; preds = %178, %14
  %13 = phi { ptr, i32 } [ %15, %14 ], [ %179, %178 ]
  resume { ptr, i32 } %13

14:                                               ; preds = %9
  %15 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %10) #27
  br label %12

16:                                               ; preds = %2
  store ptr %0, ptr @np, align 8, !tbaa !48
  store i32 0, ptr getelementptr inbounds (%struct.LineColumn, ptr @pos, i64 0, i32 1), align 4, !tbaa !116
  store i32 1, ptr @pos, align 4, !tbaa !114
  %17 = load i64, ptr @pos, align 4
  store i64 %17, ptr @prevpos, align 4
  store ptr null, ptr @msg2yyin, align 8, !tbaa !48
  %18 = load ptr, ptr @stderr, align 8, !tbaa !48
  store ptr %18, ptr @msg2yyout, align 8, !tbaa !48
  %19 = invoke noundef ptr @_Z18msg2yy_scan_stringPKc(ptr noundef %1)
          to label %20 unwind label %26

20:                                               ; preds = %16
  %21 = icmp eq ptr %19, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %20
  %23 = load ptr, ptr @np, align 8, !tbaa !48
  %24 = getelementptr inbounds %class.NEDParser, ptr %23, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !117
  invoke void (ptr, ptr, ptr, ...) @_ZN13NEDErrorStore8addErrorEPKcS1_z(ptr noundef nonnull align 8 dereferenceable(25) %25, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17)
          to label %176 unwind label %26

26:                                               ; preds = %36, %73, %69, %62, %39, %22, %16
  %27 = landingpad { ptr, i32 }
          cleanup
  br label %178

28:                                               ; preds = %20
  %29 = load atomic i8, ptr @_ZGVZL16resetParserStatevE7cleanps acquire, align 8
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %36, !prof !118

31:                                               ; preds = %28
  %32 = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZL16resetParserStatevE7cleanps) #27
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZZL16resetParserStatevE7cleanps, i64 0, i32 2), i8 0, i64 24, i1 false)
  %35 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN15MSG2ParserStateD2Ev, ptr nonnull @_ZZL16resetParserStatevE7cleanps, ptr nonnull @__dso_handle) #27
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZL16resetParserStatevE7cleanps) #27
  br label %36

36:                                               ; preds = %34, %31, %28
  %37 = load i16, ptr @_ZZL16resetParserStatevE7cleanps, align 8
  store i16 %37, ptr @_ZL2ps, align 8
  %38 = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIP10NEDElementSaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 2), ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZZL16resetParserStatevE7cleanps, i64 0, i32 2))
          to label %39 unwind label %26

39:                                               ; preds = %36
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 3), ptr noundef nonnull align 8 dereferenceable(152) getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZZL16resetParserStatevE7cleanps, i64 0, i32 3), i64 152, i1 false)
  %40 = invoke noalias noundef nonnull dereferenceable(176) ptr @_Znwm(i64 noundef 176) #32
          to label %41 unwind label %26

41:                                               ; preds = %39
  invoke void @_ZN14MsgFileElementC1Ev(ptr noundef nonnull align 8 dereferenceable(176) %40)
          to label %42 unwind label %75

42:                                               ; preds = %41
  store ptr %40, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 3), align 8, !tbaa !79
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #27
  %43 = load ptr, ptr @np, align 8, !tbaa !48
  %44 = getelementptr inbounds %class.NEDParser, ptr %43, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !119
  invoke void @_Z16slashifyFilenameB5cxx11PKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef %45)
          to label %46 unwind label %77

46:                                               ; preds = %42
  %47 = load ptr, ptr %3, align 8, !tbaa !120
  %48 = getelementptr inbounds %class.MsgFileElement, ptr %40, i64 0, i32 1
  %49 = getelementptr inbounds %class.MsgFileElement, ptr %40, i64 0, i32 1, i32 1
  %50 = load i64, ptr %49, align 8, !tbaa !71
  %51 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %47) #27
  %52 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %48, i64 noundef 0, i64 noundef %50, ptr noundef %47, i64 noundef %51)
          to label %53 unwind label %79

53:                                               ; preds = %46
  %54 = load ptr, ptr %3, align 8, !tbaa !120
  %55 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 2
  %56 = icmp eq ptr %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 1
  %59 = load i64, ptr %58, align 8, !tbaa !71
  %60 = icmp ult i64 %59, 16
  call void @llvm.assume(i1 %60)
  br label %62

61:                                               ; preds = %53
  call void @_ZdlPv(ptr noundef %54) #26
  br label %62

62:                                               ; preds = %57, %61
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #27
  %63 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 3), align 8, !tbaa !79
  invoke void @_Z16storeFileCommentP10NEDElement(ptr noundef %63)
          to label %64 unwind label %26

64:                                               ; preds = %62
  %65 = load ptr, ptr @np, align 8, !tbaa !48
  %66 = getelementptr inbounds %class.NEDParser, ptr %65, i64 0, i32 1
  %67 = load i8, ptr %66, align 1, !tbaa !61, !range !64, !noundef !65
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %91, label %69

69:                                               ; preds = %64
  %70 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 3), align 8, !tbaa !79
  %71 = getelementptr inbounds %class.NEDParser, ptr %65, i64 0, i32 4
  %72 = load ptr, ptr %71, align 8, !tbaa !121
  invoke void @_ZN13NEDFileBuffer14getFullTextPosEv(ptr dead_on_unwind nonnull writable sret(%struct.my_yyltype) align 8 %4, ptr noundef nonnull align 8 dereferenceable(52) %72)
          to label %73 unwind label %26

73:                                               ; preds = %69
  %74 = invoke noundef ptr @_Z15storeSourceCodeP10NEDElement10my_yyltype(ptr noundef %70, ptr noundef nonnull byval(%struct.my_yyltype) align 8 %4)
          to label %91 unwind label %26

75:                                               ; preds = %41
  %76 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef %40) #26
  br label %178

77:                                               ; preds = %42
  %78 = landingpad { ptr, i32 }
          cleanup
  br label %89

79:                                               ; preds = %46
  %80 = landingpad { ptr, i32 }
          cleanup
  %81 = load ptr, ptr %3, align 8, !tbaa !120
  %82 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 2
  %83 = icmp eq ptr %81, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %79
  %85 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 1
  %86 = load i64, ptr %85, align 8, !tbaa !71
  %87 = icmp ult i64 %86, 16
  call void @llvm.assume(i1 %87)
  br label %89

88:                                               ; preds = %79
  call void @_ZdlPv(ptr noundef %81) #26
  br label %89

89:                                               ; preds = %88, %84, %77
  %90 = phi { ptr, i32 } [ %78, %77 ], [ %80, %84 ], [ %80, %88 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #27
  br label %178

91:                                               ; preds = %73, %64
  %92 = invoke noundef i32 @_Z11msg2yyparsev()
          to label %93 unwind label %94

93:                                               ; preds = %91
  invoke void @_Z20msg2yy_delete_bufferP15yy_buffer_state(ptr noundef nonnull %19)
          to label %172 unwind label %174

94:                                               ; preds = %91
  %95 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12NEDException
  %96 = extractvalue { ptr, i32 } %95, 1
  %97 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTI12NEDException) #27
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %178

99:                                               ; preds = %94
  %100 = extractvalue { ptr, i32 } %95, 0
  %101 = call ptr @__cxa_begin_catch(ptr %100) #27
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #27
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #27
  %102 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 2
  store ptr %102, ptr %6, align 8, !tbaa !122
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.18, ptr noundef nonnull getelementptr inbounds ([23 x i8], ptr @.str.18, i64 0, i64 22))
          to label %103 unwind label %143

103:                                              ; preds = %99
  %104 = load ptr, ptr %101, align 8, !tbaa !104
  %105 = getelementptr inbounds ptr, ptr %104, i64 2
  %106 = load ptr, ptr %105, align 8
  %107 = call noundef ptr %106(ptr noundef nonnull align 8 dereferenceable(48) %101) #27
  %108 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef %107)
          to label %109 unwind label %145

109:                                              ; preds = %103
  %110 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 2
  store ptr %110, ptr %5, align 8, !tbaa !122, !alias.scope !123
  %111 = load ptr, ptr %108, align 8, !tbaa !120
  %112 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %108, i64 0, i32 2
  %113 = icmp eq ptr %111, %112
  br i1 %113, label %114, label %119

114:                                              ; preds = %109
  %115 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %108, i64 0, i32 1
  %116 = load i64, ptr %115, align 8, !tbaa !71
  %117 = icmp ult i64 %116, 16
  call void @llvm.assume(i1 %117)
  %118 = add nuw nsw i64 %116, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %110, ptr noundef nonnull align 8 dereferenceable(1) %112, i64 %118, i1 false)
  br label %121

119:                                              ; preds = %109
  store ptr %111, ptr %5, align 8, !tbaa !120, !alias.scope !123
  %120 = load i64, ptr %112, align 8, !tbaa !51
  store i64 %120, ptr %110, align 8, !tbaa !51, !alias.scope !123
  br label %121

121:                                              ; preds = %114, %119
  %122 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %108, i64 0, i32 1
  %123 = load i64, ptr %122, align 8, !tbaa !71
  %124 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 1
  store i64 %123, ptr %124, align 8, !tbaa !71, !alias.scope !123
  store ptr %112, ptr %108, align 8, !tbaa !120
  store i64 0, ptr %122, align 8, !tbaa !71
  store i8 0, ptr %112, align 8, !tbaa !51
  %125 = load ptr, ptr %5, align 8, !tbaa !120
  invoke void @_Z11msg2yyerrorPKc(ptr noundef %125)
          to label %126 unwind label %147

126:                                              ; preds = %121
  %127 = load ptr, ptr %5, align 8, !tbaa !120
  %128 = icmp eq ptr %127, %110
  br i1 %128, label %129, label %132

129:                                              ; preds = %126
  %130 = load i64, ptr %124, align 8, !tbaa !71
  %131 = icmp ult i64 %130, 16
  call void @llvm.assume(i1 %131)
  br label %133

132:                                              ; preds = %126
  call void @_ZdlPv(ptr noundef %127) #26
  br label %133

133:                                              ; preds = %129, %132
  %134 = load ptr, ptr %6, align 8, !tbaa !120
  %135 = icmp eq ptr %134, %102
  br i1 %135, label %136, label %140

136:                                              ; preds = %133
  %137 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 1
  %138 = load i64, ptr %137, align 8, !tbaa !71
  %139 = icmp ult i64 %138, 16
  call void @llvm.assume(i1 %139)
  br label %141

140:                                              ; preds = %133
  call void @_ZdlPv(ptr noundef %134) #26
  br label %141

141:                                              ; preds = %136, %140
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #27
  invoke void @_Z20msg2yy_delete_bufferP15yy_buffer_state(ptr noundef nonnull %19)
          to label %142 unwind label %166

142:                                              ; preds = %141
  invoke void @__cxa_end_catch()
          to label %176 unwind label %168

143:                                              ; preds = %99
  %144 = landingpad { ptr, i32 }
          cleanup
  br label %164

145:                                              ; preds = %103
  %146 = landingpad { ptr, i32 }
          cleanup
  br label %155

147:                                              ; preds = %121
  %148 = landingpad { ptr, i32 }
          cleanup
  %149 = load ptr, ptr %5, align 8, !tbaa !120
  %150 = icmp eq ptr %149, %110
  br i1 %150, label %151, label %154

151:                                              ; preds = %147
  %152 = load i64, ptr %124, align 8, !tbaa !71
  %153 = icmp ult i64 %152, 16
  call void @llvm.assume(i1 %153)
  br label %155

154:                                              ; preds = %147
  call void @_ZdlPv(ptr noundef %149) #26
  br label %155

155:                                              ; preds = %154, %151, %145
  %156 = phi { ptr, i32 } [ %146, %145 ], [ %148, %151 ], [ %148, %154 ]
  %157 = load ptr, ptr %6, align 8, !tbaa !120
  %158 = icmp eq ptr %157, %102
  br i1 %158, label %159, label %163

159:                                              ; preds = %155
  %160 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 1
  %161 = load i64, ptr %160, align 8, !tbaa !71
  %162 = icmp ult i64 %161, 16
  call void @llvm.assume(i1 %162)
  br label %164

163:                                              ; preds = %155
  call void @_ZdlPv(ptr noundef %157) #26
  br label %164

164:                                              ; preds = %163, %159, %143
  %165 = phi { ptr, i32 } [ %144, %143 ], [ %156, %159 ], [ %156, %163 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #27
  br label %170

166:                                              ; preds = %141
  %167 = landingpad { ptr, i32 }
          cleanup
  br label %170

168:                                              ; preds = %142
  %169 = landingpad { ptr, i32 }
          cleanup
  br label %178

170:                                              ; preds = %166, %164
  %171 = phi { ptr, i32 } [ %167, %166 ], [ %165, %164 ]
  invoke void @__cxa_end_catch()
          to label %178 unwind label %180

172:                                              ; preds = %93
  %173 = load ptr, ptr getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 3), align 8, !tbaa !79
  br label %176

174:                                              ; preds = %93
  %175 = landingpad { ptr, i32 }
          cleanup
  br label %178

176:                                              ; preds = %172, %142, %22
  %177 = phi ptr [ null, %22 ], [ %173, %172 ], [ null, %142 ]
  store ptr null, ptr @np, align 8, !tbaa !48
  ret ptr %177

178:                                              ; preds = %168, %170, %94, %174, %89, %75, %26
  %179 = phi { ptr, i32 } [ %27, %26 ], [ %90, %89 ], [ %76, %75 ], [ %175, %174 ], [ %95, %94 ], [ %169, %168 ], [ %171, %170 ]
  store ptr null, ptr @np, align 8, !tbaa !48
  br label %12

180:                                              ; preds = %170
  %181 = landingpad { ptr, i32 }
          catch ptr null
  %182 = extractvalue { ptr, i32 } %181, 0
  call void @__clang_call_terminate(ptr %182) #33
  unreachable
}

declare noundef ptr @_Z18msg2yy_scan_stringPKc(ptr noundef) local_unnamed_addr #5

declare i32 @__gxx_personality_v0(...)

declare void @_ZN13NEDErrorStore8addErrorEPKcS1_z(ptr noundef nonnull align 8 dereferenceable(25), ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #11

declare void @_ZN14MsgFileElementC1Ev(ptr noundef nonnull align 8 dereferenceable(176)) unnamed_addr #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #12

declare void @_Z16slashifyFilenameB5cxx11PKc(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef) local_unnamed_addr #5

declare void @_Z16storeFileCommentP10NEDElement(ptr noundef) local_unnamed_addr #5

declare noundef ptr @_Z15storeSourceCodeP10NEDElement10my_yyltype(ptr noundef, ptr noundef byval(%struct.my_yyltype) align 8) local_unnamed_addr #5

declare void @_ZN13NEDFileBuffer14getFullTextPosEv(ptr dead_on_unwind writable sret(%struct.my_yyltype) align 8, ptr noundef nonnull align 8 dereferenceable(52)) local_unnamed_addr #5

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #13

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_Z20msg2yy_delete_bufferP15yy_buffer_state(ptr noundef) local_unnamed_addr #5

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #14 comdat !prof !40 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #27
  tail call void @_ZSt9terminatev() #33
  unreachable
}

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #15

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #16

declare void @_ZN9NEDParser5errorEPKci(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i32 noundef) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: cold mustprogress nofree nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef i64 @_ZL9yytnamerrPcPKc(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #17 !prof !40 {
  %3 = load i8, ptr %1, align 1, !tbaa !51
  %4 = icmp eq i8 %3, 34
  br i1 %4, label %5, label %27

5:                                                ; preds = %2
  %6 = icmp eq ptr %0, null
  br label %7

7:                                                ; preds = %5, %21
  %8 = phi i64 [ %22, %21 ], [ 0, %5 ]
  %9 = phi ptr [ %17, %21 ], [ %1, %5 ]
  %10 = getelementptr inbounds i8, ptr %9, i64 1
  %11 = load i8, ptr %10, align 1, !tbaa !51
  switch i8 %11, label %16 [
    i8 39, label %27
    i8 44, label %27
    i8 92, label %12
    i8 34, label %23
  ]

12:                                               ; preds = %7
  %13 = getelementptr inbounds i8, ptr %9, i64 2
  %14 = load i8, ptr %13, align 1, !tbaa !51
  %15 = icmp eq i8 %14, 92
  br i1 %15, label %16, label %27

16:                                               ; preds = %12, %7
  %17 = phi ptr [ %10, %7 ], [ %13, %12 ]
  br i1 %6, label %21, label %18

18:                                               ; preds = %16
  %19 = load i8, ptr %17, align 1, !tbaa !51
  %20 = getelementptr inbounds i8, ptr %0, i64 %8
  store i8 %19, ptr %20, align 1, !tbaa !51
  br label %21

21:                                               ; preds = %18, %16
  %22 = add i64 %8, 1
  br label %7, !llvm.loop !126

23:                                               ; preds = %7
  %24 = icmp eq ptr %0, null
  br i1 %24, label %36, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds i8, ptr %0, i64 %8
  store i8 0, ptr %26, align 1, !tbaa !51
  br label %36

27:                                               ; preds = %12, %7, %7, %2
  %28 = icmp eq ptr %0, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %27
  %30 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #30
  br label %36

31:                                               ; preds = %27
  %32 = tail call ptr @stpcpy(ptr noundef nonnull %0, ptr noundef nonnull %1) #27
  %33 = ptrtoint ptr %32 to i64
  %34 = ptrtoint ptr %0 to i64
  %35 = sub i64 %33, %34
  br label %36

36:                                               ; preds = %25, %23, %31, %29
  %37 = phi i64 [ %35, %31 ], [ %30, %29 ], [ %8, %23 ], [ %8, %25 ]
  ret i64 %37
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @stpcpy(ptr noalias noundef writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #15

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZN17opp_runtime_errorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, ...) unnamed_addr #5

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN17opp_runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #18 comdat align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTV17opp_runtime_error, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !104
  %2 = getelementptr inbounds %class.opp_runtime_error, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !120
  %4 = getelementptr inbounds %class.opp_runtime_error, ptr %0, i64 0, i32 1, i32 2
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = getelementptr inbounds %class.opp_runtime_error, ptr %0, i64 0, i32 1, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !71
  %9 = icmp ult i64 %8, 16
  tail call void @llvm.assume(i1 %9)
  br label %11

10:                                               ; preds = %1
  tail call void @_ZdlPv(ptr noundef %3) #26
  br label %11

11:                                               ; preds = %6, %10
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #27
  ret void
}

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #19

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN17opp_runtime_errorD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #18 comdat align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTV17opp_runtime_error, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !104
  %2 = getelementptr inbounds %class.opp_runtime_error, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !120
  %4 = getelementptr inbounds %class.opp_runtime_error, ptr %0, i64 0, i32 1, i32 2
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = getelementptr inbounds %class.opp_runtime_error, ptr %0, i64 0, i32 1, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !71
  %9 = icmp ult i64 %8, 16
  tail call void @llvm.assume(i1 %9)
  br label %11

10:                                               ; preds = %1
  tail call void @_ZdlPv(ptr noundef %3) #26
  br label %11

11:                                               ; preds = %6, %10
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #27
  tail call void @_ZdlPv(ptr noundef %0) #26
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK17opp_runtime_error4whatEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #18 comdat align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %2 = getelementptr inbounds %class.opp_runtime_error, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !120
  ret ptr %3
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIP10NEDElementSaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !127 {
  %3 = icmp eq ptr %1, %0
  br i1 %3, label %59, label %4, !prof !128

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"struct.std::_Vector_base<NEDElement *, std::allocator<NEDElement *>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = load ptr, ptr %1, align 8, !tbaa !48
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = getelementptr inbounds %"struct.std::_Vector_base<NEDElement *, std::allocator<NEDElement *>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !108
  %13 = load ptr, ptr %0, align 8, !tbaa !48
  %14 = ptrtoint ptr %12 to i64
  %15 = ptrtoint ptr %13 to i64
  %16 = sub i64 %14, %15
  %17 = icmp ugt i64 %10, %16
  br i1 %17, label %18, label %29, !prof !128

18:                                               ; preds = %4
  %19 = ashr exact i64 %10, 3
  %20 = tail call noundef ptr @_ZNSt15__new_allocatorIP10NEDElementE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %19, ptr noundef null)
  %21 = icmp eq ptr %6, %7
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %20, ptr align 8 %7, i64 %10, i1 false)
  br label %23

23:                                               ; preds = %18, %22
  %24 = load ptr, ptr %0, align 8, !tbaa !41
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  tail call void @_ZdlPv(ptr noundef %24) #26
  br label %27

27:                                               ; preds = %23, %26
  store ptr %20, ptr %0, align 8, !tbaa !41
  %28 = getelementptr inbounds i8, ptr %20, i64 %10
  store ptr %28, ptr %11, align 8, !tbaa !108
  br label %55

29:                                               ; preds = %4
  %30 = getelementptr inbounds %"struct.std::_Vector_base<NEDElement *, std::allocator<NEDElement *>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !102
  %32 = ptrtoint ptr %31 to i64
  %33 = sub i64 %32, %15
  %34 = icmp ult i64 %33, %10
  br i1 %34, label %38, label %35, !prof !128

35:                                               ; preds = %29
  %36 = icmp eq ptr %6, %7
  br i1 %36, label %55, label %37, !prof !129

37:                                               ; preds = %35
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %13, ptr align 8 %7, i64 %10, i1 false)
  br label %55

38:                                               ; preds = %29
  %39 = icmp eq ptr %31, %13
  br i1 %39, label %41, label %40

40:                                               ; preds = %38
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %13, ptr align 8 %7, i64 %33, i1 false)
  br label %41

41:                                               ; preds = %38, %40
  %42 = load ptr, ptr %1, align 8, !tbaa !41
  %43 = load ptr, ptr %30, align 8, !tbaa !102
  %44 = load ptr, ptr %0, align 8, !tbaa !41
  %45 = ptrtoint ptr %43 to i64
  %46 = ptrtoint ptr %44 to i64
  %47 = sub i64 %45, %46
  %48 = getelementptr inbounds i8, ptr %42, i64 %47
  %49 = load ptr, ptr %5, align 8, !tbaa !102
  %50 = icmp eq ptr %49, %48
  br i1 %50, label %55, label %51

51:                                               ; preds = %41
  %52 = ptrtoint ptr %49 to i64
  %53 = ptrtoint ptr %48 to i64
  %54 = sub i64 %52, %53
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %43, ptr align 8 %48, i64 %54, i1 false)
  br label %55

55:                                               ; preds = %51, %41, %37, %35, %27
  %56 = load ptr, ptr %0, align 8, !tbaa !41
  %57 = getelementptr inbounds i8, ptr %56, i64 %10
  %58 = getelementptr inbounds %"struct.std::_Vector_base<NEDElement *, std::allocator<NEDElement *>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %57, ptr %58, align 8, !tbaa !102
  br label %59

59:                                               ; preds = %55, %2
  ret ptr %0
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorIP10NEDElementE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 !prof !130 {
  %4 = icmp ugt i64 %1, 1152921504606846975
  br i1 %4, label %5, label %9, !prof !131

5:                                                ; preds = %3
  %6 = icmp ugt i64 %1, 2305843009213693951
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #31
  unreachable

8:                                                ; preds = %5
  tail call void @_ZSt17__throw_bad_allocv() #31
  unreachable

9:                                                ; preds = %3
  %10 = shl nuw nsw i64 %1, 3
  %11 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %10) #32
  ret ptr %11
}

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #20

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #20

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #7

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIP10NEDElementSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !130 {
  %4 = getelementptr inbounds %"struct.std::_Vector_base<NEDElement *, std::allocator<NEDElement *>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !102
  %6 = load ptr, ptr %0, align 8, !tbaa !48
  %7 = ptrtoint ptr %5 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = icmp eq i64 %9, 9223372036854775800
  br i1 %10, label %11, label %12, !prof !131

11:                                               ; preds = %3
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.157) #31
  unreachable

12:                                               ; preds = %3
  %13 = ashr exact i64 %9, 3
  %14 = tail call i64 @llvm.umax.i64(i64 %13, i64 1)
  %15 = add i64 %14, %13
  %16 = icmp ult i64 %15, %13
  %17 = tail call i64 @llvm.umin.i64(i64 %15, i64 1152921504606846975)
  %18 = select i1 %16, i64 1152921504606846975, i64 %17, !prof !131
  %19 = ptrtoint ptr %1 to i64
  %20 = sub i64 %19, %8
  %21 = ashr exact i64 %20, 3
  %22 = icmp eq i64 %18, 0
  br i1 %22, label %25, label %23, !prof !131

23:                                               ; preds = %12
  %24 = tail call noundef ptr @_ZNSt15__new_allocatorIP10NEDElementE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %18, ptr noundef null)
  br label %25

25:                                               ; preds = %12, %23
  %26 = phi ptr [ %24, %23 ], [ null, %12 ]
  %27 = getelementptr inbounds ptr, ptr %26, i64 %21
  %28 = load ptr, ptr %2, align 8, !tbaa !48
  store ptr %28, ptr %27, align 8, !tbaa !48
  %29 = icmp sgt i64 %20, 0
  br i1 %29, label %30, label %31, !prof !131

30:                                               ; preds = %25
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %26, ptr align 8 %6, i64 %20, i1 false)
  br label %31

31:                                               ; preds = %25, %30
  %32 = getelementptr inbounds i8, ptr %26, i64 %20
  %33 = getelementptr inbounds ptr, ptr %32, i64 1
  %34 = sub i64 %7, %19
  %35 = icmp sgt i64 %34, 0
  br i1 %35, label %36, label %37, !prof !131

36:                                               ; preds = %31
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %33, ptr align 8 %1, i64 %34, i1 false)
  br label %37

37:                                               ; preds = %31, %36
  %38 = icmp eq ptr %6, null
  br i1 %38, label %40, label %39, !prof !132

39:                                               ; preds = %37
  tail call void @_ZdlPv(ptr noundef %6) #26
  br label %40

40:                                               ; preds = %37, %39
  %41 = getelementptr inbounds %"struct.std::_Vector_base<NEDElement *, std::allocator<NEDElement *>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %42 = getelementptr inbounds i8, ptr %33, i64 %34
  store ptr %26, ptr %0, align 8, !tbaa !41
  store ptr %42, ptr %4, align 8, !tbaa !102
  %43 = getelementptr inbounds ptr, ptr %26, i64 %18
  store ptr %43, ptr %41, align 8, !tbaa !108
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #20

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #21 comdat align 2 personality ptr @__gxx_personality_v0 !prof !133 {
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #27
  %5 = ptrtoint ptr %2 to i64
  %6 = ptrtoint ptr %1 to i64
  %7 = sub i64 %5, %6
  store i64 %7, ptr %4, align 8, !tbaa !134
  %8 = icmp ugt i64 %7, 15
  br i1 %8, label %9, label %13, !prof !135

9:                                                ; preds = %3
  %10 = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0)
  store ptr %10, ptr %0, align 8, !tbaa !120
  %11 = load i64, ptr %4, align 8, !tbaa !134
  %12 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store i64 %11, ptr %12, align 8, !tbaa !51
  br label %13

13:                                               ; preds = %3, %9
  %14 = load ptr, ptr %0, align 8, !tbaa !120
  switch i64 %7, label %17 [
    i64 1, label %15
    i64 0, label %18
  ], !prof !136

15:                                               ; preds = %13
  %16 = load i8, ptr %1, align 1, !tbaa !51
  store i8 %16, ptr %14, align 1, !tbaa !51
  br label %18

17:                                               ; preds = %13
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %14, ptr align 1 %1, i64 %7, i1 false), !prof !137
  br label %18

18:                                               ; preds = %13, %15, %17
  %19 = load i64, ptr %4, align 8, !tbaa !134
  %20 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 %19, ptr %20, align 8, !tbaa !71
  %21 = load ptr, ptr %0, align 8, !tbaa !120
  %22 = getelementptr inbounds i8, ptr %21, i64 %19
  store i8 0, ptr %22, align 1, !tbaa !51
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #27
  ret void
}

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #21 align 2

; Function Attrs: cold nofree nounwind uwtable
define internal void @_GLOBAL__sub_I_msg2.tab.cc() #22 section ".text.startup" !prof !130 !PGOFuncName !138 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds (%struct.MSG2ParserState, ptr @_ZL2ps, i64 0, i32 2), i8 0, i64 24, i1 false)
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN15MSG2ParserStateD2Ev, ptr nonnull @_ZL2ps, ptr nonnull @__dso_handle) #27
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #23

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #24

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #25

attributes #0 = { cold inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind }
attributes #2 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { cold mustprogress nofree nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nosync nounwind memory(none) }
attributes #14 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { cold mustprogress nofree nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { cold nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #24 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #26 = { builtin nounwind }
attributes #27 = { nounwind }
attributes #28 = { cold }
attributes #29 = { nounwind allocsize(0) }
attributes #30 = { nounwind willreturn memory(read) }
attributes #31 = { noreturn }
attributes #32 = { builtin allocsize(0) }
attributes #33 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!39}

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
!34 = distinct !{!35, !36, !37, !38}
!35 = !{ptr @_ZNSt15__new_allocatorIP10NEDElementE8allocateEmPKv, ptr @_Znwm, i64 1}
!36 = !{ptr @_ZNSt6vectorIP10NEDElementSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, ptr @_ZNSt15__new_allocatorIP10NEDElementE8allocateEmPKv, i64 1}
!37 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm, i64 1257662}
!38 = !{ptr @_GLOBAL__sub_I_msg2.tab.cc, ptr @__cxa_atexit, i64 1}
!39 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!40 = !{!"function_entry_count", i64 0}
!41 = !{!42, !43, i64 0}
!42 = !{!"_ZTSNSt12_Vector_baseIP10NEDElementSaIS1_EE17_Vector_impl_dataE", !43, i64 0, !43, i64 8, !43, i64 16}
!43 = !{!"any pointer", !44, i64 0}
!44 = !{!"omnipotent char", !45, i64 0}
!45 = !{!"Simple C++ TBAA"}
!46 = !{!47, !47, i64 0}
!47 = !{!"int", !44, i64 0}
!48 = !{!43, !43, i64 0}
!49 = !{!50, !50, i64 0}
!50 = !{!"short", !44, i64 0}
!51 = !{!44, !44, i64 0}
!52 = !{i64 0, i64 4, !46, i64 4, i64 4, !46, i64 8, i64 4, !46, i64 12, i64 4, !46, i64 16, i64 4, !46, i64 24, i64 8, !48}
!53 = !{!54, !47, i64 4}
!54 = !{!"_ZTS10my_yyltype", !47, i64 0, !47, i64 4, !47, i64 8, !47, i64 12, !47, i64 16, !43, i64 24}
!55 = !{!54, !47, i64 8}
!56 = !{!54, !47, i64 12}
!57 = !{!54, !47, i64 16}
!58 = distinct !{!58, !59, !60}
!59 = !{!"llvm.loop.mustprogress"}
!60 = !{!"llvm.loop.unroll.disable"}
!61 = !{!62, !63, i64 1}
!62 = !{!"_ZTS9NEDParser", !63, i64 0, !63, i64 1, !43, i64 8, !43, i64 16, !43, i64 24}
!63 = !{!"bool", !44, i64 0}
!64 = !{i8 0, i8 2}
!65 = !{}
!66 = !{!67, !43, i64 96}
!67 = !{!"_ZTS15MSG2ParserState", !63, i64 0, !63, i64 1, !68, i64 8, !43, i64 32, !43, i64 40, !43, i64 48, !43, i64 56, !43, i64 64, !43, i64 72, !43, i64 80, !43, i64 88, !43, i64 96, !43, i64 104, !43, i64 112, !43, i64 120, !43, i64 128, !43, i64 136, !43, i64 144, !43, i64 152, !43, i64 160, !43, i64 168, !43, i64 176}
!68 = !{!"_ZTSSt6vectorIP10NEDElementSaIS1_EE", !69, i64 0}
!69 = !{!"_ZTSSt12_Vector_baseIP10NEDElementSaIS1_EE", !70, i64 0}
!70 = !{!"_ZTSNSt12_Vector_baseIP10NEDElementSaIS1_EE12_Vector_implE", !42, i64 0}
!71 = !{!72, !74, i64 8}
!72 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !73, i64 0, !74, i64 8, !44, i64 16}
!73 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !43, i64 0}
!74 = !{!"long", !44, i64 0}
!75 = !{!67, !43, i64 104}
!76 = !{!67, !43, i64 112}
!77 = !{!67, !43, i64 120}
!78 = !{!67, !43, i64 128}
!79 = !{!67, !43, i64 32}
!80 = !{!67, !43, i64 40}
!81 = !{!67, !43, i64 48}
!82 = !{!67, !43, i64 56}
!83 = !{!67, !43, i64 64}
!84 = !{!85, !63, i64 144}
!85 = !{!"_ZTS16ClassDeclElement", !86, i64 0, !72, i64 112, !63, i64 144, !72, i64 152}
!86 = !{!"_ZTS10NEDElement", !74, i64 8, !72, i64 16, !87, i64 48, !43, i64 64, !43, i64 72, !43, i64 80, !43, i64 88, !43, i64 96, !43, i64 104}
!87 = !{!"_ZTS15NEDSourceRegion", !47, i64 0, !47, i64 4, !47, i64 8, !47, i64 12}
!88 = !{!67, !43, i64 72}
!89 = !{!67, !43, i64 80}
!90 = !{!67, !43, i64 88}
!91 = !{!67, !43, i64 144}
!92 = !{!67, !43, i64 152}
!93 = !{!67, !43, i64 136}
!94 = !{!67, !43, i64 160}
!95 = !{!67, !63, i64 0}
!96 = !{!97, !63, i64 176}
!97 = !{!"_ZTS12FieldElement", !86, i64 0, !72, i64 112, !72, i64 144, !63, i64 176, !63, i64 177, !63, i64 178, !72, i64 184, !72, i64 216, !72, i64 248}
!98 = !{!67, !63, i64 1}
!99 = !{!97, !63, i64 177}
!100 = !{!97, !63, i64 178}
!101 = !{!67, !43, i64 168}
!102 = !{!42, !43, i64 8}
!103 = !{!67, !43, i64 176}
!104 = !{!105, !105, i64 0}
!105 = !{!"vtable pointer", !45, i64 0}
!106 = distinct !{!106, !59, !60}
!107 = distinct !{!107, !59, !60}
!108 = !{!42, !43, i64 16}
!109 = distinct !{!109, !59, !60}
!110 = distinct !{!110, !59, !60}
!111 = distinct !{!111, !59, !60}
!112 = distinct !{!112, !59, !60}
!113 = distinct !{!113, !59, !60}
!114 = !{!115, !47, i64 0}
!115 = !{!"_ZTS10LineColumn", !47, i64 0, !47, i64 4}
!116 = !{!115, !47, i64 4}
!117 = !{!62, !43, i64 16}
!118 = !{!"branch_weights", i32 1, i32 1048575}
!119 = !{!62, !43, i64 8}
!120 = !{!72, !43, i64 0}
!121 = !{!62, !43, i64 24}
!122 = !{!73, !43, i64 0}
!123 = !{!124}
!124 = distinct !{!124, !125, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!125 = distinct !{!125, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!126 = distinct !{!126, !59, !60}
!127 = !{!"function_entry_count", i64 28}
!128 = !{!"branch_weights", i32 0, i32 28}
!129 = !{!"branch_weights", i32 28, i32 0}
!130 = !{!"function_entry_count", i64 1}
!131 = !{!"branch_weights", i32 0, i32 1}
!132 = !{!"branch_weights", i32 1, i32 0}
!133 = !{!"function_entry_count", i64 1889443}
!134 = !{!74, !74, i64 0}
!135 = !{!"branch_weights", i32 1257662, i32 631781}
!136 = !{!"branch_weights", i32 1856863, i32 32338, i32 242}
!137 = !{!"VP", i32 1, i64 1856863, i64 17, i64 729444, i64 16, i64 433786, i64 9, i64 266579, i64 8, i64 130021}
!138 = !{!"simulator/msg2.tab.cc;_GLOBAL__sub_I_msg2.tab.cc"}
