; ModuleID = 'XPathExpression.cpp'
source_filename = "XPathExpression.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.0" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XPathExpression" = type { %"class.xalanc_1_10::XalanVector.0", i32, %"class.xalanc_1_10::XalanVector.1", i32, ptr, %"class.xalanc_1_10::XalanVector.2" }
%"class.xalanc_1_10::XalanVector.1" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.2" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XToken" = type <{ %"class.xalanc_1_10::XObject", ptr, double, i8, [7 x i8] }>
%"class.xalanc_1_10::XObject" = type { %"class.xalanc_1_10::XalanReferenceCountedObject.base", i32, ptr }
%"class.xalanc_1_10::XalanReferenceCountedObject.base" = type <{ ptr, i32 }>
%"class.xalanc_1_10::PrintWriter" = type { %"class.xalanc_1_10::Writer", i8, ptr }
%"class.xalanc_1_10::Writer" = type { ptr }

$_ZN11xalanc_1_1014XalanDOMStringD2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEED2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE6insertEPimRKi = comdat any

$_ZNK11xalanc_1_1019XalanXPathException7getTypeEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10doPushBackERKi = comdat any

$_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE9doReserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE9doReserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERKS4_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE6insertEPS1_PKS1_S7_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE6insertEPiPKiS6_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE10doPushBackERKd = comdat any

$_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE6insertEPdPKdS6_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE9doReserveEm = comdat any

@_ZN11xalanc_1_1015XPathExpression22s_opCodeMapLengthIndexE = dso_local local_unnamed_addr constant i32 1, align 4
@_ZTVN11xalanc_1_1015XPathExpression24XPathExpressionExceptionE = dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1015XPathExpression24XPathExpressionExceptionE, ptr @_ZN11xalanc_1_1015XPathExpression24XPathExpressionExceptionD2Ev, ptr @_ZN11xalanc_1_1015XPathExpression24XPathExpressionExceptionD0Ev, ptr @_ZNK11xalanc_1_1019XalanXPathException7getTypeEv] }, align 8
@_ZTVN11xalanc_1_1015XPathExpression22InvalidOpCodeExceptionE = dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1015XPathExpression22InvalidOpCodeExceptionE, ptr @_ZN11xalanc_1_1015XPathExpression24XPathExpressionExceptionD2Ev, ptr @_ZN11xalanc_1_1015XPathExpression22InvalidOpCodeExceptionD0Ev, ptr @_ZNK11xalanc_1_1019XalanXPathException7getTypeEv] }, align 8
@_ZTVN11xalanc_1_1015XPathExpression29InvalidArgumentCountExceptionE = dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1015XPathExpression29InvalidArgumentCountExceptionE, ptr @_ZN11xalanc_1_1015XPathExpression24XPathExpressionExceptionD2Ev, ptr @_ZN11xalanc_1_1015XPathExpression29InvalidArgumentCountExceptionD0Ev, ptr @_ZNK11xalanc_1_1019XalanXPathException7getTypeEv] }, align 8
@_ZTVN11xalanc_1_1015XPathExpression24InvalidArgumentExceptionE = dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1015XPathExpression24InvalidArgumentExceptionE, ptr @_ZN11xalanc_1_1015XPathExpression24XPathExpressionExceptionD2Ev, ptr @_ZN11xalanc_1_1015XPathExpression24InvalidArgumentExceptionD0Ev, ptr @_ZNK11xalanc_1_1019XalanXPathException7getTypeEv] }, align 8
@_ZN11xalanc_1_10L13s_emptyStringE = internal global %"class.xalanc_1_10::XalanDOMString" zeroinitializer, align 8
@__dso_handle = external hidden global i8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1015XPathExpression22InvalidOpCodeExceptionE = dso_local constant [57 x i8] c"N11xalanc_1_1015XPathExpression22InvalidOpCodeExceptionE\00", align 1
@_ZTSN11xalanc_1_1015XPathExpression24XPathExpressionExceptionE = dso_local constant [59 x i8] c"N11xalanc_1_1015XPathExpression24XPathExpressionExceptionE\00", align 1
@_ZTIN11xalanc_1_1019XalanXPathExceptionE = external constant ptr
@_ZTIN11xalanc_1_1015XPathExpression24XPathExpressionExceptionE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1015XPathExpression24XPathExpressionExceptionE, ptr @_ZTIN11xalanc_1_1019XalanXPathExceptionE }, align 8
@_ZTIN11xalanc_1_1015XPathExpression22InvalidOpCodeExceptionE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1015XPathExpression22InvalidOpCodeExceptionE, ptr @_ZTIN11xalanc_1_1015XPathExpression24XPathExpressionExceptionE }, align 8
@_ZTSN11xalanc_1_1015XPathExpression29InvalidArgumentCountExceptionE = dso_local constant [64 x i8] c"N11xalanc_1_1015XPathExpression29InvalidArgumentCountExceptionE\00", align 1
@_ZTIN11xalanc_1_1015XPathExpression29InvalidArgumentCountExceptionE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1015XPathExpression29InvalidArgumentCountExceptionE, ptr @_ZTIN11xalanc_1_1015XPathExpression24XPathExpressionExceptionE }, align 8
@_ZTSN11xalanc_1_1015XPathExpression24InvalidArgumentExceptionE = dso_local constant [59 x i8] c"N11xalanc_1_1015XPathExpression24InvalidArgumentExceptionE\00", align 1
@_ZTIN11xalanc_1_1015XPathExpression24InvalidArgumentExceptionE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1015XPathExpression24InvalidArgumentExceptionE, ptr @_ZTIN11xalanc_1_1015XPathExpression24XPathExpressionExceptionE }, align 8
@.str = private unnamed_addr constant [3 x i8] c" '\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c")\00", align 1
@_ZN11xalanc_1_10L20theOpCodeLengthArrayE = internal unnamed_addr constant [83 x i32] [i32 1, i32 1, i32 1, i32 0, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 4, i32 4, i32 2, i32 2, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 2, i32 2, i32 2, i32 2, i32 2, i32 3, i32 3, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2], align 16
@_ZN11xalanc_1_1014XalanDOMString7s_emptyE = external constant i16, align 2
@_ZN11xalanc_1_1019XalanXPathException6m_typeE = external constant [0 x i16], align 2
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_XPathExpression.cpp, ptr null }]

@_ZN11xalanc_1_1015XPathExpression24XPathExpressionExceptionC1ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xalanc_1_1015XPathExpression24XPathExpressionExceptionC2ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE
@_ZN11xalanc_1_1015XPathExpression24XPathExpressionExceptionD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1015XPathExpression24XPathExpressionExceptionD2Ev
@_ZN11xalanc_1_1015XPathExpression22InvalidOpCodeExceptionC1EiRNS_14XalanDOMStringE = dso_local unnamed_addr alias void (ptr, i32, ptr), ptr @_ZN11xalanc_1_1015XPathExpression22InvalidOpCodeExceptionC2EiRNS_14XalanDOMStringE
@_ZN11xalanc_1_1015XPathExpression22InvalidOpCodeExceptionD2Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1015XPathExpression24XPathExpressionExceptionD2Ev
@_ZN11xalanc_1_1015XPathExpression22InvalidOpCodeExceptionD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1015XPathExpression24XPathExpressionExceptionD2Ev
@_ZN11xalanc_1_1015XPathExpression29InvalidArgumentCountExceptionC1EiiiRNS_14XalanDOMStringE = dso_local unnamed_addr alias void (ptr, i32, i32, i32, ptr), ptr @_ZN11xalanc_1_1015XPathExpression29InvalidArgumentCountExceptionC2EiiiRNS_14XalanDOMStringE
@_ZN11xalanc_1_1015XPathExpression29InvalidArgumentCountExceptionD2Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1015XPathExpression24XPathExpressionExceptionD2Ev
@_ZN11xalanc_1_1015XPathExpression29InvalidArgumentCountExceptionD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1015XPathExpression24XPathExpressionExceptionD2Ev
@_ZN11xalanc_1_1015XPathExpression24InvalidArgumentExceptionC1EiiRNS_14XalanDOMStringE = dso_local unnamed_addr alias void (ptr, i32, i32, ptr), ptr @_ZN11xalanc_1_1015XPathExpression24InvalidArgumentExceptionC2EiiRNS_14XalanDOMStringE
@_ZN11xalanc_1_1015XPathExpression24InvalidArgumentExceptionD2Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1015XPathExpression24XPathExpressionExceptionD2Ev
@_ZN11xalanc_1_1015XPathExpression24InvalidArgumentExceptionD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1015XPathExpression24XPathExpressionExceptionD2Ev
@_ZN11xalanc_1_1015XPathExpressionC1ERN11xercesc_2_713MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xalanc_1_1015XPathExpressionC2ERN11xercesc_2_713MemoryManagerE
@_ZN11xalanc_1_1015XPathExpressionD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1015XPathExpressionD2Ev

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1015XPathExpression24XPathExpressionExceptionC2ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 align 2 !prof !67 {
  tail call void @_ZN11xalanc_1_1019XalanXPathExceptionC2ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xalanc_1_1015XPathExpression24XPathExpressionExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !68
  ret void
}

declare void @_ZN11xalanc_1_1019XalanXPathExceptionC2ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1019XalanXPathExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #2

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1015XPathExpression24XPathExpressionExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #3 align 2 !prof !67 {
  tail call void @_ZN11xalanc_1_1019XalanXPathExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #17
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1015XPathExpression24XPathExpressionExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #3 align 2 !prof !67 {
  tail call void @_ZN11xalanc_1_1019XalanXPathExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #17
  tail call void @_ZdlPv(ptr noundef %0) #18
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1015XPathExpression22InvalidOpCodeExceptionC2EiRNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(36) %2) unnamed_addr #0 align 2 !prof !67 {
  %4 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1015XPathExpression22InvalidOpCodeException18FormatErrorMessageEiRNS_14XalanDOMStringE(i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(36) %2)
  %5 = load ptr, ptr %2, align 8, !tbaa !71
  tail call void @_ZN11xalanc_1_1019XalanXPathExceptionC2ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull align 8 dereferenceable(8) %5)
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xalanc_1_1015XPathExpression22InvalidOpCodeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !68
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1015XPathExpression22InvalidOpCodeException18FormatErrorMessageEiRNS_14XalanDOMStringE(i32 noundef %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !67 {
  %3 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #17
  %4 = load ptr, ptr %1, align 8, !tbaa !71
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(8) %4)
  %5 = sext i32 %0 to i64
  %6 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1015LongToDOMStringElRNS_14XalanDOMStringE(i64 noundef %5, ptr noundef nonnull align 8 dereferenceable(36) %3)
          to label %7 unwind label %24

7:                                                ; preds = %2
  %8 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef 15, ptr noundef nonnull align 8 dereferenceable(36) %3)
          to label %9 unwind label %24

9:                                                ; preds = %7
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %11 = load i64, ptr %10, align 8, !tbaa !76
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %23, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !77
  %16 = load ptr, ptr %3, align 8, !tbaa !71
  %17 = load ptr, ptr %16, align 8, !tbaa !68
  %18 = getelementptr inbounds ptr, ptr %17, i64 3
  %19 = load ptr, ptr %18, align 8
  invoke void %19(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef %15)
          to label %23 unwind label %20

20:                                               ; preds = %13
  %21 = landingpad { ptr, i32 }
          catch ptr null
  %22 = extractvalue { ptr, i32 } %21, 0
  call void @__clang_call_terminate(ptr %22) #19
  unreachable

23:                                               ; preds = %9, %13
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #17
  ret ptr %8

24:                                               ; preds = %7, %2
  %25 = landingpad { ptr, i32 }
          cleanup
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %27 = load i64, ptr %26, align 8, !tbaa !76
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %39, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !77
  %32 = load ptr, ptr %3, align 8, !tbaa !71
  %33 = load ptr, ptr %32, align 8, !tbaa !68
  %34 = getelementptr inbounds ptr, ptr %33, i64 3
  %35 = load ptr, ptr %34, align 8
  invoke void %35(ptr noundef nonnull align 8 dereferenceable(8) %32, ptr noundef %31)
          to label %39 unwind label %36

36:                                               ; preds = %29
  %37 = landingpad { ptr, i32 }
          catch ptr null
  %38 = extractvalue { ptr, i32 } %37, 0
  call void @__clang_call_terminate(ptr %38) #19
  unreachable

39:                                               ; preds = %24, %29
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #17
  resume { ptr, i32 } %25
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1015XPathExpression22InvalidOpCodeExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #3 align 2 !prof !67 {
  tail call void @_ZN11xalanc_1_1019XalanXPathExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #17
  tail call void @_ZdlPv(ptr noundef %0) #18
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1015LongToDOMStringElRNS_14XalanDOMStringE(i64 noundef, ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #3 comdat align 2 !prof !67 {
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1015XPathExpression29InvalidArgumentCountExceptionC2EiiiRNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(36) %4) unnamed_addr #0 align 2 !prof !67 {
  %6 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1015XPathExpression29InvalidArgumentCountException18FormatErrorMessageEiiiRNS_14XalanDOMStringE(i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(36) %4)
  %7 = load ptr, ptr %4, align 8, !tbaa !71
  tail call void @_ZN11xalanc_1_1019XalanXPathExceptionC2ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef nonnull align 8 dereferenceable(8) %7)
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xalanc_1_1015XPathExpression29InvalidArgumentCountExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !68
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1015XPathExpression29InvalidArgumentCountException18FormatErrorMessageEiiiRNS_14XalanDOMStringE(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(36) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !67 {
  %5 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %6 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %7 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #17
  %8 = load ptr, ptr %3, align 8, !tbaa !71
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(8) %8)
  %9 = sext i32 %0 to i64
  %10 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1015LongToDOMStringElRNS_14XalanDOMStringE(i64 noundef %9, ptr noundef nonnull align 8 dereferenceable(36) %5)
          to label %11 unwind label %66

11:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #17
  %12 = load ptr, ptr %3, align 8, !tbaa !71
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %13 unwind label %68

13:                                               ; preds = %11
  %14 = sext i32 %1 to i64
  %15 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1015LongToDOMStringElRNS_14XalanDOMStringE(i64 noundef %14, ptr noundef nonnull align 8 dereferenceable(36) %6)
          to label %16 unwind label %70

16:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #17
  %17 = load ptr, ptr %3, align 8, !tbaa !71
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %18 unwind label %72

18:                                               ; preds = %16
  %19 = sext i32 %2 to i64
  %20 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1015LongToDOMStringElRNS_14XalanDOMStringE(i64 noundef %19, ptr noundef nonnull align 8 dereferenceable(36) %7)
          to label %21 unwind label %74

21:                                               ; preds = %18
  %22 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_S6_(ptr noundef nonnull align 8 dereferenceable(36) %3, i32 noundef 16, ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef nonnull align 8 dereferenceable(36) %7)
          to label %23 unwind label %74

23:                                               ; preds = %21
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %7, i64 0, i32 2
  %25 = load i64, ptr %24, align 8, !tbaa !76
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %37, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %7, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !77
  %30 = load ptr, ptr %7, align 8, !tbaa !71
  %31 = load ptr, ptr %30, align 8, !tbaa !68
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  invoke void %33(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef %29)
          to label %37 unwind label %34

34:                                               ; preds = %27
  %35 = landingpad { ptr, i32 }
          catch ptr null
  %36 = extractvalue { ptr, i32 } %35, 0
  call void @__clang_call_terminate(ptr %36) #19
  unreachable

37:                                               ; preds = %23, %27
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #17
  %38 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %6, i64 0, i32 2
  %39 = load i64, ptr %38, align 8, !tbaa !76
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %51, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %6, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !77
  %44 = load ptr, ptr %6, align 8, !tbaa !71
  %45 = load ptr, ptr %44, align 8, !tbaa !68
  %46 = getelementptr inbounds ptr, ptr %45, i64 3
  %47 = load ptr, ptr %46, align 8
  invoke void %47(ptr noundef nonnull align 8 dereferenceable(8) %44, ptr noundef %43)
          to label %51 unwind label %48

48:                                               ; preds = %41
  %49 = landingpad { ptr, i32 }
          catch ptr null
  %50 = extractvalue { ptr, i32 } %49, 0
  call void @__clang_call_terminate(ptr %50) #19
  unreachable

51:                                               ; preds = %37, %41
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #17
  %52 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  %53 = load i64, ptr %52, align 8, !tbaa !76
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %65, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  %57 = load ptr, ptr %56, align 8, !tbaa !77
  %58 = load ptr, ptr %5, align 8, !tbaa !71
  %59 = load ptr, ptr %58, align 8, !tbaa !68
  %60 = getelementptr inbounds ptr, ptr %59, i64 3
  %61 = load ptr, ptr %60, align 8
  invoke void %61(ptr noundef nonnull align 8 dereferenceable(8) %58, ptr noundef %57)
          to label %65 unwind label %62

62:                                               ; preds = %55
  %63 = landingpad { ptr, i32 }
          catch ptr null
  %64 = extractvalue { ptr, i32 } %63, 0
  call void @__clang_call_terminate(ptr %64) #19
  unreachable

65:                                               ; preds = %51, %55
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #17
  ret ptr %22

66:                                               ; preds = %4
  %67 = landingpad { ptr, i32 }
          cleanup
  br label %108

68:                                               ; preds = %11
  %69 = landingpad { ptr, i32 }
          cleanup
  br label %106

70:                                               ; preds = %13
  %71 = landingpad { ptr, i32 }
          cleanup
  br label %91

72:                                               ; preds = %16
  %73 = landingpad { ptr, i32 }
          cleanup
  br label %89

74:                                               ; preds = %21, %18
  %75 = landingpad { ptr, i32 }
          cleanup
  %76 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %7, i64 0, i32 2
  %77 = load i64, ptr %76, align 8, !tbaa !76
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %89, label %79

79:                                               ; preds = %74
  %80 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %7, i64 0, i32 3
  %81 = load ptr, ptr %80, align 8, !tbaa !77
  %82 = load ptr, ptr %7, align 8, !tbaa !71
  %83 = load ptr, ptr %82, align 8, !tbaa !68
  %84 = getelementptr inbounds ptr, ptr %83, i64 3
  %85 = load ptr, ptr %84, align 8
  invoke void %85(ptr noundef nonnull align 8 dereferenceable(8) %82, ptr noundef %81)
          to label %89 unwind label %86

86:                                               ; preds = %79
  %87 = landingpad { ptr, i32 }
          catch ptr null
  %88 = extractvalue { ptr, i32 } %87, 0
  call void @__clang_call_terminate(ptr %88) #19
  unreachable

89:                                               ; preds = %79, %74, %72
  %90 = phi { ptr, i32 } [ %73, %72 ], [ %75, %74 ], [ %75, %79 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #17
  br label %91

91:                                               ; preds = %89, %70
  %92 = phi { ptr, i32 } [ %90, %89 ], [ %71, %70 ]
  %93 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %6, i64 0, i32 2
  %94 = load i64, ptr %93, align 8, !tbaa !76
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %106, label %96

96:                                               ; preds = %91
  %97 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %6, i64 0, i32 3
  %98 = load ptr, ptr %97, align 8, !tbaa !77
  %99 = load ptr, ptr %6, align 8, !tbaa !71
  %100 = load ptr, ptr %99, align 8, !tbaa !68
  %101 = getelementptr inbounds ptr, ptr %100, i64 3
  %102 = load ptr, ptr %101, align 8
  invoke void %102(ptr noundef nonnull align 8 dereferenceable(8) %99, ptr noundef %98)
          to label %106 unwind label %103

103:                                              ; preds = %96
  %104 = landingpad { ptr, i32 }
          catch ptr null
  %105 = extractvalue { ptr, i32 } %104, 0
  call void @__clang_call_terminate(ptr %105) #19
  unreachable

106:                                              ; preds = %96, %91, %68
  %107 = phi { ptr, i32 } [ %69, %68 ], [ %92, %91 ], [ %92, %96 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #17
  br label %108

108:                                              ; preds = %106, %66
  %109 = phi { ptr, i32 } [ %107, %106 ], [ %67, %66 ]
  %110 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  %111 = load i64, ptr %110, align 8, !tbaa !76
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %123, label %113

113:                                              ; preds = %108
  %114 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  %115 = load ptr, ptr %114, align 8, !tbaa !77
  %116 = load ptr, ptr %5, align 8, !tbaa !71
  %117 = load ptr, ptr %116, align 8, !tbaa !68
  %118 = getelementptr inbounds ptr, ptr %117, i64 3
  %119 = load ptr, ptr %118, align 8
  invoke void %119(ptr noundef nonnull align 8 dereferenceable(8) %116, ptr noundef %115)
          to label %123 unwind label %120

120:                                              ; preds = %113
  %121 = landingpad { ptr, i32 }
          catch ptr null
  %122 = extractvalue { ptr, i32 } %121, 0
  call void @__clang_call_terminate(ptr %122) #19
  unreachable

123:                                              ; preds = %108, %113
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #17
  resume { ptr, i32 } %109
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1015XPathExpression29InvalidArgumentCountExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #3 align 2 !prof !67 {
  tail call void @_ZN11xalanc_1_1019XalanXPathExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #17
  tail call void @_ZdlPv(ptr noundef %0) #18
  ret void
}

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_S6_(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1015XPathExpression24InvalidArgumentExceptionC2EiiRNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(36) %3) unnamed_addr #0 align 2 !prof !67 {
  %5 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1015XPathExpression24InvalidArgumentException18FormatErrorMessageEiiRNS_14XalanDOMStringE(i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(36) %3)
  %6 = load ptr, ptr %3, align 8, !tbaa !71
  tail call void @_ZN11xalanc_1_1019XalanXPathExceptionC2ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(8) %6)
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xalanc_1_1015XPathExpression24InvalidArgumentExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !68
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1015XPathExpression24InvalidArgumentException18FormatErrorMessageEiiRNS_14XalanDOMStringE(i32 noundef %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(36) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !67 {
  %4 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %5 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #17
  %6 = load ptr, ptr %2, align 8, !tbaa !71
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull align 8 dereferenceable(8) %6)
  %7 = sext i32 %1 to i64
  %8 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1015LongToDOMStringElRNS_14XalanDOMStringE(i64 noundef %7, ptr noundef nonnull align 8 dereferenceable(36) %4)
          to label %9 unwind label %45

9:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #17
  %10 = load ptr, ptr %2, align 8, !tbaa !71
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %11 unwind label %47

11:                                               ; preds = %9
  %12 = sext i32 %0 to i64
  %13 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1023UnsignedLongToDOMStringEmRNS_14XalanDOMStringE(i64 noundef %12, ptr noundef nonnull align 8 dereferenceable(36) %5)
          to label %14 unwind label %49

14:                                               ; preds = %11
  %15 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_(ptr noundef nonnull align 8 dereferenceable(36) %2, i32 noundef 17, ptr noundef nonnull align 8 dereferenceable(36) %5)
          to label %16 unwind label %49

16:                                               ; preds = %14
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  %18 = load i64, ptr %17, align 8, !tbaa !76
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %30, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !77
  %23 = load ptr, ptr %5, align 8, !tbaa !71
  %24 = load ptr, ptr %23, align 8, !tbaa !68
  %25 = getelementptr inbounds ptr, ptr %24, i64 3
  %26 = load ptr, ptr %25, align 8
  invoke void %26(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %22)
          to label %30 unwind label %27

27:                                               ; preds = %20
  %28 = landingpad { ptr, i32 }
          catch ptr null
  %29 = extractvalue { ptr, i32 } %28, 0
  call void @__clang_call_terminate(ptr %29) #19
  unreachable

30:                                               ; preds = %16, %20
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #17
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !76
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %44, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !77
  %37 = load ptr, ptr %4, align 8, !tbaa !71
  %38 = load ptr, ptr %37, align 8, !tbaa !68
  %39 = getelementptr inbounds ptr, ptr %38, i64 3
  %40 = load ptr, ptr %39, align 8
  invoke void %40(ptr noundef nonnull align 8 dereferenceable(8) %37, ptr noundef %36)
          to label %44 unwind label %41

41:                                               ; preds = %34
  %42 = landingpad { ptr, i32 }
          catch ptr null
  %43 = extractvalue { ptr, i32 } %42, 0
  call void @__clang_call_terminate(ptr %43) #19
  unreachable

44:                                               ; preds = %30, %34
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #17
  ret ptr %15

45:                                               ; preds = %3
  %46 = landingpad { ptr, i32 }
          cleanup
  br label %66

47:                                               ; preds = %9
  %48 = landingpad { ptr, i32 }
          cleanup
  br label %64

49:                                               ; preds = %14, %11
  %50 = landingpad { ptr, i32 }
          cleanup
  %51 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  %52 = load i64, ptr %51, align 8, !tbaa !76
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %64, label %54

54:                                               ; preds = %49
  %55 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  %56 = load ptr, ptr %55, align 8, !tbaa !77
  %57 = load ptr, ptr %5, align 8, !tbaa !71
  %58 = load ptr, ptr %57, align 8, !tbaa !68
  %59 = getelementptr inbounds ptr, ptr %58, i64 3
  %60 = load ptr, ptr %59, align 8
  invoke void %60(ptr noundef nonnull align 8 dereferenceable(8) %57, ptr noundef %56)
          to label %64 unwind label %61

61:                                               ; preds = %54
  %62 = landingpad { ptr, i32 }
          catch ptr null
  %63 = extractvalue { ptr, i32 } %62, 0
  call void @__clang_call_terminate(ptr %63) #19
  unreachable

64:                                               ; preds = %54, %49, %47
  %65 = phi { ptr, i32 } [ %48, %47 ], [ %50, %49 ], [ %50, %54 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #17
  br label %66

66:                                               ; preds = %64, %45
  %67 = phi { ptr, i32 } [ %65, %64 ], [ %46, %45 ]
  %68 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 2
  %69 = load i64, ptr %68, align 8, !tbaa !76
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %81, label %71

71:                                               ; preds = %66
  %72 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 3
  %73 = load ptr, ptr %72, align 8, !tbaa !77
  %74 = load ptr, ptr %4, align 8, !tbaa !71
  %75 = load ptr, ptr %74, align 8, !tbaa !68
  %76 = getelementptr inbounds ptr, ptr %75, i64 3
  %77 = load ptr, ptr %76, align 8
  invoke void %77(ptr noundef nonnull align 8 dereferenceable(8) %74, ptr noundef %73)
          to label %81 unwind label %78

78:                                               ; preds = %71
  %79 = landingpad { ptr, i32 }
          catch ptr null
  %80 = extractvalue { ptr, i32 } %79, 0
  call void @__clang_call_terminate(ptr %80) #19
  unreachable

81:                                               ; preds = %66, %71
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #17
  resume { ptr, i32 } %67
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1015XPathExpression24InvalidArgumentExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #3 align 2 !prof !67 {
  tail call void @_ZN11xalanc_1_1019XalanXPathExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #17
  tail call void @_ZdlPv(ptr noundef %0) #18
  ret void
}

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1023UnsignedLongToDOMStringEmRNS_14XalanDOMStringE(i64 noundef, ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv() local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #6

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1015XPathExpressionC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !78 {
  store ptr %1, ptr %0, align 8, !tbaa !79
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %3, i8 0, i64 28, i1 false)
  store ptr %1, ptr %4, align 8, !tbaa !81
  %5 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %0, i64 0, i32 2, i32 1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %5, i8 0, i64 28, i1 false)
  store ptr @_ZN11xalanc_1_10L13s_emptyStringE, ptr %6, align 8, !tbaa !83
  %7 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %0, i64 0, i32 5
  store ptr %1, ptr %7, align 8, !tbaa !87
  %8 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %0, i64 0, i32 5, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  invoke void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 100)
          to label %9 unwind label %15, !prof !88

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %0, i64 0, i32 2, i32 2
  %11 = load i64, ptr %10, align 8, !tbaa !89
  %12 = icmp ult i64 %11, 30
  br i1 %12, label %13, label %14, !prof !88

13:                                               ; preds = %9
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 30)
          to label %14 unwind label %15, !prof !88

