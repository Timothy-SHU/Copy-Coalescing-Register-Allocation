; ModuleID = 'NodeIteratorImpl.cpp'
source_filename = "NodeIteratorImpl.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::NodeIteratorImpl" = type <{ %"class.xercesc_2_7::RefCountedImpl.base", [4 x i8], %"class.xercesc_2_7::DOM_Node", i64, ptr, i8, i8, [6 x i8], %"class.xercesc_2_7::DOM_Node", i8, [7 x i8] }>
%"class.xercesc_2_7::RefCountedImpl.base" = type <{ ptr, i32 }>
%"class.xercesc_2_7::DOM_Node" = type { ptr }
%"class.xercesc_2_7::DOMString" = type { ptr }
%"class.xercesc_2_7::DOM_Document" = type { %"class.xercesc_2_7::DOM_Node" }
%"class.xercesc_2_7::DocumentImpl" = type { %"class.xercesc_2_7::ParentNode.base", ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, ptr }
%"class.xercesc_2_7::ParentNode.base" = type <{ %"class.xercesc_2_7::ChildNode", ptr, ptr, i32, [4 x i8], ptr, i32 }>
%"class.xercesc_2_7::ChildNode" = type { %"class.xercesc_2_7::NodeImpl.base", ptr, ptr }
%"class.xercesc_2_7::NodeImpl.base" = type <{ %"class.xercesc_2_7::NodeListImpl.base", [4 x i8], ptr, i16 }>
%"class.xercesc_2_7::NodeListImpl.base" = type { %"class.xercesc_2_7::RefCountedImpl.base" }
%"class.xercesc_2_7::BaseRefVectorOf" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }

$_ZNK11xercesc_2_715BaseRefVectorOfINS_16NodeIteratorImplEE4sizeEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_16NodeIteratorImplEE9elementAtEj = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_ = comdat any

$_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

@_ZTVN11xercesc_2_716NodeIteratorImplE = dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_716NodeIteratorImplE, ptr @_ZN11xercesc_2_716NodeIteratorImplD2Ev, ptr @_ZN11xercesc_2_716NodeIteratorImplD0Ev, ptr @_ZN11xercesc_2_714RefCountedImpl10referencedEv, ptr @_ZN11xercesc_2_716NodeIteratorImpl12unreferencedEv] }, align 8
@_ZTIN11xercesc_2_716DOM_DOMExceptionE = external constant ptr
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_716NodeIteratorImplE = dso_local constant [34 x i8] c"N11xercesc_2_716NodeIteratorImplE\00", align 1
@_ZTIN11xercesc_2_714RefCountedImplE = external constant ptr
@_ZTIN11xercesc_2_716NodeIteratorImplE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_716NodeIteratorImplE, ptr @_ZTIN11xercesc_2_714RefCountedImplE }, align 8
@.str = private unnamed_addr constant [33 x i8] c"./xercesc/util/BaseRefVectorOf.c\00", align 1
@_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant [48 x i8] c"N11xercesc_2_730ArrayIndexOutOfBoundsExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE = external constant [0 x i16], align 2

@_ZN11xercesc_2_716NodeIteratorImplC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_716NodeIteratorImplC2Ev
@_ZN11xercesc_2_716NodeIteratorImplD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_716NodeIteratorImplD2Ev
@_ZN11xercesc_2_716NodeIteratorImplC1ENS_8DOM_NodeEmPNS_14DOM_NodeFilterEb = dso_local unnamed_addr alias void (ptr, ptr, i64, ptr, i1), ptr @_ZN11xercesc_2_716NodeIteratorImplC2ENS_8DOM_NodeEmPNS_14DOM_NodeFilterEb
@_ZN11xercesc_2_716NodeIteratorImplC1ERKS0_ = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_716NodeIteratorImplC2ERKS0_

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_716NodeIteratorImplC2Ev(ptr noundef nonnull align 8 dereferenceable(57) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  tail call void @_ZN11xercesc_2_714RefCountedImplC2Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) #7
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716NodeIteratorImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %2 = getelementptr inbounds %"class.xercesc_2_7::NodeIteratorImpl", ptr %0, i64 0, i32 2
  invoke void @_ZN11xercesc_2_78DOM_NodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #7
          to label %3 unwind label %8

3:                                                ; preds = %1
  %4 = getelementptr inbounds %"class.xercesc_2_7::NodeIteratorImpl", ptr %0, i64 0, i32 4
  store ptr null, ptr %4, align 8, !tbaa !38
  %5 = getelementptr inbounds %"class.xercesc_2_7::NodeIteratorImpl", ptr %0, i64 0, i32 6
  store i8 0, ptr %5, align 1, !tbaa !47
  %6 = getelementptr inbounds %"class.xercesc_2_7::NodeIteratorImpl", ptr %0, i64 0, i32 8
  invoke void @_ZN11xercesc_2_78DOM_NodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #7
          to label %7 unwind label %10

7:                                                ; preds = %3
  ret void

8:                                                ; preds = %1
  %9 = landingpad { ptr, i32 }
          cleanup
  br label %12

10:                                               ; preds = %3
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #8
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi { ptr, i32 } [ %11, %10 ], [ %9, %8 ]
  tail call void @_ZN11xercesc_2_714RefCountedImplD2Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) #8
  resume { ptr, i32 } %13
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_714RefCountedImplC2Ev(ptr noundef nonnull align 8 dereferenceable(12)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78DOM_NodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_714RefCountedImplD2Ev(ptr noundef nonnull align 8 dereferenceable(12)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_716NodeIteratorImplD2Ev(ptr noundef nonnull align 8 dereferenceable(57) %0) unnamed_addr #3 align 2 !prof !34 {
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716NodeIteratorImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %2 = getelementptr inbounds %"class.xercesc_2_7::NodeIteratorImpl", ptr %0, i64 0, i32 6
  store i8 0, ptr %2, align 1, !tbaa !47
  %3 = getelementptr inbounds %"class.xercesc_2_7::NodeIteratorImpl", ptr %0, i64 0, i32 8
  tail call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #8
  %4 = getelementptr inbounds %"class.xercesc_2_7::NodeIteratorImpl", ptr %0, i64 0, i32 2
  tail call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #8
  tail call void @_ZN11xercesc_2_714RefCountedImplD2Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) #8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_716NodeIteratorImplD0Ev(ptr noundef nonnull align 8 dereferenceable(57) %0) unnamed_addr #3 align 2 {
  tail call void @_ZN11xercesc_2_716NodeIteratorImplD2Ev(ptr noundef nonnull align 8 dereferenceable(57) %0) #8
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #8
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xercesc_2_716NodeIteratorImpl6detachEv(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(57) %0) local_unnamed_addr #4 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::NodeIteratorImpl", ptr %0, i64 0, i32 6
  store i8 1, ptr %2, align 1, !tbaa !47
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_716NodeIteratorImplC2ENS_8DOM_NodeEmPNS_14DOM_NodeFilterEb(ptr noundef nonnull align 8 dereferenceable(57) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i1 noundef zeroext %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  tail call void @_ZN11xercesc_2_714RefCountedImplC2Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) #7
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716NodeIteratorImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %6 = getelementptr inbounds %"class.xercesc_2_7::NodeIteratorImpl", ptr %0, i64 0, i32 2
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %1) #7
          to label %7 unwind label %16

