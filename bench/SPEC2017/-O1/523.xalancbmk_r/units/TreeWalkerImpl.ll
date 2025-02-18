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

$_ZN11xercesc_2_715BaseRefVectorOfINS_14TreeWalkerImplEE9elementAtEj = comdat any

$_ZN11xercesc_2_714TreeWalkerImplD2Ev = comdat any

$_ZN11xercesc_2_714TreeWalkerImplD0Ev = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv = comdat any

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

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_714TreeWalkerImplC2ENS_8DOM_NodeEmPNS_14DOM_NodeFilterEb(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i1 noundef zeroext %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  tail call void @_ZN11xercesc_2_714RefCountedImplC2Ev(ptr noundef nonnull align 8 dereferenceable(12) %0)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_714TreeWalkerImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %6 = getelementptr inbounds %"class.xercesc_2_7::TreeWalkerImpl", ptr %0, i64 0, i32 2
  store i64 %2, ptr %6, align 8, !tbaa !38
  %7 = getelementptr inbounds %"class.xercesc_2_7::TreeWalkerImpl", ptr %0, i64 0, i32 3
  store ptr %3, ptr %7, align 8, !tbaa !47
  %8 = getelementptr inbounds %"class.xercesc_2_7::TreeWalkerImpl", ptr %0, i64 0, i32 4
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %9 unwind label %14

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::TreeWalkerImpl", ptr %0, i64 0, i32 5
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %11 unwind label %16

11:                                               ; preds = %9
  %12 = zext i1 %4 to i8
  %13 = getelementptr inbounds %"class.xercesc_2_7::TreeWalkerImpl", ptr %0, i64 0, i32 6
  store i8 %12, ptr %13, align 8, !tbaa !48
  ret void

14:                                               ; preds = %5
  %15 = landingpad { ptr, i32 }
          cleanup
  br label %18

16:                                               ; preds = %9
  %17 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #7
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi { ptr, i32 } [ %17, %16 ], [ %15, %14 ]
  tail call void @_ZN11xercesc_2_714RefCountedImplD2Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) #7
  resume { ptr, i32 } %19
}

declare void @_ZN11xercesc_2_714RefCountedImplC2Ev(ptr noundef nonnull align 8 dereferenceable(12)) unnamed_addr #1

declare void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_714RefCountedImplD2Ev(ptr noundef nonnull align 8 dereferenceable(12)) unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_714TreeWalkerImplC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef nonnull align 8 dereferenceable(49) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  tail call void @_ZN11xercesc_2_714RefCountedImplC2Ev(ptr noundef nonnull align 8 dereferenceable(12) %0)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_714TreeWalkerImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %3 = getelementptr inbounds %"class.xercesc_2_7::TreeWalkerImpl", ptr %0, i64 0, i32 2
  %4 = getelementptr inbounds %"class.xercesc_2_7::TreeWalkerImpl", ptr %1, i64 0, i32 2
  %5 = load i64, ptr %4, align 8, !tbaa !38
  store i64 %5, ptr %3, align 8, !tbaa !38
  %6 = getelementptr inbounds %"class.xercesc_2_7::TreeWalkerImpl", ptr %0, i64 0, i32 3
  %7 = getelementptr inbounds %"class.xercesc_2_7::TreeWalkerImpl", ptr %1, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  store ptr %8, ptr %6, align 8, !tbaa !47
  %9 = getelementptr inbounds %"class.xercesc_2_7::TreeWalkerImpl", ptr %0, i64 0, i32 4
  %10 = getelementptr inbounds %"class.xercesc_2_7::TreeWalkerImpl", ptr %1, i64 0, i32 4
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %11 unwind label %18

11:                                               ; preds = %2
  %12 = getelementptr inbounds %"class.xercesc_2_7::TreeWalkerImpl", ptr %0, i64 0, i32 5
  %13 = getelementptr inbounds %"class.xercesc_2_7::TreeWalkerImpl", ptr %1, i64 0, i32 5
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %14 unwind label %20

14:                                               ; preds = %11
  %15 = getelementptr inbounds %"class.xercesc_2_7::TreeWalkerImpl", ptr %0, i64 0, i32 6
  %16 = getelementptr inbounds %"class.xercesc_2_7::TreeWalkerImpl", ptr %1, i64 0, i32 6
  %17 = load i8, ptr %16, align 8, !tbaa !48, !range !49, !noundef !50
  store i8 %17, ptr %15, align 8, !tbaa !48
  ret void

18:                                               ; preds = %2
  %19 = landingpad { ptr, i32 }
          cleanup
  br label %22

20:                                               ; preds = %11
  %21 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #7
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi { ptr, i32 } [ %21, %20 ], [ %19, %18 ]
  tail call void @_ZN11xercesc_2_714RefCountedImplD2Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) #7
  resume { ptr, i32 } %23
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(49) ptr @_ZN11xercesc_2_714TreeWalkerImplaSERKS0_(ptr noundef nonnull returned align 8 dereferenceable(49) %0, ptr noundef nonnull align 8 dereferenceable(49) %1) local_unnamed_addr #0 align 2 !prof !34 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %20, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"class.xercesc_2_7::TreeWalkerImpl", ptr %1, i64 0, i32 4
  %6 = getelementptr inbounds %"class.xercesc_2_7::TreeWalkerImpl", ptr %0, i64 0, i32 4
  %7 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5)
  %8 = getelementptr inbounds %"class.xercesc_2_7::TreeWalkerImpl", ptr %1, i64 0, i32 5
  %9 = getelementptr inbounds %"class.xercesc_2_7::TreeWalkerImpl", ptr %0, i64 0, i32 5
  %10 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %8)
  %11 = getelementptr inbounds %"class.xercesc_2_7::TreeWalkerImpl", ptr %1, i64 0, i32 2
  %12 = load i64, ptr %11, align 8, !tbaa !38
  %13 = getelementptr inbounds %"class.xercesc_2_7::TreeWalkerImpl", ptr %0, i64 0, i32 2
  store i64 %12, ptr %13, align 8, !tbaa !38
  %14 = getelementptr inbounds %"class.xercesc_2_7::TreeWalkerImpl", ptr %1, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !47
  %16 = getelementptr inbounds %"class.xercesc_2_7::TreeWalkerImpl", ptr %0, i64 0, i32 3
  store ptr %15, ptr %16, align 8, !tbaa !47
  %17 = getelementptr inbounds %"class.xercesc_2_7::TreeWalkerImpl", ptr %1, i64 0, i32 6
  %18 = load i8, ptr %17, align 8, !tbaa !48, !range !49, !noundef !50
  %19 = getelementptr inbounds %"class.xercesc_2_7::TreeWalkerImpl", ptr %0, i64 0, i32 6
  store i8 %18, ptr %19, align 8, !tbaa !48
  br label %20

