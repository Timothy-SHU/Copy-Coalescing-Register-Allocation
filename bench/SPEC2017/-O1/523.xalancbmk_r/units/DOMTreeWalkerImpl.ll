; ModuleID = 'DOMTreeWalkerImpl.cpp'
source_filename = "DOMTreeWalkerImpl.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::DOMTreeWalkerImpl" = type <{ %"class.xercesc_2_7::DOMTreeWalker", i64, ptr, ptr, ptr, i8, [7 x i8] }>
%"class.xercesc_2_7::DOMTreeWalker" = type { ptr }
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

$_ZN11xercesc_2_713DOMTreeWalkerD2Ev = comdat any

$_ZN11xercesc_2_717DOMTreeWalkerImplD0Ev = comdat any

$_ZTSN11xercesc_2_713DOMTreeWalkerE = comdat any

$_ZTIN11xercesc_2_713DOMTreeWalkerE = comdat any

@_ZTVN11xercesc_2_717DOMTreeWalkerImplE = dso_local unnamed_addr constant { [18 x ptr] } { [18 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_717DOMTreeWalkerImplE, ptr @_ZN11xercesc_2_713DOMTreeWalkerD2Ev, ptr @_ZN11xercesc_2_717DOMTreeWalkerImplD0Ev, ptr @_ZN11xercesc_2_717DOMTreeWalkerImpl7getRootEv, ptr @_ZN11xercesc_2_717DOMTreeWalkerImpl13getWhatToShowEv, ptr @_ZN11xercesc_2_717DOMTreeWalkerImpl9getFilterEv, ptr @_ZN11xercesc_2_717DOMTreeWalkerImpl25getExpandEntityReferencesEv, ptr @_ZN11xercesc_2_717DOMTreeWalkerImpl14getCurrentNodeEv, ptr @_ZN11xercesc_2_717DOMTreeWalkerImpl10parentNodeEv, ptr @_ZN11xercesc_2_717DOMTreeWalkerImpl10firstChildEv, ptr @_ZN11xercesc_2_717DOMTreeWalkerImpl9lastChildEv, ptr @_ZN11xercesc_2_717DOMTreeWalkerImpl15previousSiblingEv, ptr @_ZN11xercesc_2_717DOMTreeWalkerImpl11nextSiblingEv, ptr @_ZN11xercesc_2_717DOMTreeWalkerImpl12previousNodeEv, ptr @_ZN11xercesc_2_717DOMTreeWalkerImpl8nextNodeEv, ptr @_ZN11xercesc_2_717DOMTreeWalkerImpl14setCurrentNodeEPNS_7DOMNodeE, ptr @_ZN11xercesc_2_717DOMTreeWalkerImpl7releaseEv] }, align 8
@_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE = external local_unnamed_addr global ptr, align 8
@_ZTIN11xercesc_2_712DOMExceptionE = external constant ptr
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_717DOMTreeWalkerImplE = dso_local constant [35 x i8] c"N11xercesc_2_717DOMTreeWalkerImplE\00", align 1
@_ZTSN11xercesc_2_713DOMTreeWalkerE = linkonce_odr dso_local constant [31 x i8] c"N11xercesc_2_713DOMTreeWalkerE\00", comdat, align 1
@_ZTIN11xercesc_2_713DOMTreeWalkerE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_713DOMTreeWalkerE }, comdat, align 8
@_ZTIN11xercesc_2_717DOMTreeWalkerImplE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_717DOMTreeWalkerImplE, ptr @_ZTIN11xercesc_2_713DOMTreeWalkerE }, align 8

