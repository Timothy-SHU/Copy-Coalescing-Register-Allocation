; ModuleID = 'RegularExpression.cpp'
source_filename = "RegularExpression.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XMLRegisterCleanup" = type { ptr, ptr, ptr }
%"class.xercesc_2_7::RegularExpression::Context" = type { i8, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::JanitorMemFunCall" = type { ptr, { i64, i64 } }
%"class.xercesc_2_7::ArrayJanitor" = type { ptr, ptr }
%"class.xercesc_2_7::RegularExpression" = type { i8, i8, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %"class.xercesc_2_7::OpFactory", ptr, ptr }
%"class.xercesc_2_7::OpFactory" = type { ptr, ptr }
%"class.xercesc_2_7::Janitor" = type { ptr }
%"class.xercesc_2_7::RegxParser" = type { ptr, ptr, i8, i32, i32, i32, i16, i32, i16, i32, ptr, ptr, ptr }
%"class.xercesc_2_7::Match" = type { ptr, i32, i32, ptr, ptr, ptr }
%"class.xercesc_2_7::Op" = type { ptr, ptr, i16, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }
%"class.xercesc_2_7::BaseRefVectorOf.0" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::BaseRefVectorOf" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::Janitor.1" = type { ptr }
%"class.xercesc_2_7::Janitor.2" = type { ptr }
%"class.xercesc_2_7::XMLBuffer" = type { i32, i32, i32, i8, ptr, ptr, ptr }
%"class.xercesc_2_7::Token" = type { ptr, i16, ptr }
%"class.xercesc_2_7::ModifierToken" = type { %"class.xercesc_2_7::Token", i32, i32, ptr }
%"class.xercesc_2_7::ConditionToken" = type { %"class.xercesc_2_7::Token", i32, ptr, ptr, ptr }
%"class.xercesc_2_7::RangeToken" = type { %"class.xercesc_2_7::Token", i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr }

$_ZN11xercesc_2_78RegxUtil21decomposeToSurrogatesEiRtS1_ = comdat any

$_ZN11xercesc_2_77XMemoryC2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_78RegxUtil15isHighSurrogateEt = comdat any

$_ZN11xercesc_2_78RegxUtil14isLowSurrogateEt = comdat any

$_ZN11xercesc_2_78RegxUtil20composeFromSurrogateEtt = comdat any

$_ZN11xercesc_2_717RegularExpression7cleanUpEv = comdat any

$_ZN11xercesc_2_717JanitorMemFunCallINS_17RegularExpressionEEC2EPS1_MS1_FvvE = comdat any

$_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_712ArrayJanitorItED2Ev = comdat any

$_ZN11xercesc_2_717JanitorMemFunCallINS_17RegularExpressionEE7releaseEv = comdat any

$_ZN11xercesc_2_717JanitorMemFunCallINS_17RegularExpressionEED2Ev = comdat any

$_ZN11xercesc_2_712ArrayJanitorItE5resetEPt = comdat any

$_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_717RegularExpression5isSetEii = comdat any

$_ZN11xercesc_2_710RegxParser15setTokenFactoryEPNS_12TokenFactoryE = comdat any

$_ZN11xercesc_2_77JanitorINS_10RegxParserEEC2EPS1_ = comdat any

$_ZNK11xercesc_2_710RegxParser10getNoParenEv = comdat any

$_ZNK11xercesc_2_710RegxParser17hasBackReferencesEv = comdat any

$_ZN11xercesc_2_77JanitorINS_10RegxParserEED2Ev = comdat any

$_ZN11xercesc_2_79XMLString9stringLenEPKt = comdat any

$_ZN11xercesc_2_77JanitorINS_10RegxParserEE5resetEPS1_ = comdat any

$_ZN11xercesc_2_75Match11setStartPosEii = comdat any

$_ZN11xercesc_2_75Match9setEndPosEii = comdat any

$_ZNK11xercesc_2_72Op9getOpTypeEv = comdat any

$_ZN11xercesc_2_78RegxUtil9isEOLCharEt = comdat any

$_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_716RuntimeExceptionD0Ev = comdat any

$_ZNK11xercesc_2_716RuntimeException7getTypeEv = comdat any

$_ZNK11xercesc_2_716RuntimeException9duplicateEv = comdat any

$_ZN11xercesc_2_716RuntimeExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_716RefArrayVectorOfItEC2EjbPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_5MatchEE10addElementEPS1_ = comdat any

$_ZN11xercesc_2_79XMLString6equalsEPKtS2_ = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfItE10addElementEPt = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfItEC2EjbPNS_13MemoryManagerE = comdat any

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

$_ZN11xercesc_2_711RefVectorOfINS_5MatchEEC2EjbPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_77JanitorINS_11RefVectorOfINS_5MatchEEEEC2EPS3_ = comdat any

$_ZN11xercesc_2_77JanitorINS_16RefArrayVectorOfItEEEC2EPS2_ = comdat any

$_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE = comdat any

$_ZNK11xercesc_2_715BaseRefVectorOfINS_5MatchEE4sizeEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_5MatchEE9elementAtEj = comdat any

$_ZNK11xercesc_2_75Match11getNoGroupsEv = comdat any

$_ZNK11xercesc_2_715BaseRefVectorOfItE4sizeEv = comdat any

$_ZN11xercesc_2_79XMLBuffer6appendEPKt = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj = comdat any

$_ZN11xercesc_2_79XMLBuffer12getRawBufferEv = comdat any

$_ZN11xercesc_2_79XMLBufferD2Ev = comdat any

$_ZN11xercesc_2_77JanitorINS_16RefArrayVectorOfItEEED2Ev = comdat any

$_ZN11xercesc_2_77JanitorINS_11RefVectorOfINS_5MatchEEEED2Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_5MatchEEC2EjbPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_5MatchEED2Ev = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_5MatchEED0Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_5MatchEE12setElementAtEPS1_j = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_5MatchEE17removeAllElementsEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_5MatchEE15removeElementAtEj = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_5MatchEE17removeLastElementEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_5MatchEE7cleanupEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_5MatchEED2Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_5MatchEED0Ev = comdat any

$_ZN11xercesc_2_77JanitorINS_16RefArrayVectorOfItEEE5resetEPS2_ = comdat any

$_ZN11xercesc_2_77JanitorINS_11RefVectorOfINS_5MatchEEEE5resetEPS3_ = comdat any

$_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_717RegularExpression13staticCleanupEv = comdat any

$_ZNK11xercesc_2_72Op9getNextOpEv = comdat any

$_ZN11xercesc_2_717RegularExpression10matchUnionEPNS0_7ContextEPKNS_2OpEis = comdat any

$_ZN11xercesc_2_717RegularExpression13matchModifierEPNS0_7ContextEPKNS_2OpEis = comdat any

$_ZN11xercesc_2_717RegularExpression11getWordTypeEPKtiii = comdat any

$_ZN11xercesc_2_717RegularExpression19getPreviousWordTypeEPKtiii = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZNK11xercesc_2_75Match11getStartPosEi = comdat any

$_ZNK11xercesc_2_75Match9getEndPosEi = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev = comdat any

$_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv = comdat any

$_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_714ParseExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_714ParseExceptionD0Ev = comdat any

$_ZNK11xercesc_2_714ParseException7getTypeEv = comdat any

$_ZNK11xercesc_2_714ParseException9duplicateEv = comdat any

$_ZN11xercesc_2_714ParseExceptionC2ERKS0_ = comdat any

$_ZNK11xercesc_2_75Token12getTokenTypeEv = comdat any

$_ZN11xercesc_2_717RegularExpression13compileSingleEPKNS_5TokenEPNS_2OpEt = comdat any

$_ZN11xercesc_2_717RegularExpression13compileConcatEPKNS_5TokenEPNS_2OpEb = comdat any

$_ZN11xercesc_2_717RegularExpression12compileUnionEPKNS_5TokenEPNS_2OpEb = comdat any

$_ZN11xercesc_2_717RegularExpression14compileClosureEPKNS_5TokenEPNS_2OpEbt = comdat any

$_ZN11xercesc_2_717RegularExpression18compileParenthesisEPKNS_5TokenEPNS_2OpEb = comdat any

$_ZN11xercesc_2_717RegularExpression11compileLookEPKNS_5TokenEPKNS_2OpEbt = comdat any

$_ZN11xercesc_2_717RegularExpression16compileConditionEPKNS_5TokenEPNS_2OpEb = comdat any

$_ZN11xercesc_2_72Op9setNextOpEPKS0_ = comdat any

$_ZNK11xercesc_2_713ModifierToken10getOptionsEv = comdat any

$_ZNK11xercesc_2_713ModifierToken14getOptionsMaskEv = comdat any

$_ZNK11xercesc_2_714ConditionToken17getConditionTokenEv = comdat any

$_ZN11xercesc_2_79XMLBuffer6appendEt = comdat any

$_ZN11xercesc_2_710RangeToken9createMapEv = comdat any

$_ZN11xercesc_2_712TokenFactory8getRangeEPKtb = comdat any

$_ZN11xercesc_2_78RegxUtil10isWordCharEt = comdat any

$_ZTSN11xercesc_2_720OutOfMemoryExceptionE = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_720OutOfMemoryExceptionE = comdat any

$_ZTSN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTIN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTVN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

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

$_ZTSN11xercesc_2_724IllegalArgumentExceptionE = comdat any

$_ZTIN11xercesc_2_724IllegalArgumentExceptionE = comdat any

$_ZTVN11xercesc_2_724IllegalArgumentExceptionE = comdat any

$_ZTSN11xercesc_2_714ParseExceptionE = comdat any

$_ZTIN11xercesc_2_714ParseExceptionE = comdat any

$_ZTVN11xercesc_2_714ParseExceptionE = comdat any

@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
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
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_720OutOfMemoryExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_720OutOfMemoryExceptionE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@.str = private unnamed_addr constant [30 x i8] c"./xercesc/util/regx/Match.hpp\00", align 1
@_ZTSN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local constant [34 x i8] c"N11xercesc_2_716RuntimeExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_716RuntimeExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant [48 x i8] c"N11xercesc_2_730ArrayIndexOutOfBoundsExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_716RuntimeExceptionD0Ev, ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv, ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE = external constant [0 x i16], align 2
@_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE = external constant [0 x i16], align 2
@_ZN11xercesc_2_7L6chNullE = internal constant i16 0, align 2
@_ZTVN11xercesc_2_716RefArrayVectorOfItEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_716RefArrayVectorOfItEE, ptr @_ZN11xercesc_2_716RefArrayVectorOfItED2Ev, ptr @_ZN11xercesc_2_716RefArrayVectorOfItED0Ev, ptr @_ZN11xercesc_2_716RefArrayVectorOfItE12setElementAtEPtj, ptr @_ZN11xercesc_2_716RefArrayVectorOfItE17removeAllElementsEv, ptr @_ZN11xercesc_2_716RefArrayVectorOfItE15removeElementAtEj, ptr @_ZN11xercesc_2_716RefArrayVectorOfItE17removeLastElementEv, ptr @_ZN11xercesc_2_716RefArrayVectorOfItE7cleanupEv] }, comdat, align 8
@_ZTSN11xercesc_2_716RefArrayVectorOfItEE = linkonce_odr dso_local constant [37 x i8] c"N11xercesc_2_716RefArrayVectorOfItEE\00", comdat, align 1
@_ZTSN11xercesc_2_715BaseRefVectorOfItEE = linkonce_odr dso_local constant [36 x i8] c"N11xercesc_2_715BaseRefVectorOfItEE\00", comdat, align 1
@_ZTIN11xercesc_2_715BaseRefVectorOfItEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_715BaseRefVectorOfItEE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_716RefArrayVectorOfItEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_716RefArrayVectorOfItEE, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfItEE }, comdat, align 8
@_ZTVN11xercesc_2_715BaseRefVectorOfItEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfItEE, ptr @_ZN11xercesc_2_715BaseRefVectorOfItED2Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfItED0Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfItE12setElementAtEPtj, ptr @_ZN11xercesc_2_715BaseRefVectorOfItE17removeAllElementsEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfItE15removeElementAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfItE17removeLastElementEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfItE7cleanupEv] }, comdat, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"./xercesc/util/BaseRefVectorOf.c\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"./xercesc/util/RefArrayVectorOf.c\00", align 1
@_ZN11xercesc_2_76XMLUni15fgZeroLenStringE = external constant [0 x i16], align 2
@.str.3 = private unnamed_addr constant [22 x i8] c"RegularExpression.cpp\00", align 1
@_ZTVN11xercesc_2_711RefVectorOfINS_5MatchEEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_711RefVectorOfINS_5MatchEEE, ptr @_ZN11xercesc_2_711RefVectorOfINS_5MatchEED2Ev, ptr @_ZN11xercesc_2_711RefVectorOfINS_5MatchEED0Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_5MatchEE12setElementAtEPS1_j, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_5MatchEE17removeAllElementsEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_5MatchEE15removeElementAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_5MatchEE17removeLastElementEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_5MatchEE7cleanupEv] }, comdat, align 8
@_ZTSN11xercesc_2_711RefVectorOfINS_5MatchEEE = linkonce_odr dso_local constant [41 x i8] c"N11xercesc_2_711RefVectorOfINS_5MatchEEE\00", comdat, align 1
@_ZTSN11xercesc_2_715BaseRefVectorOfINS_5MatchEEE = linkonce_odr dso_local constant [45 x i8] c"N11xercesc_2_715BaseRefVectorOfINS_5MatchEEE\00", comdat, align 1
@_ZTIN11xercesc_2_715BaseRefVectorOfINS_5MatchEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_715BaseRefVectorOfINS_5MatchEEE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_711RefVectorOfINS_5MatchEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_711RefVectorOfINS_5MatchEEE, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfINS_5MatchEEE }, comdat, align 8
@_ZTVN11xercesc_2_715BaseRefVectorOfINS_5MatchEEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfINS_5MatchEEE, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_5MatchEED2Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_5MatchEED0Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_5MatchEE12setElementAtEPS1_j, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_5MatchEE17removeAllElementsEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_5MatchEE15removeElementAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_5MatchEE17removeLastElementEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_5MatchEE7cleanupEv] }, comdat, align 8
@_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE = external local_unnamed_addr global ptr, align 8
@_ZN11xercesc_2_7L11fgUniIsWordE = internal constant [7 x i16] [i16 73, i16 115, i16 87, i16 111, i16 114, i16 100, i16 0], align 2
@_ZTSN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local constant [42 x i8] c"N11xercesc_2_724IllegalArgumentExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_724IllegalArgumentExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev, ptr @_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv, ptr @_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni31fgIllegalArgumentException_NameE = external constant [0 x i16], align 2
@_ZTSN11xercesc_2_714ParseExceptionE = linkonce_odr dso_local constant [32 x i8] c"N11xercesc_2_714ParseExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_714ParseExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_714ParseExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_714ParseExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_714ParseExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_714ParseExceptionD0Ev, ptr @_ZNK11xercesc_2_714ParseException7getTypeEv, ptr @_ZNK11xercesc_2_714ParseException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni21fgParseException_NameE = external constant [0 x i16], align 2
@_ZN11xercesc_2_75Token11FC_TERMINALE = external local_unnamed_addr constant i16, align 2
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_RegularExpression.cpp, ptr null }]

@_ZN11xercesc_2_717RegularExpression7ContextC1EPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_717RegularExpression7ContextC2EPNS_13MemoryManagerE
@_ZN11xercesc_2_717RegularExpression7ContextD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_717RegularExpression7ContextD2Ev
@_ZN11xercesc_2_717RegularExpressionC1EPKcPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xercesc_2_717RegularExpressionC2EPKcPNS_13MemoryManagerE
@_ZN11xercesc_2_717RegularExpressionC1EPKcS2_PNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr), ptr @_ZN11xercesc_2_717RegularExpressionC2EPKcS2_PNS_13MemoryManagerE
@_ZN11xercesc_2_717RegularExpressionC1EPKtPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xercesc_2_717RegularExpressionC2EPKtPNS_13MemoryManagerE
@_ZN11xercesc_2_717RegularExpressionC1EPKtS2_PNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr), ptr @_ZN11xercesc_2_717RegularExpressionC2EPKtS2_PNS_13MemoryManagerE
@_ZN11xercesc_2_717RegularExpressionD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_717RegularExpressionD2Ev

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init() unnamed_addr #1 section ".text.startup" {
  tail call void @_ZN11xercesc_2_718XMLRegisterCleanupC1Ev(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L16WordRangeCleanupE) #13
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_718XMLRegisterCleanupC1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_717RegularExpression15matchIgnoreCaseEii(ptr nocapture nonnull readnone align 8 %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 align 2 !prof !174 {
  %4 = alloca [2 x i16], align 2
  %5 = alloca [2 x i16], align 2
  %6 = alloca [2 x i16], align 2
  %7 = alloca [2 x i16], align 2
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = icmp sgt i32 %1, 65535
  br i1 %10, label %11, label %21

11:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  %12 = getelementptr inbounds [2 x i16], ptr %4, i64 0, i64 1
  call void @_ZN11xercesc_2_78RegxUtil21decomposeToSurrogatesEiRtS1_(i32 noundef %1, ptr noundef nonnull align 2 dereferenceable(2) %4, ptr noundef nonnull align 2 dereferenceable(2) %12) #13
  %13 = icmp sgt i32 %2, 65535
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = getelementptr inbounds [2 x i16], ptr %5, i64 0, i64 1
  call void @_ZN11xercesc_2_78RegxUtil21decomposeToSurrogatesEiRtS1_(i32 noundef %2, ptr noundef nonnull align 2 dereferenceable(2) %5, ptr noundef nonnull align 2 dereferenceable(2) %15) #13
  br label %19

16:                                               ; preds = %11
  %17 = trunc i32 %2 to i16
  store i16 %17, ptr %5, align 2, !tbaa !175
  %18 = getelementptr inbounds [2 x i16], ptr %5, i64 0, i64 1
  store i16 32, ptr %18, align 2, !tbaa !175
  br label %19

19:                                               ; preds = %16, %14
  %20 = call noundef i32 @_ZN11xercesc_2_79XMLString15compareNIStringEPKtS2_j(ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef 2) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  br label %31

21:                                               ; preds = %3
  %22 = icmp sgt i32 %2, 65535
  %23 = trunc i32 %1 to i16
  br i1 %22, label %24, label %28

24:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #14
  store i16 %23, ptr %6, align 2, !tbaa !175
  %25 = getelementptr inbounds i16, ptr %6, i64 1
  store i16 32, ptr %25, align 2, !tbaa !175
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #14
  %26 = getelementptr inbounds [2 x i16], ptr %7, i64 0, i64 1
  call void @_ZN11xercesc_2_78RegxUtil21decomposeToSurrogatesEiRtS1_(i32 noundef %2, ptr noundef nonnull align 2 dereferenceable(2) %7, ptr noundef nonnull align 2 dereferenceable(2) %26) #13
  %27 = call noundef i32 @_ZN11xercesc_2_79XMLString15compareNIStringEPKtS2_j(ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef 2) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #14
  br label %31

28:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #14
  store i16 %23, ptr %8, align 2, !tbaa !175
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #14
  %29 = trunc i32 %2 to i16
  store i16 %29, ptr %9, align 2, !tbaa !175
  %30 = call noundef i32 @_ZN11xercesc_2_79XMLString15compareNIStringEPKtS2_j(ptr noundef nonnull %8, ptr noundef nonnull %9, i32 noundef 1) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #14
  br label %31

31:                                               ; preds = %28, %24, %19
  %32 = phi i32 [ %20, %19 ], [ %27, %24 ], [ %30, %28 ]
  %33 = icmp eq i32 %32, 0
  ret i1 %33
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_78RegxUtil21decomposeToSurrogatesEiRtS1_(i32 noundef %0, ptr noundef nonnull align 2 dereferenceable(2) %1, ptr noundef nonnull align 2 dereferenceable(2) %2) local_unnamed_addr #5 comdat align 2 !prof !174 {
  %4 = add i32 %0, 67043328
  %5 = lshr i32 %4, 10
  %6 = trunc i32 %5 to i16
  %7 = add i16 %6, -10240
  store i16 %7, ptr %1, align 2, !tbaa !175
  %8 = trunc i32 %0 to i16
  %9 = and i16 %8, 1023
  %10 = or disjoint i16 %9, -9216
  store i16 %10, ptr %2, align 2, !tbaa !175
  ret void
}

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_79XMLString15compareNIStringEPKtS2_j(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_717RegularExpression7ContextC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) unnamed_addr #5 align 2 !prof !179 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  store i8 0, ptr %0, align 8, !tbaa !180
  %3 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %0, i64 0, i32 9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %3, i8 0, i64 44, i1 false)
  store ptr %1, ptr %4, align 8, !tbaa !185
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 !prof !186 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_717RegularExpression7ContextD2Ev(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !179 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !187
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5, !prof !188

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %0, i64 0, i32 9
  %7 = load ptr, ptr %6, align 8, !tbaa !185
  %8 = load ptr, ptr %7, align 8, !tbaa !189
  %9 = getelementptr inbounds ptr, ptr %8, i64 3
  %10 = load ptr, ptr %9, align 8
  invoke void %10(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %3) #13
          to label %11 unwind label %23

11:                                               ; preds = %5, %1
  %12 = load i8, ptr %0, align 8, !tbaa !180, !range !191, !noundef !192
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %22, label %14, !prof !188

14:                                               ; preds = %11
  %15 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %0, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !193
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = load ptr, ptr %16, align 8, !tbaa !189
  %20 = getelementptr inbounds ptr, ptr %19, i64 1
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(40) %16) #15
  br label %22

22:                                               ; preds = %14, %18, %11
  ret void

23:                                               ; preds = %5
  %24 = landingpad { ptr, i32 }
          catch ptr null
  %25 = extractvalue { ptr, i32 } %24, 0
  tail call void @__clang_call_terminate(ptr %25) #16
  unreachable
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #14
  tail call void @_ZSt9terminatev() #16
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717RegularExpression7Context5resetEPKtiiii(ptr nocapture noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #3 align 2 !prof !179 {
  %7 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %0, i64 0, i32 8
  store ptr %1, ptr %7, align 8, !tbaa !194
  %8 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %0, i64 0, i32 5
  store i32 %2, ptr %8, align 4, !tbaa !195
  %9 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %0, i64 0, i32 1
  store i32 %3, ptr %9, align 4, !tbaa !196
  %10 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %0, i64 0, i32 2
  store i32 %4, ptr %10, align 8, !tbaa !197
  %11 = sub nsw i32 %4, %3
  %12 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %0, i64 0, i32 3
  store i32 %11, ptr %12, align 4, !tbaa !198
  %13 = load i8, ptr %0, align 8, !tbaa !180, !range !191, !noundef !192
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %23, label %15, !prof !188

15:                                               ; preds = %6
  %16 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %0, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !193
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr %17, align 8, !tbaa !189
  %21 = getelementptr inbounds ptr, ptr %20, i64 1
  %22 = load ptr, ptr %21, align 8
  tail call void %22(ptr noundef nonnull align 8 dereferenceable(40) %17) #15
  br label %23

23:                                               ; preds = %15, %19, %6
  %24 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %0, i64 0, i32 7
  store ptr null, ptr %24, align 8, !tbaa !193
  %25 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %0, i64 0, i32 4
  %26 = load i32, ptr %25, align 8, !tbaa !199
  %27 = icmp eq i32 %26, %5
  br i1 %27, label %47, label %28, !prof !188

28:                                               ; preds = %23
  %29 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %0, i64 0, i32 6
  %30 = load ptr, ptr %29, align 8, !tbaa !187
  %31 = icmp eq ptr %30, null
  br i1 %31, label %38, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %0, i64 0, i32 9
  %34 = load ptr, ptr %33, align 8, !tbaa !185
  %35 = load ptr, ptr %34, align 8, !tbaa !189
  %36 = getelementptr inbounds ptr, ptr %35, i64 3
  %37 = load ptr, ptr %36, align 8
  tail call void %37(ptr noundef nonnull align 8 dereferenceable(8) %34, ptr noundef nonnull %30) #13
  br label %38

38:                                               ; preds = %32, %28
  %39 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %0, i64 0, i32 9
  %40 = load ptr, ptr %39, align 8, !tbaa !185
  %41 = sext i32 %5 to i64
  %42 = shl nsw i64 %41, 2
  %43 = load ptr, ptr %40, align 8, !tbaa !189
  %44 = getelementptr inbounds ptr, ptr %43, i64 2
  %45 = load ptr, ptr %44, align 8
  %46 = tail call noundef ptr %45(ptr noundef nonnull align 8 dereferenceable(8) %40, i64 noundef %42) #13
  store ptr %46, ptr %29, align 8, !tbaa !187
  br label %47

47:                                               ; preds = %38, %23
  store i32 %5, ptr %25, align 8, !tbaa !199
  %48 = icmp sgt i32 %5, 0
  br i1 %48, label %49, label %52, !prof !200

49:                                               ; preds = %47
  %50 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %0, i64 0, i32 6
  %51 = load ptr, ptr %50, align 8, !tbaa !187
  br label %53

52:                                               ; preds = %53, %47
  ret void

53:                                               ; preds = %49, %53
  %54 = phi i64 [ 0, %49 ], [ %56, %53 ]
  %55 = getelementptr inbounds i32, ptr %51, i64 %54
  store i32 -1, ptr %55, align 4, !tbaa !201
  %56 = add nuw nsw i64 %54, 1
  %57 = load i32, ptr %25, align 8, !tbaa !199
  %58 = sext i32 %57 to i64
  %59 = icmp slt i64 %56, %58
  br i1 %59, label %53, label %52, !prof !202, !llvm.loop !203
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_717RegularExpression7Context6nextChERiS2_s(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0, ptr nocapture noundef nonnull align 4 dereferenceable(4) %1, ptr nocapture noundef nonnull align 4 dereferenceable(4) %2, i16 noundef signext %3) local_unnamed_addr #5 align 2 !prof !205 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %0, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !194
  %7 = load i32, ptr %2, align 4, !tbaa !201
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i16, ptr %6, i64 %8
  %10 = load i16, ptr %9, align 2, !tbaa !175
  %11 = zext i16 %10 to i32
  store i32 %11, ptr %1, align 4, !tbaa !201
  %12 = tail call noundef zeroext i1 @_ZN11xercesc_2_78RegxUtil15isHighSurrogateEt(i16 noundef zeroext %10) #13
  br i1 %12, label %13, label %37, !prof !206

13:                                               ; preds = %4
  %14 = load i32, ptr %2, align 4, !tbaa !201
  %15 = add nsw i32 %14, 1
  %16 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %0, i64 0, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !197
  %18 = icmp slt i32 %15, %17
  %19 = icmp sgt i16 %3, 0
  %20 = and i1 %19, %18
  br i1 %20, label %21, label %65

21:                                               ; preds = %13
  %22 = load ptr, ptr %5, align 8, !tbaa !194
  %23 = sext i32 %15 to i64
  %24 = getelementptr inbounds i16, ptr %22, i64 %23
  %25 = load i16, ptr %24, align 2, !tbaa !175
  %26 = tail call noundef zeroext i1 @_ZN11xercesc_2_78RegxUtil14isLowSurrogateEt(i16 noundef zeroext %25) #13
  br i1 %26, label %27, label %65

27:                                               ; preds = %21
  %28 = load i32, ptr %1, align 4, !tbaa !201
  %29 = trunc i32 %28 to i16
  %30 = load ptr, ptr %5, align 8, !tbaa !194
  %31 = load i32, ptr %2, align 4, !tbaa !201
  %32 = add nsw i32 %31, 1
  store i32 %32, ptr %2, align 4, !tbaa !201
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i16, ptr %30, i64 %33
  %35 = load i16, ptr %34, align 2, !tbaa !175
  %36 = tail call noundef i32 @_ZN11xercesc_2_78RegxUtil20composeFromSurrogateEtt(i16 noundef zeroext %29, i16 noundef zeroext %35) #13
  br label %63

37:                                               ; preds = %4
  %38 = load i32, ptr %1, align 4, !tbaa !201
  %39 = trunc i32 %38 to i16
  %40 = tail call noundef zeroext i1 @_ZN11xercesc_2_78RegxUtil14isLowSurrogateEt(i16 noundef zeroext %39) #13
  br i1 %40, label %41, label %65, !prof !206

41:                                               ; preds = %37
  %42 = load i32, ptr %2, align 4, !tbaa !201
  %43 = icmp sgt i32 %42, 0
  %44 = icmp slt i16 %3, 1
  %45 = and i1 %44, %43
  br i1 %45, label %46, label %65

46:                                               ; preds = %41
  %47 = load ptr, ptr %5, align 8, !tbaa !194
  %48 = zext nneg i32 %42 to i64
  %49 = getelementptr i16, ptr %47, i64 %48
  %50 = getelementptr i16, ptr %49, i64 -1
  %51 = load i16, ptr %50, align 2, !tbaa !175
  %52 = tail call noundef zeroext i1 @_ZN11xercesc_2_78RegxUtil15isHighSurrogateEt(i16 noundef zeroext %51) #13
  br i1 %52, label %53, label %65

53:                                               ; preds = %46
  %54 = load ptr, ptr %5, align 8, !tbaa !194
  %55 = load i32, ptr %2, align 4, !tbaa !201
  %56 = add nsw i32 %55, -1
  store i32 %56, ptr %2, align 4, !tbaa !201
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i16, ptr %54, i64 %57
  %59 = load i16, ptr %58, align 2, !tbaa !175
  %60 = load i32, ptr %1, align 4, !tbaa !201
  %61 = trunc i32 %60 to i16
  %62 = tail call noundef i32 @_ZN11xercesc_2_78RegxUtil20composeFromSurrogateEtt(i16 noundef zeroext %59, i16 noundef zeroext %61) #13
  br label %63

63:                                               ; preds = %53, %27
  %64 = phi i32 [ %36, %27 ], [ %62, %53 ]
  store i32 %64, ptr %1, align 4, !tbaa !201
  br label %65

65:                                               ; preds = %63, %37, %41, %46, %13, %21
  %66 = phi i1 [ false, %21 ], [ false, %13 ], [ false, %46 ], [ false, %41 ], [ true, %37 ], [ true, %63 ]
  ret i1 %66
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_78RegxUtil15isHighSurrogateEt(i16 noundef zeroext %0) local_unnamed_addr #5 comdat align 2 !prof !207 {
  %2 = and i16 %0, -1024
  %3 = icmp eq i16 %2, -10240
  ret i1 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_78RegxUtil14isLowSurrogateEt(i16 noundef zeroext %0) local_unnamed_addr #5 comdat align 2 !prof !205 {
  %2 = and i16 %0, -1024
  %3 = icmp eq i16 %2, -9216
  ret i1 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_78RegxUtil20composeFromSurrogateEtt(i16 noundef zeroext %0, i16 noundef zeroext %1) local_unnamed_addr #5 comdat align 2 !prof !174 {
  %3 = zext i16 %0 to i32
  %4 = shl nuw nsw i32 %3, 10
  %5 = zext i16 %1 to i32
  %6 = add nuw nsw i32 %5, -56613888
  %7 = add nsw i32 %6, %4
  ret i32 %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717RegularExpressionC2EPKcPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !174 {
  %4 = alloca %"class.xercesc_2_7::JanitorMemFunCall", align 8
  %5 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  store i8 0, ptr %0, align 8, !tbaa !208
  %6 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 1
  store i8 0, ptr %6, align 1, !tbaa !211
  %7 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 6
  %9 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %8, i8 0, i64 48, i1 false)
  tail call void @_ZN11xercesc_2_79OpFactoryC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef %2) #13
  %10 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 13
  store ptr null, ptr %10, align 8, !tbaa !212
  %11 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 14
  store ptr %2, ptr %11, align 8, !tbaa !213
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #14
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_17RegularExpressionEEC2EPS1_MS1_FvvE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull %0, i64 ptrtoint (ptr @_ZN11xercesc_2_717RegularExpression7cleanUpEv to i64), i64 0) #13
  %12 = load ptr, ptr %11, align 8, !tbaa !213
  %13 = invoke noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKcPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %12) #13
          to label %14 unwind label %17

14:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #14
  %15 = load ptr, ptr %11, align 8, !tbaa !213
  call void @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef %13, ptr noundef %15) #13
  invoke void @_ZN11xercesc_2_717RegularExpression10setPatternEPKtS2_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %13, ptr noundef null) #13
          to label %16 unwind label %19

16:                                               ; preds = %14
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #14
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_17RegularExpressionEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #13
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_17RegularExpressionEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #14
  ret void

17:                                               ; preds = %3
  %18 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  br label %21

19:                                               ; preds = %14
  %20 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #14
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi { ptr, i32 } [ %20, %19 ], [ %18, %17 ]
  %23 = extractvalue { ptr, i32 } %22, 1
  %24 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #14
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = extractvalue { ptr, i32 } %22, 0
  %28 = call ptr @__cxa_begin_catch(ptr %27) #14
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_17RegularExpressionEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #13
  invoke void @__cxa_rethrow() #17
          to label %36 unwind label %29

29:                                               ; preds = %26
  %30 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %31 unwind label %33

31:                                               ; preds = %29, %21
  %32 = phi { ptr, i32 } [ %22, %21 ], [ %30, %29 ]
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_17RegularExpressionEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #14
  call void @_ZN11xercesc_2_79OpFactoryD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #15
  resume { ptr, i32 } %32

33:                                               ; preds = %29
  %34 = landingpad { ptr, i32 }
          catch ptr null
  %35 = extractvalue { ptr, i32 } %34, 0
  call void @__clang_call_terminate(ptr %35) #16
  unreachable

36:                                               ; preds = %26
  unreachable
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79OpFactoryC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717RegularExpression7cleanUpEv(ptr noundef nonnull align 8 dereferenceable(104) %0) #3 comdat align 2 !prof !214 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 14
  %3 = load ptr, ptr %2, align 8, !tbaa !213
  %4 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !215
  %6 = load ptr, ptr %3, align 8, !tbaa !189
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5) #13
  %9 = load ptr, ptr %2, align 8, !tbaa !213
  %10 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 8
  %11 = load ptr, ptr %10, align 8, !tbaa !216
  %12 = load ptr, ptr %9, align 8, !tbaa !189
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef %11) #13
  %15 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !217
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  tail call void @_ZN11xercesc_2_79BMPatternD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %16) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %16) #15
  br label %19

19:                                               ; preds = %18, %1
  %20 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 13
  %21 = load ptr, ptr %20, align 8, !tbaa !212
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  tail call void @_ZN11xercesc_2_712TokenFactoryD1Ev(ptr noundef nonnull align 8 dereferenceable(128) %21) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %21) #15
  br label %24

24:                                               ; preds = %23, %19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717JanitorMemFunCallINS_17RegularExpressionEEC2EPS1_MS1_FvvE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 %2, i64 %3) unnamed_addr #5 comdat align 2 !prof !214 {
  store ptr %1, ptr %0, align 8, !tbaa !218
  %5 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall", ptr %0, i64 0, i32 1
  store i64 %2, ptr %5, align 8, !tbaa !220
  %6 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall", ptr %0, i64 0, i32 1, i32 1
  store i64 %3, ptr %6, align 8, !tbaa !220
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKcPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #5 comdat align 2 !prof !221 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  store ptr %1, ptr %0, align 8, !tbaa !222
  %4 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !224
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717RegularExpression10setPatternEPKtS2_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !214 {
  %4 = alloca %"class.xercesc_2_7::Janitor", align 8
  %5 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 14
  %6 = load ptr, ptr %5, align 8, !tbaa !213
  %7 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 128, ptr noundef %6) #13
  %8 = load ptr, ptr %5, align 8, !tbaa !213
  invoke void @_ZN11xercesc_2_712TokenFactoryC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(128) %7, ptr noundef %8) #13
          to label %9 unwind label %22

9:                                                ; preds = %3
  %10 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 13
  store ptr %7, ptr %10, align 8, !tbaa !212
  %11 = tail call noundef i32 @_ZN11xercesc_2_717RegularExpression12parseOptionsEPKt(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %2) #13, !range !225
  %12 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 5
  store i32 %11, ptr %12, align 8, !tbaa !226
  %13 = load ptr, ptr %5, align 8, !tbaa !213
  %14 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %13) #13
  %15 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 7
  store ptr %14, ptr %15, align 8, !tbaa !215
  %16 = load i32, ptr %12, align 8, !tbaa !226
  %17 = tail call noundef zeroext i1 @_ZN11xercesc_2_717RegularExpression5isSetEii(i32 noundef %16, i32 noundef 512) #13
  %18 = load ptr, ptr %5, align 8, !tbaa !213
  %19 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 72, ptr noundef %18) #13
  %20 = load ptr, ptr %5, align 8, !tbaa !213
  br i1 %17, label %21, label %26, !prof !227

21:                                               ; preds = %9
  invoke void @_ZN11xercesc_2_718ParserForXMLSchemaC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72) %19, ptr noundef %20) #13
          to label %29 unwind label %24

22:                                               ; preds = %3
  %23 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %7, ptr noundef %6) #15
  br label %43

24:                                               ; preds = %21
  %25 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %19, ptr noundef %18) #15
  br label %43

26:                                               ; preds = %9
  invoke void @_ZN11xercesc_2_710RegxParserC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72) %19, ptr noundef %20) #13
          to label %29 unwind label %27

27:                                               ; preds = %26
  %28 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %19, ptr noundef %18) #15
  br label %43

29:                                               ; preds = %21, %26
  %30 = load ptr, ptr %10, align 8, !tbaa !212
  tail call void @_ZN11xercesc_2_710RegxParser15setTokenFactoryEPNS_12TokenFactoryE(ptr noundef nonnull align 8 dereferenceable(72) %19, ptr noundef %30) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #14
  call void @_ZN11xercesc_2_77JanitorINS_10RegxParserEEC2EPS1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %19) #13
  %31 = load ptr, ptr %15, align 8, !tbaa !215
  %32 = load i32, ptr %12, align 8, !tbaa !226
  %33 = invoke noundef ptr @_ZN11xercesc_2_710RegxParser5parseEPKti(ptr noundef nonnull align 8 dereferenceable(72) %19, ptr noundef %31, i32 noundef %32) #13
          to label %34 unwind label %41

34:                                               ; preds = %29
  %35 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 10
  store ptr %33, ptr %35, align 8, !tbaa !228
  %36 = call noundef i32 @_ZNK11xercesc_2_710RegxParser10getNoParenEv(ptr noundef nonnull align 8 dereferenceable(72) %19) #13
  %37 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 2
  store i32 %36, ptr %37, align 4, !tbaa !229
  %38 = call noundef zeroext i1 @_ZNK11xercesc_2_710RegxParser17hasBackReferencesEv(ptr noundef nonnull align 8 dereferenceable(72) %19) #13
  %39 = zext i1 %38 to i8
  store i8 %39, ptr %0, align 8, !tbaa !208
  invoke void @_ZN11xercesc_2_717RegularExpression7prepareEv(ptr noundef nonnull align 8 dereferenceable(104) %0) #13
          to label %40 unwind label %41

40:                                               ; preds = %34
  call void @_ZN11xercesc_2_77JanitorINS_10RegxParserEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  ret void

41:                                               ; preds = %34, %29
  %42 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77JanitorINS_10RegxParserEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  br label %43