20:                                               ; preds = %4, %2
  ret ptr %0
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_714TreeWalkerImpl12unreferencedEv(ptr noundef nonnull align 8 dereferenceable(49) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %2 = alloca %"class.xercesc_2_7::DOM_Document", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #7
  %3 = getelementptr inbounds %"class.xercesc_2_7::TreeWalkerImpl", ptr %0, i64 0, i32 5
  call void @_ZNK11xercesc_2_78DOM_Node16getOwnerDocumentEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Document") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %4 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node6isNullEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %5 unwind label %12

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8
  %7 = load ptr, ptr %2, align 8
  %8 = select i1 %4, ptr %6, ptr %7
  %9 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %8, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !51
  %11 = icmp eq ptr %10, null
  br i1 %11, label %36, label %14

12:                                               ; preds = %1
  %13 = landingpad { ptr, i32 }
          cleanup
  br label %40

14:                                               ; preds = %5
  %15 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %10, i64 0, i32 2
  %16 = load i32, ptr %15, align 4, !tbaa !58
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %36

18:                                               ; preds = %14, %33
  %19 = phi i32 [ %34, %33 ], [ 0, %14 ]
  %20 = load ptr, ptr %9, align 8, !tbaa !51
  %21 = invoke noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_14TreeWalkerImplEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %20, i32 noundef %19)
          to label %22 unwind label %29

22:                                               ; preds = %18
  %23 = icmp eq ptr %21, %0
  br i1 %23, label %24, label %33

24:                                               ; preds = %22
  %25 = load ptr, ptr %9, align 8, !tbaa !51
  %26 = load ptr, ptr %25, align 8, !tbaa !35
  %27 = getelementptr inbounds ptr, ptr %26, i64 4
  %28 = load ptr, ptr %27, align 8
  invoke void %28(ptr noundef nonnull align 8 dereferenceable(40) %25, i32 noundef %19)
          to label %36 unwind label %31

29:                                               ; preds = %18
  %30 = landingpad { ptr, i32 }
          cleanup
  br label %40

31:                                               ; preds = %24
  %32 = landingpad { ptr, i32 }
          cleanup
  br label %40

33:                                               ; preds = %22
  %34 = add nuw nsw i32 %19, 1
  %35 = icmp eq i32 %34, %16
  br i1 %35, label %36, label %18, !llvm.loop !60

36:                                               ; preds = %33, %14, %5, %24
  %37 = load ptr, ptr %0, align 8, !tbaa !35
  %38 = getelementptr inbounds ptr, ptr %37, i64 1
  %39 = load ptr, ptr %38, align 8
  call void %39(ptr noundef nonnull align 8 dereferenceable(49) %0) #7
  call void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #7
  ret void

40:                                               ; preds = %29, %31, %12
  %41 = phi { ptr, i32 } [ %13, %12 ], [ %30, %29 ], [ %32, %31 ]
  call void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #7
  resume { ptr, i32 } %41
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare void @_ZNK11xercesc_2_78DOM_Node16getOwnerDocumentEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_Document") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node6isNullEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_14TreeWalkerImplEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !58
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #7
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !63
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 249, i32 noundef 116, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #8
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
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_714TreeWalkerImpl7getRootEv(ptr dead_on_unwind noalias nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr noundef nonnull align 8 dereferenceable(49) %1) local_unnamed_addr #0 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::TreeWalkerImpl", ptr %1, i64 0, i32 5
  tail call void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %3)
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i64 @_ZN11xercesc_2_714TreeWalkerImpl13getWhatToShowEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(49) %0) local_unnamed_addr #4 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::TreeWalkerImpl", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !38
  ret i64 %3
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZN11xercesc_2_714TreeWalkerImpl9getFilterEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(49) %0) local_unnamed_addr #4 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::TreeWalkerImpl", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  ret ptr %3
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_714TreeWalkerImpl25getExpandEntityReferencesEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(49) %0) local_unnamed_addr #4 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::TreeWalkerImpl", ptr %0, i64 0, i32 6
  %3 = load i8, ptr %2, align 8, !tbaa !48, !range !49, !noundef !50
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_714TreeWalkerImpl14getCurrentNodeEv(ptr dead_on_unwind noalias nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr noundef nonnull align 8 dereferenceable(49) %1) local_unnamed_addr #0 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::TreeWalkerImpl", ptr %1, i64 0, i32 4
  tail call void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %3)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_714TreeWalkerImpl14setCurrentNodeENS_8DOM_NodeE(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef nonnull %1) local_unnamed_addr #0 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::TreeWalkerImpl", ptr %0, i64 0, i32 4
  %4 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %1)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_714TreeWalkerImpl10parentNodeEv(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr noundef nonnull align 8 dereferenceable(49) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %4 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #7
  call void @_ZN11xercesc_2_78DOM_NodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
  %5 = getelementptr inbounds %"class.xercesc_2_7::TreeWalkerImpl", ptr %1, i64 0, i32 4
  %6 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node6isNullEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %7 unwind label %9

7:                                                ; preds = %2
  br i1 %6, label %8, label %11

8:                                                ; preds = %7
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %22 unwind label %9

9:                                                ; preds = %11, %8, %2
  %10 = landingpad { ptr, i32 }
          cleanup
  br label %23

11:                                               ; preds = %7
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %12 unwind label %9

12:                                               ; preds = %11
  invoke void @_ZN11xercesc_2_714TreeWalkerImpl13getParentNodeENS_8DOM_NodeE(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr noundef nonnull align 8 dereferenceable(49) %1, ptr noundef nonnull %4)
          to label %13 unwind label %18

13:                                               ; preds = %12
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #7
  %14 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef null)
          to label %15 unwind label %20

15:                                               ; preds = %13
  br i1 %14, label %16, label %22

16:                                               ; preds = %15
  %17 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %22 unwind label %20

18:                                               ; preds = %12
  %19 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #7
  br label %23

20:                                               ; preds = %16, %13
  %21 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  br label %23

22:                                               ; preds = %15, %16, %8
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  ret void

23:                                               ; preds = %20, %18, %9
  %24 = phi { ptr, i32 } [ %10, %9 ], [ %21, %20 ], [ %19, %18 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  resume { ptr, i32 } %24
}

declare void @_ZN11xercesc_2_78DOM_NodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_714TreeWalkerImpl13getParentNodeENS_8DOM_NodeE(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr noundef nonnull align 8 dereferenceable(49) %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %4 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %5 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %6 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %7 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #7
  call void @_ZN11xercesc_2_78DOM_NodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4)
  %8 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node6isNullEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %9 unwind label %15

9:                                                ; preds = %3
  br i1 %8, label %14, label %10

10:                                               ; preds = %9
  %11 = getelementptr inbounds %"class.xercesc_2_7::TreeWalkerImpl", ptr %1, i64 0, i32 5
  %12 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeeqERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %13 unwind label %15

13:                                               ; preds = %10
  br i1 %12, label %14, label %17

14:                                               ; preds = %13, %9
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %46 unwind label %15

15:                                               ; preds = %14, %10, %3
  %16 = landingpad { ptr, i32 }
          cleanup
  br label %47

17:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #7
  invoke void @_ZNK11xercesc_2_78DOM_Node13getParentNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %18 unwind label %22

18:                                               ; preds = %17
  %19 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node6isNullEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %20 unwind label %24

20:                                               ; preds = %18
  br i1 %19, label %21, label %26

21:                                               ; preds = %20
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %4)
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
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %27 unwind label %32

27:                                               ; preds = %26
  %28 = invoke noundef signext i16 @_ZN11xercesc_2_714TreeWalkerImpl10acceptNodeENS_8DOM_NodeE(ptr noundef nonnull align 8 dereferenceable(49) %1, ptr noundef nonnull %6)
          to label %29 unwind label %34

29:                                               ; preds = %27
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #7
  %30 = icmp eq i16 %28, 1
  br i1 %30, label %31, label %36

31:                                               ; preds = %29
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %41 unwind label %32

