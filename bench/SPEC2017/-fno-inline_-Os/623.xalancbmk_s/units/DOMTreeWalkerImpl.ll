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

$_ZN11xercesc_2_713DOMTreeWalkerC2Ev = comdat any

$_ZN11xercesc_2_713DOMTreeWalkerD0Ev = comdat any

$_ZN11xercesc_2_713DOMTreeWalkerC2ERKS0_ = comdat any

$_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv = comdat any

$_ZTSN11xercesc_2_713DOMTreeWalkerE = comdat any

$_ZTIN11xercesc_2_713DOMTreeWalkerE = comdat any

$_ZTVN11xercesc_2_713DOMTreeWalkerE = comdat any

@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTVN11xercesc_2_717DOMTreeWalkerImplE = dso_local unnamed_addr constant { [18 x ptr] } { [18 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_717DOMTreeWalkerImplE, ptr @_ZN11xercesc_2_713DOMTreeWalkerD2Ev, ptr @_ZN11xercesc_2_717DOMTreeWalkerImplD0Ev, ptr @_ZN11xercesc_2_717DOMTreeWalkerImpl7getRootEv, ptr @_ZN11xercesc_2_717DOMTreeWalkerImpl13getWhatToShowEv, ptr @_ZN11xercesc_2_717DOMTreeWalkerImpl9getFilterEv, ptr @_ZN11xercesc_2_717DOMTreeWalkerImpl25getExpandEntityReferencesEv, ptr @_ZN11xercesc_2_717DOMTreeWalkerImpl14getCurrentNodeEv, ptr @_ZN11xercesc_2_717DOMTreeWalkerImpl10parentNodeEv, ptr @_ZN11xercesc_2_717DOMTreeWalkerImpl10firstChildEv, ptr @_ZN11xercesc_2_717DOMTreeWalkerImpl9lastChildEv, ptr @_ZN11xercesc_2_717DOMTreeWalkerImpl15previousSiblingEv, ptr @_ZN11xercesc_2_717DOMTreeWalkerImpl11nextSiblingEv, ptr @_ZN11xercesc_2_717DOMTreeWalkerImpl12previousNodeEv, ptr @_ZN11xercesc_2_717DOMTreeWalkerImpl8nextNodeEv, ptr @_ZN11xercesc_2_717DOMTreeWalkerImpl14setCurrentNodeEPNS_7DOMNodeE, ptr @_ZN11xercesc_2_717DOMTreeWalkerImpl7releaseEv] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_717DOMTreeWalkerImplE = dso_local constant [35 x i8] c"N11xercesc_2_717DOMTreeWalkerImplE\00", align 1
@_ZTSN11xercesc_2_713DOMTreeWalkerE = linkonce_odr dso_local constant [31 x i8] c"N11xercesc_2_713DOMTreeWalkerE\00", comdat, align 1
@_ZTIN11xercesc_2_713DOMTreeWalkerE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_713DOMTreeWalkerE }, comdat, align 8
@_ZTIN11xercesc_2_717DOMTreeWalkerImplE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_717DOMTreeWalkerImplE, ptr @_ZTIN11xercesc_2_713DOMTreeWalkerE }, align 8
@_ZTVN11xercesc_2_713DOMTreeWalkerE = linkonce_odr dso_local unnamed_addr constant { [18 x ptr] } { [18 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_713DOMTreeWalkerE, ptr @_ZN11xercesc_2_713DOMTreeWalkerD2Ev, ptr @_ZN11xercesc_2_713DOMTreeWalkerD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE = external local_unnamed_addr global ptr, align 8
@_ZTIN11xercesc_2_712DOMExceptionE = external constant ptr

@_ZN11xercesc_2_717DOMTreeWalkerImplC1EPNS_7DOMNodeEmPNS_13DOMNodeFilterEb = dso_local unnamed_addr alias void (ptr, ptr, i64, ptr, i1), ptr @_ZN11xercesc_2_717DOMTreeWalkerImplC2EPNS_7DOMNodeEmPNS_13DOMNodeFilterEb
@_ZN11xercesc_2_717DOMTreeWalkerImplC1ERKS0_ = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_717DOMTreeWalkerImplC2ERKS0_

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713DOMTreeWalkerD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !prof !35 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717DOMTreeWalkerImplD0Ev(ptr noundef nonnull align 8 dereferenceable(41) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xercesc_2_713DOMTreeWalkerD2Ev(ptr noundef nonnull align 8 dereferenceable(41) %0) #9
  tail call void @_ZdlPv(ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZN11xercesc_2_717DOMTreeWalkerImpl7getRootEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(41) %0) unnamed_addr #1 align 2 !prof !35 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMTreeWalkerImpl", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !36
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef i64 @_ZN11xercesc_2_717DOMTreeWalkerImpl13getWhatToShowEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(41) %0) unnamed_addr #1 align 2 !prof !35 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMTreeWalkerImpl", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !44
  ret i64 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZN11xercesc_2_717DOMTreeWalkerImpl9getFilterEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(41) %0) unnamed_addr #1 align 2 !prof !35 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMTreeWalkerImpl", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_717DOMTreeWalkerImpl25getExpandEntityReferencesEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(41) %0) unnamed_addr #1 align 2 !prof !35 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMTreeWalkerImpl", ptr %0, i64 0, i32 5
  %3 = load i8, ptr %2, align 8, !tbaa !46, !range !47, !noundef !48
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZN11xercesc_2_717DOMTreeWalkerImpl14getCurrentNodeEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(41) %0) unnamed_addr #1 align 2 !prof !35 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMTreeWalkerImpl", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !49
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_717DOMTreeWalkerImpl10parentNodeEv(ptr nocapture noundef nonnull align 8 dereferenceable(41) %0) unnamed_addr #2 align 2 !prof !35 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMTreeWalkerImpl", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !49
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xercesc_2_717DOMTreeWalkerImpl13getParentNodeEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull %3) #11
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %5
  store ptr %6, ptr %2, align 8, !tbaa !49
  br label %9

