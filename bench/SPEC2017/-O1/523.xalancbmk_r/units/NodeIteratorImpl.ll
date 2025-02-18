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

$_ZN11xercesc_2_715BaseRefVectorOfINS_16NodeIteratorImplEE9elementAtEj = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv = comdat any

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

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_716NodeIteratorImplC2Ev(ptr noundef nonnull align 8 dereferenceable(57) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  tail call void @_ZN11xercesc_2_714RefCountedImplC2Ev(ptr noundef nonnull align 8 dereferenceable(12) %0)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716NodeIteratorImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %2 = getelementptr inbounds %"class.xercesc_2_7::NodeIteratorImpl", ptr %0, i64 0, i32 2
  invoke void @_ZN11xercesc_2_78DOM_NodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %3 unwind label %8

3:                                                ; preds = %1
  %4 = getelementptr inbounds %"class.xercesc_2_7::NodeIteratorImpl", ptr %0, i64 0, i32 4
  store ptr null, ptr %4, align 8, !tbaa !38
  %5 = getelementptr inbounds %"class.xercesc_2_7::NodeIteratorImpl", ptr %0, i64 0, i32 6
  store i8 0, ptr %5, align 1, !tbaa !47
  %6 = getelementptr inbounds %"class.xercesc_2_7::NodeIteratorImpl", ptr %0, i64 0, i32 8
  invoke void @_ZN11xercesc_2_78DOM_NodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6)
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
  tail call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #7
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi { ptr, i32 } [ %11, %10 ], [ %9, %8 ]
  tail call void @_ZN11xercesc_2_714RefCountedImplD2Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) #7
  resume { ptr, i32 } %13
}

declare void @_ZN11xercesc_2_714RefCountedImplC2Ev(ptr noundef nonnull align 8 dereferenceable(12)) unnamed_addr #1

declare void @_ZN11xercesc_2_78DOM_NodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_714RefCountedImplD2Ev(ptr noundef nonnull align 8 dereferenceable(12)) unnamed_addr #2

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_716NodeIteratorImplD2Ev(ptr noundef nonnull align 8 dereferenceable(57) %0) unnamed_addr #3 align 2 !prof !34 {
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716NodeIteratorImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %2 = getelementptr inbounds %"class.xercesc_2_7::NodeIteratorImpl", ptr %0, i64 0, i32 6
  store i8 0, ptr %2, align 1, !tbaa !47
  %3 = getelementptr inbounds %"class.xercesc_2_7::NodeIteratorImpl", ptr %0, i64 0, i32 8
  tail call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #7
  %4 = getelementptr inbounds %"class.xercesc_2_7::NodeIteratorImpl", ptr %0, i64 0, i32 2
  tail call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #7
  tail call void @_ZN11xercesc_2_714RefCountedImplD2Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) #7
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_716NodeIteratorImplD0Ev(ptr noundef nonnull align 8 dereferenceable(57) %0) unnamed_addr #3 align 2 !prof !34 {
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716NodeIteratorImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %2 = getelementptr inbounds %"class.xercesc_2_7::NodeIteratorImpl", ptr %0, i64 0, i32 6
  store i8 0, ptr %2, align 1, !tbaa !47
  %3 = getelementptr inbounds %"class.xercesc_2_7::NodeIteratorImpl", ptr %0, i64 0, i32 8
  tail call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #7
  %4 = getelementptr inbounds %"class.xercesc_2_7::NodeIteratorImpl", ptr %0, i64 0, i32 2
  tail call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #7
  tail call void @_ZN11xercesc_2_714RefCountedImplD2Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) #7
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #7
  ret void
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xercesc_2_716NodeIteratorImpl6detachEv(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(57) %0) local_unnamed_addr #4 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::NodeIteratorImpl", ptr %0, i64 0, i32 6
  store i8 1, ptr %2, align 1, !tbaa !47
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_716NodeIteratorImplC2ENS_8DOM_NodeEmPNS_14DOM_NodeFilterEb(ptr noundef nonnull align 8 dereferenceable(57) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i1 noundef zeroext %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  tail call void @_ZN11xercesc_2_714RefCountedImplC2Ev(ptr noundef nonnull align 8 dereferenceable(12) %0)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716NodeIteratorImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %6 = getelementptr inbounds %"class.xercesc_2_7::NodeIteratorImpl", ptr %0, i64 0, i32 2
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %1)
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
  invoke void @_ZN11xercesc_2_78DOM_NodeC1EPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef null)
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
  tail call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #7
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi { ptr, i32 } [ %19, %18 ], [ %17, %16 ]
  tail call void @_ZN11xercesc_2_714RefCountedImplD2Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) #7
  resume { ptr, i32 } %21
}

declare void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare void @_ZN11xercesc_2_78DOM_NodeC1EPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_716NodeIteratorImplC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(57) %0, ptr noundef nonnull align 8 dereferenceable(57) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  tail call void @_ZN11xercesc_2_714RefCountedImplC2Ev(ptr noundef nonnull align 8 dereferenceable(12) %0)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716NodeIteratorImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %3 = getelementptr inbounds %"class.xercesc_2_7::NodeIteratorImpl", ptr %0, i64 0, i32 2
  %4 = getelementptr inbounds %"class.xercesc_2_7::NodeIteratorImpl", ptr %1, i64 0, i32 2
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4)
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
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(8) %19)
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
  tail call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #7
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi { ptr, i32 } [ %27, %26 ], [ %25, %24 ]
  tail call void @_ZN11xercesc_2_714RefCountedImplD2Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) #7
  resume { ptr, i32 } %29
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(57) ptr @_ZN11xercesc_2_716NodeIteratorImplaSERKS0_(ptr noundef nonnull returned align 8 dereferenceable(57) %0, ptr noundef nonnull align 8 dereferenceable(57) %1) local_unnamed_addr #0 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::NodeIteratorImpl", ptr %1, i64 0, i32 2
  %4 = getelementptr inbounds %"class.xercesc_2_7::NodeIteratorImpl", ptr %0, i64 0, i32 2
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %6 = getelementptr inbounds %"class.xercesc_2_7::NodeIteratorImpl", ptr %0, i64 0, i32 8
  %7 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %3)
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

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_716NodeIteratorImpl7getRootEv(ptr dead_on_unwind noalias nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr noundef nonnull align 8 dereferenceable(57) %1) local_unnamed_addr #0 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::NodeIteratorImpl", ptr %1, i64 0, i32 2
  tail call void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %3)
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i64 @_ZN11xercesc_2_716NodeIteratorImpl13getWhatToShowEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(57) %0) local_unnamed_addr #5 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::NodeIteratorImpl", ptr %0, i64 0, i32 3
  %3 = load i64, ptr %2, align 8, !tbaa !48
  ret i64 %3
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZN11xercesc_2_716NodeIteratorImpl9getFilterEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(57) %0) local_unnamed_addr #5 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::NodeIteratorImpl", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !38
  ret ptr %3
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_716NodeIteratorImpl25getExpandEntityReferencesEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(57) %0) local_unnamed_addr #5 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::NodeIteratorImpl", ptr %0, i64 0, i32 5
  %3 = load i8, ptr %2, align 8, !tbaa !49, !range !51, !noundef !52
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: cold mustprogress uwtable
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
  br i1 %11, label %25, label %12

