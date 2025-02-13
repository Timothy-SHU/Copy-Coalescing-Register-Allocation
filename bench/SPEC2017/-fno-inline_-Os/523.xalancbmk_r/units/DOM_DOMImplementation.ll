; ModuleID = 'DOM_DOMImplementation.cpp'
source_filename = "DOM_DOMImplementation.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XMLRegisterCleanup" = type { ptr, ptr, ptr }
%"class.xercesc_2_7::DOM_DocumentType" = type { %"class.xercesc_2_7::DOM_Node" }
%"class.xercesc_2_7::DOM_Node" = type { ptr }
%"class.xercesc_2_7::DOMString" = type { ptr }
%"class.xercesc_2_7::DOM_Document" = type { %"class.xercesc_2_7::DOM_Node" }

$_ZN11xercesc_2_79XMLString9stringLenEPKt = comdat any

@_ZN11xercesc_2_7L28DOM_DOMImplementationCleanupE = internal global %"class.xercesc_2_7::XMLRegisterCleanup" zeroinitializer, align 8
@_ZZN11xercesc_2_721DOM_DOMImplementation17getImplementationEvE21implementationCleanup = internal global %"class.xercesc_2_7::XMLRegisterCleanup" zeroinitializer, align 8
@_ZGVZN11xercesc_2_721DOM_DOMImplementation17getImplementationEvE21implementationCleanup = internal global i64 0, align 8
@_ZN11xercesc_2_7L7gDomimpE = internal global ptr null, align 8
@.str = private unnamed_addr constant [4 x i8] c"1.0\00", align 1
@_ZN11xercesc_2_7L4g1_0E = internal global ptr null, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"2.0\00", align 1
@_ZN11xercesc_2_7L4g2_0E = internal global ptr null, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"XML\00", align 1
@_ZN11xercesc_2_7L4gXMLE = internal global ptr null, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"Core\00", align 1
@_ZN11xercesc_2_7L5gCoreE = internal global ptr null, align 8
@.str.4 = private unnamed_addr constant [10 x i8] c"Traversal\00", align 1
@_ZN11xercesc_2_7L5gTravE = internal global ptr null, align 8
@.str.5 = private unnamed_addr constant [6 x i8] c"Range\00", align 1
@_ZN11xercesc_2_7L6gRangeE = internal global ptr null, align 8
@_ZTIN11xercesc_2_716DOM_DOMExceptionE = external constant ptr
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_DOM_DOMImplementation.cpp, ptr null }]

@_ZN11xercesc_2_721DOM_DOMImplementationC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_721DOM_DOMImplementationC2Ev
@_ZN11xercesc_2_721DOM_DOMImplementationC1ERKS0_ = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_721DOM_DOMImplementationC2ERKS0_
@_ZN11xercesc_2_721DOM_DOMImplementationD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_721DOM_DOMImplementationD2Ev

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init() unnamed_addr #1 section ".text.startup" {
  tail call void @_ZN11xercesc_2_718XMLRegisterCleanupC1Ev(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L28DOM_DOMImplementationCleanupE) #10
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_718XMLRegisterCleanupC1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_721DOM_DOMImplementationC2Ev(ptr nocapture nonnull readnone align 1 %0) unnamed_addr #3 align 2 !prof !34 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_721DOM_DOMImplementationC2ERKS0_(ptr nocapture nonnull readnone align 1 %0, ptr nocapture nonnull readnone align 1 %1) unnamed_addr #3 align 2 !prof !34 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_721DOM_DOMImplementationD2Ev(ptr nocapture nonnull readnone align 1 %0) unnamed_addr #3 align 2 !prof !34 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZN11xercesc_2_721DOM_DOMImplementationaSERKS0_(ptr noundef nonnull readnone returned align 1 dereferenceable(1) %0, ptr nocapture noundef nonnull readnone align 1 dereferenceable(1) %1) local_unnamed_addr #3 align 2 !prof !34 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZN11xercesc_2_721DOM_DOMImplementation17getImplementationEv() local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %1 = load atomic i8, ptr @_ZGVZN11xercesc_2_721DOM_DOMImplementation17getImplementationEvE21implementationCleanup acquire, align 8
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %3, label %8, !prof !35

