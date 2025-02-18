; ModuleID = 'Op.cpp'
source_filename = "Op.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::Op" = type { ptr, ptr, i16, ptr }
%"class.xercesc_2_7::CharOp" = type <{ %"class.xercesc_2_7::Op", i32, [4 x i8] }>
%"class.xercesc_2_7::BaseRefVectorOf" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::UnionOp" = type { %"class.xercesc_2_7::Op", ptr }
%"class.xercesc_2_7::ChildOp" = type { %"class.xercesc_2_7::Op", ptr }
%"class.xercesc_2_7::ModifierOp" = type { %"class.xercesc_2_7::ChildOp", i32, i32 }
%"class.xercesc_2_7::RangeOp" = type { %"class.xercesc_2_7::Op", ptr }
%"class.xercesc_2_7::StringOp" = type { %"class.xercesc_2_7::Op", ptr }
%"class.xercesc_2_7::ConditionOp" = type { %"class.xercesc_2_7::Op", i32, ptr, ptr, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }

$_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_72OpD0Ev = comdat any

$_ZN11xercesc_2_76CharOpD0Ev = comdat any

$_ZN11xercesc_2_77UnionOpD2Ev = comdat any

$_ZN11xercesc_2_77UnionOpD0Ev = comdat any

$_ZN11xercesc_2_77ChildOpD0Ev = comdat any

$_ZN11xercesc_2_710ModifierOpD0Ev = comdat any

$_ZN11xercesc_2_77RangeOpD0Ev = comdat any

$_ZN11xercesc_2_78StringOpD2Ev = comdat any

$_ZN11xercesc_2_78StringOpD0Ev = comdat any

$_ZN11xercesc_2_72OpD2Ev = comdat any

$_ZN11xercesc_2_711ConditionOpD0Ev = comdat any

$_ZN11xercesc_2_716RuntimeExceptionD0Ev = comdat any

$_ZNK11xercesc_2_716RuntimeException7getTypeEv = comdat any

$_ZNK11xercesc_2_716RuntimeException9duplicateEv = comdat any

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_2OpEED2Ev = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_2OpEED0Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_2OpEE12setElementAtEPS1_j = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_2OpEE17removeAllElementsEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_2OpEE15removeElementAtEj = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_2OpEE17removeLastElementEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_2OpEE7cleanupEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_2OpEED2Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_2OpEED0Ev = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_2OpEE19ensureExtraCapacityEj = comdat any

$_ZTSN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTIN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTVN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTVN11xercesc_2_711RefVectorOfINS_2OpEEE = comdat any

$_ZTSN11xercesc_2_711RefVectorOfINS_2OpEEE = comdat any

$_ZTSN11xercesc_2_715BaseRefVectorOfINS_2OpEEE = comdat any

$_ZTIN11xercesc_2_715BaseRefVectorOfINS_2OpEEE = comdat any

$_ZTIN11xercesc_2_711RefVectorOfINS_2OpEEE = comdat any

$_ZTVN11xercesc_2_715BaseRefVectorOfINS_2OpEEE = comdat any

$_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