9:                                                ; preds = %5, %8, %1
  %10 = phi ptr [ null, %1 ], [ %6, %8 ], [ null, %5 ]
  ret ptr %10
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_717DOMTreeWalkerImpl10firstChildEv(ptr nocapture noundef nonnull align 8 dereferenceable(41) %0) unnamed_addr #2 align 2 !prof !35 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMTreeWalkerImpl", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !49
  %4 = icmp eq ptr %3, null
  br i1 %4, label %22, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMTreeWalkerImpl", ptr %0, i64 0, i32 5
  %7 = load i8, ptr %6, align 8, !tbaa !46, !range !47, !noundef !48
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %5
  %10 = load ptr, ptr %3, align 8, !tbaa !50
  %11 = getelementptr inbounds ptr, ptr %10, i64 4
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef signext i16 %12(ptr noundef nonnull align 8 dereferenceable(8) %3) #11
  %14 = icmp eq i16 %13, 5
  br i1 %14, label %22, label %15

15:                                               ; preds = %9
  %16 = load ptr, ptr %2, align 8, !tbaa !49
  br label %17

17:                                               ; preds = %15, %5
  %18 = phi ptr [ %16, %15 ], [ %3, %5 ]
  %19 = tail call noundef ptr @_ZN11xercesc_2_717DOMTreeWalkerImpl13getFirstChildEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef %18) #11
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  store ptr %19, ptr %2, align 8, !tbaa !49
  br label %22

22:                                               ; preds = %17, %21, %9, %1
  %23 = phi ptr [ null, %1 ], [ null, %9 ], [ %19, %21 ], [ null, %17 ]
  ret ptr %23
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_717DOMTreeWalkerImpl9lastChildEv(ptr nocapture noundef nonnull align 8 dereferenceable(41) %0) unnamed_addr #2 align 2 !prof !35 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMTreeWalkerImpl", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !49
  %4 = icmp eq ptr %3, null
  br i1 %4, label %22, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMTreeWalkerImpl", ptr %0, i64 0, i32 5
  %7 = load i8, ptr %6, align 8, !tbaa !46, !range !47, !noundef !48
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %5
  %10 = load ptr, ptr %3, align 8, !tbaa !50
  %11 = getelementptr inbounds ptr, ptr %10, i64 4
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef signext i16 %12(ptr noundef nonnull align 8 dereferenceable(8) %3) #11
  %14 = icmp eq i16 %13, 5
  br i1 %14, label %22, label %15

15:                                               ; preds = %9
  %16 = load ptr, ptr %2, align 8, !tbaa !49
  br label %17

17:                                               ; preds = %15, %5
  %18 = phi ptr [ %16, %15 ], [ %3, %5 ]
  %19 = tail call noundef ptr @_ZN11xercesc_2_717DOMTreeWalkerImpl12getLastChildEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef %18) #11
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  store ptr %19, ptr %2, align 8, !tbaa !49
  br label %22

22:                                               ; preds = %17, %21, %9, %1
  %23 = phi ptr [ null, %1 ], [ null, %9 ], [ %19, %21 ], [ null, %17 ]
  ret ptr %23
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_717DOMTreeWalkerImpl15previousSiblingEv(ptr nocapture noundef nonnull align 8 dereferenceable(41) %0) unnamed_addr #2 align 2 !prof !35 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMTreeWalkerImpl", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !49
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xercesc_2_717DOMTreeWalkerImpl18getPreviousSiblingEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull %3) #11
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %5
  store ptr %6, ptr %2, align 8, !tbaa !49
  br label %9