43:                                               ; preds = %24, %27, %41, %22
  %44 = phi { ptr, i32 } [ %23, %22 ], [ %42, %41 ], [ %25, %24 ], [ %28, %27 ]
  resume { ptr, i32 } %44
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !230 {
  invoke void @_ZN11xercesc_2_712ArrayJanitorItE5resetEPt(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef null) #13
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #16
  unreachable
}

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #7

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717JanitorMemFunCallINS_17RegularExpressionEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !214 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717JanitorMemFunCallINS_17RegularExpressionEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !214 {
  %2 = load ptr, ptr %0, align 8, !tbaa !218
  %3 = icmp eq ptr %2, null
  br i1 %3, label %23, label %4, !prof !227

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall", ptr %0, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !220
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %23, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall", ptr %0, i64 0, i32 1, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !220
  %11 = getelementptr inbounds i8, ptr %2, i64 %10
  %12 = and i64 %6, 1
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %8
  %15 = load ptr, ptr %11, align 8, !tbaa !189
  %16 = getelementptr i8, ptr %15, i64 %6
  %17 = getelementptr i8, ptr %16, i64 -1
  %18 = load ptr, ptr %17, align 8, !nosanitize !192
  br label %21

19:                                               ; preds = %8
  %20 = inttoptr i64 %6 to ptr
  br label %21

21:                                               ; preds = %19, %14
  %22 = phi ptr [ %18, %14 ], [ %20, %19 ]
  invoke void %22(ptr noundef nonnull align 8 dereferenceable(104) %11) #13
          to label %23 unwind label %24

23:                                               ; preds = %21, %4, %1
  ret void

24:                                               ; preds = %21
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  tail call void @__clang_call_terminate(ptr %26) #16
  unreachable
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_79OpFactoryD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #8

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_79BMPatternD1Ev(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #8

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712TokenFactoryD1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #8

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorItE5resetEPt(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !230 {
  %3 = load ptr, ptr %0, align 8, !tbaa !222
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5, !prof !231

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !224
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9, !prof !232

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 8, !tbaa !189
  %11 = getelementptr inbounds ptr, ptr %10, i64 3
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %3) #13
  br label %14

13:                                               ; preds = %5
  tail call void @_ZdaPv(ptr noundef nonnull %3) #18
  br label %14

14:                                               ; preds = %9, %13, %2
  store ptr %1, ptr %0, align 8, !tbaa !222
  %15 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  store ptr null, ptr %15, align 8, !tbaa !224
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717RegularExpressionC2EPKcS2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !174 {
  %5 = alloca %"class.xercesc_2_7::JanitorMemFunCall", align 8
  %6 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %7 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  store i8 0, ptr %0, align 8, !tbaa !208
  %8 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 1
  store i8 0, ptr %8, align 1, !tbaa !211
  %9 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 2
  %10 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 6
  %11 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %10, i8 0, i64 48, i1 false)
  tail call void @_ZN11xercesc_2_79OpFactoryC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef %3) #13
  %12 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 13
  store ptr null, ptr %12, align 8, !tbaa !212
  %13 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 14
  store ptr %3, ptr %13, align 8, !tbaa !213
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #14
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_17RegularExpressionEEC2EPS1_MS1_FvvE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull %0, i64 ptrtoint (ptr @_ZN11xercesc_2_717RegularExpression7cleanUpEv to i64), i64 0) #13
  %14 = load ptr, ptr %13, align 8, !tbaa !213
  %15 = invoke noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKcPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %14) #13
          to label %16 unwind label %23

16:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #14
  %17 = load ptr, ptr %13, align 8, !tbaa !213
  call void @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef %15, ptr noundef %17) #13
  %18 = load ptr, ptr %13, align 8, !tbaa !213
  %19 = invoke noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKcPNS_13MemoryManagerE(ptr noundef %2, ptr noundef %18) #13
          to label %20 unwind label %25

20:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #14
  %21 = load ptr, ptr %13, align 8, !tbaa !213
  call void @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef %19, ptr noundef %21) #13
  invoke void @_ZN11xercesc_2_717RegularExpression10setPatternEPKtS2_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %15, ptr noundef %19) #13
          to label %22 unwind label %27

22:                                               ; preds = %20
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #14
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #14
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_17RegularExpressionEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #13
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_17RegularExpressionEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #14
  ret void

23:                                               ; preds = %4
  %24 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  br label %31

25:                                               ; preds = %16
  %26 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  br label %29

27:                                               ; preds = %20
  %28 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #14
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi { ptr, i32 } [ %28, %27 ], [ %26, %25 ]
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #14
  br label %31

31:                                               ; preds = %29, %23
  %32 = phi { ptr, i32 } [ %30, %29 ], [ %24, %23 ]
  %33 = extractvalue { ptr, i32 } %32, 1
  %34 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #14
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = extractvalue { ptr, i32 } %32, 0
  %38 = call ptr @__cxa_begin_catch(ptr %37) #14
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_17RegularExpressionEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #13
  invoke void @__cxa_rethrow() #17
          to label %46 unwind label %39

39:                                               ; preds = %36
  %40 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %41 unwind label %43

41:                                               ; preds = %39, %31
  %42 = phi { ptr, i32 } [ %32, %31 ], [ %40, %39 ]
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_17RegularExpressionEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #14
  call void @_ZN11xercesc_2_79OpFactoryD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %11) #15
  resume { ptr, i32 } %42

43:                                               ; preds = %39
  %44 = landingpad { ptr, i32 }
          catch ptr null
  %45 = extractvalue { ptr, i32 } %44, 0
  call void @__clang_call_terminate(ptr %45) #16
  unreachable

46:                                               ; preds = %36
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717RegularExpressionC2EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !174 {
  %4 = alloca %"class.xercesc_2_7::JanitorMemFunCall", align 8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  store i8 0, ptr %0, align 8, !tbaa !208
  %5 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 1
  store i8 0, ptr %5, align 1, !tbaa !211
  %6 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 2
  %7 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 6
  %8 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %7, i8 0, i64 48, i1 false)
  tail call void @_ZN11xercesc_2_79OpFactoryC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef %2) #13
  %9 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 13
  store ptr null, ptr %9, align 8, !tbaa !212
  %10 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 14
  store ptr %2, ptr %10, align 8, !tbaa !213
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #14
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_17RegularExpressionEEC2EPS1_MS1_FvvE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull %0, i64 ptrtoint (ptr @_ZN11xercesc_2_717RegularExpression7cleanUpEv to i64), i64 0) #13
  invoke void @_ZN11xercesc_2_717RegularExpression10setPatternEPKtS2_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef null) #13
          to label %21 unwind label %11

11:                                               ; preds = %3
  %12 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %13 = extractvalue { ptr, i32 } %12, 1
  %14 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #14
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %11
  %17 = extractvalue { ptr, i32 } %12, 0
  %18 = call ptr @__cxa_begin_catch(ptr %17) #14
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_17RegularExpressionEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #13
  invoke void @__cxa_rethrow() #17
          to label %27 unwind label %19

19:                                               ; preds = %16
  %20 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %22 unwind label %24

21:                                               ; preds = %3
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_17RegularExpressionEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #13
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_17RegularExpressionEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #14
  ret void

22:                                               ; preds = %19, %11
  %23 = phi { ptr, i32 } [ %12, %11 ], [ %20, %19 ]
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_17RegularExpressionEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #14
  call void @_ZN11xercesc_2_79OpFactoryD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #15
  resume { ptr, i32 } %23

24:                                               ; preds = %19
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  call void @__clang_call_terminate(ptr %26) #16
  unreachable

27:                                               ; preds = %16
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717RegularExpressionC2EPKtS2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !214 {
  %5 = alloca %"class.xercesc_2_7::JanitorMemFunCall", align 8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  store i8 0, ptr %0, align 8, !tbaa !208
  %6 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 1
  store i8 0, ptr %6, align 1, !tbaa !211
  %7 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 6
  %9 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %8, i8 0, i64 48, i1 false)
  tail call void @_ZN11xercesc_2_79OpFactoryC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef %3) #13
  %10 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 13
  store ptr null, ptr %10, align 8, !tbaa !212
  %11 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 14
  store ptr %3, ptr %11, align 8, !tbaa !213
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #14
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_17RegularExpressionEEC2EPS1_MS1_FvvE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull %0, i64 ptrtoint (ptr @_ZN11xercesc_2_717RegularExpression7cleanUpEv to i64), i64 0) #13
  invoke void @_ZN11xercesc_2_717RegularExpression10setPatternEPKtS2_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef %2) #13
          to label %22 unwind label %12

12:                                               ; preds = %4
  %13 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %14 = extractvalue { ptr, i32 } %13, 1
  %15 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #14
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %12
  %18 = extractvalue { ptr, i32 } %13, 0
  %19 = call ptr @__cxa_begin_catch(ptr %18) #14
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_17RegularExpressionEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #13
  invoke void @__cxa_rethrow() #17
          to label %28 unwind label %20

20:                                               ; preds = %17
  %21 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %23 unwind label %25

22:                                               ; preds = %4
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_17RegularExpressionEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #13
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_17RegularExpressionEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #14
  ret void

23:                                               ; preds = %20, %12
  %24 = phi { ptr, i32 } [ %13, %12 ], [ %21, %20 ]
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_17RegularExpressionEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #14
  call void @_ZN11xercesc_2_79OpFactoryD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #15
  resume { ptr, i32 } %24

25:                                               ; preds = %20
  %26 = landingpad { ptr, i32 }
          catch ptr null
  %27 = extractvalue { ptr, i32 } %26, 0
  call void @__clang_call_terminate(ptr %27) #16
  unreachable

28:                                               ; preds = %17
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_717RegularExpressionD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !214 {
  invoke void @_ZN11xercesc_2_717RegularExpression7cleanUpEv(ptr noundef nonnull align 8 dereferenceable(104) %0) #13
          to label %2 unwind label %4

2:                                                ; preds = %1
  %3 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 12
  tail call void @_ZN11xercesc_2_79OpFactoryD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #15
  ret void

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          catch ptr null
  %6 = extractvalue { ptr, i32 } %5, 0
  tail call void @__clang_call_terminate(ptr %6) #16
  unreachable
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712TokenFactoryC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef) unnamed_addr #2

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN11xercesc_2_717RegularExpression12parseOptionsEPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(104) %0, ptr noundef %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !214 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %26, label %4, !prof !233

4:                                                ; preds = %2
  %5 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef nonnull %1) #13
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %26, !prof !234

7:                                                ; preds = %4, %21
  %8 = phi i64 [ %24, %21 ], [ 0, %4 ]
  %9 = phi i32 [ %23, %21 ], [ 0, %4 ]
  %10 = getelementptr inbounds i16, ptr %1, i64 %8
  %11 = load i16, ptr %10, align 2, !tbaa !175
  %12 = tail call noundef i32 @_ZN11xercesc_2_717RegularExpression14getOptionValueEt(i16 noundef zeroext %11) #13, !range !235
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %21, !prof !233

14:                                               ; preds = %7
  %15 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %16 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 14
  %17 = load ptr, ptr %16, align 8, !tbaa !213
  invoke void @_ZN11xercesc_2_714ParseExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %15, ptr noundef nonnull @.str.3, i32 noundef 1360, i32 noundef 291, ptr noundef nonnull %1, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %17) #13
          to label %18 unwind label %19

18:                                               ; preds = %14
  tail call void @__cxa_throw(ptr nonnull %15, ptr nonnull @_ZTIN11xercesc_2_714ParseExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

19:                                               ; preds = %14
  %20 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %15) #14
  resume { ptr, i32 } %20

21:                                               ; preds = %7
  %22 = zext nneg i32 %5 to i64
  %23 = or i32 %12, %9
  %24 = add nuw nsw i64 %8, 1
  %25 = icmp eq i64 %24, %22
  br i1 %25, label %26, label %7, !prof !234, !llvm.loop !236

26:                                               ; preds = %21, %4, %2
  %27 = phi i32 [ 0, %2 ], [ 0, %4 ], [ %23, %21 ]
  ret i32 %27
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !237 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %13, label %4, !prof !238

4:                                                ; preds = %2
  %5 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef nonnull %0) #13
  %6 = add i32 %5, 1
  %7 = zext i32 %6 to i64
  %8 = shl nuw nsw i64 %7, 1
  %9 = load ptr, ptr %1, align 8, !tbaa !189
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %8) #13
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %12, ptr nonnull align 2 %0, i64 %8, i1 false)
  br label %13

13:                                               ; preds = %4, %2
  %14 = phi ptr [ %12, %4 ], [ null, %2 ]
  ret ptr %14
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_717RegularExpression5isSetEii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #5 comdat align 2 !prof !239 {
  %3 = and i32 %1, %0
  %4 = icmp eq i32 %3, %1
  ret i1 %4
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_718ParserForXMLSchemaC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710RegxParserC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710RegxParser15setTokenFactoryEPNS_12TokenFactoryE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !214 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 12
  store ptr %1, ptr %3, align 8, !tbaa !240
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77JanitorINS_10RegxParserEEC2EPS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #5 comdat align 2 !prof !214 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  store ptr %1, ptr %0, align 8, !tbaa !242
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_710RegxParser5parseEPKti(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_710RegxParser10getNoParenEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #5 comdat align 2 !prof !214 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 4, !tbaa !244
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710RegxParser17hasBackReferencesEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #5 comdat align 2 !prof !214 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RegxParser", ptr %0, i64 0, i32 2
  %3 = load i8, ptr %2, align 8, !tbaa !245, !range !191, !noundef !192
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717RegularExpression7prepareEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !214 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 10
  %4 = load ptr, ptr %3, align 8, !tbaa !228
  tail call void @_ZN11xercesc_2_717RegularExpression7compileEPKNS_5TokenE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %4) #13
  %5 = load ptr, ptr %3, align 8, !tbaa !228
  %6 = tail call noundef i32 @_ZNK11xercesc_2_75Token12getMinLengthEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #13
  %7 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 3
  store i32 %6, ptr %7, align 8, !tbaa !246
  %8 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 11
  store ptr null, ptr %8, align 8, !tbaa !247
  %9 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 5
  %10 = load i32, ptr %9, align 8, !tbaa !226
  %11 = tail call noundef zeroext i1 @_ZN11xercesc_2_717RegularExpression5isSetEii(i32 noundef %10, i32 noundef 128) #13
  br i1 %11, label %36, label %12, !prof !233

12:                                               ; preds = %1
  %13 = load i32, ptr %9, align 8, !tbaa !226
  %14 = tail call noundef zeroext i1 @_ZN11xercesc_2_717RegularExpression5isSetEii(i32 noundef %13, i32 noundef 512) #13
  br i1 %14, label %36, label %15, !prof !227

15:                                               ; preds = %12
  %16 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 13
  %17 = load ptr, ptr %16, align 8, !tbaa !212
  %18 = tail call noundef ptr @_ZN11xercesc_2_712TokenFactory11createRangeEb(ptr noundef nonnull align 8 dereferenceable(128) %17, i1 noundef zeroext false) #13
  %19 = load ptr, ptr %3, align 8, !tbaa !228
  %20 = load i32, ptr %9, align 8, !tbaa !226
  %21 = load ptr, ptr %16, align 8, !tbaa !212
  %22 = tail call noundef i32 @_ZN11xercesc_2_75Token21analyzeFirstCharacterEPNS_10RangeTokenEiPNS_12TokenFactoryE(ptr noundef nonnull align 8 dereferenceable(24) %19, ptr noundef %18, i32 noundef %20, ptr noundef %21) #13
  %23 = load i16, ptr @_ZN11xercesc_2_75Token11FC_TERMINALE, align 2, !tbaa !175
  %24 = zext i16 %23 to i32
  %25 = icmp eq i32 %22, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %15
  %27 = load ptr, ptr %18, align 8, !tbaa !189
  %28 = getelementptr inbounds ptr, ptr %27, i64 15
  %29 = load ptr, ptr %28, align 8
  tail call void %29(ptr noundef nonnull align 8 dereferenceable(72) %18) #13
  store ptr %18, ptr %8, align 8, !tbaa !247
  br label %30

30:                                               ; preds = %26, %15
  tail call void @_ZN11xercesc_2_710RangeToken9createMapEv(ptr noundef nonnull align 8 dereferenceable(72) %18) #13
  %31 = load i32, ptr %9, align 8, !tbaa !226
  %32 = tail call noundef zeroext i1 @_ZN11xercesc_2_717RegularExpression5isSetEii(i32 noundef %31, i32 noundef 2) #13
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load ptr, ptr %16, align 8, !tbaa !212
  %35 = tail call noundef ptr @_ZN11xercesc_2_710RangeToken23getCaseInsensitiveTokenEPNS_12TokenFactoryE(ptr noundef nonnull align 8 dereferenceable(72) %18, ptr noundef %34) #13
  br label %36

36:                                               ; preds = %30, %33, %12, %1
  %37 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 9
  %38 = load ptr, ptr %37, align 8, !tbaa !248
  %39 = icmp eq ptr %38, null
  br i1 %39, label %119, label %40, !prof !233

40:                                               ; preds = %36
  %41 = tail call noundef ptr @_ZNK11xercesc_2_72Op9getNextOpEv(ptr noundef nonnull align 8 dereferenceable(32) %38) #13
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %119, !prof !249

43:                                               ; preds = %40
  %44 = load ptr, ptr %37, align 8, !tbaa !248
  %45 = tail call noundef signext i16 @_ZNK11xercesc_2_72Op9getOpTypeEv(ptr noundef nonnull align 8 dereferenceable(32) %44) #13
  %46 = icmp eq i16 %45, 6
  br i1 %46, label %51, label %47, !prof !250

47:                                               ; preds = %43
  %48 = load ptr, ptr %37, align 8, !tbaa !248
  %49 = tail call noundef signext i16 @_ZNK11xercesc_2_72Op9getOpTypeEv(ptr noundef nonnull align 8 dereferenceable(32) %48) #13
  %50 = icmp eq i16 %49, 1
  br i1 %50, label %51, label %119, !prof !250

51:                                               ; preds = %47, %43
  %52 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 1
  store i8 1, ptr %52, align 1, !tbaa !211
  %53 = load ptr, ptr %37, align 8, !tbaa !248
  %54 = tail call noundef signext i16 @_ZNK11xercesc_2_72Op9getOpTypeEv(ptr noundef nonnull align 8 dereferenceable(32) %53) #13
  %55 = icmp eq i16 %54, 6
  br i1 %55, label %56, label %71

56:                                               ; preds = %51
  %57 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 14
  %58 = load ptr, ptr %57, align 8, !tbaa !213
  %59 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 8
  %60 = load ptr, ptr %59, align 8, !tbaa !216
  %61 = load ptr, ptr %58, align 8, !tbaa !189
  %62 = getelementptr inbounds ptr, ptr %61, i64 3
  %63 = load ptr, ptr %62, align 8
  tail call void %63(ptr noundef nonnull align 8 dereferenceable(8) %58, ptr noundef %60) #13
  %64 = load ptr, ptr %37, align 8, !tbaa !248
  %65 = load ptr, ptr %64, align 8, !tbaa !189
  %66 = getelementptr inbounds ptr, ptr %65, i64 12
  %67 = load ptr, ptr %66, align 8
  %68 = tail call noundef ptr %67(ptr noundef nonnull align 8 dereferenceable(32) %64) #13
  %69 = load ptr, ptr %57, align 8, !tbaa !213
  %70 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %68, ptr noundef %69) #13
  store ptr %70, ptr %59, align 8, !tbaa !216
  br label %106

71:                                               ; preds = %51
  %72 = load ptr, ptr %37, align 8, !tbaa !248
  %73 = load ptr, ptr %72, align 8, !tbaa !189
  %74 = getelementptr inbounds ptr, ptr %73, i64 2
  %75 = load ptr, ptr %74, align 8
  %76 = tail call noundef i32 %75(ptr noundef nonnull align 8 dereferenceable(32) %72) #13
  %77 = icmp sgt i32 %76, 65535
  %78 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 14
  %79 = load ptr, ptr %78, align 8, !tbaa !213
  br i1 %77, label %80, label %88

80:                                               ; preds = %71
  %81 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 8
  %82 = load ptr, ptr %81, align 8, !tbaa !216
  %83 = load ptr, ptr %79, align 8, !tbaa !189
  %84 = getelementptr inbounds ptr, ptr %83, i64 3
  %85 = load ptr, ptr %84, align 8
  tail call void %85(ptr noundef nonnull align 8 dereferenceable(8) %79, ptr noundef %82) #13
  %86 = load ptr, ptr %78, align 8, !tbaa !213
  %87 = tail call noundef ptr @_ZN11xercesc_2_78RegxUtil21decomposeToSurrogatesEiPNS_13MemoryManagerE(i32 noundef %76, ptr noundef %86) #13
  store ptr %87, ptr %81, align 8, !tbaa !216
  br label %106

88:                                               ; preds = %71
  %89 = load ptr, ptr %79, align 8, !tbaa !189
  %90 = getelementptr inbounds ptr, ptr %89, i64 2
  %91 = load ptr, ptr %90, align 8
  %92 = tail call noundef ptr %91(ptr noundef nonnull align 8 dereferenceable(8) %79, i64 noundef 4) #13
  %93 = load ptr, ptr %37, align 8, !tbaa !248
  %94 = load ptr, ptr %93, align 8, !tbaa !189
  %95 = getelementptr inbounds ptr, ptr %94, i64 2
  %96 = load ptr, ptr %95, align 8
  %97 = tail call noundef i32 %96(ptr noundef nonnull align 8 dereferenceable(32) %93) #13
  %98 = trunc i32 %97 to i16
  store i16 %98, ptr %92, align 2, !tbaa !175
  %99 = getelementptr inbounds i16, ptr %92, i64 1
  store i16 0, ptr %99, align 2, !tbaa !175
  %100 = load ptr, ptr %78, align 8, !tbaa !213
  %101 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 8
  %102 = load ptr, ptr %101, align 8, !tbaa !216
  %103 = load ptr, ptr %100, align 8, !tbaa !189
  %104 = getelementptr inbounds ptr, ptr %103, i64 3
  %105 = load ptr, ptr %104, align 8
  tail call void %105(ptr noundef nonnull align 8 dereferenceable(8) %100, ptr noundef %102) #13
  store ptr %92, ptr %101, align 8, !tbaa !216
  br label %106

106:                                              ; preds = %80, %88, %56
  %107 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 14
  %108 = load ptr, ptr %107, align 8, !tbaa !213
  %109 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %108) #13
  %110 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 8
  %111 = load ptr, ptr %110, align 8, !tbaa !216
  %112 = load i32, ptr %9, align 8, !tbaa !226
  %113 = tail call noundef zeroext i1 @_ZN11xercesc_2_717RegularExpression5isSetEii(i32 noundef %112, i32 noundef 2) #13
  %114 = load ptr, ptr %107, align 8, !tbaa !213
  invoke void @_ZN11xercesc_2_79BMPatternC1EPKtibPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %109, ptr noundef %111, i32 noundef 256, i1 noundef zeroext %113, ptr noundef %114) #13
          to label %115 unwind label %117

115:                                              ; preds = %106
  %116 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 6
  store ptr %109, ptr %116, align 8, !tbaa !217
  br label %170

117:                                              ; preds = %106
  %118 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %109, ptr noundef %108) #15
  br label %171

119:                                              ; preds = %47, %40, %36
  %120 = load i32, ptr %9, align 8, !tbaa !226
  %121 = tail call noundef zeroext i1 @_ZN11xercesc_2_717RegularExpression5isSetEii(i32 noundef %120, i32 noundef 512) #13
  br i1 %121, label %170, label %122, !prof !227

122:                                              ; preds = %119
  %123 = load i32, ptr %9, align 8, !tbaa !226
  %124 = tail call noundef zeroext i1 @_ZN11xercesc_2_717RegularExpression5isSetEii(i32 noundef %123, i32 noundef 256) #13
  br i1 %124, label %170, label %125

125:                                              ; preds = %122
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #14
  store i32 0, ptr %2, align 4, !tbaa !201
  %126 = load ptr, ptr %3, align 8, !tbaa !228
  %127 = load i32, ptr %9, align 8, !tbaa !226
  %128 = call noundef ptr @_ZN11xercesc_2_75Token15findFixedStringEiRi(ptr noundef nonnull align 8 dereferenceable(24) %126, i32 noundef %127, ptr noundef nonnull align 4 dereferenceable(4) %2) #13
  %129 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 14
  %130 = load ptr, ptr %129, align 8, !tbaa !213
  %131 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 8
  %132 = load ptr, ptr %131, align 8, !tbaa !216
  %133 = load ptr, ptr %130, align 8, !tbaa !189
  %134 = getelementptr inbounds ptr, ptr %133, i64 3
  %135 = load ptr, ptr %134, align 8
  call void %135(ptr noundef nonnull align 8 dereferenceable(8) %130, ptr noundef %132) #13
  %136 = icmp eq ptr %128, null
  br i1 %136, label %137, label %138

137:                                              ; preds = %125
  store ptr null, ptr %131, align 8, !tbaa !216
  br label %169

138:                                              ; preds = %125
  %139 = load ptr, ptr %128, align 8, !tbaa !189
  %140 = getelementptr inbounds ptr, ptr %139, i64 8
  %141 = load ptr, ptr %140, align 8
  %142 = call noundef ptr %141(ptr noundef nonnull align 8 dereferenceable(24) %128) #13
  %143 = load ptr, ptr %129, align 8, !tbaa !213
  %144 = call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %142, ptr noundef %143) #13
  store ptr %144, ptr %131, align 8, !tbaa !216
  %145 = icmp eq ptr %144, null
  br i1 %145, label %169, label %146

146:                                              ; preds = %138
  %147 = call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef nonnull %144) #13
  %148 = icmp ult i32 %147, 2
  br i1 %148, label %149, label %155

149:                                              ; preds = %146
  %150 = load ptr, ptr %129, align 8, !tbaa !213
  %151 = load ptr, ptr %131, align 8, !tbaa !216
  %152 = load ptr, ptr %150, align 8, !tbaa !189
  %153 = getelementptr inbounds ptr, ptr %152, i64 3
  %154 = load ptr, ptr %153, align 8
  call void %154(ptr noundef nonnull align 8 dereferenceable(8) %150, ptr noundef %151) #13
  store ptr null, ptr %131, align 8, !tbaa !216
  br label %169

155:                                              ; preds = %146
  %156 = load ptr, ptr %131, align 8, !tbaa !216
  %157 = icmp eq ptr %156, null
  br i1 %157, label %169, label %158

158:                                              ; preds = %155
  %159 = load ptr, ptr %129, align 8, !tbaa !213
  %160 = call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %159) #13
  %161 = load ptr, ptr %131, align 8, !tbaa !216
  %162 = load i32, ptr %2, align 4, !tbaa !201
  %163 = call noundef zeroext i1 @_ZN11xercesc_2_717RegularExpression5isSetEii(i32 noundef %162, i32 noundef 2) #13
  %164 = load ptr, ptr %129, align 8, !tbaa !213
  invoke void @_ZN11xercesc_2_79BMPatternC1EPKtibPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %160, ptr noundef %161, i32 noundef 256, i1 noundef zeroext %163, ptr noundef %164) #13
          to label %165 unwind label %167

165:                                              ; preds = %158
  %166 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 6
  store ptr %160, ptr %166, align 8, !tbaa !217
  br label %169

167:                                              ; preds = %158
  %168 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %160, ptr noundef %159) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #14
  br label %171

169:                                              ; preds = %138, %149, %137, %165, %155
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #14
  br label %170

170:                                              ; preds = %119, %122, %169, %115
  ret void

171:                                              ; preds = %167, %117
  %172 = phi { ptr, i32 } [ %118, %117 ], [ %168, %167 ]
  resume { ptr, i32 } %172
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77JanitorINS_10RegxParserEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !214 {
  tail call void @_ZN11xercesc_2_77JanitorINS_10RegxParserEE5resetEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef null) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %0) local_unnamed_addr #5 comdat align 2 !prof !251 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3, !prof !252

3:                                                ; preds = %1
  %4 = load i16, ptr %0, align 2, !tbaa !175
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %17, label %6, !prof !253

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %8, %6 ], [ %0, %3 ]
  %8 = getelementptr inbounds i16, ptr %7, i64 1
  %9 = load i16, ptr %8, align 2, !tbaa !175
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %6, !prof !254, !llvm.loop !255

11:                                               ; preds = %6
  %12 = ptrtoint ptr %8 to i64
  %13 = ptrtoint ptr %0 to i64
  %14 = sub i64 %12, %13
  %15 = lshr exact i64 %14, 1
  %16 = trunc i64 %15 to i32
  br label %17

17:                                               ; preds = %1, %3, %11
  %18 = phi i32 [ %16, %11 ], [ 0, %3 ], [ 0, %1 ]
  ret i32 %18
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77JanitorINS_10RegxParserEE5resetEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !214 {
  %3 = load ptr, ptr %0, align 8, !tbaa !242
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !233

5:                                                ; preds = %2
  %6 = load ptr, ptr %3, align 8, !tbaa !189
  %7 = getelementptr inbounds ptr, ptr %6, i64 1
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(72) %3) #15
  br label %9

9:                                                ; preds = %5, %2
  store ptr %1, ptr %0, align 8, !tbaa !242
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_717RegularExpression7matchesEPKcPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !174 {
  %4 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %5 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKcPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %2) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #14
  call void @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %5, ptr noundef %2) #13
  %6 = call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %5) #13
  %7 = invoke noundef zeroext i1 @_ZN11xercesc_2_717RegularExpression7matchesEPKtiiPNS_5MatchEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %5, i32 noundef 0, i32 noundef %6, ptr noundef null, ptr noundef %2) #13
          to label %8 unwind label %9

8:                                                ; preds = %3
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #14
  ret i1 %7

9:                                                ; preds = %3
  %10 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #14
  resume { ptr, i32 } %10
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_717RegularExpression7matchesEPKtiiPNS_5MatchEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !179 {
  %7 = alloca %"class.xercesc_2_7::RegularExpression::Context", align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #14
  call void @_ZN11xercesc_2_717RegularExpression7ContextC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef %5) #13
  %10 = call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %1) #13
  %11 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 4
  %12 = load i32, ptr %11, align 4, !tbaa !256
  invoke void @_ZN11xercesc_2_717RegularExpression7Context5resetEPKtiiii(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef %1, i32 noundef %10, i32 noundef %2, i32 noundef %3, i32 noundef %12) #13
          to label %13 unwind label %18

13:                                               ; preds = %6
  %14 = icmp eq ptr %4, null
  br i1 %14, label %22, label %15, !prof !188

15:                                               ; preds = %13
  %16 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 2
  %17 = load i32, ptr %16, align 4, !tbaa !229
  invoke void @_ZN11xercesc_2_75Match11setNoGroupsEi(ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef %17) #13
          to label %36 unwind label %20

18:                                               ; preds = %6
  %19 = landingpad { ptr, i32 }
          cleanup
  br label %254

20:                                               ; preds = %31, %25, %15
  %21 = landingpad { ptr, i32 }
          cleanup
  br label %254

22:                                               ; preds = %13
  %23 = load i8, ptr %0, align 8, !tbaa !208, !range !191, !noundef !192
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %36, label %25, !prof !188

25:                                               ; preds = %22
  %26 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 14
  %27 = load ptr, ptr %26, align 8, !tbaa !213
  %28 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %27) #13
          to label %29 unwind label %20

29:                                               ; preds = %25
  %30 = load ptr, ptr %26, align 8, !tbaa !213
  invoke void @_ZN11xercesc_2_75MatchC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %28, ptr noundef %30) #13
          to label %31 unwind label %34

31:                                               ; preds = %29
  %32 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 2
  %33 = load i32, ptr %32, align 4, !tbaa !229
  invoke void @_ZN11xercesc_2_75Match11setNoGroupsEi(ptr noundef nonnull align 8 dereferenceable(40) %28, i32 noundef %33) #13
          to label %36 unwind label %20

34:                                               ; preds = %29
  %35 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %28, ptr noundef %27) #15
  br label %254

36:                                               ; preds = %31, %22, %15
  %37 = phi ptr [ %4, %15 ], [ null, %22 ], [ %28, %31 ]
  %38 = phi i8 [ 0, %15 ], [ 0, %22 ], [ 1, %31 ]
  %39 = load i8, ptr %7, align 8, !tbaa !180, !range !191, !noundef !192
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %49, label %41, !prof !188

41:                                               ; preds = %36
  %42 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %7, i64 0, i32 7
  %43 = load ptr, ptr %42, align 8, !tbaa !193
  %44 = icmp eq ptr %43, null
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = load ptr, ptr %43, align 8, !tbaa !189
  %47 = getelementptr inbounds ptr, ptr %46, i64 1
  %48 = load ptr, ptr %47, align 8
  call void %48(ptr noundef nonnull align 8 dereferenceable(40) %43) #15
  br label %49

49:                                               ; preds = %41, %45, %36
  %50 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %7, i64 0, i32 7
  store ptr %37, ptr %50, align 8, !tbaa !193
  store i8 %38, ptr %7, align 8, !tbaa !180
  %51 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 5
  %52 = load i32, ptr %51, align 8, !tbaa !226
  %53 = call noundef zeroext i1 @_ZN11xercesc_2_717RegularExpression5isSetEii(i32 noundef %52, i32 noundef 512) #13
  br i1 %53, label %54, label %73, !prof !188

54:                                               ; preds = %49
  %55 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 9
  %56 = load ptr, ptr %55, align 8, !tbaa !248
  %57 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %7, i64 0, i32 1
  %58 = load i32, ptr %57, align 4, !tbaa !196
  %59 = invoke noundef i32 @_ZN11xercesc_2_717RegularExpression5matchEPNS0_7ContextEPKNS_2OpEis(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %7, ptr noundef %56, i32 noundef %58, i16 noundef signext 1) #13
          to label %60 unwind label %71

60:                                               ; preds = %54
  %61 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %7, i64 0, i32 2
  %62 = load i32, ptr %61, align 8, !tbaa !197
  %63 = icmp eq i32 %59, %62
  br i1 %63, label %64, label %252, !prof !188

64:                                               ; preds = %60
  %65 = load ptr, ptr %50, align 8, !tbaa !193
  %66 = icmp eq ptr %65, null
  br i1 %66, label %252, label %67, !prof !188

67:                                               ; preds = %64
  %68 = load i32, ptr %57, align 4, !tbaa !196
  invoke void @_ZN11xercesc_2_75Match11setStartPosEii(ptr noundef nonnull align 8 dereferenceable(40) %65, i32 noundef 0, i32 noundef %68) #13
          to label %69 unwind label %71

69:                                               ; preds = %67
  %70 = load ptr, ptr %50, align 8, !tbaa !193
  invoke void @_ZN11xercesc_2_75Match9setEndPosEii(ptr noundef nonnull align 8 dereferenceable(40) %70, i32 noundef 0, i32 noundef %59) #13
          to label %252 unwind label %71

71:                                               ; preds = %69, %67, %54
  %72 = landingpad { ptr, i32 }
          cleanup
  br label %254

73:                                               ; preds = %49
  %74 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 1
  %75 = load i8, ptr %74, align 1, !tbaa !211, !range !191, !noundef !192
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %96, label %77

77:                                               ; preds = %73
  %78 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 6
  %79 = load ptr, ptr %78, align 8, !tbaa !217
  %80 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %7, i64 0, i32 1
  %81 = load i32, ptr %80, align 4, !tbaa !196
  %82 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %7, i64 0, i32 2
  %83 = load i32, ptr %82, align 8, !tbaa !197
  %84 = invoke noundef i32 @_ZN11xercesc_2_79BMPattern7matchesEPKtii(ptr noundef nonnull align 8 dereferenceable(40) %79, ptr noundef %1, i32 noundef %81, i32 noundef %83) #13
          to label %85 unwind label %94

85:                                               ; preds = %77
  %86 = icmp sgt i32 %84, -1
  br i1 %86, label %87, label %252

87:                                               ; preds = %85
  %88 = load ptr, ptr %50, align 8, !tbaa !193
  %89 = icmp eq ptr %88, null
  br i1 %89, label %252, label %90

90:                                               ; preds = %87
  invoke void @_ZN11xercesc_2_75Match11setStartPosEii(ptr noundef nonnull align 8 dereferenceable(40) %88, i32 noundef 0, i32 noundef %84) #13
          to label %91 unwind label %94

91:                                               ; preds = %90
  %92 = load ptr, ptr %50, align 8, !tbaa !193
  %93 = add nsw i32 %84, %10
  invoke void @_ZN11xercesc_2_75Match9setEndPosEii(ptr noundef nonnull align 8 dereferenceable(40) %92, i32 noundef 0, i32 noundef %93) #13
          to label %252 unwind label %94

94:                                               ; preds = %91, %90, %77
  %95 = landingpad { ptr, i32 }
          cleanup
  br label %254

96:                                               ; preds = %73
  %97 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 8
  %98 = load ptr, ptr %97, align 8, !tbaa !216
  %99 = icmp eq ptr %98, null
  br i1 %99, label %112, label %100

100:                                              ; preds = %96
  %101 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 6
  %102 = load ptr, ptr %101, align 8, !tbaa !217
  %103 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %7, i64 0, i32 1
  %104 = load i32, ptr %103, align 4, !tbaa !196
  %105 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %7, i64 0, i32 2
  %106 = load i32, ptr %105, align 8, !tbaa !197
  %107 = invoke noundef i32 @_ZN11xercesc_2_79BMPattern7matchesEPKtii(ptr noundef nonnull align 8 dereferenceable(40) %102, ptr noundef %1, i32 noundef %104, i32 noundef %106) #13
          to label %108 unwind label %110

108:                                              ; preds = %100
  %109 = icmp sgt i32 %107, -1
  br i1 %109, label %112, label %252

110:                                              ; preds = %100
  %111 = landingpad { ptr, i32 }
          cleanup
  br label %254

112:                                              ; preds = %108, %96
  %113 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %7, i64 0, i32 2
  %114 = load i32, ptr %113, align 8, !tbaa !197
  %115 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 3
  %116 = load i32, ptr %115, align 8, !tbaa !246
  %117 = sub nsw i32 %114, %116
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #14
  %118 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 9
  %119 = load ptr, ptr %118, align 8, !tbaa !248
  %120 = icmp eq ptr %119, null
  br i1 %120, label %174, label %121

121:                                              ; preds = %112
  %122 = call noundef signext i16 @_ZNK11xercesc_2_72Op9getOpTypeEv(ptr noundef nonnull align 8 dereferenceable(32) %119) #13
  %123 = icmp eq i16 %122, 7
  br i1 %123, label %124, label %174

124:                                              ; preds = %121
  %125 = load ptr, ptr %118, align 8, !tbaa !248
  %126 = load ptr, ptr %125, align 8, !tbaa !189
  %127 = getelementptr inbounds ptr, ptr %126, i64 10
  %128 = load ptr, ptr %127, align 8
  %129 = invoke noundef ptr %128(ptr noundef nonnull align 8 dereferenceable(32) %125) #13
          to label %130 unwind label %143

