; ModuleID = 'XalanQName.cpp'
source_filename = "XalanQName.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanQName::PrefixResolverProxy" = type { %"class.xalanc_1_10::PrefixResolver", ptr, ptr }
%"class.xalanc_1_10::PrefixResolver" = type { ptr }
%"class.xalanc_1_10::XalanDeque" = type { ptr, i64, %"class.xalanc_1_10::XalanVector.0", %"class.xalanc_1_10::XalanVector.0" }
%"class.xalanc_1_10::XalanVector.0" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.4" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanDeque.1" = type { ptr, i64, %"class.xalanc_1_10::XalanVector.2", %"class.xalanc_1_10::XalanVector.2" }
%"class.xalanc_1_10::XalanVector.2" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.3" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::NameSpace" = type { %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString" }

$_ZN11xalanc_1_1014XalanDOMStringD2Ev = comdat any

$_ZNK11xalanc_1_1010XalanQName21InvalidQNameException7getTypeEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev = comdat any

$__clang_call_terminate = comdat any

@_ZN11xalanc_1_1010XalanQName13s_emptyStringE = dso_local global %"class.xalanc_1_10::XalanDOMString" zeroinitializer, align 8
@__dso_handle = external hidden global i8
@_ZTVN11xalanc_1_1010XalanQName19PrefixResolverProxyE = dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1010XalanQName19PrefixResolverProxyE, ptr @_ZN11xalanc_1_1010XalanQName19PrefixResolverProxyD2Ev, ptr @_ZN11xalanc_1_1010XalanQName19PrefixResolverProxyD0Ev, ptr @_ZNK11xalanc_1_1010XalanQName19PrefixResolverProxy21getNamespaceForPrefixERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1010XalanQName19PrefixResolverProxy6getURIEv] }, align 8
@_ZN11xalanc_1_1011DOMServices11s_XMLStringE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_1011DOMServices17s_XMLNamespaceURIE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_1011DOMServices14s_XMLNamespaceE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_1011DOMServices23s_XMLNamespacePrefixURIE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_1010XalanQName21InvalidQNameException6m_typeE = dso_local constant [22 x i16] [i16 73, i16 110, i16 118, i16 97, i16 108, i16 105, i16 100, i16 81, i16 78, i16 97, i16 109, i16 101, i16 69, i16 120, i16 99, i16 101, i16 112, i16 116, i16 105, i16 111, i16 110, i16 0], align 16
@_ZTVN11xalanc_1_1010XalanQName21InvalidQNameExceptionE = dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1010XalanQName21InvalidQNameExceptionE, ptr @_ZN11xalanc_1_1010XalanQName21InvalidQNameExceptionD2Ev, ptr @_ZN11xalanc_1_1010XalanQName21InvalidQNameExceptionD0Ev, ptr @_ZNK11xalanc_1_1010XalanQName21InvalidQNameException7getTypeEv] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1010XalanQName19PrefixResolverProxyE = dso_local constant [49 x i8] c"N11xalanc_1_1010XalanQName19PrefixResolverProxyE\00", align 1
@_ZTIN11xalanc_1_1014PrefixResolverE = external constant ptr
@_ZTIN11xalanc_1_1010XalanQName19PrefixResolverProxyE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1010XalanQName19PrefixResolverProxyE, ptr @_ZTIN11xalanc_1_1014PrefixResolverE }, align 8
@_ZTSN11xalanc_1_1010XalanQName21InvalidQNameExceptionE = dso_local constant [51 x i8] c"N11xalanc_1_1010XalanQName21InvalidQNameExceptionE\00", align 1
@_ZTIN11xalanc_1_1012XSLExceptionE = external constant ptr
@_ZTIN11xalanc_1_1010XalanQName21InvalidQNameExceptionE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1010XalanQName21InvalidQNameExceptionE, ptr @_ZTIN11xalanc_1_1012XSLExceptionE }, align 8
@_ZN11xalanc_1_1014XalanDOMString7s_emptyE = external constant i16, align 2
@_ZN11xalanc_1_1012XalanXMLChar15theUnicodeTableE = external local_unnamed_addr constant [0 x i8], align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_XalanQName.cpp, ptr null }]

@_ZN11xalanc_1_1010XalanQName19PrefixResolverProxyC1ERKNS_10XalanDequeINS2_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS3_EEEENS4_IS6_EEEERKNS_14XalanDOMStringE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xalanc_1_1010XalanQName19PrefixResolverProxyC2ERKNS_10XalanDequeINS2_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS3_EEEENS4_IS6_EEEERKNS_14XalanDOMStringE
@_ZN11xalanc_1_1010XalanQName19PrefixResolverProxyD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1010XalanQName19PrefixResolverProxyD2Ev
@_ZN11xalanc_1_1010XalanQName21InvalidQNameExceptionC1EPKtjRKNS_14XalanDOMStringEiiRS4_ = dso_local unnamed_addr alias void (ptr, ptr, i32, ptr, i32, i32, ptr), ptr @_ZN11xalanc_1_1010XalanQName21InvalidQNameExceptionC2EPKtjRKNS_14XalanDOMStringEiiRS4_
@_ZN11xalanc_1_1010XalanQName21InvalidQNameExceptionC1ERKN11xercesc_2_77LocatorEPKtjRNS_14XalanDOMStringE = dso_local unnamed_addr alias void (ptr, ptr, ptr, i32, ptr), ptr @_ZN11xalanc_1_1010XalanQName21InvalidQNameExceptionC2ERKN11xercesc_2_77LocatorEPKtjRNS_14XalanDOMStringE
@_ZN11xalanc_1_1010XalanQName21InvalidQNameExceptionC1EPKtjRNS_14XalanDOMStringE = dso_local unnamed_addr alias void (ptr, ptr, i32, ptr), ptr @_ZN11xalanc_1_1010XalanQName21InvalidQNameExceptionC2EPKtjRNS_14XalanDOMStringE
@_ZN11xalanc_1_1010XalanQName21InvalidQNameExceptionD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1010XalanQName21InvalidQNameExceptionD2Ev

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv() local_unnamed_addr #0

declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #1 comdat align 2 !prof !43 {
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1010XalanQName19PrefixResolverProxyC2ERKNS_10XalanDequeINS2_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS3_EEEENS4_IS6_EEEERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(36) %2) unnamed_addr #3 align 2 !prof !43 {
  tail call void @_ZN11xalanc_1_1014PrefixResolverC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xalanc_1_1010XalanQName19PrefixResolverProxyE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !44
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanQName::PrefixResolverProxy", ptr %0, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !47
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanQName::PrefixResolverProxy", ptr %0, i64 0, i32 2
  store ptr %2, ptr %5, align 8, !tbaa !47
  ret void
}

