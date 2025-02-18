; ModuleID = 'DOMNodeIteratorImpl.cpp'
source_filename = "DOMNodeIteratorImpl.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::DOMNodeIteratorImpl" = type <{ %"class.xercesc_2_7::DOMNodeIterator", ptr, ptr, i64, ptr, i8, i8, [6 x i8], ptr, i8, [7 x i8] }>
%"class.xercesc_2_7::DOMNodeIterator" = type { ptr }
%"class.xercesc_2_7::DOMDocumentImpl" = type <{ %"class.xercesc_2_7::DOMDocument", %"class.xercesc_2_7::DOMNodeImpl", %"class.xercesc_2_7::DOMParentNode", ptr, ptr, ptr, i8, [7 x i8], ptr, ptr, ptr, %"class.xercesc_2_7::XMLStringPool", ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, [3 x i8] }>
%"class.xercesc_2_7::DOMDocument" = type { %"class.xercesc_2_7::DOMDocumentRange", %"class.xercesc_2_7::DOMXPathEvaluator", %"class.xercesc_2_7::DOMDocumentTraversal", %"class.xercesc_2_7::DOMNode" }
%"class.xercesc_2_7::DOMDocumentRange" = type { ptr }
%"class.xercesc_2_7::DOMXPathEvaluator" = type { ptr }
%"class.xercesc_2_7::DOMDocumentTraversal" = type { ptr }
%"class.xercesc_2_7::DOMNode" = type { ptr }
%"class.xercesc_2_7::DOMNodeImpl" = type <{ ptr, i16, [6 x i8] }>
%"class.xercesc_2_7::DOMParentNode" = type { ptr, ptr, %"class.xercesc_2_7::DOMNodeListImpl" }
%"class.xercesc_2_7::DOMNodeListImpl" = type { %"class.xercesc_2_7::DOMNodeList", ptr }
%"class.xercesc_2_7::DOMNodeList" = type { ptr }
%"class.xercesc_2_7::XMLStringPool" = type { %"class.xercesc_2_7::XSerializable", ptr, ptr, ptr, i32, i32 }
%"class.xercesc_2_7::XSerializable" = type { ptr }

$_ZTSN11xercesc_2_715DOMNodeIteratorE = comdat any

$_ZTIN11xercesc_2_715DOMNodeIteratorE = comdat any

@_ZTVN11xercesc_2_719DOMNodeIteratorImplE = dso_local unnamed_addr constant { [12 x ptr] } { [12 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_719DOMNodeIteratorImplE, ptr @_ZN11xercesc_2_719DOMNodeIteratorImplD2Ev, ptr @_ZN11xercesc_2_719DOMNodeIteratorImplD0Ev, ptr @_ZN11xercesc_2_719DOMNodeIteratorImpl7getRootEv, ptr @_ZN11xercesc_2_719DOMNodeIteratorImpl13getWhatToShowEv, ptr @_ZN11xercesc_2_719DOMNodeIteratorImpl9getFilterEv, ptr @_ZN11xercesc_2_719DOMNodeIteratorImpl25getExpandEntityReferencesEv, ptr @_ZN11xercesc_2_719DOMNodeIteratorImpl8nextNodeEv, ptr @_ZN11xercesc_2_719DOMNodeIteratorImpl12previousNodeEv, ptr @_ZN11xercesc_2_719DOMNodeIteratorImpl6detachEv, ptr @_ZN11xercesc_2_719DOMNodeIteratorImpl7releaseEv] }, align 8
@_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE = external local_unnamed_addr global ptr, align 8
@_ZTIN11xercesc_2_712DOMExceptionE = external constant ptr
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_719DOMNodeIteratorImplE = dso_local constant [37 x i8] c"N11xercesc_2_719DOMNodeIteratorImplE\00", align 1
@_ZTSN11xercesc_2_715DOMNodeIteratorE = linkonce_odr dso_local constant [33 x i8] c"N11xercesc_2_715DOMNodeIteratorE\00", comdat, align 1
@_ZTIN11xercesc_2_715DOMNodeIteratorE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_715DOMNodeIteratorE }, comdat, align 8
@_ZTIN11xercesc_2_719DOMNodeIteratorImplE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_719DOMNodeIteratorImplE, ptr @_ZTIN11xercesc_2_715DOMNodeIteratorE }, align 8

