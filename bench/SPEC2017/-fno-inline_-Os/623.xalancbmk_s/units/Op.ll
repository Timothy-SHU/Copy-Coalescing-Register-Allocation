; ModuleID = 'Op.cpp'
source_filename = "Op.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::Op" = type { ptr, ptr, i16, ptr }
%"class.xercesc_2_7::CharOp" = type <{ %"class.xercesc_2_7::Op", i32, [4 x i8] }>
%"class.xercesc_2_7::UnionOp" = type { %"class.xercesc_2_7::Op", ptr }
%"class.xercesc_2_7::ChildOp" = type { %"class.xercesc_2_7::Op", ptr }
%"class.xercesc_2_7::ModifierOp" = type { %"class.xercesc_2_7::ChildOp", i32, i32 }
%"class.xercesc_2_7::RangeOp" = type { %"class.xercesc_2_7::Op", ptr }
%"class.xercesc_2_7::StringOp" = type { %"class.xercesc_2_7::Op", ptr }
%"class.xercesc_2_7::ConditionOp" = type { %"class.xercesc_2_7::Op", i32, ptr, ptr, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }
%"class.xercesc_2_7::BaseRefVectorOf" = type { ptr, i8, i32, i32, ptr, ptr }

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

$_ZN11xercesc_2_77XMemoryC2Ev = comdat any

$_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_716RuntimeExceptionD0Ev = comdat any

$_ZNK11xercesc_2_716RuntimeException7getTypeEv = comdat any

$_ZNK11xercesc_2_716RuntimeException9duplicateEv = comdat any

$_ZN11xercesc_2_716RuntimeExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_2OpEEC2EjbPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_2OpEEC2EjbPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_2OpEED2Ev = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_2OpEED0Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_2OpEE12setElementAtEPS1_j = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_2OpEE17removeAllElementsEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_2OpEE15removeElementAtEj = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_2OpEE17removeLastElementEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_2OpEE7cleanupEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_2OpEED2Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_2OpEED0Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_ = comdat any

$_ZNK11xercesc_2_715BaseRefVectorOfINS_2OpEE4sizeEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_2OpEE9elementAtEj = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_2OpEE10addElementEPS1_ = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_2OpEE19ensureExtraCapacityEj = comdat any

$_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_79XMLString9stringLenEPKt = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTSN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTIN11xercesc_2_716RuntimeExceptionE = comdat any

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