declare void @_ZN11xalanc_1_1014PrefixResolverC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1014PrefixResolverD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1010XalanQName19PrefixResolverProxyD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 align 2 !prof !43 {
  tail call void @_ZN11xalanc_1_1014PrefixResolverD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #12
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1010XalanQName19PrefixResolverProxyD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 align 2 !prof !43 {
  tail call void @_ZN11xalanc_1_1014PrefixResolverD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #12
  tail call void @_ZdlPv(ptr noundef %0) #13
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1010XalanQName19PrefixResolverProxy21getNamespaceForPrefixERKNS_14XalanDOMStringE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #3 align 2 !prof !43 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanQName::PrefixResolverProxy", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !50
  %5 = tail call noundef ptr @_ZN11xalanc_1_1010XalanQName21getNamespaceForPrefixERKNS_10XalanDequeINS1_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS3_IS5_EEEERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef nonnull align 8 dereferenceable(36) %1)
  ret ptr %5
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1010XalanQName21getNamespaceForPrefixERKNS_10XalanDequeINS1_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS3_IS5_EEEERKNS_14XalanDOMStringE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #6 align 2 !prof !53 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 2, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !54
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6, !prof !57

6:                                                ; preds = %2
  %7 = add i64 %4, -1
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !58
  %10 = mul i64 %9, %7
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 2, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !60
  %13 = getelementptr ptr, ptr %12, i64 %4
  %14 = getelementptr ptr, ptr %13, i64 -1
  %15 = load ptr, ptr %14, align 8, !tbaa !47
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %15, i64 0, i32 1
  %17 = load i64, ptr %16, align 8, !tbaa !61
  %18 = add i64 %17, %10
  br label %19

19:                                               ; preds = %2, %6
  %20 = phi i64 [ %18, %6 ], [ 0, %2 ]
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %41, label %22, !prof !57

22:                                               ; preds = %19
  %23 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 1
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 2, i32 3
  br label %25

25:                                               ; preds = %22, %39
  %26 = phi i64 [ %27, %39 ], [ %20, %22 ]
  %27 = add i64 %26, -1
  %28 = load i64, ptr %23, align 8, !tbaa !58
  %29 = udiv i64 %27, %28
  %30 = load ptr, ptr %24, align 8, !tbaa !60
  %31 = getelementptr inbounds ptr, ptr %30, i64 %29
  %32 = load ptr, ptr %31, align 8, !tbaa !47
  %33 = urem i64 %27, %28
  %34 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %32, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !63
  %36 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.1", ptr %35, i64 %33
  %37 = tail call noundef ptr @_ZN11xalanc_1_1010XalanQName21getNamespaceForPrefixERKNS_10XalanDequeINS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS2_EEEERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(80) %36, ptr noundef nonnull align 8 dereferenceable(36) %1)
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %41, !prof !64

39:                                               ; preds = %25
  %40 = icmp eq i64 %27, 0
  br i1 %40, label %41, label %25, !prof !65, !llvm.loop !66

41:                                               ; preds = %39, %25, %19
  %42 = phi ptr [ null, %19 ], [ %37, %25 ], [ null, %39 ]
  ret ptr %42
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1010XalanQName19PrefixResolverProxy6getURIEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0) unnamed_addr #7 align 2 !prof !43 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanQName::PrefixResolverProxy", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !69
  ret ptr %3
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1010XalanQName21getNamespaceForPrefixERKNS_10XalanDequeINS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS2_EEEEPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %0, ptr noundef %1) local_unnamed_addr #3 align 2 !prof !43 {
  %3 = load ptr, ptr @_ZN11xalanc_1_1011DOMServices11s_XMLStringE, align 8, !tbaa !47
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !70
  %6 = icmp eq i64 %5, 0
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8
  %9 = select i1 %6, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %8
  %10 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %1)
  %11 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %9)
  %12 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef %1, i32 noundef %10, ptr noundef %9, i32 noundef %11)
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load ptr, ptr @_ZN11xalanc_1_1011DOMServices17s_XMLNamespaceURIE, align 8, !tbaa !47
  br label %75

15:                                               ; preds = %2
  %16 = load ptr, ptr @_ZN11xalanc_1_1011DOMServices14s_XMLNamespaceE, align 8, !tbaa !47
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %16, i64 0, i32 1
  %18 = load i64, ptr %17, align 8, !tbaa !70
  %19 = icmp eq i64 %18, 0
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %16, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8
  %22 = select i1 %19, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %21
  %23 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %1)
  %24 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %22)
  %25 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef %1, i32 noundef %23, ptr noundef %22, i32 noundef %24)
  br i1 %25, label %26, label %28

26:                                               ; preds = %15
  %27 = load ptr, ptr @_ZN11xalanc_1_1011DOMServices23s_XMLNamespacePrefixURIE, align 8, !tbaa !47
  br label %75

28:                                               ; preds = %15
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.1", ptr %0, i64 0, i32 2, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !72
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %45, label %32

32:                                               ; preds = %28
  %33 = add i64 %30, -1
  %34 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.1", ptr %0, i64 0, i32 1
  %35 = load i64, ptr %34, align 8, !tbaa !74
  %36 = mul i64 %35, %33
  %37 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.1", ptr %0, i64 0, i32 2, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !76
  %39 = getelementptr ptr, ptr %38, i64 %30
  %40 = getelementptr ptr, ptr %39, i64 -1
  %41 = load ptr, ptr %40, align 8, !tbaa !47
  %42 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %41, i64 0, i32 1
  %43 = load i64, ptr %42, align 8, !tbaa !77
  %44 = add i64 %43, %36
  br label %45

45:                                               ; preds = %28, %32
  %46 = phi i64 [ %44, %32 ], [ 0, %28 ]
  %47 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.1", ptr %0, i64 0, i32 1
  %48 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.1", ptr %0, i64 0, i32 2, i32 3
  br label %49

49:                                               ; preds = %53, %45
  %50 = phi i64 [ %46, %45 ], [ %54, %53 ]
  %51 = phi ptr [ null, %45 ], [ %74, %53 ]
  %52 = icmp eq i64 %50, 0
  br i1 %52, label %75, label %53