@_ZN11xercesc_2_719DOMNodeIteratorImplC1EPNS_11DOMDocumentEPNS_7DOMNodeEmPNS_13DOMNodeFilterEb = dso_local unnamed_addr alias void (ptr, ptr, ptr, i64, ptr, i1), ptr @_ZN11xercesc_2_719DOMNodeIteratorImplC2EPNS_11DOMDocumentEPNS_7DOMNodeEmPNS_13DOMNodeFilterEb
@_ZN11xercesc_2_719DOMNodeIteratorImplC1ERKS0_ = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_719DOMNodeIteratorImplC2ERKS0_
@_ZN11xercesc_2_719DOMNodeIteratorImplD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_719DOMNodeIteratorImplD2Ev

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xercesc_2_719DOMNodeIteratorImplC2EPNS_11DOMDocumentEPNS_7DOMNodeEmPNS_13DOMNodeFilterEb(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(57) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i1 noundef zeroext %5) unnamed_addr #1 align 2 !prof !34 {
  %7 = zext i1 %5 to i8
  store ptr getelementptr inbounds ({ [12 x ptr] }, ptr @_ZTVN11xercesc_2_719DOMNodeIteratorImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %0, i64 0, i32 1
  store ptr %2, ptr %8, align 8, !tbaa !38
  %9 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %0, i64 0, i32 2
  store ptr %1, ptr %9, align 8, !tbaa !45
  %10 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %0, i64 0, i32 3
  store i64 %3, ptr %10, align 8, !tbaa !46
  %11 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %0, i64 0, i32 4
  store ptr %4, ptr %11, align 8, !tbaa !47
  %12 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %0, i64 0, i32 5
  store i8 %7, ptr %12, align 8, !tbaa !48
  %13 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %0, i64 0, i32 6
  store i8 0, ptr %13, align 1, !tbaa !49
  %14 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %0, i64 0, i32 8
  store ptr null, ptr %14, align 8, !tbaa !50
  %15 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %0, i64 0, i32 9
  store i8 1, ptr %15, align 8, !tbaa !51
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN11xercesc_2_719DOMNodeIteratorImplC2ERKS0_(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(57) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(57) %1) unnamed_addr #2 align 2 !prof !34 {
  store ptr getelementptr inbounds ({ [12 x ptr] }, ptr @_ZTVN11xercesc_2_719DOMNodeIteratorImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !38
  store ptr %5, ptr %3, align 8, !tbaa !38
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %0, i64 0, i32 2
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !45
  store ptr %8, ptr %6, align 8, !tbaa !45
  %9 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %0, i64 0, i32 3
  %10 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %1, i64 0, i32 3
  %11 = load i64, ptr %10, align 8, !tbaa !46
  store i64 %11, ptr %9, align 8, !tbaa !46
  %12 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %0, i64 0, i32 4
  %13 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %1, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !47
  store ptr %14, ptr %12, align 8, !tbaa !47
  %15 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %0, i64 0, i32 5
  %16 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %1, i64 0, i32 5
  %17 = load i8, ptr %16, align 8, !tbaa !48, !range !52, !noundef !53
  store i8 %17, ptr %15, align 8, !tbaa !48
  %18 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %0, i64 0, i32 6
  %19 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %1, i64 0, i32 6
  %20 = load i8, ptr %19, align 1, !tbaa !49, !range !52, !noundef !53
  store i8 %20, ptr %18, align 1, !tbaa !49
  %21 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %0, i64 0, i32 8
  %22 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %1, i64 0, i32 8
  %23 = load ptr, ptr %22, align 8, !tbaa !50
  store ptr %23, ptr %21, align 8, !tbaa !50
  %24 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %0, i64 0, i32 9
  %25 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %1, i64 0, i32 9
  %26 = load i8, ptr %25, align 8, !tbaa !51, !range !52, !noundef !53
  store i8 %26, ptr %24, align 8, !tbaa !51
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef nonnull align 8 dereferenceable(57) ptr @_ZN11xercesc_2_719DOMNodeIteratorImplaSERKS0_(ptr noundef nonnull returned writeonly align 8 dereferenceable(57) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(57) %1) local_unnamed_addr #2 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !38
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %0, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !38
  %6 = load ptr, ptr %3, align 8, !tbaa !38
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %0, i64 0, i32 8
  store ptr %6, ptr %7, align 8, !tbaa !50
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %1, i64 0, i32 3
  %9 = load i64, ptr %8, align 8, !tbaa !46
  %10 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %0, i64 0, i32 3
  store i64 %9, ptr %10, align 8, !tbaa !46
  %11 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %1, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !47
  %13 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %0, i64 0, i32 4
  store ptr %12, ptr %13, align 8, !tbaa !47
  %14 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %1, i64 0, i32 9
  %15 = load i8, ptr %14, align 8, !tbaa !51, !range !52, !noundef !53
  %16 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %0, i64 0, i32 9
  store i8 %15, ptr %16, align 8, !tbaa !51
  %17 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %1, i64 0, i32 6
  %18 = load i8, ptr %17, align 1, !tbaa !49, !range !52, !noundef !53
  %19 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %0, i64 0, i32 6
  store i8 %18, ptr %19, align 1, !tbaa !49
  %20 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %1, i64 0, i32 5
  %21 = load i8, ptr %20, align 8, !tbaa !48, !range !52, !noundef !53
  %22 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %0, i64 0, i32 5
  store i8 %21, ptr %22, align 8, !tbaa !48
  %23 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %1, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !45
  %25 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %0, i64 0, i32 2
  store ptr %24, ptr %25, align 8, !tbaa !45
  ret ptr %0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xercesc_2_719DOMNodeIteratorImplD2Ev(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(57) %0) unnamed_addr #1 align 2 !prof !34 {
  store ptr getelementptr inbounds ({ [12 x ptr] }, ptr @_ZTVN11xercesc_2_719DOMNodeIteratorImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %0, i64 0, i32 6
  store i8 0, ptr %2, align 1, !tbaa !49
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_719DOMNodeIteratorImplD0Ev(ptr noundef nonnull align 8 dereferenceable(57) %0) unnamed_addr #3 align 2 !prof !34 {
  store ptr getelementptr inbounds ({ [12 x ptr] }, ptr @_ZTVN11xercesc_2_719DOMNodeIteratorImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %0, i64 0, i32 6
  store i8 0, ptr %2, align 1, !tbaa !49
  tail call void @_ZdlPv(ptr noundef %0) #8
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_719DOMNodeIteratorImpl6detachEv(ptr noundef nonnull align 8 dereferenceable(57) %0) unnamed_addr #4 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %0, i64 0, i32 6
  store i8 1, ptr %2, align 1, !tbaa !49
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = load ptr, ptr %4, align 8, !tbaa !35
  %6 = getelementptr inbounds ptr, ptr %5, i64 85
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(293) %4, ptr noundef nonnull %0)
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZN11xercesc_2_719DOMNodeIteratorImpl7getRootEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(57) %0) unnamed_addr #5 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !38
  ret ptr %3
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i64 @_ZN11xercesc_2_719DOMNodeIteratorImpl13getWhatToShowEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(57) %0) unnamed_addr #5 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %0, i64 0, i32 3
  %3 = load i64, ptr %2, align 8, !tbaa !46
  ret i64 %3
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZN11xercesc_2_719DOMNodeIteratorImpl9getFilterEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(57) %0) unnamed_addr #5 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  ret ptr %3
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_719DOMNodeIteratorImpl25getExpandEntityReferencesEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(57) %0) unnamed_addr #5 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %0, i64 0, i32 5
  %3 = load i8, ptr %2, align 8, !tbaa !48, !range !52, !noundef !53
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_719DOMNodeIteratorImpl8nextNodeEv(ptr nocapture noundef nonnull align 8 dereferenceable(57) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %0, i64 0, i32 6
  %3 = load i8, ptr %2, align 1, !tbaa !49, !range !52, !noundef !53
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %16, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @__cxa_allocate_exception(i64 40) #9
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !45
  %9 = icmp eq ptr %8, null
  %10 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %8, i64 0, i32 25
  %11 = select i1 %9, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, ptr %10
  %12 = load ptr, ptr %11, align 8, !tbaa !54
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %6, i16 noundef signext 11, ptr noundef null, ptr noundef %12)
          to label %13 unwind label %14