7:                                                ; preds = %5
  %8 = zext i1 %4 to i8
  %9 = getelementptr inbounds %"class.xercesc_2_7::NodeIteratorImpl", ptr %0, i64 0, i32 3
  store i64 %2, ptr %9, align 8, !tbaa !48
  %10 = getelementptr inbounds %"class.xercesc_2_7::NodeIteratorImpl", ptr %0, i64 0, i32 4
  store ptr %3, ptr %10, align 8, !tbaa !38
  %11 = getelementptr inbounds %"class.xercesc_2_7::NodeIteratorImpl", ptr %0, i64 0, i32 5
  store i8 %8, ptr %11, align 8, !tbaa !49
  %12 = getelementptr inbounds %"class.xercesc_2_7::NodeIteratorImpl", ptr %0, i64 0, i32 6
  store i8 0, ptr %12, align 1, !tbaa !47
  %13 = getelementptr inbounds %"class.xercesc_2_7::NodeIteratorImpl", ptr %0, i64 0, i32 8
  invoke void @_ZN11xercesc_2_78DOM_NodeC1EPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef null) #7
          to label %14 unwind label %18

14:                                               ; preds = %7
  %15 = getelementptr inbounds %"class.xercesc_2_7::NodeIteratorImpl", ptr %0, i64 0, i32 9
  store i8 1, ptr %15, align 8, !tbaa !50
  ret void

16:                                               ; preds = %5
  %17 = landingpad { ptr, i32 }
          cleanup
  br label %20

18:                                               ; preds = %7
  %19 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #8
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi { ptr, i32 } [ %19, %18 ], [ %17, %16 ]
  tail call void @_ZN11xercesc_2_714RefCountedImplD2Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) #8
  resume { ptr, i32 } %21
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78DOM_NodeC1EPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_716NodeIteratorImplC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(57) %0, ptr noundef nonnull align 8 dereferenceable(57) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  tail call void @_ZN11xercesc_2_714RefCountedImplC2Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) #7
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716NodeIteratorImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %3 = getelementptr inbounds %"class.xercesc_2_7::NodeIteratorImpl", ptr %0, i64 0, i32 2
  %4 = getelementptr inbounds %"class.xercesc_2_7::NodeIteratorImpl", ptr %1, i64 0, i32 2
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #7
          to label %5 unwind label %24

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xercesc_2_7::NodeIteratorImpl", ptr %0, i64 0, i32 3
  %7 = getelementptr inbounds %"class.xercesc_2_7::NodeIteratorImpl", ptr %1, i64 0, i32 3
  %8 = load i64, ptr %7, align 8, !tbaa !48
  store i64 %8, ptr %6, align 8, !tbaa !48
  %9 = getelementptr inbounds %"class.xercesc_2_7::NodeIteratorImpl", ptr %0, i64 0, i32 4
  %10 = getelementptr inbounds %"class.xercesc_2_7::NodeIteratorImpl", ptr %1, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !38
  store ptr %11, ptr %9, align 8, !tbaa !38
  %12 = getelementptr inbounds %"class.xercesc_2_7::NodeIteratorImpl", ptr %0, i64 0, i32 5
  %13 = getelementptr inbounds %"class.xercesc_2_7::NodeIteratorImpl", ptr %1, i64 0, i32 5
  %14 = load i8, ptr %13, align 8, !tbaa !49, !range !51, !noundef !52
  store i8 %14, ptr %12, align 8, !tbaa !49
  %15 = getelementptr inbounds %"class.xercesc_2_7::NodeIteratorImpl", ptr %0, i64 0, i32 6
  %16 = getelementptr inbounds %"class.xercesc_2_7::NodeIteratorImpl", ptr %1, i64 0, i32 6
  %17 = load i8, ptr %16, align 1, !tbaa !47, !range !51, !noundef !52
  store i8 %17, ptr %15, align 1, !tbaa !47
  %18 = getelementptr inbounds %"class.xercesc_2_7::NodeIteratorImpl", ptr %0, i64 0, i32 8
  %19 = getelementptr inbounds %"class.xercesc_2_7::NodeIteratorImpl", ptr %1, i64 0, i32 8
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(8) %19) #7
          to label %20 unwind label %26

20:                                               ; preds = %5
  %21 = getelementptr inbounds %"class.xercesc_2_7::NodeIteratorImpl", ptr %0, i64 0, i32 9
  %22 = getelementptr inbounds %"class.xercesc_2_7::NodeIteratorImpl", ptr %1, i64 0, i32 9
  %23 = load i8, ptr %22, align 8, !tbaa !50, !range !51, !noundef !52
  store i8 %23, ptr %21, align 8, !tbaa !50
  ret void

24:                                               ; preds = %2
  %25 = landingpad { ptr, i32 }
          cleanup
  br label %28

26:                                               ; preds = %5
  %27 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #8
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi { ptr, i32 } [ %27, %26 ], [ %25, %24 ]
  tail call void @_ZN11xercesc_2_714RefCountedImplD2Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) #8
  resume { ptr, i32 } %29
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(57) ptr @_ZN11xercesc_2_716NodeIteratorImplaSERKS0_(ptr noundef nonnull returned align 8 dereferenceable(57) %0, ptr noundef nonnull align 8 dereferenceable(57) %1) local_unnamed_addr #0 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::NodeIteratorImpl", ptr %1, i64 0, i32 2
  %4 = getelementptr inbounds %"class.xercesc_2_7::NodeIteratorImpl", ptr %0, i64 0, i32 2
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %3) #7
  %6 = getelementptr inbounds %"class.xercesc_2_7::NodeIteratorImpl", ptr %0, i64 0, i32 8
  %7 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %3) #7
  %8 = getelementptr inbounds %"class.xercesc_2_7::NodeIteratorImpl", ptr %1, i64 0, i32 3
  %9 = load i64, ptr %8, align 8, !tbaa !48
  %10 = getelementptr inbounds %"class.xercesc_2_7::NodeIteratorImpl", ptr %0, i64 0, i32 3
  store i64 %9, ptr %10, align 8, !tbaa !48
  %11 = getelementptr inbounds %"class.xercesc_2_7::NodeIteratorImpl", ptr %1, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !38
  %13 = getelementptr inbounds %"class.xercesc_2_7::NodeIteratorImpl", ptr %0, i64 0, i32 4
  store ptr %12, ptr %13, align 8, !tbaa !38
  %14 = getelementptr inbounds %"class.xercesc_2_7::NodeIteratorImpl", ptr %1, i64 0, i32 9
  %15 = load i8, ptr %14, align 8, !tbaa !50, !range !51, !noundef !52
  %16 = getelementptr inbounds %"class.xercesc_2_7::NodeIteratorImpl", ptr %0, i64 0, i32 9
  store i8 %15, ptr %16, align 8, !tbaa !50
  %17 = getelementptr inbounds %"class.xercesc_2_7::NodeIteratorImpl", ptr %1, i64 0, i32 6
  %18 = load i8, ptr %17, align 1, !tbaa !47, !range !51, !noundef !52
  %19 = getelementptr inbounds %"class.xercesc_2_7::NodeIteratorImpl", ptr %0, i64 0, i32 6
  store i8 %18, ptr %19, align 1, !tbaa !47
  %20 = getelementptr inbounds %"class.xercesc_2_7::NodeIteratorImpl", ptr %1, i64 0, i32 5
  %21 = load i8, ptr %20, align 8, !tbaa !49, !range !51, !noundef !52
  %22 = getelementptr inbounds %"class.xercesc_2_7::NodeIteratorImpl", ptr %0, i64 0, i32 5
  store i8 %21, ptr %22, align 8, !tbaa !49
  ret ptr %0
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_716NodeIteratorImpl7getRootEv(ptr dead_on_unwind noalias nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr noundef nonnull align 8 dereferenceable(57) %1) local_unnamed_addr #0 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::NodeIteratorImpl", ptr %1, i64 0, i32 2
  tail call void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #7
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef i64 @_ZN11xercesc_2_716NodeIteratorImpl13getWhatToShowEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(57) %0) local_unnamed_addr #5 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::NodeIteratorImpl", ptr %0, i64 0, i32 3
  %3 = load i64, ptr %2, align 8, !tbaa !48
  ret i64 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZN11xercesc_2_716NodeIteratorImpl9getFilterEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(57) %0) local_unnamed_addr #5 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::NodeIteratorImpl", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !38
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_716NodeIteratorImpl25getExpandEntityReferencesEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(57) %0) local_unnamed_addr #5 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::NodeIteratorImpl", ptr %0, i64 0, i32 5
  %3 = load i8, ptr %2, align 8, !tbaa !49, !range !51, !noundef !52
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_716NodeIteratorImpl8nextNodeEv(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr noundef nonnull align 8 dereferenceable(57) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = alloca %"class.xercesc_2_7::DOMString", align 8
  %4 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %5 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %6 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %7 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %8 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %9 = getelementptr inbounds %"class.xercesc_2_7::NodeIteratorImpl", ptr %1, i64 0, i32 6
  %10 = load i8, ptr %9, align 1, !tbaa !47, !range !51, !noundef !52
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %24, label %12

12:                                               ; preds = %2
  %13 = tail call ptr @__cxa_allocate_exception(i64 24) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 0) #7
          to label %14 unwind label %18