14:                                               ; preds = %13, %9
  ret void

15:                                               ; preds = %13, %2
  %16 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #17
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #17
  tail call void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  resume { ptr, i32 } %16
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !90 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !91
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !92

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !93
  %8 = load ptr, ptr %0, align 8, !tbaa !87
  %9 = load ptr, ptr %8, align 8, !tbaa !68
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %7)
          to label %12 unwind label %13, !prof !94

12:                                               ; preds = %5, %1
  ret void

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #19
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !95 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !89
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %24, label %5, !prof !96

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !97
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !98
  %10 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %7, i64 %9
  %11 = icmp eq i64 %9, 0
  br i1 %11, label %18, label %12, !prof !99

12:                                               ; preds = %5, %12
  %13 = phi ptr [ %16, %12 ], [ %7, %5 ]
  %14 = load ptr, ptr %13, align 8, !tbaa !68
  %15 = load ptr, ptr %14, align 8
  tail call void %15(ptr noundef nonnull align 8 dereferenceable(41) %13) #17
  %16 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %13, i64 1
  %17 = icmp eq ptr %16, %10
  br i1 %17, label %18, label %12, !prof !99, !llvm.loop !100

18:                                               ; preds = %12, %5
  %19 = load ptr, ptr %6, align 8, !tbaa !97
  %20 = load ptr, ptr %0, align 8, !tbaa !81
  %21 = load ptr, ptr %20, align 8, !tbaa !68
  %22 = getelementptr inbounds ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8
  invoke void %23(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef %19)
          to label %24 unwind label %25, !prof !103

24:                                               ; preds = %18, %1
  ret void

25:                                               ; preds = %18
  %26 = landingpad { ptr, i32 }
          catch ptr null
  %27 = extractvalue { ptr, i32 } %26, 0
  tail call void @__clang_call_terminate(ptr %27) #19
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !90 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !104
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !105

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !106
  %8 = load ptr, ptr %0, align 8, !tbaa !79
  %9 = load ptr, ptr %8, align 8, !tbaa !68
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %7)
          to label %12 unwind label %13, !prof !103

12:                                               ; preds = %5, %1
  ret void

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #19
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1015XPathExpressionD2Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !78 {
  invoke void @_ZN11xalanc_1_1015XPathExpression5resetEv(ptr noundef nonnull align 8 dereferenceable(120) %0)
          to label %2 unwind label %5, !prof !88

2:                                                ; preds = %1
  %3 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %0, i64 0, i32 5
  tail call void @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #17
  %4 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %0, i64 0, i32 2
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #17
  tail call void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  ret void

5:                                                ; preds = %1
  %6 = landingpad { ptr, i32 }
          catch ptr null
  %7 = extractvalue { ptr, i32 } %6, 0
  tail call void @__clang_call_terminate(ptr %7) #19
  unreachable
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1015XPathExpression5resetEv(ptr nocapture noundef nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #8 align 2 !prof !95 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !107
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %6, label %5, !prof !96

5:                                                ; preds = %1
  store i64 0, ptr %2, align 8, !tbaa !107
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %0, i64 0, i32 2, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !98
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %21, label %10, !prof !96

10:                                               ; preds = %6
  %11 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %0, i64 0, i32 2, i32 3
  br label %12

12:                                               ; preds = %10, %12
  %13 = load i64, ptr %7, align 8, !tbaa !98
  %14 = add i64 %13, -1
  store i64 %14, ptr %7, align 8, !tbaa !98
  %15 = load ptr, ptr %11, align 8, !tbaa !97
  %16 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !68
  %18 = load ptr, ptr %17, align 8
  tail call void %18(ptr noundef nonnull align 8 dereferenceable(41) %16) #17, !prof !108
  %19 = load i64, ptr %7, align 8, !tbaa !98
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %12, !prof !109, !llvm.loop !110

21:                                               ; preds = %12, %6
  ret void
}

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #9 comdat !prof !67 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #17
  tail call void @_ZSt9terminatev() #19
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1015XPathExpression6shrinkEv(ptr noundef nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !111 {
  %2 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %4 = load i64, ptr %3, align 8, !tbaa !104
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !107
  %7 = icmp ugt i64 %4, %6
  br i1 %7, label %8, label %31, !prof !112

8:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #17
  %9 = load ptr, ptr %0, align 8, !tbaa !79
  call void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %9, i64 noundef 0)
  %10 = load ptr, ptr %2, align 8, !tbaa !79
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %2, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !107
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %2, i64 0, i32 2
  %14 = load i64, ptr %13, align 8, !tbaa !104
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %2, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !106
  %17 = load ptr, ptr %0, align 8, !tbaa !79
  store ptr %17, ptr %2, align 8, !tbaa !79
  %18 = load i64, ptr %5, align 8, !tbaa !107
  store i64 %18, ptr %11, align 8, !tbaa !107
  %19 = load i64, ptr %3, align 8, !tbaa !104
  store i64 %19, ptr %13, align 8, !tbaa !104
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !106
  store ptr %21, ptr %15, align 8, !tbaa !106
  store ptr %10, ptr %0, align 8, !tbaa !79
  store i64 %12, ptr %5, align 8, !tbaa !107
  store i64 %14, ptr %3, align 8, !tbaa !104
  store ptr %16, ptr %20, align 8, !tbaa !106
  %22 = icmp eq i64 %19, 0
  br i1 %22, label %30, label %23, !prof !113

23:                                               ; preds = %8
  %24 = load ptr, ptr %17, align 8, !tbaa !68
  %25 = getelementptr inbounds ptr, ptr %24, i64 3
  %26 = load ptr, ptr %25, align 8
  invoke void %26(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef %21)
          to label %30 unwind label %27, !prof !114

27:                                               ; preds = %23
  %28 = landingpad { ptr, i32 }
          catch ptr null
  %29 = extractvalue { ptr, i32 } %28, 0
  call void @__clang_call_terminate(ptr %29) #19
  unreachable

30:                                               ; preds = %8, %23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #17
  br label %31

31:                                               ; preds = %30, %1
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !115 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  store ptr %2, ptr %0, align 8, !tbaa !79
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !107
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %58, label %12, !prof !116

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #17
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !79
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !107
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !104
  %16 = shl i64 %13, 2
  %17 = load ptr, ptr %2, align 8, !tbaa !68
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16), !prof !117
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !106
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !106
  %24 = load i64, ptr %9, align 8, !tbaa !107
  %25 = getelementptr inbounds i32, ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE6insertEPiPKiS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %44, !prof !112

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !79
  %28 = load i64, ptr %6, align 8, !tbaa !107
  %29 = load i64, ptr %7, align 8, !tbaa !104
  %30 = load ptr, ptr %8, align 8, !tbaa !106
  %31 = load ptr, ptr %5, align 8, !tbaa !79
  store ptr %31, ptr %0, align 8, !tbaa !79
  %32 = load i64, ptr %14, align 8, !tbaa !107
  store i64 %32, ptr %6, align 8, !tbaa !107
  %33 = load i64, ptr %15, align 8, !tbaa !104
  store i64 %33, ptr %7, align 8, !tbaa !104
  %34 = load ptr, ptr %21, align 8, !tbaa !106
  store ptr %34, ptr %8, align 8, !tbaa !106
  store ptr %27, ptr %5, align 8, !tbaa !79
  store i64 %28, ptr %14, align 8, !tbaa !107
  store i64 %29, ptr %15, align 8, !tbaa !104
  store ptr %30, ptr %21, align 8, !tbaa !106
  %35 = icmp eq i64 %29, 0
  br i1 %35, label %43, label %36, !prof !112

36:                                               ; preds = %26
  %37 = load ptr, ptr %27, align 8, !tbaa !68
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %30)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #19
  unreachable

43:                                               ; preds = %26, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  br label %66

44:                                               ; preds = %12
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = load i64, ptr %15, align 8, !tbaa !104
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %21, align 8, !tbaa !106
  %50 = load ptr, ptr %5, align 8, !tbaa !79
  %51 = load ptr, ptr %50, align 8, !tbaa !68
  %52 = getelementptr inbounds ptr, ptr %51, i64 3
  %53 = load ptr, ptr %52, align 8
  invoke void %53(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef %49)
          to label %57 unwind label %54

54:                                               ; preds = %48
  %55 = landingpad { ptr, i32 }
          catch ptr null
  %56 = extractvalue { ptr, i32 } %55, 0
  call void @__clang_call_terminate(ptr %56) #19
  unreachable

57:                                               ; preds = %44, %48
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  resume { ptr, i32 } %45

58:                                               ; preds = %4
  %59 = icmp eq i64 %3, 0
  br i1 %59, label %66, label %60, !prof !118

60:                                               ; preds = %58
  %61 = shl i64 %3, 2
  %62 = load ptr, ptr %2, align 8, !tbaa !68
  %63 = getelementptr inbounds ptr, ptr %62, i64 2
  %64 = load ptr, ptr %63, align 8
  %65 = tail call noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %61), !prof !119
  store ptr %65, ptr %8, align 8, !tbaa !106
  store i64 %3, ptr %7, align 8, !tbaa !104
  br label %66

66:                                               ; preds = %58, %60, %43
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_1015XPathExpression24getOpCodeLengthFromOpMapEPKiRN11xercesc_2_713MemoryManagerE(ptr nocapture noundef nonnull readnone align 8 dereferenceable(120) %0, ptr nocapture noundef readonly %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !67 {
  %4 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %5 = load i32, ptr %1, align 4, !tbaa !120
  %6 = add i32 %5, -80
  %7 = icmp ult i32 %6, -83
  br i1 %7, label %13, label %8

8:                                                ; preds = %3
  %9 = add nsw i32 %5, 3
  %10 = zext nneg i32 %9 to i64
  %11 = getelementptr inbounds [83 x i32], ptr @_ZN11xalanc_1_10L20theOpCodeLengthArrayE, i64 0, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !120
  br label %13

13:                                               ; preds = %3, %8
  %14 = phi i32 [ %12, %8 ], [ 0, %3 ]
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %42

16:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #17
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %17 = call ptr @__cxa_allocate_exception(i64 112) #17
  %18 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1015XPathExpression22InvalidOpCodeException18FormatErrorMessageEiRNS_14XalanDOMStringE(i32 noundef -1, ptr noundef nonnull align 8 dereferenceable(36) %4)
          to label %19 unwind label %22

19:                                               ; preds = %16
  %20 = load ptr, ptr %4, align 8, !tbaa !71
  invoke void @_ZN11xalanc_1_1019XalanXPathExceptionC2ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(112) %17, ptr noundef nonnull align 8 dereferenceable(36) %18, ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %21 unwind label %22

21:                                               ; preds = %19
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xalanc_1_1015XPathExpression22InvalidOpCodeExceptionE, i64 0, inrange i32 0, i64 2), ptr %17, align 8, !tbaa !68
  invoke void @__cxa_throw(ptr nonnull %17, ptr nonnull @_ZTIN11xalanc_1_1015XPathExpression22InvalidOpCodeExceptionE, ptr nonnull @_ZN11xalanc_1_1015XPathExpression24XPathExpressionExceptionD2Ev) #20
          to label %49 unwind label %24

22:                                               ; preds = %19, %16
  %23 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %17) #17
  br label %26

24:                                               ; preds = %21
  %25 = landingpad { ptr, i32 }
          cleanup
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi { ptr, i32 } [ %25, %24 ], [ %23, %22 ]
  %28 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 2
  %29 = load i64, ptr %28, align 8, !tbaa !76
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %41, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !77
  %34 = load ptr, ptr %4, align 8, !tbaa !71
  %35 = load ptr, ptr %34, align 8, !tbaa !68
  %36 = getelementptr inbounds ptr, ptr %35, i64 3
  %37 = load ptr, ptr %36, align 8
  invoke void %37(ptr noundef nonnull align 8 dereferenceable(8) %34, ptr noundef %33)
          to label %41 unwind label %38

38:                                               ; preds = %31
  %39 = landingpad { ptr, i32 }
          catch ptr null
  %40 = extractvalue { ptr, i32 } %39, 0
  call void @__clang_call_terminate(ptr %40) #19
  unreachable

41:                                               ; preds = %26, %31
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #17
  resume { ptr, i32 } %27

42:                                               ; preds = %13
  %43 = icmp sgt i32 %14, 1
  br i1 %43, label %44, label %47

44:                                               ; preds = %42
  %45 = getelementptr inbounds i32, ptr %1, i64 1
  %46 = load i32, ptr %45, align 4, !tbaa !120
  br label %47

47:                                               ; preds = %42, %44
  %48 = phi i32 [ %46, %44 ], [ 0, %42 ]
  ret i32 %48

49:                                               ; preds = %21
  unreachable
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_1015XPathExpression24getOpCodeLengthFromOpMapEiRN11xercesc_2_713MemoryManagerE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(120) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !67 {
  %4 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %5 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !107
  %8 = trunc i64 %7 to i32
  %9 = icmp sgt i32 %8, %1
  br i1 %9, label %37, label %10

10:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #17
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %11 = call ptr @__cxa_allocate_exception(i64 112) #17
  %12 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1015XPathExpression22InvalidOpCodeException18FormatErrorMessageEiRNS_14XalanDOMStringE(i32 noundef -1, ptr noundef nonnull align 8 dereferenceable(36) %4)
          to label %13 unwind label %17

13:                                               ; preds = %10
  %14 = load ptr, ptr %4, align 8, !tbaa !71
  invoke void @_ZN11xalanc_1_1019XalanXPathExceptionC2ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(112) %11, ptr noundef nonnull align 8 dereferenceable(36) %12, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %15 unwind label %17

15:                                               ; preds = %13
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xalanc_1_1015XPathExpression22InvalidOpCodeExceptionE, i64 0, inrange i32 0, i64 2), ptr %11, align 8, !tbaa !68
  invoke void @__cxa_throw(ptr nonnull %11, ptr nonnull @_ZTIN11xalanc_1_1015XPathExpression22InvalidOpCodeExceptionE, ptr nonnull @_ZN11xalanc_1_1015XPathExpression24XPathExpressionExceptionD2Ev) #20
          to label %16 unwind label %19

16:                                               ; preds = %15
  unreachable

17:                                               ; preds = %13, %10
  %18 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %11) #17
  br label %21

