; ModuleID = 'TreeWalkerImpl.cpp'
source_filename = "TreeWalkerImpl.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::TreeWalkerImpl" = type <{ %"class.xercesc_2_7::RefCountedImpl.base", [4 x i8], i64, ptr, %"class.xercesc_2_7::DOM_Node", %"class.xercesc_2_7::DOM_Node", i8, [7 x i8] }>
%"class.xercesc_2_7::RefCountedImpl.base" = type <{ ptr, i32 }>
%"class.xercesc_2_7::DOM_Node" = type { ptr }
%"class.xercesc_2_7::DOM_Document" = type { %"class.xercesc_2_7::DOM_Node" }
%"class.xercesc_2_7::DocumentImpl" = type { %"class.xercesc_2_7::ParentNode.base", ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, ptr }
%"class.xercesc_2_7::ParentNode.base" = type <{ %"class.xercesc_2_7::ChildNode", ptr, ptr, i32, [4 x i8], ptr, i32 }>
%"class.xercesc_2_7::ChildNode" = type { %"class.xercesc_2_7::NodeImpl.base", ptr, ptr }
%"class.xercesc_2_7::NodeImpl.base" = type <{ %"class.xercesc_2_7::NodeListImpl.base", [4 x i8], ptr, i16 }>
%"class.xercesc_2_7::NodeListImpl.base" = type { %"class.xercesc_2_7::RefCountedImpl.base" }
%"class.xercesc_2_7::BaseRefVectorOf" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }

$_ZN11xercesc_2_714TreeWalkerImplD2Ev = comdat any

$_ZN11xercesc_2_714TreeWalkerImplD0Ev = comdat any

$_ZNK11xercesc_2_715BaseRefVectorOfINS_14TreeWalkerImplEE4sizeEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_14TreeWalkerImplEE9elementAtEj = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_ = comdat any

$_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

@_ZTVN11xercesc_2_714TreeWalkerImplE = dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_714TreeWalkerImplE, ptr @_ZN11xercesc_2_714TreeWalkerImplD2Ev, ptr @_ZN11xercesc_2_714TreeWalkerImplD0Ev, ptr @_ZN11xercesc_2_714RefCountedImpl10referencedEv, ptr @_ZN11xercesc_2_714TreeWalkerImpl12unreferencedEv] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_714TreeWalkerImplE = dso_local constant [32 x i8] c"N11xercesc_2_714TreeWalkerImplE\00", align 1
@_ZTIN11xercesc_2_714RefCountedImplE = external constant ptr
@_ZTIN11xercesc_2_714TreeWalkerImplE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_714TreeWalkerImplE, ptr @_ZTIN11xercesc_2_714RefCountedImplE }, align 8
@.str = private unnamed_addr constant [33 x i8] c"./xercesc/util/BaseRefVectorOf.c\00", align 1
@_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant [48 x i8] c"N11xercesc_2_730ArrayIndexOutOfBoundsExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE = external constant [0 x i16], align 2

@_ZN11xercesc_2_714TreeWalkerImplC1ENS_8DOM_NodeEmPNS_14DOM_NodeFilterEb = dso_local unnamed_addr alias void (ptr, ptr, i64, ptr, i1), ptr @_ZN11xercesc_2_714TreeWalkerImplC2ENS_8DOM_NodeEmPNS_14DOM_NodeFilterEb
@_ZN11xercesc_2_714TreeWalkerImplC1ERKS0_ = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_714TreeWalkerImplC2ERKS0_

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714TreeWalkerImplD2Ev(ptr noundef nonnull align 8 dereferenceable(49) %0) unnamed_addr #0 comdat align 2 {
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_714TreeWalkerImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %2 = getelementptr inbounds %"class.xercesc_2_7::TreeWalkerImpl", ptr %0, i64 0, i32 5
  tail call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #6
  %3 = getelementptr inbounds %"class.xercesc_2_7::TreeWalkerImpl", ptr %0, i64 0, i32 4
  tail call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #6
  tail call void @_ZN11xercesc_2_714RefCountedImplD2Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) #6
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714TreeWalkerImplD0Ev(ptr noundef nonnull align 8 dereferenceable(49) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xercesc_2_714TreeWalkerImplD2Ev(ptr noundef nonnull align 8 dereferenceable(49) %0) #6
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #6
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_714RefCountedImpl10referencedEv(ptr noundef nonnull align 8 dereferenceable(12)) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_714TreeWalkerImpl12unreferencedEv(ptr noundef nonnull align 8 dereferenceable(49) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %2 = alloca %"class.xercesc_2_7::DOM_Document", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #7
  %3 = getelementptr inbounds %"class.xercesc_2_7::TreeWalkerImpl", ptr %0, i64 0, i32 5
  call void @_ZNK11xercesc_2_78DOM_Node16getOwnerDocumentEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Document") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #8
  %4 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node6isNullEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #8
          to label %5 unwind label %12

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8
  %7 = load ptr, ptr %2, align 8
  %8 = select i1 %4, ptr %6, ptr %7
  %9 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %8, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !39
  %11 = icmp eq ptr %10, null
  br i1 %11, label %35, label %14

12:                                               ; preds = %1
  %13 = landingpad { ptr, i32 }
          cleanup
  br label %39

14:                                               ; preds = %5
  %15 = call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_14TreeWalkerImplEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %10) #8
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %35

17:                                               ; preds = %14, %32
  %18 = phi i32 [ %33, %32 ], [ 0, %14 ]
  %19 = load ptr, ptr %9, align 8, !tbaa !39
  %20 = invoke noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_14TreeWalkerImplEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %19, i32 noundef %18) #8
          to label %21 unwind label %28

21:                                               ; preds = %17
  %22 = icmp eq ptr %20, %0
  br i1 %22, label %23, label %32

23:                                               ; preds = %21
  %24 = load ptr, ptr %9, align 8, !tbaa !39
  %25 = load ptr, ptr %24, align 8, !tbaa !35
  %26 = getelementptr inbounds ptr, ptr %25, i64 4
  %27 = load ptr, ptr %26, align 8
  invoke void %27(ptr noundef nonnull align 8 dereferenceable(40) %24, i32 noundef %18) #8
          to label %35 unwind label %30

28:                                               ; preds = %17
  %29 = landingpad { ptr, i32 }
          cleanup
  br label %39

30:                                               ; preds = %23
  %31 = landingpad { ptr, i32 }
          cleanup
  br label %39

32:                                               ; preds = %21
  %33 = add nuw nsw i32 %18, 1
  %34 = icmp eq i32 %33, %15
  br i1 %34, label %35, label %17, !llvm.loop !51

35:                                               ; preds = %32, %14, %5, %23
  %36 = load ptr, ptr %0, align 8, !tbaa !35
  %37 = getelementptr inbounds ptr, ptr %36, i64 1
  %38 = load ptr, ptr %37, align 8
  call void %38(ptr noundef nonnull align 8 dereferenceable(49) %0) #6
  call void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #7
  ret void

39:                                               ; preds = %28, %30, %12
  %40 = phi { ptr, i32 } [ %13, %12 ], [ %29, %28 ], [ %31, %30 ]
  call void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #7
  resume { ptr, i32 } %40
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_714TreeWalkerImplC2ENS_8DOM_NodeEmPNS_14DOM_NodeFilterEb(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i1 noundef zeroext %4) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  tail call void @_ZN11xercesc_2_714RefCountedImplC2Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) #8
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_714TreeWalkerImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %6 = getelementptr inbounds %"class.xercesc_2_7::TreeWalkerImpl", ptr %0, i64 0, i32 2
  store i64 %2, ptr %6, align 8, !tbaa !53
  %7 = getelementptr inbounds %"class.xercesc_2_7::TreeWalkerImpl", ptr %0, i64 0, i32 3
  store ptr %3, ptr %7, align 8, !tbaa !57
  %8 = getelementptr inbounds %"class.xercesc_2_7::TreeWalkerImpl", ptr %0, i64 0, i32 4
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %1) #8
          to label %9 unwind label %14

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::TreeWalkerImpl", ptr %0, i64 0, i32 5
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %1) #8
          to label %11 unwind label %16

11:                                               ; preds = %9
  %12 = zext i1 %4 to i8
  %13 = getelementptr inbounds %"class.xercesc_2_7::TreeWalkerImpl", ptr %0, i64 0, i32 6
  store i8 %12, ptr %13, align 8, !tbaa !58
  ret void

14:                                               ; preds = %5
  %15 = landingpad { ptr, i32 }
          cleanup
  br label %18

