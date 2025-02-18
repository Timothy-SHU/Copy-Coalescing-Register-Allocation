; ModuleID = 'ValueStore.cpp'
source_filename = "ValueStore.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::ValueStore" = type { i8, i32, ptr, %"class.xercesc_2_7::FieldValueMap", ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::FieldValueMap" = type { ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XMLScanner" = type { %"class.xercesc_2_7::XMLBufferFullHandler", i64, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %"class.xercesc_2_7::ReaderMgr", ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %"class.xercesc_2_7::XMLBufferMgr", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::ElemStack" }
%"class.xercesc_2_7::XMLBufferFullHandler" = type { ptr }
%"class.xercesc_2_7::ReaderMgr" = type { %"class.xercesc_2_7::Locator", ptr, ptr, ptr, ptr, i32, ptr, i8, i32, i8, ptr }
%"class.xercesc_2_7::Locator" = type { ptr }
%"class.xercesc_2_7::XMLBufferMgr" = type { i32, ptr, ptr }
%"class.xercesc_2_7::XMLBuffer" = type { i32, i32, i32, i8, ptr, ptr, ptr }
%"class.xercesc_2_7::ElemStack" = type { i32, i32, %"class.xercesc_2_7::XMLStringPool", ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%"class.xercesc_2_7::XMLStringPool" = type { %"class.xercesc_2_7::XSerializable", ptr, ptr, ptr, i32, i32 }
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"class.xercesc_2_7::FieldActivator" = type { ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::ValueVectorOf" = type { i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::BaseRefVectorOf.0" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::ValueVectorOf.1" = type { i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::IdentityConstraint" = type <{ %"class.xercesc_2_7::XSerializable", ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] }>
%"class.xercesc_2_7::BaseRefVectorOf" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::BaseRefVectorOf.3" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::IC_KeyRef" = type { %"class.xercesc_2_7::IdentityConstraint.base", ptr }
%"class.xercesc_2_7::IdentityConstraint.base" = type <{ %"class.xercesc_2_7::XSerializable", ptr, ptr, ptr, ptr, ptr, i32 }>
%"class.xercesc_2_7::ValueStoreCache" = type { ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::ValueHashTableOf" = type { ptr, ptr, i32, ptr }
%"struct.xercesc_2_7::ValueHashTableBucketElem" = type { i8, ptr, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }
%"class.xercesc_2_7::RefHashTableOf" = type { ptr, i8, ptr, i32, i32, i32, ptr }
%"struct.xercesc_2_7::RefHashTableBucketElem" = type { ptr, ptr, ptr }

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_713FieldValueMap3putEPNS_8IC_FieldEPNS_17DatatypeValidatorEPKt = comdat any

$_ZN11xercesc_2_716ValueHashTableOfIbE3getEPKvPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_722NoSuchElementExceptionD0Ev = comdat any

$_ZNK11xercesc_2_722NoSuchElementException7getTypeEv = comdat any

$_ZNK11xercesc_2_722NoSuchElementException9duplicateEv = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv = comdat any

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

$_ZN11xercesc_2_713ValueVectorOfIPNS_8IC_FieldEE19ensureExtraCapacityEj = comdat any

$_ZN11xercesc_2_713ValueVectorOfIPNS_17DatatypeValidatorEE19ensureExtraCapacityEj = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfItE19ensureExtraCapacityEj = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_10ValueStoreEE3getEPKv = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_13FieldValueMapEED2Ev = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_13FieldValueMapEED0Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_13FieldValueMapEE12setElementAtEPS1_j = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_13FieldValueMapEE17removeAllElementsEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_13FieldValueMapEE15removeElementAtEj = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_13FieldValueMapEE17removeLastElementEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_13FieldValueMapEE7cleanupEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_13FieldValueMapEED2Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_13FieldValueMapEED0Ev = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTSN11xercesc_2_722NoSuchElementExceptionE = comdat any

$_ZTIN11xercesc_2_722NoSuchElementExceptionE = comdat any

$_ZTVN11xercesc_2_722NoSuchElementExceptionE = comdat any

$_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTVN11xercesc_2_716RefArrayVectorOfItEE = comdat any

$_ZTSN11xercesc_2_716RefArrayVectorOfItEE = comdat any

$_ZTSN11xercesc_2_715BaseRefVectorOfItEE = comdat any

$_ZTIN11xercesc_2_715BaseRefVectorOfItEE = comdat any

$_ZTIN11xercesc_2_716RefArrayVectorOfItEE = comdat any

$_ZTVN11xercesc_2_715BaseRefVectorOfItEE = comdat any

$_ZTVN11xercesc_2_711RefVectorOfINS_13FieldValueMapEEE = comdat any

$_ZTSN11xercesc_2_711RefVectorOfINS_13FieldValueMapEEE = comdat any

$_ZTSN11xercesc_2_715BaseRefVectorOfINS_13FieldValueMapEEE = comdat any

$_ZTIN11xercesc_2_715BaseRefVectorOfINS_13FieldValueMapEEE = comdat any

$_ZTIN11xercesc_2_711RefVectorOfINS_13FieldValueMapEEE = comdat any

$_ZTVN11xercesc_2_715BaseRefVectorOfINS_13FieldValueMapEEE = comdat any

@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [34 x i8] c"./xercesc/util/ValueHashTableOf.c\00", align 1
@_ZTSN11xercesc_2_722NoSuchElementExceptionE = linkonce_odr dso_local constant [40 x i8] c"N11xercesc_2_722NoSuchElementExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_722NoSuchElementExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_722NoSuchElementExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_722NoSuchElementExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_722NoSuchElementExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_722NoSuchElementExceptionD0Ev, ptr @_ZNK11xercesc_2_722NoSuchElementException7getTypeEv, ptr @_ZNK11xercesc_2_722NoSuchElementException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni29fgNoSuchElementException_NameE = external constant [0 x i16], align 2
@.str.1 = private unnamed_addr constant [31 x i8] c"./xercesc/util/ValueVectorOf.c\00", align 1
@_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant [48 x i8] c"N11xercesc_2_730ArrayIndexOutOfBoundsExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE = external constant [0 x i16], align 2
@.str.2 = private unnamed_addr constant [33 x i8] c"./xercesc/util/BaseRefVectorOf.c\00", align 1
@_ZTVN11xercesc_2_716RefArrayVectorOfItEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_716RefArrayVectorOfItEE, ptr @_ZN11xercesc_2_716RefArrayVectorOfItED2Ev, ptr @_ZN11xercesc_2_716RefArrayVectorOfItED0Ev, ptr @_ZN11xercesc_2_716RefArrayVectorOfItE12setElementAtEPtj, ptr @_ZN11xercesc_2_716RefArrayVectorOfItE17removeAllElementsEv, ptr @_ZN11xercesc_2_716RefArrayVectorOfItE15removeElementAtEj, ptr @_ZN11xercesc_2_716RefArrayVectorOfItE17removeLastElementEv, ptr @_ZN11xercesc_2_716RefArrayVectorOfItE7cleanupEv] }, comdat, align 8
@_ZTSN11xercesc_2_716RefArrayVectorOfItEE = linkonce_odr dso_local constant [37 x i8] c"N11xercesc_2_716RefArrayVectorOfItEE\00", comdat, align 1
@_ZTSN11xercesc_2_715BaseRefVectorOfItEE = linkonce_odr dso_local constant [36 x i8] c"N11xercesc_2_715BaseRefVectorOfItEE\00", comdat, align 1
@_ZTIN11xercesc_2_715BaseRefVectorOfItEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_715BaseRefVectorOfItEE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_716RefArrayVectorOfItEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_716RefArrayVectorOfItEE, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfItEE }, comdat, align 8
@_ZTVN11xercesc_2_715BaseRefVectorOfItEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfItEE, ptr @_ZN11xercesc_2_715BaseRefVectorOfItED2Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfItED0Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfItE12setElementAtEPtj, ptr @_ZN11xercesc_2_715BaseRefVectorOfItE17removeAllElementsEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfItE15removeElementAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfItE17removeLastElementEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfItE7cleanupEv] }, comdat, align 8
@.str.3 = private unnamed_addr constant [34 x i8] c"./xercesc/util/RefArrayVectorOf.c\00", align 1
@_ZTVN11xercesc_2_711RefVectorOfINS_13FieldValueMapEEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_711RefVectorOfINS_13FieldValueMapEEE, ptr @_ZN11xercesc_2_711RefVectorOfINS_13FieldValueMapEED2Ev, ptr @_ZN11xercesc_2_711RefVectorOfINS_13FieldValueMapEED0Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_13FieldValueMapEE12setElementAtEPS1_j, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_13FieldValueMapEE17removeAllElementsEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_13FieldValueMapEE15removeElementAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_13FieldValueMapEE17removeLastElementEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_13FieldValueMapEE7cleanupEv] }, comdat, align 8
@_ZTSN11xercesc_2_711RefVectorOfINS_13FieldValueMapEEE = linkonce_odr dso_local constant [50 x i8] c"N11xercesc_2_711RefVectorOfINS_13FieldValueMapEEE\00", comdat, align 1
@_ZTSN11xercesc_2_715BaseRefVectorOfINS_13FieldValueMapEEE = linkonce_odr dso_local constant [54 x i8] c"N11xercesc_2_715BaseRefVectorOfINS_13FieldValueMapEEE\00", comdat, align 1
@_ZTIN11xercesc_2_715BaseRefVectorOfINS_13FieldValueMapEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_715BaseRefVectorOfINS_13FieldValueMapEEE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_711RefVectorOfINS_13FieldValueMapEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_711RefVectorOfINS_13FieldValueMapEEE, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfINS_13FieldValueMapEEE }, comdat, align 8
@_ZTVN11xercesc_2_715BaseRefVectorOfINS_13FieldValueMapEEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfINS_13FieldValueMapEEE, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_13FieldValueMapEED2Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_13FieldValueMapEED0Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_13FieldValueMapEE12setElementAtEPS1_j, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_13FieldValueMapEE17removeAllElementsEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_13FieldValueMapEE15removeElementAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_13FieldValueMapEE17removeLastElementEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_13FieldValueMapEE7cleanupEv] }, comdat, align 8

@_ZN11xercesc_2_710ValueStoreC1EPNS_18IdentityConstraintEPNS_10XMLScannerEPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr), ptr @_ZN11xercesc_2_710ValueStoreC2EPNS_18IdentityConstraintEPNS_10XMLScannerEPNS_13MemoryManagerE
@_ZN11xercesc_2_710ValueStoreD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_710ValueStoreD2Ev

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #0

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #1 comdat !prof !66 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #13
  tail call void @_ZSt9terminatev() #14
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_710ValueStoreC2EPNS_18IdentityConstraintEPNS_10XMLScannerEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !67 {
  store i8 0, ptr %0, align 8, !tbaa !68
  %5 = getelementptr inbounds %"class.xercesc_2_7::ValueStore", ptr %0, i64 0, i32 1
  store i32 0, ptr %5, align 4, !tbaa !76
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueStore", ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !77
  %7 = getelementptr inbounds %"class.xercesc_2_7::ValueStore", ptr %0, i64 0, i32 3
  tail call void @_ZN11xercesc_2_713FieldValueMapC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef %3)
  %8 = getelementptr inbounds %"class.xercesc_2_7::ValueStore", ptr %0, i64 0, i32 4
  %9 = getelementptr inbounds %"class.xercesc_2_7::ValueStore", ptr %0, i64 0, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  store ptr %2, ptr %9, align 8, !tbaa !78
  %10 = getelementptr inbounds %"class.xercesc_2_7::ValueStore", ptr %0, i64 0, i32 7
  store ptr %3, ptr %10, align 8, !tbaa !79
  %11 = icmp eq ptr %2, null
  br i1 %11, label %15, label %12, !prof !80

12:                                               ; preds = %4
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %2, i64 0, i32 10
  %14 = load i8, ptr %13, align 8, !tbaa !81, !range !94, !noundef !95
  br label %15

15:                                               ; preds = %12, %4
  %16 = phi i8 [ 0, %4 ], [ %14, %12 ]
  store i8 %16, ptr %0, align 8, !tbaa !68
  ret void
}

declare void @_ZN11xercesc_2_713FieldValueMapC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_713FieldValueMapD1Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_710ValueStoreD2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #5 align 2 !prof !67 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueStore", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !96
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !97

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !98
  %7 = getelementptr inbounds ptr, ptr %6, i64 1
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(40) %3) #13, !prof !100
  br label %9

9:                                                ; preds = %5, %1
  %10 = getelementptr inbounds %"class.xercesc_2_7::ValueStore", ptr %0, i64 0, i32 3
  tail call void @_ZN11xercesc_2_713FieldValueMapD1Ev(ptr noundef nonnull align 8 dereferenceable(32) %10) #13
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_710ValueStore8addValueEPNS_8IC_FieldEPNS_17DatatypeValidatorEPKt(ptr nocapture noundef nonnull readnone align 8 dereferenceable(80) %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readnone %3) local_unnamed_addr #6 align 2 !prof !66 {
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xercesc_2_710ValueStore8addValueEPNS_14FieldActivatorEPNS_8IC_FieldEPNS_17DatatypeValidatorEPKt(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !101 {
  %6 = getelementptr inbounds %"class.xercesc_2_7::FieldActivator", ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !102
  %8 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !104
  %9 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZN11xercesc_2_716ValueHashTableOfIbE3getEPKvPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef %2, ptr noundef %8)
  %10 = load i8, ptr %9, align 1, !tbaa !105, !range !94, !noundef !95
  %11 = icmp ne i8 %10, 0
  %12 = load i8, ptr %0, align 8, !range !94
  %13 = icmp eq i8 %12, 0
  %14 = select i1 %11, i1 true, i1 %13, !prof !106
  br i1 %14, label %20, label %15, !prof !106

15:                                               ; preds = %5
  %16 = getelementptr inbounds %"class.xercesc_2_7::ValueStore", ptr %0, i64 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !78
  %18 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %17, i64 0, i32 50
  %19 = load ptr, ptr %18, align 8, !tbaa !107
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesE(ptr noundef nonnull align 8 dereferenceable(40) %19, i32 noundef 97)
  br label %20

20:                                               ; preds = %15, %5
  %21 = getelementptr inbounds %"class.xercesc_2_7::ValueStore", ptr %0, i64 0, i32 3
  %22 = tail call noundef i32 @_ZNK11xercesc_2_713FieldValueMap7indexOfEPKNS_8IC_FieldE(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef %2)
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %32, !prof !108

24:                                               ; preds = %20
  %25 = load i8, ptr %0, align 8, !tbaa !68, !range !94, !noundef !95
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %210, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %"class.xercesc_2_7::ValueStore", ptr %0, i64 0, i32 6
  %29 = load ptr, ptr %28, align 8, !tbaa !78
  %30 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %29, i64 0, i32 50
  %31 = load ptr, ptr %30, align 8, !tbaa !107
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesE(ptr noundef nonnull align 8 dereferenceable(40) %31, i32 noundef 98)
  br label %210

32:                                               ; preds = %20
  %33 = getelementptr inbounds %"class.xercesc_2_7::ValueStore", ptr %0, i64 0, i32 3, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !109
  %35 = icmp eq ptr %34, null
  br i1 %35, label %56, label %36, !prof !108

36:                                               ; preds = %32
  %37 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %34, i64 0, i32 1
  %38 = load i32, ptr %37, align 4, !tbaa !110
  %39 = icmp ugt i32 %38, %22
  br i1 %39, label %49, label %40, !prof !112

40:                                               ; preds = %36
  %41 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %42 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %34, i64 0, i32 4
  %43 = load ptr, ptr %42, align 8, !tbaa !113
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %41, ptr noundef nonnull @.str.1, i32 noundef 206, i32 noundef 116, ptr noundef %43)
          to label %44 unwind label %47

44:                                               ; preds = %40
  tail call void @__cxa_throw(ptr nonnull %41, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

45:                                               ; preds = %141, %208, %69, %47
  %46 = phi { ptr, i32 } [ %48, %47 ], [ %70, %69 ], [ %209, %208 ], [ %142, %141 ]
  resume { ptr, i32 } %46

47:                                               ; preds = %40
  %48 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %41) #13
  br label %45

49:                                               ; preds = %36
  %50 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %34, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !114
  %52 = zext i32 %22 to i64
  %53 = getelementptr inbounds ptr, ptr %51, i64 %52
  %54 = load ptr, ptr %53, align 8, !tbaa !104
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %82, !prof !106

56:                                               ; preds = %32, %49
  %57 = getelementptr inbounds %"class.xercesc_2_7::ValueStore", ptr %0, i64 0, i32 3, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !115
  %59 = icmp eq ptr %58, null
  br i1 %59, label %78, label %60, !prof !108

60:                                               ; preds = %56
  %61 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %58, i64 0, i32 2
  %62 = load i32, ptr %61, align 4, !tbaa !116
  %63 = icmp ugt i32 %62, %22
  br i1 %63, label %71, label %64, !prof !118

64:                                               ; preds = %60
  %65 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %66 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %58, i64 0, i32 5
  %67 = load ptr, ptr %66, align 8, !tbaa !119
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %65, ptr noundef nonnull @.str.2, i32 noundef 249, i32 noundef 116, ptr noundef %67)
          to label %68 unwind label %69

68:                                               ; preds = %64
  tail call void @__cxa_throw(ptr nonnull %65, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

69:                                               ; preds = %64
  %70 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %65) #13
  br label %45

71:                                               ; preds = %60
  %72 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %58, i64 0, i32 4
  %73 = load ptr, ptr %72, align 8, !tbaa !120
  %74 = zext i32 %22 to i64
  %75 = getelementptr inbounds ptr, ptr %73, i64 %74
  %76 = load ptr, ptr %75, align 8, !tbaa !104
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %82, !prof !106