14:                                               ; preds = %12
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %13, i16 noundef signext 11, ptr noundef nonnull align 8 dereferenceable(8) %3) #7
          to label %17 unwind label %15

15:                                               ; preds = %14
  %16 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  br label %22

17:                                               ; preds = %14
  invoke void @__cxa_throw(ptr nonnull %13, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #10
          to label %87 unwind label %20

18:                                               ; preds = %12
  %19 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  br label %22

20:                                               ; preds = %17
  %21 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  br label %85

22:                                               ; preds = %15, %18
  %23 = phi { ptr, i32 } [ %19, %18 ], [ %16, %15 ]
  call void @__cxa_free_exception(ptr %13) #9
  br label %85

24:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  call void @_ZN11xercesc_2_78DOM_NodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #7
  %25 = getelementptr inbounds %"class.xercesc_2_7::NodeIteratorImpl", ptr %1, i64 0, i32 2
  %26 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node6isNullEv(ptr noundef nonnull align 8 dereferenceable(8) %25) #7
          to label %27 unwind label %29

27:                                               ; preds = %24
  br i1 %26, label %28, label %31

28:                                               ; preds = %27
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %4) #7
          to label %82 unwind label %29

29:                                               ; preds = %28, %24
  %30 = landingpad { ptr, i32 }
          cleanup
  br label %83

31:                                               ; preds = %27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #9
  %32 = getelementptr inbounds %"class.xercesc_2_7::NodeIteratorImpl", ptr %1, i64 0, i32 8
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %32) #7
          to label %33 unwind label %43

33:                                               ; preds = %31
  %34 = getelementptr inbounds %"class.xercesc_2_7::NodeIteratorImpl", ptr %1, i64 0, i32 9
  br label %35

35:                                               ; preds = %33, %72
  %36 = load i8, ptr %34, align 8, !tbaa !50, !range !51, !noundef !52
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %35
  %39 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node6isNullEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #7
          to label %40 unwind label %45

40:                                               ; preds = %38
  br i1 %39, label %49, label %41

41:                                               ; preds = %40
  %42 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %32) #7
          to label %64 unwind label %45

43:                                               ; preds = %31
  %44 = landingpad { ptr, i32 }
          cleanup
  br label %80

45:                                               ; preds = %38, %41, %64, %69
  %46 = landingpad { ptr, i32 }
          cleanup
  br label %78

47:                                               ; preds = %67, %73
  %48 = landingpad { ptr, i32 }
          cleanup
  br label %78

49:                                               ; preds = %40, %35
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #9
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %5) #7
          to label %50 unwind label %54

50:                                               ; preds = %49
  invoke void @_ZN11xercesc_2_716NodeIteratorImpl8nextNodeENS_8DOM_NodeEb(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %6, ptr noundef nonnull align 8 dereferenceable(57) %1, ptr noundef nonnull %7, i1 noundef zeroext true) #7
          to label %51 unwind label %56

51:                                               ; preds = %50
  %52 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) #7
          to label %53 unwind label %58

53:                                               ; preds = %51
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #8
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  br label %64

54:                                               ; preds = %49
  %55 = landingpad { ptr, i32 }
          cleanup
  br label %62

56:                                               ; preds = %50
  %57 = landingpad { ptr, i32 }
          cleanup
  br label %60

58:                                               ; preds = %51
  %59 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #8
  br label %60

60:                                               ; preds = %58, %56
  %61 = phi { ptr, i32 } [ %59, %58 ], [ %57, %56 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #8
  br label %62

62:                                               ; preds = %60, %54
  %63 = phi { ptr, i32 } [ %61, %60 ], [ %55, %54 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  br label %78

64:                                               ; preds = %41, %53
  store i8 1, ptr %34, align 8, !tbaa !50
  %65 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node6isNullEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #7
          to label %66 unwind label %45

66:                                               ; preds = %64
  br i1 %65, label %67, label %69

67:                                               ; preds = %66, %73
  %68 = phi ptr [ %32, %73 ], [ %4, %66 ]
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %68) #7
          to label %77 unwind label %47

69:                                               ; preds = %66
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %5) #7
          to label %70 unwind label %45

70:                                               ; preds = %69
  %71 = invoke noundef zeroext i1 @_ZN11xercesc_2_716NodeIteratorImpl10acceptNodeENS_8DOM_NodeE(ptr noundef nonnull align 8 dereferenceable(57) %1, ptr noundef nonnull %8) #7
          to label %72 unwind label %75

72:                                               ; preds = %70
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #8
  br i1 %71, label %73, label %35, !llvm.loop !53

73:                                               ; preds = %72
  %74 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %32, ptr noundef nonnull align 8 dereferenceable(8) %5) #7
          to label %67 unwind label %47

75:                                               ; preds = %70
  %76 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #8
  br label %78

77:                                               ; preds = %67
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  br label %82