13:                                               ; preds = %5
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #10
  unreachable

14:                                               ; preds = %5
  %15 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %6) #9
  resume { ptr, i32 } %15

16:                                               ; preds = %1
  %17 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %0, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !38
  %19 = icmp eq ptr %18, null
  br i1 %19, label %42, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %0, i64 0, i32 8
  %22 = load ptr, ptr %21, align 8, !tbaa !50
  %23 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %0, i64 0, i32 9
  br label %24

24:                                               ; preds = %39, %20
  %25 = phi ptr [ %22, %20 ], [ %37, %39 ]
  %26 = phi i1 [ false, %20 ], [ %40, %39 ]
  br i1 %26, label %42, label %27

27:                                               ; preds = %24
  %28 = load i8, ptr %23, align 8, !tbaa !51, !range !52, !noundef !53
  %29 = icmp eq i8 %28, 0
  %30 = icmp ne ptr %25, null
  %31 = select i1 %29, i1 %30, i1 false
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load ptr, ptr %21, align 8, !tbaa !50
  br label %36

34:                                               ; preds = %27
  %35 = tail call noundef ptr @_ZN11xercesc_2_719DOMNodeIteratorImpl8nextNodeEPNS_7DOMNodeEb(ptr noundef nonnull align 8 dereferenceable(57) %0, ptr noundef %25, i1 noundef zeroext true)
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi ptr [ %33, %32 ], [ %35, %34 ]
  store i8 1, ptr %23, align 8, !tbaa !51
  %38 = icmp eq ptr %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = tail call noundef zeroext i1 @_ZN11xercesc_2_719DOMNodeIteratorImpl10acceptNodeEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(57) %0, ptr noundef nonnull %37)
  br i1 %40, label %41, label %24, !llvm.loop !55