53:                                               ; preds = %49
  %54 = add i64 %50, -1
  %55 = load i64, ptr %47, align 8, !tbaa !74
  %56 = udiv i64 %54, %55
  %57 = load ptr, ptr %48, align 8, !tbaa !76
  %58 = getelementptr inbounds ptr, ptr %57, i64 %56
  %59 = load ptr, ptr %58, align 8, !tbaa !47
  %60 = urem i64 %54, %55
  %61 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %59, i64 0, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !79
  %63 = getelementptr inbounds %"class.xalanc_1_10::NameSpace", ptr %62, i64 %60
  %64 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %63, i64 0, i32 1
  %65 = load i64, ptr %64, align 8, !tbaa !70
  %66 = icmp eq i64 %65, 0
  %67 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %63, i64 0, i32 3
  %68 = load ptr, ptr %67, align 8
  %69 = select i1 %66, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %68
  %70 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %1)
  %71 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %69)
  %72 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef %1, i32 noundef %70, ptr noundef %69, i32 noundef %71)
  %73 = getelementptr inbounds %"class.xalanc_1_10::NameSpace", ptr %62, i64 %60, i32 1
  %74 = select i1 %72, ptr %73, ptr %51
  br i1 %72, label %75, label %49, !llvm.loop !80

75:                                               ; preds = %53, %49, %26, %13
  %76 = phi ptr [ %14, %13 ], [ %27, %26 ], [ %51, %49 ], [ %74, %53 ]
  ret ptr %76
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1010XalanQName21getNamespaceForPrefixERKNS_10XalanDequeINS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS2_EEEERKNS_14XalanDOMStringE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #6 align 2 !prof !81 {
  %3 = load ptr, ptr @_ZN11xalanc_1_1011DOMServices11s_XMLStringE, align 8, !tbaa !47
  %4 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %3)
  br i1 %4, label %5, label %7, !prof !82

5:                                                ; preds = %2
  %6 = load ptr, ptr @_ZN11xalanc_1_1011DOMServices17s_XMLNamespaceURIE, align 8, !tbaa !47
  br label %51

7:                                                ; preds = %2
  %8 = load ptr, ptr @_ZN11xalanc_1_1011DOMServices14s_XMLNamespaceE, align 8, !tbaa !47
  %9 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %8)
  br i1 %9, label %10, label %12, !prof !82

10:                                               ; preds = %7
  %11 = load ptr, ptr @_ZN11xalanc_1_1011DOMServices23s_XMLNamespacePrefixURIE, align 8, !tbaa !47
  br label %51

12:                                               ; preds = %7
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.1", ptr %0, i64 0, i32 2, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !72
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %29, label %16, !prof !83

16:                                               ; preds = %12
  %17 = add i64 %14, -1
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.1", ptr %0, i64 0, i32 1
  %19 = load i64, ptr %18, align 8, !tbaa !74
  %20 = mul i64 %19, %17
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.1", ptr %0, i64 0, i32 2, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !76
  %23 = getelementptr ptr, ptr %22, i64 %14
  %24 = getelementptr ptr, ptr %23, i64 -1
  %25 = load ptr, ptr %24, align 8, !tbaa !47
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %25, i64 0, i32 1
  %27 = load i64, ptr %26, align 8, !tbaa !77
  %28 = add i64 %27, %20
  br label %29

29:                                               ; preds = %12, %16
  %30 = phi i64 [ %28, %16 ], [ 0, %12 ]
  br label %31

31:                                               ; preds = %35, %29
  %32 = phi i64 [ %30, %29 ], [ %38, %35 ]
  %33 = phi ptr [ null, %29 ], [ %50, %35 ]
  %34 = icmp eq i64 %32, 0
  br i1 %34, label %51, label %35, !prof !84

35:                                               ; preds = %31
  %36 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.1", ptr %0, i64 0, i32 1
  %37 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.1", ptr %0, i64 0, i32 2, i32 3
  %38 = add i64 %32, -1
  %39 = load i64, ptr %36, align 8, !tbaa !74
  %40 = udiv i64 %38, %39
  %41 = load ptr, ptr %37, align 8, !tbaa !76
  %42 = getelementptr inbounds ptr, ptr %41, i64 %40
  %43 = load ptr, ptr %42, align 8, !tbaa !47
  %44 = urem i64 %38, %39
  %45 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %43, i64 0, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !79
  %47 = getelementptr inbounds %"class.xalanc_1_10::NameSpace", ptr %46, i64 %44
  %48 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %47)
  %49 = getelementptr inbounds %"class.xalanc_1_10::NameSpace", ptr %46, i64 %44, i32 1
  %50 = select i1 %48, ptr %49, ptr %33, !prof !85
  br i1 %48, label %51, label %31, !prof !85, !llvm.loop !86

51:                                               ; preds = %35, %31, %10, %5
  %52 = phi ptr [ %6, %5 ], [ %11, %10 ], [ %33, %31 ], [ %50, %35 ]
  ret ptr %52
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1010XalanQName21getNamespaceForPrefixENS_18XalanDequeIteratorINS_29XalanDequeConstIteratorTraitsINS_10XalanDequeINS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS4_EEEEEENS3_IS7_NS5_IS7_EEEEEESB_RKNS_14XalanDOMStringE(ptr readnone %0, i64 %1, ptr readonly %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(36) %4) local_unnamed_addr #3 align 2 !prof !43 {
  %6 = icmp ne ptr %0, %2
  %7 = icmp ne i64 %1, %3
  %8 = select i1 %6, i1 true, i1 %7
  br i1 %8, label %9, label %29

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %2, i64 0, i32 1
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %2, i64 0, i32 2, i32 3
  br label %12

12:                                               ; preds = %9, %26
  %13 = phi i64 [ %14, %26 ], [ %3, %9 ]
  %14 = add i64 %13, -1
  %15 = load i64, ptr %10, align 8, !tbaa !58
  %16 = udiv i64 %14, %15
  %17 = load ptr, ptr %11, align 8, !tbaa !60
  %18 = getelementptr inbounds ptr, ptr %17, i64 %16
  %19 = load ptr, ptr %18, align 8, !tbaa !47
  %20 = urem i64 %14, %15
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %19, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !63
  %23 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.1", ptr %22, i64 %20
  %24 = tail call noundef ptr @_ZN11xalanc_1_1010XalanQName21getNamespaceForPrefixERKNS_10XalanDequeINS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS2_EEEERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(80) %23, ptr noundef nonnull align 8 dereferenceable(36) %4)
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %12
  %27 = icmp ne i64 %14, %1
  %28 = select i1 %6, i1 true, i1 %27
  br i1 %28, label %12, label %29, !llvm.loop !66

