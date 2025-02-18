; ModuleID = 'DOM_DOMImplementation.cpp'
source_filename = "DOM_DOMImplementation.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XMLRegisterCleanup" = type { ptr, ptr, ptr }
%"class.xercesc_2_7::DOM_DocumentType" = type { %"class.xercesc_2_7::DOM_Node" }
%"class.xercesc_2_7::DOM_Node" = type { ptr }
%"class.xercesc_2_7::DOMString" = type { ptr }
%"class.xercesc_2_7::DOM_Document" = type { %"class.xercesc_2_7::DOM_Node" }

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

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #0

declare void @_ZN11xercesc_2_718XMLRegisterCleanupC1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_721DOM_DOMImplementationC2Ev(ptr nocapture nonnull readnone align 1 %0) unnamed_addr #2 align 2 !prof !37 {
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_721DOM_DOMImplementationC2ERKS0_(ptr nocapture nonnull readnone align 1 %0, ptr nocapture nonnull readnone align 1 %1) unnamed_addr #2 align 2 !prof !37 {
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_721DOM_DOMImplementationD2Ev(ptr nocapture nonnull readnone align 1 %0) unnamed_addr #2 align 2 !prof !37 {
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZN11xercesc_2_721DOM_DOMImplementationaSERKS0_(ptr noundef nonnull readnone returned align 1 dereferenceable(1) %0, ptr nocapture noundef nonnull readnone align 1 dereferenceable(1) %1) local_unnamed_addr #2 align 2 !prof !37 {
  ret ptr %0
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZN11xercesc_2_721DOM_DOMImplementation17getImplementationEv() local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %1 = load atomic i8, ptr @_ZGVZN11xercesc_2_721DOM_DOMImplementation17getImplementationEvE21implementationCleanup acquire, align 8
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %3, label %8, !prof !38

3:                                                ; preds = %0
  %4 = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN11xercesc_2_721DOM_DOMImplementation17getImplementationEvE21implementationCleanup) #10
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  invoke void @_ZN11xercesc_2_718XMLRegisterCleanupC1Ev(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN11xercesc_2_721DOM_DOMImplementation17getImplementationEvE21implementationCleanup)
          to label %7 unwind label %16

7:                                                ; preds = %6
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN11xercesc_2_721DOM_DOMImplementation17getImplementationEvE21implementationCleanup) #10
  br label %8

8:                                                ; preds = %7, %3, %0
  %9 = load ptr, ptr @_ZN11xercesc_2_7L7gDomimpE, align 8, !tbaa !39
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %19

11:                                               ; preds = %8
  %12 = tail call noalias noundef nonnull dereferenceable(1) ptr @_Znwm(i64 noundef 1) #11
  %13 = tail call noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils14compareAndSwapEPPvPKvS4_(ptr noundef nonnull @_ZN11xercesc_2_7L7gDomimpE, ptr noundef nonnull %12, ptr noundef null)
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %11
  tail call void @_ZdlPv(ptr noundef %12) #12
  br label %19

16:                                               ; preds = %6
  %17 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN11xercesc_2_721DOM_DOMImplementation17getImplementationEvE21implementationCleanup) #10
  resume { ptr, i32 } %17

18:                                               ; preds = %11
  tail call void @_ZN11xercesc_2_718XMLRegisterCleanup15registerCleanupEPFvvE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN11xercesc_2_721DOM_DOMImplementation17getImplementationEvE21implementationCleanup, ptr noundef nonnull @_ZN11xercesc_2_7L20reinitImplementationEv)
  br label %19

19:                                               ; preds = %18, %15, %8
  %20 = load ptr, ptr @_ZN11xercesc_2_7L7gDomimpE, align 8, !tbaa !39
  ret ptr %20
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #4

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nofree nounwind
declare void @__cxa_guard_abort(ptr) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #6