41:                                               ; preds = %39
  store ptr %37, ptr %21, align 8, !tbaa !50
  br label %42

42:                                               ; preds = %36, %24, %41, %16
  %43 = phi ptr [ null, %16 ], [ %37, %41 ], [ null, %24 ], [ null, %36 ]
  ret ptr %43
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare i32 @__gxx_personality_v0(...)

declare void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33), i16 noundef signext, ptr noundef, ptr noundef) unnamed_addr #6

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712DOMExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(33)) unnamed_addr #7

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_719DOMNodeIteratorImpl8nextNodeEPNS_7DOMNodeEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(57) %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %0, i64 0, i32 6
  %5 = load i8, ptr %4, align 1, !tbaa !49, !range !52, !noundef !53
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %18, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 40) #9
  %9 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !45
  %11 = icmp eq ptr %10, null
  %12 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %10, i64 0, i32 25
  %13 = select i1 %11, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, ptr %12
  %14 = load ptr, ptr %13, align 8, !tbaa !54
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %8, i16 noundef signext 11, ptr noundef null, ptr noundef %14)
          to label %15 unwind label %16

15:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #10
  unreachable

16:                                               ; preds = %7
  %17 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #9
  resume { ptr, i32 } %17

18:                                               ; preds = %3
  %19 = icmp eq ptr %1, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %18
  %21 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %0, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !38
  br label %90

23:                                               ; preds = %18
  br i1 %2, label %24, label %44