19:                                               ; preds = %15
  %20 = landingpad { ptr, i32 }
          cleanup
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi { ptr, i32 } [ %20, %19 ], [ %18, %17 ]
  %23 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 2
  %24 = load i64, ptr %23, align 8, !tbaa !76
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %36, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !77
  %29 = load ptr, ptr %4, align 8, !tbaa !71
  %30 = load ptr, ptr %29, align 8, !tbaa !68
  %31 = getelementptr inbounds ptr, ptr %30, i64 3
  %32 = load ptr, ptr %31, align 8
  invoke void %32(ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef %28)
          to label %36 unwind label %33

33:                                               ; preds = %26
  %34 = landingpad { ptr, i32 }
          catch ptr null
  %35 = extractvalue { ptr, i32 } %34, 0
  call void @__clang_call_terminate(ptr %35) #19
  unreachable

36:                                               ; preds = %21, %26
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #17
  br label %87

37:                                               ; preds = %3
  %38 = sext i32 %1 to i64
  %39 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !106
  %41 = getelementptr inbounds i32, ptr %40, i64 %38
  %42 = load i32, ptr %41, align 4, !tbaa !120
  %43 = add i32 %42, -80
  %44 = icmp ult i32 %43, -83
  br i1 %44, label %50, label %45

45:                                               ; preds = %37
  %46 = add nsw i32 %42, 3
  %47 = zext nneg i32 %46 to i64
  %48 = getelementptr inbounds [83 x i32], ptr @_ZN11xalanc_1_10L20theOpCodeLengthArrayE, i64 0, i64 %47
  %49 = load i32, ptr %48, align 4, !tbaa !120
  br label %50

50:                                               ; preds = %37, %45
  %51 = phi i32 [ %49, %45 ], [ 0, %37 ]
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %80

53:                                               ; preds = %50
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #17
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %54 = call ptr @__cxa_allocate_exception(i64 112) #17
  %55 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1015XPathExpression22InvalidOpCodeException18FormatErrorMessageEiRNS_14XalanDOMStringE(i32 noundef -1, ptr noundef nonnull align 8 dereferenceable(36) %5)
          to label %56 unwind label %60

56:                                               ; preds = %53
  %57 = load ptr, ptr %5, align 8, !tbaa !71
  invoke void @_ZN11xalanc_1_1019XalanXPathExceptionC2ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(112) %54, ptr noundef nonnull align 8 dereferenceable(36) %55, ptr noundef nonnull align 8 dereferenceable(8) %57)
          to label %58 unwind label %60

58:                                               ; preds = %56
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xalanc_1_1015XPathExpression22InvalidOpCodeExceptionE, i64 0, inrange i32 0, i64 2), ptr %54, align 8, !tbaa !68
  invoke void @__cxa_throw(ptr nonnull %54, ptr nonnull @_ZTIN11xalanc_1_1015XPathExpression22InvalidOpCodeExceptionE, ptr nonnull @_ZN11xalanc_1_1015XPathExpression24XPathExpressionExceptionD2Ev) #20
          to label %59 unwind label %62

59:                                               ; preds = %58
  unreachable

60:                                               ; preds = %56, %53
  %61 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %54) #17
  br label %64

62:                                               ; preds = %58
  %63 = landingpad { ptr, i32 }
          cleanup
  br label %64

64:                                               ; preds = %62, %60
  %65 = phi { ptr, i32 } [ %63, %62 ], [ %61, %60 ]
  %66 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  %67 = load i64, ptr %66, align 8, !tbaa !76
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %79, label %69

69:                                               ; preds = %64
  %70 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  %71 = load ptr, ptr %70, align 8, !tbaa !77
  %72 = load ptr, ptr %5, align 8, !tbaa !71
  %73 = load ptr, ptr %72, align 8, !tbaa !68
  %74 = getelementptr inbounds ptr, ptr %73, i64 3
  %75 = load ptr, ptr %74, align 8
  invoke void %75(ptr noundef nonnull align 8 dereferenceable(8) %72, ptr noundef %71)
          to label %79 unwind label %76

76:                                               ; preds = %69
  %77 = landingpad { ptr, i32 }
          catch ptr null
  %78 = extractvalue { ptr, i32 } %77, 0
  call void @__clang_call_terminate(ptr %78) #19
  unreachable

79:                                               ; preds = %64, %69
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #17
  br label %87

80:                                               ; preds = %50
  %81 = icmp sgt i32 %51, 1
  br i1 %81, label %82, label %85

82:                                               ; preds = %80
  %83 = getelementptr i32, ptr %41, i64 1
  %84 = load i32, ptr %83, align 4, !tbaa !120
  br label %85

85:                                               ; preds = %80, %82
  %86 = phi i32 [ %84, %82 ], [ 0, %80 ]
  ret i32 %86

87:                                               ; preds = %79, %36
  %88 = phi { ptr, i32 } [ %22, %36 ], [ %65, %79 ]
  resume { ptr, i32 } %88
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1015XPathExpression13setOpCodeArgsENS0_8eOpCodesEiRKNS_11XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(120) %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !121 {
  %5 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %6 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %7 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %8 = add i32 %1, -80
  %9 = icmp ult i32 %8, -83
  br i1 %9, label %15, label %10, !prof !122

10:                                               ; preds = %4
  %11 = add nsw i32 %1, 3
  %12 = zext nneg i32 %11 to i64
  %13 = getelementptr inbounds [83 x i32], ptr @_ZN11xalanc_1_10L20theOpCodeLengthArrayE, i64 0, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !120
  br label %15

15:                                               ; preds = %4, %10
  %16 = phi i32 [ %14, %10 ], [ 0, %4 ]
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %25, label %18, !prof !122

18:                                               ; preds = %15
  %19 = sext i32 %2 to i64
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !106
  %22 = getelementptr inbounds i32, ptr %21, i64 %19
  %23 = load i32, ptr %22, align 4, !tbaa !120
  %24 = icmp eq i32 %23, %1
  br i1 %24, label %53, label %25, !prof !123

25:                                               ; preds = %18, %15
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #17
  %26 = load ptr, ptr %0, align 8, !tbaa !79
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(8) %26)
  %27 = call ptr @__cxa_allocate_exception(i64 112) #17
  %28 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1015XPathExpression22InvalidOpCodeException18FormatErrorMessageEiRNS_14XalanDOMStringE(i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(36) %5)
          to label %29 unwind label %33

29:                                               ; preds = %25
  %30 = load ptr, ptr %5, align 8, !tbaa !71
  invoke void @_ZN11xalanc_1_1019XalanXPathExceptionC2ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(112) %27, ptr noundef nonnull align 8 dereferenceable(36) %28, ptr noundef nonnull align 8 dereferenceable(8) %30)
          to label %31 unwind label %33

31:                                               ; preds = %29
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xalanc_1_1015XPathExpression22InvalidOpCodeExceptionE, i64 0, inrange i32 0, i64 2), ptr %27, align 8, !tbaa !68
  invoke void @__cxa_throw(ptr nonnull %27, ptr nonnull @_ZTIN11xalanc_1_1015XPathExpression22InvalidOpCodeExceptionE, ptr nonnull @_ZN11xalanc_1_1015XPathExpression24XPathExpressionExceptionD2Ev) #20
          to label %32 unwind label %35

32:                                               ; preds = %31
  unreachable

33:                                               ; preds = %29, %25
  %34 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %27) #17
  br label %37

35:                                               ; preds = %31
  %36 = landingpad { ptr, i32 }
          cleanup
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi { ptr, i32 } [ %36, %35 ], [ %34, %33 ]
  %39 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  %40 = load i64, ptr %39, align 8, !tbaa !76
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %52, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !77
  %45 = load ptr, ptr %5, align 8, !tbaa !71
  %46 = load ptr, ptr %45, align 8, !tbaa !68
  %47 = getelementptr inbounds ptr, ptr %46, i64 3
  %48 = load ptr, ptr %47, align 8
  invoke void %48(ptr noundef nonnull align 8 dereferenceable(8) %45, ptr noundef %44)
          to label %52 unwind label %49

49:                                               ; preds = %42
  %50 = landingpad { ptr, i32 }
          catch ptr null
  %51 = extractvalue { ptr, i32 } %50, 0
  call void @__clang_call_terminate(ptr %51) #19
  unreachable

52:                                               ; preds = %37, %42
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #17
  br label %138

53:                                               ; preds = %18
  %54 = add nsw i32 %16, -2
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 1
  %57 = load i64, ptr %56, align 8, !tbaa !107
  %58 = icmp eq i64 %57, %55
  br i1 %58, label %59, label %68, !prof !123

59:                                               ; preds = %53
  %60 = getelementptr i32, ptr %21, i64 2
  %61 = icmp sgt i32 %16, 2
  br i1 %61, label %62, label %96, !prof !124

62:                                               ; preds = %59
  %63 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 3
  %64 = load ptr, ptr %63, align 8, !tbaa !106
  %65 = sext i32 %2 to i64
  %66 = zext i32 %54 to i64
  %67 = getelementptr i32, ptr %60, i64 %65
  br label %97

68:                                               ; preds = %53
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #17
  %69 = load ptr, ptr %0, align 8, !tbaa !79
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef nonnull align 8 dereferenceable(8) %69)
  %70 = call ptr @__cxa_allocate_exception(i64 112) #17
  %71 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1015XPathExpression29InvalidArgumentCountException18FormatErrorMessageEiiiRNS_14XalanDOMStringE(i32 noundef %1, i32 noundef %16, i32 noundef %54, ptr noundef nonnull align 8 dereferenceable(36) %6)
          to label %72 unwind label %76

72:                                               ; preds = %68
  %73 = load ptr, ptr %6, align 8, !tbaa !71
  invoke void @_ZN11xalanc_1_1019XalanXPathExceptionC2ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(112) %70, ptr noundef nonnull align 8 dereferenceable(36) %71, ptr noundef nonnull align 8 dereferenceable(8) %73)
          to label %74 unwind label %76

74:                                               ; preds = %72
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xalanc_1_1015XPathExpression29InvalidArgumentCountExceptionE, i64 0, inrange i32 0, i64 2), ptr %70, align 8, !tbaa !68
  invoke void @__cxa_throw(ptr nonnull %70, ptr nonnull @_ZTIN11xalanc_1_1015XPathExpression29InvalidArgumentCountExceptionE, ptr nonnull @_ZN11xalanc_1_1015XPathExpression24XPathExpressionExceptionD2Ev) #20
          to label %75 unwind label %78

75:                                               ; preds = %74
  unreachable

76:                                               ; preds = %72, %68
  %77 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %70) #17
  br label %80

78:                                               ; preds = %74
  %79 = landingpad { ptr, i32 }
          cleanup
  br label %80

80:                                               ; preds = %78, %76
  %81 = phi { ptr, i32 } [ %79, %78 ], [ %77, %76 ]
  %82 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %6, i64 0, i32 2
  %83 = load i64, ptr %82, align 8, !tbaa !76
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %95, label %85

85:                                               ; preds = %80
  %86 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %6, i64 0, i32 3
  %87 = load ptr, ptr %86, align 8, !tbaa !77
  %88 = load ptr, ptr %6, align 8, !tbaa !71
  %89 = load ptr, ptr %88, align 8, !tbaa !68
  %90 = getelementptr inbounds ptr, ptr %89, i64 3
  %91 = load ptr, ptr %90, align 8
  invoke void %91(ptr noundef nonnull align 8 dereferenceable(8) %88, ptr noundef %87)
          to label %95 unwind label %92

92:                                               ; preds = %85
  %93 = landingpad { ptr, i32 }
          catch ptr null
  %94 = extractvalue { ptr, i32 } %93, 0
  call void @__clang_call_terminate(ptr %94) #19
  unreachable

95:                                               ; preds = %80, %85
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #17
  br label %138

96:                                               ; preds = %134, %59
  ret void

97:                                               ; preds = %62, %134
  %98 = phi i64 [ 0, %62 ], [ %136, %134 ]
  %99 = getelementptr inbounds i32, ptr %64, i64 %98
  %100 = load i32, ptr %99, align 4, !tbaa !120
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %134, !prof !125

102:                                              ; preds = %97
  %103 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 3
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #17
  %104 = load ptr, ptr %0, align 8, !tbaa !79
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef nonnull align 8 dereferenceable(8) %104)
  %105 = call ptr @__cxa_allocate_exception(i64 112) #17
  %106 = load ptr, ptr %103, align 8, !tbaa !106
  %107 = getelementptr inbounds i32, ptr %106, i64 %98
  %108 = load i32, ptr %107, align 4, !tbaa !120
  %109 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1015XPathExpression24InvalidArgumentException18FormatErrorMessageEiiRNS_14XalanDOMStringE(i32 noundef %1, i32 noundef %108, ptr noundef nonnull align 8 dereferenceable(36) %7)
          to label %110 unwind label %114

110:                                              ; preds = %102
  %111 = load ptr, ptr %7, align 8, !tbaa !71
  invoke void @_ZN11xalanc_1_1019XalanXPathExceptionC2ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(112) %105, ptr noundef nonnull align 8 dereferenceable(36) %109, ptr noundef nonnull align 8 dereferenceable(8) %111)
          to label %112 unwind label %114

112:                                              ; preds = %110
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xalanc_1_1015XPathExpression24InvalidArgumentExceptionE, i64 0, inrange i32 0, i64 2), ptr %105, align 8, !tbaa !68
  invoke void @__cxa_throw(ptr nonnull %105, ptr nonnull @_ZTIN11xalanc_1_1015XPathExpression24InvalidArgumentExceptionE, ptr nonnull @_ZN11xalanc_1_1015XPathExpression24XPathExpressionExceptionD2Ev) #20
          to label %113 unwind label %116

113:                                              ; preds = %112
  unreachable

114:                                              ; preds = %110, %102
  %115 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %105) #17
  br label %118

116:                                              ; preds = %112
  %117 = landingpad { ptr, i32 }
          cleanup
  br label %118

118:                                              ; preds = %116, %114
  %119 = phi { ptr, i32 } [ %117, %116 ], [ %115, %114 ]
  %120 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %7, i64 0, i32 2
  %121 = load i64, ptr %120, align 8, !tbaa !76
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %133, label %123

123:                                              ; preds = %118
  %124 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %7, i64 0, i32 3
  %125 = load ptr, ptr %124, align 8, !tbaa !77
  %126 = load ptr, ptr %7, align 8, !tbaa !71
  %127 = load ptr, ptr %126, align 8, !tbaa !68
  %128 = getelementptr inbounds ptr, ptr %127, i64 3
  %129 = load ptr, ptr %128, align 8
  invoke void %129(ptr noundef nonnull align 8 dereferenceable(8) %126, ptr noundef %125)
          to label %133 unwind label %130

130:                                              ; preds = %123
  %131 = landingpad { ptr, i32 }
          catch ptr null
  %132 = extractvalue { ptr, i32 } %131, 0
  call void @__clang_call_terminate(ptr %132) #19
  unreachable

133:                                              ; preds = %118, %123
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #17
  br label %138

134:                                              ; preds = %97
  %135 = getelementptr i32, ptr %67, i64 %98
  store i32 %100, ptr %135, align 4, !tbaa !120
  %136 = add nuw nsw i64 %98, 1
  %137 = icmp eq i64 %136, %66
  br i1 %137, label %96, label %97, !prof !126, !llvm.loop !127

138:                                              ; preds = %95, %133, %52
  %139 = phi { ptr, i32 } [ %38, %52 ], [ %81, %95 ], [ %119, %133 ]
  resume { ptr, i32 } %139
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN11xalanc_1_1015XPathExpression12appendOpCodeENS0_8eOpCodesE(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %1) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 !prof !128 {
  %3 = alloca i32, align 4
  %4 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #17
  %7 = add i32 %1, -80
  %8 = icmp ult i32 %7, -83
  br i1 %8, label %14, label %9, !prof !129

9:                                                ; preds = %2
  %10 = add nsw i32 %1, 3
  %11 = zext nneg i32 %10 to i64
  %12 = getelementptr inbounds [83 x i32], ptr @_ZN11xalanc_1_10L20theOpCodeLengthArrayE, i64 0, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !120
  br label %14

14:                                               ; preds = %2, %9
  %15 = phi i32 [ %13, %9 ], [ 0, %2 ]
  store i32 %15, ptr %3, align 4, !tbaa !120
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %44, !prof !129

17:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #17
  %18 = load ptr, ptr %0, align 8, !tbaa !79
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull align 8 dereferenceable(8) %18)
  %19 = call ptr @__cxa_allocate_exception(i64 112) #17
  %20 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1015XPathExpression22InvalidOpCodeException18FormatErrorMessageEiRNS_14XalanDOMStringE(i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(36) %4)
          to label %21 unwind label %24

21:                                               ; preds = %17
  %22 = load ptr, ptr %4, align 8, !tbaa !71
  invoke void @_ZN11xalanc_1_1019XalanXPathExceptionC2ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(112) %19, ptr noundef nonnull align 8 dereferenceable(36) %20, ptr noundef nonnull align 8 dereferenceable(8) %22)
          to label %23 unwind label %24

23:                                               ; preds = %21
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xalanc_1_1015XPathExpression22InvalidOpCodeExceptionE, i64 0, inrange i32 0, i64 2), ptr %19, align 8, !tbaa !68
  invoke void @__cxa_throw(ptr nonnull %19, ptr nonnull @_ZTIN11xalanc_1_1015XPathExpression22InvalidOpCodeExceptionE, ptr nonnull @_ZN11xalanc_1_1015XPathExpression24XPathExpressionExceptionD2Ev) #20
          to label %71 unwind label %26

24:                                               ; preds = %21, %17
  %25 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %19) #17
  br label %28

26:                                               ; preds = %23
  %27 = landingpad { ptr, i32 }
          cleanup
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi { ptr, i32 } [ %27, %26 ], [ %25, %24 ]
  %30 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 2
  %31 = load i64, ptr %30, align 8, !tbaa !76
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %43, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !77
  %36 = load ptr, ptr %4, align 8, !tbaa !71
  %37 = load ptr, ptr %36, align 8, !tbaa !68
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %36, ptr noundef %35)
          to label %43 unwind label %40

40:                                               ; preds = %33
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #19
  unreachable

43:                                               ; preds = %28, %33
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #17
  resume { ptr, i32 } %29

44:                                               ; preds = %14
  %45 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %46 = load i64, ptr %45, align 8, !tbaa !107
  %47 = trunc i64 %46 to i32
  %48 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %0, i64 0, i32 1
  store i32 %47, ptr %48, align 8, !tbaa !130
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #17
  store i32 %1, ptr %5, align 4, !tbaa !120
  call void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10doPushBackERKi(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(4) %5)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #17
  %49 = load i32, ptr %3, align 4, !tbaa !120
  %50 = icmp sgt i32 %49, 1
  br i1 %50, label %51, label %59, !prof !131

51:                                               ; preds = %44
  call void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10doPushBackERKi(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %52 = load i32, ptr %3, align 4, !tbaa !120
  %53 = icmp sgt i32 %52, 2
  br i1 %53, label %54, label %59, !prof !132

54:                                               ; preds = %51, %54
  %55 = phi i32 [ %56, %54 ], [ 2, %51 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #17
  store i32 -1, ptr %6, align 4, !tbaa !120
  call void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10doPushBackERKi(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(4) %6)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #17
  %56 = add nuw nsw i32 %55, 1
  %57 = load i32, ptr %3, align 4, !tbaa !120
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %54, label %59, !prof !133, !llvm.loop !134

59:                                               ; preds = %54, %51, %44
  %60 = load i32, ptr %48, align 8, !tbaa !130
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %69, label %62, !prof !135

62:                                               ; preds = %59
  %63 = load i32, ptr %3, align 4, !tbaa !120
  %64 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %65 = load ptr, ptr %64, align 8, !tbaa !106
  %66 = getelementptr inbounds i32, ptr %65, i64 1
  %67 = load i32, ptr %66, align 4, !tbaa !120
  %68 = add nsw i32 %67, %63
  store i32 %68, ptr %66, align 4, !tbaa !120
  br label %69

69:                                               ; preds = %59, %62
  %70 = load i32, ptr %48, align 8, !tbaa !130
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #17
  ret i32 %70

71:                                               ; preds = %23
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1015XPathExpression13replaceOpCodeEiNS0_8eOpCodesES1_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(120) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !136 {
  %5 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !107
  %8 = trunc i64 %7 to i32
  %9 = icmp sgt i32 %8, %1
  br i1 %9, label %10, label %37, !prof !137

10:                                               ; preds = %4
  %11 = sext i32 %1 to i64
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !106
  %14 = getelementptr inbounds i32, ptr %13, i64 %11
  %15 = load i32, ptr %14, align 4, !tbaa !120
  %16 = icmp eq i32 %15, %2
  br i1 %16, label %17, label %37, !prof !137

17:                                               ; preds = %10
  %18 = add i32 %2, -80
  %19 = icmp ult i32 %18, -83
  br i1 %19, label %25, label %20, !prof !138

20:                                               ; preds = %17
  %21 = add nsw i32 %2, 3
  %22 = zext nneg i32 %21 to i64
  %23 = getelementptr inbounds [83 x i32], ptr @_ZN11xalanc_1_10L20theOpCodeLengthArrayE, i64 0, i64 %22
  %24 = load i32, ptr %23, align 4, !tbaa !120
  br label %25

25:                                               ; preds = %17, %20
  %26 = phi i32 [ %24, %20 ], [ 0, %17 ]
  %27 = add i32 %3, -80
  %28 = icmp ult i32 %27, -83
  br i1 %28, label %34, label %29, !prof !138

29:                                               ; preds = %25
  %30 = add nsw i32 %3, 3
  %31 = zext nneg i32 %30 to i64
  %32 = getelementptr inbounds [83 x i32], ptr @_ZN11xalanc_1_10L20theOpCodeLengthArrayE, i64 0, i64 %31
  %33 = load i32, ptr %32, align 4, !tbaa !120
  br label %34

34:                                               ; preds = %25, %29
  %35 = phi i32 [ %33, %29 ], [ 0, %25 ]
  %36 = icmp eq i32 %26, %35
  br i1 %36, label %64, label %37, !prof !137

37:                                               ; preds = %34, %10, %4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #17
  %38 = load ptr, ptr %0, align 8, !tbaa !79
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(8) %38)
  %39 = call ptr @__cxa_allocate_exception(i64 112) #17
  %40 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1015XPathExpression22InvalidOpCodeException18FormatErrorMessageEiRNS_14XalanDOMStringE(i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(36) %5)
          to label %41 unwind label %44

41:                                               ; preds = %37
  %42 = load ptr, ptr %5, align 8, !tbaa !71
  invoke void @_ZN11xalanc_1_1019XalanXPathExceptionC2ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(112) %39, ptr noundef nonnull align 8 dereferenceable(36) %40, ptr noundef nonnull align 8 dereferenceable(8) %42)
          to label %43 unwind label %44

43:                                               ; preds = %41
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xalanc_1_1015XPathExpression22InvalidOpCodeExceptionE, i64 0, inrange i32 0, i64 2), ptr %39, align 8, !tbaa !68
  invoke void @__cxa_throw(ptr nonnull %39, ptr nonnull @_ZTIN11xalanc_1_1015XPathExpression22InvalidOpCodeExceptionE, ptr nonnull @_ZN11xalanc_1_1015XPathExpression24XPathExpressionExceptionD2Ev) #20
          to label %65 unwind label %46