declare noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils14compareAndSwapEPPvPKvS4_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN11xercesc_2_718XMLRegisterCleanup15registerCleanupEPFvvE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define internal void @_ZN11xercesc_2_7L20reinitImplementationEv() #7 !prof !37 {
  %1 = load ptr, ptr @_ZN11xercesc_2_7L7gDomimpE, align 8, !tbaa !39
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @_ZdlPv(ptr noundef %1) #12
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @_ZN11xercesc_2_7L7gDomimpE, align 8, !tbaa !39
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_721DOM_DOMImplementation10hasFeatureERKNS_9DOMStringES3_(ptr nocapture noundef nonnull readnone align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 align 2 !prof !37 {
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_79DOMStringeqEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef null)
  br i1 %4, label %8, label %5

5:                                                ; preds = %3
  %6 = tail call noundef i32 @_ZNK11xercesc_2_79DOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %7 = icmp eq i32 %6, 0
  br label %8

8:                                                ; preds = %5, %3
  %9 = phi i1 [ true, %3 ], [ %7, %5 ]
  %10 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_711DStringPool15getStaticStringEPKcPPNS_9DOMStringEPFvvERNS_18XMLRegisterCleanupE(ptr noundef nonnull @.str, ptr noundef nonnull @_ZN11xercesc_2_7L4g1_0E, ptr noundef nonnull @_ZN11xercesc_2_721DOM_DOMImplementation27reinitDOM_DOMImplementationEv, ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L28DOM_DOMImplementationCleanupE)
  %11 = tail call noundef zeroext i1 @_ZNK11xercesc_2_79DOMString6equalsERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %10)
  %12 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_711DStringPool15getStaticStringEPKcPPNS_9DOMStringEPFvvERNS_18XMLRegisterCleanupE(ptr noundef nonnull @.str.1, ptr noundef nonnull @_ZN11xercesc_2_7L4g2_0E, ptr noundef nonnull @_ZN11xercesc_2_721DOM_DOMImplementation27reinitDOM_DOMImplementationEv, ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L28DOM_DOMImplementationCleanupE)
  %13 = tail call noundef zeroext i1 @_ZNK11xercesc_2_79DOMString6equalsERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %12)
  %14 = tail call noundef ptr @_ZNK11xercesc_2_79DOMString9rawBufferEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %15 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_711DStringPool15getStaticStringEPKcPPNS_9DOMStringEPFvvERNS_18XMLRegisterCleanupE(ptr noundef nonnull @.str.2, ptr noundef nonnull @_ZN11xercesc_2_7L4gXMLE, ptr noundef nonnull @_ZN11xercesc_2_721DOM_DOMImplementation27reinitDOM_DOMImplementationEv, ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L28DOM_DOMImplementationCleanupE)
  %16 = tail call noundef ptr @_ZNK11xercesc_2_79DOMString9rawBufferEv(ptr noundef nonnull align 8 dereferenceable(8) %15)
  %17 = tail call noundef i32 @_ZN11xercesc_2_79XMLString14compareIStringEPKtS2_(ptr noundef %14, ptr noundef %16)
  %18 = icmp eq i32 %17, 0
  %19 = or i1 %9, %11
  %20 = or i1 %19, %13
  %21 = and i1 %20, %18
  br i1 %21, label %44, label %22

22:                                               ; preds = %8
  %23 = tail call noundef ptr @_ZNK11xercesc_2_79DOMString9rawBufferEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %24 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_711DStringPool15getStaticStringEPKcPPNS_9DOMStringEPFvvERNS_18XMLRegisterCleanupE(ptr noundef nonnull @.str.3, ptr noundef nonnull @_ZN11xercesc_2_7L5gCoreE, ptr noundef nonnull @_ZN11xercesc_2_721DOM_DOMImplementation27reinitDOM_DOMImplementationEv, ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L28DOM_DOMImplementationCleanupE)
  %25 = tail call noundef ptr @_ZNK11xercesc_2_79DOMString9rawBufferEv(ptr noundef nonnull align 8 dereferenceable(8) %24)
  %26 = tail call noundef i32 @_ZN11xercesc_2_79XMLString14compareIStringEPKtS2_(ptr noundef %23, ptr noundef %25)
  %27 = icmp eq i32 %26, 0
  %28 = and i1 %20, %27
  br i1 %28, label %44, label %29