@_ZTVN11xercesc_2_72OpE = dso_local unnamed_addr constant { [15 x ptr] } { [15 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_72OpE, ptr @_ZN11xercesc_2_72OpD2Ev, ptr @_ZN11xercesc_2_72OpD0Ev, ptr @_ZNK11xercesc_2_72Op7getDataEv, ptr @_ZNK11xercesc_2_72Op8getData2Ev, ptr @_ZNK11xercesc_2_72Op7getSizeEv, ptr @_ZNK11xercesc_2_72Op8getRefNoEv, ptr @_ZNK11xercesc_2_72Op16getConditionFlowEv, ptr @_ZNK11xercesc_2_72Op10getYesFlowEv, ptr @_ZNK11xercesc_2_72Op9getNoFlowEv, ptr @_ZNK11xercesc_2_72Op9elementAtEi, ptr @_ZNK11xercesc_2_72Op8getChildEv, ptr @_ZNK11xercesc_2_72Op8getTokenEv, ptr @_ZNK11xercesc_2_72Op10getLiteralEv] }, align 8
@.str = private unnamed_addr constant [7 x i8] c"Op.cpp\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local constant [34 x i8] c"N11xercesc_2_716RuntimeExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_716RuntimeExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_76CharOpE = dso_local unnamed_addr constant { [15 x ptr] } { [15 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_76CharOpE, ptr @_ZN11xercesc_2_72OpD2Ev, ptr @_ZN11xercesc_2_76CharOpD0Ev, ptr @_ZNK11xercesc_2_76CharOp7getDataEv, ptr @_ZNK11xercesc_2_72Op8getData2Ev, ptr @_ZNK11xercesc_2_72Op7getSizeEv, ptr @_ZNK11xercesc_2_72Op8getRefNoEv, ptr @_ZNK11xercesc_2_72Op16getConditionFlowEv, ptr @_ZNK11xercesc_2_72Op10getYesFlowEv, ptr @_ZNK11xercesc_2_72Op9getNoFlowEv, ptr @_ZNK11xercesc_2_72Op9elementAtEi, ptr @_ZNK11xercesc_2_72Op8getChildEv, ptr @_ZNK11xercesc_2_72Op8getTokenEv, ptr @_ZNK11xercesc_2_72Op10getLiteralEv] }, align 8
@_ZTVN11xercesc_2_77UnionOpE = dso_local unnamed_addr constant { [15 x ptr] } { [15 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_77UnionOpE, ptr @_ZN11xercesc_2_77UnionOpD2Ev, ptr @_ZN11xercesc_2_77UnionOpD0Ev, ptr @_ZNK11xercesc_2_72Op7getDataEv, ptr @_ZNK11xercesc_2_72Op8getData2Ev, ptr @_ZNK11xercesc_2_77UnionOp7getSizeEv, ptr @_ZNK11xercesc_2_72Op8getRefNoEv, ptr @_ZNK11xercesc_2_72Op16getConditionFlowEv, ptr @_ZNK11xercesc_2_72Op10getYesFlowEv, ptr @_ZNK11xercesc_2_72Op9getNoFlowEv, ptr @_ZNK11xercesc_2_77UnionOp9elementAtEi, ptr @_ZNK11xercesc_2_72Op8getChildEv, ptr @_ZNK11xercesc_2_72Op8getTokenEv, ptr @_ZNK11xercesc_2_72Op10getLiteralEv] }, align 8
@_ZTVN11xercesc_2_77ChildOpE = dso_local unnamed_addr constant { [15 x ptr] } { [15 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_77ChildOpE, ptr @_ZN11xercesc_2_72OpD2Ev, ptr @_ZN11xercesc_2_77ChildOpD0Ev, ptr @_ZNK11xercesc_2_72Op7getDataEv, ptr @_ZNK11xercesc_2_72Op8getData2Ev, ptr @_ZNK11xercesc_2_72Op7getSizeEv, ptr @_ZNK11xercesc_2_72Op8getRefNoEv, ptr @_ZNK11xercesc_2_72Op16getConditionFlowEv, ptr @_ZNK11xercesc_2_72Op10getYesFlowEv, ptr @_ZNK11xercesc_2_72Op9getNoFlowEv, ptr @_ZNK11xercesc_2_72Op9elementAtEi, ptr @_ZNK11xercesc_2_77ChildOp8getChildEv, ptr @_ZNK11xercesc_2_72Op8getTokenEv, ptr @_ZNK11xercesc_2_72Op10getLiteralEv] }, align 8
@_ZTVN11xercesc_2_710ModifierOpE = dso_local unnamed_addr constant { [15 x ptr] } { [15 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_710ModifierOpE, ptr @_ZN11xercesc_2_72OpD2Ev, ptr @_ZN11xercesc_2_710ModifierOpD0Ev, ptr @_ZNK11xercesc_2_710ModifierOp7getDataEv, ptr @_ZNK11xercesc_2_710ModifierOp8getData2Ev, ptr @_ZNK11xercesc_2_72Op7getSizeEv, ptr @_ZNK11xercesc_2_72Op8getRefNoEv, ptr @_ZNK11xercesc_2_72Op16getConditionFlowEv, ptr @_ZNK11xercesc_2_72Op10getYesFlowEv, ptr @_ZNK11xercesc_2_72Op9getNoFlowEv, ptr @_ZNK11xercesc_2_72Op9elementAtEi, ptr @_ZNK11xercesc_2_77ChildOp8getChildEv, ptr @_ZNK11xercesc_2_72Op8getTokenEv, ptr @_ZNK11xercesc_2_72Op10getLiteralEv] }, align 8
@_ZTVN11xercesc_2_77RangeOpE = dso_local unnamed_addr constant { [15 x ptr] } { [15 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_77RangeOpE, ptr @_ZN11xercesc_2_72OpD2Ev, ptr @_ZN11xercesc_2_77RangeOpD0Ev, ptr @_ZNK11xercesc_2_72Op7getDataEv, ptr @_ZNK11xercesc_2_72Op8getData2Ev, ptr @_ZNK11xercesc_2_72Op7getSizeEv, ptr @_ZNK11xercesc_2_72Op8getRefNoEv, ptr @_ZNK11xercesc_2_72Op16getConditionFlowEv, ptr @_ZNK11xercesc_2_72Op10getYesFlowEv, ptr @_ZNK11xercesc_2_72Op9getNoFlowEv, ptr @_ZNK11xercesc_2_72Op9elementAtEi, ptr @_ZNK11xercesc_2_72Op8getChildEv, ptr @_ZNK11xercesc_2_77RangeOp8getTokenEv, ptr @_ZNK11xercesc_2_72Op10getLiteralEv] }, align 8
@_ZTVN11xercesc_2_78StringOpE = dso_local unnamed_addr constant { [15 x ptr] } { [15 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_78StringOpE, ptr @_ZN11xercesc_2_78StringOpD2Ev, ptr @_ZN11xercesc_2_78StringOpD0Ev, ptr @_ZNK11xercesc_2_72Op7getDataEv, ptr @_ZNK11xercesc_2_72Op8getData2Ev, ptr @_ZNK11xercesc_2_72Op7getSizeEv, ptr @_ZNK11xercesc_2_72Op8getRefNoEv, ptr @_ZNK11xercesc_2_72Op16getConditionFlowEv, ptr @_ZNK11xercesc_2_72Op10getYesFlowEv, ptr @_ZNK11xercesc_2_72Op9getNoFlowEv, ptr @_ZNK11xercesc_2_72Op9elementAtEi, ptr @_ZNK11xercesc_2_72Op8getChildEv, ptr @_ZNK11xercesc_2_72Op8getTokenEv, ptr @_ZNK11xercesc_2_78StringOp10getLiteralEv] }, align 8
@_ZTVN11xercesc_2_711ConditionOpE = dso_local unnamed_addr constant { [15 x ptr] } { [15 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_711ConditionOpE, ptr @_ZN11xercesc_2_72OpD2Ev, ptr @_ZN11xercesc_2_711ConditionOpD0Ev, ptr @_ZNK11xercesc_2_72Op7getDataEv, ptr @_ZNK11xercesc_2_72Op8getData2Ev, ptr @_ZNK11xercesc_2_72Op7getSizeEv, ptr @_ZNK11xercesc_2_711ConditionOp8getRefNoEv, ptr @_ZNK11xercesc_2_711ConditionOp16getConditionFlowEv, ptr @_ZNK11xercesc_2_711ConditionOp10getYesFlowEv, ptr @_ZNK11xercesc_2_711ConditionOp9getNoFlowEv, ptr @_ZNK11xercesc_2_72Op9elementAtEi, ptr @_ZNK11xercesc_2_72Op8getChildEv, ptr @_ZNK11xercesc_2_72Op8getTokenEv, ptr @_ZNK11xercesc_2_72Op10getLiteralEv] }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_72OpE = dso_local constant [19 x i8] c"N11xercesc_2_72OpE\00", align 1
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_72OpE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_72OpE, ptr @_ZTIN11xercesc_2_77XMemoryE }, align 8
@_ZTSN11xercesc_2_76CharOpE = dso_local constant [23 x i8] c"N11xercesc_2_76CharOpE\00", align 1
@_ZTIN11xercesc_2_76CharOpE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_76CharOpE, ptr @_ZTIN11xercesc_2_72OpE }, align 8
@_ZTSN11xercesc_2_77UnionOpE = dso_local constant [24 x i8] c"N11xercesc_2_77UnionOpE\00", align 1
@_ZTIN11xercesc_2_77UnionOpE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77UnionOpE, ptr @_ZTIN11xercesc_2_72OpE }, align 8
@_ZTSN11xercesc_2_77ChildOpE = dso_local constant [24 x i8] c"N11xercesc_2_77ChildOpE\00", align 1
@_ZTIN11xercesc_2_77ChildOpE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77ChildOpE, ptr @_ZTIN11xercesc_2_72OpE }, align 8
@_ZTSN11xercesc_2_710ModifierOpE = dso_local constant [28 x i8] c"N11xercesc_2_710ModifierOpE\00", align 1
@_ZTIN11xercesc_2_710ModifierOpE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_710ModifierOpE, ptr @_ZTIN11xercesc_2_77ChildOpE }, align 8
@_ZTSN11xercesc_2_77RangeOpE = dso_local constant [24 x i8] c"N11xercesc_2_77RangeOpE\00", align 1
@_ZTIN11xercesc_2_77RangeOpE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77RangeOpE, ptr @_ZTIN11xercesc_2_72OpE }, align 8
@_ZTSN11xercesc_2_78StringOpE = dso_local constant [25 x i8] c"N11xercesc_2_78StringOpE\00", align 1
@_ZTIN11xercesc_2_78StringOpE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_78StringOpE, ptr @_ZTIN11xercesc_2_72OpE }, align 8
@_ZTSN11xercesc_2_711ConditionOpE = dso_local constant [29 x i8] c"N11xercesc_2_711ConditionOpE\00", align 1
@_ZTIN11xercesc_2_711ConditionOpE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_711ConditionOpE, ptr @_ZTIN11xercesc_2_72OpE }, align 8
@_ZTVN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_716RuntimeExceptionD0Ev, ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv, ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE = external constant [0 x i16], align 2
@_ZTVN11xercesc_2_711RefVectorOfINS_2OpEEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_711RefVectorOfINS_2OpEEE, ptr @_ZN11xercesc_2_711RefVectorOfINS_2OpEED2Ev, ptr @_ZN11xercesc_2_711RefVectorOfINS_2OpEED0Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_2OpEE12setElementAtEPS1_j, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_2OpEE17removeAllElementsEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_2OpEE15removeElementAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_2OpEE17removeLastElementEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_2OpEE7cleanupEv] }, comdat, align 8
@_ZTSN11xercesc_2_711RefVectorOfINS_2OpEEE = linkonce_odr dso_local constant [38 x i8] c"N11xercesc_2_711RefVectorOfINS_2OpEEE\00", comdat, align 1
@_ZTSN11xercesc_2_715BaseRefVectorOfINS_2OpEEE = linkonce_odr dso_local constant [42 x i8] c"N11xercesc_2_715BaseRefVectorOfINS_2OpEEE\00", comdat, align 1
@_ZTIN11xercesc_2_715BaseRefVectorOfINS_2OpEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_715BaseRefVectorOfINS_2OpEEE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_711RefVectorOfINS_2OpEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_711RefVectorOfINS_2OpEEE, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfINS_2OpEEE }, comdat, align 8
@_ZTVN11xercesc_2_715BaseRefVectorOfINS_2OpEEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfINS_2OpEEE, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_2OpEED2Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_2OpEED0Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_2OpEE12setElementAtEPS1_j, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_2OpEE17removeAllElementsEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_2OpEE15removeElementAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_2OpEE17removeLastElementEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_2OpEE7cleanupEv] }, comdat, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"./xercesc/util/BaseRefVectorOf.c\00", align 1
@_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant [48 x i8] c"N11xercesc_2_730ArrayIndexOutOfBoundsExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE = external constant [0 x i16], align 2