44:                                               ; preds = %41, %37
  %45 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %39) #17
  br label %48

46:                                               ; preds = %43
  %47 = landingpad { ptr, i32 }
          cleanup
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi { ptr, i32 } [ %47, %46 ], [ %45, %44 ]
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  %51 = load i64, ptr %50, align 8, !tbaa !76
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %63, label %53

53:                                               ; preds = %48
  %54 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  %55 = load ptr, ptr %54, align 8, !tbaa !77
  %56 = load ptr, ptr %5, align 8, !tbaa !71
  %57 = load ptr, ptr %56, align 8, !tbaa !68
  %58 = getelementptr inbounds ptr, ptr %57, i64 3
  %59 = load ptr, ptr %58, align 8
  invoke void %59(ptr noundef nonnull align 8 dereferenceable(8) %56, ptr noundef %55)
          to label %63 unwind label %60

60:                                               ; preds = %53
  %61 = landingpad { ptr, i32 }
          catch ptr null
  %62 = extractvalue { ptr, i32 } %61, 0
  call void @__clang_call_terminate(ptr %62) #19
  unreachable

63:                                               ; preds = %48, %53
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #17
  resume { ptr, i32 } %49

64:                                               ; preds = %34
  store i32 %3, ptr %14, align 4, !tbaa !120
  ret void

65:                                               ; preds = %43
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZN11xalanc_1_1015XPathExpression12insertOpCodeENS0_8eOpCodesEi(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !139 {
  %4 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %5 = alloca i32, align 4
  %6 = add i32 %1, -80
  %7 = icmp ult i32 %6, -83
  br i1 %7, label %13, label %8, !prof !140

8:                                                ; preds = %3
  %9 = add nsw i32 %1, 3
  %10 = zext nneg i32 %9 to i64
  %11 = getelementptr inbounds [83 x i32], ptr @_ZN11xalanc_1_10L20theOpCodeLengthArrayE, i64 0, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !120
  br label %13

13:                                               ; preds = %3, %8
  %14 = phi i32 [ %12, %8 ], [ 0, %3 ]
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %43, !prof !140

16:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #17
  %17 = load ptr, ptr %0, align 8, !tbaa !79
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull align 8 dereferenceable(8) %17)
  %18 = call ptr @__cxa_allocate_exception(i64 112) #17
  %19 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1015XPathExpression22InvalidOpCodeException18FormatErrorMessageEiRNS_14XalanDOMStringE(i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(36) %4)
          to label %20 unwind label %23

20:                                               ; preds = %16
  %21 = load ptr, ptr %4, align 8, !tbaa !71
  invoke void @_ZN11xalanc_1_1019XalanXPathExceptionC2ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(112) %18, ptr noundef nonnull align 8 dereferenceable(36) %19, ptr noundef nonnull align 8 dereferenceable(8) %21)
          to label %22 unwind label %23

22:                                               ; preds = %20
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xalanc_1_1015XPathExpression22InvalidOpCodeExceptionE, i64 0, inrange i32 0, i64 2), ptr %18, align 8, !tbaa !68
  invoke void @__cxa_throw(ptr nonnull %18, ptr nonnull @_ZTIN11xalanc_1_1015XPathExpression22InvalidOpCodeExceptionE, ptr nonnull @_ZN11xalanc_1_1015XPathExpression24XPathExpressionExceptionD2Ev) #20
          to label %55 unwind label %25

23:                                               ; preds = %20, %16
  %24 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %18) #17
  br label %27

25:                                               ; preds = %22
  %26 = landingpad { ptr, i32 }
          cleanup
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi { ptr, i32 } [ %26, %25 ], [ %24, %23 ]
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 2
  %30 = load i64, ptr %29, align 8, !tbaa !76
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %42, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !77
  %35 = load ptr, ptr %4, align 8, !tbaa !71
  %36 = load ptr, ptr %35, align 8, !tbaa !68
  %37 = getelementptr inbounds ptr, ptr %36, i64 3
  %38 = load ptr, ptr %37, align 8
  invoke void %38(ptr noundef nonnull align 8 dereferenceable(8) %35, ptr noundef %34)
          to label %42 unwind label %39

39:                                               ; preds = %32
  %40 = landingpad { ptr, i32 }
          catch ptr null
  %41 = extractvalue { ptr, i32 } %40, 0
  call void @__clang_call_terminate(ptr %41) #19
  unreachable

42:                                               ; preds = %27, %32
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #17
  resume { ptr, i32 } %28

43:                                               ; preds = %13
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !106
  %46 = sext i32 %2 to i64
  %47 = getelementptr inbounds i32, ptr %45, i64 %46
  %48 = sext i32 %14 to i64
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #17
  store i32 -1, ptr %5, align 4, !tbaa !120
  call void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE6insertEPimRKi(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %47, i64 noundef %48, ptr noundef nonnull align 4 dereferenceable(4) %5)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #17
  %49 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %0, i64 0, i32 1
  store i32 %2, ptr %49, align 8, !tbaa !130
  %50 = load ptr, ptr %44, align 8, !tbaa !106
  %51 = getelementptr inbounds i32, ptr %50, i64 %46
  store i32 %1, ptr %51, align 4, !tbaa !120
  %52 = getelementptr inbounds i32, ptr %50, i64 1
  %53 = load i32, ptr %52, align 4, !tbaa !120
  %54 = add nsw i32 %53, %14
  store i32 %54, ptr %52, align 4, !tbaa !120
  ret i32 %14

55:                                               ; preds = %22
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE6insertEPimRKi(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !141 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !107
  %8 = add i64 %7, %2
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !106
  %11 = getelementptr inbounds i32, ptr %10, i64 %7
  %12 = icmp eq ptr %11, %1
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %14 = load i64, ptr %13, align 8, !tbaa !104
  br i1 %12, label %15, label %31, !prof !142

15:                                               ; preds = %4
  %16 = icmp ult i64 %14, %8
  br i1 %16, label %17, label %18, !prof !123

17:                                               ; preds = %15
  tail call void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %8) #21
  br label %18

18:                                               ; preds = %15, %17
  %19 = load i64, ptr %6, align 8, !tbaa !107
  %20 = icmp eq i64 %2, 0
  br i1 %20, label %141, label %21, !prof !143

21:                                               ; preds = %18
  %22 = load ptr, ptr %9, align 8, !tbaa !106
  %23 = getelementptr inbounds i32, ptr %22, i64 %19
  br label %24

24:                                               ; preds = %21, %24
  %25 = phi ptr [ %28, %24 ], [ %23, %21 ]
  %26 = phi i64 [ %29, %24 ], [ 0, %21 ]
  %27 = load i32, ptr %3, align 4, !tbaa !120
  store i32 %27, ptr %25, align 4, !tbaa !120
  %28 = getelementptr inbounds i32, ptr %25, i64 1
  %29 = add nuw i64 %26, 1
  %30 = icmp eq i64 %29, %2
  br i1 %30, label %139, label %24, !prof !126, !llvm.loop !144

31:                                               ; preds = %4
  %32 = icmp ugt i64 %8, %14
  br i1 %32, label %33, label %89, !prof !140

33:                                               ; preds = %31
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #17
  %34 = load ptr, ptr %0, align 8, !tbaa !79
  store ptr %34, ptr %5, align 8, !tbaa !79
  %35 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 1
  store i64 0, ptr %35, align 8, !tbaa !107
  %36 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 2
  store i64 %8, ptr %36, align 8, !tbaa !104
  %37 = shl i64 %8, 2
  %38 = load ptr, ptr %34, align 8, !tbaa !68
  %39 = getelementptr inbounds ptr, ptr %38, i64 2
  %40 = load ptr, ptr %39, align 8
  %41 = tail call noundef ptr %40(ptr noundef nonnull align 8 dereferenceable(8) %34, i64 noundef %37)
  %42 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 3
  store ptr %41, ptr %42, align 8, !tbaa !106
  %43 = load i64, ptr %35, align 8, !tbaa !107
  %44 = getelementptr inbounds i32, ptr %41, i64 %43
  %45 = load ptr, ptr %9, align 8, !tbaa !106
  invoke void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE6insertEPiPKiS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %44, ptr noundef %45, ptr noundef %1)
          to label %46 unwind label %75

46:                                               ; preds = %33
  %47 = load ptr, ptr %42, align 8, !tbaa !106
  %48 = load i64, ptr %35, align 8, !tbaa !107
  %49 = getelementptr inbounds i32, ptr %47, i64 %48
  invoke void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE6insertEPimRKi(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %49, i64 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %50 unwind label %75

50:                                               ; preds = %46
  %51 = load ptr, ptr %42, align 8, !tbaa !106
  %52 = load i64, ptr %35, align 8, !tbaa !107
  %53 = getelementptr inbounds i32, ptr %51, i64 %52
  %54 = load ptr, ptr %9, align 8, !tbaa !106
  %55 = load i64, ptr %6, align 8, !tbaa !107
  %56 = getelementptr inbounds i32, ptr %54, i64 %55
  invoke void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE6insertEPiPKiS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %53, ptr noundef %1, ptr noundef %56)
          to label %57 unwind label %75

57:                                               ; preds = %50
  %58 = load ptr, ptr %0, align 8, !tbaa !79
  %59 = load i64, ptr %6, align 8, !tbaa !107
  %60 = load i64, ptr %13, align 8, !tbaa !104
  %61 = load ptr, ptr %9, align 8, !tbaa !106
  %62 = load ptr, ptr %5, align 8, !tbaa !79
  store ptr %62, ptr %0, align 8, !tbaa !79
  %63 = load i64, ptr %35, align 8, !tbaa !107
  store i64 %63, ptr %6, align 8, !tbaa !107
  %64 = load i64, ptr %36, align 8, !tbaa !104
  store i64 %64, ptr %13, align 8, !tbaa !104
  %65 = load ptr, ptr %42, align 8, !tbaa !106
  store ptr %65, ptr %9, align 8, !tbaa !106
  store ptr %58, ptr %5, align 8, !tbaa !79
  store i64 %59, ptr %35, align 8, !tbaa !107
  store i64 %60, ptr %36, align 8, !tbaa !104
  store ptr %61, ptr %42, align 8, !tbaa !106
  %66 = icmp eq i64 %60, 0
  br i1 %66, label %74, label %67

67:                                               ; preds = %57
  %68 = load ptr, ptr %58, align 8, !tbaa !68
  %69 = getelementptr inbounds ptr, ptr %68, i64 3
  %70 = load ptr, ptr %69, align 8
  invoke void %70(ptr noundef nonnull align 8 dereferenceable(8) %58, ptr noundef %61)
          to label %74 unwind label %71

71:                                               ; preds = %67
  %72 = landingpad { ptr, i32 }
          catch ptr null
  %73 = extractvalue { ptr, i32 } %72, 0
  call void @__clang_call_terminate(ptr %73) #19
  unreachable

74:                                               ; preds = %57, %67
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  br label %141

75:                                               ; preds = %50, %46, %33
  %76 = landingpad { ptr, i32 }
          cleanup
  %77 = load i64, ptr %36, align 8, !tbaa !104
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %88, label %79

79:                                               ; preds = %75
  %80 = load ptr, ptr %42, align 8, !tbaa !106
  %81 = load ptr, ptr %5, align 8, !tbaa !79
  %82 = load ptr, ptr %81, align 8, !tbaa !68
  %83 = getelementptr inbounds ptr, ptr %82, i64 3
  %84 = load ptr, ptr %83, align 8
  invoke void %84(ptr noundef nonnull align 8 dereferenceable(8) %81, ptr noundef %80)
          to label %88 unwind label %85

85:                                               ; preds = %79
  %86 = landingpad { ptr, i32 }
          catch ptr null
  %87 = extractvalue { ptr, i32 } %86, 0
  call void @__clang_call_terminate(ptr %87) #19
  unreachable

88:                                               ; preds = %75, %79
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  resume { ptr, i32 } %76

89:                                               ; preds = %31
  %90 = ptrtoint ptr %11 to i64
  %91 = ptrtoint ptr %1 to i64
  %92 = sub i64 %90, %91
  %93 = ashr exact i64 %92, 2
  %94 = icmp ugt i64 %93, %2
  br i1 %94, label %115, label %95, !prof !145

95:                                               ; preds = %89
  %96 = sub i64 %2, %93
  %97 = icmp eq i64 %93, %2
  br i1 %97, label %98, label %100

98:                                               ; preds = %100, %95
  %99 = icmp eq ptr %11, %1
  br i1 %99, label %108, label %104

100:                                              ; preds = %95, %100
  %101 = phi i64 [ %102, %100 ], [ 0, %95 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10doPushBackERKi(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %102 = add nuw i64 %101, 1
  %103 = icmp eq i64 %102, %96
  br i1 %103, label %98, label %100, !llvm.loop !146

104:                                              ; preds = %98, %104
  %105 = phi ptr [ %106, %104 ], [ %1, %98 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10doPushBackERKi(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(4) %105)
  %106 = getelementptr inbounds i32, ptr %105, i64 1
  %107 = icmp eq ptr %106, %11
  br i1 %107, label %108, label %104, !llvm.loop !147

108:                                              ; preds = %104, %98
  %109 = load i32, ptr %3, align 4, !tbaa !120
  %110 = icmp eq ptr %11, %1
  br i1 %110, label %141, label %111

111:                                              ; preds = %108, %111
  %112 = phi ptr [ %113, %111 ], [ %1, %108 ]
  store i32 %109, ptr %112, align 4, !tbaa !120
  %113 = getelementptr inbounds i32, ptr %112, i64 1
  %114 = icmp eq ptr %113, %11
  br i1 %114, label %141, label %111, !llvm.loop !148

115:                                              ; preds = %89
  %116 = sub i64 0, %2
  %117 = getelementptr inbounds i32, ptr %11, i64 %116
  %118 = icmp eq i64 %2, 0
  br i1 %118, label %123, label %119, !prof !149

119:                                              ; preds = %115, %119
  %120 = phi ptr [ %121, %119 ], [ %117, %115 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10doPushBackERKi(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(4) %120)
  %121 = getelementptr inbounds i32, ptr %120, i64 1
  %122 = icmp eq ptr %121, %11
  br i1 %122, label %123, label %119, !prof !150, !llvm.loop !151

123:                                              ; preds = %119, %115
  %124 = icmp eq ptr %117, %1
  br i1 %124, label %131, label %125, !prof !140

125:                                              ; preds = %123
  %126 = ptrtoint ptr %117 to i64
  %127 = sub i64 %126, %91
  %128 = ashr exact i64 %127, 2
  %129 = sub nsw i64 0, %128
  %130 = getelementptr inbounds i32, ptr %11, i64 %129
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %130, ptr align 4 %1, i64 %127, i1 false), !prof !152
  br label %131

131:                                              ; preds = %123, %125
  %132 = getelementptr inbounds i32, ptr %1, i64 %2
  %133 = load i32, ptr %3, align 4, !tbaa !120
  %134 = icmp eq i64 %2, 0
  br i1 %134, label %141, label %135, !prof !149

135:                                              ; preds = %131, %135
  %136 = phi ptr [ %137, %135 ], [ %1, %131 ]
  store i32 %133, ptr %136, align 4, !tbaa !120
  %137 = getelementptr inbounds i32, ptr %136, i64 1
  %138 = icmp eq ptr %137, %132
  br i1 %138, label %141, label %135, !prof !150, !llvm.loop !148

139:                                              ; preds = %24
  %140 = add i64 %19, %2
  store i64 %140, ptr %6, align 8, !tbaa !107
  br label %141

141:                                              ; preds = %111, %135, %108, %131, %18, %139, %74
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1015XPathExpression25updateShiftedOpCodeLengthEiii(ptr nocapture noundef nonnull readonly align 8 dereferenceable(120) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !67 {
  %5 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %6 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %7 = add i32 %1, -80
  %8 = icmp ult i32 %7, -83
  %9 = icmp eq i32 %1, 0
  %10 = or i1 %8, %9
  br i1 %10, label %18, label %11

11:                                               ; preds = %4
  %12 = sext i32 %3 to i64
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !106
  %15 = getelementptr inbounds i32, ptr %14, i64 %12
  %16 = load i32, ptr %15, align 4, !tbaa !120
  %17 = icmp eq i32 %16, %1
  br i1 %17, label %46, label %18

18:                                               ; preds = %11, %4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #17
  %19 = load ptr, ptr %0, align 8, !tbaa !79
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(8) %19)
  %20 = call ptr @__cxa_allocate_exception(i64 112) #17
  %21 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1015XPathExpression22InvalidOpCodeException18FormatErrorMessageEiRNS_14XalanDOMStringE(i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(36) %5)
          to label %22 unwind label %26

22:                                               ; preds = %18
  %23 = load ptr, ptr %5, align 8, !tbaa !71
  invoke void @_ZN11xalanc_1_1019XalanXPathExceptionC2ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(112) %20, ptr noundef nonnull align 8 dereferenceable(36) %21, ptr noundef nonnull align 8 dereferenceable(8) %23)
          to label %24 unwind label %26

24:                                               ; preds = %22
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xalanc_1_1015XPathExpression22InvalidOpCodeExceptionE, i64 0, inrange i32 0, i64 2), ptr %20, align 8, !tbaa !68
  invoke void @__cxa_throw(ptr nonnull %20, ptr nonnull @_ZTIN11xalanc_1_1015XPathExpression22InvalidOpCodeExceptionE, ptr nonnull @_ZN11xalanc_1_1015XPathExpression24XPathExpressionExceptionD2Ev) #20
          to label %25 unwind label %28

25:                                               ; preds = %24
  unreachable

26:                                               ; preds = %22, %18
  %27 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %20) #17
  br label %30

28:                                               ; preds = %24
  %29 = landingpad { ptr, i32 }
          cleanup
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi { ptr, i32 } [ %29, %28 ], [ %27, %26 ]
  %32 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  %33 = load i64, ptr %32, align 8, !tbaa !76
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %45, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !77
  %38 = load ptr, ptr %5, align 8, !tbaa !71
  %39 = load ptr, ptr %38, align 8, !tbaa !68
  %40 = getelementptr inbounds ptr, ptr %39, i64 3
  %41 = load ptr, ptr %40, align 8
  invoke void %41(ptr noundef nonnull align 8 dereferenceable(8) %38, ptr noundef %37)
          to label %45 unwind label %42

42:                                               ; preds = %35
  %43 = landingpad { ptr, i32 }
          catch ptr null
  %44 = extractvalue { ptr, i32 } %43, 0
  call void @__clang_call_terminate(ptr %44) #19
  unreachable

45:                                               ; preds = %30, %35
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #17
  br label %94

46:                                               ; preds = %11
  %47 = add nsw i32 %3, 1
  %48 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %49 = load i64, ptr %48, align 8, !tbaa !107
  %50 = trunc i64 %49 to i32
  %51 = icmp slt i32 %47, %50
  br i1 %51, label %80, label %52

52:                                               ; preds = %46
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #17
  %53 = load ptr, ptr %0, align 8, !tbaa !79
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef nonnull align 8 dereferenceable(8) %53)
  %54 = call ptr @__cxa_allocate_exception(i64 112) #17
  %55 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1015XPathExpression22InvalidOpCodeException18FormatErrorMessageEiRNS_14XalanDOMStringE(i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(36) %6)
          to label %56 unwind label %60