130:                                              ; preds = %124
  %131 = call noundef signext i16 @_ZNK11xercesc_2_72Op9getOpTypeEv(ptr noundef nonnull align 8 dereferenceable(32) %129) #13
  %132 = icmp eq i16 %131, 0
  br i1 %132, label %133, label %174

133:                                              ; preds = %130
  %134 = load i32, ptr %51, align 8, !tbaa !226
  %135 = call noundef zeroext i1 @_ZN11xercesc_2_717RegularExpression5isSetEii(i32 noundef %134, i32 noundef 4) #13
  %136 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %7, i64 0, i32 1
  %137 = load i32, ptr %136, align 4, !tbaa !196
  br i1 %135, label %138, label %145

138:                                              ; preds = %133
  store i32 %137, ptr %8, align 4, !tbaa !201
  %139 = load ptr, ptr %118, align 8, !tbaa !248
  %140 = invoke noundef i32 @_ZN11xercesc_2_717RegularExpression5matchEPNS0_7ContextEPKNS_2OpEis(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %7, ptr noundef %139, i32 noundef %137, i16 noundef signext 1) #13
          to label %235 unwind label %143

141:                                              ; preds = %223
  %142 = landingpad { ptr, i32 }
          cleanup
  br label %250

143:                                              ; preds = %124, %138, %244, %246
  %144 = landingpad { ptr, i32 }
          cleanup
  br label %250

145:                                              ; preds = %133
  %146 = icmp sgt i32 %137, %117
  br i1 %146, label %232, label %147

147:                                              ; preds = %145
  %148 = sext i32 %137 to i64
  %149 = add i32 %114, 1
  %150 = sub i32 %149, %116
  br label %151

151:                                              ; preds = %147, %168
  %152 = phi i64 [ %148, %147 ], [ %171, %168 ]
  %153 = phi i8 [ 1, %147 ], [ %170, %168 ]
  %154 = phi i32 [ -1, %147 ], [ %169, %168 ]
  %155 = getelementptr inbounds i16, ptr %1, i64 %152
  %156 = load i16, ptr %155, align 2, !tbaa !175
  %157 = call noundef zeroext i1 @_ZN11xercesc_2_78RegxUtil9isEOLCharEt(i16 noundef zeroext %156) #13
  br i1 %157, label %168, label %160

158:                                              ; preds = %162
  %159 = landingpad { ptr, i32 }
          cleanup
  br label %250

160:                                              ; preds = %151
  %161 = icmp eq i8 %153, 0
  br i1 %161, label %168, label %162

162:                                              ; preds = %160
  %163 = load ptr, ptr %118, align 8, !tbaa !248
  %164 = trunc i64 %152 to i32
  %165 = invoke noundef i32 @_ZN11xercesc_2_717RegularExpression5matchEPNS0_7ContextEPKNS_2OpEis(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %7, ptr noundef %163, i32 noundef %164, i16 noundef signext 1) #13
          to label %166 unwind label %158

166:                                              ; preds = %162
  %167 = icmp sgt i32 %165, -1
  br i1 %167, label %239, label %168

168:                                              ; preds = %160, %151, %166
  %169 = phi i32 [ %165, %166 ], [ %154, %160 ], [ %154, %151 ]
  %170 = phi i8 [ 0, %166 ], [ 0, %160 ], [ 1, %151 ]
  %171 = add nsw i64 %152, 1
  %172 = trunc i64 %171 to i32
  %173 = icmp eq i32 %150, %172
  br i1 %173, label %232, label %151, !llvm.loop !257

174:                                              ; preds = %130, %121, %112
  %175 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 11
  %176 = load ptr, ptr %175, align 8, !tbaa !247
  %177 = icmp eq ptr %176, null
  br i1 %177, label %216, label %178

178:                                              ; preds = %174
  %179 = load i32, ptr %51, align 8, !tbaa !226
  %180 = call noundef zeroext i1 @_ZN11xercesc_2_717RegularExpression5isSetEii(i32 noundef %179, i32 noundef 2) #13
  %181 = load ptr, ptr %175, align 8, !tbaa !247
  br i1 %180, label %182, label %188

182:                                              ; preds = %178
  %183 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 13
  %184 = load ptr, ptr %183, align 8, !tbaa !212
  %185 = invoke noundef ptr @_ZN11xercesc_2_710RangeToken23getCaseInsensitiveTokenEPNS_12TokenFactoryE(ptr noundef nonnull align 8 dereferenceable(72) %181, ptr noundef %184) #13
          to label %188 unwind label %186

186:                                              ; preds = %182
  %187 = landingpad { ptr, i32 }
          cleanup
  br label %250

188:                                              ; preds = %182, %178
  %189 = phi ptr [ %181, %178 ], [ %185, %182 ]
  %190 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %7, i64 0, i32 1
  %191 = load i32, ptr %190, align 4, !tbaa !196
  store i32 %191, ptr %8, align 4, !tbaa !201
  %192 = icmp sgt i32 %191, %117
  br i1 %192, label %248, label %193

193:                                              ; preds = %188, %211
  %194 = phi i32 [ %213, %211 ], [ -1, %188 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #14
  %195 = call noundef zeroext i1 @_ZN11xercesc_2_717RegularExpression7Context6nextChERiS2_s(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 4 dereferenceable(4) %9, ptr noundef nonnull align 4 dereferenceable(4) %8, i16 noundef signext 1) #13
  br i1 %195, label %199, label %196

196:                                              ; preds = %193
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #14
  br label %235

197:                                              ; preds = %205, %199
  %198 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #14
  br label %250

199:                                              ; preds = %193
  %200 = load i32, ptr %9, align 4, !tbaa !201
  %201 = invoke noundef zeroext i1 @_ZN11xercesc_2_710RangeToken5matchEi(ptr noundef nonnull align 8 dereferenceable(72) %189, i32 noundef %200) #13
          to label %202 unwind label %197

202:                                              ; preds = %199
  br i1 %201, label %205, label %203

203:                                              ; preds = %202
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #14
  %204 = load i32, ptr %8, align 4, !tbaa !201
  br label %211

205:                                              ; preds = %202
  %206 = load ptr, ptr %118, align 8, !tbaa !248
  %207 = load i32, ptr %8, align 4, !tbaa !201
  %208 = invoke noundef i32 @_ZN11xercesc_2_717RegularExpression5matchEPNS0_7ContextEPKNS_2OpEis(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %7, ptr noundef %206, i32 noundef %207, i16 noundef signext 1) #13
          to label %209 unwind label %197

209:                                              ; preds = %205
  %210 = icmp sgt i32 %208, -1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #14
  br i1 %210, label %240, label %211

211:                                              ; preds = %203, %209
  %212 = phi i32 [ %204, %203 ], [ %207, %209 ]
  %213 = phi i32 [ %194, %203 ], [ %208, %209 ]
  %214 = add nsw i32 %212, 1
  store i32 %214, ptr %8, align 4, !tbaa !201
  %215 = icmp slt i32 %212, %117
  br i1 %215, label %193, label %235, !llvm.loop !258

216:                                              ; preds = %174
  %217 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %7, i64 0, i32 1
  %218 = load i32, ptr %217, align 4, !tbaa !196
  %219 = icmp sgt i32 %218, %117
  br i1 %219, label %248, label %220

220:                                              ; preds = %216
  %221 = add i32 %114, 1
  %222 = sub i32 %221, %116
  br label %223

223:                                              ; preds = %220, %229
  %224 = phi i32 [ %230, %229 ], [ %218, %220 ]
  %225 = load ptr, ptr %118, align 8, !tbaa !248
  %226 = invoke noundef i32 @_ZN11xercesc_2_717RegularExpression5matchEPNS0_7ContextEPKNS_2OpEis(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %7, ptr noundef %225, i32 noundef %224, i16 noundef signext 1) #13
          to label %227 unwind label %141

227:                                              ; preds = %223
  %228 = icmp sgt i32 %226, -1
  br i1 %228, label %238, label %229

229:                                              ; preds = %227
  %230 = add i32 %224, 1
  %231 = icmp eq i32 %230, %222
  br i1 %231, label %248, label %223, !llvm.loop !259

232:                                              ; preds = %168, %145
  %233 = phi i32 [ %137, %145 ], [ %150, %168 ]
  %234 = phi i32 [ -1, %145 ], [ %169, %168 ]
  store i32 %233, ptr %8, align 4, !tbaa !201
  br label %235

235:                                              ; preds = %211, %232, %196, %138
  %236 = phi i32 [ %140, %138 ], [ %194, %196 ], [ %234, %232 ], [ %213, %211 ]
  %237 = icmp sgt i32 %236, -1
  br i1 %237, label %240, label %248

238:                                              ; preds = %227
  store i32 %224, ptr %8, align 4, !tbaa !201
  br label %240

239:                                              ; preds = %166
  store i32 %164, ptr %8, align 4, !tbaa !201
  br label %240

240:                                              ; preds = %209, %239, %238, %235
  %241 = phi i32 [ %236, %235 ], [ %226, %238 ], [ %165, %239 ], [ %208, %209 ]
  %242 = load ptr, ptr %50, align 8, !tbaa !193
  %243 = icmp eq ptr %242, null
  br i1 %243, label %248, label %244

244:                                              ; preds = %240
  %245 = load i32, ptr %8, align 4, !tbaa !201
  invoke void @_ZN11xercesc_2_75Match11setStartPosEii(ptr noundef nonnull align 8 dereferenceable(40) %242, i32 noundef 0, i32 noundef %245) #13
          to label %246 unwind label %143

246:                                              ; preds = %244
  %247 = load ptr, ptr %50, align 8, !tbaa !193
  invoke void @_ZN11xercesc_2_75Match9setEndPosEii(ptr noundef nonnull align 8 dereferenceable(40) %247, i32 noundef 0, i32 noundef %241) #13
          to label %248 unwind label %143

248:                                              ; preds = %229, %216, %188, %235, %240, %246
  %249 = phi i1 [ false, %235 ], [ true, %240 ], [ true, %246 ], [ false, %188 ], [ false, %216 ], [ false, %229 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #14
  br label %252

250:                                              ; preds = %141, %143, %186, %197, %158
  %251 = phi { ptr, i32 } [ %159, %158 ], [ %198, %197 ], [ %187, %186 ], [ %142, %141 ], [ %144, %143 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #14
  br label %254

252:                                              ; preds = %91, %87, %85, %69, %64, %60, %108, %248
  %253 = phi i1 [ %249, %248 ], [ false, %108 ], [ false, %60 ], [ true, %64 ], [ true, %69 ], [ false, %85 ], [ true, %87 ], [ true, %91 ]
  call void @_ZN11xercesc_2_717RegularExpression7ContextD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %7) #15
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #14
  ret i1 %253

254:                                              ; preds = %20, %34, %71, %94, %110, %250, %18
  %255 = phi { ptr, i32 } [ %19, %18 ], [ %72, %71 ], [ %95, %94 ], [ %251, %250 ], [ %111, %110 ], [ %21, %20 ], [ %35, %34 ]
  call void @_ZN11xercesc_2_717RegularExpression7ContextD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %7) #15
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #14
  resume { ptr, i32 } %255
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_717RegularExpression7matchesEPKciiPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !174 {
  %6 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %7 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKcPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %4) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #14
  call void @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef %7, ptr noundef %4) #13
  %8 = invoke noundef zeroext i1 @_ZN11xercesc_2_717RegularExpression7matchesEPKtiiPNS_5MatchEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %7, i32 noundef %2, i32 noundef %3, ptr noundef null, ptr noundef %4) #13
          to label %9 unwind label %10

9:                                                ; preds = %5
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #14
  ret i1 %8

10:                                               ; preds = %5
  %11 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #14
  resume { ptr, i32 } %11
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_717RegularExpression7matchesEPKcPNS_5MatchEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !174 {
  %5 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %6 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKcPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %3) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #14
  call void @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef %6, ptr noundef %3) #13
  %7 = call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %6) #13
  %8 = invoke noundef zeroext i1 @_ZN11xercesc_2_717RegularExpression7matchesEPKtiiPNS_5MatchEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %6, i32 noundef 0, i32 noundef %7, ptr noundef %2, ptr noundef %3) #13
          to label %9 unwind label %10

9:                                                ; preds = %4
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #14
  ret i1 %8

10:                                               ; preds = %4
  %11 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #14
  resume { ptr, i32 } %11
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_717RegularExpression7matchesEPKciiPNS_5MatchEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !174 {
  %7 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %8 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKcPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %5) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #14
  call void @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef %8, ptr noundef %5) #13
  %9 = invoke noundef zeroext i1 @_ZN11xercesc_2_717RegularExpression7matchesEPKtiiPNS_5MatchEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %8, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) #13
          to label %10 unwind label %11

10:                                               ; preds = %6
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #14
  ret i1 %9

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #14
  resume { ptr, i32 } %12
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_717RegularExpression7matchesEPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 align 2 !prof !179 {
  %4 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %1) #13
  %5 = tail call noundef zeroext i1 @_ZN11xercesc_2_717RegularExpression7matchesEPKtiiPNS_5MatchEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, i32 noundef 0, i32 noundef %4, ptr noundef null, ptr noundef %2) #13
  ret i1 %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_717RegularExpression7matchesEPKtiiPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #3 align 2 !prof !174 {
  %6 = tail call noundef zeroext i1 @_ZN11xercesc_2_717RegularExpression7matchesEPKtiiPNS_5MatchEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef null, ptr noundef %4) #13
  ret i1 %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_717RegularExpression7matchesEPKtPNS_5MatchEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 align 2 !prof !174 {
  %5 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %1) #13
  %6 = tail call noundef zeroext i1 @_ZN11xercesc_2_717RegularExpression7matchesEPKtiiPNS_5MatchEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, i32 noundef 0, i32 noundef %5, ptr noundef %2, ptr noundef %3) #13
  ret i1 %6
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_75Match11setNoGroupsEi(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_75MatchC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN11xercesc_2_717RegularExpression5matchEPNS0_7ContextEPKNS_2OpEis(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i16 noundef signext %4) local_unnamed_addr #3 align 2 !prof !260 {
  %6 = alloca i32, align 4
  store i32 %3, ptr %6, align 4, !tbaa !201
  %7 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 5
  %8 = load i32, ptr %7, align 8, !tbaa !226
  %9 = tail call noundef zeroext i1 @_ZN11xercesc_2_717RegularExpression5isSetEii(i32 noundef %8, i32 noundef 2) #13
  %10 = icmp eq ptr %2, null
  br i1 %10, label %215, label %11, !prof !200

11:                                               ; preds = %5
  %12 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %1, i64 0, i32 2
  %13 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %1, i64 0, i32 1
  br label %14

14:                                               ; preds = %11, %210
  %15 = phi ptr [ %2, %11 ], [ %211, %210 ]
  %16 = load i32, ptr %6, align 4
  %17 = load i32, ptr %12, align 8, !tbaa !197
  %18 = icmp sgt i32 %16, %17
  br i1 %18, label %215, label %19, !prof !261

19:                                               ; preds = %14
  %20 = load i32, ptr %13, align 4, !tbaa !196
  %21 = icmp slt i32 %16, %20
  br i1 %21, label %215, label %22, !prof !261

22:                                               ; preds = %19
  %23 = tail call noundef signext i16 @_ZNK11xercesc_2_72Op9getOpTypeEv(ptr noundef nonnull align 8 dereferenceable(32) %15) #13
  switch i16 %23, label %210 [
    i16 1, label %24
    i16 0, label %32
    i16 3, label %36
    i16 4, label %36
    i16 5, label %40
    i16 16, label %48
    i16 6, label %56
    i16 7, label %64
    i16 9, label %97
    i16 8, label %106
    i16 10, label %106
    i16 11, label %115
    i16 15, label %117
    i16 20, label %131
    i16 21, label %140
    i16 22, label %149
    i16 23, label %158
    i16 24, label %167
    i16 25, label %167
    i16 26, label %183
  ], !prof !262

24:                                               ; preds = %22
  %25 = load ptr, ptr %15, align 8, !tbaa !189
  %26 = getelementptr inbounds ptr, ptr %25, i64 2
  %27 = load ptr, ptr %26, align 8
  %28 = tail call noundef i32 %27(ptr noundef nonnull align 8 dereferenceable(32) %15) #13
  %29 = call noundef zeroext i1 @_ZN11xercesc_2_717RegularExpression9matchCharEPNS0_7ContextEiRisb(ptr nonnull align 8 poison, ptr noundef nonnull %1, i32 noundef %28, ptr noundef nonnull align 4 dereferenceable(4) %6, i16 noundef signext %4, i1 noundef zeroext %9) #13
  br i1 %29, label %30, label %215, !prof !263

30:                                               ; preds = %24
  %31 = tail call noundef ptr @_ZNK11xercesc_2_72Op9getNextOpEv(ptr noundef nonnull align 8 dereferenceable(32) %15) #13
  br label %210

32:                                               ; preds = %22
  %33 = call noundef zeroext i1 @_ZN11xercesc_2_717RegularExpression8matchDotEPNS0_7ContextERis(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %1, ptr noundef nonnull align 4 dereferenceable(4) %6, i16 noundef signext %4) #13
  br i1 %33, label %34, label %215, !prof !264

34:                                               ; preds = %32
  %35 = tail call noundef ptr @_ZNK11xercesc_2_72Op9getNextOpEv(ptr noundef nonnull align 8 dereferenceable(32) %15) #13
  br label %210

36:                                               ; preds = %22, %22
  %37 = call noundef zeroext i1 @_ZN11xercesc_2_717RegularExpression10matchRangeEPNS0_7ContextEPKNS_2OpERisb(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %1, ptr noundef nonnull %15, ptr noundef nonnull align 4 dereferenceable(4) %6, i16 noundef signext %4, i1 noundef zeroext %9) #13
  br i1 %37, label %38, label %215, !prof !265

38:                                               ; preds = %36
  %39 = tail call noundef ptr @_ZNK11xercesc_2_72Op9getNextOpEv(ptr noundef nonnull align 8 dereferenceable(32) %15) #13
  br label %210

40:                                               ; preds = %22
  %41 = load ptr, ptr %15, align 8, !tbaa !189
  %42 = getelementptr inbounds ptr, ptr %41, i64 2
  %43 = load ptr, ptr %42, align 8
  %44 = tail call noundef i32 %43(ptr noundef nonnull align 8 dereferenceable(32) %15) #13
  %45 = tail call noundef zeroext i1 @_ZN11xercesc_2_717RegularExpression11matchAnchorEPNS0_7ContextEii(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %1, i32 noundef %44, i32 noundef %16) #13
  br i1 %45, label %46, label %215

46:                                               ; preds = %40
  %47 = tail call noundef ptr @_ZNK11xercesc_2_72Op9getNextOpEv(ptr noundef nonnull align 8 dereferenceable(32) %15) #13
  br label %210

48:                                               ; preds = %22
  %49 = load ptr, ptr %15, align 8, !tbaa !189
  %50 = getelementptr inbounds ptr, ptr %49, i64 2
  %51 = load ptr, ptr %50, align 8
  %52 = tail call noundef i32 %51(ptr noundef nonnull align 8 dereferenceable(32) %15) #13
  %53 = call noundef zeroext i1 @_ZN11xercesc_2_717RegularExpression18matchBackReferenceEPNS0_7ContextEiRisb(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %1, i32 noundef %52, ptr noundef nonnull align 4 dereferenceable(4) %6, i16 noundef signext %4, i1 noundef zeroext %9) #13
  br i1 %53, label %54, label %215

54:                                               ; preds = %48
  %55 = tail call noundef ptr @_ZNK11xercesc_2_72Op9getNextOpEv(ptr noundef nonnull align 8 dereferenceable(32) %15) #13
  br label %210

56:                                               ; preds = %22
  %57 = load ptr, ptr %15, align 8, !tbaa !189
  %58 = getelementptr inbounds ptr, ptr %57, i64 12
  %59 = load ptr, ptr %58, align 8
  %60 = tail call noundef ptr %59(ptr noundef nonnull align 8 dereferenceable(32) %15) #13
  %61 = call noundef zeroext i1 @_ZN11xercesc_2_717RegularExpression11matchStringEPNS0_7ContextEPKtRisb(ptr nonnull align 8 poison, ptr noundef nonnull %1, ptr noundef %60, ptr noundef nonnull align 4 dereferenceable(4) %6, i16 noundef signext %4, i1 noundef zeroext %9) #13
  br i1 %61, label %62, label %215, !prof !266

62:                                               ; preds = %56
  %63 = tail call noundef ptr @_ZNK11xercesc_2_72Op9getNextOpEv(ptr noundef nonnull align 8 dereferenceable(32) %15) #13
  br label %210

64:                                               ; preds = %22
  %65 = load ptr, ptr %15, align 8, !tbaa !189
  %66 = getelementptr inbounds ptr, ptr %65, i64 2
  %67 = load ptr, ptr %66, align 8
  %68 = tail call noundef i32 %67(ptr noundef nonnull align 8 dereferenceable(32) %15) #13
  %69 = icmp sgt i32 %68, -1
  br i1 %69, label %70, label %82, !prof !267

70:                                               ; preds = %64
  %71 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %1, i64 0, i32 6
  %72 = load ptr, ptr %71, align 8, !tbaa !187
  %73 = zext nneg i32 %68 to i64
  %74 = getelementptr inbounds i32, ptr %72, i64 %73
  %75 = load i32, ptr %74, align 4, !tbaa !201
  %76 = icmp sgt i32 %75, -1
  %77 = icmp eq i32 %75, %16
  %78 = and i1 %76, %77
  br i1 %78, label %80, label %79

79:                                               ; preds = %70
  store i32 %16, ptr %74, align 4, !tbaa !201
  br label %82

80:                                               ; preds = %70
  store i32 -1, ptr %74, align 4, !tbaa !201
  %81 = tail call noundef ptr @_ZNK11xercesc_2_72Op9getNextOpEv(ptr noundef nonnull align 8 dereferenceable(32) %15) #13
  br label %210

82:                                               ; preds = %79, %64
  %83 = load ptr, ptr %15, align 8, !tbaa !189
  %84 = getelementptr inbounds ptr, ptr %83, i64 10
  %85 = load ptr, ptr %84, align 8
  %86 = tail call noundef ptr %85(ptr noundef nonnull align 8 dereferenceable(32) %15) #13
  %87 = tail call noundef i32 @_ZN11xercesc_2_717RegularExpression5matchEPNS0_7ContextEPKNS_2OpEis(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %1, ptr noundef %86, i32 noundef %16, i16 noundef signext %4) #13
  br i1 %69, label %88, label %93, !prof !267

88:                                               ; preds = %82
  %89 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %1, i64 0, i32 6
  %90 = load ptr, ptr %89, align 8, !tbaa !187
  %91 = zext nneg i32 %68 to i64
  %92 = getelementptr inbounds i32, ptr %90, i64 %91
  store i32 -1, ptr %92, align 4, !tbaa !201
  br label %93

93:                                               ; preds = %88, %82
  %94 = icmp sgt i32 %87, -1
  br i1 %94, label %215, label %95, !prof !268

95:                                               ; preds = %93
  %96 = tail call noundef ptr @_ZNK11xercesc_2_72Op9getNextOpEv(ptr noundef nonnull align 8 dereferenceable(32) %15) #13
  br label %210

97:                                               ; preds = %22
  %98 = load ptr, ptr %15, align 8, !tbaa !189
  %99 = getelementptr inbounds ptr, ptr %98, i64 10
  %100 = load ptr, ptr %99, align 8
  %101 = tail call noundef ptr %100(ptr noundef nonnull align 8 dereferenceable(32) %15) #13
  %102 = tail call noundef i32 @_ZN11xercesc_2_717RegularExpression5matchEPNS0_7ContextEPKNS_2OpEis(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %1, ptr noundef %101, i32 noundef %16, i16 noundef signext %4) #13
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %215, !prof !269

104:                                              ; preds = %97
  %105 = tail call noundef ptr @_ZNK11xercesc_2_72Op9getNextOpEv(ptr noundef nonnull align 8 dereferenceable(32) %15) #13
  br label %210

106:                                              ; preds = %22, %22
  %107 = tail call noundef ptr @_ZNK11xercesc_2_72Op9getNextOpEv(ptr noundef nonnull align 8 dereferenceable(32) %15) #13
  %108 = tail call noundef i32 @_ZN11xercesc_2_717RegularExpression5matchEPNS0_7ContextEPKNS_2OpEis(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %1, ptr noundef %107, i32 noundef %16, i16 noundef signext %4) #13
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %215

110:                                              ; preds = %106
  %111 = load ptr, ptr %15, align 8, !tbaa !189
  %112 = getelementptr inbounds ptr, ptr %111, i64 10
  %113 = load ptr, ptr %112, align 8
  %114 = tail call noundef ptr %113(ptr noundef nonnull align 8 dereferenceable(32) %15) #13
  br label %210

115:                                              ; preds = %22
  %116 = tail call noundef i32 @_ZN11xercesc_2_717RegularExpression10matchUnionEPNS0_7ContextEPKNS_2OpEis(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %1, ptr noundef nonnull %15, i32 noundef %16, i16 noundef signext %4) #13
  br label %215

117:                                              ; preds = %22
  %118 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %1, i64 0, i32 7
  %119 = load ptr, ptr %118, align 8, !tbaa !193
  %120 = icmp eq ptr %119, null
  br i1 %120, label %129, label %121

121:                                              ; preds = %117
  %122 = load ptr, ptr %15, align 8, !tbaa !189
  %123 = getelementptr inbounds ptr, ptr %122, i64 2
  %124 = load ptr, ptr %123, align 8
  %125 = tail call noundef i32 %124(ptr noundef nonnull align 8 dereferenceable(32) %15) #13
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %129, label %127

127:                                              ; preds = %121
  %128 = tail call noundef i32 @_ZN11xercesc_2_717RegularExpression12matchCaptureEPNS0_7ContextEPKNS_2OpEis(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %1, ptr noundef nonnull %15, i32 noundef %16, i16 noundef signext %4) #13
  br label %215

129:                                              ; preds = %121, %117
  %130 = tail call noundef ptr @_ZNK11xercesc_2_72Op9getNextOpEv(ptr noundef nonnull align 8 dereferenceable(32) %15) #13
  br label %210

131:                                              ; preds = %22
  %132 = load ptr, ptr %15, align 8, !tbaa !189
  %133 = getelementptr inbounds ptr, ptr %132, i64 10
  %134 = load ptr, ptr %133, align 8
  %135 = tail call noundef ptr %134(ptr noundef nonnull align 8 dereferenceable(32) %15) #13
  %136 = tail call noundef i32 @_ZN11xercesc_2_717RegularExpression5matchEPNS0_7ContextEPKNS_2OpEis(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %1, ptr noundef %135, i32 noundef %16, i16 noundef signext 1) #13
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %215, label %138

138:                                              ; preds = %131
  %139 = tail call noundef ptr @_ZNK11xercesc_2_72Op9getNextOpEv(ptr noundef nonnull align 8 dereferenceable(32) %15) #13
  br label %210

140:                                              ; preds = %22
  %141 = load ptr, ptr %15, align 8, !tbaa !189
  %142 = getelementptr inbounds ptr, ptr %141, i64 10
  %143 = load ptr, ptr %142, align 8
  %144 = tail call noundef ptr %143(ptr noundef nonnull align 8 dereferenceable(32) %15) #13
  %145 = tail call noundef i32 @_ZN11xercesc_2_717RegularExpression5matchEPNS0_7ContextEPKNS_2OpEis(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %1, ptr noundef %144, i32 noundef %16, i16 noundef signext 1) #13
  %146 = icmp sgt i32 %145, -1
  br i1 %146, label %215, label %147

147:                                              ; preds = %140
  %148 = tail call noundef ptr @_ZNK11xercesc_2_72Op9getNextOpEv(ptr noundef nonnull align 8 dereferenceable(32) %15) #13
  br label %210

149:                                              ; preds = %22
  %150 = load ptr, ptr %15, align 8, !tbaa !189
  %151 = getelementptr inbounds ptr, ptr %150, i64 10
  %152 = load ptr, ptr %151, align 8
  %153 = tail call noundef ptr %152(ptr noundef nonnull align 8 dereferenceable(32) %15) #13
  %154 = tail call noundef i32 @_ZN11xercesc_2_717RegularExpression5matchEPNS0_7ContextEPKNS_2OpEis(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %1, ptr noundef %153, i32 noundef %16, i16 noundef signext -1) #13
  %155 = icmp slt i32 %154, 0
  br i1 %155, label %215, label %156

156:                                              ; preds = %149
  %157 = tail call noundef ptr @_ZNK11xercesc_2_72Op9getNextOpEv(ptr noundef nonnull align 8 dereferenceable(32) %15) #13
  br label %210

158:                                              ; preds = %22
  %159 = load ptr, ptr %15, align 8, !tbaa !189
  %160 = getelementptr inbounds ptr, ptr %159, i64 10
  %161 = load ptr, ptr %160, align 8
  %162 = tail call noundef ptr %161(ptr noundef nonnull align 8 dereferenceable(32) %15) #13
  %163 = tail call noundef i32 @_ZN11xercesc_2_717RegularExpression5matchEPNS0_7ContextEPKNS_2OpEis(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %1, ptr noundef %162, i32 noundef %16, i16 noundef signext -1) #13
  %164 = icmp sgt i32 %163, -1
  br i1 %164, label %215, label %165

165:                                              ; preds = %158
  %166 = tail call noundef ptr @_ZNK11xercesc_2_72Op9getNextOpEv(ptr noundef nonnull align 8 dereferenceable(32) %15) #13
  br label %210

167:                                              ; preds = %22, %22
  %168 = tail call noundef signext i16 @_ZNK11xercesc_2_72Op9getOpTypeEv(ptr noundef nonnull align 8 dereferenceable(32) %15) #13
  %169 = icmp eq i16 %168, 24
  br i1 %169, label %170, label %176

170:                                              ; preds = %167
  %171 = load ptr, ptr %15, align 8, !tbaa !189
  %172 = getelementptr inbounds ptr, ptr %171, i64 10
  %173 = load ptr, ptr %172, align 8
  %174 = tail call noundef ptr %173(ptr noundef nonnull align 8 dereferenceable(32) %15) #13
  %175 = tail call noundef i32 @_ZN11xercesc_2_717RegularExpression5matchEPNS0_7ContextEPKNS_2OpEis(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %1, ptr noundef %174, i32 noundef %16, i16 noundef signext %4) #13
  br label %178

176:                                              ; preds = %167
  %177 = tail call noundef i32 @_ZN11xercesc_2_717RegularExpression13matchModifierEPNS0_7ContextEPKNS_2OpEis(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %1, ptr noundef nonnull %15, i32 noundef %16, i16 noundef signext %4) #13
  br label %178

178:                                              ; preds = %176, %170
  %179 = phi i32 [ %175, %170 ], [ %177, %176 ]
  %180 = icmp sgt i32 %179, -1
  br i1 %180, label %181, label %215

181:                                              ; preds = %178
  store i32 %179, ptr %6, align 4, !tbaa !201
  %182 = tail call noundef ptr @_ZNK11xercesc_2_72Op9getNextOpEv(ptr noundef nonnull align 8 dereferenceable(32) %15) #13
  br label %210

183:                                              ; preds = %22
  %184 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 2
  %185 = load ptr, ptr %15, align 8, !tbaa !189
  %186 = getelementptr inbounds ptr, ptr %185, i64 5
  %187 = load ptr, ptr %186, align 8
  %188 = tail call noundef i32 %187(ptr noundef nonnull align 8 dereferenceable(32) %15) #13
  %189 = load i32, ptr %184, align 4, !tbaa !229
  %190 = icmp slt i32 %188, %189
  br i1 %190, label %191, label %215

191:                                              ; preds = %183
  %192 = tail call noundef zeroext i1 @_ZN11xercesc_2_717RegularExpression14matchConditionEPNS0_7ContextEPKNS_2OpEis(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %1, ptr noundef nonnull %15, i32 noundef %16, i16 noundef signext %4) #13
  %193 = load ptr, ptr %15, align 8, !tbaa !189
  br i1 %192, label %194, label %198

194:                                              ; preds = %191
  %195 = getelementptr inbounds ptr, ptr %193, i64 7
  %196 = load ptr, ptr %195, align 8
  %197 = tail call noundef ptr %196(ptr noundef nonnull align 8 dereferenceable(32) %15) #13
  br label %210

198:                                              ; preds = %191
  %199 = getelementptr inbounds ptr, ptr %193, i64 8
  %200 = load ptr, ptr %199, align 8
  %201 = tail call noundef ptr %200(ptr noundef nonnull align 8 dereferenceable(32) %15) #13
  %202 = icmp eq ptr %201, null
  br i1 %202, label %208, label %203

203:                                              ; preds = %198
  %204 = load ptr, ptr %15, align 8, !tbaa !189
  %205 = getelementptr inbounds ptr, ptr %204, i64 8
  %206 = load ptr, ptr %205, align 8
  %207 = tail call noundef ptr %206(ptr noundef nonnull align 8 dereferenceable(32) %15) #13
  br label %210

208:                                              ; preds = %198
  %209 = tail call noundef ptr @_ZNK11xercesc_2_72Op9getNextOpEv(ptr noundef nonnull align 8 dereferenceable(32) %15) #13
  br label %210

210:                                              ; preds = %95, %80, %181, %110, %104, %194, %208, %203, %22, %165, %156, %147, %138, %129, %62, %54, %46, %38, %34, %30
  %211 = phi ptr [ %15, %22 ], [ %197, %194 ], [ %207, %203 ], [ %209, %208 ], [ %166, %165 ], [ %157, %156 ], [ %148, %147 ], [ %139, %138 ], [ %130, %129 ], [ %63, %62 ], [ %55, %54 ], [ %47, %46 ], [ %39, %38 ], [ %35, %34 ], [ %31, %30 ], [ %105, %104 ], [ %114, %110 ], [ %182, %181 ], [ %96, %95 ], [ %81, %80 ]
  %212 = icmp eq ptr %211, null
  br i1 %212, label %213, label %14, !prof !270, !llvm.loop !271

213:                                              ; preds = %210
  %214 = load i32, ptr %6, align 4, !tbaa !201
  br label %215

215:                                              ; preds = %178, %106, %97, %93, %183, %158, %149, %140, %131, %56, %48, %40, %36, %32, %24, %14, %19, %5, %213, %127, %115
  %216 = phi i32 [ %128, %127 ], [ %116, %115 ], [ %214, %213 ], [ %3, %5 ], [ %179, %178 ], [ %108, %106 ], [ %102, %97 ], [ %87, %93 ], [ -1, %183 ], [ -1, %158 ], [ -1, %149 ], [ -1, %140 ], [ -1, %131 ], [ -1, %56 ], [ -1, %48 ], [ -1, %40 ], [ -1, %36 ], [ -1, %32 ], [ -1, %24 ], [ -1, %14 ], [ -1, %19 ]
  ret i32 %216
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_75Match11setStartPosEii(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !174 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::Match", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !272
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %14

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %9 = getelementptr inbounds %"class.xercesc_2_7::Match", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !274
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str, i32 noundef 141, i32 noundef 282, ptr noundef %10) #13
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
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
  %21 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %22 = getelementptr inbounds %"class.xercesc_2_7::Match", ptr %0, i64 0, i32 5
  %23 = load ptr, ptr %22, align 8, !tbaa !274
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %21, ptr noundef nonnull @.str, i32 noundef 144, i32 noundef 6, ptr noundef %23) #13
          to label %24 unwind label %25

24:                                               ; preds = %20
  tail call void @__cxa_throw(ptr nonnull %21, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

25:                                               ; preds = %20
  %26 = landingpad { ptr, i32 }
          cleanup
  br label %30

27:                                               ; preds = %14
  %28 = zext nneg i32 %1 to i64
  %29 = getelementptr inbounds i32, ptr %5, i64 %28
  store i32 %2, ptr %29, align 4, !tbaa !201
  ret void

30:                                               ; preds = %25, %12
  %31 = phi ptr [ %21, %25 ], [ %8, %12 ]
  %32 = phi { ptr, i32 } [ %26, %25 ], [ %13, %12 ]
  tail call void @__cxa_free_exception(ptr %31) #14
  resume { ptr, i32 } %32
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_75Match9setEndPosEii(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !174 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::Match", ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !275
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %14

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %9 = getelementptr inbounds %"class.xercesc_2_7::Match", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !274
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str, i32 noundef 152, i32 noundef 282, ptr noundef %10) #13
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
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
  %21 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %22 = getelementptr inbounds %"class.xercesc_2_7::Match", ptr %0, i64 0, i32 5
  %23 = load ptr, ptr %22, align 8, !tbaa !274
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %21, ptr noundef nonnull @.str, i32 noundef 155, i32 noundef 6, ptr noundef %23) #13
          to label %24 unwind label %25

24:                                               ; preds = %20
  tail call void @__cxa_throw(ptr nonnull %21, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

25:                                               ; preds = %20
  %26 = landingpad { ptr, i32 }
          cleanup
  br label %30

27:                                               ; preds = %14
  %28 = zext nneg i32 %1 to i64
  %29 = getelementptr inbounds i32, ptr %5, i64 %28
  store i32 %2, ptr %29, align 4, !tbaa !201
  ret void

30:                                               ; preds = %25, %12
  %31 = phi ptr [ %21, %25 ], [ %8, %12 ]
  %32 = phi { ptr, i32 } [ %26, %25 ], [ %13, %12 ]
  tail call void @__cxa_free_exception(ptr %31) #14
  resume { ptr, i32 } %32
}

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_79BMPattern7matchesEPKtii(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef signext i16 @_ZNK11xercesc_2_72Op9getOpTypeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #5 comdat align 2 !prof !276 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::Op", ptr %0, i64 0, i32 2
  %3 = load i16, ptr %2, align 8, !tbaa !277
  ret i16 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_78RegxUtil9isEOLCharEt(i16 noundef zeroext %0) local_unnamed_addr #5 comdat align 2 !prof !279 {
  switch i16 %0, label %2 [
    i16 8232, label %3
    i16 13, label %3
    i16 10, label %3
    i16 8233, label %3
  ]

2:                                                ; preds = %1
  br label %3

3:                                                ; preds = %1, %1, %1, %1, %2
  %4 = phi i1 [ true, %1 ], [ false, %2 ], [ true, %1 ], [ true, %1 ], [ true, %1 ]
  ret i1 %4
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_710RangeToken23getCaseInsensitiveTokenEPNS_12TokenFactoryE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_710RangeToken5matchEi(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef) local_unnamed_addr #2

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !174 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #13
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !189
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #13
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  resume { ptr, i32 } %8
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !174 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #13
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !189
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #13
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  resume { ptr, i32 } %8
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !174 {
  ret ptr @_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !174 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !280
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #13
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #13
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #15
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #3 comdat align 2 !prof !174 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #13
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !189
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !174 {
  ret ptr @_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !174 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !280
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #13
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #13
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #15
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #3 comdat align 2 !prof !174 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #13
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !189
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_717RegularExpression8tokenizeEPKc(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !174 {
  %3 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %4 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 14
  %5 = load ptr, ptr %4, align 8, !tbaa !213
  %6 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKcPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %5) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #14
  %7 = load ptr, ptr %4, align 8, !tbaa !213
  call void @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %6, ptr noundef %7) #13
  %8 = call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %6) #13
  %9 = invoke noundef ptr @_ZN11xercesc_2_717RegularExpression8tokenizeEPKtii(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %6, i32 noundef 0, i32 noundef %8) #13
          to label %10 unwind label %11

10:                                               ; preds = %2
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #14
  ret ptr %9

11:                                               ; preds = %2
  %12 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #14
  resume { ptr, i32 } %12
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_717RegularExpression8tokenizeEPKtii(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 align 2 !prof !174 {
  %5 = tail call noundef ptr @_ZN11xercesc_2_717RegularExpression8tokenizeEPKtiiPNS_11RefVectorOfINS_5MatchEEE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef null) #13
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_717RegularExpression8tokenizeEPKcii(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !174 {
  %5 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %6 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 14
  %7 = load ptr, ptr %6, align 8, !tbaa !213
  %8 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKcPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %7) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #14
  %9 = load ptr, ptr %6, align 8, !tbaa !213
  call void @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef %8, ptr noundef %9) #13
  %10 = invoke noundef ptr @_ZN11xercesc_2_717RegularExpression8tokenizeEPKtii(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %8, i32 noundef %2, i32 noundef %3) #13
          to label %11 unwind label %12

11:                                               ; preds = %4
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #14
  ret ptr %10

12:                                               ; preds = %4
  %13 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #14
  resume { ptr, i32 } %13
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_717RegularExpression8tokenizeEPKt(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1) local_unnamed_addr #3 align 2 !prof !174 {
  %3 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %1) #13
  %4 = tail call noundef ptr @_ZN11xercesc_2_717RegularExpression8tokenizeEPKtiiPNS_11RefVectorOfINS_5MatchEEE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, i32 noundef 0, i32 noundef %3, ptr noundef null) #13
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_717RegularExpression8tokenizeEPKtiiPNS_11RefVectorOfINS_5MatchEEE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !174 {
  %6 = alloca %"class.xercesc_2_7::RegularExpression::Context", align 8
  %7 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 14
  %8 = load ptr, ptr %7, align 8, !tbaa !213
  %9 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %8) #13
  %10 = load ptr, ptr %7, align 8, !tbaa !213
  invoke void @_ZN11xercesc_2_716RefArrayVectorOfItEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %9, i32 noundef 16, i1 noundef zeroext true, ptr noundef %10) #13
          to label %11 unwind label %29

11:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #14
  %12 = load ptr, ptr %7, align 8, !tbaa !213
  call void @_ZN11xercesc_2_717RegularExpression7ContextC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef %12) #13
  %13 = call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %1) #13
  %14 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 4
  %15 = load i32, ptr %14, align 4, !tbaa !256
  invoke void @_ZN11xercesc_2_717RegularExpression7Context5resetEPKtiiii(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef %1, i32 noundef %13, i32 noundef %2, i32 noundef %3, i32 noundef %15) #13
          to label %16 unwind label %31

16:                                               ; preds = %11
  %17 = icmp eq ptr %4, null
  %18 = load i8, ptr %0, align 8, !range !191
  %19 = icmp eq i8 %18, 0
  %20 = select i1 %17, i1 %19, i1 false
  br i1 %20, label %37, label %21

21:                                               ; preds = %16
  %22 = load ptr, ptr %7, align 8, !tbaa !213
  %23 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %22) #13
          to label %24 unwind label %33

24:                                               ; preds = %21
  %25 = load ptr, ptr %7, align 8, !tbaa !213
  invoke void @_ZN11xercesc_2_75MatchC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %23, ptr noundef %25) #13
          to label %26 unwind label %35

26:                                               ; preds = %24
  %27 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 2
  %28 = load i32, ptr %27, align 4, !tbaa !229
  invoke void @_ZN11xercesc_2_75Match11setNoGroupsEi(ptr noundef nonnull align 8 dereferenceable(40) %23, i32 noundef %28) #13
          to label %37 unwind label %33

29:                                               ; preds = %5
  %30 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %9, ptr noundef %8) #15
  br label %169

31:                                               ; preds = %11
  %32 = landingpad { ptr, i32 }
          cleanup
  br label %167

33:                                               ; preds = %26, %21
  %34 = landingpad { ptr, i32 }
          cleanup
  br label %167

35:                                               ; preds = %24
  %36 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %23, ptr noundef %22) #15
  br label %167

37:                                               ; preds = %16, %26
  %38 = phi ptr [ %23, %26 ], [ null, %16 ]
  %39 = phi i8 [ 1, %26 ], [ 0, %16 ]
  %40 = load i8, ptr %6, align 8, !tbaa !180, !range !191, !noundef !192
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %50, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %6, i64 0, i32 7
  %44 = load ptr, ptr %43, align 8, !tbaa !193
  %45 = icmp eq ptr %44, null
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  %47 = load ptr, ptr %44, align 8, !tbaa !189
  %48 = getelementptr inbounds ptr, ptr %47, i64 1
  %49 = load ptr, ptr %48, align 8
  call void %49(ptr noundef nonnull align 8 dereferenceable(40) %44) #15
  br label %50

50:                                               ; preds = %42, %46, %37
  %51 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %6, i64 0, i32 7
  store ptr %38, ptr %51, align 8, !tbaa !193
  store i8 %39, ptr %6, align 8, !tbaa !180
  %52 = icmp sgt i32 %2, %3
  br i1 %52, label %130, label %53

53:                                               ; preds = %50
  %54 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 9
  %55 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %6, i64 0, i32 1
  %56 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 7
  br label %57

57:                                               ; preds = %53, %124
  %58 = phi i32 [ %2, %53 ], [ %128, %124 ]
  %59 = phi i32 [ %2, %53 ], [ %126, %124 ]
  %60 = phi ptr [ %38, %53 ], [ %125, %124 ]
  %61 = load ptr, ptr %54, align 8, !tbaa !248
  %62 = invoke noundef i32 @_ZN11xercesc_2_717RegularExpression5matchEPNS0_7ContextEPKNS_2OpEis(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %6, ptr noundef %61, i32 noundef %58, i16 noundef signext 1) #13
          to label %63 unwind label %72

63:                                               ; preds = %57
  %64 = icmp eq i32 %62, -1
  br i1 %64, label %124, label %65

65:                                               ; preds = %63
  %66 = load ptr, ptr %51, align 8, !tbaa !193
  %67 = icmp eq ptr %66, null
  br i1 %67, label %74, label %68

68:                                               ; preds = %65
  %69 = load i32, ptr %55, align 4, !tbaa !196
  invoke void @_ZN11xercesc_2_75Match11setStartPosEii(ptr noundef nonnull align 8 dereferenceable(40) %66, i32 noundef 0, i32 noundef %69) #13
          to label %70 unwind label %72

70:                                               ; preds = %68
  %71 = load ptr, ptr %51, align 8, !tbaa !193
  invoke void @_ZN11xercesc_2_75Match9setEndPosEii(ptr noundef nonnull align 8 dereferenceable(40) %71, i32 noundef 0, i32 noundef %62) #13
          to label %74 unwind label %72

72:                                               ; preds = %76, %75, %70, %68, %57
  %73 = landingpad { ptr, i32 }
          cleanup
  br label %167

74:                                               ; preds = %70, %65
  br i1 %17, label %84, label %75

75:                                               ; preds = %74
  invoke void @_ZN11xercesc_2_715BaseRefVectorOfINS_5MatchEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef %60) #13
          to label %76 unwind label %72

76:                                               ; preds = %75
  %77 = load ptr, ptr %7, align 8, !tbaa !213
  %78 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %77) #13
          to label %79 unwind label %72

79:                                               ; preds = %76
  %80 = load ptr, ptr %51, align 8, !tbaa !193
  invoke void @_ZN11xercesc_2_75MatchC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %78, ptr noundef nonnull align 8 dereferenceable(40) %80) #13
          to label %81 unwind label %82

81:                                               ; preds = %79
  store i8 1, ptr %6, align 8, !tbaa !180
  store ptr %78, ptr %51, align 8, !tbaa !193
  br label %84

82:                                               ; preds = %79
  %83 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %78, ptr noundef %77) #15
  br label %167

84:                                               ; preds = %81, %74
  %85 = phi ptr [ %78, %81 ], [ %60, %74 ]
  %86 = icmp eq i32 %59, %58
  br i1 %86, label %87, label %106

87:                                               ; preds = %84
  %88 = icmp eq i32 %58, %13
  br i1 %88, label %122, label %89

89:                                               ; preds = %87
  %90 = load ptr, ptr %7, align 8, !tbaa !213
  %91 = load ptr, ptr %90, align 8, !tbaa !189
  %92 = getelementptr inbounds ptr, ptr %91, i64 2
  %93 = load ptr, ptr %92, align 8
  %94 = invoke noundef ptr %93(ptr noundef nonnull align 8 dereferenceable(8) %90, i64 noundef 2) #13
          to label %95 unwind label %99

95:                                               ; preds = %89
  store i16 0, ptr %94, align 2, !tbaa !175
  %96 = load ptr, ptr %56, align 8, !tbaa !215
  %97 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %96, ptr noundef nonnull @_ZN11xercesc_2_7L6chNullE) #13
  br i1 %97, label %101, label %98

98:                                               ; preds = %95
  invoke void @_ZN11xercesc_2_715BaseRefVectorOfItE10addElementEPt(ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef nonnull %94) #13
          to label %119 unwind label %99

99:                                               ; preds = %118, %116, %106, %101, %98, %89
  %100 = landingpad { ptr, i32 }
          cleanup
  br label %167

101:                                              ; preds = %95
  %102 = load ptr, ptr %7, align 8, !tbaa !213
  %103 = load ptr, ptr %102, align 8, !tbaa !189
  %104 = getelementptr inbounds ptr, ptr %103, i64 3
  %105 = load ptr, ptr %104, align 8
  invoke void %105(ptr noundef nonnull align 8 dereferenceable(8) %102, ptr noundef nonnull %94) #13
          to label %119 unwind label %99

106:                                              ; preds = %84
  %107 = load ptr, ptr %7, align 8, !tbaa !213
  %108 = sub i32 %58, %59
  %109 = add i32 %108, 1
  %110 = sext i32 %109 to i64
  %111 = shl nsw i64 %110, 1
  %112 = load ptr, ptr %107, align 8, !tbaa !189
  %113 = getelementptr inbounds ptr, ptr %112, i64 2
  %114 = load ptr, ptr %113, align 8
  %115 = invoke noundef ptr %114(ptr noundef nonnull align 8 dereferenceable(8) %107, i64 noundef %111) #13
          to label %116 unwind label %99

116:                                              ; preds = %106
  %117 = load ptr, ptr %7, align 8, !tbaa !213
  invoke void @_ZN11xercesc_2_79XMLString9subStringEPtPKtiiPNS_13MemoryManagerE(ptr noundef %115, ptr noundef %1, i32 noundef %59, i32 noundef %58, ptr noundef %117) #13
          to label %118 unwind label %99

118:                                              ; preds = %116
  invoke void @_ZN11xercesc_2_715BaseRefVectorOfItE10addElementEPt(ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef %115) #13
          to label %119 unwind label %99

119:                                              ; preds = %101, %98, %118
  %120 = add nsw i32 %62, -1
  %121 = call i32 @llvm.smax.i32(i32 %58, i32 %120)
  br label %124

122:                                              ; preds = %87
  %123 = add nsw i32 %13, -1
  br label %130

124:                                              ; preds = %63, %119
  %125 = phi ptr [ %85, %119 ], [ %60, %63 ]
  %126 = phi i32 [ %62, %119 ], [ %59, %63 ]
  %127 = phi i32 [ %121, %119 ], [ %58, %63 ]
  %128 = add nsw i32 %127, 1
  %129 = icmp slt i32 %127, %3
  br i1 %129, label %57, label %130, !llvm.loop !283

130:                                              ; preds = %124, %50, %122
  %131 = phi i32 [ %13, %122 ], [ %2, %50 ], [ %128, %124 ]
  %132 = phi i32 [ %123, %122 ], [ %2, %50 ], [ %126, %124 ]
  %133 = add nsw i32 %132, 1
  %134 = icmp eq i32 %131, %133
  %135 = load ptr, ptr %7, align 8, !tbaa !213
  br i1 %134, label %136, label %144

136:                                              ; preds = %130
  %137 = load ptr, ptr %135, align 8, !tbaa !189
  %138 = getelementptr inbounds ptr, ptr %137, i64 2
  %139 = load ptr, ptr %138, align 8
  %140 = invoke noundef ptr %139(ptr noundef nonnull align 8 dereferenceable(8) %135, i64 noundef 2) #13
          to label %141 unwind label %142

141:                                              ; preds = %136
  store i16 0, ptr %140, align 2, !tbaa !175
  br label %155

142:                                              ; preds = %161, %160, %153, %144, %136
  %143 = landingpad { ptr, i32 }
          cleanup
  br label %167

144:                                              ; preds = %130
  %145 = add nsw i32 %13, 1
  %146 = sub i32 %145, %132
  %147 = sext i32 %146 to i64
  %148 = shl nsw i64 %147, 1
  %149 = load ptr, ptr %135, align 8, !tbaa !189
  %150 = getelementptr inbounds ptr, ptr %149, i64 2
  %151 = load ptr, ptr %150, align 8
  %152 = invoke noundef ptr %151(ptr noundef nonnull align 8 dereferenceable(8) %135, i64 noundef %148) #13
          to label %153 unwind label %142

153:                                              ; preds = %144
  %154 = load ptr, ptr %7, align 8, !tbaa !213
  invoke void @_ZN11xercesc_2_79XMLString9subStringEPtPKtiiPNS_13MemoryManagerE(ptr noundef %152, ptr noundef %1, i32 noundef %132, i32 noundef %13, ptr noundef %154) #13
          to label %155 unwind label %142

155:                                              ; preds = %153, %141
  %156 = phi ptr [ %140, %141 ], [ %152, %153 ]
  %157 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 7
  %158 = load ptr, ptr %157, align 8, !tbaa !215
  %159 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %158, ptr noundef nonnull @_ZN11xercesc_2_7L6chNullE) #13
  br i1 %159, label %161, label %160

160:                                              ; preds = %155
  invoke void @_ZN11xercesc_2_715BaseRefVectorOfItE10addElementEPt(ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef %156) #13
          to label %166 unwind label %142

161:                                              ; preds = %155
  %162 = load ptr, ptr %7, align 8, !tbaa !213
  %163 = load ptr, ptr %162, align 8, !tbaa !189
  %164 = getelementptr inbounds ptr, ptr %163, i64 3
  %165 = load ptr, ptr %164, align 8
  invoke void %165(ptr noundef nonnull align 8 dereferenceable(8) %162, ptr noundef %156) #13
          to label %166 unwind label %142

166:                                              ; preds = %161, %160
  call void @_ZN11xercesc_2_717RegularExpression7ContextD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %6) #15
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #14
  ret ptr %9

167:                                              ; preds = %33, %35, %72, %82, %99, %142, %31
  %168 = phi { ptr, i32 } [ %32, %31 ], [ %34, %33 ], [ %36, %35 ], [ %143, %142 ], [ %100, %99 ], [ %83, %82 ], [ %73, %72 ]
  call void @_ZN11xercesc_2_717RegularExpression7ContextD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %6) #15
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #14
  br label %169

169:                                              ; preds = %167, %29
  %170 = phi { ptr, i32 } [ %168, %167 ], [ %30, %29 ]
  resume { ptr, i32 } %170
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RefArrayVectorOfItEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #3 comdat align 2 !prof !284 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfItEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) #13
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_716RefArrayVectorOfItEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !189
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_5MatchEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !174 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_5MatchEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 1) #13
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !285
  %5 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !287
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7
  store ptr %1, ptr %8, align 8, !tbaa !288
  %9 = add i32 %6, 1
  store i32 %9, ptr %5, align 4, !tbaa !287
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_75MatchC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !289 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %10, label %6, !prof !290

6:                                                ; preds = %2
  %7 = load i16, ptr %0, align 2, !tbaa !175
  %8 = load i16, ptr %1, align 2, !tbaa !175
  %9 = icmp eq i16 %7, %8
  br i1 %9, label %19, label %30, !prof !291

10:                                               ; preds = %2
  br i1 %3, label %14, label %11, !prof !292

11:                                               ; preds = %10
  %12 = load i16, ptr %0, align 2, !tbaa !175
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %30, !prof !293

14:                                               ; preds = %11, %10
  br i1 %4, label %18, label %15, !prof !294

15:                                               ; preds = %14
  %16 = load i16, ptr %1, align 2, !tbaa !175
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %30, !prof !295

18:                                               ; preds = %15, %14
  br label %30

19:                                               ; preds = %6, %24
  %20 = phi i16 [ %27, %24 ], [ %7, %6 ]
  %21 = phi ptr [ %26, %24 ], [ %1, %6 ]
  %22 = phi ptr [ %25, %24 ], [ %0, %6 ]
  %23 = icmp eq i16 %20, 0
  br i1 %23, label %30, label %24, !prof !296

24:                                               ; preds = %19
  %25 = getelementptr inbounds i16, ptr %22, i64 1
  %26 = getelementptr inbounds i16, ptr %21, i64 1
  %27 = load i16, ptr %25, align 2, !tbaa !175
  %28 = load i16, ptr %26, align 2, !tbaa !175
  %29 = icmp eq i16 %27, %28
  br i1 %29, label %19, label %30, !prof !297, !llvm.loop !298

30:                                               ; preds = %19, %24, %6, %11, %15, %18
  %31 = phi i1 [ true, %18 ], [ false, %15 ], [ false, %11 ], [ false, %6 ], [ %23, %24 ], [ %23, %19 ]
  ret i1 %31
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfItE10addElementEPt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !299 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfItE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 1) #13
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !300
  %5 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !302
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7
  store ptr %1, ptr %8, align 8, !tbaa !288
  %9 = add i32 %6, 1
  store i32 %9, ptr %5, align 4, !tbaa !302
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79XMLString9subStringEPtPKtiiPNS_13MemoryManagerE(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfItEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #3 comdat align 2 !prof !284 {
  %5 = zext i1 %2 to i8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_715BaseRefVectorOfItEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !189
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  store i8 %5, ptr %6, align 8, !tbaa !303
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  store i32 0, ptr %7, align 4, !tbaa !302
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 3
  store i32 %1, ptr %8, align 8, !tbaa !304
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  store ptr null, ptr %9, align 8, !tbaa !300
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  store ptr %3, ptr %10, align 8, !tbaa !305
  %11 = zext i32 %1 to i64
  %12 = shl nuw nsw i64 %11, 3
  %13 = load ptr, ptr %3, align 8, !tbaa !189
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %12) #13
  store ptr %16, ptr %9, align 8, !tbaa !300
  %17 = icmp eq i32 %1, 0
  br i1 %17, label %18, label %19, !prof !306

18:                                               ; preds = %19, %4
  ret void

19:                                               ; preds = %4, %19
  %20 = phi i64 [ %23, %19 ], [ 0, %4 ]
  %21 = load ptr, ptr %9, align 8, !tbaa !300
  %22 = getelementptr inbounds ptr, ptr %21, i64 %20
  store ptr null, ptr %22, align 8, !tbaa !288
  %23 = add nuw nsw i64 %20, 1
  %24 = icmp eq i64 %23, %11
  br i1 %24, label %18, label %19, !prof !307, !llvm.loop !308
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RefArrayVectorOfItED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !284 {
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_716RefArrayVectorOfItEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !189
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !303, !range !191, !noundef !192
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %26, label %5, !prof !309

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !302
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %26, label %9, !prof !310

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %12

12:                                               ; preds = %9, %21
  %13 = phi i64 [ 0, %9 ], [ %22, %21 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !305
  %15 = load ptr, ptr %11, align 8, !tbaa !300
  %16 = getelementptr inbounds ptr, ptr %15, i64 %13
  %17 = load ptr, ptr %16, align 8, !tbaa !288
  %18 = load ptr, ptr %14, align 8, !tbaa !189
  %19 = getelementptr inbounds ptr, ptr %18, i64 3
  %20 = load ptr, ptr %19, align 8
  invoke void %20(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef %17) #13
          to label %21 unwind label %35

21:                                               ; preds = %12
  %22 = add nuw nsw i64 %13, 1
  %23 = load i32, ptr %6, align 4, !tbaa !302
  %24 = zext i32 %23 to i64
  %25 = icmp ult i64 %22, %24
  br i1 %25, label %12, label %26, !prof !311, !llvm.loop !312

26:                                               ; preds = %21, %5, %1
  %27 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !305
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !300
  %31 = load ptr, ptr %28, align 8, !tbaa !189
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  invoke void %33(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %30) #13
          to label %34 unwind label %37

34:                                               ; preds = %26
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfItED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #15
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
  tail call void @__clang_call_terminate(ptr %41) #16
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RefArrayVectorOfItED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN11xercesc_2_716RefArrayVectorOfItED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RefArrayVectorOfItE12setElementAtEPtj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !313 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !302
  %6 = icmp ugt i32 %5, %2
  br i1 %6, label %14, label %7, !prof !314

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !305
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str.2, i32 noundef 52, i32 noundef 116, ptr noundef %10) #13
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #14
  resume { ptr, i32 } %13

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %16 = load i8, ptr %15, align 8, !tbaa !303, !range !191, !noundef !192
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %20, !prof !315

18:                                               ; preds = %14
  %19 = zext i32 %2 to i64
  br label %31

20:                                               ; preds = %14
  %21 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %22 = load ptr, ptr %21, align 8, !tbaa !305
  %23 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !300
  %25 = zext i32 %2 to i64
  %26 = getelementptr inbounds ptr, ptr %24, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !288
  %28 = load ptr, ptr %22, align 8, !tbaa !189
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  tail call void %30(ptr noundef nonnull align 8 dereferenceable(8) %22, ptr noundef %27) #13
  br label %31

31:                                               ; preds = %18, %20
  %32 = phi i64 [ %19, %18 ], [ %25, %20 ]
  %33 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %34 = load ptr, ptr %33, align 8, !tbaa !300
  %35 = getelementptr inbounds ptr, ptr %34, i64 %32
  store ptr %1, ptr %35, align 8, !tbaa !288
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RefArrayVectorOfItE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 comdat align 2 !prof !174 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !302
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %10

9:                                                ; preds = %24, %1
  store i32 0, ptr %2, align 4, !tbaa !302
  ret void

10:                                               ; preds = %5, %24
  %11 = phi i32 [ %3, %5 ], [ %25, %24 ]
  %12 = phi i64 [ 0, %5 ], [ %28, %24 ]
  %13 = load i8, ptr %6, align 8, !tbaa !303, !range !191, !noundef !192
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %10
  %16 = load ptr, ptr %7, align 8, !tbaa !305
  %17 = load ptr, ptr %8, align 8, !tbaa !300
  %18 = getelementptr inbounds ptr, ptr %17, i64 %12
  %19 = load ptr, ptr %18, align 8, !tbaa !288
  %20 = load ptr, ptr %16, align 8, !tbaa !189
  %21 = getelementptr inbounds ptr, ptr %20, i64 3
  %22 = load ptr, ptr %21, align 8
  tail call void %22(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef %19) #13
  %23 = load i32, ptr %2, align 4, !tbaa !302
  br label %24

24:                                               ; preds = %15, %10
  %25 = phi i32 [ %23, %15 ], [ %11, %10 ]
  %26 = load ptr, ptr %8, align 8, !tbaa !300
  %27 = getelementptr inbounds ptr, ptr %26, i64 %12
  store ptr null, ptr %27, align 8, !tbaa !288
  %28 = add nuw nsw i64 %12, 1
  %29 = zext i32 %25 to i64
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %10, label %9, !llvm.loop !316
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RefArrayVectorOfItE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !174 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !302
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !305
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.2, i32 noundef 77, i32 noundef 116, ptr noundef %9) #13
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #14
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %15 = load i8, ptr %14, align 8, !tbaa !303, !range !191, !noundef !192
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !305
  %20 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !300
  %22 = zext i32 %1 to i64
  %23 = getelementptr inbounds ptr, ptr %21, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !288
  %25 = load ptr, ptr %19, align 8, !tbaa !189
  %26 = getelementptr inbounds ptr, ptr %25, i64 3
  %27 = load ptr, ptr %26, align 8
  tail call void %27(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef %24) #13
  %28 = load i32, ptr %3, align 4, !tbaa !302
  br label %29

29:                                               ; preds = %17, %13
  %30 = phi i32 [ %28, %17 ], [ %4, %13 ]
  %31 = add i32 %30, -1
  %32 = icmp eq i32 %31, %1
  br i1 %32, label %41, label %33

33:                                               ; preds = %29
  %34 = icmp ugt i32 %31, %1
  br i1 %34, label %37, label %35

35:                                               ; preds = %33
  %36 = zext i32 %31 to i64
  br label %46

37:                                               ; preds = %33
  %38 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %39 = zext i32 %1 to i64
  %40 = zext i32 %31 to i64
  br label %51

41:                                               ; preds = %29
  %42 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %43 = load ptr, ptr %42, align 8, !tbaa !300
  %44 = zext i32 %1 to i64
  %45 = getelementptr inbounds ptr, ptr %43, i64 %44
  br label %59

46:                                               ; preds = %51, %35
  %47 = phi i64 [ %36, %35 ], [ %40, %51 ]
  %48 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !300
  %50 = getelementptr inbounds ptr, ptr %49, i64 %47
  br label %59

51:                                               ; preds = %37, %51
  %52 = phi i64 [ %39, %37 ], [ %54, %51 ]
  %53 = load ptr, ptr %38, align 8, !tbaa !300
  %54 = add nuw nsw i64 %52, 1
  %55 = getelementptr inbounds ptr, ptr %53, i64 %54
  %56 = load ptr, ptr %55, align 8, !tbaa !288
  %57 = getelementptr inbounds ptr, ptr %53, i64 %52
  store ptr %56, ptr %57, align 8, !tbaa !288
  %58 = icmp eq i64 %54, %40
  br i1 %58, label %46, label %51, !llvm.loop !317

59:                                               ; preds = %46, %41
  %60 = phi ptr [ %50, %46 ], [ %45, %41 ]
  store ptr null, ptr %60, align 8, !tbaa !288
  store i32 %31, ptr %3, align 4, !tbaa !302
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RefArrayVectorOfItE17removeLastElementEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 comdat align 2 !prof !174 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !302
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 4, !tbaa !302
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !303, !range !191, !noundef !192
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !305
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !300
  %15 = zext i32 %6 to i64
  %16 = getelementptr inbounds ptr, ptr %14, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !288
  %18 = load ptr, ptr %12, align 8, !tbaa !189
  %19 = getelementptr inbounds ptr, ptr %18, i64 3
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef %17) #13
  br label %21

21:                                               ; preds = %1, %10, %5
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RefArrayVectorOfItE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 comdat align 2 !prof !174 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !303, !range !191, !noundef !192
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %25, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !302
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %25, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %12

12:                                               ; preds = %9, %12
  %13 = phi i64 [ 0, %9 ], [ %21, %12 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !305
  %15 = load ptr, ptr %11, align 8, !tbaa !300
  %16 = getelementptr inbounds ptr, ptr %15, i64 %13
  %17 = load ptr, ptr %16, align 8, !tbaa !288
  %18 = load ptr, ptr %14, align 8, !tbaa !189
  %19 = getelementptr inbounds ptr, ptr %18, i64 3
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef %17) #13
  %21 = add nuw nsw i64 %13, 1
  %22 = load i32, ptr %6, align 4, !tbaa !302
  %23 = zext i32 %22 to i64
  %24 = icmp ult i64 %21, %23
  br i1 %24, label %12, label %25, !llvm.loop !318

25:                                               ; preds = %12, %5, %1
  %26 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %27 = load ptr, ptr %26, align 8, !tbaa !305
  %28 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !300
  %30 = load ptr, ptr %27, align 8, !tbaa !189
  %31 = getelementptr inbounds ptr, ptr %30, i64 3
  %32 = load ptr, ptr %31, align 8
  tail call void %32(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %29) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfItED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !284 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfItED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfItED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfItE12setElementAtEPtj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !174 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !302
  %6 = icmp ugt i32 %5, %2
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !305
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str.1, i32 noundef 67, i32 noundef 116, ptr noundef %10) #13
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #14
  resume { ptr, i32 } %13

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %16 = load i8, ptr %15, align 8, !tbaa !303, !range !191, !noundef !192
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = zext i32 %2 to i64
  br label %28

20:                                               ; preds = %14
  %21 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !300
  %23 = zext i32 %2 to i64
  %24 = getelementptr inbounds ptr, ptr %22, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !288
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %20
  tail call void @_ZdlPv(ptr noundef nonnull %25) #18
  br label %28

28:                                               ; preds = %18, %20, %27
  %29 = phi i64 [ %19, %18 ], [ %23, %20 ], [ %23, %27 ]
  %30 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !300
  %32 = getelementptr inbounds ptr, ptr %31, i64 %29
  store ptr %1, ptr %32, align 8, !tbaa !288
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfItE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !174 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !302
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %9

8:                                                ; preds = %22, %1
  store i32 0, ptr %2, align 4, !tbaa !302
  ret void

9:                                                ; preds = %5, %22
  %10 = phi i32 [ %3, %5 ], [ %23, %22 ]
  %11 = phi i64 [ 0, %5 ], [ %26, %22 ]
  %12 = load i8, ptr %6, align 8, !tbaa !303, !range !191, !noundef !192
  %13 = icmp eq i8 %12, 0
  %14 = load ptr, ptr %7, align 8, !tbaa !300
  br i1 %13, label %22, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds ptr, ptr %14, i64 %11
  %17 = load ptr, ptr %16, align 8, !tbaa !288
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  tail call void @_ZdlPv(ptr noundef nonnull %17) #18
  %20 = load ptr, ptr %7, align 8, !tbaa !300
  %21 = load i32, ptr %2, align 4, !tbaa !302
  br label %22

22:                                               ; preds = %15, %19, %9
  %23 = phi i32 [ %10, %15 ], [ %21, %19 ], [ %10, %9 ]
  %24 = phi ptr [ %14, %15 ], [ %20, %19 ], [ %14, %9 ]
  %25 = getelementptr inbounds ptr, ptr %24, i64 %11
  store ptr null, ptr %25, align 8, !tbaa !288
  %26 = add nuw nsw i64 %11, 1
  %27 = zext i32 %23 to i64
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %9, label %8, !llvm.loop !319
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfItE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !174 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !302
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !305
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.1, i32 noundef 144, i32 noundef 116, ptr noundef %9) #13
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #14
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %15 = load i8, ptr %14, align 8, !tbaa !303, !range !191, !noundef !192
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !300
  %20 = zext i32 %1 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !288
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %17
  tail call void @_ZdlPv(ptr noundef nonnull %22) #18
  %25 = load i32, ptr %3, align 4, !tbaa !302
  br label %26

26:                                               ; preds = %17, %24, %13
  %27 = phi i32 [ %4, %17 ], [ %25, %24 ], [ %4, %13 ]
  %28 = add i32 %27, -1
  %29 = icmp eq i32 %28, %1
  br i1 %29, label %38, label %30

30:                                               ; preds = %26
  %31 = icmp ugt i32 %28, %1
  br i1 %31, label %34, label %32

32:                                               ; preds = %30
  %33 = zext i32 %28 to i64
  br label %43

34:                                               ; preds = %30
  %35 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %36 = zext i32 %1 to i64
  %37 = zext i32 %28 to i64
  br label %48

38:                                               ; preds = %26
  %39 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %40 = load ptr, ptr %39, align 8, !tbaa !300
  %41 = zext i32 %1 to i64
  %42 = getelementptr inbounds ptr, ptr %40, i64 %41
  br label %56

43:                                               ; preds = %48, %32
  %44 = phi i64 [ %33, %32 ], [ %37, %48 ]
  %45 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %46 = load ptr, ptr %45, align 8, !tbaa !300
  %47 = getelementptr inbounds ptr, ptr %46, i64 %44
  br label %56

48:                                               ; preds = %34, %48
  %49 = phi i64 [ %36, %34 ], [ %51, %48 ]
  %50 = load ptr, ptr %35, align 8, !tbaa !300
  %51 = add nuw nsw i64 %49, 1
  %52 = getelementptr inbounds ptr, ptr %50, i64 %51
  %53 = load ptr, ptr %52, align 8, !tbaa !288
  %54 = getelementptr inbounds ptr, ptr %50, i64 %49
  store ptr %53, ptr %54, align 8, !tbaa !288
  %55 = icmp eq i64 %51, %37
  br i1 %55, label %43, label %48, !llvm.loop !320

56:                                               ; preds = %43, %38
  %57 = phi ptr [ %47, %43 ], [ %42, %38 ]
  store ptr null, ptr %57, align 8, !tbaa !288
  store i32 %28, ptr %3, align 4, !tbaa !302
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfItE17removeLastElementEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !174 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !302
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %18, label %5

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 4, !tbaa !302
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !303, !range !191, !noundef !192
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !300
  %13 = zext i32 %6 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !288
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %10
  tail call void @_ZdlPv(ptr noundef nonnull %15) #18
  br label %18

18:                                               ; preds = %10, %17, %1, %5
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfItE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 comdat align 2 !prof !174 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !303, !range !191, !noundef !192
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %25, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !302
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %25, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %20
  %12 = phi i32 [ %7, %9 ], [ %21, %20 ]
  %13 = phi i64 [ 0, %9 ], [ %22, %20 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !300
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !288
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %11
  tail call void @_ZdlPv(ptr noundef nonnull %16) #18
  %19 = load i32, ptr %6, align 4, !tbaa !302
  br label %20

20:                                               ; preds = %11, %18
  %21 = phi i32 [ %12, %11 ], [ %19, %18 ]
  %22 = add nuw nsw i64 %13, 1
  %23 = zext i32 %21 to i64
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %11, label %25, !llvm.loop !321

25:                                               ; preds = %20, %5, %1
  %26 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %27 = load ptr, ptr %26, align 8, !tbaa !305
  %28 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !300
  %30 = load ptr, ptr %27, align 8, !tbaa !189
  %31 = getelementptr inbounds ptr, ptr %30, i64 3
  %32 = load ptr, ptr %31, align 8
  tail call void %32(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %29) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_5MatchEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !174 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !287
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !322
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %52

9:                                                ; preds = %2
  %10 = lshr i32 %7, 1
  %11 = add i32 %10, %7
  %12 = tail call i32 @llvm.umax.i32(i32 %5, i32 %11)
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !323
  %15 = zext i32 %12 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = load ptr, ptr %14, align 8, !tbaa !189
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef %16) #13
  %21 = load i32, ptr %3, align 4, !tbaa !287
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %9
  %24 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  %25 = zext i32 %21 to i64
  br label %37

26:                                               ; preds = %37, %9
  %27 = icmp ult i32 %21, %12
  br i1 %27, label %28, label %45

28:                                               ; preds = %26
  %29 = zext i32 %21 to i64
  %30 = shl nuw nsw i64 %29, 3
  %31 = getelementptr i8, ptr %20, i64 %30
  %32 = xor i32 %21, -1
  %33 = add i32 %12, %32
  %34 = zext i32 %33 to i64
  %35 = shl nuw nsw i64 %34, 3
  %36 = add nuw nsw i64 %35, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %31, i8 0, i64 %36, i1 false), !tbaa !288
  br label %45

37:                                               ; preds = %23, %37
  %38 = phi i64 [ 0, %23 ], [ %43, %37 ]
  %39 = load ptr, ptr %24, align 8, !tbaa !285
  %40 = getelementptr inbounds ptr, ptr %39, i64 %38
  %41 = load ptr, ptr %40, align 8, !tbaa !288
  %42 = getelementptr inbounds ptr, ptr %20, i64 %38
  store ptr %41, ptr %42, align 8, !tbaa !288
  %43 = add nuw nsw i64 %38, 1
  %44 = icmp eq i64 %43, %25
  br i1 %44, label %26, label %37, !llvm.loop !324

45:                                               ; preds = %28, %26
  %46 = load ptr, ptr %13, align 8, !tbaa !323
  %47 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  %48 = load ptr, ptr %47, align 8, !tbaa !285
  %49 = load ptr, ptr %46, align 8, !tbaa !189
  %50 = getelementptr inbounds ptr, ptr %49, i64 3
  %51 = load ptr, ptr %50, align 8
  tail call void %51(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef %48) #13
  store ptr %20, ptr %47, align 8, !tbaa !285
  store i32 %12, ptr %6, align 8, !tbaa !322
  br label %52

52:                                               ; preds = %2, %45
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfItE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !299 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !302
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !304
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %52, !prof !325

9:                                                ; preds = %2
  %10 = lshr i32 %7, 1
  %11 = add i32 %10, %7
  %12 = tail call i32 @llvm.umax.i32(i32 %5, i32 %11)
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !305
  %15 = zext i32 %12 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = load ptr, ptr %14, align 8, !tbaa !189
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef %16) #13
  %21 = load i32, ptr %3, align 4, !tbaa !302
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23, !prof !326

23:                                               ; preds = %9
  %24 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %25 = zext i32 %21 to i64
  br label %37

26:                                               ; preds = %37, %9
  %27 = icmp ult i32 %21, %12
  br i1 %27, label %28, label %45, !prof !327

28:                                               ; preds = %26
  %29 = zext i32 %21 to i64
  %30 = shl nuw nsw i64 %29, 3
  %31 = getelementptr i8, ptr %20, i64 %30
  %32 = xor i32 %21, -1
  %33 = add i32 %12, %32
  %34 = zext i32 %33 to i64
  %35 = shl nuw nsw i64 %34, 3
  %36 = add nuw nsw i64 %35, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %31, i8 0, i64 %36, i1 false), !tbaa !288
  br label %45

37:                                               ; preds = %23, %37
  %38 = phi i64 [ 0, %23 ], [ %43, %37 ]
  %39 = load ptr, ptr %24, align 8, !tbaa !300
  %40 = getelementptr inbounds ptr, ptr %39, i64 %38
  %41 = load ptr, ptr %40, align 8, !tbaa !288
  %42 = getelementptr inbounds ptr, ptr %20, i64 %38
  store ptr %41, ptr %42, align 8, !tbaa !288
  %43 = add nuw nsw i64 %38, 1
  %44 = icmp eq i64 %43, %25
  br i1 %44, label %26, label %37, !prof !328, !llvm.loop !329

45:                                               ; preds = %28, %26
  %46 = load ptr, ptr %13, align 8, !tbaa !305
  %47 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %48 = load ptr, ptr %47, align 8, !tbaa !300
  %49 = load ptr, ptr %46, align 8, !tbaa !189
  %50 = getelementptr inbounds ptr, ptr %49, i64 3
  %51 = load ptr, ptr %50, align 8
  tail call void %51(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef %48) #13
  store ptr %20, ptr %47, align 8, !tbaa !300
  store i32 %12, ptr %6, align 8, !tbaa !304
  br label %52

52:                                               ; preds = %2, %45
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_717RegularExpression7replaceEPKcS2_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !174 {
  %4 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %5 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %6 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 14
  %7 = load ptr, ptr %6, align 8, !tbaa !213
  %8 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKcPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %7) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #14
  %9 = load ptr, ptr %6, align 8, !tbaa !213
  call void @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %8, ptr noundef %9) #13
  %10 = load ptr, ptr %6, align 8, !tbaa !213
  %11 = invoke noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKcPNS_13MemoryManagerE(ptr noundef %2, ptr noundef %10) #13
          to label %12 unwind label %17

12:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #14
  %13 = load ptr, ptr %6, align 8, !tbaa !213
  call void @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef %11, ptr noundef %13) #13
  %14 = call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %8) #13
  %15 = invoke noundef ptr @_ZN11xercesc_2_717RegularExpression7replaceEPKtS2_ii(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %8, ptr noundef %11, i32 noundef 0, i32 noundef %14) #13
          to label %16 unwind label %19

16:                                               ; preds = %12
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #14
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #14
  ret ptr %15

17:                                               ; preds = %3
  %18 = landingpad { ptr, i32 }
          cleanup
  br label %21

19:                                               ; preds = %12
  %20 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #14
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi { ptr, i32 } [ %20, %19 ], [ %18, %17 ]
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #14
  resume { ptr, i32 } %22
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_717RegularExpression7replaceEPKtS2_ii(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !174 {
  %6 = alloca %"class.xercesc_2_7::Janitor.1", align 8
  %7 = alloca %"class.xercesc_2_7::Janitor.2", align 8
  %8 = alloca %"class.xercesc_2_7::XMLBuffer", align 8
  %9 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 14
  %10 = load ptr, ptr %9, align 8, !tbaa !213
  %11 = tail call noundef zeroext i1 @_ZN11xercesc_2_717RegularExpression7matchesEPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, ptr noundef %10) #13
  br i1 %11, label %12, label %18

12:                                               ; preds = %5
  %13 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %14 = load ptr, ptr %9, align 8, !tbaa !213
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %13, ptr noundef nonnull @.str.3, i32 noundef 813, i32 noundef 296, ptr noundef %14) #13
          to label %15 unwind label %16

15:                                               ; preds = %12
  tail call void @__cxa_throw(ptr nonnull %13, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

16:                                               ; preds = %12
  %17 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %13) #14
  br label %96

18:                                               ; preds = %5
  %19 = load ptr, ptr %9, align 8, !tbaa !213
  %20 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %19) #13
  %21 = load ptr, ptr %9, align 8, !tbaa !213
  invoke void @_ZN11xercesc_2_711RefVectorOfINS_5MatchEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %20, i32 noundef 10, i1 noundef zeroext true, ptr noundef %21) #13
          to label %22 unwind label %35

22:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #14
  call void @_ZN11xercesc_2_77JanitorINS_11RefVectorOfINS_5MatchEEEEC2EPS3_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %20) #13
  %23 = invoke noundef ptr @_ZN11xercesc_2_717RegularExpression8tokenizeEPKtiiPNS_11RefVectorOfINS_5MatchEEE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, i32 noundef %3, i32 noundef %4, ptr noundef nonnull %20) #13
          to label %24 unwind label %37

24:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #14
  call void @_ZN11xercesc_2_77JanitorINS_16RefArrayVectorOfItEEEC2EPS2_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef %23) #13
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %8) #14
  %25 = load ptr, ptr %9, align 8, !tbaa !213
  invoke void @_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %8, i32 noundef 1023, ptr noundef %25) #13
          to label %26 unwind label %39

26:                                               ; preds = %24
  %27 = call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_5MatchEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %20) #13
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %43, label %29

29:                                               ; preds = %26
  %30 = invoke noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_5MatchEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %20, i32 noundef 0) #13
          to label %31 unwind label %41

31:                                               ; preds = %29
  %32 = invoke noundef i32 @_ZNK11xercesc_2_75Match11getNoGroupsEv(ptr noundef nonnull align 8 dereferenceable(40) %30) #13
          to label %33 unwind label %41

33:                                               ; preds = %31
  %34 = icmp eq i32 %32, 1
  br label %43

35:                                               ; preds = %18
  %36 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %20, ptr noundef %19) #15
  br label %96

37:                                               ; preds = %22
  %38 = landingpad { ptr, i32 }
          cleanup
  br label %94

39:                                               ; preds = %24
  %40 = landingpad { ptr, i32 }
          cleanup
  br label %92

41:                                               ; preds = %31, %29
  %42 = landingpad { ptr, i32 }
          cleanup
  br label %90

43:                                               ; preds = %33, %26
  %44 = phi i1 [ %34, %33 ], [ true, %26 ]
  %45 = call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfItE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %23) #13
  %46 = load ptr, ptr %9, align 8, !tbaa !213
  %47 = invoke noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %2, ptr noundef %46) #13
          to label %48 unwind label %58

48:                                               ; preds = %43
  %49 = icmp sgt i32 %45, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %48
  %51 = add nsw i32 %45, -1
  br label %60

52:                                               ; preds = %81, %48
  %53 = phi ptr [ %47, %48 ], [ %82, %81 ]
  %54 = load ptr, ptr %9, align 8, !tbaa !213
  %55 = load ptr, ptr %54, align 8, !tbaa !189
  %56 = getelementptr inbounds ptr, ptr %55, i64 3
  %57 = load ptr, ptr %56, align 8
  invoke void %57(ptr noundef nonnull align 8 dereferenceable(8) %54, ptr noundef %53) #13
          to label %85 unwind label %58

58:                                               ; preds = %85, %52, %43
  %59 = landingpad { ptr, i32 }
          cleanup
  br label %90

60:                                               ; preds = %50, %81
  %61 = phi i32 [ 0, %50 ], [ %83, %81 ]
  %62 = phi ptr [ %47, %50 ], [ %82, %81 ]
  %63 = invoke noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %23, i32 noundef %61) #13
          to label %64 unwind label %77

64:                                               ; preds = %60
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef %63) #13
          to label %65 unwind label %77

65:                                               ; preds = %64
  %66 = icmp eq i32 %61, %51
  br i1 %66, label %81, label %67

67:                                               ; preds = %65
  br i1 %44, label %79, label %68

68:                                               ; preds = %67
  %69 = load ptr, ptr %9, align 8, !tbaa !213
  %70 = load ptr, ptr %69, align 8, !tbaa !189
  %71 = getelementptr inbounds ptr, ptr %70, i64 3
  %72 = load ptr, ptr %71, align 8
  invoke void %72(ptr noundef nonnull align 8 dereferenceable(8) %69, ptr noundef %62) #13
          to label %73 unwind label %77

73:                                               ; preds = %68
  %74 = invoke noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_5MatchEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %20, i32 noundef %61) #13
          to label %75 unwind label %77

75:                                               ; preds = %73
  %76 = invoke noundef ptr @_ZN11xercesc_2_717RegularExpression8subInExpEPKtS2_PKNS_5MatchE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %2, ptr noundef %1, ptr noundef %74) #13
          to label %79 unwind label %77

77:                                               ; preds = %79, %75, %73, %68, %64, %60
  %78 = landingpad { ptr, i32 }
          cleanup
  br label %90

79:                                               ; preds = %75, %67
  %80 = phi ptr [ %62, %67 ], [ %76, %75 ]
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef %80) #13
          to label %81 unwind label %77

81:                                               ; preds = %65, %79
  %82 = phi ptr [ %80, %79 ], [ %62, %65 ]
  %83 = add nuw nsw i32 %61, 1
  %84 = icmp eq i32 %83, %45
  br i1 %84, label %52, label %60, !llvm.loop !330

85:                                               ; preds = %52
  %86 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %8) #13
  %87 = load ptr, ptr %9, align 8, !tbaa !213
  %88 = invoke noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %86, ptr noundef %87) #13
          to label %89 unwind label %58

89:                                               ; preds = %85
  call void @_ZN11xercesc_2_79XMLBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %8) #15
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %8) #14
  call void @_ZN11xercesc_2_77JanitorINS_16RefArrayVectorOfItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #14
  call void @_ZN11xercesc_2_77JanitorINS_11RefVectorOfINS_5MatchEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #14
  ret ptr %88

90:                                               ; preds = %58, %77, %41
  %91 = phi { ptr, i32 } [ %42, %41 ], [ %78, %77 ], [ %59, %58 ]
  call void @_ZN11xercesc_2_79XMLBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %8) #15
  br label %92

92:                                               ; preds = %90, %39
  %93 = phi { ptr, i32 } [ %91, %90 ], [ %40, %39 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %8) #14
  call void @_ZN11xercesc_2_77JanitorINS_16RefArrayVectorOfItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #14
  br label %94

94:                                               ; preds = %92, %37
  %95 = phi { ptr, i32 } [ %93, %92 ], [ %38, %37 ]
  call void @_ZN11xercesc_2_77JanitorINS_11RefVectorOfINS_5MatchEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #14
  br label %96

96:                                               ; preds = %35, %94, %16
  %97 = phi { ptr, i32 } [ %17, %16 ], [ %95, %94 ], [ %36, %35 ]
  resume { ptr, i32 } %97
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_717RegularExpression7replaceEPKcS2_ii(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !174 {
  %6 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %7 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %8 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 14
  %9 = load ptr, ptr %8, align 8, !tbaa !213
  %10 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKcPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %9) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #14
  %11 = load ptr, ptr %8, align 8, !tbaa !213
  call void @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef %10, ptr noundef %11) #13
  %12 = load ptr, ptr %8, align 8, !tbaa !213
  %13 = invoke noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKcPNS_13MemoryManagerE(ptr noundef %2, ptr noundef %12) #13
          to label %14 unwind label %18

14:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #14
  %15 = load ptr, ptr %8, align 8, !tbaa !213
  call void @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef %13, ptr noundef %15) #13
  %16 = invoke noundef ptr @_ZN11xercesc_2_717RegularExpression7replaceEPKtS2_ii(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %10, ptr noundef %13, i32 noundef %3, i32 noundef %4) #13
          to label %17 unwind label %20

17:                                               ; preds = %14
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #14
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #14
  ret ptr %16

18:                                               ; preds = %5
  %19 = landingpad { ptr, i32 }
          cleanup
  br label %22

20:                                               ; preds = %14
  %21 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #14
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi { ptr, i32 } [ %21, %20 ], [ %19, %18 ]
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #14
  resume { ptr, i32 } %23
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_717RegularExpression7replaceEPKtS2_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 align 2 !prof !174 {
  %4 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %1) #13
  %5 = tail call noundef ptr @_ZN11xercesc_2_717RegularExpression7replaceEPKtS2_ii(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef %2, i32 noundef 0, i32 noundef %4) #13
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_5MatchEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #3 comdat align 2 !prof !174 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_5MatchEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) #13
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_5MatchEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !189
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77JanitorINS_11RefVectorOfINS_5MatchEEEEC2EPS3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #5 comdat align 2 !prof !174 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  store ptr %1, ptr %0, align 8, !tbaa !331
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77JanitorINS_16RefArrayVectorOfItEEEC2EPS2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #5 comdat align 2 !prof !174 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  store ptr %1, ptr %0, align 8, !tbaa !333
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #3 comdat align 2 !prof !335 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  store i32 0, ptr %0, align 8, !tbaa !336
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 1
  store i32 %1, ptr %4, align 4, !tbaa !338
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 2
  store i32 0, ptr %5, align 8, !tbaa !339
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 3
  store i8 0, ptr %6, align 4, !tbaa !340
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 4
  store ptr %2, ptr %7, align 8, !tbaa !341
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 5
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %10 = add i32 %1, 1
  %11 = zext i32 %10 to i64
  %12 = shl nuw nsw i64 %11, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %13 = load ptr, ptr %2, align 8, !tbaa !189
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %12) #13
  store ptr %16, ptr %9, align 8, !tbaa !342
  store i16 0, ptr %16, align 2, !tbaa !175
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_5MatchEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #5 comdat align 2 !prof !174 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !287
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_5MatchEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !174 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !287
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !323
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.1, i32 noundef 249, i32 noundef 116, ptr noundef %9) #13
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #14
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !285
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !288
  ret ptr %18
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_75Match11getNoGroupsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !174 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::Match", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !343
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %1
  %6 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %7 = getelementptr inbounds %"class.xercesc_2_7::Match", ptr %0, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !274
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str, i32 noundef 108, i32 noundef 282, ptr noundef %8) #13
          to label %9 unwind label %10

9:                                                ; preds = %5
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

10:                                               ; preds = %5
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %6) #14
  resume { ptr, i32 } %11

12:                                               ; preds = %1
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfItE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #5 comdat align 2 !prof !344 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !302
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !345 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %31, label %4, !prof !346

4:                                                ; preds = %2
  %5 = load i16, ptr %1, align 2, !tbaa !175
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %31, label %7, !prof !347

7:                                                ; preds = %4, %7
  %8 = phi i32 [ %13, %7 ], [ 0, %4 ]
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds i16, ptr %1, i64 %9
  %11 = load i16, ptr %10, align 2, !tbaa !175
  %12 = icmp eq i16 %11, 0
  %13 = add i32 %8, 1
  br i1 %12, label %14, label %7, !prof !348, !llvm.loop !349

14:                                               ; preds = %7
  %15 = load i32, ptr %0, align 8, !tbaa !336
  %16 = add i32 %15, %8
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !338
  %19 = icmp ult i32 %16, %18
  br i1 %19, label %22, label %20, !prof !350

20:                                               ; preds = %14
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %8) #13
  %21 = load i32, ptr %0, align 8, !tbaa !336
  br label %22

22:                                               ; preds = %20, %14
  %23 = phi i32 [ %21, %20 ], [ %15, %14 ]
  %24 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %25 = load ptr, ptr %24, align 8, !tbaa !342
  %26 = zext i32 %23 to i64
  %27 = getelementptr inbounds i16, ptr %25, i64 %26
  %28 = shl nuw nsw i64 %9, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %27, ptr nonnull align 2 %1, i64 %28, i1 false)
  %29 = load i32, ptr %0, align 8, !tbaa !336
  %30 = add i32 %29, %8
  store i32 %30, ptr %0, align 8, !tbaa !336
  br label %31

31:                                               ; preds = %22, %4, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !351 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !302
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !352

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !305
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.1, i32 noundef 249, i32 noundef 116, ptr noundef %9) #13
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #14
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !300
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !288
  ret ptr %18
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_717RegularExpression8subInExpEPKtS2_PKNS_5MatchE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(104) %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef nonnull %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !174 {
  %5 = alloca %"class.xercesc_2_7::XMLBuffer", align 8
  %6 = alloca [2 x i16], align 2
  %7 = tail call noundef i32 @_ZNK11xercesc_2_75Match11getNoGroupsEv(ptr noundef nonnull align 8 dereferenceable(40) %3) #13
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %13

9:                                                ; preds = %4
  %10 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 14
  %11 = load ptr, ptr %10, align 8, !tbaa !213
  %12 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %11) #13
  br label %99

13:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #14
  %14 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 14
  %15 = load ptr, ptr %14, align 8, !tbaa !213
  call void @_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %5, i32 noundef 1023, ptr noundef %15) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #14
  %16 = getelementptr inbounds [2 x i16], ptr %6, i64 0, i64 1
  store i16 0, ptr %16, align 2, !tbaa !175
  br label %17

17:                                               ; preds = %90, %13
  %18 = phi i8 [ 1, %13 ], [ %91, %90 ]
  %19 = phi ptr [ %1, %13 ], [ %93, %90 ]
  %20 = load i16, ptr %19, align 2, !tbaa !175
  switch i16 %20, label %78 [
    i16 0, label %21
    i16 36, label %25
  ]

21:                                               ; preds = %17
  %22 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %5) #13
  %23 = load ptr, ptr %14, align 8, !tbaa !213
  %24 = invoke noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %22, ptr noundef %23) #13
          to label %94 unwind label %95

25:                                               ; preds = %17
  %26 = and i8 %18, 1
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %89, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds i16, ptr %19, i64 1
  %30 = load i16, ptr %29, align 2, !tbaa !175
  %31 = invoke noundef zeroext i1 @_ZN11xercesc_2_79XMLString7isDigitEt(i16 noundef zeroext %30) #13
          to label %32 unwind label %39

32:                                               ; preds = %28
  br i1 %31, label %45, label %33

33:                                               ; preds = %32
  %34 = call ptr @__cxa_allocate_exception(i64 48) #14
  %35 = load ptr, ptr %14, align 8, !tbaa !213
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %34, ptr noundef nonnull @.str.3, i32 noundef 1468, i32 noundef 297, ptr noundef %35) #13
          to label %36 unwind label %43

36:                                               ; preds = %33, %83, %51
  %37 = phi ptr [ %52, %51 ], [ %84, %83 ], [ %34, %33 ]
  invoke void @__cxa_throw(ptr nonnull %37, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
          to label %38 unwind label %41

38:                                               ; preds = %36
  unreachable

39:                                               ; preds = %28, %45, %89
  %40 = landingpad { ptr, i32 }
          cleanup
  br label %97

41:                                               ; preds = %36
  %42 = landingpad { ptr, i32 }
          cleanup
  br label %97

43:                                               ; preds = %33
  %44 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %34) #14
  br label %97

45:                                               ; preds = %32
  %46 = load i16, ptr %29, align 2, !tbaa !175
  store i16 %46, ptr %6, align 2, !tbaa !175
  %47 = load ptr, ptr %14, align 8, !tbaa !213
  %48 = invoke noundef i32 @_ZN11xercesc_2_79XMLString8parseIntEPKtPNS_13MemoryManagerE(ptr noundef nonnull %6, ptr noundef %47) #13
          to label %49 unwind label %39

49:                                               ; preds = %45
  %50 = icmp slt i32 %48, %7
  br i1 %50, label %56, label %51

51:                                               ; preds = %49
  %52 = call ptr @__cxa_allocate_exception(i64 48) #14
  %53 = load ptr, ptr %14, align 8, !tbaa !213
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %52, ptr noundef nonnull @.str.3, i32 noundef 1476, i32 noundef 297, ptr noundef %53) #13
          to label %36 unwind label %54

54:                                               ; preds = %51
  %55 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %52) #14
  br label %97

56:                                               ; preds = %49
  %57 = invoke noundef i32 @_ZNK11xercesc_2_75Match11getStartPosEi(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef %48) #13
          to label %58 unwind label %64

58:                                               ; preds = %56
  %59 = invoke noundef i32 @_ZNK11xercesc_2_75Match9getEndPosEi(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef %48) #13
          to label %60 unwind label %66

60:                                               ; preds = %58
  %61 = icmp slt i32 %57, %59
  br i1 %61, label %62, label %90

62:                                               ; preds = %60
  %63 = sext i32 %57 to i64
  br label %68

64:                                               ; preds = %56
  %65 = landingpad { ptr, i32 }
          cleanup
  br label %97

66:                                               ; preds = %58
  %67 = landingpad { ptr, i32 }
          cleanup
  br label %97

68:                                               ; preds = %62, %72
  %69 = phi i64 [ %63, %62 ], [ %73, %72 ]
  %70 = getelementptr inbounds i16, ptr %2, i64 %69
  %71 = load i16, ptr %70, align 2, !tbaa !175
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %5, i16 noundef zeroext %71) #13
          to label %72 unwind label %76

72:                                               ; preds = %68
  %73 = add nsw i64 %69, 1
  %74 = trunc i64 %73 to i32
  %75 = icmp eq i32 %59, %74
  br i1 %75, label %90, label %68, !llvm.loop !353

76:                                               ; preds = %68
  %77 = landingpad { ptr, i32 }
          cleanup
  br label %97

78:                                               ; preds = %17
  %79 = and i8 %18, 1
  %80 = icmp eq i8 %79, 0
  %81 = icmp eq i16 %20, 92
  br i1 %80, label %82, label %88

82:                                               ; preds = %78
  br i1 %81, label %90, label %83

83:                                               ; preds = %82
  %84 = call ptr @__cxa_allocate_exception(i64 48) #14
  %85 = load ptr, ptr %14, align 8, !tbaa !213
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %84, ptr noundef nonnull @.str.3, i32 noundef 1492, i32 noundef 297, ptr noundef %85) #13
          to label %36 unwind label %86

86:                                               ; preds = %83
  %87 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %84) #14
  br label %97

88:                                               ; preds = %78
  br i1 %81, label %90, label %89

89:                                               ; preds = %25, %88
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %5, i16 noundef zeroext %20) #13
          to label %90 unwind label %39

90:                                               ; preds = %72, %82, %60, %88, %89
  %91 = phi i8 [ 1, %89 ], [ 0, %88 ], [ 0, %82 ], [ %18, %60 ], [ %18, %72 ]
  %92 = phi ptr [ %19, %89 ], [ %19, %88 ], [ %19, %82 ], [ %29, %60 ], [ %29, %72 ]
  %93 = getelementptr inbounds i16, ptr %92, i64 1
  br label %17, !llvm.loop !354

94:                                               ; preds = %21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #14
  call void @_ZN11xercesc_2_79XMLBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %5) #15
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #14
  br label %99

95:                                               ; preds = %21
  %96 = landingpad { ptr, i32 }
          cleanup
  br label %97

97:                                               ; preds = %39, %41, %43, %54, %86, %66, %76, %64, %95
  %98 = phi { ptr, i32 } [ %96, %95 ], [ %55, %54 ], [ %44, %43 ], [ %87, %86 ], [ %65, %64 ], [ %77, %76 ], [ %67, %66 ], [ %40, %39 ], [ %42, %41 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #14
  call void @_ZN11xercesc_2_79XMLBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %5) #15
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #14
  resume { ptr, i32 } %98

99:                                               ; preds = %94, %9
  %100 = phi ptr [ %12, %9 ], [ %24, %94 ]
  ret ptr %100
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #5 comdat align 2 !prof !355 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !342
  %4 = load i32, ptr %0, align 8, !tbaa !336
  %5 = zext i32 %4 to i64
  %6 = getelementptr inbounds i16, ptr %3, i64 %5
  store i16 0, ptr %6, align 2, !tbaa !175
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !335 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !341
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !342
  %6 = load ptr, ptr %3, align 8, !tbaa !189
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5) #13
          to label %9 unwind label %10

9:                                                ; preds = %1
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #16
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77JanitorINS_16RefArrayVectorOfItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !174 {
  tail call void @_ZN11xercesc_2_77JanitorINS_16RefArrayVectorOfItEEE5resetEPS2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef null) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77JanitorINS_11RefVectorOfINS_5MatchEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !174 {
  tail call void @_ZN11xercesc_2_77JanitorINS_11RefVectorOfINS_5MatchEEEE5resetEPS3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef null) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_5MatchEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #3 comdat align 2 !prof !174 {
  %5 = zext i1 %2 to i8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_715BaseRefVectorOfINS_5MatchEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !189
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 1
  store i8 %5, ptr %6, align 8, !tbaa !356
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 2
  store i32 0, ptr %7, align 4, !tbaa !287
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 3
  store i32 %1, ptr %8, align 8, !tbaa !322
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  store ptr null, ptr %9, align 8, !tbaa !285
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 5
  store ptr %3, ptr %10, align 8, !tbaa !323
  %11 = zext i32 %1 to i64
  %12 = shl nuw nsw i64 %11, 3
  %13 = load ptr, ptr %3, align 8, !tbaa !189
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %12) #13
  store ptr %16, ptr %9, align 8, !tbaa !285
  %17 = icmp eq i32 %1, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %19, %4
  ret void

19:                                               ; preds = %4, %19
  %20 = phi i64 [ %23, %19 ], [ 0, %4 ]
  %21 = load ptr, ptr %9, align 8, !tbaa !285
  %22 = getelementptr inbounds ptr, ptr %21, i64 %20
  store ptr null, ptr %22, align 8, !tbaa !288
  %23 = add nuw nsw i64 %20, 1
  %24 = icmp eq i64 %23, %11
  br i1 %24, label %18, label %19, !llvm.loop !357
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_5MatchEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !174 {
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_5MatchEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !189
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !356, !range !191, !noundef !192
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %28, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !287
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %28, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %23
  %12 = phi i32 [ %7, %9 ], [ %24, %23 ]
  %13 = phi i64 [ 0, %9 ], [ %25, %23 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !285
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !288
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %11
  %19 = load ptr, ptr %16, align 8, !tbaa !189
  %20 = getelementptr inbounds ptr, ptr %19, i64 1
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(40) %16) #15
  %22 = load i32, ptr %6, align 4, !tbaa !287
  br label %23

23:                                               ; preds = %11, %18
  %24 = phi i32 [ %12, %11 ], [ %22, %18 ]
  %25 = add nuw nsw i64 %13, 1
  %26 = zext i32 %24 to i64
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %11, label %28, !llvm.loop !358

28:                                               ; preds = %23, %5, %1
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !323
  %31 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !285
  %33 = load ptr, ptr %30, align 8, !tbaa !189
  %34 = getelementptr inbounds ptr, ptr %33, i64 3
  %35 = load ptr, ptr %34, align 8
  invoke void %35(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef %32) #13
          to label %36 unwind label %37

36:                                               ; preds = %28
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_5MatchEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #15
  ret void

37:                                               ; preds = %28
  %38 = landingpad { ptr, i32 }
          catch ptr null
  %39 = extractvalue { ptr, i32 } %38, 0
  tail call void @__clang_call_terminate(ptr %39) #16
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_5MatchEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN11xercesc_2_711RefVectorOfINS_5MatchEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_5MatchEE12setElementAtEPS1_j(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !174 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !287
  %6 = icmp ugt i32 %5, %2
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !323
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str.1, i32 noundef 67, i32 noundef 116, ptr noundef %10) #13
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #14
  resume { ptr, i32 } %13

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 1
  %16 = load i8, ptr %15, align 8, !tbaa !356, !range !191, !noundef !192
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = zext i32 %2 to i64
  br label %31

20:                                               ; preds = %14
  %21 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !285
  %23 = zext i32 %2 to i64
  %24 = getelementptr inbounds ptr, ptr %22, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !288
  %26 = icmp eq ptr %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %20
  %28 = load ptr, ptr %25, align 8, !tbaa !189
  %29 = getelementptr inbounds ptr, ptr %28, i64 1
  %30 = load ptr, ptr %29, align 8
  tail call void %30(ptr noundef nonnull align 8 dereferenceable(40) %25) #15
  br label %31

31:                                               ; preds = %18, %20, %27
  %32 = phi i64 [ %19, %18 ], [ %23, %20 ], [ %23, %27 ]
  %33 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  %34 = load ptr, ptr %33, align 8, !tbaa !285
  %35 = getelementptr inbounds ptr, ptr %34, i64 %32
  store ptr %1, ptr %35, align 8, !tbaa !288
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_5MatchEE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !174 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !287
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  br label %9

8:                                                ; preds = %25, %1
  store i32 0, ptr %2, align 4, !tbaa !287
  ret void

9:                                                ; preds = %5, %25
  %10 = phi i32 [ %3, %5 ], [ %26, %25 ]
  %11 = phi i64 [ 0, %5 ], [ %29, %25 ]
  %12 = load i8, ptr %6, align 8, !tbaa !356, !range !191, !noundef !192
  %13 = icmp eq i8 %12, 0
  %14 = load ptr, ptr %7, align 8, !tbaa !285
  br i1 %13, label %25, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds ptr, ptr %14, i64 %11
  %17 = load ptr, ptr %16, align 8, !tbaa !288
  %18 = icmp eq ptr %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr %17, align 8, !tbaa !189
  %21 = getelementptr inbounds ptr, ptr %20, i64 1
  %22 = load ptr, ptr %21, align 8
  tail call void %22(ptr noundef nonnull align 8 dereferenceable(40) %17) #15
  %23 = load ptr, ptr %7, align 8, !tbaa !285
  %24 = load i32, ptr %2, align 4, !tbaa !287
  br label %25

25:                                               ; preds = %15, %19, %9
  %26 = phi i32 [ %10, %15 ], [ %24, %19 ], [ %10, %9 ]
  %27 = phi ptr [ %14, %15 ], [ %23, %19 ], [ %14, %9 ]
  %28 = getelementptr inbounds ptr, ptr %27, i64 %11
  store ptr null, ptr %28, align 8, !tbaa !288
  %29 = add nuw nsw i64 %11, 1
  %30 = zext i32 %26 to i64
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %9, label %8, !llvm.loop !359
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_5MatchEE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !174 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !287
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !323
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.1, i32 noundef 144, i32 noundef 116, ptr noundef %9) #13
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #14
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 1
  %15 = load i8, ptr %14, align 8, !tbaa !356, !range !191, !noundef !192
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !285
  %20 = zext i32 %1 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !288
  %23 = icmp eq ptr %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %17
  %25 = load ptr, ptr %22, align 8, !tbaa !189
  %26 = getelementptr inbounds ptr, ptr %25, i64 1
  %27 = load ptr, ptr %26, align 8
  tail call void %27(ptr noundef nonnull align 8 dereferenceable(40) %22) #15
  %28 = load i32, ptr %3, align 4, !tbaa !287
  br label %29

29:                                               ; preds = %17, %24, %13
  %30 = phi i32 [ %4, %17 ], [ %28, %24 ], [ %4, %13 ]
  %31 = add i32 %30, -1
  %32 = icmp eq i32 %31, %1
  br i1 %32, label %41, label %33

33:                                               ; preds = %29
  %34 = icmp ugt i32 %31, %1
  br i1 %34, label %37, label %35

35:                                               ; preds = %33
  %36 = zext i32 %31 to i64
  br label %46

37:                                               ; preds = %33
  %38 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  %39 = zext i32 %1 to i64
  %40 = zext i32 %31 to i64
  br label %51

41:                                               ; preds = %29
  %42 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  %43 = load ptr, ptr %42, align 8, !tbaa !285
  %44 = zext i32 %1 to i64
  %45 = getelementptr inbounds ptr, ptr %43, i64 %44
  br label %59

46:                                               ; preds = %51, %35
  %47 = phi i64 [ %36, %35 ], [ %40, %51 ]
  %48 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !285
  %50 = getelementptr inbounds ptr, ptr %49, i64 %47
  br label %59

51:                                               ; preds = %37, %51
  %52 = phi i64 [ %39, %37 ], [ %54, %51 ]
  %53 = load ptr, ptr %38, align 8, !tbaa !285
  %54 = add nuw nsw i64 %52, 1
  %55 = getelementptr inbounds ptr, ptr %53, i64 %54
  %56 = load ptr, ptr %55, align 8, !tbaa !288
  %57 = getelementptr inbounds ptr, ptr %53, i64 %52
  store ptr %56, ptr %57, align 8, !tbaa !288
  %58 = icmp eq i64 %54, %40
  br i1 %58, label %46, label %51, !llvm.loop !360

59:                                               ; preds = %46, %41
  %60 = phi ptr [ %50, %46 ], [ %45, %41 ]
  store ptr null, ptr %60, align 8, !tbaa !288
  store i32 %31, ptr %3, align 4, !tbaa !287
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_5MatchEE17removeLastElementEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !174 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !287
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 4, !tbaa !287
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !356, !range !191, !noundef !192
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !285
  %13 = zext i32 %6 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !288
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %10
  %18 = load ptr, ptr %15, align 8, !tbaa !189
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(40) %15) #15
  br label %21

21:                                               ; preds = %10, %17, %1, %5
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_5MatchEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 comdat align 2 !prof !174 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !356, !range !191, !noundef !192
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %28, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !287
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %28, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %23
  %12 = phi i32 [ %7, %9 ], [ %24, %23 ]
  %13 = phi i64 [ 0, %9 ], [ %25, %23 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !285
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !288
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %11
  %19 = load ptr, ptr %16, align 8, !tbaa !189
  %20 = getelementptr inbounds ptr, ptr %19, i64 1
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(40) %16) #15
  %22 = load i32, ptr %6, align 4, !tbaa !287
  br label %23

23:                                               ; preds = %11, %18
  %24 = phi i32 [ %12, %11 ], [ %22, %18 ]
  %25 = add nuw nsw i64 %13, 1
  %26 = zext i32 %24 to i64
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %11, label %28, !llvm.loop !361

28:                                               ; preds = %23, %5, %1
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !323
  %31 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !285
  %33 = load ptr, ptr %30, align 8, !tbaa !189
  %34 = getelementptr inbounds ptr, ptr %33, i64 3
  %35 = load ptr, ptr %34, align 8
  tail call void %35(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef %32) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_5MatchEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !174 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_5MatchEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_5MatchEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77JanitorINS_16RefArrayVectorOfItEEE5resetEPS2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !174 {
  %3 = load ptr, ptr %0, align 8, !tbaa !333
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr %3, align 8, !tbaa !189
  %7 = getelementptr inbounds ptr, ptr %6, i64 1
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(40) %3) #15
  br label %9

9:                                                ; preds = %5, %2
  store ptr %1, ptr %0, align 8, !tbaa !333
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77JanitorINS_11RefVectorOfINS_5MatchEEEE5resetEPS3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !174 {
  %3 = load ptr, ptr %0, align 8, !tbaa !331
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr %3, align 8, !tbaa !189
  %7 = getelementptr inbounds ptr, ptr %6, i64 1
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(40) %3) #15
  br label %9

9:                                                ; preds = %5, %2
  store ptr %1, ptr %0, align 8, !tbaa !331
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_714XMLInitializer27initializeRegularExpressionEv() local_unnamed_addr #3 align 2 !prof !174 {
  %1 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !288
  tail call void @_ZN11xercesc_2_717RegularExpression16staticInitializeEPNS_13MemoryManagerE(ptr noundef %1) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717RegularExpression16staticInitializeEPNS_13MemoryManagerE(ptr noundef %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !174 {
  %2 = tail call noundef ptr @_ZN11xercesc_2_712TokenFactory14staticGetRangeEPKtb(ptr noundef nonnull @_ZN11xercesc_2_7L11fgUniIsWordE, i1 noundef zeroext false) #13
  store ptr %2, ptr @_ZN11xercesc_2_717RegularExpression10fWordRangeE, align 8, !tbaa !288
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %9

4:                                                ; preds = %1
  %5 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull @.str.3, i32 noundef 873, i32 noundef 293, ptr noundef nonnull @_ZN11xercesc_2_7L11fgUniIsWordE, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %0) #13
          to label %6 unwind label %7

6:                                                ; preds = %4
  tail call void @__cxa_throw(ptr nonnull %5, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

7:                                                ; preds = %4
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %5) #14
  resume { ptr, i32 } %8

9:                                                ; preds = %1
  tail call void @_ZN11xercesc_2_718XMLRegisterCleanup15registerCleanupEPFvvE(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L16WordRangeCleanupE, ptr noundef nonnull @_ZN11xercesc_2_7L12localCleanupEv) #13
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_712TokenFactory14staticGetRangeEPKtb(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !174 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %8) #13
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !189
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) #13
          to label %10 unwind label %11

10:                                               ; preds = %9
  ret void

11:                                               ; preds = %9
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  resume { ptr, i32 } %12
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_718XMLRegisterCleanup15registerCleanupEPFvvE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define internal void @_ZN11xercesc_2_7L12localCleanupEv() #5 !prof !174 !PGOFuncName !362 {
  tail call void @_ZN11xercesc_2_717RegularExpression13staticCleanupEv() #13
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717RegularExpression13staticCleanupEv() local_unnamed_addr #5 comdat align 2 !prof !174 {
  store ptr null, ptr @_ZN11xercesc_2_717RegularExpression10fWordRangeE, align 8, !tbaa !288
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN11xercesc_2_717RegularExpression14getOptionValueEt(i16 noundef zeroext %0) local_unnamed_addr #10 align 2 !prof !214 {
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
  ], !prof !363

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

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_717RegularExpression9matchCharEPNS0_7ContextEiRisb(ptr nocapture nonnull readnone align 8 %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3, i16 noundef signext %4, i1 noundef zeroext %5) local_unnamed_addr #3 align 2 !prof !364 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #14
  %9 = icmp sgt i16 %4, 0
  %10 = load i32, ptr %3, align 4, !tbaa !201
  br i1 %9, label %13, label %11, !prof !365

11:                                               ; preds = %6
  %12 = add nsw i32 %10, -1
  br label %13

13:                                               ; preds = %6, %11
  %14 = phi i32 [ %12, %11 ], [ %10, %6 ]
  store i32 %14, ptr %7, align 4, !tbaa !201
  %15 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %1, i64 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !197
  %17 = icmp sge i32 %14, %16
  %18 = icmp slt i32 %14, 0
  %19 = or i1 %18, %17
  br i1 %19, label %34, label %20, !prof !366

20:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #14
  store i32 0, ptr %8, align 4, !tbaa !201
  %21 = call noundef zeroext i1 @_ZN11xercesc_2_717RegularExpression7Context6nextChERiS2_s(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 4 dereferenceable(4) %8, ptr noundef nonnull align 4 dereferenceable(4) %7, i16 noundef signext %4) #13
  br i1 %21, label %22, label %32, !prof !367

22:                                               ; preds = %20
  %23 = load i32, ptr %8, align 4, !tbaa !201
  br i1 %5, label %24, label %26, !prof !368

24:                                               ; preds = %22
  %25 = tail call noundef zeroext i1 @_ZN11xercesc_2_717RegularExpression15matchIgnoreCaseEii(ptr nonnull align 8 poison, i32 noundef %2, i32 noundef %23) #13
  br i1 %25, label %28, label %32, !prof !369

26:                                               ; preds = %22
  %27 = icmp eq i32 %23, %2
  br i1 %27, label %28, label %32, !prof !369

28:                                               ; preds = %24, %26
  %29 = load i32, ptr %7, align 4, !tbaa !201
  %30 = zext i1 %9 to i32
  %31 = add nsw i32 %29, %30
  store i32 %31, ptr %3, align 4, !tbaa !201
  br label %32