24:                                               ; preds = %23
  %25 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %0, i64 0, i32 5
  %26 = load i8, ptr %25, align 8, !tbaa !48, !range !52, !noundef !53
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = load ptr, ptr %1, align 8, !tbaa !35
  %30 = getelementptr inbounds ptr, ptr %29, i64 4
  %31 = load ptr, ptr %30, align 8
  %32 = tail call noundef signext i16 %31(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %33 = icmp eq i16 %32, 5
  br i1 %33, label %44, label %34

34:                                               ; preds = %28, %24
  %35 = load ptr, ptr %1, align 8, !tbaa !35
  %36 = getelementptr inbounds ptr, ptr %35, i64 18
  %37 = load ptr, ptr %36, align 8
  %38 = tail call noundef zeroext i1 %37(ptr noundef nonnull align 8 dereferenceable(8) %1)
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load ptr, ptr %1, align 8, !tbaa !35
  %41 = getelementptr inbounds ptr, ptr %40, i64 7
  %42 = load ptr, ptr %41, align 8
  %43 = tail call noundef ptr %42(ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %90

44:                                               ; preds = %28, %34, %23
  %45 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %0, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !38
  %47 = icmp eq ptr %46, %1
  br i1 %47, label %89, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %1, align 8, !tbaa !35
  %50 = getelementptr inbounds ptr, ptr %49, i64 10
  %51 = load ptr, ptr %50, align 8
  %52 = tail call noundef ptr %51(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %90

54:                                               ; preds = %48
  %55 = load ptr, ptr %1, align 8, !tbaa !35
  %56 = getelementptr inbounds ptr, ptr %55, i64 5
  %57 = load ptr, ptr %56, align 8
  %58 = tail call noundef ptr %57(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %59 = icmp eq ptr %58, null
  %60 = load ptr, ptr %45, align 8
  %61 = icmp eq ptr %58, %60
  %62 = select i1 %59, i1 true, i1 %61
  br i1 %62, label %86, label %63

63:                                               ; preds = %54
  %64 = load ptr, ptr %58, align 8, !tbaa !35
  %65 = getelementptr inbounds ptr, ptr %64, i64 10
  %66 = load ptr, ptr %65, align 8
  %67 = tail call noundef ptr %66(ptr noundef nonnull align 8 dereferenceable(8) %58)
  %68 = icmp eq ptr %67, null
  br i1 %68, label %75, label %86

69:                                               ; preds = %75
  %70 = load ptr, ptr %81, align 8, !tbaa !35
  %71 = getelementptr inbounds ptr, ptr %70, i64 10
  %72 = load ptr, ptr %71, align 8
  %73 = tail call noundef ptr %72(ptr noundef nonnull align 8 dereferenceable(8) %81)
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %86, !llvm.loop !58

75:                                               ; preds = %63, %69
  %76 = phi ptr [ %73, %69 ], [ %67, %63 ]
  %77 = phi ptr [ %81, %69 ], [ %58, %63 ]
  %78 = load ptr, ptr %77, align 8, !tbaa !35
  %79 = getelementptr inbounds ptr, ptr %78, i64 5
  %80 = load ptr, ptr %79, align 8
  %81 = tail call noundef ptr %80(ptr noundef nonnull align 8 dereferenceable(8) %77)
  %82 = icmp eq ptr %81, null
  %83 = load ptr, ptr %45, align 8
  %84 = icmp eq ptr %81, %83
  %85 = select i1 %82, i1 true, i1 %84
  br i1 %85, label %86, label %69, !llvm.loop !58

86:                                               ; preds = %75, %69, %63, %54
  %87 = phi i1 [ %62, %54 ], [ %62, %63 ], [ %85, %69 ], [ %85, %75 ]
  %88 = phi ptr [ undef, %54 ], [ %67, %63 ], [ %73, %69 ], [ %76, %75 ]
  br i1 %87, label %89, label %90

89:                                               ; preds = %86, %44
  br label %90

90:                                               ; preds = %39, %89, %86, %48, %20
  %91 = phi ptr [ %22, %20 ], [ %43, %39 ], [ null, %89 ], [ %88, %86 ], [ %52, %48 ]
  ret ptr %91
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_719DOMNodeIteratorImpl10acceptNodeEPNS_7DOMNodeE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(57) %0, ptr noundef %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %0, i64 0, i32 6
  %4 = load i8, ptr %3, align 1, !tbaa !49, !range !52, !noundef !53
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %17, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 40) #9
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !45
  %10 = icmp eq ptr %9, null
  %11 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %9, i64 0, i32 25
  %12 = select i1 %10, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, ptr %11
  %13 = load ptr, ptr %12, align 8, !tbaa !54
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %7, i16 noundef signext 11, ptr noundef null, ptr noundef %13)
          to label %14 unwind label %15

14:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #10
  unreachable

15:                                               ; preds = %6
  %16 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #9
  resume { ptr, i32 } %16

17:                                               ; preds = %2
  %18 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %0, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !47
  %20 = icmp eq ptr %19, null
  %21 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %0, i64 0, i32 3
  %22 = load i64, ptr %21, align 8, !tbaa !46
  %23 = load ptr, ptr %1, align 8, !tbaa !35
  %24 = getelementptr inbounds ptr, ptr %23, i64 4
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef signext i16 %25(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %27 = sext i16 %26 to i32
  %28 = add nsw i32 %27, -1
  %29 = shl nuw i32 1, %28
  %30 = sext i32 %29 to i64
  %31 = and i64 %22, %30
  br i1 %20, label %32, label %34

32:                                               ; preds = %17
  %33 = icmp ne i64 %31, 0
  br label %43

34:                                               ; preds = %17
  %35 = icmp eq i64 %31, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %34
  %37 = load ptr, ptr %18, align 8, !tbaa !47
  %38 = load ptr, ptr %37, align 8, !tbaa !35
  %39 = getelementptr inbounds ptr, ptr %38, i64 2
  %40 = load ptr, ptr %39, align 8
  %41 = tail call noundef signext i16 %40(ptr noundef nonnull align 8 dereferenceable(8) %37, ptr noundef nonnull %1)
  %42 = icmp eq i16 %41, 1
  br label %43

43:                                               ; preds = %34, %36, %32
  %44 = phi i1 [ %33, %32 ], [ false, %34 ], [ %42, %36 ]
  ret i1 %44
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_719DOMNodeIteratorImpl12previousNodeEv(ptr nocapture noundef nonnull align 8 dereferenceable(57) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %0, i64 0, i32 6
  %3 = load i8, ptr %2, align 1, !tbaa !49, !range !52, !noundef !53
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %16, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @__cxa_allocate_exception(i64 40) #9
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !45
  %9 = icmp eq ptr %8, null
  %10 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %8, i64 0, i32 25
  %11 = select i1 %9, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, ptr %10
  %12 = load ptr, ptr %11, align 8, !tbaa !54
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %6, i16 noundef signext 11, ptr noundef null, ptr noundef %12)
          to label %13 unwind label %14

13:                                               ; preds = %5
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #10
  unreachable

14:                                               ; preds = %5
  %15 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %6) #9
  resume { ptr, i32 } %15

16:                                               ; preds = %1
  %17 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %0, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !38
  %19 = icmp eq ptr %18, null
  br i1 %19, label %42, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %0, i64 0, i32 8
  %22 = load ptr, ptr %21, align 8, !tbaa !50
  %23 = icmp eq ptr %22, null
  br i1 %23, label %42, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %0, i64 0, i32 9
  br label %26

26:                                               ; preds = %24, %39
  %27 = phi ptr [ %37, %39 ], [ %22, %24 ]
  %28 = phi i1 [ %40, %39 ], [ false, %24 ]
  br i1 %28, label %42, label %29

29:                                               ; preds = %26
  %30 = load i8, ptr %25, align 8, !tbaa !51, !range !52, !noundef !53
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %29
  %33 = load ptr, ptr %21, align 8, !tbaa !50
  br label %36

34:                                               ; preds = %29
  %35 = tail call noundef ptr @_ZN11xercesc_2_719DOMNodeIteratorImpl12previousNodeEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(57) %0, ptr noundef nonnull %27)
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi ptr [ %33, %32 ], [ %35, %34 ]
  store i8 0, ptr %25, align 8, !tbaa !51
  %38 = icmp eq ptr %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = tail call noundef zeroext i1 @_ZN11xercesc_2_719DOMNodeIteratorImpl10acceptNodeEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(57) %0, ptr noundef nonnull %37)
  br i1 %40, label %41, label %26, !llvm.loop !59