@_ZN11xercesc_2_717DOMTreeWalkerImplC1EPNS_7DOMNodeEmPNS_13DOMNodeFilterEb = dso_local unnamed_addr alias void (ptr, ptr, i64, ptr, i1), ptr @_ZN11xercesc_2_717DOMTreeWalkerImplC2EPNS_7DOMNodeEmPNS_13DOMNodeFilterEb
@_ZN11xercesc_2_717DOMTreeWalkerImplC1ERKS0_ = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_717DOMTreeWalkerImplC2ERKS0_

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xercesc_2_717DOMTreeWalkerImplC2EPNS_7DOMNodeEmPNS_13DOMNodeFilterEb(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(41) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i1 noundef zeroext %4) unnamed_addr #1 align 2 !prof !34 {
  %6 = zext i1 %4 to i8
  store ptr getelementptr inbounds ({ [18 x ptr] }, ptr @_ZTVN11xercesc_2_717DOMTreeWalkerImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMTreeWalkerImpl", ptr %0, i64 0, i32 1
  store i64 %2, ptr %7, align 8, !tbaa !38
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMTreeWalkerImpl", ptr %0, i64 0, i32 2
  store ptr %3, ptr %8, align 8, !tbaa !45
  %9 = getelementptr inbounds %"class.xercesc_2_7::DOMTreeWalkerImpl", ptr %0, i64 0, i32 3
  store ptr %1, ptr %9, align 8, !tbaa !46
  %10 = getelementptr inbounds %"class.xercesc_2_7::DOMTreeWalkerImpl", ptr %0, i64 0, i32 4
  store ptr %1, ptr %10, align 8, !tbaa !47
  %11 = getelementptr inbounds %"class.xercesc_2_7::DOMTreeWalkerImpl", ptr %0, i64 0, i32 5
  store i8 %6, ptr %11, align 8, !tbaa !48
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN11xercesc_2_717DOMTreeWalkerImplC2ERKS0_(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(41) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(41) %1) unnamed_addr #2 align 2 !prof !34 {
  store ptr getelementptr inbounds ({ [18 x ptr] }, ptr @_ZTVN11xercesc_2_717DOMTreeWalkerImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMTreeWalkerImpl", ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMTreeWalkerImpl", ptr %1, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !38
  store i64 %5, ptr %3, align 8, !tbaa !38
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMTreeWalkerImpl", ptr %0, i64 0, i32 2
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMTreeWalkerImpl", ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !45
  store ptr %8, ptr %6, align 8, !tbaa !45
  %9 = getelementptr inbounds %"class.xercesc_2_7::DOMTreeWalkerImpl", ptr %0, i64 0, i32 3
  %10 = getelementptr inbounds %"class.xercesc_2_7::DOMTreeWalkerImpl", ptr %1, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  store ptr %11, ptr %9, align 8, !tbaa !46
  %12 = getelementptr inbounds %"class.xercesc_2_7::DOMTreeWalkerImpl", ptr %0, i64 0, i32 4
  %13 = getelementptr inbounds %"class.xercesc_2_7::DOMTreeWalkerImpl", ptr %1, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !47
  store ptr %14, ptr %12, align 8, !tbaa !47
  %15 = getelementptr inbounds %"class.xercesc_2_7::DOMTreeWalkerImpl", ptr %0, i64 0, i32 5
  %16 = getelementptr inbounds %"class.xercesc_2_7::DOMTreeWalkerImpl", ptr %1, i64 0, i32 5
  %17 = load i8, ptr %16, align 8, !tbaa !48, !range !49, !noundef !50
  store i8 %17, ptr %15, align 8, !tbaa !48
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef nonnull align 8 dereferenceable(41) ptr @_ZN11xercesc_2_717DOMTreeWalkerImplaSERKS0_(ptr noundef nonnull returned writeonly align 8 dereferenceable(41) %0, ptr noundef nonnull readonly align 8 dereferenceable(41) %1) local_unnamed_addr #2 align 2 !prof !34 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %20, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMTreeWalkerImpl", ptr %1, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMTreeWalkerImpl", ptr %0, i64 0, i32 3
  store ptr %6, ptr %7, align 8, !tbaa !46
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMTreeWalkerImpl", ptr %1, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !47
  %10 = getelementptr inbounds %"class.xercesc_2_7::DOMTreeWalkerImpl", ptr %0, i64 0, i32 4
  store ptr %9, ptr %10, align 8, !tbaa !47
  %11 = getelementptr inbounds %"class.xercesc_2_7::DOMTreeWalkerImpl", ptr %1, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !38
  %13 = getelementptr inbounds %"class.xercesc_2_7::DOMTreeWalkerImpl", ptr %0, i64 0, i32 1
  store i64 %12, ptr %13, align 8, !tbaa !38
  %14 = getelementptr inbounds %"class.xercesc_2_7::DOMTreeWalkerImpl", ptr %1, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !45
  %16 = getelementptr inbounds %"class.xercesc_2_7::DOMTreeWalkerImpl", ptr %0, i64 0, i32 2
  store ptr %15, ptr %16, align 8, !tbaa !45
  %17 = getelementptr inbounds %"class.xercesc_2_7::DOMTreeWalkerImpl", ptr %1, i64 0, i32 5
  %18 = load i8, ptr %17, align 8, !tbaa !48, !range !49, !noundef !50
  %19 = getelementptr inbounds %"class.xercesc_2_7::DOMTreeWalkerImpl", ptr %0, i64 0, i32 5
  store i8 %18, ptr %19, align 8, !tbaa !48
  br label %20

20:                                               ; preds = %4, %2
  ret ptr %0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZN11xercesc_2_717DOMTreeWalkerImpl7getRootEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(41) %0) unnamed_addr #3 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMTreeWalkerImpl", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  ret ptr %3
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i64 @_ZN11xercesc_2_717DOMTreeWalkerImpl13getWhatToShowEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(41) %0) unnamed_addr #3 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMTreeWalkerImpl", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !38
  ret i64 %3
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZN11xercesc_2_717DOMTreeWalkerImpl9getFilterEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(41) %0) unnamed_addr #3 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMTreeWalkerImpl", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  ret ptr %3
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_717DOMTreeWalkerImpl25getExpandEntityReferencesEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(41) %0) unnamed_addr #3 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMTreeWalkerImpl", ptr %0, i64 0, i32 5
  %3 = load i8, ptr %2, align 8, !tbaa !48, !range !49, !noundef !50
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZN11xercesc_2_717DOMTreeWalkerImpl14getCurrentNodeEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(41) %0) unnamed_addr #3 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMTreeWalkerImpl", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  ret ptr %3
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_717DOMTreeWalkerImpl14setCurrentNodeEPNS_7DOMNodeE(ptr nocapture noundef nonnull align 8 dereferenceable(41) %0, ptr noundef %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %4, label %30

4:                                                ; preds = %2
  %5 = tail call ptr @__cxa_allocate_exception(i64 40) #10
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMTreeWalkerImpl", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  %8 = icmp eq ptr %7, null
  br i1 %8, label %24, label %9

9:                                                ; preds = %4
  %10 = load ptr, ptr %7, align 8, !tbaa !35
  %11 = getelementptr inbounds ptr, ptr %10, i64 12
  %12 = load ptr, ptr %11, align 8
  %13 = invoke noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %14 unwind label %28

14:                                               ; preds = %9
  %15 = icmp eq ptr %13, null
  br i1 %15, label %24, label %16

16:                                               ; preds = %14
  %17 = load ptr, ptr %6, align 8, !tbaa !46
  %18 = load ptr, ptr %17, align 8, !tbaa !35
  %19 = getelementptr inbounds ptr, ptr %18, i64 12
  %20 = load ptr, ptr %19, align 8
  %21 = invoke noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %22 unwind label %28

22:                                               ; preds = %16
  %23 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %21, i64 0, i32 25
  br label %24

24:                                               ; preds = %14, %4, %22
  %25 = phi ptr [ %23, %22 ], [ @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, %4 ], [ @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, %14 ]
  %26 = load ptr, ptr %25, align 8, !tbaa !51
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %5, i16 noundef signext 9, ptr noundef null, ptr noundef %26)
          to label %27 unwind label %28