32:                                               ; preds = %24, %28, %26, %20
  %33 = phi i1 [ false, %20 ], [ false, %26 ], [ true, %28 ], [ false, %24 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #14
  br label %34

34:                                               ; preds = %13, %32
  %35 = phi i1 [ %33, %32 ], [ false, %13 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #14
  ret i1 %35
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_72Op9getNextOpEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #5 comdat align 2 !prof !370 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::Op", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !371
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_717RegularExpression8matchDotEPNS0_7ContextERis(ptr nocapture noundef nonnull readonly align 8 dereferenceable(104) %0, ptr nocapture noundef readonly %1, ptr nocapture noundef nonnull align 4 dereferenceable(4) %2, i16 noundef signext %3) local_unnamed_addr #5 align 2 !prof !372 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  %7 = icmp sgt i16 %3, 0
  %8 = load i32, ptr %2, align 4, !tbaa !201
  br i1 %7, label %11, label %9, !prof !373

9:                                                ; preds = %4
  %10 = add nsw i32 %8, -1
  br label %11

11:                                               ; preds = %4, %9
  %12 = phi i32 [ %10, %9 ], [ %8, %4 ]
  store i32 %12, ptr %5, align 4, !tbaa !201
  %13 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %1, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !197
  %15 = icmp sge i32 %12, %14
  %16 = icmp slt i32 %12, 0
  %17 = or i1 %16, %15
  br i1 %17, label %40, label %18, !prof !374

18:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #14
  store i32 0, ptr %6, align 4, !tbaa !201
  %19 = call noundef zeroext i1 @_ZN11xercesc_2_717RegularExpression7Context6nextChERiS2_s(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 4 dereferenceable(4) %5, i16 noundef signext %3) #13
  br i1 %19, label %20, label %38, !prof !375

20:                                               ; preds = %18
  %21 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 5
  %22 = load i32, ptr %21, align 8, !tbaa !226
  %23 = tail call noundef zeroext i1 @_ZN11xercesc_2_717RegularExpression5isSetEii(i32 noundef %22, i32 noundef 4) #13
  br i1 %23, label %30, label %24, !prof !376

24:                                               ; preds = %20
  %25 = load i32, ptr %6, align 4, !tbaa !201
  %26 = trunc i32 %25 to i16
  %27 = tail call noundef zeroext i1 @_ZN11xercesc_2_78RegxUtil9isEOLCharEt(i16 noundef zeroext %26) #13
  br i1 %7, label %28, label %29, !prof !375

28:                                               ; preds = %24
  br i1 %27, label %38, label %31, !prof !376

29:                                               ; preds = %24
  br i1 %27, label %34, label %38

30:                                               ; preds = %20
  br i1 %7, label %31, label %34, !prof !377

31:                                               ; preds = %28, %30
  %32 = load i32, ptr %5, align 4, !tbaa !201
  %33 = add nsw i32 %32, 1
  br label %36

34:                                               ; preds = %29, %30
  %35 = load i32, ptr %5, align 4, !tbaa !201
  br label %36

36:                                               ; preds = %34, %31
  %37 = phi i32 [ %33, %31 ], [ %35, %34 ]
  store i32 %37, ptr %2, align 4, !tbaa !201
  br label %38

38:                                               ; preds = %29, %28, %18, %36
  %39 = phi i1 [ true, %36 ], [ false, %18 ], [ false, %28 ], [ false, %29 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #14
  br label %40

40:                                               ; preds = %11, %38
  %41 = phi i1 [ %39, %38 ], [ false, %11 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  ret i1 %41
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_717RegularExpression10matchRangeEPNS0_7ContextEPKNS_2OpERisb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(104) %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3, i16 noundef signext %4, i1 noundef zeroext %5) local_unnamed_addr #3 align 2 !prof !378 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #14
  %9 = icmp sgt i16 %4, 0
  %10 = load i32, ptr %3, align 4, !tbaa !201
  br i1 %9, label %13, label %11, !prof !379

11:                                               ; preds = %6
  %12 = add nsw i32 %10, -1
  br label %13

13:                                               ; preds = %6, %11
  %14 = phi i32 [ %12, %11 ], [ %10, %6 ]
  store i32 %14, ptr %7, align 4, !tbaa !201
  %15 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %1, i64 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !197
  %17 = icmp sge i32 %14, %16
  %18 = icmp slt i32 %14, 0
  %19 = or i1 %18, %17
  br i1 %19, label %41, label %20, !prof !380

20:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #14
  store i32 0, ptr %8, align 4, !tbaa !201
  %21 = call noundef zeroext i1 @_ZN11xercesc_2_717RegularExpression7Context6nextChERiS2_s(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 4 dereferenceable(4) %8, ptr noundef nonnull align 4 dereferenceable(4) %7, i16 noundef signext %4) #13
  br i1 %21, label %22, label %39, !prof !381

22:                                               ; preds = %20
  %23 = load ptr, ptr %2, align 8, !tbaa !189
  %24 = getelementptr inbounds ptr, ptr %23, i64 11
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef ptr %25(ptr noundef nonnull align 8 dereferenceable(32) %2) #13
  br i1 %5, label %27, label %31, !prof !382

27:                                               ; preds = %22
  %28 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 13
  %29 = load ptr, ptr %28, align 8, !tbaa !212
  %30 = tail call noundef ptr @_ZN11xercesc_2_710RangeToken23getCaseInsensitiveTokenEPNS_12TokenFactoryE(ptr noundef nonnull align 8 dereferenceable(72) %26, ptr noundef %29) #13
  br label %31

31:                                               ; preds = %27, %22
  %32 = phi ptr [ %30, %27 ], [ %26, %22 ]
  %33 = load i32, ptr %8, align 4, !tbaa !201
  %34 = tail call noundef zeroext i1 @_ZN11xercesc_2_710RangeToken5matchEi(ptr noundef nonnull align 8 dereferenceable(72) %32, i32 noundef %33) #13
  br i1 %34, label %35, label %39, !prof !383

35:                                               ; preds = %31
  %36 = load i32, ptr %7, align 4, !tbaa !201
  %37 = zext i1 %9 to i32
  %38 = add nsw i32 %36, %37
  store i32 %38, ptr %3, align 4, !tbaa !201
  br label %39

39:                                               ; preds = %35, %31, %20
  %40 = phi i1 [ false, %20 ], [ false, %31 ], [ true, %35 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #14
  br label %41

41:                                               ; preds = %13, %39
  %42 = phi i1 [ %40, %39 ], [ false, %13 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #14
  ret i1 %42
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_717RegularExpression11matchAnchorEPNS0_7ContextEii(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 align 2 !prof !174 {
  %5 = and i32 %2, 65535
  %6 = trunc i32 %2 to i16
  switch i16 %6, label %170 [
    i16 65, label %7
    i16 66, label %11
    i16 98, label %30
    i16 90, label %49
    i16 36, label %49
    i16 122, label %100
    i16 64, label %104
    i16 94, label %104
    i16 60, label %128
    i16 62, label %149
  ]

7:                                                ; preds = %4
  %8 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %1, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !196
  %10 = icmp eq i32 %9, %3
  br i1 %10, label %170, label %171

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %1, i64 0, i32 3
  %13 = load i32, ptr %12, align 4, !tbaa !198
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %170, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %1, i64 0, i32 8
  %17 = load ptr, ptr %16, align 8, !tbaa !194
  %18 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %1, i64 0, i32 1
  %19 = load i32, ptr %18, align 4, !tbaa !196
  %20 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %1, i64 0, i32 2
  %21 = load i32, ptr %20, align 8, !tbaa !197
  %22 = tail call noundef zeroext i16 @_ZN11xercesc_2_717RegularExpression11getWordTypeEPKtiii(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %17, i32 noundef %19, i32 noundef %21, i32 noundef %3) #13
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %170, label %24

24:                                               ; preds = %15
  %25 = load ptr, ptr %16, align 8, !tbaa !194
  %26 = load i32, ptr %18, align 4, !tbaa !196
  %27 = load i32, ptr %20, align 8, !tbaa !197
  %28 = tail call noundef zeroext i16 @_ZN11xercesc_2_717RegularExpression19getPreviousWordTypeEPKtiii(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %25, i32 noundef %26, i32 noundef %27, i32 noundef %3) #13
  %29 = icmp eq i16 %22, %28
  br i1 %29, label %170, label %171

30:                                               ; preds = %4
  %31 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %1, i64 0, i32 3
  %32 = load i32, ptr %31, align 4, !tbaa !198
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %171, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %1, i64 0, i32 8
  %36 = load ptr, ptr %35, align 8, !tbaa !194
  %37 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %1, i64 0, i32 1
  %38 = load i32, ptr %37, align 4, !tbaa !196
  %39 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %1, i64 0, i32 2
  %40 = load i32, ptr %39, align 8, !tbaa !197
  %41 = tail call noundef zeroext i16 @_ZN11xercesc_2_717RegularExpression11getWordTypeEPKtiii(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %36, i32 noundef %38, i32 noundef %40, i32 noundef %3) #13
  %42 = icmp eq i16 %41, 0
  br i1 %42, label %171, label %43

43:                                               ; preds = %34
  %44 = load ptr, ptr %35, align 8, !tbaa !194
  %45 = load i32, ptr %37, align 4, !tbaa !196
  %46 = load i32, ptr %39, align 8, !tbaa !197
  %47 = tail call noundef zeroext i16 @_ZN11xercesc_2_717RegularExpression19getPreviousWordTypeEPKtiii(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %44, i32 noundef %45, i32 noundef %46, i32 noundef %3) #13
  %48 = icmp eq i16 %41, %47
  br i1 %48, label %171, label %170

49:                                               ; preds = %4, %4
  %50 = icmp eq i32 %5, 36
  br i1 %50, label %51, label %68

51:                                               ; preds = %49
  %52 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 5
  %53 = load i32, ptr %52, align 8, !tbaa !226
  %54 = tail call noundef zeroext i1 @_ZN11xercesc_2_717RegularExpression5isSetEii(i32 noundef %53, i32 noundef 8) #13
  br i1 %54, label %55, label %68

55:                                               ; preds = %51
  %56 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %1, i64 0, i32 2
  %57 = load i32, ptr %56, align 8, !tbaa !197
  %58 = icmp eq i32 %57, %3
  br i1 %58, label %170, label %59

59:                                               ; preds = %55
  %60 = icmp sgt i32 %57, %3
  br i1 %60, label %61, label %171

61:                                               ; preds = %59
  %62 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %1, i64 0, i32 8
  %63 = load ptr, ptr %62, align 8, !tbaa !194
  %64 = sext i32 %3 to i64
  %65 = getelementptr inbounds i16, ptr %63, i64 %64
  %66 = load i16, ptr %65, align 2, !tbaa !175
  %67 = tail call noundef zeroext i1 @_ZN11xercesc_2_78RegxUtil9isEOLCharEt(i16 noundef zeroext %66) #13
  br i1 %67, label %170, label %171

68:                                               ; preds = %51, %49
  %69 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %1, i64 0, i32 2
  %70 = load i32, ptr %69, align 8, !tbaa !197
  %71 = icmp eq i32 %70, %3
  br i1 %71, label %170, label %72

72:                                               ; preds = %68
  %73 = add nsw i32 %3, 1
  %74 = icmp eq i32 %73, %70
  br i1 %74, label %75, label %84

75:                                               ; preds = %72
  %76 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %1, i64 0, i32 8
  %77 = load ptr, ptr %76, align 8, !tbaa !194
  %78 = sext i32 %3 to i64
  %79 = getelementptr inbounds i16, ptr %77, i64 %78
  %80 = load i16, ptr %79, align 2, !tbaa !175
  %81 = tail call noundef zeroext i1 @_ZN11xercesc_2_78RegxUtil9isEOLCharEt(i16 noundef zeroext %80) #13
  br i1 %81, label %170, label %82

82:                                               ; preds = %75
  %83 = load i32, ptr %69, align 8, !tbaa !197
  br label %84

84:                                               ; preds = %82, %72
  %85 = phi i32 [ %83, %82 ], [ %70, %72 ]
  %86 = add nsw i32 %3, 2
  %87 = icmp eq i32 %86, %85
  br i1 %87, label %88, label %171

88:                                               ; preds = %84
  %89 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %1, i64 0, i32 8
  %90 = load ptr, ptr %89, align 8, !tbaa !194
  %91 = sext i32 %3 to i64
  %92 = getelementptr inbounds i16, ptr %90, i64 %91
  %93 = load i16, ptr %92, align 2, !tbaa !175
  %94 = icmp eq i16 %93, 13
  br i1 %94, label %95, label %171

95:                                               ; preds = %88
  %96 = sext i32 %73 to i64
  %97 = getelementptr inbounds i16, ptr %90, i64 %96
  %98 = load i16, ptr %97, align 2, !tbaa !175
  %99 = icmp eq i16 %98, 10
  br i1 %99, label %170, label %171

100:                                              ; preds = %4
  %101 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %1, i64 0, i32 2
  %102 = load i32, ptr %101, align 8, !tbaa !197
  %103 = icmp eq i32 %102, %3
  br i1 %103, label %170, label %171

104:                                              ; preds = %4, %4
  %105 = icmp eq i32 %5, 94
  br i1 %105, label %106, label %114

106:                                              ; preds = %104
  %107 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 5
  %108 = load i32, ptr %107, align 8, !tbaa !226
  %109 = tail call noundef zeroext i1 @_ZN11xercesc_2_717RegularExpression5isSetEii(i32 noundef %108, i32 noundef 8) #13
  br i1 %109, label %114, label %110

110:                                              ; preds = %106
  %111 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %1, i64 0, i32 1
  %112 = load i32, ptr %111, align 4, !tbaa !196
  %113 = icmp eq i32 %112, %3
  br i1 %113, label %170, label %171

114:                                              ; preds = %106, %104
  %115 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %1, i64 0, i32 1
  %116 = load i32, ptr %115, align 4, !tbaa !196
  %117 = icmp eq i32 %116, %3
  br i1 %117, label %170, label %118

118:                                              ; preds = %114
  %119 = icmp slt i32 %116, %3
  br i1 %119, label %120, label %171

120:                                              ; preds = %118
  %121 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %1, i64 0, i32 8
  %122 = load ptr, ptr %121, align 8, !tbaa !194
  %123 = sext i32 %3 to i64
  %124 = getelementptr i16, ptr %122, i64 %123
  %125 = getelementptr i16, ptr %124, i64 -1
  %126 = load i16, ptr %125, align 2, !tbaa !175
  %127 = tail call noundef zeroext i1 @_ZN11xercesc_2_78RegxUtil9isEOLCharEt(i16 noundef zeroext %126) #13
  br i1 %127, label %170, label %171

128:                                              ; preds = %4
  %129 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %1, i64 0, i32 3
  %130 = load i32, ptr %129, align 4, !tbaa !198
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %171, label %132

132:                                              ; preds = %128
  %133 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %1, i64 0, i32 2
  %134 = load i32, ptr %133, align 8, !tbaa !197
  %135 = icmp eq i32 %134, %3
  br i1 %135, label %171, label %136

136:                                              ; preds = %132
  %137 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %1, i64 0, i32 8
  %138 = load ptr, ptr %137, align 8, !tbaa !194
  %139 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %1, i64 0, i32 1
  %140 = load i32, ptr %139, align 4, !tbaa !196
  %141 = tail call noundef zeroext i16 @_ZN11xercesc_2_717RegularExpression11getWordTypeEPKtiii(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %138, i32 noundef %140, i32 noundef %134, i32 noundef %3) #13
  %142 = icmp eq i16 %141, 1
  br i1 %142, label %143, label %171

143:                                              ; preds = %136
  %144 = load ptr, ptr %137, align 8, !tbaa !194
  %145 = load i32, ptr %139, align 4, !tbaa !196
  %146 = load i32, ptr %133, align 8, !tbaa !197
  %147 = tail call noundef zeroext i16 @_ZN11xercesc_2_717RegularExpression19getPreviousWordTypeEPKtiii(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %144, i32 noundef %145, i32 noundef %146, i32 noundef %3) #13
  %148 = icmp eq i16 %147, 2
  br i1 %148, label %170, label %171

149:                                              ; preds = %4
  %150 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %1, i64 0, i32 3
  %151 = load i32, ptr %150, align 4, !tbaa !198
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %171, label %153

153:                                              ; preds = %149
  %154 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %1, i64 0, i32 1
  %155 = load i32, ptr %154, align 4, !tbaa !196
  %156 = icmp eq i32 %155, %3
  br i1 %156, label %171, label %157

157:                                              ; preds = %153
  %158 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %1, i64 0, i32 8
  %159 = load ptr, ptr %158, align 8, !tbaa !194
  %160 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %1, i64 0, i32 2
  %161 = load i32, ptr %160, align 8, !tbaa !197
  %162 = tail call noundef zeroext i16 @_ZN11xercesc_2_717RegularExpression11getWordTypeEPKtiii(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %159, i32 noundef %155, i32 noundef %161, i32 noundef %3) #13
  %163 = icmp eq i16 %162, 2
  br i1 %163, label %164, label %171

164:                                              ; preds = %157
  %165 = load ptr, ptr %158, align 8, !tbaa !194
  %166 = load i32, ptr %154, align 4, !tbaa !196
  %167 = load i32, ptr %160, align 8, !tbaa !197
  %168 = tail call noundef zeroext i16 @_ZN11xercesc_2_717RegularExpression19getPreviousWordTypeEPKtiii(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %165, i32 noundef %166, i32 noundef %167, i32 noundef %3) #13
  %169 = icmp eq i16 %168, 1
  br i1 %169, label %170, label %171

170:                                              ; preds = %24, %15, %43, %164, %143, %110, %120, %114, %100, %61, %55, %95, %75, %68, %11, %7, %4
  br label %171

171:                                              ; preds = %34, %24, %157, %164, %149, %153, %136, %143, %128, %132, %118, %120, %110, %100, %84, %88, %95, %59, %61, %43, %30, %7, %170
  %172 = phi i1 [ true, %170 ], [ false, %43 ], [ false, %7 ], [ false, %30 ], [ false, %61 ], [ false, %59 ], [ false, %95 ], [ false, %88 ], [ false, %84 ], [ false, %100 ], [ false, %110 ], [ false, %120 ], [ false, %118 ], [ false, %132 ], [ false, %128 ], [ false, %143 ], [ false, %136 ], [ false, %153 ], [ false, %149 ], [ false, %164 ], [ false, %157 ], [ false, %24 ], [ false, %34 ]
  ret i1 %172
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_717RegularExpression18matchBackReferenceEPNS0_7ContextEiRisb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(104) %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3, i16 noundef signext %4, i1 noundef zeroext %5) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !174 {
  %7 = icmp sgt i32 %2, 0
  %8 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = icmp sgt i32 %9, %2
  %11 = select i1 %7, i1 %10, i1 false
  br i1 %11, label %19, label %12

12:                                               ; preds = %6
  %13 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %14 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 14
  %15 = load ptr, ptr %14, align 8, !tbaa !213
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %13, ptr noundef nonnull @.str.3, i32 noundef 1259, i32 noundef 290, ptr noundef %15) #13
          to label %16 unwind label %17

16:                                               ; preds = %12
  tail call void @__cxa_throw(ptr nonnull %13, ptr nonnull @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

17:                                               ; preds = %12
  %18 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %13) #14
  resume { ptr, i32 } %18

19:                                               ; preds = %6
  %20 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %1, i64 0, i32 7
  %21 = load ptr, ptr %20, align 8, !tbaa !193
  %22 = tail call noundef i32 @_ZNK11xercesc_2_75Match11getStartPosEi(ptr noundef nonnull align 8 dereferenceable(40) %21, i32 noundef %2) #13
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %54, label %24

24:                                               ; preds = %19
  %25 = load ptr, ptr %20, align 8, !tbaa !193
  %26 = tail call noundef i32 @_ZNK11xercesc_2_75Match9getEndPosEi(ptr noundef nonnull align 8 dereferenceable(40) %25, i32 noundef %2) #13
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %54, label %28

28:                                               ; preds = %24
  %29 = load ptr, ptr %20, align 8, !tbaa !193
  %30 = tail call noundef i32 @_ZNK11xercesc_2_75Match11getStartPosEi(ptr noundef nonnull align 8 dereferenceable(40) %29, i32 noundef %2) #13
  %31 = load ptr, ptr %20, align 8, !tbaa !193
  %32 = tail call noundef i32 @_ZNK11xercesc_2_75Match9getEndPosEi(ptr noundef nonnull align 8 dereferenceable(40) %31, i32 noundef %2) #13
  %33 = sub nsw i32 %32, %30
  %34 = icmp sgt i16 %4, 0
  %35 = load i32, ptr %3, align 4
  %36 = select i1 %34, i32 0, i32 %33
  %37 = sub nsw i32 %35, %36
  %38 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %1, i64 0, i32 2
  %39 = load i32, ptr %38, align 8, !tbaa !197
  %40 = sub nsw i32 %39, %37
  %41 = icmp slt i32 %40, %33
  br i1 %41, label %54, label %42

42:                                               ; preds = %28
  %43 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %1, i64 0, i32 8
  %44 = load ptr, ptr %43, align 8, !tbaa !194
  br i1 %5, label %45, label %47

45:                                               ; preds = %42
  %46 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString14regionIMatchesEPKtiS2_ij(ptr noundef %44, i32 noundef %37, ptr noundef %44, i32 noundef %30, i32 noundef %33) #13
  br i1 %46, label %49, label %54

47:                                               ; preds = %42
  %48 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString13regionMatchesEPKtiS2_ij(ptr noundef %44, i32 noundef %37, ptr noundef %44, i32 noundef %30, i32 noundef %33) #13
  br i1 %48, label %49, label %54

49:                                               ; preds = %45, %47
  %50 = load i32, ptr %3, align 4
  %51 = sub i32 0, %33
  %52 = select i1 %34, i32 %33, i32 %51
  %53 = add i32 %50, %52
  store i32 %53, ptr %3, align 4, !tbaa !201
  br label %54

54:                                               ; preds = %45, %28, %47, %49, %19, %24
  %55 = phi i1 [ false, %24 ], [ false, %19 ], [ false, %28 ], [ false, %47 ], [ true, %49 ], [ false, %45 ]
  ret i1 %55
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_717RegularExpression11matchStringEPNS0_7ContextEPKtRisb(ptr nocapture nonnull readnone align 8 %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3, i16 noundef signext %4, i1 noundef zeroext %5) local_unnamed_addr #3 align 2 !prof !384 {
  %7 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %2) #13
  %8 = icmp sgt i16 %4, 0
  %9 = load i32, ptr %3, align 4, !tbaa !201
  br i1 %8, label %12, label %10, !prof !385

10:                                               ; preds = %6
  %11 = sub nsw i32 %9, %7
  br label %12

12:                                               ; preds = %6, %10
  %13 = phi i32 [ %11, %10 ], [ %9, %6 ]
  %14 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %1, i64 0, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !197
  %16 = sub nsw i32 %15, %13
  %17 = icmp slt i32 %16, %7
  br i1 %17, label %33, label %18, !prof !386

18:                                               ; preds = %12
  %19 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %1, i64 0, i32 8
  %20 = load ptr, ptr %19, align 8, !tbaa !194
  br i1 %5, label %21, label %23, !prof !387

21:                                               ; preds = %18
  %22 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString14regionIMatchesEPKtiS2_ij(ptr noundef %20, i32 noundef %13, ptr noundef %2, i32 noundef 0, i32 noundef %7) #13
  br i1 %22, label %25, label %33, !prof !388

23:                                               ; preds = %18
  %24 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString13regionMatchesEPKtiS2_ij(ptr noundef %20, i32 noundef %13, ptr noundef %2, i32 noundef 0, i32 noundef %7) #13
  br i1 %24, label %25, label %33, !prof !388

25:                                               ; preds = %21, %23
  %26 = load i32, ptr %3, align 4, !tbaa !201
  br i1 %8, label %27, label %29, !prof !389

27:                                               ; preds = %25
  %28 = add nsw i32 %26, %7
  br label %31

29:                                               ; preds = %25
  %30 = sub nsw i32 %26, %7
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi i32 [ %28, %27 ], [ %30, %29 ]
  store i32 %32, ptr %3, align 4, !tbaa !201
  br label %33

33:                                               ; preds = %21, %23, %31, %12
  %34 = phi i1 [ false, %12 ], [ true, %31 ], [ false, %23 ], [ false, %21 ]
  ret i1 %34
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_717RegularExpression10matchUnionEPNS0_7ContextEPKNS_2OpEis(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i16 noundef signext %4) local_unnamed_addr #3 comdat align 2 !prof !390 {
  %6 = load ptr, ptr %2, align 8, !tbaa !189
  %7 = getelementptr inbounds ptr, ptr %6, i64 4
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef i32 %8(ptr noundef nonnull align 8 dereferenceable(32) %2) #13
  %10 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %1, i64 0, i32 2
  %11 = icmp eq i32 %9, 0
  br i1 %11, label %26, label %12, !prof !391

12:                                               ; preds = %5, %23
  %13 = phi i32 [ %24, %23 ], [ 0, %5 ]
  %14 = load ptr, ptr %2, align 8, !tbaa !189
  %15 = getelementptr inbounds ptr, ptr %14, i64 9
  %16 = load ptr, ptr %15, align 8
  %17 = tail call noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %13) #13
  %18 = tail call noundef i32 @_ZN11xercesc_2_717RegularExpression5matchEPNS0_7ContextEPKNS_2OpEis(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef %17, i32 noundef %3, i16 noundef signext %4) #13
  %19 = icmp sgt i32 %18, -1
  br i1 %19, label %20, label %23, !prof !392

20:                                               ; preds = %12
  %21 = load i32, ptr %10, align 8, !tbaa !197
  %22 = icmp sgt i32 %18, %21
  br i1 %22, label %23, label %26, !prof !393

23:                                               ; preds = %12, %20
  %24 = add nuw i32 %13, 1
  %25 = icmp eq i32 %24, %9
  br i1 %25, label %26, label %12, !prof !394, !llvm.loop !395

26:                                               ; preds = %23, %20, %5
  %27 = phi i32 [ -1, %5 ], [ %18, %20 ], [ -1, %23 ]
  ret i32 %27
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN11xercesc_2_717RegularExpression12matchCaptureEPNS0_7ContextEPKNS_2OpEis(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i16 noundef signext %4) local_unnamed_addr #3 align 2 !prof !174 {
  %6 = load ptr, ptr %2, align 8, !tbaa !189
  %7 = getelementptr inbounds ptr, ptr %6, i64 2
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef i32 %8(ptr noundef nonnull align 8 dereferenceable(32) %2) #13
  %10 = icmp sgt i32 %9, 0
  %11 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %1, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !193
  br i1 %10, label %13, label %21

13:                                               ; preds = %5
  %14 = tail call noundef i32 @_ZNK11xercesc_2_75Match11getStartPosEi(ptr noundef nonnull align 8 dereferenceable(40) %12, i32 noundef %9) #13
  %15 = load ptr, ptr %11, align 8, !tbaa !193
  tail call void @_ZN11xercesc_2_75Match11setStartPosEii(ptr noundef nonnull align 8 dereferenceable(40) %15, i32 noundef %9, i32 noundef %3) #13
  %16 = tail call noundef ptr @_ZNK11xercesc_2_72Op9getNextOpEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #13
  %17 = tail call noundef i32 @_ZN11xercesc_2_717RegularExpression5matchEPNS0_7ContextEPKNS_2OpEis(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef %16, i32 noundef %3, i16 noundef signext %4) #13
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %13
  %20 = load ptr, ptr %11, align 8, !tbaa !193
  tail call void @_ZN11xercesc_2_75Match11setStartPosEii(ptr noundef nonnull align 8 dereferenceable(40) %20, i32 noundef %9, i32 noundef %14) #13
  br label %30

21:                                               ; preds = %5
  %22 = sub nsw i32 0, %9
  %23 = tail call noundef i32 @_ZNK11xercesc_2_75Match9getEndPosEi(ptr noundef nonnull align 8 dereferenceable(40) %12, i32 noundef %22) #13
  %24 = load ptr, ptr %11, align 8, !tbaa !193
  tail call void @_ZN11xercesc_2_75Match9setEndPosEii(ptr noundef nonnull align 8 dereferenceable(40) %24, i32 noundef %22, i32 noundef %3) #13
  %25 = tail call noundef ptr @_ZNK11xercesc_2_72Op9getNextOpEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #13
  %26 = tail call noundef i32 @_ZN11xercesc_2_717RegularExpression5matchEPNS0_7ContextEPKNS_2OpEis(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef %25, i32 noundef %3, i16 noundef signext %4) #13
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = load ptr, ptr %11, align 8, !tbaa !193
  tail call void @_ZN11xercesc_2_75Match9setEndPosEii(ptr noundef nonnull align 8 dereferenceable(40) %29, i32 noundef %22, i32 noundef %23) #13
  br label %30

30:                                               ; preds = %21, %28, %13, %19
  %31 = phi i32 [ %17, %19 ], [ %17, %13 ], [ %26, %28 ], [ %26, %21 ]
  ret i32 %31
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_717RegularExpression13matchModifierEPNS0_7ContextEPKNS_2OpEis(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i16 noundef signext %4) local_unnamed_addr #3 comdat align 2 !prof !174 {
  %6 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !226
  %8 = load ptr, ptr %2, align 8, !tbaa !189
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef i32 %10(ptr noundef nonnull align 8 dereferenceable(32) %2) #13
  %12 = load i32, ptr %6, align 8, !tbaa !226
  %13 = or i32 %12, %11
  store i32 %13, ptr %6, align 8, !tbaa !226
  %14 = load ptr, ptr %2, align 8, !tbaa !189
  %15 = getelementptr inbounds ptr, ptr %14, i64 3
  %16 = load ptr, ptr %15, align 8
  %17 = tail call noundef i32 %16(ptr noundef nonnull align 8 dereferenceable(32) %2) #13
  %18 = xor i32 %17, -1
  %19 = load i32, ptr %6, align 8, !tbaa !226
  %20 = and i32 %19, %18
  store i32 %20, ptr %6, align 8, !tbaa !226
  %21 = load ptr, ptr %2, align 8, !tbaa !189
  %22 = getelementptr inbounds ptr, ptr %21, i64 10
  %23 = load ptr, ptr %22, align 8
  %24 = tail call noundef ptr %23(ptr noundef nonnull align 8 dereferenceable(32) %2) #13
  %25 = tail call noundef i32 @_ZN11xercesc_2_717RegularExpression5matchEPNS0_7ContextEPKNS_2OpEis(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef %24, i32 noundef %3, i16 noundef signext %4) #13
  store i32 %7, ptr %6, align 8, !tbaa !226
  ret i32 %25
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_717RegularExpression14matchConditionEPNS0_7ContextEPKNS_2OpEis(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i16 noundef signext %4) local_unnamed_addr #3 align 2 !prof !174 {
  %6 = load ptr, ptr %2, align 8, !tbaa !189
  %7 = getelementptr inbounds ptr, ptr %6, i64 5
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef i32 %8(ptr noundef nonnull align 8 dereferenceable(32) %2) #13
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %5
  %12 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression::Context", ptr %1, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !193
  %14 = tail call noundef i32 @_ZNK11xercesc_2_75Match11getStartPosEi(ptr noundef nonnull align 8 dereferenceable(40) %13, i32 noundef %9) #13
  %15 = icmp sgt i32 %14, -1
  br i1 %15, label %16, label %27

16:                                               ; preds = %11
  %17 = load ptr, ptr %12, align 8, !tbaa !193
  %18 = tail call noundef i32 @_ZNK11xercesc_2_75Match9getEndPosEi(ptr noundef nonnull align 8 dereferenceable(40) %17, i32 noundef %9) #13
  %19 = icmp sgt i32 %18, -1
  br label %27

20:                                               ; preds = %5
  %21 = load ptr, ptr %2, align 8, !tbaa !189
  %22 = getelementptr inbounds ptr, ptr %21, i64 6
  %23 = load ptr, ptr %22, align 8
  %24 = tail call noundef ptr %23(ptr noundef nonnull align 8 dereferenceable(32) %2) #13
  %25 = tail call noundef i32 @_ZN11xercesc_2_717RegularExpression5matchEPNS0_7ContextEPKNS_2OpEis(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef %24, i32 noundef %3, i16 noundef signext %4) #13
  %26 = icmp sgt i32 %25, -1
  br label %27

27:                                               ; preds = %11, %16, %20
  %28 = phi i1 [ %26, %20 ], [ false, %11 ], [ %19, %16 ]
  ret i1 %28
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i16 @_ZN11xercesc_2_717RegularExpression11getWordTypeEPKtiii(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #3 comdat align 2 !prof !174 {
  %6 = icmp sge i32 %4, %2
  %7 = icmp slt i32 %4, %3
  %8 = and i1 %6, %7
  br i1 %8, label %9, label %14

9:                                                ; preds = %5
  %10 = sext i32 %4 to i64
  %11 = getelementptr inbounds i16, ptr %1, i64 %10
  %12 = load i16, ptr %11, align 2, !tbaa !175
  %13 = tail call noundef zeroext i16 @_ZN11xercesc_2_717RegularExpression11getCharTypeEt(ptr noundef nonnull align 8 dereferenceable(104) %0, i16 noundef zeroext %12) #13, !range !396
  br label %14

14:                                               ; preds = %5, %9
  %15 = phi i16 [ %13, %9 ], [ 2, %5 ]
  ret i16 %15
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i16 @_ZN11xercesc_2_717RegularExpression19getPreviousWordTypeEPKtiii(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #3 comdat align 2 !prof !174 {
  %6 = add nsw i32 %4, -1
  %7 = tail call noundef zeroext i16 @_ZN11xercesc_2_717RegularExpression11getWordTypeEPKtiii(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %6) #13
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %5, %9
  %10 = phi i32 [ %11, %9 ], [ %6, %5 ]
  %11 = add nsw i32 %10, -1
  %12 = tail call noundef zeroext i16 @_ZN11xercesc_2_717RegularExpression11getWordTypeEPKtiii(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %11) #13
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %9, label %14, !llvm.loop !397

14:                                               ; preds = %9, %5
  %15 = phi i16 [ %7, %5 ], [ %12, %9 ]
  ret i16 %15
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i16 @_ZN11xercesc_2_717RegularExpression11getCharTypeEt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(104) %0, i16 noundef zeroext %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !174 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !226
  %5 = tail call noundef zeroext i1 @_ZN11xercesc_2_717RegularExpression5isSetEii(i32 noundef %4, i32 noundef 64) #13
  br i1 %5, label %32, label %6

6:                                                ; preds = %2
  %7 = load i32, ptr %3, align 8, !tbaa !226
  %8 = tail call noundef zeroext i1 @_ZN11xercesc_2_717RegularExpression5isSetEii(i32 noundef %7, i32 noundef 32) #13
  br i1 %8, label %9, label %29

9:                                                ; preds = %6
  %10 = load ptr, ptr @_ZN11xercesc_2_717RegularExpression10fWordRangeE, align 8, !tbaa !288
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %24

12:                                               ; preds = %9
  %13 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 13
  %14 = load ptr, ptr %13, align 8, !tbaa !212
  %15 = tail call noundef ptr @_ZN11xercesc_2_712TokenFactory8getRangeEPKtb(ptr noundef nonnull align 8 dereferenceable(128) %14, ptr noundef nonnull @_ZN11xercesc_2_7L11fgUniIsWordE, i1 noundef zeroext false) #13
  store ptr %15, ptr @_ZN11xercesc_2_717RegularExpression10fWordRangeE, align 8, !tbaa !288
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %12
  %18 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %19 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 14
  %20 = load ptr, ptr %19, align 8, !tbaa !213
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %18, ptr noundef nonnull @.str.3, i32 noundef 1607, i32 noundef 293, ptr noundef nonnull @_ZN11xercesc_2_7L11fgUniIsWordE, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %20) #13
          to label %21 unwind label %22

21:                                               ; preds = %17
  tail call void @__cxa_throw(ptr nonnull %18, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

22:                                               ; preds = %17
  %23 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %18) #14
  resume { ptr, i32 } %23

24:                                               ; preds = %12, %9
  %25 = phi ptr [ %15, %12 ], [ %10, %9 ]
  %26 = zext i16 %1 to i32
  %27 = tail call noundef zeroext i1 @_ZN11xercesc_2_710RangeToken5matchEi(ptr noundef nonnull align 8 dereferenceable(72) %25, i32 noundef %26) #13
  %28 = select i1 %27, i16 1, i16 2
  br label %40

29:                                               ; preds = %6
  %30 = tail call noundef zeroext i1 @_ZN11xercesc_2_78RegxUtil10isWordCharEt(i16 noundef zeroext %1) #13
  %31 = zext i1 %30 to i16
  br label %40

32:                                               ; preds = %2
  %33 = tail call noundef zeroext i16 @_ZN11xercesc_2_715XMLUniCharacter7getTypeEt(i16 noundef zeroext %1) #13
  switch i16 %33, label %39 [
    i16 1, label %40
    i16 2, label %40
    i16 3, label %40
    i16 4, label %40
    i16 5, label %40
    i16 10, label %40
    i16 9, label %40
    i16 11, label %40
    i16 8, label %40
    i16 16, label %34
    i16 6, label %34
    i16 7, label %34
    i16 15, label %35
  ]

34:                                               ; preds = %32, %32, %32
  br label %40

35:                                               ; preds = %32
  %36 = add i16 %1, -9
  %37 = icmp ult i16 %36, 5
  %38 = select i1 %37, i16 2, i16 0
  br label %40

39:                                               ; preds = %32
  br label %40

40:                                               ; preds = %35, %32, %32, %32, %32, %32, %32, %32, %32, %32, %39, %34, %29, %24
  %41 = phi i16 [ 2, %39 ], [ 0, %34 ], [ %28, %24 ], [ %31, %29 ], [ 1, %32 ], [ 1, %32 ], [ 1, %32 ], [ 1, %32 ], [ 1, %32 ], [ 1, %32 ], [ 1, %32 ], [ 1, %32 ], [ 1, %32 ], [ %38, %35 ]
  ret i16 %41
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !174 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #13
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_724IllegalArgumentExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !189
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #13
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_75Match11getStartPosEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !174 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::Match", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !272
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %8 = getelementptr inbounds %"class.xercesc_2_7::Match", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !274
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 116, i32 noundef 282, ptr noundef %9) #13
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
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
  %20 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %21 = getelementptr inbounds %"class.xercesc_2_7::Match", ptr %0, i64 0, i32 5
  %22 = load ptr, ptr %21, align 8, !tbaa !274
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %20, ptr noundef nonnull @.str, i32 noundef 119, i32 noundef 6, ptr noundef %22) #13
          to label %23 unwind label %24

23:                                               ; preds = %19
  tail call void @__cxa_throw(ptr nonnull %20, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

24:                                               ; preds = %19
  %25 = landingpad { ptr, i32 }
          cleanup
  br label %30

26:                                               ; preds = %13
  %27 = zext nneg i32 %1 to i64
  %28 = getelementptr inbounds i32, ptr %4, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !201
  ret i32 %29

30:                                               ; preds = %24, %11
  %31 = phi ptr [ %20, %24 ], [ %7, %11 ]
  %32 = phi { ptr, i32 } [ %25, %24 ], [ %12, %11 ]
  tail call void @__cxa_free_exception(ptr %31) #14
  resume { ptr, i32 } %32
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_75Match9getEndPosEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !174 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::Match", ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !275
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %8 = getelementptr inbounds %"class.xercesc_2_7::Match", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !274
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 127, i32 noundef 282, ptr noundef %9) #13
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
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
  %20 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %21 = getelementptr inbounds %"class.xercesc_2_7::Match", ptr %0, i64 0, i32 5
  %22 = load ptr, ptr %21, align 8, !tbaa !274
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %20, ptr noundef nonnull @.str, i32 noundef 130, i32 noundef 6, ptr noundef %22) #13
          to label %23 unwind label %24

23:                                               ; preds = %19
  tail call void @__cxa_throw(ptr nonnull %20, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

24:                                               ; preds = %19
  %25 = landingpad { ptr, i32 }
          cleanup
  br label %30

26:                                               ; preds = %13
  %27 = zext nneg i32 %1 to i64
  %28 = getelementptr inbounds i32, ptr %4, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !201
  ret i32 %29

30:                                               ; preds = %24, %11
  %31 = phi ptr [ %20, %24 ], [ %7, %11 ]
  %32 = phi { ptr, i32 } [ %25, %24 ], [ %12, %11 ]
  tail call void @__cxa_free_exception(ptr %31) #14
  resume { ptr, i32 } %32
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_79XMLString14regionIMatchesEPKtiS2_ij(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_79XMLString13regionMatchesEPKtiS2_ij(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !174 {
  ret ptr @_ZN11xercesc_2_76XMLUni31fgIllegalArgumentException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !174 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !280
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #13
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #13
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #15
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #3 comdat align 2 !prof !174 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #13
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_724IllegalArgumentExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !189
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714ParseExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !174 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %8) #13
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_714ParseExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !189
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) #13
          to label %10 unwind label %11

10:                                               ; preds = %9
  ret void

11:                                               ; preds = %9
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  resume { ptr, i32 } %12
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #8

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714ParseExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_714ParseException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !174 {
  ret ptr @_ZN11xercesc_2_76XMLUni21fgParseException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_714ParseException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !174 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !280
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #13
  invoke void @_ZN11xercesc_2_714ParseExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #13
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #15
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714ParseExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #3 comdat align 2 !prof !174 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #13
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_714ParseExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !189
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717RegularExpression7compileEPKNS_5TokenE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1) local_unnamed_addr #3 align 2 !prof !214 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 9
  %4 = load ptr, ptr %3, align 8, !tbaa !248
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %9, !prof !227

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 4
  store i32 0, ptr %7, align 4, !tbaa !256
  %8 = tail call noundef ptr @_ZN11xercesc_2_717RegularExpression7compileEPKNS_5TokenEPNS_2OpEb(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef null, i1 noundef zeroext false) #13
  store ptr %8, ptr %3, align 8, !tbaa !248
  br label %9

9:                                                ; preds = %2, %6
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_717RegularExpression7compileEPKNS_5TokenEPNS_2OpEb(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %1, ptr noundef %2, i1 noundef zeroext %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !398 {
  %5 = tail call noundef zeroext i16 @_ZNK11xercesc_2_75Token12getTokenTypeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #13
  switch i16 %5, label %24 [
    i16 11, label %6
    i16 0, label %6
    i16 8, label %6
    i16 4, label %6
    i16 5, label %6
    i16 10, label %6
    i16 12, label %6
    i16 7, label %6
    i16 1, label %8
    i16 2, label %10
    i16 3, label %12
    i16 9, label %12
    i16 6, label %14
    i16 20, label %16
    i16 21, label %16
    i16 22, label %18
    i16 23, label %18
    i16 24, label %20
    i16 25, label %20
    i16 26, label %22
  ], !prof !399

6:                                                ; preds = %4, %4, %4, %4, %4, %4, %4, %4
  %7 = tail call noundef ptr @_ZN11xercesc_2_717RegularExpression13compileSingleEPKNS_5TokenEPNS_2OpEt(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %1, ptr noundef %2, i16 noundef zeroext %5) #13
  br label %31

8:                                                ; preds = %4
  %9 = tail call noundef ptr @_ZN11xercesc_2_717RegularExpression13compileConcatEPKNS_5TokenEPNS_2OpEb(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %1, ptr noundef %2, i1 noundef zeroext %3) #13
  br label %31

10:                                               ; preds = %4
  %11 = tail call noundef ptr @_ZN11xercesc_2_717RegularExpression12compileUnionEPKNS_5TokenEPNS_2OpEb(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %1, ptr noundef %2, i1 noundef zeroext %3) #13
  br label %31

12:                                               ; preds = %4, %4
  %13 = tail call noundef ptr @_ZN11xercesc_2_717RegularExpression14compileClosureEPKNS_5TokenEPNS_2OpEbt(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %1, ptr noundef %2, i1 noundef zeroext %3, i16 noundef zeroext %5) #13
  br label %31

14:                                               ; preds = %4
  %15 = tail call noundef ptr @_ZN11xercesc_2_717RegularExpression18compileParenthesisEPKNS_5TokenEPNS_2OpEb(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %1, ptr noundef %2, i1 noundef zeroext %3) #13
  br label %31

16:                                               ; preds = %4, %4
  %17 = tail call noundef ptr @_ZN11xercesc_2_717RegularExpression11compileLookEPKNS_5TokenEPKNS_2OpEbt(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %1, ptr noundef %2, i1 noundef zeroext false, i16 noundef zeroext %5) #13
  br label %31

18:                                               ; preds = %4, %4
  %19 = tail call noundef ptr @_ZN11xercesc_2_717RegularExpression11compileLookEPKNS_5TokenEPKNS_2OpEbt(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %1, ptr noundef %2, i1 noundef zeroext true, i16 noundef zeroext %5) #13
  br label %31

20:                                               ; preds = %4, %4
  %21 = tail call noundef ptr @_ZN11xercesc_2_717RegularExpression11compileLookEPKNS_5TokenEPKNS_2OpEbt(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %1, ptr noundef %2, i1 noundef zeroext %3, i16 noundef zeroext %5) #13
  br label %31

22:                                               ; preds = %4
  %23 = tail call noundef ptr @_ZN11xercesc_2_717RegularExpression16compileConditionEPKNS_5TokenEPNS_2OpEb(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %1, ptr noundef %2, i1 noundef zeroext %3) #13
  br label %31

24:                                               ; preds = %4
  %25 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %26 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 14
  %27 = load ptr, ptr %26, align 8, !tbaa !213
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %25, ptr noundef nonnull @.str.3, i32 noundef 1424, i32 noundef 292, ptr noundef %27) #13
          to label %28 unwind label %29

28:                                               ; preds = %24
  tail call void @__cxa_throw(ptr nonnull %25, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

29:                                               ; preds = %24
  %30 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %25) #14
  resume { ptr, i32 } %30

31:                                               ; preds = %22, %20, %18, %16, %14, %12, %10, %8, %6
  %32 = phi ptr [ %23, %22 ], [ %21, %20 ], [ %19, %18 ], [ %17, %16 ], [ %15, %14 ], [ %13, %12 ], [ %11, %10 ], [ %9, %8 ], [ %7, %6 ]
  ret ptr %32
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i16 @_ZNK11xercesc_2_75Token12getTokenTypeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !400 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::Token", ptr %0, i64 0, i32 1
  %3 = load i16, ptr %2, align 8, !tbaa !401
  ret i16 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_717RegularExpression13compileSingleEPKNS_5TokenEPNS_2OpEt(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3) local_unnamed_addr #3 comdat align 2 !prof !403 {
  switch i16 %3, label %39 [
    i16 11, label %5
    i16 0, label %8
    i16 8, label %15
    i16 4, label %22
    i16 5, label %22
    i16 7, label %41
    i16 10, label %25
    i16 12, label %32
  ], !prof !404

5:                                                ; preds = %4
  %6 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 12
  %7 = tail call noundef ptr @_ZN11xercesc_2_79OpFactory11createDotOpEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #13
  br label %39

8:                                                ; preds = %4
  %9 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 12
  %10 = load ptr, ptr %1, align 8, !tbaa !189
  %11 = getelementptr inbounds ptr, ptr %10, i64 9
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef i32 %12(ptr noundef nonnull align 8 dereferenceable(24) %1) #13
  %14 = tail call noundef ptr @_ZN11xercesc_2_79OpFactory12createCharOpEi(ptr noundef nonnull align 8 dereferenceable(16) %9, i32 noundef %13) #13
  br label %39

15:                                               ; preds = %4
  %16 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 12
  %17 = load ptr, ptr %1, align 8, !tbaa !189
  %18 = getelementptr inbounds ptr, ptr %17, i64 9
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef i32 %19(ptr noundef nonnull align 8 dereferenceable(24) %1) #13
  %21 = tail call noundef ptr @_ZN11xercesc_2_79OpFactory14createAnchorOpEi(ptr noundef nonnull align 8 dereferenceable(16) %16, i32 noundef %20) #13
  br label %39

22:                                               ; preds = %4, %4
  %23 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 12
  %24 = tail call noundef ptr @_ZN11xercesc_2_79OpFactory13createRangeOpEPKNS_5TokenE(ptr noundef nonnull align 8 dereferenceable(16) %23, ptr noundef %1) #13
  br label %39

25:                                               ; preds = %4
  %26 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 12
  %27 = load ptr, ptr %1, align 8, !tbaa !189
  %28 = getelementptr inbounds ptr, ptr %27, i64 8
  %29 = load ptr, ptr %28, align 8
  %30 = tail call noundef ptr %29(ptr noundef nonnull align 8 dereferenceable(24) %1) #13
  %31 = tail call noundef ptr @_ZN11xercesc_2_79OpFactory14createStringOpEPKt(ptr noundef nonnull align 8 dereferenceable(16) %26, ptr noundef %30) #13
  br label %39

32:                                               ; preds = %4
  %33 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 12
  %34 = load ptr, ptr %1, align 8, !tbaa !189
  %35 = getelementptr inbounds ptr, ptr %34, i64 7
  %36 = load ptr, ptr %35, align 8
  %37 = tail call noundef i32 %36(ptr noundef nonnull align 8 dereferenceable(24) %1) #13
  %38 = tail call noundef ptr @_ZN11xercesc_2_79OpFactory21createBackReferenceOpEi(ptr noundef nonnull align 8 dereferenceable(16) %33, i32 noundef %37) #13
  br label %39

39:                                               ; preds = %4, %5, %8, %15, %22, %25, %32
  %40 = phi ptr [ %7, %5 ], [ %14, %8 ], [ %21, %15 ], [ %24, %22 ], [ %31, %25 ], [ %38, %32 ], [ null, %4 ]
  tail call void @_ZN11xercesc_2_72Op9setNextOpEPKS0_(ptr noundef nonnull align 8 dereferenceable(32) %40, ptr noundef %2) #13
  br label %41

41:                                               ; preds = %4, %39
  %42 = phi ptr [ %40, %39 ], [ %2, %4 ]
  ret ptr %42
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_717RegularExpression13compileConcatEPKNS_5TokenEPNS_2OpEb(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3) local_unnamed_addr #3 comdat align 2 !prof !405 {
  %5 = load ptr, ptr %1, align 8, !tbaa !189
  %6 = getelementptr inbounds ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef i32 %7(ptr noundef nonnull align 8 dereferenceable(24) %1) #13
  %9 = icmp sgt i32 %8, 0
  br i1 %3, label %11, label %10, !prof !406

10:                                               ; preds = %4
  br i1 %9, label %12, label %32, !prof !407

11:                                               ; preds = %4
  br i1 %9, label %22, label %32

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %15, %12 ], [ %8, %10 ]
  %14 = phi ptr [ %20, %12 ], [ %2, %10 ]
  %15 = add nsw i32 %13, -1
  %16 = load ptr, ptr %1, align 8, !tbaa !189
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %15) #13
  %20 = tail call noundef ptr @_ZN11xercesc_2_717RegularExpression7compileEPKNS_5TokenEPNS_2OpEb(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %19, ptr noundef %14, i1 noundef zeroext false) #13
  %21 = icmp ugt i32 %13, 1
  br i1 %21, label %12, label %32, !prof !408, !llvm.loop !409

22:                                               ; preds = %11, %22
  %23 = phi i32 [ %30, %22 ], [ 0, %11 ]
  %24 = phi ptr [ %29, %22 ], [ %2, %11 ]
  %25 = load ptr, ptr %1, align 8, !tbaa !189
  %26 = getelementptr inbounds ptr, ptr %25, i64 2
  %27 = load ptr, ptr %26, align 8
  %28 = tail call noundef ptr %27(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %23) #13
  %29 = tail call noundef ptr @_ZN11xercesc_2_717RegularExpression7compileEPKNS_5TokenEPNS_2OpEb(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %28, ptr noundef %24, i1 noundef zeroext true) #13
  %30 = add nuw nsw i32 %23, 1
  %31 = icmp eq i32 %30, %8
  br i1 %31, label %32, label %22, !llvm.loop !410

32:                                               ; preds = %12, %22, %10, %11
  %33 = phi ptr [ %2, %11 ], [ %2, %10 ], [ %29, %22 ], [ %20, %12 ]
  ret ptr %33
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_717RegularExpression12compileUnionEPKNS_5TokenEPNS_2OpEb(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3) local_unnamed_addr #3 comdat align 2 !prof !411 {
  %5 = load ptr, ptr %1, align 8, !tbaa !189
  %6 = getelementptr inbounds ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef i32 %7(ptr noundef nonnull align 8 dereferenceable(24) %1) #13
  %9 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 12
  %10 = tail call noundef ptr @_ZN11xercesc_2_79OpFactory13createUnionOpEi(ptr noundef nonnull align 8 dereferenceable(16) %9, i32 noundef %8) #13
  %11 = icmp sgt i32 %8, 0
  br i1 %11, label %13, label %12, !prof !407

12:                                               ; preds = %13, %4
  ret ptr %10

13:                                               ; preds = %4, %13
  %14 = phi i32 [ %20, %13 ], [ 0, %4 ]
  %15 = load ptr, ptr %1, align 8, !tbaa !189
  %16 = getelementptr inbounds ptr, ptr %15, i64 2
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %14) #13
  %19 = tail call noundef ptr @_ZN11xercesc_2_717RegularExpression7compileEPKNS_5TokenEPNS_2OpEb(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %18, ptr noundef %2, i1 noundef zeroext %3) #13
  tail call void @_ZN11xercesc_2_77UnionOp10addElementEPNS_2OpE(ptr noundef nonnull align 8 dereferenceable(40) %10, ptr noundef %19) #13
  %20 = add nuw nsw i32 %14, 1
  %21 = icmp eq i32 %20, %8
  br i1 %21, label %12, label %13, !prof !412, !llvm.loop !413
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_717RegularExpression14compileClosureEPKNS_5TokenEPNS_2OpEbt(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3, i16 noundef zeroext %4) local_unnamed_addr #3 comdat align 2 !prof !414 {
  %6 = load ptr, ptr %1, align 8, !tbaa !189
  %7 = getelementptr inbounds ptr, ptr %6, i64 2
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 0) #13
  %10 = load ptr, ptr %1, align 8, !tbaa !189
  %11 = getelementptr inbounds ptr, ptr %10, i64 4
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef i32 %12(ptr noundef nonnull align 8 dereferenceable(24) %1) #13
  %14 = load ptr, ptr %1, align 8, !tbaa !189
  %15 = getelementptr inbounds ptr, ptr %14, i64 5
  %16 = load ptr, ptr %15, align 8
  %17 = tail call noundef i32 %16(ptr noundef nonnull align 8 dereferenceable(24) %1) #13
  %18 = icmp sgt i32 %13, -1
  %19 = icmp eq i32 %13, %17
  %20 = and i1 %18, %19
  br i1 %20, label %21, label %29, !prof !415

21:                                               ; preds = %5
  %22 = icmp eq i32 %13, 0
  br i1 %22, label %73, label %23, !prof !416

23:                                               ; preds = %21, %23
  %24 = phi i32 [ %27, %23 ], [ 0, %21 ]
  %25 = phi ptr [ %26, %23 ], [ %2, %21 ]
  %26 = tail call noundef ptr @_ZN11xercesc_2_717RegularExpression7compileEPKNS_5TokenEPNS_2OpEb(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %9, ptr noundef %25, i1 noundef zeroext %3) #13
  %27 = add nuw nsw i32 %24, 1
  %28 = icmp eq i32 %27, %13
  br i1 %28, label %73, label %23, !prof !417, !llvm.loop !418

29:                                               ; preds = %5
  %30 = icmp sgt i32 %13, 0
  %31 = icmp sgt i32 %17, 0
  %32 = tail call i32 @llvm.smax.i32(i32 %13, i32 0)
  %33 = select i1 %31, i32 %32, i32 0
  %34 = sub nsw i32 %17, %33
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %46, !prof !419

36:                                               ; preds = %29
  %37 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 12
  %38 = icmp eq i16 %4, 9
  br label %39

39:                                               ; preds = %36, %39
  %40 = phi i32 [ 0, %36 ], [ %44, %39 ]
  %41 = phi ptr [ %2, %36 ], [ %42, %39 ]
  %42 = tail call noundef ptr @_ZN11xercesc_2_79OpFactory16createQuestionOpEb(ptr noundef nonnull align 8 dereferenceable(16) %37, i1 noundef zeroext %38) #13
  tail call void @_ZN11xercesc_2_72Op9setNextOpEPKS0_(ptr noundef nonnull align 8 dereferenceable(32) %42, ptr noundef %2) #13
  %43 = tail call noundef ptr @_ZN11xercesc_2_717RegularExpression7compileEPKNS_5TokenEPNS_2OpEb(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %9, ptr noundef %41, i1 noundef zeroext %3) #13
  tail call void @_ZN11xercesc_2_77ChildOp8setChildEPKNS_2OpE(ptr noundef nonnull align 8 dereferenceable(40) %42, ptr noundef %43) #13
  %44 = add nuw nsw i32 %40, 1
  %45 = icmp eq i32 %44, %34
  br i1 %45, label %65, label %39, !prof !420, !llvm.loop !421

46:                                               ; preds = %29
  %47 = icmp eq i16 %4, 9
  br i1 %47, label %48, label %51, !prof !422

48:                                               ; preds = %46
  %49 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 12
  %50 = tail call noundef ptr @_ZN11xercesc_2_79OpFactory24createNonGreedyClosureOpEv(ptr noundef nonnull align 8 dereferenceable(16) %49) #13
  br label %62

51:                                               ; preds = %46
  %52 = tail call noundef i32 @_ZNK11xercesc_2_75Token12getMinLengthEv(ptr noundef nonnull align 8 dereferenceable(24) %9) #13
  %53 = icmp eq i32 %52, 0
  %54 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 12
  br i1 %53, label %55, label %60, !prof !422

55:                                               ; preds = %51
  %56 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 4
  %57 = load i32, ptr %56, align 4, !tbaa !256
  %58 = add nsw i32 %57, 1
  store i32 %58, ptr %56, align 4, !tbaa !256
  %59 = tail call noundef ptr @_ZN11xercesc_2_79OpFactory15createClosureOpEi(ptr noundef nonnull align 8 dereferenceable(16) %54, i32 noundef %57) #13
  br label %62

60:                                               ; preds = %51
  %61 = tail call noundef ptr @_ZN11xercesc_2_79OpFactory15createClosureOpEi(ptr noundef nonnull align 8 dereferenceable(16) %54, i32 noundef -1) #13
  br label %62

62:                                               ; preds = %55, %60, %48
  %63 = phi ptr [ %50, %48 ], [ %59, %55 ], [ %61, %60 ]
  tail call void @_ZN11xercesc_2_72Op9setNextOpEPKS0_(ptr noundef nonnull align 8 dereferenceable(32) %63, ptr noundef %2) #13
  %64 = tail call noundef ptr @_ZN11xercesc_2_717RegularExpression7compileEPKNS_5TokenEPNS_2OpEb(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %9, ptr noundef nonnull %63, i1 noundef zeroext %3) #13
  tail call void @_ZN11xercesc_2_77ChildOp8setChildEPKNS_2OpE(ptr noundef nonnull align 8 dereferenceable(40) %63, ptr noundef %64) #13
  br label %65

65:                                               ; preds = %39, %62
  %66 = phi ptr [ %63, %62 ], [ %42, %39 ]
  br i1 %30, label %67, label %73, !prof !419

67:                                               ; preds = %65, %67
  %68 = phi i32 [ %71, %67 ], [ 0, %65 ]
  %69 = phi ptr [ %70, %67 ], [ %66, %65 ]
  %70 = tail call noundef ptr @_ZN11xercesc_2_717RegularExpression7compileEPKNS_5TokenEPNS_2OpEb(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %9, ptr noundef %69, i1 noundef zeroext %3) #13
  %71 = add nuw nsw i32 %68, 1
  %72 = icmp eq i32 %71, %13
  br i1 %72, label %73, label %67, !prof !423, !llvm.loop !424

73:                                               ; preds = %67, %23, %21, %65
  %74 = phi ptr [ %66, %65 ], [ %2, %21 ], [ %26, %23 ], [ %70, %67 ]
  ret ptr %74
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_717RegularExpression18compileParenthesisEPKNS_5TokenEPNS_2OpEb(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3) local_unnamed_addr #3 comdat align 2 !prof !425 {
  %5 = load ptr, ptr %1, align 8, !tbaa !189
  %6 = getelementptr inbounds ptr, ptr %5, i64 6
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef i32 %7(ptr noundef nonnull align 8 dereferenceable(24) %1) #13
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %16, !prof !426

10:                                               ; preds = %4
  %11 = load ptr, ptr %1, align 8, !tbaa !189
  %12 = getelementptr inbounds ptr, ptr %11, i64 2
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 0) #13
  %15 = tail call noundef ptr @_ZN11xercesc_2_717RegularExpression7compileEPKNS_5TokenEPNS_2OpEb(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %14, ptr noundef %2, i1 noundef zeroext %3) #13
  br label %48