@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTVN11xercesc_2_72OpE = dso_local unnamed_addr constant { [15 x ptr] } { [15 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_72OpE, ptr @_ZN11xercesc_2_72OpD2Ev, ptr @_ZN11xercesc_2_72OpD0Ev, ptr @_ZNK11xercesc_2_72Op7getDataEv, ptr @_ZNK11xercesc_2_72Op8getData2Ev, ptr @_ZNK11xercesc_2_72Op7getSizeEv, ptr @_ZNK11xercesc_2_72Op8getRefNoEv, ptr @_ZNK11xercesc_2_72Op16getConditionFlowEv, ptr @_ZNK11xercesc_2_72Op10getYesFlowEv, ptr @_ZNK11xercesc_2_72Op9getNoFlowEv, ptr @_ZNK11xercesc_2_72Op9elementAtEi, ptr @_ZNK11xercesc_2_72Op8getChildEv, ptr @_ZNK11xercesc_2_72Op8getTokenEv, ptr @_ZNK11xercesc_2_72Op10getLiteralEv] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_72OpE = dso_local constant [19 x i8] c"N11xercesc_2_72OpE\00", align 1
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_72OpE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_72OpE, ptr @_ZTIN11xercesc_2_77XMemoryE }, align 8
@_ZTVN11xercesc_2_76CharOpE = dso_local unnamed_addr constant { [15 x ptr] } { [15 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_76CharOpE, ptr @_ZN11xercesc_2_72OpD2Ev, ptr @_ZN11xercesc_2_76CharOpD0Ev, ptr @_ZNK11xercesc_2_76CharOp7getDataEv, ptr @_ZNK11xercesc_2_72Op8getData2Ev, ptr @_ZNK11xercesc_2_72Op7getSizeEv, ptr @_ZNK11xercesc_2_72Op8getRefNoEv, ptr @_ZNK11xercesc_2_72Op16getConditionFlowEv, ptr @_ZNK11xercesc_2_72Op10getYesFlowEv, ptr @_ZNK11xercesc_2_72Op9getNoFlowEv, ptr @_ZNK11xercesc_2_72Op9elementAtEi, ptr @_ZNK11xercesc_2_72Op8getChildEv, ptr @_ZNK11xercesc_2_72Op8getTokenEv, ptr @_ZNK11xercesc_2_72Op10getLiteralEv] }, align 8
@_ZTSN11xercesc_2_76CharOpE = dso_local constant [23 x i8] c"N11xercesc_2_76CharOpE\00", align 1
@_ZTIN11xercesc_2_76CharOpE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_76CharOpE, ptr @_ZTIN11xercesc_2_72OpE }, align 8
@_ZTVN11xercesc_2_77UnionOpE = dso_local unnamed_addr constant { [15 x ptr] } { [15 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_77UnionOpE, ptr @_ZN11xercesc_2_77UnionOpD2Ev, ptr @_ZN11xercesc_2_77UnionOpD0Ev, ptr @_ZNK11xercesc_2_72Op7getDataEv, ptr @_ZNK11xercesc_2_72Op8getData2Ev, ptr @_ZNK11xercesc_2_77UnionOp7getSizeEv, ptr @_ZNK11xercesc_2_72Op8getRefNoEv, ptr @_ZNK11xercesc_2_72Op16getConditionFlowEv, ptr @_ZNK11xercesc_2_72Op10getYesFlowEv, ptr @_ZNK11xercesc_2_72Op9getNoFlowEv, ptr @_ZNK11xercesc_2_77UnionOp9elementAtEi, ptr @_ZNK11xercesc_2_72Op8getChildEv, ptr @_ZNK11xercesc_2_72Op8getTokenEv, ptr @_ZNK11xercesc_2_72Op10getLiteralEv] }, align 8
@_ZTSN11xercesc_2_77UnionOpE = dso_local constant [24 x i8] c"N11xercesc_2_77UnionOpE\00", align 1
@_ZTIN11xercesc_2_77UnionOpE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77UnionOpE, ptr @_ZTIN11xercesc_2_72OpE }, align 8
@_ZTVN11xercesc_2_77ChildOpE = dso_local unnamed_addr constant { [15 x ptr] } { [15 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_77ChildOpE, ptr @_ZN11xercesc_2_72OpD2Ev, ptr @_ZN11xercesc_2_77ChildOpD0Ev, ptr @_ZNK11xercesc_2_72Op7getDataEv, ptr @_ZNK11xercesc_2_72Op8getData2Ev, ptr @_ZNK11xercesc_2_72Op7getSizeEv, ptr @_ZNK11xercesc_2_72Op8getRefNoEv, ptr @_ZNK11xercesc_2_72Op16getConditionFlowEv, ptr @_ZNK11xercesc_2_72Op10getYesFlowEv, ptr @_ZNK11xercesc_2_72Op9getNoFlowEv, ptr @_ZNK11xercesc_2_72Op9elementAtEi, ptr @_ZNK11xercesc_2_77ChildOp8getChildEv, ptr @_ZNK11xercesc_2_72Op8getTokenEv, ptr @_ZNK11xercesc_2_72Op10getLiteralEv] }, align 8
@_ZTSN11xercesc_2_77ChildOpE = dso_local constant [24 x i8] c"N11xercesc_2_77ChildOpE\00", align 1
@_ZTIN11xercesc_2_77ChildOpE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77ChildOpE, ptr @_ZTIN11xercesc_2_72OpE }, align 8
@_ZTVN11xercesc_2_710ModifierOpE = dso_local unnamed_addr constant { [15 x ptr] } { [15 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_710ModifierOpE, ptr @_ZN11xercesc_2_72OpD2Ev, ptr @_ZN11xercesc_2_710ModifierOpD0Ev, ptr @_ZNK11xercesc_2_710ModifierOp7getDataEv, ptr @_ZNK11xercesc_2_710ModifierOp8getData2Ev, ptr @_ZNK11xercesc_2_72Op7getSizeEv, ptr @_ZNK11xercesc_2_72Op8getRefNoEv, ptr @_ZNK11xercesc_2_72Op16getConditionFlowEv, ptr @_ZNK11xercesc_2_72Op10getYesFlowEv, ptr @_ZNK11xercesc_2_72Op9getNoFlowEv, ptr @_ZNK11xercesc_2_72Op9elementAtEi, ptr @_ZNK11xercesc_2_77ChildOp8getChildEv, ptr @_ZNK11xercesc_2_72Op8getTokenEv, ptr @_ZNK11xercesc_2_72Op10getLiteralEv] }, align 8
@_ZTSN11xercesc_2_710ModifierOpE = dso_local constant [28 x i8] c"N11xercesc_2_710ModifierOpE\00", align 1
@_ZTIN11xercesc_2_710ModifierOpE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_710ModifierOpE, ptr @_ZTIN11xercesc_2_77ChildOpE }, align 8
@_ZTVN11xercesc_2_77RangeOpE = dso_local unnamed_addr constant { [15 x ptr] } { [15 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_77RangeOpE, ptr @_ZN11xercesc_2_72OpD2Ev, ptr @_ZN11xercesc_2_77RangeOpD0Ev, ptr @_ZNK11xercesc_2_72Op7getDataEv, ptr @_ZNK11xercesc_2_72Op8getData2Ev, ptr @_ZNK11xercesc_2_72Op7getSizeEv, ptr @_ZNK11xercesc_2_72Op8getRefNoEv, ptr @_ZNK11xercesc_2_72Op16getConditionFlowEv, ptr @_ZNK11xercesc_2_72Op10getYesFlowEv, ptr @_ZNK11xercesc_2_72Op9getNoFlowEv, ptr @_ZNK11xercesc_2_72Op9elementAtEi, ptr @_ZNK11xercesc_2_72Op8getChildEv, ptr @_ZNK11xercesc_2_77RangeOp8getTokenEv, ptr @_ZNK11xercesc_2_72Op10getLiteralEv] }, align 8
@_ZTSN11xercesc_2_77RangeOpE = dso_local constant [24 x i8] c"N11xercesc_2_77RangeOpE\00", align 1
@_ZTIN11xercesc_2_77RangeOpE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77RangeOpE, ptr @_ZTIN11xercesc_2_72OpE }, align 8
@_ZTVN11xercesc_2_78StringOpE = dso_local unnamed_addr constant { [15 x ptr] } { [15 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_78StringOpE, ptr @_ZN11xercesc_2_78StringOpD2Ev, ptr @_ZN11xercesc_2_78StringOpD0Ev, ptr @_ZNK11xercesc_2_72Op7getDataEv, ptr @_ZNK11xercesc_2_72Op8getData2Ev, ptr @_ZNK11xercesc_2_72Op7getSizeEv, ptr @_ZNK11xercesc_2_72Op8getRefNoEv, ptr @_ZNK11xercesc_2_72Op16getConditionFlowEv, ptr @_ZNK11xercesc_2_72Op10getYesFlowEv, ptr @_ZNK11xercesc_2_72Op9getNoFlowEv, ptr @_ZNK11xercesc_2_72Op9elementAtEi, ptr @_ZNK11xercesc_2_72Op8getChildEv, ptr @_ZNK11xercesc_2_72Op8getTokenEv, ptr @_ZNK11xercesc_2_78StringOp10getLiteralEv] }, align 8
@_ZTSN11xercesc_2_78StringOpE = dso_local constant [25 x i8] c"N11xercesc_2_78StringOpE\00", align 1
@_ZTIN11xercesc_2_78StringOpE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_78StringOpE, ptr @_ZTIN11xercesc_2_72OpE }, align 8
@_ZTVN11xercesc_2_711ConditionOpE = dso_local unnamed_addr constant { [15 x ptr] } { [15 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_711ConditionOpE, ptr @_ZN11xercesc_2_72OpD2Ev, ptr @_ZN11xercesc_2_711ConditionOpD0Ev, ptr @_ZNK11xercesc_2_72Op7getDataEv, ptr @_ZNK11xercesc_2_72Op8getData2Ev, ptr @_ZNK11xercesc_2_72Op7getSizeEv, ptr @_ZNK11xercesc_2_711ConditionOp8getRefNoEv, ptr @_ZNK11xercesc_2_711ConditionOp16getConditionFlowEv, ptr @_ZNK11xercesc_2_711ConditionOp10getYesFlowEv, ptr @_ZNK11xercesc_2_711ConditionOp9getNoFlowEv, ptr @_ZNK11xercesc_2_72Op9elementAtEi, ptr @_ZNK11xercesc_2_72Op8getChildEv, ptr @_ZNK11xercesc_2_72Op8getTokenEv, ptr @_ZNK11xercesc_2_72Op10getLiteralEv] }, align 8
@_ZTSN11xercesc_2_711ConditionOpE = dso_local constant [29 x i8] c"N11xercesc_2_711ConditionOpE\00", align 1
@_ZTIN11xercesc_2_711ConditionOpE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_711ConditionOpE, ptr @_ZTIN11xercesc_2_72OpE }, align 8
@.str = private unnamed_addr constant [7 x i8] c"Op.cpp\00", align 1
@_ZTSN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local constant [34 x i8] c"N11xercesc_2_716RuntimeExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_716RuntimeExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
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

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_72OpD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xercesc_2_72OpD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #11
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #11
  ret void
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_72Op7getDataEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !61 {
  %2 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %3 = getelementptr inbounds %"class.xercesc_2_7::Op", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !62
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull @.str, i32 noundef 50, i32 noundef 294, ptr noundef %4) #13
          to label %5 unwind label %6