16:                                               ; preds = %9
  %17 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #6
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi { ptr, i32 } [ %17, %16 ], [ %15, %14 ]
  tail call void @_ZN11xercesc_2_714RefCountedImplD2Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) #6
  resume { ptr, i32 } %19
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_714RefCountedImplC2Ev(ptr noundef nonnull align 8 dereferenceable(12)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_714RefCountedImplD2Ev(ptr noundef nonnull align 8 dereferenceable(12)) unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_714TreeWalkerImplC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef nonnull align 8 dereferenceable(49) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  tail call void @_ZN11xercesc_2_714RefCountedImplC2Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) #8
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_714TreeWalkerImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %3 = getelementptr inbounds %"class.xercesc_2_7::TreeWalkerImpl", ptr %0, i64 0, i32 2
  %4 = getelementptr inbounds %"class.xercesc_2_7::TreeWalkerImpl", ptr %1, i64 0, i32 2
  %5 = load i64, ptr %4, align 8, !tbaa !53
  store i64 %5, ptr %3, align 8, !tbaa !53
  %6 = getelementptr inbounds %"class.xercesc_2_7::TreeWalkerImpl", ptr %0, i64 0, i32 3
  %7 = getelementptr inbounds %"class.xercesc_2_7::TreeWalkerImpl", ptr %1, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !57
  store ptr %8, ptr %6, align 8, !tbaa !57
  %9 = getelementptr inbounds %"class.xercesc_2_7::TreeWalkerImpl", ptr %0, i64 0, i32 4
  %10 = getelementptr inbounds %"class.xercesc_2_7::TreeWalkerImpl", ptr %1, i64 0, i32 4
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %10) #8
          to label %11 unwind label %18

11:                                               ; preds = %2
  %12 = getelementptr inbounds %"class.xercesc_2_7::TreeWalkerImpl", ptr %0, i64 0, i32 5
  %13 = getelementptr inbounds %"class.xercesc_2_7::TreeWalkerImpl", ptr %1, i64 0, i32 5
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %13) #8
          to label %14 unwind label %20

14:                                               ; preds = %11
  %15 = getelementptr inbounds %"class.xercesc_2_7::TreeWalkerImpl", ptr %0, i64 0, i32 6
  %16 = getelementptr inbounds %"class.xercesc_2_7::TreeWalkerImpl", ptr %1, i64 0, i32 6
  %17 = load i8, ptr %16, align 8, !tbaa !58, !range !59, !noundef !60
  store i8 %17, ptr %15, align 8, !tbaa !58
  ret void

18:                                               ; preds = %2
  %19 = landingpad { ptr, i32 }
          cleanup
  br label %22

20:                                               ; preds = %11
  %21 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #6
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi { ptr, i32 } [ %21, %20 ], [ %19, %18 ]
  tail call void @_ZN11xercesc_2_714RefCountedImplD2Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) #6
  resume { ptr, i32 } %23
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(49) ptr @_ZN11xercesc_2_714TreeWalkerImplaSERKS0_(ptr noundef nonnull returned align 8 dereferenceable(49) %0, ptr noundef nonnull align 8 dereferenceable(49) %1) local_unnamed_addr #2 align 2 !prof !38 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %20, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"class.xercesc_2_7::TreeWalkerImpl", ptr %1, i64 0, i32 4
  %6 = getelementptr inbounds %"class.xercesc_2_7::TreeWalkerImpl", ptr %0, i64 0, i32 4
  %7 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5) #8
  %8 = getelementptr inbounds %"class.xercesc_2_7::TreeWalkerImpl", ptr %1, i64 0, i32 5
  %9 = getelementptr inbounds %"class.xercesc_2_7::TreeWalkerImpl", ptr %0, i64 0, i32 5
  %10 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %8) #8
  %11 = getelementptr inbounds %"class.xercesc_2_7::TreeWalkerImpl", ptr %1, i64 0, i32 2
  %12 = load i64, ptr %11, align 8, !tbaa !53
  %13 = getelementptr inbounds %"class.xercesc_2_7::TreeWalkerImpl", ptr %0, i64 0, i32 2
  store i64 %12, ptr %13, align 8, !tbaa !53
  %14 = getelementptr inbounds %"class.xercesc_2_7::TreeWalkerImpl", ptr %1, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !57
  %16 = getelementptr inbounds %"class.xercesc_2_7::TreeWalkerImpl", ptr %0, i64 0, i32 3
  store ptr %15, ptr %16, align 8, !tbaa !57
  %17 = getelementptr inbounds %"class.xercesc_2_7::TreeWalkerImpl", ptr %1, i64 0, i32 6
  %18 = load i8, ptr %17, align 8, !tbaa !58, !range !59, !noundef !60
  %19 = getelementptr inbounds %"class.xercesc_2_7::TreeWalkerImpl", ptr %0, i64 0, i32 6
  store i8 %18, ptr %19, align 8, !tbaa !58
  br label %20

20:                                               ; preds = %4, %2
  ret ptr %0
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: optsize
declare void @_ZNK11xercesc_2_78DOM_Node16getOwnerDocumentEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_Document") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node6isNullEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_14TreeWalkerImplEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #0 comdat align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !61
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_14TreeWalkerImplEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !61
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #7
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !63
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 249, i32 noundef 116, ptr noundef %9) #8
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #9
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #7
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !64
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !65
  ret ptr %18
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #8
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #8
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #6
  resume { ptr, i32 } %8
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #3

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #6
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #6
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 !prof !38 {
  ret ptr @_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !66
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #8
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #8
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #6
  resume { ptr, i32 } %7
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #2 comdat align 2 !prof !38 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #8
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_714TreeWalkerImpl7getRootEv(ptr dead_on_unwind noalias nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr noundef nonnull align 8 dereferenceable(49) %1) local_unnamed_addr #2 align 2 !prof !38 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::TreeWalkerImpl", ptr %1, i64 0, i32 5
  tail call void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef i64 @_ZN11xercesc_2_714TreeWalkerImpl13getWhatToShowEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(49) %0) local_unnamed_addr #5 align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::TreeWalkerImpl", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !53
  ret i64 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZN11xercesc_2_714TreeWalkerImpl9getFilterEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(49) %0) local_unnamed_addr #5 align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::TreeWalkerImpl", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !57
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_714TreeWalkerImpl25getExpandEntityReferencesEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(49) %0) local_unnamed_addr #5 align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::TreeWalkerImpl", ptr %0, i64 0, i32 6
  %3 = load i8, ptr %2, align 8, !tbaa !58, !range !59, !noundef !60
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_714TreeWalkerImpl14getCurrentNodeEv(ptr dead_on_unwind noalias nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr noundef nonnull align 8 dereferenceable(49) %1) local_unnamed_addr #2 align 2 !prof !38 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::TreeWalkerImpl", ptr %1, i64 0, i32 4
  tail call void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #8
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_714TreeWalkerImpl14setCurrentNodeENS_8DOM_NodeE(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef nonnull %1) local_unnamed_addr #2 align 2 !prof !38 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::TreeWalkerImpl", ptr %0, i64 0, i32 4
  %4 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %1) #8
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_714TreeWalkerImpl10parentNodeEv(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr noundef nonnull align 8 dereferenceable(49) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %3 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %4 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #7
  call void @_ZN11xercesc_2_78DOM_NodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #8
  %5 = getelementptr inbounds %"class.xercesc_2_7::TreeWalkerImpl", ptr %1, i64 0, i32 4
  %6 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node6isNullEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #8
          to label %7 unwind label %9

7:                                                ; preds = %2
  br i1 %6, label %8, label %11

8:                                                ; preds = %7
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #8
          to label %22 unwind label %9

9:                                                ; preds = %11, %8, %2
  %10 = landingpad { ptr, i32 }
          cleanup
  br label %23

11:                                               ; preds = %7
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #8
          to label %12 unwind label %9

12:                                               ; preds = %11
  invoke void @_ZN11xercesc_2_714TreeWalkerImpl13getParentNodeENS_8DOM_NodeE(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr noundef nonnull align 8 dereferenceable(49) %1, ptr noundef nonnull %4) #8
          to label %13 unwind label %18

13:                                               ; preds = %12
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #6
  %14 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef null) #8
          to label %15 unwind label %20

15:                                               ; preds = %13
  br i1 %14, label %16, label %22

16:                                               ; preds = %15
  %17 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %0) #8
          to label %22 unwind label %20

18:                                               ; preds = %12
  %19 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #6
  br label %23

20:                                               ; preds = %16, %13
  %21 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #6
  br label %23

22:                                               ; preds = %15, %16, %8
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  ret void