9:                                                ; preds = %5, %8, %1
  %10 = phi ptr [ null, %1 ], [ %6, %8 ], [ null, %5 ]
  ret ptr %10
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_717DOMTreeWalkerImpl11nextSiblingEv(ptr nocapture noundef nonnull align 8 dereferenceable(41) %0) unnamed_addr #2 align 2 !prof !35 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMTreeWalkerImpl", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !49
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xercesc_2_717DOMTreeWalkerImpl14getNextSiblingEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull %3) #11
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %5
  store ptr %6, ptr %2, align 8, !tbaa !49
  br label %9

9:                                                ; preds = %5, %8, %1
  %10 = phi ptr [ null, %1 ], [ %6, %8 ], [ null, %5 ]
  ret ptr %10
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_717DOMTreeWalkerImpl12previousNodeEv(ptr nocapture noundef nonnull align 8 dereferenceable(41) %0) unnamed_addr #2 align 2 !prof !35 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMTreeWalkerImpl", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !49
  %4 = icmp eq ptr %3, null
  br i1 %4, label %18, label %5

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xercesc_2_717DOMTreeWalkerImpl18getPreviousSiblingEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull %3) #11
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = load ptr, ptr %2, align 8, !tbaa !49
  %10 = tail call noundef ptr @_ZN11xercesc_2_717DOMTreeWalkerImpl13getParentNodeEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef %9) #11
  %11 = icmp eq ptr %10, null
  br i1 %11, label %18, label %16

12:                                               ; preds = %5
  %13 = tail call noundef ptr @_ZN11xercesc_2_717DOMTreeWalkerImpl12getLastChildEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull %6) #11
  %14 = icmp eq ptr %13, null
  %15 = select i1 %14, ptr %6, ptr %13
  br label %16

16:                                               ; preds = %8, %12
  %17 = phi ptr [ %15, %12 ], [ %10, %8 ]
  store ptr %17, ptr %2, align 8, !tbaa !49
  br label %18

18:                                               ; preds = %16, %8, %1
  %19 = phi ptr [ null, %1 ], [ null, %8 ], [ %17, %16 ]
  ret ptr %19
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_717DOMTreeWalkerImpl8nextNodeEv(ptr nocapture noundef nonnull align 8 dereferenceable(41) %0) unnamed_addr #2 align 2 !prof !35 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMTreeWalkerImpl", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !49
  %4 = icmp eq ptr %3, null
  br i1 %4, label %25, label %5

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xercesc_2_717DOMTreeWalkerImpl13getFirstChildEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull %3) #11
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %23

8:                                                ; preds = %5
  %9 = load ptr, ptr %2, align 8, !tbaa !49
  %10 = tail call noundef ptr @_ZN11xercesc_2_717DOMTreeWalkerImpl14getNextSiblingEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef %9) #11
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %23

12:                                               ; preds = %8
  %13 = load ptr, ptr %2, align 8, !tbaa !49
  %14 = tail call noundef ptr @_ZN11xercesc_2_717DOMTreeWalkerImpl13getParentNodeEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef %13) #11
  %15 = icmp eq ptr %14, null
  br i1 %15, label %25, label %16

16:                                               ; preds = %12, %20
  %17 = phi ptr [ %21, %20 ], [ %14, %12 ]
  %18 = tail call noundef ptr @_ZN11xercesc_2_717DOMTreeWalkerImpl14getNextSiblingEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull %17) #11
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = tail call noundef ptr @_ZN11xercesc_2_717DOMTreeWalkerImpl13getParentNodeEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull %17) #11
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %16, !llvm.loop !52

23:                                               ; preds = %16, %8, %5
  %24 = phi ptr [ %6, %5 ], [ %10, %8 ], [ %18, %16 ]
  store ptr %24, ptr %2, align 8, !tbaa !49
  br label %25

25:                                               ; preds = %20, %23, %12, %1
  %26 = phi ptr [ null, %1 ], [ null, %12 ], [ %24, %23 ], [ null, %20 ]
  ret ptr %26
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717DOMTreeWalkerImpl14setCurrentNodeEPNS_7DOMNodeE(ptr nocapture noundef nonnull align 8 dereferenceable(41) %0, ptr noundef %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %4, label %33

4:                                                ; preds = %2
  %5 = tail call ptr @__cxa_allocate_exception(i64 40) #12
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMTreeWalkerImpl", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !49
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %4
  %10 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !54
  br label %28

11:                                               ; preds = %4
  %12 = load ptr, ptr %7, align 8, !tbaa !50
  %13 = getelementptr inbounds ptr, ptr %12, i64 12
  %14 = load ptr, ptr %13, align 8
  %15 = invoke noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(8) %7) #11
          to label %16 unwind label %31