3:                                                ; preds = %0
  %4 = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN11xercesc_2_721DOM_DOMImplementation17getImplementationEvE21implementationCleanup) #11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  invoke void @_ZN11xercesc_2_718XMLRegisterCleanupC1Ev(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN11xercesc_2_721DOM_DOMImplementation17getImplementationEvE21implementationCleanup) #10
          to label %7 unwind label %16

7:                                                ; preds = %6
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN11xercesc_2_721DOM_DOMImplementation17getImplementationEvE21implementationCleanup) #11
  br label %8

8:                                                ; preds = %7, %3, %0
  %9 = load ptr, ptr @_ZN11xercesc_2_7L7gDomimpE, align 8, !tbaa !36
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %19

11:                                               ; preds = %8
  %12 = tail call noalias noundef nonnull dereferenceable(1) ptr @_Znwm(i64 noundef 1) #12
  %13 = tail call noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils14compareAndSwapEPPvPKvS4_(ptr noundef nonnull @_ZN11xercesc_2_7L7gDomimpE, ptr noundef nonnull %12, ptr noundef null) #10
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %11
  tail call void @_ZdlPv(ptr noundef nonnull %12) #13
  br label %19

16:                                               ; preds = %6
  %17 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN11xercesc_2_721DOM_DOMImplementation17getImplementationEvE21implementationCleanup) #11
  resume { ptr, i32 } %17

18:                                               ; preds = %11
  tail call void @_ZN11xercesc_2_718XMLRegisterCleanup15registerCleanupEPFvvE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN11xercesc_2_721DOM_DOMImplementation17getImplementationEvE21implementationCleanup, ptr noundef nonnull @_ZN11xercesc_2_7L20reinitImplementationEv) #10
  br label %19

19:                                               ; preds = %18, %15, %8
  %20 = load ptr, ptr @_ZN11xercesc_2_7L7gDomimpE, align 8, !tbaa !36
  ret ptr %20
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #5

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nofree nounwind
declare void @__cxa_guard_abort(ptr) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: nobuiltin optsize allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils14compareAndSwapEPPvPKvS4_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_718XMLRegisterCleanup15registerCleanupEPFvvE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define internal void @_ZN11xercesc_2_7L20reinitImplementationEv() #8 !prof !34 !PGOFuncName !40 {
  %1 = load ptr, ptr @_ZN11xercesc_2_7L7gDomimpE, align 8, !tbaa !36
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @_ZdlPv(ptr noundef nonnull %1) #13
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @_ZN11xercesc_2_7L7gDomimpE, align 8, !tbaa !36
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_721DOM_DOMImplementation10hasFeatureERKNS_9DOMStringES3_(ptr nocapture noundef nonnull readnone align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #4 align 2 !prof !34 {
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_79DOMStringeqEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef null) #10
  br i1 %4, label %8, label %5

5:                                                ; preds = %3
  %6 = tail call noundef i32 @_ZNK11xercesc_2_79DOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #10
  %7 = icmp eq i32 %6, 0
  br label %8

8:                                                ; preds = %5, %3
  %9 = phi i1 [ true, %3 ], [ %7, %5 ]
  %10 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_711DStringPool15getStaticStringEPKcPPNS_9DOMStringEPFvvERNS_18XMLRegisterCleanupE(ptr noundef nonnull @.str, ptr noundef nonnull @_ZN11xercesc_2_7L4g1_0E, ptr noundef nonnull @_ZN11xercesc_2_721DOM_DOMImplementation27reinitDOM_DOMImplementationEv, ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L28DOM_DOMImplementationCleanupE) #10
  %11 = tail call noundef zeroext i1 @_ZNK11xercesc_2_79DOMString6equalsERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %10) #10
  %12 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_711DStringPool15getStaticStringEPKcPPNS_9DOMStringEPFvvERNS_18XMLRegisterCleanupE(ptr noundef nonnull @.str.1, ptr noundef nonnull @_ZN11xercesc_2_7L4g2_0E, ptr noundef nonnull @_ZN11xercesc_2_721DOM_DOMImplementation27reinitDOM_DOMImplementationEv, ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L28DOM_DOMImplementationCleanupE) #10
  %13 = tail call noundef zeroext i1 @_ZNK11xercesc_2_79DOMString6equalsERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %12) #10
  %14 = tail call noundef ptr @_ZNK11xercesc_2_79DOMString9rawBufferEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #10
  %15 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_711DStringPool15getStaticStringEPKcPPNS_9DOMStringEPFvvERNS_18XMLRegisterCleanupE(ptr noundef nonnull @.str.2, ptr noundef nonnull @_ZN11xercesc_2_7L4gXMLE, ptr noundef nonnull @_ZN11xercesc_2_721DOM_DOMImplementation27reinitDOM_DOMImplementationEv, ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L28DOM_DOMImplementationCleanupE) #10
  %16 = tail call noundef ptr @_ZNK11xercesc_2_79DOMString9rawBufferEv(ptr noundef nonnull align 8 dereferenceable(8) %15) #10
  %17 = tail call noundef i32 @_ZN11xercesc_2_79XMLString14compareIStringEPKtS2_(ptr noundef %14, ptr noundef %16) #10
  %18 = icmp eq i32 %17, 0
  %19 = or i1 %9, %11
  %20 = or i1 %19, %13
  %21 = and i1 %20, %18
  br i1 %21, label %44, label %22