27:                                               ; preds = %24
  tail call void @__cxa_throw(ptr nonnull %5, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #11
  unreachable

28:                                               ; preds = %24, %16, %9
  %29 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %5) #10
  resume { ptr, i32 } %29

30:                                               ; preds = %2
  %31 = getelementptr inbounds %"class.xercesc_2_7::DOMTreeWalkerImpl", ptr %0, i64 0, i32 3
  store ptr %1, ptr %31, align 8, !tbaa !46
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare i32 @__gxx_personality_v0(...)

declare void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33), i16 noundef signext, ptr noundef, ptr noundef) unnamed_addr #5

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712DOMExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(33)) unnamed_addr #6

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_717DOMTreeWalkerImpl10parentNodeEv(ptr nocapture noundef nonnull align 8 dereferenceable(41) %0) unnamed_addr #4 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMTreeWalkerImpl", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xercesc_2_717DOMTreeWalkerImpl13getParentNodeEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull %3)
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %5
  store ptr %6, ptr %2, align 8, !tbaa !46
  br label %9

9:                                                ; preds = %5, %8, %1
  %10 = phi ptr [ null, %1 ], [ %6, %8 ], [ %6, %5 ]
  ret ptr %10
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_717DOMTreeWalkerImpl13getParentNodeEPNS_7DOMNodeE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(41) %0, ptr noundef %1) local_unnamed_addr #4 align 2 !prof !34 {
  br label %3