16:                                               ; preds = %11
  %17 = icmp eq ptr %15, null
  br i1 %17, label %26, label %18

18:                                               ; preds = %16
  %19 = load ptr, ptr %6, align 8, !tbaa !49
  %20 = load ptr, ptr %19, align 8, !tbaa !50
  %21 = getelementptr inbounds ptr, ptr %20, i64 12
  %22 = load ptr, ptr %21, align 8
  %23 = invoke noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(8) %19) #11
          to label %24 unwind label %31

24:                                               ; preds = %18
  %25 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %23) #11
  br label %28

26:                                               ; preds = %16
  %27 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !54
  br label %28

28:                                               ; preds = %24, %26, %9
  %29 = phi ptr [ %10, %9 ], [ %25, %24 ], [ %27, %26 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %5, i16 noundef signext 9, ptr noundef null, ptr noundef %29) #11
          to label %30 unwind label %31

30:                                               ; preds = %28
  tail call void @__cxa_throw(ptr nonnull %5, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #13
  unreachable

31:                                               ; preds = %28, %18, %11
  %32 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %5) #12
  resume { ptr, i32 } %32

33:                                               ; preds = %2
  %34 = getelementptr inbounds %"class.xercesc_2_7::DOMTreeWalkerImpl", ptr %0, i64 0, i32 3
  store ptr %1, ptr %34, align 8, !tbaa !49
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_717DOMTreeWalkerImpl7releaseEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #3 align 2 !prof !35 {
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_717DOMTreeWalkerImplC2EPNS_7DOMNodeEmPNS_13DOMNodeFilterEb(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i1 noundef zeroext %4) unnamed_addr #0 align 2 !prof !35 {
  %6 = zext i1 %4 to i8
  tail call void @_ZN11xercesc_2_713DOMTreeWalkerC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  store ptr getelementptr inbounds ({ [18 x ptr] }, ptr @_ZTVN11xercesc_2_717DOMTreeWalkerImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !50
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMTreeWalkerImpl", ptr %0, i64 0, i32 1
  store i64 %2, ptr %7, align 8, !tbaa !44
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMTreeWalkerImpl", ptr %0, i64 0, i32 2
  store ptr %3, ptr %8, align 8, !tbaa !45
  %9 = getelementptr inbounds %"class.xercesc_2_7::DOMTreeWalkerImpl", ptr %0, i64 0, i32 3
  store ptr %1, ptr %9, align 8, !tbaa !49
  %10 = getelementptr inbounds %"class.xercesc_2_7::DOMTreeWalkerImpl", ptr %0, i64 0, i32 4
  store ptr %1, ptr %10, align 8, !tbaa !36
  %11 = getelementptr inbounds %"class.xercesc_2_7::DOMTreeWalkerImpl", ptr %0, i64 0, i32 5
  store i8 %6, ptr %11, align 8, !tbaa !46
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713DOMTreeWalkerC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !prof !35 {
  store ptr getelementptr inbounds ({ [18 x ptr] }, ptr @_ZTVN11xercesc_2_713DOMTreeWalkerE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !50
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713DOMTreeWalkerD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
  tail call void @llvm.trap() #14
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_717DOMTreeWalkerImplC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(41) %1) unnamed_addr #0 align 2 !prof !35 {
  tail call void @_ZN11xercesc_2_713DOMTreeWalkerC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #11
  store ptr getelementptr inbounds ({ [18 x ptr] }, ptr @_ZTVN11xercesc_2_717DOMTreeWalkerImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !50
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMTreeWalkerImpl", ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMTreeWalkerImpl", ptr %1, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !44
  store i64 %5, ptr %3, align 8, !tbaa !44
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMTreeWalkerImpl", ptr %0, i64 0, i32 2
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMTreeWalkerImpl", ptr %1, i64 0, i32 2
  %8 = load <2 x ptr>, ptr %7, align 8, !tbaa !54
  store <2 x ptr> %8, ptr %6, align 8, !tbaa !54
  %9 = getelementptr inbounds %"class.xercesc_2_7::DOMTreeWalkerImpl", ptr %0, i64 0, i32 4
  %10 = getelementptr inbounds %"class.xercesc_2_7::DOMTreeWalkerImpl", ptr %1, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !36
  store ptr %11, ptr %9, align 8, !tbaa !36
  %12 = getelementptr inbounds %"class.xercesc_2_7::DOMTreeWalkerImpl", ptr %0, i64 0, i32 5
  %13 = getelementptr inbounds %"class.xercesc_2_7::DOMTreeWalkerImpl", ptr %1, i64 0, i32 5
  %14 = load i8, ptr %13, align 8, !tbaa !46, !range !47, !noundef !48
  store i8 %14, ptr %12, align 8, !tbaa !46
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713DOMTreeWalkerC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 !prof !35 {
  store ptr getelementptr inbounds ({ [18 x ptr] }, ptr @_ZTVN11xercesc_2_713DOMTreeWalkerE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !50
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local noundef nonnull align 8 dereferenceable(41) ptr @_ZN11xercesc_2_717DOMTreeWalkerImplaSERKS0_(ptr noundef nonnull returned writeonly align 8 dereferenceable(41) %0, ptr noundef nonnull readonly align 8 dereferenceable(41) %1) local_unnamed_addr #6 align 2 !prof !35 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %17, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMTreeWalkerImpl", ptr %1, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !36
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMTreeWalkerImpl", ptr %0, i64 0, i32 4
  store ptr %6, ptr %7, align 8, !tbaa !36
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMTreeWalkerImpl", ptr %1, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !44
  %10 = getelementptr inbounds %"class.xercesc_2_7::DOMTreeWalkerImpl", ptr %0, i64 0, i32 1
  store i64 %9, ptr %10, align 8, !tbaa !44
  %11 = getelementptr inbounds %"class.xercesc_2_7::DOMTreeWalkerImpl", ptr %1, i64 0, i32 2
  %12 = getelementptr inbounds %"class.xercesc_2_7::DOMTreeWalkerImpl", ptr %0, i64 0, i32 2
  %13 = load <2 x ptr>, ptr %11, align 8, !tbaa !54
  store <2 x ptr> %13, ptr %12, align 8, !tbaa !54
  %14 = getelementptr inbounds %"class.xercesc_2_7::DOMTreeWalkerImpl", ptr %1, i64 0, i32 5
  %15 = load i8, ptr %14, align 8, !tbaa !46, !range !47, !noundef !48
  %16 = getelementptr inbounds %"class.xercesc_2_7::DOMTreeWalkerImpl", ptr %0, i64 0, i32 5
  store i8 %15, ptr %16, align 8, !tbaa !46
  br label %17

17:                                               ; preds = %4, %2
  ret ptr %0
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %0) local_unnamed_addr #0 comdat align 2 !prof !55 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 25
  %3 = load ptr, ptr %2, align 8, !tbaa !56
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33), i16 noundef signext, ptr noundef, ptr noundef) unnamed_addr #7

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712DOMExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(33)) unnamed_addr #8

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_717DOMTreeWalkerImpl13getParentNodeEPNS_7DOMNodeE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(41) %0, ptr noundef %1) local_unnamed_addr #2 align 2 !prof !35 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMTreeWalkerImpl", ptr %0, i64 0, i32 4
  br label %4