29:                                               ; preds = %26, %12, %5
  %30 = phi ptr [ null, %5 ], [ %24, %12 ], [ null, %26 ]
  ret ptr %30
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1010XalanQName21getNamespaceForPrefixERKNS_10XalanDequeINS1_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS3_IS5_EEEEPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %0, ptr noundef %1) local_unnamed_addr #3 align 2 !prof !43 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 2, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !54
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %2
  %7 = add i64 %4, -1
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !58
  %10 = mul i64 %9, %7
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 2, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !60
  %13 = getelementptr ptr, ptr %12, i64 %4
  %14 = getelementptr ptr, ptr %13, i64 -1
  %15 = load ptr, ptr %14, align 8, !tbaa !47
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %15, i64 0, i32 1
  %17 = load i64, ptr %16, align 8, !tbaa !61
  %18 = add i64 %17, %10
  br label %19

19:                                               ; preds = %2, %6
  %20 = phi i64 [ %18, %6 ], [ 0, %2 ]
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %41, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 1
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 2, i32 3
  br label %25

25:                                               ; preds = %22, %39
  %26 = phi i64 [ %27, %39 ], [ %20, %22 ]
  %27 = add i64 %26, -1
  %28 = load i64, ptr %23, align 8, !tbaa !58
  %29 = udiv i64 %27, %28
  %30 = load ptr, ptr %24, align 8, !tbaa !60
  %31 = getelementptr inbounds ptr, ptr %30, i64 %29
  %32 = load ptr, ptr %31, align 8, !tbaa !47
  %33 = urem i64 %27, %28
  %34 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %32, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !63
  %36 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.1", ptr %35, i64 %33
  %37 = tail call noundef ptr @_ZN11xalanc_1_1010XalanQName21getNamespaceForPrefixERKNS_10XalanDequeINS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS2_EEEEPKt(ptr noundef nonnull align 8 dereferenceable(80) %36, ptr noundef %1)
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %25
  %40 = icmp eq i64 %27, 0
  br i1 %40, label %41, label %25, !llvm.loop !87

41:                                               ; preds = %39, %25, %19
  %42 = phi ptr [ null, %19 ], [ %37, %25 ], [ null, %39 ]
  ret ptr %42
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1010XalanQName21getNamespaceForPrefixENS_18XalanDequeIteratorINS_29XalanDequeConstIteratorTraitsINS_10XalanDequeINS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS4_EEEEEENS3_IS7_NS5_IS7_EEEEEESB_PKt(ptr readnone %0, i64 %1, ptr readonly %2, i64 %3, ptr noundef %4) local_unnamed_addr #3 align 2 !prof !43 {
  %6 = icmp ne ptr %0, %2
  %7 = icmp ne i64 %1, %3
  %8 = select i1 %6, i1 true, i1 %7
  br i1 %8, label %9, label %29

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %2, i64 0, i32 1
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %2, i64 0, i32 2, i32 3
  br label %12

12:                                               ; preds = %9, %26
  %13 = phi i64 [ %14, %26 ], [ %3, %9 ]
  %14 = add i64 %13, -1
  %15 = load i64, ptr %10, align 8, !tbaa !58
  %16 = udiv i64 %14, %15
  %17 = load ptr, ptr %11, align 8, !tbaa !60
  %18 = getelementptr inbounds ptr, ptr %17, i64 %16
  %19 = load ptr, ptr %18, align 8, !tbaa !47
  %20 = urem i64 %14, %15
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %19, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !63
  %23 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.1", ptr %22, i64 %20
  %24 = tail call noundef ptr @_ZN11xalanc_1_1010XalanQName21getNamespaceForPrefixERKNS_10XalanDequeINS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS2_EEEEPKt(ptr noundef nonnull align 8 dereferenceable(80) %23, ptr noundef %4)
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %12
  %27 = icmp ne i64 %14, %1
  %28 = select i1 %6, i1 true, i1 %27
  br i1 %28, label %12, label %29, !llvm.loop !87

29:                                               ; preds = %26, %12, %5
  %30 = phi ptr [ null, %5 ], [ %24, %12 ], [ null, %26 ]
  ret ptr %30
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1010XalanQName21getPrefixForNamespaceERKNS_10XalanDequeINS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS2_EEEERKNS_14XalanDOMStringE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #3 align 2 !prof !43 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.1", ptr %0, i64 0, i32 2, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !72
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %2
  %7 = add i64 %4, -1
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.1", ptr %0, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !74
  %10 = mul i64 %9, %7
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.1", ptr %0, i64 0, i32 2, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !76
  %13 = getelementptr ptr, ptr %12, i64 %4
  %14 = getelementptr ptr, ptr %13, i64 -1
  %15 = load ptr, ptr %14, align 8, !tbaa !47
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %15, i64 0, i32 1
  %17 = load i64, ptr %16, align 8, !tbaa !77
  %18 = add i64 %17, %10
  br label %19

19:                                               ; preds = %2, %6
  %20 = phi i64 [ %18, %6 ], [ 0, %2 ]
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.1", ptr %0, i64 0, i32 1
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.1", ptr %0, i64 0, i32 2, i32 3
  br label %23

23:                                               ; preds = %27, %19
  %24 = phi i64 [ %20, %19 ], [ %28, %27 ]
  %25 = phi ptr [ null, %19 ], [ %40, %27 ]
  %26 = icmp eq i64 %24, 0
  br i1 %26, label %41, label %27

27:                                               ; preds = %23
  %28 = add i64 %24, -1
  %29 = load i64, ptr %21, align 8, !tbaa !74
  %30 = udiv i64 %28, %29
  %31 = load ptr, ptr %22, align 8, !tbaa !76
  %32 = getelementptr inbounds ptr, ptr %31, i64 %30
  %33 = load ptr, ptr %32, align 8, !tbaa !47
  %34 = urem i64 %28, %29
  %35 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %33, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !79
  %37 = getelementptr inbounds %"class.xalanc_1_10::NameSpace", ptr %36, i64 %34
  %38 = getelementptr inbounds %"class.xalanc_1_10::NameSpace", ptr %36, i64 %34, i32 1
  %39 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %38)
  %40 = select i1 %39, ptr %37, ptr %25
  br i1 %39, label %41, label %23, !llvm.loop !88