78:                                               ; preds = %45, %47, %75, %62
  %79 = phi { ptr, i32 } [ %76, %75 ], [ %63, %62 ], [ %46, %45 ], [ %48, %47 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #8
  br label %80

80:                                               ; preds = %78, %43
  %81 = phi { ptr, i32 } [ %79, %78 ], [ %44, %43 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  br label %83

82:                                               ; preds = %28, %77
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  ret void

83:                                               ; preds = %80, %29
  %84 = phi { ptr, i32 } [ %30, %29 ], [ %81, %80 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  br label %85

85:                                               ; preds = %20, %22, %83
  %86 = phi { ptr, i32 } [ %23, %22 ], [ %21, %20 ], [ %84, %83 ]
  resume { ptr, i32 } %86

87:                                               ; preds = %17
  unreachable
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24), i16 noundef signext, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node6isNullEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_716NodeIteratorImpl8nextNodeENS_8DOM_NodeEb(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr noundef nonnull align 8 dereferenceable(57) %1, ptr noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %5 = alloca %"class.xercesc_2_7::DOMString", align 8
  %6 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %7 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %8 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %9 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %10 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %11 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %12 = getelementptr inbounds %"class.xercesc_2_7::NodeIteratorImpl", ptr %1, i64 0, i32 6
  %13 = load i8, ptr %12, align 1, !tbaa !47, !range !51, !noundef !52
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %27, label %15

15:                                               ; preds = %4
  %16 = tail call ptr @__cxa_allocate_exception(i64 24) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #9
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef 0) #7
          to label %17 unwind label %21

17:                                               ; preds = %15
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %16, i16 noundef signext 11, ptr noundef nonnull align 8 dereferenceable(8) %5) #7
          to label %20 unwind label %18

18:                                               ; preds = %17
  %19 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  br label %25

20:                                               ; preds = %17
  invoke void @__cxa_throw(ptr nonnull %16, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #10
          to label %113 unwind label %23

21:                                               ; preds = %15
  %22 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  br label %25

23:                                               ; preds = %20
  %24 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  br label %111

25:                                               ; preds = %18, %21
  %26 = phi { ptr, i32 } [ %22, %21 ], [ %19, %18 ]
  call void @__cxa_free_exception(ptr %16) #9
  br label %111

27:                                               ; preds = %4
  %28 = tail call noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node6isNullEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #7
  br i1 %28, label %29, label %31

29:                                               ; preds = %27
  %30 = getelementptr inbounds %"class.xercesc_2_7::NodeIteratorImpl", ptr %1, i64 0, i32 2
  tail call void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %30) #7
  br label %110

31:                                               ; preds = %27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #9
  call void @_ZN11xercesc_2_78DOM_NodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #7
  br i1 %3, label %32, label %47

32:                                               ; preds = %31
  %33 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node13hasChildNodesEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #7
          to label %34 unwind label %39

34:                                               ; preds = %32
  br i1 %33, label %35, label %47

35:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #9
  invoke void @_ZNK11xercesc_2_78DOM_Node13getFirstChildEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %2) #7
          to label %36 unwind label %41

36:                                               ; preds = %35
  %37 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7) #7
          to label %38 unwind label %43

38:                                               ; preds = %36
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #9
  br label %57

39:                                               ; preds = %57, %105, %54, %47, %32
  %40 = landingpad { ptr, i32 }
          cleanup
  br label %108

41:                                               ; preds = %35
  %42 = landingpad { ptr, i32 }
          cleanup
  br label %45

43:                                               ; preds = %36
  %44 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #8
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi { ptr, i32 } [ %44, %43 ], [ %42, %41 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #9
  br label %108

47:                                               ; preds = %34, %31
  %48 = getelementptr inbounds %"class.xercesc_2_7::NodeIteratorImpl", ptr %1, i64 0, i32 2
  %49 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %48) #7
          to label %50 unwind label %39

50:                                               ; preds = %47
  br i1 %49, label %51, label %105

51:                                               ; preds = %50
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #9
  invoke void @_ZNK11xercesc_2_78DOM_Node14getNextSiblingEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %2) #7
          to label %52 unwind label %58

52:                                               ; preds = %51
  %53 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %8) #7
          to label %54 unwind label %60

54:                                               ; preds = %52
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #9
  %55 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node6isNullEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #7
          to label %56 unwind label %39

56:                                               ; preds = %54
  br i1 %55, label %64, label %57

57:                                               ; preds = %56, %38
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %6) #7
          to label %107 unwind label %39

58:                                               ; preds = %51
  %59 = landingpad { ptr, i32 }
          cleanup
  br label %62

60:                                               ; preds = %52
  %61 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #8
  br label %62

62:                                               ; preds = %60, %58
  %63 = phi { ptr, i32 } [ %61, %60 ], [ %59, %58 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #9
  br label %108

64:                                               ; preds = %56
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #9
  invoke void @_ZNK11xercesc_2_78DOM_Node13getParentNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %2) #7
          to label %65 unwind label %78

65:                                               ; preds = %64, %93
  %66 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node6isNullEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #7
          to label %67 unwind label %80

67:                                               ; preds = %65
  br i1 %66, label %100, label %68

68:                                               ; preds = %67
  %69 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %48) #7
          to label %70 unwind label %80

70:                                               ; preds = %68
  br i1 %69, label %71, label %100

71:                                               ; preds = %70
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #9
  invoke void @_ZNK11xercesc_2_78DOM_Node14getNextSiblingEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %9) #7
          to label %72 unwind label %84

72:                                               ; preds = %71
  %73 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %10) #7
          to label %74 unwind label %86

74:                                               ; preds = %72
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #9
  %75 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node6isNullEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #7
          to label %76 unwind label %80

76:                                               ; preds = %74
  br i1 %75, label %90, label %77

77:                                               ; preds = %76
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %6) #7
          to label %106 unwind label %82

78:                                               ; preds = %64
  %79 = landingpad { ptr, i32 }
          cleanup
  br label %103

80:                                               ; preds = %65, %68, %74
  %81 = landingpad { ptr, i32 }
          cleanup
  br label %101

82:                                               ; preds = %77
  %83 = landingpad { ptr, i32 }
          cleanup
  br label %101

84:                                               ; preds = %71
  %85 = landingpad { ptr, i32 }
          cleanup
  br label %88

86:                                               ; preds = %72
  %87 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #8
  br label %88

88:                                               ; preds = %86, %84
  %89 = phi { ptr, i32 } [ %87, %86 ], [ %85, %84 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #9
  br label %101

90:                                               ; preds = %76
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #9
  invoke void @_ZNK11xercesc_2_78DOM_Node13getParentNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %11, ptr noundef nonnull align 8 dereferenceable(8) %9) #7
          to label %91 unwind label %94

91:                                               ; preds = %90
  %92 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %11) #7
          to label %93 unwind label %96

93:                                               ; preds = %91
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #9
  br label %65, !llvm.loop !55

94:                                               ; preds = %90
  %95 = landingpad { ptr, i32 }
          cleanup
  br label %98

96:                                               ; preds = %91
  %97 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #8
  br label %98