23:                                               ; preds = %20, %18, %9
  %24 = phi { ptr, i32 } [ %10, %9 ], [ %21, %20 ], [ %19, %18 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  resume { ptr, i32 } %24
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78DOM_NodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_714TreeWalkerImpl13getParentNodeENS_8DOM_NodeE(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr noundef nonnull align 8 dereferenceable(49) %1, ptr noundef %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %4 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %5 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %6 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %7 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #7
  call void @_ZN11xercesc_2_78DOM_NodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #8
  %8 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node6isNullEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #8
          to label %9 unwind label %15

9:                                                ; preds = %3
  br i1 %8, label %14, label %10

10:                                               ; preds = %9
  %11 = getelementptr inbounds %"class.xercesc_2_7::TreeWalkerImpl", ptr %1, i64 0, i32 5
  %12 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeeqERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %11) #8
          to label %13 unwind label %15

13:                                               ; preds = %10
  br i1 %12, label %14, label %17

14:                                               ; preds = %13, %9
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %4) #8
          to label %46 unwind label %15

15:                                               ; preds = %14, %10, %3
  %16 = landingpad { ptr, i32 }
          cleanup
  br label %47

17:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #7
  invoke void @_ZNK11xercesc_2_78DOM_Node13getParentNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %2) #8
          to label %18 unwind label %22

18:                                               ; preds = %17
  %19 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node6isNullEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #8
          to label %20 unwind label %24

20:                                               ; preds = %18
  br i1 %19, label %21, label %26

21:                                               ; preds = %20
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %4) #8
          to label %41 unwind label %24

22:                                               ; preds = %17
  %23 = landingpad { ptr, i32 }
          cleanup
  br label %44

24:                                               ; preds = %21, %18
  %25 = landingpad { ptr, i32 }
          cleanup
  br label %42

26:                                               ; preds = %20
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5) #8
          to label %27 unwind label %32

27:                                               ; preds = %26
  %28 = invoke noundef signext i16 @_ZN11xercesc_2_714TreeWalkerImpl10acceptNodeENS_8DOM_NodeE(ptr noundef nonnull align 8 dereferenceable(49) %1, ptr noundef nonnull %6) #8
          to label %29 unwind label %34

29:                                               ; preds = %27
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #6
  %30 = icmp eq i16 %28, 1
  br i1 %30, label %31, label %36

31:                                               ; preds = %29
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %5) #8
          to label %41 unwind label %32

32:                                               ; preds = %36, %31, %26
  %33 = landingpad { ptr, i32 }
          cleanup
  br label %42

34:                                               ; preds = %27
  %35 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #6
  br label %42

36:                                               ; preds = %29
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %5) #8
          to label %37 unwind label %32

37:                                               ; preds = %36
  invoke void @_ZN11xercesc_2_714TreeWalkerImpl13getParentNodeENS_8DOM_NodeE(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr noundef nonnull align 8 dereferenceable(49) %1, ptr noundef nonnull %7) #8
          to label %38 unwind label %39

38:                                               ; preds = %37
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #6
  br label %41

39:                                               ; preds = %37
  %40 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #6
  br label %42

41:                                               ; preds = %38, %31, %21
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7
  br label %46

42:                                               ; preds = %32, %34, %39, %24
  %43 = phi { ptr, i32 } [ %25, %24 ], [ %33, %32 ], [ %40, %39 ], [ %35, %34 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #6
  br label %44

44:                                               ; preds = %42, %22
  %45 = phi { ptr, i32 } [ %43, %42 ], [ %23, %22 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7
  br label %47

46:                                               ; preds = %14, %41
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  ret void

47:                                               ; preds = %44, %15
  %48 = phi { ptr, i32 } [ %16, %15 ], [ %45, %44 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  resume { ptr, i32 } %48
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_714TreeWalkerImpl10firstChildEv(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr noundef nonnull align 8 dereferenceable(49) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %3 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %4 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #7
  call void @_ZN11xercesc_2_78DOM_NodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #8
  %5 = getelementptr inbounds %"class.xercesc_2_7::TreeWalkerImpl", ptr %1, i64 0, i32 4
  %6 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node6isNullEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #8
          to label %7 unwind label %9

7:                                                ; preds = %2
  br i1 %6, label %8, label %11

8:                                                ; preds = %7
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #8
          to label %22 unwind label %9

9:                                                ; preds = %11, %8, %2
  %10 = landingpad { ptr, i32 }
          cleanup
  br label %23

11:                                               ; preds = %7
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #8
          to label %12 unwind label %9

12:                                               ; preds = %11
  invoke void @_ZN11xercesc_2_714TreeWalkerImpl13getFirstChildENS_8DOM_NodeE(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr noundef nonnull align 8 dereferenceable(49) %1, ptr noundef nonnull %4) #8
          to label %13 unwind label %18

13:                                               ; preds = %12
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #6
  %14 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node6isNullEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #8
          to label %15 unwind label %20

15:                                               ; preds = %13
  br i1 %14, label %22, label %16

16:                                               ; preds = %15
  %17 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %0) #8
          to label %22 unwind label %20

18:                                               ; preds = %12
  %19 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #6
  br label %23

20:                                               ; preds = %16, %13
  %21 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #6
  br label %23

22:                                               ; preds = %15, %16, %8
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  ret void

23:                                               ; preds = %20, %18, %9
  %24 = phi { ptr, i32 } [ %10, %9 ], [ %21, %20 ], [ %19, %18 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  resume { ptr, i32 } %24
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_714TreeWalkerImpl13getFirstChildENS_8DOM_NodeE(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr noundef nonnull align 8 dereferenceable(49) %1, ptr noundef %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %4 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %5 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %6 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %7 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %8 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #7
  call void @_ZN11xercesc_2_78DOM_NodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #8
  %9 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node6isNullEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #8
          to label %10 unwind label %12

10:                                               ; preds = %3
  br i1 %9, label %11, label %14

11:                                               ; preds = %10
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %4) #8
          to label %50 unwind label %12

12:                                               ; preds = %11, %3
  %13 = landingpad { ptr, i32 }
          cleanup
  br label %51

14:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #7
  invoke void @_ZNK11xercesc_2_78DOM_Node13getFirstChildEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %2) #8
          to label %15 unwind label %19

15:                                               ; preds = %14
  %16 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node6isNullEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #8
          to label %17 unwind label %21

17:                                               ; preds = %15
  br i1 %16, label %18, label %23

18:                                               ; preds = %17
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %4) #8
          to label %45 unwind label %21

19:                                               ; preds = %14
  %20 = landingpad { ptr, i32 }
          cleanup
  br label %48

21:                                               ; preds = %18, %15
  %22 = landingpad { ptr, i32 }
          cleanup
  br label %46

23:                                               ; preds = %17
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5) #8
          to label %24 unwind label %28

24:                                               ; preds = %23
  %25 = invoke noundef signext i16 @_ZN11xercesc_2_714TreeWalkerImpl10acceptNodeENS_8DOM_NodeE(ptr noundef nonnull align 8 dereferenceable(49) %1, ptr noundef nonnull %6) #8
          to label %26 unwind label %30

26:                                               ; preds = %24
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #6
  switch i16 %25, label %39 [
    i16 1, label %27
    i16 3, label %32
  ]

27:                                               ; preds = %26
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %5) #8
          to label %45 unwind label %28

28:                                               ; preds = %39, %35, %32, %27, %23
  %29 = landingpad { ptr, i32 }
          cleanup
  br label %46

30:                                               ; preds = %24
  %31 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #6
  br label %46

32:                                               ; preds = %26
  %33 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node13hasChildNodesEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #8
          to label %34 unwind label %28

34:                                               ; preds = %32
  br i1 %33, label %35, label %39

35:                                               ; preds = %34
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %5) #8
          to label %36 unwind label %28

36:                                               ; preds = %35
  invoke void @_ZN11xercesc_2_714TreeWalkerImpl13getFirstChildENS_8DOM_NodeE(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr noundef nonnull align 8 dereferenceable(49) %1, ptr noundef nonnull %7) #8
          to label %43 unwind label %37

37:                                               ; preds = %36
  %38 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #6
  br label %46

39:                                               ; preds = %26, %34
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %5) #8
          to label %40 unwind label %28

40:                                               ; preds = %39
  invoke void @_ZN11xercesc_2_714TreeWalkerImpl14getNextSiblingENS_8DOM_NodeE(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr noundef nonnull align 8 dereferenceable(49) %1, ptr noundef nonnull %8) #8
          to label %43 unwind label %41

41:                                               ; preds = %40
  %42 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #6
  br label %46

43:                                               ; preds = %40, %36
  %44 = phi ptr [ %7, %36 ], [ %8, %40 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %44) #6
  br label %45

45:                                               ; preds = %43, %27, %18
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7
  br label %50