78:                                               ; preds = %56, %71
  %79 = getelementptr inbounds %"class.xercesc_2_7::ValueStore", ptr %0, i64 0, i32 1
  %80 = load i32, ptr %79, align 4, !tbaa !76
  %81 = add nsw i32 %80, 1
  store i32 %81, ptr %79, align 4, !tbaa !76
  br label %82

82:                                               ; preds = %78, %71, %49
  tail call void @_ZN11xercesc_2_713FieldValueMap3putEPNS_8IC_FieldEPNS_17DatatypeValidatorEPKt(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  %83 = getelementptr inbounds %"class.xercesc_2_7::ValueStore", ptr %0, i64 0, i32 1
  %84 = load i32, ptr %83, align 4, !tbaa !76
  %85 = load ptr, ptr %21, align 8, !tbaa !121
  %86 = icmp eq ptr %85, null
  br i1 %86, label %90, label %87, !prof !108

87:                                               ; preds = %82
  %88 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.1", ptr %85, i64 0, i32 1
  %89 = load i32, ptr %88, align 4, !tbaa !122
  br label %90

90:                                               ; preds = %82, %87
  %91 = phi i32 [ %89, %87 ], [ 0, %82 ]
  %92 = icmp eq i32 %84, %91
  br i1 %92, label %93, label %210, !prof !106

93:                                               ; preds = %90
  %94 = tail call noundef zeroext i1 @_ZN11xercesc_2_710ValueStore8containsEPKNS_13FieldValueMapE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %21)
  %95 = load i8, ptr %0, align 8, !range !94
  %96 = icmp ne i8 %95, 0
  %97 = select i1 %94, i1 %96, i1 false
  br i1 %97, label %98, label %115, !prof !124

98:                                               ; preds = %93
  %99 = getelementptr inbounds %"class.xercesc_2_7::ValueStore", ptr %0, i64 0, i32 2
  %100 = load ptr, ptr %99, align 8, !tbaa !77
  %101 = load ptr, ptr %100, align 8, !tbaa !98
  %102 = getelementptr inbounds ptr, ptr %101, i64 5
  %103 = load ptr, ptr %102, align 8
  %104 = tail call noundef signext i16 %103(ptr noundef nonnull align 8 dereferenceable(52) %100), !prof !125
  switch i16 %104, label %115 [
    i16 0, label %106
    i16 1, label %105
  ], !prof !126

105:                                              ; preds = %98
  br label %106

106:                                              ; preds = %98, %105
  %107 = phi i32 [ 105, %105 ], [ 104, %98 ]
  %108 = getelementptr inbounds %"class.xercesc_2_7::ValueStore", ptr %0, i64 0, i32 6
  %109 = load ptr, ptr %108, align 8, !tbaa !78
  %110 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %109, i64 0, i32 50
  %111 = load ptr, ptr %110, align 8, !tbaa !107
  %112 = load ptr, ptr %99, align 8, !tbaa !77
  %113 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraint", ptr %112, i64 0, i32 2
  %114 = load ptr, ptr %113, align 8, !tbaa !127
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %111, i32 noundef %107, ptr noundef %114, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %115

115:                                              ; preds = %106, %98, %93
  %116 = getelementptr inbounds %"class.xercesc_2_7::ValueStore", ptr %0, i64 0, i32 4
  %117 = load ptr, ptr %116, align 8, !tbaa !96
  %118 = icmp eq ptr %117, null
  br i1 %118, label %119, label %143, !prof !129

119:                                              ; preds = %115
  %120 = getelementptr inbounds %"class.xercesc_2_7::ValueStore", ptr %0, i64 0, i32 7
  %121 = load ptr, ptr %120, align 8, !tbaa !79
  %122 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %121)
  %123 = load ptr, ptr %120, align 8, !tbaa !79
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_715BaseRefVectorOfINS_13FieldValueMapEEE, i64 0, inrange i32 0, i64 2), ptr %122, align 8, !tbaa !98
  %124 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %122, i64 0, i32 1
  store i8 1, ptr %124, align 8, !tbaa !130
  %125 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %122, i64 0, i32 2
  store i32 0, ptr %125, align 4, !tbaa !132
  %126 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %122, i64 0, i32 3
  store i32 4, ptr %126, align 8, !tbaa !133
  %127 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %122, i64 0, i32 4
  store ptr null, ptr %127, align 8, !tbaa !134
  %128 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %122, i64 0, i32 5
  store ptr %123, ptr %128, align 8, !tbaa !135
  %129 = load ptr, ptr %123, align 8, !tbaa !98
  %130 = getelementptr inbounds ptr, ptr %129, i64 2
  %131 = load ptr, ptr %130, align 8
  %132 = invoke noundef ptr %131(ptr noundef nonnull align 8 dereferenceable(8) %123, i64 noundef 32)
          to label %133 unwind label %141, !prof !136

133:                                              ; preds = %119
  store ptr %132, ptr %127, align 8, !tbaa !134
  br label %134

134:                                              ; preds = %133, %134
  %135 = phi i64 [ 0, %133 ], [ %138, %134 ]
  %136 = load ptr, ptr %127, align 8, !tbaa !134
  %137 = getelementptr inbounds ptr, ptr %136, i64 %135
  store ptr null, ptr %137, align 8, !tbaa !104
  %138 = add nuw nsw i64 %135, 1
  %139 = icmp eq i64 %138, 4
  br i1 %139, label %140, label %134, !prof !137, !llvm.loop !138

140:                                              ; preds = %134
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_13FieldValueMapEEE, i64 0, inrange i32 0, i64 2), ptr %122, align 8, !tbaa !98
  store ptr %122, ptr %116, align 8, !tbaa !96
  br label %143

141:                                              ; preds = %119
  %142 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef nonnull %122, ptr noundef %121) #13
  br label %45

143:                                              ; preds = %140, %115
  %144 = load ptr, ptr %116, align 8, !tbaa !96
  %145 = getelementptr inbounds %"class.xercesc_2_7::ValueStore", ptr %0, i64 0, i32 7
  %146 = load ptr, ptr %145, align 8, !tbaa !79
  %147 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 32, ptr noundef %146)
  invoke void @_ZN11xercesc_2_713FieldValueMapC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %147, ptr noundef nonnull align 8 dereferenceable(32) %21)
          to label %148 unwind label %208, !prof !106

148:                                              ; preds = %143
  %149 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %144, i64 0, i32 2
  %150 = load i32, ptr %149, align 4, !tbaa !132
  %151 = add i32 %150, 1
  %152 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %144, i64 0, i32 3
  %153 = load i32, ptr %152, align 8, !tbaa !133
  %154 = icmp ugt i32 %151, %153
  br i1 %154, label %155, label %201, !prof !141

155:                                              ; preds = %148
  %156 = lshr i32 %153, 1
  %157 = add i32 %156, %153
  %158 = tail call i32 @llvm.umax.i32(i32 %151, i32 %157)
  %159 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %144, i64 0, i32 5
  %160 = load ptr, ptr %159, align 8, !tbaa !135
  %161 = zext i32 %158 to i64
  %162 = shl nuw nsw i64 %161, 3
  %163 = load ptr, ptr %160, align 8, !tbaa !98
  %164 = getelementptr inbounds ptr, ptr %163, i64 2
  %165 = load ptr, ptr %164, align 8
  %166 = tail call noundef ptr %165(ptr noundef nonnull align 8 dereferenceable(8) %160, i64 noundef %162), !prof !142
  %167 = load i32, ptr %149, align 4, !tbaa !132
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %174, label %169, !prof !143

169:                                              ; preds = %155
  %170 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %144, i64 0, i32 4
  %171 = zext i32 %167 to i64
  br label %186

172:                                              ; preds = %186
  %173 = trunc i64 %192 to i32
  br label %174

174:                                              ; preds = %172, %155
  %175 = phi i32 [ 0, %155 ], [ %173, %172 ]
  %176 = icmp ult i32 %175, %158
  br i1 %176, label %177, label %194, !prof !144

177:                                              ; preds = %174
  %178 = zext i32 %175 to i64
  %179 = shl nuw nsw i64 %178, 3
  %180 = getelementptr i8, ptr %166, i64 %179
  %181 = xor i32 %175, -1
  %182 = add i32 %158, %181
  %183 = zext i32 %182 to i64
  %184 = shl nuw nsw i64 %183, 3
  %185 = add nuw nsw i64 %184, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %180, i8 0, i64 %185, i1 false), !tbaa !104
  br label %194

186:                                              ; preds = %186, %169
  %187 = phi i64 [ 0, %169 ], [ %192, %186 ]
  %188 = load ptr, ptr %170, align 8, !tbaa !134
  %189 = getelementptr inbounds ptr, ptr %188, i64 %187
  %190 = load ptr, ptr %189, align 8, !tbaa !104
  %191 = getelementptr inbounds ptr, ptr %166, i64 %187
  store ptr %190, ptr %191, align 8, !tbaa !104
  %192 = add nuw nsw i64 %187, 1
  %193 = icmp eq i64 %192, %171
  br i1 %193, label %172, label %186, !prof !145, !llvm.loop !146

194:                                              ; preds = %177, %174
  %195 = load ptr, ptr %159, align 8, !tbaa !135
  %196 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %144, i64 0, i32 4
  %197 = load ptr, ptr %196, align 8, !tbaa !134
  %198 = load ptr, ptr %195, align 8, !tbaa !98
  %199 = getelementptr inbounds ptr, ptr %198, i64 3
  %200 = load ptr, ptr %199, align 8
  tail call void %200(ptr noundef nonnull align 8 dereferenceable(8) %195, ptr noundef %197), !prof !147
  store ptr %166, ptr %196, align 8, !tbaa !134
  store i32 %158, ptr %152, align 8, !tbaa !133
  br label %201

201:                                              ; preds = %148, %194
  %202 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %144, i64 0, i32 4
  %203 = load ptr, ptr %202, align 8, !tbaa !134
  %204 = load i32, ptr %149, align 4, !tbaa !132
  %205 = zext i32 %204 to i64
  %206 = getelementptr inbounds ptr, ptr %203, i64 %205
  store ptr %147, ptr %206, align 8, !tbaa !104
  %207 = add i32 %204, 1
  store i32 %207, ptr %149, align 4, !tbaa !132
  br label %210

208:                                              ; preds = %143
  %209 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %147, ptr noundef %146) #13
  br label %45

210:                                              ; preds = %90, %201, %24, %27
  ret void
}

declare void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesE(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) local_unnamed_addr #4

declare noundef i32 @_ZNK11xercesc_2_713FieldValueMap7indexOfEPKNS_8IC_FieldE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713FieldValueMap3putEPNS_8IC_FieldEPNS_17DatatypeValidatorEPKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !prof !148 {
  %5 = load ptr, ptr %0, align 8, !tbaa !121
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %67, !prof !149

7:                                                ; preds = %4
  %8 = getelementptr inbounds %"class.xercesc_2_7::FieldValueMap", ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !150
  %10 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 32, ptr noundef %9)
  %11 = load ptr, ptr %8, align 8, !tbaa !150
  store i8 0, ptr %10, align 8, !tbaa !151
  %12 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.1", ptr %10, i64 0, i32 1
  store i32 0, ptr %12, align 4, !tbaa !122
  %13 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.1", ptr %10, i64 0, i32 2
  store i32 4, ptr %13, align 8, !tbaa !152
  %14 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.1", ptr %10, i64 0, i32 3
  store ptr null, ptr %14, align 8, !tbaa !153
  %15 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.1", ptr %10, i64 0, i32 4
  store ptr %11, ptr %15, align 8, !tbaa !154
  %16 = load ptr, ptr %11, align 8, !tbaa !98
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  %18 = load ptr, ptr %17, align 8
  %19 = invoke noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef 32)
          to label %20 unwind label %61, !prof !136

20:                                               ; preds = %7
  store ptr %19, ptr %14, align 8, !tbaa !153
  %21 = load i32, ptr %13, align 8, !tbaa !152
  %22 = zext i32 %21 to i64
  %23 = shl nuw nsw i64 %22, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %19, i8 0, i64 %23, i1 false), !prof !155
  store ptr %10, ptr %0, align 8, !tbaa !121
  %24 = load ptr, ptr %8, align 8, !tbaa !150
  %25 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 32, ptr noundef %24)
  %26 = load ptr, ptr %8, align 8, !tbaa !150
  store i8 0, ptr %25, align 8, !tbaa !156
  %27 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %25, i64 0, i32 1
  store i32 0, ptr %27, align 4, !tbaa !110
  %28 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %25, i64 0, i32 2
  store i32 4, ptr %28, align 8, !tbaa !157
  %29 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %25, i64 0, i32 3
  store ptr null, ptr %29, align 8, !tbaa !114
  %30 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %25, i64 0, i32 4
  store ptr %26, ptr %30, align 8, !tbaa !113
  %31 = load ptr, ptr %26, align 8, !tbaa !98
  %32 = getelementptr inbounds ptr, ptr %31, i64 2
  %33 = load ptr, ptr %32, align 8
  %34 = invoke noundef ptr %33(ptr noundef nonnull align 8 dereferenceable(8) %26, i64 noundef 32)
          to label %35 unwind label %63, !prof !136

35:                                               ; preds = %20
  store ptr %34, ptr %29, align 8, !tbaa !114
  %36 = load i32, ptr %28, align 8, !tbaa !157
  %37 = zext i32 %36 to i64
  %38 = shl nuw nsw i64 %37, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %34, i8 0, i64 %38, i1 false), !prof !155
  %39 = getelementptr inbounds %"class.xercesc_2_7::FieldValueMap", ptr %0, i64 0, i32 1
  store ptr %25, ptr %39, align 8, !tbaa !109
  %40 = load ptr, ptr %8, align 8, !tbaa !150
  %41 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %40)
  %42 = load ptr, ptr %8, align 8, !tbaa !150
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_715BaseRefVectorOfItEE, i64 0, inrange i32 0, i64 2), ptr %41, align 8, !tbaa !98
  %43 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %41, i64 0, i32 1
  store i8 1, ptr %43, align 8, !tbaa !158
  %44 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %41, i64 0, i32 2
  store i32 0, ptr %44, align 4, !tbaa !116
  %45 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %41, i64 0, i32 3
  store i32 4, ptr %45, align 8, !tbaa !159
  %46 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %41, i64 0, i32 4
  store ptr null, ptr %46, align 8, !tbaa !120
  %47 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %41, i64 0, i32 5
  store ptr %42, ptr %47, align 8, !tbaa !119
  %48 = load ptr, ptr %42, align 8, !tbaa !98
  %49 = getelementptr inbounds ptr, ptr %48, i64 2
  %50 = load ptr, ptr %49, align 8
  %51 = invoke noundef ptr %50(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef 32)
          to label %52 unwind label %65, !prof !136

52:                                               ; preds = %35
  store ptr %51, ptr %46, align 8, !tbaa !120
  br label %53

53:                                               ; preds = %52, %53
  %54 = phi i64 [ 0, %52 ], [ %57, %53 ]
  %55 = load ptr, ptr %46, align 8, !tbaa !120
  %56 = getelementptr inbounds ptr, ptr %55, i64 %54
  store ptr null, ptr %56, align 8, !tbaa !104
  %57 = add nuw nsw i64 %54, 1
  %58 = icmp eq i64 %57, 4
  br i1 %58, label %59, label %53, !prof !137, !llvm.loop !160

59:                                               ; preds = %53
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_716RefArrayVectorOfItEE, i64 0, inrange i32 0, i64 2), ptr %41, align 8, !tbaa !98
  %60 = getelementptr inbounds %"class.xercesc_2_7::FieldValueMap", ptr %0, i64 0, i32 2
  store ptr %41, ptr %60, align 8, !tbaa !115
  br label %67

61:                                               ; preds = %7
  %62 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef nonnull %10, ptr noundef %9) #13
  br label %133

63:                                               ; preds = %20
  %64 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef nonnull %25, ptr noundef %24) #13
  br label %133

65:                                               ; preds = %35
  %66 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef nonnull %41, ptr noundef %40) #13
  br label %133

67:                                               ; preds = %59, %4
  %68 = tail call noundef i32 @_ZNK11xercesc_2_713FieldValueMap7indexOfEPKNS_8IC_FieldE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1)
  %69 = icmp eq i32 %68, -1
  br i1 %69, label %70, label %122, !prof !149

70:                                               ; preds = %67
  %71 = load ptr, ptr %0, align 8, !tbaa !121
  tail call void @_ZN11xercesc_2_713ValueVectorOfIPNS_8IC_FieldEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(32) %71, i32 noundef 1)
  %72 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.1", ptr %71, i64 0, i32 3
  %73 = load ptr, ptr %72, align 8, !tbaa !153
  %74 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.1", ptr %71, i64 0, i32 1
  %75 = load i32, ptr %74, align 4, !tbaa !122
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds ptr, ptr %73, i64 %76
  store ptr %1, ptr %77, align 8, !tbaa !104
  %78 = add i32 %75, 1
  store i32 %78, ptr %74, align 4, !tbaa !122
  %79 = getelementptr inbounds %"class.xercesc_2_7::FieldValueMap", ptr %0, i64 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !109
  tail call void @_ZN11xercesc_2_713ValueVectorOfIPNS_17DatatypeValidatorEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(32) %80, i32 noundef 1)
  %81 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %80, i64 0, i32 3
  %82 = load ptr, ptr %81, align 8, !tbaa !114
  %83 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %80, i64 0, i32 1
  %84 = load i32, ptr %83, align 4, !tbaa !110
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds ptr, ptr %82, i64 %85
  store ptr %2, ptr %86, align 8, !tbaa !104
  %87 = add i32 %84, 1
  store i32 %87, ptr %83, align 4, !tbaa !110
  %88 = getelementptr inbounds %"class.xercesc_2_7::FieldValueMap", ptr %0, i64 0, i32 2
  %89 = load ptr, ptr %88, align 8, !tbaa !115
  %90 = getelementptr inbounds %"class.xercesc_2_7::FieldValueMap", ptr %0, i64 0, i32 3
  %91 = load ptr, ptr %90, align 8, !tbaa !150
  %92 = icmp eq ptr %3, null
  br i1 %92, label %113, label %93, !prof !161