22:                                               ; preds = %8
  %23 = tail call noundef ptr @_ZNK11xercesc_2_79DOMString9rawBufferEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #10
  %24 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_711DStringPool15getStaticStringEPKcPPNS_9DOMStringEPFvvERNS_18XMLRegisterCleanupE(ptr noundef nonnull @.str.3, ptr noundef nonnull @_ZN11xercesc_2_7L5gCoreE, ptr noundef nonnull @_ZN11xercesc_2_721DOM_DOMImplementation27reinitDOM_DOMImplementationEv, ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L28DOM_DOMImplementationCleanupE) #10
  %25 = tail call noundef ptr @_ZNK11xercesc_2_79DOMString9rawBufferEv(ptr noundef nonnull align 8 dereferenceable(8) %24) #10
  %26 = tail call noundef i32 @_ZN11xercesc_2_79XMLString14compareIStringEPKtS2_(ptr noundef %23, ptr noundef %25) #10
  %27 = icmp eq i32 %26, 0
  %28 = and i1 %20, %27
  br i1 %28, label %44, label %29

29:                                               ; preds = %22
  %30 = tail call noundef ptr @_ZNK11xercesc_2_79DOMString9rawBufferEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #10
  %31 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_711DStringPool15getStaticStringEPKcPPNS_9DOMStringEPFvvERNS_18XMLRegisterCleanupE(ptr noundef nonnull @.str.4, ptr noundef nonnull @_ZN11xercesc_2_7L5gTravE, ptr noundef nonnull @_ZN11xercesc_2_721DOM_DOMImplementation27reinitDOM_DOMImplementationEv, ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L28DOM_DOMImplementationCleanupE) #10
  %32 = tail call noundef ptr @_ZNK11xercesc_2_79DOMString9rawBufferEv(ptr noundef nonnull align 8 dereferenceable(8) %31) #10
  %33 = tail call noundef i32 @_ZN11xercesc_2_79XMLString14compareIStringEPKtS2_(ptr noundef %30, ptr noundef %32) #10
  %34 = icmp eq i32 %33, 0
  %35 = or i1 %9, %13
  %36 = and i1 %35, %34
  br i1 %36, label %44, label %37

37:                                               ; preds = %29
  %38 = tail call noundef ptr @_ZNK11xercesc_2_79DOMString9rawBufferEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #10
  %39 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_711DStringPool15getStaticStringEPKcPPNS_9DOMStringEPFvvERNS_18XMLRegisterCleanupE(ptr noundef nonnull @.str.5, ptr noundef nonnull @_ZN11xercesc_2_7L6gRangeE, ptr noundef nonnull @_ZN11xercesc_2_721DOM_DOMImplementation27reinitDOM_DOMImplementationEv, ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L28DOM_DOMImplementationCleanupE) #10
  %40 = tail call noundef ptr @_ZNK11xercesc_2_79DOMString9rawBufferEv(ptr noundef nonnull align 8 dereferenceable(8) %39) #10
  %41 = tail call noundef i32 @_ZN11xercesc_2_79XMLString14compareIStringEPKtS2_(ptr noundef %38, ptr noundef %40) #10
  %42 = icmp eq i32 %41, 0
  %43 = and i1 %35, %42
  br label %44