5:                                                ; preds = %1
  tail call void @__cxa_throw(ptr nonnull %2, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #14
  unreachable

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %2) #12
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_72Op8getData2Ev(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !61 {
  %2 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %3 = getelementptr inbounds %"class.xercesc_2_7::Op", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !62
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull @.str, i32 noundef 56, i32 noundef 294, ptr noundef %4) #13
          to label %5 unwind label %6

5:                                                ; preds = %1
  tail call void @__cxa_throw(ptr nonnull %2, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #14
  unreachable

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %2) #12
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_72Op7getSizeEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !61 {
  %2 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %3 = getelementptr inbounds %"class.xercesc_2_7::Op", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !62
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull @.str, i32 noundef 44, i32 noundef 294, ptr noundef %4) #13
          to label %5 unwind label %6

5:                                                ; preds = %1
  tail call void @__cxa_throw(ptr nonnull %2, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #14
  unreachable

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %2) #12
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_72Op8getRefNoEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !61 {
  %2 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %3 = getelementptr inbounds %"class.xercesc_2_7::Op", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !62
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull @.str, i32 noundef 62, i32 noundef 294, ptr noundef %4) #13
          to label %5 unwind label %6

5:                                                ; preds = %1
  tail call void @__cxa_throw(ptr nonnull %2, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #14
  unreachable

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %2) #12
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local noalias noundef nonnull ptr @_ZNK11xercesc_2_72Op16getConditionFlowEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !61 {
  %2 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %3 = getelementptr inbounds %"class.xercesc_2_7::Op", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !62
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull @.str, i32 noundef 80, i32 noundef 294, ptr noundef %4) #13
          to label %5 unwind label %6

5:                                                ; preds = %1
  tail call void @__cxa_throw(ptr nonnull %2, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #14
  unreachable

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %2) #12
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local noalias noundef nonnull ptr @_ZNK11xercesc_2_72Op10getYesFlowEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !61 {
  %2 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %3 = getelementptr inbounds %"class.xercesc_2_7::Op", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !62
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull @.str, i32 noundef 86, i32 noundef 294, ptr noundef %4) #13
          to label %5 unwind label %6

5:                                                ; preds = %1
  tail call void @__cxa_throw(ptr nonnull %2, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #14
  unreachable

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %2) #12
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local noalias noundef nonnull ptr @_ZNK11xercesc_2_72Op9getNoFlowEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !61 {
  %2 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %3 = getelementptr inbounds %"class.xercesc_2_7::Op", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !62
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull @.str, i32 noundef 92, i32 noundef 294, ptr noundef %4) #13
          to label %5 unwind label %6

5:                                                ; preds = %1
  tail call void @__cxa_throw(ptr nonnull %2, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #14
  unreachable

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %2) #12
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local noalias noundef nonnull ptr @_ZNK11xercesc_2_72Op9elementAtEi(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0, i32 %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !61 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %4 = getelementptr inbounds %"class.xercesc_2_7::Op", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull @.str, i32 noundef 68, i32 noundef 294, ptr noundef %5) #13
          to label %6 unwind label %7

6:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #14
  unreachable

7:                                                ; preds = %2
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #12
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local noalias noundef nonnull ptr @_ZNK11xercesc_2_72Op8getChildEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !61 {
  %2 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %3 = getelementptr inbounds %"class.xercesc_2_7::Op", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !62
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull @.str, i32 noundef 74, i32 noundef 294, ptr noundef %4) #13
          to label %5 unwind label %6

5:                                                ; preds = %1
  tail call void @__cxa_throw(ptr nonnull %2, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #14
  unreachable

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %2) #12
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local noalias noundef nonnull ptr @_ZNK11xercesc_2_72Op8getTokenEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !61 {
  %2 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %3 = getelementptr inbounds %"class.xercesc_2_7::Op", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !62
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull @.str, i32 noundef 104, i32 noundef 294, ptr noundef %4) #13
          to label %5 unwind label %6

5:                                                ; preds = %1
  tail call void @__cxa_throw(ptr nonnull %2, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #14
  unreachable

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %2) #12
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local noalias noundef nonnull ptr @_ZNK11xercesc_2_72Op10getLiteralEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !61 {
  %2 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %3 = getelementptr inbounds %"class.xercesc_2_7::Op", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !62
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull @.str, i32 noundef 98, i32 noundef 294, ptr noundef %4) #13
          to label %5 unwind label %6

5:                                                ; preds = %1
  tail call void @__cxa_throw(ptr nonnull %2, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #14
  unreachable

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %2) #12
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_76CharOpD0Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xercesc_2_72OpD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) #11
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_76CharOp7getDataEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(36) %0) unnamed_addr #2 align 2 !prof !68 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::CharOp", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !69
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77UnionOpD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 !prof !72 {
  store ptr getelementptr inbounds ({ [15 x ptr] }, ptr @_ZTVN11xercesc_2_77UnionOpE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !73
  %2 = getelementptr inbounds %"class.xercesc_2_7::UnionOp", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !75
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !73
  %7 = getelementptr inbounds ptr, ptr %6, i64 1
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(40) %3) #11
  br label %9

9:                                                ; preds = %5, %1
  tail call void @_ZN11xercesc_2_72OpD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77UnionOpD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xercesc_2_77UnionOpD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #11
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_77UnionOp7getSizeEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(40) %0) unnamed_addr #0 align 2 !prof !77 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::UnionOp", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !75
  %4 = tail call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_2OpEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %3) #13
  ret i32 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_77UnionOp9elementAtEi(ptr nocapture noundef nonnull readonly align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #3 align 2 !prof !78 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::UnionOp", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !75
  %5 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_2OpEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef %1) #13
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77ChildOpD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xercesc_2_72OpD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #11
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_77ChildOp8getChildEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(40) %0) unnamed_addr #2 align 2 !prof !79 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ChildOp", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !80
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710ModifierOpD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xercesc_2_72OpD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #11
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_710ModifierOp7getDataEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(48) %0) unnamed_addr #2 align 2 !prof !82 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ModifierOp", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !83
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_710ModifierOp8getData2Ev(ptr nocapture noundef nonnull readonly align 8 dereferenceable(48) %0) unnamed_addr #2 align 2 !prof !61 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ModifierOp", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !85
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77RangeOpD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xercesc_2_72OpD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #11
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_77RangeOp8getTokenEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(40) %0) unnamed_addr #2 align 2 !prof !86 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RangeOp", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !87
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_78StringOpD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !89 {
  store ptr getelementptr inbounds ({ [15 x ptr] }, ptr @_ZTVN11xercesc_2_78StringOpE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !73
  %2 = getelementptr inbounds %"class.xercesc_2_7::Op", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !62
  %4 = getelementptr inbounds %"class.xercesc_2_7::StringOp", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !90
  %6 = load ptr, ptr %3, align 8, !tbaa !73
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5) #13
          to label %9 unwind label %10

9:                                                ; preds = %1
  tail call void @_ZN11xercesc_2_72OpD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #11
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #15
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_78StringOpD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xercesc_2_78StringOpD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #11
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_78StringOp10getLiteralEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(40) %0) unnamed_addr #2 align 2 !prof !92 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::StringOp", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !90
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_72OpD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 !prof !93 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711ConditionOpD0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xercesc_2_72OpD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) #11
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_711ConditionOp8getRefNoEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(64) %0) unnamed_addr #2 align 2 !prof !61 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ConditionOp", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !94
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_711ConditionOp16getConditionFlowEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(64) %0) unnamed_addr #2 align 2 !prof !61 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ConditionOp", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !96
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_711ConditionOp10getYesFlowEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(64) %0) unnamed_addr #2 align 2 !prof !61 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ConditionOp", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !97
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_711ConditionOp9getNoFlowEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(64) %0) unnamed_addr #2 align 2 !prof !61 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ConditionOp", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !98
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_72OpC2EsPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %0, i16 noundef signext %1, ptr noundef %2) unnamed_addr #0 align 2 !prof !93 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  store ptr getelementptr inbounds ({ [15 x ptr] }, ptr @_ZTVN11xercesc_2_72OpE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !73
  %4 = getelementptr inbounds %"class.xercesc_2_7::Op", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !62
  %5 = getelementptr inbounds %"class.xercesc_2_7::Op", ptr %0, i64 0, i32 2
  store i16 %1, ptr %5, align 8, !tbaa !99
  %6 = getelementptr inbounds %"class.xercesc_2_7::Op", ptr %0, i64 0, i32 3
  store ptr null, ptr %6, align 8, !tbaa !100
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #0 comdat align 2 !prof !101 {
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !61 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #13
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !73
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #13
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #11
  resume { ptr, i32 } %8
}

