; ModuleID = 'RangeImpl.cpp'
source_filename = "RangeImpl.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::RangeImpl" = type { %"class.xercesc_2_7::RefCountedImpl.base", %"class.xercesc_2_7::DOM_Node", i32, %"class.xercesc_2_7::DOM_Node", i32, i8, %"class.xercesc_2_7::DOM_Document", i8, %"class.xercesc_2_7::DOM_Node" }
%"class.xercesc_2_7::RefCountedImpl.base" = type <{ ptr, i32 }>
%"class.xercesc_2_7::DOM_Document" = type { %"class.xercesc_2_7::DOM_Node" }
%"class.xercesc_2_7::DOM_Node" = type { ptr }
%"class.xercesc_2_7::DocumentImpl" = type { %"class.xercesc_2_7::ParentNode.base", ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, ptr }
%"class.xercesc_2_7::ParentNode.base" = type <{ %"class.xercesc_2_7::ChildNode", ptr, ptr, i32, [4 x i8], ptr, i32 }>
%"class.xercesc_2_7::ChildNode" = type { %"class.xercesc_2_7::NodeImpl.base", ptr, ptr }
%"class.xercesc_2_7::NodeImpl.base" = type <{ %"class.xercesc_2_7::NodeListImpl.base", [4 x i8], ptr, i16 }>
%"class.xercesc_2_7::NodeListImpl.base" = type { %"class.xercesc_2_7::RefCountedImpl.base" }
%"class.xercesc_2_7::BaseRefVectorOf" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::DOMString" = type { ptr }
%"class.xercesc_2_7::DOM_DocumentFragment" = type { %"class.xercesc_2_7::DOM_Node" }
%"class.xercesc_2_7::DOM_Text" = type { %"class.xercesc_2_7::DOM_CharacterData" }
%"class.xercesc_2_7::DOM_CharacterData" = type { %"class.xercesc_2_7::DOM_Node" }
%"class.xercesc_2_7::NodeImpl" = type <{ %"class.xercesc_2_7::NodeListImpl.base", [4 x i8], ptr, i16, [6 x i8] }>
%"class.xercesc_2_7::BaseRefVectorOf.1" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }

$_ZN11xercesc_2_715BaseRefVectorOfINS_9RangeImplEE9elementAtEj = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_8NodeImplEE9elementAtEj = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_8NodeImplEED2Ev = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_8NodeImplEED0Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_8NodeImplEE12setElementAtEPS1_j = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_8NodeImplEE17removeAllElementsEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_8NodeImplEE15removeElementAtEj = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_8NodeImplEE17removeLastElementEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_8NodeImplEE7cleanupEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_8NodeImplEED2Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_8NodeImplEED0Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_8NodeImplEE19ensureExtraCapacityEj = comdat any

$_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTVN11xercesc_2_711RefVectorOfINS_8NodeImplEEE = comdat any

$_ZTSN11xercesc_2_711RefVectorOfINS_8NodeImplEEE = comdat any

$_ZTSN11xercesc_2_715BaseRefVectorOfINS_8NodeImplEEE = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_715BaseRefVectorOfINS_8NodeImplEEE = comdat any

$_ZTIN11xercesc_2_711RefVectorOfINS_8NodeImplEEE = comdat any

$_ZTVN11xercesc_2_715BaseRefVectorOfINS_8NodeImplEEE = comdat any

@_ZTVN11xercesc_2_79RangeImplE = dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_79RangeImplE, ptr @_ZN11xercesc_2_79RangeImplD2Ev, ptr @_ZN11xercesc_2_79RangeImplD0Ev, ptr @_ZN11xercesc_2_714RefCountedImpl10referencedEv, ptr @_ZN11xercesc_2_79RangeImpl12unreferencedEv] }, align 8
@_ZTIN11xercesc_2_716DOM_DOMExceptionE = external constant ptr
@_ZTIN11xercesc_2_718DOM_RangeExceptionE = external constant ptr
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_79RangeImplE = dso_local constant [26 x i8] c"N11xercesc_2_79RangeImplE\00", align 1
@_ZTIN11xercesc_2_714RefCountedImplE = external constant ptr
@_ZTIN11xercesc_2_79RangeImplE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_79RangeImplE, ptr @_ZTIN11xercesc_2_714RefCountedImplE }, align 8
@_ZN11xercesc_2_78NodeImpl8READONLYE = external local_unnamed_addr constant i16, align 2
@.str = private unnamed_addr constant [33 x i8] c"./xercesc/util/BaseRefVectorOf.c\00", align 1
@_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant [48 x i8] c"N11xercesc_2_730ArrayIndexOutOfBoundsExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE = external constant [0 x i16], align 2
@_ZTVN11xercesc_2_711RefVectorOfINS_8NodeImplEEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_711RefVectorOfINS_8NodeImplEEE, ptr @_ZN11xercesc_2_711RefVectorOfINS_8NodeImplEED2Ev, ptr @_ZN11xercesc_2_711RefVectorOfINS_8NodeImplEED0Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_8NodeImplEE12setElementAtEPS1_j, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_8NodeImplEE17removeAllElementsEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_8NodeImplEE15removeElementAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_8NodeImplEE17removeLastElementEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_8NodeImplEE7cleanupEv] }, comdat, align 8
@_ZTSN11xercesc_2_711RefVectorOfINS_8NodeImplEEE = linkonce_odr dso_local constant [44 x i8] c"N11xercesc_2_711RefVectorOfINS_8NodeImplEEE\00", comdat, align 1
@_ZTSN11xercesc_2_715BaseRefVectorOfINS_8NodeImplEEE = linkonce_odr dso_local constant [48 x i8] c"N11xercesc_2_715BaseRefVectorOfINS_8NodeImplEEE\00", comdat, align 1
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_715BaseRefVectorOfINS_8NodeImplEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_715BaseRefVectorOfINS_8NodeImplEEE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_711RefVectorOfINS_8NodeImplEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_711RefVectorOfINS_8NodeImplEEE, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfINS_8NodeImplEEE }, comdat, align 8
@_ZTVN11xercesc_2_715BaseRefVectorOfINS_8NodeImplEEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfINS_8NodeImplEEE, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_8NodeImplEED2Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_8NodeImplEED0Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_8NodeImplEE12setElementAtEPS1_j, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_8NodeImplEE17removeAllElementsEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_8NodeImplEE15removeElementAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_8NodeImplEE17removeLastElementEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_8NodeImplEE7cleanupEv] }, comdat, align 8

@_ZN11xercesc_2_79RangeImplC1ENS_12DOM_DocumentE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_79RangeImplC2ENS_12DOM_DocumentE
@_ZN11xercesc_2_79RangeImplC1ERKS0_ = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_79RangeImplC2ERKS0_
@_ZN11xercesc_2_79RangeImplD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_79RangeImplD2Ev

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79RangeImplC2ENS_12DOM_DocumentE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  tail call void @_ZN11xercesc_2_714RefCountedImplC2Ev(ptr noundef nonnull align 8 dereferenceable(12) %0)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_79RangeImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %3 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 1
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %4 unwind label %15

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 2
  store i32 0, ptr %5, align 8, !tbaa !38
  %6 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 3
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %7 unwind label %17

7:                                                ; preds = %4
  %8 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 4
  store i32 0, ptr %8, align 8, !tbaa !47
  %9 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 5
  store i8 1, ptr %9, align 4, !tbaa !48
  %10 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 6
  invoke void @_ZN11xercesc_2_712DOM_DocumentC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %11 unwind label %19

11:                                               ; preds = %7
  %12 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 7
  store i8 0, ptr %12, align 8, !tbaa !49
  %13 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 8
  invoke void @_ZN11xercesc_2_78DOM_NodeC1EPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef null)
          to label %14 unwind label %21

14:                                               ; preds = %11
  ret void

15:                                               ; preds = %2
  %16 = landingpad { ptr, i32 }
          cleanup
  br label %27

17:                                               ; preds = %4
  %18 = landingpad { ptr, i32 }
          cleanup
  br label %25

19:                                               ; preds = %7
  %20 = landingpad { ptr, i32 }
          cleanup
  br label %23

21:                                               ; preds = %11
  %22 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #9
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi { ptr, i32 } [ %22, %21 ], [ %20, %19 ]
  tail call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #9
  br label %25

25:                                               ; preds = %23, %17
  %26 = phi { ptr, i32 } [ %24, %23 ], [ %18, %17 ]
  tail call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #9
  br label %27

27:                                               ; preds = %25, %15
  %28 = phi { ptr, i32 } [ %26, %25 ], [ %16, %15 ]
  tail call void @_ZN11xercesc_2_714RefCountedImplD2Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) #9
  resume { ptr, i32 } %28
}

declare void @_ZN11xercesc_2_714RefCountedImplC2Ev(ptr noundef nonnull align 8 dereferenceable(12)) unnamed_addr #1

declare void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

declare void @_ZN11xercesc_2_712DOM_DocumentC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare void @_ZN11xercesc_2_78DOM_NodeC1EPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_714RefCountedImplD2Ev(ptr noundef nonnull align 8 dereferenceable(12)) unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79RangeImplC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  tail call void @_ZN11xercesc_2_714RefCountedImplC2Ev(ptr noundef nonnull align 8 dereferenceable(12) %0)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_79RangeImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %3 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 1
  invoke void @_ZN11xercesc_2_78DOM_NodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %4 unwind label %35

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 3
  invoke void @_ZN11xercesc_2_78DOM_NodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %6 unwind label %37

6:                                                ; preds = %4
  %7 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 6
  invoke void @_ZN11xercesc_2_712DOM_DocumentC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %8 unwind label %39

8:                                                ; preds = %6
  %9 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 8
  invoke void @_ZN11xercesc_2_78DOM_NodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %10 unwind label %41

10:                                               ; preds = %8
  %11 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %1, i64 0, i32 6
  %12 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_712DOM_DocumentaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %13 unwind label %43

13:                                               ; preds = %10
  %14 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %1, i64 0, i32 1
  %15 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %16 unwind label %43

16:                                               ; preds = %13
  %17 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %1, i64 0, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !38
  %19 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 2
  store i32 %18, ptr %19, align 8, !tbaa !38
  %20 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %1, i64 0, i32 3
  %21 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %22 unwind label %43

22:                                               ; preds = %16
  %23 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %1, i64 0, i32 4
  %24 = load i32, ptr %23, align 8, !tbaa !47
  %25 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 4
  store i32 %24, ptr %25, align 8, !tbaa !47
  %26 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %1, i64 0, i32 7
  %27 = load i8, ptr %26, align 8, !tbaa !49, !range !50, !noundef !51
  %28 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 7
  store i8 %27, ptr %28, align 8, !tbaa !49
  %29 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %1, i64 0, i32 5
  %30 = load i8, ptr %29, align 4, !tbaa !48, !range !50, !noundef !51
  %31 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 5
  store i8 %30, ptr %31, align 4, !tbaa !48
  %32 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %1, i64 0, i32 8
  %33 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %32)
          to label %34 unwind label %43

34:                                               ; preds = %22
  ret void

35:                                               ; preds = %2
  %36 = landingpad { ptr, i32 }
          cleanup
  br label %51

37:                                               ; preds = %4
  %38 = landingpad { ptr, i32 }
          cleanup
  br label %49

39:                                               ; preds = %6
  %40 = landingpad { ptr, i32 }
          cleanup
  br label %47

41:                                               ; preds = %8
  %42 = landingpad { ptr, i32 }
          cleanup
  br label %45

43:                                               ; preds = %22, %16, %13, %10
  %44 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #9
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi { ptr, i32 } [ %44, %43 ], [ %42, %41 ]
  tail call void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #9
  br label %47

47:                                               ; preds = %45, %39
  %48 = phi { ptr, i32 } [ %46, %45 ], [ %40, %39 ]
  tail call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #9
  br label %49

49:                                               ; preds = %47, %37
  %50 = phi { ptr, i32 } [ %48, %47 ], [ %38, %37 ]
  tail call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #9
  br label %51

51:                                               ; preds = %49, %35
  %52 = phi { ptr, i32 } [ %50, %49 ], [ %36, %35 ]
  tail call void @_ZN11xercesc_2_714RefCountedImplD2Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) #9
  resume { ptr, i32 } %52
}

declare void @_ZN11xercesc_2_78DOM_NodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare void @_ZN11xercesc_2_712DOM_DocumentC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_712DOM_DocumentaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_79RangeImplD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #3 align 2 !prof !34 {
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_79RangeImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %2 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 8
  tail call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #9
  %3 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 6
  tail call void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #9
  %4 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 3
  tail call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #9
  %5 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #9
  tail call void @_ZN11xercesc_2_714RefCountedImplD2Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) #9
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_79RangeImplD0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #3 align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_79RangeImplD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #9
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #9
  ret void
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79RangeImpl12unreferencedEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !52
  %4 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !53
  %6 = icmp eq ptr %5, null
  br i1 %6, label %28, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %5, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !60
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %28

11:                                               ; preds = %7, %25
  %12 = phi i32 [ %26, %25 ], [ 0, %7 ]
  %13 = load ptr, ptr %2, align 8, !tbaa !52
  %14 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %13, i64 0, i32 8
  %15 = load ptr, ptr %14, align 8, !tbaa !53
  %16 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_9RangeImplEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %15, i32 noundef %12)
  %17 = icmp eq ptr %16, %0
  br i1 %17, label %18, label %25

18:                                               ; preds = %11
  %19 = load ptr, ptr %2, align 8, !tbaa !52
  %20 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %19, i64 0, i32 8
  %21 = load ptr, ptr %20, align 8, !tbaa !53
  %22 = load ptr, ptr %21, align 8, !tbaa !35
  %23 = getelementptr inbounds ptr, ptr %22, i64 4
  %24 = load ptr, ptr %23, align 8
  tail call void %24(ptr noundef nonnull align 8 dereferenceable(40) %21, i32 noundef %12)
  br label %28

25:                                               ; preds = %11
  %26 = add nuw nsw i32 %12, 1
  %27 = icmp eq i32 %26, %9
  br i1 %27, label %28, label %11, !llvm.loop !62

28:                                               ; preds = %25, %7, %1, %18
  %29 = load ptr, ptr %0, align 8, !tbaa !35
  %30 = getelementptr inbounds ptr, ptr %29, i64 1
  %31 = load ptr, ptr %30, align 8
  tail call void %31(ptr noundef nonnull align 8 dereferenceable(72) %0) #9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_9RangeImplEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !60
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #9
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !65
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 249, i32 noundef 116, ptr noundef %9)
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
  %15 = load ptr, ptr %14, align 8, !tbaa !66
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !67
  ret ptr %18
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xercesc_2_79RangeImpl17getStartContainerEv(ptr dead_on_unwind noalias nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1) local_unnamed_addr #0 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %1, i64 0, i32 1
  tail call void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %3)
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_79RangeImpl14getStartOffsetEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(72) %0) local_unnamed_addr #5 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !38
  ret i32 %3
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xercesc_2_79RangeImpl15getEndContainerEv(ptr dead_on_unwind noalias nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1) local_unnamed_addr #0 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %1, i64 0, i32 3
  tail call void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %3)
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_79RangeImpl12getEndOffsetEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(72) %0) local_unnamed_addr #5 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 8, !tbaa !47
  ret i32 %3
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_79RangeImpl12getCollapsedEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %2 = alloca %"class.xercesc_2_7::DOMString", align 8
  %3 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 7
  %4 = load i8, ptr %3, align 8, !tbaa !49, !range !50, !noundef !51
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @__cxa_allocate_exception(i64 24) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #9
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 0)
          to label %8 unwind label %10

8:                                                ; preds = %6
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %7, i16 noundef signext 11, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %9 unwind label %12

9:                                                ; preds = %8
  invoke void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #10
          to label %30 unwind label %12

10:                                               ; preds = %6
  %11 = landingpad { ptr, i32 }
          cleanup
  br label %15

12:                                               ; preds = %9, %8
  %13 = phi i1 [ false, %9 ], [ true, %8 ]
  %14 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #9
  br label %15

15:                                               ; preds = %12, %10
  %16 = phi { ptr, i32 } [ %14, %12 ], [ %11, %10 ]
  %17 = phi i1 [ %13, %12 ], [ true, %10 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #9
  br i1 %17, label %18, label %29

18:                                               ; preds = %15
  call void @__cxa_free_exception(ptr %7) #9
  br label %29

19:                                               ; preds = %1
  %20 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 1
  %21 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 3
  %22 = tail call noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeeqERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull align 8 dereferenceable(8) %21)
  %23 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8
  %25 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 4
  %26 = load i32, ptr %25, align 8
  %27 = icmp eq i32 %24, %26
  %28 = select i1 %22, i1 %27, i1 false
  ret i1 %28

29:                                               ; preds = %15, %18
  resume { ptr, i32 } %16

30:                                               ; preds = %9
  unreachable
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) unnamed_addr #1

declare void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24), i16 noundef signext, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeeqERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79RangeImpl17setStartContainerERKNS_8DOM_NodeE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = alloca %"class.xercesc_2_7::DOMString", align 8
  %4 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 7
  %5 = load i8, ptr %4, align 8, !tbaa !49, !range !50, !noundef !51
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %20, label %7

7:                                                ; preds = %2
  %8 = tail call ptr @__cxa_allocate_exception(i64 24) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 0)
          to label %9 unwind label %11

9:                                                ; preds = %7
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %8, i16 noundef signext 11, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %10 unwind label %13

10:                                               ; preds = %9
  invoke void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #10
          to label %24 unwind label %13

11:                                               ; preds = %7
  %12 = landingpad { ptr, i32 }
          cleanup
  br label %16

13:                                               ; preds = %10, %9
  %14 = phi i1 [ false, %10 ], [ true, %9 ]
  %15 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #9
  br label %16

16:                                               ; preds = %13, %11
  %17 = phi { ptr, i32 } [ %15, %13 ], [ %12, %11 ]
  %18 = phi i1 [ %14, %13 ], [ true, %11 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  call void @__cxa_free_exception(ptr %8) #9
  br label %23

20:                                               ; preds = %2
  %21 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 1
  %22 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef nonnull align 8 dereferenceable(8) %1)
  ret void

23:                                               ; preds = %16, %19
  resume { ptr, i32 } %17

24:                                               ; preds = %10
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79RangeImpl14setStartOffsetEj(ptr nocapture noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = alloca %"class.xercesc_2_7::DOMString", align 8
  %4 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 7
  %5 = load i8, ptr %4, align 8, !tbaa !49, !range !50, !noundef !51
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %20, label %7

7:                                                ; preds = %2
  %8 = tail call ptr @__cxa_allocate_exception(i64 24) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 0)
          to label %9 unwind label %11

9:                                                ; preds = %7
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %8, i16 noundef signext 11, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %10 unwind label %13

10:                                               ; preds = %9
  invoke void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #10
          to label %23 unwind label %13

11:                                               ; preds = %7
  %12 = landingpad { ptr, i32 }
          cleanup
  br label %16

13:                                               ; preds = %10, %9
  %14 = phi i1 [ false, %10 ], [ true, %9 ]
  %15 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #9
  br label %16

16:                                               ; preds = %13, %11
  %17 = phi { ptr, i32 } [ %15, %13 ], [ %12, %11 ]
  %18 = phi i1 [ %14, %13 ], [ true, %11 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  call void @__cxa_free_exception(ptr %8) #9
  br label %22

20:                                               ; preds = %2
  %21 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 2
  store i32 %1, ptr %21, align 8, !tbaa !38
  ret void

22:                                               ; preds = %16, %19
  resume { ptr, i32 } %17

23:                                               ; preds = %10
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79RangeImpl15setEndContainerERKNS_8DOM_NodeE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = alloca %"class.xercesc_2_7::DOMString", align 8
  %4 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 7
  %5 = load i8, ptr %4, align 8, !tbaa !49, !range !50, !noundef !51
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %20, label %7

7:                                                ; preds = %2
  %8 = tail call ptr @__cxa_allocate_exception(i64 24) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 0)
          to label %9 unwind label %11

9:                                                ; preds = %7
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %8, i16 noundef signext 11, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %10 unwind label %13

10:                                               ; preds = %9
  invoke void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #10
          to label %24 unwind label %13

11:                                               ; preds = %7
  %12 = landingpad { ptr, i32 }
          cleanup
  br label %16

13:                                               ; preds = %10, %9
  %14 = phi i1 [ false, %10 ], [ true, %9 ]
  %15 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #9
  br label %16

16:                                               ; preds = %13, %11
  %17 = phi { ptr, i32 } [ %15, %13 ], [ %12, %11 ]
  %18 = phi i1 [ %14, %13 ], [ true, %11 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  call void @__cxa_free_exception(ptr %8) #9
  br label %23

20:                                               ; preds = %2
  %21 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 3
  %22 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef nonnull align 8 dereferenceable(8) %1)
  ret void

23:                                               ; preds = %16, %19
  resume { ptr, i32 } %17

24:                                               ; preds = %10
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79RangeImpl12setEndOffsetEj(ptr nocapture noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = alloca %"class.xercesc_2_7::DOMString", align 8
  %4 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 7
  %5 = load i8, ptr %4, align 8, !tbaa !49, !range !50, !noundef !51
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %20, label %7

7:                                                ; preds = %2
  %8 = tail call ptr @__cxa_allocate_exception(i64 24) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 0)
          to label %9 unwind label %11

9:                                                ; preds = %7
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %8, i16 noundef signext 11, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %10 unwind label %13

10:                                               ; preds = %9
  invoke void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #10
          to label %23 unwind label %13

11:                                               ; preds = %7
  %12 = landingpad { ptr, i32 }
          cleanup
  br label %16

13:                                               ; preds = %10, %9
  %14 = phi i1 [ false, %10 ], [ true, %9 ]
  %15 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #9
  br label %16

16:                                               ; preds = %13, %11
  %17 = phi { ptr, i32 } [ %15, %13 ], [ %12, %11 ]
  %18 = phi i1 [ %14, %13 ], [ true, %11 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  call void @__cxa_free_exception(ptr %8) #9
  br label %22

20:                                               ; preds = %2
  %21 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 4
  store i32 %1, ptr %21, align 8, !tbaa !47
  ret void

22:                                               ; preds = %16, %19
  resume { ptr, i32 } %17

23:                                               ; preds = %10
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79RangeImpl8setStartERKNS_8DOM_NodeEj(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %4 = alloca %"class.xercesc_2_7::DOM_Document", align 8
  %5 = alloca %"class.xercesc_2_7::DOM_Document", align 8
  %6 = alloca %"class.xercesc_2_7::DOM_Document", align 8
  tail call void @_ZNK11xercesc_2_79RangeImpl12validateNodeERKNS_8DOM_NodeE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  tail call void @_ZNK11xercesc_2_79RangeImpl10checkIndexERKNS_8DOM_NodeEj(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2)
  %7 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 1
  %8 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %9 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 2
  store i32 %2, ptr %9, align 8, !tbaa !38
  %10 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  call void @_ZNK11xercesc_2_78DOM_Node16getOwnerDocumentEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Document") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %11 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %12 unwind label %24

12:                                               ; preds = %3
  br i1 %11, label %13, label %17

13:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #9
  invoke void @_ZNK11xercesc_2_78DOM_Node16getOwnerDocumentEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Document") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %14 unwind label %26

14:                                               ; preds = %13
  %15 = load ptr, ptr %5, align 8, !tbaa !52
  %16 = icmp ne ptr %15, null
  br label %17

17:                                               ; preds = %14, %12
  %18 = phi i1 [ %16, %14 ], [ false, %12 ]
  br i1 %11, label %19, label %20

19:                                               ; preds = %17
  call void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  br label %20

20:                                               ; preds = %17, %19
  call void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  br i1 %18, label %21, label %32

21:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #9
  call void @_ZNK11xercesc_2_78DOM_Node16getOwnerDocumentEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Document") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %22 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_712DOM_DocumentaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %23 unwind label %30

23:                                               ; preds = %21
  call void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  call void @_ZN11xercesc_2_79RangeImpl8collapseEb(ptr noundef nonnull align 8 dereferenceable(72) %0, i1 noundef zeroext true)
  br label %32

24:                                               ; preds = %3
  %25 = landingpad { ptr, i32 }
          cleanup
  br label %28

26:                                               ; preds = %13
  %27 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi { ptr, i32 } [ %27, %26 ], [ %25, %24 ]
  call void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  br label %39

30:                                               ; preds = %21
  %31 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  br label %39

32:                                               ; preds = %23, %20
  %33 = call noundef signext i16 @_ZNK11xercesc_2_79RangeImpl21compareBoundaryPointsENS_9DOM_Range10CompareHowEPS0_(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef 3, ptr noundef nonnull %0)
  %34 = icmp eq i16 %33, 1
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  call void @_ZN11xercesc_2_79RangeImpl8collapseEb(ptr noundef nonnull align 8 dereferenceable(72) %0, i1 noundef zeroext true)
  br label %38

36:                                               ; preds = %32
  %37 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 5
  store i8 0, ptr %37, align 4, !tbaa !48
  br label %38

38:                                               ; preds = %36, %35
  ret void

39:                                               ; preds = %30, %28
  %40 = phi { ptr, i32 } [ %31, %30 ], [ %29, %28 ]
  resume { ptr, i32 } %40
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xercesc_2_79RangeImpl12validateNodeERKNS_8DOM_NodeE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = alloca %"class.xercesc_2_7::DOMString", align 8
  %4 = alloca %"class.xercesc_2_7::DOMString", align 8
  %5 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 7
  %6 = load i8, ptr %5, align 8, !tbaa !49, !range !50, !noundef !51
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %21, label %8

8:                                                ; preds = %2
  %9 = tail call ptr @__cxa_allocate_exception(i64 24) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 0)
          to label %10 unwind label %13

10:                                               ; preds = %8
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %9, i16 noundef signext 11, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %11 unwind label %15

11:                                               ; preds = %10
  invoke void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #10
          to label %12 unwind label %15

12:                                               ; preds = %11
  unreachable

13:                                               ; preds = %8
  %14 = landingpad { ptr, i32 }
          cleanup
  br label %18

15:                                               ; preds = %11, %10
  %16 = phi i1 [ false, %11 ], [ true, %10 ]
  %17 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #9
  br label %18

18:                                               ; preds = %15, %13
  %19 = phi { ptr, i32 } [ %17, %15 ], [ %14, %13 ]
  %20 = phi i1 [ %16, %15 ], [ true, %13 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  br i1 %20, label %37, label %40

21:                                               ; preds = %2
  %22 = tail call noundef zeroext i1 @_ZNK11xercesc_2_79RangeImpl19isValidAncestorTypeERKNS_8DOM_NodeE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %1)
  br i1 %22, label %36, label %23

23:                                               ; preds = %21
  %24 = tail call ptr @__cxa_allocate_exception(i64 32) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 0)
          to label %25 unwind label %28

25:                                               ; preds = %23
  invoke void @_ZN11xercesc_2_718DOM_RangeExceptionC1ENS0_18RangeExceptionCodeERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(28) %24, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %26 unwind label %30

26:                                               ; preds = %25
  invoke void @__cxa_throw(ptr nonnull %24, ptr nonnull @_ZTIN11xercesc_2_718DOM_RangeExceptionE, ptr nonnull @_ZN11xercesc_2_718DOM_RangeExceptionD1Ev) #10
          to label %27 unwind label %30

27:                                               ; preds = %26
  unreachable

28:                                               ; preds = %23
  %29 = landingpad { ptr, i32 }
          cleanup
  br label %33

30:                                               ; preds = %26, %25
  %31 = phi i1 [ false, %26 ], [ true, %25 ]
  %32 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #9
  br label %33

33:                                               ; preds = %30, %28
  %34 = phi { ptr, i32 } [ %32, %30 ], [ %29, %28 ]
  %35 = phi i1 [ %31, %30 ], [ true, %28 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  br i1 %35, label %37, label %40

36:                                               ; preds = %21
  ret void

37:                                               ; preds = %33, %18
  %38 = phi ptr [ %9, %18 ], [ %24, %33 ]
  %39 = phi { ptr, i32 } [ %19, %18 ], [ %34, %33 ]
  call void @__cxa_free_exception(ptr %38) #9
  br label %40

40:                                               ; preds = %37, %33, %18
  %41 = phi { ptr, i32 } [ %19, %18 ], [ %34, %33 ], [ %39, %37 ]
  resume { ptr, i32 } %41
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xercesc_2_79RangeImpl10checkIndexERKNS_8DOM_NodeEj(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %4 = alloca %"class.xercesc_2_7::DOMString", align 8
  %5 = alloca %"class.xercesc_2_7::DOMString", align 8
  %6 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %7 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %8 = alloca %"class.xercesc_2_7::DOMString", align 8
  %9 = tail call noundef signext i16 @_ZNK11xercesc_2_78DOM_Node11getNodeTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  switch i16 %9, label %29 [
    i16 8, label %10
    i16 7, label %10
    i16 4, label %10
    i16 3, label %10
  ]

10:                                               ; preds = %3, %3, %3, %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  call void @_ZNK11xercesc_2_78DOM_Node12getNodeValueEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %11 = invoke noundef i32 @_ZNK11xercesc_2_79DOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %12 unwind label %18

12:                                               ; preds = %10
  %13 = icmp ult i32 %11, %2
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  br i1 %13, label %14, label %64

14:                                               ; preds = %12
  %15 = call ptr @__cxa_allocate_exception(i64 24) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #9
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef 0)
          to label %16 unwind label %20

16:                                               ; preds = %14
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %15, i16 noundef signext 1, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %17 unwind label %22

17:                                               ; preds = %16
  invoke void @__cxa_throw(ptr nonnull %15, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #10
          to label %69 unwind label %22

18:                                               ; preds = %10
  %19 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  br label %67

20:                                               ; preds = %14
  %21 = landingpad { ptr, i32 }
          cleanup
  br label %25

22:                                               ; preds = %17, %16
  %23 = phi i1 [ false, %17 ], [ true, %16 ]
  %24 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #9
  br label %25

25:                                               ; preds = %22, %20
  %26 = phi { ptr, i32 } [ %24, %22 ], [ %21, %20 ]
  %27 = phi i1 [ %23, %22 ], [ true, %20 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  br i1 %27, label %28, label %67

28:                                               ; preds = %25
  call void @__cxa_free_exception(ptr %15) #9
  br label %67

29:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #9
  call void @_ZNK11xercesc_2_78DOM_Node13getFirstChildEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %30

30:                                               ; preds = %37, %29
  %31 = phi i32 [ 0, %29 ], [ %38, %37 ]
  %32 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef null)
          to label %33 unwind label %39

33:                                               ; preds = %30
  br i1 %32, label %34, label %47

34:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #9
  invoke void @_ZNK11xercesc_2_78DOM_Node14getNextSiblingEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %35 unwind label %41

35:                                               ; preds = %34
  %36 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %37 unwind label %43

37:                                               ; preds = %35
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #9
  %38 = add i32 %31, 1
  br label %30, !llvm.loop !68

39:                                               ; preds = %30
  %40 = landingpad { ptr, i32 }
          cleanup
  br label %65

41:                                               ; preds = %34
  %42 = landingpad { ptr, i32 }
          cleanup
  br label %45

43:                                               ; preds = %35
  %44 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #9
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi { ptr, i32 } [ %44, %43 ], [ %42, %41 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #9
  br label %65

47:                                               ; preds = %33
  %48 = icmp ult i32 %31, %2
  br i1 %48, label %49, label %63

49:                                               ; preds = %47
  %50 = call ptr @__cxa_allocate_exception(i64 24) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #9
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef 0)
          to label %51 unwind label %54

51:                                               ; preds = %49
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %50, i16 noundef signext 1, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %52 unwind label %56

52:                                               ; preds = %51
  invoke void @__cxa_throw(ptr nonnull %50, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #10
          to label %53 unwind label %56

53:                                               ; preds = %52
  unreachable

54:                                               ; preds = %49
  %55 = landingpad { ptr, i32 }
          cleanup
  br label %59

56:                                               ; preds = %52, %51
  %57 = phi i1 [ false, %52 ], [ true, %51 ]
  %58 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #9
  br label %59

59:                                               ; preds = %56, %54
  %60 = phi { ptr, i32 } [ %58, %56 ], [ %55, %54 ]
  %61 = phi i1 [ %57, %56 ], [ true, %54 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #9
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  call void @__cxa_free_exception(ptr %50) #9
  br label %65

63:                                               ; preds = %47
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  br label %64

64:                                               ; preds = %12, %63
  ret void

65:                                               ; preds = %59, %62, %45, %39
  %66 = phi { ptr, i32 } [ %46, %45 ], [ %60, %62 ], [ %60, %59 ], [ %40, %39 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  br label %67

67:                                               ; preds = %25, %28, %65, %18
  %68 = phi { ptr, i32 } [ %26, %28 ], [ %26, %25 ], [ %19, %18 ], [ %66, %65 ]
  resume { ptr, i32 } %68

69:                                               ; preds = %17
  unreachable
}

declare noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare void @_ZNK11xercesc_2_78DOM_Node16getOwnerDocumentEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_Document") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79RangeImpl8collapseEb(ptr noundef nonnull align 8 dereferenceable(72) %0, i1 noundef zeroext %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = alloca %"class.xercesc_2_7::DOMString", align 8
  %4 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 7
  %5 = load i8, ptr %4, align 8, !tbaa !49, !range !50, !noundef !51
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %20, label %7

7:                                                ; preds = %2
  %8 = tail call ptr @__cxa_allocate_exception(i64 24) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 0)
          to label %9 unwind label %11

9:                                                ; preds = %7
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %8, i16 noundef signext 11, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %10 unwind label %13

10:                                               ; preds = %9
  invoke void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #10
          to label %38 unwind label %13

11:                                               ; preds = %7
  %12 = landingpad { ptr, i32 }
          cleanup
  br label %16

13:                                               ; preds = %10, %9
  %14 = phi i1 [ false, %10 ], [ true, %9 ]
  %15 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #9
  br label %16

16:                                               ; preds = %13, %11
  %17 = phi { ptr, i32 } [ %15, %13 ], [ %12, %11 ]
  %18 = phi i1 [ %14, %13 ], [ true, %11 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  br i1 %18, label %19, label %37

19:                                               ; preds = %16
  call void @__cxa_free_exception(ptr %8) #9
  br label %37

20:                                               ; preds = %2
  br i1 %1, label %21, label %28

21:                                               ; preds = %20
  %22 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 1
  %23 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 3
  %24 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef nonnull align 8 dereferenceable(8) %22)
  %25 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 2
  %26 = load i32, ptr %25, align 8, !tbaa !38
  %27 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 4
  store i32 %26, ptr %27, align 8, !tbaa !47
  br label %35

28:                                               ; preds = %20
  %29 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 3
  %30 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 1
  %31 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull align 8 dereferenceable(8) %29)
  %32 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 4
  %33 = load i32, ptr %32, align 8, !tbaa !47
  %34 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 2
  store i32 %33, ptr %34, align 8, !tbaa !38
  br label %35

35:                                               ; preds = %28, %21
  %36 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 5
  store i8 1, ptr %36, align 4, !tbaa !48
  ret void

37:                                               ; preds = %16, %19
  resume { ptr, i32 } %17

38:                                               ; preds = %10
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef signext i16 @_ZNK11xercesc_2_79RangeImpl21compareBoundaryPointsENS_9DOM_Range10CompareHowEPS0_(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %4 = alloca %"class.xercesc_2_7::DOMString", align 8
  %5 = alloca %"class.xercesc_2_7::DOMString", align 8
  %6 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %7 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %8 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %9 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %10 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %11 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %12 = alloca %"class.xercesc_2_7::DOMString", align 8
  %13 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %14 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %15 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %16 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %17 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %18 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %19 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %20 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 6
  %21 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %2, i64 0, i32 6
  %22 = tail call noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull align 8 dereferenceable(8) %21)
  br i1 %22, label %23, label %36

23:                                               ; preds = %3
  %24 = tail call ptr @__cxa_allocate_exception(i64 24) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 0)
          to label %25 unwind label %27

25:                                               ; preds = %23
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %24, i16 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %26 unwind label %29

26:                                               ; preds = %25
  invoke void @__cxa_throw(ptr nonnull %24, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #10
          to label %265 unwind label %29

27:                                               ; preds = %23
  %28 = landingpad { ptr, i32 }
          cleanup
  br label %32

29:                                               ; preds = %26, %25
  %30 = phi i1 [ false, %26 ], [ true, %25 ]
  %31 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #9
  br label %32

32:                                               ; preds = %29, %27
  %33 = phi { ptr, i32 } [ %31, %29 ], [ %28, %27 ]
  %34 = phi i1 [ %30, %29 ], [ true, %27 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  br i1 %34, label %35, label %263

35:                                               ; preds = %32
  call void @__cxa_free_exception(ptr %24) #9
  br label %263

36:                                               ; preds = %3
  %37 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 7
  %38 = load i8, ptr %37, align 8, !tbaa !49, !range !50, !noundef !51
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %54, label %40

40:                                               ; preds = %36
  %41 = tail call ptr @__cxa_allocate_exception(i64 24) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #9
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef 0)
          to label %42 unwind label %45

42:                                               ; preds = %40
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %41, i16 noundef signext 11, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %43 unwind label %47

43:                                               ; preds = %42
  invoke void @__cxa_throw(ptr nonnull %41, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #10
          to label %44 unwind label %47

44:                                               ; preds = %43
  unreachable

45:                                               ; preds = %40
  %46 = landingpad { ptr, i32 }
          cleanup
  br label %50

47:                                               ; preds = %43, %42
  %48 = phi i1 [ false, %43 ], [ true, %42 ]
  %49 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #9
  br label %50

50:                                               ; preds = %47, %45
  %51 = phi { ptr, i32 } [ %49, %47 ], [ %46, %45 ]
  %52 = phi i1 [ %48, %47 ], [ true, %45 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  br i1 %52, label %53, label %263

53:                                               ; preds = %50
  call void @__cxa_free_exception(ptr %41) #9
  br label %263

54:                                               ; preds = %36
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #9
  call void @_ZN11xercesc_2_78DOM_NodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #9
  invoke void @_ZN11xercesc_2_78DOM_NodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %55 unwind label %56

55:                                               ; preds = %54
  switch i32 %1, label %124 [
    i32 0, label %58
    i32 1, label %76
    i32 3, label %92
    i32 2, label %108
  ]

56:                                               ; preds = %54
  %57 = landingpad { ptr, i32 }
          cleanup
  br label %261

58:                                               ; preds = %55
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #9
  %59 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %2, i64 0, i32 1
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %59)
          to label %60 unwind label %68

60:                                               ; preds = %58
  %61 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %62 unwind label %70

62:                                               ; preds = %60
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #9
  %63 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 1
  %64 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %63)
          to label %65 unwind label %74

65:                                               ; preds = %62
  %66 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %2, i64 0, i32 2
  %67 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 2
  br label %138

68:                                               ; preds = %58
  %69 = landingpad { ptr, i32 }
          cleanup
  br label %72

70:                                               ; preds = %60
  %71 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #9
  br label %72

72:                                               ; preds = %70, %68
  %73 = phi { ptr, i32 } [ %71, %70 ], [ %69, %68 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #9
  br label %259

74:                                               ; preds = %138, %112, %96, %80, %62
  %75 = landingpad { ptr, i32 }
          cleanup
  br label %259

76:                                               ; preds = %55
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #9
  %77 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %2, i64 0, i32 1
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %77)
          to label %78 unwind label %86

78:                                               ; preds = %76
  %79 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %80 unwind label %88

80:                                               ; preds = %78
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #9
  %81 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 3
  %82 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %81)
          to label %83 unwind label %74

83:                                               ; preds = %80
  %84 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %2, i64 0, i32 2
  %85 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 4
  br label %138

86:                                               ; preds = %76
  %87 = landingpad { ptr, i32 }
          cleanup
  br label %90

88:                                               ; preds = %78
  %89 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #9
  br label %90

90:                                               ; preds = %88, %86
  %91 = phi { ptr, i32 } [ %89, %88 ], [ %87, %86 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #9
  br label %259

92:                                               ; preds = %55
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #9
  %93 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %2, i64 0, i32 3
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %93)
          to label %94 unwind label %102

94:                                               ; preds = %92
  %95 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %96 unwind label %104

96:                                               ; preds = %94
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #9
  %97 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 1
  %98 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %97)
          to label %99 unwind label %74