93:                                               ; preds = %70
  %94 = load i16, ptr %3, align 2, !tbaa !162
  %95 = icmp eq i16 %94, 0
  br i1 %95, label %107, label %96

96:                                               ; preds = %93, %96
  %97 = phi ptr [ %98, %96 ], [ %3, %93 ]
  %98 = getelementptr inbounds i16, ptr %97, i64 1
  %99 = load i16, ptr %98, align 2, !tbaa !162
  %100 = icmp eq i16 %99, 0
  br i1 %100, label %101, label %96, !llvm.loop !164

101:                                              ; preds = %96
  %102 = ptrtoint ptr %98 to i64
  %103 = ptrtoint ptr %3 to i64
  %104 = sub i64 %102, %103
  %105 = add i64 %104, 2
  %106 = and i64 %105, 8589934590
  br label %107

107:                                              ; preds = %101, %93
  %108 = phi i64 [ %106, %101 ], [ 2, %93 ]
  %109 = load ptr, ptr %91, align 8, !tbaa !98
  %110 = getelementptr inbounds ptr, ptr %109, i64 2
  %111 = load ptr, ptr %110, align 8
  %112 = tail call noundef ptr %111(ptr noundef nonnull align 8 dereferenceable(8) %91, i64 noundef %108)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %112, ptr nonnull align 2 %3, i64 %108, i1 false)
  br label %113

113:                                              ; preds = %70, %107
  %114 = phi ptr [ %112, %107 ], [ null, %70 ]
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfItE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %89, i32 noundef 1)
  %115 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %89, i64 0, i32 4
  %116 = load ptr, ptr %115, align 8, !tbaa !120
  %117 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %89, i64 0, i32 2
  %118 = load i32, ptr %117, align 4, !tbaa !116
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds ptr, ptr %116, i64 %119
  store ptr %114, ptr %120, align 8, !tbaa !104
  %121 = add i32 %118, 1
  store i32 %121, ptr %117, align 4, !tbaa !116
  br label %172

122:                                              ; preds = %67
  %123 = getelementptr inbounds %"class.xercesc_2_7::FieldValueMap", ptr %0, i64 0, i32 1
  %124 = load ptr, ptr %123, align 8, !tbaa !109
  %125 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %124, i64 0, i32 1
  %126 = load i32, ptr %125, align 4, !tbaa !110
  %127 = icmp ugt i32 %126, %68
  br i1 %127, label %137, label %128, !prof !165

128:                                              ; preds = %122
  %129 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %130 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %124, i64 0, i32 4
  %131 = load ptr, ptr %130, align 8, !tbaa !113
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %129, ptr noundef nonnull @.str.1, i32 noundef 126, i32 noundef 116, ptr noundef %131)
          to label %132 unwind label %135

132:                                              ; preds = %128
  tail call void @__cxa_throw(ptr nonnull %129, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

133:                                              ; preds = %61, %63, %65, %135
  %134 = phi { ptr, i32 } [ %136, %135 ], [ %66, %65 ], [ %64, %63 ], [ %62, %61 ]
  resume { ptr, i32 } %134

135:                                              ; preds = %128
  %136 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %129) #13
  br label %133

137:                                              ; preds = %122
  %138 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %124, i64 0, i32 3
  %139 = load ptr, ptr %138, align 8, !tbaa !114
  %140 = zext i32 %68 to i64
  %141 = getelementptr inbounds ptr, ptr %139, i64 %140
  store ptr %2, ptr %141, align 8, !tbaa !104
  %142 = getelementptr inbounds %"class.xercesc_2_7::FieldValueMap", ptr %0, i64 0, i32 2
  %143 = load ptr, ptr %142, align 8, !tbaa !115
  %144 = getelementptr inbounds %"class.xercesc_2_7::FieldValueMap", ptr %0, i64 0, i32 3
  %145 = load ptr, ptr %144, align 8, !tbaa !150
  %146 = icmp eq ptr %3, null
  br i1 %146, label %167, label %147, !prof !166

147:                                              ; preds = %137
  %148 = load i16, ptr %3, align 2, !tbaa !162
  %149 = icmp eq i16 %148, 0
  br i1 %149, label %161, label %150, !prof !108

150:                                              ; preds = %147, %150
  %151 = phi ptr [ %152, %150 ], [ %3, %147 ]
  %152 = getelementptr inbounds i16, ptr %151, i64 1
  %153 = load i16, ptr %152, align 2, !tbaa !162
  %154 = icmp eq i16 %153, 0
  br i1 %154, label %155, label %150, !prof !167, !llvm.loop !164

155:                                              ; preds = %150
  %156 = ptrtoint ptr %152 to i64
  %157 = ptrtoint ptr %3 to i64
  %158 = sub i64 %156, %157
  %159 = add i64 %158, 2
  %160 = and i64 %159, 8589934590
  br label %161

161:                                              ; preds = %155, %147
  %162 = phi i64 [ %160, %155 ], [ 2, %147 ]
  %163 = load ptr, ptr %145, align 8, !tbaa !98
  %164 = getelementptr inbounds ptr, ptr %163, i64 2
  %165 = load ptr, ptr %164, align 8
  %166 = tail call noundef ptr %165(ptr noundef nonnull align 8 dereferenceable(8) %145, i64 noundef %162), !prof !168
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %166, ptr nonnull align 2 %3, i64 %162, i1 false), !prof !169
  br label %167

167:                                              ; preds = %137, %161
  %168 = phi ptr [ %166, %161 ], [ null, %137 ]
  %169 = load ptr, ptr %143, align 8, !tbaa !98
  %170 = getelementptr inbounds ptr, ptr %169, i64 2
  %171 = load ptr, ptr %170, align 8
  tail call void %171(ptr noundef nonnull align 8 dereferenceable(40) %143, ptr noundef %168, i32 noundef %68), !prof !170
  br label %172

172:                                              ; preds = %167, %113
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_710ValueStore8containsEPKNS_13FieldValueMapE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %0, ptr nocapture noundef readonly %1) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !148 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueStore", ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !96
  %5 = icmp eq ptr %4, null
  br i1 %5, label %245, label %6, !prof !171

6:                                                ; preds = %2
  %7 = load ptr, ptr %1, align 8, !tbaa !121
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9, !prof !172

9:                                                ; preds = %6
  %10 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.1", ptr %7, i64 0, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !122
  br label %12

12:                                               ; preds = %6, %9
  %13 = phi i32 [ %11, %9 ], [ 0, %6 ]
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %4, i64 0, i32 2
  %15 = load i32, ptr %14, align 4, !tbaa !132
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %245, !prof !173

17:                                               ; preds = %12
  %18 = icmp eq i32 %13, 0
  %19 = getelementptr inbounds %"class.xercesc_2_7::FieldValueMap", ptr %1, i64 0, i32 1
  %20 = getelementptr inbounds %"class.xercesc_2_7::FieldValueMap", ptr %1, i64 0, i32 2
  %21 = getelementptr inbounds %"class.xercesc_2_7::ValueStore", ptr %0, i64 0, i32 7
  %22 = zext i32 %15 to i64
  %23 = zext i32 %15 to i64
  %24 = zext i32 %13 to i64
  br label %25

25:                                               ; preds = %17, %240
  %26 = phi i64 [ 0, %17 ], [ %241, %240 ]
  %27 = phi i1 [ %16, %17 ], [ %242, %240 ]
  %28 = load ptr, ptr %3, align 8, !tbaa !96
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %28, i64 0, i32 2
  %30 = load i32, ptr %29, align 4, !tbaa !132
  %31 = zext i32 %30 to i64
  %32 = icmp ult i64 %26, %31
  br i1 %32, label %43, label %33, !prof !174

33:                                               ; preds = %25
  %34 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %35 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %28, i64 0, i32 5
  %36 = load ptr, ptr %35, align 8, !tbaa !135
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %34, ptr noundef nonnull @.str.2, i32 noundef 249, i32 noundef 116, ptr noundef %36)
          to label %37 unwind label %41

37:                                               ; preds = %33
  tail call void @__cxa_throw(ptr nonnull %34, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

38:                                               ; preds = %137, %116, %95, %74, %41
  %39 = phi ptr [ %133, %137 ], [ %112, %116 ], [ %91, %95 ], [ %70, %74 ], [ %34, %41 ]
  %40 = phi { ptr, i32 } [ %138, %137 ], [ %117, %116 ], [ %96, %95 ], [ %75, %74 ], [ %42, %41 ]
  tail call void @__cxa_free_exception(ptr %39) #13
  resume { ptr, i32 } %40

41:                                               ; preds = %33
  %42 = landingpad { ptr, i32 }
          cleanup
  br label %38

43:                                               ; preds = %25
  %44 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %28, i64 0, i32 4
  %45 = load ptr, ptr %44, align 8, !tbaa !134
  %46 = getelementptr inbounds ptr, ptr %45, i64 %26
  %47 = load ptr, ptr %46, align 8, !tbaa !104
  %48 = load ptr, ptr %47, align 8, !tbaa !121
  %49 = icmp eq ptr %48, null
  br i1 %49, label %53, label %50, !prof !175

50:                                               ; preds = %43
  %51 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.1", ptr %48, i64 0, i32 1
  %52 = load i32, ptr %51, align 4, !tbaa !122
  br label %53

53:                                               ; preds = %43, %50
  %54 = phi i32 [ %52, %50 ], [ 0, %43 ]
  %55 = icmp eq i32 %13, %54
  br i1 %55, label %56, label %240, !prof !176

56:                                               ; preds = %53
  br i1 %18, label %244, label %57, !prof !177

57:                                               ; preds = %56
  %58 = getelementptr inbounds %"class.xercesc_2_7::FieldValueMap", ptr %47, i64 0, i32 1
  %59 = getelementptr inbounds %"class.xercesc_2_7::FieldValueMap", ptr %47, i64 0, i32 2
  br label %60

60:                                               ; preds = %57, %237
  %61 = phi i64 [ 0, %57 ], [ %238, %237 ]
  %62 = load ptr, ptr %58, align 8, !tbaa !109
  %63 = icmp eq ptr %62, null
  br i1 %63, label %81, label %64, !prof !175

64:                                               ; preds = %60
  %65 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %62, i64 0, i32 1
  %66 = load i32, ptr %65, align 4, !tbaa !110
  %67 = zext i32 %66 to i64
  %68 = icmp ult i64 %61, %67
  br i1 %68, label %76, label %69, !prof !112

69:                                               ; preds = %64
  %70 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %71 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %62, i64 0, i32 4
  %72 = load ptr, ptr %71, align 8, !tbaa !113
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %70, ptr noundef nonnull @.str.1, i32 noundef 206, i32 noundef 116, ptr noundef %72)
          to label %73 unwind label %74

73:                                               ; preds = %69
  tail call void @__cxa_throw(ptr nonnull %70, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

74:                                               ; preds = %69
  %75 = landingpad { ptr, i32 }
          cleanup
  br label %38

76:                                               ; preds = %64
  %77 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %62, i64 0, i32 3
  %78 = load ptr, ptr %77, align 8, !tbaa !114
  %79 = getelementptr inbounds ptr, ptr %78, i64 %61
  %80 = load ptr, ptr %79, align 8, !tbaa !104
  br label %81

81:                                               ; preds = %60, %76
  %82 = phi ptr [ %80, %76 ], [ null, %60 ]
  %83 = load ptr, ptr %59, align 8, !tbaa !115
  %84 = icmp eq ptr %83, null
  br i1 %84, label %102, label %85, !prof !175

85:                                               ; preds = %81
  %86 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %83, i64 0, i32 2
  %87 = load i32, ptr %86, align 4, !tbaa !116
  %88 = zext i32 %87 to i64
  %89 = icmp ult i64 %61, %88
  br i1 %89, label %97, label %90, !prof !118

90:                                               ; preds = %85
  %91 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %92 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %83, i64 0, i32 5
  %93 = load ptr, ptr %92, align 8, !tbaa !119
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %91, ptr noundef nonnull @.str.2, i32 noundef 249, i32 noundef 116, ptr noundef %93)
          to label %94 unwind label %95

94:                                               ; preds = %90
  tail call void @__cxa_throw(ptr nonnull %91, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

95:                                               ; preds = %90
  %96 = landingpad { ptr, i32 }
          cleanup
  br label %38

97:                                               ; preds = %85
  %98 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %83, i64 0, i32 4
  %99 = load ptr, ptr %98, align 8, !tbaa !120
  %100 = getelementptr inbounds ptr, ptr %99, i64 %61
  %101 = load ptr, ptr %100, align 8, !tbaa !104
  br label %102

102:                                              ; preds = %81, %97
  %103 = phi ptr [ %101, %97 ], [ null, %81 ]
  %104 = load ptr, ptr %19, align 8, !tbaa !109
  %105 = icmp eq ptr %104, null
  br i1 %105, label %123, label %106, !prof !175

106:                                              ; preds = %102
  %107 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %104, i64 0, i32 1
  %108 = load i32, ptr %107, align 4, !tbaa !110
  %109 = zext i32 %108 to i64
  %110 = icmp ult i64 %61, %109
  br i1 %110, label %118, label %111, !prof !112

111:                                              ; preds = %106
  %112 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %113 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %104, i64 0, i32 4
  %114 = load ptr, ptr %113, align 8, !tbaa !113
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %112, ptr noundef nonnull @.str.1, i32 noundef 206, i32 noundef 116, ptr noundef %114)
          to label %115 unwind label %116

115:                                              ; preds = %111
  tail call void @__cxa_throw(ptr nonnull %112, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

116:                                              ; preds = %111
  %117 = landingpad { ptr, i32 }
          cleanup
  br label %38

118:                                              ; preds = %106
  %119 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %104, i64 0, i32 3
  %120 = load ptr, ptr %119, align 8, !tbaa !114
  %121 = getelementptr inbounds ptr, ptr %120, i64 %61
  %122 = load ptr, ptr %121, align 8, !tbaa !104
  br label %123

123:                                              ; preds = %102, %118
  %124 = phi ptr [ %122, %118 ], [ null, %102 ]
  %125 = load ptr, ptr %20, align 8, !tbaa !115
  %126 = icmp eq ptr %125, null
  br i1 %126, label %144, label %127, !prof !175

127:                                              ; preds = %123
  %128 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %125, i64 0, i32 2
  %129 = load i32, ptr %128, align 4, !tbaa !116
  %130 = zext i32 %129 to i64
  %131 = icmp ult i64 %61, %130
  br i1 %131, label %139, label %132, !prof !118

132:                                              ; preds = %127
  %133 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %134 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %125, i64 0, i32 5
  %135 = load ptr, ptr %134, align 8, !tbaa !119
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %133, ptr noundef nonnull @.str.2, i32 noundef 249, i32 noundef 116, ptr noundef %135)
          to label %136 unwind label %137