41:                                               ; preds = %27, %23
  %42 = phi ptr [ %25, %23 ], [ %40, %27 ]
  ret ptr %42
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1010XalanQName21getPrefixForNamespaceERKNS_10XalanDequeINS1_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS3_IS5_EEEERKNS_14XalanDOMStringE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #3 align 2 !prof !43 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 2, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !54
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %2
  %7 = add i64 %4, -1
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !58
  %10 = mul i64 %9, %7
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 2, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !60
  %13 = getelementptr ptr, ptr %12, i64 %4
  %14 = getelementptr ptr, ptr %13, i64 -1
  %15 = load ptr, ptr %14, align 8, !tbaa !47
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %15, i64 0, i32 1
  %17 = load i64, ptr %16, align 8, !tbaa !61
  %18 = add i64 %17, %10
  br label %19

19:                                               ; preds = %2, %6
  %20 = phi i64 [ %18, %6 ], [ 0, %2 ]
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %41, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 1
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 2, i32 3
  br label %25

25:                                               ; preds = %22, %39
  %26 = phi i64 [ %27, %39 ], [ %20, %22 ]
  %27 = add i64 %26, -1
  %28 = load i64, ptr %23, align 8, !tbaa !58
  %29 = udiv i64 %27, %28
  %30 = load ptr, ptr %24, align 8, !tbaa !60
  %31 = getelementptr inbounds ptr, ptr %30, i64 %29
  %32 = load ptr, ptr %31, align 8, !tbaa !47
  %33 = urem i64 %27, %28
  %34 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %32, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !63
  %36 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.1", ptr %35, i64 %33
  %37 = tail call noundef ptr @_ZN11xalanc_1_1010XalanQName21getPrefixForNamespaceERKNS_10XalanDequeINS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS2_EEEERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(80) %36, ptr noundef nonnull align 8 dereferenceable(36) %1)
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %25
  %40 = icmp eq i64 %27, 0
  br i1 %40, label %41, label %25, !llvm.loop !89

41:                                               ; preds = %39, %25, %19
  %42 = phi ptr [ null, %19 ], [ %37, %25 ], [ null, %39 ]
  ret ptr %42
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1010XalanQName21getPrefixForNamespaceENS_18XalanDequeIteratorINS_29XalanDequeConstIteratorTraitsINS_10XalanDequeINS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS4_EEEEEENS3_IS7_NS5_IS7_EEEEEESB_RKNS_14XalanDOMStringE(ptr readnone %0, i64 %1, ptr readonly %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(36) %4) local_unnamed_addr #3 align 2 !prof !43 {
  %6 = icmp ne ptr %0, %2
  %7 = icmp ne i64 %1, %3
  %8 = select i1 %6, i1 true, i1 %7
  br i1 %8, label %9, label %29

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %2, i64 0, i32 1
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %2, i64 0, i32 2, i32 3
  br label %12

12:                                               ; preds = %9, %26
  %13 = phi i64 [ %14, %26 ], [ %3, %9 ]
  %14 = add i64 %13, -1
  %15 = load i64, ptr %10, align 8, !tbaa !58
  %16 = udiv i64 %14, %15
  %17 = load ptr, ptr %11, align 8, !tbaa !60
  %18 = getelementptr inbounds ptr, ptr %17, i64 %16
  %19 = load ptr, ptr %18, align 8, !tbaa !47
  %20 = urem i64 %14, %15
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %19, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !63
  %23 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque.1", ptr %22, i64 %20
  %24 = tail call noundef ptr @_ZN11xalanc_1_1010XalanQName21getPrefixForNamespaceERKNS_10XalanDequeINS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS2_EEEERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(80) %23, ptr noundef nonnull align 8 dereferenceable(36) %4)
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %12
  %27 = icmp ne i64 %14, %1
  %28 = select i1 %6, i1 true, i1 %27
  br i1 %28, label %12, label %29, !llvm.loop !89

29:                                               ; preds = %26, %12, %5
  %30 = phi ptr [ null, %5 ], [ %24, %12 ], [ null, %26 ]
  ret ptr %30
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1010XalanQName13isValidNCNameERKNS_14XalanDOMStringE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(36) %0) local_unnamed_addr #8 align 2 !prof !90 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !70
  %4 = icmp eq i64 %3, 0
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8
  %7 = select i1 %4, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %6, !prof !91
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !92
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %22, !prof !95

11:                                               ; preds = %1, %11
  %12 = phi ptr [ %15, %11 ], [ %7, %1 ]
  %13 = load i16, ptr %12, align 2, !tbaa !96
  %14 = icmp eq i16 %13, 0
  %15 = getelementptr inbounds i16, ptr %12, i64 1
  br i1 %14, label %16, label %11, !llvm.loop !98

16:                                               ; preds = %11
  %17 = ptrtoint ptr %12 to i64
  %18 = ptrtoint ptr %7 to i64
  %19 = sub i64 %17, %18
  %20 = lshr exact i64 %19, 1
  %21 = trunc i64 %20 to i32
  br label %22

22:                                               ; preds = %16, %1
  %23 = phi i32 [ %21, %16 ], [ %9, %1 ]
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %51, label %25, !prof !95

25:                                               ; preds = %22
  %26 = load i16, ptr %7, align 2, !tbaa !96
  %27 = zext i16 %26 to i64
  %28 = getelementptr inbounds [0 x i8], ptr @_ZN11xalanc_1_1012XalanXMLChar15theUnicodeTableE, i64 0, i64 %27
  %29 = load i8, ptr %28, align 1, !tbaa !99
  %30 = add i8 %29, -1
  %31 = icmp ult i8 %30, 2
  %32 = icmp eq i16 %26, 95
  %33 = or i1 %32, %31
  br i1 %33, label %34, label %51, !prof !100

34:                                               ; preds = %25
  %35 = icmp eq i32 %23, 1
  br i1 %35, label %51, label %36, !prof !101

36:                                               ; preds = %34
  %37 = zext i32 %23 to i64
  br label %38

38:                                               ; preds = %48, %36
  %39 = phi i64 [ 1, %36 ], [ %49, %48 ]
  %40 = getelementptr inbounds i16, ptr %7, i64 %39
  %41 = load i16, ptr %40, align 2, !tbaa !96
  %42 = zext i16 %41 to i64
  %43 = getelementptr inbounds [0 x i8], ptr @_ZN11xalanc_1_1012XalanXMLChar15theUnicodeTableE, i64 0, i64 %42
  %44 = load i8, ptr %43, align 1, !tbaa !99
  %45 = add i8 %44, -1
  %46 = icmp ult i8 %45, 5
  br i1 %46, label %48, label %47, !prof !102

47:                                               ; preds = %38
  switch i16 %41, label %51 [
    i16 95, label %48
    i16 46, label %48
    i16 45, label %48
  ], !prof !103