46:                                               ; preds = %28, %30, %37, %41, %21
  %47 = phi { ptr, i32 } [ %22, %21 ], [ %29, %28 ], [ %38, %37 ], [ %42, %41 ], [ %31, %30 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #6
  br label %48

48:                                               ; preds = %46, %19
  %49 = phi { ptr, i32 } [ %47, %46 ], [ %20, %19 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7
  br label %51

50:                                               ; preds = %11, %45
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  ret void

51:                                               ; preds = %48, %12
  %52 = phi { ptr, i32 } [ %13, %12 ], [ %49, %48 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  resume { ptr, i32 } %52
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_714TreeWalkerImpl9lastChildEv(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr noundef nonnull align 8 dereferenceable(49) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %3 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %4 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #7
  call void @_ZN11xercesc_2_78DOM_NodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #8
  %5 = getelementptr inbounds %"class.xercesc_2_7::TreeWalkerImpl", ptr %1, i64 0, i32 4
  %6 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node6isNullEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #8
          to label %7 unwind label %9

7:                                                ; preds = %2
  br i1 %6, label %8, label %11

8:                                                ; preds = %7
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #8
          to label %22 unwind label %9

9:                                                ; preds = %11, %8, %2
  %10 = landingpad { ptr, i32 }
          cleanup
  br label %23

11:                                               ; preds = %7
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #8
          to label %12 unwind label %9

12:                                               ; preds = %11
  invoke void @_ZN11xercesc_2_714TreeWalkerImpl12getLastChildENS_8DOM_NodeE(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr noundef nonnull align 8 dereferenceable(49) %1, ptr noundef nonnull %4) #8
          to label %13 unwind label %18

13:                                               ; preds = %12
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #6
  %14 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node6isNullEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #8
          to label %15 unwind label %20

15:                                               ; preds = %13
  br i1 %14, label %22, label %16

16:                                               ; preds = %15
  %17 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %0) #8
          to label %22 unwind label %20

18:                                               ; preds = %12
  %19 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #6
  br label %23

20:                                               ; preds = %16, %13
  %21 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #6
  br label %23

22:                                               ; preds = %15, %16, %8
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  ret void

23:                                               ; preds = %20, %18, %9
  %24 = phi { ptr, i32 } [ %10, %9 ], [ %21, %20 ], [ %19, %18 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  resume { ptr, i32 } %24
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_714TreeWalkerImpl12getLastChildENS_8DOM_NodeE(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr noundef nonnull align 8 dereferenceable(49) %1, ptr noundef %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %4 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %5 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %6 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %7 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %8 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #7
  call void @_ZN11xercesc_2_78DOM_NodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #8
  %9 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node6isNullEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #8
          to label %10 unwind label %12

10:                                               ; preds = %3
  br i1 %9, label %11, label %14

11:                                               ; preds = %10
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %4) #8
          to label %50 unwind label %12

12:                                               ; preds = %11, %3
  %13 = landingpad { ptr, i32 }
          cleanup
  br label %51

14:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #7
  invoke void @_ZNK11xercesc_2_78DOM_Node12getLastChildEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %2) #8
          to label %15 unwind label %19

15:                                               ; preds = %14
  %16 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node6isNullEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #8
          to label %17 unwind label %21

17:                                               ; preds = %15
  br i1 %16, label %18, label %23

18:                                               ; preds = %17
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %4) #8
          to label %45 unwind label %21

19:                                               ; preds = %14
  %20 = landingpad { ptr, i32 }
          cleanup
  br label %48

21:                                               ; preds = %18, %15
  %22 = landingpad { ptr, i32 }
          cleanup
  br label %46

23:                                               ; preds = %17
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5) #8
          to label %24 unwind label %28

24:                                               ; preds = %23
  %25 = invoke noundef signext i16 @_ZN11xercesc_2_714TreeWalkerImpl10acceptNodeENS_8DOM_NodeE(ptr noundef nonnull align 8 dereferenceable(49) %1, ptr noundef nonnull %6) #8
          to label %26 unwind label %30

26:                                               ; preds = %24
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #6
  switch i16 %25, label %39 [
    i16 1, label %27
    i16 3, label %32
  ]

27:                                               ; preds = %26
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %5) #8
          to label %45 unwind label %28

28:                                               ; preds = %39, %35, %32, %27, %23
  %29 = landingpad { ptr, i32 }
          cleanup
  br label %46

30:                                               ; preds = %24
  %31 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #6
  br label %46

32:                                               ; preds = %26
  %33 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node13hasChildNodesEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #8
          to label %34 unwind label %28

34:                                               ; preds = %32
  br i1 %33, label %35, label %39

35:                                               ; preds = %34
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %5) #8
          to label %36 unwind label %28

36:                                               ; preds = %35
  invoke void @_ZN11xercesc_2_714TreeWalkerImpl12getLastChildENS_8DOM_NodeE(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr noundef nonnull align 8 dereferenceable(49) %1, ptr noundef nonnull %7) #8
          to label %43 unwind label %37

37:                                               ; preds = %36
  %38 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #6
  br label %46

39:                                               ; preds = %26, %34
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %5) #8
          to label %40 unwind label %28

40:                                               ; preds = %39
  invoke void @_ZN11xercesc_2_714TreeWalkerImpl18getPreviousSiblingENS_8DOM_NodeE(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr noundef nonnull align 8 dereferenceable(49) %1, ptr noundef nonnull %8) #8
          to label %43 unwind label %41

41:                                               ; preds = %40
  %42 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #6
  br label %46

43:                                               ; preds = %40, %36
  %44 = phi ptr [ %7, %36 ], [ %8, %40 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %44) #6
  br label %45

45:                                               ; preds = %43, %27, %18
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7
  br label %50

46:                                               ; preds = %28, %30, %37, %41, %21
  %47 = phi { ptr, i32 } [ %22, %21 ], [ %29, %28 ], [ %38, %37 ], [ %42, %41 ], [ %31, %30 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #6
  br label %48

48:                                               ; preds = %46, %19
  %49 = phi { ptr, i32 } [ %47, %46 ], [ %20, %19 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7
  br label %51

50:                                               ; preds = %11, %45
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  ret void

51:                                               ; preds = %48, %12
  %52 = phi { ptr, i32 } [ %13, %12 ], [ %49, %48 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  resume { ptr, i32 } %52
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_714TreeWalkerImpl15previousSiblingEv(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr noundef nonnull align 8 dereferenceable(49) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %3 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %4 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #7
  call void @_ZN11xercesc_2_78DOM_NodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #8
  %5 = getelementptr inbounds %"class.xercesc_2_7::TreeWalkerImpl", ptr %1, i64 0, i32 4
  %6 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node6isNullEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #8
          to label %7 unwind label %9

7:                                                ; preds = %2
  br i1 %6, label %8, label %11

8:                                                ; preds = %7
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #8
          to label %22 unwind label %9

9:                                                ; preds = %11, %8, %2
  %10 = landingpad { ptr, i32 }
          cleanup
  br label %23

11:                                               ; preds = %7
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #8
          to label %12 unwind label %9

12:                                               ; preds = %11
  invoke void @_ZN11xercesc_2_714TreeWalkerImpl18getPreviousSiblingENS_8DOM_NodeE(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr noundef nonnull align 8 dereferenceable(49) %1, ptr noundef nonnull %4) #8
          to label %13 unwind label %18

13:                                               ; preds = %12
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #6
  %14 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node6isNullEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #8
          to label %15 unwind label %20

15:                                               ; preds = %13
  br i1 %14, label %22, label %16

16:                                               ; preds = %15
  %17 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %0) #8
          to label %22 unwind label %20

18:                                               ; preds = %12
  %19 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #6
  br label %23

20:                                               ; preds = %16, %13
  %21 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #6
  br label %23

22:                                               ; preds = %15, %16, %8
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  ret void

23:                                               ; preds = %20, %18, %9
  %24 = phi { ptr, i32 } [ %10, %9 ], [ %21, %20 ], [ %19, %18 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  resume { ptr, i32 } %24
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_714TreeWalkerImpl18getPreviousSiblingENS_8DOM_NodeE(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr noundef nonnull align 8 dereferenceable(49) %1, ptr noundef %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %4 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %5 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %6 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %7 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %8 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %9 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %10 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %11 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %12 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %13 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #7
  call void @_ZN11xercesc_2_78DOM_NodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #8
  %14 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node6isNullEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #8
          to label %15 unwind label %21

15:                                               ; preds = %3
  br i1 %14, label %20, label %16

16:                                               ; preds = %15
  %17 = getelementptr inbounds %"class.xercesc_2_7::TreeWalkerImpl", ptr %1, i64 0, i32 5
  %18 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeeqERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %17) #8
          to label %19 unwind label %21

19:                                               ; preds = %16
  br i1 %18, label %20, label %23

20:                                               ; preds = %19, %15
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %4) #8
          to label %103 unwind label %21

21:                                               ; preds = %20, %16, %3
  %22 = landingpad { ptr, i32 }
          cleanup
  br label %104

23:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #7
  invoke void @_ZNK11xercesc_2_78DOM_Node18getPreviousSiblingEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %2) #8
          to label %24 unwind label %37

24:                                               ; preds = %23
  %25 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node6isNullEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #8
          to label %26 unwind label %39

26:                                               ; preds = %24
  br i1 %25, label %27, label %62

27:                                               ; preds = %26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #7
  invoke void @_ZNK11xercesc_2_78DOM_Node13getParentNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %2) #8
          to label %28 unwind label %41

28:                                               ; preds = %27
  %29 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) #8
          to label %30 unwind label %43