4:                                                ; preds = %16, %2
  %5 = phi ptr [ %1, %2 ], [ %14, %16 ]
  %6 = icmp eq ptr %5, null
  %7 = load ptr, ptr %3, align 8
  %8 = icmp eq ptr %7, %5
  %9 = select i1 %6, i1 true, i1 %8
  br i1 %9, label %19, label %10

10:                                               ; preds = %4
  %11 = load ptr, ptr %5, align 8, !tbaa !50
  %12 = getelementptr inbounds ptr, ptr %11, i64 5
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(8) %5) #11
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %10
  %17 = tail call noundef signext i16 @_ZN11xercesc_2_717DOMTreeWalkerImpl10acceptNodeEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull %14) #11
  %18 = icmp eq i16 %17, 1
  br i1 %18, label %19, label %4

19:                                               ; preds = %10, %16, %4
  %20 = phi ptr [ null, %4 ], [ null, %10 ], [ %14, %16 ]
  ret ptr %20
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_717DOMTreeWalkerImpl13getFirstChildEPNS_7DOMNodeE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(41) %0, ptr noundef %1) local_unnamed_addr #2 align 2 !prof !35 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMTreeWalkerImpl", ptr %0, i64 0, i32 5
  br label %4

4:                                                ; preds = %24, %2
  %5 = phi ptr [ %1, %2 ], [ %20, %24 ]
  %6 = icmp eq ptr %5, null
  br i1 %6, label %31, label %7

7:                                                ; preds = %4
  %8 = load i8, ptr %3, align 8, !tbaa !46, !range !47, !noundef !48
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %7
  %11 = load ptr, ptr %5, align 8, !tbaa !50
  %12 = getelementptr inbounds ptr, ptr %11, i64 4
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef signext i16 %13(ptr noundef nonnull align 8 dereferenceable(8) %5) #11
  %15 = icmp eq i16 %14, 5
  br i1 %15, label %31, label %16