136:                                              ; preds = %132
  tail call void @__cxa_throw(ptr nonnull %133, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

137:                                              ; preds = %132
  %138 = landingpad { ptr, i32 }
          cleanup
  br label %38

139:                                              ; preds = %127
  %140 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %125, i64 0, i32 4
  %141 = load ptr, ptr %140, align 8, !tbaa !120
  %142 = getelementptr inbounds ptr, ptr %141, i64 %61
  %143 = load ptr, ptr %142, align 8, !tbaa !104
  br label %144

144:                                              ; preds = %123, %139
  %145 = phi ptr [ %143, %139 ], [ null, %123 ]
  %146 = icmp ne ptr %82, null
  %147 = icmp ne ptr %124, null
  %148 = and i1 %146, %147
  %149 = icmp eq ptr %103, null
  br i1 %148, label %176, label %150, !prof !176

150:                                              ; preds = %144
  %151 = icmp eq ptr %145, null
  %152 = or i1 %149, %151
  br i1 %152, label %157, label %153

153:                                              ; preds = %150
  %154 = load i16, ptr %103, align 2, !tbaa !162
  %155 = load i16, ptr %145, align 2, !tbaa !162
  %156 = icmp eq i16 %154, %155
  br i1 %156, label %165, label %240

157:                                              ; preds = %150
  br i1 %149, label %161, label %158

158:                                              ; preds = %157
  %159 = load i16, ptr %103, align 2, !tbaa !162
  %160 = icmp eq i16 %159, 0
  br i1 %160, label %161, label %240

161:                                              ; preds = %158, %157
  br i1 %151, label %237, label %162

162:                                              ; preds = %161
  %163 = load i16, ptr %145, align 2, !tbaa !162
  %164 = icmp eq i16 %163, 0
  br i1 %164, label %237, label %240

165:                                              ; preds = %153, %170
  %166 = phi i16 [ %173, %170 ], [ %154, %153 ]
  %167 = phi ptr [ %172, %170 ], [ %145, %153 ]
  %168 = phi ptr [ %171, %170 ], [ %103, %153 ]
  %169 = icmp eq i16 %166, 0
  br i1 %169, label %235, label %170

170:                                              ; preds = %165
  %171 = getelementptr inbounds i16, ptr %168, i64 1
  %172 = getelementptr inbounds i16, ptr %167, i64 1
  %173 = load i16, ptr %171, align 2, !tbaa !162
  %174 = load i16, ptr %172, align 2, !tbaa !162
  %175 = icmp eq i16 %173, %174
  br i1 %175, label %165, label %240, !llvm.loop !178

176:                                              ; preds = %144
  br i1 %149, label %191, label %177, !prof !175

177:                                              ; preds = %176
  %178 = load i16, ptr %103, align 2, !tbaa !162
  %179 = icmp eq i16 %178, 0
  br i1 %179, label %191, label %180, !prof !175

180:                                              ; preds = %177, %180
  %181 = phi ptr [ %182, %180 ], [ %103, %177 ]
  %182 = getelementptr inbounds i16, ptr %181, i64 1
  %183 = load i16, ptr %182, align 2, !tbaa !162
  %184 = icmp eq i16 %183, 0
  br i1 %184, label %185, label %180, !prof !179, !llvm.loop !164

185:                                              ; preds = %180
  %186 = ptrtoint ptr %182 to i64
  %187 = ptrtoint ptr %103 to i64
  %188 = sub i64 %186, %187
  %189 = lshr exact i64 %188, 1
  %190 = trunc i64 %189 to i32
  br label %191

191:                                              ; preds = %185, %177, %176
  %192 = phi i32 [ %190, %185 ], [ 0, %177 ], [ 0, %176 ]
  %193 = icmp eq ptr %145, null
  br i1 %193, label %208, label %194, !prof !175

194:                                              ; preds = %191
  %195 = load i16, ptr %145, align 2, !tbaa !162
  %196 = icmp eq i16 %195, 0
  br i1 %196, label %208, label %197, !prof !175

197:                                              ; preds = %194, %197
  %198 = phi ptr [ %199, %197 ], [ %145, %194 ]
  %199 = getelementptr inbounds i16, ptr %198, i64 1
  %200 = load i16, ptr %199, align 2, !tbaa !162
  %201 = icmp eq i16 %200, 0
  br i1 %201, label %202, label %197, !prof !180, !llvm.loop !164

202:                                              ; preds = %197
  %203 = ptrtoint ptr %199 to i64
  %204 = ptrtoint ptr %145 to i64
  %205 = sub i64 %203, %204
  %206 = lshr exact i64 %205, 1
  %207 = trunc i64 %206 to i32
  br label %208

208:                                              ; preds = %202, %194, %191
  %209 = phi i32 [ %207, %202 ], [ 0, %194 ], [ 0, %191 ]
  %210 = or i32 %209, %192
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %212, label %214, !prof !175

212:                                              ; preds = %208
  %213 = icmp eq ptr %82, %124
  br label %235

214:                                              ; preds = %208
  %215 = icmp ne i32 %209, 0
  %216 = icmp ne i32 %192, 0
  %217 = and i1 %216, %215
  br i1 %217, label %218, label %240, !prof !176

218:                                              ; preds = %214
  %219 = icmp eq ptr %82, %124
  br i1 %219, label %220, label %227, !prof !176

220:                                              ; preds = %218
  %221 = load ptr, ptr %21, align 8, !tbaa !79
  %222 = load ptr, ptr %82, align 8, !tbaa !98
  %223 = getelementptr inbounds ptr, ptr %222, i64 10
  %224 = load ptr, ptr %223, align 8
  %225 = tail call noundef i32 %224(ptr noundef nonnull align 8 dereferenceable(104) %82, ptr noundef %103, ptr noundef %145, ptr noundef %221), !prof !181
  %226 = icmp eq i32 %225, 0
  br label %235

227:                                              ; preds = %218
  %228 = getelementptr inbounds %"class.xercesc_2_7::ValueStore", ptr %0, i64 0, i32 7
  %229 = load ptr, ptr %228, align 8, !tbaa !79
  %230 = load ptr, ptr %124, align 8, !tbaa !98
  %231 = getelementptr inbounds ptr, ptr %230, i64 10
  %232 = load ptr, ptr %231, align 8
  %233 = tail call noundef i32 %232(ptr noundef nonnull align 8 dereferenceable(104) %124, ptr noundef %103, ptr noundef %145, ptr noundef %229)
  %234 = icmp eq i32 %233, 0
  br label %235

235:                                              ; preds = %165, %212, %220, %227
  %236 = phi i1 [ %226, %220 ], [ %234, %227 ], [ %213, %212 ], [ %169, %165 ]
  br i1 %236, label %237, label %240, !prof !182

237:                                              ; preds = %161, %162, %235
  %238 = add nuw nsw i64 %61, 1
  %239 = icmp eq i64 %238, %24
  br i1 %239, label %244, label %60, !prof !183, !llvm.loop !184

240:                                              ; preds = %214, %162, %158, %153, %235, %170, %53
  %241 = add nuw nsw i64 %26, 1
  %242 = icmp ult i64 %241, %22
  %243 = icmp eq i64 %241, %23
  br i1 %243, label %245, label %25, !prof !185, !llvm.loop !186

244:                                              ; preds = %56, %237
  br i1 %27, label %246, label %245, !prof !187

245:                                              ; preds = %240, %12, %244, %2
  br label %246

246:                                              ; preds = %244, %245
  %247 = phi i1 [ true, %244 ], [ false, %245 ]
  ret i1 %247
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xercesc_2_710ValueStore14duplicateValueEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %0) local_unnamed_addr #7 align 2 !prof !66 {
  %2 = load i8, ptr %0, align 8, !tbaa !68, !range !94, !noundef !95
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %21, label %4, !prof !188

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xercesc_2_7::ValueStore", ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !77
  %7 = load ptr, ptr %6, align 8, !tbaa !98
  %8 = getelementptr inbounds ptr, ptr %7, i64 5
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef signext i16 %9(ptr noundef nonnull align 8 dereferenceable(52) %6), !prof !189
  switch i16 %10, label %21 [
    i16 0, label %12
    i16 1, label %11
  ], !prof !126

11:                                               ; preds = %4
  br label %12

12:                                               ; preds = %4, %11
  %13 = phi i32 [ 105, %11 ], [ 104, %4 ]
  %14 = getelementptr inbounds %"class.xercesc_2_7::ValueStore", ptr %0, i64 0, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !78
  %16 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %15, i64 0, i32 50
  %17 = load ptr, ptr %16, align 8, !tbaa !107
  %18 = load ptr, ptr %5, align 8, !tbaa !77
  %19 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraint", ptr %18, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !127
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %17, i32 noundef %13, ptr noundef %20, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %21

21:                                               ; preds = %12, %4, %1
  ret void
}

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN11xercesc_2_713FieldValueMapC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xercesc_2_710ValueStore6appendEPKS0_(ptr nocapture noundef nonnull align 8 dereferenceable(80) %0, ptr nocapture noundef readonly %1) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !190 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueStore", ptr %1, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !96
  %5 = icmp eq ptr %4, null
  br i1 %5, label %132, label %6, !prof !191

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %4, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !132
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %132, label %10, !prof !192

10:                                               ; preds = %6
  %11 = getelementptr inbounds %"class.xercesc_2_7::ValueStore", ptr %0, i64 0, i32 4
  %12 = getelementptr inbounds %"class.xercesc_2_7::ValueStore", ptr %0, i64 0, i32 7
  %13 = getelementptr inbounds %"class.xercesc_2_7::ValueStore", ptr %0, i64 0, i32 7
  %14 = zext i32 %8 to i64
  br label %15

15:                                               ; preds = %10, %129
  %16 = phi i64 [ 0, %10 ], [ %130, %129 ]
  %17 = load ptr, ptr %3, align 8, !tbaa !96
  %18 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %17, i64 0, i32 2
  %19 = load i32, ptr %18, align 4, !tbaa !132
  %20 = zext i32 %19 to i64
  %21 = icmp ult i64 %16, %20
  br i1 %21, label %31, label %22, !prof !174

22:                                               ; preds = %15
  %23 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %24 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %17, i64 0, i32 5
  %25 = load ptr, ptr %24, align 8, !tbaa !135
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %23, ptr noundef nonnull @.str.2, i32 noundef 249, i32 noundef 116, ptr noundef %25)
          to label %26 unwind label %29

26:                                               ; preds = %22
  tail call void @__cxa_throw(ptr nonnull %23, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

27:                                               ; preds = %61, %127, %29
  %28 = phi { ptr, i32 } [ %30, %29 ], [ %128, %127 ], [ %62, %61 ]
  resume { ptr, i32 } %28

29:                                               ; preds = %22
  %30 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %23) #13
  br label %27

31:                                               ; preds = %15
  %32 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %17, i64 0, i32 4
  %33 = load ptr, ptr %32, align 8, !tbaa !134
  %34 = getelementptr inbounds ptr, ptr %33, i64 %16
  %35 = load ptr, ptr %34, align 8, !tbaa !104
  %36 = tail call noundef zeroext i1 @_ZN11xercesc_2_710ValueStore8containsEPKNS_13FieldValueMapE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %35)
  br i1 %36, label %129, label %37, !prof !193

37:                                               ; preds = %31
  %38 = load ptr, ptr %11, align 8, !tbaa !96
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %63, !prof !194

40:                                               ; preds = %37
  %41 = load ptr, ptr %12, align 8, !tbaa !79
  %42 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %41)
  %43 = load ptr, ptr %12, align 8, !tbaa !79
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_715BaseRefVectorOfINS_13FieldValueMapEEE, i64 0, inrange i32 0, i64 2), ptr %42, align 8, !tbaa !98
  %44 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %42, i64 0, i32 1
  store i8 1, ptr %44, align 8, !tbaa !130
  %45 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %42, i64 0, i32 2
  store i32 0, ptr %45, align 4, !tbaa !132
  %46 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %42, i64 0, i32 3
  store i32 4, ptr %46, align 8, !tbaa !133
  %47 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %42, i64 0, i32 4
  store ptr null, ptr %47, align 8, !tbaa !134
  %48 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %42, i64 0, i32 5
  store ptr %43, ptr %48, align 8, !tbaa !135
  %49 = load ptr, ptr %43, align 8, !tbaa !98
  %50 = getelementptr inbounds ptr, ptr %49, i64 2
  %51 = load ptr, ptr %50, align 8
  %52 = invoke noundef ptr %51(ptr noundef nonnull align 8 dereferenceable(8) %43, i64 noundef 32)
          to label %53 unwind label %61, !prof !195

53:                                               ; preds = %40
  store ptr %52, ptr %47, align 8, !tbaa !134
  br label %54

54:                                               ; preds = %53, %54
  %55 = phi i64 [ 0, %53 ], [ %58, %54 ]
  %56 = load ptr, ptr %47, align 8, !tbaa !134
  %57 = getelementptr inbounds ptr, ptr %56, i64 %55
  store ptr null, ptr %57, align 8, !tbaa !104
  %58 = add nuw nsw i64 %55, 1
  %59 = icmp eq i64 %58, 4
  br i1 %59, label %60, label %54, !prof !196, !llvm.loop !138

60:                                               ; preds = %54
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_13FieldValueMapEEE, i64 0, inrange i32 0, i64 2), ptr %42, align 8, !tbaa !98
  store ptr %42, ptr %11, align 8, !tbaa !96
  br label %63

61:                                               ; preds = %40
  %62 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef nonnull %42, ptr noundef %41) #13
  br label %27

63:                                               ; preds = %60, %37
  %64 = load ptr, ptr %11, align 8, !tbaa !96
  %65 = load ptr, ptr %13, align 8, !tbaa !79
  %66 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 32, ptr noundef %65)
  invoke void @_ZN11xercesc_2_713FieldValueMapC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %66, ptr noundef nonnull align 8 dereferenceable(32) %35)
          to label %67 unwind label %127, !prof !197

67:                                               ; preds = %63
  %68 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %64, i64 0, i32 2
  %69 = load i32, ptr %68, align 4, !tbaa !132
  %70 = add i32 %69, 1
  %71 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %64, i64 0, i32 3
  %72 = load i32, ptr %71, align 8, !tbaa !133
  %73 = icmp ugt i32 %70, %72
  br i1 %73, label %74, label %120, !prof !141

74:                                               ; preds = %67
  %75 = lshr i32 %72, 1
  %76 = add i32 %75, %72
  %77 = tail call i32 @llvm.umax.i32(i32 %70, i32 %76)
  %78 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %64, i64 0, i32 5
  %79 = load ptr, ptr %78, align 8, !tbaa !135
  %80 = zext i32 %77 to i64
  %81 = shl nuw nsw i64 %80, 3
  %82 = load ptr, ptr %79, align 8, !tbaa !98
  %83 = getelementptr inbounds ptr, ptr %82, i64 2
  %84 = load ptr, ptr %83, align 8
  %85 = tail call noundef ptr %84(ptr noundef nonnull align 8 dereferenceable(8) %79, i64 noundef %81), !prof !198
  %86 = load i32, ptr %68, align 4, !tbaa !132
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %93, label %88, !prof !143

88:                                               ; preds = %74
  %89 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %64, i64 0, i32 4
  %90 = zext i32 %86 to i64
  br label %105

91:                                               ; preds = %105
  %92 = trunc i64 %111 to i32
  br label %93

93:                                               ; preds = %91, %74
  %94 = phi i32 [ 0, %74 ], [ %92, %91 ]
  %95 = icmp ult i32 %94, %77
  br i1 %95, label %96, label %113, !prof !144

96:                                               ; preds = %93
  %97 = zext i32 %94 to i64
  %98 = shl nuw nsw i64 %97, 3
  %99 = getelementptr i8, ptr %85, i64 %98
  %100 = xor i32 %94, -1
  %101 = add i32 %77, %100
  %102 = zext i32 %101 to i64
  %103 = shl nuw nsw i64 %102, 3
  %104 = add nuw nsw i64 %103, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %99, i8 0, i64 %104, i1 false), !tbaa !104
  br label %113

105:                                              ; preds = %105, %88
  %106 = phi i64 [ 0, %88 ], [ %111, %105 ]
  %107 = load ptr, ptr %89, align 8, !tbaa !134
  %108 = getelementptr inbounds ptr, ptr %107, i64 %106
  %109 = load ptr, ptr %108, align 8, !tbaa !104
  %110 = getelementptr inbounds ptr, ptr %85, i64 %106
  store ptr %109, ptr %110, align 8, !tbaa !104
  %111 = add nuw nsw i64 %106, 1
  %112 = icmp eq i64 %111, %90
  br i1 %112, label %91, label %105, !prof !145, !llvm.loop !146

113:                                              ; preds = %96, %93
  %114 = load ptr, ptr %78, align 8, !tbaa !135
  %115 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %64, i64 0, i32 4
  %116 = load ptr, ptr %115, align 8, !tbaa !134
  %117 = load ptr, ptr %114, align 8, !tbaa !98
  %118 = getelementptr inbounds ptr, ptr %117, i64 3
  %119 = load ptr, ptr %118, align 8
  tail call void %119(ptr noundef nonnull align 8 dereferenceable(8) %114, ptr noundef %116), !prof !199
  store ptr %85, ptr %115, align 8, !tbaa !134
  store i32 %77, ptr %71, align 8, !tbaa !133
  br label %120

120:                                              ; preds = %67, %113
  %121 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %64, i64 0, i32 4
  %122 = load ptr, ptr %121, align 8, !tbaa !134
  %123 = load i32, ptr %68, align 4, !tbaa !132
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds ptr, ptr %122, i64 %124
  store ptr %66, ptr %125, align 8, !tbaa !104
  %126 = add i32 %123, 1
  store i32 %126, ptr %68, align 4, !tbaa !132
  br label %129

127:                                              ; preds = %63
  %128 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %66, ptr noundef %65) #13
  br label %27

129:                                              ; preds = %120, %31
  %130 = add nuw nsw i64 %16, 1
  %131 = icmp eq i64 %130, %14
  br i1 %131, label %132, label %15, !prof !200, !llvm.loop !201

132:                                              ; preds = %129, %6, %2
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xercesc_2_710ValueStore15startValueScopeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !101 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueStore", ptr %0, i64 0, i32 1
  store i32 0, ptr %2, align 4, !tbaa !76
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueStore", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !77
  %5 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraint", ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !202
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8, !prof !108

8:                                                ; preds = %1
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %6, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !203
  br label %11

11:                                               ; preds = %1, %8
  %12 = phi i32 [ %10, %8 ], [ 0, %1 ]
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %17, !prof !205

14:                                               ; preds = %11
  %15 = getelementptr inbounds %"class.xercesc_2_7::ValueStore", ptr %0, i64 0, i32 3
  %16 = zext nneg i32 %12 to i64
  br label %18

17:                                               ; preds = %41, %11
  ret void

18:                                               ; preds = %14, %41
  %19 = phi i64 [ 0, %14 ], [ %43, %41 ]
  %20 = load ptr, ptr %3, align 8, !tbaa !77
  %21 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraint", ptr %20, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !202
  %23 = icmp eq ptr %22, null
  br i1 %23, label %41, label %24, !prof !108

24:                                               ; preds = %18
  %25 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %22, i64 0, i32 2
  %26 = load i32, ptr %25, align 4, !tbaa !203
  %27 = zext i32 %26 to i64
  %28 = icmp ult i64 %19, %27
  br i1 %28, label %36, label %29, !prof !206

29:                                               ; preds = %24
  %30 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %31 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %22, i64 0, i32 5
  %32 = load ptr, ptr %31, align 8, !tbaa !207
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %30, ptr noundef nonnull @.str.2, i32 noundef 249, i32 noundef 116, ptr noundef %32)
          to label %33 unwind label %34

33:                                               ; preds = %29
  tail call void @__cxa_throw(ptr nonnull %30, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

34:                                               ; preds = %29
  %35 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %30) #13
  resume { ptr, i32 } %35

36:                                               ; preds = %24
  %37 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %22, i64 0, i32 4
  %38 = load ptr, ptr %37, align 8, !tbaa !208
  %39 = getelementptr inbounds ptr, ptr %38, i64 %19
  %40 = load ptr, ptr %39, align 8, !tbaa !104
  br label %41

41:                                               ; preds = %18, %36
  %42 = phi ptr [ %40, %36 ], [ null, %18 ]
  tail call void @_ZN11xercesc_2_713FieldValueMap3putEPNS_8IC_FieldEPNS_17DatatypeValidatorEPKt(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef %42, ptr noundef null, ptr noundef null)
  %43 = add nuw nsw i64 %19, 1
  %44 = icmp eq i64 %43, %16
  br i1 %44, label %17, label %18, !prof !205, !llvm.loop !209
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xercesc_2_710ValueStore13endValueScopeEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %0) local_unnamed_addr #7 align 2 !prof !101 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueStore", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !76
  %4 = icmp eq i32 %3, 0
  %5 = getelementptr inbounds %"class.xercesc_2_7::ValueStore", ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !77
  br i1 %4, label %7, label %24, !prof !108