30:                                               ; preds = %28
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #7
  %31 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node6isNullEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #8
          to label %32 unwind label %39

32:                                               ; preds = %30
  br i1 %31, label %36, label %33

33:                                               ; preds = %32
  %34 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeeqERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %17) #8
          to label %35 unwind label %39

35:                                               ; preds = %33
  br i1 %34, label %36, label %47

36:                                               ; preds = %35, %32
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %4) #8
          to label %98 unwind label %39

37:                                               ; preds = %23
  %38 = landingpad { ptr, i32 }
          cleanup
  br label %101

39:                                               ; preds = %36, %33, %30, %24
  %40 = landingpad { ptr, i32 }
          cleanup
  br label %99

41:                                               ; preds = %27
  %42 = landingpad { ptr, i32 }
          cleanup
  br label %45

43:                                               ; preds = %28
  %44 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #6
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi { ptr, i32 } [ %44, %43 ], [ %42, %41 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #7
  br label %99

47:                                               ; preds = %35
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %5) #8
          to label %48 unwind label %55

48:                                               ; preds = %47
  %49 = invoke noundef signext i16 @_ZN11xercesc_2_714TreeWalkerImpl10acceptNodeENS_8DOM_NodeE(ptr noundef nonnull align 8 dereferenceable(49) %1, ptr noundef nonnull %7) #8
          to label %50 unwind label %57

50:                                               ; preds = %48
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #6
  %51 = icmp eq i16 %49, 3
  br i1 %51, label %52, label %61

52:                                               ; preds = %50
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %5) #8
          to label %53 unwind label %55

53:                                               ; preds = %52
  invoke void @_ZN11xercesc_2_714TreeWalkerImpl18getPreviousSiblingENS_8DOM_NodeE(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr noundef nonnull align 8 dereferenceable(49) %1, ptr noundef nonnull %8) #8
          to label %54 unwind label %59

54:                                               ; preds = %53
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #6
  br label %98

55:                                               ; preds = %61, %52, %47
  %56 = landingpad { ptr, i32 }
          cleanup
  br label %99

57:                                               ; preds = %48
  %58 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #6
  br label %99

59:                                               ; preds = %53
  %60 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #6
  br label %99

61:                                               ; preds = %50
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %4) #8
          to label %98 unwind label %55

62:                                               ; preds = %26
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %5) #8
          to label %63 unwind label %67

63:                                               ; preds = %62
  %64 = invoke noundef signext i16 @_ZN11xercesc_2_714TreeWalkerImpl10acceptNodeENS_8DOM_NodeE(ptr noundef nonnull align 8 dereferenceable(49) %1, ptr noundef nonnull %9) #8
          to label %65 unwind label %69

65:                                               ; preds = %63
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #6
  switch i16 %64, label %93 [
    i16 1, label %66
    i16 3, label %71
  ]

66:                                               ; preds = %65
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %5) #8
          to label %98 unwind label %67

67:                                               ; preds = %93, %66, %62
  %68 = landingpad { ptr, i32 }
          cleanup
  br label %99

69:                                               ; preds = %63
  %70 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #6
  br label %99

71:                                               ; preds = %65
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #7
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %5) #8
          to label %72 unwind label %79

72:                                               ; preds = %71
  invoke void @_ZN11xercesc_2_714TreeWalkerImpl12getLastChildENS_8DOM_NodeE(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %10, ptr noundef nonnull align 8 dereferenceable(49) %1, ptr noundef nonnull %11) #8
          to label %73 unwind label %81

73:                                               ; preds = %72
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #6
  %74 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node6isNullEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #8
          to label %75 unwind label %83

75:                                               ; preds = %73
  br i1 %74, label %76, label %87

76:                                               ; preds = %75
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %5) #8
          to label %77 unwind label %83

77:                                               ; preds = %76
  invoke void @_ZN11xercesc_2_714TreeWalkerImpl18getPreviousSiblingENS_8DOM_NodeE(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr noundef nonnull align 8 dereferenceable(49) %1, ptr noundef nonnull %12) #8
          to label %78 unwind label %85

78:                                               ; preds = %77
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12) #6
  br label %88

79:                                               ; preds = %71
  %80 = landingpad { ptr, i32 }
          cleanup
  br label %91

81:                                               ; preds = %72
  %82 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #6
  br label %91

83:                                               ; preds = %87, %76, %73
  %84 = landingpad { ptr, i32 }
          cleanup
  br label %89

85:                                               ; preds = %77
  %86 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12) #6
  br label %89

87:                                               ; preds = %75
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %10) #8
          to label %88 unwind label %83

88:                                               ; preds = %87, %78
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #7
  br label %98

89:                                               ; preds = %85, %83
  %90 = phi { ptr, i32 } [ %86, %85 ], [ %84, %83 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #6
  br label %91

91:                                               ; preds = %89, %81, %79
  %92 = phi { ptr, i32 } [ %90, %89 ], [ %82, %81 ], [ %80, %79 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #7
  br label %99

93:                                               ; preds = %65
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %5) #8
          to label %94 unwind label %67

94:                                               ; preds = %93
  invoke void @_ZN11xercesc_2_714TreeWalkerImpl18getPreviousSiblingENS_8DOM_NodeE(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr noundef nonnull align 8 dereferenceable(49) %1, ptr noundef nonnull %13) #8
          to label %95 unwind label %96

95:                                               ; preds = %94
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13) #6
  br label %98

96:                                               ; preds = %94
  %97 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13) #6
  br label %99

98:                                               ; preds = %88, %95, %66, %54, %61, %36
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7
  br label %103

99:                                               ; preds = %67, %69, %91, %96, %55, %57, %59, %45, %39
  %100 = phi { ptr, i32 } [ %40, %39 ], [ %46, %45 ], [ %60, %59 ], [ %56, %55 ], [ %58, %57 ], [ %68, %67 ], [ %92, %91 ], [ %97, %96 ], [ %70, %69 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #6
  br label %101

101:                                              ; preds = %99, %37
  %102 = phi { ptr, i32 } [ %100, %99 ], [ %38, %37 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7
  br label %104

103:                                              ; preds = %20, %98
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  ret void

104:                                              ; preds = %101, %21
  %105 = phi { ptr, i32 } [ %22, %21 ], [ %102, %101 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  resume { ptr, i32 } %105
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_714TreeWalkerImpl11nextSiblingEv(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr noundef nonnull align 8 dereferenceable(49) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %3 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %4 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #7
  call void @_ZN11xercesc_2_78DOM_NodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #8
  %5 = getelementptr inbounds %"class.xercesc_2_7::TreeWalkerImpl", ptr %1, i64 0, i32 4
  %6 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node6isNullEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #8
          to label %7 unwind label %9

7:                                                ; preds = %2
  br i1 %6, label %8, label %11

8:                                                ; preds = %7
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #8
          to label %22 unwind label %9

9:                                                ; preds = %11, %8, %2
  %10 = landingpad { ptr, i32 }
          cleanup
  br label %23

11:                                               ; preds = %7
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #8
          to label %12 unwind label %9

12:                                               ; preds = %11
  invoke void @_ZN11xercesc_2_714TreeWalkerImpl14getNextSiblingENS_8DOM_NodeE(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr noundef nonnull align 8 dereferenceable(49) %1, ptr noundef nonnull %4) #8
          to label %13 unwind label %18

13:                                               ; preds = %12
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #6
  %14 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node6isNullEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #8
          to label %15 unwind label %20

15:                                               ; preds = %13
  br i1 %14, label %22, label %16

16:                                               ; preds = %15
  %17 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %0) #8
          to label %22 unwind label %20

18:                                               ; preds = %12
  %19 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #6
  br label %23

20:                                               ; preds = %16, %13
  %21 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #6
  br label %23

22:                                               ; preds = %15, %16, %8
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  ret void

23:                                               ; preds = %20, %18, %9
  %24 = phi { ptr, i32 } [ %10, %9 ], [ %21, %20 ], [ %19, %18 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  resume { ptr, i32 } %24
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_714TreeWalkerImpl14getNextSiblingENS_8DOM_NodeE(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr noundef nonnull align 8 dereferenceable(49) %1, ptr noundef %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %4 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %5 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %6 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %7 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %8 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %9 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %10 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %11 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %12 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %13 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #7
  call void @_ZN11xercesc_2_78DOM_NodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #8
  %14 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node6isNullEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #8
          to label %15 unwind label %21

15:                                               ; preds = %3
  br i1 %14, label %20, label %16

16:                                               ; preds = %15
  %17 = getelementptr inbounds %"class.xercesc_2_7::TreeWalkerImpl", ptr %1, i64 0, i32 5
  %18 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeeqERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %17) #8
          to label %19 unwind label %21

19:                                               ; preds = %16
  br i1 %18, label %20, label %23

20:                                               ; preds = %19, %15
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %4) #8
          to label %103 unwind label %21

21:                                               ; preds = %20, %16, %3
  %22 = landingpad { ptr, i32 }
          cleanup
  br label %104

23:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #7
  invoke void @_ZNK11xercesc_2_78DOM_Node14getNextSiblingEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %2) #8
          to label %24 unwind label %37

24:                                               ; preds = %23
  %25 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node6isNullEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #8
          to label %26 unwind label %39

26:                                               ; preds = %24
  br i1 %25, label %27, label %62

27:                                               ; preds = %26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #7
  invoke void @_ZNK11xercesc_2_78DOM_Node13getParentNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %2) #8
          to label %28 unwind label %41

28:                                               ; preds = %27
  %29 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) #8
          to label %30 unwind label %43