99:                                               ; preds = %96
  %100 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %2, i64 0, i32 4
  %101 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 2
  br label %138

102:                                              ; preds = %92
  %103 = landingpad { ptr, i32 }
          cleanup
  br label %106

104:                                              ; preds = %94
  %105 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #9
  br label %106

106:                                              ; preds = %104, %102
  %107 = phi { ptr, i32 } [ %105, %104 ], [ %103, %102 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #9
  br label %259

108:                                              ; preds = %55
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #9
  %109 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %2, i64 0, i32 3
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %109)
          to label %110 unwind label %118

110:                                              ; preds = %108
  %111 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %112 unwind label %120

112:                                              ; preds = %110
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #9
  %113 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 3
  %114 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %113)
          to label %115 unwind label %74

115:                                              ; preds = %112
  %116 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %2, i64 0, i32 4
  %117 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 4
  br label %138

118:                                              ; preds = %108
  %119 = landingpad { ptr, i32 }
          cleanup
  br label %122

120:                                              ; preds = %110
  %121 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #9
  br label %122

122:                                              ; preds = %120, %118
  %123 = phi { ptr, i32 } [ %121, %120 ], [ %119, %118 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #9
  br label %259

124:                                              ; preds = %55
  %125 = call ptr @__cxa_allocate_exception(i64 24) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #9
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %12, i32 noundef 0)
          to label %126 unwind label %129

126:                                              ; preds = %124
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %125, i16 noundef signext 11, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %127 unwind label %131

127:                                              ; preds = %126
  invoke void @__cxa_throw(ptr nonnull %125, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #10
          to label %128 unwind label %131

128:                                              ; preds = %127
  unreachable

129:                                              ; preds = %124
  %130 = landingpad { ptr, i32 }
          cleanup
  br label %134

131:                                              ; preds = %127, %126
  %132 = phi i1 [ false, %127 ], [ true, %126 ]
  %133 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12) #9
  br label %134

134:                                              ; preds = %131, %129
  %135 = phi { ptr, i32 } [ %133, %131 ], [ %130, %129 ]
  %136 = phi i1 [ %132, %131 ], [ true, %129 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #9
  br i1 %136, label %137, label %259

137:                                              ; preds = %134
  call void @__cxa_free_exception(ptr %125) #9
  br label %259

138:                                              ; preds = %115, %99, %83, %65
  %139 = phi ptr [ %117, %115 ], [ %101, %99 ], [ %85, %83 ], [ %67, %65 ]
  %140 = phi ptr [ %116, %115 ], [ %100, %99 ], [ %84, %83 ], [ %66, %65 ]
  %141 = load i32, ptr %140, align 8, !tbaa !69
  %142 = load i32, ptr %139, align 8, !tbaa !69
  %143 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeeqERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %144 unwind label %74

144:                                              ; preds = %138
  br i1 %143, label %145, label %150

145:                                              ; preds = %144
  %146 = icmp slt i32 %142, %141
  br i1 %146, label %257, label %147

147:                                              ; preds = %145
  %148 = icmp ne i32 %142, %141
  %149 = zext i1 %148 to i16
  br label %257

150:                                              ; preds = %144
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #9
  invoke void @_ZNK11xercesc_2_78DOM_Node13getFirstChildEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %13, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %151 unwind label %154

151:                                              ; preds = %150, %172
  %152 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef null)
          to label %153 unwind label %156

153:                                              ; preds = %151
  br i1 %152, label %158, label %179

154:                                              ; preds = %150
  %155 = landingpad { ptr, i32 }
          cleanup
  br label %183

156:                                              ; preds = %158, %151
  %157 = landingpad { ptr, i32 }
          cleanup
  br label %181

158:                                              ; preds = %153
  %159 = invoke noundef zeroext i1 @_ZN11xercesc_2_79RangeImpl12isAncestorOfERKNS_8DOM_NodeES3_(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %160 unwind label %156

160:                                              ; preds = %158
  br i1 %159, label %161, label %169

161:                                              ; preds = %160
  %162 = invoke noundef zeroext i16 @_ZNK11xercesc_2_79RangeImpl7indexOfERKNS_8DOM_NodeES3_(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %163 unwind label %167

163:                                              ; preds = %161
  %164 = zext i16 %162 to i32
  %165 = icmp sgt i32 %142, %164
  %166 = select i1 %165, i16 1, i16 -1
  br label %179

167:                                              ; preds = %161
  %168 = landingpad { ptr, i32 }
          cleanup
  br label %181

169:                                              ; preds = %160
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #9
  invoke void @_ZNK11xercesc_2_78DOM_Node14getNextSiblingEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %14, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %170 unwind label %173

170:                                              ; preds = %169
  %171 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %172 unwind label %175

172:                                              ; preds = %170
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #9
  br label %151, !llvm.loop !70

173:                                              ; preds = %169
  %174 = landingpad { ptr, i32 }
          cleanup
  br label %177

175:                                              ; preds = %170
  %176 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14) #9
  br label %177

177:                                              ; preds = %175, %173
  %178 = phi { ptr, i32 } [ %176, %175 ], [ %174, %173 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #9
  br label %181

179:                                              ; preds = %153, %163
  %180 = phi i16 [ %166, %163 ], [ undef, %153 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #9
  br i1 %152, label %257, label %185

181:                                              ; preds = %177, %167, %156
  %182 = phi { ptr, i32 } [ %168, %167 ], [ %178, %177 ], [ %157, %156 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13) #9
  br label %183

183:                                              ; preds = %181, %154
  %184 = phi { ptr, i32 } [ %182, %181 ], [ %155, %154 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #9
  br label %259

185:                                              ; preds = %179
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #9
  invoke void @_ZNK11xercesc_2_78DOM_Node13getFirstChildEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %15, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %186 unwind label %189

186:                                              ; preds = %185, %207
  %187 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef null)
          to label %188 unwind label %191

188:                                              ; preds = %186
  br i1 %187, label %193, label %214

189:                                              ; preds = %185
  %190 = landingpad { ptr, i32 }
          cleanup
  br label %218

191:                                              ; preds = %193, %186
  %192 = landingpad { ptr, i32 }
          cleanup
  br label %216

193:                                              ; preds = %188
  %194 = invoke noundef zeroext i1 @_ZN11xercesc_2_79RangeImpl12isAncestorOfERKNS_8DOM_NodeES3_(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %195 unwind label %191

195:                                              ; preds = %193
  br i1 %194, label %196, label %204

196:                                              ; preds = %195
  %197 = invoke noundef zeroext i16 @_ZNK11xercesc_2_79RangeImpl7indexOfERKNS_8DOM_NodeES3_(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %198 unwind label %202

198:                                              ; preds = %196
  %199 = zext i16 %197 to i32
  %200 = icmp sgt i32 %141, %199
  %201 = select i1 %200, i16 -1, i16 1
  br label %214

202:                                              ; preds = %196
  %203 = landingpad { ptr, i32 }
          cleanup
  br label %216

204:                                              ; preds = %195
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #9
  invoke void @_ZNK11xercesc_2_78DOM_Node14getNextSiblingEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %16, ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %205 unwind label %208

205:                                              ; preds = %204
  %206 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %207 unwind label %210

207:                                              ; preds = %205
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %16) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #9
  br label %186, !llvm.loop !71

208:                                              ; preds = %204
  %209 = landingpad { ptr, i32 }
          cleanup
  br label %212

210:                                              ; preds = %205
  %211 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %16) #9
  br label %212

212:                                              ; preds = %210, %208
  %213 = phi { ptr, i32 } [ %211, %210 ], [ %209, %208 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #9
  br label %216

214:                                              ; preds = %188, %198
  %215 = phi i16 [ %201, %198 ], [ %180, %188 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %15) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #9
  br i1 %187, label %257, label %220

216:                                              ; preds = %212, %202, %191
  %217 = phi { ptr, i32 } [ %203, %202 ], [ %213, %212 ], [ %192, %191 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %15) #9
  br label %218

218:                                              ; preds = %216, %189
  %219 = phi { ptr, i32 } [ %217, %216 ], [ %190, %189 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #9
  br label %259

220:                                              ; preds = %214
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #9
  invoke void @_ZNK11xercesc_2_79RangeImpl16commonAncestorOfERKNS_8DOM_NodeES3_(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %17, ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %221 unwind label %225

221:                                              ; preds = %220
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %18) #9
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %222 unwind label %227

222:                                              ; preds = %221, %242
  %223 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeeqERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %224 unwind label %229

224:                                              ; preds = %222
  br i1 %223, label %249, label %231

225:                                              ; preds = %220
  %226 = landingpad { ptr, i32 }
          cleanup
  br label %255

227:                                              ; preds = %221
  %228 = landingpad { ptr, i32 }
          cleanup
  br label %253

229:                                              ; preds = %240, %237, %231, %222
  %230 = landingpad { ptr, i32 }
          cleanup
  br label %251

231:                                              ; preds = %224
  %232 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeeqERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %233 unwind label %229

233:                                              ; preds = %231
  br i1 %232, label %249, label %234

234:                                              ; preds = %233
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %19) #9
  invoke void @_ZNK11xercesc_2_79RangeImpl8nextNodeERKNS_8DOM_NodeEb(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %19, ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %18, i1 noundef zeroext true)
          to label %235 unwind label %243

235:                                              ; preds = %234
  %236 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(8) %19)
          to label %237 unwind label %245

237:                                              ; preds = %235
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %19) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %19) #9
  %238 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef null)
          to label %239 unwind label %229

239:                                              ; preds = %237
  br i1 %238, label %240, label %249

240:                                              ; preds = %239
  %241 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %242 unwind label %229

242:                                              ; preds = %240
  br i1 %241, label %222, label %249, !llvm.loop !72

243:                                              ; preds = %234
  %244 = landingpad { ptr, i32 }
          cleanup
  br label %247

245:                                              ; preds = %235
  %246 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %19) #9
  br label %247

247:                                              ; preds = %245, %243
  %248 = phi { ptr, i32 } [ %246, %245 ], [ %244, %243 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %19) #9
  br label %251

249:                                              ; preds = %242, %239, %233, %224
  %250 = phi i16 [ -1, %224 ], [ 1, %233 ], [ -2, %239 ], [ -2, %242 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %18) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #9
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %17) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #9
  br label %257

251:                                              ; preds = %247, %229
  %252 = phi { ptr, i32 } [ %230, %229 ], [ %248, %247 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %18) #9
  br label %253

253:                                              ; preds = %251, %227
  %254 = phi { ptr, i32 } [ %252, %251 ], [ %228, %227 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #9
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %17) #9
  br label %255