@_ZN11xercesc_2_72OpC1EsPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, i16, ptr), ptr @_ZN11xercesc_2_72OpC2EsPNS_13MemoryManagerE
@_ZN11xercesc_2_76CharOpC1EsiPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, i16, i32, ptr), ptr @_ZN11xercesc_2_76CharOpC2EsiPNS_13MemoryManagerE
@_ZN11xercesc_2_77UnionOpC1EsiPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, i16, i32, ptr), ptr @_ZN11xercesc_2_77UnionOpC2EsiPNS_13MemoryManagerE
@_ZN11xercesc_2_77ChildOpC1EsPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, i16, ptr), ptr @_ZN11xercesc_2_77ChildOpC2EsPNS_13MemoryManagerE
@_ZN11xercesc_2_710ModifierOpC1EsiiPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, i16, i32, i32, ptr), ptr @_ZN11xercesc_2_710ModifierOpC2EsiiPNS_13MemoryManagerE
@_ZN11xercesc_2_77RangeOpC1EsPKNS_5TokenEPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, i16, ptr, ptr), ptr @_ZN11xercesc_2_77RangeOpC2EsPKNS_5TokenEPNS_13MemoryManagerE
@_ZN11xercesc_2_78StringOpC1EsPKtPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, i16, ptr, ptr), ptr @_ZN11xercesc_2_78StringOpC2EsPKtPNS_13MemoryManagerE
@_ZN11xercesc_2_711ConditionOpC1EsiPKNS_2OpES3_S3_PNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, i16, i32, ptr, ptr, ptr, ptr), ptr @_ZN11xercesc_2_711ConditionOpC2EsiPKNS_2OpES3_S3_PNS_13MemoryManagerE

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xercesc_2_72OpC2EsPNS_13MemoryManagerE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(32) %0, i16 noundef signext %1, ptr noundef %2) unnamed_addr #0 align 2 !prof !51 {
  store ptr getelementptr inbounds ({ [15 x ptr] }, ptr @_ZTVN11xercesc_2_72OpE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !52
  %4 = getelementptr inbounds %"class.xercesc_2_7::Op", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !55
  %5 = getelementptr inbounds %"class.xercesc_2_7::Op", ptr %0, i64 0, i32 2
  store i16 %1, ptr %5, align 8, !tbaa !60
  %6 = getelementptr inbounds %"class.xercesc_2_7::Op", ptr %0, i64 0, i32 3
  store ptr null, ptr %6, align 8, !tbaa !61
  ret void
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_72Op7getSizeEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !62 {
  %2 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %3 = getelementptr inbounds %"class.xercesc_2_7::Op", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !55
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull @.str, i32 noundef 44, i32 noundef 294, ptr noundef %4)
          to label %5 unwind label %6

5:                                                ; preds = %1
  tail call void @__cxa_throw(ptr nonnull %2, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %2) #14
  resume { ptr, i32 } %7
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !62 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !52
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  resume { ptr, i32 } %8
}

declare i32 @__gxx_personality_v0(...)

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_72Op7getDataEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !62 {
  %2 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %3 = getelementptr inbounds %"class.xercesc_2_7::Op", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !55
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull @.str, i32 noundef 50, i32 noundef 294, ptr noundef %4)
          to label %5 unwind label %6