3:                                                ; preds = %16, %2
  %4 = phi ptr [ %1, %2 ], [ %14, %16 ]
  %5 = icmp eq ptr %4, null
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMTreeWalkerImpl", ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, %4
  %9 = select i1 %5, i1 true, i1 %8
  br i1 %9, label %19, label %10

10:                                               ; preds = %3
  %11 = load ptr, ptr %4, align 8, !tbaa !35
  %12 = getelementptr inbounds ptr, ptr %11, i64 5
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(8) %4)
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %10
  %17 = tail call noundef signext i16 @_ZN11xercesc_2_717DOMTreeWalkerImpl10acceptNodeEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull %14)
  %18 = icmp eq i16 %17, 1
  br i1 %18, label %19, label %3

19:                                               ; preds = %10, %16, %3
  %20 = phi ptr [ null, %3 ], [ null, %10 ], [ %14, %16 ]
  ret ptr %20
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_717DOMTreeWalkerImpl10firstChildEv(ptr nocapture noundef nonnull align 8 dereferenceable(41) %0) unnamed_addr #4 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMTreeWalkerImpl", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = icmp eq ptr %3, null
  br i1 %4, label %20, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMTreeWalkerImpl", ptr %0, i64 0, i32 5
  %7 = load i8, ptr %6, align 8, !tbaa !48, !range !49, !noundef !50
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %5
  %10 = load ptr, ptr %3, align 8, !tbaa !35
  %11 = getelementptr inbounds ptr, ptr %10, i64 4
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef signext i16 %12(ptr noundef nonnull align 8 dereferenceable(8) %3)
  %14 = icmp eq i16 %13, 5
  br i1 %14, label %20, label %15

15:                                               ; preds = %9, %5
  %16 = load ptr, ptr %2, align 8, !tbaa !46
  %17 = tail call noundef ptr @_ZN11xercesc_2_717DOMTreeWalkerImpl13getFirstChildEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef %16)
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  store ptr %17, ptr %2, align 8, !tbaa !46
  br label %20

20:                                               ; preds = %15, %19, %9, %1
  %21 = phi ptr [ null, %1 ], [ null, %9 ], [ %17, %19 ], [ %17, %15 ]
  ret ptr %21
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_717DOMTreeWalkerImpl13getFirstChildEPNS_7DOMNodeE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(41) %0, ptr noundef %1) local_unnamed_addr #4 align 2 !prof !34 {
  br label %3

3:                                                ; preds = %24, %2
  %4 = phi ptr [ %1, %2 ], [ %20, %24 ]
  %5 = icmp eq ptr %4, null
  br i1 %5, label %31, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMTreeWalkerImpl", ptr %0, i64 0, i32 5
  %8 = load i8, ptr %7, align 8, !tbaa !48, !range !49, !noundef !50
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %6
  %11 = load ptr, ptr %4, align 8, !tbaa !35
  %12 = getelementptr inbounds ptr, ptr %11, i64 4
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef signext i16 %13(ptr noundef nonnull align 8 dereferenceable(8) %4)
  %15 = icmp eq i16 %14, 5
  br i1 %15, label %31, label %16

16:                                               ; preds = %10, %6
  %17 = load ptr, ptr %4, align 8, !tbaa !35
  %18 = getelementptr inbounds ptr, ptr %17, i64 7
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %4)
  %21 = icmp eq ptr %20, null
  br i1 %21, label %31, label %22

22:                                               ; preds = %16
  %23 = tail call noundef signext i16 @_ZN11xercesc_2_717DOMTreeWalkerImpl10acceptNodeEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull %20)
  switch i16 %23, label %29 [
    i16 1, label %31
    i16 3, label %24
  ]