56:                                               ; preds = %52
  %57 = load ptr, ptr %6, align 8, !tbaa !71
  invoke void @_ZN11xalanc_1_1019XalanXPathExceptionC2ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(112) %54, ptr noundef nonnull align 8 dereferenceable(36) %55, ptr noundef nonnull align 8 dereferenceable(8) %57)
          to label %58 unwind label %60

58:                                               ; preds = %56
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xalanc_1_1015XPathExpression22InvalidOpCodeExceptionE, i64 0, inrange i32 0, i64 2), ptr %54, align 8, !tbaa !68
  invoke void @__cxa_throw(ptr nonnull %54, ptr nonnull @_ZTIN11xalanc_1_1015XPathExpression22InvalidOpCodeExceptionE, ptr nonnull @_ZN11xalanc_1_1015XPathExpression24XPathExpressionExceptionD2Ev) #20
          to label %59 unwind label %62

59:                                               ; preds = %58
  unreachable

60:                                               ; preds = %56, %52
  %61 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %54) #17
  br label %64

62:                                               ; preds = %58
  %63 = landingpad { ptr, i32 }
          cleanup
  br label %64

64:                                               ; preds = %62, %60
  %65 = phi { ptr, i32 } [ %63, %62 ], [ %61, %60 ]
  %66 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %6, i64 0, i32 2
  %67 = load i64, ptr %66, align 8, !tbaa !76
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %79, label %69

69:                                               ; preds = %64
  %70 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %6, i64 0, i32 3
  %71 = load ptr, ptr %70, align 8, !tbaa !77
  %72 = load ptr, ptr %6, align 8, !tbaa !71
  %73 = load ptr, ptr %72, align 8, !tbaa !68
  %74 = getelementptr inbounds ptr, ptr %73, i64 3
  %75 = load ptr, ptr %74, align 8
  invoke void %75(ptr noundef nonnull align 8 dereferenceable(8) %72, ptr noundef %71)
          to label %79 unwind label %76

76:                                               ; preds = %69
  %77 = landingpad { ptr, i32 }
          catch ptr null
  %78 = extractvalue { ptr, i32 } %77, 0
  call void @__clang_call_terminate(ptr %78) #19
  unreachable

79:                                               ; preds = %64, %69
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #17
  br label %94

80:                                               ; preds = %46
  %81 = getelementptr i32, ptr %15, i64 1
  %82 = load i32, ptr %81, align 4, !tbaa !120
  %83 = add nsw i32 %82, %3
  %84 = icmp slt i32 %83, %50
  br i1 %84, label %85, label %93

85:                                               ; preds = %80
  %86 = load ptr, ptr %0, align 8, !tbaa !79
  %87 = tail call noundef i32 @_ZNK11xalanc_1_1015XPathExpression24getOpCodeLengthFromOpMapEiRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %83, ptr noundef nonnull align 8 dereferenceable(8) %86)
  %88 = sext i32 %47 to i64
  %89 = load ptr, ptr %13, align 8, !tbaa !106
  %90 = getelementptr inbounds i32, ptr %89, i64 %88
  %91 = load i32, ptr %90, align 4, !tbaa !120
  %92 = add nsw i32 %91, %87
  store i32 %92, ptr %90, align 4, !tbaa !120
  br label %93

93:                                               ; preds = %85, %80
  ret void

94:                                               ; preds = %79, %45
  %95 = phi { ptr, i32 } [ %31, %45 ], [ %65, %79 ]
  resume { ptr, i32 } %95
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1015XPathExpression18updateOpCodeLengthEii(ptr nocapture noundef nonnull readonly align 8 dereferenceable(120) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 !prof !153 {
  %4 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %5 = add i32 %1, -80
  %6 = icmp ult i32 %5, -83
  %7 = icmp eq i32 %1, 0
  %8 = or i1 %7, %6
  br i1 %8, label %16, label %9, !prof !154

9:                                                ; preds = %3
  %10 = sext i32 %2 to i64
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !106
  %13 = getelementptr inbounds i32, ptr %12, i64 %10
  %14 = load i32, ptr %13, align 4, !tbaa !120
  %15 = icmp eq i32 %14, %1
  br i1 %15, label %43, label %16, !prof !155

16:                                               ; preds = %9, %3
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #17
  %17 = load ptr, ptr %0, align 8, !tbaa !79
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull align 8 dereferenceable(8) %17)
  %18 = call ptr @__cxa_allocate_exception(i64 112) #17
  %19 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1015XPathExpression22InvalidOpCodeException18FormatErrorMessageEiRNS_14XalanDOMStringE(i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(36) %4)
          to label %20 unwind label %23

20:                                               ; preds = %16
  %21 = load ptr, ptr %4, align 8, !tbaa !71
  invoke void @_ZN11xalanc_1_1019XalanXPathExceptionC2ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(112) %18, ptr noundef nonnull align 8 dereferenceable(36) %19, ptr noundef nonnull align 8 dereferenceable(8) %21)
          to label %22 unwind label %23

22:                                               ; preds = %20
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xalanc_1_1015XPathExpression22InvalidOpCodeExceptionE, i64 0, inrange i32 0, i64 2), ptr %18, align 8, !tbaa !68
  invoke void @__cxa_throw(ptr nonnull %18, ptr nonnull @_ZTIN11xalanc_1_1015XPathExpression22InvalidOpCodeExceptionE, ptr nonnull @_ZN11xalanc_1_1015XPathExpression24XPathExpressionExceptionD2Ev) #20
          to label %55 unwind label %25

23:                                               ; preds = %20, %16
  %24 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %18) #17
  br label %27

25:                                               ; preds = %22
  %26 = landingpad { ptr, i32 }
          cleanup
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi { ptr, i32 } [ %26, %25 ], [ %24, %23 ]
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 2
  %30 = load i64, ptr %29, align 8, !tbaa !76
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %42, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !77
  %35 = load ptr, ptr %4, align 8, !tbaa !71
  %36 = load ptr, ptr %35, align 8, !tbaa !68
  %37 = getelementptr inbounds ptr, ptr %36, i64 3
  %38 = load ptr, ptr %37, align 8
  invoke void %38(ptr noundef nonnull align 8 dereferenceable(8) %35, ptr noundef %34)
          to label %42 unwind label %39

39:                                               ; preds = %32
  %40 = landingpad { ptr, i32 }
          catch ptr null
  %41 = extractvalue { ptr, i32 } %40, 0
  call void @__clang_call_terminate(ptr %41) #19
  unreachable

42:                                               ; preds = %27, %32
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #17
  resume { ptr, i32 } %28

43:                                               ; preds = %9
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %45 = load i64, ptr %44, align 8, !tbaa !107
  %46 = trunc i64 %45 to i32
  %47 = icmp sgt i32 %46, 1
  br i1 %47, label %48, label %51, !prof !155

48:                                               ; preds = %43
  %49 = getelementptr inbounds i32, ptr %12, i64 1
  %50 = load i32, ptr %49, align 4, !tbaa !120
  br label %51

51:                                               ; preds = %43, %48
  %52 = phi i32 [ %50, %48 ], [ %46, %43 ]
  %53 = sub nsw i32 %52, %2
  %54 = getelementptr i32, ptr %13, i64 1
  store i32 %53, ptr %54, align 4, !tbaa !120
  ret void

55:                                               ; preds = %22
  unreachable
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1015XPathExpression16isNodeTestOpCodeEi(i32 noundef %0) local_unnamed_addr #10 align 2 !prof !67 {
  %2 = icmp ult i32 %0, 53
  %3 = zext nneg i32 %0 to i64
  %4 = lshr i64 8022019656384516, %3
  %5 = and i64 %4, 1
  %6 = icmp ne i64 %5, 0
  %7 = select i1 %2, i1 %6, i1 false
  ret i1 %7
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1015XPathExpression31updateOpCodeLengthAfterNodeTestEi(ptr nocapture noundef nonnull readonly align 8 dereferenceable(120) %0, i32 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !156 {
  %3 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !106
  %7 = getelementptr inbounds i32, ptr %6, i64 %4
  %8 = load i32, ptr %7, align 4, !tbaa !120
  %9 = add i32 %8, -80
  %10 = icmp ult i32 %9, -83
  %11 = icmp eq i32 %8, 0
  %12 = or i1 %11, %10
  br i1 %12, label %20, label %13, !prof !157

13:                                               ; preds = %2
  %14 = icmp ult i32 %8, 53
  %15 = zext nneg i32 %8 to i64
  %16 = lshr i64 8022019656384516, %15
  %17 = and i64 %16, 1
  %18 = icmp ne i64 %17, 0
  %19 = select i1 %14, i1 %18, i1 false, !prof !158
  br i1 %19, label %47, label %20, !prof !158

20:                                               ; preds = %13, %2
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #17
  %21 = load ptr, ptr %0, align 8, !tbaa !79
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(8) %21)
  %22 = call ptr @__cxa_allocate_exception(i64 112) #17
  %23 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1015XPathExpression22InvalidOpCodeException18FormatErrorMessageEiRNS_14XalanDOMStringE(i32 noundef %8, ptr noundef nonnull align 8 dereferenceable(36) %3)
          to label %24 unwind label %27

24:                                               ; preds = %20
  %25 = load ptr, ptr %3, align 8, !tbaa !71
  invoke void @_ZN11xalanc_1_1019XalanXPathExceptionC2ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(112) %22, ptr noundef nonnull align 8 dereferenceable(36) %23, ptr noundef nonnull align 8 dereferenceable(8) %25)
          to label %26 unwind label %27

26:                                               ; preds = %24
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xalanc_1_1015XPathExpression22InvalidOpCodeExceptionE, i64 0, inrange i32 0, i64 2), ptr %22, align 8, !tbaa !68
  invoke void @__cxa_throw(ptr nonnull %22, ptr nonnull @_ZTIN11xalanc_1_1015XPathExpression22InvalidOpCodeExceptionE, ptr nonnull @_ZN11xalanc_1_1015XPathExpression24XPathExpressionExceptionD2Ev) #20
          to label %59 unwind label %29

27:                                               ; preds = %24, %20
  %28 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %22) #17
  br label %31

29:                                               ; preds = %26
  %30 = landingpad { ptr, i32 }
          cleanup
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi { ptr, i32 } [ %30, %29 ], [ %28, %27 ]
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %34 = load i64, ptr %33, align 8, !tbaa !76
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %46, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !77
  %39 = load ptr, ptr %3, align 8, !tbaa !71
  %40 = load ptr, ptr %39, align 8, !tbaa !68
  %41 = getelementptr inbounds ptr, ptr %40, i64 3
  %42 = load ptr, ptr %41, align 8
  invoke void %42(ptr noundef nonnull align 8 dereferenceable(8) %39, ptr noundef %38)
          to label %46 unwind label %43

43:                                               ; preds = %36
  %44 = landingpad { ptr, i32 }
          catch ptr null
  %45 = extractvalue { ptr, i32 } %44, 0
  call void @__clang_call_terminate(ptr %45) #19
  unreachable

46:                                               ; preds = %31, %36
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #17
  resume { ptr, i32 } %32

47:                                               ; preds = %13
  %48 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %49 = load i64, ptr %48, align 8, !tbaa !107
  %50 = trunc i64 %49 to i32
  %51 = icmp sgt i32 %50, 1
  br i1 %51, label %52, label %55, !prof !158

52:                                               ; preds = %47
  %53 = getelementptr inbounds i32, ptr %6, i64 1
  %54 = load i32, ptr %53, align 4, !tbaa !120
  br label %55

55:                                               ; preds = %47, %52
  %56 = phi i32 [ %54, %52 ], [ %50, %47 ]
  %57 = sub nsw i32 %56, %1
  %58 = getelementptr i32, ptr %7, i64 2
  store i32 %57, ptr %58, align 4, !tbaa !120
  ret void

59:                                               ; preds = %26
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_1015XPathExpression13dumpOpCodeMapERNS_11PrintWriterEi(ptr nocapture noundef nonnull readonly align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2) local_unnamed_addr #0 align 2 !prof !67 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !107
  %6 = trunc i64 %5 to i32
  %7 = icmp sgt i32 %6, %2
  br i1 %7, label %8, label %11

8:                                                ; preds = %3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %10 = sext i32 %2 to i64
  br label %12

11:                                               ; preds = %12, %3
  ret void

12:                                               ; preds = %8, %12
  %13 = phi i64 [ %10, %8 ], [ %26, %12 ]
  %14 = load ptr, ptr %1, align 8, !tbaa !68
  %15 = getelementptr inbounds ptr, ptr %14, i64 13
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull @.str, i64 noundef 4294967295)
  %17 = load ptr, ptr %9, align 8, !tbaa !106
  %18 = getelementptr inbounds i32, ptr %17, i64 %13
  %19 = load i32, ptr %18, align 4, !tbaa !120
  %20 = load ptr, ptr %1, align 8, !tbaa !68
  %21 = getelementptr inbounds ptr, ptr %20, i64 16
  %22 = load ptr, ptr %21, align 8
  tail call void %22(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %19)
  %23 = load ptr, ptr %1, align 8, !tbaa !68
  %24 = getelementptr inbounds ptr, ptr %23, i64 13
  %25 = load ptr, ptr %24, align 8
  tail call void %25(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull @.str.1, i64 noundef 4294967295)
  %26 = add nsw i64 %13, 1
  %27 = load i64, ptr %4, align 8, !tbaa !107
  %28 = shl i64 %27, 32
  %29 = ashr exact i64 %28, 32
  %30 = icmp slt i64 %26, %29
  br i1 %30, label %12, label %11, !llvm.loop !159
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_1015XPathExpression13dumpOpCodeMapERSoi(ptr nocapture noundef nonnull readonly align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) local_unnamed_addr #0 align 2 !prof !67 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !107
  %6 = trunc i64 %5 to i32
  %7 = icmp sgt i32 %6, %2
  br i1 %7, label %8, label %11

8:                                                ; preds = %3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %10 = sext i32 %2 to i64
  br label %12

11:                                               ; preds = %12, %3
  ret void

12:                                               ; preds = %8, %12
  %13 = phi i64 [ %10, %8 ], [ %20, %12 ]
  %14 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str, i64 noundef 2)
  %15 = load ptr, ptr %9, align 8, !tbaa !106
  %16 = getelementptr inbounds i32, ptr %15, i64 %13
  %17 = load i32, ptr %16, align 4, !tbaa !120
  %18 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %17)
  %19 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull @.str.1, i64 noundef 1)
  %20 = add nsw i64 %13, 1
  %21 = load i64, ptr %4, align 8, !tbaa !107
  %22 = shl i64 %21, 32
  %23 = ashr exact i64 %22, 32
  %24 = icmp slt i64 %20, %23
  br i1 %24, label %12, label %11, !llvm.loop !160
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_1015XPathExpression14dumpTokenQueueERSoi(ptr nocapture noundef nonnull readonly align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) local_unnamed_addr #0 align 2 !prof !67 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %0, i64 0, i32 2, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !98
  %6 = trunc i64 %5 to i32
  %7 = icmp sgt i32 %6, %2
  br i1 %7, label %8, label %11

8:                                                ; preds = %3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %0, i64 0, i32 2, i32 3
  %10 = sext i32 %2 to i64
  br label %12

11:                                               ; preds = %12, %3
  ret void

12:                                               ; preds = %8, %12
  %13 = phi i64 [ %10, %8 ], [ %29, %12 ]
  %14 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str, i64 noundef 2)
  %15 = load ptr, ptr %9, align 8, !tbaa !97
  %16 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %15, i64 %13
  %17 = load ptr, ptr %16, align 8, !tbaa !68
  %18 = getelementptr inbounds ptr, ptr %17, i64 8
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef nonnull align 8 dereferenceable(36) ptr %19(ptr noundef nonnull align 8 dereferenceable(41) %16)
  %21 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs22getDefaultXercesMemMgrEv()
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %20, i64 0, i32 1
  %23 = load i64, ptr %22, align 8, !tbaa !161
  %24 = icmp eq i64 %23, 0
  %25 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %20, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8
  %27 = select i1 %24, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %26
  tail call void @_ZN11xalanc_1_1012OutputStringERSoPKtRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %27, ptr noundef nonnull align 8 dereferenceable(8) %21)
  %28 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.1, i64 noundef 1)
  %29 = add nsw i64 %13, 1
  %30 = load i64, ptr %4, align 8, !tbaa !98
  %31 = shl i64 %30, 32
  %32 = ashr exact i64 %31, 32
  %33 = icmp slt i64 %29, %32
  br i1 %33, label %12, label %11, !llvm.loop !162
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_1015XPathExpression14dumpTokenQueueERNS_11PrintWriterEi(ptr nocapture noundef nonnull readonly align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2) local_unnamed_addr #0 align 2 !prof !67 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %0, i64 0, i32 2, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !98
  %6 = trunc i64 %5 to i32
  %7 = icmp sgt i32 %6, %2
  br i1 %7, label %8, label %11

8:                                                ; preds = %3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %0, i64 0, i32 2, i32 3
  %10 = sext i32 %2 to i64
  br label %12

11:                                               ; preds = %12, %3
  ret void

12:                                               ; preds = %8, %12
  %13 = phi i64 [ %10, %8 ], [ %31, %12 ]
  %14 = icmp sgt i64 %13, 0
  %15 = load ptr, ptr %1, align 8, !tbaa !68
  %16 = getelementptr inbounds ptr, ptr %15, i64 13
  %17 = load ptr, ptr %16, align 8
  %18 = select i1 %14, ptr @.str, ptr @.str.1
  tail call void %17(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %18, i64 noundef 4294967295)
  %19 = load ptr, ptr %9, align 8, !tbaa !97
  %20 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %19, i64 %13
  %21 = load ptr, ptr %20, align 8, !tbaa !68
  %22 = getelementptr inbounds ptr, ptr %21, i64 8
  %23 = load ptr, ptr %22, align 8
  %24 = tail call noundef nonnull align 8 dereferenceable(36) ptr %23(ptr noundef nonnull align 8 dereferenceable(41) %20)
  %25 = load ptr, ptr %1, align 8, !tbaa !68
  %26 = getelementptr inbounds ptr, ptr %25, i64 18
  %27 = load ptr, ptr %26, align 8
  tail call void %27(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %24)
  %28 = load ptr, ptr %1, align 8, !tbaa !68
  %29 = getelementptr inbounds ptr, ptr %28, i64 13
  %30 = load ptr, ptr %29, align 8
  tail call void %30(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull @.str.1, i64 noundef 4294967295)
  %31 = add nsw i64 %13, 1
  %32 = load i64, ptr %4, align 8, !tbaa !98
  %33 = shl i64 %32, 32
  %34 = ashr exact i64 %33, 32
  %35 = icmp slt i64 %31, %34
  br i1 %35, label %12, label %11, !llvm.loop !163
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_1015XPathExpression23dumpRemainingTokenQueueERNS_11PrintWriterE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !67 {
  %3 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #17
  %4 = getelementptr inbounds %"class.xalanc_1_10::PrintWriter", ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !164
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(8) %5)
  %6 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(36) %3, i32 noundef 18)
          to label %7 unwind label %37

7:                                                ; preds = %2
  %8 = load ptr, ptr %1, align 8, !tbaa !68
  %9 = getelementptr inbounds ptr, ptr %8, i64 18
  %10 = load ptr, ptr %9, align 8
  invoke void %10(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %6)
          to label %11 unwind label %37

11:                                               ; preds = %7
  %12 = load ptr, ptr %1, align 8, !tbaa !68
  %13 = getelementptr inbounds ptr, ptr %12, i64 13
  %14 = load ptr, ptr %13, align 8
  invoke void %14(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull @.str.2, i64 noundef 4294967295)
          to label %15 unwind label %37

15:                                               ; preds = %11
  %16 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %0, i64 0, i32 3
  %17 = load i32, ptr %16, align 8, !tbaa !168
  invoke void @_ZNK11xalanc_1_1015XPathExpression14dumpTokenQueueERNS_11PrintWriterEi(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %17)
          to label %18 unwind label %37

18:                                               ; preds = %15
  %19 = load ptr, ptr %1, align 8, !tbaa !68
  %20 = getelementptr inbounds ptr, ptr %19, i64 13
  %21 = load ptr, ptr %20, align 8
  invoke void %21(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull @.str.3, i64 noundef 4294967295)
          to label %22 unwind label %37

22:                                               ; preds = %18
  %23 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %24 = load i64, ptr %23, align 8, !tbaa !76
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %36, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !77
  %29 = load ptr, ptr %3, align 8, !tbaa !71
  %30 = load ptr, ptr %29, align 8, !tbaa !68
  %31 = getelementptr inbounds ptr, ptr %30, i64 3
  %32 = load ptr, ptr %31, align 8
  invoke void %32(ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef %28)
          to label %36 unwind label %33

33:                                               ; preds = %26
  %34 = landingpad { ptr, i32 }
          catch ptr null
  %35 = extractvalue { ptr, i32 } %34, 0
  call void @__clang_call_terminate(ptr %35) #19
  unreachable

36:                                               ; preds = %22, %26
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #17
  ret void