41:                                               ; preds = %39
  store ptr %37, ptr %21, align 8, !tbaa !50
  br label %42

42:                                               ; preds = %26, %36, %41, %16, %20
  %43 = phi ptr [ null, %20 ], [ null, %16 ], [ %37, %41 ], [ null, %36 ], [ null, %26 ]
  ret ptr %43
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_719DOMNodeIteratorImpl12previousNodeEPNS_7DOMNodeE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(57) %0, ptr noundef %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %0, i64 0, i32 6
  %4 = load i8, ptr %3, align 1, !tbaa !49, !range !52, !noundef !53
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %17, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 40) #9
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !45
  %10 = icmp eq ptr %9, null
  %11 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %9, i64 0, i32 25
  %12 = select i1 %10, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, ptr %11
  %13 = load ptr, ptr %12, align 8, !tbaa !54
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %7, i16 noundef signext 11, ptr noundef null, ptr noundef %13)
          to label %14 unwind label %15

14:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #10
  unreachable

15:                                               ; preds = %6
  %16 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #9
  resume { ptr, i32 } %16

17:                                               ; preds = %2
  %18 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %0, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !38
  %20 = icmp eq ptr %19, %1
  br i1 %20, label %59, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr %1, align 8, !tbaa !35
  %23 = getelementptr inbounds ptr, ptr %22, i64 9
  %24 = load ptr, ptr %23, align 8
  %25 = tail call noundef ptr %24(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %21
  %28 = load ptr, ptr %1, align 8, !tbaa !35
  %29 = getelementptr inbounds ptr, ptr %28, i64 5
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef ptr %30(ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %59

32:                                               ; preds = %21
  %33 = load ptr, ptr %25, align 8, !tbaa !35
  %34 = getelementptr inbounds ptr, ptr %33, i64 18
  %35 = load ptr, ptr %34, align 8
  %36 = tail call noundef zeroext i1 %35(ptr noundef nonnull align 8 dereferenceable(8) %25)
  br i1 %36, label %37, label %59

37:                                               ; preds = %32
  %38 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %0, i64 0, i32 5
  br label %39

39:                                               ; preds = %37, %54
  %40 = phi ptr [ %58, %54 ], [ %25, %37 ]
  %41 = load i8, ptr %38, align 8, !tbaa !48, !range !52, !noundef !53
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %39
  %44 = load ptr, ptr %40, align 8, !tbaa !35
  %45 = getelementptr inbounds ptr, ptr %44, i64 4
  %46 = load ptr, ptr %45, align 8
  %47 = tail call noundef signext i16 %46(ptr noundef nonnull align 8 dereferenceable(8) %40)
  %48 = icmp eq i16 %47, 5
  br i1 %48, label %59, label %49

49:                                               ; preds = %43, %39
  %50 = load ptr, ptr %40, align 8, !tbaa !35
  %51 = getelementptr inbounds ptr, ptr %50, i64 18
  %52 = load ptr, ptr %51, align 8
  %53 = tail call noundef zeroext i1 %52(ptr noundef nonnull align 8 dereferenceable(8) %40)
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = load ptr, ptr %40, align 8, !tbaa !35
  %56 = getelementptr inbounds ptr, ptr %55, i64 8
  %57 = load ptr, ptr %56, align 8
  %58 = tail call noundef ptr %57(ptr noundef nonnull align 8 dereferenceable(8) %40)
  br label %39, !llvm.loop !60

59:                                               ; preds = %49, %43, %32, %17, %27
  %60 = phi ptr [ %31, %27 ], [ null, %17 ], [ %25, %32 ], [ %40, %43 ], [ %40, %49 ]
  ret ptr %60
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_719DOMNodeIteratorImpl17matchNodeOrParentEPNS_7DOMNodeE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(57) %0, ptr noundef readnone %1) local_unnamed_addr #4 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %0, i64 0, i32 8
  %4 = load ptr, ptr %3, align 8, !tbaa !50
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !38
  %7 = icmp eq ptr %4, %6
  br i1 %7, label %18, label %8

8:                                                ; preds = %2, %11
  %9 = phi ptr [ %15, %11 ], [ %4, %2 ]
  %10 = icmp eq ptr %9, %1
  br i1 %10, label %18, label %11

11:                                               ; preds = %8
  %12 = load ptr, ptr %9, align 8, !tbaa !35
  %13 = getelementptr inbounds ptr, ptr %12, i64 5
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(8) %9)
  %16 = load ptr, ptr %5, align 8, !tbaa !38
  %17 = icmp eq ptr %15, %16
  br i1 %17, label %18, label %8, !llvm.loop !61