98:                                               ; preds = %96, %94
  %99 = phi { ptr, i32 } [ %97, %96 ], [ %95, %94 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #9
  br label %101

100:                                              ; preds = %70, %67
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #9
  br label %105

101:                                              ; preds = %80, %82, %98, %88
  %102 = phi { ptr, i32 } [ %99, %98 ], [ %89, %88 ], [ %81, %80 ], [ %83, %82 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #8
  br label %103

103:                                              ; preds = %101, %78
  %104 = phi { ptr, i32 } [ %102, %101 ], [ %79, %78 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #9
  br label %108

105:                                              ; preds = %100, %50
  invoke void @_ZN11xercesc_2_78DOM_NodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
          to label %107 unwind label %39

106:                                              ; preds = %77
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #9
  br label %107

107:                                              ; preds = %57, %105, %106
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  br label %110

108:                                              ; preds = %103, %62, %45, %39
  %109 = phi { ptr, i32 } [ %40, %39 ], [ %46, %45 ], [ %104, %103 ], [ %63, %62 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  br label %111

110:                                              ; preds = %107, %29
  ret void

111:                                              ; preds = %23, %25, %108
  %112 = phi { ptr, i32 } [ %26, %25 ], [ %24, %23 ], [ %109, %108 ]
  resume { ptr, i32 } %112

113:                                              ; preds = %20
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_716NodeIteratorImpl10acceptNodeENS_8DOM_NodeE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(57) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = alloca %"class.xercesc_2_7::DOMString", align 8
  %4 = getelementptr inbounds %"class.xercesc_2_7::NodeIteratorImpl", ptr %0, i64 0, i32 6
  %5 = load i8, ptr %4, align 1, !tbaa !47, !range !51, !noundef !52
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %19, label %7

7:                                                ; preds = %2
  %8 = tail call ptr @__cxa_allocate_exception(i64 24) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 0) #7
          to label %9 unwind label %13

9:                                                ; preds = %7
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %8, i16 noundef signext 11, ptr noundef nonnull align 8 dereferenceable(8) %3) #7
          to label %12 unwind label %10

10:                                               ; preds = %9
  %11 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  br label %17

12:                                               ; preds = %9
  invoke void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #10
          to label %46 unwind label %15

13:                                               ; preds = %7
  %14 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  br label %17

15:                                               ; preds = %12
  %16 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  br label %44

17:                                               ; preds = %10, %13
  %18 = phi { ptr, i32 } [ %14, %13 ], [ %11, %10 ]
  call void @__cxa_free_exception(ptr %8) #9
  br label %44

19:                                               ; preds = %2
  %20 = getelementptr inbounds %"class.xercesc_2_7::NodeIteratorImpl", ptr %0, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !38
  %22 = icmp eq ptr %21, null
  %23 = getelementptr inbounds %"class.xercesc_2_7::NodeIteratorImpl", ptr %0, i64 0, i32 3
  %24 = load i64, ptr %23, align 8, !tbaa !48
  %25 = tail call noundef signext i16 @_ZNK11xercesc_2_78DOM_Node11getNodeTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  %26 = sext i16 %25 to i32
  %27 = add nsw i32 %26, -1
  %28 = shl nuw i32 1, %27
  %29 = sext i32 %28 to i64
  %30 = and i64 %24, %29
  br i1 %22, label %31, label %33

31:                                               ; preds = %19
  %32 = icmp ne i64 %30, 0
  br label %42

33:                                               ; preds = %19
  %34 = icmp eq i64 %30, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %33
  %36 = load ptr, ptr %20, align 8, !tbaa !38
  %37 = load ptr, ptr %36, align 8, !tbaa !35
  %38 = getelementptr inbounds ptr, ptr %37, i64 2
  %39 = load ptr, ptr %38, align 8
  %40 = tail call noundef signext i16 %39(ptr noundef nonnull align 8 dereferenceable(8) %36, ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  %41 = icmp eq i16 %40, 1
  br label %42

42:                                               ; preds = %33, %35, %31
  %43 = phi i1 [ %32, %31 ], [ false, %33 ], [ %41, %35 ]
  ret i1 %43

44:                                               ; preds = %15, %17
  %45 = phi { ptr, i32 } [ %16, %15 ], [ %18, %17 ]
  resume { ptr, i32 } %45

46:                                               ; preds = %12
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_716NodeIteratorImpl12previousNodeEv(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr noundef nonnull align 8 dereferenceable(57) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = alloca %"class.xercesc_2_7::DOMString", align 8
  %4 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %5 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %6 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %7 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %8 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %9 = getelementptr inbounds %"class.xercesc_2_7::NodeIteratorImpl", ptr %1, i64 0, i32 6
  %10 = load i8, ptr %9, align 1, !tbaa !47, !range !51, !noundef !52
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %24, label %12

12:                                               ; preds = %2
  %13 = tail call ptr @__cxa_allocate_exception(i64 24) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 0) #7
          to label %14 unwind label %18

14:                                               ; preds = %12
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %13, i16 noundef signext 11, ptr noundef nonnull align 8 dereferenceable(8) %3) #7
          to label %17 unwind label %15

15:                                               ; preds = %14
  %16 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  br label %22

17:                                               ; preds = %14
  invoke void @__cxa_throw(ptr nonnull %13, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #10
          to label %90 unwind label %20

18:                                               ; preds = %12
  %19 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  br label %22

20:                                               ; preds = %17
  %21 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  br label %88

22:                                               ; preds = %15, %18
  %23 = phi { ptr, i32 } [ %19, %18 ], [ %16, %15 ]
  call void @__cxa_free_exception(ptr %13) #9
  br label %88

24:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  call void @_ZN11xercesc_2_78DOM_NodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #7
  %25 = getelementptr inbounds %"class.xercesc_2_7::NodeIteratorImpl", ptr %1, i64 0, i32 2
  %26 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node6isNullEv(ptr noundef nonnull align 8 dereferenceable(8) %25) #7
          to label %27 unwind label %33

27:                                               ; preds = %24
  br i1 %26, label %32, label %28

28:                                               ; preds = %27
  %29 = getelementptr inbounds %"class.xercesc_2_7::NodeIteratorImpl", ptr %1, i64 0, i32 8
  %30 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node6isNullEv(ptr noundef nonnull align 8 dereferenceable(8) %29) #7
          to label %31 unwind label %33

31:                                               ; preds = %28
  br i1 %30, label %32, label %35

32:                                               ; preds = %31, %27
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %4) #7
          to label %85 unwind label %33

33:                                               ; preds = %32, %28, %24
  %34 = landingpad { ptr, i32 }
          cleanup
  br label %86

35:                                               ; preds = %31
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #9
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %29) #7
          to label %36 unwind label %46

36:                                               ; preds = %35
  %37 = getelementptr inbounds %"class.xercesc_2_7::NodeIteratorImpl", ptr %1, i64 0, i32 9
  br label %38

38:                                               ; preds = %36, %75
  %39 = load i8, ptr %37, align 8, !tbaa !50, !range !51, !noundef !52
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %52, label %41

41:                                               ; preds = %38
  %42 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node6isNullEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #7
          to label %43 unwind label %48

43:                                               ; preds = %41
  br i1 %42, label %52, label %44

44:                                               ; preds = %43
  %45 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %29) #7
          to label %67 unwind label %48

46:                                               ; preds = %35
  %47 = landingpad { ptr, i32 }
          cleanup
  br label %83

48:                                               ; preds = %41, %44, %67, %72
  %49 = landingpad { ptr, i32 }
          cleanup
  br label %81

50:                                               ; preds = %70, %76
  %51 = landingpad { ptr, i32 }
          cleanup
  br label %81

52:                                               ; preds = %43, %38
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #9
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %5) #7
          to label %53 unwind label %57

53:                                               ; preds = %52
  invoke void @_ZN11xercesc_2_716NodeIteratorImpl12previousNodeENS_8DOM_NodeE(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %6, ptr noundef nonnull align 8 dereferenceable(57) %1, ptr noundef nonnull %7) #7
          to label %54 unwind label %59

54:                                               ; preds = %53
  %55 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) #7
          to label %56 unwind label %61

56:                                               ; preds = %54
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #8
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  br label %67

57:                                               ; preds = %52
  %58 = landingpad { ptr, i32 }
          cleanup
  br label %65

59:                                               ; preds = %53
  %60 = landingpad { ptr, i32 }
          cleanup
  br label %63

61:                                               ; preds = %54
  %62 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #8
  br label %63

63:                                               ; preds = %61, %59
  %64 = phi { ptr, i32 } [ %62, %61 ], [ %60, %59 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #8
  br label %65

65:                                               ; preds = %63, %57
  %66 = phi { ptr, i32 } [ %64, %63 ], [ %58, %57 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  br label %81

67:                                               ; preds = %44, %56
  store i8 0, ptr %37, align 8, !tbaa !50
  %68 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node6isNullEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #7
          to label %69 unwind label %48

69:                                               ; preds = %67
  br i1 %68, label %70, label %72

70:                                               ; preds = %69, %76
  %71 = phi ptr [ %29, %76 ], [ %4, %69 ]
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %71) #7
          to label %80 unwind label %50

72:                                               ; preds = %69
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %5) #7
          to label %73 unwind label %48