255:                                              ; preds = %253, %225
  %256 = phi { ptr, i32 } [ %254, %253 ], [ %226, %225 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #9
  br label %259

257:                                              ; preds = %147, %145, %214, %179, %249
  %258 = phi i16 [ %250, %249 ], [ %215, %214 ], [ %180, %179 ], [ -1, %145 ], [ %149, %147 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #9
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  ret i16 %258

259:                                              ; preds = %134, %137, %255, %218, %183, %122, %106, %90, %74, %72
  %260 = phi { ptr, i32 } [ %135, %137 ], [ %135, %134 ], [ %256, %255 ], [ %219, %218 ], [ %184, %183 ], [ %75, %74 ], [ %123, %122 ], [ %107, %106 ], [ %91, %90 ], [ %73, %72 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #9
  br label %261

261:                                              ; preds = %259, %56
  %262 = phi { ptr, i32 } [ %260, %259 ], [ %57, %56 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #9
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  br label %263

263:                                              ; preds = %50, %53, %32, %35, %261
  %264 = phi { ptr, i32 } [ %33, %35 ], [ %33, %32 ], [ %51, %53 ], [ %51, %50 ], [ %262, %261 ]
  resume { ptr, i32 } %264

265:                                              ; preds = %26
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79RangeImpl6setEndERKNS_8DOM_NodeEj(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %4 = alloca %"class.xercesc_2_7::DOM_Document", align 8
  %5 = alloca %"class.xercesc_2_7::DOM_Document", align 8
  %6 = alloca %"class.xercesc_2_7::DOM_Document", align 8
  tail call void @_ZNK11xercesc_2_79RangeImpl12validateNodeERKNS_8DOM_NodeE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  tail call void @_ZNK11xercesc_2_79RangeImpl10checkIndexERKNS_8DOM_NodeEj(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2)
  %7 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 3
  %8 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %9 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 4
  store i32 %2, ptr %9, align 8, !tbaa !47
  %10 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  call void @_ZNK11xercesc_2_78DOM_Node16getOwnerDocumentEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Document") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %11 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %12 unwind label %24

12:                                               ; preds = %3
  br i1 %11, label %13, label %17

13:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #9
  invoke void @_ZNK11xercesc_2_78DOM_Node16getOwnerDocumentEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Document") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %14 unwind label %26

14:                                               ; preds = %13
  %15 = load ptr, ptr %5, align 8, !tbaa !52
  %16 = icmp ne ptr %15, null
  br label %17

17:                                               ; preds = %14, %12
  %18 = phi i1 [ %16, %14 ], [ false, %12 ]
  br i1 %11, label %19, label %20

19:                                               ; preds = %17
  call void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  br label %20

20:                                               ; preds = %17, %19
  call void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  br i1 %18, label %21, label %32

21:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #9
  call void @_ZNK11xercesc_2_78DOM_Node16getOwnerDocumentEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Document") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %22 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_712DOM_DocumentaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %23 unwind label %30

23:                                               ; preds = %21
  call void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  call void @_ZN11xercesc_2_79RangeImpl8collapseEb(ptr noundef nonnull align 8 dereferenceable(72) %0, i1 noundef zeroext false)
  br label %32

24:                                               ; preds = %3
  %25 = landingpad { ptr, i32 }
          cleanup
  br label %28

26:                                               ; preds = %13
  %27 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi { ptr, i32 } [ %27, %26 ], [ %25, %24 ]
  call void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  br label %39

30:                                               ; preds = %21
  %31 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  br label %39

32:                                               ; preds = %23, %20
  %33 = call noundef signext i16 @_ZNK11xercesc_2_79RangeImpl21compareBoundaryPointsENS_9DOM_Range10CompareHowEPS0_(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef 3, ptr noundef nonnull %0)
  %34 = icmp eq i16 %33, 1
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  call void @_ZN11xercesc_2_79RangeImpl8collapseEb(ptr noundef nonnull align 8 dereferenceable(72) %0, i1 noundef zeroext false)
  br label %38

36:                                               ; preds = %32
  %37 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 5
  store i8 0, ptr %37, align 4, !tbaa !48
  br label %38

38:                                               ; preds = %36, %35
  ret void

39:                                               ; preds = %30, %28
  %40 = phi { ptr, i32 } [ %31, %30 ], [ %29, %28 ]
  resume { ptr, i32 } %40
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79RangeImpl14setStartBeforeERKNS_8DOM_NodeE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = alloca %"class.xercesc_2_7::DOMString", align 8
  %4 = alloca %"class.xercesc_2_7::DOMString", align 8
  %5 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %6 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %7 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %8 = alloca %"class.xercesc_2_7::DOM_Document", align 8
  %9 = alloca %"class.xercesc_2_7::DOM_Document", align 8
  %10 = alloca %"class.xercesc_2_7::DOM_Document", align 8
  %11 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 7
  %12 = load i8, ptr %11, align 8, !tbaa !49, !range !50, !noundef !51
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %27, label %14

14:                                               ; preds = %2
  %15 = tail call ptr @__cxa_allocate_exception(i64 24) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 0)
          to label %16 unwind label %18

16:                                               ; preds = %14
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %15, i16 noundef signext 11, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %17 unwind label %20

17:                                               ; preds = %16
  invoke void @__cxa_throw(ptr nonnull %15, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #10
          to label %106 unwind label %20

18:                                               ; preds = %14
  %19 = landingpad { ptr, i32 }
          cleanup
  br label %23

20:                                               ; preds = %17, %16
  %21 = phi i1 [ false, %17 ], [ true, %16 ]
  %22 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #9
  br label %23

23:                                               ; preds = %20, %18
  %24 = phi { ptr, i32 } [ %22, %20 ], [ %19, %18 ]
  %25 = phi i1 [ %21, %20 ], [ true, %18 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  br i1 %25, label %26, label %104

26:                                               ; preds = %23
  call void @__cxa_free_exception(ptr %15) #9
  br label %104

27:                                               ; preds = %2
  %28 = tail call noundef zeroext i1 @_ZNK11xercesc_2_79RangeImpl21hasLegalRootContainerERKNS_8DOM_NodeE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %1)
  br i1 %28, label %29, label %36

29:                                               ; preds = %27
  %30 = tail call noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeeqEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef null)
  br i1 %30, label %36, label %31

31:                                               ; preds = %29
  %32 = tail call noundef signext i16 @_ZNK11xercesc_2_78DOM_Node11getNodeTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  switch i16 %32, label %33 [
    i16 9, label %36
    i16 11, label %36
    i16 2, label %36
    i16 6, label %36
    i16 12, label %36
  ]

33:                                               ; preds = %31
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #9
  call void @_ZNK11xercesc_2_78DOM_Node13getParentNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %34 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 1
  %35 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %34, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %50 unwind label %60

36:                                               ; preds = %31, %31, %31, %31, %29, %27, %31
  %37 = tail call ptr @__cxa_allocate_exception(i64 32) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 0)
          to label %38 unwind label %41

38:                                               ; preds = %36
  invoke void @_ZN11xercesc_2_718DOM_RangeExceptionC1ENS0_18RangeExceptionCodeERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(28) %37, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %39 unwind label %43

39:                                               ; preds = %38
  invoke void @__cxa_throw(ptr nonnull %37, ptr nonnull @_ZTIN11xercesc_2_718DOM_RangeExceptionE, ptr nonnull @_ZN11xercesc_2_718DOM_RangeExceptionD1Ev) #10
          to label %40 unwind label %43

40:                                               ; preds = %39
  unreachable

41:                                               ; preds = %36
  %42 = landingpad { ptr, i32 }
          cleanup
  br label %46

43:                                               ; preds = %39, %38
  %44 = phi i1 [ false, %39 ], [ true, %38 ]
  %45 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #9
  br label %46

46:                                               ; preds = %43, %41
  %47 = phi { ptr, i32 } [ %45, %43 ], [ %42, %41 ]
  %48 = phi i1 [ %44, %43 ], [ true, %41 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  br i1 %48, label %49, label %104

49:                                               ; preds = %46
  call void @__cxa_free_exception(ptr %37) #9
  br label %104

50:                                               ; preds = %33
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #9
  call void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %51

51:                                               ; preds = %68, %50
  %52 = phi i32 [ 0, %50 ], [ %65, %68 ]
  %53 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef null)
          to label %54 unwind label %62

54:                                               ; preds = %51
  br i1 %53, label %64, label %55

55:                                               ; preds = %54
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  %56 = call i32 @llvm.usub.sat.i32(i32 %52, i32 1)
  %57 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 2
  store i32 %56, ptr %57, align 8, !tbaa !38
  %58 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #9
  call void @_ZNK11xercesc_2_78DOM_Node16getOwnerDocumentEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Document") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %59 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %58, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %77 unwind label %89

60:                                               ; preds = %33
  %61 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  br label %104

62:                                               ; preds = %51
  %63 = landingpad { ptr, i32 }
          cleanup
  br label %75

64:                                               ; preds = %54
  %65 = add i32 %52, 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #9
  invoke void @_ZNK11xercesc_2_78DOM_Node18getPreviousSiblingEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %66 unwind label %69

66:                                               ; preds = %64
  %67 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %68 unwind label %71

68:                                               ; preds = %66
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #9
  br label %51, !llvm.loop !73

69:                                               ; preds = %64
  %70 = landingpad { ptr, i32 }
          cleanup
  br label %73

71:                                               ; preds = %66
  %72 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #9
  br label %73

73:                                               ; preds = %71, %69
  %74 = phi { ptr, i32 } [ %72, %71 ], [ %70, %69 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #9
  br label %75

75:                                               ; preds = %73, %62
  %76 = phi { ptr, i32 } [ %74, %73 ], [ %63, %62 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  br label %104

77:                                               ; preds = %55
  br i1 %59, label %78, label %82

78:                                               ; preds = %77
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #9
  invoke void @_ZNK11xercesc_2_78DOM_Node16getOwnerDocumentEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Document") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %79 unwind label %91

79:                                               ; preds = %78
  %80 = load ptr, ptr %9, align 8, !tbaa !52
  %81 = icmp ne ptr %80, null
  br label %82

82:                                               ; preds = %79, %77
  %83 = phi i1 [ %81, %79 ], [ false, %77 ]
  br i1 %59, label %84, label %85

84:                                               ; preds = %82
  call void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #9
  br label %85

85:                                               ; preds = %82, %84
  call void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #9
  br i1 %83, label %86, label %97

86:                                               ; preds = %85
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #9
  call void @_ZNK11xercesc_2_78DOM_Node16getOwnerDocumentEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Document") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %87 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_712DOM_DocumentaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %58, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %88 unwind label %95

88:                                               ; preds = %86
  call void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #9
  call void @_ZN11xercesc_2_79RangeImpl8collapseEb(ptr noundef nonnull align 8 dereferenceable(72) %0, i1 noundef zeroext true)
  br label %97

89:                                               ; preds = %55
  %90 = landingpad { ptr, i32 }
          cleanup
  br label %93

91:                                               ; preds = %78
  %92 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #9
  br label %93

93:                                               ; preds = %91, %89
  %94 = phi { ptr, i32 } [ %92, %91 ], [ %90, %89 ]
  call void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #9
  br label %104

95:                                               ; preds = %86
  %96 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #9
  br label %104

97:                                               ; preds = %88, %85
  %98 = call noundef signext i16 @_ZNK11xercesc_2_79RangeImpl21compareBoundaryPointsENS_9DOM_Range10CompareHowEPS0_(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef 3, ptr noundef nonnull %0)
  %99 = icmp eq i16 %98, 1
  br i1 %99, label %100, label %101

100:                                              ; preds = %97
  call void @_ZN11xercesc_2_79RangeImpl8collapseEb(ptr noundef nonnull align 8 dereferenceable(72) %0, i1 noundef zeroext true)
  br label %103

101:                                              ; preds = %97
  %102 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 5
  store i8 0, ptr %102, align 4, !tbaa !48
  br label %103

103:                                              ; preds = %101, %100
  ret void

104:                                              ; preds = %75, %93, %95, %46, %49, %23, %26, %60
  %105 = phi { ptr, i32 } [ %24, %26 ], [ %24, %23 ], [ %61, %60 ], [ %47, %49 ], [ %47, %46 ], [ %76, %75 ], [ %96, %95 ], [ %94, %93 ]
  resume { ptr, i32 } %105

106:                                              ; preds = %17
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_79RangeImpl21hasLegalRootContainerERKNS_8DOM_NodeE(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %4 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %5 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %6 = tail call noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeeqEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef null)
  br i1 %6, label %41, label %7

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  call void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %8

8:                                                ; preds = %15, %7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  invoke void @_ZNK11xercesc_2_78DOM_Node13getParentNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %9 unwind label %16

9:                                                ; preds = %8
  %10 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef null)
          to label %11 unwind label %18

11:                                               ; preds = %9
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  br i1 %10, label %12, label %28

12:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #9
  invoke void @_ZNK11xercesc_2_78DOM_Node13getParentNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %13 unwind label %22

13:                                               ; preds = %12
  %14 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %15 unwind label %24

15:                                               ; preds = %13
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  br label %8, !llvm.loop !74

16:                                               ; preds = %8
  %17 = landingpad { ptr, i32 }
          cleanup
  br label %20

18:                                               ; preds = %9
  %19 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #9
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi { ptr, i32 } [ %19, %18 ], [ %17, %16 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  br label %39

22:                                               ; preds = %12
  %23 = landingpad { ptr, i32 }
          cleanup
  br label %26

24:                                               ; preds = %13
  %25 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #9
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi { ptr, i32 } [ %25, %24 ], [ %23, %22 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  br label %39

28:                                               ; preds = %11
  %29 = invoke noundef signext i16 @_ZNK11xercesc_2_78DOM_Node11getNodeTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %30 unwind label %37

30:                                               ; preds = %28
  %31 = icmp ult i16 %29, 12
  %32 = trunc i16 %29 to i12
  %33 = lshr i12 -1532, %32
  %34 = and i12 %33, 1
  %35 = icmp ne i12 %34, 0
  %36 = select i1 %31, i1 %35, i1 false
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  br label %41

37:                                               ; preds = %28
  %38 = landingpad { ptr, i32 }
          cleanup
  br label %39

39:                                               ; preds = %37, %26, %20
  %40 = phi { ptr, i32 } [ %27, %26 ], [ %38, %37 ], [ %21, %20 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  resume { ptr, i32 } %40

41:                                               ; preds = %2, %30
  %42 = phi i1 [ %36, %30 ], [ false, %2 ]
  ret i1 %42
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_79RangeImpl20isLegalContainedNodeERKNS_8DOM_NodeE(ptr nocapture noundef nonnull readnone align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 !prof !34 {
  %3 = tail call noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeeqEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef null)
  br i1 %3, label %12, label %4

4:                                                ; preds = %2
  %5 = tail call noundef signext i16 @_ZNK11xercesc_2_78DOM_Node11getNodeTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %6 = icmp ult i16 %5, 13
  br i1 %6, label %7, label %12

7:                                                ; preds = %4
  %8 = trunc i16 %5 to i13
  %9 = lshr i13 1467, %8
  %10 = and i13 %9, 1
  %11 = icmp ne i13 %10, 0
  br label %12

12:                                               ; preds = %4, %7, %2
  %13 = phi i1 [ false, %2 ], [ %11, %7 ], [ true, %4 ]
  ret i1 %13
}

declare void @_ZN11xercesc_2_718DOM_RangeExceptionC1ENS0_18RangeExceptionCodeERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(28), i32 noundef, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_718DOM_RangeExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #2

declare void @_ZNK11xercesc_2_78DOM_Node13getParentNodeEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_Node") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #1

declare void @_ZNK11xercesc_2_78DOM_Node18getPreviousSiblingEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_Node") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79RangeImpl13setStartAfterERKNS_8DOM_NodeE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = alloca %"class.xercesc_2_7::DOMString", align 8
  %4 = alloca %"class.xercesc_2_7::DOMString", align 8
  %5 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %6 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %7 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %8 = alloca %"class.xercesc_2_7::DOM_Document", align 8
  %9 = alloca %"class.xercesc_2_7::DOM_Document", align 8
  %10 = alloca %"class.xercesc_2_7::DOM_Document", align 8
  %11 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 7
  %12 = load i8, ptr %11, align 8, !tbaa !49, !range !50, !noundef !51
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %27, label %14

14:                                               ; preds = %2
  %15 = tail call ptr @__cxa_allocate_exception(i64 24) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 0)
          to label %16 unwind label %18

16:                                               ; preds = %14
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %15, i16 noundef signext 11, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %17 unwind label %20

17:                                               ; preds = %16
  invoke void @__cxa_throw(ptr nonnull %15, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #10
          to label %105 unwind label %20

18:                                               ; preds = %14
  %19 = landingpad { ptr, i32 }
          cleanup
  br label %23

20:                                               ; preds = %17, %16
  %21 = phi i1 [ false, %17 ], [ true, %16 ]
  %22 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #9
  br label %23

23:                                               ; preds = %20, %18
  %24 = phi { ptr, i32 } [ %22, %20 ], [ %19, %18 ]
  %25 = phi i1 [ %21, %20 ], [ true, %18 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  br i1 %25, label %26, label %103

26:                                               ; preds = %23
  call void @__cxa_free_exception(ptr %15) #9
  br label %103

27:                                               ; preds = %2
  %28 = tail call noundef zeroext i1 @_ZNK11xercesc_2_79RangeImpl21hasLegalRootContainerERKNS_8DOM_NodeE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %1)
  br i1 %28, label %29, label %36

29:                                               ; preds = %27
  %30 = tail call noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeeqEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef null)
  br i1 %30, label %36, label %31

31:                                               ; preds = %29
  %32 = tail call noundef signext i16 @_ZNK11xercesc_2_78DOM_Node11getNodeTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  switch i16 %32, label %33 [
    i16 9, label %36
    i16 11, label %36
    i16 2, label %36
    i16 6, label %36
    i16 12, label %36
  ]

33:                                               ; preds = %31
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #9
  call void @_ZNK11xercesc_2_78DOM_Node13getParentNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %34 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 1
  %35 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %34, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %50 unwind label %59

36:                                               ; preds = %31, %31, %31, %31, %29, %27, %31
  %37 = tail call ptr @__cxa_allocate_exception(i64 32) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 0)
          to label %38 unwind label %41

38:                                               ; preds = %36
  invoke void @_ZN11xercesc_2_718DOM_RangeExceptionC1ENS0_18RangeExceptionCodeERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(28) %37, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %39 unwind label %43

39:                                               ; preds = %38
  invoke void @__cxa_throw(ptr nonnull %37, ptr nonnull @_ZTIN11xercesc_2_718DOM_RangeExceptionE, ptr nonnull @_ZN11xercesc_2_718DOM_RangeExceptionD1Ev) #10
          to label %40 unwind label %43

40:                                               ; preds = %39
  unreachable

41:                                               ; preds = %36
  %42 = landingpad { ptr, i32 }
          cleanup
  br label %46

43:                                               ; preds = %39, %38
  %44 = phi i1 [ false, %39 ], [ true, %38 ]
  %45 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #9
  br label %46

46:                                               ; preds = %43, %41
  %47 = phi { ptr, i32 } [ %45, %43 ], [ %42, %41 ]
  %48 = phi i1 [ %44, %43 ], [ true, %41 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  br i1 %48, label %49, label %103

49:                                               ; preds = %46
  call void @__cxa_free_exception(ptr %37) #9
  br label %103

50:                                               ; preds = %33
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #9
  call void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %51

51:                                               ; preds = %67, %50
  %52 = phi i32 [ 0, %50 ], [ %64, %67 ]
  %53 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef null)
          to label %54 unwind label %61

54:                                               ; preds = %51
  br i1 %53, label %63, label %55

55:                                               ; preds = %54
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  %56 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 2
  store i32 %52, ptr %56, align 8, !tbaa !38
  %57 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #9
  call void @_ZNK11xercesc_2_78DOM_Node16getOwnerDocumentEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Document") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %58 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %57, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %76 unwind label %88

59:                                               ; preds = %33
  %60 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  br label %103

61:                                               ; preds = %51
  %62 = landingpad { ptr, i32 }
          cleanup
  br label %74

63:                                               ; preds = %54
  %64 = add i32 %52, 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #9
  invoke void @_ZNK11xercesc_2_78DOM_Node18getPreviousSiblingEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %65 unwind label %68

65:                                               ; preds = %63
  %66 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %67 unwind label %70

67:                                               ; preds = %65
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #9
  br label %51, !llvm.loop !75

68:                                               ; preds = %63
  %69 = landingpad { ptr, i32 }
          cleanup
  br label %72

70:                                               ; preds = %65
  %71 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #9
  br label %72

72:                                               ; preds = %70, %68
  %73 = phi { ptr, i32 } [ %71, %70 ], [ %69, %68 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #9
  br label %74

74:                                               ; preds = %72, %61
  %75 = phi { ptr, i32 } [ %73, %72 ], [ %62, %61 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  br label %103

76:                                               ; preds = %55
  br i1 %58, label %77, label %81

77:                                               ; preds = %76
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #9
  invoke void @_ZNK11xercesc_2_78DOM_Node16getOwnerDocumentEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Document") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %78 unwind label %90

78:                                               ; preds = %77
  %79 = load ptr, ptr %9, align 8, !tbaa !52
  %80 = icmp ne ptr %79, null
  br label %81

81:                                               ; preds = %78, %76
  %82 = phi i1 [ %80, %78 ], [ false, %76 ]
  br i1 %58, label %83, label %84

83:                                               ; preds = %81
  call void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #9
  br label %84

84:                                               ; preds = %81, %83
  call void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #9
  br i1 %82, label %85, label %96

85:                                               ; preds = %84
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #9
  call void @_ZNK11xercesc_2_78DOM_Node16getOwnerDocumentEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Document") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %86 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_712DOM_DocumentaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %57, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %87 unwind label %94

87:                                               ; preds = %85
  call void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #9
  call void @_ZN11xercesc_2_79RangeImpl8collapseEb(ptr noundef nonnull align 8 dereferenceable(72) %0, i1 noundef zeroext true)
  br label %96

88:                                               ; preds = %55
  %89 = landingpad { ptr, i32 }
          cleanup
  br label %92

90:                                               ; preds = %77
  %91 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #9
  br label %92

92:                                               ; preds = %90, %88
  %93 = phi { ptr, i32 } [ %91, %90 ], [ %89, %88 ]
  call void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #9
  br label %103

94:                                               ; preds = %85
  %95 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #9
  br label %103

96:                                               ; preds = %87, %84
  %97 = call noundef signext i16 @_ZNK11xercesc_2_79RangeImpl21compareBoundaryPointsENS_9DOM_Range10CompareHowEPS0_(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef 3, ptr noundef nonnull %0)
  %98 = icmp eq i16 %97, 1
  br i1 %98, label %99, label %100

99:                                               ; preds = %96
  call void @_ZN11xercesc_2_79RangeImpl8collapseEb(ptr noundef nonnull align 8 dereferenceable(72) %0, i1 noundef zeroext true)
  br label %102

100:                                              ; preds = %96
  %101 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 5
  store i8 0, ptr %101, align 4, !tbaa !48
  br label %102

102:                                              ; preds = %100, %99
  ret void

103:                                              ; preds = %74, %92, %94, %46, %49, %23, %26, %59
  %104 = phi { ptr, i32 } [ %24, %26 ], [ %24, %23 ], [ %60, %59 ], [ %47, %49 ], [ %47, %46 ], [ %75, %74 ], [ %95, %94 ], [ %93, %92 ]
  resume { ptr, i32 } %104

105:                                              ; preds = %17
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79RangeImpl12setEndBeforeERKNS_8DOM_NodeE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = alloca %"class.xercesc_2_7::DOMString", align 8
  %4 = alloca %"class.xercesc_2_7::DOMString", align 8
  %5 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %6 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %7 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %8 = alloca %"class.xercesc_2_7::DOM_Document", align 8
  %9 = alloca %"class.xercesc_2_7::DOM_Document", align 8
  %10 = alloca %"class.xercesc_2_7::DOM_Document", align 8
  %11 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 7
  %12 = load i8, ptr %11, align 8, !tbaa !49, !range !50, !noundef !51
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %27, label %14

14:                                               ; preds = %2
  %15 = tail call ptr @__cxa_allocate_exception(i64 24) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 0)
          to label %16 unwind label %18

16:                                               ; preds = %14
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %15, i16 noundef signext 11, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %17 unwind label %20

17:                                               ; preds = %16
  invoke void @__cxa_throw(ptr nonnull %15, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #10
          to label %106 unwind label %20

18:                                               ; preds = %14
  %19 = landingpad { ptr, i32 }
          cleanup
  br label %23

20:                                               ; preds = %17, %16
  %21 = phi i1 [ false, %17 ], [ true, %16 ]
  %22 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #9
  br label %23

23:                                               ; preds = %20, %18
  %24 = phi { ptr, i32 } [ %22, %20 ], [ %19, %18 ]
  %25 = phi i1 [ %21, %20 ], [ true, %18 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  br i1 %25, label %26, label %104

26:                                               ; preds = %23
  call void @__cxa_free_exception(ptr %15) #9
  br label %104

27:                                               ; preds = %2
  %28 = tail call noundef zeroext i1 @_ZNK11xercesc_2_79RangeImpl21hasLegalRootContainerERKNS_8DOM_NodeE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %1)
  br i1 %28, label %29, label %36

29:                                               ; preds = %27
  %30 = tail call noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeeqEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef null)
  br i1 %30, label %36, label %31

31:                                               ; preds = %29
  %32 = tail call noundef signext i16 @_ZNK11xercesc_2_78DOM_Node11getNodeTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  switch i16 %32, label %33 [
    i16 9, label %36
    i16 11, label %36
    i16 2, label %36
    i16 6, label %36
    i16 12, label %36
  ]

33:                                               ; preds = %31
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #9
  call void @_ZNK11xercesc_2_78DOM_Node13getParentNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %34 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 3
  %35 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %34, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %50 unwind label %60

36:                                               ; preds = %31, %31, %31, %31, %29, %27, %31
  %37 = tail call ptr @__cxa_allocate_exception(i64 32) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 0)
          to label %38 unwind label %41

38:                                               ; preds = %36
  invoke void @_ZN11xercesc_2_718DOM_RangeExceptionC1ENS0_18RangeExceptionCodeERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(28) %37, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %39 unwind label %43

39:                                               ; preds = %38
  invoke void @__cxa_throw(ptr nonnull %37, ptr nonnull @_ZTIN11xercesc_2_718DOM_RangeExceptionE, ptr nonnull @_ZN11xercesc_2_718DOM_RangeExceptionD1Ev) #10
          to label %40 unwind label %43

40:                                               ; preds = %39
  unreachable

41:                                               ; preds = %36
  %42 = landingpad { ptr, i32 }
          cleanup
  br label %46

43:                                               ; preds = %39, %38
  %44 = phi i1 [ false, %39 ], [ true, %38 ]
  %45 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #9
  br label %46

46:                                               ; preds = %43, %41
  %47 = phi { ptr, i32 } [ %45, %43 ], [ %42, %41 ]
  %48 = phi i1 [ %44, %43 ], [ true, %41 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  br i1 %48, label %49, label %104

49:                                               ; preds = %46
  call void @__cxa_free_exception(ptr %37) #9
  br label %104

50:                                               ; preds = %33
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #9
  call void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %51

51:                                               ; preds = %67, %50
  %52 = phi i32 [ 0, %50 ], [ %68, %67 ]
  %53 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef null)
          to label %54 unwind label %62

54:                                               ; preds = %51
  br i1 %53, label %64, label %55

55:                                               ; preds = %54
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  %56 = call i32 @llvm.usub.sat.i32(i32 %52, i32 1)
  %57 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 4
  store i32 %56, ptr %57, align 8, !tbaa !47
  %58 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #9
  call void @_ZNK11xercesc_2_78DOM_Node16getOwnerDocumentEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Document") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %59 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %58, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %77 unwind label %89

60:                                               ; preds = %33
  %61 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  br label %104

62:                                               ; preds = %51
  %63 = landingpad { ptr, i32 }
          cleanup
  br label %75

64:                                               ; preds = %54
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #9
  invoke void @_ZNK11xercesc_2_78DOM_Node18getPreviousSiblingEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %65 unwind label %69

65:                                               ; preds = %64
  %66 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %67 unwind label %71

67:                                               ; preds = %65
  %68 = add i32 %52, 1
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #9
  br label %51, !llvm.loop !76

69:                                               ; preds = %64
  %70 = landingpad { ptr, i32 }
          cleanup
  br label %73

71:                                               ; preds = %65
  %72 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #9
  br label %73

73:                                               ; preds = %71, %69
  %74 = phi { ptr, i32 } [ %72, %71 ], [ %70, %69 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #9
  br label %75

75:                                               ; preds = %73, %62
  %76 = phi { ptr, i32 } [ %74, %73 ], [ %63, %62 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  br label %104

77:                                               ; preds = %55
  br i1 %59, label %78, label %82

78:                                               ; preds = %77
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #9
  invoke void @_ZNK11xercesc_2_78DOM_Node16getOwnerDocumentEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Document") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %79 unwind label %91

79:                                               ; preds = %78
  %80 = load ptr, ptr %9, align 8, !tbaa !52
  %81 = icmp ne ptr %80, null
  br label %82

82:                                               ; preds = %79, %77
  %83 = phi i1 [ %81, %79 ], [ false, %77 ]
  br i1 %59, label %84, label %85

84:                                               ; preds = %82
  call void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #9
  br label %85

85:                                               ; preds = %82, %84
  call void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #9
  br i1 %83, label %86, label %97

86:                                               ; preds = %85
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #9
  call void @_ZNK11xercesc_2_78DOM_Node16getOwnerDocumentEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Document") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %87 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_712DOM_DocumentaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %58, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %88 unwind label %95

88:                                               ; preds = %86
  call void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #9
  call void @_ZN11xercesc_2_79RangeImpl8collapseEb(ptr noundef nonnull align 8 dereferenceable(72) %0, i1 noundef zeroext true)
  br label %97

89:                                               ; preds = %55
  %90 = landingpad { ptr, i32 }
          cleanup
  br label %93

91:                                               ; preds = %78
  %92 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #9
  br label %93

93:                                               ; preds = %91, %89
  %94 = phi { ptr, i32 } [ %92, %91 ], [ %90, %89 ]
  call void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #9
  br label %104

95:                                               ; preds = %86
  %96 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #9
  br label %104

97:                                               ; preds = %88, %85
  %98 = call noundef signext i16 @_ZNK11xercesc_2_79RangeImpl21compareBoundaryPointsENS_9DOM_Range10CompareHowEPS0_(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef 3, ptr noundef nonnull %0)
  %99 = icmp eq i16 %98, 1
  br i1 %99, label %100, label %101

100:                                              ; preds = %97
  call void @_ZN11xercesc_2_79RangeImpl8collapseEb(ptr noundef nonnull align 8 dereferenceable(72) %0, i1 noundef zeroext false)
  br label %103

101:                                              ; preds = %97
  %102 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 5
  store i8 0, ptr %102, align 4, !tbaa !48
  br label %103

103:                                              ; preds = %101, %100
  ret void

104:                                              ; preds = %75, %93, %95, %46, %49, %23, %26, %60
  %105 = phi { ptr, i32 } [ %24, %26 ], [ %24, %23 ], [ %61, %60 ], [ %47, %49 ], [ %47, %46 ], [ %76, %75 ], [ %96, %95 ], [ %94, %93 ]
  resume { ptr, i32 } %105

106:                                              ; preds = %17
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79RangeImpl11setEndAfterERKNS_8DOM_NodeE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = alloca %"class.xercesc_2_7::DOMString", align 8
  %4 = alloca %"class.xercesc_2_7::DOMString", align 8
  %5 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %6 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %7 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %8 = alloca %"class.xercesc_2_7::DOM_Document", align 8
  %9 = alloca %"class.xercesc_2_7::DOM_Document", align 8
  %10 = alloca %"class.xercesc_2_7::DOM_Document", align 8
  %11 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 7
  %12 = load i8, ptr %11, align 8, !tbaa !49, !range !50, !noundef !51
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %27, label %14

14:                                               ; preds = %2
  %15 = tail call ptr @__cxa_allocate_exception(i64 24) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 0)
          to label %16 unwind label %18

16:                                               ; preds = %14
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %15, i16 noundef signext 11, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %17 unwind label %20

17:                                               ; preds = %16
  invoke void @__cxa_throw(ptr nonnull %15, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #10
          to label %105 unwind label %20

18:                                               ; preds = %14
  %19 = landingpad { ptr, i32 }
          cleanup
  br label %23

20:                                               ; preds = %17, %16
  %21 = phi i1 [ false, %17 ], [ true, %16 ]
  %22 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #9
  br label %23

23:                                               ; preds = %20, %18
  %24 = phi { ptr, i32 } [ %22, %20 ], [ %19, %18 ]
  %25 = phi i1 [ %21, %20 ], [ true, %18 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  br i1 %25, label %26, label %103

26:                                               ; preds = %23
  call void @__cxa_free_exception(ptr %15) #9
  br label %103

27:                                               ; preds = %2
  %28 = tail call noundef zeroext i1 @_ZNK11xercesc_2_79RangeImpl21hasLegalRootContainerERKNS_8DOM_NodeE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %1)
  br i1 %28, label %29, label %36

29:                                               ; preds = %27
  %30 = tail call noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeeqEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef null)
  br i1 %30, label %36, label %31

31:                                               ; preds = %29
  %32 = tail call noundef signext i16 @_ZNK11xercesc_2_78DOM_Node11getNodeTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  switch i16 %32, label %33 [
    i16 9, label %36
    i16 11, label %36
    i16 2, label %36
    i16 6, label %36
    i16 12, label %36
  ]

33:                                               ; preds = %31
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #9
  call void @_ZNK11xercesc_2_78DOM_Node13getParentNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %34 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 3
  %35 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %34, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %50 unwind label %59

36:                                               ; preds = %31, %31, %31, %31, %29, %27, %31
  %37 = tail call ptr @__cxa_allocate_exception(i64 32) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 0)
          to label %38 unwind label %41

38:                                               ; preds = %36
  invoke void @_ZN11xercesc_2_718DOM_RangeExceptionC1ENS0_18RangeExceptionCodeERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(28) %37, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %39 unwind label %43

39:                                               ; preds = %38
  invoke void @__cxa_throw(ptr nonnull %37, ptr nonnull @_ZTIN11xercesc_2_718DOM_RangeExceptionE, ptr nonnull @_ZN11xercesc_2_718DOM_RangeExceptionD1Ev) #10
          to label %40 unwind label %43

40:                                               ; preds = %39
  unreachable

41:                                               ; preds = %36
  %42 = landingpad { ptr, i32 }
          cleanup
  br label %46

43:                                               ; preds = %39, %38
  %44 = phi i1 [ false, %39 ], [ true, %38 ]
  %45 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #9
  br label %46

46:                                               ; preds = %43, %41
  %47 = phi { ptr, i32 } [ %45, %43 ], [ %42, %41 ]
  %48 = phi i1 [ %44, %43 ], [ true, %41 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  br i1 %48, label %49, label %103

49:                                               ; preds = %46
  call void @__cxa_free_exception(ptr %37) #9
  br label %103

50:                                               ; preds = %33
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #9
  call void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %51

51:                                               ; preds = %66, %50
  %52 = phi i32 [ 0, %50 ], [ %67, %66 ]
  %53 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef null)
          to label %54 unwind label %61

54:                                               ; preds = %51
  br i1 %53, label %63, label %55

55:                                               ; preds = %54
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  %56 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 4
  store i32 %52, ptr %56, align 8, !tbaa !47
  %57 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #9
  call void @_ZNK11xercesc_2_78DOM_Node16getOwnerDocumentEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Document") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %58 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %57, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %76 unwind label %88

59:                                               ; preds = %33
  %60 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  br label %103

61:                                               ; preds = %51
  %62 = landingpad { ptr, i32 }
          cleanup
  br label %74

63:                                               ; preds = %54
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #9
  invoke void @_ZNK11xercesc_2_78DOM_Node18getPreviousSiblingEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %64 unwind label %68

64:                                               ; preds = %63
  %65 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %66 unwind label %70

66:                                               ; preds = %64
  %67 = add i32 %52, 1
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #9
  br label %51, !llvm.loop !77

68:                                               ; preds = %63
  %69 = landingpad { ptr, i32 }
          cleanup
  br label %72

70:                                               ; preds = %64
  %71 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #9
  br label %72

72:                                               ; preds = %70, %68
  %73 = phi { ptr, i32 } [ %71, %70 ], [ %69, %68 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #9
  br label %74

74:                                               ; preds = %72, %61
  %75 = phi { ptr, i32 } [ %73, %72 ], [ %62, %61 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  br label %103

76:                                               ; preds = %55
  br i1 %58, label %77, label %81

77:                                               ; preds = %76
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #9
  invoke void @_ZNK11xercesc_2_78DOM_Node16getOwnerDocumentEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Document") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %78 unwind label %90

78:                                               ; preds = %77
  %79 = load ptr, ptr %9, align 8, !tbaa !52
  %80 = icmp ne ptr %79, null
  br label %81

81:                                               ; preds = %78, %76
  %82 = phi i1 [ %80, %78 ], [ false, %76 ]
  br i1 %58, label %83, label %84

83:                                               ; preds = %81
  call void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #9
  br label %84

84:                                               ; preds = %81, %83
  call void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #9
  br i1 %82, label %85, label %96

85:                                               ; preds = %84
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #9
  call void @_ZNK11xercesc_2_78DOM_Node16getOwnerDocumentEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Document") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %86 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_712DOM_DocumentaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %57, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %87 unwind label %94

87:                                               ; preds = %85
  call void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #9
  call void @_ZN11xercesc_2_79RangeImpl8collapseEb(ptr noundef nonnull align 8 dereferenceable(72) %0, i1 noundef zeroext true)
  br label %96

88:                                               ; preds = %55
  %89 = landingpad { ptr, i32 }
          cleanup
  br label %92

90:                                               ; preds = %77
  %91 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #9
  br label %92

92:                                               ; preds = %90, %88
  %93 = phi { ptr, i32 } [ %91, %90 ], [ %89, %88 ]
  call void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #9
  br label %103

94:                                               ; preds = %85
  %95 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #9
  br label %103

96:                                               ; preds = %87, %84
  %97 = call noundef signext i16 @_ZNK11xercesc_2_79RangeImpl21compareBoundaryPointsENS_9DOM_Range10CompareHowEPS0_(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef 3, ptr noundef nonnull %0)
  %98 = icmp eq i16 %97, 1
  br i1 %98, label %99, label %100

99:                                               ; preds = %96
  call void @_ZN11xercesc_2_79RangeImpl8collapseEb(ptr noundef nonnull align 8 dereferenceable(72) %0, i1 noundef zeroext false)
  br label %102

100:                                              ; preds = %96
  %101 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 5
  store i8 0, ptr %101, align 4, !tbaa !48
  br label %102

102:                                              ; preds = %100, %99
  ret void

103:                                              ; preds = %74, %92, %94, %46, %49, %23, %26, %59
  %104 = phi { ptr, i32 } [ %24, %26 ], [ %24, %23 ], [ %60, %59 ], [ %47, %49 ], [ %47, %46 ], [ %75, %74 ], [ %95, %94 ], [ %93, %92 ]
  resume { ptr, i32 } %104

105:                                              ; preds = %17
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79RangeImpl6detachEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %2 = alloca %"class.xercesc_2_7::DOMString", align 8
  %3 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 7
  %4 = load i8, ptr %3, align 8, !tbaa !49, !range !50, !noundef !51
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @__cxa_allocate_exception(i64 24) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #9
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 0)
          to label %8 unwind label %10

8:                                                ; preds = %6
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %7, i16 noundef signext 11, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %9 unwind label %12

9:                                                ; preds = %8
  invoke void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #10
          to label %30 unwind label %12

10:                                               ; preds = %6
  %11 = landingpad { ptr, i32 }
          cleanup
  br label %15

12:                                               ; preds = %9, %8
  %13 = phi i1 [ false, %9 ], [ true, %8 ]
  %14 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #9
  br label %15

15:                                               ; preds = %12, %10
  %16 = phi { ptr, i32 } [ %14, %12 ], [ %11, %10 ]
  %17 = phi i1 [ %13, %12 ], [ true, %10 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #9
  br i1 %17, label %18, label %29

18:                                               ; preds = %15
  call void @__cxa_free_exception(ptr %7) #9
  br label %29

19:                                               ; preds = %1
  store i8 1, ptr %3, align 8, !tbaa !49
  %20 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 1
  %21 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef null)
  %22 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 2
  store i32 0, ptr %22, align 8, !tbaa !38
  %23 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 3
  %24 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef null)
  %25 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 4
  store i32 0, ptr %25, align 8, !tbaa !47
  %26 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 5
  store i8 1, ptr %26, align 4, !tbaa !48
  %27 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 8
  %28 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef null)
  ret void

29:                                               ; preds = %15, %18
  resume { ptr, i32 } %16

30:                                               ; preds = %9
  unreachable
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79RangeImpl10selectNodeERKNS_8DOM_NodeE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = alloca %"class.xercesc_2_7::DOMString", align 8
  %4 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %5 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %6 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  tail call void @_ZNK11xercesc_2_79RangeImpl12validateNodeERKNS_8DOM_NodeE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %7 = tail call noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeeqEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef null)
  br i1 %7, label %13, label %8

8:                                                ; preds = %2
  %9 = tail call noundef signext i16 @_ZNK11xercesc_2_78DOM_Node11getNodeTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  switch i16 %9, label %10 [
    i16 9, label %13
    i16 11, label %13
    i16 2, label %13
    i16 6, label %13
    i16 12, label %13
  ]

10:                                               ; preds = %8
  %11 = tail call noundef signext i16 @_ZNK11xercesc_2_78DOM_Node11getNodeTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %12 = icmp eq i16 %11, 3
  br i1 %12, label %26, label %34

13:                                               ; preds = %8, %8, %8, %8, %2, %8
  %14 = tail call ptr @__cxa_allocate_exception(i64 32) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 0)
          to label %15 unwind label %17

15:                                               ; preds = %13
  invoke void @_ZN11xercesc_2_718DOM_RangeExceptionC1ENS0_18RangeExceptionCodeERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(28) %14, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %16 unwind label %19

16:                                               ; preds = %15
  invoke void @__cxa_throw(ptr nonnull %14, ptr nonnull @_ZTIN11xercesc_2_718DOM_RangeExceptionE, ptr nonnull @_ZN11xercesc_2_718DOM_RangeExceptionD1Ev) #10
          to label %81 unwind label %19

17:                                               ; preds = %13
  %18 = landingpad { ptr, i32 }
          cleanup
  br label %22

19:                                               ; preds = %16, %15
  %20 = phi i1 [ false, %16 ], [ true, %15 ]
  %21 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #9
  br label %22

22:                                               ; preds = %19, %17
  %23 = phi { ptr, i32 } [ %21, %19 ], [ %18, %17 ]
  %24 = phi i1 [ %20, %19 ], [ true, %17 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  br i1 %24, label %25, label %79

25:                                               ; preds = %22
  call void @__cxa_free_exception(ptr %14) #9
  br label %79

26:                                               ; preds = %10
  %27 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 1
  %28 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %29 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 3
  %30 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %31 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 2
  store i32 0, ptr %31, align 8, !tbaa !38
  %32 = tail call noundef i32 @_ZNK11xercesc_2_717DOM_CharacterData9getLengthEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %33 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 4
  store i32 %32, ptr %33, align 8, !tbaa !47
  br label %76

34:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  call void @_ZNK11xercesc_2_78DOM_Node13getParentNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %35 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef null)
          to label %36 unwind label %54

36:                                               ; preds = %34
  br i1 %35, label %37, label %75

37:                                               ; preds = %36
  %38 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 1
  %39 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %38, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %40 unwind label %54

40:                                               ; preds = %37
  %41 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 3
  %42 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %41, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %43 unwind label %54

43:                                               ; preds = %40
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #9
  invoke void @_ZNK11xercesc_2_78DOM_Node13getFirstChildEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %44 unwind label %56

44:                                               ; preds = %43, %64
  %45 = phi i32 [ %61, %64 ], [ 0, %43 ]
  %46 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef null)
          to label %47 unwind label %58

47:                                               ; preds = %44
  %48 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %49 unwind label %58

49:                                               ; preds = %47
  br i1 %48, label %60, label %50

50:                                               ; preds = %49
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  %51 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 2
  store i32 %45, ptr %51, align 8, !tbaa !38
  %52 = add i32 %45, 1
  %53 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 4
  store i32 %52, ptr %53, align 8, !tbaa !47
  br label %75

54:                                               ; preds = %40, %37, %34
  %55 = landingpad { ptr, i32 }
          cleanup
  br label %77

56:                                               ; preds = %43
  %57 = landingpad { ptr, i32 }
          cleanup
  br label %73

58:                                               ; preds = %47, %44
  %59 = landingpad { ptr, i32 }
          cleanup
  br label %71

60:                                               ; preds = %49
  %61 = add i32 %45, 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #9
  invoke void @_ZNK11xercesc_2_78DOM_Node14getNextSiblingEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %62 unwind label %65

62:                                               ; preds = %60
  %63 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %64 unwind label %67

64:                                               ; preds = %62
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  br label %44, !llvm.loop !78

65:                                               ; preds = %60
  %66 = landingpad { ptr, i32 }
          cleanup
  br label %69

67:                                               ; preds = %62
  %68 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #9
  br label %69

69:                                               ; preds = %67, %65
  %70 = phi { ptr, i32 } [ %68, %67 ], [ %66, %65 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  br label %71

71:                                               ; preds = %69, %58
  %72 = phi { ptr, i32 } [ %70, %69 ], [ %59, %58 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #9
  br label %73

73:                                               ; preds = %71, %56
  %74 = phi { ptr, i32 } [ %72, %71 ], [ %57, %56 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  br label %77

75:                                               ; preds = %50, %36
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  br label %76

76:                                               ; preds = %75, %26
  ret void

77:                                               ; preds = %73, %54
  %78 = phi { ptr, i32 } [ %74, %73 ], [ %55, %54 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  br label %79

79:                                               ; preds = %22, %25, %77
  %80 = phi { ptr, i32 } [ %78, %77 ], [ %23, %25 ], [ %23, %22 ]
  resume { ptr, i32 } %80

81:                                               ; preds = %16
  unreachable
}

declare noundef signext i16 @_ZNK11xercesc_2_78DOM_Node11getNodeTypeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare noundef i32 @_ZNK11xercesc_2_717DOM_CharacterData9getLengthEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare void @_ZNK11xercesc_2_78DOM_Node13getFirstChildEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_Node") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare void @_ZNK11xercesc_2_78DOM_Node14getNextSiblingEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_Node") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79RangeImpl18selectNodeContentsERKNS_8DOM_NodeE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %4 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %5 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  tail call void @_ZNK11xercesc_2_79RangeImpl12validateNodeERKNS_8DOM_NodeE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %6 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 1
  %7 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %8 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 3
  %9 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %10 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 2
  store i32 0, ptr %10, align 8, !tbaa !38
  %11 = tail call noundef signext i16 @_ZNK11xercesc_2_78DOM_Node11getNodeTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %12 = icmp eq i16 %11, 3
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = tail call noundef i32 @_ZNK11xercesc_2_717DOM_CharacterData9getLengthEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %15 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 4
  store i32 %14, ptr %15, align 8, !tbaa !47
  br label %49

16:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  call void @_ZNK11xercesc_2_78DOM_Node13getFirstChildEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %17 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeeqEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef null)
          to label %18 unwind label %19

18:                                               ; preds = %16
  br i1 %17, label %46, label %21

19:                                               ; preds = %16
  %20 = landingpad { ptr, i32 }
          cleanup
  br label %50

21:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %22 unwind label %27

22:                                               ; preds = %21, %35
  %23 = phi i32 [ %32, %35 ], [ 0, %21 ]
  %24 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef null)
          to label %25 unwind label %29

25:                                               ; preds = %22
  br i1 %24, label %31, label %26

26:                                               ; preds = %25
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  br label %46

27:                                               ; preds = %21
  %28 = landingpad { ptr, i32 }
          cleanup
  br label %44

29:                                               ; preds = %22
  %30 = landingpad { ptr, i32 }
          cleanup
  br label %42

31:                                               ; preds = %25
  %32 = add i32 %23, 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #9
  invoke void @_ZNK11xercesc_2_78DOM_Node14getNextSiblingEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %33 unwind label %36

33:                                               ; preds = %31
  %34 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %35 unwind label %38

35:                                               ; preds = %33
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  br label %22, !llvm.loop !79

36:                                               ; preds = %31
  %37 = landingpad { ptr, i32 }
          cleanup
  br label %40

38:                                               ; preds = %33
  %39 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #9
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi { ptr, i32 } [ %39, %38 ], [ %37, %36 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  br label %42

42:                                               ; preds = %40, %29
  %43 = phi { ptr, i32 } [ %41, %40 ], [ %30, %29 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #9
  br label %44

44:                                               ; preds = %42, %27
  %45 = phi { ptr, i32 } [ %43, %42 ], [ %28, %27 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  br label %50

46:                                               ; preds = %18, %26
  %47 = phi i32 [ %23, %26 ], [ 0, %18 ]
  %48 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 4
  store i32 %47, ptr %48, align 8, !tbaa !47
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  br label %49

49:                                               ; preds = %46, %13
  ret void

50:                                               ; preds = %44, %19
  %51 = phi { ptr, i32 } [ %45, %44 ], [ %20, %19 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  resume { ptr, i32 } %51
}

declare noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeeqEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79RangeImpl16surroundContentsERNS_8DOM_NodeE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = alloca %"class.xercesc_2_7::DOMString", align 8
  %4 = alloca %"class.xercesc_2_7::DOM_Document", align 8
  %5 = alloca %"class.xercesc_2_7::DOMString", align 8
  %6 = alloca %"class.xercesc_2_7::DOMString", align 8
  %7 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %8 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %9 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %10 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %11 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %12 = alloca %"class.xercesc_2_7::DOMString", align 8
  %13 = alloca %"class.xercesc_2_7::DOM_DocumentFragment", align 8
  %14 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %15 = tail call noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeeqEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef null)
  br i1 %15, label %148, label %16

16:                                               ; preds = %2
  %17 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 7
  %18 = load i8, ptr %17, align 8, !tbaa !49, !range !50, !noundef !51
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %34, label %20

20:                                               ; preds = %16
  %21 = tail call ptr @__cxa_allocate_exception(i64 24) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 0)
          to label %22 unwind label %25

22:                                               ; preds = %20
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %21, i16 noundef signext 11, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %23 unwind label %27

23:                                               ; preds = %22
  invoke void @__cxa_throw(ptr nonnull %21, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #10
          to label %24 unwind label %27

24:                                               ; preds = %23
  unreachable

25:                                               ; preds = %20
  %26 = landingpad { ptr, i32 }
          cleanup
  br label %30

27:                                               ; preds = %23, %22
  %28 = phi i1 [ false, %23 ], [ true, %22 ]
  %29 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #9
  br label %30

30:                                               ; preds = %27, %25
  %31 = phi { ptr, i32 } [ %29, %27 ], [ %26, %25 ]
  %32 = phi i1 [ %28, %27 ], [ true, %25 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  br i1 %32, label %33, label %161

33:                                               ; preds = %30
  call void @__cxa_free_exception(ptr %21) #9
  br label %161

34:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  call void @_ZNK11xercesc_2_78DOM_Node16getOwnerDocumentEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Document") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %35 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 6
  %36 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %35)
          to label %37 unwind label %43

37:                                               ; preds = %34
  call void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  br i1 %36, label %38, label %54

38:                                               ; preds = %37
  %39 = call ptr @__cxa_allocate_exception(i64 24) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #9
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef 0)
          to label %40 unwind label %45

40:                                               ; preds = %38
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %39, i16 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %41 unwind label %47

41:                                               ; preds = %40
  invoke void @__cxa_throw(ptr nonnull %39, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #10
          to label %42 unwind label %47

42:                                               ; preds = %41
  unreachable

43:                                               ; preds = %34
  %44 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  br label %161

45:                                               ; preds = %38
  %46 = landingpad { ptr, i32 }
          cleanup
  br label %50

47:                                               ; preds = %41, %40
  %48 = phi i1 [ false, %41 ], [ true, %40 ]
  %49 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #9
  br label %50

50:                                               ; preds = %47, %45
  %51 = phi { ptr, i32 } [ %49, %47 ], [ %46, %45 ]
  %52 = phi i1 [ %48, %47 ], [ true, %45 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  br i1 %52, label %53, label %161

53:                                               ; preds = %50
  call void @__cxa_free_exception(ptr %39) #9
  br label %161

54:                                               ; preds = %37
  %55 = call noundef signext i16 @_ZNK11xercesc_2_78DOM_Node11getNodeTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %56 = call noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeeqEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef null)
  br i1 %56, label %65, label %57

57:                                               ; preds = %54
  %58 = call noundef signext i16 @_ZNK11xercesc_2_78DOM_Node11getNodeTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %59 = icmp ult i16 %58, 13
  br i1 %59, label %60, label %65

60:                                               ; preds = %57
  %61 = trunc i16 %58 to i13
  %62 = lshr i13 1467, %61
  %63 = and i13 %62, 1
  %64 = icmp ne i13 %63, 0
  br label %65

65:                                               ; preds = %57, %60, %54
  %66 = phi i1 [ false, %54 ], [ %64, %60 ], [ true, %57 ]
  %67 = icmp ne i16 %55, 10
  %68 = and i1 %67, %66
  br i1 %68, label %83, label %69

69:                                               ; preds = %65
  %70 = call ptr @__cxa_allocate_exception(i64 32) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #9
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 0)
          to label %71 unwind label %74

71:                                               ; preds = %69
  invoke void @_ZN11xercesc_2_718DOM_RangeExceptionC1ENS0_18RangeExceptionCodeERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(28) %70, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %72 unwind label %76

72:                                               ; preds = %71
  invoke void @__cxa_throw(ptr nonnull %70, ptr nonnull @_ZTIN11xercesc_2_718DOM_RangeExceptionE, ptr nonnull @_ZN11xercesc_2_718DOM_RangeExceptionD1Ev) #10
          to label %73 unwind label %76

73:                                               ; preds = %72
  unreachable

74:                                               ; preds = %69
  %75 = landingpad { ptr, i32 }
          cleanup
  br label %79

76:                                               ; preds = %72, %71
  %77 = phi i1 [ false, %72 ], [ true, %71 ]
  %78 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #9
  br label %79

79:                                               ; preds = %76, %74
  %80 = phi { ptr, i32 } [ %78, %76 ], [ %75, %74 ]
  %81 = phi i1 [ %77, %76 ], [ true, %74 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  br i1 %81, label %82, label %161

82:                                               ; preds = %79
  call void @__cxa_free_exception(ptr %70) #9
  br label %161

83:                                               ; preds = %65
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #9
  %84 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 1
  %85 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 3
  call void @_ZNK11xercesc_2_79RangeImpl16commonAncestorOfERKNS_8DOM_NodeES3_(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %7, ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %84, ptr noundef nonnull align 8 dereferenceable(8) %85)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #9
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %84)
          to label %86 unwind label %95

86:                                               ; preds = %83
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #9
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %85)
          to label %87 unwind label %97

87:                                               ; preds = %86
  %88 = invoke noundef signext i16 @_ZNK11xercesc_2_78DOM_Node11getNodeTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %84)
          to label %89 unwind label %99

89:                                               ; preds = %87
  %90 = icmp eq i16 %88, 3
  br i1 %90, label %91, label %107

91:                                               ; preds = %89
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #9
  invoke void @_ZNK11xercesc_2_78DOM_Node13getParentNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %84)
          to label %92 unwind label %101

92:                                               ; preds = %91
  %93 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %94 unwind label %103

94:                                               ; preds = %92
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #9
  br label %107

95:                                               ; preds = %83
  %96 = landingpad { ptr, i32 }
          cleanup
  br label %159

97:                                               ; preds = %86
  %98 = landingpad { ptr, i32 }
          cleanup
  br label %157

99:                                               ; preds = %121, %107, %87
  %100 = landingpad { ptr, i32 }
          cleanup
  br label %155

101:                                              ; preds = %91
  %102 = landingpad { ptr, i32 }
          cleanup
  br label %105

103:                                              ; preds = %92
  %104 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #9
  br label %105

105:                                              ; preds = %103, %101
  %106 = phi { ptr, i32 } [ %104, %103 ], [ %102, %101 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #9
  br label %155

107:                                              ; preds = %94, %89
  %108 = invoke noundef signext i16 @_ZNK11xercesc_2_78DOM_Node11getNodeTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %85)
          to label %109 unwind label %99

109:                                              ; preds = %107
  %110 = icmp eq i16 %108, 3
  br i1 %110, label %111, label %121

111:                                              ; preds = %109
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #9
  invoke void @_ZNK11xercesc_2_78DOM_Node13getParentNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %11, ptr noundef nonnull align 8 dereferenceable(8) %85)
          to label %112 unwind label %115

112:                                              ; preds = %111
  %113 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %114 unwind label %117

114:                                              ; preds = %112
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #9
  br label %121

115:                                              ; preds = %111
  %116 = landingpad { ptr, i32 }
          cleanup
  br label %119

117:                                              ; preds = %112
  %118 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #9
  br label %119

119:                                              ; preds = %117, %115
  %120 = phi { ptr, i32 } [ %118, %117 ], [ %116, %115 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #9
  br label %155

121:                                              ; preds = %114, %109
  %122 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %123 unwind label %99

123:                                              ; preds = %121
  br i1 %122, label %124, label %138

124:                                              ; preds = %123
  %125 = call ptr @__cxa_allocate_exception(i64 32) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #9
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %12, i32 noundef 0)
          to label %126 unwind label %129

126:                                              ; preds = %124
  invoke void @_ZN11xercesc_2_718DOM_RangeExceptionC1ENS0_18RangeExceptionCodeERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(28) %125, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %127 unwind label %131

127:                                              ; preds = %126
  invoke void @__cxa_throw(ptr nonnull %125, ptr nonnull @_ZTIN11xercesc_2_718DOM_RangeExceptionE, ptr nonnull @_ZN11xercesc_2_718DOM_RangeExceptionD1Ev) #10
          to label %128 unwind label %131

128:                                              ; preds = %127
  unreachable

129:                                              ; preds = %124
  %130 = landingpad { ptr, i32 }
          cleanup
  br label %134

131:                                              ; preds = %127, %126
  %132 = phi i1 [ false, %127 ], [ true, %126 ]
  %133 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12) #9
  br label %134