29:                                               ; preds = %22
  %30 = tail call noundef ptr @_ZNK11xercesc_2_79DOMString9rawBufferEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %31 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_711DStringPool15getStaticStringEPKcPPNS_9DOMStringEPFvvERNS_18XMLRegisterCleanupE(ptr noundef nonnull @.str.4, ptr noundef nonnull @_ZN11xercesc_2_7L5gTravE, ptr noundef nonnull @_ZN11xercesc_2_721DOM_DOMImplementation27reinitDOM_DOMImplementationEv, ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L28DOM_DOMImplementationCleanupE)
  %32 = tail call noundef ptr @_ZNK11xercesc_2_79DOMString9rawBufferEv(ptr noundef nonnull align 8 dereferenceable(8) %31)
  %33 = tail call noundef i32 @_ZN11xercesc_2_79XMLString14compareIStringEPKtS2_(ptr noundef %30, ptr noundef %32)
  %34 = icmp eq i32 %33, 0
  %35 = or i1 %9, %13
  %36 = and i1 %35, %34
  br i1 %36, label %44, label %37

37:                                               ; preds = %29
  %38 = tail call noundef ptr @_ZNK11xercesc_2_79DOMString9rawBufferEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %39 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_711DStringPool15getStaticStringEPKcPPNS_9DOMStringEPFvvERNS_18XMLRegisterCleanupE(ptr noundef nonnull @.str.5, ptr noundef nonnull @_ZN11xercesc_2_7L6gRangeE, ptr noundef nonnull @_ZN11xercesc_2_721DOM_DOMImplementation27reinitDOM_DOMImplementationEv, ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L28DOM_DOMImplementationCleanupE)
  %40 = tail call noundef ptr @_ZNK11xercesc_2_79DOMString9rawBufferEv(ptr noundef nonnull align 8 dereferenceable(8) %39)
  %41 = tail call noundef i32 @_ZN11xercesc_2_79XMLString14compareIStringEPKtS2_(ptr noundef %38, ptr noundef %40)
  %42 = icmp eq i32 %41, 0
  %43 = and i1 %35, %42
  br label %44

44:                                               ; preds = %37, %29, %22, %8
  %45 = phi i1 [ true, %8 ], [ true, %22 ], [ true, %29 ], [ %43, %37 ]
  ret i1 %45
}

declare noundef zeroext i1 @_ZNK11xercesc_2_79DOMStringeqEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #1

declare noundef i32 @_ZNK11xercesc_2_79DOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK11xercesc_2_79DOMString6equalsERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_711DStringPool15getStaticStringEPKcPPNS_9DOMStringEPFvvERNS_18XMLRegisterCleanupE(ptr noundef, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_721DOM_DOMImplementation27reinitDOM_DOMImplementationEv() #7 align 2 !prof !37 {
  %1 = load ptr, ptr @_ZN11xercesc_2_7L4gXMLE, align 8, !tbaa !39
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %1) #10
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %1) #10
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @_ZN11xercesc_2_7L4gXMLE, align 8, !tbaa !39
  %5 = load ptr, ptr @_ZN11xercesc_2_7L4g1_0E, align 8, !tbaa !39
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #10
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %5) #10
  br label %8

8:                                                ; preds = %7, %4
  store ptr null, ptr @_ZN11xercesc_2_7L4g1_0E, align 8, !tbaa !39
  %9 = load ptr, ptr @_ZN11xercesc_2_7L4g2_0E, align 8, !tbaa !39
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  tail call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #10
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %9) #10
  br label %12

12:                                               ; preds = %11, %8
  store ptr null, ptr @_ZN11xercesc_2_7L4g2_0E, align 8, !tbaa !39
  %13 = load ptr, ptr @_ZN11xercesc_2_7L5gTravE, align 8, !tbaa !39
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  tail call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13) #10
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %13) #10
  br label %16