30:                                               ; preds = %28
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #7
  %31 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node6isNullEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #8
          to label %32 unwind label %39

32:                                               ; preds = %30
  br i1 %31, label %36, label %33

33:                                               ; preds = %32
  %34 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeeqERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %17) #8
          to label %35 unwind label %39

35:                                               ; preds = %33
  br i1 %34, label %36, label %47

36:                                               ; preds = %35, %32
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %4) #8
          to label %98 unwind label %39

37:                                               ; preds = %23
  %38 = landingpad { ptr, i32 }
          cleanup
  br label %101

39:                                               ; preds = %36, %33, %30, %24
  %40 = landingpad { ptr, i32 }
          cleanup
  br label %99

41:                                               ; preds = %27
  %42 = landingpad { ptr, i32 }
          cleanup
  br label %45

43:                                               ; preds = %28
  %44 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #6
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi { ptr, i32 } [ %44, %43 ], [ %42, %41 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #7
  br label %99

47:                                               ; preds = %35
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %5) #8
          to label %48 unwind label %55

48:                                               ; preds = %47
  %49 = invoke noundef signext i16 @_ZN11xercesc_2_714TreeWalkerImpl10acceptNodeENS_8DOM_NodeE(ptr noundef nonnull align 8 dereferenceable(49) %1, ptr noundef nonnull %7) #8
          to label %50 unwind label %57

50:                                               ; preds = %48
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #6
  %51 = icmp eq i16 %49, 3
  br i1 %51, label %52, label %61

52:                                               ; preds = %50
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %5) #8
          to label %53 unwind label %55

53:                                               ; preds = %52
  invoke void @_ZN11xercesc_2_714TreeWalkerImpl14getNextSiblingENS_8DOM_NodeE(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr noundef nonnull align 8 dereferenceable(49) %1, ptr noundef nonnull %8) #8
          to label %54 unwind label %59

54:                                               ; preds = %53
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #6
  br label %98

55:                                               ; preds = %61, %52, %47
  %56 = landingpad { ptr, i32 }
          cleanup
  br label %99

57:                                               ; preds = %48
  %58 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #6
  br label %99

59:                                               ; preds = %53
  %60 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #6
  br label %99

61:                                               ; preds = %50
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %4) #8
          to label %98 unwind label %55

62:                                               ; preds = %26
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %5) #8
          to label %63 unwind label %67

63:                                               ; preds = %62
  %64 = invoke noundef signext i16 @_ZN11xercesc_2_714TreeWalkerImpl10acceptNodeENS_8DOM_NodeE(ptr noundef nonnull align 8 dereferenceable(49) %1, ptr noundef nonnull %9) #8
          to label %65 unwind label %69

65:                                               ; preds = %63
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #6
  switch i16 %64, label %93 [
    i16 1, label %66
    i16 3, label %71
  ]

66:                                               ; preds = %65
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %5) #8
          to label %98 unwind label %67

67:                                               ; preds = %93, %66, %62
  %68 = landingpad { ptr, i32 }
          cleanup
  br label %99

69:                                               ; preds = %63
  %70 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #6
  br label %99

71:                                               ; preds = %65
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #7
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %5) #8
          to label %72 unwind label %79

72:                                               ; preds = %71
  invoke void @_ZN11xercesc_2_714TreeWalkerImpl13getFirstChildENS_8DOM_NodeE(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %10, ptr noundef nonnull align 8 dereferenceable(49) %1, ptr noundef nonnull %11) #8
          to label %73 unwind label %81

73:                                               ; preds = %72
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #6
  %74 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node6isNullEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #8
          to label %75 unwind label %83

75:                                               ; preds = %73
  br i1 %74, label %76, label %87

76:                                               ; preds = %75
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %5) #8
          to label %77 unwind label %83

77:                                               ; preds = %76
  invoke void @_ZN11xercesc_2_714TreeWalkerImpl14getNextSiblingENS_8DOM_NodeE(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr noundef nonnull align 8 dereferenceable(49) %1, ptr noundef nonnull %12) #8
          to label %78 unwind label %85

78:                                               ; preds = %77
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12) #6
  br label %88

79:                                               ; preds = %71
  %80 = landingpad { ptr, i32 }
          cleanup
  br label %91

81:                                               ; preds = %72
  %82 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #6
  br label %91

83:                                               ; preds = %87, %76, %73
  %84 = landingpad { ptr, i32 }
          cleanup
  br label %89

85:                                               ; preds = %77
  %86 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12) #6
  br label %89

87:                                               ; preds = %75
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %10) #8
          to label %88 unwind label %83

88:                                               ; preds = %87, %78
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #7
  br label %98

89:                                               ; preds = %85, %83
  %90 = phi { ptr, i32 } [ %86, %85 ], [ %84, %83 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #6
  br label %91

91:                                               ; preds = %89, %81, %79
  %92 = phi { ptr, i32 } [ %90, %89 ], [ %82, %81 ], [ %80, %79 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #7
  br label %99

93:                                               ; preds = %65
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %5) #8
          to label %94 unwind label %67

94:                                               ; preds = %93
  invoke void @_ZN11xercesc_2_714TreeWalkerImpl14getNextSiblingENS_8DOM_NodeE(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr noundef nonnull align 8 dereferenceable(49) %1, ptr noundef nonnull %13) #8
          to label %95 unwind label %96

95:                                               ; preds = %94
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13) #6
  br label %98

96:                                               ; preds = %94
  %97 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13) #6
  br label %99

98:                                               ; preds = %88, %95, %66, %54, %61, %36
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7
  br label %103