24:                                               ; preds = %22
  %25 = load ptr, ptr %20, align 8, !tbaa !35
  %26 = getelementptr inbounds ptr, ptr %25, i64 18
  %27 = load ptr, ptr %26, align 8
  %28 = tail call noundef zeroext i1 %27(ptr noundef nonnull align 8 dereferenceable(8) %20)
  br i1 %28, label %3, label %29

29:                                               ; preds = %22, %24
  %30 = tail call noundef ptr @_ZN11xercesc_2_717DOMTreeWalkerImpl14getNextSiblingEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull %20)
  br label %31

31:                                               ; preds = %16, %22, %29, %10, %3
  %32 = phi ptr [ null, %3 ], [ null, %10 ], [ null, %16 ], [ %30, %29 ], [ %20, %22 ]
  ret ptr %32
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_717DOMTreeWalkerImpl9lastChildEv(ptr nocapture noundef nonnull align 8 dereferenceable(41) %0) unnamed_addr #4 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMTreeWalkerImpl", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = icmp eq ptr %3, null
  br i1 %4, label %20, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMTreeWalkerImpl", ptr %0, i64 0, i32 5
  %7 = load i8, ptr %6, align 8, !tbaa !48, !range !49, !noundef !50
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %5
  %10 = load ptr, ptr %3, align 8, !tbaa !35
  %11 = getelementptr inbounds ptr, ptr %10, i64 4
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef signext i16 %12(ptr noundef nonnull align 8 dereferenceable(8) %3)
  %14 = icmp eq i16 %13, 5
  br i1 %14, label %20, label %15

15:                                               ; preds = %9, %5
  %16 = load ptr, ptr %2, align 8, !tbaa !46
  %17 = tail call noundef ptr @_ZN11xercesc_2_717DOMTreeWalkerImpl12getLastChildEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef %16)
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  store ptr %17, ptr %2, align 8, !tbaa !46
  br label %20

20:                                               ; preds = %15, %19, %9, %1
  %21 = phi ptr [ null, %1 ], [ null, %9 ], [ %17, %19 ], [ %17, %15 ]
  ret ptr %21
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_717DOMTreeWalkerImpl12getLastChildEPNS_7DOMNodeE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(41) %0, ptr noundef %1) local_unnamed_addr #4 align 2 !prof !34 {
  br label %3

3:                                                ; preds = %24, %2
  %4 = phi ptr [ %1, %2 ], [ %20, %24 ]
  %5 = icmp eq ptr %4, null
  br i1 %5, label %31, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMTreeWalkerImpl", ptr %0, i64 0, i32 5
  %8 = load i8, ptr %7, align 8, !tbaa !48, !range !49, !noundef !50
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %6
  %11 = load ptr, ptr %4, align 8, !tbaa !35
  %12 = getelementptr inbounds ptr, ptr %11, i64 4
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef signext i16 %13(ptr noundef nonnull align 8 dereferenceable(8) %4)
  %15 = icmp eq i16 %14, 5
  br i1 %15, label %31, label %16

16:                                               ; preds = %10, %6
  %17 = load ptr, ptr %4, align 8, !tbaa !35
  %18 = getelementptr inbounds ptr, ptr %17, i64 8
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %4)
  %21 = icmp eq ptr %20, null
  br i1 %21, label %31, label %22

22:                                               ; preds = %16
  %23 = tail call noundef signext i16 @_ZN11xercesc_2_717DOMTreeWalkerImpl10acceptNodeEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull %20)
  switch i16 %23, label %29 [
    i16 1, label %31
    i16 3, label %24
  ]

24:                                               ; preds = %22
  %25 = load ptr, ptr %20, align 8, !tbaa !35
  %26 = getelementptr inbounds ptr, ptr %25, i64 18
  %27 = load ptr, ptr %26, align 8
  %28 = tail call noundef zeroext i1 %27(ptr noundef nonnull align 8 dereferenceable(8) %20)
  br i1 %28, label %3, label %29

29:                                               ; preds = %22, %24
  %30 = tail call noundef ptr @_ZN11xercesc_2_717DOMTreeWalkerImpl18getPreviousSiblingEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull %20)
  br label %31