48:                                               ; preds = %47, %47, %47, %38
  %49 = add nuw nsw i64 %39, 1
  %50 = icmp eq i64 %49, %37
  br i1 %50, label %51, label %38, !prof !104, !llvm.loop !105

51:                                               ; preds = %47, %48, %22, %25, %34
  %52 = phi i1 [ false, %22 ], [ false, %25 ], [ true, %34 ], [ true, %48 ], [ false, %47 ]
  ret i1 %52
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1010XalanQName13isValidNCNameEPKtj(ptr noundef %0, i32 noundef %1) local_unnamed_addr #8 align 2 !prof !43 {
  %3 = icmp eq i32 %1, -1
  br i1 %3, label %4, label %15, !prof !95

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %8, %4 ], [ %0, %2 ]
  %6 = load i16, ptr %5, align 2, !tbaa !96
  %7 = icmp eq i16 %6, 0
  %8 = getelementptr inbounds i16, ptr %5, i64 1
  br i1 %7, label %9, label %4, !llvm.loop !98

9:                                                ; preds = %4
  %10 = ptrtoint ptr %5 to i64
  %11 = ptrtoint ptr %0 to i64
  %12 = sub i64 %10, %11
  %13 = lshr exact i64 %12, 1
  %14 = trunc i64 %13 to i32
  br label %15

15:                                               ; preds = %9, %2
  %16 = phi i32 [ %14, %9 ], [ %1, %2 ]
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %44, label %18, !prof !95

18:                                               ; preds = %15
  %19 = load i16, ptr %0, align 2, !tbaa !96
  %20 = zext i16 %19 to i64
  %21 = getelementptr inbounds [0 x i8], ptr @_ZN11xalanc_1_1012XalanXMLChar15theUnicodeTableE, i64 0, i64 %20
  %22 = load i8, ptr %21, align 1, !tbaa !99
  %23 = add i8 %22, -1
  %24 = icmp ult i8 %23, 2
  %25 = icmp eq i16 %19, 95
  %26 = or i1 %25, %24
  br i1 %26, label %27, label %44, !prof !100

27:                                               ; preds = %18
  %28 = icmp eq i32 %16, 1
  br i1 %28, label %44, label %29, !prof !101

29:                                               ; preds = %27
  %30 = zext i32 %16 to i64
  br label %31

31:                                               ; preds = %29, %41
  %32 = phi i64 [ 1, %29 ], [ %42, %41 ]
  %33 = getelementptr inbounds i16, ptr %0, i64 %32
  %34 = load i16, ptr %33, align 2, !tbaa !96
  %35 = zext i16 %34 to i64
  %36 = getelementptr inbounds [0 x i8], ptr @_ZN11xalanc_1_1012XalanXMLChar15theUnicodeTableE, i64 0, i64 %35
  %37 = load i8, ptr %36, align 1, !tbaa !99
  %38 = add i8 %37, -1
  %39 = icmp ult i8 %38, 5
  br i1 %39, label %41, label %40, !prof !102

40:                                               ; preds = %31
  switch i16 %34, label %44 [
    i16 95, label %41
    i16 46, label %41
    i16 45, label %41
  ], !prof !103

41:                                               ; preds = %40, %40, %31, %40
  %42 = add nuw nsw i64 %32, 1
  %43 = icmp eq i64 %42, %30
  br i1 %43, label %44, label %31, !prof !104, !llvm.loop !105

44:                                               ; preds = %40, %41, %27, %18, %15
  %45 = phi i1 [ false, %15 ], [ false, %18 ], [ true, %27 ], [ true, %41 ], [ false, %40 ]
  ret i1 %45
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1010XalanQName12isValidQNameERKNS_14XalanDOMStringE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(36) %0) local_unnamed_addr #8 align 2 !prof !106 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !70
  %4 = icmp eq i64 %3, 0
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8
  %7 = select i1 %4, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %6, !prof !107
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !92
  %10 = tail call noundef zeroext i1 @_ZN11xalanc_1_1010XalanQName12isValidQNameEPKtj(ptr noundef %7, i32 noundef %9)
  ret i1 %10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1010XalanQName12isValidQNameEPKtj(ptr noundef %0, i32 noundef %1) local_unnamed_addr #8 align 2 !prof !106 {
  br label %3

3:                                                ; preds = %6, %2
  %4 = phi ptr [ %0, %2 ], [ %7, %6 ]
  %5 = load i16, ptr %4, align 2, !tbaa !96
  switch i16 %5, label %6 [
    i16 58, label %8
    i16 0, label %8
  ], !prof !108

6:                                                ; preds = %3
  %7 = getelementptr inbounds i16, ptr %4, i64 1
  br label %3, !llvm.loop !109

8:                                                ; preds = %3, %3
  %9 = ptrtoint ptr %4 to i64
  %10 = ptrtoint ptr %0 to i64
  %11 = sub i64 %9, %10
  %12 = lshr exact i64 %11, 1
  %13 = trunc i64 %12 to i32
  %14 = icmp eq i32 %13, %1
  br i1 %14, label %15, label %56, !prof !110

15:                                               ; preds = %8
  %16 = icmp eq i32 %1, -1
  br i1 %16, label %17, label %27, !prof !95

17:                                               ; preds = %15, %17
  %18 = phi ptr [ %21, %17 ], [ %0, %15 ]
  %19 = load i16, ptr %18, align 2, !tbaa !96
  %20 = icmp eq i16 %19, 0
  %21 = getelementptr inbounds i16, ptr %18, i64 1
  br i1 %20, label %22, label %17, !llvm.loop !98

22:                                               ; preds = %17
  %23 = ptrtoint ptr %18 to i64
  %24 = sub i64 %23, %10
  %25 = lshr exact i64 %24, 1
  %26 = trunc i64 %25 to i32
  br label %27

27:                                               ; preds = %22, %15
  %28 = phi i32 [ %26, %22 ], [ %1, %15 ]
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %65, label %30, !prof !95

30:                                               ; preds = %27
  %31 = load i16, ptr %0, align 2, !tbaa !96
  %32 = zext i16 %31 to i64
  %33 = getelementptr inbounds [0 x i8], ptr @_ZN11xalanc_1_1012XalanXMLChar15theUnicodeTableE, i64 0, i64 %32
  %34 = load i8, ptr %33, align 1, !tbaa !99
  %35 = add i8 %34, -1
  %36 = icmp ult i8 %35, 2
  %37 = icmp eq i16 %31, 95
  %38 = or i1 %37, %36
  br i1 %38, label %39, label %65, !prof !100