16:                                               ; preds = %10, %7
  %17 = load ptr, ptr %5, align 8, !tbaa !50
  %18 = getelementptr inbounds ptr, ptr %17, i64 7
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %5) #11
  %21 = icmp eq ptr %20, null
  br i1 %21, label %31, label %22

22:                                               ; preds = %16
  %23 = tail call noundef signext i16 @_ZN11xercesc_2_717DOMTreeWalkerImpl10acceptNodeEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull %20) #11
  switch i16 %23, label %29 [
    i16 1, label %31
    i16 3, label %24
  ]

24:                                               ; preds = %22
  %25 = load ptr, ptr %20, align 8, !tbaa !50
  %26 = getelementptr inbounds ptr, ptr %25, i64 18
  %27 = load ptr, ptr %26, align 8
  %28 = tail call noundef zeroext i1 %27(ptr noundef nonnull align 8 dereferenceable(8) %20) #11
  br i1 %28, label %4, label %29

29:                                               ; preds = %22, %24
  %30 = tail call noundef ptr @_ZN11xercesc_2_717DOMTreeWalkerImpl14getNextSiblingEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull %20) #11
  br label %31

31:                                               ; preds = %16, %22, %10, %4, %29
  %32 = phi ptr [ %30, %29 ], [ %20, %22 ], [ null, %16 ], [ null, %10 ], [ null, %4 ]
  ret ptr %32
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_717DOMTreeWalkerImpl12getLastChildEPNS_7DOMNodeE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(41) %0, ptr noundef %1) local_unnamed_addr #2 align 2 !prof !35 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMTreeWalkerImpl", ptr %0, i64 0, i32 5
  br label %4

4:                                                ; preds = %24, %2
  %5 = phi ptr [ %1, %2 ], [ %20, %24 ]
  %6 = icmp eq ptr %5, null
  br i1 %6, label %31, label %7

7:                                                ; preds = %4
  %8 = load i8, ptr %3, align 8, !tbaa !46, !range !47, !noundef !48
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %7
  %11 = load ptr, ptr %5, align 8, !tbaa !50
  %12 = getelementptr inbounds ptr, ptr %11, i64 4
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef signext i16 %13(ptr noundef nonnull align 8 dereferenceable(8) %5) #11
  %15 = icmp eq i16 %14, 5
  br i1 %15, label %31, label %16

16:                                               ; preds = %10, %7
  %17 = load ptr, ptr %5, align 8, !tbaa !50
  %18 = getelementptr inbounds ptr, ptr %17, i64 8
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %5) #11
  %21 = icmp eq ptr %20, null
  br i1 %21, label %31, label %22

22:                                               ; preds = %16
  %23 = tail call noundef signext i16 @_ZN11xercesc_2_717DOMTreeWalkerImpl10acceptNodeEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull %20) #11
  switch i16 %23, label %29 [
    i16 1, label %31
    i16 3, label %24
  ]

24:                                               ; preds = %22
  %25 = load ptr, ptr %20, align 8, !tbaa !50
  %26 = getelementptr inbounds ptr, ptr %25, i64 18
  %27 = load ptr, ptr %26, align 8
  %28 = tail call noundef zeroext i1 %27(ptr noundef nonnull align 8 dereferenceable(8) %20) #11
  br i1 %28, label %4, label %29

29:                                               ; preds = %22, %24
  %30 = tail call noundef ptr @_ZN11xercesc_2_717DOMTreeWalkerImpl18getPreviousSiblingEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull %20) #11
  br label %31

31:                                               ; preds = %16, %22, %10, %4, %29
  %32 = phi ptr [ %30, %29 ], [ %20, %22 ], [ null, %16 ], [ null, %10 ], [ null, %4 ]
  ret ptr %32
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_717DOMTreeWalkerImpl18getPreviousSiblingEPNS_7DOMNodeE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(41) %0, ptr noundef %1) local_unnamed_addr #2 align 2 !prof !35 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMTreeWalkerImpl", ptr %0, i64 0, i32 4
  %4 = icmp eq ptr %1, null
  %5 = load ptr, ptr %3, align 8
  %6 = icmp eq ptr %5, %1
  %7 = select i1 %4, i1 true, i1 %6
  br i1 %7, label %41, label %8

8:                                                ; preds = %2, %27
  %9 = phi ptr [ %28, %27 ], [ %1, %2 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !50
  %11 = getelementptr inbounds ptr, ptr %10, i64 9
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(8) %9) #11
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %31

15:                                               ; preds = %8
  %16 = load ptr, ptr %9, align 8, !tbaa !50
  %17 = getelementptr inbounds ptr, ptr %16, i64 5
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %9) #11
  %20 = icmp eq ptr %19, null
  %21 = load ptr, ptr %3, align 8
  %22 = icmp eq ptr %21, %9
  %23 = select i1 %20, i1 true, i1 %22
  br i1 %23, label %41, label %24