37:                                               ; preds = %18, %15, %11, %7, %2
  %38 = landingpad { ptr, i32 }
          cleanup
  %39 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %40 = load i64, ptr %39, align 8, !tbaa !76
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %52, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !77
  %45 = load ptr, ptr %3, align 8, !tbaa !71
  %46 = load ptr, ptr %45, align 8, !tbaa !68
  %47 = getelementptr inbounds ptr, ptr %46, i64 3
  %48 = load ptr, ptr %47, align 8
  invoke void %48(ptr noundef nonnull align 8 dereferenceable(8) %45, ptr noundef %44)
          to label %52 unwind label %49

49:                                               ; preds = %42
  %50 = landingpad { ptr, i32 }
          catch ptr null
  %51 = extractvalue { ptr, i32 } %50, 0
  call void @__clang_call_terminate(ptr %51) #19
  unreachable

52:                                               ; preds = %37, %42
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #17
  resume { ptr, i32 } %38
}

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_1015XPathExpression23dumpRemainingTokenQueueERSoRN11xercesc_2_713MemoryManagerE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !67 {
  %4 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #17
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %5 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(36) %4, i32 noundef 18)
          to label %6 unwind label %36

6:                                                ; preds = %3
  %7 = load ptr, ptr %5, align 8, !tbaa !71
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !161
  %10 = icmp eq i64 %9, 0
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8
  %13 = select i1 %10, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %12
  invoke void @_ZN11xalanc_1_1012OutputStringERSoPKtRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %13, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %14 unwind label %36

14:                                               ; preds = %6
  %15 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.2, i64 noundef 1)
          to label %16 unwind label %36

16:                                               ; preds = %14
  %17 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %0, i64 0, i32 3
  %18 = load i32, ptr %17, align 8, !tbaa !168
  invoke void @_ZNK11xalanc_1_1015XPathExpression14dumpTokenQueueERSoi(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %18)
          to label %19 unwind label %36

19:                                               ; preds = %16
  %20 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.3, i64 noundef 1)
          to label %21 unwind label %36

21:                                               ; preds = %19
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 2
  %23 = load i64, ptr %22, align 8, !tbaa !76
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %35, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !77
  %28 = load ptr, ptr %4, align 8, !tbaa !71
  %29 = load ptr, ptr %28, align 8, !tbaa !68
  %30 = getelementptr inbounds ptr, ptr %29, i64 3
  %31 = load ptr, ptr %30, align 8
  invoke void %31(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %27)
          to label %35 unwind label %32

32:                                               ; preds = %25
  %33 = landingpad { ptr, i32 }
          catch ptr null
  %34 = extractvalue { ptr, i32 } %33, 0
  call void @__clang_call_terminate(ptr %34) #19
  unreachable

35:                                               ; preds = %21, %25
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #17
  ret void

36:                                               ; preds = %19, %14, %6, %16, %3
  %37 = landingpad { ptr, i32 }
          cleanup
  %38 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 2
  %39 = load i64, ptr %38, align 8, !tbaa !76
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %51, label %41

41:                                               ; preds = %36
  %42 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !77
  %44 = load ptr, ptr %4, align 8, !tbaa !71
  %45 = load ptr, ptr %44, align 8, !tbaa !68
  %46 = getelementptr inbounds ptr, ptr %45, i64 3
  %47 = load ptr, ptr %46, align 8
  invoke void %47(ptr noundef nonnull align 8 dereferenceable(8) %44, ptr noundef %43)
          to label %51 unwind label %48

48:                                               ; preds = %41
  %49 = landingpad { ptr, i32 }
          catch ptr null
  %50 = extractvalue { ptr, i32 } %49, 0
  call void @__clang_call_terminate(ptr %50) #19
  unreachable

51:                                               ; preds = %36, %41
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #17
  resume { ptr, i32 } %37
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1015XPathExpression23pushArgumentOnOpCodeMapERKNS_6XTokenE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(41) %1) local_unnamed_addr #0 align 2 !prof !67 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #17
  %4 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !168
  %6 = add nsw i32 %5, -1
  store i32 %6, ptr %3, align 4, !tbaa !120
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %0, i64 0, i32 2, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !97
  %10 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %1, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !169
  %12 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %9, i64 %7, i32 1
  store ptr %11, ptr %12, align 8, !tbaa !169
  %13 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %1, i64 0, i32 2
  %14 = load double, ptr %13, align 8, !tbaa !175
  %15 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %9, i64 %7, i32 2
  store double %14, ptr %15, align 8, !tbaa !175
  call void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10doPushBackERKi(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !106
  %18 = getelementptr inbounds i32, ptr %17, i64 1
  %19 = load i32, ptr %18, align 4, !tbaa !120
  %20 = add nsw i32 %19, 1
  store i32 %20, ptr %18, align 4, !tbaa !120
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #17
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1015XPathExpression23pushArgumentOnOpCodeMapERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #0 align 2 !prof !176 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #17
  %4 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !168
  %6 = add nsw i32 %5, -1
  store i32 %6, ptr %3, align 4, !tbaa !120
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %0, i64 0, i32 2, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !97
  %10 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %9, i64 %7
  %11 = load ptr, ptr %0, align 8, !tbaa !79
  tail call void @_ZN11xalanc_1_106XToken3setERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(41) %10, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %11)
  call void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10doPushBackERKi(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !106
  %14 = getelementptr inbounds i32, ptr %13, i64 1
  %15 = load i32, ptr %14, align 4, !tbaa !120
  %16 = add nsw i32 %15, 1
  store i32 %16, ptr %14, align 4, !tbaa !120
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #17
  ret void
}

declare void @_ZN11xalanc_1_106XToken3setERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(41), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1015XPathExpression23pushArgumentOnOpCodeMapEdRKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(120) %0, double noundef %1, ptr noundef nonnull align 8 dereferenceable(36) %2) local_unnamed_addr #0 align 2 !prof !177 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #17
  %5 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !168
  %7 = add nsw i32 %6, -1
  store i32 %7, ptr %4, align 4, !tbaa !120
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %0, i64 0, i32 2, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !97
  %11 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %10, i64 %8
  %12 = load ptr, ptr %0, align 8, !tbaa !79
  tail call void @_ZN11xalanc_1_106XToken3setEdRKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(41) %11, double noundef %1, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(8) %12)
  call void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10doPushBackERKi(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(4) %4)
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !106
  %15 = getelementptr inbounds i32, ptr %14, i64 1
  %16 = load i32, ptr %15, align 4, !tbaa !120
  %17 = add nsw i32 %16, 1
  store i32 %17, ptr %15, align 4, !tbaa !120
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #17
  ret void
}

declare void @_ZN11xalanc_1_106XToken3setEdRKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(41), double noundef, ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1015XPathExpression28pushNumberLiteralOnOpCodeMapEd(ptr noundef nonnull align 8 dereferenceable(120) %0, double noundef %1) local_unnamed_addr #0 align 2 !prof !177 {
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  store double %1, ptr %3, align 8, !tbaa !178
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #17
  %5 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %0, i64 0, i32 5
  %6 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %0, i64 0, i32 5, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !179
  %8 = trunc i64 %7 to i32
  store i32 %8, ptr %4, align 4, !tbaa !120
  call void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10doPushBackERKi(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(4) %4)
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !106
  %11 = getelementptr inbounds i32, ptr %10, i64 1
  %12 = load i32, ptr %11, align 4, !tbaa !120
  %13 = add nsw i32 %12, 1
  store i32 %13, ptr %11, align 4, !tbaa !120
  call void @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE10doPushBackERKd(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #17
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1015XPathExpression27pushCurrentTokenOnOpCodeMapEv(ptr noundef nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #0 align 2 !prof !180 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #17
  %3 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !168
  %5 = add nsw i32 %4, -1
  store i32 %5, ptr %2, align 4, !tbaa !120
  call void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10doPushBackERKi(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(4) %2)
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !106
  %8 = getelementptr inbounds i32, ptr %7, i64 1
  %9 = load i32, ptr %8, align 4, !tbaa !120
  %10 = add nsw i32 %9, 1
  store i32 %10, ptr %8, align 4, !tbaa !120
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #17
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1019XalanXPathException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #3 comdat align 2 !prof !67 {
  ret ptr @_ZN11xalanc_1_1019XalanXPathException6m_typeE
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 !prof !181 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !76
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !182

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !77
  %8 = load ptr, ptr %0, align 8, !tbaa !71
  %9 = load ptr, ptr %8, align 8, !tbaa !68
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %7)
          to label %12 unwind label %13, !prof !183

12:                                               ; preds = %5, %1
  ret void

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #19
  unreachable
}

declare void @_ZN11xalanc_1_1012OutputStringERSoPKtRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs22getDefaultXercesMemMgrEv() local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10doPushBackERKi(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !prof !184 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !107
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !104
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15, !prof !185

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !106
  %12 = getelementptr inbounds i32, ptr %11, i64 %5
  %13 = load i32, ptr %1, align 4, !tbaa !120
  store i32 %13, ptr %12, align 4, !tbaa !120
  %14 = add i64 %5, 1
  store i64 %14, ptr %4, align 8, !tbaa !107
  br label %60

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #17
  %21 = load ptr, ptr %0, align 8, !tbaa !79
  call void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20)
  invoke void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10doPushBackERKi(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 4 dereferenceable(4) %1)
          to label %22 unwind label %44

22:                                               ; preds = %15
  %23 = load ptr, ptr %0, align 8, !tbaa !79
  %24 = load i64, ptr %4, align 8, !tbaa !107
  %25 = load i64, ptr %6, align 8, !tbaa !104
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !106
  %28 = load ptr, ptr %3, align 8, !tbaa !79
  store ptr %28, ptr %0, align 8, !tbaa !79
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !107
  store i64 %30, ptr %4, align 8, !tbaa !107
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !104
  store i64 %32, ptr %6, align 8, !tbaa !104
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !106
  store ptr %34, ptr %26, align 8, !tbaa !106
  store ptr %23, ptr %3, align 8, !tbaa !79
  store i64 %24, ptr %29, align 8, !tbaa !107
  store i64 %25, ptr %31, align 8, !tbaa !104
  store ptr %27, ptr %33, align 8, !tbaa !106
  %35 = icmp eq i64 %25, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %22
  %37 = load ptr, ptr %23, align 8, !tbaa !68
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %27)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #19
  unreachable

43:                                               ; preds = %22, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  br label %60

44:                                               ; preds = %15
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !104
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !106
  %52 = load ptr, ptr %3, align 8, !tbaa !79
  %53 = load ptr, ptr %52, align 8, !tbaa !68
  %54 = getelementptr inbounds ptr, ptr %53, i64 3
  %55 = load ptr, ptr %54, align 8
  invoke void %55(ptr noundef nonnull align 8 dereferenceable(8) %52, ptr noundef %51)
          to label %59 unwind label %56

56:                                               ; preds = %49
  %57 = landingpad { ptr, i32 }
          catch ptr null
  %58 = extractvalue { ptr, i32 } %57, 0
  call void @__clang_call_terminate(ptr %58) #19
  unreachable

59:                                               ; preds = %44, %49
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  resume { ptr, i32 } %45

60:                                               ; preds = %43, %9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #12

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !186 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #17
  %4 = load ptr, ptr %0, align 8, !tbaa !79
  call void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1)
  %5 = load ptr, ptr %0, align 8, !tbaa !79
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !107
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !104
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !106
  %12 = load ptr, ptr %3, align 8, !tbaa !79
  store ptr %12, ptr %0, align 8, !tbaa !79
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !107
  store i64 %14, ptr %6, align 8, !tbaa !107
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !104
  store i64 %16, ptr %8, align 8, !tbaa !104
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !106
  store ptr %18, ptr %10, align 8, !tbaa !106
  store ptr %5, ptr %3, align 8, !tbaa !79
  store i64 %7, ptr %13, align 8, !tbaa !107
  store i64 %9, ptr %15, align 8, !tbaa !104
  store ptr %11, ptr %17, align 8, !tbaa !106
  %19 = icmp eq i64 %9, 0
  br i1 %19, label %27, label %20, !prof !187

20:                                               ; preds = %2
  %21 = load ptr, ptr %5, align 8, !tbaa !68
  %22 = getelementptr inbounds ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8
  invoke void %23(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %11)
          to label %27 unwind label %24

24:                                               ; preds = %20
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  call void @__clang_call_terminate(ptr %26) #19
  unreachable

27:                                               ; preds = %2, %20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !78 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.1", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #17
  %4 = load ptr, ptr %0, align 8, !tbaa !81
  call void @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERKS4_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1)
  %5 = load ptr, ptr %0, align 8, !tbaa !81
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !98
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !89
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !97
  %12 = load ptr, ptr %3, align 8, !tbaa !81
  store ptr %12, ptr %0, align 8, !tbaa !81
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !98
  store i64 %14, ptr %6, align 8, !tbaa !98
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !89
  store i64 %16, ptr %8, align 8, !tbaa !89
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !97
  store ptr %18, ptr %10, align 8, !tbaa !97
  store ptr %5, ptr %3, align 8, !tbaa !81
  store i64 %7, ptr %13, align 8, !tbaa !98
  store i64 %9, ptr %15, align 8, !tbaa !89
  store ptr %11, ptr %17, align 8, !tbaa !97
  call void @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERKS4_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !78 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.1", align 8
  store ptr %2, ptr %0, align 8, !tbaa !81
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !98
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %37, label %12, !prof !88

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #17
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !81
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !98
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !89
  %16 = mul i64 %13, 48
  %17 = load ptr, ptr %2, align 8, !tbaa !68
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16)
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !97
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !97
  %24 = load i64, ptr %9, align 8, !tbaa !98
  %25 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE6insertEPS1_PKS1_S7_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %35

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !81
  %28 = load i64, ptr %6, align 8, !tbaa !98
  %29 = load i64, ptr %7, align 8, !tbaa !89
  %30 = load ptr, ptr %8, align 8, !tbaa !97
  %31 = load ptr, ptr %5, align 8, !tbaa !81
  store ptr %31, ptr %0, align 8, !tbaa !81
  %32 = load i64, ptr %14, align 8, !tbaa !98
  store i64 %32, ptr %6, align 8, !tbaa !98
  %33 = load i64, ptr %15, align 8, !tbaa !89
  store i64 %33, ptr %7, align 8, !tbaa !89
  %34 = load ptr, ptr %21, align 8, !tbaa !97
  store ptr %34, ptr %8, align 8, !tbaa !97
  store ptr %27, ptr %5, align 8, !tbaa !81
  store i64 %28, ptr %14, align 8, !tbaa !98
  store i64 %29, ptr %15, align 8, !tbaa !89
  store ptr %30, ptr %21, align 8, !tbaa !97
  call void @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  br label %45

35:                                               ; preds = %12
  %36 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  resume { ptr, i32 } %36

37:                                               ; preds = %4
  %38 = icmp eq i64 %3, 0
  br i1 %38, label %45, label %39, !prof !188

39:                                               ; preds = %37
  %40 = mul i64 %3, 48
  %41 = load ptr, ptr %2, align 8, !tbaa !68
  %42 = getelementptr inbounds ptr, ptr %41, i64 2
  %43 = load ptr, ptr %42, align 8
  %44 = tail call noundef ptr %43(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %40), !prof !189
  store ptr %44, ptr %8, align 8, !tbaa !97
  store i64 %3, ptr %7, align 8, !tbaa !89
  br label %45

45:                                               ; preds = %37, %39, %26
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE6insertEPS1_PKS1_S7_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !67 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.1", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = sdiv exact i64 %8, 48
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %155, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !98
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !97
  %17 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !89
  br i1 %18, label %21, label %38

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %155, label %26

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !97
  %28 = load i64, ptr %12, align 8, !tbaa !98
  %29 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %36, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %33, %30 ], [ %29, %26 ]
  tail call void @_ZN11xalanc_1_106XTokenC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(41) %32, ptr noundef nonnull align 8 dereferenceable(41) %31)
  %33 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %32, i64 1
  %34 = load i64, ptr %12, align 8, !tbaa !98
  %35 = add i64 %34, 1
  store i64 %35, ptr %12, align 8, !tbaa !98
  %36 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %31, i64 1
  %37 = icmp eq ptr %36, %3
  br i1 %37, label %155, label %30, !llvm.loop !190

38:                                               ; preds = %11
  %39 = icmp ugt i64 %14, %20
  br i1 %39, label %40, label %75

40:                                               ; preds = %38
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #17
  %41 = load ptr, ptr %0, align 8, !tbaa !81
  store ptr %41, ptr %5, align 8, !tbaa !81
  %42 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %5, i64 0, i32 1
  store i64 0, ptr %42, align 8, !tbaa !98
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %5, i64 0, i32 2
  store i64 %14, ptr %43, align 8, !tbaa !89
  %44 = mul i64 %14, 48
  %45 = load ptr, ptr %41, align 8, !tbaa !68
  %46 = getelementptr inbounds ptr, ptr %45, i64 2
  %47 = load ptr, ptr %46, align 8
  %48 = tail call noundef ptr %47(ptr noundef nonnull align 8 dereferenceable(8) %41, i64 noundef %44)
  %49 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %5, i64 0, i32 3
  store ptr %48, ptr %49, align 8, !tbaa !97
  %50 = load i64, ptr %42, align 8, !tbaa !98
  %51 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %48, i64 %50
  %52 = load ptr, ptr %15, align 8, !tbaa !97
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE6insertEPS1_PKS1_S7_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %51, ptr noundef %52, ptr noundef %1)
          to label %53 unwind label %73

53:                                               ; preds = %40
  %54 = load ptr, ptr %49, align 8, !tbaa !97
  %55 = load i64, ptr %42, align 8, !tbaa !98
  %56 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %54, i64 %55
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE6insertEPS1_PKS1_S7_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %56, ptr noundef %2, ptr noundef %3)
          to label %57 unwind label %73

57:                                               ; preds = %53
  %58 = load ptr, ptr %49, align 8, !tbaa !97
  %59 = load i64, ptr %42, align 8, !tbaa !98
  %60 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %58, i64 %59
  %61 = load ptr, ptr %15, align 8, !tbaa !97
  %62 = load i64, ptr %12, align 8, !tbaa !98
  %63 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %61, i64 %62
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE6insertEPS1_PKS1_S7_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %60, ptr noundef %1, ptr noundef %63)
          to label %64 unwind label %73

64:                                               ; preds = %57
  %65 = load ptr, ptr %0, align 8, !tbaa !81
  %66 = load i64, ptr %12, align 8, !tbaa !98
  %67 = load i64, ptr %19, align 8, !tbaa !89
  %68 = load ptr, ptr %15, align 8, !tbaa !97
  %69 = load ptr, ptr %5, align 8, !tbaa !81
  store ptr %69, ptr %0, align 8, !tbaa !81
  %70 = load i64, ptr %42, align 8, !tbaa !98
  store i64 %70, ptr %12, align 8, !tbaa !98
  %71 = load i64, ptr %43, align 8, !tbaa !89
  store i64 %71, ptr %19, align 8, !tbaa !89
  %72 = load ptr, ptr %49, align 8, !tbaa !97
  store ptr %72, ptr %15, align 8, !tbaa !97
  store ptr %65, ptr %5, align 8, !tbaa !81
  store i64 %66, ptr %42, align 8, !tbaa !98
  store i64 %67, ptr %43, align 8, !tbaa !89
  store ptr %68, ptr %49, align 8, !tbaa !97
  call void @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  br label %155

73:                                               ; preds = %57, %53, %40
  %74 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  resume { ptr, i32 } %74

75:                                               ; preds = %38
  %76 = ptrtoint ptr %17 to i64
  %77 = ptrtoint ptr %1 to i64
  %78 = sub i64 %76, %77
  %79 = icmp ugt i64 %78, %8
  br i1 %79, label %111, label %80

80:                                               ; preds = %75
  %81 = getelementptr inbounds i8, ptr %2, i64 %78
  %82 = icmp eq ptr %81, %3
  br i1 %82, label %83, label %85

83:                                               ; preds = %85, %80
  %84 = icmp eq ptr %17, %1
  br i1 %84, label %93, label %89

85:                                               ; preds = %80, %85
  %86 = phi ptr [ %87, %85 ], [ %81, %80 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(41) %86)
  %87 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %86, i64 1
  %88 = icmp eq ptr %87, %3
  br i1 %88, label %83, label %85, !llvm.loop !191

89:                                               ; preds = %83, %89
  %90 = phi ptr [ %91, %89 ], [ %1, %83 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(41) %90)
  %91 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %90, i64 1
  %92 = icmp eq ptr %91, %17
  br i1 %92, label %93, label %89, !llvm.loop !192

93:                                               ; preds = %89, %83
  %94 = icmp sgt i64 %78, 0
  br i1 %94, label %95, label %155

95:                                               ; preds = %93
  %96 = udiv exact i64 %78, 48
  br label %97