134:                                              ; preds = %131, %129
  %135 = phi { ptr, i32 } [ %133, %131 ], [ %130, %129 ]
  %136 = phi i1 [ %132, %131 ], [ true, %129 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #9
  br i1 %136, label %137, label %155

137:                                              ; preds = %134
  call void @__cxa_free_exception(ptr %125) #9
  br label %155

138:                                              ; preds = %123
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #9
  %139 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 2
  %140 = load i32, ptr %139, align 8, !tbaa !38, !noalias !80
  %141 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 4
  %142 = load i32, ptr %141, align 8, !tbaa !47, !noalias !80
  invoke void @_ZN11xercesc_2_79RangeImpl13checkReadOnlyERNS_8DOM_NodeES2_jj(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %84, ptr noundef nonnull align 8 dereferenceable(8) %85, i32 noundef %140, i32 noundef %142)
          to label %143 unwind label %149

143:                                              ; preds = %138
  invoke void @_ZN11xercesc_2_79RangeImpl16traverseContentsENS0_13TraversalTypeE(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_DocumentFragment") align 8 %13, ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef 1)
          to label %144 unwind label %149

144:                                              ; preds = %143
  invoke void @_ZN11xercesc_2_79RangeImpl10insertNodeERNS_8DOM_NodeE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %145 unwind label %151

145:                                              ; preds = %144
  invoke void @_ZN11xercesc_2_78DOM_Node11appendChildERKS0_(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %14, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %146 unwind label %151

146:                                              ; preds = %145
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14) #9
  invoke void @_ZN11xercesc_2_79RangeImpl10selectNodeERKNS_8DOM_NodeE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %147 unwind label %151

147:                                              ; preds = %146
  call void @_ZN11xercesc_2_720DOM_DocumentFragmentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #9
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #9
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #9
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #9
  br label %148

148:                                              ; preds = %2, %147
  ret void

149:                                              ; preds = %143, %138
  %150 = landingpad { ptr, i32 }
          cleanup
  br label %153

151:                                              ; preds = %146, %145, %144
  %152 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_720DOM_DocumentFragmentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13) #9
  br label %153

153:                                              ; preds = %151, %149
  %154 = phi { ptr, i32 } [ %152, %151 ], [ %150, %149 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #9
  br label %155

155:                                              ; preds = %134, %137, %153, %119, %105, %99
  %156 = phi { ptr, i32 } [ %135, %137 ], [ %135, %134 ], [ %154, %153 ], [ %100, %99 ], [ %120, %119 ], [ %106, %105 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #9
  br label %157

157:                                              ; preds = %155, %97
  %158 = phi { ptr, i32 } [ %156, %155 ], [ %98, %97 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #9
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #9
  br label %159

159:                                              ; preds = %157, %95
  %160 = phi { ptr, i32 } [ %158, %157 ], [ %96, %95 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #9
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #9
  br label %161

161:                                              ; preds = %159, %82, %79, %50, %53, %30, %33, %43
  %162 = phi { ptr, i32 } [ %31, %33 ], [ %31, %30 ], [ %51, %53 ], [ %51, %50 ], [ %44, %43 ], [ %80, %82 ], [ %80, %79 ], [ %160, %159 ]
  resume { ptr, i32 } %162
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xercesc_2_79RangeImpl26getCommonAncestorContainerEv(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1) local_unnamed_addr #0 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %1, i64 0, i32 1
  %4 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %1, i64 0, i32 3
  tail call void @_ZNK11xercesc_2_79RangeImpl16commonAncestorOfERKNS_8DOM_NodeES3_(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79RangeImpl15extractContentsEv(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOM_DocumentFragment") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1) local_unnamed_addr #0 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %1, i64 0, i32 1
  %4 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %1, i64 0, i32 3
  %5 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %1, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !38
  %7 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %1, i64 0, i32 4
  %8 = load i32, ptr %7, align 8, !tbaa !47
  tail call void @_ZN11xercesc_2_79RangeImpl13checkReadOnlyERNS_8DOM_NodeES2_jj(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %6, i32 noundef %8)
  tail call void @_ZN11xercesc_2_79RangeImpl16traverseContentsENS0_13TraversalTypeE(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_DocumentFragment") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef 1)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79RangeImpl10insertNodeERNS_8DOM_NodeE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %4 = alloca %"class.xercesc_2_7::DOMString", align 8
  %5 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %6 = alloca %"class.xercesc_2_7::DOM_Document", align 8
  %7 = alloca %"class.xercesc_2_7::DOMString", align 8
  %8 = alloca %"class.xercesc_2_7::DOMString", align 8
  %9 = alloca %"class.xercesc_2_7::DOMString", align 8
  %10 = alloca %"class.xercesc_2_7::DOMString", align 8
  %11 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %12 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %13 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %14 = alloca %"class.xercesc_2_7::DOM_Text", align 8
  %15 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %16 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %17 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %18 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %19 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %20 = tail call noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeeqEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef null)
  br i1 %20, label %215, label %21

21:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  %22 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 1
  call void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %22)
  %23 = load i16, ptr @_ZN11xercesc_2_78NodeImpl8READONLYE, align 2
  br label %24

24:                                               ; preds = %55, %21
  %25 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef null)
          to label %26 unwind label %30

26:                                               ; preds = %24
  br i1 %25, label %32, label %27

27:                                               ; preds = %26
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  %28 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #9
  call void @_ZNK11xercesc_2_78DOM_Node16getOwnerDocumentEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Document") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %29 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %64 unwind label %70

30:                                               ; preds = %24
  %31 = landingpad { ptr, i32 }
          cleanup
  br label %62

32:                                               ; preds = %26
  %33 = load ptr, ptr %3, align 8, !tbaa !52
  %34 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %33, i64 0, i32 3
  %35 = load i16, ptr %34, align 8, !tbaa !83
  %36 = and i16 %23, %35
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %52, label %38

38:                                               ; preds = %32
  %39 = call ptr @__cxa_allocate_exception(i64 24) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 0)
          to label %40 unwind label %43

40:                                               ; preds = %38
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %39, i16 noundef signext 7, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %41 unwind label %45

41:                                               ; preds = %40
  invoke void @__cxa_throw(ptr nonnull %39, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #10
          to label %42 unwind label %45

42:                                               ; preds = %41
  unreachable

43:                                               ; preds = %38
  %44 = landingpad { ptr, i32 }
          cleanup
  br label %48

45:                                               ; preds = %41, %40
  %46 = phi i1 [ false, %41 ], [ true, %40 ]
  %47 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #9
  br label %48

48:                                               ; preds = %45, %43
  %49 = phi { ptr, i32 } [ %47, %45 ], [ %44, %43 ]
  %50 = phi i1 [ %46, %45 ], [ true, %43 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  br i1 %50, label %51, label %62

51:                                               ; preds = %48
  call void @__cxa_free_exception(ptr %39) #9
  br label %62

52:                                               ; preds = %32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #9
  invoke void @_ZNK11xercesc_2_78DOM_Node13getParentNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %53 unwind label %56

53:                                               ; preds = %52
  %54 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %55 unwind label %58

55:                                               ; preds = %53
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  br label %24, !llvm.loop !84

56:                                               ; preds = %52
  %57 = landingpad { ptr, i32 }
          cleanup
  br label %60

58:                                               ; preds = %53
  %59 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #9
  br label %60

60:                                               ; preds = %58, %56
  %61 = phi { ptr, i32 } [ %59, %58 ], [ %57, %56 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  br label %62

62:                                               ; preds = %48, %51, %60, %30
  %63 = phi { ptr, i32 } [ %49, %51 ], [ %49, %48 ], [ %61, %60 ], [ %31, %30 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  br label %220

64:                                               ; preds = %27
  call void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  br i1 %29, label %65, label %81

65:                                               ; preds = %64
  %66 = call ptr @__cxa_allocate_exception(i64 24) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #9
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef 0)
          to label %67 unwind label %72

67:                                               ; preds = %65
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %66, i16 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %68 unwind label %74

68:                                               ; preds = %67
  invoke void @__cxa_throw(ptr nonnull %66, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #10
          to label %69 unwind label %74

69:                                               ; preds = %68
  unreachable

70:                                               ; preds = %27
  %71 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  br label %220

72:                                               ; preds = %65
  %73 = landingpad { ptr, i32 }
          cleanup
  br label %77

74:                                               ; preds = %68, %67
  %75 = phi i1 [ false, %68 ], [ true, %67 ]
  %76 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #9
  br label %77

77:                                               ; preds = %74, %72
  %78 = phi { ptr, i32 } [ %76, %74 ], [ %73, %72 ]
  %79 = phi i1 [ %75, %74 ], [ true, %72 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #9
  br i1 %79, label %80, label %220

80:                                               ; preds = %77
  call void @__cxa_free_exception(ptr %66) #9
  br label %220

81:                                               ; preds = %64
  %82 = call noundef zeroext i1 @_ZN11xercesc_2_79RangeImpl12isAncestorOfERKNS_8DOM_NodeES3_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %22)
  br i1 %82, label %83, label %97

83:                                               ; preds = %81
  %84 = call ptr @__cxa_allocate_exception(i64 24) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #9
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef 0)
          to label %85 unwind label %88

85:                                               ; preds = %83
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %84, i16 noundef signext 3, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %86 unwind label %90

86:                                               ; preds = %85
  invoke void @__cxa_throw(ptr nonnull %84, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #10
          to label %87 unwind label %90

87:                                               ; preds = %86
  unreachable

88:                                               ; preds = %83
  %89 = landingpad { ptr, i32 }
          cleanup
  br label %93

90:                                               ; preds = %86, %85
  %91 = phi i1 [ false, %86 ], [ true, %85 ]
  %92 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #9
  br label %93

93:                                               ; preds = %90, %88
  %94 = phi { ptr, i32 } [ %92, %90 ], [ %89, %88 ]
  %95 = phi i1 [ %91, %90 ], [ true, %88 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #9
  br i1 %95, label %96, label %220

96:                                               ; preds = %93
  call void @__cxa_free_exception(ptr %84) #9
  br label %220

97:                                               ; preds = %81
  %98 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 7
  %99 = load i8, ptr %98, align 8, !tbaa !49, !range !50, !noundef !51
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %115, label %101

101:                                              ; preds = %97
  %102 = call ptr @__cxa_allocate_exception(i64 24) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #9
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %9, i32 noundef 0)
          to label %103 unwind label %106

103:                                              ; preds = %101
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %102, i16 noundef signext 11, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %104 unwind label %108

104:                                              ; preds = %103
  invoke void @__cxa_throw(ptr nonnull %102, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #10
          to label %105 unwind label %108

105:                                              ; preds = %104
  unreachable

106:                                              ; preds = %101
  %107 = landingpad { ptr, i32 }
          cleanup
  br label %111

108:                                              ; preds = %104, %103
  %109 = phi i1 [ false, %104 ], [ true, %103 ]
  %110 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #9
  br label %111

111:                                              ; preds = %108, %106
  %112 = phi { ptr, i32 } [ %110, %108 ], [ %107, %106 ]
  %113 = phi i1 [ %109, %108 ], [ true, %106 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #9
  br i1 %113, label %114, label %220

114:                                              ; preds = %111
  call void @__cxa_free_exception(ptr %102) #9
  br label %220

115:                                              ; preds = %97
  %116 = call noundef signext i16 @_ZNK11xercesc_2_78DOM_Node11getNodeTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  switch i16 %116, label %131 [
    i16 12, label %117
    i16 9, label %117
    i16 6, label %117
    i16 2, label %117
  ]

117:                                              ; preds = %115, %115, %115, %115
  %118 = call ptr @__cxa_allocate_exception(i64 32) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #9
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %10, i32 noundef 0)
          to label %119 unwind label %122

119:                                              ; preds = %117
  invoke void @_ZN11xercesc_2_718DOM_RangeExceptionC1ENS0_18RangeExceptionCodeERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(28) %118, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %120 unwind label %124

120:                                              ; preds = %119
  invoke void @__cxa_throw(ptr nonnull %118, ptr nonnull @_ZTIN11xercesc_2_718DOM_RangeExceptionE, ptr nonnull @_ZN11xercesc_2_718DOM_RangeExceptionD1Ev) #10
          to label %121 unwind label %124

121:                                              ; preds = %120
  unreachable

122:                                              ; preds = %117
  %123 = landingpad { ptr, i32 }
          cleanup
  br label %127

124:                                              ; preds = %120, %119
  %125 = phi i1 [ false, %120 ], [ true, %119 ]
  %126 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #9
  br label %127

127:                                              ; preds = %124, %122
  %128 = phi { ptr, i32 } [ %126, %124 ], [ %123, %122 ]
  %129 = phi i1 [ %125, %124 ], [ true, %122 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #9
  br i1 %129, label %130, label %220

130:                                              ; preds = %127
  call void @__cxa_free_exception(ptr %118) #9
  br label %220

131:                                              ; preds = %115
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #9
  call void @_ZN11xercesc_2_78DOM_NodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #9
  invoke void @_ZN11xercesc_2_78DOM_NodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %132 unwind label %145

132:                                              ; preds = %131
  %133 = invoke noundef signext i16 @_ZNK11xercesc_2_78DOM_Node11getNodeTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %22)
          to label %134 unwind label %147

134:                                              ; preds = %132
  %135 = icmp eq i16 %133, 3
  br i1 %135, label %136, label %170

136:                                              ; preds = %134
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #9
  invoke void @_ZNK11xercesc_2_78DOM_Node13getParentNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %13, ptr noundef nonnull align 8 dereferenceable(8) %22)
          to label %137 unwind label %149

137:                                              ; preds = %136
  %138 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %139 unwind label %151

139:                                              ; preds = %137
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #9
  %140 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 2
  %141 = load i32, ptr %140, align 8, !tbaa !38
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %155, label %143

143:                                              ; preds = %139
  invoke void @_ZN11xercesc_2_78DOM_Text9splitTextEj(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Text") align 8 %14, ptr noundef nonnull align 8 dereferenceable(8) %22, i32 noundef %141)
          to label %144 unwind label %147

144:                                              ; preds = %143
  call void @_ZN11xercesc_2_78DOM_TextD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14) #9
  br label %155

145:                                              ; preds = %131
  %146 = landingpad { ptr, i32 }
          cleanup
  br label %218

147:                                              ; preds = %211, %210, %207, %204, %170, %158, %143, %132
  %148 = landingpad { ptr, i32 }
          cleanup
  br label %216

149:                                              ; preds = %136
  %150 = landingpad { ptr, i32 }
          cleanup
  br label %153

151:                                              ; preds = %137
  %152 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13) #9
  br label %153

153:                                              ; preds = %151, %149
  %154 = phi { ptr, i32 } [ %152, %151 ], [ %150, %149 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #9
  br label %216

155:                                              ; preds = %144, %139
  %156 = load i32, ptr %140, align 8, !tbaa !38
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %155
  %159 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %22)
          to label %204 unwind label %147

160:                                              ; preds = %155
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #9
  invoke void @_ZNK11xercesc_2_78DOM_Node14getNextSiblingEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %15, ptr noundef nonnull align 8 dereferenceable(8) %22)
          to label %161 unwind label %164

161:                                              ; preds = %160
  %162 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %163 unwind label %166

163:                                              ; preds = %161
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %15) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #9
  br label %204

164:                                              ; preds = %160
  %165 = landingpad { ptr, i32 }
          cleanup
  br label %168

166:                                              ; preds = %161
  %167 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %15) #9
  br label %168

168:                                              ; preds = %166, %164
  %169 = phi { ptr, i32 } [ %167, %166 ], [ %165, %164 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #9
  br label %216

170:                                              ; preds = %134
  %171 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %22)
          to label %172 unwind label %147

172:                                              ; preds = %170
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #9
  invoke void @_ZNK11xercesc_2_78DOM_Node13getFirstChildEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %16, ptr noundef nonnull align 8 dereferenceable(8) %22)
          to label %173 unwind label %183

173:                                              ; preds = %172
  %174 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %175 unwind label %185

175:                                              ; preds = %173
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %16) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #9
  %176 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 2
  %177 = load i32, ptr %176, align 8, !tbaa !38
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %204, label %179

179:                                              ; preds = %175, %194
  %180 = phi i32 [ %195, %194 ], [ 0, %175 ]
  %181 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef null)
          to label %182 unwind label %189

182:                                              ; preds = %179
  br i1 %181, label %191, label %204

183:                                              ; preds = %172
  %184 = landingpad { ptr, i32 }
          cleanup
  br label %187

185:                                              ; preds = %173
  %186 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %16) #9
  br label %187

187:                                              ; preds = %185, %183
  %188 = phi { ptr, i32 } [ %186, %185 ], [ %184, %183 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #9
  br label %216

189:                                              ; preds = %179
  %190 = landingpad { ptr, i32 }
          cleanup
  br label %216

191:                                              ; preds = %182
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #9
  invoke void @_ZNK11xercesc_2_78DOM_Node14getNextSiblingEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %17, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %192 unwind label %198

192:                                              ; preds = %191
  %193 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %194 unwind label %200

194:                                              ; preds = %192
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %17) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #9
  %195 = add nuw i32 %180, 1
  %196 = load i32, ptr %176, align 8, !tbaa !38
  %197 = icmp ult i32 %195, %196
  br i1 %197, label %179, label %204, !llvm.loop !85

198:                                              ; preds = %191
  %199 = landingpad { ptr, i32 }
          cleanup
  br label %202

200:                                              ; preds = %192
  %201 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %17) #9
  br label %202

202:                                              ; preds = %200, %198
  %203 = phi { ptr, i32 } [ %201, %200 ], [ %199, %198 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #9
  br label %216

204:                                              ; preds = %194, %182, %175, %158, %163
  %205 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef null)
          to label %206 unwind label %147

206:                                              ; preds = %204
  br i1 %205, label %207, label %214

207:                                              ; preds = %206
  %208 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef null)
          to label %209 unwind label %147

209:                                              ; preds = %207
  br i1 %208, label %210, label %211

210:                                              ; preds = %209
  invoke void @_ZN11xercesc_2_78DOM_Node12insertBeforeERKS0_S2_(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %18, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %212 unwind label %147

211:                                              ; preds = %209
  invoke void @_ZN11xercesc_2_78DOM_Node11appendChildERKS0_(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %19, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %212 unwind label %147

212:                                              ; preds = %211, %210
  %213 = phi ptr [ %18, %210 ], [ %19, %211 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %213) #9
  br label %214

214:                                              ; preds = %212, %206
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #9
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #9
  br label %215

215:                                              ; preds = %2, %214
  ret void

216:                                              ; preds = %189, %202, %187, %168, %153, %147
  %217 = phi { ptr, i32 } [ %148, %147 ], [ %169, %168 ], [ %154, %153 ], [ %188, %187 ], [ %203, %202 ], [ %190, %189 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12) #9
  br label %218

218:                                              ; preds = %216, %145
  %219 = phi { ptr, i32 } [ %217, %216 ], [ %146, %145 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #9
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #9
  br label %220

220:                                              ; preds = %218, %130, %127, %111, %114, %93, %96, %77, %80, %70, %62
  %221 = phi { ptr, i32 } [ %63, %62 ], [ %78, %80 ], [ %78, %77 ], [ %94, %96 ], [ %94, %93 ], [ %112, %114 ], [ %112, %111 ], [ %71, %70 ], [ %128, %130 ], [ %128, %127 ], [ %219, %218 ]
  resume { ptr, i32 } %221
}

declare void @_ZN11xercesc_2_78DOM_Node11appendChildERKS0_(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_Node") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_720DOM_DocumentFragmentD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_79RangeImpl12isAncestorOfERKNS_8DOM_NodeES3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %4 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  call void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %5

5:                                                ; preds = %16, %2
  %6 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef null)
          to label %7 unwind label %8

7:                                                ; preds = %5
  br i1 %6, label %10, label %23

8:                                                ; preds = %10, %5
  %9 = landingpad { ptr, i32 }
          cleanup
  br label %24

10:                                               ; preds = %7
  %11 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeeqERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %12 unwind label %8

12:                                               ; preds = %10
  br i1 %11, label %23, label %13

13:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  invoke void @_ZNK11xercesc_2_78DOM_Node13getParentNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %14 unwind label %17

14:                                               ; preds = %13
  %15 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %16 unwind label %19

16:                                               ; preds = %14
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  br label %5, !llvm.loop !86

17:                                               ; preds = %13
  %18 = landingpad { ptr, i32 }
          cleanup
  br label %21

19:                                               ; preds = %14
  %20 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #9
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi { ptr, i32 } [ %20, %19 ], [ %18, %17 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  br label %24

23:                                               ; preds = %12, %7
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  ret i1 %6

24:                                               ; preds = %21, %8
  %25 = phi { ptr, i32 } [ %22, %21 ], [ %9, %8 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  resume { ptr, i32 } %25
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i16 @_ZNK11xercesc_2_79RangeImpl7indexOfERKNS_8DOM_NodeES3_(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %4 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %5 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %6 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  call void @_ZNK11xercesc_2_78DOM_Node13getParentNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %7 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %8 unwind label %9

8:                                                ; preds = %3
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  br i1 %7, label %32, label %11

9:                                                ; preds = %3
  %10 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  br label %34

11:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #9
  call void @_ZNK11xercesc_2_78DOM_Node18getPreviousSiblingEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %12

12:                                               ; preds = %23, %11
  %13 = phi i16 [ 0, %11 ], [ %20, %23 ]
  %14 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef null)
          to label %15 unwind label %17

15:                                               ; preds = %12
  br i1 %14, label %19, label %16

16:                                               ; preds = %15
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  br label %32

17:                                               ; preds = %12
  %18 = landingpad { ptr, i32 }
          cleanup
  br label %30

19:                                               ; preds = %15
  %20 = add i16 %13, 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #9
  invoke void @_ZNK11xercesc_2_78DOM_Node18getPreviousSiblingEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %21 unwind label %24

21:                                               ; preds = %19
  %22 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %23 unwind label %26

23:                                               ; preds = %21
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  br label %12, !llvm.loop !87

24:                                               ; preds = %19
  %25 = landingpad { ptr, i32 }
          cleanup
  br label %28

26:                                               ; preds = %21
  %27 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #9
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi { ptr, i32 } [ %27, %26 ], [ %25, %24 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  br label %30

30:                                               ; preds = %28, %17
  %31 = phi { ptr, i32 } [ %29, %28 ], [ %18, %17 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  br label %34

32:                                               ; preds = %8, %16
  %33 = phi i16 [ %13, %16 ], [ -1, %8 ]
  ret i16 %33

34:                                               ; preds = %30, %9
  %35 = phi { ptr, i32 } [ %31, %30 ], [ %10, %9 ]
  resume { ptr, i32 } %35
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xercesc_2_79RangeImpl16commonAncestorOfERKNS_8DOM_NodeES3_(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %5 = alloca %"class.xercesc_2_7::DOMString", align 8
  %6 = alloca %"class.xercesc_2_7::DOM_Document", align 8
  %7 = alloca %"class.xercesc_2_7::DOM_Document", align 8
  %8 = alloca %"class.xercesc_2_7::DOMString", align 8
  %9 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %10 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %11 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %12 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %1, i64 0, i32 7
  %13 = load i8, ptr %12, align 8, !tbaa !49, !range !50, !noundef !51
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %28, label %15

15:                                               ; preds = %4
  %16 = tail call ptr @__cxa_allocate_exception(i64 24) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #9
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef 0)
          to label %17 unwind label %19

17:                                               ; preds = %15
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %16, i16 noundef signext 11, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %18 unwind label %21

18:                                               ; preds = %17
  invoke void @__cxa_throw(ptr nonnull %16, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #10
          to label %192 unwind label %21

19:                                               ; preds = %15
  %20 = landingpad { ptr, i32 }
          cleanup
  br label %24

21:                                               ; preds = %18, %17
  %22 = phi i1 [ false, %18 ], [ true, %17 ]
  %23 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #9
  br label %24

24:                                               ; preds = %21, %19
  %25 = phi i1 [ %22, %21 ], [ true, %19 ]
  %26 = phi { ptr, i32 } [ %23, %21 ], [ %20, %19 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  br i1 %25, label %27, label %190

27:                                               ; preds = %24
  call void @__cxa_free_exception(ptr %16) #9
  br label %190

28:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #9
  call void @_ZNK11xercesc_2_78DOM_Node16getOwnerDocumentEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Document") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #9
  invoke void @_ZNK11xercesc_2_78DOM_Node16getOwnerDocumentEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Document") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %29 unwind label %37

29:                                               ; preds = %28
  %30 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %31 unwind label %39

31:                                               ; preds = %29
  call void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #9
  call void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  br i1 %30, label %32, label %52

32:                                               ; preds = %31
  %33 = call ptr @__cxa_allocate_exception(i64 24) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #9
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef 0)
          to label %34 unwind label %43

34:                                               ; preds = %32
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %33, i16 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %35 unwind label %45

35:                                               ; preds = %34
  invoke void @__cxa_throw(ptr nonnull %33, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #10
          to label %36 unwind label %45

36:                                               ; preds = %35
  unreachable

37:                                               ; preds = %28
  %38 = landingpad { ptr, i32 }
          cleanup
  br label %41

39:                                               ; preds = %29
  %40 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #9
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi { ptr, i32 } [ %40, %39 ], [ %38, %37 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #9
  call void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  br label %190

43:                                               ; preds = %32
  %44 = landingpad { ptr, i32 }
          cleanup
  br label %48

45:                                               ; preds = %35, %34
  %46 = phi i1 [ false, %35 ], [ true, %34 ]
  %47 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #9
  br label %48

48:                                               ; preds = %45, %43
  %49 = phi i1 [ %46, %45 ], [ true, %43 ]
  %50 = phi { ptr, i32 } [ %47, %45 ], [ %44, %43 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #9
  br i1 %49, label %51, label %190

51:                                               ; preds = %48
  call void @__cxa_free_exception(ptr %33) #9
  br label %190

52:                                               ; preds = %31
  %53 = call noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeeqERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3)
  br i1 %53, label %54, label %55

54:                                               ; preds = %52
  call void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %189

55:                                               ; preds = %52
  %56 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %1, i64 0, i32 6
  %57 = load ptr, ptr %56, align 8, !tbaa !52
  %58 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %57, i64 0, i32 11
  %59 = load ptr, ptr %58, align 8, !tbaa !88
  %60 = call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %59)
  %61 = load ptr, ptr %56, align 8, !tbaa !52
  %62 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %61, i64 0, i32 11
  %63 = load ptr, ptr %62, align 8, !tbaa !88
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_715BaseRefVectorOfINS_8NodeImplEEE, i64 0, inrange i32 0, i64 2), ptr %60, align 8, !tbaa !35
  %64 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %60, i64 0, i32 1
  store i8 0, ptr %64, align 8, !tbaa !89
  %65 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %60, i64 0, i32 2
  store i32 0, ptr %65, align 4, !tbaa !91
  %66 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %60, i64 0, i32 3
  store i32 1, ptr %66, align 8, !tbaa !92
  %67 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %60, i64 0, i32 4
  store ptr null, ptr %67, align 8, !tbaa !93
  %68 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %60, i64 0, i32 5
  store ptr %63, ptr %68, align 8, !tbaa !94
  %69 = load ptr, ptr %63, align 8, !tbaa !35
  %70 = getelementptr inbounds ptr, ptr %69, i64 2
  %71 = load ptr, ptr %70, align 8
  %72 = invoke noundef ptr %71(ptr noundef nonnull align 8 dereferenceable(8) %63, i64 noundef 8)
          to label %73 unwind label %90

73:                                               ; preds = %55
  store ptr %72, ptr %67, align 8, !tbaa !93
  store ptr null, ptr %72, align 8, !tbaa !67
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_8NodeImplEEE, i64 0, inrange i32 0, i64 2), ptr %60, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #9
  call void @_ZN11xercesc_2_78DOM_NodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9)
  %74 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %1, i64 0, i32 1
  %75 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %74)
          to label %76 unwind label %94

76:                                               ; preds = %73, %89
  %77 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef null)
          to label %78 unwind label %92

78:                                               ; preds = %76
  br i1 %77, label %79, label %102

79:                                               ; preds = %78
  %80 = load ptr, ptr %9, align 8, !tbaa !52
  invoke void @_ZN11xercesc_2_715BaseRefVectorOfINS_8NodeImplEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %60, i32 noundef 1)
          to label %81 unwind label %92

81:                                               ; preds = %79
  %82 = load ptr, ptr %67, align 8, !tbaa !93
  %83 = load i32, ptr %65, align 4, !tbaa !91
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds ptr, ptr %82, i64 %84
  store ptr %80, ptr %85, align 8, !tbaa !67
  %86 = add i32 %83, 1
  store i32 %86, ptr %65, align 4, !tbaa !91
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #9
  invoke void @_ZNK11xercesc_2_78DOM_Node13getParentNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %87 unwind label %96

87:                                               ; preds = %81
  %88 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %89 unwind label %98

89:                                               ; preds = %87
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #9
  br label %76, !llvm.loop !95

90:                                               ; preds = %55
  %91 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef nonnull %60, ptr noundef %59) #9
  br label %190

92:                                               ; preds = %76, %79
  %93 = landingpad { ptr, i32 }
          cleanup
  br label %187

94:                                               ; preds = %73
  %95 = landingpad { ptr, i32 }
          cleanup
  br label %187

96:                                               ; preds = %81
  %97 = landingpad { ptr, i32 }
          cleanup
  br label %100

98:                                               ; preds = %87
  %99 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #9
  br label %100

100:                                              ; preds = %98, %96
  %101 = phi { ptr, i32 } [ %99, %98 ], [ %97, %96 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #9
  br label %187

102:                                              ; preds = %78
  %103 = load ptr, ptr %56, align 8, !tbaa !52
  %104 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %103, i64 0, i32 11
  %105 = load ptr, ptr %104, align 8, !tbaa !88
  %106 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %105)
          to label %107 unwind label %139

107:                                              ; preds = %102
  %108 = load ptr, ptr %56, align 8, !tbaa !52
  %109 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %108, i64 0, i32 11
  %110 = load ptr, ptr %109, align 8, !tbaa !88
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_715BaseRefVectorOfINS_8NodeImplEEE, i64 0, inrange i32 0, i64 2), ptr %106, align 8, !tbaa !35
  %111 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %106, i64 0, i32 1
  store i8 0, ptr %111, align 8, !tbaa !89
  %112 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %106, i64 0, i32 2
  store i32 0, ptr %112, align 4, !tbaa !91
  %113 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %106, i64 0, i32 3
  store i32 1, ptr %113, align 8, !tbaa !92
  %114 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %106, i64 0, i32 4
  store ptr null, ptr %114, align 8, !tbaa !93
  %115 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %106, i64 0, i32 5
  store ptr %110, ptr %115, align 8, !tbaa !94
  %116 = load ptr, ptr %110, align 8, !tbaa !35
  %117 = getelementptr inbounds ptr, ptr %116, i64 2
  %118 = load ptr, ptr %117, align 8
  %119 = invoke noundef ptr %118(ptr noundef nonnull align 8 dereferenceable(8) %110, i64 noundef 8)
          to label %120 unwind label %141

120:                                              ; preds = %107
  store ptr %119, ptr %114, align 8, !tbaa !93
  store ptr null, ptr %119, align 8, !tbaa !67
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_8NodeImplEEE, i64 0, inrange i32 0, i64 2), ptr %106, align 8, !tbaa !35
  %121 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %1, i64 0, i32 3
  %122 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %121)
          to label %123 unwind label %139

123:                                              ; preds = %120, %136
  %124 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef null)
          to label %125 unwind label %137

125:                                              ; preds = %123
  br i1 %124, label %126, label %149

126:                                              ; preds = %125
  %127 = load ptr, ptr %9, align 8, !tbaa !52
  invoke void @_ZN11xercesc_2_715BaseRefVectorOfINS_8NodeImplEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %106, i32 noundef 1)
          to label %128 unwind label %137

128:                                              ; preds = %126
  %129 = load ptr, ptr %114, align 8, !tbaa !93
  %130 = load i32, ptr %112, align 4, !tbaa !91
  %131 = zext i32 %130 to i64
  %132 = getelementptr inbounds ptr, ptr %129, i64 %131
  store ptr %127, ptr %132, align 8, !tbaa !67
  %133 = add i32 %130, 1
  store i32 %133, ptr %112, align 4, !tbaa !91
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #9
  invoke void @_ZNK11xercesc_2_78DOM_Node13getParentNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %11, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %134 unwind label %143

134:                                              ; preds = %128
  %135 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %136 unwind label %145

136:                                              ; preds = %134
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #9
  br label %123, !llvm.loop !96

137:                                              ; preds = %123, %126
  %138 = landingpad { ptr, i32 }
          cleanup
  br label %187

139:                                              ; preds = %102, %120
  %140 = landingpad { ptr, i32 }
          cleanup
  br label %187

141:                                              ; preds = %107
  %142 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef nonnull %106, ptr noundef %105) #9
  br label %187

143:                                              ; preds = %128
  %144 = landingpad { ptr, i32 }
          cleanup
  br label %147

145:                                              ; preds = %134
  %146 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #9
  br label %147

147:                                              ; preds = %145, %143
  %148 = phi { ptr, i32 } [ %146, %145 ], [ %144, %143 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #9
  br label %187

149:                                              ; preds = %125
  %150 = load i32, ptr %65, align 4, !tbaa !91
  %151 = load i32, ptr %112, align 4, !tbaa !91
  %152 = add i32 %151, -1
  %153 = add i32 %150, -1
  %154 = icmp sgt i32 %153, -1
  %155 = icmp sgt i32 %152, -1
  %156 = select i1 %154, i1 %155, i1 false
  br i1 %156, label %163, label %178

157:                                              ; preds = %172
  %158 = add nsw i32 %165, -1
  %159 = add nsw i32 %164, -1
  %160 = icmp sgt i32 %164, 0
  %161 = icmp sgt i32 %165, 0
  %162 = select i1 %160, i1 %161, i1 false
  br i1 %162, label %163, label %178, !llvm.loop !97

163:                                              ; preds = %149, %157
  %164 = phi i32 [ %159, %157 ], [ %153, %149 ]
  %165 = phi i32 [ %158, %157 ], [ %152, %149 ]
  %166 = phi ptr [ %173, %157 ], [ null, %149 ]
  %167 = invoke noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_8NodeImplEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %60, i32 noundef %164)
          to label %168 unwind label %174

168:                                              ; preds = %163
  %169 = invoke noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_8NodeImplEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %106, i32 noundef %165)
          to label %170 unwind label %174

170:                                              ; preds = %168
  %171 = icmp eq ptr %167, %169
  br i1 %171, label %172, label %178

172:                                              ; preds = %170
  %173 = invoke noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_8NodeImplEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %60, i32 noundef %164)
          to label %157 unwind label %174, !llvm.loop !97

174:                                              ; preds = %163, %168, %172
  %175 = landingpad { ptr, i32 }
          cleanup
  br label %187

176:                                              ; preds = %178
  %177 = landingpad { ptr, i32 }
          cleanup
  br label %187

178:                                              ; preds = %170, %157, %149
  %179 = phi ptr [ null, %149 ], [ %166, %170 ], [ %173, %157 ]
  %180 = load ptr, ptr %60, align 8, !tbaa !35
  %181 = getelementptr inbounds ptr, ptr %180, i64 1
  %182 = load ptr, ptr %181, align 8
  call void %182(ptr noundef nonnull align 8 dereferenceable(40) %60) #9
  %183 = load ptr, ptr %106, align 8, !tbaa !35
  %184 = getelementptr inbounds ptr, ptr %183, i64 1
  %185 = load ptr, ptr %184, align 8
  call void %185(ptr noundef nonnull align 8 dereferenceable(40) %106) #9
  invoke void @_ZN11xercesc_2_78DOM_NodeC1EPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %179)
          to label %186 unwind label %176

186:                                              ; preds = %178
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #9
  br label %189

187:                                              ; preds = %174, %176, %137, %139, %92, %94, %141, %147, %100
  %188 = phi { ptr, i32 } [ %101, %100 ], [ %148, %147 ], [ %142, %141 ], [ %93, %92 ], [ %95, %94 ], [ %138, %137 ], [ %140, %139 ], [ %175, %174 ], [ %177, %176 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #9
  br label %190

189:                                              ; preds = %186, %54
  ret void

190:                                              ; preds = %90, %187, %48, %51, %24, %27, %41
  %191 = phi { ptr, i32 } [ %26, %27 ], [ %26, %24 ], [ %50, %51 ], [ %50, %48 ], [ %42, %41 ], [ %188, %187 ], [ %91, %90 ]
  resume { ptr, i32 } %191

192:                                              ; preds = %18
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xercesc_2_79RangeImpl8nextNodeERKNS_8DOM_NodeEb(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i1 noundef zeroext %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %5 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %6 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %7 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %8 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %9 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %10 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %11 = tail call noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeeqEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef null)
  br i1 %11, label %12, label %13

12:                                               ; preds = %4
  tail call void @_ZN11xercesc_2_78DOM_NodeC1EPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef null)
  br label %92

13:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #9
  call void @_ZN11xercesc_2_78DOM_NodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
  br i1 %3, label %14, label %28

14:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #9
  invoke void @_ZNK11xercesc_2_78DOM_Node13getFirstChildEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %15 unwind label %20

15:                                               ; preds = %14
  %16 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %17 unwind label %22

17:                                               ; preds = %15
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  %18 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef null)
          to label %19 unwind label %26

19:                                               ; preds = %17
  br i1 %18, label %34, label %28

20:                                               ; preds = %14
  %21 = landingpad { ptr, i32 }
          cleanup
  br label %24

22:                                               ; preds = %15
  %23 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #9
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi { ptr, i32 } [ %23, %22 ], [ %21, %20 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  br label %90

26:                                               ; preds = %34, %31, %17
  %27 = landingpad { ptr, i32 }
          cleanup
  br label %90

28:                                               ; preds = %19, %13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #9
  invoke void @_ZNK11xercesc_2_78DOM_Node14getNextSiblingEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %29 unwind label %35

29:                                               ; preds = %28
  %30 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %31 unwind label %37

31:                                               ; preds = %29
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #9
  %32 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef null)
          to label %33 unwind label %26

33:                                               ; preds = %31
  br i1 %32, label %34, label %41

34:                                               ; preds = %19, %33
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %89 unwind label %26

35:                                               ; preds = %28
  %36 = landingpad { ptr, i32 }
          cleanup
  br label %39