7:                                                ; preds = %1
  %8 = load ptr, ptr %6, align 8, !tbaa !98
  %9 = getelementptr inbounds ptr, ptr %8, i64 5
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef signext i16 %10(ptr noundef nonnull align 8 dereferenceable(52) %6)
  %12 = icmp ne i16 %11, 1
  %13 = load i8, ptr %0, align 8, !range !94
  %14 = icmp eq i8 %13, 0
  %15 = select i1 %12, i1 true, i1 %14
  br i1 %15, label %70, label %16

16:                                               ; preds = %7
  %17 = getelementptr inbounds %"class.xercesc_2_7::ValueStore", ptr %0, i64 0, i32 6
  %18 = load ptr, ptr %17, align 8, !tbaa !78
  %19 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %18, i64 0, i32 50
  %20 = load ptr, ptr %19, align 8, !tbaa !107
  %21 = load ptr, ptr %5, align 8, !tbaa !77
  %22 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraint", ptr %21, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !127
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %20, i32 noundef 99, ptr noundef %23, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %70

24:                                               ; preds = %1
  %25 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraint", ptr %6, i64 0, i32 4
  %26 = load ptr, ptr %25, align 8, !tbaa !202
  %27 = icmp eq ptr %26, null
  br i1 %27, label %31, label %28, !prof !108

28:                                               ; preds = %24
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %26, i64 0, i32 2
  %30 = load i32, ptr %29, align 4, !tbaa !203
  br label %31

31:                                               ; preds = %24, %28
  %32 = phi i32 [ %30, %28 ], [ 0, %24 ]
  %33 = icmp eq i32 %3, %32
  %34 = load i8, ptr %0, align 8, !range !94
  %35 = icmp eq i8 %34, 0
  %36 = select i1 %33, i1 true, i1 %35, !prof !106
  br i1 %36, label %70, label %37, !prof !106

37:                                               ; preds = %31
  %38 = load ptr, ptr %6, align 8, !tbaa !98
  %39 = getelementptr inbounds ptr, ptr %38, i64 5
  %40 = load ptr, ptr %39, align 8
  %41 = tail call noundef signext i16 %40(ptr noundef nonnull align 8 dereferenceable(52) %6)
  switch i16 %41, label %70 [
    i16 0, label %42
    i16 1, label %50
    i16 2, label %60
  ]

42:                                               ; preds = %37
  %43 = getelementptr inbounds %"class.xercesc_2_7::ValueStore", ptr %0, i64 0, i32 6
  %44 = load ptr, ptr %43, align 8, !tbaa !78
  %45 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %44, i64 0, i32 50
  %46 = load ptr, ptr %45, align 8, !tbaa !107
  %47 = load ptr, ptr %5, align 8, !tbaa !77
  %48 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraint", ptr %47, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !127
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %46, i32 noundef 100, ptr noundef %49, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %70

50:                                               ; preds = %37
  %51 = getelementptr inbounds %"class.xercesc_2_7::ValueStore", ptr %0, i64 0, i32 6
  %52 = load ptr, ptr %51, align 8, !tbaa !78
  %53 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %52, i64 0, i32 50
  %54 = load ptr, ptr %53, align 8, !tbaa !107
  %55 = load ptr, ptr %5, align 8, !tbaa !77
  %56 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraint", ptr %55, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !127
  %58 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraint", ptr %55, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !210
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %54, i32 noundef 101, ptr noundef %57, ptr noundef %59, ptr noundef null, ptr noundef null)
  br label %70

60:                                               ; preds = %37
  %61 = getelementptr inbounds %"class.xercesc_2_7::ValueStore", ptr %0, i64 0, i32 6
  %62 = load ptr, ptr %61, align 8, !tbaa !78
  %63 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %62, i64 0, i32 50
  %64 = load ptr, ptr %63, align 8, !tbaa !107
  %65 = load ptr, ptr %5, align 8, !tbaa !77
  %66 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraint", ptr %65, i64 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !127
  %68 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraint", ptr %65, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !210
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %64, i32 noundef 102, ptr noundef %67, ptr noundef %69, ptr noundef null, ptr noundef null)
  br label %70

70:                                               ; preds = %42, %50, %60, %37, %7, %16, %31
  ret void
}

declare void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_710ValueStore13isDuplicateOfEPNS_17DatatypeValidatorEPKtS2_S4_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #8 align 2 !prof !66 {
  %6 = icmp ne ptr %1, null
  %7 = icmp ne ptr %3, null
  %8 = and i1 %6, %7
  %9 = icmp eq ptr %2, null
  br i1 %8, label %37, label %10, !prof !176

10:                                               ; preds = %5
  %11 = icmp eq ptr %4, null
  %12 = or i1 %9, %11
  br i1 %12, label %17, label %13

13:                                               ; preds = %10
  %14 = load i16, ptr %2, align 2, !tbaa !162
  %15 = load i16, ptr %4, align 2, !tbaa !162
  %16 = icmp eq i16 %14, %15
  br i1 %16, label %26, label %95

17:                                               ; preds = %10
  br i1 %9, label %21, label %18

18:                                               ; preds = %17
  %19 = load i16, ptr %2, align 2, !tbaa !162
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %21, label %95

21:                                               ; preds = %18, %17
  br i1 %11, label %25, label %22

22:                                               ; preds = %21
  %23 = load i16, ptr %4, align 2, !tbaa !162
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %25, label %95

25:                                               ; preds = %22, %21
  br label %95

26:                                               ; preds = %13, %31
  %27 = phi i16 [ %34, %31 ], [ %14, %13 ]
  %28 = phi ptr [ %33, %31 ], [ %4, %13 ]
  %29 = phi ptr [ %32, %31 ], [ %2, %13 ]
  %30 = icmp eq i16 %27, 0
  br i1 %30, label %95, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds i16, ptr %29, i64 1
  %33 = getelementptr inbounds i16, ptr %28, i64 1
  %34 = load i16, ptr %32, align 2, !tbaa !162
  %35 = load i16, ptr %33, align 2, !tbaa !162
  %36 = icmp eq i16 %34, %35
  br i1 %36, label %26, label %95, !llvm.loop !178

37:                                               ; preds = %5
  br i1 %9, label %52, label %38, !prof !175

38:                                               ; preds = %37
  %39 = load i16, ptr %2, align 2, !tbaa !162
  %40 = icmp eq i16 %39, 0
  br i1 %40, label %52, label %41, !prof !175

41:                                               ; preds = %38, %41
  %42 = phi ptr [ %43, %41 ], [ %2, %38 ]
  %43 = getelementptr inbounds i16, ptr %42, i64 1
  %44 = load i16, ptr %43, align 2, !tbaa !162
  %45 = icmp eq i16 %44, 0
  br i1 %45, label %46, label %41, !prof !179, !llvm.loop !164

46:                                               ; preds = %41
  %47 = ptrtoint ptr %43 to i64
  %48 = ptrtoint ptr %2 to i64
  %49 = sub i64 %47, %48
  %50 = lshr exact i64 %49, 1
  %51 = trunc i64 %50 to i32
  br label %52

52:                                               ; preds = %37, %38, %46
  %53 = phi i32 [ %51, %46 ], [ 0, %38 ], [ 0, %37 ]
  %54 = icmp eq ptr %4, null
  br i1 %54, label %69, label %55, !prof !175

55:                                               ; preds = %52
  %56 = load i16, ptr %4, align 2, !tbaa !162
  %57 = icmp eq i16 %56, 0
  br i1 %57, label %69, label %58, !prof !175

58:                                               ; preds = %55, %58
  %59 = phi ptr [ %60, %58 ], [ %4, %55 ]
  %60 = getelementptr inbounds i16, ptr %59, i64 1
  %61 = load i16, ptr %60, align 2, !tbaa !162
  %62 = icmp eq i16 %61, 0
  br i1 %62, label %63, label %58, !prof !180, !llvm.loop !164

63:                                               ; preds = %58
  %64 = ptrtoint ptr %60 to i64
  %65 = ptrtoint ptr %4 to i64
  %66 = sub i64 %64, %65
  %67 = lshr exact i64 %66, 1
  %68 = trunc i64 %67 to i32
  br label %69

69:                                               ; preds = %52, %55, %63
  %70 = phi i32 [ %68, %63 ], [ 0, %55 ], [ 0, %52 ]
  %71 = or i32 %70, %53
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %75, !prof !175

73:                                               ; preds = %69
  %74 = icmp eq ptr %1, %3
  br label %95

75:                                               ; preds = %69
  %76 = icmp ne i32 %70, 0
  %77 = icmp ne i32 %53, 0
  %78 = and i1 %77, %76
  br i1 %78, label %79, label %95, !prof !176

79:                                               ; preds = %75
  %80 = icmp eq ptr %1, %3
  %81 = getelementptr inbounds %"class.xercesc_2_7::ValueStore", ptr %0, i64 0, i32 7
  %82 = load ptr, ptr %81, align 8, !tbaa !79
  br i1 %80, label %83, label %89, !prof !176

83:                                               ; preds = %79
  %84 = load ptr, ptr %1, align 8, !tbaa !98
  %85 = getelementptr inbounds ptr, ptr %84, i64 10
  %86 = load ptr, ptr %85, align 8
  %87 = tail call noundef i32 %86(ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef %2, ptr noundef %4, ptr noundef %82), !prof !211
  %88 = icmp eq i32 %87, 0
  br label %95

89:                                               ; preds = %79
  %90 = load ptr, ptr %3, align 8, !tbaa !98
  %91 = getelementptr inbounds ptr, ptr %90, i64 10
  %92 = load ptr, ptr %91, align 8
  %93 = tail call noundef i32 %92(ptr noundef nonnull align 8 dereferenceable(104) %3, ptr noundef %2, ptr noundef %4, ptr noundef %82)
  %94 = icmp eq i32 %93, 0
  br label %95

95:                                               ; preds = %31, %26, %13, %25, %22, %18, %83, %89, %73, %75
  %96 = phi i1 [ %88, %83 ], [ %94, %89 ], [ %74, %73 ], [ false, %75 ], [ true, %25 ], [ false, %22 ], [ false, %18 ], [ false, %13 ], [ %30, %26 ], [ %30, %31 ]
  ret i1 %96
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xercesc_2_710ValueStore20endDcocumentFragmentEPNS_15ValueStoreCacheE(ptr nocapture noundef nonnull align 8 dereferenceable(80) %0, ptr nocapture noundef readonly %1) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !212 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueStore", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !77
  %5 = load ptr, ptr %4, align 8, !tbaa !98
  %6 = getelementptr inbounds ptr, ptr %5, i64 5
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef signext i16 %7(ptr noundef nonnull align 8 dereferenceable(52) %4), !prof !213
  %9 = icmp eq i16 %8, 2
  br i1 %9, label %10, label %77, !prof !214

10:                                               ; preds = %2
  %11 = load ptr, ptr %3, align 8, !tbaa !77
  %12 = getelementptr inbounds %"class.xercesc_2_7::IC_KeyRef", ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !215
  %14 = getelementptr inbounds %"class.xercesc_2_7::ValueStoreCache", ptr %1, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !217
  %16 = tail call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_10ValueStoreEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %15, ptr noundef %13)
  %17 = getelementptr inbounds %"class.xercesc_2_7::ValueStore", ptr %0, i64 0, i32 5
  store ptr %16, ptr %17, align 8, !tbaa !219
  %18 = icmp eq ptr %16, null
  br i1 %18, label %19, label %30, !prof !220

19:                                               ; preds = %10
  %20 = load i8, ptr %0, align 8, !tbaa !68, !range !94, !noundef !95
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %77, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %"class.xercesc_2_7::ValueStore", ptr %0, i64 0, i32 6
  %24 = load ptr, ptr %23, align 8, !tbaa !78
  %25 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %24, i64 0, i32 50
  %26 = load ptr, ptr %25, align 8, !tbaa !107
  %27 = load ptr, ptr %3, align 8, !tbaa !77
  %28 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraint", ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !210
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %26, i32 noundef 106, ptr noundef %29, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %77

30:                                               ; preds = %10
  %31 = getelementptr inbounds %"class.xercesc_2_7::ValueStore", ptr %0, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !96
  %33 = icmp eq ptr %32, null
  br i1 %33, label %37, label %34, !prof !221

34:                                               ; preds = %30
  %35 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %32, i64 0, i32 2
  %36 = load i32, ptr %35, align 4, !tbaa !132
  br label %37

37:                                               ; preds = %30, %34
  %38 = phi i32 [ %36, %34 ], [ 0, %30 ]
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %77, label %40, !prof !222

40:                                               ; preds = %37
  %41 = zext i32 %38 to i64
  br label %42

42:                                               ; preds = %40, %74
  %43 = phi i64 [ 0, %40 ], [ %75, %74 ]
  %44 = load ptr, ptr %31, align 8, !tbaa !96
  %45 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %44, i64 0, i32 2
  %46 = load i32, ptr %45, align 4, !tbaa !132
  %47 = zext i32 %46 to i64
  %48 = icmp ult i64 %43, %47
  br i1 %48, label %56, label %49, !prof !174

49:                                               ; preds = %42
  %50 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %51 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %44, i64 0, i32 5
  %52 = load ptr, ptr %51, align 8, !tbaa !135
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %50, ptr noundef nonnull @.str.2, i32 noundef 249, i32 noundef 116, ptr noundef %52)
          to label %53 unwind label %54

53:                                               ; preds = %49
  tail call void @__cxa_throw(ptr nonnull %50, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

54:                                               ; preds = %49
  %55 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %50) #13
  resume { ptr, i32 } %55

56:                                               ; preds = %42
  %57 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %44, i64 0, i32 4
  %58 = load ptr, ptr %57, align 8, !tbaa !134
  %59 = getelementptr inbounds ptr, ptr %58, i64 %43
  %60 = load ptr, ptr %59, align 8, !tbaa !104
  %61 = load ptr, ptr %17, align 8, !tbaa !219
  %62 = tail call noundef zeroext i1 @_ZN11xercesc_2_710ValueStore8containsEPKNS_13FieldValueMapE(ptr noundef nonnull align 8 dereferenceable(80) %61, ptr noundef %60)
  %63 = load i8, ptr %0, align 8, !range !94
  %64 = icmp eq i8 %63, 0
  %65 = select i1 %62, i1 true, i1 %64, !prof !223
  br i1 %65, label %74, label %66, !prof !223

66:                                               ; preds = %56
  %67 = getelementptr inbounds %"class.xercesc_2_7::ValueStore", ptr %0, i64 0, i32 6
  %68 = load ptr, ptr %67, align 8, !tbaa !78
  %69 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %68, i64 0, i32 50
  %70 = load ptr, ptr %69, align 8, !tbaa !107
  %71 = load ptr, ptr %3, align 8, !tbaa !77
  %72 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraint", ptr %71, i64 0, i32 2
  %73 = load ptr, ptr %72, align 8, !tbaa !127
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %70, i32 noundef 107, ptr noundef %73, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %74

74:                                               ; preds = %66, %56
  %75 = add nuw nsw i64 %43, 1
  %76 = icmp eq i64 %75, %41
  br i1 %76, label %77, label %42, !prof !224, !llvm.loop !225

77:                                               ; preds = %74, %37, %19, %22, %2
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_710ValueStore14reportNilErrorEPNS_18IdentityConstraintE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %0, ptr noundef %1) local_unnamed_addr #3 align 2 !prof !66 {
  %3 = load i8, ptr %0, align 8, !tbaa !68, !range !94, !noundef !95
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %18, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr %1, align 8, !tbaa !98
  %7 = getelementptr inbounds ptr, ptr %6, i64 5
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef signext i16 %8(ptr noundef nonnull align 8 dereferenceable(52) %1)
  %10 = icmp eq i16 %9, 1
  br i1 %10, label %11, label %18

11:                                               ; preds = %5
  %12 = getelementptr inbounds %"class.xercesc_2_7::ValueStore", ptr %0, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !78
  %14 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %13, i64 0, i32 50
  %15 = load ptr, ptr %14, align 8, !tbaa !107
  %16 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraint", ptr %1, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !127
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %15, i32 noundef 103, ptr noundef %17, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %18

18:                                               ; preds = %11, %5, %2
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZN11xercesc_2_716ValueHashTableOfIbE3getEPKvPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !101 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !226
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !228
  %8 = load ptr, ptr %0, align 8, !tbaa !229
  %9 = load ptr, ptr %5, align 8, !tbaa !98
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef i32 %10(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %1, i32 noundef %7, ptr noundef %8), !prof !230
  %12 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !231
  %14 = zext i32 %11 to i64
  %15 = getelementptr inbounds ptr, ptr %13, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !104
  %17 = icmp eq ptr %16, null
  br i1 %17, label %31, label %18, !prof !232

18:                                               ; preds = %3, %27
  %19 = phi ptr [ %29, %27 ], [ %16, %3 ]
  %20 = load ptr, ptr %4, align 8, !tbaa !226
  %21 = getelementptr inbounds %"struct.xercesc_2_7::ValueHashTableBucketElem", ptr %19, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !233
  %23 = load ptr, ptr %20, align 8, !tbaa !98
  %24 = getelementptr inbounds ptr, ptr %23, i64 1
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef zeroext i1 %25(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef %1, ptr noundef %22), !prof !235
  br i1 %26, label %31, label %27, !prof !106

27:                                               ; preds = %18
  %28 = getelementptr inbounds %"struct.xercesc_2_7::ValueHashTableBucketElem", ptr %19, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !104
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %18, !prof !108, !llvm.loop !236

31:                                               ; preds = %18, %27, %3
  %32 = phi ptr [ null, %3 ], [ %19, %18 ], [ null, %27 ]
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %39, !prof !108

34:                                               ; preds = %31
  %35 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  invoke void @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %35, ptr noundef nonnull @.str, i32 noundef 153, i32 noundef 50, ptr noundef %2)
          to label %36 unwind label %37