12:                                               ; preds = %2
  %13 = tail call ptr @__cxa_allocate_exception(i64 24) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #7
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 0)
          to label %14 unwind label %16

14:                                               ; preds = %12
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %13, i16 noundef signext 11, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %15 unwind label %18

15:                                               ; preds = %14
  invoke void @__cxa_throw(ptr nonnull %13, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #8
          to label %88 unwind label %18

16:                                               ; preds = %12
  %17 = landingpad { ptr, i32 }
          cleanup
  br label %21

18:                                               ; preds = %15, %14
  %19 = phi i1 [ false, %15 ], [ true, %14 ]
  %20 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #7
  br label %21

21:                                               ; preds = %18, %16
  %22 = phi { ptr, i32 } [ %20, %18 ], [ %17, %16 ]
  %23 = phi i1 [ %19, %18 ], [ true, %16 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  br i1 %23, label %24, label %86

24:                                               ; preds = %21
  call void @__cxa_free_exception(ptr %13) #7
  br label %86

25:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #7
  call void @_ZN11xercesc_2_78DOM_NodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4)
  %26 = getelementptr inbounds %"class.xercesc_2_7::NodeIteratorImpl", ptr %1, i64 0, i32 2
  %27 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node6isNullEv(ptr noundef nonnull align 8 dereferenceable(8) %26)
          to label %28 unwind label %30

28:                                               ; preds = %25
  br i1 %27, label %29, label %32

29:                                               ; preds = %28
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %83 unwind label %30

30:                                               ; preds = %29, %25
  %31 = landingpad { ptr, i32 }
          cleanup
  br label %84

32:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #7
  %33 = getelementptr inbounds %"class.xercesc_2_7::NodeIteratorImpl", ptr %1, i64 0, i32 8
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %33)
          to label %34 unwind label %44

34:                                               ; preds = %32
  %35 = getelementptr inbounds %"class.xercesc_2_7::NodeIteratorImpl", ptr %1, i64 0, i32 9
  br label %36

36:                                               ; preds = %34, %73
  %37 = load i8, ptr %35, align 8, !tbaa !50, !range !51, !noundef !52
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %36
  %40 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node6isNullEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %41 unwind label %46

41:                                               ; preds = %39
  br i1 %40, label %50, label %42

42:                                               ; preds = %41
  %43 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %33)
          to label %65 unwind label %46

44:                                               ; preds = %32
  %45 = landingpad { ptr, i32 }
          cleanup
  br label %81

46:                                               ; preds = %39, %42, %65, %70
  %47 = landingpad { ptr, i32 }
          cleanup
  br label %79

48:                                               ; preds = %68, %74
  %49 = landingpad { ptr, i32 }
          cleanup
  br label %79

50:                                               ; preds = %41, %36
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #7
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %51 unwind label %55

51:                                               ; preds = %50
  invoke void @_ZN11xercesc_2_716NodeIteratorImpl8nextNodeENS_8DOM_NodeEb(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %6, ptr noundef nonnull align 8 dereferenceable(57) %1, ptr noundef nonnull %7, i1 noundef zeroext true)
          to label %52 unwind label %57

52:                                               ; preds = %51
  %53 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %54 unwind label %59

54:                                               ; preds = %52
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #7
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #7
  br label %65

55:                                               ; preds = %50
  %56 = landingpad { ptr, i32 }
          cleanup
  br label %63

57:                                               ; preds = %51
  %58 = landingpad { ptr, i32 }
          cleanup
  br label %61

59:                                               ; preds = %52
  %60 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #7
  br label %61