5:                                                ; preds = %1
  tail call void @__cxa_throw(ptr nonnull %2, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %2) #14
  resume { ptr, i32 } %7
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_72Op8getData2Ev(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !62 {
  %2 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %3 = getelementptr inbounds %"class.xercesc_2_7::Op", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !55
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull @.str, i32 noundef 56, i32 noundef 294, ptr noundef %4)
          to label %5 unwind label %6

5:                                                ; preds = %1
  tail call void @__cxa_throw(ptr nonnull %2, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %2) #14
  resume { ptr, i32 } %7
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_72Op8getRefNoEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !62 {
  %2 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %3 = getelementptr inbounds %"class.xercesc_2_7::Op", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !55
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull @.str, i32 noundef 62, i32 noundef 294, ptr noundef %4)
          to label %5 unwind label %6

5:                                                ; preds = %1
  tail call void @__cxa_throw(ptr nonnull %2, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %2) #14
  resume { ptr, i32 } %7
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noalias noundef nonnull ptr @_ZNK11xercesc_2_72Op9elementAtEi(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0, i32 %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !62 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %4 = getelementptr inbounds %"class.xercesc_2_7::Op", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !55
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull @.str, i32 noundef 68, i32 noundef 294, ptr noundef %5)
          to label %6 unwind label %7

6:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

7:                                                ; preds = %2
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #14
  resume { ptr, i32 } %8
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noalias noundef nonnull ptr @_ZNK11xercesc_2_72Op8getChildEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !62 {
  %2 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %3 = getelementptr inbounds %"class.xercesc_2_7::Op", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !55
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull @.str, i32 noundef 74, i32 noundef 294, ptr noundef %4)
          to label %5 unwind label %6

5:                                                ; preds = %1
  tail call void @__cxa_throw(ptr nonnull %2, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %2) #14
  resume { ptr, i32 } %7
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noalias noundef nonnull ptr @_ZNK11xercesc_2_72Op16getConditionFlowEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !62 {
  %2 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %3 = getelementptr inbounds %"class.xercesc_2_7::Op", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !55
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull @.str, i32 noundef 80, i32 noundef 294, ptr noundef %4)
          to label %5 unwind label %6

5:                                                ; preds = %1
  tail call void @__cxa_throw(ptr nonnull %2, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %2) #14
  resume { ptr, i32 } %7
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noalias noundef nonnull ptr @_ZNK11xercesc_2_72Op10getYesFlowEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !62 {
  %2 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %3 = getelementptr inbounds %"class.xercesc_2_7::Op", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !55
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull @.str, i32 noundef 86, i32 noundef 294, ptr noundef %4)
          to label %5 unwind label %6

5:                                                ; preds = %1
  tail call void @__cxa_throw(ptr nonnull %2, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %2) #14
  resume { ptr, i32 } %7
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noalias noundef nonnull ptr @_ZNK11xercesc_2_72Op9getNoFlowEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !62 {
  %2 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %3 = getelementptr inbounds %"class.xercesc_2_7::Op", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !55
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull @.str, i32 noundef 92, i32 noundef 294, ptr noundef %4)
          to label %5 unwind label %6

5:                                                ; preds = %1
  tail call void @__cxa_throw(ptr nonnull %2, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %2) #14
  resume { ptr, i32 } %7
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noalias noundef nonnull ptr @_ZNK11xercesc_2_72Op10getLiteralEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !62 {
  %2 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %3 = getelementptr inbounds %"class.xercesc_2_7::Op", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !55
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull @.str, i32 noundef 98, i32 noundef 294, ptr noundef %4)
          to label %5 unwind label %6

5:                                                ; preds = %1
  tail call void @__cxa_throw(ptr nonnull %2, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %2) #14
  resume { ptr, i32 } %7
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noalias noundef nonnull ptr @_ZNK11xercesc_2_72Op8getTokenEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !62 {
  %2 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %3 = getelementptr inbounds %"class.xercesc_2_7::Op", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !55
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull @.str, i32 noundef 104, i32 noundef 294, ptr noundef %4)
          to label %5 unwind label %6

5:                                                ; preds = %1
  tail call void @__cxa_throw(ptr nonnull %2, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %2) #14
  resume { ptr, i32 } %7
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xercesc_2_76CharOpC2EsiPNS_13MemoryManagerE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(36) %0, i16 noundef signext %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 align 2 !prof !63 {
  store ptr getelementptr inbounds ({ [15 x ptr] }, ptr @_ZTVN11xercesc_2_72OpE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !52
  %5 = getelementptr inbounds %"class.xercesc_2_7::Op", ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !55
  %6 = getelementptr inbounds %"class.xercesc_2_7::Op", ptr %0, i64 0, i32 2
  store i16 %1, ptr %6, align 8, !tbaa !60
  %7 = getelementptr inbounds %"class.xercesc_2_7::Op", ptr %0, i64 0, i32 3
  store ptr null, ptr %7, align 8, !tbaa !61
  store ptr getelementptr inbounds ({ [15 x ptr] }, ptr @_ZTVN11xercesc_2_76CharOpE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !52
  %8 = getelementptr inbounds %"class.xercesc_2_7::CharOp", ptr %0, i64 0, i32 1
  store i32 %2, ptr %8, align 8, !tbaa !64
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_76CharOp7getDataEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(36) %0) unnamed_addr #3 align 2 !prof !67 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::CharOp", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !64
  ret i32 %3
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_77UnionOpC2EsiPNS_13MemoryManagerE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(40) %0, i16 noundef signext %1, i32 noundef %2, ptr noundef %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !68 {
  store ptr getelementptr inbounds ({ [15 x ptr] }, ptr @_ZTVN11xercesc_2_72OpE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !52
  %5 = getelementptr inbounds %"class.xercesc_2_7::Op", ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !55
  %6 = getelementptr inbounds %"class.xercesc_2_7::Op", ptr %0, i64 0, i32 2
  store i16 %1, ptr %6, align 8, !tbaa !60
  %7 = getelementptr inbounds %"class.xercesc_2_7::Op", ptr %0, i64 0, i32 3
  store ptr null, ptr %7, align 8, !tbaa !61
  store ptr getelementptr inbounds ({ [15 x ptr] }, ptr @_ZTVN11xercesc_2_77UnionOpE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !52
  %8 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %3)
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_715BaseRefVectorOfINS_2OpEEE, i64 0, inrange i32 0, i64 2), ptr %8, align 8, !tbaa !52
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %8, i64 0, i32 1
  store i8 0, ptr %9, align 8, !tbaa !69
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %8, i64 0, i32 2
  store i32 0, ptr %10, align 4, !tbaa !72
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %8, i64 0, i32 3
  store i32 %2, ptr %11, align 8, !tbaa !73
  %12 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %8, i64 0, i32 4
  store ptr null, ptr %12, align 8, !tbaa !74
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %8, i64 0, i32 5
  store ptr %3, ptr %13, align 8, !tbaa !75
  %14 = zext i32 %2 to i64
  %15 = shl nuw nsw i64 %14, 3
  %16 = load ptr, ptr %3, align 8, !tbaa !52
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  %18 = load ptr, ptr %17, align 8
  %19 = invoke noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %15)
          to label %20 unwind label %32, !prof !76

20:                                               ; preds = %4
  store ptr %19, ptr %12, align 8, !tbaa !74
  %21 = icmp eq i32 %2, 0
  br i1 %21, label %30, label %22, !prof !77

22:                                               ; preds = %20
  %23 = zext i32 %2 to i64
  br label %24

24:                                               ; preds = %22, %24
  %25 = phi i64 [ 0, %22 ], [ %28, %24 ]
  %26 = load ptr, ptr %12, align 8, !tbaa !74
  %27 = getelementptr inbounds ptr, ptr %26, i64 %25
  store ptr null, ptr %27, align 8, !tbaa !78
  %28 = add nuw nsw i64 %25, 1
  %29 = icmp eq i64 %28, %23
  br i1 %29, label %30, label %24, !prof !79, !llvm.loop !80

30:                                               ; preds = %24, %20
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_2OpEEE, i64 0, inrange i32 0, i64 2), ptr %8, align 8, !tbaa !52
  %31 = getelementptr inbounds %"class.xercesc_2_7::UnionOp", ptr %0, i64 0, i32 1
  store ptr %8, ptr %31, align 8, !tbaa !83
  ret void

32:                                               ; preds = %4
  %33 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef nonnull %8, ptr noundef nonnull %3) #14
  resume { ptr, i32 } %33
}

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_77UnionOp7getSizeEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(40) %0) unnamed_addr #6 align 2 !prof !85 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::UnionOp", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !83
  %4 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %3, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !72
  ret i32 %5
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_77UnionOp9elementAtEi(ptr nocapture noundef nonnull readonly align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !86 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::UnionOp", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !83
  %5 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !72
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %15, label %8, !prof !87

8:                                                ; preds = %2
  %9 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %4, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !75
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull @.str.1, i32 noundef 249, i32 noundef 116, ptr noundef %11)
          to label %12 unwind label %13

12:                                               ; preds = %8
  tail call void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

13:                                               ; preds = %8
  %14 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %9) #14
  resume { ptr, i32 } %14