36:                                               ; preds = %34
  tail call void @__cxa_throw(ptr nonnull %35, ptr nonnull @_ZTIN11xercesc_2_722NoSuchElementExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

37:                                               ; preds = %34
  %38 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %35) #13
  resume { ptr, i32 } %38

39:                                               ; preds = %31
  ret ptr %32
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !66 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_722NoSuchElementExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !98
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  resume { ptr, i32 } %8
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #4

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722NoSuchElementExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !66 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_722NoSuchElementException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !66 {
  ret ptr @_ZN11xercesc_2_76XMLUni29fgNoSuchElementException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_722NoSuchElementException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !66 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !237
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_722NoSuchElementExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !98
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #13
  resume { ptr, i32 } %7
}

declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !66 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !98
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  resume { ptr, i32 } %8
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #2

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !66 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !66 {
  ret ptr @_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !66 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !237
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !98
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #13
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RefArrayVectorOfItED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 !prof !66 {
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_716RefArrayVectorOfItEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !98
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !158, !range !94, !noundef !95
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %26, label %5, !prof !240

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !116
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %26, label %9, !prof !241

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  br label %12

12:                                               ; preds = %9, %21
  %13 = phi i64 [ 0, %9 ], [ %22, %21 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !119
  %15 = load ptr, ptr %11, align 8, !tbaa !120
  %16 = getelementptr inbounds ptr, ptr %15, i64 %13
  %17 = load ptr, ptr %16, align 8, !tbaa !104
  %18 = load ptr, ptr %14, align 8, !tbaa !98
  %19 = getelementptr inbounds ptr, ptr %18, i64 3
  %20 = load ptr, ptr %19, align 8
  invoke void %20(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef %17)
          to label %21 unwind label %35, !prof !242

21:                                               ; preds = %12
  %22 = add nuw nsw i64 %13, 1
  %23 = load i32, ptr %6, align 4, !tbaa !116
  %24 = zext i32 %23 to i64
  %25 = icmp ult i64 %22, %24
  br i1 %25, label %12, label %26, !prof !243, !llvm.loop !244

26:                                               ; preds = %21, %5, %1
  %27 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !119
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !120
  %31 = load ptr, ptr %28, align 8, !tbaa !98
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  invoke void %33(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %30)
          to label %34 unwind label %37, !prof !245

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
  tail call void @__clang_call_terminate(ptr %41) #14
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RefArrayVectorOfItED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 !prof !246 {
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_716RefArrayVectorOfItEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !98
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !158, !range !94, !noundef !95
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %26, label %5, !prof !240

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !116
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %26, label %9, !prof !241

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  br label %12

12:                                               ; preds = %21, %9
  %13 = phi i64 [ 0, %9 ], [ %22, %21 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !119
  %15 = load ptr, ptr %11, align 8, !tbaa !120
  %16 = getelementptr inbounds ptr, ptr %15, i64 %13
  %17 = load ptr, ptr %16, align 8, !tbaa !104
  %18 = load ptr, ptr %14, align 8, !tbaa !98
  %19 = getelementptr inbounds ptr, ptr %18, i64 3
  %20 = load ptr, ptr %19, align 8
  invoke void %20(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef %17)
          to label %21 unwind label %34, !prof !242

21:                                               ; preds = %12
  %22 = add nuw nsw i64 %13, 1
  %23 = load i32, ptr %6, align 4, !tbaa !116
  %24 = zext i32 %23 to i64
  %25 = icmp ult i64 %22, %24
  br i1 %25, label %12, label %26, !prof !243, !llvm.loop !244

26:                                               ; preds = %21, %5, %1
  %27 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !119
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !120
  %31 = load ptr, ptr %28, align 8, !tbaa !98
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  invoke void %33(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %30)
          to label %41 unwind label %36, !prof !245

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
  tail call void @__clang_call_terminate(ptr %40) #14
  unreachable

41:                                               ; preds = %26
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RefArrayVectorOfItE12setElementAtEPtj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !247 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !116
  %6 = icmp ugt i32 %5, %2
  br i1 %6, label %14, label %7, !prof !165

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !119
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str.3, i32 noundef 52, i32 noundef 116, ptr noundef %10)
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #13
  resume { ptr, i32 } %13

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 1
  %16 = load i8, ptr %15, align 8, !tbaa !158, !range !94, !noundef !95
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %29, label %18, !prof !248

18:                                               ; preds = %14
  %19 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 5
  %20 = load ptr, ptr %19, align 8, !tbaa !119
  %21 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !120
  %23 = zext i32 %2 to i64
  %24 = getelementptr inbounds ptr, ptr %22, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !104
  %26 = load ptr, ptr %20, align 8, !tbaa !98
  %27 = getelementptr inbounds ptr, ptr %26, i64 3
  %28 = load ptr, ptr %27, align 8
  tail call void %28(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef %25), !prof !249
  br label %29

29:                                               ; preds = %18, %14
  %30 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !120
  %32 = zext i32 %2 to i64
  %33 = getelementptr inbounds ptr, ptr %31, i64 %32
  store ptr %1, ptr %33, align 8, !tbaa !104
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RefArrayVectorOfItE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 comdat align 2 !prof !66 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !116
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 5
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  br label %12

10:                                               ; preds = %24, %1
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 2
  store i32 0, ptr %11, align 4, !tbaa !116
  ret void

12:                                               ; preds = %5, %24
  %13 = phi i64 [ 0, %5 ], [ %27, %24 ]
  %14 = load i8, ptr %6, align 8, !tbaa !158, !range !94, !noundef !95
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %7, align 8, !tbaa !119
  %18 = load ptr, ptr %8, align 8, !tbaa !120
  %19 = getelementptr inbounds ptr, ptr %18, i64 %13
  %20 = load ptr, ptr %19, align 8, !tbaa !104
  %21 = load ptr, ptr %17, align 8, !tbaa !98
  %22 = getelementptr inbounds ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8
  tail call void %23(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef %20)
  br label %24

24:                                               ; preds = %16, %12
  %25 = load ptr, ptr %9, align 8, !tbaa !120
  %26 = getelementptr inbounds ptr, ptr %25, i64 %13
  store ptr null, ptr %26, align 8, !tbaa !104
  %27 = add nuw nsw i64 %13, 1
  %28 = load i32, ptr %2, align 4, !tbaa !116
  %29 = zext i32 %28 to i64
  %30 = icmp ult i64 %27, %29
  br i1 %30, label %12, label %10, !llvm.loop !250
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RefArrayVectorOfItE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !66 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !116
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !119
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.3, i32 noundef 77, i32 noundef 116, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #13
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 1
  %15 = load i8, ptr %14, align 8, !tbaa !158, !range !94, !noundef !95
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !119
  %20 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !120
  %22 = zext i32 %1 to i64
  %23 = getelementptr inbounds ptr, ptr %21, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !104
  %25 = load ptr, ptr %19, align 8, !tbaa !98
  %26 = getelementptr inbounds ptr, ptr %25, i64 3
  %27 = load ptr, ptr %26, align 8
  tail call void %27(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef %24)
  br label %28

28:                                               ; preds = %17, %13
  %29 = load i32, ptr %3, align 4, !tbaa !116
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
  %40 = load ptr, ptr %35, align 8, !tbaa !120
  %41 = add nuw nsw i64 %39, 1
  %42 = getelementptr inbounds ptr, ptr %40, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !104
  %44 = getelementptr inbounds ptr, ptr %40, i64 %39
  store ptr %43, ptr %44, align 8, !tbaa !104
  %45 = icmp eq i64 %41, %37
  br i1 %45, label %46, label %38, !llvm.loop !251

46:                                               ; preds = %38, %32, %28
  %47 = phi i32 [ %1, %28 ], [ %30, %32 ], [ %30, %38 ]
  %48 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !120
  %50 = zext i32 %47 to i64
  %51 = getelementptr inbounds ptr, ptr %49, i64 %50
  store ptr null, ptr %51, align 8, !tbaa !104
  store i32 %30, ptr %3, align 4, !tbaa !116
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RefArrayVectorOfItE17removeLastElementEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 comdat align 2 !prof !66 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !116
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 4, !tbaa !116
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !158, !range !94, !noundef !95
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !119
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !120
  %15 = zext i32 %6 to i64
  %16 = getelementptr inbounds ptr, ptr %14, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !104
  %18 = load ptr, ptr %12, align 8, !tbaa !98
  %19 = getelementptr inbounds ptr, ptr %18, i64 3
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef %17)
  br label %21

21:                                               ; preds = %1, %10, %5
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RefArrayVectorOfItE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 comdat align 2 !prof !66 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !158, !range !94, !noundef !95
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %25, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !116
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %25, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  br label %12

12:                                               ; preds = %9, %12
  %13 = phi i64 [ 0, %9 ], [ %21, %12 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !119
  %15 = load ptr, ptr %11, align 8, !tbaa !120
  %16 = getelementptr inbounds ptr, ptr %15, i64 %13
  %17 = load ptr, ptr %16, align 8, !tbaa !104
  %18 = load ptr, ptr %14, align 8, !tbaa !98
  %19 = getelementptr inbounds ptr, ptr %18, i64 3
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef %17)
  %21 = add nuw nsw i64 %13, 1
  %22 = load i32, ptr %6, align 4, !tbaa !116
  %23 = zext i32 %22 to i64
  %24 = icmp ult i64 %21, %23
  br i1 %24, label %12, label %25, !llvm.loop !252

25:                                               ; preds = %12, %5, %1
  %26 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 5
  %27 = load ptr, ptr %26, align 8, !tbaa !119
  %28 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !120
  %30 = load ptr, ptr %27, align 8, !tbaa !98
  %31 = getelementptr inbounds ptr, ptr %30, i64 3
  %32 = load ptr, ptr %31, align 8
  tail call void %32(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %29)
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfItED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !66 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfItED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !66 {
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfItE12setElementAtEPtj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !66 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !116
  %6 = icmp ugt i32 %5, %2
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !119
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str.2, i32 noundef 67, i32 noundef 116, ptr noundef %10)
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #13
  resume { ptr, i32 } %13

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 1
  %16 = load i8, ptr %15, align 8, !tbaa !158, !range !94, !noundef !95
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !120
  %21 = zext i32 %2 to i64
  %22 = getelementptr inbounds ptr, ptr %20, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !104
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %18
  tail call void @_ZdlPv(ptr noundef %23) #16
  br label %26

26:                                               ; preds = %18, %25, %14
  %27 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  %28 = load ptr, ptr %27, align 8, !tbaa !120
  %29 = zext i32 %2 to i64
  %30 = getelementptr inbounds ptr, ptr %28, i64 %29
  store ptr %1, ptr %30, align 8, !tbaa !104
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfItE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !66 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !116
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  br label %11

9:                                                ; preds = %21, %1
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 2
  store i32 0, ptr %10, align 4, !tbaa !116
  ret void

11:                                               ; preds = %5, %21
  %12 = phi i64 [ 0, %5 ], [ %24, %21 ]
  %13 = load i8, ptr %6, align 8, !tbaa !158, !range !94, !noundef !95
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %7, align 8, !tbaa !120
  %17 = getelementptr inbounds ptr, ptr %16, i64 %12
  %18 = load ptr, ptr %17, align 8, !tbaa !104
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  tail call void @_ZdlPv(ptr noundef %18) #16
  br label %21

21:                                               ; preds = %15, %20, %11
  %22 = load ptr, ptr %8, align 8, !tbaa !120
  %23 = getelementptr inbounds ptr, ptr %22, i64 %12
  store ptr null, ptr %23, align 8, !tbaa !104
  %24 = add nuw nsw i64 %12, 1
  %25 = load i32, ptr %2, align 4, !tbaa !116
  %26 = zext i32 %25 to i64
  %27 = icmp ult i64 %24, %26
  br i1 %27, label %11, label %9, !llvm.loop !253
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfItE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !66 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !116
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !119
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.2, i32 noundef 144, i32 noundef 116, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #13
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 1
  %15 = load i8, ptr %14, align 8, !tbaa !158, !range !94, !noundef !95
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !120
  %20 = zext i32 %1 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !104
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %17
  tail call void @_ZdlPv(ptr noundef %22) #16
  br label %25

25:                                               ; preds = %17, %24, %13
  %26 = load i32, ptr %3, align 4, !tbaa !116
  %27 = add i32 %26, -1
  %28 = icmp eq i32 %27, %1
  br i1 %28, label %43, label %29

29:                                               ; preds = %25
  %30 = icmp ugt i32 %27, %1
  br i1 %30, label %31, label %43

31:                                               ; preds = %29
  %32 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  %33 = zext i32 %1 to i64
  %34 = zext i32 %27 to i64
  br label %35

35:                                               ; preds = %31, %35
  %36 = phi i64 [ %33, %31 ], [ %38, %35 ]
  %37 = load ptr, ptr %32, align 8, !tbaa !120
  %38 = add nuw nsw i64 %36, 1
  %39 = getelementptr inbounds ptr, ptr %37, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !104
  %41 = getelementptr inbounds ptr, ptr %37, i64 %36
  store ptr %40, ptr %41, align 8, !tbaa !104
  %42 = icmp eq i64 %38, %34
  br i1 %42, label %43, label %35, !llvm.loop !254

43:                                               ; preds = %35, %29, %25
  %44 = phi i32 [ %1, %25 ], [ %27, %29 ], [ %27, %35 ]
  %45 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  %46 = load ptr, ptr %45, align 8, !tbaa !120
  %47 = zext i32 %44 to i64
  %48 = getelementptr inbounds ptr, ptr %46, i64 %47
  store ptr null, ptr %48, align 8, !tbaa !104
  store i32 %27, ptr %3, align 4, !tbaa !116
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfItE17removeLastElementEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !66 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !116
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %18, label %5

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 4, !tbaa !116
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !158, !range !94, !noundef !95
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !120
  %13 = zext i32 %6 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !104
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %10
  tail call void @_ZdlPv(ptr noundef %15) #16
  br label %18

18:                                               ; preds = %10, %17, %1, %5
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfItE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 comdat align 2 !prof !66 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !158, !range !94, !noundef !95
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %23, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !116
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %23, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %18
  %12 = phi i64 [ 0, %9 ], [ %19, %18 ]
  %13 = load ptr, ptr %10, align 8, !tbaa !120
  %14 = getelementptr inbounds ptr, ptr %13, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !104
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %11
  tail call void @_ZdlPv(ptr noundef %15) #16
  br label %18

18:                                               ; preds = %11, %17
  %19 = add nuw nsw i64 %12, 1
  %20 = load i32, ptr %6, align 4, !tbaa !116
  %21 = zext i32 %20 to i64
  %22 = icmp ult i64 %19, %21
  br i1 %22, label %11, label %23, !llvm.loop !255

23:                                               ; preds = %18, %5, %1
  %24 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 5
  %25 = load ptr, ptr %24, align 8, !tbaa !119
  %26 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !120
  %28 = load ptr, ptr %25, align 8, !tbaa !98
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  tail call void %30(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef %27)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIPNS_8IC_FieldEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !256 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.1", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !122
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.1", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !152
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %42, !prof !257

9:                                                ; preds = %2
  %10 = uitofp i32 %4 to double
  %11 = fmul double %10, 1.250000e+00
  %12 = fptoui double %11 to i32
  %13 = tail call i32 @llvm.umax.i32(i32 %5, i32 %12)
  %14 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.1", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !154
  %16 = zext i32 %13 to i64
  %17 = shl nuw nsw i64 %16, 3
  %18 = load ptr, ptr %15, align 8, !tbaa !98
  %19 = getelementptr inbounds ptr, ptr %18, i64 2
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(8) %15, i64 noundef %17)
  %22 = load i32, ptr %3, align 4, !tbaa !122
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %9
  %25 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.1", ptr %0, i64 0, i32 3
  %26 = zext i32 %22 to i64
  br label %34

27:                                               ; preds = %34, %9
  %28 = load ptr, ptr %14, align 8, !tbaa !154
  %29 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.1", ptr %0, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !153
  %31 = load ptr, ptr %28, align 8, !tbaa !98
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %30)
  store ptr %21, ptr %29, align 8, !tbaa !153
  store i32 %13, ptr %6, align 8, !tbaa !152
  br label %42

34:                                               ; preds = %24, %34
  %35 = phi i64 [ 0, %24 ], [ %40, %34 ]
  %36 = load ptr, ptr %25, align 8, !tbaa !153
  %37 = getelementptr inbounds ptr, ptr %36, i64 %35
  %38 = load ptr, ptr %37, align 8, !tbaa !104
  %39 = getelementptr inbounds ptr, ptr %21, i64 %35
  store ptr %38, ptr %39, align 8, !tbaa !104
  %40 = add nuw nsw i64 %35, 1
  %41 = icmp eq i64 %40, %26
  br i1 %41, label %27, label %34, !llvm.loop !258

42:                                               ; preds = %2, %27
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIPNS_17DatatypeValidatorEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !256 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !110
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !157
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %42, !prof !257

9:                                                ; preds = %2
  %10 = uitofp i32 %4 to double
  %11 = fmul double %10, 1.250000e+00
  %12 = fptoui double %11 to i32
  %13 = tail call i32 @llvm.umax.i32(i32 %5, i32 %12)
  %14 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !113
  %16 = zext i32 %13 to i64
  %17 = shl nuw nsw i64 %16, 3
  %18 = load ptr, ptr %15, align 8, !tbaa !98
  %19 = getelementptr inbounds ptr, ptr %18, i64 2
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(8) %15, i64 noundef %17)
  %22 = load i32, ptr %3, align 4, !tbaa !110
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %9
  %25 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %26 = zext i32 %22 to i64
  br label %34

27:                                               ; preds = %34, %9
  %28 = load ptr, ptr %14, align 8, !tbaa !113
  %29 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !114
  %31 = load ptr, ptr %28, align 8, !tbaa !98
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %30)
  store ptr %21, ptr %29, align 8, !tbaa !114
  store i32 %13, ptr %6, align 8, !tbaa !157
  br label %42