61:                                               ; preds = %59, %57
  %62 = phi { ptr, i32 } [ %60, %59 ], [ %58, %57 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #7
  br label %63

63:                                               ; preds = %61, %55
  %64 = phi { ptr, i32 } [ %62, %61 ], [ %56, %55 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #7
  br label %79

65:                                               ; preds = %42, %54
  store i8 1, ptr %35, align 8, !tbaa !50
  %66 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node6isNullEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %67 unwind label %46

67:                                               ; preds = %65
  br i1 %66, label %68, label %70

68:                                               ; preds = %67, %74
  %69 = phi ptr [ %33, %74 ], [ %4, %67 ]
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %69)
          to label %78 unwind label %48

70:                                               ; preds = %67
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %71 unwind label %46

71:                                               ; preds = %70
  %72 = invoke noundef zeroext i1 @_ZN11xercesc_2_716NodeIteratorImpl10acceptNodeENS_8DOM_NodeE(ptr noundef nonnull align 8 dereferenceable(57) %1, ptr noundef nonnull %8)
          to label %73 unwind label %76

73:                                               ; preds = %71
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #7
  br i1 %72, label %74, label %36, !llvm.loop !53

74:                                               ; preds = %73
  %75 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %68 unwind label %48

76:                                               ; preds = %71
  %77 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #7
  br label %79

78:                                               ; preds = %68
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7
  br label %83

79:                                               ; preds = %46, %48, %76, %63
  %80 = phi { ptr, i32 } [ %77, %76 ], [ %64, %63 ], [ %47, %46 ], [ %49, %48 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #7
  br label %81

81:                                               ; preds = %79, %44
  %82 = phi { ptr, i32 } [ %80, %79 ], [ %45, %44 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7
  br label %84

83:                                               ; preds = %29, %78
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  ret void

84:                                               ; preds = %81, %30
  %85 = phi { ptr, i32 } [ %31, %30 ], [ %82, %81 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  br label %86

86:                                               ; preds = %21, %24, %84
  %87 = phi { ptr, i32 } [ %22, %24 ], [ %22, %21 ], [ %85, %84 ]
  resume { ptr, i32 } %87

88:                                               ; preds = %15
  unreachable
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

declare void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) unnamed_addr #1

declare void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24), i16 noundef signext, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node6isNullEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
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
  br i1 %14, label %28, label %15

15:                                               ; preds = %4
  %16 = tail call ptr @__cxa_allocate_exception(i64 24) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #7
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef 0)
          to label %17 unwind label %19

17:                                               ; preds = %15
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %16, i16 noundef signext 11, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %18 unwind label %21

18:                                               ; preds = %17
  invoke void @__cxa_throw(ptr nonnull %16, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #8
          to label %114 unwind label %21

19:                                               ; preds = %15
  %20 = landingpad { ptr, i32 }
          cleanup
  br label %24

21:                                               ; preds = %18, %17
  %22 = phi i1 [ false, %18 ], [ true, %17 ]
  %23 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #7
  br label %24

24:                                               ; preds = %21, %19
  %25 = phi { ptr, i32 } [ %23, %21 ], [ %20, %19 ]
  %26 = phi i1 [ %22, %21 ], [ true, %19 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7
  br i1 %26, label %27, label %112

27:                                               ; preds = %24
  call void @__cxa_free_exception(ptr %16) #7
  br label %112

28:                                               ; preds = %4
  %29 = tail call noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node6isNullEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
  br i1 %29, label %30, label %32

30:                                               ; preds = %28
  %31 = getelementptr inbounds %"class.xercesc_2_7::NodeIteratorImpl", ptr %1, i64 0, i32 2
  tail call void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %31)
  br label %111

32:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #7
  call void @_ZN11xercesc_2_78DOM_NodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6)
  br i1 %3, label %33, label %48

33:                                               ; preds = %32
  %34 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node13hasChildNodesEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %35 unwind label %40

35:                                               ; preds = %33
  br i1 %34, label %36, label %48

36:                                               ; preds = %35
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #7
  invoke void @_ZNK11xercesc_2_78DOM_Node13getFirstChildEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %37 unwind label %42

37:                                               ; preds = %36
  %38 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %39 unwind label %44

39:                                               ; preds = %37
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #7
  br label %58

40:                                               ; preds = %58, %106, %55, %48, %33
  %41 = landingpad { ptr, i32 }
          cleanup
  br label %109

42:                                               ; preds = %36
  %43 = landingpad { ptr, i32 }
          cleanup
  br label %46

44:                                               ; preds = %37
  %45 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #7
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi { ptr, i32 } [ %45, %44 ], [ %43, %42 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #7
  br label %109

48:                                               ; preds = %35, %32
  %49 = getelementptr inbounds %"class.xercesc_2_7::NodeIteratorImpl", ptr %1, i64 0, i32 2
  %50 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %49)
          to label %51 unwind label %40

51:                                               ; preds = %48
  br i1 %50, label %52, label %106

52:                                               ; preds = %51
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #7
  invoke void @_ZNK11xercesc_2_78DOM_Node14getNextSiblingEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %53 unwind label %59

53:                                               ; preds = %52
  %54 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %55 unwind label %61

55:                                               ; preds = %53
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #7
  %56 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node6isNullEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %57 unwind label %40

57:                                               ; preds = %55
  br i1 %56, label %65, label %58

58:                                               ; preds = %57, %39
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %108 unwind label %40

59:                                               ; preds = %52
  %60 = landingpad { ptr, i32 }
          cleanup
  br label %63

61:                                               ; preds = %53
  %62 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #7
  br label %63

63:                                               ; preds = %61, %59
  %64 = phi { ptr, i32 } [ %62, %61 ], [ %60, %59 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #7
  br label %109

65:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #7
  invoke void @_ZNK11xercesc_2_78DOM_Node13getParentNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %66 unwind label %79

66:                                               ; preds = %65, %94
  %67 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node6isNullEv(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %68 unwind label %81

68:                                               ; preds = %66
  br i1 %67, label %101, label %69

69:                                               ; preds = %68
  %70 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %49)
          to label %71 unwind label %81

71:                                               ; preds = %69
  br i1 %70, label %72, label %101

72:                                               ; preds = %71
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #7
  invoke void @_ZNK11xercesc_2_78DOM_Node14getNextSiblingEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %73 unwind label %85

73:                                               ; preds = %72
  %74 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %75 unwind label %87

75:                                               ; preds = %73
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #7
  %76 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node6isNullEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %77 unwind label %81

77:                                               ; preds = %75
  br i1 %76, label %91, label %78

78:                                               ; preds = %77
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %107 unwind label %83

79:                                               ; preds = %65
  %80 = landingpad { ptr, i32 }
          cleanup
  br label %104

81:                                               ; preds = %66, %69, %75
  %82 = landingpad { ptr, i32 }
          cleanup
  br label %102

83:                                               ; preds = %78
  %84 = landingpad { ptr, i32 }
          cleanup
  br label %102

85:                                               ; preds = %72
  %86 = landingpad { ptr, i32 }
          cleanup
  br label %89

87:                                               ; preds = %73
  %88 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #7
  br label %89

89:                                               ; preds = %87, %85
  %90 = phi { ptr, i32 } [ %88, %87 ], [ %86, %85 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #7
  br label %102

91:                                               ; preds = %77
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #7
  invoke void @_ZNK11xercesc_2_78DOM_Node13getParentNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %11, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %92 unwind label %95

92:                                               ; preds = %91
  %93 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %94 unwind label %97

94:                                               ; preds = %92
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #7
  br label %66, !llvm.loop !56

95:                                               ; preds = %91
  %96 = landingpad { ptr, i32 }
          cleanup
  br label %99

97:                                               ; preds = %92
  %98 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #7
  br label %99

99:                                               ; preds = %97, %95
  %100 = phi { ptr, i32 } [ %98, %97 ], [ %96, %95 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #7
  br label %102

101:                                              ; preds = %71, %68
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #7
  br label %106

102:                                              ; preds = %81, %83, %99, %89
  %103 = phi { ptr, i32 } [ %100, %99 ], [ %90, %89 ], [ %82, %81 ], [ %84, %83 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #7
  br label %104

104:                                              ; preds = %102, %79
  %105 = phi { ptr, i32 } [ %103, %102 ], [ %80, %79 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #7
  br label %109

106:                                              ; preds = %101, %51
  invoke void @_ZN11xercesc_2_78DOM_NodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %108 unwind label %40

107:                                              ; preds = %78
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #7
  br label %108

108:                                              ; preds = %58, %106, %107
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #7
  br label %111

109:                                              ; preds = %104, %63, %46, %40
  %110 = phi { ptr, i32 } [ %41, %40 ], [ %47, %46 ], [ %105, %104 ], [ %64, %63 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #7
  br label %112

111:                                              ; preds = %108, %30
  ret void

112:                                              ; preds = %24, %27, %109
  %113 = phi { ptr, i32 } [ %25, %27 ], [ %25, %24 ], [ %110, %109 ]
  resume { ptr, i32 } %113

114:                                              ; preds = %18
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_716NodeIteratorImpl10acceptNodeENS_8DOM_NodeE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(57) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = alloca %"class.xercesc_2_7::DOMString", align 8
  %4 = getelementptr inbounds %"class.xercesc_2_7::NodeIteratorImpl", ptr %0, i64 0, i32 6
  %5 = load i8, ptr %4, align 1, !tbaa !47, !range !51, !noundef !52
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %20, label %7

7:                                                ; preds = %2
  %8 = tail call ptr @__cxa_allocate_exception(i64 24) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #7
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 0)
          to label %9 unwind label %11

9:                                                ; preds = %7
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %8, i16 noundef signext 11, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %10 unwind label %13

10:                                               ; preds = %9
  invoke void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #8
          to label %46 unwind label %13

11:                                               ; preds = %7
  %12 = landingpad { ptr, i32 }
          cleanup
  br label %16

13:                                               ; preds = %10, %9
  %14 = phi i1 [ false, %10 ], [ true, %9 ]
  %15 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #7
  br label %16

16:                                               ; preds = %13, %11
  %17 = phi { ptr, i32 } [ %15, %13 ], [ %12, %11 ]
  %18 = phi i1 [ %14, %13 ], [ true, %11 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  br i1 %18, label %19, label %45

19:                                               ; preds = %16
  call void @__cxa_free_exception(ptr %8) #7
  br label %45

20:                                               ; preds = %2
  %21 = getelementptr inbounds %"class.xercesc_2_7::NodeIteratorImpl", ptr %0, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !38
  %23 = icmp eq ptr %22, null
  %24 = getelementptr inbounds %"class.xercesc_2_7::NodeIteratorImpl", ptr %0, i64 0, i32 3
  %25 = load i64, ptr %24, align 8, !tbaa !48
  %26 = tail call noundef signext i16 @_ZNK11xercesc_2_78DOM_Node11getNodeTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %27 = sext i16 %26 to i32
  %28 = add nsw i32 %27, -1
  %29 = shl nuw i32 1, %28
  %30 = sext i32 %29 to i64
  %31 = and i64 %25, %30
  br i1 %23, label %32, label %34

32:                                               ; preds = %20
  %33 = icmp ne i64 %31, 0
  br label %43

34:                                               ; preds = %20
  %35 = icmp eq i64 %31, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %34
  %37 = load ptr, ptr %21, align 8, !tbaa !38
  %38 = load ptr, ptr %37, align 8, !tbaa !35
  %39 = getelementptr inbounds ptr, ptr %38, i64 2
  %40 = load ptr, ptr %39, align 8
  %41 = tail call noundef signext i16 %40(ptr noundef nonnull align 8 dereferenceable(8) %37, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %42 = icmp eq i16 %41, 1
  br label %43

43:                                               ; preds = %34, %36, %32
  %44 = phi i1 [ %33, %32 ], [ false, %34 ], [ %42, %36 ]
  ret i1 %44

45:                                               ; preds = %16, %19
  resume { ptr, i32 } %17

46:                                               ; preds = %10
  unreachable
}

; Function Attrs: cold mustprogress uwtable
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
  br i1 %11, label %25, label %12

12:                                               ; preds = %2
  %13 = tail call ptr @__cxa_allocate_exception(i64 24) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #7
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 0)
          to label %14 unwind label %16

14:                                               ; preds = %12
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %13, i16 noundef signext 11, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %15 unwind label %18

15:                                               ; preds = %14
  invoke void @__cxa_throw(ptr nonnull %13, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #8
          to label %91 unwind label %18

16:                                               ; preds = %12
  %17 = landingpad { ptr, i32 }
          cleanup
  br label %21

18:                                               ; preds = %15, %14
  %19 = phi i1 [ false, %15 ], [ true, %14 ]
  %20 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #7
  br label %21

21:                                               ; preds = %18, %16
  %22 = phi { ptr, i32 } [ %20, %18 ], [ %17, %16 ]
  %23 = phi i1 [ %19, %18 ], [ true, %16 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  br i1 %23, label %24, label %89

24:                                               ; preds = %21
  call void @__cxa_free_exception(ptr %13) #7
  br label %89

25:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #7
  call void @_ZN11xercesc_2_78DOM_NodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4)
  %26 = getelementptr inbounds %"class.xercesc_2_7::NodeIteratorImpl", ptr %1, i64 0, i32 2
  %27 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node6isNullEv(ptr noundef nonnull align 8 dereferenceable(8) %26)
          to label %28 unwind label %34

28:                                               ; preds = %25
  br i1 %27, label %33, label %29

29:                                               ; preds = %28
  %30 = getelementptr inbounds %"class.xercesc_2_7::NodeIteratorImpl", ptr %1, i64 0, i32 8
  %31 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node6isNullEv(ptr noundef nonnull align 8 dereferenceable(8) %30)
          to label %32 unwind label %34

32:                                               ; preds = %29
  br i1 %31, label %33, label %36

33:                                               ; preds = %32, %28
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %86 unwind label %34

34:                                               ; preds = %33, %29, %25
  %35 = landingpad { ptr, i32 }
          cleanup
  br label %87

36:                                               ; preds = %32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #7
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %30)
          to label %37 unwind label %47

37:                                               ; preds = %36
  %38 = getelementptr inbounds %"class.xercesc_2_7::NodeIteratorImpl", ptr %1, i64 0, i32 9
  br label %39

39:                                               ; preds = %37, %76
  %40 = load i8, ptr %38, align 8, !tbaa !50, !range !51, !noundef !52
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %53, label %42

42:                                               ; preds = %39
  %43 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node6isNullEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %44 unwind label %49

44:                                               ; preds = %42
  br i1 %43, label %53, label %45

45:                                               ; preds = %44
  %46 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %30)
          to label %68 unwind label %49

47:                                               ; preds = %36
  %48 = landingpad { ptr, i32 }
          cleanup
  br label %84

49:                                               ; preds = %42, %45, %68, %73
  %50 = landingpad { ptr, i32 }
          cleanup
  br label %82

51:                                               ; preds = %71, %77
  %52 = landingpad { ptr, i32 }
          cleanup
  br label %82

53:                                               ; preds = %44, %39
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #7
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %54 unwind label %58

54:                                               ; preds = %53
  invoke void @_ZN11xercesc_2_716NodeIteratorImpl12previousNodeENS_8DOM_NodeE(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %6, ptr noundef nonnull align 8 dereferenceable(57) %1, ptr noundef nonnull %7)
          to label %55 unwind label %60

55:                                               ; preds = %54
  %56 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %57 unwind label %62

57:                                               ; preds = %55
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #7
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #7
  br label %68

58:                                               ; preds = %53
  %59 = landingpad { ptr, i32 }
          cleanup
  br label %66

60:                                               ; preds = %54
  %61 = landingpad { ptr, i32 }
          cleanup
  br label %64

62:                                               ; preds = %55
  %63 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #7
  br label %64

64:                                               ; preds = %62, %60
  %65 = phi { ptr, i32 } [ %63, %62 ], [ %61, %60 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #7
  br label %66

66:                                               ; preds = %64, %58
  %67 = phi { ptr, i32 } [ %65, %64 ], [ %59, %58 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #7
  br label %82

68:                                               ; preds = %45, %57
  store i8 0, ptr %38, align 8, !tbaa !50
  %69 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node6isNullEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %70 unwind label %49

70:                                               ; preds = %68
  br i1 %69, label %71, label %73

71:                                               ; preds = %70, %77
  %72 = phi ptr [ %30, %77 ], [ %4, %70 ]
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %72)
          to label %81 unwind label %51

73:                                               ; preds = %70
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %74 unwind label %49

74:                                               ; preds = %73
  %75 = invoke noundef zeroext i1 @_ZN11xercesc_2_716NodeIteratorImpl10acceptNodeENS_8DOM_NodeE(ptr noundef nonnull align 8 dereferenceable(57) %1, ptr noundef nonnull %8)
          to label %76 unwind label %79

76:                                               ; preds = %74
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #7
  br i1 %75, label %77, label %39, !llvm.loop !57

77:                                               ; preds = %76
  %78 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %71 unwind label %51

79:                                               ; preds = %74
  %80 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #7
  br label %82

81:                                               ; preds = %71
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7
  br label %86

82:                                               ; preds = %49, %51, %79, %66
  %83 = phi { ptr, i32 } [ %80, %79 ], [ %67, %66 ], [ %50, %49 ], [ %52, %51 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #7
  br label %84

84:                                               ; preds = %82, %47
  %85 = phi { ptr, i32 } [ %83, %82 ], [ %48, %47 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7
  br label %87

86:                                               ; preds = %33, %81
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  ret void

87:                                               ; preds = %84, %34
  %88 = phi { ptr, i32 } [ %35, %34 ], [ %85, %84 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  br label %89

89:                                               ; preds = %21, %24, %87
  %90 = phi { ptr, i32 } [ %22, %24 ], [ %22, %21 ], [ %88, %87 ]
  resume { ptr, i32 } %90

91:                                               ; preds = %15
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_716NodeIteratorImpl12previousNodeENS_8DOM_NodeE(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr noundef nonnull align 8 dereferenceable(57) %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %4 = alloca %"class.xercesc_2_7::DOMString", align 8
  %5 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %6 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %7 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %8 = getelementptr inbounds %"class.xercesc_2_7::NodeIteratorImpl", ptr %1, i64 0, i32 6
  %9 = load i8, ptr %8, align 1, !tbaa !47, !range !51, !noundef !52
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %24, label %11

11:                                               ; preds = %3
  %12 = tail call ptr @__cxa_allocate_exception(i64 24) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #7
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 0)
          to label %13 unwind label %15

13:                                               ; preds = %11
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %12, i16 noundef signext 11, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %14 unwind label %17

14:                                               ; preds = %13
  invoke void @__cxa_throw(ptr nonnull %12, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #8
          to label %75 unwind label %17

15:                                               ; preds = %11
  %16 = landingpad { ptr, i32 }
          cleanup
  br label %20

17:                                               ; preds = %14, %13
  %18 = phi i1 [ false, %14 ], [ true, %13 ]
  %19 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #7
  br label %20

20:                                               ; preds = %17, %15
  %21 = phi { ptr, i32 } [ %19, %17 ], [ %16, %15 ]
  %22 = phi i1 [ %18, %17 ], [ true, %15 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  br i1 %22, label %23, label %73

23:                                               ; preds = %20
  call void @__cxa_free_exception(ptr %12) #7
  br label %73

24:                                               ; preds = %3
  tail call void @_ZN11xercesc_2_78DOM_NodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %25 = getelementptr inbounds %"class.xercesc_2_7::NodeIteratorImpl", ptr %1, i64 0, i32 2
  %26 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeeqERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %25)
          to label %27 unwind label %30

27:                                               ; preds = %24
  br i1 %26, label %70, label %32

28:                                               ; preds = %57
  %29 = landingpad { ptr, i32 }
          cleanup
  br label %71

30:                                               ; preds = %24, %35, %54
  %31 = landingpad { ptr, i32 }
          cleanup
  br label %71

32:                                               ; preds = %27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #7
  invoke void @_ZNK11xercesc_2_78DOM_Node18getPreviousSiblingEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %33 unwind label %42

33:                                               ; preds = %32
  %34 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %35 unwind label %44

35:                                               ; preds = %33
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7
  %36 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node6isNullEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %37 unwind label %30

37:                                               ; preds = %35
  br i1 %36, label %38, label %54

38:                                               ; preds = %37
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #7
  invoke void @_ZNK11xercesc_2_78DOM_Node13getParentNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %39 unwind label %48

39:                                               ; preds = %38
  %40 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %41 unwind label %50

41:                                               ; preds = %39
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #7
  br label %70

42:                                               ; preds = %32
  %43 = landingpad { ptr, i32 }
          cleanup
  br label %46

44:                                               ; preds = %33
  %45 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #7
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi { ptr, i32 } [ %45, %44 ], [ %43, %42 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7
  br label %71

48:                                               ; preds = %38
  %49 = landingpad { ptr, i32 }
          cleanup
  br label %52

50:                                               ; preds = %39
  %51 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #7
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi { ptr, i32 } [ %51, %50 ], [ %49, %48 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #7
  br label %71

54:                                               ; preds = %37
  %55 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node13hasChildNodesEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %56 unwind label %30

56:                                               ; preds = %54
  br i1 %55, label %57, label %70

57:                                               ; preds = %56, %63
  %58 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node13hasChildNodesEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %59 unwind label %28

59:                                               ; preds = %57
  br i1 %58, label %60, label %70

60:                                               ; preds = %59
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #7
  invoke void @_ZNK11xercesc_2_78DOM_Node12getLastChildEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %61 unwind label %64

61:                                               ; preds = %60
  %62 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %63 unwind label %66

63:                                               ; preds = %61
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #7
  br label %57, !llvm.loop !58

64:                                               ; preds = %60
  %65 = landingpad { ptr, i32 }
          cleanup
  br label %68

66:                                               ; preds = %61
  %67 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #7
  br label %68

68:                                               ; preds = %66, %64
  %69 = phi { ptr, i32 } [ %67, %66 ], [ %65, %64 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #7
  br label %71

70:                                               ; preds = %59, %41, %27, %56
  ret void

71:                                               ; preds = %28, %30, %68, %52, %46
  %72 = phi { ptr, i32 } [ %53, %52 ], [ %69, %68 ], [ %47, %46 ], [ %29, %28 ], [ %31, %30 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  br label %73

73:                                               ; preds = %20, %23, %71
  %74 = phi { ptr, i32 } [ %21, %23 ], [ %21, %20 ], [ %72, %71 ]
  resume { ptr, i32 } %74

75:                                               ; preds = %14
  unreachable
}

declare noundef signext i16 @_ZNK11xercesc_2_78DOM_Node11getNodeTypeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_716NodeIteratorImpl17matchNodeOrParentENS_8DOM_NodeE(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr noundef nonnull align 8 dereferenceable(57) %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %4 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %5 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #7
  call void @_ZN11xercesc_2_78DOM_NodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4)
  %6 = getelementptr inbounds %"class.xercesc_2_7::NodeIteratorImpl", ptr %1, i64 0, i32 8
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %7 unwind label %12

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xercesc_2_7::NodeIteratorImpl", ptr %1, i64 0, i32 2
  br label %9

9:                                                ; preds = %7, %22
  %10 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %11 unwind label %14

11:                                               ; preds = %9
  br i1 %10, label %16, label %32

12:                                               ; preds = %32, %3
  %13 = landingpad { ptr, i32 }
          cleanup
  br label %34

14:                                               ; preds = %16, %9
  %15 = landingpad { ptr, i32 }
          cleanup
  br label %30

16:                                               ; preds = %11
  %17 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeeqERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %18 unwind label %14

18:                                               ; preds = %16
  br i1 %17, label %29, label %19

19:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #7
  invoke void @_ZNK11xercesc_2_78DOM_Node13getParentNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %20 unwind label %23

20:                                               ; preds = %19
  %21 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %22 unwind label %25

22:                                               ; preds = %20
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7
  br label %9, !llvm.loop !59

23:                                               ; preds = %19
  %24 = landingpad { ptr, i32 }
          cleanup
  br label %27

25:                                               ; preds = %20
  %26 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #7
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi { ptr, i32 } [ %26, %25 ], [ %24, %23 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7
  br label %30

29:                                               ; preds = %18
  br i1 %10, label %33, label %32

30:                                               ; preds = %27, %14
  %31 = phi { ptr, i32 } [ %28, %27 ], [ %15, %14 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  br label %34

32:                                               ; preds = %11, %29
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %33 unwind label %12

33:                                               ; preds = %29, %32
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  ret void

34:                                               ; preds = %30, %12
  %35 = phi { ptr, i32 } [ %13, %12 ], [ %31, %30 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  resume { ptr, i32 } %35
}

declare noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeeqERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare void @_ZNK11xercesc_2_78DOM_Node13getParentNodeEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_Node") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node13hasChildNodesEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare void @_ZNK11xercesc_2_78DOM_Node13getFirstChildEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_Node") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare void @_ZNK11xercesc_2_78DOM_Node14getNextSiblingEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_Node") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare void @_ZNK11xercesc_2_78DOM_Node18getPreviousSiblingEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_Node") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare void @_ZNK11xercesc_2_78DOM_Node12getLastChildEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_Node") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
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
  br i1 %14, label %28, label %15

15:                                               ; preds = %2
  %16 = tail call ptr @__cxa_allocate_exception(i64 24) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #7
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 0)
          to label %17 unwind label %19

17:                                               ; preds = %15
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %16, i16 noundef signext 11, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %18 unwind label %21

18:                                               ; preds = %17
  invoke void @__cxa_throw(ptr nonnull %16, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #8
          to label %100 unwind label %21

19:                                               ; preds = %15
  %20 = landingpad { ptr, i32 }
          cleanup
  br label %24

21:                                               ; preds = %18, %17
  %22 = phi i1 [ false, %18 ], [ true, %17 ]
  %23 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #7
  br label %24

24:                                               ; preds = %21, %19
  %25 = phi { ptr, i32 } [ %23, %21 ], [ %20, %19 ]
  %26 = phi i1 [ %22, %21 ], [ true, %19 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  br i1 %26, label %27, label %98

27:                                               ; preds = %24
  call void @__cxa_free_exception(ptr %16) #7
  br label %98

28:                                               ; preds = %2
  %29 = tail call noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node6isNullEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  br i1 %29, label %94, label %30

30:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #7
  call void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %1)
  invoke void @_ZN11xercesc_2_716NodeIteratorImpl17matchNodeOrParentENS_8DOM_NodeE(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %4, ptr noundef nonnull align 8 dereferenceable(57) %0, ptr noundef nonnull %5)
          to label %31 unwind label %34

31:                                               ; preds = %30
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #7
  %32 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node6isNullEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %33 unwind label %36

33:                                               ; preds = %31
  br i1 %32, label %93, label %38

34:                                               ; preds = %30
  %35 = landingpad { ptr, i32 }
          cleanup
  br label %95

36:                                               ; preds = %31
  %37 = landingpad { ptr, i32 }
          cleanup
  br label %95

38:                                               ; preds = %33
  %39 = getelementptr inbounds %"class.xercesc_2_7::NodeIteratorImpl", ptr %0, i64 0, i32 9
  %40 = load i8, ptr %39, align 8, !tbaa !50, !range !51, !noundef !52
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %58, label %42

42:                                               ; preds = %38
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #7
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %43 unwind label %48

43:                                               ; preds = %42
  invoke void @_ZN11xercesc_2_716NodeIteratorImpl12previousNodeENS_8DOM_NodeE(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %6, ptr noundef nonnull align 8 dereferenceable(57) %0, ptr noundef nonnull %7)
          to label %44 unwind label %50

44:                                               ; preds = %43
  %45 = getelementptr inbounds %"class.xercesc_2_7::NodeIteratorImpl", ptr %0, i64 0, i32 8
  %46 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %45, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %47 unwind label %52

47:                                               ; preds = %44
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #7
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #7
  br label %93

48:                                               ; preds = %42
  %49 = landingpad { ptr, i32 }
          cleanup
  br label %56

50:                                               ; preds = %43
  %51 = landingpad { ptr, i32 }
          cleanup
  br label %54

52:                                               ; preds = %44
  %53 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #7
  br label %54

54:                                               ; preds = %52, %50
  %55 = phi { ptr, i32 } [ %53, %52 ], [ %51, %50 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #7
  br label %56

56:                                               ; preds = %54, %48
  %57 = phi { ptr, i32 } [ %55, %54 ], [ %49, %48 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #7
  br label %95

58:                                               ; preds = %38
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #7
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %59 unwind label %66

59:                                               ; preds = %58
  invoke void @_ZN11xercesc_2_716NodeIteratorImpl8nextNodeENS_8DOM_NodeEb(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %8, ptr noundef nonnull align 8 dereferenceable(57) %0, ptr noundef nonnull %9, i1 noundef zeroext false)
          to label %60 unwind label %68

60:                                               ; preds = %59
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #7
  %61 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node6isNullEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %62 unwind label %70

62:                                               ; preds = %60
  br i1 %61, label %72, label %63

63:                                               ; preds = %62
  %64 = getelementptr inbounds %"class.xercesc_2_7::NodeIteratorImpl", ptr %0, i64 0, i32 8
  %65 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %64, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %88 unwind label %70

66:                                               ; preds = %58
  %67 = landingpad { ptr, i32 }
          cleanup
  br label %91

68:                                               ; preds = %59
  %69 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #7
  br label %91

70:                                               ; preds = %63, %60
  %71 = landingpad { ptr, i32 }
          cleanup
  br label %89

72:                                               ; preds = %62
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #7
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %73 unwind label %78

73:                                               ; preds = %72
  invoke void @_ZN11xercesc_2_716NodeIteratorImpl12previousNodeENS_8DOM_NodeE(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %10, ptr noundef nonnull align 8 dereferenceable(57) %0, ptr noundef nonnull %11)
          to label %74 unwind label %80

74:                                               ; preds = %73
  %75 = getelementptr inbounds %"class.xercesc_2_7::NodeIteratorImpl", ptr %0, i64 0, i32 8
  %76 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %75, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %77 unwind label %82

77:                                               ; preds = %74
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #7
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #7
  store i8 1, ptr %39, align 8, !tbaa !50
  br label %88

78:                                               ; preds = %72
  %79 = landingpad { ptr, i32 }
          cleanup
  br label %86

80:                                               ; preds = %73
  %81 = landingpad { ptr, i32 }
          cleanup
  br label %84

82:                                               ; preds = %74
  %83 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #7
  br label %84

84:                                               ; preds = %82, %80
  %85 = phi { ptr, i32 } [ %83, %82 ], [ %81, %80 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #7
  br label %86

86:                                               ; preds = %84, %78
  %87 = phi { ptr, i32 } [ %85, %84 ], [ %79, %78 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #7
  br label %89

88:                                               ; preds = %63, %77
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #7
  br label %93

89:                                               ; preds = %86, %70
  %90 = phi { ptr, i32 } [ %87, %86 ], [ %71, %70 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #7
  br label %91

91:                                               ; preds = %89, %68, %66
  %92 = phi { ptr, i32 } [ %90, %89 ], [ %69, %68 ], [ %67, %66 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #7
  br label %95

93:                                               ; preds = %47, %88, %33
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  br label %94

94:                                               ; preds = %28, %93
  ret void

95:                                               ; preds = %36, %56, %91, %34
  %96 = phi ptr [ %5, %34 ], [ %4, %91 ], [ %4, %56 ], [ %4, %36 ]
  %97 = phi { ptr, i32 } [ %35, %34 ], [ %92, %91 ], [ %57, %56 ], [ %37, %36 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %96) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  br label %98

98:                                               ; preds = %24, %27, %95
  %99 = phi { ptr, i32 } [ %25, %27 ], [ %25, %24 ], [ %97, %95 ]
  resume { ptr, i32 } %99

100:                                              ; preds = %18
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_716NodeIteratorImpl12unreferencedEv(ptr noundef nonnull align 8 dereferenceable(57) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %2 = alloca %"class.xercesc_2_7::DOM_Document", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #7
  %3 = getelementptr inbounds %"class.xercesc_2_7::NodeIteratorImpl", ptr %0, i64 0, i32 2
  call void @_ZNK11xercesc_2_78DOM_Node16getOwnerDocumentEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Document") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %4 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node6isNullEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %5 unwind label %12

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8
  %7 = load ptr, ptr %2, align 8
  %8 = select i1 %4, ptr %6, ptr %7
  %9 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %8, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !60
  %11 = icmp eq ptr %10, null
  br i1 %11, label %36, label %14

12:                                               ; preds = %1
  %13 = landingpad { ptr, i32 }
          cleanup
  br label %40

14:                                               ; preds = %5
  %15 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %10, i64 0, i32 2
  %16 = load i32, ptr %15, align 4, !tbaa !67
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %36

18:                                               ; preds = %14, %33
  %19 = phi i32 [ %34, %33 ], [ 0, %14 ]
  %20 = load ptr, ptr %9, align 8, !tbaa !60
  %21 = invoke noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_16NodeIteratorImplEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %20, i32 noundef %19)
          to label %22 unwind label %29

22:                                               ; preds = %18
  %23 = icmp eq ptr %21, %0
  br i1 %23, label %24, label %33

24:                                               ; preds = %22
  %25 = load ptr, ptr %9, align 8, !tbaa !60
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
  br i1 %35, label %36, label %18, !llvm.loop !69

36:                                               ; preds = %33, %14, %5, %24
  %37 = load ptr, ptr %0, align 8, !tbaa !35
  %38 = getelementptr inbounds ptr, ptr %37, i64 1
  %39 = load ptr, ptr %38, align 8
  call void %39(ptr noundef nonnull align 8 dereferenceable(57) %0) #7
  call void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #7
  ret void

40:                                               ; preds = %29, %31, %12
  %41 = phi { ptr, i32 } [ %13, %12 ], [ %30, %29 ], [ %32, %31 ]
  call void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #7
  resume { ptr, i32 } %41
}

declare void @_ZNK11xercesc_2_78DOM_Node16getOwnerDocumentEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_Document") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_16NodeIteratorImplEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !67
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #7
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !70
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
  %15 = load ptr, ptr %14, align 8, !tbaa !71
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !72
  ret ptr %18
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

declare void @_ZN11xercesc_2_714RefCountedImpl10referencedEv(ptr noundef nonnull align 8 dereferenceable(12)) unnamed_addr #1

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

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #2

declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #1

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #7
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #7
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 !prof !34 {
  ret ptr @_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !73
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
attributes #3 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
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
!53 = distinct !{!53, !54, !55}
!54 = !{!"llvm.loop.mustprogress"}
!55 = !{!"llvm.loop.unroll.disable"}
!56 = distinct !{!56, !54, !55}
!57 = distinct !{!57, !54, !55}
!58 = distinct !{!58, !54, !55}
!59 = distinct !{!59, !54, !55}
!60 = !{!61, !44, i64 120}
!61 = !{!"_ZTSN11xercesc_2_712DocumentImplE", !62, i64 0, !44, i64 88, !44, i64 96, !44, i64 104, !44, i64 112, !44, i64 120, !44, i64 128, !44, i64 136, !44, i64 144, !41, i64 152, !46, i64 156, !44, i64 160}
!62 = !{!"_ZTSN11xercesc_2_710ParentNodeE", !63, i64 0, !44, i64 48, !44, i64 56, !41, i64 64, !44, i64 72, !41, i64 80}
!63 = !{!"_ZTSN11xercesc_2_79ChildNodeE", !64, i64 0, !44, i64 32, !44, i64 40}
!64 = !{!"_ZTSN11xercesc_2_78NodeImplE", !65, i64 0, !44, i64 16, !66, i64 24}
!65 = !{!"_ZTSN11xercesc_2_712NodeListImplE", !40, i64 0}
!66 = !{!"short", !42, i64 0}
!67 = !{!68, !41, i64 12}
!68 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_16NodeIteratorImplEEE", !46, i64 8, !41, i64 12, !41, i64 16, !44, i64 24, !44, i64 32}
!69 = distinct !{!69, !54, !55}
!70 = !{!68, !44, i64 32}
!71 = !{!68, !44, i64 24}
!72 = !{!44, !44, i64 0}
!73 = !{!74, !44, i64 40}
!74 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !75, i64 8, !44, i64 16, !41, i64 24, !44, i64 32, !44, i64 40}
!75 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !42, i64 0}