32:                                               ; preds = %36, %31, %26
  %33 = landingpad { ptr, i32 }
          cleanup
  br label %42

34:                                               ; preds = %27
  %35 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #7
  br label %42

36:                                               ; preds = %29
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %37 unwind label %32

37:                                               ; preds = %36
  invoke void @_ZN11xercesc_2_714TreeWalkerImpl13getParentNodeENS_8DOM_NodeE(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr noundef nonnull align 8 dereferenceable(49) %1, ptr noundef nonnull %7)
          to label %38 unwind label %39

38:                                               ; preds = %37
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #7
  br label %41

39:                                               ; preds = %37
  %40 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #7
  br label %42

41:                                               ; preds = %38, %31, %21
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7
  br label %46

42:                                               ; preds = %32, %34, %39, %24
  %43 = phi { ptr, i32 } [ %25, %24 ], [ %33, %32 ], [ %40, %39 ], [ %35, %34 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #7
  br label %44

44:                                               ; preds = %42, %22
  %45 = phi { ptr, i32 } [ %43, %42 ], [ %23, %22 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7
  br label %47

46:                                               ; preds = %14, %41
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  ret void

47:                                               ; preds = %44, %15
  %48 = phi { ptr, i32 } [ %16, %15 ], [ %45, %44 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  resume { ptr, i32 } %48
}

declare noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_714TreeWalkerImpl10firstChildEv(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr noundef nonnull align 8 dereferenceable(49) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %4 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #7
  call void @_ZN11xercesc_2_78DOM_NodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
  %5 = getelementptr inbounds %"class.xercesc_2_7::TreeWalkerImpl", ptr %1, i64 0, i32 4
  %6 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node6isNullEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %7 unwind label %9

7:                                                ; preds = %2
  br i1 %6, label %8, label %11

8:                                                ; preds = %7
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %22 unwind label %9

9:                                                ; preds = %11, %8, %2
  %10 = landingpad { ptr, i32 }
          cleanup
  br label %23

11:                                               ; preds = %7
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %12 unwind label %9

12:                                               ; preds = %11
  invoke void @_ZN11xercesc_2_714TreeWalkerImpl13getFirstChildENS_8DOM_NodeE(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr noundef nonnull align 8 dereferenceable(49) %1, ptr noundef nonnull %4)
          to label %13 unwind label %18

13:                                               ; preds = %12
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #7
  %14 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node6isNullEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %15 unwind label %20

15:                                               ; preds = %13
  br i1 %14, label %22, label %16

16:                                               ; preds = %15
  %17 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %22 unwind label %20

18:                                               ; preds = %12
  %19 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #7
  br label %23

20:                                               ; preds = %16, %13
  %21 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  br label %23

22:                                               ; preds = %15, %16, %8
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  ret void

23:                                               ; preds = %20, %18, %9
  %24 = phi { ptr, i32 } [ %10, %9 ], [ %21, %20 ], [ %19, %18 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  resume { ptr, i32 } %24
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_714TreeWalkerImpl13getFirstChildENS_8DOM_NodeE(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr noundef nonnull align 8 dereferenceable(49) %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %4 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %5 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %6 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %7 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %8 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #7
  call void @_ZN11xercesc_2_78DOM_NodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4)
  %9 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node6isNullEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %10 unwind label %12

10:                                               ; preds = %3
  br i1 %9, label %11, label %14

11:                                               ; preds = %10
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %50 unwind label %12

12:                                               ; preds = %11, %3
  %13 = landingpad { ptr, i32 }
          cleanup
  br label %51

14:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #7
  invoke void @_ZNK11xercesc_2_78DOM_Node13getFirstChildEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %15 unwind label %19

15:                                               ; preds = %14
  %16 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node6isNullEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %17 unwind label %21

17:                                               ; preds = %15
  br i1 %16, label %18, label %23

18:                                               ; preds = %17
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %4)
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
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %24 unwind label %28

24:                                               ; preds = %23
  %25 = invoke noundef signext i16 @_ZN11xercesc_2_714TreeWalkerImpl10acceptNodeENS_8DOM_NodeE(ptr noundef nonnull align 8 dereferenceable(49) %1, ptr noundef nonnull %6)
          to label %26 unwind label %30

26:                                               ; preds = %24
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #7
  switch i16 %25, label %39 [
    i16 1, label %27
    i16 3, label %32
  ]

27:                                               ; preds = %26
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %45 unwind label %28

28:                                               ; preds = %39, %35, %32, %27, %23
  %29 = landingpad { ptr, i32 }
          cleanup
  br label %46

30:                                               ; preds = %24
  %31 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #7
  br label %46

32:                                               ; preds = %26
  %33 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node13hasChildNodesEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %34 unwind label %28

34:                                               ; preds = %32
  br i1 %33, label %35, label %39

35:                                               ; preds = %34
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %36 unwind label %28

36:                                               ; preds = %35
  invoke void @_ZN11xercesc_2_714TreeWalkerImpl13getFirstChildENS_8DOM_NodeE(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr noundef nonnull align 8 dereferenceable(49) %1, ptr noundef nonnull %7)
          to label %43 unwind label %37

37:                                               ; preds = %36
  %38 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #7
  br label %46

39:                                               ; preds = %26, %34
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %40 unwind label %28

40:                                               ; preds = %39
  invoke void @_ZN11xercesc_2_714TreeWalkerImpl14getNextSiblingENS_8DOM_NodeE(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr noundef nonnull align 8 dereferenceable(49) %1, ptr noundef nonnull %8)
          to label %43 unwind label %41

41:                                               ; preds = %40
  %42 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #7
  br label %46

43:                                               ; preds = %40, %36
  %44 = phi ptr [ %7, %36 ], [ %8, %40 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %44) #7
  br label %45

45:                                               ; preds = %43, %27, %18
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7
  br label %50

46:                                               ; preds = %28, %30, %37, %41, %21
  %47 = phi { ptr, i32 } [ %22, %21 ], [ %29, %28 ], [ %38, %37 ], [ %42, %41 ], [ %31, %30 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #7
  br label %48

48:                                               ; preds = %46, %19
  %49 = phi { ptr, i32 } [ %47, %46 ], [ %20, %19 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7
  br label %51

50:                                               ; preds = %11, %45
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  ret void

51:                                               ; preds = %48, %12
  %52 = phi { ptr, i32 } [ %13, %12 ], [ %49, %48 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  resume { ptr, i32 } %52
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_714TreeWalkerImpl9lastChildEv(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr noundef nonnull align 8 dereferenceable(49) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %4 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #7
  call void @_ZN11xercesc_2_78DOM_NodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
  %5 = getelementptr inbounds %"class.xercesc_2_7::TreeWalkerImpl", ptr %1, i64 0, i32 4
  %6 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node6isNullEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %7 unwind label %9

7:                                                ; preds = %2
  br i1 %6, label %8, label %11

8:                                                ; preds = %7
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %22 unwind label %9

9:                                                ; preds = %11, %8, %2
  %10 = landingpad { ptr, i32 }
          cleanup
  br label %23

11:                                               ; preds = %7
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %12 unwind label %9

12:                                               ; preds = %11
  invoke void @_ZN11xercesc_2_714TreeWalkerImpl12getLastChildENS_8DOM_NodeE(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr noundef nonnull align 8 dereferenceable(49) %1, ptr noundef nonnull %4)
          to label %13 unwind label %18

13:                                               ; preds = %12
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #7
  %14 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node6isNullEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %15 unwind label %20

15:                                               ; preds = %13
  br i1 %14, label %22, label %16

16:                                               ; preds = %15
  %17 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %22 unwind label %20

18:                                               ; preds = %12
  %19 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #7
  br label %23

20:                                               ; preds = %16, %13
  %21 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  br label %23

22:                                               ; preds = %15, %16, %8
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  ret void

23:                                               ; preds = %20, %18, %9
  %24 = phi { ptr, i32 } [ %10, %9 ], [ %21, %20 ], [ %19, %18 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  resume { ptr, i32 } %24
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_714TreeWalkerImpl12getLastChildENS_8DOM_NodeE(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr noundef nonnull align 8 dereferenceable(49) %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %4 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %5 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %6 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %7 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %8 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #7
  call void @_ZN11xercesc_2_78DOM_NodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4)
  %9 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node6isNullEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %10 unwind label %12

10:                                               ; preds = %3
  br i1 %9, label %11, label %14

11:                                               ; preds = %10
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %50 unwind label %12

12:                                               ; preds = %11, %3
  %13 = landingpad { ptr, i32 }
          cleanup
  br label %51

14:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #7
  invoke void @_ZNK11xercesc_2_78DOM_Node12getLastChildEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %15 unwind label %19

15:                                               ; preds = %14
  %16 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node6isNullEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %17 unwind label %21

17:                                               ; preds = %15
  br i1 %16, label %18, label %23

18:                                               ; preds = %17
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %4)
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
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %24 unwind label %28

24:                                               ; preds = %23
  %25 = invoke noundef signext i16 @_ZN11xercesc_2_714TreeWalkerImpl10acceptNodeENS_8DOM_NodeE(ptr noundef nonnull align 8 dereferenceable(49) %1, ptr noundef nonnull %6)
          to label %26 unwind label %30

26:                                               ; preds = %24
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #7
  switch i16 %25, label %39 [
    i16 1, label %27
    i16 3, label %32
  ]

27:                                               ; preds = %26
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %45 unwind label %28

28:                                               ; preds = %39, %35, %32, %27, %23
  %29 = landingpad { ptr, i32 }
          cleanup
  br label %46

30:                                               ; preds = %24
  %31 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #7
  br label %46

32:                                               ; preds = %26
  %33 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node13hasChildNodesEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %34 unwind label %28

34:                                               ; preds = %32
  br i1 %33, label %35, label %39

35:                                               ; preds = %34
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %36 unwind label %28

36:                                               ; preds = %35
  invoke void @_ZN11xercesc_2_714TreeWalkerImpl12getLastChildENS_8DOM_NodeE(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr noundef nonnull align 8 dereferenceable(49) %1, ptr noundef nonnull %7)
          to label %43 unwind label %37

37:                                               ; preds = %36
  %38 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #7
  br label %46

39:                                               ; preds = %26, %34
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %40 unwind label %28

40:                                               ; preds = %39
  invoke void @_ZN11xercesc_2_714TreeWalkerImpl18getPreviousSiblingENS_8DOM_NodeE(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr noundef nonnull align 8 dereferenceable(49) %1, ptr noundef nonnull %8)
          to label %43 unwind label %41

41:                                               ; preds = %40
  %42 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #7
  br label %46

43:                                               ; preds = %40, %36
  %44 = phi ptr [ %7, %36 ], [ %8, %40 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %44) #7
  br label %45

45:                                               ; preds = %43, %27, %18
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7
  br label %50

46:                                               ; preds = %28, %30, %37, %41, %21
  %47 = phi { ptr, i32 } [ %22, %21 ], [ %29, %28 ], [ %38, %37 ], [ %42, %41 ], [ %31, %30 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #7
  br label %48

48:                                               ; preds = %46, %19
  %49 = phi { ptr, i32 } [ %47, %46 ], [ %20, %19 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7
  br label %51

50:                                               ; preds = %11, %45
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  ret void

51:                                               ; preds = %48, %12
  %52 = phi { ptr, i32 } [ %13, %12 ], [ %49, %48 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  resume { ptr, i32 } %52
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_714TreeWalkerImpl15previousSiblingEv(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr noundef nonnull align 8 dereferenceable(49) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %4 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #7
  call void @_ZN11xercesc_2_78DOM_NodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
  %5 = getelementptr inbounds %"class.xercesc_2_7::TreeWalkerImpl", ptr %1, i64 0, i32 4
  %6 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node6isNullEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %7 unwind label %9

7:                                                ; preds = %2
  br i1 %6, label %8, label %11

8:                                                ; preds = %7
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %22 unwind label %9

9:                                                ; preds = %11, %8, %2
  %10 = landingpad { ptr, i32 }
          cleanup
  br label %23

11:                                               ; preds = %7
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %12 unwind label %9

12:                                               ; preds = %11
  invoke void @_ZN11xercesc_2_714TreeWalkerImpl18getPreviousSiblingENS_8DOM_NodeE(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr noundef nonnull align 8 dereferenceable(49) %1, ptr noundef nonnull %4)
          to label %13 unwind label %18

13:                                               ; preds = %12
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #7
  %14 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node6isNullEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %15 unwind label %20

15:                                               ; preds = %13
  br i1 %14, label %22, label %16

16:                                               ; preds = %15
  %17 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %22 unwind label %20

18:                                               ; preds = %12
  %19 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #7
  br label %23

20:                                               ; preds = %16, %13
  %21 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  br label %23

22:                                               ; preds = %15, %16, %8
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  ret void

23:                                               ; preds = %20, %18, %9
  %24 = phi { ptr, i32 } [ %10, %9 ], [ %21, %20 ], [ %19, %18 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  resume { ptr, i32 } %24
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_714TreeWalkerImpl18getPreviousSiblingENS_8DOM_NodeE(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr noundef nonnull align 8 dereferenceable(49) %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
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
  call void @_ZN11xercesc_2_78DOM_NodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4)
  %14 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node6isNullEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %15 unwind label %21

15:                                               ; preds = %3
  br i1 %14, label %20, label %16

16:                                               ; preds = %15
  %17 = getelementptr inbounds %"class.xercesc_2_7::TreeWalkerImpl", ptr %1, i64 0, i32 5
  %18 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeeqERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %19 unwind label %21

19:                                               ; preds = %16
  br i1 %18, label %20, label %23

20:                                               ; preds = %19, %15
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %103 unwind label %21

21:                                               ; preds = %20, %16, %3
  %22 = landingpad { ptr, i32 }
          cleanup
  br label %104

23:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #7
  invoke void @_ZNK11xercesc_2_78DOM_Node18getPreviousSiblingEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %24 unwind label %37

24:                                               ; preds = %23
  %25 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node6isNullEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %26 unwind label %39

26:                                               ; preds = %24
  br i1 %25, label %27, label %62

27:                                               ; preds = %26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #7
  invoke void @_ZNK11xercesc_2_78DOM_Node13getParentNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %28 unwind label %41

28:                                               ; preds = %27
  %29 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %30 unwind label %43

30:                                               ; preds = %28
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #7
  %31 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node6isNullEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %32 unwind label %39

32:                                               ; preds = %30
  br i1 %31, label %36, label %33

33:                                               ; preds = %32
  %34 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeeqERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %35 unwind label %39

35:                                               ; preds = %33
  br i1 %34, label %36, label %47

36:                                               ; preds = %35, %32
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %4)
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
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #7
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi { ptr, i32 } [ %44, %43 ], [ %42, %41 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #7
  br label %99

47:                                               ; preds = %35
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %48 unwind label %55

48:                                               ; preds = %47
  %49 = invoke noundef signext i16 @_ZN11xercesc_2_714TreeWalkerImpl10acceptNodeENS_8DOM_NodeE(ptr noundef nonnull align 8 dereferenceable(49) %1, ptr noundef nonnull %7)
          to label %50 unwind label %57

50:                                               ; preds = %48
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #7
  %51 = icmp eq i16 %49, 3
  br i1 %51, label %52, label %61

52:                                               ; preds = %50
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %53 unwind label %55

53:                                               ; preds = %52
  invoke void @_ZN11xercesc_2_714TreeWalkerImpl18getPreviousSiblingENS_8DOM_NodeE(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr noundef nonnull align 8 dereferenceable(49) %1, ptr noundef nonnull %8)
          to label %54 unwind label %59

54:                                               ; preds = %53
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #7
  br label %98

55:                                               ; preds = %61, %52, %47
  %56 = landingpad { ptr, i32 }
          cleanup
  br label %99

57:                                               ; preds = %48
  %58 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #7
  br label %99

59:                                               ; preds = %53
  %60 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #7
  br label %99

61:                                               ; preds = %50
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %98 unwind label %55

62:                                               ; preds = %26
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %63 unwind label %67

63:                                               ; preds = %62
  %64 = invoke noundef signext i16 @_ZN11xercesc_2_714TreeWalkerImpl10acceptNodeENS_8DOM_NodeE(ptr noundef nonnull align 8 dereferenceable(49) %1, ptr noundef nonnull %9)
          to label %65 unwind label %69

65:                                               ; preds = %63
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #7
  switch i16 %64, label %93 [
    i16 1, label %66
    i16 3, label %71
  ]

66:                                               ; preds = %65
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %98 unwind label %67

67:                                               ; preds = %93, %66, %62
  %68 = landingpad { ptr, i32 }
          cleanup
  br label %99

69:                                               ; preds = %63
  %70 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #7
  br label %99

71:                                               ; preds = %65
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #7
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %72 unwind label %79

72:                                               ; preds = %71
  invoke void @_ZN11xercesc_2_714TreeWalkerImpl12getLastChildENS_8DOM_NodeE(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %10, ptr noundef nonnull align 8 dereferenceable(49) %1, ptr noundef nonnull %11)
          to label %73 unwind label %81

73:                                               ; preds = %72
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #7
  %74 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node6isNullEv(ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %75 unwind label %83

75:                                               ; preds = %73
  br i1 %74, label %76, label %87

76:                                               ; preds = %75
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %77 unwind label %83

77:                                               ; preds = %76
  invoke void @_ZN11xercesc_2_714TreeWalkerImpl18getPreviousSiblingENS_8DOM_NodeE(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr noundef nonnull align 8 dereferenceable(49) %1, ptr noundef nonnull %12)
          to label %78 unwind label %85

78:                                               ; preds = %77
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12) #7
  br label %88

79:                                               ; preds = %71
  %80 = landingpad { ptr, i32 }
          cleanup
  br label %91

81:                                               ; preds = %72
  %82 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #7
  br label %91

83:                                               ; preds = %87, %76, %73
  %84 = landingpad { ptr, i32 }
          cleanup
  br label %89

85:                                               ; preds = %77
  %86 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12) #7
  br label %89

87:                                               ; preds = %75
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %88 unwind label %83

88:                                               ; preds = %87, %78
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #7
  br label %98

89:                                               ; preds = %85, %83
  %90 = phi { ptr, i32 } [ %86, %85 ], [ %84, %83 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #7
  br label %91

91:                                               ; preds = %89, %81, %79
  %92 = phi { ptr, i32 } [ %90, %89 ], [ %82, %81 ], [ %80, %79 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #7
  br label %99

93:                                               ; preds = %65
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %94 unwind label %67

94:                                               ; preds = %93
  invoke void @_ZN11xercesc_2_714TreeWalkerImpl18getPreviousSiblingENS_8DOM_NodeE(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr noundef nonnull align 8 dereferenceable(49) %1, ptr noundef nonnull %13)
          to label %95 unwind label %96

95:                                               ; preds = %94
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13) #7
  br label %98

96:                                               ; preds = %94
  %97 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13) #7
  br label %99

98:                                               ; preds = %88, %95, %66, %54, %61, %36
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7
  br label %103

99:                                               ; preds = %67, %69, %91, %96, %55, %57, %59, %45, %39
  %100 = phi { ptr, i32 } [ %40, %39 ], [ %46, %45 ], [ %60, %59 ], [ %56, %55 ], [ %58, %57 ], [ %68, %67 ], [ %92, %91 ], [ %97, %96 ], [ %70, %69 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #7
  br label %101

101:                                              ; preds = %99, %37
  %102 = phi { ptr, i32 } [ %100, %99 ], [ %38, %37 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7
  br label %104

103:                                              ; preds = %20, %98
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  ret void

104:                                              ; preds = %101, %21
  %105 = phi { ptr, i32 } [ %22, %21 ], [ %102, %101 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  resume { ptr, i32 } %105
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_714TreeWalkerImpl11nextSiblingEv(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr noundef nonnull align 8 dereferenceable(49) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %4 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #7
  call void @_ZN11xercesc_2_78DOM_NodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
  %5 = getelementptr inbounds %"class.xercesc_2_7::TreeWalkerImpl", ptr %1, i64 0, i32 4
  %6 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node6isNullEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %7 unwind label %9

7:                                                ; preds = %2
  br i1 %6, label %8, label %11

8:                                                ; preds = %7
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %22 unwind label %9

9:                                                ; preds = %11, %8, %2
  %10 = landingpad { ptr, i32 }
          cleanup
  br label %23

11:                                               ; preds = %7
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %12 unwind label %9

12:                                               ; preds = %11
  invoke void @_ZN11xercesc_2_714TreeWalkerImpl14getNextSiblingENS_8DOM_NodeE(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr noundef nonnull align 8 dereferenceable(49) %1, ptr noundef nonnull %4)
          to label %13 unwind label %18

13:                                               ; preds = %12
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #7
  %14 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node6isNullEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %15 unwind label %20

15:                                               ; preds = %13
  br i1 %14, label %22, label %16

16:                                               ; preds = %15
  %17 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %22 unwind label %20

18:                                               ; preds = %12
  %19 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #7
  br label %23

20:                                               ; preds = %16, %13
  %21 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  br label %23

22:                                               ; preds = %15, %16, %8
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  ret void

23:                                               ; preds = %20, %18, %9
  %24 = phi { ptr, i32 } [ %10, %9 ], [ %21, %20 ], [ %19, %18 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  resume { ptr, i32 } %24
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_714TreeWalkerImpl14getNextSiblingENS_8DOM_NodeE(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr noundef nonnull align 8 dereferenceable(49) %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
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
  call void @_ZN11xercesc_2_78DOM_NodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4)
  %14 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node6isNullEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %15 unwind label %21

15:                                               ; preds = %3
  br i1 %14, label %20, label %16

16:                                               ; preds = %15
  %17 = getelementptr inbounds %"class.xercesc_2_7::TreeWalkerImpl", ptr %1, i64 0, i32 5
  %18 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeeqERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %19 unwind label %21

19:                                               ; preds = %16
  br i1 %18, label %20, label %23

20:                                               ; preds = %19, %15
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %103 unwind label %21

21:                                               ; preds = %20, %16, %3
  %22 = landingpad { ptr, i32 }
          cleanup
  br label %104

23:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #7
  invoke void @_ZNK11xercesc_2_78DOM_Node14getNextSiblingEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %24 unwind label %37

24:                                               ; preds = %23
  %25 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node6isNullEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %26 unwind label %39

26:                                               ; preds = %24
  br i1 %25, label %27, label %62

27:                                               ; preds = %26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #7
  invoke void @_ZNK11xercesc_2_78DOM_Node13getParentNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %28 unwind label %41

28:                                               ; preds = %27
  %29 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %30 unwind label %43

30:                                               ; preds = %28
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #7
  %31 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node6isNullEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %32 unwind label %39

32:                                               ; preds = %30
  br i1 %31, label %36, label %33

33:                                               ; preds = %32
  %34 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeeqERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %35 unwind label %39

35:                                               ; preds = %33
  br i1 %34, label %36, label %47

36:                                               ; preds = %35, %32
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %4)
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
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #7
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi { ptr, i32 } [ %44, %43 ], [ %42, %41 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #7
  br label %99

47:                                               ; preds = %35
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %48 unwind label %55

48:                                               ; preds = %47
  %49 = invoke noundef signext i16 @_ZN11xercesc_2_714TreeWalkerImpl10acceptNodeENS_8DOM_NodeE(ptr noundef nonnull align 8 dereferenceable(49) %1, ptr noundef nonnull %7)
          to label %50 unwind label %57

50:                                               ; preds = %48
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #7
  %51 = icmp eq i16 %49, 3
  br i1 %51, label %52, label %61

52:                                               ; preds = %50
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %53 unwind label %55

53:                                               ; preds = %52
  invoke void @_ZN11xercesc_2_714TreeWalkerImpl14getNextSiblingENS_8DOM_NodeE(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr noundef nonnull align 8 dereferenceable(49) %1, ptr noundef nonnull %8)
          to label %54 unwind label %59

54:                                               ; preds = %53
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #7
  br label %98

55:                                               ; preds = %61, %52, %47
  %56 = landingpad { ptr, i32 }
          cleanup
  br label %99

57:                                               ; preds = %48
  %58 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #7
  br label %99

59:                                               ; preds = %53
  %60 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #7
  br label %99

61:                                               ; preds = %50
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %98 unwind label %55

62:                                               ; preds = %26
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %63 unwind label %67

63:                                               ; preds = %62
  %64 = invoke noundef signext i16 @_ZN11xercesc_2_714TreeWalkerImpl10acceptNodeENS_8DOM_NodeE(ptr noundef nonnull align 8 dereferenceable(49) %1, ptr noundef nonnull %9)
          to label %65 unwind label %69

65:                                               ; preds = %63
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #7
  switch i16 %64, label %93 [
    i16 1, label %66
    i16 3, label %71
  ]

66:                                               ; preds = %65
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %98 unwind label %67

67:                                               ; preds = %93, %66, %62
  %68 = landingpad { ptr, i32 }
          cleanup
  br label %99

69:                                               ; preds = %63
  %70 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #7
  br label %99

71:                                               ; preds = %65
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #7
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %72 unwind label %79

72:                                               ; preds = %71
  invoke void @_ZN11xercesc_2_714TreeWalkerImpl13getFirstChildENS_8DOM_NodeE(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %10, ptr noundef nonnull align 8 dereferenceable(49) %1, ptr noundef nonnull %11)
          to label %73 unwind label %81

73:                                               ; preds = %72
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #7
  %74 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node6isNullEv(ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %75 unwind label %83

75:                                               ; preds = %73
  br i1 %74, label %76, label %87

76:                                               ; preds = %75
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %77 unwind label %83

77:                                               ; preds = %76
  invoke void @_ZN11xercesc_2_714TreeWalkerImpl14getNextSiblingENS_8DOM_NodeE(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr noundef nonnull align 8 dereferenceable(49) %1, ptr noundef nonnull %12)
          to label %78 unwind label %85

78:                                               ; preds = %77
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12) #7
  br label %88

79:                                               ; preds = %71
  %80 = landingpad { ptr, i32 }
          cleanup
  br label %91

81:                                               ; preds = %72
  %82 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #7
  br label %91

83:                                               ; preds = %87, %76, %73
  %84 = landingpad { ptr, i32 }
          cleanup
  br label %89

85:                                               ; preds = %77
  %86 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12) #7
  br label %89

87:                                               ; preds = %75
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %88 unwind label %83

88:                                               ; preds = %87, %78
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #7
  br label %98

89:                                               ; preds = %85, %83
  %90 = phi { ptr, i32 } [ %86, %85 ], [ %84, %83 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #7
  br label %91

91:                                               ; preds = %89, %81, %79
  %92 = phi { ptr, i32 } [ %90, %89 ], [ %82, %81 ], [ %80, %79 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #7
  br label %99

93:                                               ; preds = %65
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %94 unwind label %67

94:                                               ; preds = %93
  invoke void @_ZN11xercesc_2_714TreeWalkerImpl14getNextSiblingENS_8DOM_NodeE(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr noundef nonnull align 8 dereferenceable(49) %1, ptr noundef nonnull %13)
          to label %95 unwind label %96

95:                                               ; preds = %94
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13) #7
  br label %98

96:                                               ; preds = %94
  %97 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13) #7
  br label %99

98:                                               ; preds = %88, %95, %66, %54, %61, %36
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7
  br label %103

99:                                               ; preds = %67, %69, %91, %96, %55, %57, %59, %45, %39
  %100 = phi { ptr, i32 } [ %40, %39 ], [ %46, %45 ], [ %60, %59 ], [ %56, %55 ], [ %58, %57 ], [ %68, %67 ], [ %92, %91 ], [ %97, %96 ], [ %70, %69 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #7
  br label %101

101:                                              ; preds = %99, %37
  %102 = phi { ptr, i32 } [ %100, %99 ], [ %38, %37 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7
  br label %104

103:                                              ; preds = %20, %98
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  ret void

104:                                              ; preds = %101, %21
  %105 = phi { ptr, i32 } [ %22, %21 ], [ %102, %101 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  resume { ptr, i32 } %105
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_714TreeWalkerImpl12previousNodeEv(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr noundef nonnull align 8 dereferenceable(49) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %4 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %5 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %6 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %7 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %8 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %9 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #7
  call void @_ZN11xercesc_2_78DOM_NodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
  %10 = getelementptr inbounds %"class.xercesc_2_7::TreeWalkerImpl", ptr %1, i64 0, i32 4
  %11 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node6isNullEv(ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %12 unwind label %13

12:                                               ; preds = %2
  br i1 %11, label %51, label %15

13:                                               ; preds = %51, %29, %26, %19, %2
  %14 = landingpad { ptr, i32 }
          cleanup
  br label %76

15:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #7
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %16 unwind label %31

16:                                               ; preds = %15
  invoke void @_ZN11xercesc_2_714TreeWalkerImpl18getPreviousSiblingENS_8DOM_NodeE(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %4, ptr noundef nonnull align 8 dereferenceable(49) %1, ptr noundef nonnull %5)
          to label %17 unwind label %33

17:                                               ; preds = %16
  %18 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %19 unwind label %35

19:                                               ; preds = %17
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #7
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  %20 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node6isNullEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %21 unwind label %13

21:                                               ; preds = %19
  br i1 %20, label %22, label %53

22:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #7
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %23 unwind label %41

23:                                               ; preds = %22
  invoke void @_ZN11xercesc_2_714TreeWalkerImpl13getParentNodeENS_8DOM_NodeE(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %6, ptr noundef nonnull align 8 dereferenceable(49) %1, ptr noundef nonnull %7)
          to label %24 unwind label %43

24:                                               ; preds = %23
  %25 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %26 unwind label %45

26:                                               ; preds = %24
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #7
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #7
  %27 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node6isNullEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %28 unwind label %13

28:                                               ; preds = %26
  br i1 %27, label %51, label %29

29:                                               ; preds = %28
  %30 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %3)
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
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #7
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi { ptr, i32 } [ %36, %35 ], [ %34, %33 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #7
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
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #7
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi { ptr, i32 } [ %46, %45 ], [ %44, %43 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #7
  br label %49

49:                                               ; preds = %47, %41
  %50 = phi { ptr, i32 } [ %48, %47 ], [ %42, %41 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #7
  br label %76

51:                                               ; preds = %12, %28, %29
  %52 = phi ptr [ %10, %29 ], [ %3, %28 ], [ %3, %12 ]
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %52)
          to label %75 unwind label %13

53:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #7
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %54 unwind label %58

54:                                               ; preds = %53
  invoke void @_ZN11xercesc_2_714TreeWalkerImpl12getLastChildENS_8DOM_NodeE(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %8, ptr noundef nonnull align 8 dereferenceable(49) %1, ptr noundef nonnull %9)
          to label %55 unwind label %60

55:                                               ; preds = %54
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #7
  %56 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node6isNullEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
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
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #7
  br label %73

62:                                               ; preds = %67, %70, %64, %55
  %63 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #7
  br label %73

64:                                               ; preds = %57
  %65 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node6isNullEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %66 unwind label %62

66:                                               ; preds = %64
  br i1 %65, label %70, label %67

67:                                               ; preds = %57, %66
  %68 = phi ptr [ %3, %66 ], [ %8, %57 ]
  %69 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %68)
          to label %70 unwind label %62

70:                                               ; preds = %67, %66
  %71 = phi ptr [ %3, %66 ], [ %10, %67 ]
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %71)
          to label %72 unwind label %62

72:                                               ; preds = %70
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #7
  br label %75

73:                                               ; preds = %62, %60, %58
  %74 = phi { ptr, i32 } [ %63, %62 ], [ %61, %60 ], [ %59, %58 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #7
  br label %76

75:                                               ; preds = %51, %72
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  ret void

76:                                               ; preds = %73, %49, %39, %13
  %77 = phi { ptr, i32 } [ %14, %13 ], [ %50, %49 ], [ %74, %73 ], [ %40, %39 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  resume { ptr, i32 } %77
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_714TreeWalkerImpl8nextNodeEv(ptr dead_on_unwind noalias nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr noundef nonnull align 8 dereferenceable(49) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
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
  tail call void @_ZN11xercesc_2_78DOM_NodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %13 = getelementptr inbounds %"class.xercesc_2_7::TreeWalkerImpl", ptr %1, i64 0, i32 4
  %14 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node6isNullEv(ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %15 unwind label %16

15:                                               ; preds = %2
  br i1 %14, label %107, label %18

16:                                               ; preds = %42, %39, %22, %2
  %17 = landingpad { ptr, i32 }
          cleanup
  br label %108

18:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #7
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %19 unwind label %25

19:                                               ; preds = %18
  invoke void @_ZN11xercesc_2_714TreeWalkerImpl13getFirstChildENS_8DOM_NodeE(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %3, ptr noundef nonnull align 8 dereferenceable(49) %1, ptr noundef nonnull %4)
          to label %20 unwind label %27

20:                                               ; preds = %19
  %21 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %22 unwind label %29

22:                                               ; preds = %20
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #7
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  %23 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node6isNullEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
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
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #7
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi { ptr, i32 } [ %30, %29 ], [ %28, %27 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #7
  br label %33

33:                                               ; preds = %31, %25
  %34 = phi { ptr, i32 } [ %32, %31 ], [ %26, %25 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  br label %108

35:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #7
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %36 unwind label %44

36:                                               ; preds = %35
  invoke void @_ZN11xercesc_2_714TreeWalkerImpl14getNextSiblingENS_8DOM_NodeE(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %5, ptr noundef nonnull align 8 dereferenceable(49) %1, ptr noundef nonnull %6)
          to label %37 unwind label %46

37:                                               ; preds = %36
  %38 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %39 unwind label %48

39:                                               ; preds = %37
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #7
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7
  %40 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node6isNullEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %41 unwind label %16

41:                                               ; preds = %39
  br i1 %40, label %54, label %42

42:                                               ; preds = %41, %24
  %43 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %0)
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
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #7
  br label %50

50:                                               ; preds = %48, %46
  %51 = phi { ptr, i32 } [ %49, %48 ], [ %47, %46 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #7
  br label %52

52:                                               ; preds = %50, %44
  %53 = phi { ptr, i32 } [ %51, %50 ], [ %45, %44 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7
  br label %108

54:                                               ; preds = %41
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #7
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %55 unwind label %69

55:                                               ; preds = %54
  invoke void @_ZN11xercesc_2_714TreeWalkerImpl13getParentNodeENS_8DOM_NodeE(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %7, ptr noundef nonnull align 8 dereferenceable(49) %1, ptr noundef nonnull %8)
          to label %56 unwind label %71

56:                                               ; preds = %55
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #7
  br label %57

57:                                               ; preds = %91, %56
  %58 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node6isNullEv(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %59 unwind label %73

59:                                               ; preds = %57
  br i1 %58, label %102, label %60

60:                                               ; preds = %59
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #7
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %61 unwind label %77

61:                                               ; preds = %60
  invoke void @_ZN11xercesc_2_714TreeWalkerImpl14getNextSiblingENS_8DOM_NodeE(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %9, ptr noundef nonnull align 8 dereferenceable(49) %1, ptr noundef nonnull %10)
          to label %62 unwind label %79

62:                                               ; preds = %61
  %63 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %64 unwind label %81

64:                                               ; preds = %62
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #7
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #7
  %65 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node6isNullEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %66 unwind label %73

66:                                               ; preds = %64
  br i1 %65, label %87, label %67

67:                                               ; preds = %66
  %68 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %102 unwind label %75

69:                                               ; preds = %54
  %70 = landingpad { ptr, i32 }
          cleanup
  br label %105

71:                                               ; preds = %55
  %72 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #7
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
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #7
  br label %83

83:                                               ; preds = %81, %79
  %84 = phi { ptr, i32 } [ %82, %81 ], [ %80, %79 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #7
  br label %85

85:                                               ; preds = %83, %77
  %86 = phi { ptr, i32 } [ %84, %83 ], [ %78, %77 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #7
  br label %103

87:                                               ; preds = %66
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #7
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %88 unwind label %92

88:                                               ; preds = %87
  invoke void @_ZN11xercesc_2_714TreeWalkerImpl13getParentNodeENS_8DOM_NodeE(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %11, ptr noundef nonnull align 8 dereferenceable(49) %1, ptr noundef nonnull %12)
          to label %89 unwind label %94

89:                                               ; preds = %88
  %90 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %91 unwind label %96

91:                                               ; preds = %89
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #7
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #7
  br label %57, !llvm.loop !66

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
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #7
  br label %98

98:                                               ; preds = %96, %94
  %99 = phi { ptr, i32 } [ %97, %96 ], [ %95, %94 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12) #7
  br label %100

100:                                              ; preds = %98, %92
  %101 = phi { ptr, i32 } [ %99, %98 ], [ %93, %92 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #7
  br label %103

102:                                              ; preds = %59, %67
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #7
  br label %107

103:                                              ; preds = %73, %75, %100, %85
  %104 = phi { ptr, i32 } [ %101, %100 ], [ %86, %85 ], [ %74, %73 ], [ %76, %75 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #7
  br label %105

105:                                              ; preds = %103, %71, %69
  %106 = phi { ptr, i32 } [ %104, %103 ], [ %72, %71 ], [ %70, %69 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #7
  br label %108

107:                                              ; preds = %42, %102, %15
  ret void

108:                                              ; preds = %105, %52, %33, %16
  %109 = phi { ptr, i32 } [ %106, %105 ], [ %17, %16 ], [ %53, %52 ], [ %34, %33 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  resume { ptr, i32 } %109
}

declare noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeeqERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare void @_ZNK11xercesc_2_78DOM_Node13getParentNodeEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_Node") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef signext i16 @_ZN11xercesc_2_714TreeWalkerImpl10acceptNodeENS_8DOM_NodeE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(49) %0, ptr noundef %1) local_unnamed_addr #0 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::TreeWalkerImpl", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = icmp eq ptr %4, null
  %6 = getelementptr inbounds %"class.xercesc_2_7::TreeWalkerImpl", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !38
  %8 = tail call noundef signext i16 @_ZNK11xercesc_2_78DOM_Node11getNodeTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
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
  %18 = load ptr, ptr %3, align 8, !tbaa !47
  %19 = load ptr, ptr %18, align 8, !tbaa !35
  %20 = getelementptr inbounds ptr, ptr %19, i64 2
  %21 = load ptr, ptr %20, align 8
  %22 = tail call noundef signext i16 %21(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(8) %1)
  br i1 %14, label %23, label %26

23:                                               ; preds = %17
  %24 = icmp eq i16 %22, 2
  %25 = select i1 %24, i16 2, i16 3
  br label %26

26:                                               ; preds = %17, %23, %15
  %27 = phi i16 [ %16, %15 ], [ %25, %23 ], [ %22, %17 ]
  ret i16 %27
}

declare void @_ZNK11xercesc_2_78DOM_Node14getNextSiblingEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_Node") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare void @_ZNK11xercesc_2_78DOM_Node18getPreviousSiblingEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_Node") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare void @_ZNK11xercesc_2_78DOM_Node13getFirstChildEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_Node") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node13hasChildNodesEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare void @_ZNK11xercesc_2_78DOM_Node12getLastChildEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_Node") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare noundef signext i16 @_ZNK11xercesc_2_78DOM_Node11getNodeTypeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714TreeWalkerImplD2Ev(ptr noundef nonnull align 8 dereferenceable(49) %0) unnamed_addr #5 comdat align 2 !prof !34 {
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_714TreeWalkerImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %2 = getelementptr inbounds %"class.xercesc_2_7::TreeWalkerImpl", ptr %0, i64 0, i32 5
  tail call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #7
  %3 = getelementptr inbounds %"class.xercesc_2_7::TreeWalkerImpl", ptr %0, i64 0, i32 4
  tail call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #7
  tail call void @_ZN11xercesc_2_714RefCountedImplD2Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) #7
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714TreeWalkerImplD0Ev(ptr noundef nonnull align 8 dereferenceable(49) %0) unnamed_addr #5 comdat align 2 !prof !34 {
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_714TreeWalkerImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %2 = getelementptr inbounds %"class.xercesc_2_7::TreeWalkerImpl", ptr %0, i64 0, i32 5
  tail call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #7
  %3 = getelementptr inbounds %"class.xercesc_2_7::TreeWalkerImpl", ptr %0, i64 0, i32 4
  tail call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #7
  tail call void @_ZN11xercesc_2_714RefCountedImplD2Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) #7
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #7
  ret void
}

declare void @_ZN11xercesc_2_714RefCountedImpl10referencedEv(ptr noundef nonnull align 8 dereferenceable(12)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #2

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #7
  resume { ptr, i32 } %8
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #2

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #1

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #7
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #7
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 !prof !34 {
  ret ptr @_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !67
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !35
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #7
  resume { ptr, i32 } %7
}

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { noreturn }

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
!38 = !{!39, !43, i64 16}
!39 = !{!"_ZTSN11xercesc_2_714TreeWalkerImplE", !40, i64 0, !43, i64 16, !44, i64 24, !45, i64 32, !45, i64 40, !46, i64 48}
!40 = !{!"_ZTSN11xercesc_2_714RefCountedImplE", !41, i64 8}
!41 = !{!"int", !42, i64 0}
!42 = !{!"omnipotent char", !37, i64 0}
!43 = !{!"long", !42, i64 0}
!44 = !{!"any pointer", !42, i64 0}
!45 = !{!"_ZTSN11xercesc_2_78DOM_NodeE", !44, i64 0}
!46 = !{!"bool", !42, i64 0}
!47 = !{!39, !44, i64 24}
!48 = !{!39, !46, i64 48}
!49 = !{i8 0, i8 2}
!50 = !{}
!51 = !{!52, !44, i64 128}
!52 = !{!"_ZTSN11xercesc_2_712DocumentImplE", !53, i64 0, !44, i64 88, !44, i64 96, !44, i64 104, !44, i64 112, !44, i64 120, !44, i64 128, !44, i64 136, !44, i64 144, !41, i64 152, !46, i64 156, !44, i64 160}
!53 = !{!"_ZTSN11xercesc_2_710ParentNodeE", !54, i64 0, !44, i64 48, !44, i64 56, !41, i64 64, !44, i64 72, !41, i64 80}
!54 = !{!"_ZTSN11xercesc_2_79ChildNodeE", !55, i64 0, !44, i64 32, !44, i64 40}
!55 = !{!"_ZTSN11xercesc_2_78NodeImplE", !56, i64 0, !44, i64 16, !57, i64 24}
!56 = !{!"_ZTSN11xercesc_2_712NodeListImplE", !40, i64 0}
!57 = !{!"short", !42, i64 0}
!58 = !{!59, !41, i64 12}
!59 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_14TreeWalkerImplEEE", !46, i64 8, !41, i64 12, !41, i64 16, !44, i64 24, !44, i64 32}
!60 = distinct !{!60, !61, !62}
!61 = !{!"llvm.loop.mustprogress"}
!62 = !{!"llvm.loop.unroll.disable"}
!63 = !{!59, !44, i64 32}
!64 = !{!59, !44, i64 24}
!65 = !{!44, !44, i64 0}
!66 = distinct !{!66, !61, !62}
!67 = !{!68, !44, i64 40}
!68 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !69, i64 8, !44, i64 16, !41, i64 24, !44, i64 32, !44, i64 40}
!69 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !42, i64 0}
