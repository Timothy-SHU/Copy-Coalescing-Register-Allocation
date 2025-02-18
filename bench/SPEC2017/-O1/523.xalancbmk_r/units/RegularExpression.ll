; ModuleID = 'RegularExpression.cpp'
source_filename = "RegularExpression.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XMLRegisterCleanup" = type { ptr, ptr, ptr }
%"class.xercesc_2_7::RegularExpression::Context" = type { i8, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::ArrayJanitor" = type { ptr, ptr }
%"class.xercesc_2_7::RegularExpression" = type { i8, i8, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %"class.xercesc_2_7::OpFactory", ptr, ptr }
%"class.xercesc_2_7::OpFactory" = type { ptr, ptr }
%"class.xercesc_2_7::RegxParser" = type { ptr, ptr, i8, i32, i32, i32, i16, i32, i16, i32, ptr, ptr, ptr }
%"class.xercesc_2_7::RangeToken" = type { %"class.xercesc_2_7::Token", i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::Token" = type { ptr, i16, ptr }
%"class.xercesc_2_7::Op" = type { ptr, ptr, i16, ptr }
%"class.xercesc_2_7::Match" = type { ptr, i32, i32, ptr, ptr, ptr }
%"class.xercesc_2_7::BaseRefVectorOf" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::BaseRefVectorOf.0" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::XMLBuffer" = type { i32, i32, i32, i8, ptr, ptr, ptr }
%"class.xercesc_2_7::ConditionToken" = type { %"class.xercesc_2_7::Token", i32, ptr, ptr, ptr }
%"class.xercesc_2_7::ModifierToken" = type { %"class.xercesc_2_7::Token", i32, i32, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_717RegularExpression7cleanUpEv = comdat any

$_ZN11xercesc_2_712ArrayJanitorItED2Ev = comdat any

$_ZN11xercesc_2_75Match11setStartPosEii = comdat any

$_ZN11xercesc_2_75Match9setEndPosEii = comdat any

$_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_5MatchEE9elementAtEj = comdat any

$_ZN11xercesc_2_79XMLBuffer6appendEPKt = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj = comdat any

$_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZNK11xercesc_2_75Match11getStartPosEi = comdat any

$_ZNK11xercesc_2_75Match9getEndPosEi = comdat any

$_ZN11xercesc_2_714ParseExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_717RegularExpression13compileSingleEPKNS_5TokenEPNS_2OpEt = comdat any

$_ZN11xercesc_2_717RegularExpression14compileClosureEPKNS_5TokenEPNS_2OpEbt = comdat any

$_ZN11xercesc_2_717RegularExpression18compileParenthesisEPKNS_5TokenEPNS_2OpEb = comdat any

$_ZN11xercesc_2_717RegularExpression11compileLookEPKNS_5TokenEPKNS_2OpEbt = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv = comdat any

$_ZN11xercesc_2_716RuntimeExceptionD0Ev = comdat any

$_ZNK11xercesc_2_716RuntimeException7getTypeEv = comdat any

$_ZNK11xercesc_2_716RuntimeException9duplicateEv = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev = comdat any

$_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv = comdat any

$_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv = comdat any

$_ZN11xercesc_2_714ParseExceptionD0Ev = comdat any

$_ZNK11xercesc_2_714ParseException7getTypeEv = comdat any

$_ZNK11xercesc_2_714ParseException9duplicateEv = comdat any

$_ZN11xercesc_2_716RefArrayVectorOfItED2Ev = comdat any

$_ZN11xercesc_2_716RefArrayVectorOfItED0Ev = comdat any

$_ZN11xercesc_2_716RefArrayVectorOfItE12setElementAtEPtj = comdat any

$_ZN11xercesc_2_716RefArrayVectorOfItE17removeAllElementsEv = comdat any

$_ZN11xercesc_2_716RefArrayVectorOfItE15removeElementAtEj = comdat any

$_ZN11xercesc_2_716RefArrayVectorOfItE17removeLastElementEv = comdat any

$_ZN11xercesc_2_716RefArrayVectorOfItE7cleanupEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfItED2Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfItED0Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfItE12setElementAtEPtj = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfItE17removeAllElementsEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfItE15removeElementAtEj = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfItE17removeLastElementEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfItE7cleanupEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_5MatchEE19ensureExtraCapacityEj = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfItE19ensureExtraCapacityEj = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_5MatchEED2Ev = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_5MatchEED0Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_5MatchEE12setElementAtEPS1_j = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_5MatchEE17removeAllElementsEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_5MatchEE15removeElementAtEj = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_5MatchEE17removeLastElementEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_5MatchEE7cleanupEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_5MatchEED2Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_5MatchEED0Ev = comdat any

$_ZTSN11xercesc_2_720OutOfMemoryExceptionE = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_720OutOfMemoryExceptionE = comdat any

$_ZTSN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTIN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTSN11xercesc_2_724IllegalArgumentExceptionE = comdat any

$_ZTIN11xercesc_2_724IllegalArgumentExceptionE = comdat any

$_ZTSN11xercesc_2_714ParseExceptionE = comdat any

$_ZTIN11xercesc_2_714ParseExceptionE = comdat any

$_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTVN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTVN11xercesc_2_724IllegalArgumentExceptionE = comdat any

$_ZTVN11xercesc_2_714ParseExceptionE = comdat any

$_ZTVN11xercesc_2_716RefArrayVectorOfItEE = comdat any

$_ZTSN11xercesc_2_716RefArrayVectorOfItEE = comdat any

$_ZTSN11xercesc_2_715BaseRefVectorOfItEE = comdat any

$_ZTIN11xercesc_2_715BaseRefVectorOfItEE = comdat any

$_ZTIN11xercesc_2_716RefArrayVectorOfItEE = comdat any

$_ZTVN11xercesc_2_715BaseRefVectorOfItEE = comdat any

$_ZTVN11xercesc_2_711RefVectorOfINS_5MatchEEE = comdat any

$_ZTSN11xercesc_2_711RefVectorOfINS_5MatchEEE = comdat any

$_ZTSN11xercesc_2_715BaseRefVectorOfINS_5MatchEEE = comdat any

$_ZTIN11xercesc_2_715BaseRefVectorOfINS_5MatchEEE = comdat any

$_ZTIN11xercesc_2_711RefVectorOfINS_5MatchEEE = comdat any

$_ZTVN11xercesc_2_715BaseRefVectorOfINS_5MatchEEE = comdat any

@_ZN11xercesc_2_717RegularExpression11MARK_PARENSE = dso_local local_unnamed_addr constant i32 1, align 4
@_ZN11xercesc_2_717RegularExpression11IGNORE_CASEE = dso_local local_unnamed_addr constant i32 2, align 4
@_ZN11xercesc_2_717RegularExpression11SINGLE_LINEE = dso_local local_unnamed_addr constant i32 4, align 4
@_ZN11xercesc_2_717RegularExpression13MULTIPLE_LINEE = dso_local local_unnamed_addr constant i32 8, align 4
@_ZN11xercesc_2_717RegularExpression16EXTENDED_COMMENTE = dso_local local_unnamed_addr constant i32 16, align 4
@_ZN11xercesc_2_717RegularExpression20USE_UNICODE_CATEGORYE = dso_local local_unnamed_addr constant i32 32, align 4
@_ZN11xercesc_2_717RegularExpression21UNICODE_WORD_BOUNDARYE = dso_local local_unnamed_addr constant i32 64, align 4
@_ZN11xercesc_2_717RegularExpression36PROHIBIT_HEAD_CHARACTER_OPTIMIZATIONE = dso_local local_unnamed_addr constant i32 128, align 4
@_ZN11xercesc_2_717RegularExpression34PROHIBIT_FIXED_STRING_OPTIMIZATIONE = dso_local local_unnamed_addr constant i32 256, align 4
@_ZN11xercesc_2_717RegularExpression14XMLSCHEMA_MODEE = dso_local local_unnamed_addr constant i32 512, align 4
@_ZN11xercesc_2_717RegularExpression13SPECIAL_COMMAE = dso_local local_unnamed_addr constant i32 1024, align 4
@_ZN11xercesc_2_717RegularExpression9WT_IGNOREE = dso_local local_unnamed_addr constant i16 0, align 2
@_ZN11xercesc_2_717RegularExpression9WT_LETTERE = dso_local local_unnamed_addr constant i16 1, align 2
@_ZN11xercesc_2_717RegularExpression8WT_OTHERE = dso_local local_unnamed_addr constant i16 2, align 2
@_ZN11xercesc_2_717RegularExpression10fWordRangeE = dso_local local_unnamed_addr global ptr null, align 8
@_ZN11xercesc_2_7L16WordRangeCleanupE = internal global %"class.xercesc_2_7::XMLRegisterCleanup" zeroinitializer, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_720OutOfMemoryExceptionE = linkonce_odr dso_local constant [38 x i8] c"N11xercesc_2_720OutOfMemoryExceptionE\00", comdat, align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_720OutOfMemoryExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_720OutOfMemoryExceptionE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZN11xercesc_2_76XMLUni15fgZeroLenStringE = external constant [0 x i16], align 2
@.str = private unnamed_addr constant [22 x i8] c"RegularExpression.cpp\00", align 1
@_ZTSN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local constant [34 x i8] c"N11xercesc_2_716RuntimeExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_716RuntimeExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE = external local_unnamed_addr global ptr, align 8
@_ZN11xercesc_2_7L11fgUniIsWordE = internal constant [7 x i16] [i16 73, i16 115, i16 87, i16 111, i16 114, i16 100, i16 0], align 2
@_ZTSN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local constant [42 x i8] c"N11xercesc_2_724IllegalArgumentExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_724IllegalArgumentExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTSN11xercesc_2_714ParseExceptionE = linkonce_odr dso_local constant [32 x i8] c"N11xercesc_2_714ParseExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_714ParseExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_714ParseExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZN11xercesc_2_75Token11FC_TERMINALE = external local_unnamed_addr constant i16, align 2
@.str.1 = private unnamed_addr constant [30 x i8] c"./xercesc/util/regx/Match.hpp\00", align 1
@_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant [48 x i8] c"N11xercesc_2_730ArrayIndexOutOfBoundsExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE = external constant [0 x i16], align 2
@_ZTVN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_716RuntimeExceptionD0Ev, ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv, ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE = external constant [0 x i16], align 2
@_ZTVN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev, ptr @_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv, ptr @_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni31fgIllegalArgumentException_NameE = external constant [0 x i16], align 2
@_ZTVN11xercesc_2_714ParseExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_714ParseExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_714ParseExceptionD0Ev, ptr @_ZNK11xercesc_2_714ParseException7getTypeEv, ptr @_ZNK11xercesc_2_714ParseException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni21fgParseException_NameE = external constant [0 x i16], align 2
@_ZTVN11xercesc_2_716RefArrayVectorOfItEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_716RefArrayVectorOfItEE, ptr @_ZN11xercesc_2_716RefArrayVectorOfItED2Ev, ptr @_ZN11xercesc_2_716RefArrayVectorOfItED0Ev, ptr @_ZN11xercesc_2_716RefArrayVectorOfItE12setElementAtEPtj, ptr @_ZN11xercesc_2_716RefArrayVectorOfItE17removeAllElementsEv, ptr @_ZN11xercesc_2_716RefArrayVectorOfItE15removeElementAtEj, ptr @_ZN11xercesc_2_716RefArrayVectorOfItE17removeLastElementEv, ptr @_ZN11xercesc_2_716RefArrayVectorOfItE7cleanupEv] }, comdat, align 8
@_ZTSN11xercesc_2_716RefArrayVectorOfItEE = linkonce_odr dso_local constant [37 x i8] c"N11xercesc_2_716RefArrayVectorOfItEE\00", comdat, align 1
@_ZTSN11xercesc_2_715BaseRefVectorOfItEE = linkonce_odr dso_local constant [36 x i8] c"N11xercesc_2_715BaseRefVectorOfItEE\00", comdat, align 1
@_ZTIN11xercesc_2_715BaseRefVectorOfItEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_715BaseRefVectorOfItEE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_716RefArrayVectorOfItEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_716RefArrayVectorOfItEE, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfItEE }, comdat, align 8
@_ZTVN11xercesc_2_715BaseRefVectorOfItEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfItEE, ptr @_ZN11xercesc_2_715BaseRefVectorOfItED2Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfItED0Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfItE12setElementAtEPtj, ptr @_ZN11xercesc_2_715BaseRefVectorOfItE17removeAllElementsEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfItE15removeElementAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfItE17removeLastElementEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfItE7cleanupEv] }, comdat, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"./xercesc/util/BaseRefVectorOf.c\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"./xercesc/util/RefArrayVectorOf.c\00", align 1
@_ZTVN11xercesc_2_711RefVectorOfINS_5MatchEEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_711RefVectorOfINS_5MatchEEE, ptr @_ZN11xercesc_2_711RefVectorOfINS_5MatchEED2Ev, ptr @_ZN11xercesc_2_711RefVectorOfINS_5MatchEED0Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_5MatchEE12setElementAtEPS1_j, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_5MatchEE17removeAllElementsEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_5MatchEE15removeElementAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_5MatchEE17removeLastElementEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_5MatchEE7cleanupEv] }, comdat, align 8
@_ZTSN11xercesc_2_711RefVectorOfINS_5MatchEEE = linkonce_odr dso_local constant [41 x i8] c"N11xercesc_2_711RefVectorOfINS_5MatchEEE\00", comdat, align 1
@_ZTSN11xercesc_2_715BaseRefVectorOfINS_5MatchEEE = linkonce_odr dso_local constant [45 x i8] c"N11xercesc_2_715BaseRefVectorOfINS_5MatchEEE\00", comdat, align 1
@_ZTIN11xercesc_2_715BaseRefVectorOfINS_5MatchEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_715BaseRefVectorOfINS_5MatchEEE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_711RefVectorOfINS_5MatchEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_711RefVectorOfINS_5MatchEEE, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfINS_5MatchEEE }, comdat, align 8
@_ZTVN11xercesc_2_715BaseRefVectorOfINS_5MatchEEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfINS_5MatchEEE, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_5MatchEED2Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_5MatchEED0Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_5MatchEE12setElementAtEPS1_j, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_5MatchEE17removeAllElementsEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_5MatchEE15removeElementAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_5MatchEE17removeLastElementEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_5MatchEE7cleanupEv] }, comdat, align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_RegularExpression.cpp, ptr null }]

@_ZN11xercesc_2_717RegularExpression7ContextC1EPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_717RegularExpression7ContextC2EPNS_13MemoryManagerE
@_ZN11xercesc_2_717RegularExpression7ContextD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_717RegularExpression7ContextD2Ev
@_ZN11xercesc_2_717RegularExpressionC1EPKcPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xercesc_2_717RegularExpressionC2EPKcPNS_13MemoryManagerE
@_ZN11xercesc_2_717RegularExpressionC1EPKcS2_PNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr), ptr @_ZN11xercesc_2_717RegularExpressionC2EPKcS2_PNS_13MemoryManagerE
@_ZN11xercesc_2_717RegularExpressionC1EPKtPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xercesc_2_717RegularExpressionC2EPKtPNS_13MemoryManagerE
@_ZN11xercesc_2_717RegularExpressionC1EPKtS2_PNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr), ptr @_ZN11xercesc_2_717RegularExpressionC2EPKtS2_PNS_13MemoryManagerE
@_ZN11xercesc_2_717RegularExpressionD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_717RegularExpressionD2Ev

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #0

declare void @_ZN11xercesc_2_718XMLRegisterCleanupC1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_717RegularExpression15matchIgnoreCaseEii(ptr nocapture nonnull readnone align 8 %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 align 2 !prof !81 {
  %4 = alloca [2 x i16], align 2
  %5 = alloca [2 x i16], align 2
  %6 = alloca [2 x i16], align 2
  %7 = alloca [2 x i16], align 2
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = icmp sgt i32 %1, 65535
  br i1 %10, label %11, label %35

11:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #20
  %12 = getelementptr inbounds [2 x i16], ptr %4, i64 0, i64 1
  %13 = add nuw i32 %1, 67043328
  %14 = lshr i32 %13, 10
  %15 = trunc i32 %14 to i16
  %16 = add i16 %15, -10240
  store i16 %16, ptr %4, align 2, !tbaa !82
  %17 = trunc i32 %1 to i16
  %18 = and i16 %17, 1023
  %19 = or disjoint i16 %18, -9216
  store i16 %19, ptr %12, align 2, !tbaa !82
  %20 = icmp sgt i32 %2, 65535
  br i1 %20, label %21, label %30

21:                                               ; preds = %11
  %22 = getelementptr inbounds [2 x i16], ptr %5, i64 0, i64 1
  %23 = add nuw i32 %2, 67043328
  %24 = lshr i32 %23, 10
  %25 = trunc i32 %24 to i16
  %26 = add i16 %25, -10240
  store i16 %26, ptr %5, align 2, !tbaa !82
  %27 = trunc i32 %2 to i16
  %28 = and i16 %27, 1023
  %29 = or disjoint i16 %28, -9216
  store i16 %29, ptr %22, align 2, !tbaa !82
  br label %33

30:                                               ; preds = %11
  %31 = trunc i32 %2 to i16
  store i16 %31, ptr %5, align 2, !tbaa !82
  %32 = getelementptr inbounds [2 x i16], ptr %5, i64 0, i64 1
  store i16 32, ptr %32, align 2, !tbaa !82
  br label %33

33:                                               ; preds = %30, %21
  %34 = call noundef i32 @_ZN11xercesc_2_79XMLString15compareNIStringEPKtS2_j(ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef 2)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #20
  br label %52

35:                                               ; preds = %3
  %36 = icmp sgt i32 %2, 65535
  %37 = trunc i32 %1 to i16
  br i1 %36, label %38, label %49

38:                                               ; preds = %35
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #20
  store i16 %37, ptr %6, align 2, !tbaa !82
  %39 = getelementptr inbounds i16, ptr %6, i64 1
  store i16 32, ptr %39, align 2, !tbaa !82
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #20
  %40 = getelementptr inbounds [2 x i16], ptr %7, i64 0, i64 1
  %41 = add nuw i32 %2, 67043328
  %42 = lshr i32 %41, 10
  %43 = trunc i32 %42 to i16
  %44 = add i16 %43, -10240
  store i16 %44, ptr %7, align 2, !tbaa !82
  %45 = trunc i32 %2 to i16
  %46 = and i16 %45, 1023
  %47 = or disjoint i16 %46, -9216
  store i16 %47, ptr %40, align 2, !tbaa !82
  %48 = call noundef i32 @_ZN11xercesc_2_79XMLString15compareNIStringEPKtS2_j(ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef 2)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #20
  br label %52

49:                                               ; preds = %35
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #20
  store i16 %37, ptr %8, align 2, !tbaa !82
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #20
  %50 = trunc i32 %2 to i16
  store i16 %50, ptr %9, align 2, !tbaa !82
  %51 = call noundef i32 @_ZN11xercesc_2_79XMLString15compareNIStringEPKtS2_j(ptr noundef nonnull %8, ptr noundef nonnull %9, i32 noundef 1)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #20
  br label %52

52:                                               ; preds = %49, %38, %33
  %53 = phi i32 [ %34, %33 ], [ %48, %38 ], [ %51, %49 ]
  %54 = icmp eq i32 %53, 0
  ret i1 %54
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare noundef i32 @_ZN11xercesc_2_79XMLString15compareNIStringEPKtS2_j(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xercesc_2_717RegularExpression7ContextC2EPNS_13MemoryManagerE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(56) %0, ptr noundef %1) unnamed_addr #4 align 2 !prof !81 {
  store i8 0, ptr %0, align 8, !tbaa !86
  %3 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %0, i64 0, i32 9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %3, i8 0, i64 44, i1 false)
  store ptr %1, ptr %4, align 8, !tbaa !91
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_717RegularExpression7ContextD2Ev(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !81 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !92
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5, !prof !93

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %0, i64 0, i32 9
  %7 = load ptr, ptr %6, align 8, !tbaa !91
  %8 = load ptr, ptr %7, align 8, !tbaa !94
  %9 = getelementptr inbounds ptr, ptr %8, i64 3
  %10 = load ptr, ptr %9, align 8
  invoke void %10(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %3)
          to label %11 unwind label %23

11:                                               ; preds = %5, %1
  %12 = load i8, ptr %0, align 8, !tbaa !86, !range !96, !noundef !97
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %22, label %14, !prof !93

14:                                               ; preds = %11
  %15 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %0, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !98
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = load ptr, ptr %16, align 8, !tbaa !94
  %20 = getelementptr inbounds ptr, ptr %19, i64 1
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(40) %16) #20
  br label %22

22:                                               ; preds = %14, %18, %11
  ret void

23:                                               ; preds = %5
  %24 = landingpad { ptr, i32 }
          catch ptr null
  %25 = extractvalue { ptr, i32 } %24, 0
  tail call void @__clang_call_terminate(ptr %25) #21
  unreachable
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat !prof !81 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #20
  tail call void @_ZSt9terminatev() #21
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xercesc_2_717RegularExpression7Context5resetEPKtiiii(ptr nocapture noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #7 align 2 !prof !81 {
  %7 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %0, i64 0, i32 8
  store ptr %1, ptr %7, align 8, !tbaa !99
  %8 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %0, i64 0, i32 5
  store i32 %2, ptr %8, align 4, !tbaa !100
  %9 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %0, i64 0, i32 1
  store i32 %3, ptr %9, align 4, !tbaa !101
  %10 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %0, i64 0, i32 2
  store i32 %4, ptr %10, align 8, !tbaa !102
  %11 = sub nsw i32 %4, %3
  %12 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %0, i64 0, i32 3
  store i32 %11, ptr %12, align 4, !tbaa !103
  %13 = load i8, ptr %0, align 8, !tbaa !86, !range !96, !noundef !97
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %23, label %15, !prof !93

15:                                               ; preds = %6
  %16 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %0, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !98
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr %17, align 8, !tbaa !94
  %21 = getelementptr inbounds ptr, ptr %20, i64 1
  %22 = load ptr, ptr %21, align 8
  tail call void %22(ptr noundef nonnull align 8 dereferenceable(40) %17) #20
  br label %23

23:                                               ; preds = %15, %19, %6
  %24 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %0, i64 0, i32 7
  store ptr null, ptr %24, align 8, !tbaa !98
  %25 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %0, i64 0, i32 4
  %26 = load i32, ptr %25, align 8, !tbaa !104
  %27 = icmp eq i32 %26, %5
  br i1 %27, label %47, label %28, !prof !93

28:                                               ; preds = %23
  %29 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %0, i64 0, i32 6
  %30 = load ptr, ptr %29, align 8, !tbaa !92
  %31 = icmp eq ptr %30, null
  br i1 %31, label %38, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %0, i64 0, i32 9
  %34 = load ptr, ptr %33, align 8, !tbaa !91
  %35 = load ptr, ptr %34, align 8, !tbaa !94
  %36 = getelementptr inbounds ptr, ptr %35, i64 3
  %37 = load ptr, ptr %36, align 8
  tail call void %37(ptr noundef nonnull align 8 dereferenceable(8) %34, ptr noundef nonnull %30)
  br label %38

38:                                               ; preds = %32, %28
  %39 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %0, i64 0, i32 9
  %40 = load ptr, ptr %39, align 8, !tbaa !91
  %41 = sext i32 %5 to i64
  %42 = shl nsw i64 %41, 2
  %43 = load ptr, ptr %40, align 8, !tbaa !94
  %44 = getelementptr inbounds ptr, ptr %43, i64 2
  %45 = load ptr, ptr %44, align 8
  %46 = tail call noundef ptr %45(ptr noundef nonnull align 8 dereferenceable(8) %40, i64 noundef %42)
  store ptr %46, ptr %29, align 8, !tbaa !92
  br label %47

47:                                               ; preds = %38, %23
  store i32 %5, ptr %25, align 8, !tbaa !104
  %48 = icmp sgt i32 %5, 0
  br i1 %48, label %49, label %52, !prof !105

49:                                               ; preds = %47
  %50 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %0, i64 0, i32 6
  %51 = load ptr, ptr %50, align 8, !tbaa !92
  br label %53

52:                                               ; preds = %53, %47
  ret void

53:                                               ; preds = %49, %53
  %54 = phi i64 [ 0, %49 ], [ %56, %53 ]
  %55 = getelementptr inbounds i32, ptr %51, i64 %54
  store i32 -1, ptr %55, align 4, !tbaa !106
  %56 = add nuw nsw i64 %54, 1
  %57 = load i32, ptr %25, align 8, !tbaa !104
  %58 = sext i32 %57 to i64
  %59 = icmp slt i64 %56, %58
  br i1 %59, label %53, label %52, !prof !105, !llvm.loop !107
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_717RegularExpression7Context6nextChERiS2_s(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0, ptr nocapture noundef nonnull align 4 dereferenceable(4) %1, ptr nocapture noundef nonnull align 4 dereferenceable(4) %2, i16 noundef signext %3) local_unnamed_addr #8 align 2 !prof !81 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %0, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !99
  %7 = load i32, ptr %2, align 4, !tbaa !106
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i16, ptr %6, i64 %8
  %10 = load i16, ptr %9, align 2, !tbaa !82
  %11 = zext i16 %10 to i32
  store i32 %11, ptr %1, align 4, !tbaa !106
  %12 = and i16 %10, -1024
  switch i16 %12, label %56 [
    i16 -10240, label %13
    i16 -9216, label %30
  ], !prof !110

13:                                               ; preds = %4
  %14 = load i32, ptr %2, align 4, !tbaa !106
  %15 = add nsw i32 %14, 1
  %16 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %0, i64 0, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !102
  %18 = icmp slt i32 %15, %17
  %19 = icmp sgt i16 %3, 0
  %20 = and i1 %19, %18
  br i1 %20, label %21, label %56

21:                                               ; preds = %13
  %22 = sext i32 %15 to i64
  %23 = getelementptr inbounds i16, ptr %6, i64 %22
  %24 = load i16, ptr %23, align 2, !tbaa !82
  %25 = and i16 %24, -1024
  %26 = icmp eq i16 %25, -9216
  br i1 %26, label %27, label %56

27:                                               ; preds = %21
  store i32 %15, ptr %2, align 4, !tbaa !106
  %28 = shl nuw nsw i32 %11, 10
  %29 = zext i16 %24 to i32
  br label %51

30:                                               ; preds = %4
  %31 = load i32, ptr %2, align 4, !tbaa !106
  %32 = icmp sgt i32 %31, 0
  %33 = icmp slt i16 %3, 1
  %34 = and i1 %33, %32
  br i1 %34, label %35, label %56

35:                                               ; preds = %30
  %36 = sext i32 %31 to i64
  %37 = getelementptr i16, ptr %6, i64 %36
  %38 = getelementptr i16, ptr %37, i64 -1
  %39 = load i16, ptr %38, align 2, !tbaa !82
  %40 = and i16 %39, -1024
  %41 = icmp eq i16 %40, -10240
  br i1 %41, label %42, label %56

42:                                               ; preds = %35
  %43 = add nsw i32 %31, -1
  store i32 %43, ptr %2, align 4, !tbaa !106
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i16, ptr %6, i64 %44
  %46 = load i16, ptr %45, align 2, !tbaa !82
  %47 = load i32, ptr %1, align 4, !tbaa !106
  %48 = zext i16 %46 to i32
  %49 = shl nuw nsw i32 %48, 10
  %50 = and i32 %47, 65535
  br label %51

51:                                               ; preds = %42, %27
  %52 = phi i32 [ %28, %27 ], [ %50, %42 ]
  %53 = phi i32 [ %29, %27 ], [ %49, %42 ]
  %54 = add nsw i32 %52, -56613888
  %55 = add nsw i32 %54, %53
  store i32 %55, ptr %1, align 4, !tbaa !106
  br label %56

56:                                               ; preds = %51, %4, %30, %35, %13, %21
  %57 = phi i1 [ false, %21 ], [ false, %13 ], [ false, %35 ], [ false, %30 ], [ true, %4 ], [ true, %51 ]
  ret i1 %57
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_717RegularExpressionC2EPKcPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !81 {
  %4 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  store i8 0, ptr %0, align 8, !tbaa !111
  %5 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 1
  store i8 0, ptr %5, align 1, !tbaa !114
  %6 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 2
  %7 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 6
  %8 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %7, i8 0, i64 48, i1 false)
  tail call void @_ZN11xercesc_2_79OpFactoryC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef %2)
  %9 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 13
  store ptr null, ptr %9, align 8, !tbaa !115
  %10 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 14
  store ptr %2, ptr %10, align 8, !tbaa !116
  %11 = invoke noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKcPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %2)
          to label %12 unwind label %16

12:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #20
  %13 = load ptr, ptr %10, align 8, !tbaa !116
  store ptr %11, ptr %4, align 8, !tbaa !117
  %14 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %4, i64 0, i32 1
  store ptr %13, ptr %14, align 8, !tbaa !119
  invoke void @_ZN11xercesc_2_717RegularExpression10setPatternEPKtS2_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %11, ptr noundef null)
          to label %15 unwind label %18

15:                                               ; preds = %12
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #20
  ret void

16:                                               ; preds = %3
  %17 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  br label %20

18:                                               ; preds = %12
  %19 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #20
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi { ptr, i32 } [ %19, %18 ], [ %17, %16 ]
  %22 = extractvalue { ptr, i32 } %21, 1
  %23 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #20
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = extractvalue { ptr, i32 } %21, 0
  %27 = call ptr @__cxa_begin_catch(ptr %26) #20
  invoke void @__cxa_rethrow() #22
          to label %44 unwind label %28

28:                                               ; preds = %25
  %29 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %30 unwind label %41

30:                                               ; preds = %28, %20
  %31 = phi ptr [ null, %28 ], [ @_ZN11xercesc_2_717RegularExpression7cleanUpEv, %20 ]
  %32 = phi ptr [ null, %28 ], [ %0, %20 ]
  %33 = phi { ptr, i32 } [ %29, %28 ], [ %21, %20 ]
  %34 = icmp eq ptr %32, null
  %35 = or i1 %24, %34
  br i1 %35, label %40, label %36

36:                                               ; preds = %30
  invoke void %31(ptr noundef nonnull align 8 dereferenceable(104) %32)
          to label %40 unwind label %37

37:                                               ; preds = %36
  %38 = landingpad { ptr, i32 }
          catch ptr null
  %39 = extractvalue { ptr, i32 } %38, 0
  call void @__clang_call_terminate(ptr %39) #21
  unreachable

40:                                               ; preds = %30, %36
  call void @_ZN11xercesc_2_79OpFactoryD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #20
  resume { ptr, i32 } %33

41:                                               ; preds = %28
  %42 = landingpad { ptr, i32 }
          catch ptr null
  %43 = extractvalue { ptr, i32 } %42, 0
  call void @__clang_call_terminate(ptr %43) #21
  unreachable

44:                                               ; preds = %25
  unreachable
}

declare void @_ZN11xercesc_2_79OpFactoryC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #1

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717RegularExpression7cleanUpEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #9 comdat align 2 !prof !81 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 14
  %3 = load ptr, ptr %2, align 8, !tbaa !116
  %4 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !120
  %6 = load ptr, ptr %3, align 8, !tbaa !94
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5)
  %9 = load ptr, ptr %2, align 8, !tbaa !116
  %10 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 8
  %11 = load ptr, ptr %10, align 8, !tbaa !121
  %12 = load ptr, ptr %9, align 8, !tbaa !94
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef %11)
  %15 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !122
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  tail call void @_ZN11xercesc_2_79BMPatternD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %16) #20
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %16) #20
  br label %19

19:                                               ; preds = %18, %1
  %20 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 13
  %21 = load ptr, ptr %20, align 8, !tbaa !115
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  tail call void @_ZN11xercesc_2_712TokenFactoryD1Ev(ptr noundef nonnull align 8 dereferenceable(128) %21) #20
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %21) #20
  br label %24

24:                                               ; preds = %23, %19
  ret void
}

declare noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKcPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_717RegularExpression10setPatternEPKtS2_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !123 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 14
  %5 = load ptr, ptr %4, align 8, !tbaa !116
  %6 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 128, ptr noundef %5)
  %7 = load ptr, ptr %4, align 8, !tbaa !116
  invoke void @_ZN11xercesc_2_712TokenFactoryC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(128) %6, ptr noundef %7)
          to label %8 unwind label %44, !prof !124

8:                                                ; preds = %3
  %9 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 13
  store ptr %6, ptr %9, align 8, !tbaa !115
  %10 = tail call noundef i32 @_ZN11xercesc_2_717RegularExpression12parseOptionsEPKt(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %2), !range !125
  %11 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 5
  store i32 %10, ptr %11, align 8, !tbaa !126
  %12 = load ptr, ptr %4, align 8, !tbaa !116
  %13 = icmp eq ptr %1, null
  br i1 %13, label %34, label %14, !prof !127

14:                                               ; preds = %8
  %15 = load i16, ptr %1, align 2, !tbaa !82
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %28, label %17, !prof !127

17:                                               ; preds = %14, %17
  %18 = phi ptr [ %19, %17 ], [ %1, %14 ]
  %19 = getelementptr inbounds i16, ptr %18, i64 1
  %20 = load i16, ptr %19, align 2, !tbaa !82
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %22, label %17, !prof !128, !llvm.loop !129

22:                                               ; preds = %17
  %23 = ptrtoint ptr %19 to i64
  %24 = ptrtoint ptr %1 to i64
  %25 = sub i64 %23, %24
  %26 = add i64 %25, 2
  %27 = and i64 %26, 8589934590
  br label %28

28:                                               ; preds = %22, %14
  %29 = phi i64 [ %27, %22 ], [ 2, %14 ]
  %30 = load ptr, ptr %12, align 8, !tbaa !94
  %31 = getelementptr inbounds ptr, ptr %30, i64 2
  %32 = load ptr, ptr %31, align 8
  %33 = tail call noundef ptr %32(ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef %29), !prof !130
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %33, ptr nonnull align 2 %1, i64 %29, i1 false), !prof !131
  br label %34

34:                                               ; preds = %8, %28
  %35 = phi ptr [ %33, %28 ], [ null, %8 ]
  %36 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 7
  store ptr %35, ptr %36, align 8, !tbaa !120
  %37 = load i32, ptr %11, align 8, !tbaa !126
  %38 = and i32 %37, 512
  %39 = icmp eq i32 %38, 0
  %40 = load ptr, ptr %4, align 8, !tbaa !116
  %41 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 72, ptr noundef %40)
  %42 = load ptr, ptr %4, align 8, !tbaa !116
  br i1 %39, label %48, label %43, !prof !127

43:                                               ; preds = %34
  invoke void @_ZN11xercesc_2_718ParserForXMLSchemaC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72) %41, ptr noundef %42)
          to label %51 unwind label %46, !prof !124

44:                                               ; preds = %3
  %45 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %6, ptr noundef %5) #20
  br label %75

46:                                               ; preds = %43
  %47 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %41, ptr noundef %40) #20
  br label %75

48:                                               ; preds = %34
  invoke void @_ZN11xercesc_2_710RegxParserC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72) %41, ptr noundef %42)
          to label %51 unwind label %49

49:                                               ; preds = %48
  %50 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %41, ptr noundef %40) #20
  br label %75

51:                                               ; preds = %43, %48
  %52 = load ptr, ptr %9, align 8, !tbaa !115
  %53 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %41, i64 0, i32 12
  store ptr %52, ptr %53, align 8, !tbaa !132
  %54 = load ptr, ptr %36, align 8, !tbaa !120
  %55 = load i32, ptr %11, align 8, !tbaa !126
  %56 = invoke noundef ptr @_ZN11xercesc_2_710RegxParser5parseEPKti(ptr noundef nonnull align 8 dereferenceable(72) %41, ptr noundef %54, i32 noundef %55)
          to label %57 unwind label %68, !prof !124

57:                                               ; preds = %51
  %58 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 10
  store ptr %56, ptr %58, align 8, !tbaa !134
  %59 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %41, i64 0, i32 5
  %60 = load i32, ptr %59, align 4, !tbaa !135
  %61 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 2
  store i32 %60, ptr %61, align 4, !tbaa !136
  %62 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %41, i64 0, i32 2
  %63 = load i8, ptr %62, align 8, !tbaa !137, !range !96, !noundef !97
  store i8 %63, ptr %0, align 8, !tbaa !111
  invoke void @_ZN11xercesc_2_717RegularExpression7prepareEv(ptr noundef nonnull align 8 dereferenceable(104) %0)
          to label %64 unwind label %68, !prof !124

64:                                               ; preds = %57
  %65 = load ptr, ptr %41, align 8, !tbaa !94
  %66 = getelementptr inbounds ptr, ptr %65, i64 1
  %67 = load ptr, ptr %66, align 8
  tail call void %67(ptr noundef nonnull align 8 dereferenceable(72) %41) #20, !prof !138
  ret void

68:                                               ; preds = %57, %51
  %69 = landingpad { ptr, i32 }
          cleanup
  %70 = icmp eq ptr %41, null
  br i1 %70, label %75, label %71

71:                                               ; preds = %68
  %72 = load ptr, ptr %41, align 8, !tbaa !94
  %73 = getelementptr inbounds ptr, ptr %72, i64 1
  %74 = load ptr, ptr %73, align 8
  tail call void %74(ptr noundef nonnull align 8 dereferenceable(72) %41) #20
  br label %75

75:                                               ; preds = %71, %68, %46, %49, %44
  %76 = phi { ptr, i32 } [ %45, %44 ], [ %47, %46 ], [ %50, %49 ], [ %69, %68 ], [ %69, %71 ]
  resume { ptr, i32 } %76
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !139 {
  %2 = load ptr, ptr %0, align 8, !tbaa !117
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4, !prof !140

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !119
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8, !prof !141

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 8, !tbaa !94
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %2)
          to label %13 unwind label %14, !prof !142

12:                                               ; preds = %4
  tail call void @_ZdaPv(ptr noundef %2) #23
  br label %13

13:                                               ; preds = %8, %1, %12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void

14:                                               ; preds = %8
  %15 = landingpad { ptr, i32 }
          catch ptr null
  %16 = extractvalue { ptr, i32 } %15, 0
  tail call void @__clang_call_terminate(ptr %16) #21
  unreachable
}

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #10

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_79OpFactoryD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #11

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_717RegularExpressionC2EPKcS2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !81 {
  %5 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %6 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  store i8 0, ptr %0, align 8, !tbaa !111
  %7 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 1
  store i8 0, ptr %7, align 1, !tbaa !114
  %8 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 2
  %9 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 6
  %10 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %9, i8 0, i64 48, i1 false)
  tail call void @_ZN11xercesc_2_79OpFactoryC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef %3)
  %11 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 13
  store ptr null, ptr %11, align 8, !tbaa !115
  %12 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 14
  store ptr %3, ptr %12, align 8, !tbaa !116
  %13 = invoke noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKcPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %3)
          to label %14 unwind label %22

14:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #20
  %15 = load ptr, ptr %12, align 8, !tbaa !116
  store ptr %13, ptr %5, align 8, !tbaa !117
  %16 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %5, i64 0, i32 1
  store ptr %15, ptr %16, align 8, !tbaa !119
  %17 = invoke noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKcPNS_13MemoryManagerE(ptr noundef %2, ptr noundef %15)
          to label %18 unwind label %24

18:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #20
  %19 = load ptr, ptr %12, align 8, !tbaa !116
  store ptr %17, ptr %6, align 8, !tbaa !117
  %20 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %6, i64 0, i32 1
  store ptr %19, ptr %20, align 8, !tbaa !119
  invoke void @_ZN11xercesc_2_717RegularExpression10setPatternEPKtS2_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %13, ptr noundef %17)
          to label %21 unwind label %26

21:                                               ; preds = %18
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #20
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #20
  ret void

22:                                               ; preds = %4
  %23 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  br label %30

24:                                               ; preds = %14
  %25 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  br label %28

26:                                               ; preds = %18
  %27 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #20
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi { ptr, i32 } [ %27, %26 ], [ %25, %24 ]
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #20
  br label %30

30:                                               ; preds = %28, %22
  %31 = phi { ptr, i32 } [ %29, %28 ], [ %23, %22 ]
  %32 = extractvalue { ptr, i32 } %31, 1
  %33 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #20
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = extractvalue { ptr, i32 } %31, 0
  %37 = call ptr @__cxa_begin_catch(ptr %36) #20
  invoke void @__cxa_rethrow() #22
          to label %54 unwind label %38

38:                                               ; preds = %35
  %39 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %40 unwind label %51

40:                                               ; preds = %38, %30
  %41 = phi ptr [ null, %38 ], [ @_ZN11xercesc_2_717RegularExpression7cleanUpEv, %30 ]
  %42 = phi ptr [ null, %38 ], [ %0, %30 ]
  %43 = phi { ptr, i32 } [ %39, %38 ], [ %31, %30 ]
  %44 = icmp eq ptr %42, null
  %45 = or i1 %34, %44
  br i1 %45, label %50, label %46

46:                                               ; preds = %40
  invoke void %41(ptr noundef nonnull align 8 dereferenceable(104) %42)
          to label %50 unwind label %47

47:                                               ; preds = %46
  %48 = landingpad { ptr, i32 }
          catch ptr null
  %49 = extractvalue { ptr, i32 } %48, 0
  call void @__clang_call_terminate(ptr %49) #21
  unreachable

50:                                               ; preds = %40, %46
  call void @_ZN11xercesc_2_79OpFactoryD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %10) #20
  resume { ptr, i32 } %43

51:                                               ; preds = %38
  %52 = landingpad { ptr, i32 }
          catch ptr null
  %53 = extractvalue { ptr, i32 } %52, 0
  call void @__clang_call_terminate(ptr %53) #21
  unreachable

54:                                               ; preds = %35
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_717RegularExpressionC2EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !81 {
  store i8 0, ptr %0, align 8, !tbaa !111
  %4 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 1
  store i8 0, ptr %4, align 1, !tbaa !114
  %5 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 2
  %6 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 6
  %7 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %6, i8 0, i64 48, i1 false)
  tail call void @_ZN11xercesc_2_79OpFactoryC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef %2)
  %8 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 13
  store ptr null, ptr %8, align 8, !tbaa !115
  %9 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 14
  store ptr %2, ptr %9, align 8, !tbaa !116
  invoke void @_ZN11xercesc_2_717RegularExpression10setPatternEPKtS2_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef null)
          to label %20 unwind label %10

10:                                               ; preds = %3
  %11 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %12 = extractvalue { ptr, i32 } %11, 1
  %13 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #20
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %10
  %16 = extractvalue { ptr, i32 } %11, 0
  %17 = tail call ptr @__cxa_begin_catch(ptr %16) #20
  invoke void @__cxa_rethrow() #22
          to label %35 unwind label %18

18:                                               ; preds = %15
  %19 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %21 unwind label %32

20:                                               ; preds = %3
  ret void

21:                                               ; preds = %18, %10
  %22 = phi ptr [ null, %18 ], [ @_ZN11xercesc_2_717RegularExpression7cleanUpEv, %10 ]
  %23 = phi ptr [ null, %18 ], [ %0, %10 ]
  %24 = phi { ptr, i32 } [ %19, %18 ], [ %11, %10 ]
  %25 = icmp eq ptr %23, null
  %26 = or i1 %14, %25
  br i1 %26, label %31, label %27

27:                                               ; preds = %21
  invoke void %22(ptr noundef nonnull align 8 dereferenceable(104) %23)
          to label %31 unwind label %28

28:                                               ; preds = %27
  %29 = landingpad { ptr, i32 }
          catch ptr null
  %30 = extractvalue { ptr, i32 } %29, 0
  tail call void @__clang_call_terminate(ptr %30) #21
  unreachable

31:                                               ; preds = %21, %27
  tail call void @_ZN11xercesc_2_79OpFactoryD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #20
  resume { ptr, i32 } %24

32:                                               ; preds = %18
  %33 = landingpad { ptr, i32 }
          catch ptr null
  %34 = extractvalue { ptr, i32 } %33, 0
  tail call void @__clang_call_terminate(ptr %34) #21
  unreachable

35:                                               ; preds = %15
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_717RegularExpressionC2EPKtS2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !123 {
  store i8 0, ptr %0, align 8, !tbaa !111
  %5 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 1
  store i8 0, ptr %5, align 1, !tbaa !114
  %6 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 2
  %7 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 6
  %8 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %7, i8 0, i64 48, i1 false)
  tail call void @_ZN11xercesc_2_79OpFactoryC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef %3)
  %9 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 13
  store ptr null, ptr %9, align 8, !tbaa !115
  %10 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 14
  store ptr %3, ptr %10, align 8, !tbaa !116
  invoke void @_ZN11xercesc_2_717RegularExpression10setPatternEPKtS2_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef %2)
          to label %21 unwind label %11, !prof !124

11:                                               ; preds = %4
  %12 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %13 = extractvalue { ptr, i32 } %12, 1
  %14 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #20
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %11
  %17 = extractvalue { ptr, i32 } %12, 0
  %18 = tail call ptr @__cxa_begin_catch(ptr %17) #20
  invoke void @__cxa_rethrow() #22
          to label %36 unwind label %19

19:                                               ; preds = %16
  %20 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %22 unwind label %33

21:                                               ; preds = %4
  ret void

22:                                               ; preds = %19, %11
  %23 = phi ptr [ null, %19 ], [ @_ZN11xercesc_2_717RegularExpression7cleanUpEv, %11 ]
  %24 = phi ptr [ null, %19 ], [ %0, %11 ]
  %25 = phi { ptr, i32 } [ %20, %19 ], [ %12, %11 ]
  %26 = icmp eq ptr %24, null
  %27 = or i1 %15, %26
  br i1 %27, label %32, label %28

28:                                               ; preds = %22
  invoke void %23(ptr noundef nonnull align 8 dereferenceable(104) %24)
          to label %32 unwind label %29

29:                                               ; preds = %28
  %30 = landingpad { ptr, i32 }
          catch ptr null
  %31 = extractvalue { ptr, i32 } %30, 0
  tail call void @__clang_call_terminate(ptr %31) #21
  unreachable

32:                                               ; preds = %22, %28
  tail call void @_ZN11xercesc_2_79OpFactoryD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #20
  resume { ptr, i32 } %25

33:                                               ; preds = %19
  %34 = landingpad { ptr, i32 }
          catch ptr null
  %35 = extractvalue { ptr, i32 } %34, 0
  tail call void @__clang_call_terminate(ptr %35) #21
  unreachable

36:                                               ; preds = %16
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_717RegularExpressionD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 !prof !123 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 14
  %3 = load ptr, ptr %2, align 8, !tbaa !116
  %4 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !120
  %6 = load ptr, ptr %3, align 8, !tbaa !94
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5)
          to label %9 unwind label %28, !prof !143

9:                                                ; preds = %1
  %10 = load ptr, ptr %2, align 8, !tbaa !116
  %11 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 8
  %12 = load ptr, ptr %11, align 8, !tbaa !121
  %13 = load ptr, ptr %10, align 8, !tbaa !94
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  invoke void %15(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef %12)
          to label %16 unwind label %28, !prof !143

16:                                               ; preds = %9
  %17 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 6
  %18 = load ptr, ptr %17, align 8, !tbaa !122
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20, !prof !124

20:                                               ; preds = %16
  tail call void @_ZN11xercesc_2_79BMPatternD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %18) #20
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %18) #20
  br label %21

21:                                               ; preds = %20, %16
  %22 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 13
  %23 = load ptr, ptr %22, align 8, !tbaa !115
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25, !prof !127

25:                                               ; preds = %21
  tail call void @_ZN11xercesc_2_712TokenFactoryD1Ev(ptr noundef nonnull align 8 dereferenceable(128) %23) #20
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %23) #20
  br label %26

26:                                               ; preds = %25, %21
  %27 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 12
  tail call void @_ZN11xercesc_2_79OpFactoryD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %27) #20
  ret void

28:                                               ; preds = %9, %1
  %29 = landingpad { ptr, i32 }
          catch ptr null
  %30 = extractvalue { ptr, i32 } %29, 0
  tail call void @__clang_call_terminate(ptr %30) #21
  unreachable
}

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN11xercesc_2_712TokenFactoryC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZN11xercesc_2_717RegularExpression12parseOptionsEPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(104) %0, ptr noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !123 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %41, label %4, !prof !127

4:                                                ; preds = %2
  %5 = load i16, ptr %1, align 2, !tbaa !82
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %18, label %7, !prof !127

7:                                                ; preds = %4, %7
  %8 = phi ptr [ %9, %7 ], [ %1, %4 ]
  %9 = getelementptr inbounds i16, ptr %8, i64 1
  %10 = load i16, ptr %9, align 2, !tbaa !82
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %12, label %7, !prof !124, !llvm.loop !129

12:                                               ; preds = %7
  %13 = ptrtoint ptr %9 to i64
  %14 = ptrtoint ptr %1 to i64
  %15 = sub i64 %13, %14
  %16 = lshr exact i64 %15, 1
  %17 = trunc i64 %16 to i32
  br label %18

18:                                               ; preds = %4, %12
  %19 = phi i32 [ %17, %12 ], [ 0, %4 ]
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %41, !prof !144

21:                                               ; preds = %18
  %22 = zext nneg i32 %19 to i64
  br label %23

23:                                               ; preds = %21, %37
  %24 = phi i64 [ 0, %21 ], [ %39, %37 ]
  %25 = phi i32 [ 0, %21 ], [ %38, %37 ]
  %26 = getelementptr inbounds i16, ptr %1, i64 %24
  %27 = load i16, ptr %26, align 2, !tbaa !82
  %28 = tail call noundef i32 @_ZN11xercesc_2_717RegularExpression14getOptionValueEt(i16 noundef zeroext %27), !range !145
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %37, !prof !127

30:                                               ; preds = %23
  %31 = tail call ptr @__cxa_allocate_exception(i64 48) #20
  %32 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 14
  %33 = load ptr, ptr %32, align 8, !tbaa !116
  invoke void @_ZN11xercesc_2_714ParseExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %31, ptr noundef nonnull @.str, i32 noundef 1360, i32 noundef 291, ptr noundef nonnull %1, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %33)
          to label %34 unwind label %35

34:                                               ; preds = %30
  tail call void @__cxa_throw(ptr nonnull %31, ptr nonnull @_ZTIN11xercesc_2_714ParseExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #22
  unreachable

35:                                               ; preds = %30
  %36 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %31) #20
  resume { ptr, i32 } %36

37:                                               ; preds = %23
  %38 = or i32 %28, %25
  %39 = add nuw nsw i64 %24, 1
  %40 = icmp eq i64 %39, %22
  br i1 %40, label %41, label %23, !prof !144, !llvm.loop !146

41:                                               ; preds = %37, %18, %2
  %42 = phi i32 [ 0, %2 ], [ 0, %18 ], [ %38, %37 ]
  ret i32 %42
}

declare void @_ZN11xercesc_2_718ParserForXMLSchemaC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) unnamed_addr #1

declare void @_ZN11xercesc_2_710RegxParserC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_710RegxParser5parseEPKti(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_717RegularExpression7prepareEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !123 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 10
  %4 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 9
  %5 = load ptr, ptr %4, align 8, !tbaa !147
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %11, !prof !124

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8, !tbaa !134
  %9 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 4
  store i32 0, ptr %9, align 4, !tbaa !148
  %10 = tail call noundef ptr @_ZN11xercesc_2_717RegularExpression7compileEPKNS_5TokenEPNS_2OpEb(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %8, ptr noundef null, i1 noundef zeroext false)
  store ptr %10, ptr %4, align 8, !tbaa !147
  br label %11

11:                                               ; preds = %1, %7
  %12 = load ptr, ptr %3, align 8, !tbaa !134
  %13 = tail call noundef i32 @_ZNK11xercesc_2_75Token12getMinLengthEv(ptr noundef nonnull align 8 dereferenceable(24) %12)
  %14 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 3
  store i32 %13, ptr %14, align 8, !tbaa !149
  %15 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 11
  store ptr null, ptr %15, align 8, !tbaa !150
  %16 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 5
  %17 = load i32, ptr %16, align 8, !tbaa !126
  %18 = and i32 %17, 640
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %47, !prof !127

20:                                               ; preds = %11
  %21 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 13
  %22 = load ptr, ptr %21, align 8, !tbaa !115
  %23 = tail call noundef ptr @_ZN11xercesc_2_712TokenFactory11createRangeEb(ptr noundef nonnull align 8 dereferenceable(128) %22, i1 noundef zeroext false)
  %24 = load ptr, ptr %3, align 8, !tbaa !134
  %25 = load i32, ptr %16, align 8, !tbaa !126
  %26 = load ptr, ptr %21, align 8, !tbaa !115
  %27 = tail call noundef i32 @_ZN11xercesc_2_75Token21analyzeFirstCharacterEPNS_10RangeTokenEiPNS_12TokenFactoryE(ptr noundef nonnull align 8 dereferenceable(24) %24, ptr noundef %23, i32 noundef %25, ptr noundef %26)
  %28 = load i16, ptr @_ZN11xercesc_2_75Token11FC_TERMINALE, align 2, !tbaa !82
  %29 = zext i16 %28 to i32
  %30 = icmp eq i32 %27, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %20
  %32 = load ptr, ptr %23, align 8, !tbaa !94
  %33 = getelementptr inbounds ptr, ptr %32, i64 15
  %34 = load ptr, ptr %33, align 8
  tail call void %34(ptr noundef nonnull align 8 dereferenceable(72) %23)
  store ptr %23, ptr %15, align 8, !tbaa !150
  br label %35

35:                                               ; preds = %31, %20
  %36 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %23, i64 0, i32 6
  %37 = load ptr, ptr %36, align 8, !tbaa !151
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  tail call void @_ZN11xercesc_2_710RangeToken11doCreateMapEv(ptr noundef nonnull align 8 dereferenceable(72) %23)
  br label %40

40:                                               ; preds = %35, %39
  %41 = load i32, ptr %16, align 8, !tbaa !126
  %42 = and i32 %41, 2
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %40
  %45 = load ptr, ptr %21, align 8, !tbaa !115
  %46 = tail call noundef ptr @_ZN11xercesc_2_710RangeToken23getCaseInsensitiveTokenEPNS_12TokenFactoryE(ptr noundef nonnull align 8 dereferenceable(72) %23, ptr noundef %45)
  br label %47

47:                                               ; preds = %40, %44, %11
  %48 = load ptr, ptr %4, align 8, !tbaa !147
  %49 = icmp eq ptr %48, null
  br i1 %49, label %145, label %50, !prof !127

50:                                               ; preds = %47
  %51 = getelementptr inbounds %"class.xercesc_2_7::Op", ptr %48, i64 0, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !154
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %145, !prof !156

54:                                               ; preds = %50
  %55 = getelementptr inbounds %"class.xercesc_2_7::Op", ptr %48, i64 0, i32 2
  %56 = load i16, ptr %55, align 8, !tbaa !157
  switch i16 %56, label %145 [
    i16 6, label %57
    i16 1, label %57
  ], !prof !158

57:                                               ; preds = %54, %54
  %58 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 1
  store i8 1, ptr %58, align 1, !tbaa !114
  %59 = icmp eq i16 %56, 6
  br i1 %59, label %60, label %97

60:                                               ; preds = %57
  %61 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 14
  %62 = load ptr, ptr %61, align 8, !tbaa !116
  %63 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 8
  %64 = load ptr, ptr %63, align 8, !tbaa !121
  %65 = load ptr, ptr %62, align 8, !tbaa !94
  %66 = getelementptr inbounds ptr, ptr %65, i64 3
  %67 = load ptr, ptr %66, align 8
  tail call void %67(ptr noundef nonnull align 8 dereferenceable(8) %62, ptr noundef %64)
  %68 = load ptr, ptr %4, align 8, !tbaa !147
  %69 = load ptr, ptr %68, align 8, !tbaa !94
  %70 = getelementptr inbounds ptr, ptr %69, i64 12
  %71 = load ptr, ptr %70, align 8
  %72 = tail call noundef ptr %71(ptr noundef nonnull align 8 dereferenceable(32) %68)
  %73 = load ptr, ptr %61, align 8, !tbaa !116
  %74 = icmp eq ptr %72, null
  br i1 %74, label %95, label %75

75:                                               ; preds = %60
  %76 = load i16, ptr %72, align 2, !tbaa !82
  %77 = icmp eq i16 %76, 0
  br i1 %77, label %89, label %78

78:                                               ; preds = %75, %78
  %79 = phi ptr [ %80, %78 ], [ %72, %75 ]
  %80 = getelementptr inbounds i16, ptr %79, i64 1
  %81 = load i16, ptr %80, align 2, !tbaa !82
  %82 = icmp eq i16 %81, 0
  br i1 %82, label %83, label %78, !llvm.loop !129

83:                                               ; preds = %78
  %84 = ptrtoint ptr %80 to i64
  %85 = ptrtoint ptr %72 to i64
  %86 = sub i64 %84, %85
  %87 = add i64 %86, 2
  %88 = and i64 %87, 8589934590
  br label %89

89:                                               ; preds = %83, %75
  %90 = phi i64 [ %88, %83 ], [ 2, %75 ]
  %91 = load ptr, ptr %73, align 8, !tbaa !94
  %92 = getelementptr inbounds ptr, ptr %91, i64 2
  %93 = load ptr, ptr %92, align 8
  %94 = tail call noundef ptr %93(ptr noundef nonnull align 8 dereferenceable(8) %73, i64 noundef %90)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %94, ptr nonnull align 2 %72, i64 %90, i1 false)
  br label %95

95:                                               ; preds = %60, %89
  %96 = phi ptr [ %94, %89 ], [ null, %60 ]
  store ptr %96, ptr %63, align 8, !tbaa !121
  br label %131

97:                                               ; preds = %57
  %98 = load ptr, ptr %48, align 8, !tbaa !94
  %99 = getelementptr inbounds ptr, ptr %98, i64 2
  %100 = load ptr, ptr %99, align 8
  %101 = tail call noundef i32 %100(ptr noundef nonnull align 8 dereferenceable(32) %48)
  %102 = icmp sgt i32 %101, 65535
  %103 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 14
  %104 = load ptr, ptr %103, align 8, !tbaa !116
  br i1 %102, label %105, label %113

105:                                              ; preds = %97
  %106 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 8
  %107 = load ptr, ptr %106, align 8, !tbaa !121
  %108 = load ptr, ptr %104, align 8, !tbaa !94
  %109 = getelementptr inbounds ptr, ptr %108, i64 3
  %110 = load ptr, ptr %109, align 8
  tail call void %110(ptr noundef nonnull align 8 dereferenceable(8) %104, ptr noundef %107)
  %111 = load ptr, ptr %103, align 8, !tbaa !116
  %112 = tail call noundef ptr @_ZN11xercesc_2_78RegxUtil21decomposeToSurrogatesEiPNS_13MemoryManagerE(i32 noundef %101, ptr noundef %111)
  store ptr %112, ptr %106, align 8, !tbaa !121
  br label %131

113:                                              ; preds = %97
  %114 = load ptr, ptr %104, align 8, !tbaa !94
  %115 = getelementptr inbounds ptr, ptr %114, i64 2
  %116 = load ptr, ptr %115, align 8
  %117 = tail call noundef ptr %116(ptr noundef nonnull align 8 dereferenceable(8) %104, i64 noundef 4)
  %118 = load ptr, ptr %4, align 8, !tbaa !147
  %119 = load ptr, ptr %118, align 8, !tbaa !94
  %120 = getelementptr inbounds ptr, ptr %119, i64 2
  %121 = load ptr, ptr %120, align 8
  %122 = tail call noundef i32 %121(ptr noundef nonnull align 8 dereferenceable(32) %118)
  %123 = trunc i32 %122 to i16
  store i16 %123, ptr %117, align 2, !tbaa !82
  %124 = getelementptr inbounds i16, ptr %117, i64 1
  store i16 0, ptr %124, align 2, !tbaa !82
  %125 = load ptr, ptr %103, align 8, !tbaa !116
  %126 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 8
  %127 = load ptr, ptr %126, align 8, !tbaa !121
  %128 = load ptr, ptr %125, align 8, !tbaa !94
  %129 = getelementptr inbounds ptr, ptr %128, i64 3
  %130 = load ptr, ptr %129, align 8
  tail call void %130(ptr noundef nonnull align 8 dereferenceable(8) %125, ptr noundef %127)
  store ptr %117, ptr %126, align 8, !tbaa !121
  br label %131

131:                                              ; preds = %105, %113, %95
  %132 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 14
  %133 = load ptr, ptr %132, align 8, !tbaa !116
  %134 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %133)
  %135 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 8
  %136 = load ptr, ptr %135, align 8, !tbaa !121
  %137 = load i32, ptr %16, align 8, !tbaa !126
  %138 = and i32 %137, 2
  %139 = icmp ne i32 %138, 0
  %140 = load ptr, ptr %132, align 8, !tbaa !116
  invoke void @_ZN11xercesc_2_79BMPatternC1EPKtibPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %134, ptr noundef %136, i32 noundef 256, i1 noundef zeroext %139, ptr noundef %140)
          to label %141 unwind label %143

141:                                              ; preds = %131
  %142 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 6
  store ptr %134, ptr %142, align 8, !tbaa !122
  br label %225

143:                                              ; preds = %131
  %144 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %134, ptr noundef %133) #20
  br label %226

145:                                              ; preds = %54, %50, %47
  %146 = load i32, ptr %16, align 8, !tbaa !126
  %147 = and i32 %146, 768
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %225, !prof !127

149:                                              ; preds = %145
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #20
  store i32 0, ptr %2, align 4, !tbaa !106
  %150 = load ptr, ptr %3, align 8, !tbaa !134
  %151 = call noundef ptr @_ZN11xercesc_2_75Token15findFixedStringEiRi(ptr noundef nonnull align 8 dereferenceable(24) %150, i32 noundef %146, ptr noundef nonnull align 4 dereferenceable(4) %2)
  %152 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 14
  %153 = load ptr, ptr %152, align 8, !tbaa !116
  %154 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 8
  %155 = load ptr, ptr %154, align 8, !tbaa !121
  %156 = load ptr, ptr %153, align 8, !tbaa !94
  %157 = getelementptr inbounds ptr, ptr %156, i64 3
  %158 = load ptr, ptr %157, align 8
  call void %158(ptr noundef nonnull align 8 dereferenceable(8) %153, ptr noundef %155)
  %159 = icmp eq ptr %151, null
  br i1 %159, label %187, label %160

160:                                              ; preds = %149
  %161 = load ptr, ptr %151, align 8, !tbaa !94
  %162 = getelementptr inbounds ptr, ptr %161, i64 8
  %163 = load ptr, ptr %162, align 8
  %164 = call noundef ptr %163(ptr noundef nonnull align 8 dereferenceable(24) %151)
  %165 = load ptr, ptr %152, align 8, !tbaa !116
  %166 = icmp eq ptr %164, null
  br i1 %166, label %187, label %167

167:                                              ; preds = %160
  %168 = load i16, ptr %164, align 2, !tbaa !82
  %169 = icmp eq i16 %168, 0
  br i1 %169, label %181, label %170

170:                                              ; preds = %167, %170
  %171 = phi ptr [ %172, %170 ], [ %164, %167 ]
  %172 = getelementptr inbounds i16, ptr %171, i64 1
  %173 = load i16, ptr %172, align 2, !tbaa !82
  %174 = icmp eq i16 %173, 0
  br i1 %174, label %175, label %170, !llvm.loop !129

175:                                              ; preds = %170
  %176 = ptrtoint ptr %172 to i64
  %177 = ptrtoint ptr %164 to i64
  %178 = sub i64 %176, %177
  %179 = add i64 %178, 2
  %180 = and i64 %179, 8589934590
  br label %181

181:                                              ; preds = %175, %167
  %182 = phi i64 [ %180, %175 ], [ 2, %167 ]
  %183 = load ptr, ptr %165, align 8, !tbaa !94
  %184 = getelementptr inbounds ptr, ptr %183, i64 2
  %185 = load ptr, ptr %184, align 8
  %186 = call noundef ptr %185(ptr noundef nonnull align 8 dereferenceable(8) %165, i64 noundef %182)
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %186, ptr nonnull align 2 %164, i64 %182, i1 false)
  br label %187

187:                                              ; preds = %181, %160, %149
  %188 = phi ptr [ null, %149 ], [ %186, %181 ], [ null, %160 ]
  store ptr %188, ptr %154, align 8, !tbaa !121
  %189 = icmp eq ptr %188, null
  br i1 %189, label %209, label %190

190:                                              ; preds = %187
  %191 = load i16, ptr %188, align 2, !tbaa !82
  %192 = icmp eq i16 %191, 0
  br i1 %192, label %204, label %193

193:                                              ; preds = %190, %193
  %194 = phi ptr [ %195, %193 ], [ %188, %190 ]
  %195 = getelementptr inbounds i16, ptr %194, i64 1
  %196 = load i16, ptr %195, align 2, !tbaa !82
  %197 = icmp eq i16 %196, 0
  br i1 %197, label %198, label %193, !llvm.loop !129

198:                                              ; preds = %193
  %199 = ptrtoint ptr %195 to i64
  %200 = ptrtoint ptr %188 to i64
  %201 = sub i64 %199, %200
  %202 = and i64 %201, 8589934588
  %203 = icmp eq i64 %202, 0
  br i1 %203, label %204, label %209

204:                                              ; preds = %190, %198
  %205 = load ptr, ptr %152, align 8, !tbaa !116
  %206 = load ptr, ptr %205, align 8, !tbaa !94
  %207 = getelementptr inbounds ptr, ptr %206, i64 3
  %208 = load ptr, ptr %207, align 8
  call void %208(ptr noundef nonnull align 8 dereferenceable(8) %205, ptr noundef nonnull %188)
  store ptr null, ptr %154, align 8, !tbaa !121
  br label %209

209:                                              ; preds = %204, %198, %187
  %210 = load ptr, ptr %154, align 8, !tbaa !121
  %211 = icmp eq ptr %210, null
  br i1 %211, label %224, label %212

212:                                              ; preds = %209
  %213 = load ptr, ptr %152, align 8, !tbaa !116
  %214 = call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %213)
  %215 = load ptr, ptr %154, align 8, !tbaa !121
  %216 = load i32, ptr %2, align 4, !tbaa !106
  %217 = and i32 %216, 2
  %218 = icmp ne i32 %217, 0
  %219 = load ptr, ptr %152, align 8, !tbaa !116
  invoke void @_ZN11xercesc_2_79BMPatternC1EPKtibPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %214, ptr noundef %215, i32 noundef 256, i1 noundef zeroext %218, ptr noundef %219)
          to label %220 unwind label %222

220:                                              ; preds = %212
  %221 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 6
  store ptr %214, ptr %221, align 8, !tbaa !122
  br label %224

222:                                              ; preds = %212
  %223 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %214, ptr noundef %213) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #20
  br label %226

224:                                              ; preds = %220, %209
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #20
  br label %225

225:                                              ; preds = %145, %224, %141
  ret void

226:                                              ; preds = %222, %143
  %227 = phi { ptr, i32 } [ %144, %143 ], [ %223, %222 ]
  resume { ptr, i32 } %227
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_717RegularExpression7matchesEPKcPNS_13MemoryManagerE(ptr nocapture noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !81 {
  %4 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %5 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKcPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %2)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #20
  store ptr %5, ptr %4, align 8, !tbaa !117
  %6 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %4, i64 0, i32 1
  store ptr %2, ptr %6, align 8, !tbaa !119
  %7 = icmp eq ptr %5, null
  br i1 %7, label %22, label %8

8:                                                ; preds = %3
  %9 = load i16, ptr %5, align 2, !tbaa !82
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %22, label %11

11:                                               ; preds = %8, %11
  %12 = phi ptr [ %13, %11 ], [ %5, %8 ]
  %13 = getelementptr inbounds i16, ptr %12, i64 1
  %14 = load i16, ptr %13, align 2, !tbaa !82
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %16, label %11, !llvm.loop !129

16:                                               ; preds = %11
  %17 = ptrtoint ptr %13 to i64
  %18 = ptrtoint ptr %5 to i64
  %19 = sub i64 %17, %18
  %20 = lshr exact i64 %19, 1
  %21 = trunc i64 %20 to i32
  br label %22

22:                                               ; preds = %3, %8, %16
  %23 = phi i32 [ %21, %16 ], [ 0, %8 ], [ 0, %3 ]
  %24 = invoke noundef zeroext i1 @_ZN11xercesc_2_717RegularExpression7matchesEPKtiiPNS_5MatchEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %5, i32 noundef 0, i32 noundef %23, ptr noundef null, ptr noundef %2)
          to label %25 unwind label %26

25:                                               ; preds = %22
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #20
  ret i1 %24

26:                                               ; preds = %22
  %27 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #20
  resume { ptr, i32 } %27
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_717RegularExpression7matchesEPKtiiPNS_5MatchEPNS_13MemoryManagerE(ptr nocapture noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !159 {
  %7 = alloca %"class.xercesc_2_7::RegularExpression::Context", align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #20
  store i8 0, ptr %7, align 8, !tbaa !86
  %8 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %7, i64 0, i32 1
  %9 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %7, i64 0, i32 2
  %10 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %7, i64 0, i32 3
  %11 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %7, i64 0, i32 4
  %12 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %7, i64 0, i32 5
  %13 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %7, i64 0, i32 6
  %14 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %7, i64 0, i32 7
  %15 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %7, i64 0, i32 8
  %16 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %7, i64 0, i32 9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %8, i8 0, i64 44, i1 false)
  store ptr %5, ptr %16, align 8, !tbaa !91
  %17 = icmp eq ptr %1, null
  br i1 %17, label %32, label %18, !prof !160

18:                                               ; preds = %6
  %19 = load i16, ptr %1, align 2, !tbaa !82
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %32, label %21, !prof !160

21:                                               ; preds = %18, %21
  %22 = phi ptr [ %23, %21 ], [ %1, %18 ]
  %23 = getelementptr inbounds i16, ptr %22, i64 1
  %24 = load i16, ptr %23, align 2, !tbaa !82
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %26, label %21, !prof !161, !llvm.loop !129

26:                                               ; preds = %21
  %27 = ptrtoint ptr %23 to i64
  %28 = ptrtoint ptr %1 to i64
  %29 = sub i64 %27, %28
  %30 = lshr exact i64 %29, 1
  %31 = trunc i64 %30 to i32
  br label %32

32:                                               ; preds = %6, %18, %26
  %33 = phi i32 [ %31, %26 ], [ 0, %18 ], [ 0, %6 ]
  %34 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 4
  %35 = load i32, ptr %34, align 4, !tbaa !148
  store ptr %1, ptr %15, align 8, !tbaa !99
  store i32 %33, ptr %12, align 4, !tbaa !100
  store i32 %2, ptr %8, align 4, !tbaa !101
  store i32 %3, ptr %9, align 8, !tbaa !102
  %36 = sub nsw i32 %3, %2
  store i32 %36, ptr %10, align 4, !tbaa !103
  store ptr null, ptr %14, align 8, !tbaa !98
  %37 = icmp eq i32 %35, 0
  br i1 %37, label %46, label %38, !prof !93

38:                                               ; preds = %32
  %39 = sext i32 %35 to i64
  %40 = shl nsw i64 %39, 2
  %41 = load ptr, ptr %5, align 8, !tbaa !94
  %42 = getelementptr inbounds ptr, ptr %41, i64 2
  %43 = load ptr, ptr %42, align 8
  %44 = invoke noundef ptr %43(ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef %40)
          to label %45 unwind label %57

45:                                               ; preds = %38
  store ptr %44, ptr %13, align 8, !tbaa !92
  br label %46

46:                                               ; preds = %45, %32
  store i32 %35, ptr %11, align 8, !tbaa !104
  %47 = icmp sgt i32 %35, 0
  br i1 %47, label %48, label %52, !prof !105

48:                                               ; preds = %46
  %49 = load ptr, ptr %13, align 8, !tbaa !92
  %50 = zext nneg i32 %35 to i64
  %51 = shl nuw nsw i64 %50, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %49, i8 -1, i64 %51, i1 false), !tbaa !106
  br label %52

52:                                               ; preds = %48, %46
  %53 = icmp eq ptr %4, null
  br i1 %53, label %61, label %54, !prof !93

54:                                               ; preds = %52
  %55 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 2
  %56 = load i32, ptr %55, align 4, !tbaa !136
  invoke void @_ZN11xercesc_2_75Match11setNoGroupsEi(ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef %56)
          to label %75 unwind label %59

57:                                               ; preds = %38
  %58 = landingpad { ptr, i32 }
          cleanup
  br label %296

59:                                               ; preds = %70, %64, %54
  %60 = landingpad { ptr, i32 }
          cleanup
  br label %296

61:                                               ; preds = %52
  %62 = load i8, ptr %0, align 8, !tbaa !111, !range !96, !noundef !97
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %75, label %64, !prof !93

64:                                               ; preds = %61
  %65 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 14
  %66 = load ptr, ptr %65, align 8, !tbaa !116
  %67 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %66)
          to label %68 unwind label %59

68:                                               ; preds = %64
  %69 = load ptr, ptr %65, align 8, !tbaa !116
  invoke void @_ZN11xercesc_2_75MatchC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %67, ptr noundef %69)
          to label %70 unwind label %73

70:                                               ; preds = %68
  %71 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 2
  %72 = load i32, ptr %71, align 4, !tbaa !136
  invoke void @_ZN11xercesc_2_75Match11setNoGroupsEi(ptr noundef nonnull align 8 dereferenceable(40) %67, i32 noundef %72)
          to label %75 unwind label %59

73:                                               ; preds = %68
  %74 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %67, ptr noundef %66) #20
  br label %296

75:                                               ; preds = %54, %61, %70
  %76 = phi ptr [ %4, %54 ], [ null, %61 ], [ %67, %70 ]
  %77 = phi i1 [ true, %54 ], [ true, %61 ], [ false, %70 ]
  %78 = phi i8 [ 0, %54 ], [ 0, %61 ], [ 1, %70 ]
  store ptr %76, ptr %14, align 8, !tbaa !98
  store i8 %78, ptr %7, align 8, !tbaa !86
  %79 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 5
  %80 = load i32, ptr %79, align 8, !tbaa !126
  %81 = and i32 %80, 512
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %95, label %83, !prof !160

83:                                               ; preds = %75
  %84 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 9
  %85 = load ptr, ptr %84, align 8, !tbaa !147
  %86 = invoke noundef i32 @_ZN11xercesc_2_717RegularExpression5matchEPNS0_7ContextEPKNS_2OpEis(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %7, ptr noundef %85, i32 noundef %2, i16 noundef signext 1)
          to label %87 unwind label %93, !prof !93

87:                                               ; preds = %83
  %88 = icmp eq i32 %86, %3
  br i1 %88, label %89, label %277, !prof !93

89:                                               ; preds = %87
  %90 = icmp eq ptr %76, null
  br i1 %90, label %277, label %91, !prof !93

91:                                               ; preds = %89
  invoke void @_ZN11xercesc_2_75Match11setStartPosEii(ptr noundef nonnull align 8 dereferenceable(40) %76, i32 noundef 0, i32 noundef %2)
          to label %92 unwind label %93

92:                                               ; preds = %91
  invoke void @_ZN11xercesc_2_75Match9setEndPosEii(ptr noundef nonnull align 8 dereferenceable(40) %76, i32 noundef 0, i32 noundef %86)
          to label %277 unwind label %93

93:                                               ; preds = %92, %91, %83
  %94 = landingpad { ptr, i32 }
          cleanup
  br label %296

95:                                               ; preds = %75
  %96 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 1
  %97 = load i8, ptr %96, align 1, !tbaa !114, !range !96, !noundef !97
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %112, label %99

99:                                               ; preds = %95
  %100 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 6
  %101 = load ptr, ptr %100, align 8, !tbaa !122
  %102 = invoke noundef i32 @_ZN11xercesc_2_79BMPattern7matchesEPKtii(ptr noundef nonnull align 8 dereferenceable(40) %101, ptr noundef %1, i32 noundef %2, i32 noundef %3)
          to label %103 unwind label %110

103:                                              ; preds = %99
  %104 = icmp sgt i32 %102, -1
  br i1 %104, label %105, label %277

105:                                              ; preds = %103
  %106 = icmp eq ptr %76, null
  br i1 %106, label %277, label %107

107:                                              ; preds = %105
  invoke void @_ZN11xercesc_2_75Match11setStartPosEii(ptr noundef nonnull align 8 dereferenceable(40) %76, i32 noundef 0, i32 noundef %102)
          to label %108 unwind label %110

108:                                              ; preds = %107
  %109 = add nsw i32 %102, %33
  invoke void @_ZN11xercesc_2_75Match9setEndPosEii(ptr noundef nonnull align 8 dereferenceable(40) %76, i32 noundef 0, i32 noundef %109)
          to label %277 unwind label %110

110:                                              ; preds = %108, %107, %99
  %111 = landingpad { ptr, i32 }
          cleanup
  br label %296

112:                                              ; preds = %95
  %113 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 8
  %114 = load ptr, ptr %113, align 8, !tbaa !121
  %115 = icmp eq ptr %114, null
  br i1 %115, label %124, label %116

116:                                              ; preds = %112
  %117 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 6
  %118 = load ptr, ptr %117, align 8, !tbaa !122
  %119 = invoke noundef i32 @_ZN11xercesc_2_79BMPattern7matchesEPKtii(ptr noundef nonnull align 8 dereferenceable(40) %118, ptr noundef %1, i32 noundef %2, i32 noundef %3)
          to label %120 unwind label %122

120:                                              ; preds = %116
  %121 = icmp sgt i32 %119, -1
  br i1 %121, label %124, label %277

122:                                              ; preds = %116
  %123 = landingpad { ptr, i32 }
          cleanup
  br label %296

124:                                              ; preds = %120, %112
  %125 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 3
  %126 = load i32, ptr %125, align 8, !tbaa !149
  %127 = sub nsw i32 %3, %126
  %128 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 9
  %129 = load ptr, ptr %128, align 8, !tbaa !147
  %130 = icmp eq ptr %129, null
  br i1 %130, label %191, label %131

131:                                              ; preds = %124
  %132 = getelementptr inbounds %"class.xercesc_2_7::Op", ptr %129, i64 0, i32 2
  %133 = load i16, ptr %132, align 8, !tbaa !157
  %134 = icmp eq i16 %133, 7
  br i1 %134, label %135, label %191

135:                                              ; preds = %131
  %136 = load ptr, ptr %129, align 8, !tbaa !94
  %137 = getelementptr inbounds ptr, ptr %136, i64 10
  %138 = load ptr, ptr %137, align 8
  %139 = invoke noundef ptr %138(ptr noundef nonnull align 8 dereferenceable(32) %129)
          to label %140 unwind label %159

140:                                              ; preds = %135
  %141 = getelementptr inbounds %"class.xercesc_2_7::Op", ptr %139, i64 0, i32 2
  %142 = load i16, ptr %141, align 8, !tbaa !157
  %143 = icmp eq i16 %142, 0
  br i1 %143, label %144, label %191

144:                                              ; preds = %140
  %145 = load i32, ptr %79, align 8, !tbaa !126
  %146 = and i32 %145, 4
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %154

148:                                              ; preds = %144
  %149 = icmp slt i32 %127, %2
  br i1 %149, label %269, label %150

150:                                              ; preds = %148
  %151 = sext i32 %2 to i64
  %152 = add i32 %3, 1
  %153 = sub i32 %152, %126
  br label %161

154:                                              ; preds = %144
  %155 = load ptr, ptr %128, align 8, !tbaa !147
  %156 = invoke noundef i32 @_ZN11xercesc_2_717RegularExpression5matchEPNS0_7ContextEPKNS_2OpEis(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %7, ptr noundef %155, i32 noundef %2, i16 noundef signext 1)
          to label %269 unwind label %159

157:                                              ; preds = %258
  %158 = landingpad { ptr, i32 }
          cleanup
  br label %296

159:                                              ; preds = %135, %154, %275, %276
  %160 = landingpad { ptr, i32 }
          cleanup
  br label %296

161:                                              ; preds = %150, %187
  %162 = phi i64 [ %151, %150 ], [ %188, %187 ]
  %163 = phi i8 [ 1, %150 ], [ %185, %187 ]
  %164 = phi i32 [ -1, %150 ], [ %184, %187 ]
  %165 = getelementptr inbounds i16, ptr %1, i64 %162
  %166 = load i16, ptr %165, align 2, !tbaa !82
  switch i16 %166, label %167 [
    i16 8232, label %182
    i16 13, label %182
    i16 10, label %182
    i16 8233, label %182
  ]

167:                                              ; preds = %161
  %168 = and i8 %163, 1
  %169 = icmp eq i8 %168, 0
  br i1 %169, label %182, label %172

170:                                              ; preds = %172
  %171 = landingpad { ptr, i32 }
          cleanup
  br label %296

172:                                              ; preds = %167
  %173 = load ptr, ptr %128, align 8, !tbaa !147
  %174 = trunc i64 %162 to i32
  %175 = invoke noundef i32 @_ZN11xercesc_2_717RegularExpression5matchEPNS0_7ContextEPKNS_2OpEis(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %7, ptr noundef %173, i32 noundef %174, i16 noundef signext 1)
          to label %176 unwind label %170

176:                                              ; preds = %172
  %177 = icmp sgt i32 %175, -1
  %178 = lshr i32 %175, 30
  %179 = and i32 %178, 2
  %180 = xor i32 %179, 2
  %181 = select i1 %177, i8 %163, i8 0
  br label %182

182:                                              ; preds = %161, %161, %161, %161, %176, %167
  %183 = phi i32 [ 0, %167 ], [ %180, %176 ], [ 0, %161 ], [ 0, %161 ], [ 0, %161 ], [ 0, %161 ]
  %184 = phi i32 [ %164, %167 ], [ %175, %176 ], [ %164, %161 ], [ %164, %161 ], [ %164, %161 ], [ %164, %161 ]
  %185 = phi i8 [ 0, %167 ], [ %181, %176 ], [ 1, %161 ], [ 1, %161 ], [ 1, %161 ], [ 1, %161 ]
  %186 = icmp eq i32 %183, 0
  br i1 %186, label %187, label %267

187:                                              ; preds = %182
  %188 = add nsw i64 %162, 1
  %189 = trunc i64 %188 to i32
  %190 = icmp eq i32 %153, %189
  br i1 %190, label %269, label %161, !llvm.loop !162

191:                                              ; preds = %140, %131, %124
  %192 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 11
  %193 = load ptr, ptr %192, align 8, !tbaa !150
  %194 = icmp eq ptr %193, null
  br i1 %194, label %195, label %200

195:                                              ; preds = %191
  %196 = icmp slt i32 %127, %2
  br i1 %196, label %269, label %197

197:                                              ; preds = %195
  %198 = add i32 %3, 1
  %199 = sub i32 %198, %126
  br label %258

200:                                              ; preds = %191
  %201 = load i32, ptr %79, align 8, !tbaa !126
  %202 = and i32 %201, 2
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %210, label %204

204:                                              ; preds = %200
  %205 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 13
  %206 = load ptr, ptr %205, align 8, !tbaa !115
  %207 = invoke noundef ptr @_ZN11xercesc_2_710RangeToken23getCaseInsensitiveTokenEPNS_12TokenFactoryE(ptr noundef nonnull align 8 dereferenceable(72) %193, ptr noundef %206)
          to label %210 unwind label %208

208:                                              ; preds = %204
  %209 = landingpad { ptr, i32 }
          cleanup
  br label %296

210:                                              ; preds = %204, %200
  %211 = phi ptr [ %193, %200 ], [ %207, %204 ]
  %212 = icmp slt i32 %127, %2
  br i1 %212, label %269, label %213

213:                                              ; preds = %210, %255
  %214 = phi i32 [ %253, %255 ], [ -1, %210 ]
  %215 = phi i32 [ %256, %255 ], [ %2, %210 ]
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i16, ptr %1, i64 %216
  %218 = load i16, ptr %217, align 2, !tbaa !82
  %219 = zext i16 %218 to i32
  %220 = and i16 %218, -1024
  switch i16 %220, label %236 [
    i16 -10240, label %221
    i16 -9216, label %235
  ]

221:                                              ; preds = %213
  %222 = add nsw i32 %215, 1
  %223 = icmp slt i32 %222, %3
  br i1 %223, label %224, label %236

224:                                              ; preds = %221
  %225 = sext i32 %222 to i64
  %226 = getelementptr inbounds i16, ptr %1, i64 %225
  %227 = load i16, ptr %226, align 2, !tbaa !82
  %228 = and i16 %227, -1024
  %229 = icmp eq i16 %228, -9216
  br i1 %229, label %230, label %236

230:                                              ; preds = %224
  %231 = shl nuw nsw i32 %219, 10
  %232 = zext i16 %227 to i32
  %233 = add nsw i32 %231, -56613888
  %234 = add nsw i32 %233, %232
  br label %236

235:                                              ; preds = %213
  br label %236

236:                                              ; preds = %235, %230, %224, %221, %213
  %237 = phi i32 [ %215, %213 ], [ %215, %235 ], [ %222, %230 ], [ %215, %224 ], [ %215, %221 ]
  %238 = phi i32 [ %219, %213 ], [ %219, %235 ], [ %234, %230 ], [ %219, %224 ], [ %219, %221 ]
  %239 = phi i1 [ true, %213 ], [ false, %235 ], [ true, %230 ], [ false, %224 ], [ false, %221 ]
  br i1 %239, label %242, label %251

240:                                              ; preds = %245, %242
  %241 = landingpad { ptr, i32 }
          cleanup
  br label %296

242:                                              ; preds = %236
  %243 = invoke noundef zeroext i1 @_ZN11xercesc_2_710RangeToken5matchEi(ptr noundef nonnull align 8 dereferenceable(72) %211, i32 noundef %238)
          to label %244 unwind label %240

244:                                              ; preds = %242
  br i1 %243, label %245, label %251

245:                                              ; preds = %244
  %246 = load ptr, ptr %128, align 8, !tbaa !147
  %247 = invoke noundef i32 @_ZN11xercesc_2_717RegularExpression5matchEPNS0_7ContextEPKNS_2OpEis(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %7, ptr noundef %246, i32 noundef %237, i16 noundef signext 1)
          to label %248 unwind label %240

248:                                              ; preds = %245
  %249 = icmp slt i32 %247, 0
  %250 = select i1 %249, i32 0, i32 5
  br label %251

251:                                              ; preds = %248, %244, %236
  %252 = phi i32 [ 5, %236 ], [ 7, %244 ], [ %250, %248 ]
  %253 = phi i32 [ %214, %236 ], [ %214, %244 ], [ %247, %248 ]
  %254 = icmp eq i32 %252, 5
  br i1 %254, label %269, label %255

255:                                              ; preds = %251
  %256 = add nsw i32 %237, 1
  %257 = icmp slt i32 %237, %127
  br i1 %257, label %213, label %269, !llvm.loop !163

258:                                              ; preds = %197, %264
  %259 = phi i32 [ %265, %264 ], [ %2, %197 ]
  %260 = load ptr, ptr %128, align 8, !tbaa !147
  %261 = invoke noundef i32 @_ZN11xercesc_2_717RegularExpression5matchEPNS0_7ContextEPKNS_2OpEis(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %7, ptr noundef %260, i32 noundef %259, i16 noundef signext 1)
          to label %262 unwind label %157

262:                                              ; preds = %258
  %263 = icmp sgt i32 %261, -1
  br i1 %263, label %269, label %264

264:                                              ; preds = %262
  %265 = add i32 %259, 1
  %266 = icmp eq i32 %265, %199
  br i1 %266, label %269, label %258, !llvm.loop !164

267:                                              ; preds = %182
  %268 = trunc i64 %162 to i32
  br label %269

269:                                              ; preds = %267, %187, %251, %255, %264, %262, %148, %210, %195, %154
  %270 = phi i32 [ %2, %154 ], [ %2, %195 ], [ %2, %210 ], [ %2, %148 ], [ %259, %262 ], [ %265, %264 ], [ %256, %255 ], [ %237, %251 ], [ %268, %267 ], [ %153, %187 ]
  %271 = phi i32 [ %156, %154 ], [ -1, %195 ], [ -1, %210 ], [ -1, %148 ], [ %261, %262 ], [ %261, %264 ], [ %253, %255 ], [ %253, %251 ], [ %184, %187 ], [ %184, %267 ]
  %272 = icmp sgt i32 %271, -1
  br i1 %272, label %273, label %277

273:                                              ; preds = %269
  %274 = icmp eq ptr %76, null
  br i1 %274, label %277, label %275

275:                                              ; preds = %273
  invoke void @_ZN11xercesc_2_75Match11setStartPosEii(ptr noundef nonnull align 8 dereferenceable(40) %76, i32 noundef 0, i32 noundef %270)
          to label %276 unwind label %159

276:                                              ; preds = %275
  invoke void @_ZN11xercesc_2_75Match9setEndPosEii(ptr noundef nonnull align 8 dereferenceable(40) %76, i32 noundef 0, i32 noundef %271)
          to label %277 unwind label %159

277:                                              ; preds = %276, %273, %269, %108, %105, %103, %92, %89, %87, %120
  %278 = phi i1 [ false, %120 ], [ %88, %87 ], [ true, %89 ], [ true, %92 ], [ %104, %103 ], [ true, %105 ], [ true, %108 ], [ %272, %269 ], [ true, %273 ], [ true, %276 ]
  %279 = load ptr, ptr %13, align 8, !tbaa !92
  %280 = icmp eq ptr %279, null
  br i1 %280, label %285, label %281, !prof !93

281:                                              ; preds = %277
  %282 = load ptr, ptr %5, align 8, !tbaa !94
  %283 = getelementptr inbounds ptr, ptr %282, i64 3
  %284 = load ptr, ptr %283, align 8
  invoke void %284(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %279)
          to label %285 unwind label %292

285:                                              ; preds = %281, %277
  br i1 %77, label %295, label %286, !prof !93

286:                                              ; preds = %285
  %287 = icmp eq ptr %76, null
  br i1 %287, label %295, label %288

288:                                              ; preds = %286
  %289 = load ptr, ptr %76, align 8, !tbaa !94
  %290 = getelementptr inbounds ptr, ptr %289, i64 1
  %291 = load ptr, ptr %290, align 8
  tail call void %291(ptr noundef nonnull align 8 dereferenceable(40) %76) #20
  br label %295

292:                                              ; preds = %281
  %293 = landingpad { ptr, i32 }
          catch ptr null
  %294 = extractvalue { ptr, i32 } %293, 0
  tail call void @__clang_call_terminate(ptr %294) #21
  unreachable

295:                                              ; preds = %285, %286, %288
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #20
  ret i1 %278

296:                                              ; preds = %157, %159, %170, %240, %208, %59, %73, %93, %110, %122, %57
  %297 = phi { ptr, i32 } [ %58, %57 ], [ %94, %93 ], [ %111, %110 ], [ %123, %122 ], [ %60, %59 ], [ %74, %73 ], [ %171, %170 ], [ %241, %240 ], [ %209, %208 ], [ %158, %157 ], [ %160, %159 ]
  call void @_ZN11xercesc_2_717RegularExpression7ContextD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %7) #20
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #20
  resume { ptr, i32 } %297
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_717RegularExpression7matchesEPKciiPNS_13MemoryManagerE(ptr nocapture noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !81 {
  %6 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %7 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKcPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %4)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #20
  store ptr %7, ptr %6, align 8, !tbaa !117
  %8 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %6, i64 0, i32 1
  store ptr %4, ptr %8, align 8, !tbaa !119
  %9 = invoke noundef zeroext i1 @_ZN11xercesc_2_717RegularExpression7matchesEPKtiiPNS_5MatchEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %7, i32 noundef %2, i32 noundef %3, ptr noundef null, ptr noundef %4)
          to label %10 unwind label %11

10:                                               ; preds = %5
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #20
  ret i1 %9

11:                                               ; preds = %5
  %12 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #20
  resume { ptr, i32 } %12
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_717RegularExpression7matchesEPKcPNS_5MatchEPNS_13MemoryManagerE(ptr nocapture noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !81 {
  %5 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %6 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKcPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %3)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #20
  store ptr %6, ptr %5, align 8, !tbaa !117
  %7 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %5, i64 0, i32 1
  store ptr %3, ptr %7, align 8, !tbaa !119
  %8 = icmp eq ptr %6, null
  br i1 %8, label %23, label %9

9:                                                ; preds = %4
  %10 = load i16, ptr %6, align 2, !tbaa !82
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %23, label %12

12:                                               ; preds = %9, %12
  %13 = phi ptr [ %14, %12 ], [ %6, %9 ]
  %14 = getelementptr inbounds i16, ptr %13, i64 1
  %15 = load i16, ptr %14, align 2, !tbaa !82
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %17, label %12, !llvm.loop !129

17:                                               ; preds = %12
  %18 = ptrtoint ptr %14 to i64
  %19 = ptrtoint ptr %6 to i64
  %20 = sub i64 %18, %19
  %21 = lshr exact i64 %20, 1
  %22 = trunc i64 %21 to i32
  br label %23

23:                                               ; preds = %4, %9, %17
  %24 = phi i32 [ %22, %17 ], [ 0, %9 ], [ 0, %4 ]
  %25 = invoke noundef zeroext i1 @_ZN11xercesc_2_717RegularExpression7matchesEPKtiiPNS_5MatchEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %6, i32 noundef 0, i32 noundef %24, ptr noundef %2, ptr noundef %3)
          to label %26 unwind label %27

26:                                               ; preds = %23
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #20
  ret i1 %25

27:                                               ; preds = %23
  %28 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #20
  resume { ptr, i32 } %28
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_717RegularExpression7matchesEPKciiPNS_5MatchEPNS_13MemoryManagerE(ptr nocapture noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !81 {
  %7 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %8 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKcPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %5)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #20
  store ptr %8, ptr %7, align 8, !tbaa !117
  %9 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %7, i64 0, i32 1
  store ptr %5, ptr %9, align 8, !tbaa !119
  %10 = invoke noundef zeroext i1 @_ZN11xercesc_2_717RegularExpression7matchesEPKtiiPNS_5MatchEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %8, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5)
          to label %11 unwind label %12

11:                                               ; preds = %6
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #20
  ret i1 %10

12:                                               ; preds = %6
  %13 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #20
  resume { ptr, i32 } %13
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_717RegularExpression7matchesEPKtPNS_13MemoryManagerE(ptr nocapture noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #7 align 2 !prof !159 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %19, label %5, !prof !160

5:                                                ; preds = %3
  %6 = load i16, ptr %1, align 2, !tbaa !82
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %19, label %8, !prof !160

8:                                                ; preds = %5, %8
  %9 = phi ptr [ %10, %8 ], [ %1, %5 ]
  %10 = getelementptr inbounds i16, ptr %9, i64 1
  %11 = load i16, ptr %10, align 2, !tbaa !82
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %13, label %8, !prof !161, !llvm.loop !129

13:                                               ; preds = %8
  %14 = ptrtoint ptr %10 to i64
  %15 = ptrtoint ptr %1 to i64
  %16 = sub i64 %14, %15
  %17 = lshr exact i64 %16, 1
  %18 = trunc i64 %17 to i32
  br label %19

19:                                               ; preds = %3, %5, %13
  %20 = phi i32 [ %18, %13 ], [ 0, %5 ], [ 0, %3 ]
  %21 = tail call noundef zeroext i1 @_ZN11xercesc_2_717RegularExpression7matchesEPKtiiPNS_5MatchEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, i32 noundef 0, i32 noundef %20, ptr noundef null, ptr noundef %2)
  ret i1 %21
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_717RegularExpression7matchesEPKtiiPNS_13MemoryManagerE(ptr nocapture noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #2 align 2 !prof !81 {
  %6 = tail call noundef zeroext i1 @_ZN11xercesc_2_717RegularExpression7matchesEPKtiiPNS_5MatchEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef null, ptr noundef %4)
  ret i1 %6
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_717RegularExpression7matchesEPKtPNS_5MatchEPNS_13MemoryManagerE(ptr nocapture noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 align 2 !prof !81 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %20, label %6

6:                                                ; preds = %4
  %7 = load i16, ptr %1, align 2, !tbaa !82
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %20, label %9

9:                                                ; preds = %6, %9
  %10 = phi ptr [ %11, %9 ], [ %1, %6 ]
  %11 = getelementptr inbounds i16, ptr %10, i64 1
  %12 = load i16, ptr %11, align 2, !tbaa !82
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %9, !llvm.loop !129

14:                                               ; preds = %9
  %15 = ptrtoint ptr %11 to i64
  %16 = ptrtoint ptr %1 to i64
  %17 = sub i64 %15, %16
  %18 = lshr exact i64 %17, 1
  %19 = trunc i64 %18 to i32
  br label %20

20:                                               ; preds = %4, %6, %14
  %21 = phi i32 [ %19, %14 ], [ 0, %6 ], [ 0, %4 ]
  %22 = tail call noundef zeroext i1 @_ZN11xercesc_2_717RegularExpression7matchesEPKtiiPNS_5MatchEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, i32 noundef 0, i32 noundef %21, ptr noundef %2, ptr noundef %3)
  ret i1 %22
}

declare void @_ZN11xercesc_2_75Match11setNoGroupsEi(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) local_unnamed_addr #1

declare void @_ZN11xercesc_2_75MatchC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN11xercesc_2_717RegularExpression5matchEPNS0_7ContextEPKNS_2OpEis(ptr nocapture noundef nonnull align 8 dereferenceable(104) %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3, i16 noundef signext %4) local_unnamed_addr #7 align 2 !prof !165 {
  %6 = alloca i32, align 4
  store i32 %3, ptr %6, align 4, !tbaa !106
  %7 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 5
  %8 = load i32, ptr %7, align 8, !tbaa !126
  %9 = and i32 %8, 2
  %10 = icmp ne i32 %9, 0
  %11 = icmp eq ptr %2, null
  br i1 %11, label %332, label %12, !prof !166

12:                                               ; preds = %5
  %13 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %1, i64 0, i32 2
  %14 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %1, i64 0, i32 1
  br label %15

15:                                               ; preds = %12, %328
  %16 = phi i32 [ undef, %12 ], [ %330, %328 ]
  %17 = phi ptr [ %2, %12 ], [ %329, %328 ]
  %18 = load i32, ptr %6, align 4, !tbaa !106
  %19 = load i32, ptr %13, align 8, !tbaa !102
  %20 = icmp sgt i32 %18, %19
  br i1 %20, label %334, label %21, !prof !167

21:                                               ; preds = %15
  %22 = load i32, ptr %14, align 4, !tbaa !101
  %23 = icmp slt i32 %18, %22
  br i1 %23, label %334, label %24, !prof !167

24:                                               ; preds = %21
  %25 = getelementptr inbounds %"class.xercesc_2_7::Op", ptr %17, i64 0, i32 2
  %26 = load i16, ptr %25, align 8, !tbaa !157
  switch i16 %26, label %328 [
    i16 1, label %27
    i16 0, label %36
    i16 3, label %41
    i16 4, label %41
    i16 5, label %46
    i16 16, label %56
    i16 6, label %65
    i16 7, label %111
    i16 9, label %156
    i16 8, label %170
    i16 10, label %170
    i16 11, label %183
    i16 15, label %203
    i16 20, label %219
    i16 21, label %230
    i16 22, label %241
    i16 23, label %252
    i16 26, label %299
    i16 24, label %263
    i16 25, label %270
  ], !prof !168

27:                                               ; preds = %24
  %28 = load ptr, ptr %17, align 8, !tbaa !94
  %29 = getelementptr inbounds ptr, ptr %28, i64 2
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef i32 %30(ptr noundef nonnull align 8 dereferenceable(32) %17), !prof !169
  %32 = call noundef zeroext i1 @_ZN11xercesc_2_717RegularExpression9matchCharEPNS0_7ContextEiRisb(ptr nonnull align 8 poison, ptr noundef %1, i32 noundef %31, ptr noundef nonnull align 4 dereferenceable(4) %6, i16 noundef signext %4, i1 noundef zeroext %10)
  br i1 %32, label %33, label %334, !prof !170

33:                                               ; preds = %27
  %34 = getelementptr inbounds %"class.xercesc_2_7::Op", ptr %17, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !154
  br label %328

36:                                               ; preds = %24
  %37 = call noundef zeroext i1 @_ZN11xercesc_2_717RegularExpression8matchDotEPNS0_7ContextERis(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %6, i16 noundef signext %4)
  br i1 %37, label %38, label %334, !prof !171

38:                                               ; preds = %36
  %39 = getelementptr inbounds %"class.xercesc_2_7::Op", ptr %17, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !154
  br label %328

41:                                               ; preds = %24, %24
  %42 = call noundef zeroext i1 @_ZN11xercesc_2_717RegularExpression10matchRangeEPNS0_7ContextEPKNS_2OpERisb(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef nonnull %17, ptr noundef nonnull align 4 dereferenceable(4) %6, i16 noundef signext %4, i1 noundef zeroext %10)
  br i1 %42, label %43, label %334, !prof !172

43:                                               ; preds = %41
  %44 = getelementptr inbounds %"class.xercesc_2_7::Op", ptr %17, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !154
  br label %328

46:                                               ; preds = %24
  %47 = load ptr, ptr %17, align 8, !tbaa !94
  %48 = getelementptr inbounds ptr, ptr %47, i64 2
  %49 = load ptr, ptr %48, align 8
  %50 = tail call noundef i32 %49(ptr noundef nonnull align 8 dereferenceable(32) %17)
  %51 = load i32, ptr %6, align 4, !tbaa !106
  %52 = tail call noundef zeroext i1 @_ZN11xercesc_2_717RegularExpression11matchAnchorEPNS0_7ContextEii(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, i32 noundef %50, i32 noundef %51)
  br i1 %52, label %53, label %334

53:                                               ; preds = %46
  %54 = getelementptr inbounds %"class.xercesc_2_7::Op", ptr %17, i64 0, i32 3
  %55 = load ptr, ptr %54, align 8, !tbaa !154
  br label %328

56:                                               ; preds = %24
  %57 = load ptr, ptr %17, align 8, !tbaa !94
  %58 = getelementptr inbounds ptr, ptr %57, i64 2
  %59 = load ptr, ptr %58, align 8
  %60 = tail call noundef i32 %59(ptr noundef nonnull align 8 dereferenceable(32) %17)
  %61 = call noundef zeroext i1 @_ZN11xercesc_2_717RegularExpression18matchBackReferenceEPNS0_7ContextEiRisb(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, i32 noundef %60, ptr noundef nonnull align 4 dereferenceable(4) %6, i16 noundef signext %4, i1 noundef zeroext %10)
  br i1 %61, label %62, label %334

62:                                               ; preds = %56
  %63 = getelementptr inbounds %"class.xercesc_2_7::Op", ptr %17, i64 0, i32 3
  %64 = load ptr, ptr %63, align 8, !tbaa !154
  br label %328

65:                                               ; preds = %24
  %66 = icmp sgt i16 %4, 0
  %67 = load ptr, ptr %17, align 8, !tbaa !94
  %68 = getelementptr inbounds ptr, ptr %67, i64 12
  %69 = load ptr, ptr %68, align 8
  %70 = tail call noundef ptr %69(ptr noundef nonnull align 8 dereferenceable(32) %17), !prof !173
  %71 = icmp eq ptr %70, null
  br i1 %71, label %86, label %72, !prof !174

72:                                               ; preds = %65
  %73 = load i16, ptr %70, align 2, !tbaa !82
  %74 = icmp eq i16 %73, 0
  br i1 %74, label %86, label %75, !prof !174

75:                                               ; preds = %72, %75
  %76 = phi ptr [ %77, %75 ], [ %70, %72 ]
  %77 = getelementptr inbounds i16, ptr %76, i64 1
  %78 = load i16, ptr %77, align 2, !tbaa !82
  %79 = icmp eq i16 %78, 0
  br i1 %79, label %80, label %75, !prof !175, !llvm.loop !129

80:                                               ; preds = %75
  %81 = ptrtoint ptr %77 to i64
  %82 = ptrtoint ptr %70 to i64
  %83 = sub i64 %81, %82
  %84 = lshr exact i64 %83, 1
  %85 = trunc i64 %84 to i32
  br label %86

86:                                               ; preds = %80, %72, %65
  %87 = phi i32 [ %85, %80 ], [ 0, %72 ], [ 0, %65 ]
  %88 = load i32, ptr %6, align 4
  %89 = select i1 %66, i32 0, i32 %87, !prof !176
  %90 = sub nsw i32 %88, %89
  %91 = load i32, ptr %13, align 8, !tbaa !102
  %92 = sub nsw i32 %91, %90
  %93 = icmp slt i32 %92, %87
  br i1 %93, label %334, label %94, !prof !177

94:                                               ; preds = %86
  br i1 %10, label %95, label %99, !prof !178

95:                                               ; preds = %94
  %96 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %1, i64 0, i32 8
  %97 = load ptr, ptr %96, align 8, !tbaa !99
  %98 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString14regionIMatchesEPKtiS2_ij(ptr noundef %97, i32 noundef %90, ptr noundef %70, i32 noundef 0, i32 noundef %87)
  br label %103

99:                                               ; preds = %94
  %100 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %1, i64 0, i32 8
  %101 = load ptr, ptr %100, align 8, !tbaa !99
  %102 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString13regionMatchesEPKtiS2_ij(ptr noundef %101, i32 noundef %90, ptr noundef %70, i32 noundef 0, i32 noundef %87)
  br label %103

103:                                              ; preds = %99, %95
  %104 = phi i1 [ %98, %95 ], [ %102, %99 ]
  br i1 %104, label %105, label %334, !prof !179

105:                                              ; preds = %103
  %106 = sub i32 0, %87
  %107 = select i1 %66, i32 %87, i32 %106, !prof !180
  %108 = add i32 %88, %107
  store i32 %108, ptr %6, align 4, !tbaa !106
  %109 = getelementptr inbounds %"class.xercesc_2_7::Op", ptr %17, i64 0, i32 3
  %110 = load ptr, ptr %109, align 8, !tbaa !154
  br label %328

111:                                              ; preds = %24
  %112 = load ptr, ptr %17, align 8, !tbaa !94
  %113 = getelementptr inbounds ptr, ptr %112, i64 2
  %114 = load ptr, ptr %113, align 8
  %115 = tail call noundef i32 %114(ptr noundef nonnull align 8 dereferenceable(32) %17), !prof !181
  %116 = icmp sgt i32 %115, -1
  br i1 %116, label %117, label %134, !prof !182

117:                                              ; preds = %111
  %118 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %1, i64 0, i32 6
  %119 = load ptr, ptr %118, align 8, !tbaa !92
  %120 = zext nneg i32 %115 to i64
  %121 = getelementptr inbounds i32, ptr %119, i64 %120
  %122 = load i32, ptr %121, align 4, !tbaa !106
  %123 = icmp slt i32 %122, 0
  %124 = load i32, ptr %6, align 4
  %125 = icmp ne i32 %122, %124
  %126 = select i1 %123, i1 true, i1 %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %117
  store i32 %124, ptr %121, align 4, !tbaa !106
  br label %131

128:                                              ; preds = %117
  store i32 -1, ptr %121, align 4, !tbaa !106
  %129 = getelementptr inbounds %"class.xercesc_2_7::Op", ptr %17, i64 0, i32 3
  %130 = load ptr, ptr %129, align 8, !tbaa !154
  br label %131

131:                                              ; preds = %127, %128
  %132 = phi i32 [ 0, %127 ], [ 4, %128 ]
  %133 = phi ptr [ %17, %127 ], [ %130, %128 ]
  br i1 %126, label %134, label %152

134:                                              ; preds = %131, %111
  %135 = phi ptr [ %133, %131 ], [ %17, %111 ]
  %136 = load ptr, ptr %135, align 8, !tbaa !94
  %137 = getelementptr inbounds ptr, ptr %136, i64 10
  %138 = load ptr, ptr %137, align 8
  %139 = tail call noundef ptr %138(ptr noundef nonnull align 8 dereferenceable(32) %135), !prof !183
  %140 = load i32, ptr %6, align 4, !tbaa !106
  %141 = tail call noundef i32 @_ZN11xercesc_2_717RegularExpression5matchEPNS0_7ContextEPKNS_2OpEis(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef %139, i32 noundef %140, i16 noundef signext %4)
  br i1 %116, label %142, label %147, !prof !182

142:                                              ; preds = %134
  %143 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %1, i64 0, i32 6
  %144 = load ptr, ptr %143, align 8, !tbaa !92
  %145 = zext nneg i32 %115 to i64
  %146 = getelementptr inbounds i32, ptr %144, i64 %145
  store i32 -1, ptr %146, align 4, !tbaa !106
  br label %147

147:                                              ; preds = %134, %142
  %148 = icmp sgt i32 %141, -1
  br i1 %148, label %152, label %149, !prof !184

149:                                              ; preds = %147
  %150 = getelementptr inbounds %"class.xercesc_2_7::Op", ptr %135, i64 0, i32 3
  %151 = load ptr, ptr %150, align 8, !tbaa !154
  br label %152

152:                                              ; preds = %149, %147, %131
  %153 = phi i32 [ %132, %131 ], [ 0, %149 ], [ 1, %147 ]
  %154 = phi ptr [ %133, %131 ], [ %151, %149 ], [ %135, %147 ]
  %155 = phi i32 [ %16, %131 ], [ %16, %149 ], [ %141, %147 ]
  switch i32 %153, label %334 [
    i32 0, label %328
    i32 4, label %328
  ], !prof !185

156:                                              ; preds = %24
  %157 = load ptr, ptr %17, align 8, !tbaa !94
  %158 = getelementptr inbounds ptr, ptr %157, i64 10
  %159 = load ptr, ptr %158, align 8
  %160 = tail call noundef ptr %159(ptr noundef nonnull align 8 dereferenceable(32) %17), !prof !186
  %161 = load i32, ptr %6, align 4, !tbaa !106
  %162 = tail call noundef i32 @_ZN11xercesc_2_717RegularExpression5matchEPNS0_7ContextEPKNS_2OpEis(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef %160, i32 noundef %161, i16 noundef signext %4)
  %163 = icmp slt i32 %162, 0
  br i1 %163, label %164, label %167, !prof !187

164:                                              ; preds = %156
  %165 = getelementptr inbounds %"class.xercesc_2_7::Op", ptr %17, i64 0, i32 3
  %166 = load ptr, ptr %165, align 8, !tbaa !154
  br label %167

167:                                              ; preds = %156, %164
  %168 = phi ptr [ %166, %164 ], [ %17, %156 ]
  %169 = phi i32 [ %16, %164 ], [ %162, %156 ]
  br i1 %163, label %328, label %334, !prof !187

170:                                              ; preds = %24, %24
  %171 = getelementptr inbounds %"class.xercesc_2_7::Op", ptr %17, i64 0, i32 3
  %172 = load ptr, ptr %171, align 8, !tbaa !154
  %173 = tail call noundef i32 @_ZN11xercesc_2_717RegularExpression5matchEPNS0_7ContextEPKNS_2OpEis(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef %172, i32 noundef %18, i16 noundef signext %4)
  %174 = icmp slt i32 %173, 0
  br i1 %174, label %175, label %180

175:                                              ; preds = %170
  %176 = load ptr, ptr %17, align 8, !tbaa !94
  %177 = getelementptr inbounds ptr, ptr %176, i64 10
  %178 = load ptr, ptr %177, align 8
  %179 = tail call noundef ptr %178(ptr noundef nonnull align 8 dereferenceable(32) %17)
  br label %180

180:                                              ; preds = %170, %175
  %181 = phi ptr [ %179, %175 ], [ %17, %170 ]
  %182 = phi i32 [ %16, %175 ], [ %173, %170 ]
  br i1 %174, label %328, label %334

183:                                              ; preds = %24
  %184 = load ptr, ptr %17, align 8, !tbaa !94
  %185 = getelementptr inbounds ptr, ptr %184, i64 4
  %186 = load ptr, ptr %185, align 8
  %187 = tail call noundef i32 %186(ptr noundef nonnull align 8 dereferenceable(32) %17), !prof !188
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %334, label %189, !prof !105

189:                                              ; preds = %183, %200
  %190 = phi i32 [ %201, %200 ], [ 0, %183 ]
  %191 = load ptr, ptr %17, align 8, !tbaa !94
  %192 = getelementptr inbounds ptr, ptr %191, i64 9
  %193 = load ptr, ptr %192, align 8
  %194 = tail call noundef ptr %193(ptr noundef nonnull align 8 dereferenceable(32) %17, i32 noundef %190), !prof !189
  %195 = tail call noundef i32 @_ZN11xercesc_2_717RegularExpression5matchEPNS0_7ContextEPKNS_2OpEis(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef %194, i32 noundef %18, i16 noundef signext %4)
  %196 = icmp sgt i32 %195, -1
  br i1 %196, label %197, label %200, !prof !190

197:                                              ; preds = %189
  %198 = load i32, ptr %13, align 8, !tbaa !102
  %199 = icmp sgt i32 %195, %198
  br i1 %199, label %200, label %334, !prof !191

200:                                              ; preds = %197, %189
  %201 = add nuw i32 %190, 1
  %202 = icmp eq i32 %201, %187
  br i1 %202, label %334, label %189, !prof !192, !llvm.loop !193

203:                                              ; preds = %24
  %204 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %1, i64 0, i32 7
  %205 = load ptr, ptr %204, align 8, !tbaa !98
  %206 = icmp eq ptr %205, null
  br i1 %206, label %216, label %207

207:                                              ; preds = %203
  %208 = load ptr, ptr %17, align 8, !tbaa !94
  %209 = getelementptr inbounds ptr, ptr %208, i64 2
  %210 = load ptr, ptr %209, align 8
  %211 = tail call noundef i32 %210(ptr noundef nonnull align 8 dereferenceable(32) %17)
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %216, label %213

213:                                              ; preds = %207
  %214 = load i32, ptr %6, align 4, !tbaa !106
  %215 = tail call noundef i32 @_ZN11xercesc_2_717RegularExpression12matchCaptureEPNS0_7ContextEPKNS_2OpEis(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef nonnull %17, i32 noundef %214, i16 noundef signext %4)
  br label %334

216:                                              ; preds = %207, %203
  %217 = getelementptr inbounds %"class.xercesc_2_7::Op", ptr %17, i64 0, i32 3
  %218 = load ptr, ptr %217, align 8, !tbaa !154
  br label %328

219:                                              ; preds = %24
  %220 = load ptr, ptr %17, align 8, !tbaa !94
  %221 = getelementptr inbounds ptr, ptr %220, i64 10
  %222 = load ptr, ptr %221, align 8
  %223 = tail call noundef ptr %222(ptr noundef nonnull align 8 dereferenceable(32) %17)
  %224 = load i32, ptr %6, align 4, !tbaa !106
  %225 = tail call noundef i32 @_ZN11xercesc_2_717RegularExpression5matchEPNS0_7ContextEPKNS_2OpEis(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef %223, i32 noundef %224, i16 noundef signext 1)
  %226 = icmp slt i32 %225, 0
  br i1 %226, label %334, label %227

227:                                              ; preds = %219
  %228 = getelementptr inbounds %"class.xercesc_2_7::Op", ptr %17, i64 0, i32 3
  %229 = load ptr, ptr %228, align 8, !tbaa !154
  br label %328

230:                                              ; preds = %24
  %231 = load ptr, ptr %17, align 8, !tbaa !94
  %232 = getelementptr inbounds ptr, ptr %231, i64 10
  %233 = load ptr, ptr %232, align 8
  %234 = tail call noundef ptr %233(ptr noundef nonnull align 8 dereferenceable(32) %17)
  %235 = load i32, ptr %6, align 4, !tbaa !106
  %236 = tail call noundef i32 @_ZN11xercesc_2_717RegularExpression5matchEPNS0_7ContextEPKNS_2OpEis(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef %234, i32 noundef %235, i16 noundef signext 1)
  %237 = icmp sgt i32 %236, -1
  br i1 %237, label %334, label %238

238:                                              ; preds = %230
  %239 = getelementptr inbounds %"class.xercesc_2_7::Op", ptr %17, i64 0, i32 3
  %240 = load ptr, ptr %239, align 8, !tbaa !154
  br label %328

241:                                              ; preds = %24
  %242 = load ptr, ptr %17, align 8, !tbaa !94
  %243 = getelementptr inbounds ptr, ptr %242, i64 10
  %244 = load ptr, ptr %243, align 8
  %245 = tail call noundef ptr %244(ptr noundef nonnull align 8 dereferenceable(32) %17)
  %246 = load i32, ptr %6, align 4, !tbaa !106
  %247 = tail call noundef i32 @_ZN11xercesc_2_717RegularExpression5matchEPNS0_7ContextEPKNS_2OpEis(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef %245, i32 noundef %246, i16 noundef signext -1)
  %248 = icmp slt i32 %247, 0
  br i1 %248, label %334, label %249

249:                                              ; preds = %241
  %250 = getelementptr inbounds %"class.xercesc_2_7::Op", ptr %17, i64 0, i32 3
  %251 = load ptr, ptr %250, align 8, !tbaa !154
  br label %328

252:                                              ; preds = %24
  %253 = load ptr, ptr %17, align 8, !tbaa !94
  %254 = getelementptr inbounds ptr, ptr %253, i64 10
  %255 = load ptr, ptr %254, align 8
  %256 = tail call noundef ptr %255(ptr noundef nonnull align 8 dereferenceable(32) %17)
  %257 = load i32, ptr %6, align 4, !tbaa !106
  %258 = tail call noundef i32 @_ZN11xercesc_2_717RegularExpression5matchEPNS0_7ContextEPKNS_2OpEis(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef %256, i32 noundef %257, i16 noundef signext -1)
  %259 = icmp sgt i32 %258, -1
  br i1 %259, label %334, label %260

260:                                              ; preds = %252
  %261 = getelementptr inbounds %"class.xercesc_2_7::Op", ptr %17, i64 0, i32 3
  %262 = load ptr, ptr %261, align 8, !tbaa !154
  br label %328

263:                                              ; preds = %24
  %264 = load ptr, ptr %17, align 8, !tbaa !94
  %265 = getelementptr inbounds ptr, ptr %264, i64 10
  %266 = load ptr, ptr %265, align 8
  %267 = tail call noundef ptr %266(ptr noundef nonnull align 8 dereferenceable(32) %17)
  %268 = load i32, ptr %6, align 4, !tbaa !106
  %269 = tail call noundef i32 @_ZN11xercesc_2_717RegularExpression5matchEPNS0_7ContextEPKNS_2OpEis(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef %267, i32 noundef %268, i16 noundef signext %4)
  br label %290

270:                                              ; preds = %24
  %271 = load i32, ptr %7, align 8, !tbaa !126
  %272 = load ptr, ptr %17, align 8, !tbaa !94
  %273 = getelementptr inbounds ptr, ptr %272, i64 2
  %274 = load ptr, ptr %273, align 8
  %275 = tail call noundef i32 %274(ptr noundef nonnull align 8 dereferenceable(32) %17)
  %276 = load i32, ptr %7, align 8, !tbaa !126
  %277 = or i32 %276, %275
  store i32 %277, ptr %7, align 8, !tbaa !126
  %278 = load ptr, ptr %17, align 8, !tbaa !94
  %279 = getelementptr inbounds ptr, ptr %278, i64 3
  %280 = load ptr, ptr %279, align 8
  %281 = tail call noundef i32 %280(ptr noundef nonnull align 8 dereferenceable(32) %17)
  %282 = xor i32 %281, -1
  %283 = load i32, ptr %7, align 8, !tbaa !126
  %284 = and i32 %283, %282
  store i32 %284, ptr %7, align 8, !tbaa !126
  %285 = load ptr, ptr %17, align 8, !tbaa !94
  %286 = getelementptr inbounds ptr, ptr %285, i64 10
  %287 = load ptr, ptr %286, align 8
  %288 = tail call noundef ptr %287(ptr noundef nonnull align 8 dereferenceable(32) %17)
  %289 = tail call noundef i32 @_ZN11xercesc_2_717RegularExpression5matchEPNS0_7ContextEPKNS_2OpEis(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef %288, i32 noundef %18, i16 noundef signext %4)
  store i32 %271, ptr %7, align 8, !tbaa !126
  br label %290

290:                                              ; preds = %270, %263
  %291 = phi i32 [ %269, %263 ], [ %289, %270 ]
  %292 = icmp sgt i32 %291, -1
  br i1 %292, label %293, label %296

293:                                              ; preds = %290
  store i32 %291, ptr %6, align 4, !tbaa !106
  %294 = getelementptr inbounds %"class.xercesc_2_7::Op", ptr %17, i64 0, i32 3
  %295 = load ptr, ptr %294, align 8, !tbaa !154
  br label %296

296:                                              ; preds = %290, %293
  %297 = phi ptr [ %295, %293 ], [ %17, %290 ]
  %298 = phi i32 [ %16, %293 ], [ %291, %290 ]
  br i1 %292, label %328, label %334

299:                                              ; preds = %24
  %300 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 2
  %301 = load ptr, ptr %17, align 8, !tbaa !94
  %302 = getelementptr inbounds ptr, ptr %301, i64 5
  %303 = load ptr, ptr %302, align 8
  %304 = tail call noundef i32 %303(ptr noundef nonnull align 8 dereferenceable(32) %17)
  %305 = load i32, ptr %300, align 4, !tbaa !136
  %306 = icmp slt i32 %304, %305
  br i1 %306, label %307, label %334

307:                                              ; preds = %299
  %308 = load i32, ptr %6, align 4, !tbaa !106
  %309 = tail call noundef zeroext i1 @_ZN11xercesc_2_717RegularExpression14matchConditionEPNS0_7ContextEPKNS_2OpEis(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef nonnull %17, i32 noundef %308, i16 noundef signext %4)
  %310 = load ptr, ptr %17, align 8, !tbaa !94
  br i1 %309, label %311, label %315

311:                                              ; preds = %307
  %312 = getelementptr inbounds ptr, ptr %310, i64 7
  %313 = load ptr, ptr %312, align 8
  %314 = tail call noundef ptr %313(ptr noundef nonnull align 8 dereferenceable(32) %17)
  br label %328

315:                                              ; preds = %307
  %316 = getelementptr inbounds ptr, ptr %310, i64 8
  %317 = load ptr, ptr %316, align 8
  %318 = tail call noundef ptr %317(ptr noundef nonnull align 8 dereferenceable(32) %17)
  %319 = icmp eq ptr %318, null
  br i1 %319, label %325, label %320

320:                                              ; preds = %315
  %321 = load ptr, ptr %17, align 8, !tbaa !94
  %322 = getelementptr inbounds ptr, ptr %321, i64 8
  %323 = load ptr, ptr %322, align 8
  %324 = tail call noundef ptr %323(ptr noundef nonnull align 8 dereferenceable(32) %17)
  br label %328

325:                                              ; preds = %315
  %326 = getelementptr inbounds %"class.xercesc_2_7::Op", ptr %17, i64 0, i32 3
  %327 = load ptr, ptr %326, align 8, !tbaa !154
  br label %328

328:                                              ; preds = %24, %152, %311, %325, %320, %296, %180, %167, %260, %249, %238, %227, %216, %152, %105, %62, %53, %43, %38, %33
  %329 = phi ptr [ %314, %311 ], [ %324, %320 ], [ %327, %325 ], [ %297, %296 ], [ %262, %260 ], [ %251, %249 ], [ %240, %238 ], [ %229, %227 ], [ %218, %216 ], [ %181, %180 ], [ %168, %167 ], [ %154, %152 ], [ %110, %105 ], [ %64, %62 ], [ %55, %53 ], [ %45, %43 ], [ %40, %38 ], [ %35, %33 ], [ %17, %24 ], [ %154, %152 ]
  %330 = phi i32 [ %16, %311 ], [ %16, %320 ], [ %16, %325 ], [ %298, %296 ], [ %16, %260 ], [ %16, %249 ], [ %16, %238 ], [ %16, %227 ], [ %16, %216 ], [ %182, %180 ], [ %169, %167 ], [ %155, %152 ], [ %16, %105 ], [ %16, %62 ], [ %16, %53 ], [ %16, %43 ], [ %16, %38 ], [ %16, %33 ], [ %16, %24 ], [ %155, %152 ]
  %331 = icmp eq ptr %329, null
  br i1 %331, label %332, label %15, !prof !194, !llvm.loop !195

332:                                              ; preds = %328, %5
  %333 = load i32, ptr %6, align 4, !tbaa !106
  br label %334

334:                                              ; preds = %103, %86, %296, %180, %167, %152, %299, %252, %241, %230, %219, %56, %46, %41, %36, %27, %15, %21, %200, %197, %183, %332, %213
  %335 = phi i32 [ %333, %332 ], [ %215, %213 ], [ -1, %183 ], [ %195, %197 ], [ -1, %200 ], [ -1, %21 ], [ -1, %15 ], [ -1, %27 ], [ -1, %36 ], [ -1, %41 ], [ -1, %46 ], [ -1, %56 ], [ -1, %219 ], [ -1, %230 ], [ -1, %241 ], [ -1, %252 ], [ -1, %299 ], [ %155, %152 ], [ %169, %167 ], [ %182, %180 ], [ %298, %296 ], [ -1, %86 ], [ -1, %103 ]
  ret i32 %335
}

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_75Match11setStartPosEii(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 !prof !81 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::Match", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !196
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %14

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #20
  %9 = getelementptr inbounds %"class.xercesc_2_7::Match", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !198
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str.1, i32 noundef 141, i32 noundef 282, ptr noundef %10)
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #22
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  br label %30

14:                                               ; preds = %3
  %15 = icmp sgt i32 %1, -1
  %16 = getelementptr inbounds %"class.xercesc_2_7::Match", ptr %0, i64 0, i32 1
  %17 = load i32, ptr %16, align 8
  %18 = icmp sgt i32 %17, %1
  %19 = select i1 %15, i1 %18, i1 false
  br i1 %19, label %27, label %20

20:                                               ; preds = %14
  %21 = tail call ptr @__cxa_allocate_exception(i64 48) #20
  %22 = getelementptr inbounds %"class.xercesc_2_7::Match", ptr %0, i64 0, i32 5
  %23 = load ptr, ptr %22, align 8, !tbaa !198
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %21, ptr noundef nonnull @.str.1, i32 noundef 144, i32 noundef 6, ptr noundef %23)
          to label %24 unwind label %25

24:                                               ; preds = %20
  tail call void @__cxa_throw(ptr nonnull %21, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #22
  unreachable

25:                                               ; preds = %20
  %26 = landingpad { ptr, i32 }
          cleanup
  br label %30

27:                                               ; preds = %14
  %28 = zext nneg i32 %1 to i64
  %29 = getelementptr inbounds i32, ptr %5, i64 %28
  store i32 %2, ptr %29, align 4, !tbaa !106
  ret void

30:                                               ; preds = %25, %12
  %31 = phi ptr [ %21, %25 ], [ %8, %12 ]
  %32 = phi { ptr, i32 } [ %26, %25 ], [ %13, %12 ]
  tail call void @__cxa_free_exception(ptr %31) #20
  resume { ptr, i32 } %32
}

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_75Match9setEndPosEii(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 !prof !81 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::Match", ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !199
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %14

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #20
  %9 = getelementptr inbounds %"class.xercesc_2_7::Match", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !198
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str.1, i32 noundef 152, i32 noundef 282, ptr noundef %10)
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #22
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  br label %30

14:                                               ; preds = %3
  %15 = icmp sgt i32 %1, -1
  %16 = getelementptr inbounds %"class.xercesc_2_7::Match", ptr %0, i64 0, i32 1
  %17 = load i32, ptr %16, align 8
  %18 = icmp sgt i32 %17, %1
  %19 = select i1 %15, i1 %18, i1 false
  br i1 %19, label %27, label %20

20:                                               ; preds = %14
  %21 = tail call ptr @__cxa_allocate_exception(i64 48) #20
  %22 = getelementptr inbounds %"class.xercesc_2_7::Match", ptr %0, i64 0, i32 5
  %23 = load ptr, ptr %22, align 8, !tbaa !198
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %21, ptr noundef nonnull @.str.1, i32 noundef 155, i32 noundef 6, ptr noundef %23)
          to label %24 unwind label %25

24:                                               ; preds = %20
  tail call void @__cxa_throw(ptr nonnull %21, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #22
  unreachable

25:                                               ; preds = %20
  %26 = landingpad { ptr, i32 }
          cleanup
  br label %30

27:                                               ; preds = %14
  %28 = zext nneg i32 %1 to i64
  %29 = getelementptr inbounds i32, ptr %5, i64 %28
  store i32 %2, ptr %29, align 4, !tbaa !106
  ret void

30:                                               ; preds = %25, %12
  %31 = phi ptr [ %21, %25 ], [ %8, %12 ]
  %32 = phi { ptr, i32 } [ %26, %25 ], [ %13, %12 ]
  tail call void @__cxa_free_exception(ptr %31) #20
  resume { ptr, i32 } %32
}

declare noundef i32 @_ZN11xercesc_2_79BMPattern7matchesEPKtii(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_710RangeToken23getCaseInsensitiveTokenEPNS_12TokenFactoryE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN11xercesc_2_710RangeToken5matchEi(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_717RegularExpression8tokenizeEPKc(ptr nocapture noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !81 {
  %3 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %4 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 14
  %5 = load ptr, ptr %4, align 8, !tbaa !116
  %6 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKcPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %5)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #20
  %7 = load ptr, ptr %4, align 8, !tbaa !116
  store ptr %6, ptr %3, align 8, !tbaa !117
  %8 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %3, i64 0, i32 1
  store ptr %7, ptr %8, align 8, !tbaa !119
  %9 = icmp eq ptr %6, null
  br i1 %9, label %24, label %10

10:                                               ; preds = %2
  %11 = load i16, ptr %6, align 2, !tbaa !82
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %24, label %13

13:                                               ; preds = %10, %13
  %14 = phi ptr [ %15, %13 ], [ %6, %10 ]
  %15 = getelementptr inbounds i16, ptr %14, i64 1
  %16 = load i16, ptr %15, align 2, !tbaa !82
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %13, !llvm.loop !129

18:                                               ; preds = %13
  %19 = ptrtoint ptr %15 to i64
  %20 = ptrtoint ptr %6 to i64
  %21 = sub i64 %19, %20
  %22 = lshr exact i64 %21, 1
  %23 = trunc i64 %22 to i32
  br label %24

24:                                               ; preds = %2, %10, %18
  %25 = phi i32 [ %23, %18 ], [ 0, %10 ], [ 0, %2 ]
  %26 = invoke noundef ptr @_ZN11xercesc_2_717RegularExpression8tokenizeEPKtiiPNS_11RefVectorOfINS_5MatchEEE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %6, i32 noundef 0, i32 noundef %25, ptr noundef null)
          to label %27 unwind label %28

27:                                               ; preds = %24
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #20
  ret ptr %26

28:                                               ; preds = %24
  %29 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #20
  resume { ptr, i32 } %29
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_717RegularExpression8tokenizeEPKtii(ptr nocapture noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 align 2 !prof !81 {
  %5 = tail call noundef ptr @_ZN11xercesc_2_717RegularExpression8tokenizeEPKtiiPNS_11RefVectorOfINS_5MatchEEE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef null)
  ret ptr %5
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_717RegularExpression8tokenizeEPKcii(ptr nocapture noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !81 {
  %5 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %6 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 14
  %7 = load ptr, ptr %6, align 8, !tbaa !116
  %8 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKcPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %7)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #20
  %9 = load ptr, ptr %6, align 8, !tbaa !116
  store ptr %8, ptr %5, align 8, !tbaa !117
  %10 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %5, i64 0, i32 1
  store ptr %9, ptr %10, align 8, !tbaa !119
  %11 = invoke noundef ptr @_ZN11xercesc_2_717RegularExpression8tokenizeEPKtiiPNS_11RefVectorOfINS_5MatchEEE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %8, i32 noundef %2, i32 noundef %3, ptr noundef null)
          to label %12 unwind label %13

12:                                               ; preds = %4
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #20
  ret ptr %11

13:                                               ; preds = %4
  %14 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #20
  resume { ptr, i32 } %14
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_717RegularExpression8tokenizeEPKt(ptr nocapture noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1) local_unnamed_addr #2 align 2 !prof !81 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %18, label %4

4:                                                ; preds = %2
  %5 = load i16, ptr %1, align 2, !tbaa !82
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %18, label %7

7:                                                ; preds = %4, %7
  %8 = phi ptr [ %9, %7 ], [ %1, %4 ]
  %9 = getelementptr inbounds i16, ptr %8, i64 1
  %10 = load i16, ptr %9, align 2, !tbaa !82
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %12, label %7, !llvm.loop !129

12:                                               ; preds = %7
  %13 = ptrtoint ptr %9 to i64
  %14 = ptrtoint ptr %1 to i64
  %15 = sub i64 %13, %14
  %16 = lshr exact i64 %15, 1
  %17 = trunc i64 %16 to i32
  br label %18

18:                                               ; preds = %2, %4, %12
  %19 = phi i32 [ %17, %12 ], [ 0, %4 ], [ 0, %2 ]
  %20 = tail call noundef ptr @_ZN11xercesc_2_717RegularExpression8tokenizeEPKtiiPNS_11RefVectorOfINS_5MatchEEE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, i32 noundef 0, i32 noundef %19, ptr noundef null)
  ret ptr %20
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_717RegularExpression8tokenizeEPKtiiPNS_11RefVectorOfINS_5MatchEEE(ptr nocapture noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !81 {
  %6 = alloca %"class.xercesc_2_7::RegularExpression::Context", align 8
  %7 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 14
  %8 = load ptr, ptr %7, align 8, !tbaa !116
  %9 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %8)
  %10 = load ptr, ptr %7, align 8, !tbaa !116
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_715BaseRefVectorOfItEE, i64 0, inrange i32 0, i64 2), ptr %9, align 8, !tbaa !94
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %9, i64 0, i32 1
  store i8 1, ptr %11, align 8, !tbaa !200
  %12 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %9, i64 0, i32 2
  store i32 0, ptr %12, align 4, !tbaa !202
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %9, i64 0, i32 3
  store i32 16, ptr %13, align 8, !tbaa !203
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %9, i64 0, i32 4
  store ptr null, ptr %14, align 8, !tbaa !204
  %15 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %9, i64 0, i32 5
  store ptr %10, ptr %15, align 8, !tbaa !205
  %16 = load ptr, ptr %10, align 8, !tbaa !94
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  %18 = load ptr, ptr %17, align 8
  %19 = invoke noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %10, i64 noundef 128)
          to label %20 unwind label %64

20:                                               ; preds = %5
  store ptr %19, ptr %14, align 8, !tbaa !204
  br label %21

21:                                               ; preds = %20, %21
  %22 = phi i64 [ 0, %20 ], [ %25, %21 ]
  %23 = load ptr, ptr %14, align 8, !tbaa !204
  %24 = getelementptr inbounds ptr, ptr %23, i64 %22
  store ptr null, ptr %24, align 8, !tbaa !206
  %25 = add nuw nsw i64 %22, 1
  %26 = icmp eq i64 %25, 16
  br i1 %26, label %27, label %21, !llvm.loop !207

27:                                               ; preds = %21
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_716RefArrayVectorOfItEE, i64 0, inrange i32 0, i64 2), ptr %9, align 8, !tbaa !94
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #20
  %28 = load ptr, ptr %7, align 8, !tbaa !116
  store i8 0, ptr %6, align 8, !tbaa !86
  %29 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %6, i64 0, i32 1
  %30 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %6, i64 0, i32 7
  %31 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %6, i64 0, i32 9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %29, i8 0, i64 44, i1 false)
  store ptr %28, ptr %31, align 8, !tbaa !91
  %32 = icmp eq ptr %1, null
  br i1 %32, label %47, label %33

33:                                               ; preds = %27
  %34 = load i16, ptr %1, align 2, !tbaa !82
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %47, label %36

36:                                               ; preds = %33, %36
  %37 = phi ptr [ %38, %36 ], [ %1, %33 ]
  %38 = getelementptr inbounds i16, ptr %37, i64 1
  %39 = load i16, ptr %38, align 2, !tbaa !82
  %40 = icmp eq i16 %39, 0
  br i1 %40, label %41, label %36, !llvm.loop !129

41:                                               ; preds = %36
  %42 = ptrtoint ptr %38 to i64
  %43 = ptrtoint ptr %1 to i64
  %44 = sub i64 %42, %43
  %45 = lshr exact i64 %44, 1
  %46 = trunc i64 %45 to i32
  br label %47

47:                                               ; preds = %27, %33, %41
  %48 = phi i32 [ %46, %41 ], [ 0, %33 ], [ 0, %27 ]
  %49 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 4
  %50 = load i32, ptr %49, align 4, !tbaa !148
  invoke void @_ZN11xercesc_2_717RegularExpression7Context5resetEPKtiiii(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef %1, i32 noundef %48, i32 noundef %2, i32 noundef %3, i32 noundef %50)
          to label %51 unwind label %66

51:                                               ; preds = %47
  %52 = icmp eq ptr %4, null
  %53 = load i8, ptr %0, align 8, !range !96
  %54 = icmp eq i8 %53, 0
  %55 = select i1 %52, i1 %54, i1 false
  br i1 %55, label %72, label %56

56:                                               ; preds = %51
  %57 = load ptr, ptr %7, align 8, !tbaa !116
  %58 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %57)
          to label %59 unwind label %68

59:                                               ; preds = %56
  %60 = load ptr, ptr %7, align 8, !tbaa !116
  invoke void @_ZN11xercesc_2_75MatchC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %58, ptr noundef %60)
          to label %61 unwind label %70

61:                                               ; preds = %59
  %62 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 2
  %63 = load i32, ptr %62, align 4, !tbaa !136
  invoke void @_ZN11xercesc_2_75Match11setNoGroupsEi(ptr noundef nonnull align 8 dereferenceable(40) %58, i32 noundef %63)
          to label %72 unwind label %68

64:                                               ; preds = %5
  %65 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef nonnull %9, ptr noundef %8) #20
  br label %252

66:                                               ; preds = %47
  %67 = landingpad { ptr, i32 }
          cleanup
  br label %250

68:                                               ; preds = %61, %56
  %69 = landingpad { ptr, i32 }
          cleanup
  br label %250

70:                                               ; preds = %59
  %71 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %58, ptr noundef %57) #20
  br label %250

72:                                               ; preds = %51, %61
  %73 = phi ptr [ %58, %61 ], [ null, %51 ]
  %74 = phi i8 [ 1, %61 ], [ 0, %51 ]
  %75 = load i8, ptr %6, align 8, !tbaa !86, !range !96, !noundef !97
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %84, label %77

77:                                               ; preds = %72
  %78 = load ptr, ptr %30, align 8, !tbaa !98
  %79 = icmp eq ptr %78, null
  br i1 %79, label %84, label %80

80:                                               ; preds = %77
  %81 = load ptr, ptr %78, align 8, !tbaa !94
  %82 = getelementptr inbounds ptr, ptr %81, i64 1
  %83 = load ptr, ptr %82, align 8
  tail call void %83(ptr noundef nonnull align 8 dereferenceable(40) %78) #20
  br label %84

84:                                               ; preds = %77, %80, %72
  store ptr %73, ptr %30, align 8, !tbaa !98
  store i8 %74, ptr %6, align 8, !tbaa !86
  %85 = icmp sgt i32 %2, %3
  br i1 %85, label %193, label %86

86:                                               ; preds = %84
  %87 = load ptr, ptr %30, align 8, !tbaa !98
  %88 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 9
  %89 = load i32, ptr %29, align 4
  %90 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %4, i64 0, i32 4
  %91 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %4, i64 0, i32 2
  %92 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 7
  br label %93

93:                                               ; preds = %86, %190
  %94 = phi i32 [ %2, %86 ], [ %191, %190 ]
  %95 = phi i32 [ %2, %86 ], [ %187, %190 ]
  %96 = phi ptr [ %73, %86 ], [ %186, %190 ]
  %97 = phi ptr [ %87, %86 ], [ %185, %190 ]
  %98 = load ptr, ptr %88, align 8, !tbaa !147
  %99 = invoke noundef i32 @_ZN11xercesc_2_717RegularExpression5matchEPNS0_7ContextEPKNS_2OpEis(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %6, ptr noundef %98, i32 noundef %94, i16 noundef signext 1)
          to label %100 unwind label %106

100:                                              ; preds = %93
  %101 = icmp eq i32 %99, -1
  br i1 %101, label %184, label %102

102:                                              ; preds = %100
  %103 = icmp eq ptr %97, null
  br i1 %103, label %108, label %104

104:                                              ; preds = %102
  invoke void @_ZN11xercesc_2_75Match11setStartPosEii(ptr noundef nonnull align 8 dereferenceable(40) %97, i32 noundef 0, i32 noundef %89)
          to label %105 unwind label %106

105:                                              ; preds = %104
  invoke void @_ZN11xercesc_2_75Match9setEndPosEii(ptr noundef nonnull align 8 dereferenceable(40) %97, i32 noundef 0, i32 noundef %99)
          to label %108 unwind label %106

106:                                              ; preds = %109, %110, %105, %104, %93
  %107 = landingpad { ptr, i32 }
          cleanup
  br label %250

108:                                              ; preds = %105, %102
  br i1 %52, label %122, label %109

109:                                              ; preds = %108
  invoke void @_ZN11xercesc_2_715BaseRefVectorOfINS_5MatchEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef 1)
          to label %110 unwind label %106

110:                                              ; preds = %109
  %111 = load ptr, ptr %90, align 8, !tbaa !208
  %112 = load i32, ptr %91, align 4, !tbaa !210
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds ptr, ptr %111, i64 %113
  store ptr %96, ptr %114, align 8, !tbaa !206
  %115 = add i32 %112, 1
  store i32 %115, ptr %91, align 4, !tbaa !210
  %116 = load ptr, ptr %7, align 8, !tbaa !116
  %117 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %116)
          to label %118 unwind label %106

118:                                              ; preds = %110
  invoke void @_ZN11xercesc_2_75MatchC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %117, ptr noundef nonnull align 8 dereferenceable(40) %97)
          to label %119 unwind label %120

119:                                              ; preds = %118
  store i8 1, ptr %6, align 8, !tbaa !86
  store ptr %117, ptr %30, align 8, !tbaa !98
  br label %122

120:                                              ; preds = %118
  %121 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %117, ptr noundef %116) #20
  br label %250

122:                                              ; preds = %119, %108
  %123 = phi ptr [ %117, %119 ], [ %97, %108 ]
  %124 = phi ptr [ %117, %119 ], [ %96, %108 ]
  %125 = icmp eq i32 %95, %94
  br i1 %125, label %126, label %161

126:                                              ; preds = %122
  %127 = icmp eq i32 %95, %48
  br i1 %127, label %128, label %130

128:                                              ; preds = %126
  %129 = add nsw i32 %95, -1
  br label %184

130:                                              ; preds = %126
  %131 = load ptr, ptr %7, align 8, !tbaa !116
  %132 = load ptr, ptr %131, align 8, !tbaa !94
  %133 = getelementptr inbounds ptr, ptr %132, i64 2
  %134 = load ptr, ptr %133, align 8
  %135 = invoke noundef ptr %134(ptr noundef nonnull align 8 dereferenceable(8) %131, i64 noundef 2)
          to label %136 unwind label %154

136:                                              ; preds = %130
  store i16 0, ptr %135, align 2, !tbaa !82
  %137 = load ptr, ptr %92, align 8, !tbaa !120
  %138 = icmp eq ptr %137, null
  br i1 %138, label %156, label %139

139:                                              ; preds = %136
  %140 = load i16, ptr %137, align 2, !tbaa !82
  %141 = icmp eq i16 %140, 0
  br i1 %141, label %142, label %153

142:                                              ; preds = %139, %147
  %143 = phi i16 [ %150, %147 ], [ %140, %139 ]
  %144 = phi ptr [ %149, %147 ], [ @_ZN11xercesc_2_717RegularExpression9WT_IGNOREE, %139 ]
  %145 = phi ptr [ %148, %147 ], [ %137, %139 ]
  %146 = icmp eq i16 %143, 0
  br i1 %146, label %156, label %147

147:                                              ; preds = %142
  %148 = getelementptr inbounds i16, ptr %145, i64 1
  %149 = getelementptr inbounds i16, ptr %144, i64 1
  %150 = load i16, ptr %148, align 2, !tbaa !82
  %151 = load i16, ptr %149, align 2, !tbaa !82
  %152 = icmp eq i16 %150, %151
  br i1 %152, label %142, label %153, !llvm.loop !211

153:                                              ; preds = %147, %139
  invoke void @_ZN11xercesc_2_715BaseRefVectorOfItE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %9, i32 noundef 1)
          to label %174 unwind label %154

154:                                              ; preds = %173, %153, %171, %161, %156, %130
  %155 = landingpad { ptr, i32 }
          cleanup
  br label %250

156:                                              ; preds = %142, %136
  %157 = load ptr, ptr %7, align 8, !tbaa !116
  %158 = load ptr, ptr %157, align 8, !tbaa !94
  %159 = getelementptr inbounds ptr, ptr %158, i64 3
  %160 = load ptr, ptr %159, align 8
  invoke void %160(ptr noundef nonnull align 8 dereferenceable(8) %157, ptr noundef nonnull %135)
          to label %181 unwind label %154

161:                                              ; preds = %122
  %162 = load ptr, ptr %7, align 8, !tbaa !116
  %163 = sub i32 %94, %95
  %164 = add i32 %163, 1
  %165 = sext i32 %164 to i64
  %166 = shl nsw i64 %165, 1
  %167 = load ptr, ptr %162, align 8, !tbaa !94
  %168 = getelementptr inbounds ptr, ptr %167, i64 2
  %169 = load ptr, ptr %168, align 8
  %170 = invoke noundef ptr %169(ptr noundef nonnull align 8 dereferenceable(8) %162, i64 noundef %166)
          to label %171 unwind label %154

171:                                              ; preds = %161
  %172 = load ptr, ptr %7, align 8, !tbaa !116
  invoke void @_ZN11xercesc_2_79XMLString9subStringEPtPKtiiPNS_13MemoryManagerE(ptr noundef %170, ptr noundef %1, i32 noundef %95, i32 noundef %94, ptr noundef %172)
          to label %173 unwind label %154

173:                                              ; preds = %171
  invoke void @_ZN11xercesc_2_715BaseRefVectorOfItE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %9, i32 noundef 1)
          to label %174 unwind label %154

174:                                              ; preds = %173, %153
  %175 = phi ptr [ %135, %153 ], [ %170, %173 ]
  %176 = load ptr, ptr %14, align 8, !tbaa !204
  %177 = load i32, ptr %12, align 4, !tbaa !202
  %178 = zext i32 %177 to i64
  %179 = getelementptr inbounds ptr, ptr %176, i64 %178
  store ptr %175, ptr %179, align 8, !tbaa !206
  %180 = add i32 %177, 1
  store i32 %180, ptr %12, align 4, !tbaa !202
  br label %181

181:                                              ; preds = %174, %156
  %182 = add nsw i32 %99, -1
  %183 = tail call i32 @llvm.smax.i32(i32 %94, i32 %182)
  br label %184

184:                                              ; preds = %128, %181, %100
  %185 = phi ptr [ %97, %100 ], [ %123, %181 ], [ %123, %128 ]
  %186 = phi ptr [ %96, %100 ], [ %124, %181 ], [ %124, %128 ]
  %187 = phi i32 [ %95, %100 ], [ %99, %181 ], [ %129, %128 ]
  %188 = phi i32 [ %94, %100 ], [ %183, %181 ], [ %94, %128 ]
  %189 = phi i1 [ true, %100 ], [ true, %181 ], [ false, %128 ]
  br i1 %189, label %190, label %193

190:                                              ; preds = %184
  %191 = add nsw i32 %188, 1
  %192 = icmp slt i32 %188, %3
  br i1 %192, label %93, label %193, !llvm.loop !212

193:                                              ; preds = %190, %184, %84
  %194 = phi i32 [ %2, %84 ], [ %187, %184 ], [ %187, %190 ]
  %195 = phi i32 [ %2, %84 ], [ %191, %190 ], [ %188, %184 ]
  %196 = add nsw i32 %194, 1
  %197 = icmp eq i32 %195, %196
  %198 = load ptr, ptr %7, align 8, !tbaa !116
  br i1 %197, label %199, label %207

199:                                              ; preds = %193
  %200 = load ptr, ptr %198, align 8, !tbaa !94
  %201 = getelementptr inbounds ptr, ptr %200, i64 2
  %202 = load ptr, ptr %201, align 8
  %203 = invoke noundef ptr %202(ptr noundef nonnull align 8 dereferenceable(8) %198, i64 noundef 2)
          to label %204 unwind label %205

204:                                              ; preds = %199
  store i16 0, ptr %203, align 2, !tbaa !82
  br label %218

205:                                              ; preds = %237, %244, %216, %207, %199
  %206 = landingpad { ptr, i32 }
          cleanup
  br label %250

207:                                              ; preds = %193
  %208 = add nsw i32 %48, 1
  %209 = sub i32 %208, %194
  %210 = sext i32 %209 to i64
  %211 = shl nsw i64 %210, 1
  %212 = load ptr, ptr %198, align 8, !tbaa !94
  %213 = getelementptr inbounds ptr, ptr %212, i64 2
  %214 = load ptr, ptr %213, align 8
  %215 = invoke noundef ptr %214(ptr noundef nonnull align 8 dereferenceable(8) %198, i64 noundef %211)
          to label %216 unwind label %205

216:                                              ; preds = %207
  %217 = load ptr, ptr %7, align 8, !tbaa !116
  invoke void @_ZN11xercesc_2_79XMLString9subStringEPtPKtiiPNS_13MemoryManagerE(ptr noundef %215, ptr noundef %1, i32 noundef %194, i32 noundef %48, ptr noundef %217)
          to label %218 unwind label %205

218:                                              ; preds = %216, %204
  %219 = phi ptr [ %203, %204 ], [ %215, %216 ]
  %220 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 7
  %221 = load ptr, ptr %220, align 8, !tbaa !120
  %222 = icmp eq ptr %221, null
  br i1 %222, label %244, label %223

223:                                              ; preds = %218
  %224 = load i16, ptr %221, align 2, !tbaa !82
  %225 = icmp eq i16 %224, 0
  br i1 %225, label %226, label %237

226:                                              ; preds = %223, %231
  %227 = phi i16 [ %234, %231 ], [ %224, %223 ]
  %228 = phi ptr [ %233, %231 ], [ @_ZN11xercesc_2_717RegularExpression9WT_IGNOREE, %223 ]
  %229 = phi ptr [ %232, %231 ], [ %221, %223 ]
  %230 = icmp eq i16 %227, 0
  br i1 %230, label %244, label %231

231:                                              ; preds = %226
  %232 = getelementptr inbounds i16, ptr %229, i64 1
  %233 = getelementptr inbounds i16, ptr %228, i64 1
  %234 = load i16, ptr %232, align 2, !tbaa !82
  %235 = load i16, ptr %233, align 2, !tbaa !82
  %236 = icmp eq i16 %234, %235
  br i1 %236, label %226, label %237, !llvm.loop !211

237:                                              ; preds = %231, %223
  invoke void @_ZN11xercesc_2_715BaseRefVectorOfItE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %9, i32 noundef 1)
          to label %238 unwind label %205

238:                                              ; preds = %237
  %239 = load ptr, ptr %14, align 8, !tbaa !204
  %240 = load i32, ptr %12, align 4, !tbaa !202
  %241 = zext i32 %240 to i64
  %242 = getelementptr inbounds ptr, ptr %239, i64 %241
  store ptr %219, ptr %242, align 8, !tbaa !206
  %243 = add i32 %240, 1
  store i32 %243, ptr %12, align 4, !tbaa !202
  br label %249

244:                                              ; preds = %226, %218
  %245 = load ptr, ptr %7, align 8, !tbaa !116
  %246 = load ptr, ptr %245, align 8, !tbaa !94
  %247 = getelementptr inbounds ptr, ptr %246, i64 3
  %248 = load ptr, ptr %247, align 8
  invoke void %248(ptr noundef nonnull align 8 dereferenceable(8) %245, ptr noundef %219)
          to label %249 unwind label %205

249:                                              ; preds = %238, %244
  call void @_ZN11xercesc_2_717RegularExpression7ContextD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %6) #20
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #20
  ret ptr %9

250:                                              ; preds = %68, %70, %106, %120, %154, %205, %66
  %251 = phi { ptr, i32 } [ %67, %66 ], [ %69, %68 ], [ %71, %70 ], [ %206, %205 ], [ %155, %154 ], [ %121, %120 ], [ %107, %106 ]
  call void @_ZN11xercesc_2_717RegularExpression7ContextD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %6) #20
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #20
  br label %252

252:                                              ; preds = %250, %64
  %253 = phi { ptr, i32 } [ %251, %250 ], [ %65, %64 ]
  resume { ptr, i32 } %253
}

declare void @_ZN11xercesc_2_75MatchC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #1

declare void @_ZN11xercesc_2_79XMLString9subStringEPtPKtiiPNS_13MemoryManagerE(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_717RegularExpression7replaceEPKcS2_(ptr nocapture noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !81 {
  %4 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %5 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %6 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 14
  %7 = load ptr, ptr %6, align 8, !tbaa !116
  %8 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKcPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %7)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #20
  %9 = load ptr, ptr %6, align 8, !tbaa !116
  store ptr %8, ptr %4, align 8, !tbaa !117
  %10 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %4, i64 0, i32 1
  store ptr %9, ptr %10, align 8, !tbaa !119
  %11 = invoke noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKcPNS_13MemoryManagerE(ptr noundef %2, ptr noundef %9)
          to label %12 unwind label %34

12:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #20
  %13 = load ptr, ptr %6, align 8, !tbaa !116
  store ptr %11, ptr %5, align 8, !tbaa !117
  %14 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %5, i64 0, i32 1
  store ptr %13, ptr %14, align 8, !tbaa !119
  %15 = icmp eq ptr %8, null
  br i1 %15, label %30, label %16

16:                                               ; preds = %12
  %17 = load i16, ptr %8, align 2, !tbaa !82
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %30, label %19

19:                                               ; preds = %16, %19
  %20 = phi ptr [ %21, %19 ], [ %8, %16 ]
  %21 = getelementptr inbounds i16, ptr %20, i64 1
  %22 = load i16, ptr %21, align 2, !tbaa !82
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %24, label %19, !llvm.loop !129

24:                                               ; preds = %19
  %25 = ptrtoint ptr %21 to i64
  %26 = ptrtoint ptr %8 to i64
  %27 = sub i64 %25, %26
  %28 = lshr exact i64 %27, 1
  %29 = trunc i64 %28 to i32
  br label %30

30:                                               ; preds = %12, %16, %24
  %31 = phi i32 [ %29, %24 ], [ 0, %16 ], [ 0, %12 ]
  %32 = invoke noundef ptr @_ZN11xercesc_2_717RegularExpression7replaceEPKtS2_ii(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %8, ptr noundef %11, i32 noundef 0, i32 noundef %31)
          to label %33 unwind label %36

33:                                               ; preds = %30
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #20
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #20
  ret ptr %32

34:                                               ; preds = %3
  %35 = landingpad { ptr, i32 }
          cleanup
  br label %38

36:                                               ; preds = %30
  %37 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #20
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi { ptr, i32 } [ %37, %36 ], [ %35, %34 ]
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #20
  resume { ptr, i32 } %39
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_717RegularExpression7replaceEPKtS2_ii(ptr nocapture noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !81 {
  %6 = alloca %"class.xercesc_2_7::XMLBuffer", align 8
  %7 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 14
  %8 = load ptr, ptr %7, align 8, !tbaa !116
  %9 = load i16, ptr @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, align 2, !tbaa !82
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %21, label %11

11:                                               ; preds = %5, %11
  %12 = phi ptr [ %13, %11 ], [ @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, %5 ]
  %13 = getelementptr inbounds i16, ptr %12, i64 1
  %14 = load i16, ptr %13, align 2, !tbaa !82
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %16, label %11, !llvm.loop !129

16:                                               ; preds = %11
  %17 = ptrtoint ptr %13 to i64
  %18 = sub i64 %17, ptrtoint (ptr @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE to i64)
  %19 = lshr exact i64 %18, 1
  %20 = trunc i64 %19 to i32
  br label %21

21:                                               ; preds = %5, %16
  %22 = phi i32 [ %20, %16 ], [ 0, %5 ]
  %23 = tail call noundef zeroext i1 @_ZN11xercesc_2_717RegularExpression7matchesEPKtiiPNS_5MatchEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, i32 noundef 0, i32 noundef %22, ptr noundef null, ptr noundef %8)
  br i1 %23, label %24, label %30

24:                                               ; preds = %21
  %25 = tail call ptr @__cxa_allocate_exception(i64 48) #20
  %26 = load ptr, ptr %7, align 8, !tbaa !116
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %25, ptr noundef nonnull @.str, i32 noundef 813, i32 noundef 296, ptr noundef %26)
          to label %27 unwind label %28

27:                                               ; preds = %24
  tail call void @__cxa_throw(ptr nonnull %25, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #22
  unreachable

28:                                               ; preds = %24
  %29 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %25) #20
  br label %226

30:                                               ; preds = %21
  %31 = load ptr, ptr %7, align 8, !tbaa !116
  %32 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %31)
  %33 = load ptr, ptr %7, align 8, !tbaa !116
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_715BaseRefVectorOfINS_5MatchEEE, i64 0, inrange i32 0, i64 2), ptr %32, align 8, !tbaa !94
  %34 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %32, i64 0, i32 1
  store i8 1, ptr %34, align 8, !tbaa !213
  %35 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %32, i64 0, i32 2
  store i32 0, ptr %35, align 4, !tbaa !210
  %36 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %32, i64 0, i32 3
  store i32 10, ptr %36, align 8, !tbaa !214
  %37 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %32, i64 0, i32 4
  store ptr null, ptr %37, align 8, !tbaa !208
  %38 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %32, i64 0, i32 5
  store ptr %33, ptr %38, align 8, !tbaa !215
  %39 = load ptr, ptr %33, align 8, !tbaa !94
  %40 = getelementptr inbounds ptr, ptr %39, i64 2
  %41 = load ptr, ptr %40, align 8
  %42 = invoke noundef ptr %41(ptr noundef nonnull align 8 dereferenceable(8) %33, i64 noundef 80)
          to label %43 unwind label %83

43:                                               ; preds = %30
  store ptr %42, ptr %37, align 8, !tbaa !208
  br label %44

44:                                               ; preds = %43, %44
  %45 = phi i64 [ 0, %43 ], [ %48, %44 ]
  %46 = load ptr, ptr %37, align 8, !tbaa !208
  %47 = getelementptr inbounds ptr, ptr %46, i64 %45
  store ptr null, ptr %47, align 8, !tbaa !206
  %48 = add nuw nsw i64 %45, 1
  %49 = icmp eq i64 %48, 10
  br i1 %49, label %50, label %44, !llvm.loop !216

50:                                               ; preds = %44
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_5MatchEEE, i64 0, inrange i32 0, i64 2), ptr %32, align 8, !tbaa !94
  %51 = invoke noundef ptr @_ZN11xercesc_2_717RegularExpression8tokenizeEPKtiiPNS_11RefVectorOfINS_5MatchEEE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, i32 noundef %3, i32 noundef %4, ptr noundef nonnull %32)
          to label %52 unwind label %85

52:                                               ; preds = %50
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #20
  %53 = load ptr, ptr %7, align 8, !tbaa !116
  store i32 0, ptr %6, align 8, !tbaa !217
  %54 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %6, i64 0, i32 1
  store i32 1023, ptr %54, align 4, !tbaa !219
  %55 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %6, i64 0, i32 2
  store i32 0, ptr %55, align 8, !tbaa !220
  %56 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %6, i64 0, i32 3
  store i8 0, ptr %56, align 4, !tbaa !221
  %57 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %6, i64 0, i32 4
  store ptr %53, ptr %57, align 8, !tbaa !222
  %58 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %6, i64 0, i32 5
  %59 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %6, i64 0, i32 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %58, i8 0, i64 16, i1 false)
  %60 = load ptr, ptr %53, align 8, !tbaa !94
  %61 = getelementptr inbounds ptr, ptr %60, i64 2
  %62 = load ptr, ptr %61, align 8
  %63 = invoke noundef ptr %62(ptr noundef nonnull align 8 dereferenceable(8) %53, i64 noundef 2048)
          to label %64 unwind label %87

64:                                               ; preds = %52
  store ptr %63, ptr %59, align 8, !tbaa !223
  store i16 0, ptr %63, align 2, !tbaa !82
  %65 = load i32, ptr %35, align 4, !tbaa !210
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %91, label %67

67:                                               ; preds = %64
  %68 = invoke noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_5MatchEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %32, i32 noundef 0)
          to label %69 unwind label %89

69:                                               ; preds = %67
  %70 = getelementptr inbounds %"class.xercesc_2_7::Match", ptr %68, i64 0, i32 1
  %71 = load i32, ptr %70, align 8, !tbaa !224
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %69
  %74 = tail call ptr @__cxa_allocate_exception(i64 48) #20
  %75 = getelementptr inbounds %"class.xercesc_2_7::Match", ptr %68, i64 0, i32 5
  %76 = load ptr, ptr %75, align 8, !tbaa !198
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %74, ptr noundef nonnull @.str.1, i32 noundef 108, i32 noundef 282, ptr noundef %76)
          to label %77 unwind label %79

77:                                               ; preds = %73
  invoke void @__cxa_throw(ptr nonnull %74, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #22
          to label %78 unwind label %89

78:                                               ; preds = %77
  unreachable

79:                                               ; preds = %73
  %80 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %74) #20
  br label %204

81:                                               ; preds = %69
  %82 = icmp eq i32 %71, 1
  br label %91

83:                                               ; preds = %30
  %84 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef nonnull %32, ptr noundef %31) #20
  br label %226

85:                                               ; preds = %50
  %86 = landingpad { ptr, i32 }
          cleanup
  br label %221

87:                                               ; preds = %52
  %88 = landingpad { ptr, i32 }
          cleanup
  br label %214

89:                                               ; preds = %77, %67
  %90 = landingpad { ptr, i32 }
          cleanup
  br label %204

91:                                               ; preds = %81, %64
  %92 = phi i1 [ %82, %81 ], [ true, %64 ]
  %93 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %51, i64 0, i32 2
  %94 = load i32, ptr %93, align 4, !tbaa !202
  %95 = load ptr, ptr %7, align 8, !tbaa !116
  %96 = icmp eq ptr %2, null
  br i1 %96, label %118, label %97

97:                                               ; preds = %91
  %98 = load i16, ptr %2, align 2, !tbaa !82
  %99 = icmp eq i16 %98, 0
  br i1 %99, label %111, label %100

100:                                              ; preds = %97, %100
  %101 = phi ptr [ %102, %100 ], [ %2, %97 ]
  %102 = getelementptr inbounds i16, ptr %101, i64 1
  %103 = load i16, ptr %102, align 2, !tbaa !82
  %104 = icmp eq i16 %103, 0
  br i1 %104, label %105, label %100, !llvm.loop !129

105:                                              ; preds = %100
  %106 = ptrtoint ptr %102 to i64
  %107 = ptrtoint ptr %2 to i64
  %108 = sub i64 %106, %107
  %109 = add i64 %108, 2
  %110 = and i64 %109, 8589934590
  br label %111

111:                                              ; preds = %105, %97
  %112 = phi i64 [ %110, %105 ], [ 2, %97 ]
  %113 = load ptr, ptr %95, align 8, !tbaa !94
  %114 = getelementptr inbounds ptr, ptr %113, i64 2
  %115 = load ptr, ptr %114, align 8
  %116 = invoke noundef ptr %115(ptr noundef nonnull align 8 dereferenceable(8) %95, i64 noundef %112)
          to label %117 unwind label %129

117:                                              ; preds = %111
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %116, ptr nonnull align 2 %2, i64 %112, i1 false)
  br label %118

118:                                              ; preds = %91, %117
  %119 = phi ptr [ %116, %117 ], [ null, %91 ]
  %120 = icmp sgt i32 %94, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %118
  %122 = add nsw i32 %94, -1
  br label %131

123:                                              ; preds = %152, %118
  %124 = phi ptr [ %119, %118 ], [ %153, %152 ]
  %125 = load ptr, ptr %7, align 8, !tbaa !116
  %126 = load ptr, ptr %125, align 8, !tbaa !94
  %127 = getelementptr inbounds ptr, ptr %126, i64 3
  %128 = load ptr, ptr %127, align 8
  invoke void %128(ptr noundef nonnull align 8 dereferenceable(8) %125, ptr noundef %124)
          to label %156 unwind label %129

129:                                              ; preds = %177, %111, %123
  %130 = landingpad { ptr, i32 }
          cleanup
  br label %204

131:                                              ; preds = %121, %152
  %132 = phi i32 [ 0, %121 ], [ %154, %152 ]
  %133 = phi ptr [ %119, %121 ], [ %153, %152 ]
  %134 = invoke noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %51, i32 noundef %132)
          to label %135 unwind label %148

135:                                              ; preds = %131
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef %134)
          to label %136 unwind label %148

136:                                              ; preds = %135
  %137 = icmp eq i32 %132, %122
  br i1 %137, label %152, label %138

138:                                              ; preds = %136
  br i1 %92, label %150, label %139

139:                                              ; preds = %138
  %140 = load ptr, ptr %7, align 8, !tbaa !116
  %141 = load ptr, ptr %140, align 8, !tbaa !94
  %142 = getelementptr inbounds ptr, ptr %141, i64 3
  %143 = load ptr, ptr %142, align 8
  invoke void %143(ptr noundef nonnull align 8 dereferenceable(8) %140, ptr noundef %133)
          to label %144 unwind label %148

144:                                              ; preds = %139
  %145 = invoke noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_5MatchEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %32, i32 noundef %132)
          to label %146 unwind label %148

146:                                              ; preds = %144
  %147 = invoke noundef ptr @_ZN11xercesc_2_717RegularExpression8subInExpEPKtS2_PKNS_5MatchE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %2, ptr noundef %1, ptr noundef %145)
          to label %150 unwind label %148

148:                                              ; preds = %150, %146, %144, %139, %135, %131
  %149 = landingpad { ptr, i32 }
          cleanup
  br label %204

150:                                              ; preds = %146, %138
  %151 = phi ptr [ %133, %138 ], [ %147, %146 ]
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef %151)
          to label %152 unwind label %148

152:                                              ; preds = %136, %150
  %153 = phi ptr [ %151, %150 ], [ %133, %136 ]
  %154 = add nuw nsw i32 %132, 1
  %155 = icmp eq i32 %154, %94
  br i1 %155, label %123, label %131, !llvm.loop !225

156:                                              ; preds = %123
  %157 = load ptr, ptr %59, align 8, !tbaa !223
  %158 = load i32, ptr %6, align 8, !tbaa !217
  %159 = zext i32 %158 to i64
  %160 = getelementptr inbounds i16, ptr %157, i64 %159
  store i16 0, ptr %160, align 2, !tbaa !82
  %161 = load ptr, ptr %7, align 8, !tbaa !116
  %162 = icmp eq ptr %157, null
  br i1 %162, label %184, label %163

163:                                              ; preds = %156
  %164 = load i16, ptr %157, align 2, !tbaa !82
  %165 = icmp eq i16 %164, 0
  br i1 %165, label %177, label %166

166:                                              ; preds = %163, %166
  %167 = phi ptr [ %168, %166 ], [ %157, %163 ]
  %168 = getelementptr inbounds i16, ptr %167, i64 1
  %169 = load i16, ptr %168, align 2, !tbaa !82
  %170 = icmp eq i16 %169, 0
  br i1 %170, label %171, label %166, !llvm.loop !129

171:                                              ; preds = %166
  %172 = ptrtoint ptr %168 to i64
  %173 = ptrtoint ptr %157 to i64
  %174 = sub i64 %172, %173
  %175 = add i64 %174, 2
  %176 = and i64 %175, 8589934590
  br label %177

177:                                              ; preds = %171, %163
  %178 = phi i64 [ %176, %171 ], [ 2, %163 ]
  %179 = load ptr, ptr %161, align 8, !tbaa !94
  %180 = getelementptr inbounds ptr, ptr %179, i64 2
  %181 = load ptr, ptr %180, align 8
  %182 = invoke noundef ptr %181(ptr noundef nonnull align 8 dereferenceable(8) %161, i64 noundef %178)
          to label %183 unwind label %129

183:                                              ; preds = %177
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %182, ptr nonnull align 2 %157, i64 %178, i1 false)
  br label %184

184:                                              ; preds = %183, %156
  %185 = phi ptr [ %182, %183 ], [ null, %156 ]
  %186 = load ptr, ptr %57, align 8, !tbaa !222
  %187 = load ptr, ptr %59, align 8, !tbaa !223
  %188 = load ptr, ptr %186, align 8, !tbaa !94
  %189 = getelementptr inbounds ptr, ptr %188, i64 3
  %190 = load ptr, ptr %189, align 8
  invoke void %190(ptr noundef nonnull align 8 dereferenceable(8) %186, ptr noundef %187)
          to label %194 unwind label %191

191:                                              ; preds = %184
  %192 = landingpad { ptr, i32 }
          catch ptr null
  %193 = extractvalue { ptr, i32 } %192, 0
  call void @__clang_call_terminate(ptr %193) #21
  unreachable

194:                                              ; preds = %184
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #20
  %195 = icmp eq ptr %51, null
  br i1 %195, label %200, label %196

196:                                              ; preds = %194
  %197 = load ptr, ptr %51, align 8, !tbaa !94
  %198 = getelementptr inbounds ptr, ptr %197, i64 1
  %199 = load ptr, ptr %198, align 8
  call void %199(ptr noundef nonnull align 8 dereferenceable(40) %51) #20
  br label %200

200:                                              ; preds = %196, %194
  %201 = load ptr, ptr %32, align 8, !tbaa !94
  %202 = getelementptr inbounds ptr, ptr %201, i64 1
  %203 = load ptr, ptr %202, align 8
  call void %203(ptr noundef nonnull align 8 dereferenceable(40) %32) #20
  ret ptr %185

204:                                              ; preds = %89, %79, %129, %148
  %205 = phi { ptr, i32 } [ %149, %148 ], [ %130, %129 ], [ %90, %89 ], [ %80, %79 ]
  %206 = load ptr, ptr %57, align 8, !tbaa !222
  %207 = load ptr, ptr %59, align 8, !tbaa !223
  %208 = load ptr, ptr %206, align 8, !tbaa !94
  %209 = getelementptr inbounds ptr, ptr %208, i64 3
  %210 = load ptr, ptr %209, align 8
  invoke void %210(ptr noundef nonnull align 8 dereferenceable(8) %206, ptr noundef %207)
          to label %214 unwind label %211

211:                                              ; preds = %204
  %212 = landingpad { ptr, i32 }
          catch ptr null
  %213 = extractvalue { ptr, i32 } %212, 0
  call void @__clang_call_terminate(ptr %213) #21
  unreachable

214:                                              ; preds = %204, %87
  %215 = phi { ptr, i32 } [ %88, %87 ], [ %205, %204 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #20
  %216 = icmp eq ptr %51, null
  br i1 %216, label %221, label %217

217:                                              ; preds = %214
  %218 = load ptr, ptr %51, align 8, !tbaa !94
  %219 = getelementptr inbounds ptr, ptr %218, i64 1
  %220 = load ptr, ptr %219, align 8
  call void %220(ptr noundef nonnull align 8 dereferenceable(40) %51) #20
  br label %221

221:                                              ; preds = %85, %214, %217
  %222 = phi { ptr, i32 } [ %86, %85 ], [ %215, %214 ], [ %215, %217 ]
  %223 = load ptr, ptr %32, align 8, !tbaa !94
  %224 = getelementptr inbounds ptr, ptr %223, i64 1
  %225 = load ptr, ptr %224, align 8
  call void %225(ptr noundef nonnull align 8 dereferenceable(40) %32) #20
  br label %226

226:                                              ; preds = %83, %221, %28
  %227 = phi { ptr, i32 } [ %29, %28 ], [ %222, %221 ], [ %84, %83 ]
  resume { ptr, i32 } %227
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_717RegularExpression7replaceEPKcS2_ii(ptr nocapture noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !81 {
  %6 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %7 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %8 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 14
  %9 = load ptr, ptr %8, align 8, !tbaa !116
  %10 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKcPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %9)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #20
  %11 = load ptr, ptr %8, align 8, !tbaa !116
  store ptr %10, ptr %6, align 8, !tbaa !117
  %12 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %6, i64 0, i32 1
  store ptr %11, ptr %12, align 8, !tbaa !119
  %13 = invoke noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKcPNS_13MemoryManagerE(ptr noundef %2, ptr noundef %11)
          to label %14 unwind label %19

14:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #20
  %15 = load ptr, ptr %8, align 8, !tbaa !116
  store ptr %13, ptr %7, align 8, !tbaa !117
  %16 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %7, i64 0, i32 1
  store ptr %15, ptr %16, align 8, !tbaa !119
  %17 = invoke noundef ptr @_ZN11xercesc_2_717RegularExpression7replaceEPKtS2_ii(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %10, ptr noundef %13, i32 noundef %3, i32 noundef %4)
          to label %18 unwind label %21

18:                                               ; preds = %14
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #20
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #20
  ret ptr %17

19:                                               ; preds = %5
  %20 = landingpad { ptr, i32 }
          cleanup
  br label %23

21:                                               ; preds = %14
  %22 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #20
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi { ptr, i32 } [ %22, %21 ], [ %20, %19 ]
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #20
  resume { ptr, i32 } %24
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_717RegularExpression7replaceEPKtS2_(ptr nocapture noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 align 2 !prof !81 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %19, label %5

5:                                                ; preds = %3
  %6 = load i16, ptr %1, align 2, !tbaa !82
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %19, label %8

8:                                                ; preds = %5, %8
  %9 = phi ptr [ %10, %8 ], [ %1, %5 ]
  %10 = getelementptr inbounds i16, ptr %9, i64 1
  %11 = load i16, ptr %10, align 2, !tbaa !82
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %13, label %8, !llvm.loop !129

13:                                               ; preds = %8
  %14 = ptrtoint ptr %10 to i64
  %15 = ptrtoint ptr %1 to i64
  %16 = sub i64 %14, %15
  %17 = lshr exact i64 %16, 1
  %18 = trunc i64 %17 to i32
  br label %19

19:                                               ; preds = %3, %5, %13
  %20 = phi i32 [ %18, %13 ], [ 0, %5 ], [ 0, %3 ]
  %21 = tail call noundef ptr @_ZN11xercesc_2_717RegularExpression7replaceEPKtS2_ii(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef %2, i32 noundef 0, i32 noundef %20)
  ret ptr %21
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !81 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !94
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #20
  resume { ptr, i32 } %8
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_5MatchEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !81 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !210
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #20
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !215
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.2, i32 noundef 249, i32 noundef 116, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #22
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #20
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !208
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !206
  ret ptr %18
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #7 comdat align 2 !prof !226 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %30, label %4, !prof !227

4:                                                ; preds = %2
  %5 = load i16, ptr %1, align 2, !tbaa !82
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %30, label %7, !prof !228

7:                                                ; preds = %4, %7
  %8 = phi i32 [ %13, %7 ], [ 0, %4 ]
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds i16, ptr %1, i64 %9
  %11 = load i16, ptr %10, align 2, !tbaa !82
  %12 = icmp eq i16 %11, 0
  %13 = add i32 %8, 1
  br i1 %12, label %14, label %7, !prof !229, !llvm.loop !230

14:                                               ; preds = %7
  %15 = load i32, ptr %0, align 8, !tbaa !217
  %16 = add i32 %15, %8
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !219
  %19 = icmp ult i32 %16, %18
  br i1 %19, label %21, label %20, !prof !231

20:                                               ; preds = %14
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %8)
  br label %21

21:                                               ; preds = %20, %14
  %22 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %23 = load ptr, ptr %22, align 8, !tbaa !223
  %24 = load i32, ptr %0, align 8, !tbaa !217
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i16, ptr %23, i64 %25
  %27 = shl nuw nsw i64 %9, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %26, ptr nonnull align 2 %1, i64 %27, i1 false), !prof !232
  %28 = load i32, ptr %0, align 8, !tbaa !217
  %29 = add i32 %28, %8
  store i32 %29, ptr %0, align 8, !tbaa !217
  br label %30

30:                                               ; preds = %21, %4, %2
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 !prof !233 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !202
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !234

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #20
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !205
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.2, i32 noundef 249, i32 noundef 116, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #22
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #20
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !204
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !206
  ret ptr %18
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_717RegularExpression8subInExpEPKtS2_PKNS_5MatchE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(104) %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !81 {
  %5 = alloca %"class.xercesc_2_7::XMLBuffer", align 8
  %6 = alloca [2 x i16], align 2
  %7 = getelementptr inbounds %"class.xercesc_2_7::Match", ptr %3, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !224
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %4
  %11 = tail call ptr @__cxa_allocate_exception(i64 48) #20
  %12 = getelementptr inbounds %"class.xercesc_2_7::Match", ptr %3, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !198
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull @.str.1, i32 noundef 108, i32 noundef 282, ptr noundef %13)
          to label %14 unwind label %17

14:                                               ; preds = %10
  tail call void @__cxa_throw(ptr nonnull %11, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #22
  unreachable

15:                                               ; preds = %202, %17
  %16 = phi { ptr, i32 } [ %18, %17 ], [ %193, %202 ]
  resume { ptr, i32 } %16

17:                                               ; preds = %10
  %18 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %11) #20
  br label %15

19:                                               ; preds = %4
  %20 = icmp eq i32 %8, 1
  br i1 %20, label %21, label %45

21:                                               ; preds = %19
  %22 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 14
  %23 = load ptr, ptr %22, align 8, !tbaa !116
  %24 = icmp eq ptr %1, null
  br i1 %24, label %203, label %25

25:                                               ; preds = %21
  %26 = load i16, ptr %1, align 2, !tbaa !82
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %39, label %28

28:                                               ; preds = %25, %28
  %29 = phi ptr [ %30, %28 ], [ %1, %25 ]
  %30 = getelementptr inbounds i16, ptr %29, i64 1
  %31 = load i16, ptr %30, align 2, !tbaa !82
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %33, label %28, !llvm.loop !129

33:                                               ; preds = %28
  %34 = ptrtoint ptr %30 to i64
  %35 = ptrtoint ptr %1 to i64
  %36 = sub i64 %34, %35
  %37 = add i64 %36, 2
  %38 = and i64 %37, 8589934590
  br label %39

39:                                               ; preds = %33, %25
  %40 = phi i64 [ %38, %33 ], [ 2, %25 ]
  %41 = load ptr, ptr %23, align 8, !tbaa !94
  %42 = getelementptr inbounds ptr, ptr %41, i64 2
  %43 = load ptr, ptr %42, align 8
  %44 = tail call noundef ptr %43(ptr noundef nonnull align 8 dereferenceable(8) %23, i64 noundef %40)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %44, ptr nonnull align 2 %1, i64 %40, i1 false)
  br label %203

45:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #20
  %46 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 14
  %47 = load ptr, ptr %46, align 8, !tbaa !116
  store i32 0, ptr %5, align 8, !tbaa !217
  %48 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %5, i64 0, i32 1
  store i32 1023, ptr %48, align 4, !tbaa !219
  %49 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %5, i64 0, i32 2
  store i32 0, ptr %49, align 8, !tbaa !220
  %50 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %5, i64 0, i32 3
  store i8 0, ptr %50, align 4, !tbaa !221
  %51 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %5, i64 0, i32 4
  store ptr %47, ptr %51, align 8, !tbaa !222
  %52 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %5, i64 0, i32 5
  %53 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %5, i64 0, i32 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %52, i8 0, i64 16, i1 false)
  %54 = load ptr, ptr %47, align 8, !tbaa !94
  %55 = getelementptr inbounds ptr, ptr %54, i64 2
  %56 = load ptr, ptr %55, align 8
  %57 = tail call noundef ptr %56(ptr noundef nonnull align 8 dereferenceable(8) %47, i64 noundef 2048)
  store ptr %57, ptr %53, align 8, !tbaa !223
  store i16 0, ptr %57, align 2, !tbaa !82
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #20
  %58 = getelementptr inbounds [2 x i16], ptr %6, i64 0, i64 1
  store i16 0, ptr %58, align 2, !tbaa !82
  br label %59

59:                                               ; preds = %175, %45
  %60 = phi i8 [ 1, %45 ], [ %176, %175 ]
  %61 = phi ptr [ %1, %45 ], [ %178, %175 ]
  %62 = load i16, ptr %61, align 2, !tbaa !82
  switch i16 %62, label %153 [
    i16 0, label %63
    i16 36, label %91
  ]

63:                                               ; preds = %59
  %64 = load ptr, ptr %53, align 8, !tbaa !223
  %65 = load i32, ptr %5, align 8, !tbaa !217
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i16, ptr %64, i64 %66
  store i16 0, ptr %67, align 2, !tbaa !82
  %68 = load ptr, ptr %46, align 8, !tbaa !116
  %69 = icmp eq ptr %64, null
  br i1 %69, label %179, label %70

70:                                               ; preds = %63
  %71 = load i16, ptr %64, align 2, !tbaa !82
  %72 = icmp eq i16 %71, 0
  br i1 %72, label %84, label %73

73:                                               ; preds = %70, %73
  %74 = phi ptr [ %75, %73 ], [ %64, %70 ]
  %75 = getelementptr inbounds i16, ptr %74, i64 1
  %76 = load i16, ptr %75, align 2, !tbaa !82
  %77 = icmp eq i16 %76, 0
  br i1 %77, label %78, label %73, !llvm.loop !129

78:                                               ; preds = %73
  %79 = ptrtoint ptr %75 to i64
  %80 = ptrtoint ptr %64 to i64
  %81 = sub i64 %79, %80
  %82 = add i64 %81, 2
  %83 = and i64 %82, 8589934590
  br label %84

84:                                               ; preds = %78, %70
  %85 = phi i64 [ %83, %78 ], [ 2, %70 ]
  %86 = load ptr, ptr %68, align 8, !tbaa !94
  %87 = getelementptr inbounds ptr, ptr %86, i64 2
  %88 = load ptr, ptr %87, align 8
  %89 = invoke noundef ptr %88(ptr noundef nonnull align 8 dereferenceable(8) %68, i64 noundef %85)
          to label %90 unwind label %190

90:                                               ; preds = %84
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %89, ptr nonnull align 2 %64, i64 %85, i1 false)
  br label %179

91:                                               ; preds = %59
  %92 = and i8 %60, 1
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %153, label %94

94:                                               ; preds = %91
  %95 = getelementptr inbounds i16, ptr %61, i64 1
  %96 = load i16, ptr %95, align 2, !tbaa !82
  %97 = invoke noundef zeroext i1 @_ZN11xercesc_2_79XMLString7isDigitEt(i16 noundef zeroext %96)
          to label %98 unwind label %105

98:                                               ; preds = %94
  br i1 %97, label %111, label %99

99:                                               ; preds = %98
  %100 = call ptr @__cxa_allocate_exception(i64 48) #20
  %101 = load ptr, ptr %46, align 8, !tbaa !116
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %100, ptr noundef nonnull @.str, i32 noundef 1468, i32 noundef 297, ptr noundef %101)
          to label %102 unwind label %109

102:                                              ; preds = %99, %157, %117
  %103 = phi ptr [ %118, %117 ], [ %158, %157 ], [ %100, %99 ]
  invoke void @__cxa_throw(ptr nonnull %103, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #22
          to label %104 unwind label %107

104:                                              ; preds = %102
  unreachable

105:                                              ; preds = %94, %111, %168
  %106 = landingpad { ptr, i32 }
          cleanup
  br label %192

107:                                              ; preds = %102
  %108 = landingpad { ptr, i32 }
          cleanup
  br label %192

109:                                              ; preds = %99
  %110 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %100) #20
  br label %192

111:                                              ; preds = %98
  %112 = load i16, ptr %95, align 2, !tbaa !82
  store i16 %112, ptr %6, align 2, !tbaa !82
  %113 = load ptr, ptr %46, align 8, !tbaa !116
  %114 = invoke noundef i32 @_ZN11xercesc_2_79XMLString8parseIntEPKtPNS_13MemoryManagerE(ptr noundef nonnull %6, ptr noundef %113)
          to label %115 unwind label %105

115:                                              ; preds = %111
  %116 = icmp slt i32 %114, %8
  br i1 %116, label %122, label %117

117:                                              ; preds = %115
  %118 = call ptr @__cxa_allocate_exception(i64 48) #20
  %119 = load ptr, ptr %46, align 8, !tbaa !116
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %118, ptr noundef nonnull @.str, i32 noundef 1476, i32 noundef 297, ptr noundef %119)
          to label %102 unwind label %120

120:                                              ; preds = %117
  %121 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %118) #20
  br label %192

122:                                              ; preds = %115
  %123 = invoke noundef i32 @_ZNK11xercesc_2_75Match11getStartPosEi(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef %114)
          to label %124 unwind label %130

124:                                              ; preds = %122
  %125 = invoke noundef i32 @_ZNK11xercesc_2_75Match9getEndPosEi(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef %114)
          to label %126 unwind label %132

126:                                              ; preds = %124
  %127 = icmp slt i32 %123, %125
  br i1 %127, label %128, label %175

128:                                              ; preds = %126
  %129 = sext i32 %123 to i64
  br label %134

130:                                              ; preds = %122
  %131 = landingpad { ptr, i32 }
          cleanup
  br label %192

132:                                              ; preds = %124
  %133 = landingpad { ptr, i32 }
          cleanup
  br label %192

134:                                              ; preds = %128, %142
  %135 = phi i64 [ %129, %128 ], [ %148, %142 ]
  %136 = getelementptr inbounds i16, ptr %2, i64 %135
  %137 = load i16, ptr %136, align 2, !tbaa !82
  %138 = load i32, ptr %5, align 8, !tbaa !217
  %139 = load i32, ptr %48, align 4, !tbaa !219
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %141, label %142

141:                                              ; preds = %134
  invoke void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %5, i32 noundef 1)
          to label %142 unwind label %151

142:                                              ; preds = %141, %134
  %143 = load ptr, ptr %53, align 8, !tbaa !223
  %144 = load i32, ptr %5, align 8, !tbaa !217
  %145 = add i32 %144, 1
  store i32 %145, ptr %5, align 8, !tbaa !217
  %146 = zext i32 %144 to i64
  %147 = getelementptr inbounds i16, ptr %143, i64 %146
  store i16 %137, ptr %147, align 2, !tbaa !82
  %148 = add nsw i64 %135, 1
  %149 = trunc i64 %148 to i32
  %150 = icmp eq i32 %125, %149
  br i1 %150, label %175, label %134, !llvm.loop !235

151:                                              ; preds = %141
  %152 = landingpad { ptr, i32 }
          cleanup
  br label %192

153:                                              ; preds = %59, %91
  %154 = and i8 %60, 1
  %155 = icmp eq i8 %154, 0
  br i1 %155, label %156, label %162

156:                                              ; preds = %153
  switch i16 %62, label %157 [
    i16 92, label %175
    i16 36, label %164
  ]

157:                                              ; preds = %156
  %158 = call ptr @__cxa_allocate_exception(i64 48) #20
  %159 = load ptr, ptr %46, align 8, !tbaa !116
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %158, ptr noundef nonnull @.str, i32 noundef 1492, i32 noundef 297, ptr noundef %159)
          to label %102 unwind label %160

160:                                              ; preds = %157
  %161 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %158) #20
  br label %192

162:                                              ; preds = %153
  %163 = icmp eq i16 %62, 92
  br i1 %163, label %175, label %164

164:                                              ; preds = %156, %162
  %165 = load i32, ptr %5, align 8, !tbaa !217
  %166 = load i32, ptr %48, align 4, !tbaa !219
  %167 = icmp eq i32 %165, %166
  br i1 %167, label %168, label %169

168:                                              ; preds = %164
  invoke void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %5, i32 noundef 1)
          to label %169 unwind label %105

169:                                              ; preds = %168, %164
  %170 = load ptr, ptr %53, align 8, !tbaa !223
  %171 = load i32, ptr %5, align 8, !tbaa !217
  %172 = add i32 %171, 1
  store i32 %172, ptr %5, align 8, !tbaa !217
  %173 = zext i32 %171 to i64
  %174 = getelementptr inbounds i16, ptr %170, i64 %173
  store i16 %62, ptr %174, align 2, !tbaa !82
  br label %175

175:                                              ; preds = %142, %126, %156, %169, %162
  %176 = phi i8 [ 1, %169 ], [ 0, %162 ], [ 0, %156 ], [ %60, %126 ], [ %60, %142 ]
  %177 = phi ptr [ %61, %169 ], [ %61, %162 ], [ %61, %156 ], [ %95, %126 ], [ %95, %142 ]
  %178 = getelementptr inbounds i16, ptr %177, i64 1
  br label %59, !llvm.loop !236

179:                                              ; preds = %90, %63
  %180 = phi ptr [ %89, %90 ], [ null, %63 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #20
  %181 = load ptr, ptr %51, align 8, !tbaa !222
  %182 = load ptr, ptr %53, align 8, !tbaa !223
  %183 = load ptr, ptr %181, align 8, !tbaa !94
  %184 = getelementptr inbounds ptr, ptr %183, i64 3
  %185 = load ptr, ptr %184, align 8
  invoke void %185(ptr noundef nonnull align 8 dereferenceable(8) %181, ptr noundef %182)
          to label %189 unwind label %186

186:                                              ; preds = %179
  %187 = landingpad { ptr, i32 }
          catch ptr null
  %188 = extractvalue { ptr, i32 } %187, 0
  call void @__clang_call_terminate(ptr %188) #21
  unreachable

189:                                              ; preds = %179
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #20
  br label %203

190:                                              ; preds = %84
  %191 = landingpad { ptr, i32 }
          cleanup
  br label %192

192:                                              ; preds = %105, %107, %109, %120, %160, %132, %151, %130, %190
  %193 = phi { ptr, i32 } [ %191, %190 ], [ %121, %120 ], [ %110, %109 ], [ %161, %160 ], [ %131, %130 ], [ %152, %151 ], [ %133, %132 ], [ %106, %105 ], [ %108, %107 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #20
  %194 = load ptr, ptr %51, align 8, !tbaa !222
  %195 = load ptr, ptr %53, align 8, !tbaa !223
  %196 = load ptr, ptr %194, align 8, !tbaa !94
  %197 = getelementptr inbounds ptr, ptr %196, i64 3
  %198 = load ptr, ptr %197, align 8
  invoke void %198(ptr noundef nonnull align 8 dereferenceable(8) %194, ptr noundef %195)
          to label %202 unwind label %199

199:                                              ; preds = %192
  %200 = landingpad { ptr, i32 }
          catch ptr null
  %201 = extractvalue { ptr, i32 } %200, 0
  call void @__clang_call_terminate(ptr %201) #21
  unreachable

202:                                              ; preds = %192
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #20
  br label %15

203:                                              ; preds = %39, %21, %189
  %204 = phi ptr [ %180, %189 ], [ %44, %39 ], [ null, %21 ]
  ret ptr %204
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_714XMLInitializer27initializeRegularExpressionEv() local_unnamed_addr #2 align 2 !prof !81 {
  %1 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !206
  tail call void @_ZN11xercesc_2_717RegularExpression16staticInitializeEPNS_13MemoryManagerE(ptr noundef %1)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_717RegularExpression16staticInitializeEPNS_13MemoryManagerE(ptr noundef %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !81 {
  %2 = tail call noundef ptr @_ZN11xercesc_2_712TokenFactory14staticGetRangeEPKtb(ptr noundef nonnull @_ZN11xercesc_2_7L11fgUniIsWordE, i1 noundef zeroext false)
  store ptr %2, ptr @_ZN11xercesc_2_717RegularExpression10fWordRangeE, align 8, !tbaa !206
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %9

4:                                                ; preds = %1
  %5 = tail call ptr @__cxa_allocate_exception(i64 48) #20
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull @.str, i32 noundef 873, i32 noundef 293, ptr noundef nonnull @_ZN11xercesc_2_7L11fgUniIsWordE, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %0)
          to label %6 unwind label %7

6:                                                ; preds = %4
  tail call void @__cxa_throw(ptr nonnull %5, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #22
  unreachable

7:                                                ; preds = %4
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %5) #20
  resume { ptr, i32 } %8

9:                                                ; preds = %1
  tail call void @_ZN11xercesc_2_718XMLRegisterCleanup15registerCleanupEPFvvE(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L16WordRangeCleanupE, ptr noundef nonnull @_ZN11xercesc_2_7L12localCleanupEv)
  ret void
}

declare noundef ptr @_ZN11xercesc_2_712TokenFactory14staticGetRangeEPKtb(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !81 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %8)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !94
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
          to label %10 unwind label %11

10:                                               ; preds = %9
  ret void

11:                                               ; preds = %9
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #20
  resume { ptr, i32 } %12
}

declare void @_ZN11xercesc_2_718XMLRegisterCleanup15registerCleanupEPFvvE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define internal void @_ZN11xercesc_2_7L12localCleanupEv() #14 !prof !81 {
  store ptr null, ptr @_ZN11xercesc_2_717RegularExpression10fWordRangeE, align 8, !tbaa !206
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN11xercesc_2_717RegularExpression14getOptionValueEt(i16 noundef zeroext %0) local_unnamed_addr #15 align 2 !prof !123 {
  switch i16 %0, label %12 [
    i16 105, label %2
    i16 109, label %3
    i16 115, label %4
    i16 120, label %5
    i16 117, label %6
    i16 119, label %7
    i16 70, label %8
    i16 72, label %9
    i16 88, label %10
    i16 44, label %11
  ], !prof !237

2:                                                ; preds = %1
  br label %12

3:                                                ; preds = %1
  br label %12

4:                                                ; preds = %1
  br label %12

5:                                                ; preds = %1
  br label %12

6:                                                ; preds = %1
  br label %12

7:                                                ; preds = %1
  br label %12

8:                                                ; preds = %1
  br label %12

9:                                                ; preds = %1
  br label %12

10:                                               ; preds = %1
  br label %12

11:                                               ; preds = %1
  br label %12

12:                                               ; preds = %1, %11, %10, %9, %8, %7, %6, %5, %4, %3, %2
  %13 = phi i32 [ 0, %1 ], [ 1024, %11 ], [ 512, %10 ], [ 128, %9 ], [ 256, %8 ], [ 64, %7 ], [ 32, %6 ], [ 16, %5 ], [ 4, %4 ], [ 8, %3 ], [ 2, %2 ]
  ret i32 %13
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_717RegularExpression9matchCharEPNS0_7ContextEiRisb(ptr nocapture nonnull readnone align 8 %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3, i16 noundef signext %4, i1 noundef zeroext %5) local_unnamed_addr #7 align 2 !prof !238 {
  %7 = icmp slt i16 %4, 1
  %8 = load i32, ptr %3, align 4
  %9 = sext i1 %7 to i32
  %10 = add nsw i32 %8, %9
  %11 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %1, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !102
  %13 = icmp sge i32 %10, %12
  %14 = icmp slt i32 %10, 0
  %15 = or i1 %13, %14
  br i1 %15, label %72, label %16, !prof !239

16:                                               ; preds = %6
  %17 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %1, i64 0, i32 8
  %18 = load ptr, ptr %17, align 8, !tbaa !99
  %19 = sext i32 %10 to i64
  %20 = getelementptr inbounds i16, ptr %18, i64 %19
  %21 = load i16, ptr %20, align 2, !tbaa !82
  %22 = zext i16 %21 to i32
  %23 = and i16 %21, -1024
  switch i16 %23, label %57 [
    i16 -10240, label %24
    i16 -9216, label %40
  ], !prof !110

24:                                               ; preds = %16
  %25 = add nsw i32 %10, 1
  %26 = icmp slt i32 %25, %12
  %27 = icmp sgt i16 %4, 0
  %28 = and i1 %27, %26
  br i1 %28, label %29, label %57

29:                                               ; preds = %24
  %30 = sext i32 %25 to i64
  %31 = getelementptr inbounds i16, ptr %18, i64 %30
  %32 = load i16, ptr %31, align 2, !tbaa !82
  %33 = and i16 %32, -1024
  %34 = icmp eq i16 %33, -9216
  br i1 %34, label %35, label %57

35:                                               ; preds = %29
  %36 = shl nuw nsw i32 %22, 10
  %37 = zext i16 %32 to i32
  %38 = add nsw i32 %36, -56613888
  %39 = add nsw i32 %38, %37
  br label %57

40:                                               ; preds = %16
  %41 = icmp sgt i32 %10, 0
  %42 = and i1 %7, %41
  br i1 %42, label %43, label %57

43:                                               ; preds = %40
  %44 = getelementptr i16, ptr %20, i64 -1
  %45 = load i16, ptr %44, align 2, !tbaa !82
  %46 = and i16 %45, -1024
  %47 = icmp eq i16 %46, -10240
  br i1 %47, label %48, label %57

48:                                               ; preds = %43
  %49 = add nsw i32 %10, -1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i16, ptr %18, i64 %50
  %52 = load i16, ptr %51, align 2, !tbaa !82
  %53 = zext i16 %52 to i32
  %54 = shl nuw nsw i32 %53, 10
  %55 = add nuw nsw i32 %22, -56613888
  %56 = add nsw i32 %55, %54
  br label %57

57:                                               ; preds = %16, %24, %29, %35, %40, %43, %48
  %58 = phi i32 [ %10, %16 ], [ %49, %48 ], [ %10, %43 ], [ %10, %40 ], [ %25, %35 ], [ %10, %29 ], [ %10, %24 ]
  %59 = phi i32 [ %22, %16 ], [ %56, %48 ], [ %22, %43 ], [ %22, %40 ], [ %39, %35 ], [ %22, %29 ], [ %22, %24 ]
  %60 = phi i1 [ true, %16 ], [ true, %48 ], [ false, %43 ], [ false, %40 ], [ true, %35 ], [ false, %29 ], [ false, %24 ]
  br i1 %60, label %61, label %72, !prof !240

61:                                               ; preds = %57
  br i1 %5, label %62, label %64, !prof !241

62:                                               ; preds = %61
  %63 = tail call noundef zeroext i1 @_ZN11xercesc_2_717RegularExpression15matchIgnoreCaseEii(ptr nonnull align 8 poison, i32 noundef %2, i32 noundef %59)
  br label %66

64:                                               ; preds = %61
  %65 = icmp eq i32 %59, %2
  br label %66

66:                                               ; preds = %64, %62
  %67 = phi i1 [ %63, %62 ], [ %65, %64 ]
  br i1 %67, label %68, label %72, !prof !242

68:                                               ; preds = %66
  %69 = xor i1 %7, true
  %70 = zext i1 %69 to i32
  %71 = add nsw i32 %58, %70
  store i32 %71, ptr %3, align 4, !tbaa !106
  br label %72

72:                                               ; preds = %57, %66, %68, %6
  %73 = phi i1 [ false, %6 ], [ false, %57 ], [ %67, %66 ], [ %67, %68 ]
  ret i1 %73
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_717RegularExpression8matchDotEPNS0_7ContextERis(ptr nocapture noundef nonnull readonly align 8 dereferenceable(104) %0, ptr nocapture noundef readonly %1, ptr nocapture noundef nonnull align 4 dereferenceable(4) %2, i16 noundef signext %3) local_unnamed_addr #8 align 2 !prof !243 {
  %5 = icmp slt i16 %3, 1
  %6 = load i32, ptr %2, align 4
  %7 = sext i1 %5 to i32
  %8 = add nsw i32 %6, %7
  %9 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %1, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !102
  %11 = icmp sge i32 %8, %10
  %12 = icmp slt i32 %8, 0
  %13 = or i1 %11, %12
  br i1 %13, label %75, label %14, !prof !244

14:                                               ; preds = %4
  %15 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %1, i64 0, i32 8
  %16 = load ptr, ptr %15, align 8, !tbaa !99
  %17 = sext i32 %8 to i64
  %18 = getelementptr inbounds i16, ptr %16, i64 %17
  %19 = load i16, ptr %18, align 2, !tbaa !82
  %20 = zext i16 %19 to i32
  %21 = and i16 %19, -1024
  switch i16 %21, label %55 [
    i16 -10240, label %22
    i16 -9216, label %38
  ], !prof !110

22:                                               ; preds = %14
  %23 = add nsw i32 %8, 1
  %24 = icmp slt i32 %23, %10
  %25 = icmp sgt i16 %3, 0
  %26 = and i1 %25, %24
  br i1 %26, label %27, label %55

27:                                               ; preds = %22
  %28 = sext i32 %23 to i64
  %29 = getelementptr inbounds i16, ptr %16, i64 %28
  %30 = load i16, ptr %29, align 2, !tbaa !82
  %31 = and i16 %30, -1024
  %32 = icmp eq i16 %31, -9216
  br i1 %32, label %33, label %55

33:                                               ; preds = %27
  %34 = shl nuw nsw i32 %20, 10
  %35 = zext i16 %30 to i32
  %36 = add nsw i32 %34, -56613888
  %37 = add nsw i32 %36, %35
  br label %55

38:                                               ; preds = %14
  %39 = icmp sgt i32 %8, 0
  %40 = and i1 %5, %39
  br i1 %40, label %41, label %55

41:                                               ; preds = %38
  %42 = getelementptr i16, ptr %18, i64 -1
  %43 = load i16, ptr %42, align 2, !tbaa !82
  %44 = and i16 %43, -1024
  %45 = icmp eq i16 %44, -10240
  br i1 %45, label %46, label %55

46:                                               ; preds = %41
  %47 = add nsw i32 %8, -1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i16, ptr %16, i64 %48
  %50 = load i16, ptr %49, align 2, !tbaa !82
  %51 = zext i16 %50 to i32
  %52 = shl nuw nsw i32 %51, 10
  %53 = add nuw nsw i32 %20, -56613888
  %54 = add nsw i32 %53, %52
  br label %55

55:                                               ; preds = %14, %22, %27, %33, %38, %41, %46
  %56 = phi i32 [ %8, %14 ], [ %47, %46 ], [ %8, %41 ], [ %8, %38 ], [ %23, %33 ], [ %8, %27 ], [ %8, %22 ]
  %57 = phi i32 [ %20, %14 ], [ %54, %46 ], [ %20, %41 ], [ %20, %38 ], [ %37, %33 ], [ %20, %27 ], [ %20, %22 ]
  %58 = phi i1 [ true, %14 ], [ true, %46 ], [ false, %41 ], [ false, %38 ], [ true, %33 ], [ false, %27 ], [ false, %22 ]
  br i1 %58, label %59, label %75, !prof !245

59:                                               ; preds = %55
  %60 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 5
  %61 = load i32, ptr %60, align 8, !tbaa !126
  %62 = and i32 %61, 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %70, !prof !245

64:                                               ; preds = %59
  br i1 %5, label %68, label %65, !prof !246

65:                                               ; preds = %64
  %66 = trunc i32 %57 to i16
  switch i16 %66, label %67 [
    i16 8232, label %75
    i16 13, label %75
    i16 10, label %75
    i16 8233, label %75
  ], !prof !247

67:                                               ; preds = %65
  br i1 %5, label %68, label %71, !prof !246

68:                                               ; preds = %64, %67
  %69 = trunc i32 %57 to i16
  switch i16 %69, label %75 [
    i16 8232, label %70
    i16 13, label %70
    i16 10, label %70
    i16 8233, label %70
  ]

70:                                               ; preds = %68, %68, %68, %68, %59
  br i1 %5, label %73, label %71, !prof !246

71:                                               ; preds = %67, %70
  %72 = add nsw i32 %56, 1
  br label %73

73:                                               ; preds = %70, %71
  %74 = phi i32 [ %72, %71 ], [ %56, %70 ]
  store i32 %74, ptr %2, align 4, !tbaa !106
  br label %75

75:                                               ; preds = %73, %55, %65, %65, %65, %65, %68, %4
  %76 = phi i1 [ false, %4 ], [ true, %73 ], [ false, %55 ], [ false, %65 ], [ false, %65 ], [ false, %65 ], [ false, %65 ], [ false, %68 ]
  ret i1 %76
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_717RegularExpression10matchRangeEPNS0_7ContextEPKNS_2OpERisb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(104) %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3, i16 noundef signext %4, i1 noundef zeroext %5) local_unnamed_addr #7 align 2 !prof !248 {
  %7 = icmp slt i16 %4, 1
  %8 = load i32, ptr %3, align 4
  %9 = sext i1 %7 to i32
  %10 = add nsw i32 %8, %9
  %11 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %1, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !102
  %13 = icmp sge i32 %10, %12
  %14 = icmp slt i32 %10, 0
  %15 = or i1 %13, %14
  br i1 %15, label %77, label %16, !prof !249

16:                                               ; preds = %6
  %17 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %1, i64 0, i32 8
  %18 = load ptr, ptr %17, align 8, !tbaa !99
  %19 = sext i32 %10 to i64
  %20 = getelementptr inbounds i16, ptr %18, i64 %19
  %21 = load i16, ptr %20, align 2, !tbaa !82
  %22 = zext i16 %21 to i32
  %23 = and i16 %21, -1024
  switch i16 %23, label %57 [
    i16 -10240, label %24
    i16 -9216, label %40
  ], !prof !110

24:                                               ; preds = %16
  %25 = add nsw i32 %10, 1
  %26 = icmp slt i32 %25, %12
  %27 = icmp sgt i16 %4, 0
  %28 = and i1 %27, %26
  br i1 %28, label %29, label %57

29:                                               ; preds = %24
  %30 = sext i32 %25 to i64
  %31 = getelementptr inbounds i16, ptr %18, i64 %30
  %32 = load i16, ptr %31, align 2, !tbaa !82
  %33 = and i16 %32, -1024
  %34 = icmp eq i16 %33, -9216
  br i1 %34, label %35, label %57

35:                                               ; preds = %29
  %36 = shl nuw nsw i32 %22, 10
  %37 = zext i16 %32 to i32
  %38 = add nsw i32 %36, -56613888
  %39 = add nsw i32 %38, %37
  br label %57

40:                                               ; preds = %16
  %41 = icmp sgt i32 %10, 0
  %42 = and i1 %7, %41
  br i1 %42, label %43, label %57

43:                                               ; preds = %40
  %44 = getelementptr i16, ptr %20, i64 -1
  %45 = load i16, ptr %44, align 2, !tbaa !82
  %46 = and i16 %45, -1024
  %47 = icmp eq i16 %46, -10240
  br i1 %47, label %48, label %57

48:                                               ; preds = %43
  %49 = add nsw i32 %10, -1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i16, ptr %18, i64 %50
  %52 = load i16, ptr %51, align 2, !tbaa !82
  %53 = zext i16 %52 to i32
  %54 = shl nuw nsw i32 %53, 10
  %55 = add nuw nsw i32 %22, -56613888
  %56 = add nsw i32 %55, %54
  br label %57

57:                                               ; preds = %16, %24, %29, %35, %40, %43, %48
  %58 = phi i32 [ %10, %16 ], [ %49, %48 ], [ %10, %43 ], [ %10, %40 ], [ %25, %35 ], [ %10, %29 ], [ %10, %24 ]
  %59 = phi i32 [ %22, %16 ], [ %56, %48 ], [ %22, %43 ], [ %22, %40 ], [ %39, %35 ], [ %22, %29 ], [ %22, %24 ]
  %60 = phi i1 [ true, %16 ], [ true, %48 ], [ false, %43 ], [ false, %40 ], [ true, %35 ], [ false, %29 ], [ false, %24 ]
  br i1 %60, label %61, label %77, !prof !250

61:                                               ; preds = %57
  %62 = load ptr, ptr %2, align 8, !tbaa !94
  %63 = getelementptr inbounds ptr, ptr %62, i64 11
  %64 = load ptr, ptr %63, align 8
  %65 = tail call noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(32) %2), !prof !251
  br i1 %5, label %66, label %70, !prof !252

66:                                               ; preds = %61
  %67 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 13
  %68 = load ptr, ptr %67, align 8, !tbaa !115
  %69 = tail call noundef ptr @_ZN11xercesc_2_710RangeToken23getCaseInsensitiveTokenEPNS_12TokenFactoryE(ptr noundef nonnull align 8 dereferenceable(72) %65, ptr noundef %68)
  br label %70

70:                                               ; preds = %66, %61
  %71 = phi ptr [ %69, %66 ], [ %65, %61 ]
  %72 = tail call noundef zeroext i1 @_ZN11xercesc_2_710RangeToken5matchEi(ptr noundef nonnull align 8 dereferenceable(72) %71, i32 noundef %59)
  br i1 %72, label %73, label %77, !prof !253

73:                                               ; preds = %70
  %74 = xor i1 %7, true
  %75 = zext i1 %74 to i32
  %76 = add nsw i32 %58, %75
  store i32 %76, ptr %3, align 4, !tbaa !106
  br label %77

77:                                               ; preds = %57, %70, %73, %6
  %78 = phi i1 [ false, %6 ], [ false, %57 ], [ %72, %70 ], [ %72, %73 ]
  ret i1 %78
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_717RegularExpression11matchAnchorEPNS0_7ContextEii(ptr nocapture noundef nonnull readonly align 8 dereferenceable(104) %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 align 2 !prof !81 {
  %5 = and i32 %2, 65535
  %6 = trunc i32 %2 to i16
  switch i16 %6, label %310 [
    i16 65, label %7
    i16 66, label %11
    i16 98, label %69
    i16 90, label %127
    i16 36, label %127
    i16 122, label %174
    i16 64, label %178
    i16 94, label %178
    i16 60, label %202
    i16 62, label %256
  ]

7:                                                ; preds = %4
  %8 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %1, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !101
  %10 = icmp eq i32 %9, %3
  br i1 %10, label %310, label %311

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %1, i64 0, i32 3
  %13 = load i32, ptr %12, align 4, !tbaa !103
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %310, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %1, i64 0, i32 8
  %17 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %1, i64 0, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !101
  %19 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %1, i64 0, i32 2
  %20 = load i32, ptr %19, align 8, !tbaa !102
  %21 = icmp sle i32 %18, %3
  %22 = icmp sgt i32 %20, %3
  %23 = and i1 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %15
  %25 = load ptr, ptr %16, align 8, !tbaa !99
  %26 = sext i32 %3 to i64
  %27 = getelementptr inbounds i16, ptr %25, i64 %26
  %28 = load i16, ptr %27, align 2, !tbaa !82
  %29 = tail call noundef zeroext i16 @_ZN11xercesc_2_717RegularExpression11getCharTypeEt(ptr noundef nonnull align 8 dereferenceable(104) %0, i16 noundef zeroext %28), !range !254
  br label %30

30:                                               ; preds = %15, %24
  %31 = phi i16 [ %29, %24 ], [ 2, %15 ]
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %310, label %33

33:                                               ; preds = %30
  %34 = load ptr, ptr %16, align 8, !tbaa !99
  %35 = load i32, ptr %17, align 4, !tbaa !101
  %36 = load i32, ptr %19, align 8, !tbaa !102
  %37 = add i32 %3, -1
  %38 = icmp slt i32 %35, %3
  %39 = icmp sge i32 %36, %3
  %40 = and i1 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %33
  %42 = sext i32 %37 to i64
  %43 = getelementptr inbounds i16, ptr %34, i64 %42
  %44 = load i16, ptr %43, align 2, !tbaa !82
  %45 = tail call noundef zeroext i16 @_ZN11xercesc_2_717RegularExpression11getCharTypeEt(ptr noundef nonnull align 8 dereferenceable(104) %0, i16 noundef zeroext %44), !range !254
  br label %46

46:                                               ; preds = %41, %33
  %47 = phi i16 [ %45, %41 ], [ 2, %33 ]
  %48 = icmp eq i16 %47, 0
  br i1 %48, label %49, label %66

49:                                               ; preds = %46
  %50 = sext i32 %37 to i64
  %51 = sext i32 %36 to i64
  %52 = sext i32 %35 to i64
  br label %53

53:                                               ; preds = %49, %63
  %54 = phi i64 [ %50, %49 ], [ %55, %63 ]
  %55 = add i64 %54, -1
  %56 = icmp sgt i64 %54, %52
  %57 = icmp sle i64 %54, %51
  %58 = and i1 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %53
  %60 = getelementptr inbounds i16, ptr %34, i64 %55
  %61 = load i16, ptr %60, align 2, !tbaa !82
  %62 = tail call noundef zeroext i16 @_ZN11xercesc_2_717RegularExpression11getCharTypeEt(ptr noundef nonnull align 8 dereferenceable(104) %0, i16 noundef zeroext %61), !range !254
  br label %63

63:                                               ; preds = %59, %53
  %64 = phi i16 [ %62, %59 ], [ 2, %53 ]
  %65 = icmp eq i16 %64, 0
  br i1 %65, label %53, label %66, !llvm.loop !255

66:                                               ; preds = %63, %46
  %67 = phi i16 [ %47, %46 ], [ %64, %63 ]
  %68 = icmp eq i16 %31, %67
  br i1 %68, label %310, label %311

69:                                               ; preds = %4
  %70 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %1, i64 0, i32 3
  %71 = load i32, ptr %70, align 4, !tbaa !103
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %311, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %1, i64 0, i32 8
  %75 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %1, i64 0, i32 1
  %76 = load i32, ptr %75, align 4, !tbaa !101
  %77 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %1, i64 0, i32 2
  %78 = load i32, ptr %77, align 8, !tbaa !102
  %79 = icmp sle i32 %76, %3
  %80 = icmp sgt i32 %78, %3
  %81 = and i1 %79, %80
  br i1 %81, label %82, label %88

82:                                               ; preds = %73
  %83 = load ptr, ptr %74, align 8, !tbaa !99
  %84 = sext i32 %3 to i64
  %85 = getelementptr inbounds i16, ptr %83, i64 %84
  %86 = load i16, ptr %85, align 2, !tbaa !82
  %87 = tail call noundef zeroext i16 @_ZN11xercesc_2_717RegularExpression11getCharTypeEt(ptr noundef nonnull align 8 dereferenceable(104) %0, i16 noundef zeroext %86), !range !254
  br label %88

88:                                               ; preds = %73, %82
  %89 = phi i16 [ %87, %82 ], [ 2, %73 ]
  %90 = icmp eq i16 %89, 0
  br i1 %90, label %311, label %91

91:                                               ; preds = %88
  %92 = load ptr, ptr %74, align 8, !tbaa !99
  %93 = load i32, ptr %75, align 4, !tbaa !101
  %94 = load i32, ptr %77, align 8, !tbaa !102
  %95 = add i32 %3, -1
  %96 = icmp slt i32 %93, %3
  %97 = icmp sge i32 %94, %3
  %98 = and i1 %96, %97
  br i1 %98, label %99, label %104

99:                                               ; preds = %91
  %100 = sext i32 %95 to i64
  %101 = getelementptr inbounds i16, ptr %92, i64 %100
  %102 = load i16, ptr %101, align 2, !tbaa !82
  %103 = tail call noundef zeroext i16 @_ZN11xercesc_2_717RegularExpression11getCharTypeEt(ptr noundef nonnull align 8 dereferenceable(104) %0, i16 noundef zeroext %102), !range !254
  br label %104

104:                                              ; preds = %99, %91
  %105 = phi i16 [ %103, %99 ], [ 2, %91 ]
  %106 = icmp eq i16 %105, 0
  br i1 %106, label %107, label %124

107:                                              ; preds = %104
  %108 = sext i32 %95 to i64
  %109 = sext i32 %94 to i64
  %110 = sext i32 %93 to i64
  br label %111

111:                                              ; preds = %107, %121
  %112 = phi i64 [ %108, %107 ], [ %113, %121 ]
  %113 = add i64 %112, -1
  %114 = icmp sgt i64 %112, %110
  %115 = icmp sle i64 %112, %109
  %116 = and i1 %114, %115
  br i1 %116, label %117, label %121

117:                                              ; preds = %111
  %118 = getelementptr inbounds i16, ptr %92, i64 %113
  %119 = load i16, ptr %118, align 2, !tbaa !82
  %120 = tail call noundef zeroext i16 @_ZN11xercesc_2_717RegularExpression11getCharTypeEt(ptr noundef nonnull align 8 dereferenceable(104) %0, i16 noundef zeroext %119), !range !254
  br label %121

121:                                              ; preds = %117, %111
  %122 = phi i16 [ %120, %117 ], [ 2, %111 ]
  %123 = icmp eq i16 %122, 0
  br i1 %123, label %111, label %124, !llvm.loop !255

124:                                              ; preds = %121, %104
  %125 = phi i16 [ %105, %104 ], [ %122, %121 ]
  %126 = icmp eq i16 %89, %125
  br i1 %126, label %311, label %310

127:                                              ; preds = %4, %4
  %128 = icmp eq i32 %5, 36
  br i1 %128, label %129, label %146

129:                                              ; preds = %127
  %130 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 5
  %131 = load i32, ptr %130, align 8, !tbaa !126
  %132 = and i32 %131, 8
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %146, label %134

134:                                              ; preds = %129
  %135 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %1, i64 0, i32 2
  %136 = load i32, ptr %135, align 8, !tbaa !102
  %137 = icmp eq i32 %136, %3
  br i1 %137, label %310, label %138

138:                                              ; preds = %134
  %139 = icmp sgt i32 %136, %3
  br i1 %139, label %140, label %311

140:                                              ; preds = %138
  %141 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %1, i64 0, i32 8
  %142 = load ptr, ptr %141, align 8, !tbaa !99
  %143 = sext i32 %3 to i64
  %144 = getelementptr inbounds i16, ptr %142, i64 %143
  %145 = load i16, ptr %144, align 2, !tbaa !82
  switch i16 %145, label %311 [
    i16 8232, label %310
    i16 13, label %310
    i16 10, label %310
    i16 8233, label %310
  ]

146:                                              ; preds = %129, %127
  %147 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %1, i64 0, i32 2
  %148 = load i32, ptr %147, align 8, !tbaa !102
  %149 = icmp eq i32 %148, %3
  br i1 %149, label %310, label %150

150:                                              ; preds = %146
  %151 = add nsw i32 %3, 1
  %152 = icmp eq i32 %151, %148
  br i1 %152, label %153, label %159

153:                                              ; preds = %150
  %154 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %1, i64 0, i32 8
  %155 = load ptr, ptr %154, align 8, !tbaa !99
  %156 = sext i32 %3 to i64
  %157 = getelementptr inbounds i16, ptr %155, i64 %156
  %158 = load i16, ptr %157, align 2, !tbaa !82
  switch i16 %158, label %159 [
    i16 8232, label %310
    i16 13, label %310
    i16 10, label %310
    i16 8233, label %310
  ]

159:                                              ; preds = %153, %150
  %160 = add nsw i32 %3, 2
  %161 = icmp eq i32 %160, %148
  br i1 %161, label %162, label %311

162:                                              ; preds = %159
  %163 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %1, i64 0, i32 8
  %164 = load ptr, ptr %163, align 8, !tbaa !99
  %165 = sext i32 %3 to i64
  %166 = getelementptr inbounds i16, ptr %164, i64 %165
  %167 = load i16, ptr %166, align 2, !tbaa !82
  %168 = icmp eq i16 %167, 13
  br i1 %168, label %169, label %311

169:                                              ; preds = %162
  %170 = sext i32 %151 to i64
  %171 = getelementptr inbounds i16, ptr %164, i64 %170
  %172 = load i16, ptr %171, align 2, !tbaa !82
  %173 = icmp eq i16 %172, 10
  br i1 %173, label %310, label %311

174:                                              ; preds = %4
  %175 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %1, i64 0, i32 2
  %176 = load i32, ptr %175, align 8, !tbaa !102
  %177 = icmp eq i32 %176, %3
  br i1 %177, label %310, label %311

178:                                              ; preds = %4, %4
  %179 = icmp eq i32 %5, 94
  br i1 %179, label %180, label %189

180:                                              ; preds = %178
  %181 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 5
  %182 = load i32, ptr %181, align 8, !tbaa !126
  %183 = and i32 %182, 8
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %189

185:                                              ; preds = %180
  %186 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %1, i64 0, i32 1
  %187 = load i32, ptr %186, align 4, !tbaa !101
  %188 = icmp eq i32 %187, %3
  br i1 %188, label %310, label %311

189:                                              ; preds = %180, %178
  %190 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %1, i64 0, i32 1
  %191 = load i32, ptr %190, align 4, !tbaa !101
  %192 = icmp eq i32 %191, %3
  br i1 %192, label %310, label %193

193:                                              ; preds = %189
  %194 = icmp slt i32 %191, %3
  br i1 %194, label %195, label %311

195:                                              ; preds = %193
  %196 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %1, i64 0, i32 8
  %197 = load ptr, ptr %196, align 8, !tbaa !99
  %198 = sext i32 %3 to i64
  %199 = getelementptr i16, ptr %197, i64 %198
  %200 = getelementptr i16, ptr %199, i64 -1
  %201 = load i16, ptr %200, align 2, !tbaa !82
  switch i16 %201, label %311 [
    i16 8232, label %310
    i16 13, label %310
    i16 10, label %310
    i16 8233, label %310
  ]

202:                                              ; preds = %4
  %203 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %1, i64 0, i32 3
  %204 = load i32, ptr %203, align 4, !tbaa !103
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %311, label %206

206:                                              ; preds = %202
  %207 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %1, i64 0, i32 2
  %208 = load i32, ptr %207, align 8, !tbaa !102
  %209 = icmp eq i32 %208, %3
  br i1 %209, label %311, label %210

210:                                              ; preds = %206
  %211 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %1, i64 0, i32 8
  %212 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %1, i64 0, i32 1
  %213 = load i32, ptr %212, align 4, !tbaa !101
  %214 = icmp sle i32 %213, %3
  %215 = icmp sgt i32 %208, %3
  %216 = and i1 %215, %214
  br i1 %216, label %217, label %311

217:                                              ; preds = %210
  %218 = load ptr, ptr %211, align 8, !tbaa !99
  %219 = sext i32 %3 to i64
  %220 = getelementptr inbounds i16, ptr %218, i64 %219
  %221 = load i16, ptr %220, align 2, !tbaa !82
  %222 = tail call noundef zeroext i16 @_ZN11xercesc_2_717RegularExpression11getCharTypeEt(ptr noundef nonnull align 8 dereferenceable(104) %0, i16 noundef zeroext %221), !range !254
  %223 = icmp eq i16 %222, 1
  br i1 %223, label %224, label %311

224:                                              ; preds = %217
  %225 = load ptr, ptr %211, align 8, !tbaa !99
  %226 = load i32, ptr %212, align 4, !tbaa !101
  %227 = load i32, ptr %207, align 8, !tbaa !102
  %228 = add i32 %3, -1
  %229 = icmp slt i32 %226, %3
  %230 = icmp sge i32 %227, %3
  %231 = and i1 %229, %230
  br i1 %231, label %232, label %237

232:                                              ; preds = %224
  %233 = sext i32 %228 to i64
  %234 = getelementptr inbounds i16, ptr %225, i64 %233
  %235 = load i16, ptr %234, align 2, !tbaa !82
  %236 = tail call noundef zeroext i16 @_ZN11xercesc_2_717RegularExpression11getCharTypeEt(ptr noundef nonnull align 8 dereferenceable(104) %0, i16 noundef zeroext %235), !range !254
  br label %237

237:                                              ; preds = %232, %224
  %238 = phi i16 [ %236, %232 ], [ 2, %224 ]
  %239 = sext i32 %228 to i64
  %240 = sext i32 %226 to i64
  %241 = sext i32 %227 to i64
  br label %242

242:                                              ; preds = %254, %237
  %243 = phi i64 [ %239, %237 ], [ %246, %254 ]
  %244 = phi i16 [ %238, %237 ], [ %255, %254 ]
  switch i16 %244, label %311 [
    i16 0, label %245
    i16 2, label %310
  ]

245:                                              ; preds = %242
  %246 = add i64 %243, -1
  %247 = icmp sgt i64 %243, %240
  %248 = icmp sle i64 %243, %241
  %249 = and i1 %247, %248
  br i1 %249, label %250, label %254

250:                                              ; preds = %245
  %251 = getelementptr inbounds i16, ptr %225, i64 %246
  %252 = load i16, ptr %251, align 2, !tbaa !82
  %253 = tail call noundef zeroext i16 @_ZN11xercesc_2_717RegularExpression11getCharTypeEt(ptr noundef nonnull align 8 dereferenceable(104) %0, i16 noundef zeroext %252), !range !254
  br label %254

254:                                              ; preds = %250, %245
  %255 = phi i16 [ %253, %250 ], [ 2, %245 ]
  br label %242, !llvm.loop !255

256:                                              ; preds = %4
  %257 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %1, i64 0, i32 3
  %258 = load i32, ptr %257, align 4, !tbaa !103
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %311, label %260

260:                                              ; preds = %256
  %261 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %1, i64 0, i32 1
  %262 = load i32, ptr %261, align 4, !tbaa !101
  %263 = icmp eq i32 %262, %3
  br i1 %263, label %311, label %264

264:                                              ; preds = %260
  %265 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %1, i64 0, i32 8
  %266 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %1, i64 0, i32 2
  %267 = load i32, ptr %266, align 8, !tbaa !102
  %268 = icmp sle i32 %262, %3
  %269 = icmp sgt i32 %267, %3
  %270 = and i1 %268, %269
  br i1 %270, label %271, label %278

271:                                              ; preds = %264
  %272 = load ptr, ptr %265, align 8, !tbaa !99
  %273 = sext i32 %3 to i64
  %274 = getelementptr inbounds i16, ptr %272, i64 %273
  %275 = load i16, ptr %274, align 2, !tbaa !82
  %276 = tail call noundef zeroext i16 @_ZN11xercesc_2_717RegularExpression11getCharTypeEt(ptr noundef nonnull align 8 dereferenceable(104) %0, i16 noundef zeroext %275), !range !254
  %277 = icmp eq i16 %276, 2
  br i1 %277, label %278, label %311

278:                                              ; preds = %264, %271
  %279 = load ptr, ptr %265, align 8, !tbaa !99
  %280 = load i32, ptr %261, align 4, !tbaa !101
  %281 = load i32, ptr %266, align 8, !tbaa !102
  %282 = add i32 %3, -1
  %283 = icmp slt i32 %280, %3
  %284 = icmp sge i32 %281, %3
  %285 = and i1 %283, %284
  br i1 %285, label %286, label %291

286:                                              ; preds = %278
  %287 = sext i32 %282 to i64
  %288 = getelementptr inbounds i16, ptr %279, i64 %287
  %289 = load i16, ptr %288, align 2, !tbaa !82
  %290 = tail call noundef zeroext i16 @_ZN11xercesc_2_717RegularExpression11getCharTypeEt(ptr noundef nonnull align 8 dereferenceable(104) %0, i16 noundef zeroext %289), !range !254
  br label %291

291:                                              ; preds = %286, %278
  %292 = phi i16 [ %290, %286 ], [ 2, %278 ]
  %293 = sext i32 %282 to i64
  %294 = sext i32 %280 to i64
  %295 = sext i32 %281 to i64
  br label %296

296:                                              ; preds = %308, %291
  %297 = phi i64 [ %293, %291 ], [ %300, %308 ]
  %298 = phi i16 [ %292, %291 ], [ %309, %308 ]
  switch i16 %298, label %311 [
    i16 0, label %299
    i16 1, label %310
  ]

299:                                              ; preds = %296
  %300 = add i64 %297, -1
  %301 = icmp sgt i64 %297, %294
  %302 = icmp sle i64 %297, %295
  %303 = and i1 %301, %302
  br i1 %303, label %304, label %308

304:                                              ; preds = %299
  %305 = getelementptr inbounds i16, ptr %279, i64 %300
  %306 = load i16, ptr %305, align 2, !tbaa !82
  %307 = tail call noundef zeroext i16 @_ZN11xercesc_2_717RegularExpression11getCharTypeEt(ptr noundef nonnull align 8 dereferenceable(104) %0, i16 noundef zeroext %306), !range !254
  br label %308

308:                                              ; preds = %304, %299
  %309 = phi i16 [ %307, %304 ], [ 2, %299 ]
  br label %296, !llvm.loop !255

310:                                              ; preds = %296, %242, %30, %195, %195, %195, %189, %153, %153, %153, %146, %140, %140, %140, %66, %195, %153, %140, %124, %185, %174, %134, %169, %11, %7, %4
  br label %311

311:                                              ; preds = %296, %242, %88, %210, %195, %185, %174, %169, %140, %124, %271, %256, %260, %217, %202, %206, %193, %159, %162, %138, %69, %66, %7, %310
  %312 = phi i1 [ true, %310 ], [ false, %7 ], [ false, %66 ], [ false, %69 ], [ false, %138 ], [ false, %162 ], [ false, %159 ], [ false, %193 ], [ false, %206 ], [ false, %202 ], [ false, %217 ], [ false, %260 ], [ false, %256 ], [ false, %271 ], [ false, %124 ], [ false, %140 ], [ false, %169 ], [ false, %174 ], [ false, %185 ], [ false, %195 ], [ false, %210 ], [ false, %88 ], [ false, %242 ], [ false, %296 ]
  ret i1 %312
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_717RegularExpression18matchBackReferenceEPNS0_7ContextEiRisb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(104) %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3, i16 noundef signext %4, i1 noundef zeroext %5) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !81 {
  %7 = icmp sgt i32 %2, 0
  %8 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = icmp sgt i32 %9, %2
  %11 = select i1 %7, i1 %10, i1 false
  br i1 %11, label %19, label %12

12:                                               ; preds = %6
  %13 = tail call ptr @__cxa_allocate_exception(i64 48) #20
  %14 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 14
  %15 = load ptr, ptr %14, align 8, !tbaa !116
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %13, ptr noundef nonnull @.str, i32 noundef 1259, i32 noundef 290, ptr noundef %15)
          to label %16 unwind label %17

16:                                               ; preds = %12
  tail call void @__cxa_throw(ptr nonnull %13, ptr nonnull @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #22
  unreachable

17:                                               ; preds = %12
  %18 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %13) #20
  resume { ptr, i32 } %18

19:                                               ; preds = %6
  %20 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %1, i64 0, i32 7
  %21 = load ptr, ptr %20, align 8, !tbaa !98
  %22 = tail call noundef i32 @_ZNK11xercesc_2_75Match11getStartPosEi(ptr noundef nonnull align 8 dereferenceable(40) %21, i32 noundef %2)
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %56, label %24

24:                                               ; preds = %19
  %25 = load ptr, ptr %20, align 8, !tbaa !98
  %26 = tail call noundef i32 @_ZNK11xercesc_2_75Match9getEndPosEi(ptr noundef nonnull align 8 dereferenceable(40) %25, i32 noundef %2)
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %56, label %28

28:                                               ; preds = %24
  %29 = load ptr, ptr %20, align 8, !tbaa !98
  %30 = tail call noundef i32 @_ZNK11xercesc_2_75Match11getStartPosEi(ptr noundef nonnull align 8 dereferenceable(40) %29, i32 noundef %2)
  %31 = load ptr, ptr %20, align 8, !tbaa !98
  %32 = tail call noundef i32 @_ZNK11xercesc_2_75Match9getEndPosEi(ptr noundef nonnull align 8 dereferenceable(40) %31, i32 noundef %2)
  %33 = sub nsw i32 %32, %30
  %34 = icmp sgt i16 %4, 0
  %35 = load i32, ptr %3, align 4
  %36 = select i1 %34, i32 0, i32 %33
  %37 = sub nsw i32 %35, %36
  %38 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %1, i64 0, i32 2
  %39 = load i32, ptr %38, align 8, !tbaa !102
  %40 = sub nsw i32 %39, %37
  %41 = icmp slt i32 %40, %33
  br i1 %41, label %56, label %42

42:                                               ; preds = %28
  %43 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %1, i64 0, i32 8
  %44 = load ptr, ptr %43, align 8, !tbaa !99
  br i1 %5, label %45, label %47

45:                                               ; preds = %42
  %46 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString14regionIMatchesEPKtiS2_ij(ptr noundef %44, i32 noundef %37, ptr noundef %44, i32 noundef %30, i32 noundef %33)
  br label %49

47:                                               ; preds = %42
  %48 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString13regionMatchesEPKtiS2_ij(ptr noundef %44, i32 noundef %37, ptr noundef %44, i32 noundef %30, i32 noundef %33)
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi i1 [ %46, %45 ], [ %48, %47 ]
  br i1 %50, label %51, label %56

51:                                               ; preds = %49
  %52 = load i32, ptr %3, align 4
  %53 = sub i32 0, %33
  %54 = select i1 %34, i32 %33, i32 %53
  %55 = add i32 %52, %54
  store i32 %55, ptr %3, align 4, !tbaa !106
  br label %56

56:                                               ; preds = %28, %49, %51, %19, %24
  %57 = phi i1 [ false, %24 ], [ false, %19 ], [ false, %28 ], [ %50, %49 ], [ %50, %51 ]
  ret i1 %57
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_717RegularExpression11matchStringEPNS0_7ContextEPKtRisb(ptr nocapture noundef nonnull readnone align 8 dereferenceable(104) %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3, i16 noundef signext %4, i1 noundef zeroext %5) local_unnamed_addr #7 align 2 !prof !81 {
  %7 = icmp eq ptr %2, null
  br i1 %7, label %22, label %8, !prof !174

8:                                                ; preds = %6
  %9 = load i16, ptr %2, align 2, !tbaa !82
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %22, label %11, !prof !174

11:                                               ; preds = %8, %11
  %12 = phi ptr [ %13, %11 ], [ %2, %8 ]
  %13 = getelementptr inbounds i16, ptr %12, i64 1
  %14 = load i16, ptr %13, align 2, !tbaa !82
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %16, label %11, !prof !175, !llvm.loop !129

16:                                               ; preds = %11
  %17 = ptrtoint ptr %13 to i64
  %18 = ptrtoint ptr %2 to i64
  %19 = sub i64 %17, %18
  %20 = lshr exact i64 %19, 1
  %21 = trunc i64 %20 to i32
  br label %22

22:                                               ; preds = %6, %8, %16
  %23 = phi i32 [ %21, %16 ], [ 0, %8 ], [ 0, %6 ]
  %24 = icmp sgt i16 %4, 0
  %25 = load i32, ptr %3, align 4
  %26 = select i1 %24, i32 0, i32 %23, !prof !176
  %27 = sub nsw i32 %25, %26
  %28 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %1, i64 0, i32 2
  %29 = load i32, ptr %28, align 8, !tbaa !102
  %30 = sub nsw i32 %29, %27
  %31 = icmp slt i32 %30, %23
  br i1 %31, label %46, label %32, !prof !177

32:                                               ; preds = %22
  %33 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %1, i64 0, i32 8
  %34 = load ptr, ptr %33, align 8, !tbaa !99
  br i1 %5, label %35, label %37, !prof !178

35:                                               ; preds = %32
  %36 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString14regionIMatchesEPKtiS2_ij(ptr noundef %34, i32 noundef %27, ptr noundef %2, i32 noundef 0, i32 noundef %23)
  br label %39

37:                                               ; preds = %32
  %38 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString13regionMatchesEPKtiS2_ij(ptr noundef %34, i32 noundef %27, ptr noundef %2, i32 noundef 0, i32 noundef %23)
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi i1 [ %36, %35 ], [ %38, %37 ]
  br i1 %40, label %41, label %46, !prof !179

41:                                               ; preds = %39
  %42 = load i32, ptr %3, align 4
  %43 = sub i32 0, %23
  %44 = select i1 %24, i32 %23, i32 %43, !prof !180
  %45 = add i32 %42, %44
  store i32 %45, ptr %3, align 4, !tbaa !106
  br label %46

46:                                               ; preds = %39, %41, %22
  %47 = phi i1 [ false, %22 ], [ %40, %41 ], [ %40, %39 ]
  ret i1 %47
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZN11xercesc_2_717RegularExpression12matchCaptureEPNS0_7ContextEPKNS_2OpEis(ptr nocapture noundef nonnull align 8 dereferenceable(104) %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3, i16 noundef signext %4) local_unnamed_addr #2 align 2 !prof !81 {
  %6 = load ptr, ptr %2, align 8, !tbaa !94
  %7 = getelementptr inbounds ptr, ptr %6, i64 2
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef i32 %8(ptr noundef nonnull align 8 dereferenceable(32) %2)
  %10 = icmp sgt i32 %9, 0
  %11 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %1, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !98
  br i1 %10, label %13, label %15

13:                                               ; preds = %5
  %14 = tail call noundef i32 @_ZNK11xercesc_2_75Match11getStartPosEi(ptr noundef nonnull align 8 dereferenceable(40) %12, i32 noundef %9)
  br label %18

15:                                               ; preds = %5
  %16 = sub nsw i32 0, %9
  %17 = tail call noundef i32 @_ZNK11xercesc_2_75Match9getEndPosEi(ptr noundef nonnull align 8 dereferenceable(40) %12, i32 noundef %16)
  br label %18

18:                                               ; preds = %15, %13
  %19 = phi i32 [ %14, %13 ], [ %17, %15 ]
  %20 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %1, i64 0, i32 7
  %21 = load ptr, ptr %20, align 8, !tbaa !98
  br i1 %10, label %22, label %29

22:                                               ; preds = %18
  tail call void @_ZN11xercesc_2_75Match11setStartPosEii(ptr noundef nonnull align 8 dereferenceable(40) %21, i32 noundef %9, i32 noundef %3)
  %23 = getelementptr inbounds %"class.xercesc_2_7::Op", ptr %2, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !154
  %25 = tail call noundef i32 @_ZN11xercesc_2_717RegularExpression5matchEPNS0_7ContextEPKNS_2OpEis(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef %24, i32 noundef %3, i16 noundef signext %4)
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %22
  %28 = load ptr, ptr %20, align 8, !tbaa !98
  tail call void @_ZN11xercesc_2_75Match11setStartPosEii(ptr noundef nonnull align 8 dereferenceable(40) %28, i32 noundef %9, i32 noundef %19)
  br label %37

29:                                               ; preds = %18
  %30 = sub nsw i32 0, %9
  tail call void @_ZN11xercesc_2_75Match9setEndPosEii(ptr noundef nonnull align 8 dereferenceable(40) %21, i32 noundef %30, i32 noundef %3)
  %31 = getelementptr inbounds %"class.xercesc_2_7::Op", ptr %2, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !154
  %33 = tail call noundef i32 @_ZN11xercesc_2_717RegularExpression5matchEPNS0_7ContextEPKNS_2OpEis(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef %32, i32 noundef %3, i16 noundef signext %4)
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load ptr, ptr %20, align 8, !tbaa !98
  tail call void @_ZN11xercesc_2_75Match9setEndPosEii(ptr noundef nonnull align 8 dereferenceable(40) %36, i32 noundef %30, i32 noundef %19)
  br label %37

37:                                               ; preds = %29, %35, %22, %27
  %38 = phi i32 [ %25, %27 ], [ %25, %22 ], [ %33, %35 ], [ %33, %29 ]
  ret i32 %38
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_717RegularExpression14matchConditionEPNS0_7ContextEPKNS_2OpEis(ptr nocapture noundef nonnull align 8 dereferenceable(104) %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3, i16 noundef signext %4) local_unnamed_addr #2 align 2 !prof !81 {
  %6 = load ptr, ptr %2, align 8, !tbaa !94
  %7 = getelementptr inbounds ptr, ptr %6, i64 5
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef i32 %8(ptr noundef nonnull align 8 dereferenceable(32) %2)
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %5
  %12 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %1, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !98
  %14 = tail call noundef i32 @_ZNK11xercesc_2_75Match11getStartPosEi(ptr noundef nonnull align 8 dereferenceable(40) %13, i32 noundef %9)
  %15 = icmp sgt i32 %14, -1
  br i1 %15, label %16, label %27

16:                                               ; preds = %11
  %17 = load ptr, ptr %12, align 8, !tbaa !98
  %18 = tail call noundef i32 @_ZNK11xercesc_2_75Match9getEndPosEi(ptr noundef nonnull align 8 dereferenceable(40) %17, i32 noundef %9)
  %19 = icmp sgt i32 %18, -1
  br label %27

20:                                               ; preds = %5
  %21 = load ptr, ptr %2, align 8, !tbaa !94
  %22 = getelementptr inbounds ptr, ptr %21, i64 6
  %23 = load ptr, ptr %22, align 8
  %24 = tail call noundef ptr %23(ptr noundef nonnull align 8 dereferenceable(32) %2)
  %25 = tail call noundef i32 @_ZN11xercesc_2_717RegularExpression5matchEPNS0_7ContextEPKNS_2OpEis(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef %24, i32 noundef %3, i16 noundef signext %4)
  %26 = icmp sgt i32 %25, -1
  br label %27

27:                                               ; preds = %11, %16, %20
  %28 = phi i1 [ %26, %20 ], [ false, %11 ], [ %19, %16 ]
  ret i1 %28
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !81 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_724IllegalArgumentExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !94
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #20
  resume { ptr, i32 } %8
}

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_75Match11getStartPosEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 !prof !81 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::Match", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !196
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #20
  %8 = getelementptr inbounds %"class.xercesc_2_7::Match", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !198
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.1, i32 noundef 116, i32 noundef 282, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #22
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  br label %30

13:                                               ; preds = %2
  %14 = icmp sgt i32 %1, -1
  %15 = getelementptr inbounds %"class.xercesc_2_7::Match", ptr %0, i64 0, i32 1
  %16 = load i32, ptr %15, align 8
  %17 = icmp sgt i32 %16, %1
  %18 = select i1 %14, i1 %17, i1 false
  br i1 %18, label %26, label %19

19:                                               ; preds = %13
  %20 = tail call ptr @__cxa_allocate_exception(i64 48) #20
  %21 = getelementptr inbounds %"class.xercesc_2_7::Match", ptr %0, i64 0, i32 5
  %22 = load ptr, ptr %21, align 8, !tbaa !198
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %20, ptr noundef nonnull @.str.1, i32 noundef 119, i32 noundef 6, ptr noundef %22)
          to label %23 unwind label %24

23:                                               ; preds = %19
  tail call void @__cxa_throw(ptr nonnull %20, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #22
  unreachable

24:                                               ; preds = %19
  %25 = landingpad { ptr, i32 }
          cleanup
  br label %30

26:                                               ; preds = %13
  %27 = zext nneg i32 %1 to i64
  %28 = getelementptr inbounds i32, ptr %4, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !106
  ret i32 %29

30:                                               ; preds = %24, %11
  %31 = phi ptr [ %20, %24 ], [ %7, %11 ]
  %32 = phi { ptr, i32 } [ %25, %24 ], [ %12, %11 ]
  tail call void @__cxa_free_exception(ptr %31) #20
  resume { ptr, i32 } %32
}

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_75Match9getEndPosEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 !prof !81 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::Match", ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !199
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #20
  %8 = getelementptr inbounds %"class.xercesc_2_7::Match", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !198
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.1, i32 noundef 127, i32 noundef 282, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #22
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  br label %30

13:                                               ; preds = %2
  %14 = icmp sgt i32 %1, -1
  %15 = getelementptr inbounds %"class.xercesc_2_7::Match", ptr %0, i64 0, i32 1
  %16 = load i32, ptr %15, align 8
  %17 = icmp sgt i32 %16, %1
  %18 = select i1 %14, i1 %17, i1 false
  br i1 %18, label %26, label %19

19:                                               ; preds = %13
  %20 = tail call ptr @__cxa_allocate_exception(i64 48) #20
  %21 = getelementptr inbounds %"class.xercesc_2_7::Match", ptr %0, i64 0, i32 5
  %22 = load ptr, ptr %21, align 8, !tbaa !198
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %20, ptr noundef nonnull @.str.1, i32 noundef 130, i32 noundef 6, ptr noundef %22)
          to label %23 unwind label %24

23:                                               ; preds = %19
  tail call void @__cxa_throw(ptr nonnull %20, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #22
  unreachable

24:                                               ; preds = %19
  %25 = landingpad { ptr, i32 }
          cleanup
  br label %30

26:                                               ; preds = %13
  %27 = zext nneg i32 %1 to i64
  %28 = getelementptr inbounds i32, ptr %4, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !106
  ret i32 %29

30:                                               ; preds = %24, %11
  %31 = phi ptr [ %20, %24 ], [ %7, %11 ]
  %32 = phi { ptr, i32 } [ %25, %24 ], [ %12, %11 ]
  tail call void @__cxa_free_exception(ptr %31) #20
  resume { ptr, i32 } %32
}

declare noundef zeroext i1 @_ZN11xercesc_2_79XMLString14regionIMatchesEPKtiS2_ij(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN11xercesc_2_79XMLString13regionMatchesEPKtiS2_ij(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714ParseExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !81 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %8)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_714ParseExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !94
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
          to label %10 unwind label %11

10:                                               ; preds = %9
  ret void

11:                                               ; preds = %9
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #20
  resume { ptr, i32 } %12
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #11

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_717RegularExpression7compileEPKNS_5TokenE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1) local_unnamed_addr #2 align 2 !prof !81 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 9
  %4 = load ptr, ptr %3, align 8, !tbaa !147
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 4
  store i32 0, ptr %7, align 4, !tbaa !148
  %8 = tail call noundef ptr @_ZN11xercesc_2_717RegularExpression7compileEPKNS_5TokenEPNS_2OpEb(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef null, i1 noundef zeroext false)
  store ptr %8, ptr %3, align 8, !tbaa !147
  br label %9

9:                                                ; preds = %2, %6
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_717RegularExpression7compileEPKNS_5TokenEPNS_2OpEb(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !256 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::Token", ptr %1, i64 0, i32 1
  %6 = load i16, ptr %5, align 8, !tbaa !257
  switch i16 %6, label %92 [
    i16 11, label %7
    i16 0, label %7
    i16 8, label %7
    i16 4, label %7
    i16 5, label %7
    i16 10, label %7
    i16 12, label %7
    i16 7, label %7
    i16 1, label %9
    i16 2, label %37
    i16 3, label %54
    i16 9, label %54
    i16 6, label %56
    i16 20, label %58
    i16 21, label %58
    i16 22, label %60
    i16 23, label %60
    i16 24, label %62
    i16 25, label %62
    i16 26, label %64
  ], !prof !258

7:                                                ; preds = %4, %4, %4, %4, %4, %4, %4, %4
  %8 = tail call noundef ptr @_ZN11xercesc_2_717RegularExpression13compileSingleEPKNS_5TokenEPNS_2OpEt(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %1, ptr noundef %2, i16 noundef zeroext %6)
  br label %99

9:                                                ; preds = %4
  %10 = load ptr, ptr %1, align 8, !tbaa !94
  %11 = getelementptr inbounds ptr, ptr %10, i64 3
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef i32 %12(ptr noundef nonnull align 8 dereferenceable(24) %1), !prof !259
  %14 = icmp sgt i32 %13, 0
  br i1 %3, label %16, label %15, !prof !260

15:                                               ; preds = %9
  br i1 %14, label %17, label %99, !prof !261

16:                                               ; preds = %9
  br i1 %14, label %27, label %99

17:                                               ; preds = %15, %17
  %18 = phi i32 [ %20, %17 ], [ %13, %15 ]
  %19 = phi ptr [ %25, %17 ], [ %2, %15 ]
  %20 = add nsw i32 %18, -1
  %21 = load ptr, ptr %1, align 8, !tbaa !94
  %22 = getelementptr inbounds ptr, ptr %21, i64 2
  %23 = load ptr, ptr %22, align 8
  %24 = tail call noundef ptr %23(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %20), !prof !262
  %25 = tail call noundef ptr @_ZN11xercesc_2_717RegularExpression7compileEPKNS_5TokenEPNS_2OpEb(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %24, ptr noundef %19, i1 noundef zeroext false)
  %26 = icmp sgt i32 %18, 1
  br i1 %26, label %17, label %99, !prof !263, !llvm.loop !264

27:                                               ; preds = %16, %27
  %28 = phi i32 [ %35, %27 ], [ 0, %16 ]
  %29 = phi ptr [ %34, %27 ], [ %2, %16 ]
  %30 = load ptr, ptr %1, align 8, !tbaa !94
  %31 = getelementptr inbounds ptr, ptr %30, i64 2
  %32 = load ptr, ptr %31, align 8
  %33 = tail call noundef ptr %32(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %28)
  %34 = tail call noundef ptr @_ZN11xercesc_2_717RegularExpression7compileEPKNS_5TokenEPNS_2OpEb(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %33, ptr noundef %29, i1 noundef zeroext true)
  %35 = add nuw nsw i32 %28, 1
  %36 = icmp eq i32 %35, %13
  br i1 %36, label %99, label %27, !llvm.loop !265

37:                                               ; preds = %4
  %38 = load ptr, ptr %1, align 8, !tbaa !94
  %39 = getelementptr inbounds ptr, ptr %38, i64 3
  %40 = load ptr, ptr %39, align 8
  %41 = tail call noundef i32 %40(ptr noundef nonnull align 8 dereferenceable(24) %1), !prof !266
  %42 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 12
  %43 = tail call noundef ptr @_ZN11xercesc_2_79OpFactory13createUnionOpEi(ptr noundef nonnull align 8 dereferenceable(16) %42, i32 noundef %41)
  %44 = icmp sgt i32 %41, 0
  br i1 %44, label %45, label %99, !prof !267

45:                                               ; preds = %37, %45
  %46 = phi i32 [ %52, %45 ], [ 0, %37 ]
  %47 = load ptr, ptr %1, align 8, !tbaa !94
  %48 = getelementptr inbounds ptr, ptr %47, i64 2
  %49 = load ptr, ptr %48, align 8
  %50 = tail call noundef ptr %49(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %46), !prof !268
  %51 = tail call noundef ptr @_ZN11xercesc_2_717RegularExpression7compileEPKNS_5TokenEPNS_2OpEb(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %50, ptr noundef %2, i1 noundef zeroext %3)
  tail call void @_ZN11xercesc_2_77UnionOp10addElementEPNS_2OpE(ptr noundef nonnull align 8 dereferenceable(40) %43, ptr noundef %51)
  %52 = add nuw nsw i32 %46, 1
  %53 = icmp eq i32 %52, %41
  br i1 %53, label %99, label %45, !prof !269, !llvm.loop !270

54:                                               ; preds = %4, %4
  %55 = tail call noundef ptr @_ZN11xercesc_2_717RegularExpression14compileClosureEPKNS_5TokenEPNS_2OpEbt(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %1, ptr noundef %2, i1 noundef zeroext %3, i16 noundef zeroext %6)
  br label %99

56:                                               ; preds = %4
  %57 = tail call noundef ptr @_ZN11xercesc_2_717RegularExpression18compileParenthesisEPKNS_5TokenEPNS_2OpEb(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %1, ptr noundef %2, i1 noundef zeroext %3)
  br label %99

58:                                               ; preds = %4, %4
  %59 = tail call noundef ptr @_ZN11xercesc_2_717RegularExpression11compileLookEPKNS_5TokenEPKNS_2OpEbt(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %1, ptr noundef %2, i1 noundef zeroext false, i16 noundef zeroext %6)
  br label %99

60:                                               ; preds = %4, %4
  %61 = tail call noundef ptr @_ZN11xercesc_2_717RegularExpression11compileLookEPKNS_5TokenEPKNS_2OpEbt(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %1, ptr noundef %2, i1 noundef zeroext true, i16 noundef zeroext %6)
  br label %99

62:                                               ; preds = %4, %4
  %63 = tail call noundef ptr @_ZN11xercesc_2_717RegularExpression11compileLookEPKNS_5TokenEPKNS_2OpEbt(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %1, ptr noundef %2, i1 noundef zeroext %3, i16 noundef zeroext %6)
  br label %99

64:                                               ; preds = %4
  %65 = getelementptr inbounds %"class.xercesc_2_7::ConditionToken", ptr %1, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !271
  %67 = load ptr, ptr %1, align 8, !tbaa !94
  %68 = getelementptr inbounds ptr, ptr %67, i64 2
  %69 = load ptr, ptr %68, align 8
  %70 = tail call noundef ptr %69(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 0)
  %71 = load ptr, ptr %1, align 8, !tbaa !94
  %72 = getelementptr inbounds ptr, ptr %71, i64 2
  %73 = load ptr, ptr %72, align 8
  %74 = tail call noundef ptr %73(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 1)
  %75 = load ptr, ptr %1, align 8, !tbaa !94
  %76 = getelementptr inbounds ptr, ptr %75, i64 7
  %77 = load ptr, ptr %76, align 8
  %78 = tail call noundef i32 %77(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %79 = icmp eq ptr %66, null
  br i1 %79, label %82, label %80

80:                                               ; preds = %64
  %81 = tail call noundef ptr @_ZN11xercesc_2_717RegularExpression7compileEPKNS_5TokenEPNS_2OpEb(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %66, ptr noundef null, i1 noundef zeroext %3)
  br label %82

82:                                               ; preds = %80, %64
  %83 = phi ptr [ %81, %80 ], [ null, %64 ]
  %84 = tail call noundef ptr @_ZN11xercesc_2_717RegularExpression7compileEPKNS_5TokenEPNS_2OpEb(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %70, ptr noundef %2, i1 noundef zeroext %3)
  %85 = icmp eq ptr %74, null
  br i1 %85, label %88, label %86

86:                                               ; preds = %82
  %87 = tail call noundef ptr @_ZN11xercesc_2_717RegularExpression7compileEPKNS_5TokenEPNS_2OpEb(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %74, ptr noundef %2, i1 noundef zeroext %3)
  br label %88

88:                                               ; preds = %82, %86
  %89 = phi ptr [ %87, %86 ], [ null, %82 ]
  %90 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 12
  %91 = tail call noundef ptr @_ZN11xercesc_2_79OpFactory17createConditionOpEPKNS_2OpEiS3_S3_S3_(ptr noundef nonnull align 8 dereferenceable(16) %90, ptr noundef %2, i32 noundef %78, ptr noundef %83, ptr noundef %84, ptr noundef %89)
  br label %99

92:                                               ; preds = %4
  %93 = tail call ptr @__cxa_allocate_exception(i64 48) #20
  %94 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 14
  %95 = load ptr, ptr %94, align 8, !tbaa !116
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %93, ptr noundef nonnull @.str, i32 noundef 1424, i32 noundef 292, ptr noundef %95)
          to label %96 unwind label %97

96:                                               ; preds = %92
  tail call void @__cxa_throw(ptr nonnull %93, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #22
  unreachable

97:                                               ; preds = %92
  %98 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %93) #20
  resume { ptr, i32 } %98

99:                                               ; preds = %45, %17, %27, %37, %15, %16, %88, %62, %60, %58, %56, %54, %7
  %100 = phi ptr [ %91, %88 ], [ %63, %62 ], [ %61, %60 ], [ %59, %58 ], [ %57, %56 ], [ %55, %54 ], [ %8, %7 ], [ %2, %16 ], [ %2, %15 ], [ %43, %37 ], [ %34, %27 ], [ %25, %17 ], [ %43, %45 ]
  ret ptr %100
}

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_717RegularExpression13compileSingleEPKNS_5TokenEPNS_2OpEt(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3) local_unnamed_addr #9 comdat align 2 !prof !273 {
  switch i16 %3, label %40 [
    i16 11, label %5
    i16 0, label %8
    i16 8, label %15
    i16 4, label %22
    i16 5, label %22
    i16 7, label %25
    i16 10, label %26
    i16 12, label %33
  ], !prof !274

5:                                                ; preds = %4
  %6 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 12
  %7 = tail call noundef ptr @_ZN11xercesc_2_79OpFactory11createDotOpEv(ptr noundef nonnull align 8 dereferenceable(16) %6)
  br label %40

8:                                                ; preds = %4
  %9 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 12
  %10 = load ptr, ptr %1, align 8, !tbaa !94
  %11 = getelementptr inbounds ptr, ptr %10, i64 9
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef i32 %12(ptr noundef nonnull align 8 dereferenceable(24) %1), !prof !275
  %14 = tail call noundef ptr @_ZN11xercesc_2_79OpFactory12createCharOpEi(ptr noundef nonnull align 8 dereferenceable(16) %9, i32 noundef %13)
  br label %40

15:                                               ; preds = %4
  %16 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 12
  %17 = load ptr, ptr %1, align 8, !tbaa !94
  %18 = getelementptr inbounds ptr, ptr %17, i64 9
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef i32 %19(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %21 = tail call noundef ptr @_ZN11xercesc_2_79OpFactory14createAnchorOpEi(ptr noundef nonnull align 8 dereferenceable(16) %16, i32 noundef %20)
  br label %40

22:                                               ; preds = %4, %4
  %23 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 12
  %24 = tail call noundef ptr @_ZN11xercesc_2_79OpFactory13createRangeOpEPKNS_5TokenE(ptr noundef nonnull align 8 dereferenceable(16) %23, ptr noundef %1)
  br label %40

25:                                               ; preds = %4
  br label %40

26:                                               ; preds = %4
  %27 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 12
  %28 = load ptr, ptr %1, align 8, !tbaa !94
  %29 = getelementptr inbounds ptr, ptr %28, i64 8
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef ptr %30(ptr noundef nonnull align 8 dereferenceable(24) %1), !prof !276
  %32 = tail call noundef ptr @_ZN11xercesc_2_79OpFactory14createStringOpEPKt(ptr noundef nonnull align 8 dereferenceable(16) %27, ptr noundef %31)
  br label %40

33:                                               ; preds = %4
  %34 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 12
  %35 = load ptr, ptr %1, align 8, !tbaa !94
  %36 = getelementptr inbounds ptr, ptr %35, i64 7
  %37 = load ptr, ptr %36, align 8
  %38 = tail call noundef i32 %37(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %39 = tail call noundef ptr @_ZN11xercesc_2_79OpFactory21createBackReferenceOpEi(ptr noundef nonnull align 8 dereferenceable(16) %34, i32 noundef %38)
  br label %40

40:                                               ; preds = %4, %33, %26, %25, %22, %15, %8, %5
  %41 = phi ptr [ null, %4 ], [ %39, %33 ], [ %32, %26 ], [ %2, %25 ], [ %24, %22 ], [ %21, %15 ], [ %14, %8 ], [ %7, %5 ]
  %42 = icmp eq i16 %3, 7
  br i1 %42, label %45, label %43, !prof !277

43:                                               ; preds = %40
  %44 = getelementptr inbounds %"class.xercesc_2_7::Op", ptr %41, i64 0, i32 3
  store ptr %2, ptr %44, align 8, !tbaa !154
  br label %45

45:                                               ; preds = %43, %40
  ret ptr %41
}

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_717RegularExpression14compileClosureEPKNS_5TokenEPNS_2OpEbt(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3, i16 noundef zeroext %4) local_unnamed_addr #9 comdat align 2 !prof !278 {
  %6 = load ptr, ptr %1, align 8, !tbaa !94
  %7 = getelementptr inbounds ptr, ptr %6, i64 2
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 0), !prof !279
  %10 = load ptr, ptr %1, align 8, !tbaa !94
  %11 = getelementptr inbounds ptr, ptr %10, i64 4
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef i32 %12(ptr noundef nonnull align 8 dereferenceable(24) %1), !prof !280
  %14 = load ptr, ptr %1, align 8, !tbaa !94
  %15 = getelementptr inbounds ptr, ptr %14, i64 5
  %16 = load ptr, ptr %15, align 8
  %17 = tail call noundef i32 %16(ptr noundef nonnull align 8 dereferenceable(24) %1), !prof !281
  %18 = icmp sgt i32 %13, -1
  %19 = icmp eq i32 %13, %17
  %20 = and i1 %18, %19
  %21 = icmp sgt i32 %13, 0
  br i1 %20, label %22, label %29, !prof !282

22:                                               ; preds = %5
  br i1 %21, label %23, label %74, !prof !144

23:                                               ; preds = %22, %23
  %24 = phi i32 [ %27, %23 ], [ 0, %22 ]
  %25 = phi ptr [ %26, %23 ], [ %2, %22 ]
  %26 = tail call noundef ptr @_ZN11xercesc_2_717RegularExpression7compileEPKNS_5TokenEPNS_2OpEb(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %9, ptr noundef %25, i1 noundef zeroext %3)
  %27 = add nuw nsw i32 %24, 1
  %28 = icmp eq i32 %27, %13
  br i1 %28, label %74, label %23, !prof !283, !llvm.loop !284

29:                                               ; preds = %5
  %30 = icmp sgt i32 %17, 0
  %31 = tail call i32 @llvm.smax.i32(i32 %13, i32 0)
  %32 = select i1 %30, i32 %31, i32 0, !prof !285
  %33 = sub nsw i32 %17, %32
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %46, !prof !285

35:                                               ; preds = %29
  %36 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 12
  %37 = icmp eq i16 %4, 9
  br label %38

38:                                               ; preds = %35, %38
  %39 = phi i32 [ 0, %35 ], [ %44, %38 ]
  %40 = phi ptr [ %2, %35 ], [ %41, %38 ]
  %41 = tail call noundef ptr @_ZN11xercesc_2_79OpFactory16createQuestionOpEb(ptr noundef nonnull align 8 dereferenceable(16) %36, i1 noundef zeroext %37)
  %42 = getelementptr inbounds %"class.xercesc_2_7::Op", ptr %41, i64 0, i32 3
  store ptr %2, ptr %42, align 8, !tbaa !154
  %43 = tail call noundef ptr @_ZN11xercesc_2_717RegularExpression7compileEPKNS_5TokenEPNS_2OpEb(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %9, ptr noundef %40, i1 noundef zeroext %3)
  tail call void @_ZN11xercesc_2_77ChildOp8setChildEPKNS_2OpE(ptr noundef nonnull align 8 dereferenceable(40) %41, ptr noundef %43)
  %44 = add nuw nsw i32 %39, 1
  %45 = icmp eq i32 %44, %33
  br i1 %45, label %66, label %38, !prof !286, !llvm.loop !287

46:                                               ; preds = %29
  %47 = icmp eq i16 %4, 9
  br i1 %47, label %48, label %51, !prof !288

48:                                               ; preds = %46
  %49 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 12
  %50 = tail call noundef ptr @_ZN11xercesc_2_79OpFactory24createNonGreedyClosureOpEv(ptr noundef nonnull align 8 dereferenceable(16) %49)
  br label %62

51:                                               ; preds = %46
  %52 = tail call noundef i32 @_ZNK11xercesc_2_75Token12getMinLengthEv(ptr noundef nonnull align 8 dereferenceable(24) %9)
  %53 = icmp eq i32 %52, 0
  %54 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 12
  br i1 %53, label %55, label %60, !prof !288

55:                                               ; preds = %51
  %56 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 4
  %57 = load i32, ptr %56, align 4, !tbaa !148
  %58 = add nsw i32 %57, 1
  store i32 %58, ptr %56, align 4, !tbaa !148
  %59 = tail call noundef ptr @_ZN11xercesc_2_79OpFactory15createClosureOpEi(ptr noundef nonnull align 8 dereferenceable(16) %54, i32 noundef %57)
  br label %62

60:                                               ; preds = %51
  %61 = tail call noundef ptr @_ZN11xercesc_2_79OpFactory15createClosureOpEi(ptr noundef nonnull align 8 dereferenceable(16) %54, i32 noundef -1)
  br label %62

62:                                               ; preds = %55, %60, %48
  %63 = phi ptr [ %50, %48 ], [ %59, %55 ], [ %61, %60 ]
  %64 = getelementptr inbounds %"class.xercesc_2_7::Op", ptr %63, i64 0, i32 3
  store ptr %2, ptr %64, align 8, !tbaa !154
  %65 = tail call noundef ptr @_ZN11xercesc_2_717RegularExpression7compileEPKNS_5TokenEPNS_2OpEb(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %9, ptr noundef nonnull %63, i1 noundef zeroext %3)
  tail call void @_ZN11xercesc_2_77ChildOp8setChildEPKNS_2OpE(ptr noundef nonnull align 8 dereferenceable(40) %63, ptr noundef %65)
  br label %66

66:                                               ; preds = %38, %62
  %67 = phi ptr [ %63, %62 ], [ %41, %38 ]
  br i1 %21, label %68, label %74, !prof !285

68:                                               ; preds = %66, %68
  %69 = phi i32 [ %72, %68 ], [ 0, %66 ]
  %70 = phi ptr [ %71, %68 ], [ %67, %66 ]
  %71 = tail call noundef ptr @_ZN11xercesc_2_717RegularExpression7compileEPKNS_5TokenEPNS_2OpEb(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %9, ptr noundef %70, i1 noundef zeroext %3)
  %72 = add nuw nsw i32 %69, 1
  %73 = icmp eq i32 %72, %13
  br i1 %73, label %74, label %68, !prof !289, !llvm.loop !290

74:                                               ; preds = %68, %23, %22, %66
  %75 = phi ptr [ %67, %66 ], [ %2, %22 ], [ %26, %23 ], [ %71, %68 ]
  ret ptr %75
}

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_717RegularExpression18compileParenthesisEPKNS_5TokenEPNS_2OpEb(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3) local_unnamed_addr #9 comdat align 2 !prof !291 {
  %5 = load ptr, ptr %1, align 8, !tbaa !94
  %6 = getelementptr inbounds ptr, ptr %5, i64 6
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef i32 %7(ptr noundef nonnull align 8 dereferenceable(24) %1), !prof !292
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %16, !prof !293

10:                                               ; preds = %4
  %11 = load ptr, ptr %1, align 8, !tbaa !94
  %12 = getelementptr inbounds ptr, ptr %11, i64 2
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 0), !prof !294
  %15 = tail call noundef ptr @_ZN11xercesc_2_717RegularExpression7compileEPKNS_5TokenEPNS_2OpEb(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %14, ptr noundef %2, i1 noundef zeroext %3)
  br label %48

16:                                               ; preds = %4
  %17 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 12
  %18 = load ptr, ptr %1, align 8, !tbaa !94
  %19 = getelementptr inbounds ptr, ptr %18, i64 6
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef i32 %20(ptr noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %3, label %22, label %35

22:                                               ; preds = %16
  %23 = tail call noundef ptr @_ZN11xercesc_2_79OpFactory15createCaptureOpEiPKNS_2OpE(ptr noundef nonnull align 8 dereferenceable(16) %17, i32 noundef %21, ptr noundef %2)
  %24 = load ptr, ptr %1, align 8, !tbaa !94
  %25 = getelementptr inbounds ptr, ptr %24, i64 2
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 0)
  %28 = tail call noundef ptr @_ZN11xercesc_2_717RegularExpression7compileEPKNS_5TokenEPNS_2OpEb(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %27, ptr noundef %23, i1 noundef zeroext true)
  %29 = load ptr, ptr %1, align 8, !tbaa !94
  %30 = getelementptr inbounds ptr, ptr %29, i64 6
  %31 = load ptr, ptr %30, align 8
  %32 = tail call noundef i32 %31(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %33 = sub nsw i32 0, %32
  %34 = tail call noundef ptr @_ZN11xercesc_2_79OpFactory15createCaptureOpEiPKNS_2OpE(ptr noundef nonnull align 8 dereferenceable(16) %17, i32 noundef %33, ptr noundef %28)
  br label %48

35:                                               ; preds = %16
  %36 = sub nsw i32 0, %21
  %37 = tail call noundef ptr @_ZN11xercesc_2_79OpFactory15createCaptureOpEiPKNS_2OpE(ptr noundef nonnull align 8 dereferenceable(16) %17, i32 noundef %36, ptr noundef %2)
  %38 = load ptr, ptr %1, align 8, !tbaa !94
  %39 = getelementptr inbounds ptr, ptr %38, i64 2
  %40 = load ptr, ptr %39, align 8
  %41 = tail call noundef ptr %40(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 0)
  %42 = tail call noundef ptr @_ZN11xercesc_2_717RegularExpression7compileEPKNS_5TokenEPNS_2OpEb(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %41, ptr noundef %37, i1 noundef zeroext false)
  %43 = load ptr, ptr %1, align 8, !tbaa !94
  %44 = getelementptr inbounds ptr, ptr %43, i64 6
  %45 = load ptr, ptr %44, align 8
  %46 = tail call noundef i32 %45(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %47 = tail call noundef ptr @_ZN11xercesc_2_79OpFactory15createCaptureOpEiPKNS_2OpE(ptr noundef nonnull align 8 dereferenceable(16) %17, i32 noundef %46, ptr noundef %42)
  br label %48

48:                                               ; preds = %22, %35, %10
  %49 = phi ptr [ %15, %10 ], [ %34, %22 ], [ %47, %35 ]
  ret ptr %49
}

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_717RegularExpression11compileLookEPKNS_5TokenEPKNS_2OpEbt(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3, i16 noundef zeroext %4) local_unnamed_addr #9 comdat align 2 !prof !81 {
  %6 = load ptr, ptr %1, align 8, !tbaa !94
  %7 = getelementptr inbounds ptr, ptr %6, i64 2
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 0)
  %10 = tail call noundef ptr @_ZN11xercesc_2_717RegularExpression7compileEPKNS_5TokenEPNS_2OpEb(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %9, ptr noundef null, i1 noundef zeroext %3)
  switch i16 %4, label %33 [
    i16 20, label %11
    i16 21, label %14
    i16 22, label %17
    i16 23, label %20
    i16 24, label %23
    i16 25, label %26
  ]

11:                                               ; preds = %5
  %12 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 12
  %13 = tail call noundef ptr @_ZN11xercesc_2_79OpFactory12createLookOpEsPKNS_2OpES3_(ptr noundef nonnull align 8 dereferenceable(16) %12, i16 noundef signext 20, ptr noundef %2, ptr noundef %10)
  br label %33

14:                                               ; preds = %5
  %15 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 12
  %16 = tail call noundef ptr @_ZN11xercesc_2_79OpFactory12createLookOpEsPKNS_2OpES3_(ptr noundef nonnull align 8 dereferenceable(16) %15, i16 noundef signext 21, ptr noundef %2, ptr noundef %10)
  br label %33

17:                                               ; preds = %5
  %18 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 12
  %19 = tail call noundef ptr @_ZN11xercesc_2_79OpFactory12createLookOpEsPKNS_2OpES3_(ptr noundef nonnull align 8 dereferenceable(16) %18, i16 noundef signext 22, ptr noundef %2, ptr noundef %10)
  br label %33

20:                                               ; preds = %5
  %21 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 12
  %22 = tail call noundef ptr @_ZN11xercesc_2_79OpFactory12createLookOpEsPKNS_2OpES3_(ptr noundef nonnull align 8 dereferenceable(16) %21, i16 noundef signext 23, ptr noundef %2, ptr noundef %10)
  br label %33

23:                                               ; preds = %5
  %24 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 12
  %25 = tail call noundef ptr @_ZN11xercesc_2_79OpFactory19createIndependentOpEPKNS_2OpES3_(ptr noundef nonnull align 8 dereferenceable(16) %24, ptr noundef %2, ptr noundef %10)
  br label %33

26:                                               ; preds = %5
  %27 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 12
  %28 = getelementptr inbounds %"class.xercesc_2_7::ModifierToken", ptr %1, i64 0, i32 1
  %29 = load i32, ptr %28, align 8, !tbaa !295
  %30 = getelementptr inbounds %"class.xercesc_2_7::ModifierToken", ptr %1, i64 0, i32 2
  %31 = load i32, ptr %30, align 4, !tbaa !297
  %32 = tail call noundef ptr @_ZN11xercesc_2_79OpFactory16createModifierOpEPKNS_2OpES3_ii(ptr noundef nonnull align 8 dereferenceable(16) %27, ptr noundef %2, ptr noundef %10, i32 noundef %29, i32 noundef %31)
  br label %33

33:                                               ; preds = %5, %26, %23, %20, %17, %14, %11
  %34 = phi ptr [ null, %5 ], [ %32, %26 ], [ %25, %23 ], [ %22, %20 ], [ %19, %17 ], [ %16, %14 ], [ %13, %11 ]
  ret ptr %34
}

declare noundef zeroext i1 @_ZN11xercesc_2_79XMLString7isDigitEt(i16 noundef zeroext) local_unnamed_addr #1

declare noundef i32 @_ZN11xercesc_2_79XMLString8parseIntEPKtPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #1

declare noundef i32 @_ZNK11xercesc_2_75Token12getMinLengthEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_712TokenFactory11createRangeEb(ptr noundef nonnull align 8 dereferenceable(128), i1 noundef zeroext) local_unnamed_addr #1

declare noundef i32 @_ZN11xercesc_2_75Token21analyzeFirstCharacterEPNS_10RangeTokenEiPNS_12TokenFactoryE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_78RegxUtil21decomposeToSurrogatesEiPNS_13MemoryManagerE(i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN11xercesc_2_79BMPatternC1EPKtibPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef) unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_75Token15findFixedStringEiRi(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i16 @_ZN11xercesc_2_717RegularExpression11getCharTypeEt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(104) %0, i16 noundef zeroext %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !81 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !126
  %5 = and i32 %4, 64
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %38

7:                                                ; preds = %2
  %8 = and i32 %4, 32
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %28, label %10

10:                                               ; preds = %7
  %11 = load ptr, ptr @_ZN11xercesc_2_717RegularExpression10fWordRangeE, align 8, !tbaa !206
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %23

13:                                               ; preds = %10
  %14 = tail call noundef ptr @_ZN11xercesc_2_712TokenFactory14staticGetRangeEPKtb(ptr noundef nonnull @_ZN11xercesc_2_7L11fgUniIsWordE, i1 noundef zeroext false)
  store ptr %14, ptr @_ZN11xercesc_2_717RegularExpression10fWordRangeE, align 8, !tbaa !206
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %13
  %17 = tail call ptr @__cxa_allocate_exception(i64 48) #20
  %18 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 14
  %19 = load ptr, ptr %18, align 8, !tbaa !116
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %17, ptr noundef nonnull @.str, i32 noundef 1607, i32 noundef 293, ptr noundef nonnull @_ZN11xercesc_2_7L11fgUniIsWordE, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %19)
          to label %20 unwind label %21

20:                                               ; preds = %16
  tail call void @__cxa_throw(ptr nonnull %17, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #22
  unreachable

21:                                               ; preds = %16
  %22 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %17) #20
  resume { ptr, i32 } %22

23:                                               ; preds = %13, %10
  %24 = load ptr, ptr @_ZN11xercesc_2_717RegularExpression10fWordRangeE, align 8, !tbaa !206
  %25 = zext i16 %1 to i32
  %26 = tail call noundef zeroext i1 @_ZN11xercesc_2_710RangeToken5matchEi(ptr noundef nonnull align 8 dereferenceable(72) %24, i32 noundef %25)
  %27 = select i1 %26, i16 1, i16 2
  br label %46

28:                                               ; preds = %7
  %29 = icmp eq i16 %1, 95
  %30 = add i16 %1, -48
  %31 = icmp ult i16 %30, 10
  %32 = or i1 %29, %31
  %33 = and i16 %1, -33
  %34 = add i16 %33, -65
  %35 = icmp ult i16 %34, 26
  %36 = or i1 %32, %35
  %37 = zext i1 %36 to i16
  br label %46

38:                                               ; preds = %2
  %39 = tail call noundef zeroext i16 @_ZN11xercesc_2_715XMLUniCharacter7getTypeEt(i16 noundef zeroext %1)
  switch i16 %39, label %45 [
    i16 1, label %46
    i16 2, label %46
    i16 3, label %46
    i16 4, label %46
    i16 5, label %46
    i16 10, label %46
    i16 9, label %46
    i16 11, label %46
    i16 8, label %46
    i16 16, label %40
    i16 6, label %40
    i16 7, label %40
    i16 15, label %41
  ]

40:                                               ; preds = %38, %38, %38
  br label %46

41:                                               ; preds = %38
  %42 = add i16 %1, -9
  %43 = icmp ult i16 %42, 5
  %44 = select i1 %43, i16 2, i16 0
  br label %46

45:                                               ; preds = %38
  br label %46

46:                                               ; preds = %38, %38, %38, %38, %38, %38, %38, %38, %41, %38, %45, %40, %28, %23
  %47 = phi i16 [ 2, %45 ], [ 0, %40 ], [ %27, %23 ], [ %37, %28 ], [ 1, %38 ], [ %44, %41 ], [ 1, %38 ], [ 1, %38 ], [ 1, %38 ], [ 1, %38 ], [ 1, %38 ], [ 1, %38 ], [ 1, %38 ], [ 1, %38 ]
  ret i16 %47
}

declare noundef zeroext i16 @_ZN11xercesc_2_715XMLUniCharacter7getTypeEt(i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_79BMPatternD1Ev(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #11

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #11

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712TokenFactoryD1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #16

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !81 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !94
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #20
  resume { ptr, i32 } %8
}

declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #1

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #12 comdat align 2 !prof !81 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #20
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #20
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #12 comdat align 2 !prof !81 {
  ret ptr @_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !81 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !298
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !94
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #20
  resume { ptr, i32 } %7
}

declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #12 comdat align 2 !prof !81 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #20
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #20
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #12 comdat align 2 !prof !81 {
  ret ptr @_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !81 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !298
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !94
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #20
  resume { ptr, i32 } %7
}

declare void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) local_unnamed_addr #1

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #12 comdat align 2 !prof !81 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #20
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #20
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #12 comdat align 2 !prof !81 {
  ret ptr @_ZN11xercesc_2_76XMLUni31fgIllegalArgumentException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !81 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !298
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_724IllegalArgumentExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !94
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #20
  resume { ptr, i32 } %7
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714ParseExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #12 comdat align 2 !prof !81 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #20
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #20
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_714ParseException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #12 comdat align 2 !prof !81 {
  ret ptr @_ZN11xercesc_2_76XMLUni21fgParseException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_714ParseException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !81 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !298
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_714ParseExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !94
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #20
  resume { ptr, i32 } %7
}

declare noundef ptr @_ZN11xercesc_2_79OpFactory11createDotOpEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_79OpFactory12createCharOpEi(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_79OpFactory14createAnchorOpEi(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_79OpFactory13createRangeOpEPKNS_5TokenE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_79OpFactory14createStringOpEPKt(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_79OpFactory21createBackReferenceOpEi(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_79OpFactory13createUnionOpEi(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #1

declare void @_ZN11xercesc_2_77UnionOp10addElementEPNS_2OpE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_79OpFactory16createQuestionOpEb(ptr noundef nonnull align 8 dereferenceable(16), i1 noundef zeroext) local_unnamed_addr #1

declare void @_ZN11xercesc_2_77ChildOp8setChildEPKNS_2OpE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_79OpFactory24createNonGreedyClosureOpEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_79OpFactory15createClosureOpEi(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_79OpFactory15createCaptureOpEiPKNS_2OpE(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef) local_unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_79OpFactory12createLookOpEsPKNS_2OpES3_(ptr noundef nonnull align 8 dereferenceable(16), i16 noundef signext, ptr noundef, ptr noundef) local_unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_79OpFactory19createIndependentOpEPKNS_2OpES3_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef) local_unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_79OpFactory16createModifierOpEPKNS_2OpES3_ii(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_79OpFactory17createConditionOpEPKNS_2OpEiS3_S3_S3_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN11xercesc_2_710RangeToken11doCreateMapEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RefArrayVectorOfItED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !81 {
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_716RefArrayVectorOfItEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !94
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !200, !range !96, !noundef !97
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %26, label %5, !prof !301

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !202
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %26, label %9, !prof !302

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %12

12:                                               ; preds = %9, %21
  %13 = phi i64 [ 0, %9 ], [ %22, %21 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !205
  %15 = load ptr, ptr %11, align 8, !tbaa !204
  %16 = getelementptr inbounds ptr, ptr %15, i64 %13
  %17 = load ptr, ptr %16, align 8, !tbaa !206
  %18 = load ptr, ptr %14, align 8, !tbaa !94
  %19 = getelementptr inbounds ptr, ptr %18, i64 3
  %20 = load ptr, ptr %19, align 8
  invoke void %20(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef %17)
          to label %21 unwind label %35, !prof !303

21:                                               ; preds = %12
  %22 = add nuw nsw i64 %13, 1
  %23 = load i32, ptr %6, align 4, !tbaa !202
  %24 = zext i32 %23 to i64
  %25 = icmp ult i64 %22, %24
  br i1 %25, label %12, label %26, !prof !304, !llvm.loop !305

26:                                               ; preds = %21, %5, %1
  %27 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !205
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !204
  %31 = load ptr, ptr %28, align 8, !tbaa !94
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  invoke void %33(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %30)
          to label %34 unwind label %37, !prof !306

34:                                               ; preds = %26
  ret void

35:                                               ; preds = %12
  %36 = landingpad { ptr, i32 }
          catch ptr null
  br label %39

37:                                               ; preds = %26
  %38 = landingpad { ptr, i32 }
          catch ptr null
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi { ptr, i32 } [ %36, %35 ], [ %38, %37 ]
  %41 = extractvalue { ptr, i32 } %40, 0
  tail call void @__clang_call_terminate(ptr %41) #21
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RefArrayVectorOfItED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !307 {
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_716RefArrayVectorOfItEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !94
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !200, !range !96, !noundef !97
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %26, label %5, !prof !301

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !202
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %26, label %9, !prof !302

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %12

12:                                               ; preds = %21, %9
  %13 = phi i64 [ 0, %9 ], [ %22, %21 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !205
  %15 = load ptr, ptr %11, align 8, !tbaa !204
  %16 = getelementptr inbounds ptr, ptr %15, i64 %13
  %17 = load ptr, ptr %16, align 8, !tbaa !206
  %18 = load ptr, ptr %14, align 8, !tbaa !94
  %19 = getelementptr inbounds ptr, ptr %18, i64 3
  %20 = load ptr, ptr %19, align 8
  invoke void %20(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef %17)
          to label %21 unwind label %34, !prof !303

21:                                               ; preds = %12
  %22 = add nuw nsw i64 %13, 1
  %23 = load i32, ptr %6, align 4, !tbaa !202
  %24 = zext i32 %23 to i64
  %25 = icmp ult i64 %22, %24
  br i1 %25, label %12, label %26, !prof !304, !llvm.loop !305

26:                                               ; preds = %21, %5, %1
  %27 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !205
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !204
  %31 = load ptr, ptr %28, align 8, !tbaa !94
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  invoke void %33(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %30)
          to label %41 unwind label %36, !prof !306

34:                                               ; preds = %12
  %35 = landingpad { ptr, i32 }
          catch ptr null
  br label %38

36:                                               ; preds = %26
  %37 = landingpad { ptr, i32 }
          catch ptr null
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi { ptr, i32 } [ %35, %34 ], [ %37, %36 ]
  %40 = extractvalue { ptr, i32 } %39, 0
  tail call void @__clang_call_terminate(ptr %40) #21
  unreachable

41:                                               ; preds = %26
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RefArrayVectorOfItE12setElementAtEPtj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !308 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !202
  %6 = icmp ugt i32 %5, %2
  br i1 %6, label %14, label %7, !prof !309

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #20
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !205
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str.3, i32 noundef 52, i32 noundef 116, ptr noundef %10)
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #22
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #20
  resume { ptr, i32 } %13

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %16 = load i8, ptr %15, align 8, !tbaa !200, !range !96, !noundef !97
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %29, label %18, !prof !310

18:                                               ; preds = %14
  %19 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %20 = load ptr, ptr %19, align 8, !tbaa !205
  %21 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !204
  %23 = zext i32 %2 to i64
  %24 = getelementptr inbounds ptr, ptr %22, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !206
  %26 = load ptr, ptr %20, align 8, !tbaa !94
  %27 = getelementptr inbounds ptr, ptr %26, i64 3
  %28 = load ptr, ptr %27, align 8
  tail call void %28(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef %25), !prof !311
  br label %29

29:                                               ; preds = %18, %14
  %30 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !204
  %32 = zext i32 %2 to i64
  %33 = getelementptr inbounds ptr, ptr %31, i64 %32
  store ptr %1, ptr %33, align 8, !tbaa !206
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RefArrayVectorOfItE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 !prof !81 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !202
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %12

10:                                               ; preds = %24, %1
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  store i32 0, ptr %11, align 4, !tbaa !202
  ret void

12:                                               ; preds = %5, %24
  %13 = phi i64 [ 0, %5 ], [ %27, %24 ]
  %14 = load i8, ptr %6, align 8, !tbaa !200, !range !96, !noundef !97
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %7, align 8, !tbaa !205
  %18 = load ptr, ptr %8, align 8, !tbaa !204
  %19 = getelementptr inbounds ptr, ptr %18, i64 %13
  %20 = load ptr, ptr %19, align 8, !tbaa !206
  %21 = load ptr, ptr %17, align 8, !tbaa !94
  %22 = getelementptr inbounds ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8
  tail call void %23(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef %20)
  br label %24

24:                                               ; preds = %16, %12
  %25 = load ptr, ptr %9, align 8, !tbaa !204
  %26 = getelementptr inbounds ptr, ptr %25, i64 %13
  store ptr null, ptr %26, align 8, !tbaa !206
  %27 = add nuw nsw i64 %13, 1
  %28 = load i32, ptr %2, align 4, !tbaa !202
  %29 = zext i32 %28 to i64
  %30 = icmp ult i64 %27, %29
  br i1 %30, label %12, label %10, !llvm.loop !312
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RefArrayVectorOfItE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !81 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !202
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #20
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !205
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.3, i32 noundef 77, i32 noundef 116, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #22
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #20
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %15 = load i8, ptr %14, align 8, !tbaa !200, !range !96, !noundef !97
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !205
  %20 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !204
  %22 = zext i32 %1 to i64
  %23 = getelementptr inbounds ptr, ptr %21, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !206
  %25 = load ptr, ptr %19, align 8, !tbaa !94
  %26 = getelementptr inbounds ptr, ptr %25, i64 3
  %27 = load ptr, ptr %26, align 8
  tail call void %27(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef %24)
  br label %28

28:                                               ; preds = %17, %13
  %29 = load i32, ptr %3, align 4, !tbaa !202
  %30 = add i32 %29, -1
  %31 = icmp eq i32 %30, %1
  br i1 %31, label %46, label %32

32:                                               ; preds = %28
  %33 = icmp ugt i32 %30, %1
  br i1 %33, label %34, label %46

34:                                               ; preds = %32
  %35 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %36 = zext i32 %1 to i64
  %37 = zext i32 %30 to i64
  br label %38

38:                                               ; preds = %34, %38
  %39 = phi i64 [ %36, %34 ], [ %41, %38 ]
  %40 = load ptr, ptr %35, align 8, !tbaa !204
  %41 = add nuw nsw i64 %39, 1
  %42 = getelementptr inbounds ptr, ptr %40, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !206
  %44 = getelementptr inbounds ptr, ptr %40, i64 %39
  store ptr %43, ptr %44, align 8, !tbaa !206
  %45 = icmp eq i64 %41, %37
  br i1 %45, label %46, label %38, !llvm.loop !313

46:                                               ; preds = %38, %32, %28
  %47 = phi i32 [ %1, %28 ], [ %30, %32 ], [ %30, %38 ]
  %48 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !204
  %50 = zext i32 %47 to i64
  %51 = getelementptr inbounds ptr, ptr %49, i64 %50
  store ptr null, ptr %51, align 8, !tbaa !206
  store i32 %30, ptr %3, align 4, !tbaa !202
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RefArrayVectorOfItE17removeLastElementEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 !prof !81 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !202
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 4, !tbaa !202
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !200, !range !96, !noundef !97
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !205
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !204
  %15 = zext i32 %6 to i64
  %16 = getelementptr inbounds ptr, ptr %14, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !206
  %18 = load ptr, ptr %12, align 8, !tbaa !94
  %19 = getelementptr inbounds ptr, ptr %18, i64 3
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef %17)
  br label %21

21:                                               ; preds = %1, %10, %5
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RefArrayVectorOfItE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 !prof !81 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !200, !range !96, !noundef !97
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %25, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !202
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %25, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %12

12:                                               ; preds = %9, %12
  %13 = phi i64 [ 0, %9 ], [ %21, %12 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !205
  %15 = load ptr, ptr %11, align 8, !tbaa !204
  %16 = getelementptr inbounds ptr, ptr %15, i64 %13
  %17 = load ptr, ptr %16, align 8, !tbaa !206
  %18 = load ptr, ptr %14, align 8, !tbaa !94
  %19 = getelementptr inbounds ptr, ptr %18, i64 3
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef %17)
  %21 = add nuw nsw i64 %13, 1
  %22 = load i32, ptr %6, align 4, !tbaa !202
  %23 = zext i32 %22 to i64
  %24 = icmp ult i64 %21, %23
  br i1 %24, label %12, label %25, !llvm.loop !314

25:                                               ; preds = %12, %5, %1
  %26 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %27 = load ptr, ptr %26, align 8, !tbaa !205
  %28 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !204
  %30 = load ptr, ptr %27, align 8, !tbaa !94
  %31 = getelementptr inbounds ptr, ptr %30, i64 3
  %32 = load ptr, ptr %31, align 8
  tail call void %32(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %29)
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfItED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #12 comdat align 2 !prof !81 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfItED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #12 comdat align 2 !prof !81 {
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #20
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfItE12setElementAtEPtj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !81 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !202
  %6 = icmp ugt i32 %5, %2
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #20
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !205
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str.2, i32 noundef 67, i32 noundef 116, ptr noundef %10)
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #22
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #20
  resume { ptr, i32 } %13

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %16 = load i8, ptr %15, align 8, !tbaa !200, !range !96, !noundef !97
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !204
  %21 = zext i32 %2 to i64
  %22 = getelementptr inbounds ptr, ptr %20, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !206
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %18
  tail call void @_ZdlPv(ptr noundef %23) #23
  br label %26

26:                                               ; preds = %18, %25, %14
  %27 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %28 = load ptr, ptr %27, align 8, !tbaa !204
  %29 = zext i32 %2 to i64
  %30 = getelementptr inbounds ptr, ptr %28, i64 %29
  store ptr %1, ptr %30, align 8, !tbaa !206
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfItE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #12 comdat align 2 !prof !81 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !202
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %11

9:                                                ; preds = %21, %1
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  store i32 0, ptr %10, align 4, !tbaa !202
  ret void

11:                                               ; preds = %5, %21
  %12 = phi i64 [ 0, %5 ], [ %24, %21 ]
  %13 = load i8, ptr %6, align 8, !tbaa !200, !range !96, !noundef !97
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %7, align 8, !tbaa !204
  %17 = getelementptr inbounds ptr, ptr %16, i64 %12
  %18 = load ptr, ptr %17, align 8, !tbaa !206
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  tail call void @_ZdlPv(ptr noundef %18) #23
  br label %21

21:                                               ; preds = %15, %20, %11
  %22 = load ptr, ptr %8, align 8, !tbaa !204
  %23 = getelementptr inbounds ptr, ptr %22, i64 %12
  store ptr null, ptr %23, align 8, !tbaa !206
  %24 = add nuw nsw i64 %12, 1
  %25 = load i32, ptr %2, align 4, !tbaa !202
  %26 = zext i32 %25 to i64
  %27 = icmp ult i64 %24, %26
  br i1 %27, label %11, label %9, !llvm.loop !315
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfItE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !81 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !202
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #20
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !205
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.2, i32 noundef 144, i32 noundef 116, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #22
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #20
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %15 = load i8, ptr %14, align 8, !tbaa !200, !range !96, !noundef !97
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !204
  %20 = zext i32 %1 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !206
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %17
  tail call void @_ZdlPv(ptr noundef %22) #23
  br label %25

25:                                               ; preds = %17, %24, %13
  %26 = load i32, ptr %3, align 4, !tbaa !202
  %27 = add i32 %26, -1
  %28 = icmp eq i32 %27, %1
  br i1 %28, label %43, label %29

29:                                               ; preds = %25
  %30 = icmp ugt i32 %27, %1
  br i1 %30, label %31, label %43

31:                                               ; preds = %29
  %32 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %33 = zext i32 %1 to i64
  %34 = zext i32 %27 to i64
  br label %35

35:                                               ; preds = %31, %35
  %36 = phi i64 [ %33, %31 ], [ %38, %35 ]
  %37 = load ptr, ptr %32, align 8, !tbaa !204
  %38 = add nuw nsw i64 %36, 1
  %39 = getelementptr inbounds ptr, ptr %37, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !206
  %41 = getelementptr inbounds ptr, ptr %37, i64 %36
  store ptr %40, ptr %41, align 8, !tbaa !206
  %42 = icmp eq i64 %38, %34
  br i1 %42, label %43, label %35, !llvm.loop !316

43:                                               ; preds = %35, %29, %25
  %44 = phi i32 [ %1, %25 ], [ %27, %29 ], [ %27, %35 ]
  %45 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %46 = load ptr, ptr %45, align 8, !tbaa !204
  %47 = zext i32 %44 to i64
  %48 = getelementptr inbounds ptr, ptr %46, i64 %47
  store ptr null, ptr %48, align 8, !tbaa !206
  store i32 %27, ptr %3, align 4, !tbaa !202
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfItE17removeLastElementEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #12 comdat align 2 !prof !81 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !202
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %18, label %5

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 4, !tbaa !202
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !200, !range !96, !noundef !97
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !204
  %13 = zext i32 %6 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !206
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %10
  tail call void @_ZdlPv(ptr noundef %15) #23
  br label %18

18:                                               ; preds = %10, %17, %1, %5
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfItE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 !prof !81 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !200, !range !96, !noundef !97
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %23, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !202
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %23, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %18
  %12 = phi i64 [ 0, %9 ], [ %19, %18 ]
  %13 = load ptr, ptr %10, align 8, !tbaa !204
  %14 = getelementptr inbounds ptr, ptr %13, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !206
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %11
  tail call void @_ZdlPv(ptr noundef %15) #23
  br label %18

18:                                               ; preds = %11, %17
  %19 = add nuw nsw i64 %12, 1
  %20 = load i32, ptr %6, align 4, !tbaa !202
  %21 = zext i32 %20 to i64
  %22 = icmp ult i64 %19, %21
  br i1 %22, label %11, label %23, !llvm.loop !317

23:                                               ; preds = %18, %5, %1
  %24 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %25 = load ptr, ptr %24, align 8, !tbaa !205
  %26 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !204
  %28 = load ptr, ptr %25, align 8, !tbaa !94
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  tail call void %30(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef %27)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_5MatchEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !81 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !210
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !214
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %55

9:                                                ; preds = %2
  %10 = lshr i32 %7, 1
  %11 = add i32 %10, %7
  %12 = tail call i32 @llvm.umax.i32(i32 %5, i32 %11)
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !215
  %15 = zext i32 %12 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = load ptr, ptr %14, align 8, !tbaa !94
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef %16)
  %21 = load i32, ptr %3, align 4, !tbaa !210
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %9
  %24 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  %25 = zext i32 %21 to i64
  br label %40

26:                                               ; preds = %40
  %27 = trunc i64 %46 to i32
  br label %28

28:                                               ; preds = %26, %9
  %29 = phi i32 [ 0, %9 ], [ %27, %26 ]
  %30 = icmp ult i32 %29, %12
  br i1 %30, label %31, label %48

31:                                               ; preds = %28
  %32 = zext i32 %29 to i64
  %33 = shl nuw nsw i64 %32, 3
  %34 = getelementptr i8, ptr %20, i64 %33
  %35 = xor i32 %29, -1
  %36 = add i32 %12, %35
  %37 = zext i32 %36 to i64
  %38 = shl nuw nsw i64 %37, 3
  %39 = add nuw nsw i64 %38, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %34, i8 0, i64 %39, i1 false), !tbaa !206
  br label %48

40:                                               ; preds = %23, %40
  %41 = phi i64 [ 0, %23 ], [ %46, %40 ]
  %42 = load ptr, ptr %24, align 8, !tbaa !208
  %43 = getelementptr inbounds ptr, ptr %42, i64 %41
  %44 = load ptr, ptr %43, align 8, !tbaa !206
  %45 = getelementptr inbounds ptr, ptr %20, i64 %41
  store ptr %44, ptr %45, align 8, !tbaa !206
  %46 = add nuw nsw i64 %41, 1
  %47 = icmp eq i64 %46, %25
  br i1 %47, label %26, label %40, !llvm.loop !318

48:                                               ; preds = %31, %28
  %49 = load ptr, ptr %13, align 8, !tbaa !215
  %50 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  %51 = load ptr, ptr %50, align 8, !tbaa !208
  %52 = load ptr, ptr %49, align 8, !tbaa !94
  %53 = getelementptr inbounds ptr, ptr %52, i64 3
  %54 = load ptr, ptr %53, align 8
  tail call void %54(ptr noundef nonnull align 8 dereferenceable(8) %49, ptr noundef %51)
  store ptr %20, ptr %50, align 8, !tbaa !208
  store i32 %12, ptr %6, align 8, !tbaa !214
  br label %55

55:                                               ; preds = %2, %48
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfItE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #7 comdat align 2 !prof !319 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !202
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !203
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %55, !prof !320

9:                                                ; preds = %2
  %10 = lshr i32 %7, 1
  %11 = add i32 %10, %7
  %12 = tail call i32 @llvm.umax.i32(i32 %5, i32 %11)
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !205
  %15 = zext i32 %12 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = load ptr, ptr %14, align 8, !tbaa !94
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef %16), !prof !321
  %21 = load i32, ptr %3, align 4, !tbaa !202
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %28, label %23, !prof !322

23:                                               ; preds = %9
  %24 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %25 = zext i32 %21 to i64
  br label %40

26:                                               ; preds = %40
  %27 = trunc i64 %46 to i32
  br label %28

28:                                               ; preds = %26, %9
  %29 = phi i32 [ 0, %9 ], [ %27, %26 ]
  %30 = icmp ult i32 %29, %12
  br i1 %30, label %31, label %48, !prof !323

31:                                               ; preds = %28
  %32 = zext i32 %29 to i64
  %33 = shl nuw nsw i64 %32, 3
  %34 = getelementptr i8, ptr %20, i64 %33
  %35 = xor i32 %29, -1
  %36 = add i32 %12, %35
  %37 = zext i32 %36 to i64
  %38 = shl nuw nsw i64 %37, 3
  %39 = add nuw nsw i64 %38, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %34, i8 0, i64 %39, i1 false), !tbaa !206
  br label %48

40:                                               ; preds = %23, %40
  %41 = phi i64 [ 0, %23 ], [ %46, %40 ]
  %42 = load ptr, ptr %24, align 8, !tbaa !204
  %43 = getelementptr inbounds ptr, ptr %42, i64 %41
  %44 = load ptr, ptr %43, align 8, !tbaa !206
  %45 = getelementptr inbounds ptr, ptr %20, i64 %41
  store ptr %44, ptr %45, align 8, !tbaa !206
  %46 = add nuw nsw i64 %41, 1
  %47 = icmp eq i64 %46, %25
  br i1 %47, label %26, label %40, !prof !324, !llvm.loop !325

48:                                               ; preds = %31, %28
  %49 = load ptr, ptr %13, align 8, !tbaa !205
  %50 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %51 = load ptr, ptr %50, align 8, !tbaa !204
  %52 = load ptr, ptr %49, align 8, !tbaa !94
  %53 = getelementptr inbounds ptr, ptr %52, i64 3
  %54 = load ptr, ptr %53, align 8
  tail call void %54(ptr noundef nonnull align 8 dereferenceable(8) %49, ptr noundef %51), !prof !326
  store ptr %20, ptr %50, align 8, !tbaa !204
  store i32 %12, ptr %6, align 8, !tbaa !203
  br label %55

55:                                               ; preds = %2, %48
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_5MatchEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 !prof !81 {
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_5MatchEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !94
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !213, !range !96, !noundef !97
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %26, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !210
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %26, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %21
  %12 = phi i64 [ 0, %9 ], [ %22, %21 ]
  %13 = load ptr, ptr %10, align 8, !tbaa !208
  %14 = getelementptr inbounds ptr, ptr %13, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !206
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %11
  %18 = load ptr, ptr %15, align 8, !tbaa !94
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(40) %15) #20
  br label %21

21:                                               ; preds = %11, %17
  %22 = add nuw nsw i64 %12, 1
  %23 = load i32, ptr %6, align 4, !tbaa !210
  %24 = zext i32 %23 to i64
  %25 = icmp ult i64 %22, %24
  br i1 %25, label %11, label %26, !llvm.loop !327

26:                                               ; preds = %21, %5, %1
  %27 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !215
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !208
  %31 = load ptr, ptr %28, align 8, !tbaa !94
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  invoke void %33(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %30)
          to label %34 unwind label %35

34:                                               ; preds = %26
  ret void

35:                                               ; preds = %26
  %36 = landingpad { ptr, i32 }
          catch ptr null
  %37 = extractvalue { ptr, i32 } %36, 0
  tail call void @__clang_call_terminate(ptr %37) #21
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_5MatchEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #12 comdat align 2 !prof !81 {
  tail call void @_ZN11xercesc_2_711RefVectorOfINS_5MatchEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #20
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #20
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_5MatchEE12setElementAtEPS1_j(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !81 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !210
  %6 = icmp ugt i32 %5, %2
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #20
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !215
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str.2, i32 noundef 67, i32 noundef 116, ptr noundef %10)
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #22
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #20
  resume { ptr, i32 } %13

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 1
  %16 = load i8, ptr %15, align 8, !tbaa !213, !range !96, !noundef !97
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %29, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !208
  %21 = zext i32 %2 to i64
  %22 = getelementptr inbounds ptr, ptr %20, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !206
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %18
  %26 = load ptr, ptr %23, align 8, !tbaa !94
  %27 = getelementptr inbounds ptr, ptr %26, i64 1
  %28 = load ptr, ptr %27, align 8
  tail call void %28(ptr noundef nonnull align 8 dereferenceable(40) %23) #20
  br label %29

29:                                               ; preds = %18, %25, %14
  %30 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !208
  %32 = zext i32 %2 to i64
  %33 = getelementptr inbounds ptr, ptr %31, i64 %32
  store ptr %1, ptr %33, align 8, !tbaa !206
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_5MatchEE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #12 comdat align 2 !prof !81 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !210
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  br label %11

9:                                                ; preds = %24, %1
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 2
  store i32 0, ptr %10, align 4, !tbaa !210
  ret void

11:                                               ; preds = %5, %24
  %12 = phi i64 [ 0, %5 ], [ %27, %24 ]
  %13 = load i8, ptr %6, align 8, !tbaa !213, !range !96, !noundef !97
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %7, align 8, !tbaa !208
  %17 = getelementptr inbounds ptr, ptr %16, i64 %12
  %18 = load ptr, ptr %17, align 8, !tbaa !206
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %15
  %21 = load ptr, ptr %18, align 8, !tbaa !94
  %22 = getelementptr inbounds ptr, ptr %21, i64 1
  %23 = load ptr, ptr %22, align 8
  tail call void %23(ptr noundef nonnull align 8 dereferenceable(40) %18) #20
  br label %24

24:                                               ; preds = %15, %20, %11
  %25 = load ptr, ptr %8, align 8, !tbaa !208
  %26 = getelementptr inbounds ptr, ptr %25, i64 %12
  store ptr null, ptr %26, align 8, !tbaa !206
  %27 = add nuw nsw i64 %12, 1
  %28 = load i32, ptr %2, align 4, !tbaa !210
  %29 = zext i32 %28 to i64
  %30 = icmp ult i64 %27, %29
  br i1 %30, label %11, label %9, !llvm.loop !328
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_5MatchEE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !81 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !210
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #20
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !215
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.2, i32 noundef 144, i32 noundef 116, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #22
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #20
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 1
  %15 = load i8, ptr %14, align 8, !tbaa !213, !range !96, !noundef !97
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !208
  %20 = zext i32 %1 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !206
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %17
  %25 = load ptr, ptr %22, align 8, !tbaa !94
  %26 = getelementptr inbounds ptr, ptr %25, i64 1
  %27 = load ptr, ptr %26, align 8
  tail call void %27(ptr noundef nonnull align 8 dereferenceable(40) %22) #20
  br label %28

28:                                               ; preds = %17, %24, %13
  %29 = load i32, ptr %3, align 4, !tbaa !210
  %30 = add i32 %29, -1
  %31 = icmp eq i32 %30, %1
  br i1 %31, label %46, label %32

32:                                               ; preds = %28
  %33 = icmp ugt i32 %30, %1
  br i1 %33, label %34, label %46

34:                                               ; preds = %32
  %35 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  %36 = zext i32 %1 to i64
  %37 = zext i32 %30 to i64
  br label %38

38:                                               ; preds = %34, %38
  %39 = phi i64 [ %36, %34 ], [ %41, %38 ]
  %40 = load ptr, ptr %35, align 8, !tbaa !208
  %41 = add nuw nsw i64 %39, 1
  %42 = getelementptr inbounds ptr, ptr %40, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !206
  %44 = getelementptr inbounds ptr, ptr %40, i64 %39
  store ptr %43, ptr %44, align 8, !tbaa !206
  %45 = icmp eq i64 %41, %37
  br i1 %45, label %46, label %38, !llvm.loop !329

46:                                               ; preds = %38, %32, %28
  %47 = phi i32 [ %1, %28 ], [ %30, %32 ], [ %30, %38 ]
  %48 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !208
  %50 = zext i32 %47 to i64
  %51 = getelementptr inbounds ptr, ptr %49, i64 %50
  store ptr null, ptr %51, align 8, !tbaa !206
  store i32 %30, ptr %3, align 4, !tbaa !210
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_5MatchEE17removeLastElementEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #12 comdat align 2 !prof !81 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !210
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 4, !tbaa !210
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !213, !range !96, !noundef !97
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !208
  %13 = zext i32 %6 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !206
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %10
  %18 = load ptr, ptr %15, align 8, !tbaa !94
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(40) %15) #20
  br label %21

21:                                               ; preds = %10, %17, %1, %5
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_5MatchEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 !prof !81 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !213, !range !96, !noundef !97
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %26, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !210
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %26, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %21
  %12 = phi i64 [ 0, %9 ], [ %22, %21 ]
  %13 = load ptr, ptr %10, align 8, !tbaa !208
  %14 = getelementptr inbounds ptr, ptr %13, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !206
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %11
  %18 = load ptr, ptr %15, align 8, !tbaa !94
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(40) %15) #20
  br label %21

21:                                               ; preds = %11, %17
  %22 = add nuw nsw i64 %12, 1
  %23 = load i32, ptr %6, align 4, !tbaa !210
  %24 = zext i32 %23 to i64
  %25 = icmp ult i64 %22, %24
  br i1 %25, label %11, label %26, !llvm.loop !330

26:                                               ; preds = %21, %5, %1
  %27 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !215
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !208
  %31 = load ptr, ptr %28, align 8, !tbaa !94
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %30)
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_5MatchEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #12 comdat align 2 !prof !81 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_5MatchEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #12 comdat align 2 !prof !81 {
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #20
  ret void
}

; Function Attrs: cold uwtable
define internal void @_GLOBAL__sub_I_RegularExpression.cpp() #17 section ".text.startup" !prof !331 !PGOFuncName !332 {
  tail call void @_ZN11xercesc_2_718XMLRegisterCleanupC1Ev(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L16WordRangeCleanupE)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #18

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #19

attributes #0 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nosync nounwind memory(none) }
attributes #11 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #17 = { cold uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #20 = { nounwind }
attributes #21 = { noreturn nounwind }
attributes #22 = { noreturn }
attributes #23 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!80}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 291165203993}
!8 = !{!"MaxCount", i64 30012997636}
!9 = !{!"MaxInternalCount", i64 22313335011}
!10 = !{!"MaxFunctionCount", i64 30012997636}
!11 = !{!"NumCounts", i64 82185}
!12 = !{!"NumFunctions", i64 15169}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 30012997636, i32 1}
!18 = !{i32 100000, i64 30012997636, i32 1}
!19 = !{i32 200000, i64 28750937236, i32 2}
!20 = !{i32 300000, i64 22313335011, i32 4}
!21 = !{i32 400000, i64 22313318476, i32 5}
!22 = !{i32 500000, i64 22291044611, i32 6}
!23 = !{i32 600000, i64 16685493830, i32 8}
!24 = !{i32 700000, i64 11836361228, i32 10}
!25 = !{i32 800000, i64 1835010489, i32 17}
!26 = !{i32 900000, i64 917973775, i32 41}
!27 = !{i32 950000, i64 89504425, i32 134}
!28 = !{i32 990000, i64 22419101, i32 349}
!29 = !{i32 999000, i64 832910, i32 928}
!30 = !{i32 999900, i64 93159, i32 1814}
!31 = !{i32 999990, i64 19206, i32 2310}
!32 = !{i32 999999, i64 550, i32 2997}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79}
!35 = !{ptr @_ZN11xercesc_2_717RegularExpression10setPatternEPKtS2_, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 20}
!36 = !{ptr @_ZN11xercesc_2_717RegularExpression10setPatternEPKtS2_, ptr @_ZN11xercesc_2_712TokenFactoryC1EPNS_13MemoryManagerE, i64 10}
!37 = !{ptr @_ZN11xercesc_2_717RegularExpression10setPatternEPKtS2_, ptr @_ZN11xercesc_2_717RegularExpression12parseOptionsEPKt, i64 10}
!38 = !{ptr @_ZN11xercesc_2_717RegularExpression10setPatternEPKtS2_, ptr @_ZN11xercesc_2_718ParserForXMLSchemaC1EPNS_13MemoryManagerE, i64 10}
!39 = !{ptr @_ZN11xercesc_2_717RegularExpression10setPatternEPKtS2_, ptr @_ZN11xercesc_2_710RegxParser5parseEPKti, i64 10}
!40 = !{ptr @_ZN11xercesc_2_717RegularExpression10setPatternEPKtS2_, ptr @_ZN11xercesc_2_717RegularExpression7prepareEv, i64 10}
!41 = !{ptr @_ZN11xercesc_2_717RegularExpressionC2EPKtS2_PNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79OpFactoryC1EPNS_13MemoryManagerE, i64 10}
!42 = !{ptr @_ZN11xercesc_2_717RegularExpressionC2EPKtS2_PNS_13MemoryManagerE, ptr @_ZN11xercesc_2_717RegularExpression10setPatternEPKtS2_, i64 10}
!43 = !{ptr @_ZN11xercesc_2_717RegularExpressionD2Ev, ptr @_ZN11xercesc_2_712TokenFactoryD1Ev, i64 10}
!44 = !{ptr @_ZN11xercesc_2_717RegularExpressionD2Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 10}
!45 = !{ptr @_ZN11xercesc_2_717RegularExpressionD2Ev, ptr @_ZN11xercesc_2_79OpFactoryD1Ev, i64 10}
!46 = !{ptr @_ZN11xercesc_2_717RegularExpression12parseOptionsEPKt, ptr @_ZN11xercesc_2_717RegularExpression14getOptionValueEt, i64 10}
!47 = !{ptr @_ZN11xercesc_2_717RegularExpression7prepareEv, ptr @_ZN11xercesc_2_717RegularExpression7compileEPKNS_5TokenEPNS_2OpEb, i64 10}
!48 = !{ptr @_ZN11xercesc_2_717RegularExpression7prepareEv, ptr @_ZNK11xercesc_2_75Token12getMinLengthEv, i64 10}
!49 = !{ptr @_ZN11xercesc_2_717RegularExpression7matchesEPKtiiPNS_5MatchEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_717RegularExpression5matchEPNS0_7ContextEPKNS_2OpEis, i64 322702}
!50 = !{ptr @_ZN11xercesc_2_717RegularExpression7matchesEPKtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_717RegularExpression7matchesEPKtiiPNS_5MatchEPNS_13MemoryManagerE, i64 322702}
!51 = !{ptr @_ZN11xercesc_2_717RegularExpression5matchEPNS0_7ContextEPKNS_2OpEis, ptr @_ZN11xercesc_2_717RegularExpression9matchCharEPNS0_7ContextEiRisb, i64 1395680}
!52 = !{ptr @_ZN11xercesc_2_717RegularExpression5matchEPNS0_7ContextEPKNS_2OpEis, ptr @_ZN11xercesc_2_717RegularExpression8matchDotEPNS0_7ContextERis, i64 3105825}
!53 = !{ptr @_ZN11xercesc_2_717RegularExpression5matchEPNS0_7ContextEPKNS_2OpEis, ptr @_ZN11xercesc_2_717RegularExpression10matchRangeEPNS0_7ContextEPKNS_2OpERisb, i64 1563637}
!54 = !{ptr @_ZN11xercesc_2_717RegularExpression5matchEPNS0_7ContextEPKNS_2OpEis, ptr @_ZN11xercesc_2_79XMLString13regionMatchesEPKtiS2_ij, i64 954156}
!55 = !{ptr @_ZN11xercesc_2_717RegularExpression5matchEPNS0_7ContextEPKNS_2OpEis, ptr @_ZN11xercesc_2_717RegularExpression5matchEPNS0_7ContextEPKNS_2OpEis, i64 3964465}
!56 = !{ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKt, ptr @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj, i64 2}
!57 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj, ptr @__cxa_allocate_exception, i64 1}
!58 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!59 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj, ptr @__cxa_throw, i64 1}
!60 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj, ptr @__cxa_free_exception, i64 1}
!61 = !{ptr @_ZN11xercesc_2_717RegularExpression10matchRangeEPNS0_7ContextEPKNS_2OpERisb, ptr @_ZN11xercesc_2_710RangeToken5matchEi, i64 1301032}
!62 = !{ptr @_ZN11xercesc_2_717RegularExpression7compileEPKNS_5TokenEPNS_2OpEb, ptr @_ZN11xercesc_2_717RegularExpression13compileSingleEPKNS_5TokenEPNS_2OpEt, i64 85}
!63 = !{ptr @_ZN11xercesc_2_717RegularExpression7compileEPKNS_5TokenEPNS_2OpEb, ptr @_ZN11xercesc_2_717RegularExpression7compileEPKNS_5TokenEPNS_2OpEb, i64 67}
!64 = !{ptr @_ZN11xercesc_2_717RegularExpression7compileEPKNS_5TokenEPNS_2OpEb, ptr @_ZN11xercesc_2_79OpFactory13createUnionOpEi, i64 3}
!65 = !{ptr @_ZN11xercesc_2_717RegularExpression7compileEPKNS_5TokenEPNS_2OpEb, ptr @_ZN11xercesc_2_77UnionOp10addElementEPNS_2OpE, i64 7}
!66 = !{ptr @_ZN11xercesc_2_717RegularExpression7compileEPKNS_5TokenEPNS_2OpEb, ptr @_ZN11xercesc_2_717RegularExpression14compileClosureEPKNS_5TokenEPNS_2OpEbt, i64 19}
!67 = !{ptr @_ZN11xercesc_2_717RegularExpression7compileEPKNS_5TokenEPNS_2OpEb, ptr @_ZN11xercesc_2_717RegularExpression18compileParenthesisEPKNS_5TokenEPNS_2OpEb, i64 2}
!68 = !{ptr @_ZN11xercesc_2_717RegularExpression13compileSingleEPKNS_5TokenEPNS_2OpEt, ptr @_ZN11xercesc_2_79OpFactory11createDotOpEv, i64 12}
!69 = !{ptr @_ZN11xercesc_2_717RegularExpression13compileSingleEPKNS_5TokenEPNS_2OpEt, ptr @_ZN11xercesc_2_79OpFactory12createCharOpEi, i64 13}
!70 = !{ptr @_ZN11xercesc_2_717RegularExpression13compileSingleEPKNS_5TokenEPNS_2OpEt, ptr @_ZN11xercesc_2_79OpFactory13createRangeOpEPKNS_5TokenE, i64 51}
!71 = !{ptr @_ZN11xercesc_2_717RegularExpression13compileSingleEPKNS_5TokenEPNS_2OpEt, ptr @_ZN11xercesc_2_79OpFactory14createStringOpEPKt, i64 8}
!72 = !{ptr @_ZN11xercesc_2_717RegularExpression14compileClosureEPKNS_5TokenEPNS_2OpEbt, ptr @_ZN11xercesc_2_717RegularExpression7compileEPKNS_5TokenEPNS_2OpEb, i64 45}
!73 = !{ptr @_ZN11xercesc_2_717RegularExpression14compileClosureEPKNS_5TokenEPNS_2OpEbt, ptr @_ZN11xercesc_2_79OpFactory16createQuestionOpEb, i64 5}
!74 = !{ptr @_ZN11xercesc_2_717RegularExpression14compileClosureEPKNS_5TokenEPNS_2OpEbt, ptr @_ZN11xercesc_2_77ChildOp8setChildEPKNS_2OpE, i64 16}
!75 = !{ptr @_ZN11xercesc_2_717RegularExpression14compileClosureEPKNS_5TokenEPNS_2OpEbt, ptr @_ZNK11xercesc_2_75Token12getMinLengthEv, i64 11}
!76 = !{ptr @_ZN11xercesc_2_717RegularExpression14compileClosureEPKNS_5TokenEPNS_2OpEbt, ptr @_ZN11xercesc_2_79OpFactory15createClosureOpEi, i64 11}
!77 = !{ptr @_ZN11xercesc_2_717RegularExpression18compileParenthesisEPKNS_5TokenEPNS_2OpEb, ptr @_ZN11xercesc_2_717RegularExpression7compileEPKNS_5TokenEPNS_2OpEb, i64 2}
!78 = !{ptr @_ZN11xercesc_2_716RefArrayVectorOfItED0Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 188746}
!79 = !{ptr @_GLOBAL__sub_I_RegularExpression.cpp, ptr @_ZN11xercesc_2_718XMLRegisterCleanupC1Ev, i64 1}
!80 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!81 = !{!"function_entry_count", i64 0}
!82 = !{!83, !83, i64 0}
!83 = !{!"short", !84, i64 0}
!84 = !{!"omnipotent char", !85, i64 0}
!85 = !{!"Simple C++ TBAA"}
!86 = !{!87, !88, i64 0}
!87 = !{!"_ZTSN11xercesc_2_717RegularExpression7ContextE", !88, i64 0, !89, i64 4, !89, i64 8, !89, i64 12, !89, i64 16, !89, i64 20, !90, i64 24, !90, i64 32, !90, i64 40, !90, i64 48}
!88 = !{!"bool", !84, i64 0}
!89 = !{!"int", !84, i64 0}
!90 = !{!"any pointer", !84, i64 0}
!91 = !{!87, !90, i64 48}
!92 = !{!87, !90, i64 24}
!93 = !{!"branch_weights", i32 322702, i32 0}
!94 = !{!95, !95, i64 0}
!95 = !{!"vtable pointer", !85, i64 0}
!96 = !{i8 0, i8 2}
!97 = !{}
!98 = !{!87, !90, i64 32}
!99 = !{!87, !90, i64 40}
!100 = !{!87, !89, i64 20}
!101 = !{!87, !89, i64 4}
!102 = !{!87, !89, i64 8}
!103 = !{!87, !89, i64 12}
!104 = !{!87, !89, i64 16}
!105 = !{!"branch_weights", i32 0, i32 1}
!106 = !{!89, !89, i64 0}
!107 = distinct !{!107, !108, !109}
!108 = !{!"llvm.loop.mustprogress"}
!109 = !{!"llvm.loop.unroll.disable"}
!110 = !{!"branch_weights", i32 5495294, i32 0, i32 0}
!111 = !{!112, !88, i64 0}
!112 = !{!"_ZTSN11xercesc_2_717RegularExpressionE", !88, i64 0, !88, i64 1, !89, i64 4, !89, i64 8, !89, i64 12, !89, i64 16, !90, i64 24, !90, i64 32, !90, i64 40, !90, i64 48, !90, i64 56, !90, i64 64, !113, i64 72, !90, i64 88, !90, i64 96}
!113 = !{!"_ZTSN11xercesc_2_79OpFactoryE", !90, i64 0, !90, i64 8}
!114 = !{!112, !88, i64 1}
!115 = !{!112, !90, i64 88}
!116 = !{!112, !90, i64 96}
!117 = !{!118, !90, i64 0}
!118 = !{!"_ZTSN11xercesc_2_712ArrayJanitorItEE", !90, i64 0, !90, i64 8}
!119 = !{!118, !90, i64 8}
!120 = !{!112, !90, i64 32}
!121 = !{!112, !90, i64 40}
!122 = !{!112, !90, i64 24}
!123 = !{!"function_entry_count", i64 10}
!124 = !{!"branch_weights", i32 10, i32 0}
!125 = !{i32 0, i32 2048}
!126 = !{!112, !89, i64 16}
!127 = !{!"branch_weights", i32 0, i32 10}
!128 = !{!"branch_weights", i32 10, i32 172}
!129 = distinct !{!129, !108, !109}
!130 = !{!"VP", i32 0, i64 10, i64 8345045103670217670, i64 10}
!131 = !{!"VP", i32 1, i64 10, i64 17, i64 4, i64 33, i64 3, i64 16, i64 1, i64 65, i64 1}
!132 = !{!133, !90, i64 64}
!133 = !{!"_ZTSN11xercesc_2_710RegxParserE", !90, i64 8, !88, i64 16, !89, i64 20, !89, i64 24, !89, i64 28, !83, i64 32, !89, i64 36, !83, i64 40, !89, i64 44, !90, i64 48, !90, i64 56, !90, i64 64}
!134 = !{!112, !90, i64 56}
!135 = !{!133, !89, i64 28}
!136 = !{!112, !89, i64 4}
!137 = !{!133, !88, i64 16}
!138 = !{!"VP", i32 0, i64 10, i64 925843349185114784, i64 10}
!139 = !{!"function_entry_count", i64 243874}
!140 = !{!"branch_weights", i32 191815, i32 52059}
!141 = !{!"branch_weights", i32 0, i32 52059}
!142 = !{!"VP", i32 0, i64 52059, i64 -7405368087501025645, i64 52059}
!143 = !{!"VP", i32 0, i64 10, i64 -7405368087501025645, i64 10}
!144 = !{!"branch_weights", i32 159, i32 1}
!145 = !{i32 0, i32 1025}
!146 = distinct !{!146, !108, !109}
!147 = !{!112, !90, i64 48}
!148 = !{!112, !89, i64 12}
!149 = !{!112, !89, i64 8}
!150 = !{!112, !90, i64 64}
!151 = !{!152, !90, i64 40}
!152 = !{!"_ZTSN11xercesc_2_710RangeTokenE", !153, i64 0, !88, i64 24, !88, i64 25, !89, i64 28, !89, i64 32, !89, i64 36, !90, i64 40, !90, i64 48, !90, i64 56, !90, i64 64}
!153 = !{!"_ZTSN11xercesc_2_75TokenE", !83, i64 8, !90, i64 16}
!154 = !{!155, !90, i64 24}
!155 = !{!"_ZTSN11xercesc_2_72OpE", !90, i64 8, !83, i64 16, !90, i64 24}
!156 = !{!"branch_weights", i32 2, i32 8}
!157 = !{!155, !83, i64 16}
!158 = !{!"branch_weights", i32 2, i32 0, i32 0}
!159 = !{!"function_entry_count", i64 322702}
!160 = !{!"branch_weights", i32 0, i32 322702}
!161 = !{!"branch_weights", i32 322702, i32 3679408}
!162 = distinct !{!162, !108, !109}
!163 = distinct !{!163, !108, !109}
!164 = distinct !{!164, !108, !109}
!165 = !{!"function_entry_count", i64 4179174}
!166 = !{!"branch_weights", i32 1, i32 322701}
!167 = !{!"branch_weights", i32 0, i32 10930563}
!168 = !{!"branch_weights", i32 0, i32 1357661, i32 3021221, i32 1521043, i32 0, i32 0, i32 0, i32 1262724, i32 3591268, i32 26905, i32 0, i32 0, i32 149741, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!169 = !{!"VP", i32 0, i64 1357661, i64 1340274972443703884, i64 1357661}
!170 = !{!"branch_weights", i32 290043, i32 1067618}
!171 = !{!"branch_weights", i32 2891171, i32 130050}
!172 = !{!"branch_weights", i32 1259142, i32 261901}
!173 = !{!"VP", i32 0, i64 1262724, i64 -3084397517137481285, i64 1262724}
!174 = !{!"branch_weights", i32 0, i32 1262724}
!175 = !{!"branch_weights", i32 1262724, i32 8650550}
!176 = !{!"branch_weights", i32 1262724, i32 0}
!177 = !{!"branch_weights", i32 334560, i32 928164}
!178 = !{!"branch_weights", i32 0, i32 928164}
!179 = !{!"branch_weights", i32 229966, i32 698198}
!180 = !{!"branch_weights", i32 229966, i32 0}
!181 = !{!"VP", i32 0, i64 3591268, i64 5899119925621161286, i64 3591268}
!182 = !{!"branch_weights", i32 0, i32 3591268}
!183 = !{!"VP", i32 0, i64 3591268, i64 3136733329819020022, i64 3591268}
!184 = !{!"branch_weights", i32 1194189, i32 2397079}
!185 = !{!"branch_weights", i32 1194189, i32 2397079, i32 0}
!186 = !{!"VP", i32 0, i64 26905, i64 3136733329819020022, i64 26905}
!187 = !{!"branch_weights", i32 6690, i32 20215}
!188 = !{!"VP", i32 0, i64 149741, i64 3974152329761205984, i64 149741}
!189 = !{!"VP", i32 0, i64 238299, i64 3566323012926736249, i64 238299}
!190 = !{!"branch_weights", i32 149741, i32 88558}
!191 = !{!"branch_weights", i32 0, i32 149741}
!192 = !{!"branch_weights", i32 0, i32 238299}
!193 = distinct !{!193, !108, !109}
!194 = !{!"branch_weights", i32 322701, i32 10607862}
!195 = distinct !{!195, !108, !109}
!196 = !{!197, !90, i64 16}
!197 = !{!"_ZTSN11xercesc_2_75MatchE", !89, i64 8, !89, i64 12, !90, i64 16, !90, i64 24, !90, i64 32}
!198 = !{!197, !90, i64 32}
!199 = !{!197, !90, i64 24}
!200 = !{!201, !88, i64 8}
!201 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfItEE", !88, i64 8, !89, i64 12, !89, i64 16, !90, i64 24, !90, i64 32}
!202 = !{!201, !89, i64 12}
!203 = !{!201, !89, i64 16}
!204 = !{!201, !90, i64 24}
!205 = !{!201, !90, i64 32}
!206 = !{!90, !90, i64 0}
!207 = distinct !{!207, !108, !109}
!208 = !{!209, !90, i64 24}
!209 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_5MatchEEE", !88, i64 8, !89, i64 12, !89, i64 16, !90, i64 24, !90, i64 32}
!210 = !{!209, !89, i64 12}
!211 = distinct !{!211, !108, !109}
!212 = distinct !{!212, !108, !109}
!213 = !{!209, !88, i64 8}
!214 = !{!209, !89, i64 16}
!215 = !{!209, !90, i64 32}
!216 = distinct !{!216, !108, !109}
!217 = !{!218, !89, i64 0}
!218 = !{!"_ZTSN11xercesc_2_79XMLBufferE", !89, i64 0, !89, i64 4, !89, i64 8, !88, i64 12, !90, i64 16, !90, i64 24, !90, i64 32}
!219 = !{!218, !89, i64 4}
!220 = !{!218, !89, i64 8}
!221 = !{!218, !88, i64 12}
!222 = !{!218, !90, i64 16}
!223 = !{!218, !90, i64 32}
!224 = !{!197, !89, i64 8}
!225 = distinct !{!225, !108, !109}
!226 = !{!"function_entry_count", i64 789922}
!227 = !{!"branch_weights", i32 0, i32 789922}
!228 = !{!"branch_weights", i32 284, i32 789638}
!229 = !{!"branch_weights", i32 789638, i32 41628303}
!230 = distinct !{!230, !108, !109}
!231 = !{!"branch_weights", i32 789636, i32 2}
!232 = !{!"VP", i32 1, i64 789638, i64 17, i64 255406, i64 33, i64 81401, i64 65, i64 73335, i64 16, i64 65652}
!233 = !{!"function_entry_count", i64 2444437052}
!234 = !{!"branch_weights", i32 -1850530244, i32 0}
!235 = distinct !{!235, !108, !109}
!236 = distinct !{!236, !108, !109}
!237 = !{!"branch_weights", i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 10, i32 0}
!238 = !{!"function_entry_count", i64 1357661}
!239 = !{!"branch_weights", i32 54570, i32 1303091}
!240 = !{!"branch_weights", i32 1303091, i32 0}
!241 = !{!"branch_weights", i32 0, i32 1303091}
!242 = !{!"branch_weights", i32 290043, i32 1013048}
!243 = !{!"function_entry_count", i64 3021221}
!244 = !{!"branch_weights", i32 130050, i32 2891171}
!245 = !{!"branch_weights", i32 2891171, i32 0}
!246 = !{!"branch_weights", i32 0, i32 2891171}
!247 = !{!"branch_weights", i32 2891171, i32 0, i32 0, i32 0, i32 0}
!248 = !{!"function_entry_count", i64 1521043}
!249 = !{!"branch_weights", i32 220011, i32 1301032}
!250 = !{!"branch_weights", i32 1301032, i32 0}
!251 = !{!"VP", i32 0, i64 1301032, i64 -7438184488833961594, i64 1301032}
!252 = !{!"branch_weights", i32 0, i32 1301032}
!253 = !{!"branch_weights", i32 1259142, i32 41890}
!254 = !{i16 0, i16 3}
!255 = distinct !{!255, !108, !109}
!256 = !{!"function_entry_count", i64 124}
!257 = !{!153, !83, i64 8}
!258 = !{!"branch_weights", i32 0, i32 12, i32 13, i32 0, i32 51, i32 0, i32 8, i32 0, i32 1, i32 15, i32 3, i32 19, i32 0, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!259 = !{!"VP", i32 0, i64 15, i64 -1638431200412282154, i64 15}
!260 = !{!"branch_weights", i32 0, i32 15}
!261 = !{!"branch_weights", i32 239, i32 1}
!262 = !{!"VP", i32 0, i64 60, i64 -9175986858441419518, i64 60}
!263 = !{!"branch_weights", i32 721, i32 239}
!264 = distinct !{!264, !108, !109}
!265 = distinct !{!265, !108, !109}
!266 = !{!"VP", i32 0, i64 3, i64 -1638431200412282154, i64 3}
!267 = !{!"branch_weights", i32 191, i32 1}
!268 = !{!"VP", i32 0, i64 7, i64 -9175986858441419518, i64 7}
!269 = !{!"branch_weights", i32 191, i32 257}
!270 = distinct !{!270, !108, !109}
!271 = !{!272, !90, i64 32}
!272 = !{!"_ZTSN11xercesc_2_714ConditionTokenE", !153, i64 0, !89, i64 24, !90, i64 32, !90, i64 40, !90, i64 48}
!273 = !{!"function_entry_count", i64 85}
!274 = !{!"branch_weights", i32 0, i32 12, i32 13, i32 0, i32 51, i32 0, i32 1, i32 8, i32 0}
!275 = !{!"VP", i32 0, i64 13, i64 -6150412714165436328, i64 13}
!276 = !{!"VP", i32 0, i64 8, i64 -3586975816051538851, i64 8}
!277 = !{!"branch_weights", i32 1, i32 84}
!278 = !{!"function_entry_count", i64 19}
!279 = !{!"VP", i32 0, i64 19, i64 -9086227106648712667, i64 19}
!280 = !{!"VP", i32 0, i64 19, i64 7238335119775253437, i64 19}
!281 = !{!"VP", i32 0, i64 19, i64 -475307757126758677, i64 19}
!282 = !{!"branch_weights", i32 5, i32 14}
!283 = !{!"branch_weights", i32 159, i32 481}
!284 = distinct !{!284, !108, !109}
!285 = !{!"branch_weights", i32 3, i32 11}
!286 = !{!"branch_weights", i32 3, i32 2}
!287 = distinct !{!287, !108, !109}
!288 = !{!"branch_weights", i32 0, i32 11}
!289 = !{!"branch_weights", i32 3, i32 6}
!290 = distinct !{!290, !108, !109}
!291 = !{!"function_entry_count", i64 2}
!292 = !{!"VP", i32 0, i64 2, i64 3679854135056772461, i64 2}
!293 = !{!"branch_weights", i32 2, i32 0}
!294 = !{!"VP", i32 0, i64 2, i64 1978819292038497412, i64 2}
!295 = !{!296, !89, i64 24}
!296 = !{!"_ZTSN11xercesc_2_713ModifierTokenE", !153, i64 0, !89, i64 24, !89, i64 28, !90, i64 32}
!297 = !{!296, !89, i64 28}
!298 = !{!299, !90, i64 40}
!299 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !300, i64 8, !90, i64 16, !89, i64 24, !90, i64 32, !90, i64 40}
!300 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !84, i64 0}
!301 = !{!"branch_weights", i32 6, i32 188740}
!302 = !{!"branch_weights", i32 1, i32 188739}
!303 = !{!"VP", i32 0, i64 188992, i64 -7405368087501025645, i64 188992}
!304 = !{!"branch_weights", i32 253, i32 188739}
!305 = distinct !{!305, !108, !109}
!306 = !{!"VP", i32 0, i64 188746, i64 -7405368087501025645, i64 188746}
!307 = !{!"function_entry_count", i64 188746}
!308 = !{!"function_entry_count", i64 317171}
!309 = !{!"branch_weights", i32 317171, i32 0}
!310 = !{!"branch_weights", i32 0, i32 317171}
!311 = !{!"VP", i32 0, i64 317171, i64 -7405368087501025645, i64 317171}
!312 = distinct !{!312, !108, !109}
!313 = distinct !{!313, !108, !109}
!314 = distinct !{!314, !108, !109}
!315 = distinct !{!315, !108, !109}
!316 = distinct !{!316, !108, !109}
!317 = distinct !{!317, !108, !109}
!318 = distinct !{!318, !108, !109}
!319 = !{!"function_entry_count", i64 188992}
!320 = !{!"branch_weights", i32 9, i32 188983}
!321 = !{!"VP", i32 0, i64 9, i64 8345045103670217670, i64 9}
!322 = !{!"branch_weights", i32 1, i32 143}
!323 = !{!"branch_weights", i32 143, i32 1}
!324 = !{!"branch_weights", i32 143, i32 9329}
!325 = distinct !{!325, !108, !109}
!326 = !{!"VP", i32 0, i64 9, i64 -7405368087501025645, i64 9}
!327 = distinct !{!327, !108, !109}
!328 = distinct !{!328, !108, !109}
!329 = distinct !{!329, !108, !109}
!330 = distinct !{!330, !108, !109}
!331 = !{!"function_entry_count", i64 1}
!332 = !{!"RegularExpression.cpp;_GLOBAL__sub_I_RegularExpression.cpp"}