73:                                               ; preds = %72
  %74 = invoke noundef zeroext i1 @_ZN11xercesc_2_716NodeIteratorImpl10acceptNodeENS_8DOM_NodeE(ptr noundef nonnull align 8 dereferenceable(57) %1, ptr noundef nonnull %8) #7
          to label %75 unwind label %78

75:                                               ; preds = %73
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #8
  br i1 %74, label %76, label %38, !llvm.loop !56

76:                                               ; preds = %75
  %77 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef nonnull align 8 dereferenceable(8) %5) #7
          to label %70 unwind label %50

78:                                               ; preds = %73
  %79 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #8
  br label %81

80:                                               ; preds = %70
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  br label %85

81:                                               ; preds = %48, %50, %78, %65
  %82 = phi { ptr, i32 } [ %79, %78 ], [ %66, %65 ], [ %49, %48 ], [ %51, %50 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #8
  br label %83

83:                                               ; preds = %81, %46
  %84 = phi { ptr, i32 } [ %82, %81 ], [ %47, %46 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  br label %86

85:                                               ; preds = %32, %80
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  ret void

86:                                               ; preds = %83, %33
  %87 = phi { ptr, i32 } [ %34, %33 ], [ %84, %83 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  br label %88

88:                                               ; preds = %20, %22, %86
  %89 = phi { ptr, i32 } [ %23, %22 ], [ %21, %20 ], [ %87, %86 ]
  resume { ptr, i32 } %89

90:                                               ; preds = %17
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_716NodeIteratorImpl12previousNodeENS_8DOM_NodeE(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr noundef nonnull align 8 dereferenceable(57) %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %4 = alloca %"class.xercesc_2_7::DOMString", align 8
  %5 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %6 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %7 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %8 = getelementptr inbounds %"class.xercesc_2_7::NodeIteratorImpl", ptr %1, i64 0, i32 6
  %9 = load i8, ptr %8, align 1, !tbaa !47, !range !51, !noundef !52
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %23, label %11

11:                                               ; preds = %3
  %12 = tail call ptr @__cxa_allocate_exception(i64 24) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 0) #7
          to label %13 unwind label %17

13:                                               ; preds = %11
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %12, i16 noundef signext 11, ptr noundef nonnull align 8 dereferenceable(8) %4) #7
          to label %16 unwind label %14

14:                                               ; preds = %13
  %15 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  br label %21

16:                                               ; preds = %13
  invoke void @__cxa_throw(ptr nonnull %12, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #10
          to label %74 unwind label %19

17:                                               ; preds = %11
  %18 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  br label %21

19:                                               ; preds = %16
  %20 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  br label %72

21:                                               ; preds = %14, %17
  %22 = phi { ptr, i32 } [ %18, %17 ], [ %15, %14 ]
  call void @__cxa_free_exception(ptr %12) #9
  br label %72

23:                                               ; preds = %3
  tail call void @_ZN11xercesc_2_78DOM_NodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  %24 = getelementptr inbounds %"class.xercesc_2_7::NodeIteratorImpl", ptr %1, i64 0, i32 2
  %25 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeeqERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %24) #7
          to label %26 unwind label %29

26:                                               ; preds = %23
  br i1 %25, label %69, label %31

27:                                               ; preds = %56
  %28 = landingpad { ptr, i32 }
          cleanup
  br label %70

29:                                               ; preds = %23, %34, %53
  %30 = landingpad { ptr, i32 }
          cleanup
  br label %70

31:                                               ; preds = %26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #9
  invoke void @_ZNK11xercesc_2_78DOM_Node18getPreviousSiblingEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %2) #7
          to label %32 unwind label %41

32:                                               ; preds = %31
  %33 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %5) #7
          to label %34 unwind label %43

34:                                               ; preds = %32
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  %35 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node6isNullEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
          to label %36 unwind label %29

36:                                               ; preds = %34
  br i1 %35, label %37, label %53

37:                                               ; preds = %36
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #9
  invoke void @_ZNK11xercesc_2_78DOM_Node13getParentNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %2) #7
          to label %38 unwind label %47

38:                                               ; preds = %37
  %39 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %6) #7
          to label %40 unwind label %49

40:                                               ; preds = %38
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  br label %69

41:                                               ; preds = %31
  %42 = landingpad { ptr, i32 }
          cleanup
  br label %45

43:                                               ; preds = %32
  %44 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #8
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi { ptr, i32 } [ %44, %43 ], [ %42, %41 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  br label %70

47:                                               ; preds = %37
  %48 = landingpad { ptr, i32 }
          cleanup
  br label %51

49:                                               ; preds = %38
  %50 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #8
  br label %51

51:                                               ; preds = %49, %47
  %52 = phi { ptr, i32 } [ %50, %49 ], [ %48, %47 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  br label %70

53:                                               ; preds = %36
  %54 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node13hasChildNodesEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
          to label %55 unwind label %29

55:                                               ; preds = %53
  br i1 %54, label %56, label %69

56:                                               ; preds = %55, %62
  %57 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node13hasChildNodesEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
          to label %58 unwind label %27

58:                                               ; preds = %56
  br i1 %57, label %59, label %69

59:                                               ; preds = %58
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #9
  invoke void @_ZNK11xercesc_2_78DOM_Node12getLastChildEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %0) #7
          to label %60 unwind label %63

60:                                               ; preds = %59
  %61 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %7) #7
          to label %62 unwind label %65

62:                                               ; preds = %60
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #9
  br label %56, !llvm.loop !57

63:                                               ; preds = %59
  %64 = landingpad { ptr, i32 }
          cleanup
  br label %67

65:                                               ; preds = %60
  %66 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #8
  br label %67

67:                                               ; preds = %65, %63
  %68 = phi { ptr, i32 } [ %66, %65 ], [ %64, %63 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #9
  br label %70

69:                                               ; preds = %58, %40, %26, %55
  ret void

70:                                               ; preds = %27, %29, %67, %51, %45
  %71 = phi { ptr, i32 } [ %52, %51 ], [ %68, %67 ], [ %46, %45 ], [ %28, %27 ], [ %30, %29 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #8
  br label %72

72:                                               ; preds = %19, %21, %70
  %73 = phi { ptr, i32 } [ %22, %21 ], [ %20, %19 ], [ %71, %70 ]
  resume { ptr, i32 } %73

74:                                               ; preds = %16
  unreachable
}

; Function Attrs: optsize
declare noundef signext i16 @_ZNK11xercesc_2_78DOM_Node11getNodeTypeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_716NodeIteratorImpl17matchNodeOrParentENS_8DOM_NodeE(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr noundef nonnull align 8 dereferenceable(57) %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %4 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %5 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  call void @_ZN11xercesc_2_78DOM_NodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #7
  %6 = getelementptr inbounds %"class.xercesc_2_7::NodeIteratorImpl", ptr %1, i64 0, i32 8
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %6) #7
          to label %7 unwind label %12

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xercesc_2_7::NodeIteratorImpl", ptr %1, i64 0, i32 2
  br label %9

9:                                                ; preds = %7, %22
  %10 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %8) #7
          to label %11 unwind label %14

11:                                               ; preds = %9
  br i1 %10, label %16, label %31

12:                                               ; preds = %31, %3
  %13 = landingpad { ptr, i32 }
          cleanup
  br label %33

14:                                               ; preds = %16, %9
  %15 = landingpad { ptr, i32 }
          cleanup
  br label %29

16:                                               ; preds = %11
  %17 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeeqERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %0) #7
          to label %18 unwind label %14

18:                                               ; preds = %16
  br i1 %17, label %32, label %19

19:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #9
  invoke void @_ZNK11xercesc_2_78DOM_Node13getParentNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %0) #7
          to label %20 unwind label %23

20:                                               ; preds = %19
  %21 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %5) #7
          to label %22 unwind label %25

22:                                               ; preds = %20
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  br label %9, !llvm.loop !58

23:                                               ; preds = %19
  %24 = landingpad { ptr, i32 }
          cleanup
  br label %27

25:                                               ; preds = %20
  %26 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #8
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi { ptr, i32 } [ %26, %25 ], [ %24, %23 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  br label %29

29:                                               ; preds = %27, %14
  %30 = phi { ptr, i32 } [ %28, %27 ], [ %15, %14 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #8
  br label %33

31:                                               ; preds = %11
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #8
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %4) #7
          to label %32 unwind label %12

32:                                               ; preds = %18, %31
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  ret void

33:                                               ; preds = %29, %12
  %34 = phi { ptr, i32 } [ %13, %12 ], [ %30, %29 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  resume { ptr, i32 } %34
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeeqERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK11xercesc_2_78DOM_Node13getParentNodeEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_Node") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node13hasChildNodesEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK11xercesc_2_78DOM_Node13getFirstChildEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_Node") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK11xercesc_2_78DOM_Node14getNextSiblingEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_Node") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK11xercesc_2_78DOM_Node18getPreviousSiblingEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_Node") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK11xercesc_2_78DOM_Node12getLastChildEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_Node") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_716NodeIteratorImpl10removeNodeENS_8DOM_NodeE(ptr noundef nonnull align 8 dereferenceable(57) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = alloca %"class.xercesc_2_7::DOMString", align 8
  %4 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %5 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %6 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %7 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %8 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %9 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %10 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %11 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %12 = getelementptr inbounds %"class.xercesc_2_7::NodeIteratorImpl", ptr %0, i64 0, i32 6
  %13 = load i8, ptr %12, align 1, !tbaa !47, !range !51, !noundef !52
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %27, label %15

15:                                               ; preds = %2
  %16 = tail call ptr @__cxa_allocate_exception(i64 24) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 0) #7
          to label %17 unwind label %21

17:                                               ; preds = %15
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %16, i16 noundef signext 11, ptr noundef nonnull align 8 dereferenceable(8) %3) #7
          to label %20 unwind label %18

18:                                               ; preds = %17
  %19 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  br label %25

20:                                               ; preds = %17
  invoke void @__cxa_throw(ptr nonnull %16, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #10
          to label %99 unwind label %23

21:                                               ; preds = %15
  %22 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  br label %25

23:                                               ; preds = %20
  %24 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  br label %97

25:                                               ; preds = %18, %21
  %26 = phi { ptr, i32 } [ %22, %21 ], [ %19, %18 ]
  call void @__cxa_free_exception(ptr %16) #9
  br label %97

27:                                               ; preds = %2
  %28 = tail call noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node6isNullEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  br i1 %28, label %93, label %29

29:                                               ; preds = %27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  call void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  invoke void @_ZN11xercesc_2_716NodeIteratorImpl17matchNodeOrParentENS_8DOM_NodeE(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %4, ptr noundef nonnull align 8 dereferenceable(57) %0, ptr noundef nonnull %5) #7
          to label %30 unwind label %33

30:                                               ; preds = %29
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #8
  %31 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node6isNullEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #7
          to label %32 unwind label %35

32:                                               ; preds = %30
  br i1 %31, label %92, label %37

33:                                               ; preds = %29
  %34 = landingpad { ptr, i32 }
          cleanup
  br label %94

35:                                               ; preds = %30
  %36 = landingpad { ptr, i32 }
          cleanup
  br label %94

37:                                               ; preds = %32
  %38 = getelementptr inbounds %"class.xercesc_2_7::NodeIteratorImpl", ptr %0, i64 0, i32 9
  %39 = load i8, ptr %38, align 8, !tbaa !50, !range !51, !noundef !52
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %57, label %41

41:                                               ; preds = %37
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #9
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %4) #7
          to label %42 unwind label %47

42:                                               ; preds = %41
  invoke void @_ZN11xercesc_2_716NodeIteratorImpl12previousNodeENS_8DOM_NodeE(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %6, ptr noundef nonnull align 8 dereferenceable(57) %0, ptr noundef nonnull %7) #7
          to label %43 unwind label %49

43:                                               ; preds = %42
  %44 = getelementptr inbounds %"class.xercesc_2_7::NodeIteratorImpl", ptr %0, i64 0, i32 8
  %45 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %44, ptr noundef nonnull align 8 dereferenceable(8) %6) #7
          to label %46 unwind label %51

46:                                               ; preds = %43
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #8
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  br label %92

47:                                               ; preds = %41
  %48 = landingpad { ptr, i32 }
          cleanup
  br label %55

49:                                               ; preds = %42
  %50 = landingpad { ptr, i32 }
          cleanup
  br label %53

51:                                               ; preds = %43
  %52 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #8
  br label %53

53:                                               ; preds = %51, %49
  %54 = phi { ptr, i32 } [ %52, %51 ], [ %50, %49 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #8
  br label %55

55:                                               ; preds = %53, %47
  %56 = phi { ptr, i32 } [ %54, %53 ], [ %48, %47 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  br label %94

57:                                               ; preds = %37
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #9
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %4) #7
          to label %58 unwind label %65

58:                                               ; preds = %57
  invoke void @_ZN11xercesc_2_716NodeIteratorImpl8nextNodeENS_8DOM_NodeEb(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %8, ptr noundef nonnull align 8 dereferenceable(57) %0, ptr noundef nonnull %9, i1 noundef zeroext false) #7
          to label %59 unwind label %67

59:                                               ; preds = %58
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #8
  %60 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node6isNullEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #7
          to label %61 unwind label %69

61:                                               ; preds = %59
  br i1 %60, label %71, label %62

62:                                               ; preds = %61
  %63 = getelementptr inbounds %"class.xercesc_2_7::NodeIteratorImpl", ptr %0, i64 0, i32 8
  %64 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %63, ptr noundef nonnull align 8 dereferenceable(8) %8) #7
          to label %87 unwind label %69

65:                                               ; preds = %57
  %66 = landingpad { ptr, i32 }
          cleanup
  br label %90

67:                                               ; preds = %58
  %68 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #8
  br label %90

69:                                               ; preds = %62, %59
  %70 = landingpad { ptr, i32 }
          cleanup
  br label %88

71:                                               ; preds = %61
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #9
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %4) #7
          to label %72 unwind label %77

72:                                               ; preds = %71
  invoke void @_ZN11xercesc_2_716NodeIteratorImpl12previousNodeENS_8DOM_NodeE(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %10, ptr noundef nonnull align 8 dereferenceable(57) %0, ptr noundef nonnull %11) #7
          to label %73 unwind label %79

73:                                               ; preds = %72
  %74 = getelementptr inbounds %"class.xercesc_2_7::NodeIteratorImpl", ptr %0, i64 0, i32 8
  %75 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %74, ptr noundef nonnull align 8 dereferenceable(8) %10) #7
          to label %76 unwind label %81

76:                                               ; preds = %73
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #8
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #9
  store i8 1, ptr %38, align 8, !tbaa !50
  br label %87

77:                                               ; preds = %71
  %78 = landingpad { ptr, i32 }
          cleanup
  br label %85

79:                                               ; preds = %72
  %80 = landingpad { ptr, i32 }
          cleanup
  br label %83

81:                                               ; preds = %73
  %82 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #8
  br label %83