37:                                               ; preds = %29
  %38 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #9
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi { ptr, i32 } [ %38, %37 ], [ %36, %35 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #9
  br label %90

41:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #9
  invoke void @_ZNK11xercesc_2_78DOM_Node13getParentNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %42 unwind label %59

42:                                               ; preds = %41
  %43 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %1, i64 0, i32 6
  %44 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %1, i64 0, i32 3
  br label %45

45:                                               ; preds = %42, %76
  %46 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef null)
          to label %47 unwind label %61

47:                                               ; preds = %45
  br i1 %46, label %48, label %83

48:                                               ; preds = %47
  %49 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %43)
          to label %50 unwind label %61

50:                                               ; preds = %48
  br i1 %49, label %51, label %83

51:                                               ; preds = %50
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #9
  invoke void @_ZNK11xercesc_2_78DOM_Node14getNextSiblingEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %52 unwind label %65

52:                                               ; preds = %51
  %53 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %54 unwind label %67

54:                                               ; preds = %52
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #9
  %55 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef null)
          to label %56 unwind label %61

56:                                               ; preds = %54
  br i1 %55, label %57, label %71

57:                                               ; preds = %56, %76
  %58 = phi ptr [ %8, %76 ], [ %5, %56 ]
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %58)
          to label %84 unwind label %63

59:                                               ; preds = %41
  %60 = landingpad { ptr, i32 }
          cleanup
  br label %87

61:                                               ; preds = %45, %48, %54, %74
  %62 = landingpad { ptr, i32 }
          cleanup
  br label %85

63:                                               ; preds = %57, %83
  %64 = landingpad { ptr, i32 }
          cleanup
  br label %85

65:                                               ; preds = %51
  %66 = landingpad { ptr, i32 }
          cleanup
  br label %69

67:                                               ; preds = %52
  %68 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #9
  br label %69

69:                                               ; preds = %67, %65
  %70 = phi { ptr, i32 } [ %68, %67 ], [ %66, %65 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #9
  br label %85

71:                                               ; preds = %56
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #9
  invoke void @_ZNK11xercesc_2_78DOM_Node13getParentNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %72 unwind label %77

72:                                               ; preds = %71
  %73 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %74 unwind label %79

74:                                               ; preds = %72
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #9
  %75 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeeqERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %44)
          to label %76 unwind label %61

76:                                               ; preds = %74
  br i1 %75, label %57, label %45, !llvm.loop !98

77:                                               ; preds = %71
  %78 = landingpad { ptr, i32 }
          cleanup
  br label %81

79:                                               ; preds = %72
  %80 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #9
  br label %81

81:                                               ; preds = %79, %77
  %82 = phi { ptr, i32 } [ %80, %79 ], [ %78, %77 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #9
  br label %85

83:                                               ; preds = %47, %50
  invoke void @_ZN11xercesc_2_78DOM_NodeC1EPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef null)
          to label %84 unwind label %63

84:                                               ; preds = %57, %83
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #9
  br label %89

85:                                               ; preds = %61, %63, %81, %69
  %86 = phi { ptr, i32 } [ %82, %81 ], [ %70, %69 ], [ %62, %61 ], [ %64, %63 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #9
  br label %87

87:                                               ; preds = %85, %59
  %88 = phi { ptr, i32 } [ %86, %85 ], [ %60, %59 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #9
  br label %90

89:                                               ; preds = %34, %84
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  br label %92

90:                                               ; preds = %87, %39, %26, %24
  %91 = phi { ptr, i32 } [ %27, %26 ], [ %88, %87 ], [ %40, %39 ], [ %25, %24 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  resume { ptr, i32 } %91

92:                                               ; preds = %89, %12
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79RangeImpl14deleteContentsEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #0 align 2 !prof !34 {
  %2 = alloca %"class.xercesc_2_7::DOM_DocumentFragment", align 8
  call void @_ZN11xercesc_2_79RangeImpl16traverseContentsENS0_13TraversalTypeE(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_DocumentFragment") align 8 %2, ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef 3)
  call void @_ZN11xercesc_2_720DOM_DocumentFragmentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #9
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79RangeImpl16traverseContentsENS0_13TraversalTypeE(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOM_DocumentFragment") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %4 = alloca %"class.xercesc_2_7::DOMString", align 8
  %5 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %6 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %7 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %8 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %9 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %10 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %11 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %12 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %13 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %14 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %1, i64 0, i32 7
  %15 = load i8, ptr %14, align 8, !tbaa !49, !range !50, !noundef !51
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %30, label %17

17:                                               ; preds = %3
  %18 = tail call ptr @__cxa_allocate_exception(i64 24) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 0)
          to label %19 unwind label %21

19:                                               ; preds = %17
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %18, i16 noundef signext 11, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %20 unwind label %23

20:                                               ; preds = %19
  invoke void @__cxa_throw(ptr nonnull %18, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #10
          to label %115 unwind label %23

21:                                               ; preds = %17
  %22 = landingpad { ptr, i32 }
          cleanup
  br label %26

23:                                               ; preds = %20, %19
  %24 = phi i1 [ false, %20 ], [ true, %19 ]
  %25 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #9
  br label %26

26:                                               ; preds = %23, %21
  %27 = phi { ptr, i32 } [ %25, %23 ], [ %22, %21 ]
  %28 = phi i1 [ %24, %23 ], [ true, %21 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  br i1 %28, label %29, label %113

29:                                               ; preds = %26
  call void @__cxa_free_exception(ptr %18) #9
  br label %113

30:                                               ; preds = %3
  %31 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %1, i64 0, i32 1
  %32 = tail call noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeeqEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %31, ptr noundef null)
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %1, i64 0, i32 3
  %35 = tail call noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeeqEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %34, ptr noundef null)
  br i1 %35, label %36, label %37

36:                                               ; preds = %33, %30
  tail call void @_ZN11xercesc_2_720DOM_DocumentFragmentC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %0)
  br label %112

37:                                               ; preds = %33
  %38 = tail call noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeeqERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %31, ptr noundef nonnull align 8 dereferenceable(8) %34)
  br i1 %38, label %39, label %40

39:                                               ; preds = %37
  tail call void @_ZN11xercesc_2_79RangeImpl21traverseSameContainerEi(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_DocumentFragment") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2)
  br label %112

40:                                               ; preds = %37
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #9
  call void @_ZNK11xercesc_2_78DOM_Node13getFirstChildEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %31)
  br label %41

41:                                               ; preds = %59, %40
  %42 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef null)
          to label %43 unwind label %44

43:                                               ; preds = %41
  br i1 %42, label %48, label %68

44:                                               ; preds = %41, %48
  %45 = landingpad { ptr, i32 }
          cleanup
  br label %66

46:                                               ; preds = %51
  %47 = landingpad { ptr, i32 }
          cleanup
  br label %66

48:                                               ; preds = %43
  %49 = invoke noundef zeroext i1 @_ZN11xercesc_2_79RangeImpl12isAncestorOfERKNS_8DOM_NodeES3_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %34)
          to label %50 unwind label %44

50:                                               ; preds = %48
  br i1 %49, label %51, label %56

51:                                               ; preds = %50
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %52 unwind label %46

52:                                               ; preds = %51
  invoke void @_ZN11xercesc_2_79RangeImpl28traverseCommonStartContainerENS_8DOM_NodeEi(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_DocumentFragment") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull %6, i32 noundef %2)
          to label %53 unwind label %54

53:                                               ; preds = %52
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #9
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  br i1 %42, label %112, label %69

54:                                               ; preds = %52
  %55 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #9
  br label %66

56:                                               ; preds = %50
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #9
  invoke void @_ZNK11xercesc_2_78DOM_Node14getNextSiblingEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %57 unwind label %60

57:                                               ; preds = %56
  %58 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %59 unwind label %62

59:                                               ; preds = %57
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #9
  br label %41, !llvm.loop !99

60:                                               ; preds = %56
  %61 = landingpad { ptr, i32 }
          cleanup
  br label %64

62:                                               ; preds = %57
  %63 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #9
  br label %64

64:                                               ; preds = %62, %60
  %65 = phi { ptr, i32 } [ %63, %62 ], [ %61, %60 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #9
  br label %66

66:                                               ; preds = %44, %46, %64, %54
  %67 = phi { ptr, i32 } [ %55, %54 ], [ %65, %64 ], [ %45, %44 ], [ %47, %46 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  br label %113

68:                                               ; preds = %43
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  br label %69

69:                                               ; preds = %68, %53
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #9
  call void @_ZNK11xercesc_2_78DOM_Node13getFirstChildEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %34)
  br label %70

70:                                               ; preds = %88, %69
  %71 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef null)
          to label %72 unwind label %73

72:                                               ; preds = %70
  br i1 %71, label %77, label %97

73:                                               ; preds = %70, %77
  %74 = landingpad { ptr, i32 }
          cleanup
  br label %95

75:                                               ; preds = %80
  %76 = landingpad { ptr, i32 }
          cleanup
  br label %95

77:                                               ; preds = %72
  %78 = invoke noundef zeroext i1 @_ZN11xercesc_2_79RangeImpl12isAncestorOfERKNS_8DOM_NodeES3_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %31)
          to label %79 unwind label %73

79:                                               ; preds = %77
  br i1 %78, label %80, label %85

80:                                               ; preds = %79
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %81 unwind label %75

81:                                               ; preds = %80
  invoke void @_ZN11xercesc_2_79RangeImpl26traverseCommonEndContainerENS_8DOM_NodeEi(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_DocumentFragment") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull %9, i32 noundef %2)
          to label %82 unwind label %83

82:                                               ; preds = %81
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #9
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #9
  br i1 %71, label %112, label %98

83:                                               ; preds = %81
  %84 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #9
  br label %95

85:                                               ; preds = %79
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #9
  invoke void @_ZNK11xercesc_2_78DOM_Node14getNextSiblingEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %86 unwind label %89

86:                                               ; preds = %85
  %87 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %88 unwind label %91

88:                                               ; preds = %86
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #9
  br label %70, !llvm.loop !100

89:                                               ; preds = %85
  %90 = landingpad { ptr, i32 }
          cleanup
  br label %93

91:                                               ; preds = %86
  %92 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #9
  br label %93

93:                                               ; preds = %91, %89
  %94 = phi { ptr, i32 } [ %92, %91 ], [ %90, %89 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #9
  br label %95

95:                                               ; preds = %73, %75, %93, %83
  %96 = phi { ptr, i32 } [ %84, %83 ], [ %94, %93 ], [ %74, %73 ], [ %76, %75 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #9
  br label %113

97:                                               ; preds = %72
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #9
  br label %98

98:                                               ; preds = %97, %82
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #9
  call void @_ZNK11xercesc_2_79RangeImpl16commonAncestorOfERKNS_8DOM_NodeES3_(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %11, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(8) %31, ptr noundef nonnull align 8 dereferenceable(8) %34)
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %99 unwind label %102

99:                                               ; preds = %98
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %100 unwind label %104

100:                                              ; preds = %99
  invoke void @_ZN11xercesc_2_79RangeImpl23traverseCommonAncestorsENS_8DOM_NodeES1_i(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_DocumentFragment") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull %12, ptr noundef nonnull %13, i32 noundef %2)
          to label %101 unwind label %106

101:                                              ; preds = %100
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13) #9
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12) #9
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #9
  br label %112

102:                                              ; preds = %98
  %103 = landingpad { ptr, i32 }
          cleanup
  br label %110

104:                                              ; preds = %99
  %105 = landingpad { ptr, i32 }
          cleanup
  br label %108

106:                                              ; preds = %100
  %107 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13) #9
  br label %108

108:                                              ; preds = %106, %104
  %109 = phi { ptr, i32 } [ %107, %106 ], [ %105, %104 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12) #9
  br label %110

110:                                              ; preds = %108, %102
  %111 = phi { ptr, i32 } [ %109, %108 ], [ %103, %102 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #9
  br label %113

112:                                              ; preds = %82, %53, %101, %39, %36
  ret void

113:                                              ; preds = %26, %29, %110, %95, %66
  %114 = phi { ptr, i32 } [ %27, %29 ], [ %27, %26 ], [ %111, %110 ], [ %96, %95 ], [ %67, %66 ]
  resume { ptr, i32 } %114

115:                                              ; preds = %20
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79RangeImpl13checkReadOnlyERNS_8DOM_NodeES2_jj(ptr nocapture noundef nonnull readnone align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %6 = alloca %"class.xercesc_2_7::DOMString", align 8
  %7 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %8 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %9 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %10 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %11 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %12 = tail call noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeeqEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef null)
  br i1 %12, label %93, label %13

13:                                               ; preds = %5
  %14 = tail call noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeeqEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef null)
  br i1 %14, label %93, label %15

15:                                               ; preds = %13
  %16 = tail call noundef signext i16 @_ZNK11xercesc_2_78DOM_Node11getNodeTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %17 = icmp eq i16 %16, 3
  br i1 %17, label %18, label %40

18:                                               ; preds = %15
  %19 = load ptr, ptr %1, align 8, !tbaa !52
  %20 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %19, i64 0, i32 3
  %21 = load i16, ptr %20, align 8, !tbaa !83
  %22 = load i16, ptr @_ZN11xercesc_2_78NodeImpl8READONLYE, align 2, !tbaa !101
  %23 = and i16 %22, %21
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %38, label %25

25:                                               ; preds = %18
  %26 = tail call ptr @__cxa_allocate_exception(i64 24) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #9
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 0)
          to label %27 unwind label %29

27:                                               ; preds = %25
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %26, i16 noundef signext 7, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %28 unwind label %31

28:                                               ; preds = %27
  invoke void @__cxa_throw(ptr nonnull %26, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #10
          to label %102 unwind label %31

29:                                               ; preds = %25
  %30 = landingpad { ptr, i32 }
          cleanup
  br label %34

31:                                               ; preds = %28, %27
  %32 = phi i1 [ false, %28 ], [ true, %27 ]
  %33 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #9
  br label %34

34:                                               ; preds = %31, %29
  %35 = phi { ptr, i32 } [ %33, %31 ], [ %30, %29 ]
  %36 = phi i1 [ %32, %31 ], [ true, %29 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  br i1 %36, label %37, label %100

37:                                               ; preds = %34
  call void @__cxa_free_exception(ptr %26) #9
  br label %100

38:                                               ; preds = %18
  %39 = tail call noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeeqERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  br i1 %39, label %93, label %40

40:                                               ; preds = %38, %15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #9
  call void @_ZNK11xercesc_2_78DOM_Node13getFirstChildEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %41 = icmp eq i32 %3, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %47, %40
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #9
  invoke void @_ZN11xercesc_2_78DOM_NodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %56 unwind label %62

43:                                               ; preds = %40, %47
  %44 = phi i32 [ %48, %47 ], [ 0, %40 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #9
  invoke void @_ZNK11xercesc_2_78DOM_Node14getNextSiblingEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %45 unwind label %50

45:                                               ; preds = %43
  %46 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %47 unwind label %52

47:                                               ; preds = %45
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #9
  %48 = add nuw i32 %44, 1
  %49 = icmp eq i32 %48, %3
  br i1 %49, label %42, label %43, !llvm.loop !102

50:                                               ; preds = %43
  %51 = landingpad { ptr, i32 }
          cleanup
  br label %54

52:                                               ; preds = %45
  %53 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #9
  br label %54

54:                                               ; preds = %52, %50
  %55 = phi { ptr, i32 } [ %53, %52 ], [ %51, %50 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #9
  br label %98

56:                                               ; preds = %42
  %57 = invoke noundef signext i16 @_ZNK11xercesc_2_78DOM_Node11getNodeTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %58 unwind label %64

58:                                               ; preds = %56
  %59 = icmp eq i16 %57, 3
  br i1 %59, label %60, label %66

60:                                               ; preds = %58
  %61 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %91 unwind label %64

62:                                               ; preds = %42
  %63 = landingpad { ptr, i32 }
          cleanup
  br label %96

64:                                               ; preds = %91, %60, %56
  %65 = landingpad { ptr, i32 }
          cleanup
  br label %94

66:                                               ; preds = %58
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #9
  invoke void @_ZNK11xercesc_2_78DOM_Node13getFirstChildEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %67 unwind label %72

67:                                               ; preds = %66
  %68 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %69 unwind label %74

69:                                               ; preds = %67
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #9
  %70 = add i32 %4, -1
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %91, label %78

72:                                               ; preds = %66
  %73 = landingpad { ptr, i32 }
          cleanup
  br label %76

74:                                               ; preds = %67
  %75 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #9
  br label %76

76:                                               ; preds = %74, %72
  %77 = phi { ptr, i32 } [ %75, %74 ], [ %73, %72 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #9
  br label %94

78:                                               ; preds = %69, %82
  %79 = phi i32 [ %83, %82 ], [ 0, %69 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #9
  invoke void @_ZNK11xercesc_2_78DOM_Node14getNextSiblingEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %11, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %80 unwind label %85

80:                                               ; preds = %78
  %81 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %82 unwind label %87

82:                                               ; preds = %80
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #9
  %83 = add nuw i32 %79, 1
  %84 = icmp eq i32 %83, %70
  br i1 %84, label %91, label %78, !llvm.loop !103

85:                                               ; preds = %78
  %86 = landingpad { ptr, i32 }
          cleanup
  br label %89

87:                                               ; preds = %80
  %88 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #9
  br label %89

89:                                               ; preds = %87, %85
  %90 = phi { ptr, i32 } [ %88, %87 ], [ %86, %85 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #9
  br label %94

91:                                               ; preds = %82, %69, %60
  invoke void @_ZN11xercesc_2_79RangeImpl19recurseTreeAndCheckERNS_8DOM_NodeES2_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %92 unwind label %64

92:                                               ; preds = %91
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #9
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #9
  br label %93

93:                                               ; preds = %38, %5, %13, %92
  ret void

94:                                               ; preds = %89, %76, %64
  %95 = phi { ptr, i32 } [ %65, %64 ], [ %90, %89 ], [ %77, %76 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #9
  br label %96

96:                                               ; preds = %94, %62
  %97 = phi { ptr, i32 } [ %95, %94 ], [ %63, %62 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #9
  br label %98

98:                                               ; preds = %96, %54
  %99 = phi { ptr, i32 } [ %55, %54 ], [ %97, %96 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #9
  br label %100

100:                                              ; preds = %34, %37, %98
  %101 = phi { ptr, i32 } [ %35, %37 ], [ %35, %34 ], [ %99, %98 ]
  resume { ptr, i32 } %101

102:                                              ; preds = %28
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xercesc_2_79RangeImpl13cloneContentsEv(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOM_DocumentFragment") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1) local_unnamed_addr #0 align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_79RangeImpl16traverseContentsENS0_13TraversalTypeE(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_DocumentFragment") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef 2)
  ret void
}

declare void @_ZN11xercesc_2_78DOM_Text9splitTextEj(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_Text") align 8, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_78DOM_TextD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

declare void @_ZN11xercesc_2_78DOM_Node12insertBeforeERKS0_S2_(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_Node") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_79RangeImpl10cloneRangeEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %2 = alloca %"class.xercesc_2_7::DOMString", align 8
  %3 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 7
  %4 = load i8, ptr %3, align 8, !tbaa !49, !range !50, !noundef !51
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @__cxa_allocate_exception(i64 24) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #9
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 0)
          to label %8 unwind label %10

8:                                                ; preds = %6
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %7, i16 noundef signext 11, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %9 unwind label %12

9:                                                ; preds = %8
  invoke void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #10
          to label %33 unwind label %12

10:                                               ; preds = %6
  %11 = landingpad { ptr, i32 }
          cleanup
  br label %15

12:                                               ; preds = %9, %8
  %13 = phi i1 [ false, %9 ], [ true, %8 ]
  %14 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #9
  br label %15

15:                                               ; preds = %12, %10
  %16 = phi { ptr, i32 } [ %14, %12 ], [ %11, %10 ]
  %17 = phi i1 [ %13, %12 ], [ true, %10 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #9
  br i1 %17, label %18, label %32

18:                                               ; preds = %15
  call void @__cxa_free_exception(ptr %7) #9
  br label %32

19:                                               ; preds = %1
  %20 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 6
  %21 = load ptr, ptr %20, align 8, !tbaa !52
  %22 = load ptr, ptr %21, align 8, !tbaa !35
  %23 = getelementptr inbounds ptr, ptr %22, i64 64
  %24 = load ptr, ptr %23, align 8
  %25 = tail call noundef ptr %24(ptr noundef nonnull align 8 dereferenceable(168) %21)
  %26 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 1
  %27 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 2
  %28 = load i32, ptr %27, align 8, !tbaa !38
  tail call void @_ZN11xercesc_2_79RangeImpl8setStartERKNS_8DOM_NodeEj(ptr noundef nonnull align 8 dereferenceable(72) %25, ptr noundef nonnull align 8 dereferenceable(8) %26, i32 noundef %28)
  %29 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 3
  %30 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 4
  %31 = load i32, ptr %30, align 8, !tbaa !47
  tail call void @_ZN11xercesc_2_79RangeImpl6setEndERKNS_8DOM_NodeEj(ptr noundef nonnull align 8 dereferenceable(72) %25, ptr noundef nonnull align 8 dereferenceable(8) %29, i32 noundef %31)
  ret ptr %25

32:                                               ; preds = %15, %18
  resume { ptr, i32 } %16

33:                                               ; preds = %9
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xercesc_2_79RangeImpl8toStringEv(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOMString") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = alloca %"class.xercesc_2_7::DOMString", align 8
  %4 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %5 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %6 = alloca %"class.xercesc_2_7::DOMString", align 8
  %7 = alloca %"class.xercesc_2_7::DOMString", align 8
  %8 = alloca %"class.xercesc_2_7::DOMString", align 8
  %9 = alloca %"class.xercesc_2_7::DOMString", align 8
  %10 = alloca %"class.xercesc_2_7::DOMString", align 8
  %11 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %12 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %13 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %14 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %15 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %16 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %17 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %18 = alloca %"class.xercesc_2_7::DOMString", align 8
  %19 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %20 = alloca %"class.xercesc_2_7::DOMString", align 8
  %21 = alloca %"class.xercesc_2_7::DOMString", align 8
  %22 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %1, i64 0, i32 7
  %23 = load i8, ptr %22, align 8, !tbaa !49, !range !50, !noundef !51
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %38, label %25

25:                                               ; preds = %2
  %26 = tail call ptr @__cxa_allocate_exception(i64 24) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 0)
          to label %27 unwind label %29

27:                                               ; preds = %25
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %26, i16 noundef signext 11, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %28 unwind label %31

28:                                               ; preds = %27
  invoke void @__cxa_throw(ptr nonnull %26, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #10
          to label %281 unwind label %31

29:                                               ; preds = %25
  %30 = landingpad { ptr, i32 }
          cleanup
  br label %34

31:                                               ; preds = %28, %27
  %32 = phi i1 [ false, %28 ], [ true, %27 ]
  %33 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #9
  br label %34

34:                                               ; preds = %31, %29
  %35 = phi { ptr, i32 } [ %33, %31 ], [ %30, %29 ]
  %36 = phi i1 [ %32, %31 ], [ true, %29 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  br i1 %36, label %37, label %279

37:                                               ; preds = %34
  call void @__cxa_free_exception(ptr %26) #9
  br label %279

38:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  %39 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %1, i64 0, i32 1
  call void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %39)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #9
  %40 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %1, i64 0, i32 3
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %40)
          to label %41 unwind label %62

41:                                               ; preds = %38
  invoke void @_ZN11xercesc_2_79DOMStringC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %42 unwind label %64

42:                                               ; preds = %41
  %43 = invoke noundef signext i16 @_ZNK11xercesc_2_78DOM_Node11getNodeTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %39)
          to label %44 unwind label %68

44:                                               ; preds = %42
  %45 = icmp eq i16 %43, 3
  br i1 %45, label %50, label %46

46:                                               ; preds = %44
  %47 = invoke noundef signext i16 @_ZNK11xercesc_2_78DOM_Node11getNodeTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %39)
          to label %48 unwind label %68

48:                                               ; preds = %46
  %49 = icmp eq i16 %47, 4
  br i1 %49, label %50, label %115

50:                                               ; preds = %48, %44
  %51 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeeqERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %39, ptr noundef nonnull align 8 dereferenceable(8) %40)
          to label %52 unwind label %68

52:                                               ; preds = %50
  br i1 %51, label %53, label %80

53:                                               ; preds = %52
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #9
  invoke void @_ZNK11xercesc_2_78DOM_Node12getNodeValueEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %39)
          to label %54 unwind label %70

54:                                               ; preds = %53
  %55 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %1, i64 0, i32 2
  %56 = load i32, ptr %55, align 8, !tbaa !38
  %57 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %1, i64 0, i32 4
  %58 = load i32, ptr %57, align 8, !tbaa !47
  %59 = sub i32 %58, %56
  invoke void @_ZNK11xercesc_2_79DOMString13substringDataEjj(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef %56, i32 noundef %59)
          to label %60 unwind label %72

60:                                               ; preds = %54
  invoke void @_ZN11xercesc_2_79DOMString10appendDataERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %61 unwind label %74

61:                                               ; preds = %60
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #9
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  br label %272

62:                                               ; preds = %38
  %63 = landingpad { ptr, i32 }
          cleanup
  br label %277

64:                                               ; preds = %41
  %65 = landingpad { ptr, i32 }
          cleanup
  br label %275

66:                                               ; preds = %215, %218, %221, %225
  %67 = landingpad { ptr, i32 }
          cleanup
  br label %273

68:                                               ; preds = %42, %46, %50, %147, %160, %165, %248, %252
  %69 = landingpad { ptr, i32 }
          cleanup
  br label %273

70:                                               ; preds = %53
  %71 = landingpad { ptr, i32 }
          cleanup
  br label %78

72:                                               ; preds = %54
  %73 = landingpad { ptr, i32 }
          cleanup
  br label %76

74:                                               ; preds = %60
  %75 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #9
  br label %76

76:                                               ; preds = %74, %72
  %77 = phi { ptr, i32 } [ %75, %74 ], [ %73, %72 ]
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #9
  br label %78

78:                                               ; preds = %76, %70
  %79 = phi { ptr, i32 } [ %77, %76 ], [ %71, %70 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  br label %273

80:                                               ; preds = %52
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #9
  invoke void @_ZNK11xercesc_2_78DOM_Node12getNodeValueEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %39)
          to label %81 unwind label %93

81:                                               ; preds = %80
  %82 = invoke noundef i32 @_ZNK11xercesc_2_79DOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %83 unwind label %95

83:                                               ; preds = %81
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #9
  invoke void @_ZNK11xercesc_2_78DOM_Node12getNodeValueEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %39)
          to label %84 unwind label %99

84:                                               ; preds = %83
  %85 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %1, i64 0, i32 2
  %86 = load i32, ptr %85, align 8, !tbaa !38
  %87 = sub i32 %82, %86
  invoke void @_ZNK11xercesc_2_79DOMString13substringDataEjj(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %10, i32 noundef %86, i32 noundef %87)
          to label %88 unwind label %101

88:                                               ; preds = %84
  invoke void @_ZN11xercesc_2_79DOMString10appendDataERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %89 unwind label %103

89:                                               ; preds = %88
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #9
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #9
  invoke void @_ZNK11xercesc_2_79RangeImpl8nextNodeERKNS_8DOM_NodeEb(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %11, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(8) %4, i1 noundef zeroext true)
          to label %90 unwind label %109

90:                                               ; preds = %89
  %91 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %92 unwind label %111

92:                                               ; preds = %90
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #9
  br label %160

93:                                               ; preds = %80
  %94 = landingpad { ptr, i32 }
          cleanup
  br label %97

95:                                               ; preds = %81
  %96 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #9
  br label %97

97:                                               ; preds = %95, %93
  %98 = phi { ptr, i32 } [ %96, %95 ], [ %94, %93 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #9
  br label %273

99:                                               ; preds = %83
  %100 = landingpad { ptr, i32 }
          cleanup
  br label %107

101:                                              ; preds = %84
  %102 = landingpad { ptr, i32 }
          cleanup
  br label %105

103:                                              ; preds = %88
  %104 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #9
  br label %105

105:                                              ; preds = %103, %101
  %106 = phi { ptr, i32 } [ %104, %103 ], [ %102, %101 ]
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #9
  br label %107

107:                                              ; preds = %105, %99
  %108 = phi { ptr, i32 } [ %106, %105 ], [ %100, %99 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #9
  br label %273

109:                                              ; preds = %89
  %110 = landingpad { ptr, i32 }
          cleanup
  br label %113

111:                                              ; preds = %90
  %112 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #9
  br label %113

113:                                              ; preds = %111, %109
  %114 = phi { ptr, i32 } [ %112, %111 ], [ %110, %109 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #9
  br label %273

115:                                              ; preds = %48
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #9
  invoke void @_ZNK11xercesc_2_78DOM_Node13getFirstChildEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %12, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %116 unwind label %133

116:                                              ; preds = %115
  %117 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %118 unwind label %135

118:                                              ; preds = %116
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #9
  %119 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %1, i64 0, i32 2
  %120 = load i32, ptr %119, align 8
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %147, label %122

122:                                              ; preds = %118, %129
  %123 = phi i32 [ %130, %129 ], [ 0, %118 ]
  %124 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef null)
          to label %125 unwind label %139

125:                                              ; preds = %122
  br i1 %124, label %126, label %147

126:                                              ; preds = %125
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #9
  invoke void @_ZNK11xercesc_2_78DOM_Node14getNextSiblingEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %13, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %127 unwind label %141

127:                                              ; preds = %126
  %128 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %129 unwind label %143

129:                                              ; preds = %127
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #9
  %130 = add nuw i32 %123, 1
  %131 = load i32, ptr %119, align 8, !tbaa !38
  %132 = icmp ult i32 %130, %131
  br i1 %132, label %122, label %147, !llvm.loop !104

133:                                              ; preds = %115
  %134 = landingpad { ptr, i32 }
          cleanup
  br label %137

135:                                              ; preds = %116
  %136 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12) #9
  br label %137

137:                                              ; preds = %135, %133
  %138 = phi { ptr, i32 } [ %136, %135 ], [ %134, %133 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #9
  br label %273

139:                                              ; preds = %122
  %140 = landingpad { ptr, i32 }
          cleanup
  br label %273

141:                                              ; preds = %126
  %142 = landingpad { ptr, i32 }
          cleanup
  br label %145

143:                                              ; preds = %127
  %144 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13) #9
  br label %145

145:                                              ; preds = %143, %141
  %146 = phi { ptr, i32 } [ %144, %143 ], [ %142, %141 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #9
  br label %273

147:                                              ; preds = %125, %129, %118
  %148 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeeqEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef null)
          to label %149 unwind label %68

149:                                              ; preds = %147
  br i1 %148, label %150, label %160

150:                                              ; preds = %149
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #9
  invoke void @_ZNK11xercesc_2_79RangeImpl8nextNodeERKNS_8DOM_NodeEb(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %14, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(8) %39, i1 noundef zeroext false)
          to label %151 unwind label %154

151:                                              ; preds = %150
  %152 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %153 unwind label %156

153:                                              ; preds = %151
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #9
  br label %160

154:                                              ; preds = %150
  %155 = landingpad { ptr, i32 }
          cleanup
  br label %158

156:                                              ; preds = %151
  %157 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14) #9
  br label %158

158:                                              ; preds = %156, %154
  %159 = phi { ptr, i32 } [ %157, %156 ], [ %155, %154 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #9
  br label %273

160:                                              ; preds = %149, %153, %92
  %161 = invoke noundef signext i16 @_ZNK11xercesc_2_78DOM_Node11getNodeTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %40)
          to label %162 unwind label %68

162:                                              ; preds = %160
  %163 = icmp eq i16 %161, 3
  br i1 %163, label %164, label %165

164:                                              ; preds = %204, %208, %167, %162
  br label %215

165:                                              ; preds = %162
  %166 = invoke noundef signext i16 @_ZNK11xercesc_2_78DOM_Node11getNodeTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %40)
          to label %167 unwind label %68

167:                                              ; preds = %165
  %168 = icmp eq i16 %166, 4
  br i1 %168, label %164, label %169

169:                                              ; preds = %167
  %170 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %1, i64 0, i32 4
  %171 = load i32, ptr %170, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #9
  invoke void @_ZNK11xercesc_2_78DOM_Node13getFirstChildEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %15, ptr noundef nonnull align 8 dereferenceable(8) %40)
          to label %172 unwind label %186

172:                                              ; preds = %169
  %173 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %174 unwind label %188

174:                                              ; preds = %172
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %15) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #9
  %175 = icmp sgt i32 %171, 0
  br i1 %175, label %176, label %202

176:                                              ; preds = %174, %184
  %177 = phi i32 [ %181, %184 ], [ %171, %174 ]
  %178 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef null)
          to label %179 unwind label %192

179:                                              ; preds = %176
  br i1 %178, label %180, label %202

180:                                              ; preds = %179
  %181 = add nsw i32 %177, -1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #9
  invoke void @_ZNK11xercesc_2_78DOM_Node14getNextSiblingEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %16, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %182 unwind label %196

182:                                              ; preds = %180
  %183 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %184 unwind label %198

184:                                              ; preds = %182
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %16) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #9
  %185 = icmp sgt i32 %177, 1
  br i1 %185, label %176, label %202, !llvm.loop !105

186:                                              ; preds = %169
  %187 = landingpad { ptr, i32 }
          cleanup
  br label %190

188:                                              ; preds = %172
  %189 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %15) #9
  br label %190

190:                                              ; preds = %188, %186
  %191 = phi { ptr, i32 } [ %189, %188 ], [ %187, %186 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #9
  br label %273

192:                                              ; preds = %176
  %193 = landingpad { ptr, i32 }
          cleanup
  br label %273

194:                                              ; preds = %202
  %195 = landingpad { ptr, i32 }
          cleanup
  br label %273

196:                                              ; preds = %180
  %197 = landingpad { ptr, i32 }
          cleanup
  br label %200

198:                                              ; preds = %182
  %199 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %16) #9
  br label %200

200:                                              ; preds = %198, %196
  %201 = phi { ptr, i32 } [ %199, %198 ], [ %197, %196 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #9
  br label %273

202:                                              ; preds = %179, %184, %174
  %203 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeeqEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef null)
          to label %204 unwind label %194

204:                                              ; preds = %202
  br i1 %203, label %205, label %164

205:                                              ; preds = %204
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #9
  invoke void @_ZNK11xercesc_2_79RangeImpl8nextNodeERKNS_8DOM_NodeEb(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %17, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(8) %40, i1 noundef zeroext false)
          to label %206 unwind label %209

206:                                              ; preds = %205
  %207 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %208 unwind label %211

208:                                              ; preds = %206
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %17) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #9
  br label %164

209:                                              ; preds = %205
  %210 = landingpad { ptr, i32 }
          cleanup
  br label %213

211:                                              ; preds = %206
  %212 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %17) #9
  br label %213

213:                                              ; preds = %211, %209
  %214 = phi { ptr, i32 } [ %212, %211 ], [ %210, %209 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #9
  br label %273

215:                                              ; preds = %164, %241
  %216 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %217 unwind label %66

217:                                              ; preds = %215
  br i1 %216, label %218, label %248

218:                                              ; preds = %217
  %219 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeeqEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef null)
          to label %220 unwind label %66

220:                                              ; preds = %218
  br i1 %219, label %248, label %221

221:                                              ; preds = %220
  %222 = invoke noundef signext i16 @_ZNK11xercesc_2_78DOM_Node11getNodeTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %223 unwind label %66

223:                                              ; preds = %221
  %224 = icmp eq i16 %222, 3
  br i1 %224, label %229, label %225

225:                                              ; preds = %223
  %226 = invoke noundef signext i16 @_ZNK11xercesc_2_78DOM_Node11getNodeTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %227 unwind label %66

227:                                              ; preds = %225
  %228 = icmp eq i16 %226, 4
  br i1 %228, label %229, label %238

229:                                              ; preds = %227, %223
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %18) #9
  invoke void @_ZNK11xercesc_2_78DOM_Node12getNodeValueEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %18, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %230 unwind label %232

230:                                              ; preds = %229
  invoke void @_ZN11xercesc_2_79DOMString10appendDataERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %18)
          to label %231 unwind label %234

231:                                              ; preds = %230
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %18) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #9
  br label %238

232:                                              ; preds = %229
  %233 = landingpad { ptr, i32 }
          cleanup
  br label %236

234:                                              ; preds = %230
  %235 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %18) #9
  br label %236

236:                                              ; preds = %234, %232
  %237 = phi { ptr, i32 } [ %235, %234 ], [ %233, %232 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #9
  br label %273

238:                                              ; preds = %231, %227
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %19) #9
  invoke void @_ZNK11xercesc_2_79RangeImpl8nextNodeERKNS_8DOM_NodeEb(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %19, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(8) %4, i1 noundef zeroext true)
          to label %239 unwind label %242

239:                                              ; preds = %238
  %240 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %19)
          to label %241 unwind label %244