39:                                               ; preds = %30
  %40 = icmp eq i32 %28, 1
  br i1 %40, label %65, label %41, !prof !101

41:                                               ; preds = %39
  %42 = zext i32 %28 to i64
  br label %43

43:                                               ; preds = %53, %41
  %44 = phi i64 [ 1, %41 ], [ %54, %53 ]
  %45 = getelementptr inbounds i16, ptr %0, i64 %44
  %46 = load i16, ptr %45, align 2, !tbaa !96
  %47 = zext i16 %46 to i64
  %48 = getelementptr inbounds [0 x i8], ptr @_ZN11xalanc_1_1012XalanXMLChar15theUnicodeTableE, i64 0, i64 %47
  %49 = load i8, ptr %48, align 1, !tbaa !99
  %50 = add i8 %49, -1
  %51 = icmp ult i8 %50, 5
  br i1 %51, label %53, label %52, !prof !102

52:                                               ; preds = %43
  switch i16 %46, label %65 [
    i16 95, label %53
    i16 46, label %53
    i16 45, label %53
  ], !prof !103

53:                                               ; preds = %52, %52, %52, %43
  %54 = add nuw nsw i64 %44, 1
  %55 = icmp eq i64 %54, %42
  br i1 %55, label %65, label %43, !prof !104, !llvm.loop !105

56:                                               ; preds = %8
  %57 = tail call noundef zeroext i1 @_ZN11xalanc_1_1010XalanQName13isValidNCNameEPKtj(ptr noundef %0, i32 noundef %13)
  br i1 %57, label %58, label %65

58:                                               ; preds = %56
  %59 = and i64 %12, 4294967295
  %60 = getelementptr inbounds i16, ptr %0, i64 %59
  %61 = getelementptr inbounds i16, ptr %60, i64 1
  %62 = xor i32 %13, -1
  %63 = add i32 %62, %1
  %64 = tail call noundef zeroext i1 @_ZN11xalanc_1_1010XalanQName13isValidNCNameEPKtj(ptr noundef nonnull %61, i32 noundef %63)
  br label %65

65:                                               ; preds = %53, %52, %39, %30, %27, %56, %58
  %66 = phi i1 [ false, %56 ], [ %64, %58 ], [ false, %27 ], [ false, %30 ], [ true, %39 ], [ true, %53 ], [ false, %52 ]
  ret i1 %66
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1010XalanQName21InvalidQNameExceptionC2EPKtjRKNS_14XalanDOMStringEiiRS4_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(36) %3, i32 noundef %4, i32 noundef %5, ptr noundef nonnull align 8 dereferenceable(36) %6) unnamed_addr #3 align 2 !prof !43 {
  %8 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef %1, i32 noundef %2)
  %9 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(36) %6, i32 noundef 60)
  %10 = load ptr, ptr %6, align 8, !tbaa !111
  tail call void @_ZN11xalanc_1_1012XSLExceptionC2ERKNS_14XalanDOMStringES3_iiRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(36) %9, ptr noundef nonnull align 8 dereferenceable(36) %3, i32 noundef %4, i32 noundef %5, ptr noundef nonnull align 8 dereferenceable(8) %10)
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xalanc_1_1010XalanQName21InvalidQNameExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !44
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1010XalanQName21InvalidQNameException6formatEPKtjRNS_14XalanDOMStringE(ptr noundef %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(36) %2) local_unnamed_addr #3 align 2 !prof !43 {
  %4 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef %0, i32 noundef %1)
  %5 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(36) %2, i32 noundef 60)
  ret ptr %5
}

declare void @_ZN11xalanc_1_1012XSLExceptionC2ERKNS_14XalanDOMStringES3_iiRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1010XalanQName21InvalidQNameExceptionC2ERKN11xercesc_2_77LocatorEPKtjRNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(36) %4) unnamed_addr #3 align 2 !prof !43 {
  %6 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef %2, i32 noundef %3)
  %7 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(36) %4, i32 noundef 60)
  %8 = load ptr, ptr %4, align 8, !tbaa !111
  tail call void @_ZN11xalanc_1_1012XSLExceptionC2ERKN11xercesc_2_77LocatorERKNS_14XalanDOMStringERNS1_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef nonnull align 8 dereferenceable(8) %8)
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xalanc_1_1010XalanQName21InvalidQNameExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !44
  ret void
}

declare void @_ZN11xalanc_1_1012XSLExceptionC2ERKN11xercesc_2_77LocatorERKNS_14XalanDOMStringERNS1_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1010XalanQName21InvalidQNameExceptionC2EPKtjRNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(36) %3) unnamed_addr #3 align 2 !prof !43 {
  %5 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef %1, i32 noundef %2)
  %6 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(36) %3, i32 noundef 60)
  %7 = load ptr, ptr %3, align 8, !tbaa !111
  tail call void @_ZN11xalanc_1_1012XSLExceptionC2ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef nonnull align 8 dereferenceable(8) %7)
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xalanc_1_1010XalanQName21InvalidQNameExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !44
  ret void
}

declare void @_ZN11xalanc_1_1012XSLExceptionC2ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1012XSLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(104)) unnamed_addr #4

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1010XalanQName21InvalidQNameExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #1 align 2 !prof !43 {
  tail call void @_ZN11xalanc_1_1012XSLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) #12
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1010XalanQName21InvalidQNameExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #1 align 2 !prof !43 {
  tail call void @_ZN11xalanc_1_1012XSLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) #12
  tail call void @_ZdlPv(ptr noundef %0) #13
  ret void
}

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i32 noundef) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1010XalanQName21InvalidQNameException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #1 comdat align 2 !prof !43 {
  ret ptr @_ZN11xalanc_1_1010XalanQName21InvalidQNameException6m_typeE
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 !prof !112 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !113
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !114

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !115
  %8 = load ptr, ptr %0, align 8, !tbaa !111
  %9 = load ptr, ptr %8, align 8, !tbaa !44
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %7)
          to label %12 unwind label %13, !prof !116

12:                                               ; preds = %5, %1
  ret void

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #14
  unreachable
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #10 comdat !prof !43 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #12
  tail call void @_ZSt9terminatev() #14
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

declare noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

declare noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef) local_unnamed_addr #0

declare noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #0