declare i32 @__gxx_personality_v0(...)

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #11
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 !prof !61 {
  ret ptr @_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !61 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !102
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #13
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #13
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #11
  resume { ptr, i32 } %7
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #3 comdat align 2 !prof !61 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #13
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !73
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_76CharOpC2EsiPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %0, i16 noundef signext %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 align 2 !prof !105 {
  tail call void @_ZN11xercesc_2_72OpC2EsPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %0, i16 noundef signext %1, ptr noundef %3) #13
  store ptr getelementptr inbounds ({ [15 x ptr] }, ptr @_ZTVN11xercesc_2_76CharOpE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !73
  %5 = getelementptr inbounds %"class.xercesc_2_7::CharOp", ptr %0, i64 0, i32 1
  store i32 %2, ptr %5, align 8, !tbaa !69
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_77UnionOpC2EsiPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i16 noundef signext %1, i32 noundef %2, ptr noundef %3) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !72 {
  tail call void @_ZN11xercesc_2_72OpC2EsPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %0, i16 noundef signext %1, ptr noundef %3) #13
  store ptr getelementptr inbounds ({ [15 x ptr] }, ptr @_ZTVN11xercesc_2_77UnionOpE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !73
  %5 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %3) #13
          to label %6 unwind label %9

6:                                                ; preds = %4
  invoke void @_ZN11xercesc_2_711RefVectorOfINS_2OpEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %5, i32 noundef %2, i1 noundef zeroext false, ptr noundef %3) #13
          to label %7 unwind label %11

7:                                                ; preds = %6
  %8 = getelementptr inbounds %"class.xercesc_2_7::UnionOp", ptr %0, i64 0, i32 1
  store ptr %5, ptr %8, align 8, !tbaa !75
  ret void

9:                                                ; preds = %4
  %10 = landingpad { ptr, i32 }
          cleanup
  br label %13

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %5, ptr noundef %3) #11
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi { ptr, i32 } [ %12, %11 ], [ %10, %9 ]
  tail call void @_ZN11xercesc_2_72OpD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #11
  resume { ptr, i32 } %14
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_2OpEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #3 comdat align 2 !prof !105 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_2OpEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) #13
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_2OpEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !73
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_2OpEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #3 comdat align 2 !prof !105 {
  %5 = zext i1 %2 to i8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_715BaseRefVectorOfINS_2OpEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !73
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  store i8 %5, ptr %6, align 8, !tbaa !106
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  store i32 0, ptr %7, align 4, !tbaa !109
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 3
  store i32 %1, ptr %8, align 8, !tbaa !110
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  store ptr null, ptr %9, align 8, !tbaa !111
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  store ptr %3, ptr %10, align 8, !tbaa !112
  %11 = zext i32 %1 to i64
  %12 = shl nuw nsw i64 %11, 3
  %13 = load ptr, ptr %3, align 8, !tbaa !73
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %12) #13
  store ptr %16, ptr %9, align 8, !tbaa !111
  %17 = icmp eq i32 %1, 0
  br i1 %17, label %18, label %19, !prof !113