16:                                               ; preds = %15, %12
  store ptr null, ptr @_ZN11xercesc_2_7L5gTravE, align 8, !tbaa !39
  %17 = load ptr, ptr @_ZN11xercesc_2_7L6gRangeE, align 8, !tbaa !39
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  tail call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %17) #10
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %17) #10
  br label %20

20:                                               ; preds = %19, %16
  store ptr null, ptr @_ZN11xercesc_2_7L6gRangeE, align 8, !tbaa !39
  %21 = load ptr, ptr @_ZN11xercesc_2_7L5gCoreE, align 8, !tbaa !39
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  tail call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %21) #10
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %21) #10
  br label %24

24:                                               ; preds = %23, %20
  store ptr null, ptr @_ZN11xercesc_2_7L5gCoreE, align 8, !tbaa !39
  ret void
}

declare noundef i32 @_ZN11xercesc_2_79XMLString14compareIStringEPKtS2_(ptr noundef, ptr noundef) local_unnamed_addr #1

declare noundef ptr @_ZNK11xercesc_2_79DOMString9rawBufferEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_721DOM_DOMImplementation18createDocumentTypeERKNS_9DOMStringES3_S3_(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOM_DocumentType") align 8 %0, ptr nocapture noundef nonnull readnone align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %6 = alloca %"class.xercesc_2_7::DOMString", align 8
  %7 = tail call noundef ptr @_ZNK11xercesc_2_79DOMString9rawBufferEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %8 = tail call noundef ptr @_ZNK11xercesc_2_79DOMString9rawBufferEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %9 = icmp eq ptr %8, null
  br i1 %9, label %24, label %10

10:                                               ; preds = %5
  %11 = load i16, ptr %8, align 2, !tbaa !43
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %24, label %13

13:                                               ; preds = %10, %13
  %14 = phi ptr [ %15, %13 ], [ %8, %10 ]
  %15 = getelementptr inbounds i16, ptr %14, i64 1
  %16 = load i16, ptr %15, align 2, !tbaa !43
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %13, !llvm.loop !45

18:                                               ; preds = %13
  %19 = ptrtoint ptr %15 to i64
  %20 = ptrtoint ptr %8 to i64
  %21 = sub i64 %19, %20
  %22 = lshr exact i64 %21, 1
  %23 = trunc i64 %22 to i32
  br label %24

24:                                               ; preds = %5, %10, %18
  %25 = phi i32 [ %23, %18 ], [ 0, %10 ], [ 0, %5 ]
  %26 = tail call noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_011isValidNameEPKtj(ptr noundef %7, i32 noundef %25)
  br i1 %26, label %40, label %27

27:                                               ; preds = %24
  %28 = tail call ptr @__cxa_allocate_exception(i64 24) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #10
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 0)
          to label %29 unwind label %31

29:                                               ; preds = %27
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %28, i16 noundef signext 5, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %30 unwind label %33

30:                                               ; preds = %29
  invoke void @__cxa_throw(ptr nonnull %28, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #13
          to label %47 unwind label %33

31:                                               ; preds = %27
  %32 = landingpad { ptr, i32 }
          cleanup
  br label %36

33:                                               ; preds = %30, %29
  %34 = phi i1 [ false, %30 ], [ true, %29 ]
  %35 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #10
  br label %36

36:                                               ; preds = %33, %31
  %37 = phi { ptr, i32 } [ %35, %33 ], [ %32, %31 ]
  %38 = phi i1 [ %34, %33 ], [ true, %31 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #10
  br i1 %38, label %39, label %45

39:                                               ; preds = %36
  call void @__cxa_free_exception(ptr %28) #10
  br label %45

40:                                               ; preds = %24
  %41 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 152)
  invoke void @_ZN11xercesc_2_716DocumentTypeImplC1EPNS_12DocumentImplERKNS_9DOMStringES5_S5_(ptr noundef nonnull align 8 dereferenceable(145) %41, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %42 unwind label %43

42:                                               ; preds = %40
  tail call void @_ZN11xercesc_2_716DOM_DocumentTypeC1EPNS_16DocumentTypeImplE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %41)
  ret void

43:                                               ; preds = %40
  %44 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef %41) #10
  br label %45