34:                                               ; preds = %24, %34
  %35 = phi i64 [ 0, %24 ], [ %40, %34 ]
  %36 = load ptr, ptr %25, align 8, !tbaa !114
  %37 = getelementptr inbounds ptr, ptr %36, i64 %35
  %38 = load ptr, ptr %37, align 8, !tbaa !104
  %39 = getelementptr inbounds ptr, ptr %21, i64 %35
  store ptr %38, ptr %39, align 8, !tbaa !104
  %40 = add nuw nsw i64 %35, 1
  %41 = icmp eq i64 %40, %26
  br i1 %41, label %27, label %34, !llvm.loop !259

42:                                               ; preds = %2, %27
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfItE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #7 comdat align 2 !prof !260 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !116
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !159
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %55, !prof !261

9:                                                ; preds = %2
  %10 = lshr i32 %7, 1
  %11 = add i32 %10, %7
  %12 = tail call i32 @llvm.umax.i32(i32 %5, i32 %11)
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !119
  %15 = zext i32 %12 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = load ptr, ptr %14, align 8, !tbaa !98
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef %16), !prof !262
  %21 = load i32, ptr %3, align 4, !tbaa !116
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %28, label %23, !prof !263

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
  br i1 %30, label %31, label %48, !prof !264

31:                                               ; preds = %28
  %32 = zext i32 %29 to i64
  %33 = shl nuw nsw i64 %32, 3
  %34 = getelementptr i8, ptr %20, i64 %33
  %35 = xor i32 %29, -1
  %36 = add i32 %12, %35
  %37 = zext i32 %36 to i64
  %38 = shl nuw nsw i64 %37, 3
  %39 = add nuw nsw i64 %38, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %34, i8 0, i64 %39, i1 false), !tbaa !104
  br label %48

40:                                               ; preds = %23, %40
  %41 = phi i64 [ 0, %23 ], [ %46, %40 ]
  %42 = load ptr, ptr %24, align 8, !tbaa !120
  %43 = getelementptr inbounds ptr, ptr %42, i64 %41
  %44 = load ptr, ptr %43, align 8, !tbaa !104
  %45 = getelementptr inbounds ptr, ptr %20, i64 %41
  store ptr %44, ptr %45, align 8, !tbaa !104
  %46 = add nuw nsw i64 %41, 1
  %47 = icmp eq i64 %46, %25
  br i1 %47, label %26, label %40, !prof !265, !llvm.loop !266

48:                                               ; preds = %31, %28
  %49 = load ptr, ptr %13, align 8, !tbaa !119
  %50 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  %51 = load ptr, ptr %50, align 8, !tbaa !120
  %52 = load ptr, ptr %49, align 8, !tbaa !98
  %53 = getelementptr inbounds ptr, ptr %52, i64 3
  %54 = load ptr, ptr %53, align 8
  tail call void %54(ptr noundef nonnull align 8 dereferenceable(8) %49, ptr noundef %51), !prof !267
  store ptr %20, ptr %50, align 8, !tbaa !120
  store i32 %12, ptr %6, align 8, !tbaa !159
  br label %55

55:                                               ; preds = %2, %48
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_10ValueStoreEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !268 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !269
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !271
  %7 = load ptr, ptr %0, align 8, !tbaa !272
  %8 = load ptr, ptr %4, align 8, !tbaa !98
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef i32 %9(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %1, i32 noundef %6, ptr noundef %7), !prof !273
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !274
  %13 = zext i32 %10 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !104
  %16 = icmp eq ptr %15, null
  br i1 %16, label %30, label %17, !prof !192

17:                                               ; preds = %2, %26
  %18 = phi ptr [ %28, %26 ], [ %15, %2 ]
  %19 = load ptr, ptr %3, align 8, !tbaa !269
  %20 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %18, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !275
  %22 = load ptr, ptr %19, align 8, !tbaa !98
  %23 = getelementptr inbounds ptr, ptr %22, i64 1
  %24 = load ptr, ptr %23, align 8
  %25 = tail call noundef zeroext i1 %24(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef %1, ptr noundef %21), !prof !277
  br i1 %25, label %30, label %26, !prof !214

26:                                               ; preds = %17
  %27 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %18, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !104
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %17, !prof !278, !llvm.loop !279

30:                                               ; preds = %17, %26, %2
  %31 = phi ptr [ null, %2 ], [ %18, %17 ], [ null, %26 ]
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33, !prof !196

33:                                               ; preds = %30
  %34 = load ptr, ptr %31, align 8, !tbaa !280
  br label %35

35:                                               ; preds = %30, %33
  %36 = phi ptr [ %34, %33 ], [ null, %30 ]
  ret ptr %36
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_13FieldValueMapEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 !prof !281 {
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_13FieldValueMapEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !98
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !130, !range !94, !noundef !95
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %23, label %5, !prof !282

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !132
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %23, label %9, !prof !283

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %18
  %12 = phi i64 [ 0, %9 ], [ %19, %18 ]
  %13 = load ptr, ptr %10, align 8, !tbaa !134
  %14 = getelementptr inbounds ptr, ptr %13, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !104
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17, !prof !284

17:                                               ; preds = %11
  tail call void @_ZN11xercesc_2_713FieldValueMapD1Ev(ptr noundef nonnull align 8 dereferenceable(32) %15) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %15) #13
  br label %18

18:                                               ; preds = %11, %17
  %19 = add nuw nsw i64 %12, 1
  %20 = load i32, ptr %6, align 4, !tbaa !132
  %21 = zext i32 %20 to i64
  %22 = icmp ult i64 %19, %21
  br i1 %22, label %11, label %23, !prof !285, !llvm.loop !286

23:                                               ; preds = %18, %5, %1
  %24 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %25 = load ptr, ptr %24, align 8, !tbaa !135
  %26 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !134
  %28 = load ptr, ptr %25, align 8, !tbaa !98
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef %27)
          to label %31 unwind label %32, !prof !287

31:                                               ; preds = %23
  ret void

32:                                               ; preds = %23
  %33 = landingpad { ptr, i32 }
          catch ptr null
  %34 = extractvalue { ptr, i32 } %33, 0
  tail call void @__clang_call_terminate(ptr %34) #14
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_13FieldValueMapEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !281 {
  tail call void @_ZN11xercesc_2_711RefVectorOfINS_13FieldValueMapEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_13FieldValueMapEE12setElementAtEPS1_j(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !66 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !132
  %6 = icmp ugt i32 %5, %2
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !135
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str.2, i32 noundef 67, i32 noundef 116, ptr noundef %10)
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #13
  resume { ptr, i32 } %13

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %16 = load i8, ptr %15, align 8, !tbaa !130, !range !94, !noundef !95
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !134
  %21 = zext i32 %2 to i64
  %22 = getelementptr inbounds ptr, ptr %20, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !104
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %18
  tail call void @_ZN11xercesc_2_713FieldValueMapD1Ev(ptr noundef nonnull align 8 dereferenceable(32) %23) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %23) #13
  br label %26

26:                                               ; preds = %18, %25, %14
  %27 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %28 = load ptr, ptr %27, align 8, !tbaa !134
  %29 = zext i32 %2 to i64
  %30 = getelementptr inbounds ptr, ptr %28, i64 %29
  store ptr %1, ptr %30, align 8, !tbaa !104
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_13FieldValueMapEE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !66 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !132
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %11

9:                                                ; preds = %21, %1
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  store i32 0, ptr %10, align 4, !tbaa !132
  ret void

11:                                               ; preds = %5, %21
  %12 = phi i64 [ 0, %5 ], [ %24, %21 ]
  %13 = load i8, ptr %6, align 8, !tbaa !130, !range !94, !noundef !95
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %7, align 8, !tbaa !134
  %17 = getelementptr inbounds ptr, ptr %16, i64 %12
  %18 = load ptr, ptr %17, align 8, !tbaa !104
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  tail call void @_ZN11xercesc_2_713FieldValueMapD1Ev(ptr noundef nonnull align 8 dereferenceable(32) %18) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %18) #13
  br label %21

21:                                               ; preds = %15, %20, %11
  %22 = load ptr, ptr %8, align 8, !tbaa !134
  %23 = getelementptr inbounds ptr, ptr %22, i64 %12
  store ptr null, ptr %23, align 8, !tbaa !104
  %24 = add nuw nsw i64 %12, 1
  %25 = load i32, ptr %2, align 4, !tbaa !132
  %26 = zext i32 %25 to i64
  %27 = icmp ult i64 %24, %26
  br i1 %27, label %11, label %9, !llvm.loop !288
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_13FieldValueMapEE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !66 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !132
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !135
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.2, i32 noundef 144, i32 noundef 116, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #13
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %15 = load i8, ptr %14, align 8, !tbaa !130, !range !94, !noundef !95
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !134
  %20 = zext i32 %1 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !104
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %17
  tail call void @_ZN11xercesc_2_713FieldValueMapD1Ev(ptr noundef nonnull align 8 dereferenceable(32) %22) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %22) #13
  br label %25

25:                                               ; preds = %17, %24, %13
  %26 = load i32, ptr %3, align 4, !tbaa !132
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
  %37 = load ptr, ptr %32, align 8, !tbaa !134
  %38 = add nuw nsw i64 %36, 1
  %39 = getelementptr inbounds ptr, ptr %37, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !104
  %41 = getelementptr inbounds ptr, ptr %37, i64 %36
  store ptr %40, ptr %41, align 8, !tbaa !104
  %42 = icmp eq i64 %38, %34
  br i1 %42, label %43, label %35, !llvm.loop !289

43:                                               ; preds = %35, %29, %25
  %44 = phi i32 [ %1, %25 ], [ %27, %29 ], [ %27, %35 ]
  %45 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %46 = load ptr, ptr %45, align 8, !tbaa !134
  %47 = zext i32 %44 to i64
  %48 = getelementptr inbounds ptr, ptr %46, i64 %47
  store ptr null, ptr %48, align 8, !tbaa !104
  store i32 %27, ptr %3, align 4, !tbaa !132
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_13FieldValueMapEE17removeLastElementEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !66 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !132
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %18, label %5

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 4, !tbaa !132
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !130, !range !94, !noundef !95
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !134
  %13 = zext i32 %6 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !104
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %10
  tail call void @_ZN11xercesc_2_713FieldValueMapD1Ev(ptr noundef nonnull align 8 dereferenceable(32) %15) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %15) #13
  br label %18

18:                                               ; preds = %10, %17, %1, %5
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_13FieldValueMapEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 comdat align 2 !prof !66 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !130, !range !94, !noundef !95
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %23, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !132
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %23, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %18
  %12 = phi i64 [ 0, %9 ], [ %19, %18 ]
  %13 = load ptr, ptr %10, align 8, !tbaa !134
  %14 = getelementptr inbounds ptr, ptr %13, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !104
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %11
  tail call void @_ZN11xercesc_2_713FieldValueMapD1Ev(ptr noundef nonnull align 8 dereferenceable(32) %15) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %15) #13
  br label %18

18:                                               ; preds = %11, %17
  %19 = add nuw nsw i64 %12, 1
  %20 = load i32, ptr %6, align 4, !tbaa !132
  %21 = zext i32 %20 to i64
  %22 = icmp ult i64 %19, %21
  br i1 %22, label %11, label %23, !llvm.loop !290