24:                                               ; preds = %15
  %25 = tail call noundef signext i16 @_ZN11xercesc_2_717DOMTreeWalkerImpl10acceptNodeEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull %19) #11
  %26 = icmp eq i16 %25, 3
  br i1 %26, label %27, label %41

27:                                               ; preds = %24, %36, %31
  %28 = phi ptr [ %19, %24 ], [ %13, %36 ], [ %13, %31 ]
  %29 = load ptr, ptr %3, align 8, !tbaa !36
  %30 = icmp eq ptr %29, %28
  br i1 %30, label %41, label %8

31:                                               ; preds = %8
  %32 = tail call noundef signext i16 @_ZN11xercesc_2_717DOMTreeWalkerImpl10acceptNodeEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull %13) #11
  switch i16 %32, label %27 [
    i16 1, label %41
    i16 3, label %33
  ]

33:                                               ; preds = %31
  %34 = tail call noundef ptr @_ZN11xercesc_2_717DOMTreeWalkerImpl12getLastChildEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull %13) #11
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = load ptr, ptr %13, align 8, !tbaa !50
  %38 = getelementptr inbounds ptr, ptr %37, i64 18
  %39 = load ptr, ptr %38, align 8
  %40 = tail call noundef zeroext i1 %39(ptr noundef nonnull align 8 dereferenceable(8) %13) #11
  br i1 %40, label %41, label %27

41:                                               ; preds = %15, %24, %36, %33, %31, %27, %2
  %42 = phi ptr [ null, %2 ], [ null, %27 ], [ %13, %31 ], [ %34, %33 ], [ null, %36 ], [ null, %24 ], [ null, %15 ]
  ret ptr %42
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_717DOMTreeWalkerImpl14getNextSiblingEPNS_7DOMNodeE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(41) %0, ptr noundef %1) local_unnamed_addr #2 align 2 !prof !35 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMTreeWalkerImpl", ptr %0, i64 0, i32 4
  %4 = icmp eq ptr %1, null
  %5 = load ptr, ptr %3, align 8
  %6 = icmp eq ptr %5, %1
  %7 = select i1 %4, i1 true, i1 %6
  br i1 %7, label %41, label %8

8:                                                ; preds = %2, %27
  %9 = phi ptr [ %28, %27 ], [ %1, %2 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !50
  %11 = getelementptr inbounds ptr, ptr %10, i64 10
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(8) %9) #11
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %31

15:                                               ; preds = %8
  %16 = load ptr, ptr %9, align 8, !tbaa !50
  %17 = getelementptr inbounds ptr, ptr %16, i64 5
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %9) #11
  %20 = icmp eq ptr %19, null
  %21 = load ptr, ptr %3, align 8
  %22 = icmp eq ptr %21, %9
  %23 = select i1 %20, i1 true, i1 %22
  br i1 %23, label %41, label %24

24:                                               ; preds = %15
  %25 = tail call noundef signext i16 @_ZN11xercesc_2_717DOMTreeWalkerImpl10acceptNodeEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull %19) #11
  %26 = icmp eq i16 %25, 3
  br i1 %26, label %27, label %41

27:                                               ; preds = %24, %36, %31
  %28 = phi ptr [ %19, %24 ], [ %13, %36 ], [ %13, %31 ]
  %29 = load ptr, ptr %3, align 8, !tbaa !36
  %30 = icmp eq ptr %29, %28
  br i1 %30, label %41, label %8

31:                                               ; preds = %8
  %32 = tail call noundef signext i16 @_ZN11xercesc_2_717DOMTreeWalkerImpl10acceptNodeEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull %13) #11
  switch i16 %32, label %27 [
    i16 1, label %41
    i16 3, label %33
  ]

33:                                               ; preds = %31
  %34 = tail call noundef ptr @_ZN11xercesc_2_717DOMTreeWalkerImpl13getFirstChildEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull %13) #11
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = load ptr, ptr %13, align 8, !tbaa !50
  %38 = getelementptr inbounds ptr, ptr %37, i64 18
  %39 = load ptr, ptr %38, align 8
  %40 = tail call noundef zeroext i1 %39(ptr noundef nonnull align 8 dereferenceable(8) %13) #11
  br i1 %40, label %41, label %27