241:                                              ; preds = %239
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %19) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %19) #9
  br label %215, !llvm.loop !106

242:                                              ; preds = %238
  %243 = landingpad { ptr, i32 }
          cleanup
  br label %246

244:                                              ; preds = %239
  %245 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %19) #9
  br label %246

246:                                              ; preds = %244, %242
  %247 = phi { ptr, i32 } [ %245, %244 ], [ %243, %242 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %19) #9
  br label %273

248:                                              ; preds = %220, %217
  %249 = invoke noundef signext i16 @_ZNK11xercesc_2_78DOM_Node11getNodeTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %40)
          to label %250 unwind label %68

250:                                              ; preds = %248
  %251 = icmp eq i16 %249, 3
  br i1 %251, label %256, label %252

252:                                              ; preds = %250
  %253 = invoke noundef signext i16 @_ZNK11xercesc_2_78DOM_Node11getNodeTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %40)
          to label %254 unwind label %68

254:                                              ; preds = %252
  %255 = icmp eq i16 %253, 4
  br i1 %255, label %256, label %272

256:                                              ; preds = %254, %250
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %20) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %21) #9
  invoke void @_ZNK11xercesc_2_78DOM_Node12getNodeValueEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %21, ptr noundef nonnull align 8 dereferenceable(8) %40)
          to label %257 unwind label %262

257:                                              ; preds = %256
  %258 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %1, i64 0, i32 4
  %259 = load i32, ptr %258, align 8, !tbaa !47
  invoke void @_ZNK11xercesc_2_79DOMString13substringDataEjj(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %20, ptr noundef nonnull align 8 dereferenceable(8) %21, i32 noundef 0, i32 noundef %259)
          to label %260 unwind label %264

260:                                              ; preds = %257
  invoke void @_ZN11xercesc_2_79DOMString10appendDataERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %261 unwind label %266

261:                                              ; preds = %260
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %20) #9
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %21) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %21) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %20) #9
  br label %272

262:                                              ; preds = %256
  %263 = landingpad { ptr, i32 }
          cleanup
  br label %270

264:                                              ; preds = %257
  %265 = landingpad { ptr, i32 }
          cleanup
  br label %268

266:                                              ; preds = %260
  %267 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %20) #9
  br label %268

268:                                              ; preds = %266, %264
  %269 = phi { ptr, i32 } [ %267, %266 ], [ %265, %264 ]
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %21) #9
  br label %270

270:                                              ; preds = %268, %262
  %271 = phi { ptr, i32 } [ %269, %268 ], [ %263, %262 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %21) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %20) #9
  br label %273

272:                                              ; preds = %61, %261, %254
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  ret void

273:                                              ; preds = %192, %194, %66, %68, %190, %200, %213, %139, %145, %97, %107, %113, %270, %246, %236, %158, %137, %78
  %274 = phi { ptr, i32 } [ %79, %78 ], [ %271, %270 ], [ %247, %246 ], [ %237, %236 ], [ %159, %158 ], [ %138, %137 ], [ %114, %113 ], [ %108, %107 ], [ %98, %97 ], [ %146, %145 ], [ %140, %139 ], [ %201, %200 ], [ %214, %213 ], [ %191, %190 ], [ %67, %66 ], [ %69, %68 ], [ %193, %192 ], [ %195, %194 ]
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #9
  br label %275

275:                                              ; preds = %273, %64
  %276 = phi { ptr, i32 } [ %274, %273 ], [ %65, %64 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #9
  br label %277

277:                                              ; preds = %275, %62
  %278 = phi { ptr, i32 } [ %276, %275 ], [ %63, %62 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  br label %279

279:                                              ; preds = %34, %37, %277
  %280 = phi { ptr, i32 } [ %35, %37 ], [ %35, %34 ], [ %278, %277 ]
  resume { ptr, i32 } %280

281:                                              ; preds = %28
  unreachable
}

declare void @_ZN11xercesc_2_79DOMStringC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare void @_ZN11xercesc_2_79DOMString10appendDataERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare void @_ZNK11xercesc_2_78DOM_Node12getNodeValueEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare void @_ZNK11xercesc_2_79DOMString13substringDataEjj(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i32 noundef) local_unnamed_addr #1

declare noundef i32 @_ZNK11xercesc_2_79DOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79RangeImpl11getDocumentEv(ptr dead_on_unwind noalias nonnull writable sret(%"class.xercesc_2_7::DOM_Document") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1) local_unnamed_addr #0 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %1, i64 0, i32 6
  tail call void @_ZN11xercesc_2_712DOM_DocumentC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %3)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_79RangeImpl19isValidAncestorTypeERKNS_8DOM_NodeE(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %4 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  call void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %5

5:                                                ; preds = %18, %2
  %6 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef null)
          to label %7 unwind label %8

7:                                                ; preds = %5
  br i1 %6, label %10, label %25

8:                                                ; preds = %5
  %9 = landingpad { ptr, i32 }
          cleanup
  br label %27

10:                                               ; preds = %7
  %11 = invoke noundef signext i16 @_ZNK11xercesc_2_78DOM_Node11getNodeTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %12 unwind label %13

12:                                               ; preds = %10
  switch i16 %11, label %15 [
    i16 12, label %25
    i16 10, label %25
    i16 6, label %25
  ]

13:                                               ; preds = %10
  %14 = landingpad { ptr, i32 }
          cleanup
  br label %27

15:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  invoke void @_ZNK11xercesc_2_78DOM_Node13getParentNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %16 unwind label %19

16:                                               ; preds = %15
  %17 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %18 unwind label %21

18:                                               ; preds = %16
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  br label %5, !llvm.loop !107

19:                                               ; preds = %15
  %20 = landingpad { ptr, i32 }
          cleanup
  br label %23

21:                                               ; preds = %16
  %22 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #9
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi { ptr, i32 } [ %22, %21 ], [ %20, %19 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  br label %27

25:                                               ; preds = %12, %12, %12, %7
  %26 = xor i1 %6, true
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  ret i1 %26

27:                                               ; preds = %23, %13, %8
  %28 = phi { ptr, i32 } [ %24, %23 ], [ %14, %13 ], [ %9, %8 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  resume { ptr, i32 } %28
}

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_8NodeImplEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !91
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #9
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !94
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 249, i32 noundef 116, ptr noundef %9)
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
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !93
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !67
  ret ptr %18
}

declare void @_ZN11xercesc_2_720DOM_DocumentFragmentC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79RangeImpl21traverseSameContainerEi(ptr dead_on_unwind noalias nonnull writable sret(%"class.xercesc_2_7::DOM_DocumentFragment") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %4 = alloca %"class.xercesc_2_7::DOM_DocumentFragment", align 8
  %5 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %6 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %7 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %8 = alloca %"class.xercesc_2_7::DOMString", align 8
  %9 = alloca %"class.xercesc_2_7::DOMString", align 8
  %10 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %11 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %12 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %13 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %14 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %15 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %16 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  tail call void @_ZN11xercesc_2_720DOM_DocumentFragmentC1EPNS_20DocumentFragmentImplE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef null)
  %17 = icmp eq i32 %2, 3
  br i1 %17, label %29, label %18

18:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  %19 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %1, i64 0, i32 6
  invoke void @_ZN11xercesc_2_712DOM_Document22createDocumentFragmentEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_DocumentFragment") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %19)
          to label %20 unwind label %23

20:                                               ; preds = %18
  %21 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_720DOM_DocumentFragmentaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %22 unwind label %25

22:                                               ; preds = %20
  call void @_ZN11xercesc_2_720DOM_DocumentFragmentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  br label %29

23:                                               ; preds = %18
  %24 = landingpad { ptr, i32 }
          cleanup
  br label %27

25:                                               ; preds = %20
  %26 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_720DOM_DocumentFragmentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #9
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi { ptr, i32 } [ %26, %25 ], [ %24, %23 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  br label %134

29:                                               ; preds = %22, %3
  %30 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %1, i64 0, i32 2
  %31 = load i32, ptr %30, align 8, !tbaa !38
  %32 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %1, i64 0, i32 4
  %33 = load i32, ptr %32, align 8, !tbaa !47
  %34 = icmp eq i32 %31, %33
  br i1 %34, label %133, label %35

35:                                               ; preds = %29
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #9
  %36 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %1, i64 0, i32 1
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %36)
          to label %37 unwind label %57

37:                                               ; preds = %35
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #9
  invoke void @_ZN11xercesc_2_78DOM_NodeC1EPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef null)
          to label %38 unwind label %59

38:                                               ; preds = %37
  %39 = invoke noundef signext i16 @_ZNK11xercesc_2_78DOM_Node11getNodeTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %36)
          to label %40 unwind label %61

40:                                               ; preds = %38
  %41 = icmp eq i16 %39, 3
  br i1 %41, label %42, label %82

42:                                               ; preds = %40
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #9
  invoke void @_ZNK11xercesc_2_78DOM_Node9cloneNodeEb(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %36, i1 noundef zeroext false)
          to label %43 unwind label %63

43:                                               ; preds = %42
  %44 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %45 unwind label %65

45:                                               ; preds = %43
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #9
  invoke void @_ZNK11xercesc_2_78DOM_Node12getNodeValueEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %46 unwind label %69

46:                                               ; preds = %45
  %47 = load i32, ptr %30, align 8, !tbaa !38
  %48 = load i32, ptr %32, align 8, !tbaa !47
  %49 = sub i32 %48, %47
  invoke void @_ZNK11xercesc_2_79DOMString13substringDataEjj(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %9, i32 noundef %47, i32 noundef %49)
          to label %50 unwind label %71

50:                                               ; preds = %46
  invoke void @_ZN11xercesc_2_78DOM_Node12setNodeValueERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %51 unwind label %73

51:                                               ; preds = %50
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #9
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #9
  %52 = icmp eq i32 %2, 2
  br i1 %52, label %79, label %53

53:                                               ; preds = %51
  %54 = load i32, ptr %30, align 8, !tbaa !38
  %55 = load i32, ptr %32, align 8, !tbaa !47
  %56 = sub i32 %55, %54
  invoke void @_ZN11xercesc_2_717DOM_CharacterData10deleteDataEjj(ptr noundef nonnull align 8 dereferenceable(8) %36, i32 noundef %54, i32 noundef %56)
          to label %79 unwind label %61

57:                                               ; preds = %35
  %58 = landingpad { ptr, i32 }
          cleanup
  br label %131

59:                                               ; preds = %37
  %60 = landingpad { ptr, i32 }
          cleanup
  br label %129

61:                                               ; preds = %125, %80, %53, %38
  %62 = landingpad { ptr, i32 }
          cleanup
  br label %127

63:                                               ; preds = %42
  %64 = landingpad { ptr, i32 }
          cleanup
  br label %67

65:                                               ; preds = %43
  %66 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #9
  br label %67

67:                                               ; preds = %65, %63
  %68 = phi { ptr, i32 } [ %66, %65 ], [ %64, %63 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #9
  br label %127

69:                                               ; preds = %45
  %70 = landingpad { ptr, i32 }
          cleanup
  br label %77

71:                                               ; preds = %46
  %72 = landingpad { ptr, i32 }
          cleanup
  br label %75

73:                                               ; preds = %50
  %74 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #9
  br label %75

75:                                               ; preds = %73, %71
  %76 = phi { ptr, i32 } [ %74, %73 ], [ %72, %71 ]
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #9
  br label %77

77:                                               ; preds = %75, %69
  %78 = phi { ptr, i32 } [ %76, %75 ], [ %70, %69 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #9
  br label %127

79:                                               ; preds = %53, %51
  br i1 %17, label %123, label %80

80:                                               ; preds = %79
  invoke void @_ZN11xercesc_2_78DOM_Node11appendChildERKS0_(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %81 unwind label %61

81:                                               ; preds = %80
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #9
  br label %123

82:                                               ; preds = %40
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #9
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %36)
          to label %83 unwind label %99

83:                                               ; preds = %82
  %84 = load i32, ptr %30, align 8, !tbaa !38
  invoke void @_ZN11xercesc_2_79RangeImpl15getSelectedNodeENS_8DOM_NodeEi(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %11, ptr nonnull align 8 poison, ptr noundef nonnull %12, i32 noundef %84)
          to label %85 unwind label %101

85:                                               ; preds = %83
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12) #9
  %86 = load i32, ptr %32, align 8, !tbaa !47
  %87 = load i32, ptr %30, align 8, !tbaa !38
  %88 = sub i32 %86, %87
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %90, label %120

90:                                               ; preds = %85, %113
  %91 = phi i32 [ %114, %113 ], [ %88, %85 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #9
  invoke void @_ZNK11xercesc_2_78DOM_Node14getNextSiblingEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %13, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %92 unwind label %103

92:                                               ; preds = %90
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #9
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %93 unwind label %105

93:                                               ; preds = %92
  invoke void @_ZN11xercesc_2_79RangeImpl21traverseFullySelectedENS_8DOM_NodeEi(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %14, ptr nonnull align 8 poison, ptr noundef nonnull %15, i32 noundef %2)
          to label %94 unwind label %107

94:                                               ; preds = %93
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %15) #9
  %95 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef null)
          to label %96 unwind label %109

96:                                               ; preds = %94
  br i1 %95, label %97, label %111

97:                                               ; preds = %96
  invoke void @_ZN11xercesc_2_78DOM_Node11appendChildERKS0_(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %16, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %98 unwind label %109

98:                                               ; preds = %97
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %16) #9
  br label %111

99:                                               ; preds = %82
  %100 = landingpad { ptr, i32 }
          cleanup
  br label %121

101:                                              ; preds = %83
  %102 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12) #9
  br label %121

103:                                              ; preds = %90
  %104 = landingpad { ptr, i32 }
          cleanup
  br label %118

105:                                              ; preds = %92
  %106 = landingpad { ptr, i32 }
          cleanup
  br label %116

107:                                              ; preds = %93
  %108 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %15) #9
  br label %116

109:                                              ; preds = %111, %97, %94
  %110 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14) #9
  br label %116

111:                                              ; preds = %98, %96
  %112 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %113 unwind label %109

113:                                              ; preds = %111
  %114 = add nsw i32 %91, -1
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #9
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #9
  %115 = icmp sgt i32 %91, 1
  br i1 %115, label %90, label %120, !llvm.loop !108

116:                                              ; preds = %109, %107, %105
  %117 = phi { ptr, i32 } [ %110, %109 ], [ %108, %107 ], [ %106, %105 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #9
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13) #9
  br label %118