99:                                               ; preds = %67, %69, %91, %96, %55, %57, %59, %45, %39
  %100 = phi { ptr, i32 } [ %40, %39 ], [ %46, %45 ], [ %60, %59 ], [ %56, %55 ], [ %58, %57 ], [ %68, %67 ], [ %92, %91 ], [ %97, %96 ], [ %70, %69 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #6
  br label %101

101:                                              ; preds = %99, %37
  %102 = phi { ptr, i32 } [ %100, %99 ], [ %38, %37 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7
  br label %104

103:                                              ; preds = %20, %98
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  ret void

104:                                              ; preds = %101, %21
  %105 = phi { ptr, i32 } [ %22, %21 ], [ %102, %101 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  resume { ptr, i32 } %105
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_714TreeWalkerImpl12previousNodeEv(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr noundef nonnull align 8 dereferenceable(49) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %3 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %4 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %5 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %6 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %7 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %8 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %9 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #7
  call void @_ZN11xercesc_2_78DOM_NodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #8
  %10 = getelementptr inbounds %"class.xercesc_2_7::TreeWalkerImpl", ptr %1, i64 0, i32 4
  %11 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node6isNullEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #8
          to label %12 unwind label %13

12:                                               ; preds = %2
  br i1 %11, label %51, label %15

13:                                               ; preds = %51, %29, %26, %19, %2
  %14 = landingpad { ptr, i32 }
          cleanup
  br label %76

15:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #7
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %10) #8
          to label %16 unwind label %31

16:                                               ; preds = %15
  invoke void @_ZN11xercesc_2_714TreeWalkerImpl18getPreviousSiblingENS_8DOM_NodeE(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %4, ptr noundef nonnull align 8 dereferenceable(49) %1, ptr noundef nonnull %5) #8
          to label %17 unwind label %33

17:                                               ; preds = %16
  %18 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #8
          to label %19 unwind label %35

19:                                               ; preds = %17
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #6
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  %20 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node6isNullEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #8
          to label %21 unwind label %13

21:                                               ; preds = %19
  br i1 %20, label %22, label %53

22:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #7
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %10) #8
          to label %23 unwind label %41

23:                                               ; preds = %22
  invoke void @_ZN11xercesc_2_714TreeWalkerImpl13getParentNodeENS_8DOM_NodeE(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %6, ptr noundef nonnull align 8 dereferenceable(49) %1, ptr noundef nonnull %7) #8
          to label %24 unwind label %43

24:                                               ; preds = %23
  %25 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %6) #8
          to label %26 unwind label %45

26:                                               ; preds = %24
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #6
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #7
  %27 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node6isNullEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #8
          to label %28 unwind label %13

28:                                               ; preds = %26
  br i1 %27, label %51, label %29

29:                                               ; preds = %28
  %30 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %3) #8
          to label %51 unwind label %13

31:                                               ; preds = %15
  %32 = landingpad { ptr, i32 }
          cleanup
  br label %39

33:                                               ; preds = %16
  %34 = landingpad { ptr, i32 }
          cleanup
  br label %37

35:                                               ; preds = %17
  %36 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #6
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi { ptr, i32 } [ %36, %35 ], [ %34, %33 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #6
  br label %39

39:                                               ; preds = %37, %31
  %40 = phi { ptr, i32 } [ %38, %37 ], [ %32, %31 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  br label %76

41:                                               ; preds = %22
  %42 = landingpad { ptr, i32 }
          cleanup
  br label %49

43:                                               ; preds = %23
  %44 = landingpad { ptr, i32 }
          cleanup
  br label %47

45:                                               ; preds = %24
  %46 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #6
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi { ptr, i32 } [ %46, %45 ], [ %44, %43 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #6
  br label %49

49:                                               ; preds = %47, %41
  %50 = phi { ptr, i32 } [ %48, %47 ], [ %42, %41 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #7
  br label %76

51:                                               ; preds = %12, %28, %29
  %52 = phi ptr [ %10, %29 ], [ %3, %28 ], [ %3, %12 ]
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %52) #8
          to label %75 unwind label %13

53:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #7
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %3) #8
          to label %54 unwind label %58

54:                                               ; preds = %53
  invoke void @_ZN11xercesc_2_714TreeWalkerImpl12getLastChildENS_8DOM_NodeE(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %8, ptr noundef nonnull align 8 dereferenceable(49) %1, ptr noundef nonnull %9) #8
          to label %55 unwind label %60

55:                                               ; preds = %54
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #6
  %56 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node6isNullEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #8
          to label %57 unwind label %62

57:                                               ; preds = %55
  br i1 %56, label %64, label %67

58:                                               ; preds = %53
  %59 = landingpad { ptr, i32 }
          cleanup
  br label %73

60:                                               ; preds = %54
  %61 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #6
  br label %73

62:                                               ; preds = %67, %70, %64, %55
  %63 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #6
  br label %73

64:                                               ; preds = %57
  %65 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node6isNullEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #8
          to label %66 unwind label %62

66:                                               ; preds = %64
  br i1 %65, label %70, label %67

67:                                               ; preds = %57, %66
  %68 = phi ptr [ %3, %66 ], [ %8, %57 ]
  %69 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %68) #8
          to label %70 unwind label %62

70:                                               ; preds = %67, %66
  %71 = phi ptr [ %3, %66 ], [ %10, %67 ]
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %71) #8
          to label %72 unwind label %62

72:                                               ; preds = %70
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #7
  br label %75

73:                                               ; preds = %62, %60, %58
  %74 = phi { ptr, i32 } [ %63, %62 ], [ %61, %60 ], [ %59, %58 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #7
  br label %76

75:                                               ; preds = %51, %72
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  ret void

76:                                               ; preds = %73, %49, %39, %13
  %77 = phi { ptr, i32 } [ %14, %13 ], [ %50, %49 ], [ %74, %73 ], [ %40, %39 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  resume { ptr, i32 } %77
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_714TreeWalkerImpl8nextNodeEv(ptr dead_on_unwind noalias nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr noundef nonnull align 8 dereferenceable(49) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %3 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %4 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %5 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %6 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %7 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %8 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %9 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %10 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %11 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %12 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  tail call void @_ZN11xercesc_2_78DOM_NodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #8
  %13 = getelementptr inbounds %"class.xercesc_2_7::TreeWalkerImpl", ptr %1, i64 0, i32 4
  %14 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node6isNullEv(ptr noundef nonnull align 8 dereferenceable(8) %13) #8
          to label %15 unwind label %16

15:                                               ; preds = %2
  br i1 %14, label %107, label %18

16:                                               ; preds = %42, %39, %22, %2
  %17 = landingpad { ptr, i32 }
          cleanup
  br label %108

18:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #7
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %13) #8
          to label %19 unwind label %25

19:                                               ; preds = %18
  invoke void @_ZN11xercesc_2_714TreeWalkerImpl13getFirstChildENS_8DOM_NodeE(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %3, ptr noundef nonnull align 8 dereferenceable(49) %1, ptr noundef nonnull %4) #8
          to label %20 unwind label %27

20:                                               ; preds = %19
  %21 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #8
          to label %22 unwind label %29

22:                                               ; preds = %20
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #6
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  %23 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node6isNullEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #8
          to label %24 unwind label %16

24:                                               ; preds = %22
  br i1 %23, label %35, label %42

25:                                               ; preds = %18
  %26 = landingpad { ptr, i32 }
          cleanup
  br label %33

27:                                               ; preds = %19
  %28 = landingpad { ptr, i32 }
          cleanup
  br label %31

29:                                               ; preds = %20
  %30 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #6
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi { ptr, i32 } [ %30, %29 ], [ %28, %27 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #6
  br label %33

33:                                               ; preds = %31, %25
  %34 = phi { ptr, i32 } [ %32, %31 ], [ %26, %25 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  br label %108

35:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #7
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %13) #8
          to label %36 unwind label %44

36:                                               ; preds = %35
  invoke void @_ZN11xercesc_2_714TreeWalkerImpl14getNextSiblingENS_8DOM_NodeE(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %5, ptr noundef nonnull align 8 dereferenceable(49) %1, ptr noundef nonnull %6) #8
          to label %37 unwind label %46

37:                                               ; preds = %36
  %38 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %5) #8
          to label %39 unwind label %48

39:                                               ; preds = %37
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #6
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7
  %40 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node6isNullEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #8
          to label %41 unwind label %16

41:                                               ; preds = %39
  br i1 %40, label %54, label %42

42:                                               ; preds = %41, %24
  %43 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %0) #8
          to label %107 unwind label %16

44:                                               ; preds = %35
  %45 = landingpad { ptr, i32 }
          cleanup
  br label %52

46:                                               ; preds = %36
  %47 = landingpad { ptr, i32 }
          cleanup
  br label %50

48:                                               ; preds = %37
  %49 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #6
  br label %50

50:                                               ; preds = %48, %46
  %51 = phi { ptr, i32 } [ %49, %48 ], [ %47, %46 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #6
  br label %52

52:                                               ; preds = %50, %44
  %53 = phi { ptr, i32 } [ %51, %50 ], [ %45, %44 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7
  br label %108

54:                                               ; preds = %41
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #7
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %13) #8
          to label %55 unwind label %69

55:                                               ; preds = %54
  invoke void @_ZN11xercesc_2_714TreeWalkerImpl13getParentNodeENS_8DOM_NodeE(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %7, ptr noundef nonnull align 8 dereferenceable(49) %1, ptr noundef nonnull %8) #8
          to label %56 unwind label %71

56:                                               ; preds = %55
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #6
  br label %57

57:                                               ; preds = %91, %56
  %58 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node6isNullEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #8
          to label %59 unwind label %73

59:                                               ; preds = %57
  br i1 %58, label %102, label %60

60:                                               ; preds = %59
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #7
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %7) #8
          to label %61 unwind label %77

61:                                               ; preds = %60
  invoke void @_ZN11xercesc_2_714TreeWalkerImpl14getNextSiblingENS_8DOM_NodeE(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %9, ptr noundef nonnull align 8 dereferenceable(49) %1, ptr noundef nonnull %10) #8
          to label %62 unwind label %79

62:                                               ; preds = %61
  %63 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %9) #8
          to label %64 unwind label %81