41:                                               ; preds = %15, %24, %36, %33, %31, %27, %2
  %42 = phi ptr [ null, %2 ], [ null, %27 ], [ %13, %31 ], [ %34, %33 ], [ null, %36 ], [ null, %24 ], [ null, %15 ]
  ret ptr %42
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef signext i16 @_ZN11xercesc_2_717DOMTreeWalkerImpl10acceptNodeEPNS_7DOMNodeE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(41) %0, ptr noundef %1) local_unnamed_addr #2 align 2 !prof !35 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMTreeWalkerImpl", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq ptr %4, null
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMTreeWalkerImpl", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !44
  %8 = load ptr, ptr %1, align 8, !tbaa !50
  %9 = getelementptr inbounds ptr, ptr %8, i64 4
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef signext i16 %10(ptr noundef nonnull align 8 dereferenceable(8) %1) #11
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
  %22 = load ptr, ptr %21, align 8, !tbaa !50
  %23 = getelementptr inbounds ptr, ptr %22, i64 2
  %24 = load ptr, ptr %23, align 8
  %25 = tail call noundef signext i16 %24(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef nonnull %1) #11
  br i1 %17, label %26, label %29

26:                                               ; preds = %20
  %27 = icmp eq i16 %25, 2
  %28 = select i1 %27, i16 2, i16 3
  br label %29

29:                                               ; preds = %20, %26, %18
  %30 = phi i16 [ %19, %18 ], [ %28, %26 ], [ %25, %20 ]
  ret i16 %30
}

attributes #0 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind optsize }
attributes #10 = { builtin nounwind optsize }
attributes #11 = { optsize }
attributes #12 = { nounwind }
attributes #13 = { noreturn }
attributes #14 = { noreturn nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

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
!34 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!35 = !{!"function_entry_count", i64 0}
!36 = !{!37, !42, i64 32}
!37 = !{!"_ZTSN11xercesc_2_717DOMTreeWalkerImplE", !38, i64 0, !39, i64 8, !42, i64 16, !42, i64 24, !42, i64 32, !43, i64 40}
!38 = !{!"_ZTSN11xercesc_2_713DOMTreeWalkerE"}
!39 = !{!"long", !40, i64 0}
!40 = !{!"omnipotent char", !41, i64 0}
!41 = !{!"Simple C++ TBAA"}
!42 = !{!"any pointer", !40, i64 0}
!43 = !{!"bool", !40, i64 0}
!44 = !{!37, !39, i64 8}
!45 = !{!37, !42, i64 16}
!46 = !{!37, !43, i64 40}
!47 = !{i8 0, i8 2}
!48 = !{}
!49 = !{!37, !42, i64 24}
!50 = !{!51, !51, i64 0}
!51 = !{!"vtable pointer", !41, i64 0}
!52 = distinct !{!52, !53}
!53 = !{!"llvm.loop.mustprogress"}
!54 = !{!42, !42, i64 0}
!55 = !{!"function_entry_count", i64 2954}
!56 = !{!57, !42, i64 280}
!57 = !{!"_ZTSN11xercesc_2_715DOMDocumentImplE", !58, i64 0, !63, i64 32, !65, i64 48, !42, i64 80, !42, i64 88, !42, i64 96, !43, i64 104, !42, i64 112, !42, i64 120, !42, i64 128, !68, i64 136, !42, i64 176, !42, i64 184, !42, i64 192, !39, i64 200, !42, i64 208, !42, i64 216, !42, i64 224, !42, i64 232, !42, i64 240, !42, i64 248, !42, i64 256, !42, i64 264, !42, i64 272, !42, i64 280, !70, i64 288, !43, i64 292}
!58 = !{!"_ZTSN11xercesc_2_711DOMDocumentE", !59, i64 0, !60, i64 8, !61, i64 16, !62, i64 24}
!59 = !{!"_ZTSN11xercesc_2_716DOMDocumentRangeE"}
!60 = !{!"_ZTSN11xercesc_2_717DOMXPathEvaluatorE"}
!61 = !{!"_ZTSN11xercesc_2_720DOMDocumentTraversalE"}
!62 = !{!"_ZTSN11xercesc_2_77DOMNodeE"}
!63 = !{!"_ZTSN11xercesc_2_711DOMNodeImplE", !42, i64 0, !64, i64 8}
!64 = !{!"short", !40, i64 0}
!65 = !{!"_ZTSN11xercesc_2_713DOMParentNodeE", !42, i64 0, !42, i64 8, !66, i64 16}
!66 = !{!"_ZTSN11xercesc_2_715DOMNodeListImplE", !67, i64 0, !42, i64 8}
!67 = !{!"_ZTSN11xercesc_2_711DOMNodeListE"}
!68 = !{!"_ZTSN11xercesc_2_713XMLStringPoolE", !69, i64 0, !42, i64 8, !42, i64 16, !42, i64 24, !70, i64 32, !70, i64 36}
!69 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!70 = !{!"int", !40, i64 0}