44:                                               ; preds = %37, %29, %22, %8
  %45 = phi i1 [ true, %8 ], [ true, %22 ], [ true, %29 ], [ %43, %37 ]
  ret i1 %45
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_79DOMStringeqEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef i32 @_ZNK11xercesc_2_79DOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_79DOMString6equalsERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_711DStringPool15getStaticStringEPKcPPNS_9DOMStringEPFvvERNS_18XMLRegisterCleanupE(ptr noundef, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_721DOM_DOMImplementation27reinitDOM_DOMImplementationEv() #8 align 2 !prof !34 {
  %1 = load ptr, ptr @_ZN11xercesc_2_7L4gXMLE, align 8, !tbaa !36
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %1) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %1) #14
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @_ZN11xercesc_2_7L4gXMLE, align 8, !tbaa !36
  %5 = load ptr, ptr @_ZN11xercesc_2_7L4g1_0E, align 8, !tbaa !36
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %5) #14
  br label %8

8:                                                ; preds = %7, %4
  store ptr null, ptr @_ZN11xercesc_2_7L4g1_0E, align 8, !tbaa !36
  %9 = load ptr, ptr @_ZN11xercesc_2_7L4g2_0E, align 8, !tbaa !36
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  tail call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %9) #14
  br label %12

12:                                               ; preds = %11, %8
  store ptr null, ptr @_ZN11xercesc_2_7L4g2_0E, align 8, !tbaa !36
  %13 = load ptr, ptr @_ZN11xercesc_2_7L5gTravE, align 8, !tbaa !36
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  tail call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %13) #14
  br label %16

16:                                               ; preds = %15, %12
  store ptr null, ptr @_ZN11xercesc_2_7L5gTravE, align 8, !tbaa !36
  %17 = load ptr, ptr @_ZN11xercesc_2_7L6gRangeE, align 8, !tbaa !36
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  tail call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %17) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %17) #14
  br label %20

20:                                               ; preds = %19, %16
  store ptr null, ptr @_ZN11xercesc_2_7L6gRangeE, align 8, !tbaa !36
  %21 = load ptr, ptr @_ZN11xercesc_2_7L5gCoreE, align 8, !tbaa !36
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  tail call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %21) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %21) #14
  br label %24

24:                                               ; preds = %23, %20
  store ptr null, ptr @_ZN11xercesc_2_7L5gCoreE, align 8, !tbaa !36
  ret void
}

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_79XMLString14compareIStringEPKtS2_(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_79DOMString9rawBufferEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_721DOM_DOMImplementation18createDocumentTypeERKNS_9DOMStringES3_S3_(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOM_DocumentType") align 8 %0, ptr nocapture noundef nonnull readnone align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %6 = alloca %"class.xercesc_2_7::DOMString", align 8
  %7 = tail call noundef ptr @_ZNK11xercesc_2_79DOMString9rawBufferEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #10
  %8 = tail call noundef ptr @_ZNK11xercesc_2_79DOMString9rawBufferEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #10
  %9 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %8) #10
  %10 = tail call noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_011isValidNameEPKtj(ptr noundef %7, i32 noundef %9) #10
  br i1 %10, label %23, label %11

11:                                               ; preds = %5
  %12 = tail call ptr @__cxa_allocate_exception(i64 24) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #11
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 0) #10
          to label %13 unwind label %17

13:                                               ; preds = %11
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %12, i16 noundef signext 5, ptr noundef nonnull align 8 dereferenceable(8) %6) #10
          to label %16 unwind label %14

14:                                               ; preds = %13
  %15 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  br label %21

16:                                               ; preds = %13
  invoke void @__cxa_throw(ptr nonnull %12, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #15
          to label %30 unwind label %19

17:                                               ; preds = %11
  %18 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  br label %21

19:                                               ; preds = %16
  %20 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  br label %28

21:                                               ; preds = %14, %17
  %22 = phi { ptr, i32 } [ %18, %17 ], [ %15, %14 ]
  call void @__cxa_free_exception(ptr %12) #11
  br label %28

23:                                               ; preds = %5
  %24 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 152) #10
  invoke void @_ZN11xercesc_2_716DocumentTypeImplC1EPNS_12DocumentImplERKNS_9DOMStringES5_S5_(ptr noundef nonnull align 8 dereferenceable(145) %24, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #10
          to label %25 unwind label %26

25:                                               ; preds = %23
  tail call void @_ZN11xercesc_2_716DOM_DocumentTypeC1EPNS_16DocumentTypeImplE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %24) #10
  ret void