97:                                               ; preds = %95, %97
  %98 = phi i64 [ %109, %97 ], [ %96, %95 ]
  %99 = phi ptr [ %108, %97 ], [ %1, %95 ]
  %100 = phi ptr [ %107, %97 ], [ %2, %95 ]
  %101 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %100, i64 0, i32 1
  %102 = load ptr, ptr %101, align 8, !tbaa !169
  %103 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %99, i64 0, i32 1
  store ptr %102, ptr %103, align 8, !tbaa !169
  %104 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %100, i64 0, i32 2
  %105 = load double, ptr %104, align 8, !tbaa !175
  %106 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %99, i64 0, i32 2
  store double %105, ptr %106, align 8, !tbaa !175
  %107 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %100, i64 1
  %108 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %99, i64 1
  %109 = add nsw i64 %98, -1
  %110 = icmp sgt i64 %98, 1
  br i1 %110, label %97, label %155, !llvm.loop !193

111:                                              ; preds = %75
  %112 = sub nsw i64 0, %9
  %113 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %17, i64 %112
  %114 = icmp eq ptr %3, %2
  br i1 %114, label %119, label %115

115:                                              ; preds = %111, %115
  %116 = phi ptr [ %117, %115 ], [ %113, %111 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(41) %116)
  %117 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %116, i64 1
  %118 = icmp eq ptr %117, %17
  br i1 %118, label %119, label %115, !llvm.loop !194

119:                                              ; preds = %115, %111
  %120 = ptrtoint ptr %113 to i64
  %121 = sub i64 %120, %77
  %122 = icmp sgt i64 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %119
  %124 = udiv exact i64 %121, 48
  br label %127

125:                                              ; preds = %127, %119
  %126 = icmp sgt i64 %8, 0
  br i1 %126, label %141, label %155

127:                                              ; preds = %123, %127
  %128 = phi i64 [ %139, %127 ], [ %124, %123 ]
  %129 = phi ptr [ %132, %127 ], [ %17, %123 ]
  %130 = phi ptr [ %131, %127 ], [ %113, %123 ]
  %131 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %130, i64 -1
  %132 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %129, i64 -1
  %133 = getelementptr %"class.xalanc_1_10::XToken", ptr %130, i64 -1, i32 1
  %134 = load ptr, ptr %133, align 8, !tbaa !169
  %135 = getelementptr %"class.xalanc_1_10::XToken", ptr %129, i64 -1, i32 1
  store ptr %134, ptr %135, align 8, !tbaa !169
  %136 = getelementptr %"class.xalanc_1_10::XToken", ptr %130, i64 -1, i32 2
  %137 = load double, ptr %136, align 8, !tbaa !175
  %138 = getelementptr %"class.xalanc_1_10::XToken", ptr %129, i64 -1, i32 2
  store double %137, ptr %138, align 8, !tbaa !175
  %139 = add nsw i64 %128, -1
  %140 = icmp sgt i64 %128, 1
  br i1 %140, label %127, label %125, !llvm.loop !195

141:                                              ; preds = %125, %141
  %142 = phi i64 [ %153, %141 ], [ %9, %125 ]
  %143 = phi ptr [ %152, %141 ], [ %1, %125 ]
  %144 = phi ptr [ %151, %141 ], [ %2, %125 ]
  %145 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %144, i64 0, i32 1
  %146 = load ptr, ptr %145, align 8, !tbaa !169
  %147 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %143, i64 0, i32 1
  store ptr %146, ptr %147, align 8, !tbaa !169
  %148 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %144, i64 0, i32 2
  %149 = load double, ptr %148, align 8, !tbaa !175
  %150 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %143, i64 0, i32 2
  store double %149, ptr %150, align 8, !tbaa !175
  %151 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %144, i64 1
  %152 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %143, i64 1
  %153 = add nsw i64 %142, -1
  %154 = icmp sgt i64 %142, 1
  br i1 %154, label %141, label %155, !llvm.loop !193

155:                                              ; preds = %97, %141, %30, %93, %125, %24, %64, %4
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(41) %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !prof !196 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.1", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !98
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !89
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15, !prof !197

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !97
  %12 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %11, i64 %5
  tail call void @_ZN11xalanc_1_106XTokenC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(41) %12, ptr noundef nonnull align 8 dereferenceable(41) %1)
  %13 = load i64, ptr %4, align 8, !tbaa !98
  %14 = add i64 %13, 1
  store i64 %14, ptr %4, align 8, !tbaa !98
  br label %37

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #17
  %21 = load ptr, ptr %0, align 8, !tbaa !81
  call void @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERKS4_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20)
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(41) %1)
          to label %22 unwind label %35

22:                                               ; preds = %15
  %23 = load ptr, ptr %0, align 8, !tbaa !81
  %24 = load i64, ptr %4, align 8, !tbaa !98
  %25 = load i64, ptr %6, align 8, !tbaa !89
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !97
  %28 = load ptr, ptr %3, align 8, !tbaa !81
  store ptr %28, ptr %0, align 8, !tbaa !81
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !98
  store i64 %30, ptr %4, align 8, !tbaa !98
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !89
  store i64 %32, ptr %6, align 8, !tbaa !89
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !97
  store ptr %34, ptr %26, align 8, !tbaa !97
  store ptr %23, ptr %3, align 8, !tbaa !81
  store i64 %24, ptr %29, align 8, !tbaa !98
  store i64 %25, ptr %31, align 8, !tbaa !89
  store ptr %27, ptr %33, align 8, !tbaa !97
  call void @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  br label %37

35:                                               ; preds = %15
  %36 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  resume { ptr, i32 } %36

37:                                               ; preds = %22, %9
  ret void
}

declare void @_ZN11xalanc_1_106XTokenC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(41), ptr noundef nonnull align 8 dereferenceable(41)) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE6insertEPiPKiS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !111 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 2
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %134, label %11, !prof !113

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !107
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !106
  %17 = getelementptr inbounds i32, ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !104
  br i1 %18, label %21, label %39, !prof !112

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24, !prof !113

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %134, label %26, !prof !198

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !106
  %28 = load i64, ptr %12, align 8, !tbaa !107
  %29 = getelementptr i32, ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %37, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %35, %30 ], [ %29, %26 ]
  %33 = phi i64 [ %36, %30 ], [ %28, %26 ]
  %34 = load i32, ptr %31, align 4, !tbaa !120
  store i32 %34, ptr %32, align 4, !tbaa !120
  %35 = getelementptr inbounds i32, ptr %32, i64 1
  %36 = add i64 %33, 1
  %37 = getelementptr inbounds i32, ptr %31, i64 1
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %133, label %30, !prof !199, !llvm.loop !200

39:                                               ; preds = %11
  %40 = icmp ugt i64 %14, %20
  br i1 %40, label %41, label %97

41:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #17
  %42 = load ptr, ptr %0, align 8, !tbaa !79
  store ptr %42, ptr %5, align 8, !tbaa !79
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 1
  store i64 0, ptr %43, align 8, !tbaa !107
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 2
  store i64 %14, ptr %44, align 8, !tbaa !104
  %45 = shl i64 %14, 2
  %46 = load ptr, ptr %42, align 8, !tbaa !68
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef %45)
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !106
  %51 = load i64, ptr %43, align 8, !tbaa !107
  %52 = getelementptr inbounds i32, ptr %49, i64 %51
  %53 = load ptr, ptr %15, align 8, !tbaa !106
  invoke void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE6insertEPiPKiS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %52, ptr noundef %53, ptr noundef %1)
          to label %54 unwind label %83

54:                                               ; preds = %41
  %55 = load ptr, ptr %50, align 8, !tbaa !106
  %56 = load i64, ptr %43, align 8, !tbaa !107
  %57 = getelementptr inbounds i32, ptr %55, i64 %56
  invoke void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE6insertEPiPKiS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %57, ptr noundef %2, ptr noundef %3)
          to label %58 unwind label %83

58:                                               ; preds = %54
  %59 = load ptr, ptr %50, align 8, !tbaa !106
  %60 = load i64, ptr %43, align 8, !tbaa !107
  %61 = getelementptr inbounds i32, ptr %59, i64 %60
  %62 = load ptr, ptr %15, align 8, !tbaa !106
  %63 = load i64, ptr %12, align 8, !tbaa !107
  %64 = getelementptr inbounds i32, ptr %62, i64 %63
  invoke void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE6insertEPiPKiS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %61, ptr noundef %1, ptr noundef %64)
          to label %65 unwind label %83

65:                                               ; preds = %58
  %66 = load ptr, ptr %0, align 8, !tbaa !79
  %67 = load i64, ptr %12, align 8, !tbaa !107
  %68 = load i64, ptr %19, align 8, !tbaa !104
  %69 = load ptr, ptr %15, align 8, !tbaa !106
  %70 = load ptr, ptr %5, align 8, !tbaa !79
  store ptr %70, ptr %0, align 8, !tbaa !79
  %71 = load i64, ptr %43, align 8, !tbaa !107
  store i64 %71, ptr %12, align 8, !tbaa !107
  %72 = load i64, ptr %44, align 8, !tbaa !104
  store i64 %72, ptr %19, align 8, !tbaa !104
  %73 = load ptr, ptr %50, align 8, !tbaa !106
  store ptr %73, ptr %15, align 8, !tbaa !106
  store ptr %66, ptr %5, align 8, !tbaa !79
  store i64 %67, ptr %43, align 8, !tbaa !107
  store i64 %68, ptr %44, align 8, !tbaa !104
  store ptr %69, ptr %50, align 8, !tbaa !106
  %74 = icmp eq i64 %68, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %65
  %76 = load ptr, ptr %66, align 8, !tbaa !68
  %77 = getelementptr inbounds ptr, ptr %76, i64 3
  %78 = load ptr, ptr %77, align 8
  invoke void %78(ptr noundef nonnull align 8 dereferenceable(8) %66, ptr noundef %69)
          to label %82 unwind label %79

79:                                               ; preds = %75
  %80 = landingpad { ptr, i32 }
          catch ptr null
  %81 = extractvalue { ptr, i32 } %80, 0
  call void @__clang_call_terminate(ptr %81) #19
  unreachable

82:                                               ; preds = %65, %75
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  br label %134

83:                                               ; preds = %58, %54, %41
  %84 = landingpad { ptr, i32 }
          cleanup
  %85 = load i64, ptr %44, align 8, !tbaa !104
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr %50, align 8, !tbaa !106
  %89 = load ptr, ptr %5, align 8, !tbaa !79
  %90 = load ptr, ptr %89, align 8, !tbaa !68
  %91 = getelementptr inbounds ptr, ptr %90, i64 3
  %92 = load ptr, ptr %91, align 8
  invoke void %92(ptr noundef nonnull align 8 dereferenceable(8) %89, ptr noundef %88)
          to label %96 unwind label %93

93:                                               ; preds = %87
  %94 = landingpad { ptr, i32 }
          catch ptr null
  %95 = extractvalue { ptr, i32 } %94, 0
  call void @__clang_call_terminate(ptr %95) #19
  unreachable

96:                                               ; preds = %83, %87
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  resume { ptr, i32 } %84

97:                                               ; preds = %39
  %98 = ptrtoint ptr %17 to i64
  %99 = ptrtoint ptr %1 to i64
  %100 = sub i64 %98, %99
  %101 = icmp ugt i64 %100, %8
  br i1 %101, label %116, label %102

102:                                              ; preds = %97
  %103 = getelementptr inbounds i8, ptr %2, i64 %100
  %104 = icmp eq ptr %103, %3
  br i1 %104, label %105, label %107

105:                                              ; preds = %107, %102
  %106 = icmp eq ptr %17, %1
  br i1 %106, label %115, label %111

107:                                              ; preds = %102, %107
  %108 = phi ptr [ %109, %107 ], [ %103, %102 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10doPushBackERKi(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(4) %108)
  %109 = getelementptr inbounds i32, ptr %108, i64 1
  %110 = icmp eq ptr %109, %3
  br i1 %110, label %105, label %107, !llvm.loop !201

111:                                              ; preds = %105, %111
  %112 = phi ptr [ %113, %111 ], [ %1, %105 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10doPushBackERKi(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(4) %112)
  %113 = getelementptr inbounds i32, ptr %112, i64 1
  %114 = icmp eq ptr %113, %17
  br i1 %114, label %115, label %111, !llvm.loop !202

115:                                              ; preds = %111, %105
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %1, ptr align 4 %2, i64 %100, i1 false)
  br label %134

116:                                              ; preds = %97
  %117 = sub nsw i64 0, %9
  %118 = getelementptr inbounds i32, ptr %17, i64 %117
  %119 = icmp eq ptr %3, %2
  br i1 %119, label %124, label %120

120:                                              ; preds = %116, %120
  %121 = phi ptr [ %122, %120 ], [ %118, %116 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10doPushBackERKi(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(4) %121)
  %122 = getelementptr inbounds i32, ptr %121, i64 1
  %123 = icmp eq ptr %122, %17
  br i1 %123, label %124, label %120, !llvm.loop !203

124:                                              ; preds = %120, %116
  %125 = icmp eq ptr %118, %1
  br i1 %125, label %132, label %126

126:                                              ; preds = %124
  %127 = ptrtoint ptr %118 to i64
  %128 = sub i64 %127, %99
  %129 = ashr exact i64 %128, 2
  %130 = sub nsw i64 0, %129
  %131 = getelementptr inbounds i32, ptr %17, i64 %130
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %131, ptr align 4 %1, i64 %128, i1 false)
  br label %132

132:                                              ; preds = %126, %124
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %1, ptr align 4 %2, i64 %8, i1 false)
  br label %134

133:                                              ; preds = %30
  store i64 %36, ptr %12, align 8, !tbaa !107
  br label %134

134:                                              ; preds = %24, %133, %82, %115, %132, %4
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #13

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE10doPushBackERKd(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !204 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.2", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !179
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !91
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15, !prof !205

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !93
  %12 = getelementptr inbounds double, ptr %11, i64 %5
  %13 = load double, ptr %1, align 8, !tbaa !178
  store double %13, ptr %12, align 8, !tbaa !178
  %14 = add i64 %5, 1
  store i64 %14, ptr %4, align 8, !tbaa !179
  br label %60

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19, !prof !206
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #17
  %21 = load ptr, ptr %0, align 8, !tbaa !87
  call void @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20)
  invoke void @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE10doPushBackERKd(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %22 unwind label %44, !prof !207

22:                                               ; preds = %15
  %23 = load ptr, ptr %0, align 8, !tbaa !87
  %24 = load i64, ptr %4, align 8, !tbaa !179
  %25 = load i64, ptr %6, align 8, !tbaa !91
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !93
  %28 = load ptr, ptr %3, align 8, !tbaa !87
  store ptr %28, ptr %0, align 8, !tbaa !87
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %3, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !179
  store i64 %30, ptr %4, align 8, !tbaa !179
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %3, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !91
  store i64 %32, ptr %6, align 8, !tbaa !91
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %3, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !93
  store ptr %34, ptr %26, align 8, !tbaa !93
  store ptr %23, ptr %3, align 8, !tbaa !87
  store i64 %24, ptr %29, align 8, !tbaa !179
  store i64 %25, ptr %31, align 8, !tbaa !91
  store ptr %27, ptr %33, align 8, !tbaa !93
  %35 = icmp eq i64 %25, 0
  br i1 %35, label %43, label %36, !prof !206

36:                                               ; preds = %22
  %37 = load ptr, ptr %23, align 8, !tbaa !68
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %27)
          to label %43 unwind label %40, !prof !208

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #19
  unreachable

43:                                               ; preds = %22, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  br label %60

44:                                               ; preds = %15
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %3, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !91
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %3, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !93
  %52 = load ptr, ptr %3, align 8, !tbaa !87
  %53 = load ptr, ptr %52, align 8, !tbaa !68
  %54 = getelementptr inbounds ptr, ptr %53, i64 3
  %55 = load ptr, ptr %54, align 8
  invoke void %55(ptr noundef nonnull align 8 dereferenceable(8) %52, ptr noundef %51)
          to label %59 unwind label %56

56:                                               ; preds = %49
  %57 = landingpad { ptr, i32 }
          catch ptr null
  %58 = extractvalue { ptr, i32 } %57, 0
  call void @__clang_call_terminate(ptr %58) #19
  unreachable

59:                                               ; preds = %44, %49
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  resume { ptr, i32 } %45

60:                                               ; preds = %43, %9
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !209 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.2", align 8
  store ptr %2, ptr %0, align 8, !tbaa !87
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !179
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %58, label %12, !prof !210

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #17
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !87
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !179
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !91
  %16 = shl i64 %13, 3
  %17 = load ptr, ptr %2, align 8, !tbaa !68
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16), !prof !211
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !93
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !93
  %24 = load i64, ptr %9, align 8, !tbaa !179
  %25 = getelementptr inbounds double, ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE6insertEPdPKdS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %44, !prof !212

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !87
  %28 = load i64, ptr %6, align 8, !tbaa !179
  %29 = load i64, ptr %7, align 8, !tbaa !91
  %30 = load ptr, ptr %8, align 8, !tbaa !93
  %31 = load ptr, ptr %5, align 8, !tbaa !87
  store ptr %31, ptr %0, align 8, !tbaa !87
  %32 = load i64, ptr %14, align 8, !tbaa !179
  store i64 %32, ptr %6, align 8, !tbaa !179
  %33 = load i64, ptr %15, align 8, !tbaa !91
  store i64 %33, ptr %7, align 8, !tbaa !91
  %34 = load ptr, ptr %21, align 8, !tbaa !93
  store ptr %34, ptr %8, align 8, !tbaa !93
  store ptr %27, ptr %5, align 8, !tbaa !87
  store i64 %28, ptr %14, align 8, !tbaa !179
  store i64 %29, ptr %15, align 8, !tbaa !91
  store ptr %30, ptr %21, align 8, !tbaa !93
  %35 = icmp eq i64 %29, 0
  br i1 %35, label %43, label %36, !prof !212

36:                                               ; preds = %26
  %37 = load ptr, ptr %27, align 8, !tbaa !68
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %30)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #19
  unreachable

43:                                               ; preds = %26, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  br label %66

44:                                               ; preds = %12
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = load i64, ptr %15, align 8, !tbaa !91
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %21, align 8, !tbaa !93
  %50 = load ptr, ptr %5, align 8, !tbaa !87
  %51 = load ptr, ptr %50, align 8, !tbaa !68
  %52 = getelementptr inbounds ptr, ptr %51, i64 3
  %53 = load ptr, ptr %52, align 8
  invoke void %53(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef %49)
          to label %57 unwind label %54

54:                                               ; preds = %48
  %55 = landingpad { ptr, i32 }
          catch ptr null
  %56 = extractvalue { ptr, i32 } %55, 0
  call void @__clang_call_terminate(ptr %56) #19
  unreachable

57:                                               ; preds = %44, %48
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  resume { ptr, i32 } %45

58:                                               ; preds = %4
  %59 = icmp eq i64 %3, 0
  br i1 %59, label %66, label %60, !prof !213

60:                                               ; preds = %58
  %61 = shl i64 %3, 3
  %62 = load ptr, ptr %2, align 8, !tbaa !68
  %63 = getelementptr inbounds ptr, ptr %62, i64 2
  %64 = load ptr, ptr %63, align 8
  %65 = tail call noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %61), !prof !214
  store ptr %65, ptr %8, align 8, !tbaa !93
  store i64 %3, ptr %7, align 8, !tbaa !91
  br label %66

66:                                               ; preds = %58, %60, %43
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE6insertEPdPKdS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !215 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.2", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 3
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %134, label %11, !prof !216

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !179
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !93
  %17 = getelementptr inbounds double, ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !91
  br i1 %18, label %21, label %39, !prof !212

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24, !prof !216

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %134, label %26, !prof !217

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !93
  %28 = load i64, ptr %12, align 8, !tbaa !179
  %29 = getelementptr double, ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %37, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %35, %30 ], [ %29, %26 ]
  %33 = phi i64 [ %36, %30 ], [ %28, %26 ]
  %34 = load double, ptr %31, align 8, !tbaa !178
  store double %34, ptr %32, align 8, !tbaa !178
  %35 = getelementptr inbounds double, ptr %32, i64 1
  %36 = add i64 %33, 1
  %37 = getelementptr inbounds double, ptr %31, i64 1
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %133, label %30, !prof !218, !llvm.loop !219

39:                                               ; preds = %11
  %40 = icmp ugt i64 %14, %20
  br i1 %40, label %41, label %97

41:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #17
  %42 = load ptr, ptr %0, align 8, !tbaa !87
  store ptr %42, ptr %5, align 8, !tbaa !87
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %5, i64 0, i32 1
  store i64 0, ptr %43, align 8, !tbaa !179
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %5, i64 0, i32 2
  store i64 %14, ptr %44, align 8, !tbaa !91
  %45 = shl i64 %14, 3
  %46 = load ptr, ptr %42, align 8, !tbaa !68
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef %45)
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %5, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !93
  %51 = load i64, ptr %43, align 8, !tbaa !179
  %52 = getelementptr inbounds double, ptr %49, i64 %51
  %53 = load ptr, ptr %15, align 8, !tbaa !93
  invoke void @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE6insertEPdPKdS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %52, ptr noundef %53, ptr noundef %1)
          to label %54 unwind label %83

54:                                               ; preds = %41
  %55 = load ptr, ptr %50, align 8, !tbaa !93
  %56 = load i64, ptr %43, align 8, !tbaa !179
  %57 = getelementptr inbounds double, ptr %55, i64 %56
  invoke void @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE6insertEPdPKdS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %57, ptr noundef %2, ptr noundef %3)
          to label %58 unwind label %83