16:                                               ; preds = %4
  %17 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 12
  %18 = load ptr, ptr %1, align 8, !tbaa !189
  %19 = getelementptr inbounds ptr, ptr %18, i64 6
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef i32 %20(ptr noundef nonnull align 8 dereferenceable(24) %1) #13
  br i1 %3, label %22, label %35

22:                                               ; preds = %16
  %23 = tail call noundef ptr @_ZN11xercesc_2_79OpFactory15createCaptureOpEiPKNS_2OpE(ptr noundef nonnull align 8 dereferenceable(16) %17, i32 noundef %21, ptr noundef %2) #13
  %24 = load ptr, ptr %1, align 8, !tbaa !189
  %25 = getelementptr inbounds ptr, ptr %24, i64 2
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 0) #13
  %28 = tail call noundef ptr @_ZN11xercesc_2_717RegularExpression7compileEPKNS_5TokenEPNS_2OpEb(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %27, ptr noundef %23, i1 noundef zeroext true) #13
  %29 = load ptr, ptr %1, align 8, !tbaa !189
  %30 = getelementptr inbounds ptr, ptr %29, i64 6
  %31 = load ptr, ptr %30, align 8
  %32 = tail call noundef i32 %31(ptr noundef nonnull align 8 dereferenceable(24) %1) #13
  %33 = sub nsw i32 0, %32
  %34 = tail call noundef ptr @_ZN11xercesc_2_79OpFactory15createCaptureOpEiPKNS_2OpE(ptr noundef nonnull align 8 dereferenceable(16) %17, i32 noundef %33, ptr noundef %28) #13
  br label %48

35:                                               ; preds = %16
  %36 = sub nsw i32 0, %21
  %37 = tail call noundef ptr @_ZN11xercesc_2_79OpFactory15createCaptureOpEiPKNS_2OpE(ptr noundef nonnull align 8 dereferenceable(16) %17, i32 noundef %36, ptr noundef %2) #13
  %38 = load ptr, ptr %1, align 8, !tbaa !189
  %39 = getelementptr inbounds ptr, ptr %38, i64 2
  %40 = load ptr, ptr %39, align 8
  %41 = tail call noundef ptr %40(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 0) #13
  %42 = tail call noundef ptr @_ZN11xercesc_2_717RegularExpression7compileEPKNS_5TokenEPNS_2OpEb(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %41, ptr noundef %37, i1 noundef zeroext false) #13
  %43 = load ptr, ptr %1, align 8, !tbaa !189
  %44 = getelementptr inbounds ptr, ptr %43, i64 6
  %45 = load ptr, ptr %44, align 8
  %46 = tail call noundef i32 %45(ptr noundef nonnull align 8 dereferenceable(24) %1) #13
  %47 = tail call noundef ptr @_ZN11xercesc_2_79OpFactory15createCaptureOpEiPKNS_2OpE(ptr noundef nonnull align 8 dereferenceable(16) %17, i32 noundef %46, ptr noundef %42) #13
  br label %48

48:                                               ; preds = %22, %35, %10
  %49 = phi ptr [ %15, %10 ], [ %34, %22 ], [ %47, %35 ]
  ret ptr %49
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_717RegularExpression11compileLookEPKNS_5TokenEPKNS_2OpEbt(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3, i16 noundef zeroext %4) local_unnamed_addr #3 comdat align 2 !prof !174 {
  %6 = load ptr, ptr %1, align 8, !tbaa !189
  %7 = getelementptr inbounds ptr, ptr %6, i64 2
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 0) #13
  %10 = tail call noundef ptr @_ZN11xercesc_2_717RegularExpression7compileEPKNS_5TokenEPNS_2OpEb(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %9, ptr noundef null, i1 noundef zeroext %3) #13
  switch i16 %4, label %31 [
    i16 20, label %11
    i16 21, label %14
    i16 22, label %17
    i16 23, label %20
    i16 24, label %23
    i16 25, label %26
  ]

11:                                               ; preds = %5
  %12 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 12
  %13 = tail call noundef ptr @_ZN11xercesc_2_79OpFactory12createLookOpEsPKNS_2OpES3_(ptr noundef nonnull align 8 dereferenceable(16) %12, i16 noundef signext 20, ptr noundef %2, ptr noundef %10) #13
  br label %31

14:                                               ; preds = %5
  %15 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 12
  %16 = tail call noundef ptr @_ZN11xercesc_2_79OpFactory12createLookOpEsPKNS_2OpES3_(ptr noundef nonnull align 8 dereferenceable(16) %15, i16 noundef signext 21, ptr noundef %2, ptr noundef %10) #13
  br label %31

17:                                               ; preds = %5
  %18 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 12
  %19 = tail call noundef ptr @_ZN11xercesc_2_79OpFactory12createLookOpEsPKNS_2OpES3_(ptr noundef nonnull align 8 dereferenceable(16) %18, i16 noundef signext 22, ptr noundef %2, ptr noundef %10) #13
  br label %31

20:                                               ; preds = %5
  %21 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 12
  %22 = tail call noundef ptr @_ZN11xercesc_2_79OpFactory12createLookOpEsPKNS_2OpES3_(ptr noundef nonnull align 8 dereferenceable(16) %21, i16 noundef signext 23, ptr noundef %2, ptr noundef %10) #13
  br label %31

23:                                               ; preds = %5
  %24 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 12
  %25 = tail call noundef ptr @_ZN11xercesc_2_79OpFactory19createIndependentOpEPKNS_2OpES3_(ptr noundef nonnull align 8 dereferenceable(16) %24, ptr noundef %2, ptr noundef %10) #13
  br label %31

26:                                               ; preds = %5
  %27 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 12
  %28 = tail call noundef i32 @_ZNK11xercesc_2_713ModifierToken10getOptionsEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #13
  %29 = tail call noundef i32 @_ZNK11xercesc_2_713ModifierToken14getOptionsMaskEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #13
  %30 = tail call noundef ptr @_ZN11xercesc_2_79OpFactory16createModifierOpEPKNS_2OpES3_ii(ptr noundef nonnull align 8 dereferenceable(16) %27, ptr noundef %2, ptr noundef %10, i32 noundef %28, i32 noundef %29) #13
  br label %31

31:                                               ; preds = %5, %26, %23, %20, %17, %14, %11
  %32 = phi ptr [ null, %5 ], [ %30, %26 ], [ %25, %23 ], [ %22, %20 ], [ %19, %17 ], [ %16, %14 ], [ %13, %11 ]
  ret ptr %32
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_717RegularExpression16compileConditionEPKNS_5TokenEPNS_2OpEb(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3) local_unnamed_addr #3 comdat align 2 !prof !174 {
  %5 = tail call noundef ptr @_ZNK11xercesc_2_714ConditionToken17getConditionTokenEv(ptr noundef nonnull align 8 dereferenceable(56) %1) #13
  %6 = load ptr, ptr %1, align 8, !tbaa !189
  %7 = getelementptr inbounds ptr, ptr %6, i64 2
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 0) #13
  %10 = load ptr, ptr %1, align 8, !tbaa !189
  %11 = getelementptr inbounds ptr, ptr %10, i64 2
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 1) #13
  %14 = load ptr, ptr %1, align 8, !tbaa !189
  %15 = getelementptr inbounds ptr, ptr %14, i64 7
  %16 = load ptr, ptr %15, align 8
  %17 = tail call noundef i32 %16(ptr noundef nonnull align 8 dereferenceable(24) %1) #13
  %18 = icmp eq ptr %5, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %4
  %20 = tail call noundef ptr @_ZN11xercesc_2_717RegularExpression7compileEPKNS_5TokenEPNS_2OpEb(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %5, ptr noundef null, i1 noundef zeroext %3) #13
  br label %21

21:                                               ; preds = %4, %19
  %22 = phi ptr [ %20, %19 ], [ null, %4 ]
  %23 = tail call noundef ptr @_ZN11xercesc_2_717RegularExpression7compileEPKNS_5TokenEPNS_2OpEb(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %9, ptr noundef %2, i1 noundef zeroext %3) #13
  %24 = icmp eq ptr %13, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = tail call noundef ptr @_ZN11xercesc_2_717RegularExpression7compileEPKNS_5TokenEPNS_2OpEb(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %13, ptr noundef %2, i1 noundef zeroext %3) #13
  br label %27