118:                                              ; preds = %116, %103
  %119 = phi { ptr, i32 } [ %117, %116 ], [ %104, %103 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #9
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #9
  br label %121

120:                                              ; preds = %113, %85
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #9
  br label %123

121:                                              ; preds = %118, %101, %99
  %122 = phi { ptr, i32 } [ %119, %118 ], [ %102, %101 ], [ %100, %99 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #9
  br label %127

123:                                              ; preds = %79, %81, %120
  %124 = icmp eq i32 %2, 2
  br i1 %124, label %126, label %125

125:                                              ; preds = %123
  invoke void @_ZN11xercesc_2_79RangeImpl8collapseEb(ptr noundef nonnull align 8 dereferenceable(72) %1, i1 noundef zeroext true)
          to label %126 unwind label %61

126:                                              ; preds = %125, %123
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  br label %133

127:                                              ; preds = %121, %77, %67, %61
  %128 = phi { ptr, i32 } [ %62, %61 ], [ %78, %77 ], [ %68, %67 ], [ %122, %121 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #9
  br label %129

129:                                              ; preds = %127, %59
  %130 = phi { ptr, i32 } [ %128, %127 ], [ %60, %59 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #9
  br label %131

131:                                              ; preds = %129, %57
  %132 = phi { ptr, i32 } [ %130, %129 ], [ %58, %57 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  br label %134

133:                                              ; preds = %126, %29
  ret void

134:                                              ; preds = %131, %27
  %135 = phi { ptr, i32 } [ %132, %131 ], [ %28, %27 ]
  call void @_ZN11xercesc_2_720DOM_DocumentFragmentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #9
  resume { ptr, i32 } %135
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79RangeImpl28traverseCommonStartContainerENS_8DOM_NodeEi(ptr dead_on_unwind noalias nonnull writable sret(%"class.xercesc_2_7::DOM_DocumentFragment") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %5 = alloca %"class.xercesc_2_7::DOM_DocumentFragment", align 8
  %6 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %7 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %8 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %9 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %10 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %11 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %12 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %13 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %14 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  tail call void @_ZN11xercesc_2_720DOM_DocumentFragmentC1EPNS_20DocumentFragmentImplE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef null)
  %15 = icmp eq i32 %3, 3
  br i1 %15, label %27, label %16

16:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #9
  %17 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %1, i64 0, i32 6
  invoke void @_ZN11xercesc_2_712DOM_Document22createDocumentFragmentEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_DocumentFragment") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %18 unwind label %21

18:                                               ; preds = %16
  %19 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_720DOM_DocumentFragmentaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %20 unwind label %23

20:                                               ; preds = %18
  call void @_ZN11xercesc_2_720DOM_DocumentFragmentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  br label %27

21:                                               ; preds = %16
  %22 = landingpad { ptr, i32 }
          cleanup
  br label %25

23:                                               ; preds = %18
  %24 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_720DOM_DocumentFragmentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #9
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi { ptr, i32 } [ %24, %23 ], [ %22, %21 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  br label %109

27:                                               ; preds = %20, %4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #9
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %28 unwind label %34

28:                                               ; preds = %27
  invoke void @_ZN11xercesc_2_79RangeImpl21traverseRightBoundaryENS_8DOM_NodeEi(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %6, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull %7, i32 noundef %3)
          to label %29 unwind label %36

29:                                               ; preds = %28
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #9
  %30 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef null)
          to label %31 unwind label %38

31:                                               ; preds = %29
  br i1 %30, label %32, label %40

32:                                               ; preds = %31
  invoke void @_ZN11xercesc_2_78DOM_Node11appendChildERKS0_(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %33 unwind label %38

33:                                               ; preds = %32
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #9
  br label %40

34:                                               ; preds = %27
  %35 = landingpad { ptr, i32 }
          cleanup
  br label %107

36:                                               ; preds = %28
  %37 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #9
  br label %107

38:                                               ; preds = %32, %29
  %39 = landingpad { ptr, i32 }
          cleanup
  br label %105

40:                                               ; preds = %33, %31
  %41 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %1, i64 0, i32 1
  %42 = invoke noundef zeroext i16 @_ZNK11xercesc_2_79RangeImpl7indexOfERKNS_8DOM_NodeES3_(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %41)
          to label %43 unwind label %51

43:                                               ; preds = %40
  %44 = zext i16 %42 to i32
  %45 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %1, i64 0, i32 2
  %46 = load i32, ptr %45, align 8, !tbaa !38
  %47 = sub i32 %44, %46
  %48 = icmp slt i32 %47, 1
  br i1 %48, label %49, label %55

49:                                               ; preds = %43
  %50 = icmp eq i32 %3, 2
  br i1 %50, label %104, label %102

51:                                               ; preds = %40
  %52 = landingpad { ptr, i32 }
          cleanup
  br label %105

53:                                               ; preds = %102, %103
  %54 = landingpad { ptr, i32 }
          cleanup
  br label %105

55:                                               ; preds = %43
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #9
  invoke void @_ZNK11xercesc_2_78DOM_Node18getPreviousSiblingEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %56 unwind label %69

56:                                               ; preds = %55
  %57 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %58 unwind label %71

58:                                               ; preds = %56
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #9
  br label %59

59:                                               ; preds = %58, %91
  %60 = phi i32 [ %92, %91 ], [ %47, %58 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #9
  invoke void @_ZNK11xercesc_2_78DOM_Node18getPreviousSiblingEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %61 unwind label %75

61:                                               ; preds = %59
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #9
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %62 unwind label %77

62:                                               ; preds = %61
  invoke void @_ZN11xercesc_2_79RangeImpl21traverseFullySelectedENS_8DOM_NodeEi(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %11, ptr nonnull align 8 poison, ptr noundef nonnull %12, i32 noundef %3)
          to label %63 unwind label %79

63:                                               ; preds = %62
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12) #9
  %64 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef null)
          to label %65 unwind label %81

65:                                               ; preds = %63
  br i1 %64, label %66, label %89

66:                                               ; preds = %65
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #9
  invoke void @_ZNK11xercesc_2_78DOM_Node13getFirstChildEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %14, ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %67 unwind label %83

67:                                               ; preds = %66
  invoke void @_ZN11xercesc_2_78DOM_Node12insertBeforeERKS0_S2_(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %13, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %68 unwind label %85

68:                                               ; preds = %67
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13) #9
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #9
  br label %89

69:                                               ; preds = %55
  %70 = landingpad { ptr, i32 }
          cleanup
  br label %73

71:                                               ; preds = %56
  %72 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #9
  br label %73

73:                                               ; preds = %71, %69
  %74 = phi { ptr, i32 } [ %72, %71 ], [ %70, %69 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #9
  br label %105

75:                                               ; preds = %59
  %76 = landingpad { ptr, i32 }
          cleanup
  br label %98

77:                                               ; preds = %61
  %78 = landingpad { ptr, i32 }
          cleanup
  br label %96

79:                                               ; preds = %62
  %80 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12) #9
  br label %96

81:                                               ; preds = %89, %63
  %82 = landingpad { ptr, i32 }
          cleanup
  br label %94

83:                                               ; preds = %66
  %84 = landingpad { ptr, i32 }
          cleanup
  br label %87

85:                                               ; preds = %67
  %86 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14) #9
  br label %87

87:                                               ; preds = %85, %83
  %88 = phi { ptr, i32 } [ %86, %85 ], [ %84, %83 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #9
  br label %94

89:                                               ; preds = %68, %65
  %90 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %91 unwind label %81

91:                                               ; preds = %89
  %92 = add nsw i32 %60, -1
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #9
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #9
  %93 = icmp sgt i32 %60, 1
  br i1 %93, label %59, label %100, !llvm.loop !109

94:                                               ; preds = %87, %81
  %95 = phi { ptr, i32 } [ %82, %81 ], [ %88, %87 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #9
  br label %96

96:                                               ; preds = %94, %79, %77
  %97 = phi { ptr, i32 } [ %95, %94 ], [ %80, %79 ], [ %78, %77 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #9
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #9
  br label %98

98:                                               ; preds = %96, %75
  %99 = phi { ptr, i32 } [ %97, %96 ], [ %76, %75 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #9
  br label %105

100:                                              ; preds = %91
  %101 = icmp eq i32 %3, 2
  br i1 %101, label %104, label %102

102:                                              ; preds = %49, %100
  invoke void @_ZN11xercesc_2_79RangeImpl12setEndBeforeERKNS_8DOM_NodeE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %103 unwind label %53

103:                                              ; preds = %102
  invoke void @_ZN11xercesc_2_79RangeImpl8collapseEb(ptr noundef nonnull align 8 dereferenceable(72) %1, i1 noundef zeroext false)
          to label %104 unwind label %53

104:                                              ; preds = %103, %100, %49
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  ret void

105:                                              ; preds = %51, %98, %73, %53, %38
  %106 = phi { ptr, i32 } [ %39, %38 ], [ %52, %51 ], [ %54, %53 ], [ %99, %98 ], [ %74, %73 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #9
  br label %107

107:                                              ; preds = %105, %36, %34
  %108 = phi { ptr, i32 } [ %106, %105 ], [ %37, %36 ], [ %35, %34 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  br label %109

109:                                              ; preds = %107, %25
  %110 = phi { ptr, i32 } [ %108, %107 ], [ %26, %25 ]
  call void @_ZN11xercesc_2_720DOM_DocumentFragmentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #9
  resume { ptr, i32 } %110
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79RangeImpl26traverseCommonEndContainerENS_8DOM_NodeEi(ptr dead_on_unwind noalias nonnull writable sret(%"class.xercesc_2_7::DOM_DocumentFragment") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %5 = alloca %"class.xercesc_2_7::DOM_DocumentFragment", align 8
  %6 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %7 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %8 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %9 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %10 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %11 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %12 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %13 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  tail call void @_ZN11xercesc_2_720DOM_DocumentFragmentC1EPNS_20DocumentFragmentImplE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef null)
  %14 = icmp eq i32 %3, 3
  br i1 %14, label %26, label %15

15:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #9
  %16 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %1, i64 0, i32 6
  invoke void @_ZN11xercesc_2_712DOM_Document22createDocumentFragmentEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_DocumentFragment") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %17 unwind label %20

17:                                               ; preds = %15
  %18 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_720DOM_DocumentFragmentaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %19 unwind label %22

19:                                               ; preds = %17
  call void @_ZN11xercesc_2_720DOM_DocumentFragmentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  br label %26

20:                                               ; preds = %15
  %21 = landingpad { ptr, i32 }
          cleanup
  br label %24

22:                                               ; preds = %17
  %23 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_720DOM_DocumentFragmentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #9
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi { ptr, i32 } [ %23, %22 ], [ %21, %20 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  br label %97

26:                                               ; preds = %19, %4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #9
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %27 unwind label %33

27:                                               ; preds = %26
  invoke void @_ZN11xercesc_2_79RangeImpl20traverseLeftBoundaryENS_8DOM_NodeEi(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %6, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull %7, i32 noundef %3)
          to label %28 unwind label %35

28:                                               ; preds = %27
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #9
  %29 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef null)
          to label %30 unwind label %37

30:                                               ; preds = %28
  br i1 %29, label %31, label %39

31:                                               ; preds = %30
  invoke void @_ZN11xercesc_2_78DOM_Node11appendChildERKS0_(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %32 unwind label %37

32:                                               ; preds = %31
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #9
  br label %39

33:                                               ; preds = %26
  %34 = landingpad { ptr, i32 }
          cleanup
  br label %95

35:                                               ; preds = %27
  %36 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #9
  br label %95

37:                                               ; preds = %31, %28
  %38 = landingpad { ptr, i32 }
          cleanup
  br label %93

39:                                               ; preds = %32, %30
  %40 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %1, i64 0, i32 3
  %41 = invoke noundef zeroext i16 @_ZNK11xercesc_2_79RangeImpl7indexOfERKNS_8DOM_NodeES3_(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %40)
          to label %42 unwind label %61

42:                                               ; preds = %39
  %43 = zext i16 %41 to i32
  %44 = xor i32 %43, -1
  %45 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %1, i64 0, i32 4
  %46 = load i32, ptr %45, align 8, !tbaa !47
  %47 = add i32 %46, %44
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #9
  invoke void @_ZNK11xercesc_2_78DOM_Node14getNextSiblingEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %48 unwind label %63

48:                                               ; preds = %42
  %49 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %50 unwind label %65

50:                                               ; preds = %48
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #9
  %51 = icmp sgt i32 %47, 0
  br i1 %51, label %52, label %86

52:                                               ; preds = %50, %79
  %53 = phi i32 [ %80, %79 ], [ %47, %50 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #9
  invoke void @_ZNK11xercesc_2_78DOM_Node14getNextSiblingEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %54 unwind label %69

54:                                               ; preds = %52
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #9
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %55 unwind label %71

55:                                               ; preds = %54
  invoke void @_ZN11xercesc_2_79RangeImpl21traverseFullySelectedENS_8DOM_NodeEi(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %11, ptr nonnull align 8 poison, ptr noundef nonnull %12, i32 noundef %3)
          to label %56 unwind label %73

56:                                               ; preds = %55
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12) #9
  %57 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef null)
          to label %58 unwind label %75

58:                                               ; preds = %56
  br i1 %57, label %59, label %77

59:                                               ; preds = %58
  invoke void @_ZN11xercesc_2_78DOM_Node11appendChildERKS0_(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %13, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %60 unwind label %75

60:                                               ; preds = %59
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13) #9
  br label %77

61:                                               ; preds = %39
  %62 = landingpad { ptr, i32 }
          cleanup
  br label %93

63:                                               ; preds = %42
  %64 = landingpad { ptr, i32 }
          cleanup
  br label %67

65:                                               ; preds = %48
  %66 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #9
  br label %67

67:                                               ; preds = %65, %63
  %68 = phi { ptr, i32 } [ %66, %65 ], [ %64, %63 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #9
  br label %93

69:                                               ; preds = %52
  %70 = landingpad { ptr, i32 }
          cleanup
  br label %84

71:                                               ; preds = %54
  %72 = landingpad { ptr, i32 }
          cleanup
  br label %82

73:                                               ; preds = %55
  %74 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12) #9
  br label %82

75:                                               ; preds = %77, %59, %56
  %76 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #9
  br label %82

77:                                               ; preds = %60, %58
  %78 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %79 unwind label %75

79:                                               ; preds = %77
  %80 = add nsw i32 %53, -1
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #9
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #9
  %81 = icmp sgt i32 %53, 1
  br i1 %81, label %52, label %86, !llvm.loop !110

82:                                               ; preds = %75, %73, %71
  %83 = phi { ptr, i32 } [ %76, %75 ], [ %74, %73 ], [ %72, %71 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #9
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #9
  br label %84

84:                                               ; preds = %82, %69
  %85 = phi { ptr, i32 } [ %83, %82 ], [ %70, %69 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #9
  br label %93

86:                                               ; preds = %79, %50
  %87 = icmp eq i32 %3, 2
  br i1 %87, label %92, label %88

88:                                               ; preds = %86
  invoke void @_ZN11xercesc_2_79RangeImpl13setStartAfterERKNS_8DOM_NodeE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %89 unwind label %90

89:                                               ; preds = %88
  invoke void @_ZN11xercesc_2_79RangeImpl8collapseEb(ptr noundef nonnull align 8 dereferenceable(72) %1, i1 noundef zeroext true)
          to label %92 unwind label %90

90:                                               ; preds = %89, %88
  %91 = landingpad { ptr, i32 }
          cleanup
  br label %93

92:                                               ; preds = %89, %86
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  ret void

93:                                               ; preds = %61, %90, %84, %67, %37
  %94 = phi { ptr, i32 } [ %38, %37 ], [ %62, %61 ], [ %85, %84 ], [ %91, %90 ], [ %68, %67 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #9
  br label %95

95:                                               ; preds = %93, %35, %33
  %96 = phi { ptr, i32 } [ %94, %93 ], [ %36, %35 ], [ %34, %33 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  br label %97

97:                                               ; preds = %95, %24
  %98 = phi { ptr, i32 } [ %96, %95 ], [ %25, %24 ]
  call void @_ZN11xercesc_2_720DOM_DocumentFragmentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #9
  resume { ptr, i32 } %98
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79RangeImpl23traverseCommonAncestorsENS_8DOM_NodeES1_i(ptr dead_on_unwind noalias nonnull writable sret(%"class.xercesc_2_7::DOM_DocumentFragment") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %6 = alloca %"class.xercesc_2_7::DOM_DocumentFragment", align 8
  %7 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %8 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %9 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %10 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %11 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %12 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %13 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %14 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %15 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %16 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %17 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %18 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  tail call void @_ZN11xercesc_2_720DOM_DocumentFragmentC1EPNS_20DocumentFragmentImplE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef null)
  %19 = icmp eq i32 %4, 3
  br i1 %19, label %31, label %20

20:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #9
  %21 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %1, i64 0, i32 6
  invoke void @_ZN11xercesc_2_712DOM_Document22createDocumentFragmentEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_DocumentFragment") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %21)
          to label %22 unwind label %25

22:                                               ; preds = %20
  %23 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_720DOM_DocumentFragmentaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %24 unwind label %27

24:                                               ; preds = %22
  call void @_ZN11xercesc_2_720DOM_DocumentFragmentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  br label %31

25:                                               ; preds = %20
  %26 = landingpad { ptr, i32 }
          cleanup
  br label %29

27:                                               ; preds = %22
  %28 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_720DOM_DocumentFragmentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #9
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi { ptr, i32 } [ %28, %27 ], [ %26, %25 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  br label %136

31:                                               ; preds = %24, %5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #9
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %32 unwind label %38

32:                                               ; preds = %31
  invoke void @_ZN11xercesc_2_79RangeImpl20traverseLeftBoundaryENS_8DOM_NodeEi(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %7, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull %8, i32 noundef %4)
          to label %33 unwind label %40

33:                                               ; preds = %32
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #9
  %34 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef null)
          to label %35 unwind label %42

35:                                               ; preds = %33
  br i1 %34, label %36, label %44

36:                                               ; preds = %35
  invoke void @_ZN11xercesc_2_78DOM_Node11appendChildERKS0_(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %37 unwind label %42

37:                                               ; preds = %36
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #9
  br label %44

38:                                               ; preds = %31
  %39 = landingpad { ptr, i32 }
          cleanup
  br label %134

40:                                               ; preds = %32
  %41 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #9
  br label %134

42:                                               ; preds = %36, %33
  %43 = landingpad { ptr, i32 }
          cleanup
  br label %132

44:                                               ; preds = %37, %35
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #9
  invoke void @_ZNK11xercesc_2_78DOM_Node13getParentNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %45 unwind label %67

45:                                               ; preds = %44
  %46 = invoke noundef zeroext i16 @_ZNK11xercesc_2_79RangeImpl7indexOfERKNS_8DOM_NodeES3_(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %47 unwind label %69

47:                                               ; preds = %45
  %48 = invoke noundef zeroext i16 @_ZNK11xercesc_2_79RangeImpl7indexOfERKNS_8DOM_NodeES3_(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %49 unwind label %71

49:                                               ; preds = %47
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #9
  invoke void @_ZNK11xercesc_2_78DOM_Node14getNextSiblingEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %11, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %50 unwind label %73

50:                                               ; preds = %49
  %51 = zext i16 %48 to i32
  %52 = zext i16 %46 to i32
  %53 = xor i32 %52, -1
  %54 = add nsw i32 %51, %53
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %98

56:                                               ; preds = %50, %91
  %57 = phi i32 [ %92, %91 ], [ %54, %50 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #9
  invoke void @_ZNK11xercesc_2_78DOM_Node14getNextSiblingEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %12, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %58 unwind label %75

58:                                               ; preds = %56
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #9
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %59 unwind label %77

59:                                               ; preds = %58
  invoke void @_ZN11xercesc_2_79RangeImpl21traverseFullySelectedENS_8DOM_NodeEi(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %13, ptr nonnull align 8 poison, ptr noundef nonnull %14, i32 noundef %4)
          to label %60 unwind label %79

60:                                               ; preds = %59
  %61 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %62 unwind label %81

62:                                               ; preds = %60
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13) #9
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #9
  %63 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef null)
          to label %64 unwind label %87

64:                                               ; preds = %62
  br i1 %63, label %65, label %89

65:                                               ; preds = %64
  invoke void @_ZN11xercesc_2_78DOM_Node11appendChildERKS0_(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %15, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %66 unwind label %87

66:                                               ; preds = %65
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %15) #9
  br label %89

67:                                               ; preds = %44
  %68 = landingpad { ptr, i32 }
          cleanup
  br label %130

69:                                               ; preds = %45
  %70 = landingpad { ptr, i32 }
          cleanup
  br label %128

71:                                               ; preds = %47
  %72 = landingpad { ptr, i32 }
          cleanup
  br label %128

73:                                               ; preds = %49
  %74 = landingpad { ptr, i32 }
          cleanup
  br label %126

75:                                               ; preds = %56
  %76 = landingpad { ptr, i32 }
          cleanup
  br label %96

77:                                               ; preds = %58
  %78 = landingpad { ptr, i32 }
          cleanup
  br label %85

79:                                               ; preds = %59
  %80 = landingpad { ptr, i32 }
          cleanup
  br label %83

81:                                               ; preds = %60
  %82 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13) #9
  br label %83

83:                                               ; preds = %81, %79
  %84 = phi { ptr, i32 } [ %82, %81 ], [ %80, %79 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14) #9
  br label %85

85:                                               ; preds = %83, %77
  %86 = phi { ptr, i32 } [ %84, %83 ], [ %78, %77 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #9
  br label %94

87:                                               ; preds = %89, %65, %62
  %88 = landingpad { ptr, i32 }
          cleanup
  br label %94

89:                                               ; preds = %66, %64
  %90 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %91 unwind label %87

91:                                               ; preds = %89
  %92 = add nsw i32 %57, -1
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #9
  %93 = icmp sgt i32 %57, 1
  br i1 %93, label %56, label %98, !llvm.loop !111

94:                                               ; preds = %87, %85
  %95 = phi { ptr, i32 } [ %88, %87 ], [ %86, %85 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12) #9
  br label %96

96:                                               ; preds = %94, %75
  %97 = phi { ptr, i32 } [ %95, %94 ], [ %76, %75 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #9
  br label %124

98:                                               ; preds = %91, %50
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #9
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %99 unwind label %107

99:                                               ; preds = %98
  invoke void @_ZN11xercesc_2_79RangeImpl21traverseRightBoundaryENS_8DOM_NodeEi(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %16, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull %17, i32 noundef %4)
          to label %100 unwind label %109

100:                                              ; preds = %99
  %101 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %102 unwind label %111

102:                                              ; preds = %100
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %16) #9
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %17) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #9
  %103 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef null)
          to label %104 unwind label %117

104:                                              ; preds = %102
  br i1 %103, label %105, label %119

105:                                              ; preds = %104
  invoke void @_ZN11xercesc_2_78DOM_Node11appendChildERKS0_(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %18, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %106 unwind label %117

106:                                              ; preds = %105
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %18) #9
  br label %119

107:                                              ; preds = %98
  %108 = landingpad { ptr, i32 }
          cleanup
  br label %115

109:                                              ; preds = %99
  %110 = landingpad { ptr, i32 }
          cleanup
  br label %113

111:                                              ; preds = %100
  %112 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %16) #9
  br label %113

113:                                              ; preds = %111, %109
  %114 = phi { ptr, i32 } [ %112, %111 ], [ %110, %109 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %17) #9
  br label %115

115:                                              ; preds = %113, %107
  %116 = phi { ptr, i32 } [ %114, %113 ], [ %108, %107 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #9
  br label %124

117:                                              ; preds = %122, %121, %105, %102
  %118 = landingpad { ptr, i32 }
          cleanup
  br label %124

119:                                              ; preds = %106, %104
  %120 = icmp eq i32 %4, 2
  br i1 %120, label %123, label %121

121:                                              ; preds = %119
  invoke void @_ZN11xercesc_2_79RangeImpl13setStartAfterERKNS_8DOM_NodeE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %122 unwind label %117

122:                                              ; preds = %121
  invoke void @_ZN11xercesc_2_79RangeImpl8collapseEb(ptr noundef nonnull align 8 dereferenceable(72) %1, i1 noundef zeroext true)
          to label %123 unwind label %117

123:                                              ; preds = %122, %119
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #9
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #9
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #9
  ret void

124:                                              ; preds = %117, %115, %96
  %125 = phi { ptr, i32 } [ %97, %96 ], [ %118, %117 ], [ %116, %115 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #9
  br label %126

126:                                              ; preds = %124, %73
  %127 = phi { ptr, i32 } [ %125, %124 ], [ %74, %73 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #9
  br label %128

128:                                              ; preds = %71, %126, %69
  %129 = phi { ptr, i32 } [ %70, %69 ], [ %127, %126 ], [ %72, %71 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #9
  br label %130

130:                                              ; preds = %128, %67
  %131 = phi { ptr, i32 } [ %129, %128 ], [ %68, %67 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #9
  br label %132

132:                                              ; preds = %130, %42
  %133 = phi { ptr, i32 } [ %131, %130 ], [ %43, %42 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #9
  br label %134

134:                                              ; preds = %132, %40, %38
  %135 = phi { ptr, i32 } [ %133, %132 ], [ %41, %40 ], [ %39, %38 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #9
  br label %136

136:                                              ; preds = %134, %29
  %137 = phi { ptr, i32 } [ %135, %134 ], [ %30, %29 ]
  call void @_ZN11xercesc_2_720DOM_DocumentFragmentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #9
  resume { ptr, i32 } %137
}

declare void @_ZN11xercesc_2_720DOM_DocumentFragmentC1EPNS_20DocumentFragmentImplE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #1

declare void @_ZN11xercesc_2_712DOM_Document22createDocumentFragmentEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_DocumentFragment") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_720DOM_DocumentFragmentaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare void @_ZNK11xercesc_2_78DOM_Node9cloneNodeEb(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_Node") align 8, ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext) local_unnamed_addr #1

declare void @_ZN11xercesc_2_78DOM_Node12setNodeValueERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare void @_ZN11xercesc_2_717DOM_CharacterData10deleteDataEjj(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79RangeImpl15getSelectedNodeENS_8DOM_NodeEi(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr nocapture nonnull readnone align 8 %1, ptr noundef nonnull %2, i32 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %5 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %6 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %7 = tail call noundef signext i16 @_ZNK11xercesc_2_78DOM_Node11getNodeTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %8 = icmp eq i16 %7, 3
  br i1 %8, label %9, label %10

9:                                                ; preds = %4
  tail call void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %42

10:                                               ; preds = %4
  %11 = icmp slt i32 %3, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %10
  tail call void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %42

13:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #9
  call void @_ZNK11xercesc_2_78DOM_Node13getFirstChildEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %14

14:                                               ; preds = %24, %13
  %15 = phi i32 [ %3, %13 ], [ %21, %24 ]
  %16 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef null)
          to label %17 unwind label %25

17:                                               ; preds = %14
  %18 = icmp sgt i32 %15, 0
  %19 = select i1 %16, i1 %18, i1 false
  br i1 %19, label %20, label %35

20:                                               ; preds = %17
  %21 = add nsw i32 %15, -1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #9
  invoke void @_ZNK11xercesc_2_78DOM_Node14getNextSiblingEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %22 unwind label %29

22:                                               ; preds = %20
  %23 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %24 unwind label %31

24:                                               ; preds = %22
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  br label %14, !llvm.loop !112

25:                                               ; preds = %14
  %26 = landingpad { ptr, i32 }
          cleanup
  br label %40

27:                                               ; preds = %37, %35
  %28 = landingpad { ptr, i32 }
          cleanup
  br label %40

29:                                               ; preds = %20
  %30 = landingpad { ptr, i32 }
          cleanup
  br label %33

31:                                               ; preds = %22
  %32 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #9
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi { ptr, i32 } [ %32, %31 ], [ %30, %29 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  br label %40

35:                                               ; preds = %17
  %36 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef null)
          to label %37 unwind label %27

37:                                               ; preds = %35
  %38 = select i1 %36, ptr %5, ptr %2
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %38)
          to label %39 unwind label %27

39:                                               ; preds = %37
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  br label %42

40:                                               ; preds = %25, %27, %33
  %41 = phi { ptr, i32 } [ %34, %33 ], [ %26, %25 ], [ %28, %27 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  resume { ptr, i32 } %41

42:                                               ; preds = %39, %12, %9
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79RangeImpl21traverseFullySelectedENS_8DOM_NodeEi(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr nocapture nonnull readnone align 8 %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %5 = alloca %"class.xercesc_2_7::DOMString", align 8
  %6 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %7 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  switch i32 %3, label %30 [
    i32 2, label %8
    i32 1, label %9
    i32 3, label %26
  ]

8:                                                ; preds = %4
  tail call void @_ZNK11xercesc_2_78DOM_Node9cloneNodeEb(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %2, i1 noundef zeroext true)
  br label %31

9:                                                ; preds = %4
  %10 = tail call noundef signext i16 @_ZNK11xercesc_2_78DOM_Node11getNodeTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %11 = icmp eq i16 %10, 10
  br i1 %11, label %12, label %25

12:                                               ; preds = %9
  %13 = tail call ptr @__cxa_allocate_exception(i64 24) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #9
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef 0)
          to label %14 unwind label %16

14:                                               ; preds = %12
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %13, i16 noundef signext 3, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %15 unwind label %18

15:                                               ; preds = %14
  invoke void @__cxa_throw(ptr nonnull %13, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #10
          to label %34 unwind label %18

16:                                               ; preds = %12
  %17 = landingpad { ptr, i32 }
          cleanup
  br label %21

18:                                               ; preds = %15, %14
  %19 = phi i1 [ false, %15 ], [ true, %14 ]
  %20 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #9
  br label %21

21:                                               ; preds = %18, %16
  %22 = phi { ptr, i32 } [ %20, %18 ], [ %17, %16 ]
  %23 = phi i1 [ %19, %18 ], [ true, %16 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  br i1 %23, label %24, label %32

24:                                               ; preds = %21
  call void @__cxa_free_exception(ptr %13) #9
  br label %32

25:                                               ; preds = %9
  tail call void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %31

26:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #9
  call void @_ZNK11xercesc_2_78DOM_Node13getParentNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %2)
  invoke void @_ZN11xercesc_2_78DOM_Node11removeChildERKS0_(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %27 unwind label %28

27:                                               ; preds = %26
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #9
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #9
  call void @_ZN11xercesc_2_78DOM_NodeC1EPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef null)
  br label %31

28:                                               ; preds = %26
  %29 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #9
  br label %32

30:                                               ; preds = %4
  tail call void @_ZN11xercesc_2_78DOM_NodeC1EPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef null)
  br label %31

31:                                               ; preds = %30, %27, %25, %8
  ret void

32:                                               ; preds = %21, %24, %28
  %33 = phi { ptr, i32 } [ %29, %28 ], [ %22, %24 ], [ %22, %21 ]
  resume { ptr, i32 } %33

34:                                               ; preds = %15
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79RangeImpl21traverseRightBoundaryENS_8DOM_NodeEi(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %5 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %6 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %7 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %8 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %9 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %10 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %11 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %12 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %13 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %14 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %15 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %16 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %17 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %18 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %19 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %20 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #9
  %21 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %1, i64 0, i32 3
  call void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %21)
  %22 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %1, i64 0, i32 4
  %23 = load i32, ptr %22, align 8, !tbaa !47
  %24 = add i32 %23, -1
  invoke void @_ZN11xercesc_2_79RangeImpl15getSelectedNodeENS_8DOM_NodeEi(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %5, ptr nonnull align 8 poison, ptr noundef nonnull %6, i32 noundef %24)
          to label %25 unwind label %34

25:                                               ; preds = %4
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #9
  %26 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %21)
          to label %27 unwind label %36

27:                                               ; preds = %25
  %28 = zext i1 %26 to i8
  %29 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeeqERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %30 unwind label %36

30:                                               ; preds = %27
  br i1 %29, label %31, label %40

31:                                               ; preds = %30
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %32 unwind label %36

32:                                               ; preds = %31
  invoke void @_ZN11xercesc_2_79RangeImpl12traverseNodeENS_8DOM_NodeEbbi(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull %7, i1 noundef zeroext %26, i1 noundef zeroext false, i32 noundef %3)
          to label %33 unwind label %38

33:                                               ; preds = %32
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #9
  br label %144

34:                                               ; preds = %4
  %35 = landingpad { ptr, i32 }
          cleanup
  br label %145

36:                                               ; preds = %31, %27, %25
  %37 = landingpad { ptr, i32 }
          cleanup
  br label %145

38:                                               ; preds = %32
  %39 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #9
  br label %145

40:                                               ; preds = %30
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #9
  invoke void @_ZNK11xercesc_2_78DOM_Node13getParentNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %41 unwind label %63

41:                                               ; preds = %40
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #9
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %42 unwind label %65

42:                                               ; preds = %41
  invoke void @_ZN11xercesc_2_79RangeImpl12traverseNodeENS_8DOM_NodeEbbi(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %9, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull %10, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef %3)
          to label %43 unwind label %67

43:                                               ; preds = %42
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #9
  %44 = icmp eq i32 %3, 3
  %45 = icmp eq i32 %3, 3
  br label %46

46:                                               ; preds = %133, %43
  %47 = phi i8 [ %28, %43 ], [ %51, %133 ]
  %48 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef null)
          to label %49 unwind label %71

49:                                               ; preds = %46
  br i1 %48, label %50, label %136

50:                                               ; preds = %49, %89
  %51 = phi i8 [ 1, %89 ], [ %47, %49 ]
  %52 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef null)
          to label %53 unwind label %69

53:                                               ; preds = %50
  br i1 %52, label %54, label %98

54:                                               ; preds = %53
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #9
  invoke void @_ZNK11xercesc_2_78DOM_Node18getPreviousSiblingEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %11, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %55 unwind label %75

55:                                               ; preds = %54
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #9
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %56 unwind label %77

56:                                               ; preds = %55
  %57 = and i8 %51, 1
  %58 = icmp ne i8 %57, 0
  invoke void @_ZN11xercesc_2_79RangeImpl12traverseNodeENS_8DOM_NodeEbbi(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %12, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull %13, i1 noundef zeroext %58, i1 noundef zeroext false, i32 noundef %3)
          to label %59 unwind label %79

59:                                               ; preds = %56
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13) #9
  br i1 %44, label %87, label %60

60:                                               ; preds = %59
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #9
  invoke void @_ZNK11xercesc_2_78DOM_Node13getFirstChildEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %15, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %61 unwind label %81

61:                                               ; preds = %60
  invoke void @_ZN11xercesc_2_78DOM_Node12insertBeforeERKS0_S2_(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %14, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %62 unwind label %83

62:                                               ; preds = %61
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14) #9
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %15) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #9
  br label %87

63:                                               ; preds = %40
  %64 = landingpad { ptr, i32 }
          cleanup
  br label %142

65:                                               ; preds = %41
  %66 = landingpad { ptr, i32 }
          cleanup
  br label %140

67:                                               ; preds = %42
  %68 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #9
  br label %140

69:                                               ; preds = %50
  %70 = landingpad { ptr, i32 }
          cleanup
  br label %138

71:                                               ; preds = %98, %46
  %72 = landingpad { ptr, i32 }
          cleanup
  br label %138

73:                                               ; preds = %136, %101
  %74 = landingpad { ptr, i32 }
          cleanup
  br label %138

75:                                               ; preds = %54
  %76 = landingpad { ptr, i32 }
          cleanup
  br label %96

77:                                               ; preds = %55
  %78 = landingpad { ptr, i32 }
          cleanup
  br label %94

79:                                               ; preds = %56
  %80 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13) #9
  br label %94

81:                                               ; preds = %60
  %82 = landingpad { ptr, i32 }
          cleanup
  br label %85

83:                                               ; preds = %61
  %84 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %15) #9
  br label %85

85:                                               ; preds = %83, %81
  %86 = phi { ptr, i32 } [ %84, %83 ], [ %82, %81 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #9
  br label %92

87:                                               ; preds = %62, %59
  %88 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %89 unwind label %90

89:                                               ; preds = %87
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #9
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #9
  br label %50, !llvm.loop !113

90:                                               ; preds = %87
  %91 = landingpad { ptr, i32 }
          cleanup
  br label %92

92:                                               ; preds = %90, %85
  %93 = phi { ptr, i32 } [ %91, %90 ], [ %86, %85 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12) #9
  br label %94

94:                                               ; preds = %92, %79, %77
  %95 = phi { ptr, i32 } [ %93, %92 ], [ %80, %79 ], [ %78, %77 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #9
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #9
  br label %96

96:                                               ; preds = %94, %75
  %97 = phi { ptr, i32 } [ %95, %94 ], [ %76, %75 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #9
  br label %138

98:                                               ; preds = %53
  %99 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeeqERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %100 unwind label %71

100:                                              ; preds = %98
  br i1 %99, label %101, label %102

101:                                              ; preds = %100
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %137 unwind label %73

102:                                              ; preds = %100
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #9
  invoke void @_ZNK11xercesc_2_78DOM_Node18getPreviousSiblingEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %16, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %103 unwind label %113

103:                                              ; preds = %102
  %104 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %105 unwind label %115

105:                                              ; preds = %103
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %16) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #9
  invoke void @_ZNK11xercesc_2_78DOM_Node13getParentNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %17, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %106 unwind label %119

106:                                              ; preds = %105
  %107 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %108 unwind label %121

108:                                              ; preds = %106
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %17) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %18) #9
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %109 unwind label %125

109:                                              ; preds = %108
  invoke void @_ZN11xercesc_2_79RangeImpl12traverseNodeENS_8DOM_NodeEbbi(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %18, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull %19, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef %3)
          to label %110 unwind label %127

110:                                              ; preds = %109
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %19) #9
  br i1 %45, label %131, label %111

111:                                              ; preds = %110
  invoke void @_ZN11xercesc_2_78DOM_Node11appendChildERKS0_(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %20, ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %112 unwind label %129

112:                                              ; preds = %111
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %20) #9
  br label %131

113:                                              ; preds = %102
  %114 = landingpad { ptr, i32 }
          cleanup
  br label %117

115:                                              ; preds = %103
  %116 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %16) #9
  br label %117

117:                                              ; preds = %115, %113
  %118 = phi { ptr, i32 } [ %116, %115 ], [ %114, %113 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #9
  br label %138

119:                                              ; preds = %105
  %120 = landingpad { ptr, i32 }
          cleanup
  br label %123

121:                                              ; preds = %106
  %122 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %17) #9
  br label %123

123:                                              ; preds = %121, %119
  %124 = phi { ptr, i32 } [ %122, %121 ], [ %120, %119 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #9
  br label %138

125:                                              ; preds = %108
  %126 = landingpad { ptr, i32 }
          cleanup
  br label %134

127:                                              ; preds = %109
  %128 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %19) #9
  br label %134

129:                                              ; preds = %131, %111
  %130 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %18) #9
  br label %134

131:                                              ; preds = %112, %110
  %132 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %18)
          to label %133 unwind label %129

133:                                              ; preds = %131
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %18) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #9
  br label %46, !llvm.loop !114

134:                                              ; preds = %129, %127, %125
  %135 = phi { ptr, i32 } [ %130, %129 ], [ %128, %127 ], [ %126, %125 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #9
  br label %138

136:                                              ; preds = %49
  invoke void @_ZN11xercesc_2_78DOM_NodeC1EPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef null)
          to label %137 unwind label %73

137:                                              ; preds = %101, %136
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #9
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #9
  br label %144

138:                                              ; preds = %69, %73, %71, %134, %123, %117, %96
  %139 = phi { ptr, i32 } [ %97, %96 ], [ %135, %134 ], [ %124, %123 ], [ %118, %117 ], [ %70, %69 ], [ %72, %71 ], [ %74, %73 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #9
  br label %140

140:                                              ; preds = %138, %67, %65
  %141 = phi { ptr, i32 } [ %139, %138 ], [ %68, %67 ], [ %66, %65 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #9
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #9
  br label %142

142:                                              ; preds = %140, %63
  %143 = phi { ptr, i32 } [ %141, %140 ], [ %64, %63 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #9
  br label %145

144:                                              ; preds = %137, %33
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  ret void

145:                                              ; preds = %36, %38, %142, %34
  %146 = phi ptr [ %6, %34 ], [ %5, %142 ], [ %5, %38 ], [ %5, %36 ]
  %147 = phi { ptr, i32 } [ %35, %34 ], [ %143, %142 ], [ %39, %38 ], [ %37, %36 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %146) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  resume { ptr, i32 } %147
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79RangeImpl20traverseLeftBoundaryENS_8DOM_NodeEi(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %5 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %6 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %7 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %8 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %9 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %10 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %11 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %12 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %13 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %14 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %15 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %16 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %17 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %18 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %19 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %20 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #9
  %21 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %1, i64 0, i32 1
  call void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %21)
  %22 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %1, i64 0, i32 2
  %23 = load i32, ptr %22, align 8, !tbaa !38
  invoke void @_ZN11xercesc_2_79RangeImpl15getSelectedNodeENS_8DOM_NodeEi(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %5, ptr nonnull align 8 poison, ptr noundef nonnull %6, i32 noundef %23)
          to label %24 unwind label %34

24:                                               ; preds = %4
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #9
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %21)
          to label %25 unwind label %36

25:                                               ; preds = %24
  %26 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %27 unwind label %38

27:                                               ; preds = %25
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #9
  %28 = zext i1 %26 to i8
  %29 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeeqERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %30 unwind label %42

30:                                               ; preds = %27
  br i1 %29, label %31, label %46

31:                                               ; preds = %30
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %32 unwind label %42

32:                                               ; preds = %31
  invoke void @_ZN11xercesc_2_79RangeImpl12traverseNodeENS_8DOM_NodeEbbi(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull %8, i1 noundef zeroext %26, i1 noundef zeroext true, i32 noundef %3)
          to label %33 unwind label %44

33:                                               ; preds = %32
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #9
  br label %141

34:                                               ; preds = %4
  %35 = landingpad { ptr, i32 }
          cleanup
  br label %142

36:                                               ; preds = %24
  %37 = landingpad { ptr, i32 }
          cleanup
  br label %40

38:                                               ; preds = %25
  %39 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #9
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi { ptr, i32 } [ %39, %38 ], [ %37, %36 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #9
  br label %142

42:                                               ; preds = %31, %27
  %43 = landingpad { ptr, i32 }
          cleanup
  br label %142

44:                                               ; preds = %32
  %45 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #9
  br label %142

46:                                               ; preds = %30
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #9
  invoke void @_ZNK11xercesc_2_78DOM_Node13getParentNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %47 unwind label %68

47:                                               ; preds = %46
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #9
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %48 unwind label %70

48:                                               ; preds = %47
  invoke void @_ZN11xercesc_2_79RangeImpl12traverseNodeENS_8DOM_NodeEbbi(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %10, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull %11, i1 noundef zeroext false, i1 noundef zeroext true, i32 noundef %3)
          to label %49 unwind label %72

49:                                               ; preds = %48
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #9
  %50 = icmp eq i32 %3, 3
  %51 = icmp eq i32 %3, 3
  br label %52

52:                                               ; preds = %130, %49
  %53 = phi i8 [ %28, %49 ], [ %57, %130 ]
  %54 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef null)
          to label %55 unwind label %76

55:                                               ; preds = %52
  br i1 %54, label %56, label %133

56:                                               ; preds = %55, %90
  %57 = phi i8 [ 1, %90 ], [ %53, %55 ]
  %58 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef null)
          to label %59 unwind label %74

59:                                               ; preds = %56
  br i1 %58, label %60, label %95

60:                                               ; preds = %59
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #9
  invoke void @_ZNK11xercesc_2_78DOM_Node14getNextSiblingEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %12, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %61 unwind label %80

61:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #9
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %62 unwind label %82

62:                                               ; preds = %61
  %63 = and i8 %57, 1
  %64 = icmp ne i8 %63, 0
  invoke void @_ZN11xercesc_2_79RangeImpl12traverseNodeENS_8DOM_NodeEbbi(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %13, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull %14, i1 noundef zeroext %64, i1 noundef zeroext true, i32 noundef %3)
          to label %65 unwind label %84

65:                                               ; preds = %62
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14) #9
  br i1 %50, label %88, label %66

66:                                               ; preds = %65
  invoke void @_ZN11xercesc_2_78DOM_Node11appendChildERKS0_(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %15, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %67 unwind label %86

67:                                               ; preds = %66
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %15) #9
  br label %88

68:                                               ; preds = %46
  %69 = landingpad { ptr, i32 }
          cleanup
  br label %139

70:                                               ; preds = %47
  %71 = landingpad { ptr, i32 }
          cleanup
  br label %137

72:                                               ; preds = %48
  %73 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #9
  br label %137

74:                                               ; preds = %56
  %75 = landingpad { ptr, i32 }
          cleanup
  br label %135

76:                                               ; preds = %95, %52
  %77 = landingpad { ptr, i32 }
          cleanup
  br label %135

78:                                               ; preds = %133, %98
  %79 = landingpad { ptr, i32 }
          cleanup
  br label %135

80:                                               ; preds = %60
  %81 = landingpad { ptr, i32 }
          cleanup
  br label %93

82:                                               ; preds = %61
  %83 = landingpad { ptr, i32 }
          cleanup
  br label %91

84:                                               ; preds = %62
  %85 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14) #9
  br label %91

86:                                               ; preds = %88, %66
  %87 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13) #9
  br label %91

88:                                               ; preds = %67, %65
  %89 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %90 unwind label %86

90:                                               ; preds = %88
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #9
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #9
  br label %56, !llvm.loop !115

91:                                               ; preds = %86, %84, %82
  %92 = phi { ptr, i32 } [ %87, %86 ], [ %85, %84 ], [ %83, %82 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #9
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12) #9
  br label %93

93:                                               ; preds = %91, %80
  %94 = phi { ptr, i32 } [ %92, %91 ], [ %81, %80 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #9
  br label %135

95:                                               ; preds = %59
  %96 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeeqERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %97 unwind label %76

97:                                               ; preds = %95
  br i1 %96, label %98, label %99

98:                                               ; preds = %97
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %134 unwind label %78

99:                                               ; preds = %97
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #9
  invoke void @_ZNK11xercesc_2_78DOM_Node14getNextSiblingEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %16, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %100 unwind label %110

100:                                              ; preds = %99
  %101 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %102 unwind label %112

102:                                              ; preds = %100
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %16) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #9
  invoke void @_ZNK11xercesc_2_78DOM_Node13getParentNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %17, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %103 unwind label %116

103:                                              ; preds = %102
  %104 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %105 unwind label %118

105:                                              ; preds = %103
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %17) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %18) #9
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %106 unwind label %122

106:                                              ; preds = %105
  invoke void @_ZN11xercesc_2_79RangeImpl12traverseNodeENS_8DOM_NodeEbbi(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %18, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull %19, i1 noundef zeroext false, i1 noundef zeroext true, i32 noundef %3)
          to label %107 unwind label %124

107:                                              ; preds = %106
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %19) #9
  br i1 %51, label %128, label %108

108:                                              ; preds = %107
  invoke void @_ZN11xercesc_2_78DOM_Node11appendChildERKS0_(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %20, ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %109 unwind label %126

109:                                              ; preds = %108
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %20) #9
  br label %128

110:                                              ; preds = %99
  %111 = landingpad { ptr, i32 }
          cleanup
  br label %114

112:                                              ; preds = %100
  %113 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %16) #9
  br label %114

114:                                              ; preds = %112, %110
  %115 = phi { ptr, i32 } [ %113, %112 ], [ %111, %110 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #9
  br label %135

116:                                              ; preds = %102
  %117 = landingpad { ptr, i32 }
          cleanup
  br label %120

118:                                              ; preds = %103
  %119 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %17) #9
  br label %120

120:                                              ; preds = %118, %116
  %121 = phi { ptr, i32 } [ %119, %118 ], [ %117, %116 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #9
  br label %135

122:                                              ; preds = %105
  %123 = landingpad { ptr, i32 }
          cleanup
  br label %131

124:                                              ; preds = %106
  %125 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %19) #9
  br label %131

126:                                              ; preds = %128, %108
  %127 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %18) #9
  br label %131

128:                                              ; preds = %109, %107
  %129 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %18)
          to label %130 unwind label %126

130:                                              ; preds = %128
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %18) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #9
  br label %52, !llvm.loop !116

131:                                              ; preds = %126, %124, %122
  %132 = phi { ptr, i32 } [ %127, %126 ], [ %125, %124 ], [ %123, %122 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #9
  br label %135

133:                                              ; preds = %55
  invoke void @_ZN11xercesc_2_78DOM_NodeC1EPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef null)
          to label %134 unwind label %78

134:                                              ; preds = %98, %133
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #9
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #9
  br label %141

135:                                              ; preds = %74, %78, %76, %131, %120, %114, %93
  %136 = phi { ptr, i32 } [ %94, %93 ], [ %132, %131 ], [ %121, %120 ], [ %115, %114 ], [ %75, %74 ], [ %77, %76 ], [ %79, %78 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #9
  br label %137

137:                                              ; preds = %135, %72, %70
  %138 = phi { ptr, i32 } [ %136, %135 ], [ %73, %72 ], [ %71, %70 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #9
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #9
  br label %139

139:                                              ; preds = %137, %68
  %140 = phi { ptr, i32 } [ %138, %137 ], [ %69, %68 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #9
  br label %142

141:                                              ; preds = %134, %33
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  ret void

142:                                              ; preds = %40, %42, %44, %139, %34
  %143 = phi ptr [ %6, %34 ], [ %5, %139 ], [ %5, %44 ], [ %5, %42 ], [ %5, %40 ]
  %144 = phi { ptr, i32 } [ %35, %34 ], [ %140, %139 ], [ %45, %44 ], [ %43, %42 ], [ %41, %40 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %143) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  resume { ptr, i32 } %144
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79RangeImpl12traverseNodeENS_8DOM_NodeEbbi(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef %2, i1 noundef zeroext %3, i1 noundef zeroext %4, i32 noundef %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %7 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %8 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %9 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  br i1 %3, label %10, label %13

10:                                               ; preds = %6
  call void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %2)
  invoke void @_ZN11xercesc_2_79RangeImpl21traverseFullySelectedENS_8DOM_NodeEi(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr nonnull align 8 poison, ptr noundef nonnull %7, i32 noundef %5)
          to label %22 unwind label %11

11:                                               ; preds = %10
  %12 = landingpad { ptr, i32 }
          cleanup
  br label %24

13:                                               ; preds = %6
  %14 = tail call noundef signext i16 @_ZNK11xercesc_2_78DOM_Node11getNodeTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %15 = icmp eq i16 %14, 3
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  call void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %2)
  invoke void @_ZN11xercesc_2_79RangeImpl16traverseTextNodeENS_8DOM_NodeEbi(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull %8, i1 noundef zeroext %4, i32 noundef %5)
          to label %22 unwind label %17

17:                                               ; preds = %16
  %18 = landingpad { ptr, i32 }
          cleanup
  br label %24

19:                                               ; preds = %13
  call void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %2)
  invoke void @_ZN11xercesc_2_79RangeImpl25traversePartiallySelectedENS_8DOM_NodeEi(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr nonnull align 8 poison, ptr noundef nonnull %9, i32 noundef %5)
          to label %22 unwind label %20

20:                                               ; preds = %19
  %21 = landingpad { ptr, i32 }
          cleanup
  br label %24

22:                                               ; preds = %19, %16, %10
  %23 = phi ptr [ %7, %10 ], [ %8, %16 ], [ %9, %19 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %23) #9
  ret void

24:                                               ; preds = %20, %17, %11
  %25 = phi ptr [ %9, %20 ], [ %8, %17 ], [ %7, %11 ]
  %26 = phi { ptr, i32 } [ %21, %20 ], [ %18, %17 ], [ %12, %11 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %25) #9
  resume { ptr, i32 } %26
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79RangeImpl16traverseTextNodeENS_8DOM_NodeEbi(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull %2, i1 noundef zeroext %3, i32 noundef %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %6 = alloca %"class.xercesc_2_7::DOMString", align 8
  %7 = alloca %"class.xercesc_2_7::DOMString", align 8
  %8 = alloca %"class.xercesc_2_7::DOMString", align 8
  %9 = alloca %"class.xercesc_2_7::DOMString", align 8
  %10 = alloca %"class.xercesc_2_7::DOMString", align 8
  %11 = alloca %"class.xercesc_2_7::DOMString", align 8
  %12 = alloca %"class.xercesc_2_7::DOMString", align 8
  %13 = alloca %"class.xercesc_2_7::DOMString", align 8
  %14 = alloca %"class.xercesc_2_7::DOMString", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #9
  call void @_ZNK11xercesc_2_78DOM_Node12getNodeValueEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #9
  invoke void @_ZN11xercesc_2_79DOMStringC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %15 unwind label %31

15:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #9
  invoke void @_ZN11xercesc_2_79DOMStringC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %16 unwind label %33

16:                                               ; preds = %15
  br i1 %3, label %17, label %51

17:                                               ; preds = %16
  %18 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %1, i64 0, i32 2
  %19 = load i32, ptr %18, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #9
  %20 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %1, i64 0, i32 1
  invoke void @_ZNK11xercesc_2_78DOM_Node12getNodeValueEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %21 unwind label %35

21:                                               ; preds = %17
  %22 = invoke noundef i32 @_ZNK11xercesc_2_79DOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %23 unwind label %37

23:                                               ; preds = %21
  %24 = sub i32 %22, %19
  invoke void @_ZNK11xercesc_2_79DOMString13substringDataEjj(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef %19, i32 noundef %24)
          to label %25 unwind label %37

25:                                               ; preds = %23
  %26 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %27 unwind label %39

27:                                               ; preds = %25
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #9
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #9
  invoke void @_ZNK11xercesc_2_79DOMString13substringDataEjj(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %11, ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 0, i32 noundef %19)
          to label %28 unwind label %45

28:                                               ; preds = %27
  %29 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %30 unwind label %47

30:                                               ; preds = %28
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #9
  br label %81

31:                                               ; preds = %5
  %32 = landingpad { ptr, i32 }
          cleanup
  br label %98

33:                                               ; preds = %15
  %34 = landingpad { ptr, i32 }
          cleanup
  br label %96

35:                                               ; preds = %17
  %36 = landingpad { ptr, i32 }
          cleanup
  br label %43

37:                                               ; preds = %23, %21
  %38 = landingpad { ptr, i32 }
          cleanup
  br label %41

39:                                               ; preds = %25
  %40 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #9
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi { ptr, i32 } [ %40, %39 ], [ %38, %37 ]
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #9
  br label %43

43:                                               ; preds = %41, %35
  %44 = phi { ptr, i32 } [ %42, %41 ], [ %36, %35 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #9
  br label %94

45:                                               ; preds = %27
  %46 = landingpad { ptr, i32 }
          cleanup
  br label %49

47:                                               ; preds = %28
  %48 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #9
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi { ptr, i32 } [ %48, %47 ], [ %46, %45 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #9
  br label %94

51:                                               ; preds = %16
  %52 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %1, i64 0, i32 4
  %53 = load i32, ptr %52, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #9
  invoke void @_ZNK11xercesc_2_79DOMString13substringDataEjj(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %12, ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 0, i32 noundef %53)
          to label %54 unwind label %65

54:                                               ; preds = %51
  %55 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %56 unwind label %67

56:                                               ; preds = %54
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #9
  %57 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %1, i64 0, i32 3
  invoke void @_ZNK11xercesc_2_78DOM_Node12getNodeValueEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %14, ptr noundef nonnull align 8 dereferenceable(8) %57)
          to label %58 unwind label %71

58:                                               ; preds = %56
  %59 = invoke noundef i32 @_ZNK11xercesc_2_79DOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %60 unwind label %73

60:                                               ; preds = %58
  %61 = sub i32 %59, %53
  invoke void @_ZNK11xercesc_2_79DOMString13substringDataEjj(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %13, ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef %53, i32 noundef %61)
          to label %62 unwind label %73

62:                                               ; preds = %60
  %63 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %64 unwind label %75

64:                                               ; preds = %62
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13) #9
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #9
  br label %81

65:                                               ; preds = %51
  %66 = landingpad { ptr, i32 }
          cleanup
  br label %69

67:                                               ; preds = %54
  %68 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12) #9
  br label %69

69:                                               ; preds = %67, %65
  %70 = phi { ptr, i32 } [ %68, %67 ], [ %66, %65 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #9
  br label %94

71:                                               ; preds = %56
  %72 = landingpad { ptr, i32 }
          cleanup
  br label %79

73:                                               ; preds = %60, %58
  %74 = landingpad { ptr, i32 }
          cleanup
  br label %77

75:                                               ; preds = %62
  %76 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13) #9
  br label %77

77:                                               ; preds = %75, %73
  %78 = phi { ptr, i32 } [ %76, %75 ], [ %74, %73 ]
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14) #9
  br label %79

79:                                               ; preds = %77, %71
  %80 = phi { ptr, i32 } [ %78, %77 ], [ %72, %71 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #9
  br label %94

81:                                               ; preds = %64, %30
  %82 = icmp eq i32 %4, 2
  br i1 %82, label %89, label %83

83:                                               ; preds = %81
  invoke void @_ZN11xercesc_2_78DOM_Node12setNodeValueERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %86 unwind label %84

84:                                               ; preds = %89, %88, %83
  %85 = landingpad { ptr, i32 }
          cleanup
  br label %94

86:                                               ; preds = %83
  %87 = icmp eq i32 %4, 3
  br i1 %87, label %88, label %89

88:                                               ; preds = %86
  invoke void @_ZN11xercesc_2_78DOM_NodeC1EPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef null)
          to label %93 unwind label %84

89:                                               ; preds = %81, %86
  invoke void @_ZNK11xercesc_2_78DOM_Node9cloneNodeEb(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %2, i1 noundef zeroext false)
          to label %90 unwind label %84

90:                                               ; preds = %89
  invoke void @_ZN11xercesc_2_78DOM_Node12setNodeValueERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %93 unwind label %91

91:                                               ; preds = %90
  %92 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #9
  br label %94

93:                                               ; preds = %90, %88
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #9
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #9
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  ret void

94:                                               ; preds = %69, %79, %43, %49, %91, %84
  %95 = phi { ptr, i32 } [ %85, %84 ], [ %92, %91 ], [ %50, %49 ], [ %44, %43 ], [ %80, %79 ], [ %70, %69 ]
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #9
  br label %96