45:                                               ; preds = %36, %39, %43
  %46 = phi { ptr, i32 } [ %44, %43 ], [ %37, %39 ], [ %37, %36 ]
  resume { ptr, i32 } %46

47:                                               ; preds = %30
  unreachable
}

declare noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_011isValidNameEPKtj(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) unnamed_addr #1

declare void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24), i16 noundef signext, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #8

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #8

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef) local_unnamed_addr #1

declare void @_ZN11xercesc_2_716DocumentTypeImplC1EPNS_12DocumentImplERKNS_9DOMStringES5_S5_(ptr noundef nonnull align 8 dereferenceable(145), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #8

declare void @_ZN11xercesc_2_716DOM_DocumentTypeC1EPNS_16DocumentTypeImplE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_721DOM_DOMImplementation14createDocumentERKNS_9DOMStringES3_RKNS_16DOM_DocumentTypeEPNS_13MemoryManagerE(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOM_Document") align 8 %0, ptr nocapture noundef nonnull readnone align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %5) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %7 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 168, ptr noundef %5)
  %8 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeeqEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef null)
          to label %9 unwind label %13

9:                                                ; preds = %6
  %10 = load ptr, ptr %4, align 8
  %11 = select i1 %8, ptr null, ptr %10
  invoke void @_ZN11xercesc_2_712DocumentImplC1ERKNS_9DOMStringES3_PNS_16DocumentTypeImplEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(168) %7, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %11, ptr noundef %5)
          to label %12 unwind label %13

12:                                               ; preds = %9
  tail call void @_ZN11xercesc_2_712DOM_DocumentC1EPNS_12DocumentImplE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %7)
  ret void

13:                                               ; preds = %9, %6
  %14 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %7, ptr noundef %5) #10
  resume { ptr, i32 } %14
}

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeeqEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #1

declare void @_ZN11xercesc_2_712DocumentImplC1ERKNS_9DOMStringES3_PNS_16DocumentTypeImplEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(168), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #8

declare void @_ZN11xercesc_2_712DOM_DocumentC1EPNS_12DocumentImplE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #1

; Function Attrs: cold uwtable
define internal void @_GLOBAL__sub_I_DOM_DOMImplementation.cpp() #9 section ".text.startup" !prof !48 !PGOFuncName !49 {
  tail call void @_ZN11xercesc_2_718XMLRegisterCleanupC1Ev(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L28DOM_DOMImplementationCleanupE)
  ret void
}

attributes #0 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind }
attributes #11 = { builtin allocsize(0) }
attributes #12 = { builtin nounwind }
attributes #13 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!36}

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
!34 = distinct !{!35}
!35 = !{ptr @_GLOBAL__sub_I_DOM_DOMImplementation.cpp, ptr @_ZN11xercesc_2_718XMLRegisterCleanupC1Ev, i64 1}
!36 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!37 = !{!"function_entry_count", i64 0}
!38 = !{!"branch_weights", i32 1, i32 1048575}
!39 = !{!40, !40, i64 0}
!40 = !{!"any pointer", !41, i64 0}
!41 = !{!"omnipotent char", !42, i64 0}
!42 = !{!"Simple C++ TBAA"}
!43 = !{!44, !44, i64 0}
!44 = !{!"short", !41, i64 0}
!45 = distinct !{!45, !46, !47}
!46 = !{!"llvm.loop.mustprogress"}
!47 = !{!"llvm.loop.unroll.disable"}
!48 = !{!"function_entry_count", i64 1}
!49 = !{!"DOM_DOMImplementation.cpp;_GLOBAL__sub_I_DOM_DOMImplementation.cpp"}