18:                                               ; preds = %19, %4
  ret void

19:                                               ; preds = %4, %19
  %20 = phi i64 [ %23, %19 ], [ 0, %4 ]
  %21 = load ptr, ptr %9, align 8, !tbaa !111
  %22 = getelementptr inbounds ptr, ptr %21, i64 %20
  store ptr null, ptr %22, align 8, !tbaa !114
  %23 = add nuw nsw i64 %20, 1
  %24 = icmp eq i64 %23, %11
  br i1 %24, label %18, label %19, !prof !115, !llvm.loop !116
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_2OpEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !105 {
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_2OpEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !73
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !106, !range !118, !noundef !119
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %28, label %5, !prof !120

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !109
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %28, label %9, !prof !121

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %23
  %12 = phi i32 [ %7, %9 ], [ %24, %23 ]
  %13 = phi i64 [ 0, %9 ], [ %25, %23 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !111
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !114
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %11
  %19 = load ptr, ptr %16, align 8, !tbaa !73
  %20 = getelementptr inbounds ptr, ptr %19, i64 1
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(32) %16) #11
  %22 = load i32, ptr %6, align 4, !tbaa !109
  br label %23

23:                                               ; preds = %11, %18
  %24 = phi i32 [ %12, %11 ], [ %22, %18 ]
  %25 = add nuw nsw i64 %13, 1
  %26 = zext i32 %24 to i64
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %11, label %28, !prof !122, !llvm.loop !123

28:                                               ; preds = %23, %5, %1
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !112
  %31 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !111
  %33 = load ptr, ptr %30, align 8, !tbaa !73
  %34 = getelementptr inbounds ptr, ptr %33, i64 3
  %35 = load ptr, ptr %34, align 8
  invoke void %35(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef %32) #13
          to label %36 unwind label %37

36:                                               ; preds = %28
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_2OpEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #11
  ret void

37:                                               ; preds = %28
  %38 = landingpad { ptr, i32 }
          catch ptr null
  %39 = extractvalue { ptr, i32 } %38, 0
  tail call void @__clang_call_terminate(ptr %39) #15
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_2OpEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xercesc_2_711RefVectorOfINS_2OpEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #11
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_2OpEE12setElementAtEPS1_j(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !61 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !109
  %6 = icmp ugt i32 %5, %2
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !112
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str.1, i32 noundef 67, i32 noundef 116, ptr noundef %10) #13
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #14
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #12
  resume { ptr, i32 } %13

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %16 = load i8, ptr %15, align 8, !tbaa !106, !range !118, !noundef !119
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = zext i32 %2 to i64
  br label %31

20:                                               ; preds = %14
  %21 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !111
  %23 = zext i32 %2 to i64
  %24 = getelementptr inbounds ptr, ptr %22, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !114
  %26 = icmp eq ptr %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %20
  %28 = load ptr, ptr %25, align 8, !tbaa !73
  %29 = getelementptr inbounds ptr, ptr %28, i64 1
  %30 = load ptr, ptr %29, align 8
  tail call void %30(ptr noundef nonnull align 8 dereferenceable(32) %25) #11
  br label %31

31:                                               ; preds = %18, %20, %27
  %32 = phi i64 [ %19, %18 ], [ %23, %20 ], [ %23, %27 ]
  %33 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %34 = load ptr, ptr %33, align 8, !tbaa !111
  %35 = getelementptr inbounds ptr, ptr %34, i64 %32
  store ptr %1, ptr %35, align 8, !tbaa !114
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_2OpEE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 !prof !61 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !109
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %9

8:                                                ; preds = %25, %1
  store i32 0, ptr %2, align 4, !tbaa !109
  ret void

9:                                                ; preds = %5, %25
  %10 = phi i32 [ %3, %5 ], [ %26, %25 ]
  %11 = phi i64 [ 0, %5 ], [ %29, %25 ]
  %12 = load i8, ptr %6, align 8, !tbaa !106, !range !118, !noundef !119
  %13 = icmp eq i8 %12, 0
  %14 = load ptr, ptr %7, align 8, !tbaa !111
  br i1 %13, label %25, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds ptr, ptr %14, i64 %11
  %17 = load ptr, ptr %16, align 8, !tbaa !114
  %18 = icmp eq ptr %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr %17, align 8, !tbaa !73
  %21 = getelementptr inbounds ptr, ptr %20, i64 1
  %22 = load ptr, ptr %21, align 8
  tail call void %22(ptr noundef nonnull align 8 dereferenceable(32) %17) #11
  %23 = load ptr, ptr %7, align 8, !tbaa !111
  %24 = load i32, ptr %2, align 4, !tbaa !109
  br label %25

25:                                               ; preds = %15, %19, %9
  %26 = phi i32 [ %10, %15 ], [ %24, %19 ], [ %10, %9 ]
  %27 = phi ptr [ %14, %15 ], [ %23, %19 ], [ %14, %9 ]
  %28 = getelementptr inbounds ptr, ptr %27, i64 %11
  store ptr null, ptr %28, align 8, !tbaa !114
  %29 = add nuw nsw i64 %11, 1
  %30 = zext i32 %26 to i64
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %9, label %8, !llvm.loop !124
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_2OpEE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !61 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !109
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !112
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.1, i32 noundef 144, i32 noundef 116, ptr noundef %9) #13
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #14
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #12
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %15 = load i8, ptr %14, align 8, !tbaa !106, !range !118, !noundef !119
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !111
  %20 = zext i32 %1 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !114
  %23 = icmp eq ptr %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %17
  %25 = load ptr, ptr %22, align 8, !tbaa !73
  %26 = getelementptr inbounds ptr, ptr %25, i64 1
  %27 = load ptr, ptr %26, align 8
  tail call void %27(ptr noundef nonnull align 8 dereferenceable(32) %22) #11
  %28 = load i32, ptr %3, align 4, !tbaa !109
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
  %38 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %39 = zext i32 %1 to i64
  %40 = zext i32 %31 to i64
  br label %51

41:                                               ; preds = %29
  %42 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %43 = load ptr, ptr %42, align 8, !tbaa !111
  %44 = zext i32 %1 to i64
  %45 = getelementptr inbounds ptr, ptr %43, i64 %44
  br label %59

46:                                               ; preds = %51, %35
  %47 = phi i64 [ %36, %35 ], [ %40, %51 ]
  %48 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !111
  %50 = getelementptr inbounds ptr, ptr %49, i64 %47
  br label %59