18:                                               ; preds = %11, %8, %2
  %19 = phi ptr [ null, %2 ], [ null, %11 ], [ %9, %8 ]
  ret ptr %19
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_719DOMNodeIteratorImpl10removeNodeEPNS_7DOMNodeE(ptr nocapture noundef nonnull align 8 dereferenceable(57) %0, ptr noundef readnone %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %0, i64 0, i32 6
  %4 = load i8, ptr %3, align 1, !tbaa !49, !range !52, !noundef !53
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %17, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 40) #9
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !45
  %10 = icmp eq ptr %9, null
  %11 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %9, i64 0, i32 25
  %12 = select i1 %10, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, ptr %11
  %13 = load ptr, ptr %12, align 8, !tbaa !54
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %7, i16 noundef signext 11, ptr noundef null, ptr noundef %13)
          to label %14 unwind label %15

14:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #10
  unreachable

15:                                               ; preds = %6
  %16 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #9
  resume { ptr, i32 } %16

17:                                               ; preds = %2
  %18 = icmp eq ptr %1, null
  br i1 %18, label %50, label %19

19:                                               ; preds = %17
  %20 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %0, i64 0, i32 8
  %21 = load ptr, ptr %20, align 8, !tbaa !50
  %22 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %0, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !38
  %24 = icmp eq ptr %21, %23
  br i1 %24, label %35, label %25