58:                                               ; preds = %54
  %59 = load ptr, ptr %50, align 8, !tbaa !93
  %60 = load i64, ptr %43, align 8, !tbaa !179
  %61 = getelementptr inbounds double, ptr %59, i64 %60
  %62 = load ptr, ptr %15, align 8, !tbaa !93
  %63 = load i64, ptr %12, align 8, !tbaa !179
  %64 = getelementptr inbounds double, ptr %62, i64 %63
  invoke void @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE6insertEPdPKdS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %61, ptr noundef %1, ptr noundef %64)
          to label %65 unwind label %83

65:                                               ; preds = %58
  %66 = load ptr, ptr %0, align 8, !tbaa !87
  %67 = load i64, ptr %12, align 8, !tbaa !179
  %68 = load i64, ptr %19, align 8, !tbaa !91
  %69 = load ptr, ptr %15, align 8, !tbaa !93
  %70 = load ptr, ptr %5, align 8, !tbaa !87
  store ptr %70, ptr %0, align 8, !tbaa !87
  %71 = load i64, ptr %43, align 8, !tbaa !179
  store i64 %71, ptr %12, align 8, !tbaa !179
  %72 = load i64, ptr %44, align 8, !tbaa !91
  store i64 %72, ptr %19, align 8, !tbaa !91
  %73 = load ptr, ptr %50, align 8, !tbaa !93
  store ptr %73, ptr %15, align 8, !tbaa !93
  store ptr %66, ptr %5, align 8, !tbaa !87
  store i64 %67, ptr %43, align 8, !tbaa !179
  store i64 %68, ptr %44, align 8, !tbaa !91
  store ptr %69, ptr %50, align 8, !tbaa !93
  %74 = icmp eq i64 %68, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %65
  %76 = load ptr, ptr %66, align 8, !tbaa !68
  %77 = getelementptr inbounds ptr, ptr %76, i64 3
  %78 = load ptr, ptr %77, align 8
  invoke void %78(ptr noundef nonnull align 8 dereferenceable(8) %66, ptr noundef %69)
          to label %82 unwind label %79

79:                                               ; preds = %75
  %80 = landingpad { ptr, i32 }
          catch ptr null
  %81 = extractvalue { ptr, i32 } %80, 0
  call void @__clang_call_terminate(ptr %81) #19
  unreachable

82:                                               ; preds = %65, %75
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  br label %134

83:                                               ; preds = %58, %54, %41
  %84 = landingpad { ptr, i32 }
          cleanup
  %85 = load i64, ptr %44, align 8, !tbaa !91
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr %50, align 8, !tbaa !93
  %89 = load ptr, ptr %5, align 8, !tbaa !87
  %90 = load ptr, ptr %89, align 8, !tbaa !68
  %91 = getelementptr inbounds ptr, ptr %90, i64 3
  %92 = load ptr, ptr %91, align 8
  invoke void %92(ptr noundef nonnull align 8 dereferenceable(8) %89, ptr noundef %88)
          to label %96 unwind label %93

93:                                               ; preds = %87
  %94 = landingpad { ptr, i32 }
          catch ptr null
  %95 = extractvalue { ptr, i32 } %94, 0
  call void @__clang_call_terminate(ptr %95) #19
  unreachable

96:                                               ; preds = %83, %87
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  resume { ptr, i32 } %84

97:                                               ; preds = %39
  %98 = ptrtoint ptr %17 to i64
  %99 = ptrtoint ptr %1 to i64
  %100 = sub i64 %98, %99
  %101 = icmp ugt i64 %100, %8
  br i1 %101, label %116, label %102

102:                                              ; preds = %97
  %103 = getelementptr inbounds i8, ptr %2, i64 %100
  %104 = icmp eq ptr %103, %3
  br i1 %104, label %105, label %107

105:                                              ; preds = %107, %102
  %106 = icmp eq ptr %17, %1
  br i1 %106, label %115, label %111

107:                                              ; preds = %102, %107
  %108 = phi ptr [ %109, %107 ], [ %103, %102 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE10doPushBackERKd(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %108)
  %109 = getelementptr inbounds double, ptr %108, i64 1
  %110 = icmp eq ptr %109, %3
  br i1 %110, label %105, label %107, !llvm.loop !220

111:                                              ; preds = %105, %111
  %112 = phi ptr [ %113, %111 ], [ %1, %105 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE10doPushBackERKd(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %112)
  %113 = getelementptr inbounds double, ptr %112, i64 1
  %114 = icmp eq ptr %113, %17
  br i1 %114, label %115, label %111, !llvm.loop !221

115:                                              ; preds = %111, %105
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %1, ptr align 8 %2, i64 %100, i1 false)
  br label %134

116:                                              ; preds = %97
  %117 = sub nsw i64 0, %9
  %118 = getelementptr inbounds double, ptr %17, i64 %117
  %119 = icmp eq ptr %3, %2
  br i1 %119, label %124, label %120

120:                                              ; preds = %116, %120
  %121 = phi ptr [ %122, %120 ], [ %118, %116 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE10doPushBackERKd(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %121)
  %122 = getelementptr inbounds double, ptr %121, i64 1
  %123 = icmp eq ptr %122, %17
  br i1 %123, label %124, label %120, !llvm.loop !222

124:                                              ; preds = %120, %116
  %125 = icmp eq ptr %118, %1
  br i1 %125, label %132, label %126

126:                                              ; preds = %124
  %127 = ptrtoint ptr %118 to i64
  %128 = sub i64 %127, %99
  %129 = ashr exact i64 %128, 3
  %130 = sub nsw i64 0, %129
  %131 = getelementptr inbounds double, ptr %17, i64 %130
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %131, ptr align 8 %1, i64 %128, i1 false)
  br label %132

132:                                              ; preds = %126, %124
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %1, ptr align 8 %2, i64 %8, i1 false)
  br label %134

133:                                              ; preds = %30
  store i64 %36, ptr %12, align 8, !tbaa !179
  br label %134

134:                                              ; preds = %24, %133, %82, %115, %132, %4
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !223 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.2", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #17
  %4 = load ptr, ptr %0, align 8, !tbaa !87
  call void @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1)
  %5 = load ptr, ptr %0, align 8, !tbaa !87
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !179
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !91
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !93
  %12 = load ptr, ptr %3, align 8, !tbaa !87
  store ptr %12, ptr %0, align 8, !tbaa !87
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %3, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !179
  store i64 %14, ptr %6, align 8, !tbaa !179
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %3, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !91
  store i64 %16, ptr %8, align 8, !tbaa !91
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !93
  store ptr %18, ptr %10, align 8, !tbaa !93
  store ptr %5, ptr %3, align 8, !tbaa !87
  store i64 %7, ptr %13, align 8, !tbaa !179
  store i64 %9, ptr %15, align 8, !tbaa !91
  store ptr %11, ptr %17, align 8, !tbaa !93
  %19 = icmp eq i64 %9, 0
  br i1 %19, label %27, label %20, !prof !99

20:                                               ; preds = %2
  %21 = load ptr, ptr %5, align 8, !tbaa !68
  %22 = getelementptr inbounds ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8
  invoke void %23(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %11)
          to label %27 unwind label %24

24:                                               ; preds = %20
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  call void @__clang_call_terminate(ptr %26) #19
  unreachable

27:                                               ; preds = %2, %20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  ret void
}

; Function Attrs: cold uwtable
define internal void @_GLOBAL__sub_I_XPathExpression.cpp() #14 section ".text.startup" !prof !223 !PGOFuncName !224 {
  %1 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv()
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_10L13s_emptyStringE, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %2 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr nonnull @_ZN11xalanc_1_10L13s_emptyStringE, ptr nonnull @__dso_handle) #17
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #16

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nofree nounwind }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { cold uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #17 = { nounwind }
attributes #18 = { builtin nounwind }
attributes #19 = { noreturn nounwind }
attributes #20 = { noreturn }
attributes #21 = { "function-inline-cost-multiplier"="2" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!66}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65}
!35 = !{ptr @_ZN11xalanc_1_1015XPathExpressionC2ERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE9doReserveEm, i64 164}
!36 = !{ptr @_ZN11xalanc_1_1015XPathExpressionC2ERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE9doReserveEm, i64 164}
!37 = !{ptr @_ZN11xalanc_1_1015XPathExpressionD2Ev, ptr @_ZN11xalanc_1_1015XPathExpression5resetEv, i64 164}
!38 = !{ptr @_ZN11xalanc_1_1015XPathExpressionD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEED2Ev, i64 164}
!39 = !{ptr @_ZN11xalanc_1_1015XPathExpressionD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev, i64 164}
!40 = !{ptr @_ZN11xalanc_1_1015XPathExpressionD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEED2Ev, i64 164}
!41 = !{ptr @_ZN11xalanc_1_1015XPathExpression6shrinkEv, ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, i64 27}
!42 = !{ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE6insertEPiPKiS6_, i64 27}
!43 = !{ptr @_ZN11xalanc_1_1015XPathExpression12appendOpCodeENS0_8eOpCodesE, ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10doPushBackERKi, i64 2028}
!44 = !{ptr @_ZN11xalanc_1_1015XPathExpression12insertOpCodeENS0_8eOpCodesEi, ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE6insertEPimRKi, i64 32}
!45 = !{ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE6insertEPimRKi, ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE9doReserveEm, i64 28}
!46 = !{ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE6insertEPimRKi, ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10doPushBackERKi, i64 64}
!47 = !{ptr @_ZN11xalanc_1_1015XPathExpression23pushArgumentOnOpCodeMapERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_106XToken3setERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE, i64 7}
!48 = !{ptr @_ZN11xalanc_1_1015XPathExpression23pushArgumentOnOpCodeMapERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10doPushBackERKi, i64 7}
!49 = !{ptr @_ZN11xalanc_1_1015XPathExpression23pushArgumentOnOpCodeMapEdRKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_106XToken3setEdRKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE, i64 43}
!50 = !{ptr @_ZN11xalanc_1_1015XPathExpression23pushArgumentOnOpCodeMapEdRKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10doPushBackERKi, i64 43}
!51 = !{ptr @_ZN11xalanc_1_1015XPathExpression28pushNumberLiteralOnOpCodeMapEd, ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10doPushBackERKi, i64 43}
!52 = !{ptr @_ZN11xalanc_1_1015XPathExpression28pushNumberLiteralOnOpCodeMapEd, ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE10doPushBackERKd, i64 43}
!53 = !{ptr @_ZN11xalanc_1_1015XPathExpression27pushCurrentTokenOnOpCodeMapEv, ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE10doPushBackERKi, i64 377}
!54 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @__clang_call_terminate, i64 40}
!55 = !{ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, i64 192}
!56 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERKS4_RN11xercesc_2_713MemoryManagerEm, i64 164}
!57 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev, i64 164}
!58 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_, ptr @_ZN11xalanc_1_106XTokenC1ERKS0_, i64 983}
!59 = !{ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE10doPushBackERKd, ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, i64 43}
!60 = !{ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE10doPushBackERKd, ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE10doPushBackERKd, i64 43}
!61 = !{ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE6insertEPdPKdS6_, i64 25}
!62 = !{ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, i64 1}
!63 = !{ptr @_GLOBAL__sub_I_XPathExpression.cpp, ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv, i64 1}
!64 = !{ptr @_GLOBAL__sub_I_XPathExpression.cpp, ptr @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE, i64 1}
!65 = !{ptr @_GLOBAL__sub_I_XPathExpression.cpp, ptr @__cxa_atexit, i64 1}
!66 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!67 = !{!"function_entry_count", i64 0}
!68 = !{!69, !69, i64 0}
!69 = !{!"vtable pointer", !70, i64 0}
!70 = !{!"Simple C++ TBAA"}
!71 = !{!72, !73, i64 0}
!72 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !73, i64 0, !75, i64 8, !75, i64 16, !73, i64 24}
!73 = !{!"any pointer", !74, i64 0}
!74 = !{!"omnipotent char", !70, i64 0}
!75 = !{!"long", !74, i64 0}
!76 = !{!72, !75, i64 16}
!77 = !{!72, !73, i64 24}
!78 = !{!"function_entry_count", i64 164}
!79 = !{!80, !73, i64 0}
!80 = !{!"_ZTSN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEE", !73, i64 0, !75, i64 8, !75, i64 16, !73, i64 24}
!81 = !{!82, !73, i64 0}
!82 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEEE", !73, i64 0, !75, i64 8, !75, i64 16, !73, i64 24}
!83 = !{!84, !73, i64 80}
!84 = !{!"_ZTSN11xalanc_1_1015XPathExpressionE", !80, i64 0, !85, i64 32, !82, i64 40, !85, i64 72, !73, i64 80, !86, i64 88}
!85 = !{!"int", !74, i64 0}
!86 = !{!"_ZTSN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEEE", !73, i64 0, !75, i64 8, !75, i64 16, !73, i64 24}
!87 = !{!86, !73, i64 0}
!88 = !{!"branch_weights", i32 164, i32 0}
!89 = !{!82, !75, i64 16}
!90 = !{!"function_entry_count", i64 165}
!91 = !{!86, !75, i64 16}
!92 = !{!"branch_weights", i32 146, i32 19}
!93 = !{!86, !73, i64 24}
!94 = !{!"VP", i32 0, i64 19, i64 -7405368087501025645, i64 19}
!95 = !{!"function_entry_count", i64 328}
!96 = !{!"branch_weights", i32 164, i32 164}
!97 = !{!82, !73, i64 24}
!98 = !{!82, !75, i64 8}
!99 = !{!"branch_weights", i32 1, i32 0}
!100 = distinct !{!100, !101, !102}
!101 = !{!"llvm.loop.mustprogress"}
!102 = !{!"llvm.loop.unroll.disable"}
!103 = !{!"VP", i32 0, i64 164, i64 -7405368087501025645, i64 164}
!104 = !{!80, !75, i64 16}
!105 = !{!"branch_weights", i32 1, i32 164}
!106 = !{!80, !73, i64 24}
!107 = !{!80, !75, i64 8}
!108 = !{!"VP", i32 0, i64 983, i64 -2658935475305318424, i64 983}
!109 = !{!"branch_weights", i32 164, i32 819}
!110 = distinct !{!110, !101, !102}
!111 = !{!"function_entry_count", i64 27}
!112 = !{!"branch_weights", i32 27, i32 0}
!113 = !{!"branch_weights", i32 0, i32 27}
!114 = !{!"VP", i32 0, i64 27, i64 -7405368087501025645, i64 27}
!115 = !{!"function_entry_count", i64 219}
!116 = !{!"branch_weights", i32 192, i32 27}
!117 = !{!"VP", i32 0, i64 27, i64 8345045103670217670, i64 27}
!118 = !{!"branch_weights", i32 0, i32 192}
!119 = !{!"VP", i32 0, i64 192, i64 8345045103670217670, i64 192}
!120 = !{!85, !85, i64 0}
!121 = !{!"function_entry_count", i64 28}
!122 = !{!"branch_weights", i32 0, i32 28}
!123 = !{!"branch_weights", i32 28, i32 0}
!124 = !{!"branch_weights", i32 223, i32 1}
!125 = !{!"branch_weights", i32 0, i32 45}
!126 = !{!"branch_weights", i32 223, i32 137}
!127 = distinct !{!127, !101, !102}
!128 = !{!"function_entry_count", i64 1165}
!129 = !{!"branch_weights", i32 0, i32 1165}
!130 = !{!84, !85, i64 32}
!131 = !{!"branch_weights", i32 654, i32 511}
!132 = !{!"branch_weights", i32 209, i32 445}
!133 = !{!"branch_weights", i32 0, i32 209}
!134 = distinct !{!134, !101, !102}
!135 = !{!"branch_weights", i32 164, i32 1001}
!136 = !{!"function_entry_count", i64 2}
!137 = !{!"branch_weights", i32 2, i32 0}
!138 = !{!"branch_weights", i32 0, i32 2}
!139 = !{!"function_entry_count", i64 32}
!140 = !{!"branch_weights", i32 0, i32 32}
!141 = !{!"function_entry_count", i64 60}
!142 = !{!"branch_weights", i32 28, i32 32}
!143 = !{!"branch_weights", i32 1, i32 223}
!144 = distinct !{!144, !101, !102}
!145 = !{!"branch_weights", i32 32, i32 0}
!146 = distinct !{!146, !101, !102}
!147 = distinct !{!147, !101, !102}
!148 = distinct !{!148, !101, !102}
!149 = !{!"branch_weights", i32 1, i32 127}
!150 = !{!"branch_weights", i32 127, i32 129}
!151 = distinct !{!151, !101, !102}
!152 = !{!"VP", i32 1, i64 32, i64 4, i64 10, i64 17, i64 9, i64 65, i64 8, i64 33, i64 5}
!153 = !{!"function_entry_count", i64 803}
!154 = !{!"branch_weights", i32 0, i32 803}
!155 = !{!"branch_weights", i32 803, i32 0}
!156 = !{!"function_entry_count", i64 199}
!157 = !{!"branch_weights", i32 0, i32 199}
!158 = !{!"branch_weights", i32 199, i32 0}
!159 = distinct !{!159, !101, !102}
!160 = distinct !{!160, !101, !102}
!161 = !{!72, !75, i64 8}
!162 = distinct !{!162, !101, !102}
!163 = distinct !{!163, !101, !102}
!164 = !{!165, !73, i64 16}
!165 = !{!"_ZTSN11xalanc_1_1011PrintWriterE", !166, i64 0, !167, i64 8, !73, i64 16}
!166 = !{!"_ZTSN11xalanc_1_106WriterE"}
!167 = !{!"bool", !74, i64 0}
!168 = !{!84, !85, i64 72}
!169 = !{!170, !73, i64 24}
!170 = !{!"_ZTSN11xalanc_1_106XTokenE", !171, i64 0, !73, i64 24, !174, i64 32, !167, i64 40}
!171 = !{!"_ZTSN11xalanc_1_107XObjectE", !172, i64 0, !173, i64 12, !73, i64 16}
!172 = !{!"_ZTSN11xalanc_1_1027XalanReferenceCountedObjectE", !85, i64 8}
!173 = !{!"_ZTSN11xalanc_1_107XObject11eObjectTypeE", !74, i64 0}
!174 = !{!"double", !74, i64 0}
!175 = !{!170, !174, i64 32}
!176 = !{!"function_entry_count", i64 7}
!177 = !{!"function_entry_count", i64 43}
!178 = !{!174, !174, i64 0}
!179 = !{!86, !75, i64 8}
!180 = !{!"function_entry_count", i64 377}
!181 = !{!"function_entry_count", i64 42470003}
!182 = !{!"branch_weights", i32 52000, i32 42418003}
!183 = !{!"VP", i32 0, i64 42418003, i64 -7405368087501025645, i64 42418003}
!184 = !{!"function_entry_count", i64 2562}
!185 = !{!"branch_weights", i32 2562, i32 0}
!186 = !{!"function_entry_count", i64 192}
!187 = !{!"branch_weights", i32 192, i32 0}
!188 = !{!"branch_weights", i32 0, i32 164}
!189 = !{!"VP", i32 0, i64 164, i64 8345045103670217670, i64 164}
!190 = distinct !{!190, !101, !102}
!191 = distinct !{!191, !101, !102}
!192 = distinct !{!192, !101, !102}
!193 = distinct !{!193, !101, !102}
!194 = distinct !{!194, !101, !102}
!195 = distinct !{!195, !101, !102}
!196 = !{!"function_entry_count", i64 983}
!197 = !{!"branch_weights", i32 983, i32 0}
!198 = !{!"branch_weights", i32 1, i32 215}
!199 = !{!"branch_weights", i32 215, i32 2897}
!200 = distinct !{!200, !101, !102}
!201 = distinct !{!201, !101, !102}
!202 = distinct !{!202, !101, !102}
!203 = distinct !{!203, !101, !102}
!204 = !{!"function_entry_count", i64 86}
!205 = !{!"branch_weights", i32 43, i32 43}
!206 = !{!"branch_weights", i32 18, i32 25}
!207 = !{!"branch_weights", i32 43, i32 0}
!208 = !{!"VP", i32 0, i64 25, i64 -7405368087501025645, i64 25}
!209 = !{!"function_entry_count", i64 45}
!210 = !{!"branch_weights", i32 20, i32 25}
!211 = !{!"VP", i32 0, i64 25, i64 8345045103670217670, i64 25}
!212 = !{!"branch_weights", i32 25, i32 0}
!213 = !{!"branch_weights", i32 1, i32 19}
!214 = !{!"VP", i32 0, i64 19, i64 8345045103670217670, i64 19}
!215 = !{!"function_entry_count", i64 25}
!216 = !{!"branch_weights", i32 0, i32 25}
!217 = !{!"branch_weights", i32 1, i32 199}
!218 = !{!"branch_weights", i32 199, i32 105}
!219 = distinct !{!219, !101, !102}
!220 = distinct !{!220, !101, !102}
!221 = distinct !{!221, !101, !102}
!222 = distinct !{!222, !101, !102}
!223 = !{!"function_entry_count", i64 1}
!224 = !{!"XPathExpression.cpp;_GLOBAL__sub_I_XPathExpression.cpp"}