51:                                               ; preds = %37, %51
  %52 = phi i64 [ %39, %37 ], [ %54, %51 ]
  %53 = load ptr, ptr %38, align 8, !tbaa !111
  %54 = add nuw nsw i64 %52, 1
  %55 = getelementptr inbounds ptr, ptr %53, i64 %54
  %56 = load ptr, ptr %55, align 8, !tbaa !114
  %57 = getelementptr inbounds ptr, ptr %53, i64 %52
  store ptr %56, ptr %57, align 8, !tbaa !114
  %58 = icmp eq i64 %54, %40
  br i1 %58, label %46, label %51, !llvm.loop !125

59:                                               ; preds = %46, %41
  %60 = phi ptr [ %50, %46 ], [ %45, %41 ]
  store ptr null, ptr %60, align 8, !tbaa !114
  store i32 %31, ptr %3, align 4, !tbaa !109
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_2OpEE17removeLastElementEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 !prof !61 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !109
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 4, !tbaa !109
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !106, !range !118, !noundef !119
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !111
  %13 = zext i32 %6 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !114
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %10
  %18 = load ptr, ptr %15, align 8, !tbaa !73
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(32) %15) #11
  br label %21

21:                                               ; preds = %10, %17, %1, %5
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_2OpEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 comdat align 2 !prof !61 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !106, !range !118, !noundef !119
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %28, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !109
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %28, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %23
  %12 = phi i32 [ %7, %9 ], [ %24, %23 ]
  %13 = phi i64 [ 0, %9 ], [ %25, %23 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !111
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !114
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %11
  %19 = load ptr, ptr %16, align 8, !tbaa !73
  %20 = getelementptr inbounds ptr, ptr %19, i64 1
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(32) %16) #11
  %22 = load i32, ptr %6, align 4, !tbaa !109
  br label %23

23:                                               ; preds = %11, %18
  %24 = phi i32 [ %12, %11 ], [ %22, %18 ]
  %25 = add nuw nsw i64 %13, 1
  %26 = zext i32 %24 to i64
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %11, label %28, !llvm.loop !126

28:                                               ; preds = %23, %5, %1
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !112
  %31 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !111
  %33 = load ptr, ptr %30, align 8, !tbaa !73
  %34 = getelementptr inbounds ptr, ptr %33, i64 3
  %35 = load ptr, ptr %34, align 8
  tail call void %35(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef %32) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_2OpEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 !prof !105 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_2OpEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_2OpEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #11
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #11
  ret void
}

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #12
  tail call void @_ZSt9terminatev() #15
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !61 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #13
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !73
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #13
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #11
  resume { ptr, i32 } %8
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #11
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 !prof !61 {
  ret ptr @_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !61 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !102
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #13
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #13
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #11
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #3 comdat align 2 !prof !61 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #13
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !73
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_2OpEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #0 comdat align 2 !prof !77 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !109
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_2OpEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !78 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !109
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !127

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !112
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.1, i32 noundef 249, i32 noundef 116, ptr noundef %9) #13
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #14
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #12
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !111
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !114
  ret ptr %18
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_77UnionOp10addElementEPNS_2OpE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #3 align 2 !prof !128 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::UnionOp", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !75
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_2OpEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef %1) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_2OpEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !129 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_2OpEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 1) #13
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !111
  %5 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !109
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7
  store ptr %1, ptr %8, align 8, !tbaa !114
  %9 = add i32 %6, 1
  store i32 %9, ptr %5, align 4, !tbaa !109
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_2OpEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !129 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !109
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !110
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %52, !prof !130

9:                                                ; preds = %2
  %10 = lshr i32 %7, 1
  %11 = add i32 %10, %7
  %12 = tail call i32 @llvm.umax.i32(i32 %5, i32 %11)
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !112
  %15 = zext i32 %12 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = load ptr, ptr %14, align 8, !tbaa !73
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef %16) #13
  %21 = load i32, ptr %3, align 4, !tbaa !109
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23, !prof !131

23:                                               ; preds = %9
  %24 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %25 = zext i32 %21 to i64
  br label %37

26:                                               ; preds = %37, %9
  %27 = icmp ult i32 %21, %12
  br i1 %27, label %28, label %45, !prof !132

28:                                               ; preds = %26
  %29 = zext i32 %21 to i64
  %30 = shl nuw nsw i64 %29, 3
  %31 = getelementptr i8, ptr %20, i64 %30
  %32 = xor i32 %21, -1
  %33 = add i32 %12, %32
  %34 = zext i32 %33 to i64
  %35 = shl nuw nsw i64 %34, 3
  %36 = add nuw nsw i64 %35, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %31, i8 0, i64 %36, i1 false), !tbaa !114
  br label %45

37:                                               ; preds = %23, %37
  %38 = phi i64 [ 0, %23 ], [ %43, %37 ]
  %39 = load ptr, ptr %24, align 8, !tbaa !111
  %40 = getelementptr inbounds ptr, ptr %39, i64 %38
  %41 = load ptr, ptr %40, align 8, !tbaa !114
  %42 = getelementptr inbounds ptr, ptr %20, i64 %38
  store ptr %41, ptr %42, align 8, !tbaa !114
  %43 = add nuw nsw i64 %38, 1
  %44 = icmp eq i64 %43, %25
  br i1 %44, label %26, label %37, !prof !133, !llvm.loop !134

45:                                               ; preds = %28, %26
  %46 = load ptr, ptr %13, align 8, !tbaa !112
  %47 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %48 = load ptr, ptr %47, align 8, !tbaa !111
  %49 = load ptr, ptr %46, align 8, !tbaa !73
  %50 = getelementptr inbounds ptr, ptr %49, i64 3
  %51 = load ptr, ptr %50, align 8
  tail call void %51(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef %48) #13
  store ptr %20, ptr %47, align 8, !tbaa !111
  store i32 %12, ptr %6, align 8, !tbaa !110
  br label %52