25:                                               ; preds = %19, %28
  %26 = phi ptr [ %32, %28 ], [ %21, %19 ]
  %27 = icmp eq ptr %26, %1
  br i1 %27, label %35, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr %26, align 8, !tbaa !35
  %30 = getelementptr inbounds ptr, ptr %29, i64 5
  %31 = load ptr, ptr %30, align 8
  %32 = tail call noundef ptr %31(ptr noundef nonnull align 8 dereferenceable(8) %26)
  %33 = load ptr, ptr %22, align 8, !tbaa !38
  %34 = icmp eq ptr %32, %33
  br i1 %34, label %35, label %25, !llvm.loop !61

35:                                               ; preds = %25, %28, %19
  %36 = phi ptr [ null, %19 ], [ %26, %25 ], [ null, %28 ]
  %37 = icmp eq ptr %36, null
  br i1 %37, label %50, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %0, i64 0, i32 9
  %40 = load i8, ptr %39, align 8, !tbaa !51, !range !52, !noundef !53
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %38
  %43 = tail call noundef ptr @_ZN11xercesc_2_719DOMNodeIteratorImpl12previousNodeEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(57) %0, ptr noundef nonnull %36)
  store ptr %43, ptr %20, align 8, !tbaa !50
  br label %50

44:                                               ; preds = %38
  %45 = tail call noundef ptr @_ZN11xercesc_2_719DOMNodeIteratorImpl8nextNodeEPNS_7DOMNodeEb(ptr noundef nonnull align 8 dereferenceable(57) %0, ptr noundef nonnull %36, i1 noundef zeroext false)
  %46 = icmp eq ptr %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %44
  store ptr %45, ptr %20, align 8, !tbaa !50
  br label %50

48:                                               ; preds = %44
  %49 = tail call noundef ptr @_ZN11xercesc_2_719DOMNodeIteratorImpl12previousNodeEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(57) %0, ptr noundef nonnull %36)
  store ptr %49, ptr %20, align 8, !tbaa !50
  store i8 1, ptr %39, align 8, !tbaa !51
  br label %50

50:                                               ; preds = %35, %47, %48, %42, %17
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_719DOMNodeIteratorImpl7releaseEv(ptr noundef nonnull align 8 dereferenceable(57) %0) unnamed_addr #4 align 2 !prof !34 {
  %2 = load ptr, ptr %0, align 8, !tbaa !35
  %3 = getelementptr inbounds ptr, ptr %2, i64 8
  %4 = load ptr, ptr %3, align 8
  tail call void %4(ptr noundef nonnull align 8 dereferenceable(57) %0)
  ret void
}

attributes #0 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { builtin nounwind }
attributes #9 = { nounwind }
attributes #10 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

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
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"vtable pointer", !37, i64 0}
!37 = !{!"Simple C++ TBAA"}
!38 = !{!39, !41, i64 8}
!39 = !{!"_ZTSN11xercesc_2_719DOMNodeIteratorImplE", !40, i64 0, !41, i64 8, !41, i64 16, !43, i64 24, !41, i64 32, !44, i64 40, !44, i64 41, !41, i64 48, !44, i64 56}
!40 = !{!"_ZTSN11xercesc_2_715DOMNodeIteratorE"}
!41 = !{!"any pointer", !42, i64 0}
!42 = !{!"omnipotent char", !37, i64 0}
!43 = !{!"long", !42, i64 0}
!44 = !{!"bool", !42, i64 0}
!45 = !{!39, !41, i64 16}
!46 = !{!39, !43, i64 24}
!47 = !{!39, !41, i64 32}
!48 = !{!39, !44, i64 40}
!49 = !{!39, !44, i64 41}
!50 = !{!39, !41, i64 48}
!51 = !{!39, !44, i64 56}
!52 = !{i8 0, i8 2}
!53 = !{}
!54 = !{!41, !41, i64 0}
!55 = distinct !{!55, !56, !57}
!56 = !{!"llvm.loop.mustprogress"}
!57 = !{!"llvm.loop.unroll.disable"}
!58 = distinct !{!58, !56, !57}
!59 = distinct !{!59, !56, !57}
!60 = distinct !{!60, !56, !57}
!61 = distinct !{!61, !56, !57}