31:                                               ; preds = %16, %22, %29, %10, %3
  %32 = phi ptr [ null, %3 ], [ null, %10 ], [ null, %16 ], [ %30, %29 ], [ %20, %22 ]
  ret ptr %32
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_717DOMTreeWalkerImpl15previousSiblingEv(ptr nocapture noundef nonnull align 8 dereferenceable(41) %0) unnamed_addr #4 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMTreeWalkerImpl", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xercesc_2_717DOMTreeWalkerImpl18getPreviousSiblingEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull %3)
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %5
  store ptr %6, ptr %2, align 8, !tbaa !46
  br label %9

9:                                                ; preds = %5, %8, %1
  %10 = phi ptr [ null, %1 ], [ %6, %8 ], [ %6, %5 ]
  ret ptr %10
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_717DOMTreeWalkerImpl18getPreviousSiblingEPNS_7DOMNodeE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(41) %0, ptr noundef %1) local_unnamed_addr #4 align 2 !prof !34 {
  br label %3

3:                                                ; preds = %38, %2
  %4 = phi ptr [ %1, %2 ], [ %39, %38 ]
  %5 = icmp eq ptr %4, null
  br i1 %5, label %40, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMTreeWalkerImpl", ptr %0, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = icmp eq ptr %8, %4
  br i1 %9, label %40, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %4, align 8, !tbaa !35
  %12 = getelementptr inbounds ptr, ptr %11, i64 9
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(8) %4)
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %28

16:                                               ; preds = %10
  %17 = load ptr, ptr %4, align 8, !tbaa !35
  %18 = getelementptr inbounds ptr, ptr %17, i64 5
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %4)
  %21 = icmp eq ptr %20, null
  %22 = load ptr, ptr %7, align 8
  %23 = icmp eq ptr %22, %4
  %24 = select i1 %21, i1 true, i1 %23
  br i1 %24, label %40, label %25

25:                                               ; preds = %16
  %26 = tail call noundef signext i16 @_ZN11xercesc_2_717DOMTreeWalkerImpl10acceptNodeEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull %20)
  %27 = icmp eq i16 %26, 3
  br i1 %27, label %38, label %40

28:                                               ; preds = %10
  %29 = tail call noundef signext i16 @_ZN11xercesc_2_717DOMTreeWalkerImpl10acceptNodeEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull %14)
  switch i16 %29, label %38 [
    i16 1, label %40
    i16 3, label %30
  ]

30:                                               ; preds = %28
  %31 = tail call noundef ptr @_ZN11xercesc_2_717DOMTreeWalkerImpl12getLastChildEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull %14)
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %40

33:                                               ; preds = %30
  %34 = load ptr, ptr %14, align 8, !tbaa !35
  %35 = getelementptr inbounds ptr, ptr %34, i64 18
  %36 = load ptr, ptr %35, align 8
  %37 = tail call noundef zeroext i1 %36(ptr noundef nonnull align 8 dereferenceable(8) %14)
  br i1 %37, label %40, label %38

38:                                               ; preds = %28, %33, %25
  %39 = phi ptr [ %20, %25 ], [ %14, %33 ], [ %14, %28 ]
  br label %3

40:                                               ; preds = %16, %25, %33, %30, %28, %3, %6
  %41 = phi ptr [ null, %6 ], [ null, %3 ], [ null, %16 ], [ null, %25 ], [ %14, %28 ], [ %31, %33 ], [ %31, %30 ]
  ret ptr %41
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_717DOMTreeWalkerImpl11nextSiblingEv(ptr nocapture noundef nonnull align 8 dereferenceable(41) %0) unnamed_addr #4 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMTreeWalkerImpl", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xercesc_2_717DOMTreeWalkerImpl14getNextSiblingEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull %3)
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %5
  store ptr %6, ptr %2, align 8, !tbaa !46
  br label %9

9:                                                ; preds = %5, %8, %1
  %10 = phi ptr [ null, %1 ], [ %6, %8 ], [ %6, %5 ]
  ret ptr %10
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_717DOMTreeWalkerImpl14getNextSiblingEPNS_7DOMNodeE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(41) %0, ptr noundef %1) local_unnamed_addr #4 align 2 !prof !34 {
  br label %3