52:                                               ; preds = %2, %45
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_77ChildOpC2EsPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i16 noundef signext %1, ptr noundef %2) unnamed_addr #0 align 2 !prof !135 {
  tail call void @_ZN11xercesc_2_72OpC2EsPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %0, i16 noundef signext %1, ptr noundef %2) #13
  store ptr getelementptr inbounds ({ [15 x ptr] }, ptr @_ZTVN11xercesc_2_77ChildOpE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !73
  %4 = getelementptr inbounds %"class.xercesc_2_7::ChildOp", ptr %0, i64 0, i32 1
  store ptr null, ptr %4, align 8, !tbaa !80
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xercesc_2_77ChildOp8setChildEPKNS_2OpE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #7 align 2 !prof !135 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ChildOp", ptr %0, i64 0, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !80
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_710ModifierOpC2EsiiPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, i16 noundef signext %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 align 2 !prof !136 {
  tail call void @_ZN11xercesc_2_77ChildOpC2EsPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i16 noundef signext %1, ptr noundef %4) #13
  store ptr getelementptr inbounds ({ [15 x ptr] }, ptr @_ZTVN11xercesc_2_710ModifierOpE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !73
  %6 = getelementptr inbounds %"class.xercesc_2_7::ModifierOp", ptr %0, i64 0, i32 1
  store i32 %2, ptr %6, align 8, !tbaa !83
  %7 = getelementptr inbounds %"class.xercesc_2_7::ModifierOp", ptr %0, i64 0, i32 2
  store i32 %3, ptr %7, align 4, !tbaa !85
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_77RangeOpC2EsPKNS_5TokenEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i16 noundef signext %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 align 2 !prof !137 {
  tail call void @_ZN11xercesc_2_72OpC2EsPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %0, i16 noundef signext %1, ptr noundef %3) #13
  store ptr getelementptr inbounds ({ [15 x ptr] }, ptr @_ZTVN11xercesc_2_77RangeOpE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !73
  %5 = getelementptr inbounds %"class.xercesc_2_7::RangeOp", ptr %0, i64 0, i32 1
  store ptr %2, ptr %5, align 8, !tbaa !87
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_78StringOpC2EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i16 noundef signext %1, ptr noundef %2, ptr noundef %3) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !89 {
  tail call void @_ZN11xercesc_2_72OpC2EsPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %0, i16 noundef signext %1, ptr noundef %3) #13
  store ptr getelementptr inbounds ({ [15 x ptr] }, ptr @_ZTVN11xercesc_2_78StringOpE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !73
  %5 = invoke noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %2, ptr noundef %3) #13
          to label %6 unwind label %8

6:                                                ; preds = %4
  %7 = getelementptr inbounds %"class.xercesc_2_7::StringOp", ptr %0, i64 0, i32 1
  store ptr %5, ptr %7, align 8, !tbaa !90
  ret void

8:                                                ; preds = %4
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_72OpD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #11
  resume { ptr, i32 } %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !138 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %13, label %4, !prof !139

4:                                                ; preds = %2
  %5 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef nonnull %0) #13
  %6 = add i32 %5, 1
  %7 = zext i32 %6 to i64
  %8 = shl nuw nsw i64 %7, 1
  %9 = load ptr, ptr %1, align 8, !tbaa !73
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
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %0) local_unnamed_addr #0 comdat align 2 !prof !140 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3, !prof !141