26:                                               ; preds = %23
  %27 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef %24) #14
  br label %28

28:                                               ; preds = %19, %21, %26
  %29 = phi { ptr, i32 } [ %27, %26 ], [ %22, %21 ], [ %20, %19 ]
  resume { ptr, i32 } %29

30:                                               ; preds = %16
  unreachable
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_011isValidNameEPKtj(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %0) local_unnamed_addr #8 comdat align 2 !prof !41 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3, !prof !42

3:                                                ; preds = %1
  %4 = load i16, ptr %0, align 2, !tbaa !43
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %17, label %6, !prof !45

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %8, %6 ], [ %0, %3 ]
  %8 = getelementptr inbounds i16, ptr %7, i64 1
  %9 = load i16, ptr %8, align 2, !tbaa !43
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %6, !prof !46, !llvm.loop !47

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

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24), i16 noundef signext, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #9

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #9

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_716DocumentTypeImplC1EPNS_12DocumentImplERKNS_9DOMStringES5_S5_(ptr noundef nonnull align 8 dereferenceable(145), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @_ZN11xercesc_2_716DOM_DocumentTypeC1EPNS_16DocumentTypeImplE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_721DOM_DOMImplementation14createDocumentERKNS_9DOMStringES3_RKNS_16DOM_DocumentTypeEPNS_13MemoryManagerE(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOM_Document") align 8 %0, ptr nocapture noundef nonnull readnone align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %5) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %7 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 168, ptr noundef %5) #10
  %8 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeeqEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef null) #10
          to label %9 unwind label %13

9:                                                ; preds = %6
  %10 = load ptr, ptr %4, align 8
  %11 = select i1 %8, ptr null, ptr %10
  invoke void @_ZN11xercesc_2_712DocumentImplC1ERKNS_9DOMStringES3_PNS_16DocumentTypeImplEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(168) %7, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %11, ptr noundef %5) #10
          to label %12 unwind label %13

12:                                               ; preds = %9
  tail call void @_ZN11xercesc_2_712DOM_DocumentC1EPNS_12DocumentImplE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %7) #10
  ret void

13:                                               ; preds = %9, %6
  %14 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %7, ptr noundef %5) #14
  resume { ptr, i32 } %14
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeeqEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712DocumentImplC1ERKNS_9DOMStringES3_PNS_16DocumentTypeImplEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(168), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712DOM_DocumentC1EPNS_12DocumentImplE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #2

; Function Attrs: noinline optsize uwtable
define internal void @_GLOBAL__sub_I_DOM_DOMImplementation.cpp() #1 section ".text.startup" {
  tail call fastcc void @__cxx_global_var_init()
  ret void
}

attributes #0 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nobuiltin optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { optsize }
attributes #11 = { nounwind }
attributes #12 = { builtin optsize allocsize(0) }
attributes #13 = { builtin nounwind optsize }
attributes #14 = { nounwind optsize }
attributes #15 = { noreturn }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 545138344258}
!4 = !{!"MaxCount", i64 89343718472}
!5 = !{!"MaxInternalCount", i64 30012997636}
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
!16 = !{i32 300000, i64 30137156660, i32 4}
!17 = !{i32 400000, i64 28792558684, i32 6}
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
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!"branch_weights", i32 1, i32 1048575}
!36 = !{!37, !37, i64 0}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C++ TBAA"}
!40 = !{!"DOM_DOMImplementation.cpp:_ZN11xercesc_2_7L20reinitImplementationEv"}
!41 = !{!"function_entry_count", i64 2453164456}
!42 = !{!"branch_weights", i32 1, i32 -1841802839}
!43 = !{!44, !44, i64 0}
!44 = !{!"short", !38, i64 0}
!45 = !{!"branch_weights", i32 1150041, i32 -1842952879}
!46 = !{!"branch_weights", i32 408669070, i32 -279908794}
!47 = distinct !{!47, !48}
!48 = !{!"llvm.loop.mustprogress"}