; Function Attrs: cold uwtable
define internal void @_GLOBAL__sub_I_XalanQName.cpp() #11 section ".text.startup" !prof !117 !PGOFuncName !118 {
  %1 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv()
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_1010XalanQName13s_emptyStringE, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %2 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr nonnull @_ZN11xalanc_1_1010XalanQName13s_emptyStringE, ptr nonnull @__dso_handle) #12
  ret void
}

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind }
attributes #13 = { builtin nounwind }
attributes #14 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!42}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41}
!35 = !{ptr @_ZN11xalanc_1_1010XalanQName21getNamespaceForPrefixERKNS_10XalanDequeINS1_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS3_IS5_EEEERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1010XalanQName21getNamespaceForPrefixERKNS_10XalanDequeINS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS2_EEEERKNS_14XalanDOMStringE, i64 4048}
!36 = !{ptr @_ZN11xalanc_1_1010XalanQName21getNamespaceForPrefixERKNS_10XalanDequeINS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS2_EEEERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_, i64 9492}
!37 = !{ptr @_ZN11xalanc_1_1010XalanQName12isValidQNameERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1010XalanQName12isValidQNameEPKtj, i64 40062}
!38 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @__clang_call_terminate, i64 40}
!39 = !{ptr @_GLOBAL__sub_I_XalanQName.cpp, ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv, i64 1}
!40 = !{ptr @_GLOBAL__sub_I_XalanQName.cpp, ptr @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE, i64 1}
!41 = !{ptr @_GLOBAL__sub_I_XalanQName.cpp, ptr @__cxa_atexit, i64 1}
!42 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!43 = !{!"function_entry_count", i64 0}
!44 = !{!45, !45, i64 0}
!45 = !{!"vtable pointer", !46, i64 0}
!46 = !{!"Simple C++ TBAA"}
!47 = !{!48, !48, i64 0}
!48 = !{!"any pointer", !49, i64 0}
!49 = !{!"omnipotent char", !46, i64 0}
!50 = !{!51, !48, i64 8}
!51 = !{!"_ZTSN11xalanc_1_1010XalanQName19PrefixResolverProxyE", !52, i64 0, !48, i64 8, !48, i64 16}
!52 = !{!"_ZTSN11xalanc_1_1014PrefixResolverE"}
!53 = !{!"function_entry_count", i64 799}
!54 = !{!55, !56, i64 8}
!55 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS0_INS_10XalanDequeINS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS3_IS5_EEEENS_31MemoryManagedConstructionTraitsIS8_EEEE", !48, i64 0, !56, i64 8, !56, i64 16, !48, i64 24}
!56 = !{!"long", !49, i64 0}
!57 = !{!"branch_weights", i32 0, i32 799}
!58 = !{!59, !56, i64 8}
!59 = !{!"_ZTSN11xalanc_1_1010XalanDequeINS0_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS1_EEEENS2_IS4_EEEE", !48, i64 0, !56, i64 8, !55, i64 16, !55, i64 48}
!60 = !{!55, !48, i64 24}
!61 = !{!62, !56, i64 8}
!62 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_10XalanDequeINS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS3_IS5_EEEE", !48, i64 0, !56, i64 8, !56, i64 16, !48, i64 24}
!63 = !{!62, !48, i64 24}
!64 = !{!"branch_weights", i32 3681, i32 367}
!65 = !{!"branch_weights", i32 432, i32 3249}
!66 = distinct !{!66, !67, !68}
!67 = !{!"llvm.loop.mustprogress"}
!68 = !{!"llvm.loop.unroll.disable"}
!69 = !{!51, !48, i64 16}
!70 = !{!71, !56, i64 8}
!71 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !48, i64 0, !56, i64 8, !56, i64 16, !48, i64 24}
!72 = !{!73, !56, i64 8}
!73 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS0_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS1_EEEENS_31MemoryManagedConstructionTraitsIS5_EEEE", !48, i64 0, !56, i64 8, !56, i64 16, !48, i64 24}
!74 = !{!75, !56, i64 8}
!75 = !{!"_ZTSN11xalanc_1_1010XalanDequeINS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS1_EEEE", !48, i64 0, !56, i64 8, !73, i64 16, !73, i64 48}
!76 = !{!73, !48, i64 24}
!77 = !{!78, !56, i64 8}
!78 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS1_EEEE", !48, i64 0, !56, i64 8, !56, i64 16, !48, i64 24}
!79 = !{!78, !48, i64 24}
!80 = distinct !{!80, !67, !68}
!81 = !{!"function_entry_count", i64 4048}
!82 = !{!"branch_weights", i32 0, i32 4048}
!83 = !{!"branch_weights", i32 3249, i32 799}
!84 = !{!"branch_weights", i32 3681, i32 1396}
!85 = !{!"branch_weights", i32 367, i32 1029}
!86 = distinct !{!86, !67, !68}
!87 = distinct !{!87, !67, !68}
!88 = distinct !{!88, !67, !68}
!89 = distinct !{!89, !67, !68}
!90 = !{!"function_entry_count", i64 630}
!91 = !{!"branch_weights", i32 0, i32 630}
!92 = !{!93, !94, i64 32}
!93 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !71, i64 0, !94, i64 32}
!94 = !{!"int", !49, i64 0}
!95 = !{!"branch_weights", i32 0, i32 40692}
!96 = !{!97, !97, i64 0}
!97 = !{!"short", !49, i64 0}
!98 = distinct !{!98, !67, !68}
!99 = !{!49, !49, i64 0}
!100 = !{!"branch_weights", i32 40692, i32 0}
!101 = !{!"branch_weights", i32 40692, i32 1655798172}
!102 = !{!"branch_weights", i32 123218, i32 11}
!103 = !{!"branch_weights", i32 0, i32 10, i32 0, i32 1}
!104 = !{!"branch_weights", i32 40691, i32 82538}
!105 = distinct !{!105, !67, !68}
!106 = !{!"function_entry_count", i64 40062}
!107 = !{!"branch_weights", i32 0, i32 40062}
!108 = !{!"branch_weights", i32 160248, i32 0, i32 40062}
!109 = distinct !{!109, !67, !68}
!110 = !{!"branch_weights", i32 40062, i32 0}
!111 = !{!71, !48, i64 0}
!112 = !{!"function_entry_count", i64 42470003}
!113 = !{!71, !56, i64 16}
!114 = !{!"branch_weights", i32 52000, i32 42418003}
!115 = !{!71, !48, i64 24}
!116 = !{!"VP", i32 0, i64 42418003, i64 -7405368087501025645, i64 42418003}
!117 = !{!"function_entry_count", i64 1}
!118 = !{!"XalanQName.cpp;_GLOBAL__sub_I_XalanQName.cpp"}