3:                                                ; preds = %38, %2
  %4 = phi ptr [ %1, %2 ], [ %39, %38 ]
  %5 = icmp eq ptr %4, null
  br i1 %5, label %40, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMTreeWalkerImpl", ptr %0, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = icmp eq ptr %8, %4
  br i1 %9, label %40, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %4, align 8, !tbaa !35
  %12 = getelementptr inbounds ptr, ptr %11, i64 10
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(8) %4)
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %28

16:                                               ; preds = %10
  %17 = load ptr, ptr %4, align 8, !tbaa !35
  %18 = getelementptr inbounds ptr, ptr %17, i64 5
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %4)
  %21 = icmp eq ptr %20, null
  %22 = load ptr, ptr %7, align 8
  %23 = icmp eq ptr %22, %4
  %24 = select i1 %21, i1 true, i1 %23
  br i1 %24, label %40, label %25

25:                                               ; preds = %16
  %26 = tail call noundef signext i16 @_ZN11xercesc_2_717DOMTreeWalkerImpl10acceptNodeEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull %20)
  %27 = icmp eq i16 %26, 3
  br i1 %27, label %38, label %40

28:                                               ; preds = %10
  %29 = tail call noundef signext i16 @_ZN11xercesc_2_717DOMTreeWalkerImpl10acceptNodeEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull %14)
  switch i16 %29, label %38 [
    i16 1, label %40
    i16 3, label %30
  ]

30:                                               ; preds = %28
  %31 = tail call noundef ptr @_ZN11xercesc_2_717DOMTreeWalkerImpl13getFirstChildEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull %14)
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %40

33:                                               ; preds = %30
  %34 = load ptr, ptr %14, align 8, !tbaa !35
  %35 = getelementptr inbounds ptr, ptr %34, i64 18
  %36 = load ptr, ptr %35, align 8
  %37 = tail call noundef zeroext i1 %36(ptr noundef nonnull align 8 dereferenceable(8) %14)
  br i1 %37, label %40, label %38

38:                                               ; preds = %28, %33, %25
  %39 = phi ptr [ %20, %25 ], [ %14, %33 ], [ %14, %28 ]
  br label %3

40:                                               ; preds = %16, %25, %33, %30, %28, %3, %6
  %41 = phi ptr [ null, %6 ], [ null, %3 ], [ null, %16 ], [ null, %25 ], [ %14, %28 ], [ %31, %33 ], [ %31, %30 ]
  ret ptr %41
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_717DOMTreeWalkerImpl12previousNodeEv(ptr nocapture noundef nonnull align 8 dereferenceable(41) %0) unnamed_addr #4 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMTreeWalkerImpl", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = icmp eq ptr %3, null
  br i1 %4, label %18, label %5

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xercesc_2_717DOMTreeWalkerImpl18getPreviousSiblingEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull %3)
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = load ptr, ptr %2, align 8, !tbaa !46
  %10 = tail call noundef ptr @_ZN11xercesc_2_717DOMTreeWalkerImpl13getParentNodeEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef %9)
  %11 = icmp eq ptr %10, null
  br i1 %11, label %18, label %16

12:                                               ; preds = %5
  %13 = tail call noundef ptr @_ZN11xercesc_2_717DOMTreeWalkerImpl12getLastChildEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull %6)
  %14 = icmp eq ptr %13, null
  %15 = select i1 %14, ptr %6, ptr %13
  br label %16

16:                                               ; preds = %8, %12
  %17 = phi ptr [ %15, %12 ], [ %10, %8 ]
  store ptr %17, ptr %2, align 8, !tbaa !46
  br label %18

18:                                               ; preds = %16, %8, %1
  %19 = phi ptr [ null, %1 ], [ %10, %8 ], [ %17, %16 ]
  ret ptr %19
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_717DOMTreeWalkerImpl8nextNodeEv(ptr nocapture noundef nonnull align 8 dereferenceable(41) %0) unnamed_addr #4 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMTreeWalkerImpl", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = icmp eq ptr %3, null
  br i1 %4, label %25, label %5

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xercesc_2_717DOMTreeWalkerImpl13getFirstChildEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull %3)
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %23

8:                                                ; preds = %5
  %9 = load ptr, ptr %2, align 8, !tbaa !46
  %10 = tail call noundef ptr @_ZN11xercesc_2_717DOMTreeWalkerImpl14getNextSiblingEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef %9)
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %23