15:                                               ; preds = %2
  %16 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %4, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !74
  %18 = zext i32 %1 to i64
  %19 = getelementptr inbounds ptr, ptr %17, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !78
  ret ptr %20
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_77UnionOp10addElementEPNS_2OpE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #2 align 2 !prof !88 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::UnionOp", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !83
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_2OpEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef 1)
  %5 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !74
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %4, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !72
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds ptr, ptr %6, i64 %9
  store ptr %1, ptr %10, align 8, !tbaa !78
  %11 = add i32 %8, 1
  store i32 %11, ptr %7, align 4, !tbaa !72
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xercesc_2_77ChildOpC2EsPNS_13MemoryManagerE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(40) %0, i16 noundef signext %1, ptr noundef %2) unnamed_addr #0 align 2 !prof !89 {
  store ptr getelementptr inbounds ({ [15 x ptr] }, ptr @_ZTVN11xercesc_2_72OpE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !52
  %4 = getelementptr inbounds %"class.xercesc_2_7::Op", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !55
  %5 = getelementptr inbounds %"class.xercesc_2_7::Op", ptr %0, i64 0, i32 2
  store i16 %1, ptr %5, align 8, !tbaa !60
  %6 = getelementptr inbounds %"class.xercesc_2_7::Op", ptr %0, i64 0, i32 3
  store ptr null, ptr %6, align 8, !tbaa !61
  store ptr getelementptr inbounds ({ [15 x ptr] }, ptr @_ZTVN11xercesc_2_77ChildOpE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !52
  %7 = getelementptr inbounds %"class.xercesc_2_7::ChildOp", ptr %0, i64 0, i32 1
  store ptr null, ptr %7, align 8, !tbaa !90
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_77ChildOp8getChildEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(40) %0) unnamed_addr #3 align 2 !prof !92 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ChildOp", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !90
  ret ptr %3
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xercesc_2_77ChildOp8setChildEPKNS_2OpE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #0 align 2 !prof !93 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ChildOp", ptr %0, i64 0, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !90
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xercesc_2_710ModifierOpC2EsiiPNS_13MemoryManagerE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(48) %0, i16 noundef signext %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 align 2 !prof !94 {
  store ptr getelementptr inbounds ({ [15 x ptr] }, ptr @_ZTVN11xercesc_2_72OpE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !52
  %6 = getelementptr inbounds %"class.xercesc_2_7::Op", ptr %0, i64 0, i32 1
  store ptr %4, ptr %6, align 8, !tbaa !55
  %7 = getelementptr inbounds %"class.xercesc_2_7::Op", ptr %0, i64 0, i32 2
  store i16 %1, ptr %7, align 8, !tbaa !60
  %8 = getelementptr inbounds %"class.xercesc_2_7::Op", ptr %0, i64 0, i32 3
  store ptr null, ptr %8, align 8, !tbaa !61
  store ptr getelementptr inbounds ({ [15 x ptr] }, ptr @_ZTVN11xercesc_2_77ChildOpE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !52
  %9 = getelementptr inbounds %"class.xercesc_2_7::ChildOp", ptr %0, i64 0, i32 1
  store ptr null, ptr %9, align 8, !tbaa !90
  store ptr getelementptr inbounds ({ [15 x ptr] }, ptr @_ZTVN11xercesc_2_710ModifierOpE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !52
  %10 = getelementptr inbounds %"class.xercesc_2_7::ModifierOp", ptr %0, i64 0, i32 1
  store i32 %2, ptr %10, align 8, !tbaa !95
  %11 = getelementptr inbounds %"class.xercesc_2_7::ModifierOp", ptr %0, i64 0, i32 2
  store i32 %3, ptr %11, align 4, !tbaa !97
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_710ModifierOp7getDataEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(48) %0) unnamed_addr #3 align 2 !prof !98 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ModifierOp", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !95
  ret i32 %3
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_710ModifierOp8getData2Ev(ptr nocapture noundef nonnull readonly align 8 dereferenceable(48) %0) unnamed_addr #8 align 2 !prof !62 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ModifierOp", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !97
  ret i32 %3
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xercesc_2_77RangeOpC2EsPKNS_5TokenEPNS_13MemoryManagerE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(40) %0, i16 noundef signext %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 align 2 !prof !99 {
  store ptr getelementptr inbounds ({ [15 x ptr] }, ptr @_ZTVN11xercesc_2_72OpE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !52
  %5 = getelementptr inbounds %"class.xercesc_2_7::Op", ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !55
  %6 = getelementptr inbounds %"class.xercesc_2_7::Op", ptr %0, i64 0, i32 2
  store i16 %1, ptr %6, align 8, !tbaa !60
  %7 = getelementptr inbounds %"class.xercesc_2_7::Op", ptr %0, i64 0, i32 3
  store ptr null, ptr %7, align 8, !tbaa !61
  store ptr getelementptr inbounds ({ [15 x ptr] }, ptr @_ZTVN11xercesc_2_77RangeOpE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !52
  %8 = getelementptr inbounds %"class.xercesc_2_7::RangeOp", ptr %0, i64 0, i32 1
  store ptr %2, ptr %8, align 8, !tbaa !100
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_77RangeOp8getTokenEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(40) %0) unnamed_addr #3 align 2 !prof !102 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RangeOp", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !100
  ret ptr %3
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_78StringOpC2EsPKtPNS_13MemoryManagerE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(40) %0, i16 noundef signext %1, ptr noundef %2, ptr noundef %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !103 {
  store ptr getelementptr inbounds ({ [15 x ptr] }, ptr @_ZTVN11xercesc_2_72OpE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !52
  %5 = getelementptr inbounds %"class.xercesc_2_7::Op", ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !55
  %6 = getelementptr inbounds %"class.xercesc_2_7::Op", ptr %0, i64 0, i32 2
  store i16 %1, ptr %6, align 8, !tbaa !60
  %7 = getelementptr inbounds %"class.xercesc_2_7::Op", ptr %0, i64 0, i32 3
  store ptr null, ptr %7, align 8, !tbaa !61
  store ptr getelementptr inbounds ({ [15 x ptr] }, ptr @_ZTVN11xercesc_2_78StringOpE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !52
  %8 = icmp eq ptr %2, null
  br i1 %8, label %29, label %9, !prof !104

9:                                                ; preds = %4
  %10 = load i16, ptr %2, align 2, !tbaa !105
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %23, label %12, !prof !104

12:                                               ; preds = %9, %12
  %13 = phi ptr [ %14, %12 ], [ %2, %9 ]
  %14 = getelementptr inbounds i16, ptr %13, i64 1
  %15 = load i16, ptr %14, align 2, !tbaa !105
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %17, label %12, !prof !106, !llvm.loop !107

17:                                               ; preds = %12
  %18 = ptrtoint ptr %14 to i64
  %19 = ptrtoint ptr %2 to i64
  %20 = sub i64 %18, %19
  %21 = add i64 %20, 2
  %22 = and i64 %21, 8589934590
  br label %23

23:                                               ; preds = %17, %9
  %24 = phi i64 [ %22, %17 ], [ 2, %9 ]
  %25 = load ptr, ptr %3, align 8, !tbaa !52
  %26 = getelementptr inbounds ptr, ptr %25, i64 2
  %27 = load ptr, ptr %26, align 8
  %28 = tail call noundef ptr %27(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %24), !prof !108
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %28, ptr nonnull align 2 %2, i64 %24, i1 false), !prof !109
  br label %29

29:                                               ; preds = %23, %4
  %30 = phi ptr [ %28, %23 ], [ null, %4 ]
  %31 = getelementptr inbounds %"class.xercesc_2_7::StringOp", ptr %0, i64 0, i32 1
  store ptr %30, ptr %31, align 8, !tbaa !110
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_78StringOp10getLiteralEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(40) %0) unnamed_addr #3 align 2 !prof !112 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::StringOp", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !110
  ret ptr %3
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xercesc_2_711ConditionOpC2EsiPKNS_2OpES3_S3_PNS_13MemoryManagerE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(64) %0, i16 noundef signext %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) unnamed_addr #0 align 2 !prof !62 {
  store ptr getelementptr inbounds ({ [15 x ptr] }, ptr @_ZTVN11xercesc_2_72OpE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !52
  %8 = getelementptr inbounds %"class.xercesc_2_7::Op", ptr %0, i64 0, i32 1
  store ptr %6, ptr %8, align 8, !tbaa !55
  %9 = getelementptr inbounds %"class.xercesc_2_7::Op", ptr %0, i64 0, i32 2
  store i16 %1, ptr %9, align 8, !tbaa !60
  %10 = getelementptr inbounds %"class.xercesc_2_7::Op", ptr %0, i64 0, i32 3
  store ptr null, ptr %10, align 8, !tbaa !61
  store ptr getelementptr inbounds ({ [15 x ptr] }, ptr @_ZTVN11xercesc_2_711ConditionOpE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !52
  %11 = getelementptr inbounds %"class.xercesc_2_7::ConditionOp", ptr %0, i64 0, i32 1
  store i32 %2, ptr %11, align 8, !tbaa !113
  %12 = getelementptr inbounds %"class.xercesc_2_7::ConditionOp", ptr %0, i64 0, i32 2
  store ptr %3, ptr %12, align 8, !tbaa !115
  %13 = getelementptr inbounds %"class.xercesc_2_7::ConditionOp", ptr %0, i64 0, i32 3
  store ptr %4, ptr %13, align 8, !tbaa !116
  %14 = getelementptr inbounds %"class.xercesc_2_7::ConditionOp", ptr %0, i64 0, i32 4
  store ptr %5, ptr %14, align 8, !tbaa !117
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_711ConditionOp8getRefNoEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(64) %0) unnamed_addr #8 align 2 !prof !62 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ConditionOp", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !113
  ret i32 %3
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_711ConditionOp16getConditionFlowEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(64) %0) unnamed_addr #8 align 2 !prof !62 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ConditionOp", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !115
  ret ptr %3
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_711ConditionOp10getYesFlowEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(64) %0) unnamed_addr #8 align 2 !prof !62 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ConditionOp", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !116
  ret ptr %3
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_711ConditionOp9getNoFlowEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(64) %0) unnamed_addr #8 align 2 !prof !62 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ConditionOp", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !117
  ret ptr %3
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_72OpD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #9 comdat align 2 !prof !51 {
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_76CharOpD0Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #9 comdat align 2 !prof !63 {
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77UnionOpD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #9 comdat align 2 !prof !62 {
  store ptr getelementptr inbounds ({ [15 x ptr] }, ptr @_ZTVN11xercesc_2_77UnionOpE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !52
  %2 = getelementptr inbounds %"class.xercesc_2_7::UnionOp", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !83
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !52
  %7 = getelementptr inbounds ptr, ptr %6, i64 1
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(40) %3) #14
  br label %9

9:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77UnionOpD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #9 comdat align 2 !prof !68 {
  store ptr getelementptr inbounds ({ [15 x ptr] }, ptr @_ZTVN11xercesc_2_77UnionOpE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !52
  %2 = getelementptr inbounds %"class.xercesc_2_7::UnionOp", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !83
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !118

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !52
  %7 = getelementptr inbounds ptr, ptr %6, i64 1
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(40) %3) #14, !prof !119
  br label %9

9:                                                ; preds = %1, %5
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77ChildOpD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #9 comdat align 2 !prof !89 {
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710ModifierOpD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #9 comdat align 2 !prof !94 {
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77RangeOpD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #9 comdat align 2 !prof !99 {
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_78StringOpD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 !prof !62 {
  store ptr getelementptr inbounds ({ [15 x ptr] }, ptr @_ZTVN11xercesc_2_78StringOpE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !52
  %2 = getelementptr inbounds %"class.xercesc_2_7::Op", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  %4 = getelementptr inbounds %"class.xercesc_2_7::StringOp", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !110
  %6 = load ptr, ptr %3, align 8, !tbaa !52
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5)
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

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_78StringOpD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 !prof !103 {
  store ptr getelementptr inbounds ({ [15 x ptr] }, ptr @_ZTVN11xercesc_2_78StringOpE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !52
  %2 = getelementptr inbounds %"class.xercesc_2_7::Op", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  %4 = getelementptr inbounds %"class.xercesc_2_7::StringOp", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !110
  %6 = load ptr, ptr %3, align 8, !tbaa !52
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5)
          to label %12 unwind label %9, !prof !120

9:                                                ; preds = %1
  %10 = landingpad { ptr, i32 }
          catch ptr null
  %11 = extractvalue { ptr, i32 } %10, 0
  tail call void @__clang_call_terminate(ptr %11) #16
  unreachable

12:                                               ; preds = %1
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_72OpD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #9 comdat align 2 !prof !62 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711ConditionOpD0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #9 comdat align 2 !prof !62 {
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #4

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #9 comdat align 2 !prof !62 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #9 comdat align 2 !prof !62 {
  ret ptr @_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !62 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !121
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !52
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #14
  resume { ptr, i32 } %7
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #5

declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #11 comdat !prof !62 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #14
  tail call void @_ZSt9terminatev() #16
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_2OpEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 !prof !63 {
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_2OpEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !52
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !69, !range !124, !noundef !125
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %26, label %5, !prof !126

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !72
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %26, label %9, !prof !127

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %21
  %12 = phi i64 [ 0, %9 ], [ %22, %21 ]
  %13 = load ptr, ptr %10, align 8, !tbaa !74
  %14 = getelementptr inbounds ptr, ptr %13, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !78
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17, !prof !128

17:                                               ; preds = %11
  %18 = load ptr, ptr %15, align 8, !tbaa !52
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(32) %15) #14, !prof !129
  br label %21

21:                                               ; preds = %11, %17
  %22 = add nuw nsw i64 %12, 1
  %23 = load i32, ptr %6, align 4, !tbaa !72
  %24 = zext i32 %23 to i64
  %25 = icmp ult i64 %22, %24
  br i1 %25, label %11, label %26, !prof !130, !llvm.loop !131

26:                                               ; preds = %21, %5, %1
  %27 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !75
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !74
  %31 = load ptr, ptr %28, align 8, !tbaa !52
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  invoke void %33(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %30)
          to label %34 unwind label %35, !prof !132

34:                                               ; preds = %26
  ret void

35:                                               ; preds = %26
  %36 = landingpad { ptr, i32 }
          catch ptr null
  %37 = extractvalue { ptr, i32 } %36, 0
  tail call void @__clang_call_terminate(ptr %37) #16
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_2OpEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #9 comdat align 2 !prof !63 {
  tail call void @_ZN11xercesc_2_711RefVectorOfINS_2OpEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_2OpEE12setElementAtEPS1_j(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !62 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !72
  %6 = icmp ugt i32 %5, %2
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !75
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str.1, i32 noundef 67, i32 noundef 116, ptr noundef %10)
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #14
  resume { ptr, i32 } %13

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %16 = load i8, ptr %15, align 8, !tbaa !69, !range !124, !noundef !125
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %29, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !74
  %21 = zext i32 %2 to i64
  %22 = getelementptr inbounds ptr, ptr %20, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !78
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %18
  %26 = load ptr, ptr %23, align 8, !tbaa !52
  %27 = getelementptr inbounds ptr, ptr %26, i64 1
  %28 = load ptr, ptr %27, align 8
  tail call void %28(ptr noundef nonnull align 8 dereferenceable(32) %23) #14
  br label %29

29:                                               ; preds = %18, %25, %14
  %30 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !74
  %32 = zext i32 %2 to i64
  %33 = getelementptr inbounds ptr, ptr %31, i64 %32
  store ptr %1, ptr %33, align 8, !tbaa !78
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_2OpEE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #9 comdat align 2 !prof !62 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !72
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %11

9:                                                ; preds = %24, %1
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  store i32 0, ptr %10, align 4, !tbaa !72
  ret void

11:                                               ; preds = %5, %24
  %12 = phi i64 [ 0, %5 ], [ %27, %24 ]
  %13 = load i8, ptr %6, align 8, !tbaa !69, !range !124, !noundef !125
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %7, align 8, !tbaa !74
  %17 = getelementptr inbounds ptr, ptr %16, i64 %12
  %18 = load ptr, ptr %17, align 8, !tbaa !78
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %15
  %21 = load ptr, ptr %18, align 8, !tbaa !52
  %22 = getelementptr inbounds ptr, ptr %21, i64 1
  %23 = load ptr, ptr %22, align 8
  tail call void %23(ptr noundef nonnull align 8 dereferenceable(32) %18) #14
  br label %24

24:                                               ; preds = %15, %20, %11
  %25 = load ptr, ptr %8, align 8, !tbaa !74
  %26 = getelementptr inbounds ptr, ptr %25, i64 %12
  store ptr null, ptr %26, align 8, !tbaa !78
  %27 = add nuw nsw i64 %12, 1
  %28 = load i32, ptr %2, align 4, !tbaa !72
  %29 = zext i32 %28 to i64
  %30 = icmp ult i64 %27, %29
  br i1 %30, label %11, label %9, !llvm.loop !133
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_2OpEE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !62 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !72
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !75
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.1, i32 noundef 144, i32 noundef 116, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #14
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %15 = load i8, ptr %14, align 8, !tbaa !69, !range !124, !noundef !125
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !74
  %20 = zext i32 %1 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !78
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %17
  %25 = load ptr, ptr %22, align 8, !tbaa !52
  %26 = getelementptr inbounds ptr, ptr %25, i64 1
  %27 = load ptr, ptr %26, align 8
  tail call void %27(ptr noundef nonnull align 8 dereferenceable(32) %22) #14
  br label %28

28:                                               ; preds = %17, %24, %13
  %29 = load i32, ptr %3, align 4, !tbaa !72
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
  %40 = load ptr, ptr %35, align 8, !tbaa !74
  %41 = add nuw nsw i64 %39, 1
  %42 = getelementptr inbounds ptr, ptr %40, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !78
  %44 = getelementptr inbounds ptr, ptr %40, i64 %39
  store ptr %43, ptr %44, align 8, !tbaa !78
  %45 = icmp eq i64 %41, %37
  br i1 %45, label %46, label %38, !llvm.loop !134

46:                                               ; preds = %38, %32, %28
  %47 = phi i32 [ %1, %28 ], [ %30, %32 ], [ %30, %38 ]
  %48 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !74
  %50 = zext i32 %47 to i64
  %51 = getelementptr inbounds ptr, ptr %49, i64 %50
  store ptr null, ptr %51, align 8, !tbaa !78
  store i32 %30, ptr %3, align 4, !tbaa !72
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_2OpEE17removeLastElementEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #9 comdat align 2 !prof !62 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !72
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 4, !tbaa !72
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !69, !range !124, !noundef !125
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !74
  %13 = zext i32 %6 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !78
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %10
  %18 = load ptr, ptr %15, align 8, !tbaa !52
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(32) %15) #14
  br label %21

21:                                               ; preds = %10, %17, %1, %5
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_2OpEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 !prof !62 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !69, !range !124, !noundef !125
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %26, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !72
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %26, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %21
  %12 = phi i64 [ 0, %9 ], [ %22, %21 ]
  %13 = load ptr, ptr %10, align 8, !tbaa !74
  %14 = getelementptr inbounds ptr, ptr %13, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !78
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %11
  %18 = load ptr, ptr %15, align 8, !tbaa !52
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(32) %15) #14
  br label %21

21:                                               ; preds = %11, %17
  %22 = add nuw nsw i64 %12, 1
  %23 = load i32, ptr %6, align 4, !tbaa !72
  %24 = zext i32 %23 to i64
  %25 = icmp ult i64 %22, %24
  br i1 %25, label %11, label %26, !llvm.loop !135

26:                                               ; preds = %21, %5, %1
  %27 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !75
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !74
  %31 = load ptr, ptr %28, align 8, !tbaa !52
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %30)
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_2OpEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #9 comdat align 2 !prof !62 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_2OpEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #9 comdat align 2 !prof !62 {
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !62 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !52
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  resume { ptr, i32 } %8
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #5

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #9 comdat align 2 !prof !62 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #9 comdat align 2 !prof !62 {
  ret ptr @_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !62 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !121
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !52
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #14
  resume { ptr, i32 } %7
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_2OpEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !136 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !72
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !73
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %55, !prof !137

9:                                                ; preds = %2
  %10 = lshr i32 %7, 1
  %11 = add i32 %10, %7
  %12 = tail call i32 @llvm.umax.i32(i32 %5, i32 %11)
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !75
  %15 = zext i32 %12 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = load ptr, ptr %14, align 8, !tbaa !52
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef %16), !prof !76
  %21 = load i32, ptr %3, align 4, !tbaa !72
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %28, label %23, !prof !77

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
  br i1 %30, label %31, label %48, !prof !138

31:                                               ; preds = %28
  %32 = zext i32 %29 to i64
  %33 = shl nuw nsw i64 %32, 3
  %34 = getelementptr i8, ptr %20, i64 %33
  %35 = xor i32 %29, -1
  %36 = add i32 %12, %35
  %37 = zext i32 %36 to i64
  %38 = shl nuw nsw i64 %37, 3
  %39 = add nuw nsw i64 %38, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %34, i8 0, i64 %39, i1 false), !tbaa !78
  br label %48

40:                                               ; preds = %23, %40
  %41 = phi i64 [ 0, %23 ], [ %46, %40 ]
  %42 = load ptr, ptr %24, align 8, !tbaa !74
  %43 = getelementptr inbounds ptr, ptr %42, i64 %41
  %44 = load ptr, ptr %43, align 8, !tbaa !78
  %45 = getelementptr inbounds ptr, ptr %20, i64 %41
  store ptr %44, ptr %45, align 8, !tbaa !78
  %46 = add nuw nsw i64 %41, 1
  %47 = icmp eq i64 %46, %25
  br i1 %47, label %26, label %40, !prof !139, !llvm.loop !140

48:                                               ; preds = %31, %28
  %49 = load ptr, ptr %13, align 8, !tbaa !75
  %50 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %51 = load ptr, ptr %50, align 8, !tbaa !74
  %52 = load ptr, ptr %49, align 8, !tbaa !52
  %53 = getelementptr inbounds ptr, ptr %52, i64 3
  %54 = load ptr, ptr %53, align 8
  tail call void %54(ptr noundef nonnull align 8 dereferenceable(8) %49, ptr noundef %51), !prof !141
  store ptr %20, ptr %50, align 8, !tbaa !74
  store i32 %12, ptr %6, align 8, !tbaa !73
  br label %55

55:                                               ; preds = %2, %48
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #12

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { nounwind }
attributes #15 = { noreturn }
attributes #16 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!50}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49}
!35 = !{ptr @_ZN11xercesc_2_77UnionOpC2EsiPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 3}
!36 = !{ptr @_ZN11xercesc_2_77UnionOp10addElementEPNS_2OpE, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_2OpEE19ensureExtraCapacityEj, i64 7}
!37 = !{ptr @_ZN11xercesc_2_72OpD0Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 12}
!38 = !{ptr @_ZN11xercesc_2_76CharOpD0Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 13}
!39 = !{ptr @_ZN11xercesc_2_77UnionOpD0Ev, ptr @_ZN11xercesc_2_711RefVectorOfINS_2OpEED0Ev, i64 3}
!40 = !{ptr @_ZN11xercesc_2_77UnionOpD0Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 3}
!41 = !{ptr @_ZN11xercesc_2_77ChildOpD0Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 5}
!42 = !{ptr @_ZN11xercesc_2_710ModifierOpD0Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 11}
!43 = !{ptr @_ZN11xercesc_2_77RangeOpD0Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 51}
!44 = !{ptr @_ZN11xercesc_2_78StringOpD0Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 8}
!45 = !{ptr @_ZN11xercesc_2_711RefVectorOfINS_2OpEED2Ev, ptr @_ZN11xercesc_2_77RangeOpD0Ev, i64 51}
!46 = !{ptr @_ZN11xercesc_2_711RefVectorOfINS_2OpEED2Ev, ptr @_ZN11xercesc_2_76CharOpD0Ev, i64 13}
!47 = !{ptr @_ZN11xercesc_2_711RefVectorOfINS_2OpEED2Ev, ptr @_ZN11xercesc_2_72OpD0Ev, i64 12}
!48 = !{ptr @_ZN11xercesc_2_711RefVectorOfINS_2OpEED0Ev, ptr @_ZN11xercesc_2_711RefVectorOfINS_2OpEED2Ev, i64 13}
!49 = !{ptr @_ZN11xercesc_2_711RefVectorOfINS_2OpEED0Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 13}
!50 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!51 = !{!"function_entry_count", i64 12}
!52 = !{!53, !53, i64 0}
!53 = !{!"vtable pointer", !54, i64 0}
!54 = !{!"Simple C++ TBAA"}
!55 = !{!56, !57, i64 8}
!56 = !{!"_ZTSN11xercesc_2_72OpE", !57, i64 8, !59, i64 16, !57, i64 24}
!57 = !{!"any pointer", !58, i64 0}
!58 = !{!"omnipotent char", !54, i64 0}
!59 = !{!"short", !58, i64 0}
!60 = !{!56, !59, i64 16}
!61 = !{!56, !57, i64 24}
!62 = !{!"function_entry_count", i64 0}
!63 = !{!"function_entry_count", i64 13}
!64 = !{!65, !66, i64 32}
!65 = !{!"_ZTSN11xercesc_2_76CharOpE", !56, i64 0, !66, i64 32}
!66 = !{!"int", !58, i64 0}
!67 = !{!"function_entry_count", i64 1357661}
!68 = !{!"function_entry_count", i64 3}
!69 = !{!70, !71, i64 8}
!70 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_2OpEEE", !71, i64 8, !66, i64 12, !66, i64 16, !57, i64 24, !57, i64 32}
!71 = !{!"bool", !58, i64 0}
!72 = !{!70, !66, i64 12}
!73 = !{!70, !66, i64 16}
!74 = !{!70, !57, i64 24}
!75 = !{!70, !57, i64 32}
!76 = !{!"VP", i32 0, i64 3, i64 8345045103670217670, i64 3}
!77 = !{!"branch_weights", i32 1, i32 191}
!78 = !{!57, !57, i64 0}
!79 = !{!"branch_weights", i32 191, i32 257}
!80 = distinct !{!80, !81, !82}
!81 = !{!"llvm.loop.mustprogress"}
!82 = !{!"llvm.loop.unroll.disable"}
!83 = !{!84, !57, i64 32}
!84 = !{!"_ZTSN11xercesc_2_77UnionOpE", !56, i64 0, !57, i64 32}
!85 = !{!"function_entry_count", i64 149741}
!86 = !{!"function_entry_count", i64 238299}
!87 = !{!"branch_weights", i32 238299, i32 0}
!88 = !{!"function_entry_count", i64 7}
!89 = !{!"function_entry_count", i64 5}
!90 = !{!91, !57, i64 32}
!91 = !{!"_ZTSN11xercesc_2_77ChildOpE", !56, i64 0, !57, i64 32}
!92 = !{!"function_entry_count", i64 3618173}
!93 = !{!"function_entry_count", i64 16}
!94 = !{!"function_entry_count", i64 11}
!95 = !{!96, !66, i64 40}
!96 = !{!"_ZTSN11xercesc_2_710ModifierOpE", !91, i64 0, !66, i64 40, !66, i64 44}
!97 = !{!96, !66, i64 44}
!98 = !{!"function_entry_count", i64 3591268}
!99 = !{!"function_entry_count", i64 51}
!100 = !{!101, !57, i64 32}
!101 = !{!"_ZTSN11xercesc_2_77RangeOpE", !56, i64 0, !57, i64 32}
!102 = !{!"function_entry_count", i64 1301032}
!103 = !{!"function_entry_count", i64 8}
!104 = !{!"branch_weights", i32 0, i32 8}
!105 = !{!59, !59, i64 0}
!106 = !{!"branch_weights", i32 8, i32 41}
!107 = distinct !{!107, !81, !82}
!108 = !{!"VP", i32 0, i64 8, i64 8345045103670217670, i64 8}
!109 = !{!"VP", i32 1, i64 8, i64 17, i64 3, i64 9, i64 2, i64 6, i64 2, i64 16, i64 1}
!110 = !{!111, !57, i64 32}
!111 = !{!"_ZTSN11xercesc_2_78StringOpE", !56, i64 0, !57, i64 32}
!112 = !{!"function_entry_count", i64 1262724}
!113 = !{!114, !66, i64 32}
!114 = !{!"_ZTSN11xercesc_2_711ConditionOpE", !56, i64 0, !66, i64 32, !57, i64 40, !57, i64 48, !57, i64 56}
!115 = !{!114, !57, i64 40}
!116 = !{!114, !57, i64 48}
!117 = !{!114, !57, i64 56}
!118 = !{!"branch_weights", i32 0, i32 3}
!119 = !{!"VP", i32 0, i64 3, i64 -3199985362539024492, i64 3}
!120 = !{!"VP", i32 0, i64 8, i64 -7405368087501025645, i64 8}
!121 = !{!122, !57, i64 40}
!122 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !123, i64 8, !57, i64 16, !66, i64 24, !57, i64 32, !57, i64 40}
!123 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !58, i64 0}
!124 = !{i8 0, i8 2}
!125 = !{}
!126 = !{!"branch_weights", i32 3, i32 10}
!127 = !{!"branch_weights", i32 1, i32 159}
!128 = !{!"branch_weights", i32 0, i32 103}
!129 = !{!"VP", i32 0, i64 103, i64 7020667758663806520, i64 51, i64 8178861124270919882, i64 13, i64 9018798547152831900, i64 12}
!130 = !{!"branch_weights", i32 1489, i32 159}
!131 = distinct !{!131, !81, !82}
!132 = !{!"VP", i32 0, i64 13, i64 -7405368087501025645, i64 13}
!133 = distinct !{!133, !81, !82}
!134 = distinct !{!134, !81, !82}
!135 = distinct !{!135, !81, !82}
!136 = !{!"function_entry_count", i64 110}
!137 = !{!"branch_weights", i32 3, i32 107}
!138 = !{!"branch_weights", i32 191, i32 1}
!139 = !{!"branch_weights", i32 191, i32 2881}
!140 = distinct !{!140, !81, !82}
!141 = !{!"VP", i32 0, i64 3, i64 -7405368087501025645, i64 3}