23:                                               ; preds = %18, %5, %1
  %24 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %25 = load ptr, ptr %24, align 8, !tbaa !135
  %26 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !134
  %28 = load ptr, ptr %25, align 8, !tbaa !98
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  tail call void %30(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef %27)
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_13FieldValueMapEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !66 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_13FieldValueMapEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !66 {
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #12

attributes #0 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind }
attributes #14 = { noreturn nounwind }
attributes #15 = { noreturn }
attributes #16 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!65}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64}
!35 = !{ptr @_ZN11xercesc_2_710ValueStoreC2EPNS_18IdentityConstraintEPNS_10XMLScannerEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_713FieldValueMapC1EPNS_13MemoryManagerE, i64 20}
!36 = !{ptr @_ZN11xercesc_2_710ValueStoreD2Ev, ptr @_ZN11xercesc_2_711RefVectorOfINS_13FieldValueMapEED0Ev, i64 19}
!37 = !{ptr @_ZN11xercesc_2_710ValueStoreD2Ev, ptr @_ZN11xercesc_2_713FieldValueMapD1Ev, i64 20}
!38 = !{ptr @_ZN11xercesc_2_710ValueStore8addValueEPNS_14FieldActivatorEPNS_8IC_FieldEPNS_17DatatypeValidatorEPKt, ptr @_ZN11xercesc_2_716ValueHashTableOfIbE3getEPKvPNS_13MemoryManagerE, i64 158593}
!39 = !{ptr @_ZN11xercesc_2_710ValueStore8addValueEPNS_14FieldActivatorEPNS_8IC_FieldEPNS_17DatatypeValidatorEPKt, ptr @_ZNK11xercesc_2_713FieldValueMap7indexOfEPKNS_8IC_FieldE, i64 158593}
!40 = !{ptr @_ZN11xercesc_2_710ValueStore8addValueEPNS_14FieldActivatorEPNS_8IC_FieldEPNS_17DatatypeValidatorEPKt, ptr @_ZN11xercesc_2_713FieldValueMap3putEPNS_8IC_FieldEPNS_17DatatypeValidatorEPKt, i64 158593}
!41 = !{ptr @_ZN11xercesc_2_710ValueStore8addValueEPNS_14FieldActivatorEPNS_8IC_FieldEPNS_17DatatypeValidatorEPKt, ptr @_ZN11xercesc_2_710ValueStore8containsEPKNS_13FieldValueMapE, i64 158593}
!42 = !{ptr @_ZN11xercesc_2_710ValueStore8addValueEPNS_14FieldActivatorEPNS_8IC_FieldEPNS_17DatatypeValidatorEPKt, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 158608}
!43 = !{ptr @_ZN11xercesc_2_710ValueStore8addValueEPNS_14FieldActivatorEPNS_8IC_FieldEPNS_17DatatypeValidatorEPKt, ptr @_ZN11xercesc_2_713FieldValueMapC1ERKS0_, i64 158593}
!44 = !{ptr @_ZN11xercesc_2_713FieldValueMap3putEPNS_8IC_FieldEPNS_17DatatypeValidatorEPKt, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 45}
!45 = !{ptr @_ZN11xercesc_2_713FieldValueMap3putEPNS_8IC_FieldEPNS_17DatatypeValidatorEPKt, ptr @_ZNK11xercesc_2_713FieldValueMap7indexOfEPKNS_8IC_FieldE, i64 317186}
!46 = !{ptr @_ZN11xercesc_2_713FieldValueMap3putEPNS_8IC_FieldEPNS_17DatatypeValidatorEPKt, ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_8IC_FieldEE19ensureExtraCapacityEj, i64 15}
!47 = !{ptr @_ZN11xercesc_2_713FieldValueMap3putEPNS_8IC_FieldEPNS_17DatatypeValidatorEPKt, ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_17DatatypeValidatorEE19ensureExtraCapacityEj, i64 15}
!48 = !{ptr @_ZN11xercesc_2_713FieldValueMap3putEPNS_8IC_FieldEPNS_17DatatypeValidatorEPKt, ptr @_ZN11xercesc_2_715BaseRefVectorOfItE19ensureExtraCapacityEj, i64 15}
!49 = !{ptr @_ZN11xercesc_2_713FieldValueMap3putEPNS_8IC_FieldEPNS_17DatatypeValidatorEPKt, ptr @_ZN11xercesc_2_716RefArrayVectorOfItE12setElementAtEPtj, i64 317171}
!50 = !{ptr @_ZN11xercesc_2_710ValueStore8containsEPKNS_13FieldValueMapE, ptr @__cxa_allocate_exception, i64 10}
!51 = !{ptr @_ZN11xercesc_2_710ValueStore8containsEPKNS_13FieldValueMapE, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 10}
!52 = !{ptr @_ZN11xercesc_2_710ValueStore8containsEPKNS_13FieldValueMapE, ptr @__cxa_throw, i64 5}
!53 = !{ptr @_ZN11xercesc_2_710ValueStore8containsEPKNS_13FieldValueMapE, ptr @__cxa_free_exception, i64 4}
!54 = !{ptr @_ZN11xercesc_2_710ValueStore6appendEPKS0_, ptr @_ZN11xercesc_2_710ValueStore8containsEPKNS_13FieldValueMapE, i64 30125}
!55 = !{ptr @_ZN11xercesc_2_710ValueStore6appendEPKS0_, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 30129}
!56 = !{ptr @_ZN11xercesc_2_710ValueStore6appendEPKS0_, ptr @_ZN11xercesc_2_713FieldValueMapC1ERKS0_, i64 30125}
!57 = !{ptr @_ZN11xercesc_2_710ValueStore15startValueScopeEv, ptr @_ZN11xercesc_2_713FieldValueMap3putEPNS_8IC_FieldEPNS_17DatatypeValidatorEPKt, i64 158593}
!58 = !{ptr @_ZN11xercesc_2_710ValueStore20endDcocumentFragmentEPNS_15ValueStoreCacheE, ptr @_ZN11xercesc_2_714RefHashTableOfINS_10ValueStoreEE3getEPKv, i64 12}
!59 = !{ptr @_ZN11xercesc_2_710ValueStore20endDcocumentFragmentEPNS_15ValueStoreCacheE, ptr @_ZN11xercesc_2_710ValueStore8containsEPKNS_13FieldValueMapE, i64 128468}
!60 = !{ptr @_ZN11xercesc_2_716RefArrayVectorOfItED0Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 188746}
!61 = !{ptr @_ZN11xercesc_2_711RefVectorOfINS_13FieldValueMapEED2Ev, ptr @_ZN11xercesc_2_713FieldValueMapD1Ev, i64 188718}
!62 = !{ptr @_ZN11xercesc_2_711RefVectorOfINS_13FieldValueMapEED2Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 188718}
!63 = !{ptr @_ZN11xercesc_2_711RefVectorOfINS_13FieldValueMapEED0Ev, ptr @_ZN11xercesc_2_711RefVectorOfINS_13FieldValueMapEED2Ev, i64 19}
!64 = !{ptr @_ZN11xercesc_2_711RefVectorOfINS_13FieldValueMapEED0Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 19}
!65 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!66 = !{!"function_entry_count", i64 0}
!67 = !{!"function_entry_count", i64 20}
!68 = !{!69, !70, i64 0}
!69 = !{!"_ZTSN11xercesc_2_710ValueStoreE", !70, i64 0, !73, i64 4, !74, i64 8, !75, i64 16, !74, i64 48, !74, i64 56, !74, i64 64, !74, i64 72}
!70 = !{!"bool", !71, i64 0}
!71 = !{!"omnipotent char", !72, i64 0}
!72 = !{!"Simple C++ TBAA"}
!73 = !{!"int", !71, i64 0}
!74 = !{!"any pointer", !71, i64 0}
!75 = !{!"_ZTSN11xercesc_2_713FieldValueMapE", !74, i64 0, !74, i64 8, !74, i64 16, !74, i64 24}
!76 = !{!69, !73, i64 4}
!77 = !{!69, !74, i64 8}
!78 = !{!69, !74, i64 64}
!79 = !{!69, !74, i64 72}
!80 = !{!"branch_weights", i32 0, i32 20}
!81 = !{!82, !70, i64 24}
!82 = !{!"_ZTSN11xercesc_2_710XMLScannerE", !83, i64 0, !84, i64 8, !70, i64 16, !70, i64 17, !70, i64 18, !70, i64 19, !70, i64 20, !70, i64 21, !70, i64 22, !70, i64 23, !70, i64 24, !70, i64 25, !70, i64 26, !70, i64 27, !70, i64 28, !70, i64 29, !70, i64 30, !70, i64 31, !70, i64 32, !70, i64 33, !70, i64 34, !70, i64 35, !70, i64 36, !70, i64 37, !70, i64 38, !73, i64 40, !73, i64 44, !73, i64 48, !73, i64 52, !73, i64 56, !73, i64 60, !73, i64 64, !73, i64 68, !74, i64 72, !73, i64 80, !73, i64 84, !73, i64 88, !73, i64 92, !73, i64 96, !74, i64 104, !74, i64 112, !74, i64 120, !74, i64 128, !74, i64 136, !74, i64 144, !74, i64 152, !74, i64 160, !74, i64 168, !70, i64 176, !85, i64 184, !74, i64 264, !88, i64 272, !74, i64 280, !74, i64 288, !74, i64 296, !74, i64 304, !74, i64 312, !74, i64 320, !74, i64 328, !74, i64 336, !74, i64 344, !87, i64 352, !74, i64 360, !89, i64 368, !90, i64 392, !90, i64 432, !90, i64 472, !90, i64 512, !90, i64 552, !90, i64 592, !90, i64 632, !91, i64 672}
!83 = !{!"_ZTSN11xercesc_2_720XMLBufferFullHandlerE"}
!84 = !{!"long", !71, i64 0}
!85 = !{!"_ZTSN11xercesc_2_79ReaderMgrE", !86, i64 0, !74, i64 8, !74, i64 16, !74, i64 24, !74, i64 32, !73, i64 40, !74, i64 48, !70, i64 56, !87, i64 60, !70, i64 64, !74, i64 72}
!86 = !{!"_ZTSN11xercesc_2_77LocatorE"}
!87 = !{!"_ZTSN11xercesc_2_79XMLReader10XMLVersionE", !71, i64 0}
!88 = !{!"_ZTSN11xercesc_2_710XMLScanner10ValSchemesE", !71, i64 0}
!89 = !{!"_ZTSN11xercesc_2_712XMLBufferMgrE", !73, i64 0, !74, i64 8, !74, i64 16}
!90 = !{!"_ZTSN11xercesc_2_79XMLBufferE", !73, i64 0, !73, i64 4, !73, i64 8, !70, i64 12, !74, i64 16, !74, i64 24, !74, i64 32}
!91 = !{!"_ZTSN11xercesc_2_79ElemStackE", !73, i64 0, !73, i64 4, !92, i64 8, !74, i64 48, !73, i64 56, !73, i64 60, !73, i64 64, !73, i64 68, !73, i64 72, !73, i64 76, !73, i64 80, !74, i64 88, !74, i64 96}
!92 = !{!"_ZTSN11xercesc_2_713XMLStringPoolE", !93, i64 0, !74, i64 8, !74, i64 16, !74, i64 24, !73, i64 32, !73, i64 36}
!93 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!94 = !{i8 0, i8 2}
!95 = !{}
!96 = !{!69, !74, i64 48}
!97 = !{!"branch_weights", i32 1, i32 19}
!98 = !{!99, !99, i64 0}
!99 = !{!"vtable pointer", !72, i64 0}
!100 = !{!"VP", i32 0, i64 19, i64 -682728253367140030, i64 19}
!101 = !{!"function_entry_count", i64 158593}
!102 = !{!103, !74, i64 16}
!103 = !{!"_ZTSN11xercesc_2_714FieldActivatorE", !74, i64 0, !74, i64 8, !74, i64 16, !74, i64 24}
!104 = !{!74, !74, i64 0}
!105 = !{!70, !70, i64 0}
!106 = !{!"branch_weights", i32 158593, i32 0}
!107 = !{!82, !74, i64 264}
!108 = !{!"branch_weights", i32 0, i32 158593}
!109 = !{!75, !74, i64 8}
!110 = !{!111, !73, i64 4}
!111 = !{!"_ZTSN11xercesc_2_713ValueVectorOfIPNS_17DatatypeValidatorEEE", !70, i64 0, !73, i64 4, !73, i64 8, !74, i64 16, !74, i64 24}
!112 = !{!"branch_weights", i32 -1851338559, i32 0}
!113 = !{!111, !74, i64 24}
!114 = !{!111, !74, i64 16}
!115 = !{!75, !74, i64 16}
!116 = !{!117, !73, i64 12}
!117 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfItEE", !70, i64 8, !73, i64 12, !73, i64 16, !74, i64 24, !74, i64 32}
!118 = !{!"branch_weights", i32 -1850530244, i32 0}
!119 = !{!117, !74, i64 32}
!120 = !{!117, !74, i64 24}
!121 = !{!75, !74, i64 0}
!122 = !{!123, !73, i64 4}
!123 = !{!"_ZTSN11xercesc_2_713ValueVectorOfIPNS_8IC_FieldEEE", !70, i64 0, !73, i64 4, !73, i64 8, !74, i64 16, !74, i64 24}
!124 = !{!"branch_weights", i32 -754271896, i32 -1162782925}
!125 = !{!"VP", i32 0, i64 84151, i64 -7216796292685975179, i64 84151}
!126 = !{!"branch_weights", i32 84151, i32 0, i32 0}
!127 = !{!128, !74, i64 16}
!128 = !{!"_ZTSN11xercesc_2_718IdentityConstraintE", !93, i64 0, !74, i64 8, !74, i64 16, !74, i64 24, !74, i64 32, !74, i64 40, !73, i64 48}
!129 = !{!"branch_weights", i32 15, i32 158578}
!130 = !{!131, !70, i64 8}
!131 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_13FieldValueMapEEE", !70, i64 8, !73, i64 12, !73, i64 16, !74, i64 24, !74, i64 32}
!132 = !{!131, !73, i64 12}
!133 = !{!131, !73, i64 16}
!134 = !{!131, !74, i64 24}
!135 = !{!131, !74, i64 32}
!136 = !{!"VP", i32 0, i64 15, i64 8345045103670217670, i64 15}
!137 = !{!"branch_weights", i32 15, i32 45}
!138 = distinct !{!138, !139, !140}
!139 = !{!"llvm.loop.mustprogress"}
!140 = !{!"llvm.loop.unroll.disable"}
!141 = !{!"branch_weights", i32 350, i32 188368}
!142 = !{!"VP", i32 0, i64 294, i64 8345045103670217670, i64 294}
!143 = !{!"branch_weights", i32 1, i32 349}
!144 = !{!"branch_weights", i32 349, i32 1}
!145 = !{!"branch_weights", i32 349, i32 453116}
!146 = distinct !{!146, !139, !140}
!147 = !{!"VP", i32 0, i64 294, i64 -7405368087501025645, i64 294}
!148 = !{!"function_entry_count", i64 317186}
!149 = !{!"branch_weights", i32 15, i32 317171}
!150 = !{!75, !74, i64 24}
!151 = !{!123, !70, i64 0}
!152 = !{!123, !73, i64 8}
!153 = !{!123, !74, i64 16}
!154 = !{!123, !74, i64 24}
!155 = !{!"VP", i32 1, i64 15, i64 32, i64 15}
!156 = !{!111, !70, i64 0}
!157 = !{!111, !73, i64 8}
!158 = !{!117, !70, i64 8}
!159 = !{!117, !73, i64 16}
!160 = distinct !{!160, !139, !140}
!161 = !{!"branch_weights", i32 15, i32 0}
!162 = !{!163, !163, i64 0}
!163 = !{!"short", !71, i64 0}
!164 = distinct !{!164, !139, !140}
!165 = !{!"branch_weights", i32 317171, i32 0}
!166 = !{!"branch_weights", i32 158578, i32 158593}
!167 = !{!"branch_weights", i32 158593, i32 1605941}
!168 = !{!"VP", i32 0, i64 158593, i64 8345045103670217670, i64 158593}
!169 = !{!"VP", i32 1, i64 158593, i64 17, i64 125650, i64 33, i64 26024, i64 32, i64 4879, i64 16, i64 1840}
!170 = !{!"VP", i32 0, i64 317171, i64 -1657899148405421246, i64 317171}
!171 = !{!"branch_weights", i32 19, i32 317167}
!172 = !{!"branch_weights", i32 0, i32 317167}
!173 = !{!"branch_weights", i32 104547, i32 1}
!174 = !{!"branch_weights", i32 1221893665, i32 0}
!175 = !{!"branch_weights", i32 0, i32 1221735072}
!176 = !{!"branch_weights", i32 1221735072, i32 0}
!177 = !{!"branch_weights", i32 1, i32 212618}
!178 = distinct !{!178, !139, !140}
!179 = !{!"branch_weights", i32 407245024, i32 -349513554}
!180 = !{!"branch_weights", i32 407245024, i32 -238333738}
!181 = !{!"VP", i32 0, i64 1221735072, i64 2662541864492843694, i64 1221735072}
!182 = !{!"branch_weights", i32 212619, i32 1221522453}
!183 = !{!"branch_weights", i32 212618, i32 1221522454}
!184 = distinct !{!184, !139, !140}
!185 = !{!"branch_weights", i32 104547, i32 1221630525}
!186 = distinct !{!186, !139, !140}
!187 = !{!"branch_weights", i32 212619, i32 104548}
!188 = !{!"branch_weights", i32 0, i32 84151}
!189 = !{!"VP", i32 0, i64 0, i64 -7216796292685975179, i64 0}
!190 = !{!"function_entry_count", i64 4}
!191 = !{!"branch_weights", i32 0, i32 4}
!192 = !{!"branch_weights", i32 1, i32 127}
!193 = !{!"branch_weights", i32 0, i32 30125}
!194 = !{!"branch_weights", i32 4, i32 30121}
!195 = !{!"VP", i32 0, i64 4, i64 8345045103670217670, i64 4}
!196 = !{!"branch_weights", i32 4, i32 12}
!197 = !{!"branch_weights", i32 30125, i32 0}
!198 = !{!"VP", i32 0, i64 55, i64 8345045103670217670, i64 55}
!199 = !{!"VP", i32 0, i64 55, i64 -7405368087501025645, i64 55}
!200 = !{!"branch_weights", i32 127, i32 963873}
!201 = distinct !{!201, !139, !140}
!202 = !{!128, !74, i64 32}
!203 = !{!204, !73, i64 12}
!204 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_8IC_FieldEEE", !70, i64 8, !73, i64 12, !73, i64 16, !74, i64 24, !74, i64 32}
!205 = !{!"branch_weights", i32 158592, i32 1}
!206 = !{!"branch_weights", i32 475779, i32 0}
!207 = !{!204, !74, i64 32}
!208 = !{!204, !74, i64 24}
!209 = distinct !{!209, !139, !140}
!210 = !{!128, !74, i64 8}
!211 = !{!"VP", i32 0, i64 0, i64 2662541864492843694, i64 0}
!212 = !{!"function_entry_count", i64 12}
!213 = !{!"VP", i32 0, i64 12, i64 -7216796292685975179, i64 12}
!214 = !{!"branch_weights", i32 12, i32 0}
!215 = !{!216, !74, i64 56}
!216 = !{!"_ZTSN11xercesc_2_79IC_KeyRefE", !128, i64 0, !74, i64 56}
!217 = !{!218, !74, i64 8}
!218 = !{!"_ZTSN11xercesc_2_715ValueStoreCacheE", !74, i64 0, !74, i64 8, !74, i64 16, !74, i64 24, !74, i64 32, !74, i64 40}
!219 = !{!69, !74, i64 56}
!220 = !{!"branch_weights", i32 0, i32 12}
!221 = !{!"branch_weights", i32 1, i32 11}
!222 = !{!"branch_weights", i32 1, i32 191}
!223 = !{!"branch_weights", i32 128468, i32 0}
!224 = !{!"branch_weights", i32 191, i32 2055297}
!225 = distinct !{!225, !139, !140}
!226 = !{!227, !74, i64 24}
!227 = !{!"_ZTSN11xercesc_2_716ValueHashTableOfIbEE", !74, i64 0, !74, i64 8, !73, i64 16, !74, i64 24}
!228 = !{!227, !73, i64 16}
!229 = !{!227, !74, i64 0}
!230 = !{!"VP", i32 0, i64 158593, i64 4592451362407133634, i64 158593}
!231 = !{!227, !74, i64 8}
!232 = !{!"branch_weights", i32 0, i32 1}
!233 = !{!234, !74, i64 16}
!234 = !{!"_ZTSN11xercesc_2_724ValueHashTableBucketElemIbEE", !70, i64 0, !74, i64 8, !74, i64 16}
!235 = !{!"VP", i32 0, i64 158593, i64 2119983950972065349, i64 158593}
!236 = distinct !{!236, !139, !140}
!237 = !{!238, !74, i64 40}
!238 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !239, i64 8, !74, i64 16, !73, i64 24, !74, i64 32, !74, i64 40}
!239 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !71, i64 0}
!240 = !{!"branch_weights", i32 6, i32 188740}
!241 = !{!"branch_weights", i32 1, i32 188739}
!242 = !{!"VP", i32 0, i64 188992, i64 -7405368087501025645, i64 188992}
!243 = !{!"branch_weights", i32 253, i32 188739}
!244 = distinct !{!244, !139, !140}
!245 = !{!"VP", i32 0, i64 188746, i64 -7405368087501025645, i64 188746}
!246 = !{!"function_entry_count", i64 188746}
!247 = !{!"function_entry_count", i64 317171}
!248 = !{!"branch_weights", i32 0, i32 317171}
!249 = !{!"VP", i32 0, i64 317171, i64 -7405368087501025645, i64 317171}
!250 = distinct !{!250, !139, !140}
!251 = distinct !{!251, !139, !140}
!252 = distinct !{!252, !139, !140}
!253 = distinct !{!253, !139, !140}
!254 = distinct !{!254, !139, !140}
!255 = distinct !{!255, !139, !140}
!256 = !{!"function_entry_count", i64 15}
!257 = !{!"branch_weights", i32 0, i32 15}
!258 = distinct !{!258, !139, !140}
!259 = distinct !{!259, !139, !140}
!260 = !{!"function_entry_count", i64 188992}
!261 = !{!"branch_weights", i32 9, i32 188983}
!262 = !{!"VP", i32 0, i64 9, i64 8345045103670217670, i64 9}
!263 = !{!"branch_weights", i32 1, i32 143}
!264 = !{!"branch_weights", i32 143, i32 1}
!265 = !{!"branch_weights", i32 143, i32 9329}
!266 = distinct !{!266, !139, !140}
!267 = !{!"VP", i32 0, i64 9, i64 -7405368087501025645, i64 9}
!268 = !{!"function_entry_count", i64 16}
!269 = !{!270, !74, i64 40}
!270 = !{!"_ZTSN11xercesc_2_714RefHashTableOfINS_10ValueStoreEEE", !74, i64 0, !70, i64 8, !74, i64 16, !73, i64 24, !73, i64 28, !73, i64 32, !74, i64 40}
!271 = !{!270, !73, i64 24}
!272 = !{!270, !74, i64 0}
!273 = !{!"VP", i32 0, i64 16, i64 4592451362407133634, i64 16}
!274 = !{!270, !74, i64 16}
!275 = !{!276, !74, i64 16}
!276 = !{!"_ZTSN11xercesc_2_722RefHashTableBucketElemINS_10ValueStoreEEE", !74, i64 0, !74, i64 8, !74, i64 16}
!277 = !{!"VP", i32 0, i64 12, i64 2119983950972065349, i64 12}
!278 = !{!"branch_weights", i32 127, i32 257}
!279 = distinct !{!279, !139, !140}
!280 = !{!276, !74, i64 0}
!281 = !{!"function_entry_count", i64 19}
!282 = !{!"branch_weights", i32 0, i32 19}
!283 = !{!"branch_weights", i32 1, i32 151}
!284 = !{!"branch_weights", i32 0, i32 188718}
!285 = !{!"branch_weights", i32 1509593, i32 151}
!286 = distinct !{!286, !139, !140}
!287 = !{!"VP", i32 0, i64 19, i64 -7405368087501025645, i64 19}
!288 = distinct !{!288, !139, !140}
!289 = distinct !{!289, !139, !140}
!290 = distinct !{!290, !139, !140}