64:                                               ; preds = %62
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #6
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #7
  %65 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node6isNullEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #8
          to label %66 unwind label %73

66:                                               ; preds = %64
  br i1 %65, label %87, label %67

67:                                               ; preds = %66
  %68 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %0) #8
          to label %102 unwind label %75

69:                                               ; preds = %54
  %70 = landingpad { ptr, i32 }
          cleanup
  br label %105

71:                                               ; preds = %55
  %72 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #6
  br label %105

73:                                               ; preds = %57, %64
  %74 = landingpad { ptr, i32 }
          cleanup
  br label %103

75:                                               ; preds = %67
  %76 = landingpad { ptr, i32 }
          cleanup
  br label %103

77:                                               ; preds = %60
  %78 = landingpad { ptr, i32 }
          cleanup
  br label %85

79:                                               ; preds = %61
  %80 = landingpad { ptr, i32 }
          cleanup
  br label %83

81:                                               ; preds = %62
  %82 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #6
  br label %83

83:                                               ; preds = %81, %79
  %84 = phi { ptr, i32 } [ %82, %81 ], [ %80, %79 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #6
  br label %85

85:                                               ; preds = %83, %77
  %86 = phi { ptr, i32 } [ %84, %83 ], [ %78, %77 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #7
  br label %103

87:                                               ; preds = %66
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #7
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %7) #8
          to label %88 unwind label %92

88:                                               ; preds = %87
  invoke void @_ZN11xercesc_2_714TreeWalkerImpl13getParentNodeENS_8DOM_NodeE(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %11, ptr noundef nonnull align 8 dereferenceable(49) %1, ptr noundef nonnull %12) #8
          to label %89 unwind label %94

89:                                               ; preds = %88
  %90 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %11) #8
          to label %91 unwind label %96

91:                                               ; preds = %89
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #6
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #7
  br label %57, !llvm.loop !69

92:                                               ; preds = %87
  %93 = landingpad { ptr, i32 }
          cleanup
  br label %100

94:                                               ; preds = %88
  %95 = landingpad { ptr, i32 }
          cleanup
  br label %98

96:                                               ; preds = %89
  %97 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #6
  br label %98

98:                                               ; preds = %96, %94
  %99 = phi { ptr, i32 } [ %97, %96 ], [ %95, %94 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12) #6
  br label %100

100:                                              ; preds = %98, %92
  %101 = phi { ptr, i32 } [ %99, %98 ], [ %93, %92 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #7
  br label %103

102:                                              ; preds = %59, %67
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #7
  br label %107

103:                                              ; preds = %73, %75, %100, %85
  %104 = phi { ptr, i32 } [ %101, %100 ], [ %86, %85 ], [ %74, %73 ], [ %76, %75 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #6
  br label %105

105:                                              ; preds = %103, %71, %69
  %106 = phi { ptr, i32 } [ %104, %103 ], [ %72, %71 ], [ %70, %69 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #7
  br label %108

107:                                              ; preds = %42, %102, %15
  ret void

108:                                              ; preds = %105, %52, %33, %16
  %109 = phi { ptr, i32 } [ %106, %105 ], [ %17, %16 ], [ %53, %52 ], [ %34, %33 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #6
  resume { ptr, i32 } %109
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeeqERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK11xercesc_2_78DOM_Node13getParentNodeEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_Node") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef signext i16 @_ZN11xercesc_2_714TreeWalkerImpl10acceptNodeENS_8DOM_NodeE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(49) %0, ptr noundef nonnull %1) local_unnamed_addr #2 align 2 !prof !38 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::TreeWalkerImpl", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !57
  %5 = icmp eq ptr %4, null
  %6 = getelementptr inbounds %"class.xercesc_2_7::TreeWalkerImpl", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !53
  %8 = tail call noundef signext i16 @_ZNK11xercesc_2_78DOM_Node11getNodeTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #8
  %9 = sext i16 %8 to i32
  %10 = add nsw i32 %9, -1
  %11 = shl nuw i32 1, %10
  %12 = sext i32 %11 to i64
  %13 = and i64 %7, %12
  %14 = icmp eq i64 %13, 0
  br i1 %5, label %15, label %17

15:                                               ; preds = %2
  %16 = select i1 %14, i16 3, i16 1
  br label %26

17:                                               ; preds = %2
  %18 = load ptr, ptr %3, align 8, !tbaa !57
  %19 = load ptr, ptr %18, align 8, !tbaa !35
  %20 = getelementptr inbounds ptr, ptr %19, i64 2
  %21 = load ptr, ptr %20, align 8
  %22 = tail call noundef signext i16 %21(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(8) %1) #8
  br i1 %14, label %23, label %26

23:                                               ; preds = %17
  %24 = icmp eq i16 %22, 2
  %25 = select i1 %24, i16 2, i16 3
  br label %26

26:                                               ; preds = %17, %23, %15
  %27 = phi i16 [ %16, %15 ], [ %25, %23 ], [ %22, %17 ]
  ret i16 %27
}

; Function Attrs: optsize
declare void @_ZNK11xercesc_2_78DOM_Node14getNextSiblingEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_Node") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK11xercesc_2_78DOM_Node18getPreviousSiblingEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_Node") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK11xercesc_2_78DOM_Node13getFirstChildEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_Node") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node13hasChildNodesEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK11xercesc_2_78DOM_Node12getLastChildEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_Node") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef signext i16 @_ZNK11xercesc_2_78DOM_Node11getNodeTypeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

attributes #0 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind optsize }
attributes #7 = { nounwind }
attributes #8 = { optsize }
attributes #9 = { noreturn }

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
!35 = !{!36, !36, i64 0}
!36 = !{!"vtable pointer", !37, i64 0}
!37 = !{!"Simple C++ TBAA"}
!38 = !{!"function_entry_count", i64 0}
!39 = !{!40, !48, i64 128}
!40 = !{!"_ZTSN11xercesc_2_712DocumentImplE", !41, i64 0, !48, i64 88, !48, i64 96, !48, i64 104, !48, i64 112, !48, i64 120, !48, i64 128, !48, i64 136, !48, i64 144, !46, i64 152, !50, i64 156, !48, i64 160}
!41 = !{!"_ZTSN11xercesc_2_710ParentNodeE", !42, i64 0, !48, i64 48, !48, i64 56, !46, i64 64, !48, i64 72, !46, i64 80}
!42 = !{!"_ZTSN11xercesc_2_79ChildNodeE", !43, i64 0, !48, i64 32, !48, i64 40}
!43 = !{!"_ZTSN11xercesc_2_78NodeImplE", !44, i64 0, !48, i64 16, !49, i64 24}
!44 = !{!"_ZTSN11xercesc_2_712NodeListImplE", !45, i64 0}
!45 = !{!"_ZTSN11xercesc_2_714RefCountedImplE", !46, i64 8}
!46 = !{!"int", !47, i64 0}
!47 = !{!"omnipotent char", !37, i64 0}
!48 = !{!"any pointer", !47, i64 0}
!49 = !{!"short", !47, i64 0}
!50 = !{!"bool", !47, i64 0}
!51 = distinct !{!51, !52}
!52 = !{!"llvm.loop.mustprogress"}
!53 = !{!54, !55, i64 16}
!54 = !{!"_ZTSN11xercesc_2_714TreeWalkerImplE", !45, i64 0, !55, i64 16, !48, i64 24, !56, i64 32, !56, i64 40, !50, i64 48}
!55 = !{!"long", !47, i64 0}
!56 = !{!"_ZTSN11xercesc_2_78DOM_NodeE", !48, i64 0}
!57 = !{!54, !48, i64 24}
!58 = !{!54, !50, i64 48}
!59 = !{i8 0, i8 2}
!60 = !{}
!61 = !{!62, !46, i64 12}
!62 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_14TreeWalkerImplEEE", !50, i64 8, !46, i64 12, !46, i64 16, !48, i64 24, !48, i64 32}
!63 = !{!62, !48, i64 32}
!64 = !{!62, !48, i64 24}
!65 = !{!48, !48, i64 0}
!66 = !{!67, !48, i64 40}
!67 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !68, i64 8, !48, i64 16, !46, i64 24, !48, i64 32, !48, i64 40}
!68 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !47, i64 0}
!69 = distinct !{!69, !52}