83:                                               ; preds = %81, %79
  %84 = phi { ptr, i32 } [ %82, %81 ], [ %80, %79 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #8
  br label %85

85:                                               ; preds = %83, %77
  %86 = phi { ptr, i32 } [ %84, %83 ], [ %78, %77 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #9
  br label %88

87:                                               ; preds = %62, %76
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #9
  br label %92

88:                                               ; preds = %85, %69
  %89 = phi { ptr, i32 } [ %86, %85 ], [ %70, %69 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #8
  br label %90

90:                                               ; preds = %88, %67, %65
  %91 = phi { ptr, i32 } [ %89, %88 ], [ %68, %67 ], [ %66, %65 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #9
  br label %94

92:                                               ; preds = %46, %87, %32
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  br label %93

93:                                               ; preds = %27, %92
  ret void

94:                                               ; preds = %35, %55, %90, %33
  %95 = phi ptr [ %5, %33 ], [ %4, %90 ], [ %4, %55 ], [ %4, %35 ]
  %96 = phi { ptr, i32 } [ %34, %33 ], [ %91, %90 ], [ %56, %55 ], [ %36, %35 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %95) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  br label %97

97:                                               ; preds = %23, %25, %94
  %98 = phi { ptr, i32 } [ %26, %25 ], [ %24, %23 ], [ %96, %94 ]
  resume { ptr, i32 } %98

99:                                               ; preds = %20
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_716NodeIteratorImpl12unreferencedEv(ptr noundef nonnull align 8 dereferenceable(57) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %2 = alloca %"class.xercesc_2_7::DOM_Document", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #9
  %3 = getelementptr inbounds %"class.xercesc_2_7::NodeIteratorImpl", ptr %0, i64 0, i32 2
  call void @_ZNK11xercesc_2_78DOM_Node16getOwnerDocumentEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Document") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #7
  %4 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node6isNullEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #7
          to label %5 unwind label %12

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8
  %7 = load ptr, ptr %2, align 8
  %8 = select i1 %4, ptr %6, ptr %7
  %9 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %8, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !59
  %11 = icmp eq ptr %10, null
  br i1 %11, label %35, label %14

12:                                               ; preds = %1
  %13 = landingpad { ptr, i32 }
          cleanup
  br label %39

14:                                               ; preds = %5
  %15 = call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_16NodeIteratorImplEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %10) #7
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %35

17:                                               ; preds = %14, %32
  %18 = phi i32 [ %33, %32 ], [ 0, %14 ]
  %19 = load ptr, ptr %9, align 8, !tbaa !59
  %20 = invoke noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_16NodeIteratorImplEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %19, i32 noundef %18) #7
          to label %21 unwind label %28

21:                                               ; preds = %17
  %22 = icmp eq ptr %20, %0
  br i1 %22, label %23, label %32

23:                                               ; preds = %21
  %24 = load ptr, ptr %9, align 8, !tbaa !59
  %25 = load ptr, ptr %24, align 8, !tbaa !35
  %26 = getelementptr inbounds ptr, ptr %25, i64 4
  %27 = load ptr, ptr %26, align 8
  invoke void %27(ptr noundef nonnull align 8 dereferenceable(40) %24, i32 noundef %18) #7
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
  br i1 %34, label %35, label %17, !llvm.loop !66

35:                                               ; preds = %32, %14, %5, %23
  %36 = load ptr, ptr %0, align 8, !tbaa !35
  %37 = getelementptr inbounds ptr, ptr %36, i64 1
  %38 = load ptr, ptr %37, align 8
  call void %38(ptr noundef nonnull align 8 dereferenceable(57) %0) #8
  call void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #9
  ret void

39:                                               ; preds = %28, %30, %12
  %40 = phi { ptr, i32 } [ %13, %12 ], [ %29, %28 ], [ %31, %30 ]
  call void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #9
  resume { ptr, i32 } %40
}

; Function Attrs: optsize
declare void @_ZNK11xercesc_2_78DOM_Node16getOwnerDocumentEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_Document") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_16NodeIteratorImplEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #3 comdat align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !67
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_16NodeIteratorImplEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !67
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #9
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !69
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 249, i32 noundef 116, ptr noundef %9) #7
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #10
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #9
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !70
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !71
  ret ptr %18
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_714RefCountedImpl10referencedEv(ptr noundef nonnull align 8 dereferenceable(12)) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #7
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #7
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #8
  resume { ptr, i32 } %8
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #8
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 !prof !34 {
  ret ptr @_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !72
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #7
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #7
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #8
  resume { ptr, i32 } %7
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #0 comdat align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #7
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { optsize }
attributes #8 = { nounwind optsize }
attributes #9 = { nounwind }
attributes #10 = { noreturn }

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
!35 = !{!36, !36, i64 0}
!36 = !{!"vtable pointer", !37, i64 0}
!37 = !{!"Simple C++ TBAA"}
!38 = !{!39, !44, i64 32}
!39 = !{!"_ZTSN11xercesc_2_716NodeIteratorImplE", !40, i64 0, !43, i64 16, !45, i64 24, !44, i64 32, !46, i64 40, !46, i64 41, !43, i64 48, !46, i64 56}
!40 = !{!"_ZTSN11xercesc_2_714RefCountedImplE", !41, i64 8}
!41 = !{!"int", !42, i64 0}
!42 = !{!"omnipotent char", !37, i64 0}
!43 = !{!"_ZTSN11xercesc_2_78DOM_NodeE", !44, i64 0}
!44 = !{!"any pointer", !42, i64 0}
!45 = !{!"long", !42, i64 0}
!46 = !{!"bool", !42, i64 0}
!47 = !{!39, !46, i64 41}
!48 = !{!39, !45, i64 24}
!49 = !{!39, !46, i64 40}
!50 = !{!39, !46, i64 56}
!51 = !{i8 0, i8 2}
!52 = !{}
!53 = distinct !{!53, !54}
!54 = !{!"llvm.loop.mustprogress"}
!55 = distinct !{!55, !54}
!56 = distinct !{!56, !54}
!57 = distinct !{!57, !54}
!58 = distinct !{!58, !54}
!59 = !{!60, !44, i64 120}
!60 = !{!"_ZTSN11xercesc_2_712DocumentImplE", !61, i64 0, !44, i64 88, !44, i64 96, !44, i64 104, !44, i64 112, !44, i64 120, !44, i64 128, !44, i64 136, !44, i64 144, !41, i64 152, !46, i64 156, !44, i64 160}
!61 = !{!"_ZTSN11xercesc_2_710ParentNodeE", !62, i64 0, !44, i64 48, !44, i64 56, !41, i64 64, !44, i64 72, !41, i64 80}
!62 = !{!"_ZTSN11xercesc_2_79ChildNodeE", !63, i64 0, !44, i64 32, !44, i64 40}
!63 = !{!"_ZTSN11xercesc_2_78NodeImplE", !64, i64 0, !44, i64 16, !65, i64 24}
!64 = !{!"_ZTSN11xercesc_2_712NodeListImplE", !40, i64 0}
!65 = !{!"short", !42, i64 0}
!66 = distinct !{!66, !54}
!67 = !{!68, !41, i64 12}
!68 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_16NodeIteratorImplEEE", !46, i64 8, !41, i64 12, !41, i64 16, !44, i64 24, !44, i64 32}
!69 = !{!68, !44, i64 32}
!70 = !{!68, !44, i64 24}
!71 = !{!44, !44, i64 0}
!72 = !{!73, !44, i64 40}
!73 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !74, i64 8, !44, i64 16, !41, i64 24, !44, i64 32, !44, i64 40}
!74 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !42, i64 0}