12:                                               ; preds = %8
  %13 = load ptr, ptr %2, align 8, !tbaa !46
  %14 = tail call noundef ptr @_ZN11xercesc_2_717DOMTreeWalkerImpl13getParentNodeEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef %13)
  %15 = icmp eq ptr %14, null
  br i1 %15, label %25, label %16

16:                                               ; preds = %12, %20
  %17 = phi ptr [ %21, %20 ], [ %14, %12 ]
  %18 = tail call noundef ptr @_ZN11xercesc_2_717DOMTreeWalkerImpl14getNextSiblingEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull %17)
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = tail call noundef ptr @_ZN11xercesc_2_717DOMTreeWalkerImpl13getParentNodeEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull %17)
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %16, !llvm.loop !52

23:                                               ; preds = %16, %8, %5
  %24 = phi ptr [ %6, %5 ], [ %10, %8 ], [ %18, %16 ]
  store ptr %24, ptr %2, align 8, !tbaa !46
  br label %25

25:                                               ; preds = %20, %23, %12, %1
  %26 = phi ptr [ null, %1 ], [ null, %12 ], [ %24, %23 ], [ null, %20 ]
  ret ptr %26
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef signext i16 @_ZN11xercesc_2_717DOMTreeWalkerImpl10acceptNodeEPNS_7DOMNodeE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(41) %0, ptr noundef %1) local_unnamed_addr #4 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMTreeWalkerImpl", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq ptr %4, null
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMTreeWalkerImpl", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !38
  %8 = load ptr, ptr %1, align 8, !tbaa !35
  %9 = getelementptr inbounds ptr, ptr %8, i64 4
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef signext i16 %10(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %12 = sext i16 %11 to i32
  %13 = add nsw i32 %12, -1
  %14 = shl nuw i32 1, %13
  %15 = sext i32 %14 to i64
  %16 = and i64 %7, %15
  %17 = icmp eq i64 %16, 0
  br i1 %5, label %18, label %20

18:                                               ; preds = %2
  %19 = select i1 %17, i16 3, i16 1
  br label %29

20:                                               ; preds = %2
  %21 = load ptr, ptr %3, align 8, !tbaa !45
  %22 = load ptr, ptr %21, align 8, !tbaa !35
  %23 = getelementptr inbounds ptr, ptr %22, i64 2
  %24 = load ptr, ptr %23, align 8
  %25 = tail call noundef signext i16 %24(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef nonnull %1)
  br i1 %17, label %26, label %29

26:                                               ; preds = %20
  %27 = icmp eq i16 %25, 2
  %28 = select i1 %27, i16 2, i16 3
  br label %29

29:                                               ; preds = %20, %26, %18
  %30 = phi i16 [ %19, %18 ], [ %28, %26 ], [ %25, %20 ]
  ret i16 %30
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_717DOMTreeWalkerImpl7releaseEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !34 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713DOMTreeWalkerD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #8 comdat align 2 !prof !34 {
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717DOMTreeWalkerImplD0Ev(ptr noundef nonnull align 8 dereferenceable(41) %0) unnamed_addr #9 comdat align 2 !prof !34 {
  tail call void @_ZdlPv(ptr noundef %0) #12
  ret void
}

attributes #0 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind }
attributes #11 = { noreturn }
attributes #12 = { builtin nounwind }

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
!39 = !{!"_ZTSN11xercesc_2_717DOMTreeWalkerImplE", !40, i64 0, !41, i64 8, !43, i64 16, !43, i64 24, !43, i64 32, !44, i64 40}
!40 = !{!"_ZTSN11xercesc_2_713DOMTreeWalkerE"}
!41 = !{!"long", !42, i64 0}
!42 = !{!"omnipotent char", !37, i64 0}
!43 = !{!"any pointer", !42, i64 0}
!44 = !{!"bool", !42, i64 0}
!45 = !{!39, !43, i64 16}
!46 = !{!39, !43, i64 24}
!47 = !{!39, !43, i64 32}
!48 = !{!39, !44, i64 40}
!49 = !{i8 0, i8 2}
!50 = !{}
!51 = !{!43, !43, i64 0}
!52 = distinct !{!52, !53, !54}
!53 = !{!"llvm.loop.mustprogress"}
!54 = !{!"llvm.loop.unroll.disable"}