3:                                                ; preds = %1
  %4 = load i16, ptr %0, align 2, !tbaa !142
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %17, label %6, !prof !143

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %8, %6 ], [ %0, %3 ]
  %8 = getelementptr inbounds i16, ptr %7, i64 1
  %9 = load i16, ptr %8, align 2, !tbaa !142
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %6, !prof !144, !llvm.loop !145

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
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_711ConditionOpC2EsiPKNS_2OpES3_S3_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %0, i16 noundef signext %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) unnamed_addr #0 align 2 !prof !61 {
  tail call void @_ZN11xercesc_2_72OpC2EsPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %0, i16 noundef signext %1, ptr noundef %6) #13
  store ptr getelementptr inbounds ({ [15 x ptr] }, ptr @_ZTVN11xercesc_2_711ConditionOpE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !73
  %8 = getelementptr inbounds %"class.xercesc_2_7::ConditionOp", ptr %0, i64 0, i32 1
  store i32 %2, ptr %8, align 8, !tbaa !94
  %9 = getelementptr inbounds %"class.xercesc_2_7::ConditionOp", ptr %0, i64 0, i32 2
  store ptr %3, ptr %9, align 8, !tbaa !96
  %10 = getelementptr inbounds %"class.xercesc_2_7::ConditionOp", ptr %0, i64 0, i32 3
  store ptr %4, ptr %10, align 8, !tbaa !97
  %11 = getelementptr inbounds %"class.xercesc_2_7::ConditionOp", ptr %0, i64 0, i32 4
  store ptr %5, ptr %11, align 8, !tbaa !98
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

attributes #0 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline noreturn optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { nounwind optsize }
attributes #12 = { nounwind }
attributes #13 = { optsize }
attributes #14 = { noreturn }
attributes #15 = { noreturn nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!60}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59}
!36 = !{ptr @_ZN11xercesc_2_77UnionOpD2Ev, ptr @_ZN11xercesc_2_72OpD2Ev, i64 3}
!37 = !{ptr @_ZNK11xercesc_2_77UnionOp7getSizeEv, ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_2OpEE4sizeEv, i64 149741}
!38 = !{ptr @_ZNK11xercesc_2_77UnionOp9elementAtEi, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_2OpEE9elementAtEj, i64 238299}
!39 = !{ptr @_ZN11xercesc_2_78StringOpD2Ev, ptr @_ZN11xercesc_2_72OpD2Ev, i64 8}
!40 = !{ptr @_ZN11xercesc_2_72OpC2EsPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 103}
!41 = !{ptr @_ZN11xercesc_2_76CharOpC2EsiPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_72OpC2EsPNS_13MemoryManagerE, i64 13}
!42 = !{ptr @_ZN11xercesc_2_77UnionOpC2EsiPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_72OpC2EsPNS_13MemoryManagerE, i64 3}
!43 = !{ptr @_ZN11xercesc_2_77UnionOpC2EsiPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 3}
!44 = !{ptr @_ZN11xercesc_2_77UnionOpC2EsiPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_711RefVectorOfINS_2OpEEC2EjbPNS_13MemoryManagerE, i64 3}
!45 = !{ptr @_ZN11xercesc_2_711RefVectorOfINS_2OpEEC2EjbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_2OpEEC2EjbPNS_13MemoryManagerE, i64 13}
!46 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_2OpEEC2EjbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 13}
!47 = !{ptr @_ZN11xercesc_2_711RefVectorOfINS_2OpEED2Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_2OpEED2Ev, i64 13}
!48 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_2OpEE9elementAtEj, ptr @__cxa_allocate_exception, i64 1}
!49 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_2OpEE9elementAtEj, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!50 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_2OpEE9elementAtEj, ptr @__cxa_throw, i64 1}
!51 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_2OpEE9elementAtEj, ptr @__cxa_free_exception, i64 1}
!52 = !{ptr @_ZN11xercesc_2_77UnionOp10addElementEPNS_2OpE, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_2OpEE10addElementEPS1_, i64 7}
!53 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_2OpEE10addElementEPS1_, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_2OpEE19ensureExtraCapacityEj, i64 110}
!54 = !{ptr @_ZN11xercesc_2_77ChildOpC2EsPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_72OpC2EsPNS_13MemoryManagerE, i64 16}
!55 = !{ptr @_ZN11xercesc_2_710ModifierOpC2EsiiPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77ChildOpC2EsPNS_13MemoryManagerE, i64 11}
!56 = !{ptr @_ZN11xercesc_2_77RangeOpC2EsPKNS_5TokenEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_72OpC2EsPNS_13MemoryManagerE, i64 51}
!57 = !{ptr @_ZN11xercesc_2_78StringOpC2EsPKtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_72OpC2EsPNS_13MemoryManagerE, i64 8}
!58 = !{ptr @_ZN11xercesc_2_78StringOpC2EsPKtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE, i64 8}
!59 = !{ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79XMLString9stringLenEPKt, i64 400185}
!60 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!61 = !{!"function_entry_count", i64 0}
!62 = !{!63, !64, i64 8}
!63 = !{!"_ZTSN11xercesc_2_72OpE", !64, i64 8, !67, i64 16, !64, i64 24}
!64 = !{!"any pointer", !65, i64 0}
!65 = !{!"omnipotent char", !66, i64 0}
!66 = !{!"Simple C++ TBAA"}
!67 = !{!"short", !65, i64 0}
!68 = !{!"function_entry_count", i64 1357661}
!69 = !{!70, !71, i64 32}
!70 = !{!"_ZTSN11xercesc_2_76CharOpE", !63, i64 0, !71, i64 32}
!71 = !{!"int", !65, i64 0}
!72 = !{!"function_entry_count", i64 3}
!73 = !{!74, !74, i64 0}
!74 = !{!"vtable pointer", !66, i64 0}
!75 = !{!76, !64, i64 32}
!76 = !{!"_ZTSN11xercesc_2_77UnionOpE", !63, i64 0, !64, i64 32}
!77 = !{!"function_entry_count", i64 149741}
!78 = !{!"function_entry_count", i64 238299}
!79 = !{!"function_entry_count", i64 3618173}
!80 = !{!81, !64, i64 32}
!81 = !{!"_ZTSN11xercesc_2_77ChildOpE", !63, i64 0, !64, i64 32}
!82 = !{!"function_entry_count", i64 3591268}
!83 = !{!84, !71, i64 40}
!84 = !{!"_ZTSN11xercesc_2_710ModifierOpE", !81, i64 0, !71, i64 40, !71, i64 44}
!85 = !{!84, !71, i64 44}
!86 = !{!"function_entry_count", i64 1301032}
!87 = !{!88, !64, i64 32}
!88 = !{!"_ZTSN11xercesc_2_77RangeOpE", !63, i64 0, !64, i64 32}
!89 = !{!"function_entry_count", i64 8}
!90 = !{!91, !64, i64 32}
!91 = !{!"_ZTSN11xercesc_2_78StringOpE", !63, i64 0, !64, i64 32}
!92 = !{!"function_entry_count", i64 1262724}
!93 = !{!"function_entry_count", i64 103}
!94 = !{!95, !71, i64 32}
!95 = !{!"_ZTSN11xercesc_2_711ConditionOpE", !63, i64 0, !71, i64 32, !64, i64 40, !64, i64 48, !64, i64 56}
!96 = !{!95, !64, i64 40}
!97 = !{!95, !64, i64 48}
!98 = !{!95, !64, i64 56}
!99 = !{!63, !67, i64 16}
!100 = !{!63, !64, i64 24}
!101 = !{!"function_entry_count", i64 5836268}
!102 = !{!103, !64, i64 40}
!103 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !104, i64 8, !64, i64 16, !71, i64 24, !64, i64 32, !64, i64 40}
!104 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !65, i64 0}
!105 = !{!"function_entry_count", i64 13}
!106 = !{!107, !108, i64 8}
!107 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_2OpEEE", !108, i64 8, !71, i64 12, !71, i64 16, !64, i64 24, !64, i64 32}
!108 = !{!"bool", !65, i64 0}
!109 = !{!107, !71, i64 12}
!110 = !{!107, !71, i64 16}
!111 = !{!107, !64, i64 24}
!112 = !{!107, !64, i64 32}
!113 = !{!"branch_weights", i32 1, i32 223}
!114 = !{!64, !64, i64 0}
!115 = !{!"branch_weights", i32 223, i32 2465}
!116 = distinct !{!116, !117}
!117 = !{!"llvm.loop.mustprogress"}
!118 = !{i8 0, i8 2}
!119 = !{}
!120 = !{!"branch_weights", i32 4, i32 11}
!121 = !{!"branch_weights", i32 1, i32 175}
!122 = !{!"branch_weights", i32 1489, i32 175}
!123 = distinct !{!123, !117}
!124 = distinct !{!124, !117}
!125 = distinct !{!125, !117}
!126 = distinct !{!126, !117}
!127 = !{!"branch_weights", i32 238300, i32 1}
!128 = !{!"function_entry_count", i64 7}
!129 = !{!"function_entry_count", i64 110}
!130 = !{!"branch_weights", i32 4, i32 108}
!131 = !{!"branch_weights", i32 1, i32 127}
!132 = !{!"branch_weights", i32 127, i32 1}
!133 = !{!"branch_weights", i32 127, i32 1441}
!134 = distinct !{!134, !117}
!135 = !{!"function_entry_count", i64 16}
!136 = !{!"function_entry_count", i64 11}
!137 = !{!"function_entry_count", i64 51}
!138 = !{!"function_entry_count", i64 558789}
!139 = !{!"branch_weights", i32 158605, i32 400186}
!140 = !{!"function_entry_count", i64 2453164456}
!141 = !{!"branch_weights", i32 1, i32 -1841802839}
!142 = !{!67, !67, i64 0}
!143 = !{!"branch_weights", i32 1150041, i32 -1842952879}
!144 = !{!"branch_weights", i32 408669070, i32 -279908792}
!145 = distinct !{!145, !117}