27:                                               ; preds = %21, %25
  %28 = phi ptr [ %26, %25 ], [ null, %21 ]
  %29 = getelementptr inbounds %"class.xercesc_2_7::RegularExpression", ptr %0, i64 0, i32 12
  %30 = tail call noundef ptr @_ZN11xercesc_2_79OpFactory17createConditionOpEPKNS_2OpEiS3_S3_S3_(ptr noundef nonnull align 8 dereferenceable(16) %29, ptr noundef %2, i32 noundef %17, ptr noundef %22, ptr noundef %23, ptr noundef %28) #13
  ret ptr %30
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_79OpFactory11createDotOpEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_79OpFactory12createCharOpEi(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_79OpFactory14createAnchorOpEi(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_79OpFactory13createRangeOpEPKNS_5TokenE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_79OpFactory14createStringOpEPKt(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_79OpFactory21createBackReferenceOpEi(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_72Op9setNextOpEPKS0_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !427 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::Op", ptr %0, i64 0, i32 3
  store ptr %1, ptr %3, align 8, !tbaa !371
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_79OpFactory13createUnionOpEi(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_77UnionOp10addElementEPNS_2OpE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_79OpFactory16createQuestionOpEb(ptr noundef nonnull align 8 dereferenceable(16), i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_77ChildOp8setChildEPKNS_2OpE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_79OpFactory24createNonGreedyClosureOpEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef i32 @_ZNK11xercesc_2_75Token12getMinLengthEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_79OpFactory15createClosureOpEi(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_79OpFactory15createCaptureOpEiPKNS_2OpE(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_79OpFactory12createLookOpEsPKNS_2OpES3_(ptr noundef nonnull align 8 dereferenceable(16), i16 noundef signext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_79OpFactory19createIndependentOpEPKNS_2OpES3_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_79OpFactory16createModifierOpEPKNS_2OpES3_ii(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_713ModifierToken10getOptionsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #5 comdat align 2 !prof !174 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ModifierToken", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !428
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_713ModifierToken14getOptionsMaskEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #5 comdat align 2 !prof !174 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ModifierToken", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !430
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_714ConditionToken17getConditionTokenEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #5 comdat align 2 !prof !174 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ConditionToken", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !431
  ret ptr %3
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_79OpFactory17createConditionOpEPKNS_2OpEiS3_S3_S3_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_79XMLString7isDigitEt(i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_79XMLString8parseIntEPKtPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %0, i16 noundef zeroext %1) local_unnamed_addr #3 comdat align 2 !prof !433 {
  %3 = load i32, ptr %0, align 8, !tbaa !336
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !338
  %6 = icmp eq i32 %3, %5
  br i1 %6, label %7, label %9, !prof !434

7:                                                ; preds = %2
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 1) #13
  %8 = load i32, ptr %0, align 8, !tbaa !336
  br label %9

9:                                                ; preds = %7, %2
  %10 = phi i32 [ %8, %7 ], [ %3, %2 ]
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !342
  %13 = add i32 %10, 1
  store i32 %13, ptr %0, align 8, !tbaa !336
  %14 = zext i32 %10 to i64
  %15 = getelementptr inbounds i16, ptr %12, i64 %14
  store i16 %1, ptr %15, align 2, !tbaa !175
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_712TokenFactory11createRangeEb(ptr noundef nonnull align 8 dereferenceable(128), i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_75Token21analyzeFirstCharacterEPNS_10RangeTokenEiPNS_12TokenFactoryE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710RangeToken9createMapEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #3 comdat align 2 !prof !435 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !436
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6, !prof !438

5:                                                ; preds = %1
  tail call void @_ZN11xercesc_2_710RangeToken11doCreateMapEv(ptr noundef nonnull align 8 dereferenceable(72) %0) #13
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_78RegxUtil21decomposeToSurrogatesEiPNS_13MemoryManagerE(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79BMPatternC1EPKtibPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_75Token15findFixedStringEiRi(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710RangeToken11doCreateMapEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_712TokenFactory8getRangeEPKtb(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #3 comdat align 2 !prof !439 {
  %4 = tail call noundef ptr @_ZN11xercesc_2_712TokenFactory14staticGetRangeEPKtb(ptr noundef %1, i1 noundef zeroext %2) #13
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_78RegxUtil10isWordCharEt(i16 noundef zeroext %0) local_unnamed_addr #5 comdat align 2 !prof !174 {
  %2 = icmp eq i16 %0, 95
  %3 = add i16 %0, -48
  %4 = icmp ult i16 %3, 10
  %5 = or i1 %2, %4
  %6 = and i16 %0, -33
  %7 = add i16 %6, -65
  %8 = icmp ult i16 %7, 26
  %9 = or i1 %5, %8
  ret i1 %9
}

; Function Attrs: optsize
declare noundef zeroext i16 @_ZN11xercesc_2_715XMLUniCharacter7getTypeEt(i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline optsize uwtable
define internal void @_GLOBAL__sub_I_RegularExpression.cpp() #1 section ".text.startup" {
  tail call fastcc void @__cxx_global_var_init()
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #12

attributes #0 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nosync nounwind memory(none) }
attributes #8 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { optsize }
attributes #14 = { nounwind }
attributes #15 = { nounwind optsize }
attributes #16 = { noreturn nounwind }
attributes #17 = { noreturn }
attributes #18 = { builtin nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!173}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 545138346841}
!4 = !{!"MaxCount", i64 89343718472}
!5 = !{!"MaxInternalCount", i64 30012997642}
!6 = !{!"MaxFunctionCount", i64 89343718472}
!7 = !{!"NumCounts", i64 49244}
!8 = !{!"NumFunctions", i64 27305}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 89343718472, i32 1}
!14 = !{i32 100000, i64 89343718472, i32 1}
!15 = !{i32 200000, i64 33857387535, i32 2}
!16 = !{i32 300000, i64 30137156670, i32 4}
!17 = !{i32 400000, i64 28792558693, i32 6}
!18 = !{i32 500000, i64 16886835304, i32 8}
!19 = !{i32 600000, i64 16826917200, i32 11}
!20 = !{i32 700000, i64 13167999625, i32 15}
!21 = !{i32 800000, i64 2443628737, i32 28}
!22 = !{i32 900000, i64 555646850, i32 77}
!23 = !{i32 950000, i64 134227650, i32 195}
!24 = !{i32 990000, i64 30109074, i32 515}
!25 = !{i32 999000, i64 1000482, i32 1252}
!26 = !{i32 999900, i64 150186, i32 2316}
!27 = !{i32 999990, i64 20523, i32 3051}
!28 = !{i32 999999, i64 1160, i32 3778}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{i32 5, !"CG Profile", !35}
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172}
!36 = !{ptr @_ZN11xercesc_2_717RegularExpression7ContextC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 322702}
!37 = !{ptr @_ZN11xercesc_2_717RegularExpression7Context6nextChERiS2_s, ptr @_ZN11xercesc_2_78RegxUtil15isHighSurrogateEt, i64 5495295}
!38 = !{ptr @_ZN11xercesc_2_717RegularExpression7Context6nextChERiS2_s, ptr @_ZN11xercesc_2_78RegxUtil14isLowSurrogateEt, i64 5495294}
!39 = !{ptr @_ZN11xercesc_2_717RegularExpression7cleanUpEv, ptr @_ZN11xercesc_2_79BMPatternD1Ev, i64 6}
!40 = !{ptr @_ZN11xercesc_2_717RegularExpression7cleanUpEv, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 12}
!41 = !{ptr @_ZN11xercesc_2_717RegularExpression7cleanUpEv, ptr @_ZN11xercesc_2_712TokenFactoryD1Ev, i64 6}
!42 = !{ptr @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 52059}
!43 = !{ptr @_ZN11xercesc_2_717RegularExpression10setPatternEPKtS2_, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 20}
!44 = !{ptr @_ZN11xercesc_2_717RegularExpression10setPatternEPKtS2_, ptr @_ZN11xercesc_2_712TokenFactoryC1EPNS_13MemoryManagerE, i64 10}
!45 = !{ptr @_ZN11xercesc_2_717RegularExpression10setPatternEPKtS2_, ptr @_ZN11xercesc_2_717RegularExpression12parseOptionsEPKt, i64 10}
!46 = !{ptr @_ZN11xercesc_2_717RegularExpression10setPatternEPKtS2_, ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE, i64 10}
!47 = !{ptr @_ZN11xercesc_2_717RegularExpression10setPatternEPKtS2_, ptr @_ZN11xercesc_2_717RegularExpression5isSetEii, i64 10}
!48 = !{ptr @_ZN11xercesc_2_717RegularExpression10setPatternEPKtS2_, ptr @_ZN11xercesc_2_718ParserForXMLSchemaC1EPNS_13MemoryManagerE, i64 9}
!49 = !{ptr @_ZN11xercesc_2_717RegularExpression10setPatternEPKtS2_, ptr @_ZN11xercesc_2_710RegxParserC1EPNS_13MemoryManagerE, i64 1}
!50 = !{ptr @_ZN11xercesc_2_717RegularExpression10setPatternEPKtS2_, ptr @_ZN11xercesc_2_710RegxParser15setTokenFactoryEPNS_12TokenFactoryE, i64 10}
!51 = !{ptr @_ZN11xercesc_2_717RegularExpression10setPatternEPKtS2_, ptr @_ZN11xercesc_2_77JanitorINS_10RegxParserEEC2EPS1_, i64 10}
!52 = !{ptr @_ZN11xercesc_2_717RegularExpression10setPatternEPKtS2_, ptr @_ZN11xercesc_2_710RegxParser5parseEPKti, i64 10}
!53 = !{ptr @_ZN11xercesc_2_717RegularExpression10setPatternEPKtS2_, ptr @_ZNK11xercesc_2_710RegxParser10getNoParenEv, i64 10}
!54 = !{ptr @_ZN11xercesc_2_717RegularExpression10setPatternEPKtS2_, ptr @_ZNK11xercesc_2_710RegxParser17hasBackReferencesEv, i64 10}
!55 = !{ptr @_ZN11xercesc_2_717RegularExpression10setPatternEPKtS2_, ptr @_ZN11xercesc_2_717RegularExpression7prepareEv, i64 10}
!56 = !{ptr @_ZN11xercesc_2_717RegularExpression10setPatternEPKtS2_, ptr @_ZN11xercesc_2_77JanitorINS_10RegxParserEED2Ev, i64 10}
!57 = !{ptr @_ZN11xercesc_2_712ArrayJanitorItED2Ev, ptr @_ZN11xercesc_2_712ArrayJanitorItE5resetEPt, i64 243874}
!58 = !{ptr @_ZN11xercesc_2_712ArrayJanitorItE5resetEPt, ptr @_ZdaPv, i64 1}
!59 = !{ptr @_ZN11xercesc_2_717RegularExpressionC2EPKtS2_PNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 10}
!60 = !{ptr @_ZN11xercesc_2_717RegularExpressionC2EPKtS2_PNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79OpFactoryC1EPNS_13MemoryManagerE, i64 10}
!61 = !{ptr @_ZN11xercesc_2_717RegularExpressionC2EPKtS2_PNS_13MemoryManagerE, ptr @_ZN11xercesc_2_717JanitorMemFunCallINS_17RegularExpressionEEC2EPS1_MS1_FvvE, i64 10}
!62 = !{ptr @_ZN11xercesc_2_717RegularExpressionC2EPKtS2_PNS_13MemoryManagerE, ptr @_ZN11xercesc_2_717RegularExpression10setPatternEPKtS2_, i64 10}
!63 = !{ptr @_ZN11xercesc_2_717RegularExpressionC2EPKtS2_PNS_13MemoryManagerE, ptr @_ZN11xercesc_2_717JanitorMemFunCallINS_17RegularExpressionEE7releaseEv, i64 10}
!64 = !{ptr @_ZN11xercesc_2_717RegularExpressionC2EPKtS2_PNS_13MemoryManagerE, ptr @_ZN11xercesc_2_717JanitorMemFunCallINS_17RegularExpressionEED2Ev, i64 10}
!65 = !{ptr @_ZN11xercesc_2_717RegularExpressionD2Ev, ptr @_ZN11xercesc_2_717RegularExpression7cleanUpEv, i64 10}
!66 = !{ptr @_ZN11xercesc_2_717RegularExpressionD2Ev, ptr @_ZN11xercesc_2_79OpFactoryD1Ev, i64 10}
!67 = !{ptr @_ZN11xercesc_2_717RegularExpression12parseOptionsEPKt, ptr @_ZN11xercesc_2_79XMLString9stringLenEPKt, i64 9}
!68 = !{ptr @_ZN11xercesc_2_717RegularExpression12parseOptionsEPKt, ptr @_ZN11xercesc_2_717RegularExpression14getOptionValueEt, i64 9}
!69 = !{ptr @_ZN11xercesc_2_717RegularExpression12parseOptionsEPKt, ptr @__cxa_allocate_exception, i64 1}
!70 = !{ptr @_ZN11xercesc_2_717RegularExpression12parseOptionsEPKt, ptr @_ZN11xercesc_2_714ParseExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE, i64 1}
!71 = !{ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79XMLString9stringLenEPKt, i64 400185}
!72 = !{ptr @_ZN11xercesc_2_77JanitorINS_10RegxParserEEC2EPS1_, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 10}
!73 = !{ptr @_ZN11xercesc_2_717RegularExpression7prepareEv, ptr @_ZN11xercesc_2_717RegularExpression7compileEPKNS_5TokenE, i64 10}
!74 = !{ptr @_ZN11xercesc_2_717RegularExpression7prepareEv, ptr @_ZNK11xercesc_2_75Token12getMinLengthEv, i64 10}
!75 = !{ptr @_ZN11xercesc_2_717RegularExpression7prepareEv, ptr @_ZN11xercesc_2_717RegularExpression5isSetEii, i64 31}
!76 = !{ptr @_ZN11xercesc_2_717RegularExpression7prepareEv, ptr @_ZN11xercesc_2_712TokenFactory11createRangeEb, i64 1}
!77 = !{ptr @_ZN11xercesc_2_717RegularExpression7prepareEv, ptr @_ZN11xercesc_2_75Token21analyzeFirstCharacterEPNS_10RangeTokenEiPNS_12TokenFactoryE, i64 1}
!78 = !{ptr @_ZN11xercesc_2_717RegularExpression7prepareEv, ptr @_ZN11xercesc_2_710RangeToken9createMapEv, i64 1}
!79 = !{ptr @_ZN11xercesc_2_717RegularExpression7prepareEv, ptr @_ZNK11xercesc_2_72Op9getNextOpEv, i64 9}
!80 = !{ptr @_ZN11xercesc_2_717RegularExpression7prepareEv, ptr @_ZNK11xercesc_2_72Op9getOpTypeEv, i64 5}
!81 = !{ptr @_ZN11xercesc_2_717RegularExpression7prepareEv, ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE, i64 1}
!82 = !{ptr @_ZN11xercesc_2_717RegularExpression7prepareEv, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 1}
!83 = !{ptr @_ZN11xercesc_2_717RegularExpression7prepareEv, ptr @_ZN11xercesc_2_79BMPatternC1EPKtibPNS_13MemoryManagerE, i64 1}
!84 = !{ptr @_ZN11xercesc_2_77JanitorINS_10RegxParserEED2Ev, ptr @_ZN11xercesc_2_77JanitorINS_10RegxParserEE5resetEPS1_, i64 10}
!85 = !{ptr @_ZN11xercesc_2_717RegularExpression7matchesEPKtiiPNS_5MatchEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_717RegularExpression7ContextC2EPNS_13MemoryManagerE, i64 322702}
!86 = !{ptr @_ZN11xercesc_2_717RegularExpression7matchesEPKtiiPNS_5MatchEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79XMLString9stringLenEPKt, i64 322702}
!87 = !{ptr @_ZN11xercesc_2_717RegularExpression7matchesEPKtiiPNS_5MatchEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_717RegularExpression7Context5resetEPKtiiii, i64 322702}
!88 = !{ptr @_ZN11xercesc_2_717RegularExpression7matchesEPKtiiPNS_5MatchEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_75Match11setNoGroupsEi, i64 2}
!89 = !{ptr @_ZN11xercesc_2_717RegularExpression7matchesEPKtiiPNS_5MatchEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 1}
!90 = !{ptr @_ZN11xercesc_2_717RegularExpression7matchesEPKtiiPNS_5MatchEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_75MatchC1EPNS_13MemoryManagerE, i64 1}
!91 = !{ptr @_ZN11xercesc_2_717RegularExpression7matchesEPKtiiPNS_5MatchEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_717RegularExpression5isSetEii, i64 322702}
!92 = !{ptr @_ZN11xercesc_2_717RegularExpression7matchesEPKtiiPNS_5MatchEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_717RegularExpression5matchEPNS0_7ContextEPKNS_2OpEis, i64 322703}
!93 = !{ptr @_ZN11xercesc_2_717RegularExpression7matchesEPKtiiPNS_5MatchEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_75Match11setStartPosEii, i64 1}
!94 = !{ptr @_ZN11xercesc_2_717RegularExpression7matchesEPKtiiPNS_5MatchEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_75Match9setEndPosEii, i64 1}
!95 = !{ptr @_ZN11xercesc_2_717RegularExpression7matchesEPKtiiPNS_5MatchEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79BMPattern7matchesEPKtii, i64 1}
!96 = !{ptr @_ZN11xercesc_2_717RegularExpression7matchesEPKtiiPNS_5MatchEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_717RegularExpression7Context6nextChERiS2_s, i64 1}
!97 = !{ptr @_ZN11xercesc_2_717RegularExpression7matchesEPKtiiPNS_5MatchEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_710RangeToken5matchEi, i64 1}
!98 = !{ptr @_ZN11xercesc_2_717RegularExpression7matchesEPKtiiPNS_5MatchEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_717RegularExpression7ContextD2Ev, i64 322702}
!99 = !{ptr @_ZN11xercesc_2_717RegularExpression7matchesEPKtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79XMLString9stringLenEPKt, i64 322702}
!100 = !{ptr @_ZN11xercesc_2_717RegularExpression7matchesEPKtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_717RegularExpression7matchesEPKtiiPNS_5MatchEPNS_13MemoryManagerE, i64 322702}
!101 = !{ptr @_ZN11xercesc_2_717RegularExpression5matchEPNS0_7ContextEPKNS_2OpEis, ptr @_ZN11xercesc_2_717RegularExpression5isSetEii, i64 4179174}
!102 = !{ptr @_ZN11xercesc_2_717RegularExpression5matchEPNS0_7ContextEPKNS_2OpEis, ptr @_ZNK11xercesc_2_72Op9getOpTypeEv, i64 11236656}
!103 = !{ptr @_ZN11xercesc_2_717RegularExpression5matchEPNS0_7ContextEPKNS_2OpEis, ptr @_ZN11xercesc_2_717RegularExpression9matchCharEPNS0_7ContextEiRisb, i64 1395678}
!104 = !{ptr @_ZN11xercesc_2_717RegularExpression5matchEPNS0_7ContextEPKNS_2OpEis, ptr @_ZNK11xercesc_2_72Op9getNextOpEv, i64 7272190}
!105 = !{ptr @_ZN11xercesc_2_717RegularExpression5matchEPNS0_7ContextEPKNS_2OpEis, ptr @_ZN11xercesc_2_717RegularExpression8matchDotEPNS0_7ContextERis, i64 3105820}
!106 = !{ptr @_ZN11xercesc_2_717RegularExpression5matchEPNS0_7ContextEPKNS_2OpEis, ptr @_ZN11xercesc_2_717RegularExpression10matchRangeEPNS0_7ContextEPKNS_2OpERisb, i64 1563636}
!107 = !{ptr @_ZN11xercesc_2_717RegularExpression5matchEPNS0_7ContextEPKNS_2OpEis, ptr @_ZN11xercesc_2_717RegularExpression11matchAnchorEPNS0_7ContextEii, i64 1}
!108 = !{ptr @_ZN11xercesc_2_717RegularExpression5matchEPNS0_7ContextEPKNS_2OpEis, ptr @_ZN11xercesc_2_717RegularExpression18matchBackReferenceEPNS0_7ContextEiRisb, i64 1}
!109 = !{ptr @_ZN11xercesc_2_717RegularExpression5matchEPNS0_7ContextEPKNS_2OpEis, ptr @_ZN11xercesc_2_717RegularExpression11matchStringEPNS0_7ContextEPKtRisb, i64 1298083}
!110 = !{ptr @_ZN11xercesc_2_717RegularExpression5matchEPNS0_7ContextEPKNS_2OpEis, ptr @_ZN11xercesc_2_717RegularExpression5matchEPNS0_7ContextEPKNS_2OpEis, i64 3719495}
!111 = !{ptr @_ZN11xercesc_2_717RegularExpression5matchEPNS0_7ContextEPKNS_2OpEis, ptr @_ZN11xercesc_2_717RegularExpression10matchUnionEPNS0_7ContextEPKNS_2OpEis, i64 153935}
!112 = !{ptr @_ZN11xercesc_2_717RegularExpression5matchEPNS0_7ContextEPKNS_2OpEis, ptr @_ZN11xercesc_2_717RegularExpression13matchModifierEPNS0_7ContextEPKNS_2OpEis, i64 1}
!113 = !{ptr @_ZN11xercesc_2_717RegularExpression5matchEPNS0_7ContextEPKNS_2OpEis, ptr @_ZN11xercesc_2_717RegularExpression14matchConditionEPNS0_7ContextEPKNS_2OpEis, i64 1}
!114 = !{ptr @_ZN11xercesc_2_716RefArrayVectorOfItEC2EjbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_715BaseRefVectorOfItEC2EjbPNS_13MemoryManagerE, i64 188746}
!115 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfItE10addElementEPt, ptr @_ZN11xercesc_2_715BaseRefVectorOfItE19ensureExtraCapacityEj, i64 188992}
!116 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfItEC2EjbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 188746}
!117 = !{ptr @_ZN11xercesc_2_716RefArrayVectorOfItED2Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfItED2Ev, i64 188746}
!118 = !{ptr @_ZN11xercesc_2_716RefArrayVectorOfItE12setElementAtEPtj, ptr @__cxa_allocate_exception, i64 1}
!119 = !{ptr @_ZN11xercesc_2_716RefArrayVectorOfItE12setElementAtEPtj, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!120 = !{ptr @_ZN11xercesc_2_716RefArrayVectorOfItE12setElementAtEPtj, ptr @__cxa_throw, i64 1}
!121 = !{ptr @_ZN11xercesc_2_716RefArrayVectorOfItE12setElementAtEPtj, ptr @__cxa_free_exception, i64 1}
!122 = !{ptr @_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 496321}
!123 = !{ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKt, ptr @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj, i64 3}
!124 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj, ptr @__cxa_allocate_exception, i64 1}
!125 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!126 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj, ptr @__cxa_throw, i64 1}
!127 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj, ptr @__cxa_free_exception, i64 1}
!128 = !{ptr @_ZN11xercesc_2_717RegularExpression9matchCharEPNS0_7ContextEiRisb, ptr @_ZN11xercesc_2_717RegularExpression7Context6nextChERiS2_s, i64 1303089}
!129 = !{ptr @_ZN11xercesc_2_717RegularExpression9matchCharEPNS0_7ContextEiRisb, ptr @_ZN11xercesc_2_717RegularExpression15matchIgnoreCaseEii, i64 1}
!130 = !{ptr @_ZN11xercesc_2_717RegularExpression8matchDotEPNS0_7ContextERis, ptr @_ZN11xercesc_2_717RegularExpression7Context6nextChERiS2_s, i64 2891169}
!131 = !{ptr @_ZN11xercesc_2_717RegularExpression8matchDotEPNS0_7ContextERis, ptr @_ZN11xercesc_2_717RegularExpression5isSetEii, i64 2891168}
!132 = !{ptr @_ZN11xercesc_2_717RegularExpression8matchDotEPNS0_7ContextERis, ptr @_ZN11xercesc_2_78RegxUtil9isEOLCharEt, i64 2891167}
!133 = !{ptr @_ZN11xercesc_2_717RegularExpression10matchRangeEPNS0_7ContextEPKNS_2OpERisb, ptr @_ZN11xercesc_2_717RegularExpression7Context6nextChERiS2_s, i64 1301030}
!134 = !{ptr @_ZN11xercesc_2_717RegularExpression10matchRangeEPNS0_7ContextEPKNS_2OpERisb, ptr @_ZN11xercesc_2_710RangeToken23getCaseInsensitiveTokenEPNS_12TokenFactoryE, i64 1}
!135 = !{ptr @_ZN11xercesc_2_717RegularExpression10matchRangeEPNS0_7ContextEPKNS_2OpERisb, ptr @_ZN11xercesc_2_710RangeToken5matchEi, i64 1301029}
!136 = !{ptr @_ZN11xercesc_2_717RegularExpression11matchStringEPNS0_7ContextEPKtRisb, ptr @_ZN11xercesc_2_79XMLString9stringLenEPKt, i64 1262724}
!137 = !{ptr @_ZN11xercesc_2_717RegularExpression11matchStringEPNS0_7ContextEPKtRisb, ptr @_ZN11xercesc_2_79XMLString14regionIMatchesEPKtiS2_ij, i64 1}
!138 = !{ptr @_ZN11xercesc_2_717RegularExpression11matchStringEPNS0_7ContextEPKtRisb, ptr @_ZN11xercesc_2_79XMLString13regionMatchesEPKtiS2_ij, i64 928163}
!139 = !{ptr @_ZN11xercesc_2_717RegularExpression10matchUnionEPNS0_7ContextEPKNS_2OpEis, ptr @_ZN11xercesc_2_717RegularExpression5matchEPNS0_7ContextEPKNS_2OpEis, i64 236439}
!140 = !{ptr @_ZN11xercesc_2_717RegularExpression7compileEPKNS_5TokenE, ptr @_ZN11xercesc_2_717RegularExpression7compileEPKNS_5TokenEPNS_2OpEb, i64 9}
!141 = !{ptr @_ZN11xercesc_2_717RegularExpression7compileEPKNS_5TokenEPNS_2OpEb, ptr @_ZNK11xercesc_2_75Token12getTokenTypeEv, i64 124}
!142 = !{ptr @_ZN11xercesc_2_717RegularExpression7compileEPKNS_5TokenEPNS_2OpEb, ptr @_ZN11xercesc_2_717RegularExpression13compileSingleEPKNS_5TokenEPNS_2OpEt, i64 80}
!143 = !{ptr @_ZN11xercesc_2_717RegularExpression7compileEPKNS_5TokenEPNS_2OpEb, ptr @_ZN11xercesc_2_717RegularExpression13compileConcatEPKNS_5TokenEPNS_2OpEb, i64 14}
!144 = !{ptr @_ZN11xercesc_2_717RegularExpression7compileEPKNS_5TokenEPNS_2OpEb, ptr @_ZN11xercesc_2_717RegularExpression12compileUnionEPKNS_5TokenEPNS_2OpEb, i64 3}
!145 = !{ptr @_ZN11xercesc_2_717RegularExpression7compileEPKNS_5TokenEPNS_2OpEb, ptr @_ZN11xercesc_2_717RegularExpression14compileClosureEPKNS_5TokenEPNS_2OpEbt, i64 18}
!146 = !{ptr @_ZN11xercesc_2_717RegularExpression7compileEPKNS_5TokenEPNS_2OpEb, ptr @_ZN11xercesc_2_717RegularExpression18compileParenthesisEPKNS_5TokenEPNS_2OpEb, i64 3}
!147 = !{ptr @_ZN11xercesc_2_717RegularExpression7compileEPKNS_5TokenEPNS_2OpEb, ptr @_ZN11xercesc_2_717RegularExpression11compileLookEPKNS_5TokenEPKNS_2OpEbt, i64 6}
!148 = !{ptr @_ZN11xercesc_2_717RegularExpression7compileEPKNS_5TokenEPNS_2OpEb, ptr @_ZN11xercesc_2_717RegularExpression16compileConditionEPKNS_5TokenEPNS_2OpEb, i64 1}
!149 = !{ptr @_ZN11xercesc_2_717RegularExpression7compileEPKNS_5TokenEPNS_2OpEb, ptr @__cxa_allocate_exception, i64 1}
!150 = !{ptr @_ZN11xercesc_2_717RegularExpression7compileEPKNS_5TokenEPNS_2OpEb, ptr @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!151 = !{ptr @_ZN11xercesc_2_717RegularExpression13compileSingleEPKNS_5TokenEPNS_2OpEt, ptr @_ZN11xercesc_2_79OpFactory11createDotOpEv, i64 12}
!152 = !{ptr @_ZN11xercesc_2_717RegularExpression13compileSingleEPKNS_5TokenEPNS_2OpEt, ptr @_ZN11xercesc_2_79OpFactory12createCharOpEi, i64 13}
!153 = !{ptr @_ZN11xercesc_2_717RegularExpression13compileSingleEPKNS_5TokenEPNS_2OpEt, ptr @_ZN11xercesc_2_79OpFactory14createAnchorOpEi, i64 1}
!154 = !{ptr @_ZN11xercesc_2_717RegularExpression13compileSingleEPKNS_5TokenEPNS_2OpEt, ptr @_ZN11xercesc_2_79OpFactory13createRangeOpEPKNS_5TokenE, i64 48}
!155 = !{ptr @_ZN11xercesc_2_717RegularExpression13compileSingleEPKNS_5TokenEPNS_2OpEt, ptr @_ZN11xercesc_2_79OpFactory14createStringOpEPKt, i64 8}
!156 = !{ptr @_ZN11xercesc_2_717RegularExpression13compileSingleEPKNS_5TokenEPNS_2OpEt, ptr @_ZN11xercesc_2_79OpFactory21createBackReferenceOpEi, i64 1}
!157 = !{ptr @_ZN11xercesc_2_717RegularExpression13compileSingleEPKNS_5TokenEPNS_2OpEt, ptr @_ZN11xercesc_2_72Op9setNextOpEPKS0_, i64 83}
!158 = !{ptr @_ZN11xercesc_2_717RegularExpression13compileConcatEPKNS_5TokenEPNS_2OpEb, ptr @_ZN11xercesc_2_717RegularExpression7compileEPKNS_5TokenEPNS_2OpEb, i64 72}
!159 = !{ptr @_ZN11xercesc_2_717RegularExpression12compileUnionEPKNS_5TokenEPNS_2OpEb, ptr @_ZN11xercesc_2_79OpFactory13createUnionOpEi, i64 3}
!160 = !{ptr @_ZN11xercesc_2_717RegularExpression12compileUnionEPKNS_5TokenEPNS_2OpEb, ptr @_ZN11xercesc_2_717RegularExpression7compileEPKNS_5TokenEPNS_2OpEb, i64 6}
!161 = !{ptr @_ZN11xercesc_2_717RegularExpression12compileUnionEPKNS_5TokenEPNS_2OpEb, ptr @_ZN11xercesc_2_77UnionOp10addElementEPNS_2OpE, i64 6}
!162 = !{ptr @_ZN11xercesc_2_717RegularExpression14compileClosureEPKNS_5TokenEPNS_2OpEbt, ptr @_ZN11xercesc_2_717RegularExpression7compileEPKNS_5TokenEPNS_2OpEb, i64 42}
!163 = !{ptr @_ZN11xercesc_2_717RegularExpression14compileClosureEPKNS_5TokenEPNS_2OpEbt, ptr @_ZN11xercesc_2_79OpFactory16createQuestionOpEb, i64 5}
!164 = !{ptr @_ZN11xercesc_2_717RegularExpression14compileClosureEPKNS_5TokenEPNS_2OpEbt, ptr @_ZN11xercesc_2_72Op9setNextOpEPKS0_, i64 16}
!165 = !{ptr @_ZN11xercesc_2_717RegularExpression14compileClosureEPKNS_5TokenEPNS_2OpEbt, ptr @_ZN11xercesc_2_77ChildOp8setChildEPKNS_2OpE, i64 16}
!166 = !{ptr @_ZN11xercesc_2_717RegularExpression14compileClosureEPKNS_5TokenEPNS_2OpEbt, ptr @_ZN11xercesc_2_79OpFactory24createNonGreedyClosureOpEv, i64 1}
!167 = !{ptr @_ZN11xercesc_2_717RegularExpression14compileClosureEPKNS_5TokenEPNS_2OpEbt, ptr @_ZNK11xercesc_2_75Token12getMinLengthEv, i64 10}
!168 = !{ptr @_ZN11xercesc_2_717RegularExpression14compileClosureEPKNS_5TokenEPNS_2OpEbt, ptr @_ZN11xercesc_2_79OpFactory15createClosureOpEi, i64 10}
!169 = !{ptr @_ZN11xercesc_2_717RegularExpression18compileParenthesisEPKNS_5TokenEPNS_2OpEb, ptr @_ZN11xercesc_2_717RegularExpression7compileEPKNS_5TokenEPNS_2OpEb, i64 2}
!170 = !{ptr @_ZN11xercesc_2_79XMLBuffer6appendEt, ptr @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj, i64 1}
!171 = !{ptr @_ZN11xercesc_2_710RangeToken9createMapEv, ptr @_ZN11xercesc_2_710RangeToken11doCreateMapEv, i64 18}
!172 = !{ptr @_ZN11xercesc_2_712TokenFactory8getRangeEPKtb, ptr @_ZN11xercesc_2_712TokenFactory14staticGetRangeEPKtb, i64 12}
!173 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!174 = !{!"function_entry_count", i64 0}
!175 = !{!176, !176, i64 0}
!176 = !{!"short", !177, i64 0}
!177 = !{!"omnipotent char", !178, i64 0}
!178 = !{!"Simple C++ TBAA"}
!179 = !{!"function_entry_count", i64 322702}
!180 = !{!181, !182, i64 0}
!181 = !{!"_ZTSN11xercesc_2_717RegularExpression7ContextE", !182, i64 0, !183, i64 4, !183, i64 8, !183, i64 12, !183, i64 16, !183, i64 20, !184, i64 24, !184, i64 32, !184, i64 40, !184, i64 48}
!182 = !{!"bool", !177, i64 0}
!183 = !{!"int", !177, i64 0}
!184 = !{!"any pointer", !177, i64 0}
!185 = !{!181, !184, i64 48}
!186 = !{!"function_entry_count", i64 5836268}
!187 = !{!181, !184, i64 24}
!188 = !{!"branch_weights", i32 322703, i32 1}
!189 = !{!190, !190, i64 0}
!190 = !{!"vtable pointer", !178, i64 0}
!191 = !{i8 0, i8 2}
!192 = !{}
!193 = !{!181, !184, i64 32}
!194 = !{!181, !184, i64 40}
!195 = !{!181, !183, i64 20}
!196 = !{!181, !183, i64 4}
!197 = !{!181, !183, i64 8}
!198 = !{!181, !183, i64 12}
!199 = !{!181, !183, i64 16}
!200 = !{!"branch_weights", i32 1, i32 322702}
!201 = !{!183, !183, i64 0}
!202 = !{!"branch_weights", i32 0, i32 1}
!203 = distinct !{!203, !204}
!204 = !{!"llvm.loop.mustprogress"}
!205 = !{!"function_entry_count", i64 5495294}
!206 = !{!"branch_weights", i32 1, i32 5495295}
!207 = !{!"function_entry_count", i64 5495384}
!208 = !{!209, !182, i64 0}
!209 = !{!"_ZTSN11xercesc_2_717RegularExpressionE", !182, i64 0, !182, i64 1, !183, i64 4, !183, i64 8, !183, i64 12, !183, i64 16, !184, i64 24, !184, i64 32, !184, i64 40, !184, i64 48, !184, i64 56, !184, i64 64, !210, i64 72, !184, i64 88, !184, i64 96}
!210 = !{!"_ZTSN11xercesc_2_79OpFactoryE", !184, i64 0, !184, i64 8}
!211 = !{!209, !182, i64 1}
!212 = !{!209, !184, i64 88}
!213 = !{!209, !184, i64 96}
!214 = !{!"function_entry_count", i64 10}
!215 = !{!209, !184, i64 32}
!216 = !{!209, !184, i64 40}
!217 = !{!209, !184, i64 24}
!218 = !{!219, !184, i64 0}
!219 = !{!"_ZTSN11xercesc_2_717JanitorMemFunCallINS_17RegularExpressionEEE", !184, i64 0, !177, i64 8}
!220 = !{!219, !177, i64 8}
!221 = !{!"function_entry_count", i64 52059}
!222 = !{!223, !184, i64 0}
!223 = !{!"_ZTSN11xercesc_2_712ArrayJanitorItEE", !184, i64 0, !184, i64 8}
!224 = !{!223, !184, i64 8}
!225 = !{i32 0, i32 2048}
!226 = !{!209, !183, i64 16}
!227 = !{!"branch_weights", i32 11, i32 1}
!228 = !{!209, !184, i64 56}
!229 = !{!209, !183, i64 4}
!230 = !{!"function_entry_count", i64 243874}
!231 = !{!"branch_weights", i32 191816, i32 52060}
!232 = !{!"branch_weights", i32 1, i32 52060}
!233 = !{!"branch_weights", i32 1, i32 11}
!234 = !{!"branch_weights", i32 175, i32 1}
!235 = !{i32 0, i32 1025}
!236 = distinct !{!236, !204}
!237 = !{!"function_entry_count", i64 558789}
!238 = !{!"branch_weights", i32 158605, i32 400186}
!239 = !{!"function_entry_count", i64 7393087}
!240 = !{!241, !184, i64 64}
!241 = !{!"_ZTSN11xercesc_2_710RegxParserE", !184, i64 8, !182, i64 16, !183, i64 20, !183, i64 24, !183, i64 28, !176, i64 32, !183, i64 36, !176, i64 40, !183, i64 44, !184, i64 48, !184, i64 56, !184, i64 64}
!242 = !{!243, !184, i64 0}
!243 = !{!"_ZTSN11xercesc_2_77JanitorINS_10RegxParserEEE", !184, i64 0}
!244 = !{!241, !183, i64 28}
!245 = !{!241, !182, i64 16}
!246 = !{!209, !183, i64 8}
!247 = !{!209, !184, i64 64}
!248 = !{!209, !184, i64 48}
!249 = !{!"branch_weights", i32 3, i32 9}
!250 = !{!"branch_weights", i32 1, i32 3}
!251 = !{!"function_entry_count", i64 2453164456}
!252 = !{!"branch_weights", i32 1, i32 -1841802839}
!253 = !{!"branch_weights", i32 1150041, i32 -1842952879}
!254 = !{!"branch_weights", i32 408669070, i32 -279908792}
!255 = distinct !{!255, !204}
!256 = !{!209, !183, i64 12}
!257 = distinct !{!257, !204}
!258 = distinct !{!258, !204}
!259 = distinct !{!259, !204}
!260 = !{!"function_entry_count", i64 4179174}
!261 = !{!"branch_weights", i32 1, i32 10930564}
!262 = !{!"branch_weights", i32 1, i32 1357662, i32 3021222, i32 1521044, i32 1, i32 1, i32 1, i32 1262725, i32 3591269, i32 26906, i32 1, i32 1, i32 149742, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1}
!263 = !{!"branch_weights", i32 290044, i32 1067619}
!264 = !{!"branch_weights", i32 2891172, i32 130051}
!265 = !{!"branch_weights", i32 1259143, i32 261902}
!266 = !{!"branch_weights", i32 229967, i32 1032759}
!267 = !{!"branch_weights", i32 1, i32 3591269}
!268 = !{!"branch_weights", i32 1194190, i32 2397080}
!269 = !{!"branch_weights", i32 6691, i32 20216}
!270 = !{!"branch_weights", i32 322702, i32 10607862}
!271 = distinct !{!271, !204}
!272 = !{!273, !184, i64 16}
!273 = !{!"_ZTSN11xercesc_2_75MatchE", !183, i64 8, !183, i64 12, !184, i64 16, !184, i64 24, !184, i64 32}
!274 = !{!273, !184, i64 32}
!275 = !{!273, !184, i64 24}
!276 = !{!"function_entry_count", i64 10930567}
!277 = !{!278, !176, i64 16}
!278 = !{!"_ZTSN11xercesc_2_72OpE", !184, i64 8, !176, i64 16, !184, i64 24}
!279 = !{!"function_entry_count", i64 2891171}
!280 = !{!281, !184, i64 40}
!281 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !282, i64 8, !184, i64 16, !183, i64 24, !184, i64 32, !184, i64 40}
!282 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !177, i64 0}
!283 = distinct !{!283, !204}
!284 = !{!"function_entry_count", i64 188746}
!285 = !{!286, !184, i64 24}
!286 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_5MatchEEE", !182, i64 8, !183, i64 12, !183, i64 16, !184, i64 24, !184, i64 32}
!287 = !{!286, !183, i64 12}
!288 = !{!184, !184, i64 0}
!289 = !{!"function_entry_count", i64 1231717351}
!290 = !{!"branch_weights", i32 621, i32 -1469098093}
!291 = !{!"branch_weights", i32 408901017, i32 1}
!292 = !{!"branch_weights", i32 267, i32 4}
!293 = !{!"branch_weights", i32 1, i32 4}
!294 = !{!"branch_weights", i32 156, i32 112}
!295 = !{!"branch_weights", i32 1, i32 112}
!296 = !{!"branch_weights", i32 1671344, i32 -1427472158}
!297 = !{!"branch_weights", i32 -1834701832, i32 408901017}
!298 = distinct !{!298, !204}
!299 = !{!"function_entry_count", i64 188992}
!300 = !{!301, !184, i64 24}
!301 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfItEE", !182, i64 8, !183, i64 12, !183, i64 16, !184, i64 24, !184, i64 32}
!302 = !{!301, !183, i64 12}
!303 = !{!301, !182, i64 8}
!304 = !{!301, !183, i64 16}
!305 = !{!301, !184, i64 32}
!306 = !{!"branch_weights", i32 1, i32 188746}
!307 = !{!"branch_weights", i32 188746, i32 566295}
!308 = distinct !{!308, !204}
!309 = !{!"branch_weights", i32 7, i32 188741}
!310 = !{!"branch_weights", i32 1, i32 188740}
!311 = !{!"branch_weights", i32 253, i32 188740}
!312 = distinct !{!312, !204}
!313 = !{!"function_entry_count", i64 317171}
!314 = !{!"branch_weights", i32 317172, i32 1}
!315 = !{!"branch_weights", i32 1, i32 317172}
!316 = distinct !{!316, !204}
!317 = distinct !{!317, !204}
!318 = distinct !{!318, !204}
!319 = distinct !{!319, !204}
!320 = distinct !{!320, !204}
!321 = distinct !{!321, !204}
!322 = !{!286, !183, i64 16}
!323 = !{!286, !184, i64 32}
!324 = distinct !{!324, !204}
!325 = !{!"branch_weights", i32 10, i32 188984}
!326 = !{!"branch_weights", i32 1, i32 159}
!327 = !{!"branch_weights", i32 159, i32 1}
!328 = !{!"branch_weights", i32 159, i32 9329}
!329 = distinct !{!329, !204}
!330 = distinct !{!330, !204}
!331 = !{!332, !184, i64 0}
!332 = !{!"_ZTSN11xercesc_2_77JanitorINS_11RefVectorOfINS_5MatchEEEEE", !184, i64 0}
!333 = !{!334, !184, i64 0}
!334 = !{!"_ZTSN11xercesc_2_77JanitorINS_16RefArrayVectorOfItEEEE", !184, i64 0}
!335 = !{!"function_entry_count", i64 496321}
!336 = !{!337, !183, i64 0}
!337 = !{!"_ZTSN11xercesc_2_79XMLBufferE", !183, i64 0, !183, i64 4, !183, i64 8, !182, i64 12, !184, i64 16, !184, i64 24, !184, i64 32}
!338 = !{!337, !183, i64 4}
!339 = !{!337, !183, i64 8}
!340 = !{!337, !182, i64 12}
!341 = !{!337, !184, i64 16}
!342 = !{!337, !184, i64 32}
!343 = !{!273, !183, i64 8}
!344 = !{!"function_entry_count", i64 240751}
!345 = !{!"function_entry_count", i64 789922}
!346 = !{!"branch_weights", i32 1, i32 789923}
!347 = !{!"branch_weights", i32 285, i32 789639}
!348 = !{!"branch_weights", i32 789639, i32 41628304}
!349 = distinct !{!349, !204}
!350 = !{!"branch_weights", i32 789637, i32 3}
!351 = !{!"function_entry_count", i64 2444437052}
!352 = !{!"branch_weights", i32 -1850530243, i32 1}
!353 = distinct !{!353, !204}
!354 = distinct !{!354, !204}
!355 = !{!"function_entry_count", i64 10769804}
!356 = !{!286, !182, i64 8}
!357 = distinct !{!357, !204}
!358 = distinct !{!358, !204}
!359 = distinct !{!359, !204}
!360 = distinct !{!360, !204}
!361 = distinct !{!361, !204}
!362 = !{!"RegularExpression.cpp:_ZN11xercesc_2_7L12localCleanupEv"}
!363 = !{!"branch_weights", i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 11, i32 1}
!364 = !{!"function_entry_count", i64 1357661}
!365 = !{!"branch_weights", i32 1357662, i32 1}
!366 = !{!"branch_weights", i32 138891389, i32 -978465811}
!367 = !{!"branch_weights", i32 1303092, i32 1}
!368 = !{!"branch_weights", i32 1, i32 1303092}
!369 = !{!"branch_weights", i32 290044, i32 1013049}
!370 = !{!"function_entry_count", i64 7074101}
!371 = !{!278, !184, i64 24}
!372 = !{!"function_entry_count", i64 3021221}
!373 = !{!"branch_weights", i32 3021222, i32 1}
!374 = !{!"branch_weights", i32 183595132, i32 -213485102}
!375 = !{!"branch_weights", i32 2891172, i32 1}
!376 = !{!"branch_weights", i32 1, i32 2891172}
!377 = !{!"branch_weights", i32 1073742567, i32 1073741081}
!378 = !{!"function_entry_count", i64 1521043}
!379 = !{!"branch_weights", i32 1521044, i32 1}
!380 = !{!"branch_weights", i32 559071080, i32 -988938259}
!381 = !{!"branch_weights", i32 1301033, i32 1}
!382 = !{!"branch_weights", i32 1, i32 1301033}
!383 = !{!"branch_weights", i32 1259143, i32 41891}
!384 = !{!"function_entry_count", i64 1262724}
!385 = !{!"branch_weights", i32 1262725, i32 1}
!386 = !{!"branch_weights", i32 334561, i32 928165}
!387 = !{!"branch_weights", i32 1, i32 928165}
!388 = !{!"branch_weights", i32 229967, i32 698199}
!389 = !{!"branch_weights", i32 229967, i32 1}
!390 = !{!"function_entry_count", i64 149741}
!391 = !{!"branch_weights", i32 1, i32 127}
!392 = !{!"branch_weights", i32 149742, i32 88559}
!393 = !{!"branch_weights", i32 1, i32 149742}
!394 = !{!"branch_weights", i32 127, i32 30502273}
!395 = distinct !{!395, !204}
!396 = !{i16 0, i16 3}
!397 = distinct !{!397, !204}
!398 = !{!"function_entry_count", i64 124}
!399 = !{!"branch_weights", i32 1, i32 13, i32 14, i32 1, i32 52, i32 1, i32 9, i32 1, i32 2, i32 16, i32 4, i32 20, i32 1, i32 3, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1}
!400 = !{!"function_entry_count", i64 1301478}
!401 = !{!402, !176, i64 8}
!402 = !{!"_ZTSN11xercesc_2_75TokenE", !176, i64 8, !184, i64 16}
!403 = !{!"function_entry_count", i64 85}
!404 = !{!"branch_weights", i32 1, i32 13, i32 14, i32 1, i32 52, i32 1, i32 2, i32 9, i32 1}
!405 = !{!"function_entry_count", i64 15}
!406 = !{!"branch_weights", i32 1, i32 16}
!407 = !{!"branch_weights", i32 127, i32 1}
!408 = !{!"branch_weights", i32 361, i32 127}
!409 = distinct !{!409, !204}
!410 = distinct !{!410, !204}
!411 = !{!"function_entry_count", i64 3}
!412 = !{!"branch_weights", i32 127, i32 129}
!413 = distinct !{!413, !204}
!414 = !{!"function_entry_count", i64 19}
!415 = !{!"branch_weights", i32 54, i32 156}
!416 = !{!"branch_weights", i32 1, i32 191}
!417 = !{!"branch_weights", i32 191, i32 481}
!418 = distinct !{!418, !204}
!419 = !{!"branch_weights", i32 4, i32 12}
!420 = !{!"branch_weights", i32 4, i32 2}
!421 = distinct !{!421, !204}
!422 = !{!"branch_weights", i32 1, i32 12}
!423 = !{!"branch_weights", i32 4, i32 6}
!424 = distinct !{!424, !204}
!425 = !{!"function_entry_count", i64 2}
!426 = !{!"branch_weights", i32 3, i32 1}
!427 = !{!"function_entry_count", i64 100}
!428 = !{!429, !183, i64 24}
!429 = !{!"_ZTSN11xercesc_2_713ModifierTokenE", !402, i64 0, !183, i64 24, !183, i64 28, !184, i64 32}
!430 = !{!429, !183, i64 28}
!431 = !{!432, !184, i64 32}
!432 = !{!"_ZTSN11xercesc_2_714ConditionTokenE", !402, i64 0, !183, i64 24, !184, i64 32, !184, i64 40, !184, i64 48}
!433 = !{!"function_entry_count", i64 7992849}
!434 = !{!"branch_weights", i32 1, i32 7992850}
!435 = !{!"function_entry_count", i64 1301042}
!436 = !{!437, !184, i64 40}
!437 = !{!"_ZTSN11xercesc_2_710RangeTokenE", !402, i64 0, !182, i64 24, !182, i64 25, !183, i64 28, !183, i64 32, !183, i64 36, !184, i64 40, !184, i64 48, !184, i64 56, !184, i64 64}
!438 = !{!"branch_weights", i32 18, i32 1301026}
!439 = !{!"function_entry_count", i64 12}