96:                                               ; preds = %94, %33
  %97 = phi { ptr, i32 } [ %95, %94 ], [ %34, %33 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #9
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #9
  br label %98

98:                                               ; preds = %96, %31
  %99 = phi { ptr, i32 } [ %97, %96 ], [ %32, %31 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #9
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  resume { ptr, i32 } %99
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79RangeImpl25traversePartiallySelectedENS_8DOM_NodeEi(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr nocapture nonnull readnone align 8 %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 !prof !34 {
  switch i32 %3, label %7 [
    i32 3, label %5
    i32 2, label %6
    i32 1, label %6
  ]

5:                                                ; preds = %4
  tail call void @_ZN11xercesc_2_78DOM_NodeC1EPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef null)
  br label %8

6:                                                ; preds = %4, %4
  tail call void @_ZNK11xercesc_2_78DOM_Node9cloneNodeEb(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %2, i1 noundef zeroext false)
  br label %8

7:                                                ; preds = %4
  tail call void @_ZN11xercesc_2_78DOM_NodeC1EPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef null)
  br label %8

8:                                                ; preds = %7, %6, %5
  ret void
}

declare void @_ZN11xercesc_2_78DOM_Node11removeChildERKS0_(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_Node") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79RangeImpl19recurseTreeAndCheckERNS_8DOM_NodeES2_(ptr nocapture noundef nonnull readnone align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %4 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %5 = alloca %"class.xercesc_2_7::DOMString", align 8
  %6 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %7 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  call void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %8 = load i16, ptr @_ZN11xercesc_2_78NodeImpl8READONLYE, align 2
  br label %9

9:                                                ; preds = %53, %3
  %10 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef null)
          to label %11 unwind label %16

11:                                               ; preds = %9
  br i1 %10, label %12, label %15

12:                                               ; preds = %11
  %13 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %14 unwind label %16

14:                                               ; preds = %12
  br i1 %13, label %18, label %15

15:                                               ; preds = %11, %14
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  ret void

16:                                               ; preds = %43, %37, %12, %9
  %17 = landingpad { ptr, i32 }
          cleanup
  br label %60

18:                                               ; preds = %14
  %19 = load ptr, ptr %4, align 8, !tbaa !52
  %20 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %19, i64 0, i32 3
  %21 = load i16, ptr %20, align 8, !tbaa !83
  %22 = and i16 %8, %21
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %37, label %24

24:                                               ; preds = %18
  %25 = call ptr @__cxa_allocate_exception(i64 24) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #9
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef 0)
          to label %26 unwind label %28

26:                                               ; preds = %24
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %25, i16 noundef signext 7, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %27 unwind label %30

27:                                               ; preds = %26
  invoke void @__cxa_throw(ptr nonnull %25, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #10
          to label %62 unwind label %30

28:                                               ; preds = %24
  %29 = landingpad { ptr, i32 }
          cleanup
  br label %33

30:                                               ; preds = %27, %26
  %31 = phi i1 [ false, %27 ], [ true, %26 ]
  %32 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #9
  br label %33

33:                                               ; preds = %30, %28
  %34 = phi { ptr, i32 } [ %32, %30 ], [ %29, %28 ]
  %35 = phi i1 [ %31, %30 ], [ true, %28 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  br i1 %35, label %36, label %60

36:                                               ; preds = %33
  call void @__cxa_free_exception(ptr %25) #9
  br label %60

37:                                               ; preds = %18
  %38 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node13hasChildNodesEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %39 unwind label %16

39:                                               ; preds = %37
  br i1 %38, label %40, label %50

40:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #9
  invoke void @_ZNK11xercesc_2_78DOM_Node13getFirstChildEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %41 unwind label %44

41:                                               ; preds = %40
  %42 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %43 unwind label %46

43:                                               ; preds = %41
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  invoke void @_ZN11xercesc_2_79RangeImpl19recurseTreeAndCheckERNS_8DOM_NodeES2_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %50 unwind label %16

44:                                               ; preds = %40
  %45 = landingpad { ptr, i32 }
          cleanup
  br label %48

46:                                               ; preds = %41
  %47 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #9
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi { ptr, i32 } [ %47, %46 ], [ %45, %44 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  br label %60

50:                                               ; preds = %39, %43
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #9
  invoke void @_ZNK11xercesc_2_78DOM_Node14getNextSiblingEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %51 unwind label %54

51:                                               ; preds = %50
  %52 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %53 unwind label %56

53:                                               ; preds = %51
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #9
  br label %9, !llvm.loop !117

54:                                               ; preds = %50
  %55 = landingpad { ptr, i32 }
          cleanup
  br label %58

56:                                               ; preds = %51
  %57 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #9
  br label %58

58:                                               ; preds = %56, %54
  %59 = phi { ptr, i32 } [ %57, %56 ], [ %55, %54 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #9
  br label %60

60:                                               ; preds = %33, %36, %58, %48, %16
  %61 = phi { ptr, i32 } [ %34, %36 ], [ %34, %33 ], [ %59, %58 ], [ %17, %16 ], [ %49, %48 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  resume { ptr, i32 } %61

62:                                               ; preds = %27
  unreachable
}

declare noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node13hasChildNodesEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79RangeImpl11removeChildERNS_8DOM_NodeES2_(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %1, i64 0, i32 8
  %6 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %3)
  tail call void @_ZN11xercesc_2_78DOM_Node11removeChildERKS0_(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %7 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef null)
          to label %10 unwind label %8

8:                                                ; preds = %4
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #9
  resume { ptr, i32 } %9

10:                                               ; preds = %4
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79RangeImpl19receiveReplacedTextEPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %4 = icmp eq ptr %1, null
  br i1 %4, label %28, label %5

5:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  call void @_ZN11xercesc_2_78DOM_NodeC1EPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %1)
  %6 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 1
  %7 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeeqERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %8 unwind label %15

8:                                                ; preds = %5
  br i1 %7, label %9, label %17

9:                                                ; preds = %8
  %10 = invoke noundef signext i16 @_ZNK11xercesc_2_78DOM_Node11getNodeTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %11 unwind label %15

11:                                               ; preds = %9
  %12 = icmp eq i16 %10, 3
  br i1 %12, label %13, label %17

13:                                               ; preds = %11
  %14 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 2
  store i32 0, ptr %14, align 8, !tbaa !38
  br label %17

15:                                               ; preds = %21, %17, %9, %5
  %16 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  resume { ptr, i32 } %16

17:                                               ; preds = %13, %11, %8
  %18 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 3
  %19 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeeqERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %18)
          to label %20 unwind label %15

20:                                               ; preds = %17
  br i1 %19, label %21, label %27

21:                                               ; preds = %20
  %22 = invoke noundef signext i16 @_ZNK11xercesc_2_78DOM_Node11getNodeTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %18)
          to label %23 unwind label %15

23:                                               ; preds = %21
  %24 = icmp eq i16 %22, 3
  br i1 %24, label %25, label %27

25:                                               ; preds = %23
  %26 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 4
  store i32 0, ptr %26, align 8, !tbaa !47
  br label %27

27:                                               ; preds = %25, %23, %20
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  br label %28

28:                                               ; preds = %2, %27
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79RangeImpl25updateRangeForDeletedTextERNS_8DOM_NodeEji(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 !prof !34 {
  %5 = tail call noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeeqEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef null)
  br i1 %5, label %40, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 1
  %8 = tail call noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeeqERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %7)
  br i1 %8, label %9, label %23

9:                                                ; preds = %6
  %10 = tail call noundef signext i16 @_ZNK11xercesc_2_78DOM_Node11getNodeTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %7)
  %11 = icmp eq i16 %10, 3
  br i1 %11, label %12, label %23

12:                                               ; preds = %9
  %13 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !38
  %15 = add i32 %3, %2
  %16 = icmp ugt i32 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = sub i32 %14, %3
  br label %21

19:                                               ; preds = %12
  %20 = icmp ugt i32 %14, %2
  br i1 %20, label %21, label %23

21:                                               ; preds = %19, %17
  %22 = phi i32 [ %18, %17 ], [ %2, %19 ]
  store i32 %22, ptr %13, align 8, !tbaa !38
  br label %23

23:                                               ; preds = %21, %19, %9, %6
  %24 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 3
  %25 = tail call noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeeqERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %24)
  br i1 %25, label %26, label %40

26:                                               ; preds = %23
  %27 = tail call noundef signext i16 @_ZNK11xercesc_2_78DOM_Node11getNodeTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %24)
  %28 = icmp eq i16 %27, 3
  br i1 %28, label %29, label %40

29:                                               ; preds = %26
  %30 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 4
  %31 = load i32, ptr %30, align 8, !tbaa !47
  %32 = add i32 %3, %2
  %33 = icmp ugt i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = sub i32 %31, %3
  br label %38

36:                                               ; preds = %29
  %37 = icmp ugt i32 %31, %2
  br i1 %37, label %38, label %40

38:                                               ; preds = %36, %34
  %39 = phi i32 [ %35, %34 ], [ %2, %36 ]
  store i32 %39, ptr %30, align 8, !tbaa !47
  br label %40

40:                                               ; preds = %38, %36, %4, %26, %23
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79RangeImpl25updateRangeForDeletedNodeEPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %4 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %5 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %6 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %7 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %8 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %9 = icmp eq ptr %1, null
  br i1 %9, label %131, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  call void @_ZN11xercesc_2_78DOM_NodeC1EPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %1)
  %12 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeeqERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %13 unwind label %14

13:                                               ; preds = %10
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  br i1 %12, label %131, label %16

14:                                               ; preds = %10
  %15 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  br label %134

16:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  call void @_ZN11xercesc_2_78DOM_NodeC1EPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %1)
  %17 = load ptr, ptr %1, align 8, !tbaa !35
  %18 = getelementptr inbounds ptr, ptr %17, i64 27
  %19 = load ptr, ptr %18, align 8
  %20 = invoke noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(26) %1)
          to label %21 unwind label %34

21:                                               ; preds = %16
  %22 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !118
  %24 = icmp eq ptr %20, %23
  br i1 %24, label %25, label %38

25:                                               ; preds = %21
  %26 = invoke noundef zeroext i16 @_ZNK11xercesc_2_79RangeImpl7indexOfERKNS_8DOM_NodeES3_(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %22)
          to label %27 unwind label %36

27:                                               ; preds = %25
  %28 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 2
  %29 = load i32, ptr %28, align 8, !tbaa !38
  %30 = zext i16 %26 to i32
  %31 = icmp ugt i32 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = add i32 %29, -1
  store i32 %33, ptr %28, align 8, !tbaa !38
  br label %38

34:                                               ; preds = %66, %58, %38, %16
  %35 = landingpad { ptr, i32 }
          cleanup
  br label %132

36:                                               ; preds = %25
  %37 = landingpad { ptr, i32 }
          cleanup
  br label %132

38:                                               ; preds = %27, %32, %21
  %39 = load ptr, ptr %1, align 8, !tbaa !35
  %40 = getelementptr inbounds ptr, ptr %39, i64 27
  %41 = load ptr, ptr %40, align 8
  %42 = invoke noundef ptr %41(ptr noundef nonnull align 8 dereferenceable(26) %1)
          to label %43 unwind label %34

43:                                               ; preds = %38
  %44 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !119
  %46 = icmp eq ptr %42, %45
  br i1 %46, label %47, label %58

47:                                               ; preds = %43
  %48 = invoke noundef zeroext i16 @_ZNK11xercesc_2_79RangeImpl7indexOfERKNS_8DOM_NodeES3_(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %44)
          to label %49 unwind label %56

49:                                               ; preds = %47
  %50 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 4
  %51 = load i32, ptr %50, align 8, !tbaa !47
  %52 = zext i16 %48 to i32
  %53 = icmp ugt i32 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = add i32 %51, -1
  store i32 %55, ptr %50, align 8, !tbaa !47
  br label %58

56:                                               ; preds = %47
  %57 = landingpad { ptr, i32 }
          cleanup
  br label %132

58:                                               ; preds = %49, %54, %43
  %59 = load ptr, ptr %1, align 8, !tbaa !35
  %60 = getelementptr inbounds ptr, ptr %59, i64 27
  %61 = load ptr, ptr %60, align 8
  %62 = invoke noundef ptr %61(ptr noundef nonnull align 8 dereferenceable(26) %1)
          to label %63 unwind label %34

63:                                               ; preds = %58
  %64 = load ptr, ptr %22, align 8, !tbaa !118
  %65 = icmp eq ptr %62, %64
  br i1 %65, label %66, label %74

66:                                               ; preds = %63
  %67 = load ptr, ptr %1, align 8, !tbaa !35
  %68 = getelementptr inbounds ptr, ptr %67, i64 27
  %69 = load ptr, ptr %68, align 8
  %70 = invoke noundef ptr %69(ptr noundef nonnull align 8 dereferenceable(26) %1)
          to label %71 unwind label %34

71:                                               ; preds = %66
  %72 = load ptr, ptr %44, align 8, !tbaa !119
  %73 = icmp eq ptr %70, %72
  br i1 %73, label %130, label %74

74:                                               ; preds = %71, %63
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #9
  invoke void @_ZN11xercesc_2_78DOM_NodeC1EPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %1)
          to label %75 unwind label %90

75:                                               ; preds = %74
  %76 = invoke noundef zeroext i1 @_ZN11xercesc_2_79RangeImpl12isAncestorOfERKNS_8DOM_NodeES3_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %22)
          to label %77 unwind label %92

77:                                               ; preds = %75
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  br i1 %76, label %78, label %102

78:                                               ; preds = %77
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #9
  %79 = load ptr, ptr %1, align 8, !tbaa !35
  %80 = getelementptr inbounds ptr, ptr %79, i64 27
  %81 = load ptr, ptr %80, align 8
  %82 = invoke noundef ptr %81(ptr noundef nonnull align 8 dereferenceable(26) %1)
          to label %83 unwind label %96

83:                                               ; preds = %78
  invoke void @_ZN11xercesc_2_78DOM_NodeC1EPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %82)
          to label %84 unwind label %96

84:                                               ; preds = %83
  invoke void @_ZN11xercesc_2_79RangeImpl17setStartContainerERKNS_8DOM_NodeE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %85 unwind label %98

85:                                               ; preds = %84
  %86 = invoke noundef zeroext i16 @_ZNK11xercesc_2_79RangeImpl7indexOfERKNS_8DOM_NodeES3_(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %87 unwind label %98

87:                                               ; preds = %85
  %88 = zext i16 %86 to i32
  %89 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 2
  store i32 %88, ptr %89, align 8, !tbaa !38
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  br label %102

90:                                               ; preds = %74
  %91 = landingpad { ptr, i32 }
          cleanup
  br label %94

92:                                               ; preds = %75
  %93 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #9
  br label %94

94:                                               ; preds = %92, %90
  %95 = phi { ptr, i32 } [ %93, %92 ], [ %91, %90 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  br label %132

96:                                               ; preds = %83, %78
  %97 = landingpad { ptr, i32 }
          cleanup
  br label %100

98:                                               ; preds = %85, %84
  %99 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #9
  br label %100

100:                                              ; preds = %98, %96
  %101 = phi { ptr, i32 } [ %99, %98 ], [ %97, %96 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  br label %132

102:                                              ; preds = %87, %77
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #9
  invoke void @_ZN11xercesc_2_78DOM_NodeC1EPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %1)
          to label %103 unwind label %118

103:                                              ; preds = %102
  %104 = invoke noundef zeroext i1 @_ZN11xercesc_2_79RangeImpl12isAncestorOfERKNS_8DOM_NodeES3_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %44)
          to label %105 unwind label %120

105:                                              ; preds = %103
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #9
  br i1 %104, label %106, label %130

106:                                              ; preds = %105
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #9
  %107 = load ptr, ptr %1, align 8, !tbaa !35
  %108 = getelementptr inbounds ptr, ptr %107, i64 27
  %109 = load ptr, ptr %108, align 8
  %110 = invoke noundef ptr %109(ptr noundef nonnull align 8 dereferenceable(26) %1)
          to label %111 unwind label %124

111:                                              ; preds = %106
  invoke void @_ZN11xercesc_2_78DOM_NodeC1EPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %110)
          to label %112 unwind label %124

112:                                              ; preds = %111
  invoke void @_ZN11xercesc_2_79RangeImpl15setEndContainerERKNS_8DOM_NodeE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %113 unwind label %126

113:                                              ; preds = %112
  %114 = invoke noundef zeroext i16 @_ZNK11xercesc_2_79RangeImpl7indexOfERKNS_8DOM_NodeES3_(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %115 unwind label %126

115:                                              ; preds = %113
  %116 = zext i16 %114 to i32
  %117 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 4
  store i32 %116, ptr %117, align 8, !tbaa !47
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #9
  br label %130

118:                                              ; preds = %102
  %119 = landingpad { ptr, i32 }
          cleanup
  br label %122

120:                                              ; preds = %103
  %121 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #9
  br label %122

122:                                              ; preds = %120, %118
  %123 = phi { ptr, i32 } [ %121, %120 ], [ %119, %118 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #9
  br label %132

124:                                              ; preds = %111, %106
  %125 = landingpad { ptr, i32 }
          cleanup
  br label %128

126:                                              ; preds = %113, %112
  %127 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #9
  br label %128

128:                                              ; preds = %126, %124
  %129 = phi { ptr, i32 } [ %127, %126 ], [ %125, %124 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #9
  br label %132

130:                                              ; preds = %105, %115, %71
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  br label %131

131:                                              ; preds = %13, %2, %130
  ret void

132:                                              ; preds = %128, %122, %100, %94, %56, %36, %34
  %133 = phi { ptr, i32 } [ %129, %128 ], [ %123, %122 ], [ %101, %100 ], [ %95, %94 ], [ %35, %34 ], [ %57, %56 ], [ %37, %36 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  br label %134

134:                                              ; preds = %132, %14
  %135 = phi { ptr, i32 } [ %133, %132 ], [ %15, %14 ]
  resume { ptr, i32 } %135
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79RangeImpl26updateRangeForInsertedNodeEPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %4 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %5 = icmp eq ptr %1, null
  br i1 %5, label %44, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %1, align 8, !tbaa !35
  %8 = getelementptr inbounds ptr, ptr %7, i64 27
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(26) %1)
  %11 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !118
  %13 = icmp eq ptr %10, %12
  br i1 %13, label %14, label %25

14:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  call void @_ZN11xercesc_2_78DOM_NodeC1EPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %1)
  %15 = invoke noundef zeroext i16 @_ZNK11xercesc_2_79RangeImpl7indexOfERKNS_8DOM_NodeES3_(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %16 unwind label %23

16:                                               ; preds = %14
  %17 = zext i16 %15 to i32
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  %18 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 2
  %19 = load i32, ptr %18, align 8, !tbaa !38
  %20 = icmp ugt i32 %19, %17
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = add i32 %19, 1
  store i32 %22, ptr %18, align 8, !tbaa !38
  br label %25

23:                                               ; preds = %14
  %24 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  br label %45

25:                                               ; preds = %16, %21, %6
  %26 = load ptr, ptr %1, align 8, !tbaa !35
  %27 = getelementptr inbounds ptr, ptr %26, i64 27
  %28 = load ptr, ptr %27, align 8
  %29 = call noundef ptr %28(ptr noundef nonnull align 8 dereferenceable(26) %1)
  %30 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !119
  %32 = icmp eq ptr %29, %31
  br i1 %32, label %33, label %44

33:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  call void @_ZN11xercesc_2_78DOM_NodeC1EPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %1)
  %34 = invoke noundef zeroext i16 @_ZNK11xercesc_2_79RangeImpl7indexOfERKNS_8DOM_NodeES3_(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %30)
          to label %35 unwind label %42

35:                                               ; preds = %33
  %36 = zext i16 %34 to i32
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  %37 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 4
  %38 = load i32, ptr %37, align 8, !tbaa !47
  %39 = icmp ugt i32 %38, %36
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = add i32 %38, 1
  store i32 %41, ptr %37, align 8, !tbaa !47
  br label %44

42:                                               ; preds = %33
  %43 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  br label %45

44:                                               ; preds = %35, %40, %2, %25
  ret void

45:                                               ; preds = %42, %23
  %46 = phi { ptr, i32 } [ %43, %42 ], [ %24, %23 ]
  resume { ptr, i32 } %46
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79RangeImpl15updateSplitInfoEPNS_8TextImplES2_j(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %5 = alloca %"class.xercesc_2_7::DOM_Text", align 8
  %6 = alloca %"class.xercesc_2_7::DOM_Text", align 8
  %7 = icmp eq ptr %2, null
  br i1 %7, label %38, label %8

8:                                                ; preds = %4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #9
  call void @_ZN11xercesc_2_78DOM_TextC1EPNS_8TextImplE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %1)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #9
  invoke void @_ZN11xercesc_2_78DOM_TextC1EPNS_8TextImplE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %2)
          to label %9 unwind label %20

9:                                                ; preds = %8
  %10 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 1
  %11 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeeqERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %12 unwind label %22

12:                                               ; preds = %9
  br i1 %11, label %13, label %24

13:                                               ; preds = %12
  %14 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !38
  %16 = icmp ugt i32 %15, %3
  br i1 %16, label %17, label %24

17:                                               ; preds = %13
  %18 = sub i32 %15, %3
  store i32 %18, ptr %14, align 8, !tbaa !38
  %19 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %24 unwind label %22

20:                                               ; preds = %8
  %21 = landingpad { ptr, i32 }
          cleanup
  br label %39

22:                                               ; preds = %32, %24, %17, %9
  %23 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_TextD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #9
  br label %39

24:                                               ; preds = %17, %13, %12
  %25 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 3
  %26 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeeqERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %27 unwind label %22

27:                                               ; preds = %24
  br i1 %26, label %28, label %37

28:                                               ; preds = %27
  %29 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 4
  %30 = load i32, ptr %29, align 8, !tbaa !47
  %31 = icmp ugt i32 %30, %3
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %34 unwind label %22

34:                                               ; preds = %32
  %35 = load i32, ptr %29, align 8, !tbaa !47
  %36 = sub i32 %35, %3
  store i32 %36, ptr %29, align 8, !tbaa !47
  br label %37

37:                                               ; preds = %34, %28, %27
  call void @_ZN11xercesc_2_78DOM_TextD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  call void @_ZN11xercesc_2_78DOM_TextD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  br label %38

38:                                               ; preds = %4, %37
  ret void

39:                                               ; preds = %22, %20
  %40 = phi { ptr, i32 } [ %23, %22 ], [ %21, %20 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  call void @_ZN11xercesc_2_78DOM_TextD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  resume { ptr, i32 } %40
}

declare void @_ZN11xercesc_2_78DOM_TextC1EPNS_8TextImplE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #1

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
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #9
  resume { ptr, i32 } %8
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #2

declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #1

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #9
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #9
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 !prof !34 {
  ret ptr @_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !120
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !35
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #9
  resume { ptr, i32 } %7
}

declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_8NodeImplEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_8NodeImplEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !89, !range !50, !noundef !51
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %26, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !91
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %26, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %21
  %12 = phi i64 [ 0, %9 ], [ %22, %21 ]
  %13 = load ptr, ptr %10, align 8, !tbaa !93
  %14 = getelementptr inbounds ptr, ptr %13, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !67
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %11
  %18 = load ptr, ptr %15, align 8, !tbaa !35
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(26) %15) #9
  br label %21

21:                                               ; preds = %11, %17
  %22 = add nuw nsw i64 %12, 1
  %23 = load i32, ptr %6, align 4, !tbaa !91
  %24 = zext i32 %23 to i64
  %25 = icmp ult i64 %22, %24
  br i1 %25, label %11, label %26, !llvm.loop !123

26:                                               ; preds = %21, %5, %1
  %27 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !94
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !93
  %31 = load ptr, ptr %28, align 8, !tbaa !35
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  invoke void %33(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %30)
          to label %34 unwind label %35

34:                                               ; preds = %26
  ret void

35:                                               ; preds = %26
  %36 = landingpad { ptr, i32 }
          catch ptr null
  %37 = extractvalue { ptr, i32 } %36, 0
  tail call void @__clang_call_terminate(ptr %37) #11
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_8NodeImplEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 comdat align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_711RefVectorOfINS_8NodeImplEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #9
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #9
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_8NodeImplEE12setElementAtEPS1_j(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !91
  %6 = icmp ugt i32 %5, %2
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #9
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !94
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str, i32 noundef 67, i32 noundef 116, ptr noundef %10)
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #10
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #9
  resume { ptr, i32 } %13

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 1
  %16 = load i8, ptr %15, align 8, !tbaa !89, !range !50, !noundef !51
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %29, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !93
  %21 = zext i32 %2 to i64
  %22 = getelementptr inbounds ptr, ptr %20, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !67
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %18
  %26 = load ptr, ptr %23, align 8, !tbaa !35
  %27 = getelementptr inbounds ptr, ptr %26, i64 1
  %28 = load ptr, ptr %27, align 8
  tail call void %28(ptr noundef nonnull align 8 dereferenceable(26) %23) #9
  br label %29

29:                                               ; preds = %18, %25, %14
  %30 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !93
  %32 = zext i32 %2 to i64
  %33 = getelementptr inbounds ptr, ptr %31, i64 %32
  store ptr %1, ptr %33, align 8, !tbaa !67
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_8NodeImplEE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 comdat align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !91
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  br label %11

9:                                                ; preds = %24, %1
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  store i32 0, ptr %10, align 4, !tbaa !91
  ret void

11:                                               ; preds = %5, %24
  %12 = phi i64 [ 0, %5 ], [ %27, %24 ]
  %13 = load i8, ptr %6, align 8, !tbaa !89, !range !50, !noundef !51
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %7, align 8, !tbaa !93
  %17 = getelementptr inbounds ptr, ptr %16, i64 %12
  %18 = load ptr, ptr %17, align 8, !tbaa !67
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %15
  %21 = load ptr, ptr %18, align 8, !tbaa !35
  %22 = getelementptr inbounds ptr, ptr %21, i64 1
  %23 = load ptr, ptr %22, align 8
  tail call void %23(ptr noundef nonnull align 8 dereferenceable(26) %18) #9
  br label %24

24:                                               ; preds = %15, %20, %11
  %25 = load ptr, ptr %8, align 8, !tbaa !93
  %26 = getelementptr inbounds ptr, ptr %25, i64 %12
  store ptr null, ptr %26, align 8, !tbaa !67
  %27 = add nuw nsw i64 %12, 1
  %28 = load i32, ptr %2, align 4, !tbaa !91
  %29 = zext i32 %28 to i64
  %30 = icmp ult i64 %27, %29
  br i1 %30, label %11, label %9, !llvm.loop !124
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_8NodeImplEE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !91
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #9
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !94
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 144, i32 noundef 116, ptr noundef %9)
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
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 1
  %15 = load i8, ptr %14, align 8, !tbaa !89, !range !50, !noundef !51
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !93
  %20 = zext i32 %1 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !67
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %17
  %25 = load ptr, ptr %22, align 8, !tbaa !35
  %26 = getelementptr inbounds ptr, ptr %25, i64 1
  %27 = load ptr, ptr %26, align 8
  tail call void %27(ptr noundef nonnull align 8 dereferenceable(26) %22) #9
  br label %28

28:                                               ; preds = %17, %24, %13
  %29 = load i32, ptr %3, align 4, !tbaa !91
  %30 = add i32 %29, -1
  %31 = icmp eq i32 %30, %1
  br i1 %31, label %46, label %32

32:                                               ; preds = %28
  %33 = icmp ugt i32 %30, %1
  br i1 %33, label %34, label %46

34:                                               ; preds = %32
  %35 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %36 = zext i32 %1 to i64
  %37 = zext i32 %30 to i64
  br label %38

38:                                               ; preds = %34, %38
  %39 = phi i64 [ %36, %34 ], [ %41, %38 ]
  %40 = load ptr, ptr %35, align 8, !tbaa !93
  %41 = add nuw nsw i64 %39, 1
  %42 = getelementptr inbounds ptr, ptr %40, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !67
  %44 = getelementptr inbounds ptr, ptr %40, i64 %39
  store ptr %43, ptr %44, align 8, !tbaa !67
  %45 = icmp eq i64 %41, %37
  br i1 %45, label %46, label %38, !llvm.loop !125

46:                                               ; preds = %38, %32, %28
  %47 = phi i32 [ %1, %28 ], [ %30, %32 ], [ %30, %38 ]
  %48 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !93
  %50 = zext i32 %47 to i64
  %51 = getelementptr inbounds ptr, ptr %49, i64 %50
  store ptr null, ptr %51, align 8, !tbaa !67
  store i32 %30, ptr %3, align 4, !tbaa !91
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_8NodeImplEE17removeLastElementEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 comdat align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !91
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 4, !tbaa !91
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !89, !range !50, !noundef !51
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !93
  %13 = zext i32 %6 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !67
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %10
  %18 = load ptr, ptr %15, align 8, !tbaa !35
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(26) %15) #9
  br label %21

21:                                               ; preds = %10, %17, %1, %5
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_8NodeImplEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !89, !range !50, !noundef !51
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %26, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !91
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %26, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %21
  %12 = phi i64 [ 0, %9 ], [ %22, %21 ]
  %13 = load ptr, ptr %10, align 8, !tbaa !93
  %14 = getelementptr inbounds ptr, ptr %13, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !67
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %11
  %18 = load ptr, ptr %15, align 8, !tbaa !35
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(26) %15) #9
  br label %21

21:                                               ; preds = %11, %17
  %22 = add nuw nsw i64 %12, 1
  %23 = load i32, ptr %6, align 4, !tbaa !91
  %24 = zext i32 %23 to i64
  %25 = icmp ult i64 %22, %24
  br i1 %25, label %11, label %26, !llvm.loop !126

26:                                               ; preds = %21, %5, %1
  %27 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !94
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !93
  %31 = load ptr, ptr %28, align 8, !tbaa !35
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %30)
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_8NodeImplEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 comdat align 2 !prof !34 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_8NodeImplEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 comdat align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #9
  ret void
}

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat !prof !34 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #9
  tail call void @_ZSt9terminatev() #11
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_8NodeImplEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !91
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !92
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %55

9:                                                ; preds = %2
  %10 = lshr i32 %7, 1
  %11 = add i32 %10, %7
  %12 = tail call i32 @llvm.umax.i32(i32 %5, i32 %11)
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !94
  %15 = zext i32 %12 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = load ptr, ptr %14, align 8, !tbaa !35
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef %16)
  %21 = load i32, ptr %3, align 4, !tbaa !91
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %9
  %24 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %25 = zext i32 %21 to i64
  br label %40

26:                                               ; preds = %40
  %27 = trunc i64 %46 to i32
  br label %28

28:                                               ; preds = %26, %9
  %29 = phi i32 [ 0, %9 ], [ %27, %26 ]
  %30 = icmp ult i32 %29, %12
  br i1 %30, label %31, label %48

31:                                               ; preds = %28
  %32 = zext i32 %29 to i64
  %33 = shl nuw nsw i64 %32, 3
  %34 = getelementptr i8, ptr %20, i64 %33
  %35 = xor i32 %29, -1
  %36 = add i32 %12, %35
  %37 = zext i32 %36 to i64
  %38 = shl nuw nsw i64 %37, 3
  %39 = add nuw nsw i64 %38, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %34, i8 0, i64 %39, i1 false), !tbaa !67
  br label %48

40:                                               ; preds = %23, %40
  %41 = phi i64 [ 0, %23 ], [ %46, %40 ]
  %42 = load ptr, ptr %24, align 8, !tbaa !93
  %43 = getelementptr inbounds ptr, ptr %42, i64 %41
  %44 = load ptr, ptr %43, align 8, !tbaa !67
  %45 = getelementptr inbounds ptr, ptr %20, i64 %41
  store ptr %44, ptr %45, align 8, !tbaa !67
  %46 = add nuw nsw i64 %41, 1
  %47 = icmp eq i64 %46, %25
  br i1 %47, label %26, label %40, !llvm.loop !127

48:                                               ; preds = %31, %28
  %49 = load ptr, ptr %13, align 8, !tbaa !94
  %50 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %51 = load ptr, ptr %50, align 8, !tbaa !93
  %52 = load ptr, ptr %49, align 8, !tbaa !35
  %53 = getelementptr inbounds ptr, ptr %52, i64 3
  %54 = load ptr, ptr %53, align 8
  tail call void %54(ptr noundef nonnull align 8 dereferenceable(8) %49, ptr noundef %51)
  store ptr %20, ptr %50, align 8, !tbaa !93
  store i32 %12, ptr %6, align 8, !tbaa !92
  br label %55

55:                                               ; preds = %2, %48
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #7

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nounwind }
attributes #10 = { noreturn }
attributes #11 = { noreturn nounwind }

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
!38 = !{!39, !41, i64 24}
!39 = !{!"_ZTSN11xercesc_2_79RangeImplE", !40, i64 0, !43, i64 16, !41, i64 24, !43, i64 32, !41, i64 40, !45, i64 44, !46, i64 48, !45, i64 56, !43, i64 64}
!40 = !{!"_ZTSN11xercesc_2_714RefCountedImplE", !41, i64 8}
!41 = !{!"int", !42, i64 0}
!42 = !{!"omnipotent char", !37, i64 0}
!43 = !{!"_ZTSN11xercesc_2_78DOM_NodeE", !44, i64 0}
!44 = !{!"any pointer", !42, i64 0}
!45 = !{!"bool", !42, i64 0}
!46 = !{!"_ZTSN11xercesc_2_712DOM_DocumentE", !43, i64 0}
!47 = !{!39, !41, i64 40}
!48 = !{!39, !45, i64 44}
!49 = !{!39, !45, i64 56}
!50 = !{i8 0, i8 2}
!51 = !{}
!52 = !{!43, !44, i64 0}
!53 = !{!54, !44, i64 144}
!54 = !{!"_ZTSN11xercesc_2_712DocumentImplE", !55, i64 0, !44, i64 88, !44, i64 96, !44, i64 104, !44, i64 112, !44, i64 120, !44, i64 128, !44, i64 136, !44, i64 144, !41, i64 152, !45, i64 156, !44, i64 160}
!55 = !{!"_ZTSN11xercesc_2_710ParentNodeE", !56, i64 0, !44, i64 48, !44, i64 56, !41, i64 64, !44, i64 72, !41, i64 80}
!56 = !{!"_ZTSN11xercesc_2_79ChildNodeE", !57, i64 0, !44, i64 32, !44, i64 40}
!57 = !{!"_ZTSN11xercesc_2_78NodeImplE", !58, i64 0, !44, i64 16, !59, i64 24}
!58 = !{!"_ZTSN11xercesc_2_712NodeListImplE", !40, i64 0}
!59 = !{!"short", !42, i64 0}
!60 = !{!61, !41, i64 12}
!61 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_9RangeImplEEE", !45, i64 8, !41, i64 12, !41, i64 16, !44, i64 24, !44, i64 32}
!62 = distinct !{!62, !63, !64}
!63 = !{!"llvm.loop.mustprogress"}
!64 = !{!"llvm.loop.unroll.disable"}
!65 = !{!61, !44, i64 32}
!66 = !{!61, !44, i64 24}
!67 = !{!44, !44, i64 0}
!68 = distinct !{!68, !63, !64}
!69 = !{!41, !41, i64 0}
!70 = distinct !{!70, !63, !64}
!71 = distinct !{!71, !63, !64}
!72 = distinct !{!72, !63, !64}
!73 = distinct !{!73, !63, !64}
!74 = distinct !{!74, !63, !64}
!75 = distinct !{!75, !63, !64}
!76 = distinct !{!76, !63, !64}
!77 = distinct !{!77, !63, !64}
!78 = distinct !{!78, !63, !64}
!79 = distinct !{!79, !63, !64}
!80 = !{!81}
!81 = distinct !{!81, !82, !"_ZN11xercesc_2_79RangeImpl15extractContentsEv: argument 0"}
!82 = distinct !{!82, !"_ZN11xercesc_2_79RangeImpl15extractContentsEv"}
!83 = !{!57, !59, i64 24}
!84 = distinct !{!84, !63, !64}
!85 = distinct !{!85, !63, !64}
!86 = distinct !{!86, !63, !64}
!87 = distinct !{!87, !63, !64}
!88 = !{!54, !44, i64 160}
!89 = !{!90, !45, i64 8}
!90 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_8NodeImplEEE", !45, i64 8, !41, i64 12, !41, i64 16, !44, i64 24, !44, i64 32}
!91 = !{!90, !41, i64 12}
!92 = !{!90, !41, i64 16}
!93 = !{!90, !44, i64 24}
!94 = !{!90, !44, i64 32}
!95 = distinct !{!95, !63, !64}
!96 = distinct !{!96, !63, !64}
!97 = distinct !{!97, !63, !64}
!98 = distinct !{!98, !63, !64}
!99 = distinct !{!99, !63, !64}
!100 = distinct !{!100, !63, !64}
!101 = !{!59, !59, i64 0}
!102 = distinct !{!102, !63, !64}
!103 = distinct !{!103, !63, !64}
!104 = distinct !{!104, !63, !64}
!105 = distinct !{!105, !63, !64}
!106 = distinct !{!106, !63, !64}
!107 = distinct !{!107, !63, !64}
!108 = distinct !{!108, !63, !64}
!109 = distinct !{!109, !63, !64}
!110 = distinct !{!110, !63, !64}
!111 = distinct !{!111, !63, !64}
!112 = distinct !{!112, !63, !64}
!113 = distinct !{!113, !63, !64}
!114 = distinct !{!114, !63, !64}
!115 = distinct !{!115, !63, !64}
!116 = distinct !{!116, !63, !64}
!117 = distinct !{!117, !63, !64}
!118 = !{!39, !44, i64 16}
!119 = !{!39, !44, i64 32}
!120 = !{!121, !44, i64 40}
!121 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !122, i64 8, !44, i64 16, !41, i64 24, !44, i64 32, !44, i64 40}
!122 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !42, i64 0}
!123 = distinct !{!123, !63, !64}
!124 = distinct !{!124, !63, !64}
!125 = distinct !{!125, !63, !64}
!126 = distinct !{!126, !63, !64}
!127 = distinct !{!127, !63, !64}
