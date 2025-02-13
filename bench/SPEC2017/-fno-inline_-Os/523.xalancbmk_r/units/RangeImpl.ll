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

$_ZNK11xercesc_2_715BaseRefVectorOfINS_9RangeImplEE4sizeEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_9RangeImplEE9elementAtEj = comdat any

$_ZNK11xercesc_2_78NodeImpl10isReadOnlyEv = comdat any

$_ZNK11xercesc_2_712DocumentImpl16getMemoryManagerEv = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_8NodeImplEEC2EjbPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_8NodeImplEE10addElementEPS1_ = comdat any

$_ZNK11xercesc_2_715BaseRefVectorOfINS_8NodeImplEE4sizeEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_8NodeImplEE9elementAtEj = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_8NodeImplEEC2EjbPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_8NodeImplEED2Ev = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_8NodeImplEED0Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_8NodeImplEE12setElementAtEPS1_j = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_8NodeImplEE17removeAllElementsEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_8NodeImplEE15removeElementAtEj = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_8NodeImplEE17removeLastElementEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_8NodeImplEE7cleanupEv = comdat any

$_ZN11xercesc_2_77XMemoryC2Ev = comdat any

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

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79RangeImplC2ENS_12DOM_DocumentE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  tail call void @_ZN11xercesc_2_714RefCountedImplC2Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) #9
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_79RangeImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %3 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 1
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %1) #9
          to label %4 unwind label %15

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 2
  store i32 0, ptr %5, align 8, !tbaa !38
  %6 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 3
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %1) #9
          to label %7 unwind label %17

7:                                                ; preds = %4
  %8 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 4
  store i32 0, ptr %8, align 8, !tbaa !47
  %9 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 5
  store i8 1, ptr %9, align 4, !tbaa !48
  %10 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 6
  invoke void @_ZN11xercesc_2_712DOM_DocumentC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %1) #9
          to label %11 unwind label %19

11:                                               ; preds = %7
  %12 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 7
  store i8 0, ptr %12, align 8, !tbaa !49
  %13 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 8
  invoke void @_ZN11xercesc_2_78DOM_NodeC1EPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef null) #9
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
  tail call void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #10
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi { ptr, i32 } [ %22, %21 ], [ %20, %19 ]
  tail call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #10
  br label %25

25:                                               ; preds = %23, %17
  %26 = phi { ptr, i32 } [ %24, %23 ], [ %18, %17 ]
  tail call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #10
  br label %27

27:                                               ; preds = %25, %15
  %28 = phi { ptr, i32 } [ %26, %25 ], [ %16, %15 ]
  tail call void @_ZN11xercesc_2_714RefCountedImplD2Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) #10
  resume { ptr, i32 } %28
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_714RefCountedImplC2Ev(ptr noundef nonnull align 8 dereferenceable(12)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712DOM_DocumentC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78DOM_NodeC1EPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_714RefCountedImplD2Ev(ptr noundef nonnull align 8 dereferenceable(12)) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79RangeImplC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  tail call void @_ZN11xercesc_2_714RefCountedImplC2Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) #9
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_79RangeImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %3 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 1
  invoke void @_ZN11xercesc_2_78DOM_NodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #9
          to label %4 unwind label %35

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 3
  invoke void @_ZN11xercesc_2_78DOM_NodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #9
          to label %6 unwind label %37

6:                                                ; preds = %4
  %7 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 6
  invoke void @_ZN11xercesc_2_712DOM_DocumentC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #9
          to label %8 unwind label %39

8:                                                ; preds = %6
  %9 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 8
  invoke void @_ZN11xercesc_2_78DOM_NodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #9
          to label %10 unwind label %41

10:                                               ; preds = %8
  %11 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %1, i64 0, i32 6
  %12 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_712DOM_DocumentaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %11) #9
          to label %13 unwind label %43

13:                                               ; preds = %10
  %14 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %1, i64 0, i32 1
  %15 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %14) #9
          to label %16 unwind label %43

16:                                               ; preds = %13
  %17 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %1, i64 0, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !38
  %19 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 2
  store i32 %18, ptr %19, align 8, !tbaa !38
  %20 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %1, i64 0, i32 3
  %21 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %20) #9
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
  %33 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %32) #9
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
  tail call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #10
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi { ptr, i32 } [ %44, %43 ], [ %42, %41 ]
  tail call void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #10
  br label %47

47:                                               ; preds = %45, %39
  %48 = phi { ptr, i32 } [ %46, %45 ], [ %40, %39 ]
  tail call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #10
  br label %49

49:                                               ; preds = %47, %37
  %50 = phi { ptr, i32 } [ %48, %47 ], [ %38, %37 ]
  tail call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #10
  br label %51

51:                                               ; preds = %49, %35
  %52 = phi { ptr, i32 } [ %50, %49 ], [ %36, %35 ]
  tail call void @_ZN11xercesc_2_714RefCountedImplD2Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) #10
  resume { ptr, i32 } %52
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78DOM_NodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712DOM_DocumentC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_712DOM_DocumentaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_79RangeImplD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #3 align 2 !prof !34 {
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_79RangeImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %2 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 8
  tail call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #10
  %3 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 6
  tail call void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #10
  %4 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 3
  tail call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #10
  %5 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #10
  tail call void @_ZN11xercesc_2_714RefCountedImplD2Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_79RangeImplD0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #3 align 2 {
  tail call void @_ZN11xercesc_2_79RangeImplD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #10
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79RangeImpl12unreferencedEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !52
  %4 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !53
  %6 = icmp eq ptr %5, null
  br i1 %6, label %27, label %7

7:                                                ; preds = %1
  %8 = tail call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_9RangeImplEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %5) #9
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %27

10:                                               ; preds = %7, %24
  %11 = phi i32 [ %25, %24 ], [ 0, %7 ]
  %12 = load ptr, ptr %2, align 8, !tbaa !52
  %13 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %12, i64 0, i32 8
  %14 = load ptr, ptr %13, align 8, !tbaa !53
  %15 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_9RangeImplEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %14, i32 noundef %11) #9
  %16 = icmp eq ptr %15, %0
  br i1 %16, label %17, label %24

17:                                               ; preds = %10
  %18 = load ptr, ptr %2, align 8, !tbaa !52
  %19 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %18, i64 0, i32 8
  %20 = load ptr, ptr %19, align 8, !tbaa !53
  %21 = load ptr, ptr %20, align 8, !tbaa !35
  %22 = getelementptr inbounds ptr, ptr %21, i64 4
  %23 = load ptr, ptr %22, align 8
  tail call void %23(ptr noundef nonnull align 8 dereferenceable(40) %20, i32 noundef %11) #9
  br label %27

24:                                               ; preds = %10
  %25 = add nuw nsw i32 %11, 1
  %26 = icmp eq i32 %25, %8
  br i1 %26, label %27, label %10, !llvm.loop !60

27:                                               ; preds = %24, %7, %1, %17
  %28 = load ptr, ptr %0, align 8, !tbaa !35
  %29 = getelementptr inbounds ptr, ptr %28, i64 1
  %30 = load ptr, ptr %29, align 8
  tail call void %30(ptr noundef nonnull align 8 dereferenceable(72) %0) #10
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_9RangeImplEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #3 comdat align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !62
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_9RangeImplEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !62
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !64
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 249, i32 noundef 116, ptr noundef %9) #9
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #12
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #11
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !65
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !66
  ret ptr %18
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xercesc_2_79RangeImpl17getStartContainerEv(ptr dead_on_unwind noalias nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1) local_unnamed_addr #0 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %1, i64 0, i32 1
  tail call void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #9
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_79RangeImpl14getStartOffsetEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(72) %0) local_unnamed_addr #5 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !38
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xercesc_2_79RangeImpl15getEndContainerEv(ptr dead_on_unwind noalias nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1) local_unnamed_addr #0 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %1, i64 0, i32 3
  tail call void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #9
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_79RangeImpl12getEndOffsetEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(72) %0) local_unnamed_addr #5 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 8, !tbaa !47
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_79RangeImpl12getCollapsedEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %2 = alloca %"class.xercesc_2_7::DOMString", align 8
  %3 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 7
  %4 = load i8, ptr %3, align 8, !tbaa !49, !range !50, !noundef !51
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %18, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @__cxa_allocate_exception(i64 24) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #11
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 0) #9
          to label %8 unwind label %12

8:                                                ; preds = %6
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %7, i16 noundef signext 11, ptr noundef nonnull align 8 dereferenceable(8) %2) #9
          to label %11 unwind label %9

9:                                                ; preds = %8
  %10 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #11
  br label %16

11:                                               ; preds = %8
  invoke void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #12
          to label %30 unwind label %14

12:                                               ; preds = %6
  %13 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #11
  br label %16

14:                                               ; preds = %11
  %15 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #11
  br label %28

16:                                               ; preds = %9, %12
  %17 = phi { ptr, i32 } [ %13, %12 ], [ %10, %9 ]
  call void @__cxa_free_exception(ptr %7) #11
  br label %28

18:                                               ; preds = %1
  %19 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 1
  %20 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 3
  %21 = tail call noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeeqERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull align 8 dereferenceable(8) %20) #9
  %22 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 2
  %23 = load i32, ptr %22, align 8
  %24 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 4
  %25 = load i32, ptr %24, align 8
  %26 = icmp eq i32 %23, %25
  %27 = select i1 %21, i1 %26, i1 false
  ret i1 %27

28:                                               ; preds = %14, %16
  %29 = phi { ptr, i32 } [ %15, %14 ], [ %17, %16 ]
  resume { ptr, i32 } %29

30:                                               ; preds = %11
  unreachable
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24), i16 noundef signext, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeeqERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79RangeImpl17setStartContainerERKNS_8DOM_NodeE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = alloca %"class.xercesc_2_7::DOMString", align 8
  %4 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 7
  %5 = load i8, ptr %4, align 8, !tbaa !49, !range !50, !noundef !51
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %19, label %7

7:                                                ; preds = %2
  %8 = tail call ptr @__cxa_allocate_exception(i64 24) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 0) #9
          to label %9 unwind label %13

9:                                                ; preds = %7
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %8, i16 noundef signext 11, ptr noundef nonnull align 8 dereferenceable(8) %3) #9
          to label %12 unwind label %10

10:                                               ; preds = %9
  %11 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  br label %17

12:                                               ; preds = %9
  invoke void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #12
          to label %24 unwind label %15

13:                                               ; preds = %7
  %14 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  br label %17

15:                                               ; preds = %12
  %16 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  br label %22

17:                                               ; preds = %10, %13
  %18 = phi { ptr, i32 } [ %14, %13 ], [ %11, %10 ]
  call void @__cxa_free_exception(ptr %8) #11
  br label %22

19:                                               ; preds = %2
  %20 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 1
  %21 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull align 8 dereferenceable(8) %1) #9
  ret void

22:                                               ; preds = %15, %17
  %23 = phi { ptr, i32 } [ %16, %15 ], [ %18, %17 ]
  resume { ptr, i32 } %23

24:                                               ; preds = %12
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79RangeImpl14setStartOffsetEj(ptr nocapture noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = alloca %"class.xercesc_2_7::DOMString", align 8
  %4 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 7
  %5 = load i8, ptr %4, align 8, !tbaa !49, !range !50, !noundef !51
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %19, label %7

7:                                                ; preds = %2
  %8 = tail call ptr @__cxa_allocate_exception(i64 24) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 0) #9
          to label %9 unwind label %13

9:                                                ; preds = %7
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %8, i16 noundef signext 11, ptr noundef nonnull align 8 dereferenceable(8) %3) #9
          to label %12 unwind label %10

10:                                               ; preds = %9
  %11 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  br label %17

12:                                               ; preds = %9
  invoke void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #12
          to label %23 unwind label %15

13:                                               ; preds = %7
  %14 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  br label %17

15:                                               ; preds = %12
  %16 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  br label %21

17:                                               ; preds = %10, %13
  %18 = phi { ptr, i32 } [ %14, %13 ], [ %11, %10 ]
  call void @__cxa_free_exception(ptr %8) #11
  br label %21

19:                                               ; preds = %2
  %20 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 2
  store i32 %1, ptr %20, align 8, !tbaa !38
  ret void

21:                                               ; preds = %15, %17
  %22 = phi { ptr, i32 } [ %16, %15 ], [ %18, %17 ]
  resume { ptr, i32 } %22

23:                                               ; preds = %12
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79RangeImpl15setEndContainerERKNS_8DOM_NodeE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = alloca %"class.xercesc_2_7::DOMString", align 8
  %4 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 7
  %5 = load i8, ptr %4, align 8, !tbaa !49, !range !50, !noundef !51
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %19, label %7

7:                                                ; preds = %2
  %8 = tail call ptr @__cxa_allocate_exception(i64 24) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 0) #9
          to label %9 unwind label %13

9:                                                ; preds = %7
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %8, i16 noundef signext 11, ptr noundef nonnull align 8 dereferenceable(8) %3) #9
          to label %12 unwind label %10

10:                                               ; preds = %9
  %11 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  br label %17

12:                                               ; preds = %9
  invoke void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #12
          to label %24 unwind label %15

13:                                               ; preds = %7
  %14 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  br label %17

15:                                               ; preds = %12
  %16 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  br label %22

17:                                               ; preds = %10, %13
  %18 = phi { ptr, i32 } [ %14, %13 ], [ %11, %10 ]
  call void @__cxa_free_exception(ptr %8) #11
  br label %22

19:                                               ; preds = %2
  %20 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 3
  %21 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull align 8 dereferenceable(8) %1) #9
  ret void

22:                                               ; preds = %15, %17
  %23 = phi { ptr, i32 } [ %16, %15 ], [ %18, %17 ]
  resume { ptr, i32 } %23

24:                                               ; preds = %12
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79RangeImpl12setEndOffsetEj(ptr nocapture noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = alloca %"class.xercesc_2_7::DOMString", align 8
  %4 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 7
  %5 = load i8, ptr %4, align 8, !tbaa !49, !range !50, !noundef !51
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %19, label %7

7:                                                ; preds = %2
  %8 = tail call ptr @__cxa_allocate_exception(i64 24) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 0) #9
          to label %9 unwind label %13

9:                                                ; preds = %7
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %8, i16 noundef signext 11, ptr noundef nonnull align 8 dereferenceable(8) %3) #9
          to label %12 unwind label %10

10:                                               ; preds = %9
  %11 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  br label %17

12:                                               ; preds = %9
  invoke void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #12
          to label %23 unwind label %15

13:                                               ; preds = %7
  %14 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  br label %17

15:                                               ; preds = %12
  %16 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  br label %21

17:                                               ; preds = %10, %13
  %18 = phi { ptr, i32 } [ %14, %13 ], [ %11, %10 ]
  call void @__cxa_free_exception(ptr %8) #11
  br label %21

19:                                               ; preds = %2
  %20 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 4
  store i32 %1, ptr %20, align 8, !tbaa !47
  ret void

21:                                               ; preds = %15, %17
  %22 = phi { ptr, i32 } [ %16, %15 ], [ %18, %17 ]
  resume { ptr, i32 } %22

23:                                               ; preds = %12
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79RangeImpl8setStartERKNS_8DOM_NodeEj(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %4 = alloca %"class.xercesc_2_7::DOM_Document", align 8
  %5 = alloca %"class.xercesc_2_7::DOM_Document", align 8
  %6 = alloca %"class.xercesc_2_7::DOM_Document", align 8
  tail call void @_ZNK11xercesc_2_79RangeImpl12validateNodeERKNS_8DOM_NodeE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #9
  tail call void @_ZNK11xercesc_2_79RangeImpl10checkIndexERKNS_8DOM_NodeEj(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) #9
  %7 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 1
  %8 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %1) #9
  %9 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 2
  store i32 %2, ptr %9, align 8, !tbaa !38
  %10 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  call void @_ZNK11xercesc_2_78DOM_Node16getOwnerDocumentEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Document") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %1) #9
  %11 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %4) #9
          to label %12 unwind label %21

12:                                               ; preds = %3
  br i1 %11, label %14, label %13

13:                                               ; preds = %12
  call void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  br label %29

14:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  invoke void @_ZNK11xercesc_2_78DOM_Node16getOwnerDocumentEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Document") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %1) #9
          to label %15 unwind label %23

15:                                               ; preds = %14
  %16 = load ptr, ptr %5, align 8, !tbaa !52
  %17 = icmp eq ptr %16, null
  call void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  call void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  br i1 %17, label %29, label %18

18:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #11
  call void @_ZNK11xercesc_2_78DOM_Node16getOwnerDocumentEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Document") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %1) #9
  %19 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_712DOM_DocumentaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %6) #9
          to label %20 unwind label %27

20:                                               ; preds = %18
  call void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  call void @_ZN11xercesc_2_79RangeImpl8collapseEb(ptr noundef nonnull align 8 dereferenceable(72) %0, i1 noundef zeroext true) #9
  br label %29

21:                                               ; preds = %3
  %22 = landingpad { ptr, i32 }
          cleanup
  br label %25

23:                                               ; preds = %14
  %24 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi { ptr, i32 } [ %24, %23 ], [ %22, %21 ]
  call void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  br label %36

27:                                               ; preds = %18
  %28 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  br label %36

29:                                               ; preds = %13, %20, %15
  %30 = call noundef signext i16 @_ZNK11xercesc_2_79RangeImpl21compareBoundaryPointsENS_9DOM_Range10CompareHowEPS0_(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef 3, ptr noundef nonnull %0) #9
  %31 = icmp eq i16 %30, 1
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  call void @_ZN11xercesc_2_79RangeImpl8collapseEb(ptr noundef nonnull align 8 dereferenceable(72) %0, i1 noundef zeroext true) #9
  br label %35

33:                                               ; preds = %29
  %34 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 5
  store i8 0, ptr %34, align 4, !tbaa !48
  br label %35

35:                                               ; preds = %33, %32
  ret void

36:                                               ; preds = %27, %25
  %37 = phi { ptr, i32 } [ %28, %27 ], [ %26, %25 ]
  resume { ptr, i32 } %37
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xercesc_2_79RangeImpl12validateNodeERKNS_8DOM_NodeE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = alloca %"class.xercesc_2_7::DOMString", align 8
  %4 = alloca %"class.xercesc_2_7::DOMString", align 8
  %5 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 7
  %6 = load i8, ptr %5, align 8, !tbaa !49, !range !50, !noundef !51
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %20, label %8

8:                                                ; preds = %2
  %9 = tail call ptr @__cxa_allocate_exception(i64 24) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 0) #9
          to label %10 unwind label %14

10:                                               ; preds = %8
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %9, i16 noundef signext 11, ptr noundef nonnull align 8 dereferenceable(8) %3) #9
          to label %13 unwind label %11

11:                                               ; preds = %10
  %12 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  br label %18

13:                                               ; preds = %10
  invoke void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #12
          to label %37 unwind label %16

14:                                               ; preds = %8
  %15 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  br label %18

16:                                               ; preds = %13
  %17 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  br label %35

18:                                               ; preds = %11, %14
  %19 = phi { ptr, i32 } [ %15, %14 ], [ %12, %11 ]
  call void @__cxa_free_exception(ptr %9) #11
  br label %35

20:                                               ; preds = %2
  %21 = tail call noundef zeroext i1 @_ZNK11xercesc_2_79RangeImpl19isValidAncestorTypeERKNS_8DOM_NodeE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %1) #9
  br i1 %21, label %34, label %22

22:                                               ; preds = %20
  %23 = tail call ptr @__cxa_allocate_exception(i64 32) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 0) #9
          to label %24 unwind label %28

24:                                               ; preds = %22
  invoke void @_ZN11xercesc_2_718DOM_RangeExceptionC1ENS0_18RangeExceptionCodeERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(28) %23, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(8) %4) #9
          to label %27 unwind label %25

25:                                               ; preds = %24
  %26 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  br label %32

27:                                               ; preds = %24
  invoke void @__cxa_throw(ptr nonnull %23, ptr nonnull @_ZTIN11xercesc_2_718DOM_RangeExceptionE, ptr nonnull @_ZN11xercesc_2_718DOM_RangeExceptionD1Ev) #12
          to label %37 unwind label %30

28:                                               ; preds = %22
  %29 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  br label %32

30:                                               ; preds = %27
  %31 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  br label %35

32:                                               ; preds = %25, %28
  %33 = phi { ptr, i32 } [ %29, %28 ], [ %26, %25 ]
  call void @__cxa_free_exception(ptr %23) #11
  br label %35

34:                                               ; preds = %20
  ret void

35:                                               ; preds = %30, %16, %32, %18
  %36 = phi { ptr, i32 } [ %19, %18 ], [ %17, %16 ], [ %33, %32 ], [ %31, %30 ]
  resume { ptr, i32 } %36

37:                                               ; preds = %27, %13
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xercesc_2_79RangeImpl10checkIndexERKNS_8DOM_NodeEj(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %4 = alloca %"class.xercesc_2_7::DOMString", align 8
  %5 = alloca %"class.xercesc_2_7::DOMString", align 8
  %6 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %7 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %8 = alloca %"class.xercesc_2_7::DOMString", align 8
  %9 = tail call noundef signext i16 @_ZNK11xercesc_2_78DOM_Node11getNodeTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #9
  switch i16 %9, label %28 [
    i16 8, label %10
    i16 7, label %10
    i16 4, label %10
    i16 3, label %10
  ]

10:                                               ; preds = %3, %3, %3, %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  call void @_ZNK11xercesc_2_78DOM_Node12getNodeValueEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %1) #9
  %11 = invoke noundef i32 @_ZNK11xercesc_2_79DOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #9
          to label %12 unwind label %20

12:                                               ; preds = %10
  %13 = icmp ult i32 %11, %2
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  br i1 %13, label %14, label %61

14:                                               ; preds = %12
  %15 = call ptr @__cxa_allocate_exception(i64 24) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef 0) #9
          to label %16 unwind label %22

16:                                               ; preds = %14
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %15, i16 noundef signext 1, ptr noundef nonnull align 8 dereferenceable(8) %5) #9
          to label %19 unwind label %17

17:                                               ; preds = %16
  %18 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  br label %26

19:                                               ; preds = %16
  invoke void @__cxa_throw(ptr nonnull %15, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #12
          to label %66 unwind label %24

20:                                               ; preds = %10
  %21 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  br label %64

22:                                               ; preds = %14
  %23 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  br label %26

24:                                               ; preds = %19
  %25 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  br label %64

26:                                               ; preds = %17, %22
  %27 = phi { ptr, i32 } [ %23, %22 ], [ %18, %17 ]
  call void @__cxa_free_exception(ptr %15) #11
  br label %64

28:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #11
  call void @_ZNK11xercesc_2_78DOM_Node13getFirstChildEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %1) #9
  br label %29

29:                                               ; preds = %36, %28
  %30 = phi i32 [ 0, %28 ], [ %37, %36 ]
  %31 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef null) #9
          to label %32 unwind label %38

32:                                               ; preds = %29
  br i1 %31, label %33, label %46

33:                                               ; preds = %32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #11
  invoke void @_ZNK11xercesc_2_78DOM_Node14getNextSiblingEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %6) #9
          to label %34 unwind label %40

34:                                               ; preds = %33
  %35 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7) #9
          to label %36 unwind label %42

36:                                               ; preds = %34
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #11
  %37 = add i32 %30, 1
  br label %29, !llvm.loop !67

38:                                               ; preds = %29
  %39 = landingpad { ptr, i32 }
          cleanup
  br label %62

40:                                               ; preds = %33
  %41 = landingpad { ptr, i32 }
          cleanup
  br label %44

42:                                               ; preds = %34
  %43 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #10
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi { ptr, i32 } [ %43, %42 ], [ %41, %40 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #11
  br label %62

46:                                               ; preds = %32
  %47 = icmp ult i32 %30, %2
  br i1 %47, label %48, label %60

48:                                               ; preds = %46
  %49 = call ptr @__cxa_allocate_exception(i64 24) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #11
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef 0) #9
          to label %50 unwind label %54

50:                                               ; preds = %48
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %49, i16 noundef signext 1, ptr noundef nonnull align 8 dereferenceable(8) %8) #9
          to label %53 unwind label %51

51:                                               ; preds = %50
  %52 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #11
  br label %58

53:                                               ; preds = %50
  invoke void @__cxa_throw(ptr nonnull %49, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #12
          to label %66 unwind label %56

54:                                               ; preds = %48
  %55 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #11
  br label %58

56:                                               ; preds = %53
  %57 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #11
  br label %62

58:                                               ; preds = %51, %54
  %59 = phi { ptr, i32 } [ %55, %54 ], [ %52, %51 ]
  call void @__cxa_free_exception(ptr %49) #11
  br label %62

60:                                               ; preds = %46
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  br label %61

61:                                               ; preds = %12, %60
  ret void

62:                                               ; preds = %56, %58, %44, %38
  %63 = phi { ptr, i32 } [ %45, %44 ], [ %59, %58 ], [ %57, %56 ], [ %39, %38 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  br label %64

64:                                               ; preds = %24, %26, %62, %20
  %65 = phi { ptr, i32 } [ %27, %26 ], [ %25, %24 ], [ %21, %20 ], [ %63, %62 ]
  resume { ptr, i32 } %65

66:                                               ; preds = %53, %19
  unreachable
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK11xercesc_2_78DOM_Node16getOwnerDocumentEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_Document") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79RangeImpl8collapseEb(ptr noundef nonnull align 8 dereferenceable(72) %0, i1 noundef zeroext %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = alloca %"class.xercesc_2_7::DOMString", align 8
  %4 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 7
  %5 = load i8, ptr %4, align 8, !tbaa !49, !range !50, !noundef !51
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %19, label %7

7:                                                ; preds = %2
  %8 = tail call ptr @__cxa_allocate_exception(i64 24) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 0) #9
          to label %9 unwind label %13

9:                                                ; preds = %7
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %8, i16 noundef signext 11, ptr noundef nonnull align 8 dereferenceable(8) %3) #9
          to label %12 unwind label %10

10:                                               ; preds = %9
  %11 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  br label %17

12:                                               ; preds = %9
  invoke void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #12
          to label %38 unwind label %15

13:                                               ; preds = %7
  %14 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  br label %17

15:                                               ; preds = %12
  %16 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  br label %36

17:                                               ; preds = %10, %13
  %18 = phi { ptr, i32 } [ %14, %13 ], [ %11, %10 ]
  call void @__cxa_free_exception(ptr %8) #11
  br label %36

19:                                               ; preds = %2
  br i1 %1, label %20, label %27

20:                                               ; preds = %19
  %21 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 1
  %22 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 3
  %23 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %22, ptr noundef nonnull align 8 dereferenceable(8) %21) #9
  %24 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 2
  %25 = load i32, ptr %24, align 8, !tbaa !38
  %26 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 4
  store i32 %25, ptr %26, align 8, !tbaa !47
  br label %34

27:                                               ; preds = %19
  %28 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 3
  %29 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 1
  %30 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef nonnull align 8 dereferenceable(8) %28) #9
  %31 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 4
  %32 = load i32, ptr %31, align 8, !tbaa !47
  %33 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 2
  store i32 %32, ptr %33, align 8, !tbaa !38
  br label %34

34:                                               ; preds = %27, %20
  %35 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 5
  store i8 1, ptr %35, align 4, !tbaa !48
  ret void

36:                                               ; preds = %15, %17
  %37 = phi { ptr, i32 } [ %16, %15 ], [ %18, %17 ]
  resume { ptr, i32 } %37

38:                                               ; preds = %12
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
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
  %22 = tail call noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull align 8 dereferenceable(8) %21) #9
  br i1 %22, label %23, label %35

23:                                               ; preds = %3
  %24 = tail call ptr @__cxa_allocate_exception(i64 24) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 0) #9
          to label %25 unwind label %29

25:                                               ; preds = %23
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %24, i16 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(8) %4) #9
          to label %28 unwind label %26

26:                                               ; preds = %25
  %27 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  br label %33

28:                                               ; preds = %25
  invoke void @__cxa_throw(ptr nonnull %24, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #12
          to label %251 unwind label %31

29:                                               ; preds = %23
  %30 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  br label %33

31:                                               ; preds = %28
  %32 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  br label %249

33:                                               ; preds = %26, %29
  %34 = phi { ptr, i32 } [ %30, %29 ], [ %27, %26 ]
  call void @__cxa_free_exception(ptr %24) #11
  br label %249

35:                                               ; preds = %3
  %36 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 7
  %37 = load i8, ptr %36, align 8, !tbaa !49, !range !50, !noundef !51
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %51, label %39

39:                                               ; preds = %35
  %40 = tail call ptr @__cxa_allocate_exception(i64 24) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef 0) #9
          to label %41 unwind label %45

41:                                               ; preds = %39
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %40, i16 noundef signext 11, ptr noundef nonnull align 8 dereferenceable(8) %5) #9
          to label %44 unwind label %42

42:                                               ; preds = %41
  %43 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  br label %49

44:                                               ; preds = %41
  invoke void @__cxa_throw(ptr nonnull %40, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #12
          to label %251 unwind label %47

45:                                               ; preds = %39
  %46 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  br label %49

47:                                               ; preds = %44
  %48 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  br label %249

49:                                               ; preds = %42, %45
  %50 = phi { ptr, i32 } [ %46, %45 ], [ %43, %42 ]
  call void @__cxa_free_exception(ptr %40) #11
  br label %249

51:                                               ; preds = %35
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #11
  call void @_ZN11xercesc_2_78DOM_NodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #11
  invoke void @_ZN11xercesc_2_78DOM_NodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #9
          to label %52 unwind label %53

52:                                               ; preds = %51
  switch i32 %1, label %117 [
    i32 0, label %55
    i32 1, label %72
    i32 3, label %87
    i32 2, label %102
  ]

53:                                               ; preds = %51
  %54 = landingpad { ptr, i32 }
          cleanup
  br label %247

55:                                               ; preds = %52
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #11
  invoke void @_ZNK11xercesc_2_79RangeImpl17getStartContainerEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %8, ptr noundef nonnull align 8 dereferenceable(72) %2) #9
          to label %56 unwind label %64

56:                                               ; preds = %55
  %57 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %8) #9
          to label %58 unwind label %66

58:                                               ; preds = %56
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #11
  %59 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 1
  %60 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %59) #9
          to label %61 unwind label %70

61:                                               ; preds = %58
  %62 = call noundef i32 @_ZNK11xercesc_2_79RangeImpl14getStartOffsetEv(ptr noundef nonnull align 8 dereferenceable(72) %2) #9
  %63 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 2
  br label %129

64:                                               ; preds = %55
  %65 = landingpad { ptr, i32 }
          cleanup
  br label %68

66:                                               ; preds = %56
  %67 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #10
  br label %68

68:                                               ; preds = %66, %64
  %69 = phi { ptr, i32 } [ %67, %66 ], [ %65, %64 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #11
  br label %245

70:                                               ; preds = %129, %105, %90, %75, %58
  %71 = landingpad { ptr, i32 }
          cleanup
  br label %245

72:                                               ; preds = %52
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #11
  invoke void @_ZNK11xercesc_2_79RangeImpl17getStartContainerEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %9, ptr noundef nonnull align 8 dereferenceable(72) %2) #9
          to label %73 unwind label %81

73:                                               ; preds = %72
  %74 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %9) #9
          to label %75 unwind label %83

75:                                               ; preds = %73
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #11
  %76 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 3
  %77 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %76) #9
          to label %78 unwind label %70

78:                                               ; preds = %75
  %79 = call noundef i32 @_ZNK11xercesc_2_79RangeImpl14getStartOffsetEv(ptr noundef nonnull align 8 dereferenceable(72) %2) #9
  %80 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 4
  br label %129

81:                                               ; preds = %72
  %82 = landingpad { ptr, i32 }
          cleanup
  br label %85

83:                                               ; preds = %73
  %84 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #10
  br label %85

85:                                               ; preds = %83, %81
  %86 = phi { ptr, i32 } [ %84, %83 ], [ %82, %81 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #11
  br label %245

87:                                               ; preds = %52
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #11
  invoke void @_ZNK11xercesc_2_79RangeImpl15getEndContainerEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %10, ptr noundef nonnull align 8 dereferenceable(72) %2) #9
          to label %88 unwind label %96

88:                                               ; preds = %87
  %89 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %10) #9
          to label %90 unwind label %98

90:                                               ; preds = %88
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #11
  %91 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 1
  %92 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %91) #9
          to label %93 unwind label %70

93:                                               ; preds = %90
  %94 = call noundef i32 @_ZNK11xercesc_2_79RangeImpl12getEndOffsetEv(ptr noundef nonnull align 8 dereferenceable(72) %2) #9
  %95 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 2
  br label %129

96:                                               ; preds = %87
  %97 = landingpad { ptr, i32 }
          cleanup
  br label %100

98:                                               ; preds = %88
  %99 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #10
  br label %100

100:                                              ; preds = %98, %96
  %101 = phi { ptr, i32 } [ %99, %98 ], [ %97, %96 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #11
  br label %245

102:                                              ; preds = %52
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #11
  invoke void @_ZNK11xercesc_2_79RangeImpl15getEndContainerEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %11, ptr noundef nonnull align 8 dereferenceable(72) %2) #9
          to label %103 unwind label %111

103:                                              ; preds = %102
  %104 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %11) #9
          to label %105 unwind label %113

105:                                              ; preds = %103
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #11
  %106 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 3
  %107 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %106) #9
          to label %108 unwind label %70

108:                                              ; preds = %105
  %109 = call noundef i32 @_ZNK11xercesc_2_79RangeImpl12getEndOffsetEv(ptr noundef nonnull align 8 dereferenceable(72) %2) #9
  %110 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 4
  br label %129

111:                                              ; preds = %102
  %112 = landingpad { ptr, i32 }
          cleanup
  br label %115

113:                                              ; preds = %103
  %114 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #10
  br label %115

115:                                              ; preds = %113, %111
  %116 = phi { ptr, i32 } [ %114, %113 ], [ %112, %111 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #11
  br label %245

117:                                              ; preds = %52
  %118 = call ptr @__cxa_allocate_exception(i64 24) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #11
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %12, i32 noundef 0) #9
          to label %119 unwind label %123

119:                                              ; preds = %117
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %118, i16 noundef signext 11, ptr noundef nonnull align 8 dereferenceable(8) %12) #9
          to label %122 unwind label %120

120:                                              ; preds = %119
  %121 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #11
  br label %127

122:                                              ; preds = %119
  invoke void @__cxa_throw(ptr nonnull %118, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #12
          to label %251 unwind label %125

123:                                              ; preds = %117
  %124 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #11
  br label %127

125:                                              ; preds = %122
  %126 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #11
  br label %245

127:                                              ; preds = %120, %123
  %128 = phi { ptr, i32 } [ %124, %123 ], [ %121, %120 ]
  call void @__cxa_free_exception(ptr %118) #11
  br label %245

129:                                              ; preds = %108, %93, %78, %61
  %130 = phi ptr [ %110, %108 ], [ %95, %93 ], [ %80, %78 ], [ %63, %61 ]
  %131 = phi i32 [ %109, %108 ], [ %94, %93 ], [ %79, %78 ], [ %62, %61 ]
  %132 = load i32, ptr %130, align 8, !tbaa !68
  %133 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeeqERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7) #9
          to label %134 unwind label %70

134:                                              ; preds = %129
  br i1 %133, label %135, label %140

135:                                              ; preds = %134
  %136 = icmp slt i32 %132, %131
  br i1 %136, label %243, label %137

137:                                              ; preds = %135
  %138 = icmp ne i32 %132, %131
  %139 = zext i1 %138 to i16
  br label %243

140:                                              ; preds = %134
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #11
  invoke void @_ZNK11xercesc_2_78DOM_Node13getFirstChildEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %13, ptr noundef nonnull align 8 dereferenceable(8) %6) #9
          to label %141 unwind label %144

141:                                              ; preds = %140, %162
  %142 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef null) #9
          to label %143 unwind label %146

143:                                              ; preds = %141
  br i1 %142, label %148, label %173

144:                                              ; preds = %140
  %145 = landingpad { ptr, i32 }
          cleanup
  br label %171

146:                                              ; preds = %148, %141
  %147 = landingpad { ptr, i32 }
          cleanup
  br label %169

148:                                              ; preds = %143
  %149 = invoke noundef zeroext i1 @_ZN11xercesc_2_79RangeImpl12isAncestorOfERKNS_8DOM_NodeES3_(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %7) #9
          to label %150 unwind label %146

150:                                              ; preds = %148
  br i1 %149, label %151, label %159

151:                                              ; preds = %150
  %152 = invoke noundef zeroext i16 @_ZNK11xercesc_2_79RangeImpl7indexOfERKNS_8DOM_NodeES3_(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %6) #9
          to label %153 unwind label %157

153:                                              ; preds = %151
  %154 = zext i16 %152 to i32
  %155 = icmp sgt i32 %132, %154
  %156 = select i1 %155, i16 1, i16 -1
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #11
  br label %243

157:                                              ; preds = %151
  %158 = landingpad { ptr, i32 }
          cleanup
  br label %169

159:                                              ; preds = %150
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #11
  invoke void @_ZNK11xercesc_2_78DOM_Node14getNextSiblingEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %14, ptr noundef nonnull align 8 dereferenceable(8) %13) #9
          to label %160 unwind label %163

160:                                              ; preds = %159
  %161 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %14) #9
          to label %162 unwind label %165

162:                                              ; preds = %160
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #11
  br label %141, !llvm.loop !69

163:                                              ; preds = %159
  %164 = landingpad { ptr, i32 }
          cleanup
  br label %167

165:                                              ; preds = %160
  %166 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14) #10
  br label %167

167:                                              ; preds = %165, %163
  %168 = phi { ptr, i32 } [ %166, %165 ], [ %164, %163 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #11
  br label %169

169:                                              ; preds = %167, %157, %146
  %170 = phi { ptr, i32 } [ %158, %157 ], [ %168, %167 ], [ %147, %146 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13) #10
  br label %171

171:                                              ; preds = %169, %144
  %172 = phi { ptr, i32 } [ %170, %169 ], [ %145, %144 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #11
  br label %245

173:                                              ; preds = %143
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #11
  invoke void @_ZNK11xercesc_2_78DOM_Node13getFirstChildEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %15, ptr noundef nonnull align 8 dereferenceable(8) %7) #9
          to label %174 unwind label %177

174:                                              ; preds = %173, %195
  %175 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef null) #9
          to label %176 unwind label %179

176:                                              ; preds = %174
  br i1 %175, label %181, label %206

177:                                              ; preds = %173
  %178 = landingpad { ptr, i32 }
          cleanup
  br label %204

179:                                              ; preds = %181, %174
  %180 = landingpad { ptr, i32 }
          cleanup
  br label %202

181:                                              ; preds = %176
  %182 = invoke noundef zeroext i1 @_ZN11xercesc_2_79RangeImpl12isAncestorOfERKNS_8DOM_NodeES3_(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 8 dereferenceable(8) %6) #9
          to label %183 unwind label %179

183:                                              ; preds = %181
  br i1 %182, label %184, label %192

184:                                              ; preds = %183
  %185 = invoke noundef zeroext i16 @_ZNK11xercesc_2_79RangeImpl7indexOfERKNS_8DOM_NodeES3_(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 8 dereferenceable(8) %7) #9
          to label %186 unwind label %190

186:                                              ; preds = %184
  %187 = zext i16 %185 to i32
  %188 = icmp sgt i32 %131, %187
  %189 = select i1 %188, i16 -1, i16 1
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %15) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #11
  br label %243

190:                                              ; preds = %184
  %191 = landingpad { ptr, i32 }
          cleanup
  br label %202

192:                                              ; preds = %183
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #11
  invoke void @_ZNK11xercesc_2_78DOM_Node14getNextSiblingEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %16, ptr noundef nonnull align 8 dereferenceable(8) %15) #9
          to label %193 unwind label %196

193:                                              ; preds = %192
  %194 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 8 dereferenceable(8) %16) #9
          to label %195 unwind label %198

195:                                              ; preds = %193
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %16) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #11
  br label %174, !llvm.loop !70

196:                                              ; preds = %192
  %197 = landingpad { ptr, i32 }
          cleanup
  br label %200

198:                                              ; preds = %193
  %199 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %16) #10
  br label %200

200:                                              ; preds = %198, %196
  %201 = phi { ptr, i32 } [ %199, %198 ], [ %197, %196 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #11
  br label %202

202:                                              ; preds = %200, %190, %179
  %203 = phi { ptr, i32 } [ %191, %190 ], [ %201, %200 ], [ %180, %179 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %15) #10
  br label %204

204:                                              ; preds = %202, %177
  %205 = phi { ptr, i32 } [ %203, %202 ], [ %178, %177 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #11
  br label %245

206:                                              ; preds = %176
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %15) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #11
  invoke void @_ZNK11xercesc_2_79RangeImpl16commonAncestorOfERKNS_8DOM_NodeES3_(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %17, ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7) #9
          to label %207 unwind label %211

207:                                              ; preds = %206
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %18) #11
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(8) %17) #9
          to label %208 unwind label %213

208:                                              ; preds = %207, %228
  %209 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeeqERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(8) %6) #9
          to label %210 unwind label %215

210:                                              ; preds = %208
  br i1 %209, label %235, label %217

211:                                              ; preds = %206
  %212 = landingpad { ptr, i32 }
          cleanup
  br label %241

213:                                              ; preds = %207
  %214 = landingpad { ptr, i32 }
          cleanup
  br label %239

215:                                              ; preds = %226, %223, %217, %208
  %216 = landingpad { ptr, i32 }
          cleanup
  br label %237

217:                                              ; preds = %210
  %218 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeeqERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(8) %7) #9
          to label %219 unwind label %215

219:                                              ; preds = %217
  br i1 %218, label %235, label %220

220:                                              ; preds = %219
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %19) #11
  invoke void @_ZNK11xercesc_2_79RangeImpl8nextNodeERKNS_8DOM_NodeEb(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %19, ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %18, i1 noundef zeroext true) #9
          to label %221 unwind label %229

221:                                              ; preds = %220
  %222 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(8) %19) #9
          to label %223 unwind label %231

223:                                              ; preds = %221
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %19) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %19) #11
  %224 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef null) #9
          to label %225 unwind label %215

225:                                              ; preds = %223
  br i1 %224, label %226, label %235

226:                                              ; preds = %225
  %227 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(8) %17) #9
          to label %228 unwind label %215

228:                                              ; preds = %226
  br i1 %227, label %208, label %235, !llvm.loop !71

229:                                              ; preds = %220
  %230 = landingpad { ptr, i32 }
          cleanup
  br label %233

231:                                              ; preds = %221
  %232 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %19) #10
  br label %233

233:                                              ; preds = %231, %229
  %234 = phi { ptr, i32 } [ %232, %231 ], [ %230, %229 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %19) #11
  br label %237

235:                                              ; preds = %228, %225, %219, %210
  %236 = phi i16 [ -1, %210 ], [ 1, %219 ], [ -2, %225 ], [ -2, %228 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %18) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #11
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %17) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #11
  br label %243

237:                                              ; preds = %233, %215
  %238 = phi { ptr, i32 } [ %216, %215 ], [ %234, %233 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %18) #10
  br label %239

239:                                              ; preds = %237, %213
  %240 = phi { ptr, i32 } [ %238, %237 ], [ %214, %213 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #11
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %17) #10
  br label %241

241:                                              ; preds = %239, %211
  %242 = phi { ptr, i32 } [ %240, %239 ], [ %212, %211 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #11
  br label %245

243:                                              ; preds = %186, %153, %137, %135, %235
  %244 = phi i16 [ %236, %235 ], [ -1, %135 ], [ %139, %137 ], [ %156, %153 ], [ %189, %186 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #11
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  ret i16 %244

245:                                              ; preds = %125, %127, %241, %204, %171, %115, %100, %85, %70, %68
  %246 = phi { ptr, i32 } [ %128, %127 ], [ %126, %125 ], [ %242, %241 ], [ %205, %204 ], [ %172, %171 ], [ %71, %70 ], [ %116, %115 ], [ %101, %100 ], [ %86, %85 ], [ %69, %68 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #10
  br label %247

247:                                              ; preds = %245, %53
  %248 = phi { ptr, i32 } [ %246, %245 ], [ %54, %53 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #11
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  br label %249

249:                                              ; preds = %47, %31, %49, %33, %247
  %250 = phi { ptr, i32 } [ %34, %33 ], [ %32, %31 ], [ %50, %49 ], [ %48, %47 ], [ %248, %247 ]
  resume { ptr, i32 } %250

251:                                              ; preds = %122, %44, %28
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79RangeImpl6setEndERKNS_8DOM_NodeEj(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %4 = alloca %"class.xercesc_2_7::DOM_Document", align 8
  %5 = alloca %"class.xercesc_2_7::DOM_Document", align 8
  %6 = alloca %"class.xercesc_2_7::DOM_Document", align 8
  tail call void @_ZNK11xercesc_2_79RangeImpl12validateNodeERKNS_8DOM_NodeE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #9
  tail call void @_ZNK11xercesc_2_79RangeImpl10checkIndexERKNS_8DOM_NodeEj(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) #9
  %7 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 3
  %8 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %1) #9
  %9 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 4
  store i32 %2, ptr %9, align 8, !tbaa !47
  %10 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  call void @_ZNK11xercesc_2_78DOM_Node16getOwnerDocumentEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Document") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %1) #9
  %11 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %4) #9
          to label %12 unwind label %21

12:                                               ; preds = %3
  br i1 %11, label %14, label %13

13:                                               ; preds = %12
  call void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  br label %29

14:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  invoke void @_ZNK11xercesc_2_78DOM_Node16getOwnerDocumentEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Document") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %1) #9
          to label %15 unwind label %23

15:                                               ; preds = %14
  %16 = load ptr, ptr %5, align 8, !tbaa !52
  %17 = icmp eq ptr %16, null
  call void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  call void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  br i1 %17, label %29, label %18

18:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #11
  call void @_ZNK11xercesc_2_78DOM_Node16getOwnerDocumentEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Document") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %1) #9
  %19 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_712DOM_DocumentaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %6) #9
          to label %20 unwind label %27

20:                                               ; preds = %18
  call void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  call void @_ZN11xercesc_2_79RangeImpl8collapseEb(ptr noundef nonnull align 8 dereferenceable(72) %0, i1 noundef zeroext false) #9
  br label %29

21:                                               ; preds = %3
  %22 = landingpad { ptr, i32 }
          cleanup
  br label %25

23:                                               ; preds = %14
  %24 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi { ptr, i32 } [ %24, %23 ], [ %22, %21 ]
  call void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  br label %36

27:                                               ; preds = %18
  %28 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  br label %36

29:                                               ; preds = %13, %20, %15
  %30 = call noundef signext i16 @_ZNK11xercesc_2_79RangeImpl21compareBoundaryPointsENS_9DOM_Range10CompareHowEPS0_(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef 3, ptr noundef nonnull %0) #9
  %31 = icmp eq i16 %30, 1
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  call void @_ZN11xercesc_2_79RangeImpl8collapseEb(ptr noundef nonnull align 8 dereferenceable(72) %0, i1 noundef zeroext false) #9
  br label %35

33:                                               ; preds = %29
  %34 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 5
  store i8 0, ptr %34, align 4, !tbaa !48
  br label %35

35:                                               ; preds = %33, %32
  ret void

36:                                               ; preds = %27, %25
  %37 = phi { ptr, i32 } [ %28, %27 ], [ %26, %25 ]
  resume { ptr, i32 } %37
}

; Function Attrs: mustprogress noinline optsize uwtable
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
  br i1 %13, label %26, label %14

14:                                               ; preds = %2
  %15 = tail call ptr @__cxa_allocate_exception(i64 24) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 0) #9
          to label %16 unwind label %20

16:                                               ; preds = %14
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %15, i16 noundef signext 11, ptr noundef nonnull align 8 dereferenceable(8) %3) #9
          to label %19 unwind label %17

17:                                               ; preds = %16
  %18 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  br label %24

19:                                               ; preds = %16
  invoke void @__cxa_throw(ptr nonnull %15, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #12
          to label %98 unwind label %22

20:                                               ; preds = %14
  %21 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  br label %24

22:                                               ; preds = %19
  %23 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  br label %96

24:                                               ; preds = %17, %20
  %25 = phi { ptr, i32 } [ %21, %20 ], [ %18, %17 ]
  call void @__cxa_free_exception(ptr %15) #11
  br label %96

26:                                               ; preds = %2
  %27 = tail call noundef zeroext i1 @_ZNK11xercesc_2_79RangeImpl21hasLegalRootContainerERKNS_8DOM_NodeE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %1) #9
  br i1 %27, label %28, label %30

28:                                               ; preds = %26
  %29 = tail call noundef zeroext i1 @_ZNK11xercesc_2_79RangeImpl20isLegalContainedNodeERKNS_8DOM_NodeE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %1) #9
  br i1 %29, label %42, label %30

30:                                               ; preds = %28, %26
  %31 = tail call ptr @__cxa_allocate_exception(i64 32) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 0) #9
          to label %32 unwind label %36

32:                                               ; preds = %30
  invoke void @_ZN11xercesc_2_718DOM_RangeExceptionC1ENS0_18RangeExceptionCodeERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(28) %31, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(8) %4) #9
          to label %35 unwind label %33

33:                                               ; preds = %32
  %34 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  br label %40

35:                                               ; preds = %32
  invoke void @__cxa_throw(ptr nonnull %31, ptr nonnull @_ZTIN11xercesc_2_718DOM_RangeExceptionE, ptr nonnull @_ZN11xercesc_2_718DOM_RangeExceptionD1Ev) #12
          to label %98 unwind label %38

36:                                               ; preds = %30
  %37 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  br label %40

38:                                               ; preds = %35
  %39 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  br label %96

40:                                               ; preds = %33, %36
  %41 = phi { ptr, i32 } [ %37, %36 ], [ %34, %33 ]
  call void @__cxa_free_exception(ptr %31) #11
  br label %96

42:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  call void @_ZNK11xercesc_2_78DOM_Node13getParentNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %1) #9
  %43 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 1
  %44 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %43, ptr noundef nonnull align 8 dereferenceable(8) %5) #9
          to label %45 unwind label %55

45:                                               ; preds = %42
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #11
  call void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %1) #9
  br label %46

46:                                               ; preds = %63, %45
  %47 = phi i32 [ 0, %45 ], [ %60, %63 ]
  %48 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef null) #9
          to label %49 unwind label %57

49:                                               ; preds = %46
  br i1 %48, label %59, label %50

50:                                               ; preds = %49
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  %51 = call i32 @llvm.usub.sat.i32(i32 %47, i32 1)
  %52 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 2
  store i32 %51, ptr %52, align 8
  %53 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #11
  call void @_ZNK11xercesc_2_78DOM_Node16getOwnerDocumentEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Document") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %1) #9
  %54 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %53, ptr noundef nonnull align 8 dereferenceable(8) %8) #9
          to label %72 unwind label %81

55:                                               ; preds = %42
  %56 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  br label %96

57:                                               ; preds = %46
  %58 = landingpad { ptr, i32 }
          cleanup
  br label %70

59:                                               ; preds = %49
  %60 = add i32 %47, 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #11
  invoke void @_ZNK11xercesc_2_78DOM_Node18getPreviousSiblingEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %6) #9
          to label %61 unwind label %64

61:                                               ; preds = %59
  %62 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7) #9
          to label %63 unwind label %66

63:                                               ; preds = %61
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #11
  br label %46, !llvm.loop !72

64:                                               ; preds = %59
  %65 = landingpad { ptr, i32 }
          cleanup
  br label %68

66:                                               ; preds = %61
  %67 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #10
  br label %68

68:                                               ; preds = %66, %64
  %69 = phi { ptr, i32 } [ %67, %66 ], [ %65, %64 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #11
  br label %70

70:                                               ; preds = %68, %57
  %71 = phi { ptr, i32 } [ %69, %68 ], [ %58, %57 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  br label %96

72:                                               ; preds = %50
  br i1 %54, label %74, label %73

73:                                               ; preds = %72
  call void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #11
  br label %89

74:                                               ; preds = %72
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #11
  invoke void @_ZNK11xercesc_2_78DOM_Node16getOwnerDocumentEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Document") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %1) #9
          to label %75 unwind label %83

75:                                               ; preds = %74
  %76 = load ptr, ptr %9, align 8, !tbaa !52
  %77 = icmp eq ptr %76, null
  call void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #11
  call void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #11
  br i1 %77, label %89, label %78

78:                                               ; preds = %75
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #11
  call void @_ZNK11xercesc_2_78DOM_Node16getOwnerDocumentEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Document") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %1) #9
  %79 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_712DOM_DocumentaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %53, ptr noundef nonnull align 8 dereferenceable(8) %10) #9
          to label %80 unwind label %87

80:                                               ; preds = %78
  call void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #11
  call void @_ZN11xercesc_2_79RangeImpl8collapseEb(ptr noundef nonnull align 8 dereferenceable(72) %0, i1 noundef zeroext true) #9
  br label %89

81:                                               ; preds = %50
  %82 = landingpad { ptr, i32 }
          cleanup
  br label %85

83:                                               ; preds = %74
  %84 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #11
  br label %85

85:                                               ; preds = %83, %81
  %86 = phi { ptr, i32 } [ %84, %83 ], [ %82, %81 ]
  call void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #11
  br label %96

87:                                               ; preds = %78
  %88 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #11
  br label %96

89:                                               ; preds = %73, %80, %75
  %90 = call noundef signext i16 @_ZNK11xercesc_2_79RangeImpl21compareBoundaryPointsENS_9DOM_Range10CompareHowEPS0_(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef 3, ptr noundef nonnull %0) #9
  %91 = icmp eq i16 %90, 1
  br i1 %91, label %92, label %93

92:                                               ; preds = %89
  call void @_ZN11xercesc_2_79RangeImpl8collapseEb(ptr noundef nonnull align 8 dereferenceable(72) %0, i1 noundef zeroext true) #9
  br label %95

93:                                               ; preds = %89
  %94 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 5
  store i8 0, ptr %94, align 4, !tbaa !48
  br label %95

95:                                               ; preds = %93, %92
  ret void

96:                                               ; preds = %38, %22, %70, %85, %87, %40, %24, %55
  %97 = phi { ptr, i32 } [ %25, %24 ], [ %23, %22 ], [ %56, %55 ], [ %41, %40 ], [ %39, %38 ], [ %71, %70 ], [ %88, %87 ], [ %86, %85 ]
  resume { ptr, i32 } %97

98:                                               ; preds = %35, %19
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_79RangeImpl21hasLegalRootContainerERKNS_8DOM_NodeE(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %4 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %5 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %6 = tail call noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeeqEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef null) #9
  br i1 %6, label %41, label %7

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  call void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %1) #9
  br label %8

8:                                                ; preds = %15, %7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  invoke void @_ZNK11xercesc_2_78DOM_Node13getParentNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %3) #9
          to label %9 unwind label %16

9:                                                ; preds = %8
  %10 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef null) #9
          to label %11 unwind label %18

11:                                               ; preds = %9
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  br i1 %10, label %12, label %28

12:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  invoke void @_ZNK11xercesc_2_78DOM_Node13getParentNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %3) #9
          to label %13 unwind label %22

13:                                               ; preds = %12
  %14 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %5) #9
          to label %15 unwind label %24

15:                                               ; preds = %13
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  br label %8, !llvm.loop !73

16:                                               ; preds = %8
  %17 = landingpad { ptr, i32 }
          cleanup
  br label %20

18:                                               ; preds = %9
  %19 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #10
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi { ptr, i32 } [ %19, %18 ], [ %17, %16 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  br label %39

22:                                               ; preds = %12
  %23 = landingpad { ptr, i32 }
          cleanup
  br label %26

24:                                               ; preds = %13
  %25 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #10
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi { ptr, i32 } [ %25, %24 ], [ %23, %22 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  br label %39

28:                                               ; preds = %11
  %29 = invoke noundef signext i16 @_ZNK11xercesc_2_78DOM_Node11getNodeTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #9
          to label %30 unwind label %37

30:                                               ; preds = %28
  %31 = icmp ult i16 %29, 12
  %32 = trunc i16 %29 to i12
  %33 = lshr i12 -1532, %32
  %34 = and i12 %33, 1
  %35 = icmp ne i12 %34, 0
  %36 = select i1 %31, i1 %35, i1 false
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  br label %41

37:                                               ; preds = %28
  %38 = landingpad { ptr, i32 }
          cleanup
  br label %39

39:                                               ; preds = %37, %26, %20
  %40 = phi { ptr, i32 } [ %27, %26 ], [ %38, %37 ], [ %21, %20 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  resume { ptr, i32 } %40

41:                                               ; preds = %2, %30
  %42 = phi i1 [ %36, %30 ], [ false, %2 ]
  ret i1 %42
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_79RangeImpl20isLegalContainedNodeERKNS_8DOM_NodeE(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 !prof !34 {
  %3 = tail call noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeeqEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef null) #9
  br i1 %3, label %12, label %4

4:                                                ; preds = %2
  %5 = tail call noundef signext i16 @_ZNK11xercesc_2_78DOM_Node11getNodeTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #9
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

; Function Attrs: optsize
declare void @_ZN11xercesc_2_718DOM_RangeExceptionC1ENS0_18RangeExceptionCodeERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(28), i32 noundef, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_718DOM_RangeExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZNK11xercesc_2_78DOM_Node13getParentNodeEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_Node") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK11xercesc_2_78DOM_Node18getPreviousSiblingEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_Node") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
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
  br i1 %13, label %26, label %14

14:                                               ; preds = %2
  %15 = tail call ptr @__cxa_allocate_exception(i64 24) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 0) #9
          to label %16 unwind label %20

16:                                               ; preds = %14
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %15, i16 noundef signext 11, ptr noundef nonnull align 8 dereferenceable(8) %3) #9
          to label %19 unwind label %17

17:                                               ; preds = %16
  %18 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  br label %24

19:                                               ; preds = %16
  invoke void @__cxa_throw(ptr nonnull %15, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #12
          to label %97 unwind label %22

20:                                               ; preds = %14
  %21 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  br label %24

22:                                               ; preds = %19
  %23 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  br label %95

24:                                               ; preds = %17, %20
  %25 = phi { ptr, i32 } [ %21, %20 ], [ %18, %17 ]
  call void @__cxa_free_exception(ptr %15) #11
  br label %95

26:                                               ; preds = %2
  %27 = tail call noundef zeroext i1 @_ZNK11xercesc_2_79RangeImpl21hasLegalRootContainerERKNS_8DOM_NodeE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %1) #9
  br i1 %27, label %28, label %30

28:                                               ; preds = %26
  %29 = tail call noundef zeroext i1 @_ZNK11xercesc_2_79RangeImpl20isLegalContainedNodeERKNS_8DOM_NodeE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %1) #9
  br i1 %29, label %42, label %30

30:                                               ; preds = %28, %26
  %31 = tail call ptr @__cxa_allocate_exception(i64 32) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 0) #9
          to label %32 unwind label %36

32:                                               ; preds = %30
  invoke void @_ZN11xercesc_2_718DOM_RangeExceptionC1ENS0_18RangeExceptionCodeERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(28) %31, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(8) %4) #9
          to label %35 unwind label %33

33:                                               ; preds = %32
  %34 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  br label %40

35:                                               ; preds = %32
  invoke void @__cxa_throw(ptr nonnull %31, ptr nonnull @_ZTIN11xercesc_2_718DOM_RangeExceptionE, ptr nonnull @_ZN11xercesc_2_718DOM_RangeExceptionD1Ev) #12
          to label %97 unwind label %38

36:                                               ; preds = %30
  %37 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  br label %40

38:                                               ; preds = %35
  %39 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  br label %95

40:                                               ; preds = %33, %36
  %41 = phi { ptr, i32 } [ %37, %36 ], [ %34, %33 ]
  call void @__cxa_free_exception(ptr %31) #11
  br label %95

42:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  call void @_ZNK11xercesc_2_78DOM_Node13getParentNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %1) #9
  %43 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 1
  %44 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %43, ptr noundef nonnull align 8 dereferenceable(8) %5) #9
          to label %45 unwind label %54

45:                                               ; preds = %42
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #11
  call void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %1) #9
  br label %46

46:                                               ; preds = %62, %45
  %47 = phi i32 [ 0, %45 ], [ %59, %62 ]
  %48 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef null) #9
          to label %49 unwind label %56

49:                                               ; preds = %46
  br i1 %48, label %58, label %50

50:                                               ; preds = %49
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  %51 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 2
  store i32 %47, ptr %51, align 8, !tbaa !38
  %52 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #11
  call void @_ZNK11xercesc_2_78DOM_Node16getOwnerDocumentEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Document") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %1) #9
  %53 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %52, ptr noundef nonnull align 8 dereferenceable(8) %8) #9
          to label %71 unwind label %80

54:                                               ; preds = %42
  %55 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  br label %95

56:                                               ; preds = %46
  %57 = landingpad { ptr, i32 }
          cleanup
  br label %69

58:                                               ; preds = %49
  %59 = add i32 %47, 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #11
  invoke void @_ZNK11xercesc_2_78DOM_Node18getPreviousSiblingEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %6) #9
          to label %60 unwind label %63

60:                                               ; preds = %58
  %61 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7) #9
          to label %62 unwind label %65

62:                                               ; preds = %60
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #11
  br label %46, !llvm.loop !74

63:                                               ; preds = %58
  %64 = landingpad { ptr, i32 }
          cleanup
  br label %67

65:                                               ; preds = %60
  %66 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #10
  br label %67

67:                                               ; preds = %65, %63
  %68 = phi { ptr, i32 } [ %66, %65 ], [ %64, %63 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #11
  br label %69

69:                                               ; preds = %67, %56
  %70 = phi { ptr, i32 } [ %68, %67 ], [ %57, %56 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  br label %95

71:                                               ; preds = %50
  br i1 %53, label %73, label %72

72:                                               ; preds = %71
  call void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #11
  br label %88

73:                                               ; preds = %71
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #11
  invoke void @_ZNK11xercesc_2_78DOM_Node16getOwnerDocumentEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Document") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %1) #9
          to label %74 unwind label %82

74:                                               ; preds = %73
  %75 = load ptr, ptr %9, align 8, !tbaa !52
  %76 = icmp eq ptr %75, null
  call void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #11
  call void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #11
  br i1 %76, label %88, label %77

77:                                               ; preds = %74
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #11
  call void @_ZNK11xercesc_2_78DOM_Node16getOwnerDocumentEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Document") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %1) #9
  %78 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_712DOM_DocumentaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %52, ptr noundef nonnull align 8 dereferenceable(8) %10) #9
          to label %79 unwind label %86

79:                                               ; preds = %77
  call void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #11
  call void @_ZN11xercesc_2_79RangeImpl8collapseEb(ptr noundef nonnull align 8 dereferenceable(72) %0, i1 noundef zeroext true) #9
  br label %88

80:                                               ; preds = %50
  %81 = landingpad { ptr, i32 }
          cleanup
  br label %84

82:                                               ; preds = %73
  %83 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #11
  br label %84

84:                                               ; preds = %82, %80
  %85 = phi { ptr, i32 } [ %83, %82 ], [ %81, %80 ]
  call void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #11
  br label %95

86:                                               ; preds = %77
  %87 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #11
  br label %95

88:                                               ; preds = %72, %79, %74
  %89 = call noundef signext i16 @_ZNK11xercesc_2_79RangeImpl21compareBoundaryPointsENS_9DOM_Range10CompareHowEPS0_(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef 3, ptr noundef nonnull %0) #9
  %90 = icmp eq i16 %89, 1
  br i1 %90, label %91, label %92

91:                                               ; preds = %88
  call void @_ZN11xercesc_2_79RangeImpl8collapseEb(ptr noundef nonnull align 8 dereferenceable(72) %0, i1 noundef zeroext true) #9
  br label %94

92:                                               ; preds = %88
  %93 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 5
  store i8 0, ptr %93, align 4, !tbaa !48
  br label %94

94:                                               ; preds = %92, %91
  ret void

95:                                               ; preds = %38, %22, %69, %84, %86, %40, %24, %54
  %96 = phi { ptr, i32 } [ %25, %24 ], [ %23, %22 ], [ %55, %54 ], [ %41, %40 ], [ %39, %38 ], [ %70, %69 ], [ %87, %86 ], [ %85, %84 ]
  resume { ptr, i32 } %96

97:                                               ; preds = %35, %19
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
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
  br i1 %13, label %26, label %14

14:                                               ; preds = %2
  %15 = tail call ptr @__cxa_allocate_exception(i64 24) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 0) #9
          to label %16 unwind label %20

16:                                               ; preds = %14
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %15, i16 noundef signext 11, ptr noundef nonnull align 8 dereferenceable(8) %3) #9
          to label %19 unwind label %17

17:                                               ; preds = %16
  %18 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  br label %24

19:                                               ; preds = %16
  invoke void @__cxa_throw(ptr nonnull %15, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #12
          to label %98 unwind label %22

20:                                               ; preds = %14
  %21 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  br label %24

22:                                               ; preds = %19
  %23 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  br label %96

24:                                               ; preds = %17, %20
  %25 = phi { ptr, i32 } [ %21, %20 ], [ %18, %17 ]
  call void @__cxa_free_exception(ptr %15) #11
  br label %96

26:                                               ; preds = %2
  %27 = tail call noundef zeroext i1 @_ZNK11xercesc_2_79RangeImpl21hasLegalRootContainerERKNS_8DOM_NodeE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %1) #9
  br i1 %27, label %28, label %30

28:                                               ; preds = %26
  %29 = tail call noundef zeroext i1 @_ZNK11xercesc_2_79RangeImpl20isLegalContainedNodeERKNS_8DOM_NodeE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %1) #9
  br i1 %29, label %42, label %30

30:                                               ; preds = %28, %26
  %31 = tail call ptr @__cxa_allocate_exception(i64 32) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 0) #9
          to label %32 unwind label %36

32:                                               ; preds = %30
  invoke void @_ZN11xercesc_2_718DOM_RangeExceptionC1ENS0_18RangeExceptionCodeERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(28) %31, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(8) %4) #9
          to label %35 unwind label %33

33:                                               ; preds = %32
  %34 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  br label %40

35:                                               ; preds = %32
  invoke void @__cxa_throw(ptr nonnull %31, ptr nonnull @_ZTIN11xercesc_2_718DOM_RangeExceptionE, ptr nonnull @_ZN11xercesc_2_718DOM_RangeExceptionD1Ev) #12
          to label %98 unwind label %38

36:                                               ; preds = %30
  %37 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  br label %40

38:                                               ; preds = %35
  %39 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  br label %96

40:                                               ; preds = %33, %36
  %41 = phi { ptr, i32 } [ %37, %36 ], [ %34, %33 ]
  call void @__cxa_free_exception(ptr %31) #11
  br label %96

42:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  call void @_ZNK11xercesc_2_78DOM_Node13getParentNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %1) #9
  %43 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 3
  %44 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %43, ptr noundef nonnull align 8 dereferenceable(8) %5) #9
          to label %45 unwind label %55

45:                                               ; preds = %42
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #11
  call void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %1) #9
  br label %46

46:                                               ; preds = %62, %45
  %47 = phi i32 [ 0, %45 ], [ %63, %62 ]
  %48 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef null) #9
          to label %49 unwind label %57

49:                                               ; preds = %46
  br i1 %48, label %59, label %50

50:                                               ; preds = %49
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  %51 = call i32 @llvm.usub.sat.i32(i32 %47, i32 1)
  %52 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 4
  store i32 %51, ptr %52, align 8
  %53 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #11
  call void @_ZNK11xercesc_2_78DOM_Node16getOwnerDocumentEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Document") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %1) #9
  %54 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %53, ptr noundef nonnull align 8 dereferenceable(8) %8) #9
          to label %72 unwind label %81

55:                                               ; preds = %42
  %56 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  br label %96

57:                                               ; preds = %46
  %58 = landingpad { ptr, i32 }
          cleanup
  br label %70

59:                                               ; preds = %49
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #11
  invoke void @_ZNK11xercesc_2_78DOM_Node18getPreviousSiblingEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %6) #9
          to label %60 unwind label %64

60:                                               ; preds = %59
  %61 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7) #9
          to label %62 unwind label %66

62:                                               ; preds = %60
  %63 = add i32 %47, 1
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #11
  br label %46, !llvm.loop !75

64:                                               ; preds = %59
  %65 = landingpad { ptr, i32 }
          cleanup
  br label %68

66:                                               ; preds = %60
  %67 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #10
  br label %68

68:                                               ; preds = %66, %64
  %69 = phi { ptr, i32 } [ %67, %66 ], [ %65, %64 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #11
  br label %70

70:                                               ; preds = %68, %57
  %71 = phi { ptr, i32 } [ %69, %68 ], [ %58, %57 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  br label %96

72:                                               ; preds = %50
  br i1 %54, label %74, label %73

73:                                               ; preds = %72
  call void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #11
  br label %89

74:                                               ; preds = %72
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #11
  invoke void @_ZNK11xercesc_2_78DOM_Node16getOwnerDocumentEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Document") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %1) #9
          to label %75 unwind label %83

75:                                               ; preds = %74
  %76 = load ptr, ptr %9, align 8, !tbaa !52
  %77 = icmp eq ptr %76, null
  call void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #11
  call void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #11
  br i1 %77, label %89, label %78

78:                                               ; preds = %75
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #11
  call void @_ZNK11xercesc_2_78DOM_Node16getOwnerDocumentEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Document") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %1) #9
  %79 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_712DOM_DocumentaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %53, ptr noundef nonnull align 8 dereferenceable(8) %10) #9
          to label %80 unwind label %87

80:                                               ; preds = %78
  call void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #11
  call void @_ZN11xercesc_2_79RangeImpl8collapseEb(ptr noundef nonnull align 8 dereferenceable(72) %0, i1 noundef zeroext true) #9
  br label %89

81:                                               ; preds = %50
  %82 = landingpad { ptr, i32 }
          cleanup
  br label %85

83:                                               ; preds = %74
  %84 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #11
  br label %85

85:                                               ; preds = %83, %81
  %86 = phi { ptr, i32 } [ %84, %83 ], [ %82, %81 ]
  call void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #11
  br label %96

87:                                               ; preds = %78
  %88 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #11
  br label %96

89:                                               ; preds = %73, %80, %75
  %90 = call noundef signext i16 @_ZNK11xercesc_2_79RangeImpl21compareBoundaryPointsENS_9DOM_Range10CompareHowEPS0_(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef 3, ptr noundef nonnull %0) #9
  %91 = icmp eq i16 %90, 1
  br i1 %91, label %92, label %93

92:                                               ; preds = %89
  call void @_ZN11xercesc_2_79RangeImpl8collapseEb(ptr noundef nonnull align 8 dereferenceable(72) %0, i1 noundef zeroext false) #9
  br label %95

93:                                               ; preds = %89
  %94 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 5
  store i8 0, ptr %94, align 4, !tbaa !48
  br label %95

95:                                               ; preds = %93, %92
  ret void

96:                                               ; preds = %38, %22, %70, %85, %87, %40, %24, %55
  %97 = phi { ptr, i32 } [ %25, %24 ], [ %23, %22 ], [ %56, %55 ], [ %41, %40 ], [ %39, %38 ], [ %71, %70 ], [ %88, %87 ], [ %86, %85 ]
  resume { ptr, i32 } %97

98:                                               ; preds = %35, %19
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
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
  br i1 %13, label %26, label %14

14:                                               ; preds = %2
  %15 = tail call ptr @__cxa_allocate_exception(i64 24) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 0) #9
          to label %16 unwind label %20

16:                                               ; preds = %14
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %15, i16 noundef signext 11, ptr noundef nonnull align 8 dereferenceable(8) %3) #9
          to label %19 unwind label %17

17:                                               ; preds = %16
  %18 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  br label %24

19:                                               ; preds = %16
  invoke void @__cxa_throw(ptr nonnull %15, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #12
          to label %97 unwind label %22

20:                                               ; preds = %14
  %21 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  br label %24

22:                                               ; preds = %19
  %23 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  br label %95

24:                                               ; preds = %17, %20
  %25 = phi { ptr, i32 } [ %21, %20 ], [ %18, %17 ]
  call void @__cxa_free_exception(ptr %15) #11
  br label %95

26:                                               ; preds = %2
  %27 = tail call noundef zeroext i1 @_ZNK11xercesc_2_79RangeImpl21hasLegalRootContainerERKNS_8DOM_NodeE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %1) #9
  br i1 %27, label %28, label %30

28:                                               ; preds = %26
  %29 = tail call noundef zeroext i1 @_ZNK11xercesc_2_79RangeImpl20isLegalContainedNodeERKNS_8DOM_NodeE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %1) #9
  br i1 %29, label %42, label %30

30:                                               ; preds = %28, %26
  %31 = tail call ptr @__cxa_allocate_exception(i64 32) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 0) #9
          to label %32 unwind label %36

32:                                               ; preds = %30
  invoke void @_ZN11xercesc_2_718DOM_RangeExceptionC1ENS0_18RangeExceptionCodeERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(28) %31, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(8) %4) #9
          to label %35 unwind label %33

33:                                               ; preds = %32
  %34 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  br label %40

35:                                               ; preds = %32
  invoke void @__cxa_throw(ptr nonnull %31, ptr nonnull @_ZTIN11xercesc_2_718DOM_RangeExceptionE, ptr nonnull @_ZN11xercesc_2_718DOM_RangeExceptionD1Ev) #12
          to label %97 unwind label %38

36:                                               ; preds = %30
  %37 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  br label %40

38:                                               ; preds = %35
  %39 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  br label %95

40:                                               ; preds = %33, %36
  %41 = phi { ptr, i32 } [ %37, %36 ], [ %34, %33 ]
  call void @__cxa_free_exception(ptr %31) #11
  br label %95

42:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  call void @_ZNK11xercesc_2_78DOM_Node13getParentNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %1) #9
  %43 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 3
  %44 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %43, ptr noundef nonnull align 8 dereferenceable(8) %5) #9
          to label %45 unwind label %54

45:                                               ; preds = %42
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #11
  call void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %1) #9
  br label %46

46:                                               ; preds = %61, %45
  %47 = phi i32 [ 0, %45 ], [ %62, %61 ]
  %48 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef null) #9
          to label %49 unwind label %56

49:                                               ; preds = %46
  br i1 %48, label %58, label %50

50:                                               ; preds = %49
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  %51 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 4
  store i32 %47, ptr %51, align 8
  %52 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #11
  call void @_ZNK11xercesc_2_78DOM_Node16getOwnerDocumentEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Document") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %1) #9
  %53 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %52, ptr noundef nonnull align 8 dereferenceable(8) %8) #9
          to label %71 unwind label %80

54:                                               ; preds = %42
  %55 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  br label %95

56:                                               ; preds = %46
  %57 = landingpad { ptr, i32 }
          cleanup
  br label %69

58:                                               ; preds = %49
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #11
  invoke void @_ZNK11xercesc_2_78DOM_Node18getPreviousSiblingEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %6) #9
          to label %59 unwind label %63

59:                                               ; preds = %58
  %60 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7) #9
          to label %61 unwind label %65

61:                                               ; preds = %59
  %62 = add i32 %47, 1
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #11
  br label %46, !llvm.loop !76

63:                                               ; preds = %58
  %64 = landingpad { ptr, i32 }
          cleanup
  br label %67

65:                                               ; preds = %59
  %66 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #10
  br label %67

67:                                               ; preds = %65, %63
  %68 = phi { ptr, i32 } [ %66, %65 ], [ %64, %63 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #11
  br label %69

69:                                               ; preds = %67, %56
  %70 = phi { ptr, i32 } [ %68, %67 ], [ %57, %56 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  br label %95

71:                                               ; preds = %50
  br i1 %53, label %73, label %72

72:                                               ; preds = %71
  call void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #11
  br label %88

73:                                               ; preds = %71
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #11
  invoke void @_ZNK11xercesc_2_78DOM_Node16getOwnerDocumentEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Document") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %1) #9
          to label %74 unwind label %82

74:                                               ; preds = %73
  %75 = load ptr, ptr %9, align 8, !tbaa !52
  %76 = icmp eq ptr %75, null
  call void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #11
  call void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #11
  br i1 %76, label %88, label %77

77:                                               ; preds = %74
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #11
  call void @_ZNK11xercesc_2_78DOM_Node16getOwnerDocumentEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Document") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %1) #9
  %78 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_712DOM_DocumentaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %52, ptr noundef nonnull align 8 dereferenceable(8) %10) #9
          to label %79 unwind label %86

79:                                               ; preds = %77
  call void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #11
  call void @_ZN11xercesc_2_79RangeImpl8collapseEb(ptr noundef nonnull align 8 dereferenceable(72) %0, i1 noundef zeroext true) #9
  br label %88

80:                                               ; preds = %50
  %81 = landingpad { ptr, i32 }
          cleanup
  br label %84

82:                                               ; preds = %73
  %83 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #11
  br label %84

84:                                               ; preds = %82, %80
  %85 = phi { ptr, i32 } [ %83, %82 ], [ %81, %80 ]
  call void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #11
  br label %95

86:                                               ; preds = %77
  %87 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #11
  br label %95

88:                                               ; preds = %72, %79, %74
  %89 = call noundef signext i16 @_ZNK11xercesc_2_79RangeImpl21compareBoundaryPointsENS_9DOM_Range10CompareHowEPS0_(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef 3, ptr noundef nonnull %0) #9
  %90 = icmp eq i16 %89, 1
  br i1 %90, label %91, label %92

91:                                               ; preds = %88
  call void @_ZN11xercesc_2_79RangeImpl8collapseEb(ptr noundef nonnull align 8 dereferenceable(72) %0, i1 noundef zeroext false) #9
  br label %94

92:                                               ; preds = %88
  %93 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 5
  store i8 0, ptr %93, align 4, !tbaa !48
  br label %94

94:                                               ; preds = %92, %91
  ret void

95:                                               ; preds = %38, %22, %69, %84, %86, %40, %24, %54
  %96 = phi { ptr, i32 } [ %25, %24 ], [ %23, %22 ], [ %55, %54 ], [ %41, %40 ], [ %39, %38 ], [ %70, %69 ], [ %87, %86 ], [ %85, %84 ]
  resume { ptr, i32 } %96

97:                                               ; preds = %35, %19
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79RangeImpl6detachEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %2 = alloca %"class.xercesc_2_7::DOMString", align 8
  %3 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 7
  %4 = load i8, ptr %3, align 8, !tbaa !49, !range !50, !noundef !51
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %18, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @__cxa_allocate_exception(i64 24) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #11
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 0) #9
          to label %8 unwind label %12

8:                                                ; preds = %6
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %7, i16 noundef signext 11, ptr noundef nonnull align 8 dereferenceable(8) %2) #9
          to label %11 unwind label %9

9:                                                ; preds = %8
  %10 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #11
  br label %16

11:                                               ; preds = %8
  invoke void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #12
          to label %30 unwind label %14

12:                                               ; preds = %6
  %13 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #11
  br label %16

14:                                               ; preds = %11
  %15 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #11
  br label %28

16:                                               ; preds = %9, %12
  %17 = phi { ptr, i32 } [ %13, %12 ], [ %10, %9 ]
  call void @__cxa_free_exception(ptr %7) #11
  br label %28

18:                                               ; preds = %1
  store i8 1, ptr %3, align 8, !tbaa !49
  %19 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 1
  %20 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef null) #9
  %21 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 2
  store i32 0, ptr %21, align 8, !tbaa !38
  %22 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 3
  %23 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %22, ptr noundef null) #9
  %24 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 4
  store i32 0, ptr %24, align 8, !tbaa !47
  %25 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 5
  store i8 1, ptr %25, align 4, !tbaa !48
  %26 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 8
  %27 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %26, ptr noundef null) #9
  ret void

28:                                               ; preds = %14, %16
  %29 = phi { ptr, i32 } [ %15, %14 ], [ %17, %16 ]
  resume { ptr, i32 } %29

30:                                               ; preds = %11
  unreachable
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79RangeImpl10selectNodeERKNS_8DOM_NodeE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = alloca %"class.xercesc_2_7::DOMString", align 8
  %4 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %5 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %6 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  tail call void @_ZNK11xercesc_2_79RangeImpl12validateNodeERKNS_8DOM_NodeE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #9
  %7 = tail call noundef zeroext i1 @_ZNK11xercesc_2_79RangeImpl20isLegalContainedNodeERKNS_8DOM_NodeE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %1) #9
  br i1 %7, label %20, label %8

8:                                                ; preds = %2
  %9 = tail call ptr @__cxa_allocate_exception(i64 32) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 0) #9
          to label %10 unwind label %14

10:                                               ; preds = %8
  invoke void @_ZN11xercesc_2_718DOM_RangeExceptionC1ENS0_18RangeExceptionCodeERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(28) %9, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(8) %3) #9
          to label %13 unwind label %11

11:                                               ; preds = %10
  %12 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  br label %18

13:                                               ; preds = %10
  invoke void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTIN11xercesc_2_718DOM_RangeExceptionE, ptr nonnull @_ZN11xercesc_2_718DOM_RangeExceptionD1Ev) #12
          to label %78 unwind label %16

14:                                               ; preds = %8
  %15 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  br label %18

16:                                               ; preds = %13
  %17 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  br label %76

18:                                               ; preds = %11, %14
  %19 = phi { ptr, i32 } [ %15, %14 ], [ %12, %11 ]
  call void @__cxa_free_exception(ptr %9) #11
  br label %76

20:                                               ; preds = %2
  %21 = tail call noundef signext i16 @_ZNK11xercesc_2_78DOM_Node11getNodeTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #9
  %22 = icmp eq i16 %21, 3
  br i1 %22, label %23, label %31

23:                                               ; preds = %20
  %24 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 1
  %25 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef nonnull align 8 dereferenceable(8) %1) #9
  %26 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 3
  %27 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %26, ptr noundef nonnull align 8 dereferenceable(8) %1) #9
  %28 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 2
  store i32 0, ptr %28, align 8, !tbaa !38
  %29 = tail call noundef i32 @_ZNK11xercesc_2_717DOM_CharacterData9getLengthEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #9
  %30 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 4
  store i32 %29, ptr %30, align 8, !tbaa !47
  br label %73

31:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  call void @_ZNK11xercesc_2_78DOM_Node13getParentNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %1) #9
  %32 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef null) #9
          to label %33 unwind label %51

33:                                               ; preds = %31
  br i1 %32, label %34, label %72

34:                                               ; preds = %33
  %35 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 1
  %36 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %35, ptr noundef nonnull align 8 dereferenceable(8) %4) #9
          to label %37 unwind label %51

37:                                               ; preds = %34
  %38 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 3
  %39 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %38, ptr noundef nonnull align 8 dereferenceable(8) %4) #9
          to label %40 unwind label %51

40:                                               ; preds = %37
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  invoke void @_ZNK11xercesc_2_78DOM_Node13getFirstChildEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %4) #9
          to label %41 unwind label %53

41:                                               ; preds = %40, %61
  %42 = phi i32 [ %58, %61 ], [ 0, %40 ]
  %43 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef null) #9
          to label %44 unwind label %55

44:                                               ; preds = %41
  %45 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %1) #9
          to label %46 unwind label %55

46:                                               ; preds = %44
  br i1 %45, label %57, label %47

47:                                               ; preds = %46
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  %48 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 2
  store i32 %42, ptr %48, align 8, !tbaa !38
  %49 = add i32 %42, 1
  %50 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 4
  store i32 %49, ptr %50, align 8, !tbaa !47
  br label %72

51:                                               ; preds = %37, %34, %31
  %52 = landingpad { ptr, i32 }
          cleanup
  br label %74

53:                                               ; preds = %40
  %54 = landingpad { ptr, i32 }
          cleanup
  br label %70

55:                                               ; preds = %44, %41
  %56 = landingpad { ptr, i32 }
          cleanup
  br label %68

57:                                               ; preds = %46
  %58 = add i32 %42, 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #11
  invoke void @_ZNK11xercesc_2_78DOM_Node14getNextSiblingEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %5) #9
          to label %59 unwind label %62

59:                                               ; preds = %57
  %60 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) #9
          to label %61 unwind label %64

61:                                               ; preds = %59
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  br label %41, !llvm.loop !77

62:                                               ; preds = %57
  %63 = landingpad { ptr, i32 }
          cleanup
  br label %66

64:                                               ; preds = %59
  %65 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #10
  br label %66

66:                                               ; preds = %64, %62
  %67 = phi { ptr, i32 } [ %65, %64 ], [ %63, %62 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  br label %68

68:                                               ; preds = %66, %55
  %69 = phi { ptr, i32 } [ %67, %66 ], [ %56, %55 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #10
  br label %70

70:                                               ; preds = %68, %53
  %71 = phi { ptr, i32 } [ %69, %68 ], [ %54, %53 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  br label %74

72:                                               ; preds = %47, %33
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  br label %73

73:                                               ; preds = %72, %23
  ret void

74:                                               ; preds = %70, %51
  %75 = phi { ptr, i32 } [ %71, %70 ], [ %52, %51 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  br label %76

76:                                               ; preds = %16, %18, %74
  %77 = phi { ptr, i32 } [ %75, %74 ], [ %19, %18 ], [ %17, %16 ]
  resume { ptr, i32 } %77

78:                                               ; preds = %13
  unreachable
}

; Function Attrs: optsize
declare noundef signext i16 @_ZNK11xercesc_2_78DOM_Node11getNodeTypeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef i32 @_ZNK11xercesc_2_717DOM_CharacterData9getLengthEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK11xercesc_2_78DOM_Node13getFirstChildEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_Node") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK11xercesc_2_78DOM_Node14getNextSiblingEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_Node") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79RangeImpl18selectNodeContentsERKNS_8DOM_NodeE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %4 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %5 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  tail call void @_ZNK11xercesc_2_79RangeImpl12validateNodeERKNS_8DOM_NodeE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #9
  %6 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 1
  %7 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %1) #9
  %8 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 3
  %9 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %1) #9
  %10 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 2
  store i32 0, ptr %10, align 8, !tbaa !38
  %11 = tail call noundef signext i16 @_ZNK11xercesc_2_78DOM_Node11getNodeTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #9
  %12 = icmp eq i16 %11, 3
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = tail call noundef i32 @_ZNK11xercesc_2_717DOM_CharacterData9getLengthEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #9
  %15 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 4
  store i32 %14, ptr %15, align 8, !tbaa !47
  br label %49

16:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  call void @_ZNK11xercesc_2_78DOM_Node13getFirstChildEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %1) #9
  %17 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeeqEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef null) #9
          to label %18 unwind label %19

18:                                               ; preds = %16
  br i1 %17, label %46, label %21

19:                                               ; preds = %16
  %20 = landingpad { ptr, i32 }
          cleanup
  br label %50

21:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %3) #9
          to label %22 unwind label %27

22:                                               ; preds = %21, %35
  %23 = phi i32 [ %32, %35 ], [ 0, %21 ]
  %24 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef null) #9
          to label %25 unwind label %29

25:                                               ; preds = %22
  br i1 %24, label %31, label %26

26:                                               ; preds = %25
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
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
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  invoke void @_ZNK11xercesc_2_78DOM_Node14getNextSiblingEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %4) #9
          to label %33 unwind label %36

33:                                               ; preds = %31
  %34 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #9
          to label %35 unwind label %38

35:                                               ; preds = %33
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  br label %22, !llvm.loop !78

36:                                               ; preds = %31
  %37 = landingpad { ptr, i32 }
          cleanup
  br label %40

38:                                               ; preds = %33
  %39 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #10
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi { ptr, i32 } [ %39, %38 ], [ %37, %36 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  br label %42

42:                                               ; preds = %40, %29
  %43 = phi { ptr, i32 } [ %41, %40 ], [ %30, %29 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #10
  br label %44

44:                                               ; preds = %42, %27
  %45 = phi { ptr, i32 } [ %43, %42 ], [ %28, %27 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  br label %50

46:                                               ; preds = %18, %26
  %47 = phi i32 [ %23, %26 ], [ 0, %18 ]
  %48 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 4
  store i32 %47, ptr %48, align 8, !tbaa !47
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  br label %49

49:                                               ; preds = %46, %13
  ret void

50:                                               ; preds = %44, %19
  %51 = phi { ptr, i32 } [ %45, %44 ], [ %20, %19 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  resume { ptr, i32 } %51
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeeqEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
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
  %15 = tail call noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeeqEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef null) #9
  br i1 %15, label %125, label %16

16:                                               ; preds = %2
  %17 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 7
  %18 = load i8, ptr %17, align 8, !tbaa !49, !range !50, !noundef !51
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %32, label %20

20:                                               ; preds = %16
  %21 = tail call ptr @__cxa_allocate_exception(i64 24) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 0) #9
          to label %22 unwind label %26

22:                                               ; preds = %20
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %21, i16 noundef signext 11, ptr noundef nonnull align 8 dereferenceable(8) %3) #9
          to label %25 unwind label %23

23:                                               ; preds = %22
  %24 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  br label %30

25:                                               ; preds = %22
  invoke void @__cxa_throw(ptr nonnull %21, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #12
          to label %140 unwind label %28

26:                                               ; preds = %20
  %27 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  br label %30

28:                                               ; preds = %25
  %29 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  br label %138

30:                                               ; preds = %23, %26
  %31 = phi { ptr, i32 } [ %27, %26 ], [ %24, %23 ]
  call void @__cxa_free_exception(ptr %21) #11
  br label %138

32:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  call void @_ZNK11xercesc_2_78DOM_Node16getOwnerDocumentEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Document") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %1) #9
  %33 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 6
  %34 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %33) #9
          to label %35 unwind label %42

35:                                               ; preds = %32
  call void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  br i1 %34, label %36, label %50

36:                                               ; preds = %35
  %37 = call ptr @__cxa_allocate_exception(i64 24) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef 0) #9
          to label %38 unwind label %44

38:                                               ; preds = %36
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %37, i16 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(8) %5) #9
          to label %41 unwind label %39

39:                                               ; preds = %38
  %40 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  br label %48

41:                                               ; preds = %38
  invoke void @__cxa_throw(ptr nonnull %37, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #12
          to label %140 unwind label %46

42:                                               ; preds = %32
  %43 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  br label %138

44:                                               ; preds = %36
  %45 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  br label %48

46:                                               ; preds = %41
  %47 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  br label %138

48:                                               ; preds = %39, %44
  %49 = phi { ptr, i32 } [ %45, %44 ], [ %40, %39 ]
  call void @__cxa_free_exception(ptr %37) #11
  br label %138

50:                                               ; preds = %35
  %51 = call noundef signext i16 @_ZNK11xercesc_2_78DOM_Node11getNodeTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #9
  %52 = call noundef zeroext i1 @_ZNK11xercesc_2_79RangeImpl20isLegalContainedNodeERKNS_8DOM_NodeE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %1) #9
  %53 = icmp ne i16 %51, 10
  %54 = and i1 %53, %52
  br i1 %54, label %67, label %55

55:                                               ; preds = %50
  %56 = call ptr @__cxa_allocate_exception(i64 32) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #11
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 0) #9
          to label %57 unwind label %61

57:                                               ; preds = %55
  invoke void @_ZN11xercesc_2_718DOM_RangeExceptionC1ENS0_18RangeExceptionCodeERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(28) %56, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(8) %6) #9
          to label %60 unwind label %58

58:                                               ; preds = %57
  %59 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  br label %65

60:                                               ; preds = %57
  invoke void @__cxa_throw(ptr nonnull %56, ptr nonnull @_ZTIN11xercesc_2_718DOM_RangeExceptionE, ptr nonnull @_ZN11xercesc_2_718DOM_RangeExceptionD1Ev) #12
          to label %140 unwind label %63

61:                                               ; preds = %55
  %62 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  br label %65

63:                                               ; preds = %60
  %64 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  br label %138

65:                                               ; preds = %58, %61
  %66 = phi { ptr, i32 } [ %62, %61 ], [ %59, %58 ]
  call void @__cxa_free_exception(ptr %56) #11
  br label %138

67:                                               ; preds = %50
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #11
  call void @_ZNK11xercesc_2_79RangeImpl26getCommonAncestorContainerEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %7, ptr noundef nonnull align 8 dereferenceable(72) %0) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #11
  %68 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 1
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %68) #9
          to label %69 unwind label %79

69:                                               ; preds = %67
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #11
  %70 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 3
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %70) #9
          to label %71 unwind label %81

71:                                               ; preds = %69
  %72 = invoke noundef signext i16 @_ZNK11xercesc_2_78DOM_Node11getNodeTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %68) #9
          to label %73 unwind label %83

73:                                               ; preds = %71
  %74 = icmp eq i16 %72, 3
  br i1 %74, label %75, label %91

75:                                               ; preds = %73
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #11
  invoke void @_ZNK11xercesc_2_78DOM_Node13getParentNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %68) #9
          to label %76 unwind label %85

76:                                               ; preds = %75
  %77 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %10) #9
          to label %78 unwind label %87

78:                                               ; preds = %76
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #11
  br label %91

79:                                               ; preds = %67
  %80 = landingpad { ptr, i32 }
          cleanup
  br label %136

81:                                               ; preds = %69
  %82 = landingpad { ptr, i32 }
          cleanup
  br label %134

83:                                               ; preds = %105, %91, %71
  %84 = landingpad { ptr, i32 }
          cleanup
  br label %132

85:                                               ; preds = %75
  %86 = landingpad { ptr, i32 }
          cleanup
  br label %89

87:                                               ; preds = %76
  %88 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #10
  br label %89

89:                                               ; preds = %87, %85
  %90 = phi { ptr, i32 } [ %88, %87 ], [ %86, %85 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #11
  br label %132

91:                                               ; preds = %78, %73
  %92 = invoke noundef signext i16 @_ZNK11xercesc_2_78DOM_Node11getNodeTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %70) #9
          to label %93 unwind label %83

93:                                               ; preds = %91
  %94 = icmp eq i16 %92, 3
  br i1 %94, label %95, label %105

95:                                               ; preds = %93
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #11
  invoke void @_ZNK11xercesc_2_78DOM_Node13getParentNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %11, ptr noundef nonnull align 8 dereferenceable(8) %70) #9
          to label %96 unwind label %99

96:                                               ; preds = %95
  %97 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %11) #9
          to label %98 unwind label %101

98:                                               ; preds = %96
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #11
  br label %105

99:                                               ; preds = %95
  %100 = landingpad { ptr, i32 }
          cleanup
  br label %103

101:                                              ; preds = %96
  %102 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #10
  br label %103

103:                                              ; preds = %101, %99
  %104 = phi { ptr, i32 } [ %102, %101 ], [ %100, %99 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #11
  br label %132

105:                                              ; preds = %98, %93
  %106 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %9) #9
          to label %107 unwind label %83

107:                                              ; preds = %105
  br i1 %106, label %108, label %120

108:                                              ; preds = %107
  %109 = call ptr @__cxa_allocate_exception(i64 32) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #11
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %12, i32 noundef 0) #9
          to label %110 unwind label %114

110:                                              ; preds = %108
  invoke void @_ZN11xercesc_2_718DOM_RangeExceptionC1ENS0_18RangeExceptionCodeERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(28) %109, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(8) %12) #9
          to label %113 unwind label %111

111:                                              ; preds = %110
  %112 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #11
  br label %118

113:                                              ; preds = %110
  invoke void @__cxa_throw(ptr nonnull %109, ptr nonnull @_ZTIN11xercesc_2_718DOM_RangeExceptionE, ptr nonnull @_ZN11xercesc_2_718DOM_RangeExceptionD1Ev) #12
          to label %140 unwind label %116

114:                                              ; preds = %108
  %115 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #11
  br label %118

116:                                              ; preds = %113
  %117 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #11
  br label %132

118:                                              ; preds = %111, %114
  %119 = phi { ptr, i32 } [ %115, %114 ], [ %112, %111 ]
  call void @__cxa_free_exception(ptr %109) #11
  br label %132

120:                                              ; preds = %107
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #11
  invoke void @_ZN11xercesc_2_79RangeImpl15extractContentsEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_DocumentFragment") align 8 %13, ptr noundef nonnull align 8 dereferenceable(72) %0) #9
          to label %121 unwind label %126

121:                                              ; preds = %120
  invoke void @_ZN11xercesc_2_79RangeImpl10insertNodeERNS_8DOM_NodeE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #9
          to label %122 unwind label %128

122:                                              ; preds = %121
  invoke void @_ZN11xercesc_2_78DOM_Node11appendChildERKS0_(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %14, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %13) #9
          to label %123 unwind label %128

123:                                              ; preds = %122
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14) #10
  invoke void @_ZN11xercesc_2_79RangeImpl10selectNodeERKNS_8DOM_NodeE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #9
          to label %124 unwind label %128

124:                                              ; preds = %123
  call void @_ZN11xercesc_2_720DOM_DocumentFragmentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #11
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #11
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #11
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #11
  br label %125

125:                                              ; preds = %2, %124
  ret void

126:                                              ; preds = %120
  %127 = landingpad { ptr, i32 }
          cleanup
  br label %130

128:                                              ; preds = %123, %122, %121
  %129 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_720DOM_DocumentFragmentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13) #10
  br label %130

130:                                              ; preds = %128, %126
  %131 = phi { ptr, i32 } [ %129, %128 ], [ %127, %126 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #11
  br label %132

132:                                              ; preds = %116, %118, %130, %103, %89, %83
  %133 = phi { ptr, i32 } [ %119, %118 ], [ %117, %116 ], [ %131, %130 ], [ %84, %83 ], [ %104, %103 ], [ %90, %89 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #10
  br label %134

134:                                              ; preds = %132, %81
  %135 = phi { ptr, i32 } [ %133, %132 ], [ %82, %81 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #11
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #10
  br label %136

136:                                              ; preds = %134, %79
  %137 = phi { ptr, i32 } [ %135, %134 ], [ %80, %79 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #11
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #11
  br label %138

138:                                              ; preds = %63, %46, %28, %136, %65, %48, %30, %42
  %139 = phi { ptr, i32 } [ %31, %30 ], [ %29, %28 ], [ %49, %48 ], [ %47, %46 ], [ %43, %42 ], [ %66, %65 ], [ %64, %63 ], [ %137, %136 ]
  resume { ptr, i32 } %139

140:                                              ; preds = %113, %60, %41, %25
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xercesc_2_79RangeImpl26getCommonAncestorContainerEv(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1) local_unnamed_addr #0 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %1, i64 0, i32 1
  %4 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %1, i64 0, i32 3
  tail call void @_ZNK11xercesc_2_79RangeImpl16commonAncestorOfERKNS_8DOM_NodeES3_(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #9
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79RangeImpl15extractContentsEv(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOM_DocumentFragment") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1) local_unnamed_addr #0 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %1, i64 0, i32 1
  %4 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %1, i64 0, i32 3
  %5 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %1, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !38
  %7 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %1, i64 0, i32 4
  %8 = load i32, ptr %7, align 8, !tbaa !47
  tail call void @_ZN11xercesc_2_79RangeImpl13checkReadOnlyERNS_8DOM_NodeES2_jj(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %6, i32 noundef %8) #9
  tail call void @_ZN11xercesc_2_79RangeImpl16traverseContentsENS0_13TraversalTypeE(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_DocumentFragment") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef 1) #9
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
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
  %20 = tail call noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeeqEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef null) #9
  br i1 %20, label %200, label %21

21:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  %22 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 1
  call void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %22) #9
  br label %23

23:                                               ; preds = %49, %21
  %24 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef null) #9
          to label %25 unwind label %29

25:                                               ; preds = %23
  br i1 %24, label %31, label %26

26:                                               ; preds = %25
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  %27 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #11
  call void @_ZNK11xercesc_2_78DOM_Node16getOwnerDocumentEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Document") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %1) #9
  %28 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull align 8 dereferenceable(8) %6) #9
          to label %58 unwind label %65

29:                                               ; preds = %23
  %30 = landingpad { ptr, i32 }
          cleanup
  br label %56

31:                                               ; preds = %25
  %32 = load ptr, ptr %3, align 8, !tbaa !52
  %33 = call noundef zeroext i1 @_ZNK11xercesc_2_78NodeImpl10isReadOnlyEv(ptr noundef nonnull align 8 dereferenceable(26) %32) #9
  br i1 %33, label %34, label %46

34:                                               ; preds = %31
  %35 = call ptr @__cxa_allocate_exception(i64 24) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 0) #9
          to label %36 unwind label %40

36:                                               ; preds = %34
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %35, i16 noundef signext 7, ptr noundef nonnull align 8 dereferenceable(8) %4) #9
          to label %39 unwind label %37

37:                                               ; preds = %36
  %38 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  br label %44

39:                                               ; preds = %36
  invoke void @__cxa_throw(ptr nonnull %35, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #12
          to label %207 unwind label %42

40:                                               ; preds = %34
  %41 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  br label %44

42:                                               ; preds = %39
  %43 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  br label %56

44:                                               ; preds = %37, %40
  %45 = phi { ptr, i32 } [ %41, %40 ], [ %38, %37 ]
  call void @__cxa_free_exception(ptr %35) #11
  br label %56

46:                                               ; preds = %31
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  invoke void @_ZNK11xercesc_2_78DOM_Node13getParentNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %3) #9
          to label %47 unwind label %50

47:                                               ; preds = %46
  %48 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %5) #9
          to label %49 unwind label %52

49:                                               ; preds = %47
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  br label %23, !llvm.loop !79

50:                                               ; preds = %46
  %51 = landingpad { ptr, i32 }
          cleanup
  br label %54

52:                                               ; preds = %47
  %53 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #10
  br label %54

54:                                               ; preds = %52, %50
  %55 = phi { ptr, i32 } [ %53, %52 ], [ %51, %50 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  br label %56

56:                                               ; preds = %42, %44, %54, %29
  %57 = phi { ptr, i32 } [ %45, %44 ], [ %43, %42 ], [ %55, %54 ], [ %30, %29 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  br label %205

58:                                               ; preds = %26
  call void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  br i1 %28, label %59, label %73

59:                                               ; preds = %58
  %60 = call ptr @__cxa_allocate_exception(i64 24) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #11
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef 0) #9
          to label %61 unwind label %67

61:                                               ; preds = %59
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %60, i16 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(8) %7) #9
          to label %64 unwind label %62

62:                                               ; preds = %61
  %63 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #11
  br label %71

64:                                               ; preds = %61
  invoke void @__cxa_throw(ptr nonnull %60, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #12
          to label %207 unwind label %69

65:                                               ; preds = %26
  %66 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  br label %205

67:                                               ; preds = %59
  %68 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #11
  br label %71

69:                                               ; preds = %64
  %70 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #11
  br label %205

71:                                               ; preds = %62, %67
  %72 = phi { ptr, i32 } [ %68, %67 ], [ %63, %62 ]
  call void @__cxa_free_exception(ptr %60) #11
  br label %205

73:                                               ; preds = %58
  %74 = call noundef zeroext i1 @_ZN11xercesc_2_79RangeImpl12isAncestorOfERKNS_8DOM_NodeES3_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %22) #9
  br i1 %74, label %75, label %87

75:                                               ; preds = %73
  %76 = call ptr @__cxa_allocate_exception(i64 24) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #11
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef 0) #9
          to label %77 unwind label %81

77:                                               ; preds = %75
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %76, i16 noundef signext 3, ptr noundef nonnull align 8 dereferenceable(8) %8) #9
          to label %80 unwind label %78

78:                                               ; preds = %77
  %79 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #11
  br label %85

80:                                               ; preds = %77
  invoke void @__cxa_throw(ptr nonnull %76, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #12
          to label %207 unwind label %83

81:                                               ; preds = %75
  %82 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #11
  br label %85

83:                                               ; preds = %80
  %84 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #11
  br label %205

85:                                               ; preds = %78, %81
  %86 = phi { ptr, i32 } [ %82, %81 ], [ %79, %78 ]
  call void @__cxa_free_exception(ptr %76) #11
  br label %205

87:                                               ; preds = %73
  %88 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 7
  %89 = load i8, ptr %88, align 8, !tbaa !49, !range !50, !noundef !51
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %103, label %91

91:                                               ; preds = %87
  %92 = call ptr @__cxa_allocate_exception(i64 24) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #11
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %9, i32 noundef 0) #9
          to label %93 unwind label %97

93:                                               ; preds = %91
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %92, i16 noundef signext 11, ptr noundef nonnull align 8 dereferenceable(8) %9) #9
          to label %96 unwind label %94

94:                                               ; preds = %93
  %95 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #11
  br label %101

96:                                               ; preds = %93
  invoke void @__cxa_throw(ptr nonnull %92, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #12
          to label %207 unwind label %99

97:                                               ; preds = %91
  %98 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #11
  br label %101

99:                                               ; preds = %96
  %100 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #11
  br label %205

101:                                              ; preds = %94, %97
  %102 = phi { ptr, i32 } [ %98, %97 ], [ %95, %94 ]
  call void @__cxa_free_exception(ptr %92) #11
  br label %205

103:                                              ; preds = %87
  %104 = call noundef signext i16 @_ZNK11xercesc_2_78DOM_Node11getNodeTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #9
  switch i16 %104, label %117 [
    i16 12, label %105
    i16 9, label %105
    i16 6, label %105
    i16 2, label %105
  ]

105:                                              ; preds = %103, %103, %103, %103
  %106 = call ptr @__cxa_allocate_exception(i64 32) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #11
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %10, i32 noundef 0) #9
          to label %107 unwind label %111

107:                                              ; preds = %105
  invoke void @_ZN11xercesc_2_718DOM_RangeExceptionC1ENS0_18RangeExceptionCodeERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(28) %106, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(8) %10) #9
          to label %110 unwind label %108

108:                                              ; preds = %107
  %109 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #11
  br label %115

110:                                              ; preds = %107
  invoke void @__cxa_throw(ptr nonnull %106, ptr nonnull @_ZTIN11xercesc_2_718DOM_RangeExceptionE, ptr nonnull @_ZN11xercesc_2_718DOM_RangeExceptionD1Ev) #12
          to label %207 unwind label %113

111:                                              ; preds = %105
  %112 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #11
  br label %115

113:                                              ; preds = %110
  %114 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #11
  br label %205

115:                                              ; preds = %108, %111
  %116 = phi { ptr, i32 } [ %112, %111 ], [ %109, %108 ]
  call void @__cxa_free_exception(ptr %106) #11
  br label %205

117:                                              ; preds = %103
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #11
  call void @_ZN11xercesc_2_78DOM_NodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #11
  invoke void @_ZN11xercesc_2_78DOM_NodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12) #9
          to label %118 unwind label %130

118:                                              ; preds = %117
  %119 = invoke noundef signext i16 @_ZNK11xercesc_2_78DOM_Node11getNodeTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %22) #9
          to label %120 unwind label %132

120:                                              ; preds = %118
  %121 = icmp eq i16 %119, 3
  br i1 %121, label %122, label %155

122:                                              ; preds = %120
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #11
  invoke void @_ZNK11xercesc_2_78DOM_Node13getParentNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %13, ptr noundef nonnull align 8 dereferenceable(8) %22) #9
          to label %123 unwind label %134

123:                                              ; preds = %122
  %124 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %13) #9
          to label %125 unwind label %136

125:                                              ; preds = %123
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #11
  %126 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 2
  %127 = load i32, ptr %126, align 8, !tbaa !38
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %143, label %129

129:                                              ; preds = %125
  invoke void @_ZN11xercesc_2_78DOM_Text9splitTextEj(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Text") align 8 %14, ptr noundef nonnull align 8 dereferenceable(8) %22, i32 noundef %127) #9
          to label %140 unwind label %132

130:                                              ; preds = %117
  %131 = landingpad { ptr, i32 }
          cleanup
  br label %203

132:                                              ; preds = %196, %195, %192, %189, %155, %143, %129, %118
  %133 = landingpad { ptr, i32 }
          cleanup
  br label %201

134:                                              ; preds = %122
  %135 = landingpad { ptr, i32 }
          cleanup
  br label %138

136:                                              ; preds = %123
  %137 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13) #10
  br label %138

138:                                              ; preds = %136, %134
  %139 = phi { ptr, i32 } [ %137, %136 ], [ %135, %134 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #11
  br label %201

140:                                              ; preds = %129
  call void @_ZN11xercesc_2_78DOM_TextD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14) #10
  %141 = load i32, ptr %126, align 8, !tbaa !38
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %125, %140
  %144 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %22) #9
          to label %189 unwind label %132

145:                                              ; preds = %140
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #11
  invoke void @_ZNK11xercesc_2_78DOM_Node14getNextSiblingEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %15, ptr noundef nonnull align 8 dereferenceable(8) %22) #9
          to label %146 unwind label %149

146:                                              ; preds = %145
  %147 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %15) #9
          to label %148 unwind label %151

148:                                              ; preds = %146
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %15) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #11
  br label %189

149:                                              ; preds = %145
  %150 = landingpad { ptr, i32 }
          cleanup
  br label %153

151:                                              ; preds = %146
  %152 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %15) #10
  br label %153

153:                                              ; preds = %151, %149
  %154 = phi { ptr, i32 } [ %152, %151 ], [ %150, %149 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #11
  br label %201

155:                                              ; preds = %120
  %156 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %22) #9
          to label %157 unwind label %132

157:                                              ; preds = %155
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #11
  invoke void @_ZNK11xercesc_2_78DOM_Node13getFirstChildEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %16, ptr noundef nonnull align 8 dereferenceable(8) %22) #9
          to label %158 unwind label %168

158:                                              ; preds = %157
  %159 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %16) #9
          to label %160 unwind label %170

160:                                              ; preds = %158
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %16) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #11
  %161 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 2
  %162 = load i32, ptr %161, align 8, !tbaa !38
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %189, label %164

164:                                              ; preds = %160, %179
  %165 = phi i32 [ %180, %179 ], [ 0, %160 ]
  %166 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef null) #9
          to label %167 unwind label %174

167:                                              ; preds = %164
  br i1 %166, label %176, label %189

168:                                              ; preds = %157
  %169 = landingpad { ptr, i32 }
          cleanup
  br label %172

170:                                              ; preds = %158
  %171 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %16) #10
  br label %172

172:                                              ; preds = %170, %168
  %173 = phi { ptr, i32 } [ %171, %170 ], [ %169, %168 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #11
  br label %201

174:                                              ; preds = %164
  %175 = landingpad { ptr, i32 }
          cleanup
  br label %201

176:                                              ; preds = %167
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #11
  invoke void @_ZNK11xercesc_2_78DOM_Node14getNextSiblingEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %17, ptr noundef nonnull align 8 dereferenceable(8) %12) #9
          to label %177 unwind label %183

177:                                              ; preds = %176
  %178 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %17) #9
          to label %179 unwind label %185

179:                                              ; preds = %177
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %17) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #11
  %180 = add nuw i32 %165, 1
  %181 = load i32, ptr %161, align 8, !tbaa !38
  %182 = icmp ult i32 %180, %181
  br i1 %182, label %164, label %189, !llvm.loop !80

183:                                              ; preds = %176
  %184 = landingpad { ptr, i32 }
          cleanup
  br label %187

185:                                              ; preds = %177
  %186 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %17) #10
  br label %187

187:                                              ; preds = %185, %183
  %188 = phi { ptr, i32 } [ %186, %185 ], [ %184, %183 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #11
  br label %201

189:                                              ; preds = %179, %167, %160, %148, %143
  %190 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef null) #9
          to label %191 unwind label %132

191:                                              ; preds = %189
  br i1 %190, label %192, label %199

192:                                              ; preds = %191
  %193 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef null) #9
          to label %194 unwind label %132

194:                                              ; preds = %192
  br i1 %193, label %195, label %196

195:                                              ; preds = %194
  invoke void @_ZN11xercesc_2_78DOM_Node12insertBeforeERKS0_S2_(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %18, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %12) #9
          to label %197 unwind label %132

196:                                              ; preds = %194
  invoke void @_ZN11xercesc_2_78DOM_Node11appendChildERKS0_(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %19, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %1) #9
          to label %197 unwind label %132

197:                                              ; preds = %196, %195
  %198 = phi ptr [ %18, %195 ], [ %19, %196 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %198) #10
  br label %199

199:                                              ; preds = %197, %191
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #11
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #11
  br label %200

200:                                              ; preds = %2, %199
  ret void

201:                                              ; preds = %174, %187, %172, %153, %138, %132
  %202 = phi { ptr, i32 } [ %133, %132 ], [ %154, %153 ], [ %139, %138 ], [ %173, %172 ], [ %188, %187 ], [ %175, %174 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12) #10
  br label %203

203:                                              ; preds = %201, %130
  %204 = phi { ptr, i32 } [ %202, %201 ], [ %131, %130 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #11
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #11
  br label %205

205:                                              ; preds = %113, %99, %83, %69, %203, %115, %101, %85, %71, %65, %56
  %206 = phi { ptr, i32 } [ %57, %56 ], [ %72, %71 ], [ %70, %69 ], [ %86, %85 ], [ %84, %83 ], [ %102, %101 ], [ %100, %99 ], [ %66, %65 ], [ %116, %115 ], [ %114, %113 ], [ %204, %203 ]
  resume { ptr, i32 } %206

207:                                              ; preds = %110, %96, %80, %64, %39
  unreachable
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78DOM_Node11appendChildERKS0_(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_Node") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_720DOM_DocumentFragmentD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_79RangeImpl12isAncestorOfERKNS_8DOM_NodeES3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %4 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  call void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %1) #9
  br label %5

5:                                                ; preds = %16, %2
  %6 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef null) #9
          to label %7 unwind label %8

7:                                                ; preds = %5
  br i1 %6, label %10, label %23

8:                                                ; preds = %10, %5
  %9 = landingpad { ptr, i32 }
          cleanup
  br label %24

10:                                               ; preds = %7
  %11 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeeqERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %0) #9
          to label %12 unwind label %8

12:                                               ; preds = %10
  br i1 %11, label %23, label %13

13:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  invoke void @_ZNK11xercesc_2_78DOM_Node13getParentNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %3) #9
          to label %14 unwind label %17

14:                                               ; preds = %13
  %15 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #9
          to label %16 unwind label %19

16:                                               ; preds = %14
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  br label %5, !llvm.loop !81

17:                                               ; preds = %13
  %18 = landingpad { ptr, i32 }
          cleanup
  br label %21

19:                                               ; preds = %14
  %20 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #10
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi { ptr, i32 } [ %20, %19 ], [ %18, %17 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  br label %24

23:                                               ; preds = %12, %7
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  ret i1 %6

24:                                               ; preds = %21, %8
  %25 = phi { ptr, i32 } [ %22, %21 ], [ %9, %8 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  resume { ptr, i32 } %25
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i16 @_ZNK11xercesc_2_79RangeImpl7indexOfERKNS_8DOM_NodeES3_(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %4 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %5 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %6 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  call void @_ZNK11xercesc_2_78DOM_Node13getParentNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %1) #9
  %7 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %2) #9
          to label %8 unwind label %9

8:                                                ; preds = %3
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  br i1 %7, label %32, label %11

9:                                                ; preds = %3
  %10 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  br label %34

11:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  call void @_ZNK11xercesc_2_78DOM_Node18getPreviousSiblingEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %1) #9
  br label %12

12:                                               ; preds = %23, %11
  %13 = phi i16 [ 0, %11 ], [ %20, %23 ]
  %14 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef null) #9
          to label %15 unwind label %17

15:                                               ; preds = %12
  br i1 %14, label %19, label %16

16:                                               ; preds = %15
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  br label %32

17:                                               ; preds = %12
  %18 = landingpad { ptr, i32 }
          cleanup
  br label %30

19:                                               ; preds = %15
  %20 = add i16 %13, 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #11
  invoke void @_ZNK11xercesc_2_78DOM_Node18getPreviousSiblingEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %5) #9
          to label %21 unwind label %24

21:                                               ; preds = %19
  %22 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) #9
          to label %23 unwind label %26

23:                                               ; preds = %21
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  br label %12, !llvm.loop !82

24:                                               ; preds = %19
  %25 = landingpad { ptr, i32 }
          cleanup
  br label %28

26:                                               ; preds = %21
  %27 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #10
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi { ptr, i32 } [ %27, %26 ], [ %25, %24 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  br label %30

30:                                               ; preds = %28, %17
  %31 = phi { ptr, i32 } [ %29, %28 ], [ %18, %17 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  br label %34

32:                                               ; preds = %8, %16
  %33 = phi i16 [ %13, %16 ], [ -1, %8 ]
  ret i16 %33

34:                                               ; preds = %30, %9
  %35 = phi { ptr, i32 } [ %31, %30 ], [ %10, %9 ]
  resume { ptr, i32 } %35
}

; Function Attrs: mustprogress noinline optsize uwtable
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
  br i1 %14, label %27, label %15

15:                                               ; preds = %4
  %16 = tail call ptr @__cxa_allocate_exception(i64 24) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef 0) #9
          to label %17 unwind label %21

17:                                               ; preds = %15
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %16, i16 noundef signext 11, ptr noundef nonnull align 8 dereferenceable(8) %5) #9
          to label %20 unwind label %18

18:                                               ; preds = %17
  %19 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  br label %25

20:                                               ; preds = %17
  invoke void @__cxa_throw(ptr nonnull %16, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #12
          to label %156 unwind label %23

21:                                               ; preds = %15
  %22 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  br label %25

23:                                               ; preds = %20
  %24 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  br label %154

25:                                               ; preds = %18, %21
  %26 = phi { ptr, i32 } [ %22, %21 ], [ %19, %18 ]
  call void @__cxa_free_exception(ptr %16) #11
  br label %154

27:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #11
  call void @_ZNK11xercesc_2_78DOM_Node16getOwnerDocumentEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Document") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %2) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #11
  invoke void @_ZNK11xercesc_2_78DOM_Node16getOwnerDocumentEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Document") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %3) #9
          to label %28 unwind label %37

28:                                               ; preds = %27
  %29 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7) #9
          to label %30 unwind label %39

30:                                               ; preds = %28
  call void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #11
  call void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  br i1 %29, label %31, label %49

31:                                               ; preds = %30
  %32 = call ptr @__cxa_allocate_exception(i64 24) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #11
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef 0) #9
          to label %33 unwind label %43

33:                                               ; preds = %31
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %32, i16 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(8) %8) #9
          to label %36 unwind label %34

34:                                               ; preds = %33
  %35 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #11
  br label %47

36:                                               ; preds = %33
  invoke void @__cxa_throw(ptr nonnull %32, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #12
          to label %156 unwind label %45

37:                                               ; preds = %27
  %38 = landingpad { ptr, i32 }
          cleanup
  br label %41

39:                                               ; preds = %28
  %40 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #10
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi { ptr, i32 } [ %40, %39 ], [ %38, %37 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #11
  call void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  br label %154

43:                                               ; preds = %31
  %44 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #11
  br label %47

45:                                               ; preds = %36
  %46 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #11
  br label %154

47:                                               ; preds = %34, %43
  %48 = phi { ptr, i32 } [ %44, %43 ], [ %35, %34 ]
  call void @__cxa_free_exception(ptr %32) #11
  br label %154

49:                                               ; preds = %30
  %50 = call noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeeqERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #9
  br i1 %50, label %51, label %52

51:                                               ; preds = %49
  call void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %2) #9
  br label %153

52:                                               ; preds = %49
  %53 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %1, i64 0, i32 6
  %54 = load ptr, ptr %53, align 8, !tbaa !52
  %55 = call noundef ptr @_ZNK11xercesc_2_712DocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(168) %54) #9
  %56 = call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %55) #9
  %57 = load ptr, ptr %53, align 8, !tbaa !52
  %58 = call noundef ptr @_ZNK11xercesc_2_712DocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(168) %57) #9
  invoke void @_ZN11xercesc_2_711RefVectorOfINS_8NodeImplEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %56, i32 noundef 1, i1 noundef zeroext false, ptr noundef %58) #9
          to label %59 unwind label %71

59:                                               ; preds = %52
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #11
  call void @_ZN11xercesc_2_78DOM_NodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #9
  %60 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %1, i64 0, i32 1
  %61 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %60) #9
          to label %62 unwind label %75

62:                                               ; preds = %59, %70
  %63 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef null) #9
          to label %64 unwind label %73

64:                                               ; preds = %62
  br i1 %63, label %65, label %83

65:                                               ; preds = %64
  %66 = load ptr, ptr %9, align 8, !tbaa !52
  invoke void @_ZN11xercesc_2_715BaseRefVectorOfINS_8NodeImplEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %56, ptr noundef %66) #9
          to label %67 unwind label %73

67:                                               ; preds = %65
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #11
  invoke void @_ZNK11xercesc_2_78DOM_Node13getParentNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %9) #9
          to label %68 unwind label %77

68:                                               ; preds = %67
  %69 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %10) #9
          to label %70 unwind label %79

70:                                               ; preds = %68
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #11
  br label %62, !llvm.loop !83

71:                                               ; preds = %52
  %72 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %56, ptr noundef %55) #10
  br label %154

73:                                               ; preds = %62, %65
  %74 = landingpad { ptr, i32 }
          cleanup
  br label %151

75:                                               ; preds = %59
  %76 = landingpad { ptr, i32 }
          cleanup
  br label %151

77:                                               ; preds = %67
  %78 = landingpad { ptr, i32 }
          cleanup
  br label %81

79:                                               ; preds = %68
  %80 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #10
  br label %81

81:                                               ; preds = %79, %77
  %82 = phi { ptr, i32 } [ %80, %79 ], [ %78, %77 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #11
  br label %151

83:                                               ; preds = %64
  %84 = load ptr, ptr %53, align 8, !tbaa !52
  %85 = call noundef ptr @_ZNK11xercesc_2_712DocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(168) %84) #9
  %86 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %85) #9
          to label %87 unwind label %104

87:                                               ; preds = %83
  %88 = load ptr, ptr %53, align 8, !tbaa !52
  %89 = call noundef ptr @_ZNK11xercesc_2_712DocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(168) %88) #9
  invoke void @_ZN11xercesc_2_711RefVectorOfINS_8NodeImplEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %86, i32 noundef 1, i1 noundef zeroext false, ptr noundef %89) #9
          to label %90 unwind label %106

90:                                               ; preds = %87
  %91 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %1, i64 0, i32 3
  %92 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %91) #9
          to label %93 unwind label %104

93:                                               ; preds = %90, %101
  %94 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef null) #9
          to label %95 unwind label %102

95:                                               ; preds = %93
  br i1 %94, label %96, label %114

96:                                               ; preds = %95
  %97 = load ptr, ptr %9, align 8, !tbaa !52
  invoke void @_ZN11xercesc_2_715BaseRefVectorOfINS_8NodeImplEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %86, ptr noundef %97) #9
          to label %98 unwind label %102

98:                                               ; preds = %96
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #11
  invoke void @_ZNK11xercesc_2_78DOM_Node13getParentNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %11, ptr noundef nonnull align 8 dereferenceable(8) %9) #9
          to label %99 unwind label %108

99:                                               ; preds = %98
  %100 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %11) #9
          to label %101 unwind label %110

101:                                              ; preds = %99
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #11
  br label %93, !llvm.loop !84

102:                                              ; preds = %93, %96
  %103 = landingpad { ptr, i32 }
          cleanup
  br label %151

104:                                              ; preds = %83, %90
  %105 = landingpad { ptr, i32 }
          cleanup
  br label %151

106:                                              ; preds = %87
  %107 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %86, ptr noundef %85) #10
  br label %151

108:                                              ; preds = %98
  %109 = landingpad { ptr, i32 }
          cleanup
  br label %112

110:                                              ; preds = %99
  %111 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #10
  br label %112

112:                                              ; preds = %110, %108
  %113 = phi { ptr, i32 } [ %111, %110 ], [ %109, %108 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #11
  br label %151

114:                                              ; preds = %95
  %115 = call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_8NodeImplEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %56) #9
  %116 = call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_8NodeImplEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %86) #9
  %117 = add i32 %116, -1
  %118 = add i32 %115, -1
  %119 = or i32 %118, %117
  %120 = icmp sgt i32 %119, -1
  br i1 %120, label %127, label %142

121:                                              ; preds = %136
  %122 = add i32 %129, -1
  %123 = add i32 %128, -1
  %124 = icmp sgt i32 %123, -1
  %125 = icmp sgt i32 %122, -1
  %126 = select i1 %124, i1 %125, i1 false
  br i1 %126, label %127, label %142, !llvm.loop !85

127:                                              ; preds = %114, %121
  %128 = phi i32 [ %123, %121 ], [ %118, %114 ]
  %129 = phi i32 [ %122, %121 ], [ %117, %114 ]
  %130 = phi ptr [ %137, %121 ], [ null, %114 ]
  %131 = invoke noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_8NodeImplEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %56, i32 noundef %128) #9
          to label %132 unwind label %138

132:                                              ; preds = %127
  %133 = invoke noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_8NodeImplEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %86, i32 noundef %129) #9
          to label %134 unwind label %138

134:                                              ; preds = %132
  %135 = icmp eq ptr %131, %133
  br i1 %135, label %136, label %142

136:                                              ; preds = %134
  %137 = invoke noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_8NodeImplEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %56, i32 noundef %128) #9
          to label %121 unwind label %138, !llvm.loop !85

138:                                              ; preds = %127, %132, %136
  %139 = landingpad { ptr, i32 }
          cleanup
  br label %151

140:                                              ; preds = %142
  %141 = landingpad { ptr, i32 }
          cleanup
  br label %151

142:                                              ; preds = %134, %121, %114
  %143 = phi ptr [ null, %114 ], [ %137, %121 ], [ %130, %134 ]
  %144 = load ptr, ptr %56, align 8, !tbaa !35
  %145 = getelementptr inbounds ptr, ptr %144, i64 1
  %146 = load ptr, ptr %145, align 8
  call void %146(ptr noundef nonnull align 8 dereferenceable(40) %56) #10
  %147 = load ptr, ptr %86, align 8, !tbaa !35
  %148 = getelementptr inbounds ptr, ptr %147, i64 1
  %149 = load ptr, ptr %148, align 8
  call void %149(ptr noundef nonnull align 8 dereferenceable(40) %86) #10
  invoke void @_ZN11xercesc_2_78DOM_NodeC1EPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %143) #9
          to label %150 unwind label %140

150:                                              ; preds = %142
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #11
  br label %153

151:                                              ; preds = %138, %140, %102, %104, %73, %75, %106, %112, %81
  %152 = phi { ptr, i32 } [ %82, %81 ], [ %113, %112 ], [ %107, %106 ], [ %74, %73 ], [ %76, %75 ], [ %103, %102 ], [ %105, %104 ], [ %139, %138 ], [ %141, %140 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #11
  br label %154

153:                                              ; preds = %150, %51
  ret void

154:                                              ; preds = %45, %23, %71, %151, %47, %25, %41
  %155 = phi { ptr, i32 } [ %26, %25 ], [ %24, %23 ], [ %48, %47 ], [ %46, %45 ], [ %42, %41 ], [ %152, %151 ], [ %72, %71 ]
  resume { ptr, i32 } %155

156:                                              ; preds = %36, %20
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xercesc_2_79RangeImpl8nextNodeERKNS_8DOM_NodeEb(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i1 noundef zeroext %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %5 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %6 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %7 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %8 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %9 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %10 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %11 = tail call noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeeqEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef null) #9
  br i1 %11, label %12, label %13

12:                                               ; preds = %4
  tail call void @_ZN11xercesc_2_78DOM_NodeC1EPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef null) #9
  br label %92

13:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  call void @_ZN11xercesc_2_78DOM_NodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #9
  br i1 %3, label %14, label %28

14:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #11
  invoke void @_ZNK11xercesc_2_78DOM_Node13getFirstChildEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %2) #9
          to label %15 unwind label %20

15:                                               ; preds = %14
  %16 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) #9
          to label %17 unwind label %22

17:                                               ; preds = %15
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  %18 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef null) #9
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
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #10
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi { ptr, i32 } [ %23, %22 ], [ %21, %20 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  br label %90

26:                                               ; preds = %34, %31, %17
  %27 = landingpad { ptr, i32 }
          cleanup
  br label %90

28:                                               ; preds = %19, %13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #11
  invoke void @_ZNK11xercesc_2_78DOM_Node14getNextSiblingEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %2) #9
          to label %29 unwind label %35

29:                                               ; preds = %28
  %30 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %7) #9
          to label %31 unwind label %37

31:                                               ; preds = %29
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #11
  %32 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef null) #9
          to label %33 unwind label %26

33:                                               ; preds = %31
  br i1 %32, label %34, label %41

34:                                               ; preds = %19, %33
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %5) #9
          to label %89 unwind label %26

35:                                               ; preds = %28
  %36 = landingpad { ptr, i32 }
          cleanup
  br label %39

37:                                               ; preds = %29
  %38 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #10
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi { ptr, i32 } [ %38, %37 ], [ %36, %35 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #11
  br label %90

41:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #11
  invoke void @_ZNK11xercesc_2_78DOM_Node13getParentNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %2) #9
          to label %42 unwind label %59

42:                                               ; preds = %41
  %43 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %1, i64 0, i32 6
  %44 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %1, i64 0, i32 3
  br label %45

45:                                               ; preds = %42, %76
  %46 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef null) #9
          to label %47 unwind label %61

47:                                               ; preds = %45
  br i1 %46, label %48, label %83

48:                                               ; preds = %47
  %49 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %43) #9
          to label %50 unwind label %61

50:                                               ; preds = %48
  br i1 %49, label %51, label %83

51:                                               ; preds = %50
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #11
  invoke void @_ZNK11xercesc_2_78DOM_Node14getNextSiblingEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %8) #9
          to label %52 unwind label %65

52:                                               ; preds = %51
  %53 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %9) #9
          to label %54 unwind label %67

54:                                               ; preds = %52
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #11
  %55 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef null) #9
          to label %56 unwind label %61

56:                                               ; preds = %54
  br i1 %55, label %57, label %71

57:                                               ; preds = %56, %76
  %58 = phi ptr [ %8, %76 ], [ %5, %56 ]
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %58) #9
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
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #10
  br label %69

69:                                               ; preds = %67, %65
  %70 = phi { ptr, i32 } [ %68, %67 ], [ %66, %65 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #11
  br label %85

71:                                               ; preds = %56
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #11
  invoke void @_ZNK11xercesc_2_78DOM_Node13getParentNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %8) #9
          to label %72 unwind label %77

72:                                               ; preds = %71
  %73 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %10) #9
          to label %74 unwind label %79

74:                                               ; preds = %72
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #11
  %75 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeeqERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %44) #9
          to label %76 unwind label %61

76:                                               ; preds = %74
  br i1 %75, label %57, label %45, !llvm.loop !86

77:                                               ; preds = %71
  %78 = landingpad { ptr, i32 }
          cleanup
  br label %81

79:                                               ; preds = %72
  %80 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #10
  br label %81

81:                                               ; preds = %79, %77
  %82 = phi { ptr, i32 } [ %80, %79 ], [ %78, %77 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #11
  br label %85

83:                                               ; preds = %47, %50
  invoke void @_ZN11xercesc_2_78DOM_NodeC1EPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef null) #9
          to label %84 unwind label %63

84:                                               ; preds = %57, %83
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #11
  br label %89

85:                                               ; preds = %61, %63, %81, %69
  %86 = phi { ptr, i32 } [ %82, %81 ], [ %70, %69 ], [ %62, %61 ], [ %64, %63 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #10
  br label %87

87:                                               ; preds = %85, %59
  %88 = phi { ptr, i32 } [ %86, %85 ], [ %60, %59 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #11
  br label %90

89:                                               ; preds = %34, %84
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  br label %92

90:                                               ; preds = %87, %39, %26, %24
  %91 = phi { ptr, i32 } [ %27, %26 ], [ %88, %87 ], [ %40, %39 ], [ %25, %24 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  resume { ptr, i32 } %91

92:                                               ; preds = %89, %12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79RangeImpl14deleteContentsEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #0 align 2 !prof !34 {
  %2 = alloca %"class.xercesc_2_7::DOM_DocumentFragment", align 8
  call void @_ZN11xercesc_2_79RangeImpl16traverseContentsENS0_13TraversalTypeE(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_DocumentFragment") align 8 %2, ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef 3) #9
  call void @_ZN11xercesc_2_720DOM_DocumentFragmentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
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
  br i1 %16, label %29, label %17

17:                                               ; preds = %3
  %18 = tail call ptr @__cxa_allocate_exception(i64 24) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 0) #9
          to label %19 unwind label %23

19:                                               ; preds = %17
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %18, i16 noundef signext 11, ptr noundef nonnull align 8 dereferenceable(8) %4) #9
          to label %22 unwind label %20

20:                                               ; preds = %19
  %21 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  br label %27

22:                                               ; preds = %19
  invoke void @__cxa_throw(ptr nonnull %18, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #12
          to label %112 unwind label %25

23:                                               ; preds = %17
  %24 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  br label %27

25:                                               ; preds = %22
  %26 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  br label %110

27:                                               ; preds = %20, %23
  %28 = phi { ptr, i32 } [ %24, %23 ], [ %21, %20 ]
  call void @__cxa_free_exception(ptr %18) #11
  br label %110

29:                                               ; preds = %3
  %30 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %1, i64 0, i32 1
  %31 = tail call noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeeqEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef null) #9
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %1, i64 0, i32 3
  %34 = tail call noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeeqEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef null) #9
  br i1 %34, label %35, label %36

35:                                               ; preds = %32, %29
  tail call void @_ZN11xercesc_2_720DOM_DocumentFragmentC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #9
  br label %109

36:                                               ; preds = %32
  %37 = tail call noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeeqERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull align 8 dereferenceable(8) %33) #9
  br i1 %37, label %38, label %39

38:                                               ; preds = %36
  tail call void @_ZN11xercesc_2_79RangeImpl21traverseSameContainerEi(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_DocumentFragment") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2) #9
  br label %109

39:                                               ; preds = %36
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  call void @_ZNK11xercesc_2_78DOM_Node13getFirstChildEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %30) #9
  br label %40

40:                                               ; preds = %57, %39
  %41 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef null) #9
          to label %42 unwind label %43

42:                                               ; preds = %40
  br i1 %41, label %47, label %67

43:                                               ; preds = %40, %47
  %44 = landingpad { ptr, i32 }
          cleanup
  br label %65

45:                                               ; preds = %50
  %46 = landingpad { ptr, i32 }
          cleanup
  br label %65

47:                                               ; preds = %42
  %48 = invoke noundef zeroext i1 @_ZN11xercesc_2_79RangeImpl12isAncestorOfERKNS_8DOM_NodeES3_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %33) #9
          to label %49 unwind label %43

49:                                               ; preds = %47
  br i1 %48, label %50, label %54

50:                                               ; preds = %49
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5) #9
          to label %51 unwind label %45

51:                                               ; preds = %50
  invoke void @_ZN11xercesc_2_79RangeImpl28traverseCommonStartContainerENS_8DOM_NodeEi(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_DocumentFragment") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull %6, i32 noundef %2) #9
          to label %64 unwind label %52

52:                                               ; preds = %51
  %53 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #10
  br label %65

54:                                               ; preds = %49
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #11
  invoke void @_ZNK11xercesc_2_78DOM_Node14getNextSiblingEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %5) #9
          to label %55 unwind label %58

55:                                               ; preds = %54
  %56 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %7) #9
          to label %57 unwind label %60

57:                                               ; preds = %55
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #11
  br label %40, !llvm.loop !87

58:                                               ; preds = %54
  %59 = landingpad { ptr, i32 }
          cleanup
  br label %62

60:                                               ; preds = %55
  %61 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #10
  br label %62

62:                                               ; preds = %60, %58
  %63 = phi { ptr, i32 } [ %61, %60 ], [ %59, %58 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #11
  br label %65

64:                                               ; preds = %51
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #10
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  br label %109

65:                                               ; preds = %43, %45, %62, %52
  %66 = phi { ptr, i32 } [ %53, %52 ], [ %63, %62 ], [ %44, %43 ], [ %46, %45 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  br label %110

67:                                               ; preds = %42
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #11
  call void @_ZNK11xercesc_2_78DOM_Node13getFirstChildEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %33) #9
  br label %68

68:                                               ; preds = %85, %67
  %69 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef null) #9
          to label %70 unwind label %71

70:                                               ; preds = %68
  br i1 %69, label %75, label %95

71:                                               ; preds = %68, %75
  %72 = landingpad { ptr, i32 }
          cleanup
  br label %93

73:                                               ; preds = %78
  %74 = landingpad { ptr, i32 }
          cleanup
  br label %93

75:                                               ; preds = %70
  %76 = invoke noundef zeroext i1 @_ZN11xercesc_2_79RangeImpl12isAncestorOfERKNS_8DOM_NodeES3_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %30) #9
          to label %77 unwind label %71

77:                                               ; preds = %75
  br i1 %76, label %78, label %82

78:                                               ; preds = %77
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %8) #9
          to label %79 unwind label %73

79:                                               ; preds = %78
  invoke void @_ZN11xercesc_2_79RangeImpl26traverseCommonEndContainerENS_8DOM_NodeEi(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_DocumentFragment") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull %9, i32 noundef %2) #9
          to label %92 unwind label %80

80:                                               ; preds = %79
  %81 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #10
  br label %93

82:                                               ; preds = %77
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #11
  invoke void @_ZNK11xercesc_2_78DOM_Node14getNextSiblingEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %8) #9
          to label %83 unwind label %86

83:                                               ; preds = %82
  %84 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %10) #9
          to label %85 unwind label %88

85:                                               ; preds = %83
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #11
  br label %68, !llvm.loop !88

86:                                               ; preds = %82
  %87 = landingpad { ptr, i32 }
          cleanup
  br label %90

88:                                               ; preds = %83
  %89 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #10
  br label %90

90:                                               ; preds = %88, %86
  %91 = phi { ptr, i32 } [ %89, %88 ], [ %87, %86 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #11
  br label %93

92:                                               ; preds = %79
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #10
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #11
  br label %109

93:                                               ; preds = %71, %73, %90, %80
  %94 = phi { ptr, i32 } [ %81, %80 ], [ %91, %90 ], [ %72, %71 ], [ %74, %73 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #11
  br label %110

95:                                               ; preds = %70
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #11
  call void @_ZNK11xercesc_2_79RangeImpl16commonAncestorOfERKNS_8DOM_NodeES3_(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %11, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull align 8 dereferenceable(8) %33) #9
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %11) #9
          to label %96 unwind label %99

96:                                               ; preds = %95
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %11) #9
          to label %97 unwind label %101

97:                                               ; preds = %96
  invoke void @_ZN11xercesc_2_79RangeImpl23traverseCommonAncestorsENS_8DOM_NodeES1_i(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_DocumentFragment") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull %12, ptr noundef nonnull %13, i32 noundef %2) #9
          to label %98 unwind label %103

98:                                               ; preds = %97
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13) #10
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12) #10
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #11
  br label %109

99:                                               ; preds = %95
  %100 = landingpad { ptr, i32 }
          cleanup
  br label %107

101:                                              ; preds = %96
  %102 = landingpad { ptr, i32 }
          cleanup
  br label %105

103:                                              ; preds = %97
  %104 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13) #10
  br label %105

105:                                              ; preds = %103, %101
  %106 = phi { ptr, i32 } [ %104, %103 ], [ %102, %101 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12) #10
  br label %107

107:                                              ; preds = %105, %99
  %108 = phi { ptr, i32 } [ %106, %105 ], [ %100, %99 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #11
  br label %110

109:                                              ; preds = %92, %64, %98, %38, %35
  ret void

110:                                              ; preds = %25, %27, %107, %93, %65
  %111 = phi { ptr, i32 } [ %28, %27 ], [ %26, %25 ], [ %108, %107 ], [ %94, %93 ], [ %66, %65 ]
  resume { ptr, i32 } %111

112:                                              ; preds = %22
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79RangeImpl13checkReadOnlyERNS_8DOM_NodeES2_jj(ptr nocapture noundef nonnull readnone align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %6 = alloca %"class.xercesc_2_7::DOMString", align 8
  %7 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %8 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %9 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %10 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %11 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %12 = tail call noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeeqEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef null) #9
  br i1 %12, label %88, label %13

13:                                               ; preds = %5
  %14 = tail call noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeeqEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef null) #9
  br i1 %14, label %88, label %15

15:                                               ; preds = %13
  %16 = tail call noundef signext i16 @_ZNK11xercesc_2_78DOM_Node11getNodeTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #9
  %17 = icmp eq i16 %16, 3
  br i1 %17, label %18, label %35

18:                                               ; preds = %15
  %19 = load ptr, ptr %1, align 8, !tbaa !52
  %20 = tail call noundef zeroext i1 @_ZNK11xercesc_2_78NodeImpl10isReadOnlyEv(ptr noundef nonnull align 8 dereferenceable(26) %19) #9
  br i1 %20, label %21, label %33

21:                                               ; preds = %18
  %22 = tail call ptr @__cxa_allocate_exception(i64 24) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #11
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 0) #9
          to label %23 unwind label %27

23:                                               ; preds = %21
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %22, i16 noundef signext 7, ptr noundef nonnull align 8 dereferenceable(8) %6) #9
          to label %26 unwind label %24

24:                                               ; preds = %23
  %25 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  br label %31

26:                                               ; preds = %23
  invoke void @__cxa_throw(ptr nonnull %22, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #12
          to label %97 unwind label %29

27:                                               ; preds = %21
  %28 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  br label %31

29:                                               ; preds = %26
  %30 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  br label %95

31:                                               ; preds = %24, %27
  %32 = phi { ptr, i32 } [ %28, %27 ], [ %25, %24 ]
  call void @__cxa_free_exception(ptr %22) #11
  br label %95

33:                                               ; preds = %18
  %34 = tail call noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeeqERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #9
  br i1 %34, label %88, label %35

35:                                               ; preds = %33, %15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #11
  call void @_ZNK11xercesc_2_78DOM_Node13getFirstChildEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %1) #9
  %36 = icmp eq i32 %3, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %42, %35
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #11
  invoke void @_ZN11xercesc_2_78DOM_NodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #9
          to label %51 unwind label %57

38:                                               ; preds = %35, %42
  %39 = phi i32 [ %43, %42 ], [ 0, %35 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #11
  invoke void @_ZNK11xercesc_2_78DOM_Node14getNextSiblingEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %7) #9
          to label %40 unwind label %45

40:                                               ; preds = %38
  %41 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %8) #9
          to label %42 unwind label %47

42:                                               ; preds = %40
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #11
  %43 = add nuw i32 %39, 1
  %44 = icmp eq i32 %43, %3
  br i1 %44, label %37, label %38, !llvm.loop !89

45:                                               ; preds = %38
  %46 = landingpad { ptr, i32 }
          cleanup
  br label %49

47:                                               ; preds = %40
  %48 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #10
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi { ptr, i32 } [ %48, %47 ], [ %46, %45 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #11
  br label %93

51:                                               ; preds = %37
  %52 = invoke noundef signext i16 @_ZNK11xercesc_2_78DOM_Node11getNodeTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #9
          to label %53 unwind label %59

53:                                               ; preds = %51
  %54 = icmp eq i16 %52, 3
  br i1 %54, label %55, label %61

55:                                               ; preds = %53
  %56 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %2) #9
          to label %86 unwind label %59

57:                                               ; preds = %37
  %58 = landingpad { ptr, i32 }
          cleanup
  br label %91

59:                                               ; preds = %86, %55, %51
  %60 = landingpad { ptr, i32 }
          cleanup
  br label %89

61:                                               ; preds = %53
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #11
  invoke void @_ZNK11xercesc_2_78DOM_Node13getFirstChildEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %2) #9
          to label %62 unwind label %67

62:                                               ; preds = %61
  %63 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %10) #9
          to label %64 unwind label %69

64:                                               ; preds = %62
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #11
  %65 = add i32 %4, -1
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %86, label %73

67:                                               ; preds = %61
  %68 = landingpad { ptr, i32 }
          cleanup
  br label %71

69:                                               ; preds = %62
  %70 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #10
  br label %71

71:                                               ; preds = %69, %67
  %72 = phi { ptr, i32 } [ %70, %69 ], [ %68, %67 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #11
  br label %89

73:                                               ; preds = %64, %77
  %74 = phi i32 [ %78, %77 ], [ 0, %64 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #11
  invoke void @_ZNK11xercesc_2_78DOM_Node14getNextSiblingEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %11, ptr noundef nonnull align 8 dereferenceable(8) %9) #9
          to label %75 unwind label %80

75:                                               ; preds = %73
  %76 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %11) #9
          to label %77 unwind label %82

77:                                               ; preds = %75
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #11
  %78 = add nuw i32 %74, 1
  %79 = icmp eq i32 %78, %65
  br i1 %79, label %86, label %73, !llvm.loop !90

80:                                               ; preds = %73
  %81 = landingpad { ptr, i32 }
          cleanup
  br label %84

82:                                               ; preds = %75
  %83 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #10
  br label %84

84:                                               ; preds = %82, %80
  %85 = phi { ptr, i32 } [ %83, %82 ], [ %81, %80 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #11
  br label %89

86:                                               ; preds = %77, %64, %55
  invoke void @_ZN11xercesc_2_79RangeImpl19recurseTreeAndCheckERNS_8DOM_NodeES2_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %9) #9
          to label %87 unwind label %59

87:                                               ; preds = %86
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #11
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #11
  br label %88

88:                                               ; preds = %33, %5, %13, %87
  ret void

89:                                               ; preds = %84, %71, %59
  %90 = phi { ptr, i32 } [ %60, %59 ], [ %85, %84 ], [ %72, %71 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #10
  br label %91

91:                                               ; preds = %89, %57
  %92 = phi { ptr, i32 } [ %90, %89 ], [ %58, %57 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #11
  br label %93

93:                                               ; preds = %91, %49
  %94 = phi { ptr, i32 } [ %50, %49 ], [ %92, %91 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #11
  br label %95

95:                                               ; preds = %29, %31, %93
  %96 = phi { ptr, i32 } [ %32, %31 ], [ %30, %29 ], [ %94, %93 ]
  resume { ptr, i32 } %96

97:                                               ; preds = %26
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xercesc_2_79RangeImpl13cloneContentsEv(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOM_DocumentFragment") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1) local_unnamed_addr #0 align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_79RangeImpl16traverseContentsENS0_13TraversalTypeE(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_DocumentFragment") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef 2) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_78NodeImpl10isReadOnlyEv(ptr noundef nonnull align 8 dereferenceable(26) %0) local_unnamed_addr #3 comdat align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %0, i64 0, i32 3
  %3 = load i16, ptr %2, align 8, !tbaa !91
  %4 = load i16, ptr @_ZN11xercesc_2_78NodeImpl8READONLYE, align 2, !tbaa !92
  %5 = and i16 %4, %3
  %6 = icmp ne i16 %5, 0
  ret i1 %6
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78DOM_Text9splitTextEj(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_Text") align 8, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_78DOM_TextD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78DOM_Node12insertBeforeERKS0_S2_(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_Node") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_79RangeImpl10cloneRangeEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %2 = alloca %"class.xercesc_2_7::DOMString", align 8
  %3 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 7
  %4 = load i8, ptr %3, align 8, !tbaa !49, !range !50, !noundef !51
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %18, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @__cxa_allocate_exception(i64 24) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #11
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 0) #9
          to label %8 unwind label %12

8:                                                ; preds = %6
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %7, i16 noundef signext 11, ptr noundef nonnull align 8 dereferenceable(8) %2) #9
          to label %11 unwind label %9

9:                                                ; preds = %8
  %10 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #11
  br label %16

11:                                               ; preds = %8
  invoke void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #12
          to label %33 unwind label %14

12:                                               ; preds = %6
  %13 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #11
  br label %16

14:                                               ; preds = %11
  %15 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #11
  br label %31

16:                                               ; preds = %9, %12
  %17 = phi { ptr, i32 } [ %13, %12 ], [ %10, %9 ]
  call void @__cxa_free_exception(ptr %7) #11
  br label %31

18:                                               ; preds = %1
  %19 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 6
  %20 = load ptr, ptr %19, align 8, !tbaa !52
  %21 = load ptr, ptr %20, align 8, !tbaa !35
  %22 = getelementptr inbounds ptr, ptr %21, i64 64
  %23 = load ptr, ptr %22, align 8
  %24 = tail call noundef ptr %23(ptr noundef nonnull align 8 dereferenceable(168) %20) #9
  %25 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 1
  %26 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 2
  %27 = load i32, ptr %26, align 8, !tbaa !38
  tail call void @_ZN11xercesc_2_79RangeImpl8setStartERKNS_8DOM_NodeEj(ptr noundef nonnull align 8 dereferenceable(72) %24, ptr noundef nonnull align 8 dereferenceable(8) %25, i32 noundef %27) #9
  %28 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 3
  %29 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 4
  %30 = load i32, ptr %29, align 8, !tbaa !47
  tail call void @_ZN11xercesc_2_79RangeImpl6setEndERKNS_8DOM_NodeEj(ptr noundef nonnull align 8 dereferenceable(72) %24, ptr noundef nonnull align 8 dereferenceable(8) %28, i32 noundef %30) #9
  ret ptr %24

31:                                               ; preds = %14, %16
  %32 = phi { ptr, i32 } [ %15, %14 ], [ %17, %16 ]
  resume { ptr, i32 } %32

33:                                               ; preds = %11
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
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
  br i1 %24, label %37, label %25

25:                                               ; preds = %2
  %26 = tail call ptr @__cxa_allocate_exception(i64 24) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 0) #9
          to label %27 unwind label %31

27:                                               ; preds = %25
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %26, i16 noundef signext 11, ptr noundef nonnull align 8 dereferenceable(8) %3) #9
          to label %30 unwind label %28

28:                                               ; preds = %27
  %29 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  br label %35

30:                                               ; preds = %27
  invoke void @__cxa_throw(ptr nonnull %26, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #12
          to label %280 unwind label %33

31:                                               ; preds = %25
  %32 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  br label %35

33:                                               ; preds = %30
  %34 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  br label %278

35:                                               ; preds = %28, %31
  %36 = phi { ptr, i32 } [ %32, %31 ], [ %29, %28 ]
  call void @__cxa_free_exception(ptr %26) #11
  br label %278

37:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %38 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %1, i64 0, i32 1
  call void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %38) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  %39 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %1, i64 0, i32 3
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %39) #9
          to label %40 unwind label %61

40:                                               ; preds = %37
  invoke void @_ZN11xercesc_2_79DOMStringC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #9
          to label %41 unwind label %63

41:                                               ; preds = %40
  %42 = invoke noundef signext i16 @_ZNK11xercesc_2_78DOM_Node11getNodeTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %38) #9
          to label %43 unwind label %67

43:                                               ; preds = %41
  %44 = icmp eq i16 %42, 3
  br i1 %44, label %49, label %45

45:                                               ; preds = %43
  %46 = invoke noundef signext i16 @_ZNK11xercesc_2_78DOM_Node11getNodeTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %38) #9
          to label %47 unwind label %67

47:                                               ; preds = %45
  %48 = icmp eq i16 %46, 4
  br i1 %48, label %49, label %114

49:                                               ; preds = %47, %43
  %50 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeeqERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %38, ptr noundef nonnull align 8 dereferenceable(8) %39) #9
          to label %51 unwind label %67

51:                                               ; preds = %49
  br i1 %50, label %52, label %79

52:                                               ; preds = %51
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #11
  invoke void @_ZNK11xercesc_2_78DOM_Node12getNodeValueEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %38) #9
          to label %53 unwind label %69

53:                                               ; preds = %52
  %54 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %1, i64 0, i32 2
  %55 = load i32, ptr %54, align 8, !tbaa !38
  %56 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %1, i64 0, i32 4
  %57 = load i32, ptr %56, align 8, !tbaa !47
  %58 = sub i32 %57, %55
  invoke void @_ZNK11xercesc_2_79DOMString13substringDataEjj(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef %55, i32 noundef %58) #9
          to label %59 unwind label %71

59:                                               ; preds = %53
  invoke void @_ZN11xercesc_2_79DOMString10appendDataERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %6) #9
          to label %60 unwind label %73

60:                                               ; preds = %59
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #10
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  br label %271

61:                                               ; preds = %37
  %62 = landingpad { ptr, i32 }
          cleanup
  br label %276

63:                                               ; preds = %40
  %64 = landingpad { ptr, i32 }
          cleanup
  br label %274

65:                                               ; preds = %214, %217, %220, %224
  %66 = landingpad { ptr, i32 }
          cleanup
  br label %272

67:                                               ; preds = %41, %45, %49, %146, %159, %164, %247, %251
  %68 = landingpad { ptr, i32 }
          cleanup
  br label %272

69:                                               ; preds = %52
  %70 = landingpad { ptr, i32 }
          cleanup
  br label %77

71:                                               ; preds = %53
  %72 = landingpad { ptr, i32 }
          cleanup
  br label %75

73:                                               ; preds = %59
  %74 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #10
  br label %75

75:                                               ; preds = %73, %71
  %76 = phi { ptr, i32 } [ %74, %73 ], [ %72, %71 ]
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #10
  br label %77

77:                                               ; preds = %75, %69
  %78 = phi { ptr, i32 } [ %76, %75 ], [ %70, %69 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  br label %272

79:                                               ; preds = %51
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #11
  invoke void @_ZNK11xercesc_2_78DOM_Node12getNodeValueEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %38) #9
          to label %80 unwind label %92

80:                                               ; preds = %79
  %81 = invoke noundef i32 @_ZNK11xercesc_2_79DOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #9
          to label %82 unwind label %94

82:                                               ; preds = %80
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #11
  invoke void @_ZNK11xercesc_2_78DOM_Node12getNodeValueEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %38) #9
          to label %83 unwind label %98

83:                                               ; preds = %82
  %84 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %1, i64 0, i32 2
  %85 = load i32, ptr %84, align 8, !tbaa !38
  %86 = sub i32 %81, %85
  invoke void @_ZNK11xercesc_2_79DOMString13substringDataEjj(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %10, i32 noundef %85, i32 noundef %86) #9
          to label %87 unwind label %100

87:                                               ; preds = %83
  invoke void @_ZN11xercesc_2_79DOMString10appendDataERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %9) #9
          to label %88 unwind label %102

88:                                               ; preds = %87
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #10
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #11
  invoke void @_ZNK11xercesc_2_79RangeImpl8nextNodeERKNS_8DOM_NodeEb(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %11, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(8) %4, i1 noundef zeroext true) #9
          to label %89 unwind label %108

89:                                               ; preds = %88
  %90 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %11) #9
          to label %91 unwind label %110

91:                                               ; preds = %89
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #11
  br label %159

92:                                               ; preds = %79
  %93 = landingpad { ptr, i32 }
          cleanup
  br label %96

94:                                               ; preds = %80
  %95 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #10
  br label %96

96:                                               ; preds = %94, %92
  %97 = phi { ptr, i32 } [ %95, %94 ], [ %93, %92 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #11
  br label %272

98:                                               ; preds = %82
  %99 = landingpad { ptr, i32 }
          cleanup
  br label %106

100:                                              ; preds = %83
  %101 = landingpad { ptr, i32 }
          cleanup
  br label %104

102:                                              ; preds = %87
  %103 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #10
  br label %104

104:                                              ; preds = %102, %100
  %105 = phi { ptr, i32 } [ %103, %102 ], [ %101, %100 ]
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #10
  br label %106

106:                                              ; preds = %104, %98
  %107 = phi { ptr, i32 } [ %105, %104 ], [ %99, %98 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #11
  br label %272

108:                                              ; preds = %88
  %109 = landingpad { ptr, i32 }
          cleanup
  br label %112

110:                                              ; preds = %89
  %111 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #10
  br label %112

112:                                              ; preds = %110, %108
  %113 = phi { ptr, i32 } [ %111, %110 ], [ %109, %108 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #11
  br label %272

114:                                              ; preds = %47
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #11
  invoke void @_ZNK11xercesc_2_78DOM_Node13getFirstChildEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %12, ptr noundef nonnull align 8 dereferenceable(8) %4) #9
          to label %115 unwind label %132

115:                                              ; preds = %114
  %116 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %12) #9
          to label %117 unwind label %134

117:                                              ; preds = %115
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #11
  %118 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %1, i64 0, i32 2
  %119 = load i32, ptr %118, align 8
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %146, label %121

121:                                              ; preds = %117, %128
  %122 = phi i32 [ %129, %128 ], [ 0, %117 ]
  %123 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef null) #9
          to label %124 unwind label %138

124:                                              ; preds = %121
  br i1 %123, label %125, label %146

125:                                              ; preds = %124
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #11
  invoke void @_ZNK11xercesc_2_78DOM_Node14getNextSiblingEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %13, ptr noundef nonnull align 8 dereferenceable(8) %4) #9
          to label %126 unwind label %140

126:                                              ; preds = %125
  %127 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %13) #9
          to label %128 unwind label %142

128:                                              ; preds = %126
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #11
  %129 = add nuw i32 %122, 1
  %130 = load i32, ptr %118, align 8, !tbaa !38
  %131 = icmp ult i32 %129, %130
  br i1 %131, label %121, label %146, !llvm.loop !93

132:                                              ; preds = %114
  %133 = landingpad { ptr, i32 }
          cleanup
  br label %136

134:                                              ; preds = %115
  %135 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12) #10
  br label %136

136:                                              ; preds = %134, %132
  %137 = phi { ptr, i32 } [ %135, %134 ], [ %133, %132 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #11
  br label %272

138:                                              ; preds = %121
  %139 = landingpad { ptr, i32 }
          cleanup
  br label %272

140:                                              ; preds = %125
  %141 = landingpad { ptr, i32 }
          cleanup
  br label %144

142:                                              ; preds = %126
  %143 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13) #10
  br label %144

144:                                              ; preds = %142, %140
  %145 = phi { ptr, i32 } [ %143, %142 ], [ %141, %140 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #11
  br label %272

146:                                              ; preds = %128, %124, %117
  %147 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeeqEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef null) #9
          to label %148 unwind label %67

148:                                              ; preds = %146
  br i1 %147, label %149, label %159

149:                                              ; preds = %148
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #11
  invoke void @_ZNK11xercesc_2_79RangeImpl8nextNodeERKNS_8DOM_NodeEb(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %14, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(8) %38, i1 noundef zeroext false) #9
          to label %150 unwind label %153

150:                                              ; preds = %149
  %151 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %14) #9
          to label %152 unwind label %155

152:                                              ; preds = %150
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #11
  br label %159

153:                                              ; preds = %149
  %154 = landingpad { ptr, i32 }
          cleanup
  br label %157

155:                                              ; preds = %150
  %156 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14) #10
  br label %157

157:                                              ; preds = %155, %153
  %158 = phi { ptr, i32 } [ %156, %155 ], [ %154, %153 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #11
  br label %272

159:                                              ; preds = %148, %152, %91
  %160 = invoke noundef signext i16 @_ZNK11xercesc_2_78DOM_Node11getNodeTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %39) #9
          to label %161 unwind label %67

161:                                              ; preds = %159
  %162 = icmp eq i16 %160, 3
  br i1 %162, label %163, label %164

163:                                              ; preds = %203, %207, %166, %161
  br label %214

164:                                              ; preds = %161
  %165 = invoke noundef signext i16 @_ZNK11xercesc_2_78DOM_Node11getNodeTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %39) #9
          to label %166 unwind label %67

166:                                              ; preds = %164
  %167 = icmp eq i16 %165, 4
  br i1 %167, label %163, label %168

168:                                              ; preds = %166
  %169 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %1, i64 0, i32 4
  %170 = load i32, ptr %169, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #11
  invoke void @_ZNK11xercesc_2_78DOM_Node13getFirstChildEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %15, ptr noundef nonnull align 8 dereferenceable(8) %39) #9
          to label %171 unwind label %185

171:                                              ; preds = %168
  %172 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %15) #9
          to label %173 unwind label %187

173:                                              ; preds = %171
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %15) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #11
  %174 = icmp sgt i32 %170, 0
  br i1 %174, label %175, label %201

175:                                              ; preds = %173, %183
  %176 = phi i32 [ %180, %183 ], [ %170, %173 ]
  %177 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef null) #9
          to label %178 unwind label %191

178:                                              ; preds = %175
  br i1 %177, label %179, label %201

179:                                              ; preds = %178
  %180 = add nsw i32 %176, -1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #11
  invoke void @_ZNK11xercesc_2_78DOM_Node14getNextSiblingEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %16, ptr noundef nonnull align 8 dereferenceable(8) %5) #9
          to label %181 unwind label %195

181:                                              ; preds = %179
  %182 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %16) #9
          to label %183 unwind label %197

183:                                              ; preds = %181
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %16) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #11
  %184 = icmp ugt i32 %176, 1
  br i1 %184, label %175, label %201, !llvm.loop !94

185:                                              ; preds = %168
  %186 = landingpad { ptr, i32 }
          cleanup
  br label %189

187:                                              ; preds = %171
  %188 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %15) #10
  br label %189

189:                                              ; preds = %187, %185
  %190 = phi { ptr, i32 } [ %188, %187 ], [ %186, %185 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #11
  br label %272

191:                                              ; preds = %175
  %192 = landingpad { ptr, i32 }
          cleanup
  br label %272

193:                                              ; preds = %201
  %194 = landingpad { ptr, i32 }
          cleanup
  br label %272

195:                                              ; preds = %179
  %196 = landingpad { ptr, i32 }
          cleanup
  br label %199

197:                                              ; preds = %181
  %198 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %16) #10
  br label %199

199:                                              ; preds = %197, %195
  %200 = phi { ptr, i32 } [ %198, %197 ], [ %196, %195 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #11
  br label %272

201:                                              ; preds = %178, %183, %173
  %202 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeeqEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef null) #9
          to label %203 unwind label %193

203:                                              ; preds = %201
  br i1 %202, label %204, label %163

204:                                              ; preds = %203
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #11
  invoke void @_ZNK11xercesc_2_79RangeImpl8nextNodeERKNS_8DOM_NodeEb(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %17, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(8) %39, i1 noundef zeroext false) #9
          to label %205 unwind label %208

205:                                              ; preds = %204
  %206 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %17) #9
          to label %207 unwind label %210

207:                                              ; preds = %205
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %17) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #11
  br label %163

208:                                              ; preds = %204
  %209 = landingpad { ptr, i32 }
          cleanup
  br label %212

210:                                              ; preds = %205
  %211 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %17) #10
  br label %212

212:                                              ; preds = %210, %208
  %213 = phi { ptr, i32 } [ %211, %210 ], [ %209, %208 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #11
  br label %272

214:                                              ; preds = %163, %240
  %215 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #9
          to label %216 unwind label %65

216:                                              ; preds = %214
  br i1 %215, label %217, label %247

217:                                              ; preds = %216
  %218 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeeqEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef null) #9
          to label %219 unwind label %65

219:                                              ; preds = %217
  br i1 %218, label %247, label %220

220:                                              ; preds = %219
  %221 = invoke noundef signext i16 @_ZNK11xercesc_2_78DOM_Node11getNodeTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #9
          to label %222 unwind label %65

222:                                              ; preds = %220
  %223 = icmp eq i16 %221, 3
  br i1 %223, label %228, label %224

224:                                              ; preds = %222
  %225 = invoke noundef signext i16 @_ZNK11xercesc_2_78DOM_Node11getNodeTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #9
          to label %226 unwind label %65

226:                                              ; preds = %224
  %227 = icmp eq i16 %225, 4
  br i1 %227, label %228, label %237

228:                                              ; preds = %226, %222
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %18) #11
  invoke void @_ZNK11xercesc_2_78DOM_Node12getNodeValueEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %18, ptr noundef nonnull align 8 dereferenceable(8) %4) #9
          to label %229 unwind label %231

229:                                              ; preds = %228
  invoke void @_ZN11xercesc_2_79DOMString10appendDataERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %18) #9
          to label %230 unwind label %233

230:                                              ; preds = %229
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %18) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #11
  br label %237

231:                                              ; preds = %228
  %232 = landingpad { ptr, i32 }
          cleanup
  br label %235

233:                                              ; preds = %229
  %234 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %18) #10
  br label %235

235:                                              ; preds = %233, %231
  %236 = phi { ptr, i32 } [ %234, %233 ], [ %232, %231 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #11
  br label %272

237:                                              ; preds = %230, %226
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %19) #11
  invoke void @_ZNK11xercesc_2_79RangeImpl8nextNodeERKNS_8DOM_NodeEb(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %19, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(8) %4, i1 noundef zeroext true) #9
          to label %238 unwind label %241

238:                                              ; preds = %237
  %239 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %19) #9
          to label %240 unwind label %243

240:                                              ; preds = %238
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %19) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %19) #11
  br label %214, !llvm.loop !95

241:                                              ; preds = %237
  %242 = landingpad { ptr, i32 }
          cleanup
  br label %245

243:                                              ; preds = %238
  %244 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %19) #10
  br label %245

245:                                              ; preds = %243, %241
  %246 = phi { ptr, i32 } [ %244, %243 ], [ %242, %241 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %19) #11
  br label %272

247:                                              ; preds = %219, %216
  %248 = invoke noundef signext i16 @_ZNK11xercesc_2_78DOM_Node11getNodeTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %39) #9
          to label %249 unwind label %67

249:                                              ; preds = %247
  %250 = icmp eq i16 %248, 3
  br i1 %250, label %255, label %251

251:                                              ; preds = %249
  %252 = invoke noundef signext i16 @_ZNK11xercesc_2_78DOM_Node11getNodeTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %39) #9
          to label %253 unwind label %67

253:                                              ; preds = %251
  %254 = icmp eq i16 %252, 4
  br i1 %254, label %255, label %271

255:                                              ; preds = %253, %249
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %20) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %21) #11
  invoke void @_ZNK11xercesc_2_78DOM_Node12getNodeValueEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %21, ptr noundef nonnull align 8 dereferenceable(8) %39) #9
          to label %256 unwind label %261

256:                                              ; preds = %255
  %257 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %1, i64 0, i32 4
  %258 = load i32, ptr %257, align 8, !tbaa !47
  invoke void @_ZNK11xercesc_2_79DOMString13substringDataEjj(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %20, ptr noundef nonnull align 8 dereferenceable(8) %21, i32 noundef 0, i32 noundef %258) #9
          to label %259 unwind label %263

259:                                              ; preds = %256
  invoke void @_ZN11xercesc_2_79DOMString10appendDataERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %20) #9
          to label %260 unwind label %265

260:                                              ; preds = %259
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %20) #10
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %21) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %21) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %20) #11
  br label %271

261:                                              ; preds = %255
  %262 = landingpad { ptr, i32 }
          cleanup
  br label %269

263:                                              ; preds = %256
  %264 = landingpad { ptr, i32 }
          cleanup
  br label %267

265:                                              ; preds = %259
  %266 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %20) #10
  br label %267

267:                                              ; preds = %265, %263
  %268 = phi { ptr, i32 } [ %266, %265 ], [ %264, %263 ]
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %21) #10
  br label %269

269:                                              ; preds = %267, %261
  %270 = phi { ptr, i32 } [ %268, %267 ], [ %262, %261 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %21) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %20) #11
  br label %272

271:                                              ; preds = %60, %260, %253
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  ret void

272:                                              ; preds = %191, %193, %65, %67, %189, %199, %212, %138, %144, %96, %106, %112, %269, %245, %235, %157, %136, %77
  %273 = phi { ptr, i32 } [ %78, %77 ], [ %270, %269 ], [ %246, %245 ], [ %236, %235 ], [ %158, %157 ], [ %137, %136 ], [ %113, %112 ], [ %107, %106 ], [ %97, %96 ], [ %145, %144 ], [ %139, %138 ], [ %200, %199 ], [ %213, %212 ], [ %190, %189 ], [ %66, %65 ], [ %68, %67 ], [ %192, %191 ], [ %194, %193 ]
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #10
  br label %274

274:                                              ; preds = %272, %63
  %275 = phi { ptr, i32 } [ %273, %272 ], [ %64, %63 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #10
  br label %276

276:                                              ; preds = %274, %61
  %277 = phi { ptr, i32 } [ %275, %274 ], [ %62, %61 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  br label %278

278:                                              ; preds = %33, %35, %276
  %279 = phi { ptr, i32 } [ %36, %35 ], [ %34, %33 ], [ %277, %276 ]
  resume { ptr, i32 } %279

280:                                              ; preds = %30
  unreachable
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79DOMStringC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79DOMString10appendDataERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK11xercesc_2_78DOM_Node12getNodeValueEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK11xercesc_2_79DOMString13substringDataEjj(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef i32 @_ZNK11xercesc_2_79DOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79RangeImpl11getDocumentEv(ptr dead_on_unwind noalias nonnull writable sret(%"class.xercesc_2_7::DOM_Document") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1) local_unnamed_addr #0 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %1, i64 0, i32 6
  tail call void @_ZN11xercesc_2_712DOM_DocumentC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #9
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_79RangeImpl19isValidAncestorTypeERKNS_8DOM_NodeE(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %4 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  call void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %1) #9
  br label %5

5:                                                ; preds = %18, %2
  %6 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef null) #9
          to label %7 unwind label %8

7:                                                ; preds = %5
  br i1 %6, label %10, label %25

8:                                                ; preds = %5
  %9 = landingpad { ptr, i32 }
          cleanup
  br label %27

10:                                               ; preds = %7
  %11 = invoke noundef signext i16 @_ZNK11xercesc_2_78DOM_Node11getNodeTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #9
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
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  invoke void @_ZNK11xercesc_2_78DOM_Node13getParentNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %3) #9
          to label %16 unwind label %19

16:                                               ; preds = %15
  %17 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #9
          to label %18 unwind label %21

18:                                               ; preds = %16
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  br label %5, !llvm.loop !96

19:                                               ; preds = %15
  %20 = landingpad { ptr, i32 }
          cleanup
  br label %23

21:                                               ; preds = %16
  %22 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #10
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi { ptr, i32 } [ %22, %21 ], [ %20, %19 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  br label %27

25:                                               ; preds = %12, %12, %12, %7
  %26 = xor i1 %6, true
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  ret i1 %26

27:                                               ; preds = %23, %13, %8
  %28 = phi { ptr, i32 } [ %24, %23 ], [ %14, %13 ], [ %9, %8 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  resume { ptr, i32 } %28
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_712DocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(168) %0) local_unnamed_addr #3 comdat align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 11
  %3 = load ptr, ptr %2, align 8, !tbaa !97
  ret ptr %3
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_8NodeImplEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 comdat align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_8NodeImplEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) #9
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_8NodeImplEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_8NodeImplEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_8NodeImplEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 1) #9
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !98
  %5 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !100
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7
  store ptr %1, ptr %8, align 8, !tbaa !66
  %9 = add i32 %6, 1
  store i32 %9, ptr %5, align 4, !tbaa !100
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_8NodeImplEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #3 comdat align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !100
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_8NodeImplEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !100
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !101
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 249, i32 noundef 116, ptr noundef %9) #9
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #12
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #11
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !98
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !66
  ret ptr %18
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_720DOM_DocumentFragmentC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
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
  tail call void @_ZN11xercesc_2_720DOM_DocumentFragmentC1EPNS_20DocumentFragmentImplE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef null) #9
  %17 = icmp eq i32 %2, 3
  br i1 %17, label %29, label %18

18:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %19 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %1, i64 0, i32 6
  invoke void @_ZN11xercesc_2_712DOM_Document22createDocumentFragmentEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_DocumentFragment") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %19) #9
          to label %20 unwind label %23

20:                                               ; preds = %18
  %21 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_720DOM_DocumentFragmentaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %4) #9
          to label %22 unwind label %25

22:                                               ; preds = %20
  call void @_ZN11xercesc_2_720DOM_DocumentFragmentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  br label %29

23:                                               ; preds = %18
  %24 = landingpad { ptr, i32 }
          cleanup
  br label %27

25:                                               ; preds = %20
  %26 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_720DOM_DocumentFragmentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #10
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi { ptr, i32 } [ %26, %25 ], [ %24, %23 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  br label %134

29:                                               ; preds = %22, %3
  %30 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %1, i64 0, i32 2
  %31 = load i32, ptr %30, align 8, !tbaa !38
  %32 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %1, i64 0, i32 4
  %33 = load i32, ptr %32, align 8, !tbaa !47
  %34 = icmp eq i32 %31, %33
  br i1 %34, label %133, label %35

35:                                               ; preds = %29
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  %36 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %1, i64 0, i32 1
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %36) #9
          to label %37 unwind label %57

37:                                               ; preds = %35
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #11
  invoke void @_ZN11xercesc_2_78DOM_NodeC1EPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef null) #9
          to label %38 unwind label %59

38:                                               ; preds = %37
  %39 = invoke noundef signext i16 @_ZNK11xercesc_2_78DOM_Node11getNodeTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %36) #9
          to label %40 unwind label %61

40:                                               ; preds = %38
  %41 = icmp eq i16 %39, 3
  br i1 %41, label %42, label %82

42:                                               ; preds = %40
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #11
  invoke void @_ZNK11xercesc_2_78DOM_Node9cloneNodeEb(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %36, i1 noundef zeroext false) #9
          to label %43 unwind label %63

43:                                               ; preds = %42
  %44 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7) #9
          to label %45 unwind label %65

45:                                               ; preds = %43
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #11
  invoke void @_ZNK11xercesc_2_78DOM_Node12getNodeValueEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %6) #9
          to label %46 unwind label %69

46:                                               ; preds = %45
  %47 = load i32, ptr %30, align 8, !tbaa !38
  %48 = load i32, ptr %32, align 8, !tbaa !47
  %49 = sub i32 %48, %47
  invoke void @_ZNK11xercesc_2_79DOMString13substringDataEjj(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %9, i32 noundef %47, i32 noundef %49) #9
          to label %50 unwind label %71

50:                                               ; preds = %46
  invoke void @_ZN11xercesc_2_78DOM_Node12setNodeValueERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %8) #9
          to label %51 unwind label %73

51:                                               ; preds = %50
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #10
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #11
  %52 = icmp eq i32 %2, 2
  br i1 %52, label %80, label %53

53:                                               ; preds = %51
  %54 = load i32, ptr %30, align 8, !tbaa !38
  %55 = load i32, ptr %32, align 8, !tbaa !47
  %56 = sub i32 %55, %54
  invoke void @_ZN11xercesc_2_717DOM_CharacterData10deleteDataEjj(ptr noundef nonnull align 8 dereferenceable(8) %36, i32 noundef %54, i32 noundef %56) #9
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
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #10
  br label %67

67:                                               ; preds = %65, %63
  %68 = phi { ptr, i32 } [ %66, %65 ], [ %64, %63 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #11
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
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #10
  br label %75

75:                                               ; preds = %73, %71
  %76 = phi { ptr, i32 } [ %74, %73 ], [ %72, %71 ]
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #10
  br label %77

77:                                               ; preds = %75, %69
  %78 = phi { ptr, i32 } [ %76, %75 ], [ %70, %69 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #11
  br label %127

79:                                               ; preds = %53
  br i1 %17, label %125, label %80

80:                                               ; preds = %51, %79
  invoke void @_ZN11xercesc_2_78DOM_Node11appendChildERKS0_(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %6) #9
          to label %81 unwind label %61

81:                                               ; preds = %80
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #10
  br label %123

82:                                               ; preds = %40
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #11
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %36) #9
          to label %83 unwind label %99

83:                                               ; preds = %82
  %84 = load i32, ptr %30, align 8, !tbaa !38
  invoke void @_ZN11xercesc_2_79RangeImpl15getSelectedNodeENS_8DOM_NodeEi(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %11, ptr nonnull align 8 poison, ptr noundef nonnull %12, i32 noundef %84) #9
          to label %85 unwind label %101

85:                                               ; preds = %83
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12) #10
  %86 = load i32, ptr %32, align 8, !tbaa !47
  %87 = load i32, ptr %30, align 8, !tbaa !38
  %88 = sub i32 %86, %87
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %90, label %120

90:                                               ; preds = %85, %113
  %91 = phi i32 [ %114, %113 ], [ %88, %85 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #11
  invoke void @_ZNK11xercesc_2_78DOM_Node14getNextSiblingEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %13, ptr noundef nonnull align 8 dereferenceable(8) %11) #9
          to label %92 unwind label %103

92:                                               ; preds = %90
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #11
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 8 dereferenceable(8) %11) #9
          to label %93 unwind label %105

93:                                               ; preds = %92
  invoke void @_ZN11xercesc_2_79RangeImpl21traverseFullySelectedENS_8DOM_NodeEi(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %14, ptr nonnull align 8 poison, ptr noundef nonnull %15, i32 noundef %2) #9
          to label %94 unwind label %107

94:                                               ; preds = %93
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %15) #10
  %95 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef null) #9
          to label %96 unwind label %109

96:                                               ; preds = %94
  br i1 %95, label %97, label %111

97:                                               ; preds = %96
  invoke void @_ZN11xercesc_2_78DOM_Node11appendChildERKS0_(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %16, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %14) #9
          to label %98 unwind label %109

98:                                               ; preds = %97
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %16) #10
  br label %111

99:                                               ; preds = %82
  %100 = landingpad { ptr, i32 }
          cleanup
  br label %121

101:                                              ; preds = %83
  %102 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12) #10
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
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %15) #10
  br label %116

109:                                              ; preds = %111, %97, %94
  %110 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14) #10
  br label %116

111:                                              ; preds = %98, %96
  %112 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %13) #9
          to label %113 unwind label %109

113:                                              ; preds = %111
  %114 = add nsw i32 %91, -1
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #11
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #11
  %115 = icmp sgt i32 %91, 1
  br i1 %115, label %90, label %120, !llvm.loop !102

116:                                              ; preds = %109, %107, %105
  %117 = phi { ptr, i32 } [ %110, %109 ], [ %108, %107 ], [ %106, %105 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #11
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13) #10
  br label %118

118:                                              ; preds = %116, %103
  %119 = phi { ptr, i32 } [ %117, %116 ], [ %104, %103 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #11
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #10
  br label %121

120:                                              ; preds = %113, %85
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #11
  br label %123

121:                                              ; preds = %118, %101, %99
  %122 = phi { ptr, i32 } [ %119, %118 ], [ %102, %101 ], [ %100, %99 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #11
  br label %127

123:                                              ; preds = %81, %120
  %124 = icmp eq i32 %2, 2
  br i1 %124, label %126, label %125

125:                                              ; preds = %79, %123
  invoke void @_ZN11xercesc_2_79RangeImpl8collapseEb(ptr noundef nonnull align 8 dereferenceable(72) %1, i1 noundef zeroext true) #9
          to label %126 unwind label %61

126:                                              ; preds = %125, %123
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  br label %133

127:                                              ; preds = %121, %77, %67, %61
  %128 = phi { ptr, i32 } [ %62, %61 ], [ %78, %77 ], [ %68, %67 ], [ %122, %121 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #10
  br label %129

129:                                              ; preds = %127, %59
  %130 = phi { ptr, i32 } [ %128, %127 ], [ %60, %59 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #10
  br label %131

131:                                              ; preds = %129, %57
  %132 = phi { ptr, i32 } [ %130, %129 ], [ %58, %57 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  br label %134

133:                                              ; preds = %126, %29
  ret void

134:                                              ; preds = %131, %27
  %135 = phi { ptr, i32 } [ %132, %131 ], [ %28, %27 ]
  call void @_ZN11xercesc_2_720DOM_DocumentFragmentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #10
  resume { ptr, i32 } %135
}

; Function Attrs: mustprogress noinline optsize uwtable
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
  tail call void @_ZN11xercesc_2_720DOM_DocumentFragmentC1EPNS_20DocumentFragmentImplE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef null) #9
  %15 = icmp eq i32 %3, 3
  br i1 %15, label %27, label %16

16:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  %17 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %1, i64 0, i32 6
  invoke void @_ZN11xercesc_2_712DOM_Document22createDocumentFragmentEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_DocumentFragment") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %17) #9
          to label %18 unwind label %21

18:                                               ; preds = %16
  %19 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_720DOM_DocumentFragmentaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %5) #9
          to label %20 unwind label %23

20:                                               ; preds = %18
  call void @_ZN11xercesc_2_720DOM_DocumentFragmentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  br label %27

21:                                               ; preds = %16
  %22 = landingpad { ptr, i32 }
          cleanup
  br label %25

23:                                               ; preds = %18
  %24 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_720DOM_DocumentFragmentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #10
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi { ptr, i32 } [ %24, %23 ], [ %22, %21 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  br label %109

27:                                               ; preds = %20, %4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #11
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %2) #9
          to label %28 unwind label %34

28:                                               ; preds = %27
  invoke void @_ZN11xercesc_2_79RangeImpl21traverseRightBoundaryENS_8DOM_NodeEi(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %6, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull %7, i32 noundef %3) #9
          to label %29 unwind label %36

29:                                               ; preds = %28
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #10
  %30 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef null) #9
          to label %31 unwind label %38

31:                                               ; preds = %29
  br i1 %30, label %32, label %40

32:                                               ; preds = %31
  invoke void @_ZN11xercesc_2_78DOM_Node11appendChildERKS0_(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %6) #9
          to label %33 unwind label %38

33:                                               ; preds = %32
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #10
  br label %40

34:                                               ; preds = %27
  %35 = landingpad { ptr, i32 }
          cleanup
  br label %107

36:                                               ; preds = %28
  %37 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #10
  br label %107

38:                                               ; preds = %32, %29
  %39 = landingpad { ptr, i32 }
          cleanup
  br label %105

40:                                               ; preds = %33, %31
  %41 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %1, i64 0, i32 1
  %42 = invoke noundef zeroext i16 @_ZNK11xercesc_2_79RangeImpl7indexOfERKNS_8DOM_NodeES3_(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %41) #9
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
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #11
  invoke void @_ZNK11xercesc_2_78DOM_Node18getPreviousSiblingEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %2) #9
          to label %56 unwind label %69

56:                                               ; preds = %55
  %57 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %9) #9
          to label %58 unwind label %71

58:                                               ; preds = %56
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #11
  br label %59

59:                                               ; preds = %58, %91
  %60 = phi i32 [ %92, %91 ], [ %47, %58 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #11
  invoke void @_ZNK11xercesc_2_78DOM_Node18getPreviousSiblingEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %6) #9
          to label %61 unwind label %75

61:                                               ; preds = %59
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #11
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %6) #9
          to label %62 unwind label %77

62:                                               ; preds = %61
  invoke void @_ZN11xercesc_2_79RangeImpl21traverseFullySelectedENS_8DOM_NodeEi(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %11, ptr nonnull align 8 poison, ptr noundef nonnull %12, i32 noundef %3) #9
          to label %63 unwind label %79

63:                                               ; preds = %62
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12) #10
  %64 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef null) #9
          to label %65 unwind label %81

65:                                               ; preds = %63
  br i1 %64, label %66, label %89

66:                                               ; preds = %65
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #11
  invoke void @_ZNK11xercesc_2_78DOM_Node13getFirstChildEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %14, ptr noundef nonnull align 8 dereferenceable(8) %0) #9
          to label %67 unwind label %83

67:                                               ; preds = %66
  invoke void @_ZN11xercesc_2_78DOM_Node12insertBeforeERKS0_S2_(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %13, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %14) #9
          to label %68 unwind label %85

68:                                               ; preds = %67
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13) #10
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #11
  br label %89

69:                                               ; preds = %55
  %70 = landingpad { ptr, i32 }
          cleanup
  br label %73

71:                                               ; preds = %56
  %72 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #10
  br label %73

73:                                               ; preds = %71, %69
  %74 = phi { ptr, i32 } [ %72, %71 ], [ %70, %69 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #11
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
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12) #10
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
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14) #10
  br label %87

87:                                               ; preds = %85, %83
  %88 = phi { ptr, i32 } [ %86, %85 ], [ %84, %83 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #11
  br label %94

89:                                               ; preds = %68, %65
  %90 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %10) #9
          to label %91 unwind label %81

91:                                               ; preds = %89
  %92 = add nsw i32 %60, -1
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #11
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #11
  %93 = icmp sgt i32 %60, 1
  br i1 %93, label %59, label %100, !llvm.loop !103

94:                                               ; preds = %87, %81
  %95 = phi { ptr, i32 } [ %82, %81 ], [ %88, %87 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #10
  br label %96

96:                                               ; preds = %94, %79, %77
  %97 = phi { ptr, i32 } [ %95, %94 ], [ %80, %79 ], [ %78, %77 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #11
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #10
  br label %98

98:                                               ; preds = %96, %75
  %99 = phi { ptr, i32 } [ %97, %96 ], [ %76, %75 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #11
  br label %105

100:                                              ; preds = %91
  %101 = icmp eq i32 %3, 2
  br i1 %101, label %104, label %102

102:                                              ; preds = %49, %100
  invoke void @_ZN11xercesc_2_79RangeImpl12setEndBeforeERKNS_8DOM_NodeE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #9
          to label %103 unwind label %53

103:                                              ; preds = %102
  invoke void @_ZN11xercesc_2_79RangeImpl8collapseEb(ptr noundef nonnull align 8 dereferenceable(72) %1, i1 noundef zeroext false) #9
          to label %104 unwind label %53

104:                                              ; preds = %103, %100, %49
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  ret void

105:                                              ; preds = %51, %98, %73, %53, %38
  %106 = phi { ptr, i32 } [ %39, %38 ], [ %52, %51 ], [ %54, %53 ], [ %99, %98 ], [ %74, %73 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #10
  br label %107

107:                                              ; preds = %105, %36, %34
  %108 = phi { ptr, i32 } [ %106, %105 ], [ %37, %36 ], [ %35, %34 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  br label %109

109:                                              ; preds = %107, %25
  %110 = phi { ptr, i32 } [ %108, %107 ], [ %26, %25 ]
  call void @_ZN11xercesc_2_720DOM_DocumentFragmentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #10
  resume { ptr, i32 } %110
}

; Function Attrs: mustprogress noinline optsize uwtable
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
  tail call void @_ZN11xercesc_2_720DOM_DocumentFragmentC1EPNS_20DocumentFragmentImplE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef null) #9
  %14 = icmp eq i32 %3, 3
  br i1 %14, label %26, label %15

15:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  %16 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %1, i64 0, i32 6
  invoke void @_ZN11xercesc_2_712DOM_Document22createDocumentFragmentEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_DocumentFragment") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %16) #9
          to label %17 unwind label %20

17:                                               ; preds = %15
  %18 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_720DOM_DocumentFragmentaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %5) #9
          to label %19 unwind label %22

19:                                               ; preds = %17
  call void @_ZN11xercesc_2_720DOM_DocumentFragmentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  br label %26

20:                                               ; preds = %15
  %21 = landingpad { ptr, i32 }
          cleanup
  br label %24

22:                                               ; preds = %17
  %23 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_720DOM_DocumentFragmentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #10
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi { ptr, i32 } [ %23, %22 ], [ %21, %20 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  br label %97

26:                                               ; preds = %19, %4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #11
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %2) #9
          to label %27 unwind label %33

27:                                               ; preds = %26
  invoke void @_ZN11xercesc_2_79RangeImpl20traverseLeftBoundaryENS_8DOM_NodeEi(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %6, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull %7, i32 noundef %3) #9
          to label %28 unwind label %35

28:                                               ; preds = %27
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #10
  %29 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef null) #9
          to label %30 unwind label %37

30:                                               ; preds = %28
  br i1 %29, label %31, label %39

31:                                               ; preds = %30
  invoke void @_ZN11xercesc_2_78DOM_Node11appendChildERKS0_(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %6) #9
          to label %32 unwind label %37

32:                                               ; preds = %31
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #10
  br label %39

33:                                               ; preds = %26
  %34 = landingpad { ptr, i32 }
          cleanup
  br label %95

35:                                               ; preds = %27
  %36 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #10
  br label %95

37:                                               ; preds = %31, %28
  %38 = landingpad { ptr, i32 }
          cleanup
  br label %93

39:                                               ; preds = %32, %30
  %40 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %1, i64 0, i32 3
  %41 = invoke noundef zeroext i16 @_ZNK11xercesc_2_79RangeImpl7indexOfERKNS_8DOM_NodeES3_(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %40) #9
          to label %42 unwind label %61

42:                                               ; preds = %39
  %43 = zext i16 %41 to i32
  %44 = xor i32 %43, -1
  %45 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %1, i64 0, i32 4
  %46 = load i32, ptr %45, align 8, !tbaa !47
  %47 = add i32 %46, %44
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #11
  invoke void @_ZNK11xercesc_2_78DOM_Node14getNextSiblingEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %2) #9
          to label %48 unwind label %63

48:                                               ; preds = %42
  %49 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %9) #9
          to label %50 unwind label %65

50:                                               ; preds = %48
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #11
  %51 = icmp sgt i32 %47, 0
  br i1 %51, label %52, label %86

52:                                               ; preds = %50, %79
  %53 = phi i32 [ %80, %79 ], [ %47, %50 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #11
  invoke void @_ZNK11xercesc_2_78DOM_Node14getNextSiblingEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %6) #9
          to label %54 unwind label %69

54:                                               ; preds = %52
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #11
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %6) #9
          to label %55 unwind label %71

55:                                               ; preds = %54
  invoke void @_ZN11xercesc_2_79RangeImpl21traverseFullySelectedENS_8DOM_NodeEi(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %11, ptr nonnull align 8 poison, ptr noundef nonnull %12, i32 noundef %3) #9
          to label %56 unwind label %73

56:                                               ; preds = %55
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12) #10
  %57 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef null) #9
          to label %58 unwind label %75

58:                                               ; preds = %56
  br i1 %57, label %59, label %77

59:                                               ; preds = %58
  invoke void @_ZN11xercesc_2_78DOM_Node11appendChildERKS0_(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %13, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %11) #9
          to label %60 unwind label %75

60:                                               ; preds = %59
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13) #10
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
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #10
  br label %67

67:                                               ; preds = %65, %63
  %68 = phi { ptr, i32 } [ %66, %65 ], [ %64, %63 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #11
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
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12) #10
  br label %82

75:                                               ; preds = %77, %59, %56
  %76 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #10
  br label %82

77:                                               ; preds = %60, %58
  %78 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %10) #9
          to label %79 unwind label %75

79:                                               ; preds = %77
  %80 = add nsw i32 %53, -1
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #11
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #11
  %81 = icmp sgt i32 %53, 1
  br i1 %81, label %52, label %86, !llvm.loop !104

82:                                               ; preds = %75, %73, %71
  %83 = phi { ptr, i32 } [ %76, %75 ], [ %74, %73 ], [ %72, %71 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #11
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #10
  br label %84

84:                                               ; preds = %82, %69
  %85 = phi { ptr, i32 } [ %83, %82 ], [ %70, %69 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #11
  br label %93

86:                                               ; preds = %79, %50
  %87 = icmp eq i32 %3, 2
  br i1 %87, label %92, label %88

88:                                               ; preds = %86
  invoke void @_ZN11xercesc_2_79RangeImpl13setStartAfterERKNS_8DOM_NodeE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #9
          to label %89 unwind label %90

89:                                               ; preds = %88
  invoke void @_ZN11xercesc_2_79RangeImpl8collapseEb(ptr noundef nonnull align 8 dereferenceable(72) %1, i1 noundef zeroext true) #9
          to label %92 unwind label %90

90:                                               ; preds = %89, %88
  %91 = landingpad { ptr, i32 }
          cleanup
  br label %93

92:                                               ; preds = %89, %86
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  ret void

93:                                               ; preds = %61, %90, %84, %67, %37
  %94 = phi { ptr, i32 } [ %38, %37 ], [ %62, %61 ], [ %85, %84 ], [ %91, %90 ], [ %68, %67 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #10
  br label %95

95:                                               ; preds = %93, %35, %33
  %96 = phi { ptr, i32 } [ %94, %93 ], [ %36, %35 ], [ %34, %33 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  br label %97

97:                                               ; preds = %95, %24
  %98 = phi { ptr, i32 } [ %96, %95 ], [ %25, %24 ]
  call void @_ZN11xercesc_2_720DOM_DocumentFragmentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #10
  resume { ptr, i32 } %98
}

; Function Attrs: mustprogress noinline optsize uwtable
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
  tail call void @_ZN11xercesc_2_720DOM_DocumentFragmentC1EPNS_20DocumentFragmentImplE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef null) #9
  %19 = icmp eq i32 %4, 3
  br i1 %19, label %31, label %20

20:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #11
  %21 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %1, i64 0, i32 6
  invoke void @_ZN11xercesc_2_712DOM_Document22createDocumentFragmentEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_DocumentFragment") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %21) #9
          to label %22 unwind label %25

22:                                               ; preds = %20
  %23 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_720DOM_DocumentFragmentaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %6) #9
          to label %24 unwind label %27

24:                                               ; preds = %22
  call void @_ZN11xercesc_2_720DOM_DocumentFragmentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  br label %31

25:                                               ; preds = %20
  %26 = landingpad { ptr, i32 }
          cleanup
  br label %29

27:                                               ; preds = %22
  %28 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_720DOM_DocumentFragmentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #10
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi { ptr, i32 } [ %28, %27 ], [ %26, %25 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  br label %136

31:                                               ; preds = %24, %5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #11
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %2) #9
          to label %32 unwind label %38

32:                                               ; preds = %31
  invoke void @_ZN11xercesc_2_79RangeImpl20traverseLeftBoundaryENS_8DOM_NodeEi(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %7, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull %8, i32 noundef %4) #9
          to label %33 unwind label %40

33:                                               ; preds = %32
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #10
  %34 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef null) #9
          to label %35 unwind label %42

35:                                               ; preds = %33
  br i1 %34, label %36, label %44

36:                                               ; preds = %35
  invoke void @_ZN11xercesc_2_78DOM_Node11appendChildERKS0_(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %7) #9
          to label %37 unwind label %42

37:                                               ; preds = %36
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #10
  br label %44

38:                                               ; preds = %31
  %39 = landingpad { ptr, i32 }
          cleanup
  br label %134

40:                                               ; preds = %32
  %41 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #10
  br label %134

42:                                               ; preds = %36, %33
  %43 = landingpad { ptr, i32 }
          cleanup
  br label %132

44:                                               ; preds = %37, %35
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #11
  invoke void @_ZNK11xercesc_2_78DOM_Node13getParentNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %2) #9
          to label %45 unwind label %67

45:                                               ; preds = %44
  %46 = invoke noundef zeroext i16 @_ZNK11xercesc_2_79RangeImpl7indexOfERKNS_8DOM_NodeES3_(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %10) #9
          to label %47 unwind label %69

47:                                               ; preds = %45
  %48 = invoke noundef zeroext i16 @_ZNK11xercesc_2_79RangeImpl7indexOfERKNS_8DOM_NodeES3_(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %10) #9
          to label %49 unwind label %71

49:                                               ; preds = %47
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #11
  invoke void @_ZNK11xercesc_2_78DOM_Node14getNextSiblingEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %11, ptr noundef nonnull align 8 dereferenceable(8) %2) #9
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
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #11
  invoke void @_ZNK11xercesc_2_78DOM_Node14getNextSiblingEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %12, ptr noundef nonnull align 8 dereferenceable(8) %11) #9
          to label %58 unwind label %75

58:                                               ; preds = %56
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #11
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %11) #9
          to label %59 unwind label %77

59:                                               ; preds = %58
  invoke void @_ZN11xercesc_2_79RangeImpl21traverseFullySelectedENS_8DOM_NodeEi(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %13, ptr nonnull align 8 poison, ptr noundef nonnull %14, i32 noundef %4) #9
          to label %60 unwind label %79

60:                                               ; preds = %59
  %61 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %13) #9
          to label %62 unwind label %81

62:                                               ; preds = %60
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13) #10
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #11
  %63 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef null) #9
          to label %64 unwind label %87

64:                                               ; preds = %62
  br i1 %63, label %65, label %89

65:                                               ; preds = %64
  invoke void @_ZN11xercesc_2_78DOM_Node11appendChildERKS0_(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %15, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %7) #9
          to label %66 unwind label %87

66:                                               ; preds = %65
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %15) #10
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
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13) #10
  br label %83

83:                                               ; preds = %81, %79
  %84 = phi { ptr, i32 } [ %82, %81 ], [ %80, %79 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14) #10
  br label %85

85:                                               ; preds = %83, %77
  %86 = phi { ptr, i32 } [ %84, %83 ], [ %78, %77 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #11
  br label %94

87:                                               ; preds = %89, %65, %62
  %88 = landingpad { ptr, i32 }
          cleanup
  br label %94

89:                                               ; preds = %66, %64
  %90 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %12) #9
          to label %91 unwind label %87

91:                                               ; preds = %89
  %92 = add nsw i32 %57, -1
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #11
  %93 = icmp sgt i32 %57, 1
  br i1 %93, label %56, label %98, !llvm.loop !105

94:                                               ; preds = %87, %85
  %95 = phi { ptr, i32 } [ %88, %87 ], [ %86, %85 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12) #10
  br label %96

96:                                               ; preds = %94, %75
  %97 = phi { ptr, i32 } [ %95, %94 ], [ %76, %75 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #11
  br label %124

98:                                               ; preds = %91, %50
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #11
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull align 8 dereferenceable(8) %3) #9
          to label %99 unwind label %107

99:                                               ; preds = %98
  invoke void @_ZN11xercesc_2_79RangeImpl21traverseRightBoundaryENS_8DOM_NodeEi(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %16, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull %17, i32 noundef %4) #9
          to label %100 unwind label %109

100:                                              ; preds = %99
  %101 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %16) #9
          to label %102 unwind label %111

102:                                              ; preds = %100
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %16) #10
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %17) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #11
  %103 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef null) #9
          to label %104 unwind label %117

104:                                              ; preds = %102
  br i1 %103, label %105, label %119

105:                                              ; preds = %104
  invoke void @_ZN11xercesc_2_78DOM_Node11appendChildERKS0_(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %18, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %7) #9
          to label %106 unwind label %117

106:                                              ; preds = %105
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %18) #10
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
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %16) #10
  br label %113

113:                                              ; preds = %111, %109
  %114 = phi { ptr, i32 } [ %112, %111 ], [ %110, %109 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %17) #10
  br label %115

115:                                              ; preds = %113, %107
  %116 = phi { ptr, i32 } [ %114, %113 ], [ %108, %107 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #11
  br label %124

117:                                              ; preds = %122, %121, %105, %102
  %118 = landingpad { ptr, i32 }
          cleanup
  br label %124

119:                                              ; preds = %106, %104
  %120 = icmp eq i32 %4, 2
  br i1 %120, label %123, label %121

121:                                              ; preds = %119
  invoke void @_ZN11xercesc_2_79RangeImpl13setStartAfterERKNS_8DOM_NodeE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #9
          to label %122 unwind label %117

122:                                              ; preds = %121
  invoke void @_ZN11xercesc_2_79RangeImpl8collapseEb(ptr noundef nonnull align 8 dereferenceable(72) %1, i1 noundef zeroext true) #9
          to label %123 unwind label %117

123:                                              ; preds = %122, %119
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #11
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #11
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #11
  ret void

124:                                              ; preds = %117, %115, %96
  %125 = phi { ptr, i32 } [ %97, %96 ], [ %118, %117 ], [ %116, %115 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #10
  br label %126

126:                                              ; preds = %124, %73
  %127 = phi { ptr, i32 } [ %125, %124 ], [ %74, %73 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #11
  br label %128

128:                                              ; preds = %71, %126, %69
  %129 = phi { ptr, i32 } [ %70, %69 ], [ %127, %126 ], [ %72, %71 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #10
  br label %130

130:                                              ; preds = %128, %67
  %131 = phi { ptr, i32 } [ %129, %128 ], [ %68, %67 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #11
  br label %132

132:                                              ; preds = %130, %42
  %133 = phi { ptr, i32 } [ %131, %130 ], [ %43, %42 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #10
  br label %134

134:                                              ; preds = %132, %40, %38
  %135 = phi { ptr, i32 } [ %133, %132 ], [ %41, %40 ], [ %39, %38 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #11
  br label %136

136:                                              ; preds = %134, %29
  %137 = phi { ptr, i32 } [ %135, %134 ], [ %30, %29 ]
  call void @_ZN11xercesc_2_720DOM_DocumentFragmentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #10
  resume { ptr, i32 } %137
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_720DOM_DocumentFragmentC1EPNS_20DocumentFragmentImplE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712DOM_Document22createDocumentFragmentEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_DocumentFragment") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_720DOM_DocumentFragmentaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK11xercesc_2_78DOM_Node9cloneNodeEb(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_Node") align 8, ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78DOM_Node12setNodeValueERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717DOM_CharacterData10deleteDataEjj(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79RangeImpl15getSelectedNodeENS_8DOM_NodeEi(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr nocapture nonnull readnone align 8 %1, ptr noundef nonnull %2, i32 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %5 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %6 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %7 = tail call noundef signext i16 @_ZNK11xercesc_2_78DOM_Node11getNodeTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #9
  %8 = icmp eq i16 %7, 3
  br i1 %8, label %9, label %10

9:                                                ; preds = %4
  tail call void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %2) #9
  br label %42

10:                                               ; preds = %4
  %11 = icmp slt i32 %3, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %10
  tail call void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %2) #9
  br label %42

13:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  call void @_ZNK11xercesc_2_78DOM_Node13getFirstChildEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %2) #9
  br label %14

14:                                               ; preds = %24, %13
  %15 = phi i32 [ %3, %13 ], [ %21, %24 ]
  %16 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef null) #9
          to label %17 unwind label %25

17:                                               ; preds = %14
  %18 = icmp sgt i32 %15, 0
  %19 = select i1 %16, i1 %18, i1 false
  br i1 %19, label %20, label %35

20:                                               ; preds = %17
  %21 = add nsw i32 %15, -1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #11
  invoke void @_ZNK11xercesc_2_78DOM_Node14getNextSiblingEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %5) #9
          to label %22 unwind label %29

22:                                               ; preds = %20
  %23 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) #9
          to label %24 unwind label %31

24:                                               ; preds = %22
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  br label %14, !llvm.loop !106

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
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #10
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi { ptr, i32 } [ %32, %31 ], [ %30, %29 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  br label %40

35:                                               ; preds = %17
  %36 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef null) #9
          to label %37 unwind label %27

37:                                               ; preds = %35
  %38 = select i1 %36, ptr %5, ptr %2
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %38) #9
          to label %39 unwind label %27

39:                                               ; preds = %37
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  br label %42

40:                                               ; preds = %25, %27, %33
  %41 = phi { ptr, i32 } [ %34, %33 ], [ %26, %25 ], [ %28, %27 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  resume { ptr, i32 } %41

42:                                               ; preds = %39, %12, %9
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79RangeImpl21traverseFullySelectedENS_8DOM_NodeEi(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr nocapture nonnull readnone align 8 %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %5 = alloca %"class.xercesc_2_7::DOMString", align 8
  %6 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %7 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  switch i32 %3, label %29 [
    i32 2, label %8
    i32 1, label %9
    i32 3, label %25
  ]

8:                                                ; preds = %4
  tail call void @_ZNK11xercesc_2_78DOM_Node9cloneNodeEb(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %2, i1 noundef zeroext true) #9
  br label %30

9:                                                ; preds = %4
  %10 = tail call noundef signext i16 @_ZNK11xercesc_2_78DOM_Node11getNodeTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #9
  %11 = icmp eq i16 %10, 10
  br i1 %11, label %12, label %24

12:                                               ; preds = %9
  %13 = tail call ptr @__cxa_allocate_exception(i64 24) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef 0) #9
          to label %14 unwind label %18

14:                                               ; preds = %12
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %13, i16 noundef signext 3, ptr noundef nonnull align 8 dereferenceable(8) %5) #9
          to label %17 unwind label %15

15:                                               ; preds = %14
  %16 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  br label %22

17:                                               ; preds = %14
  invoke void @__cxa_throw(ptr nonnull %13, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #12
          to label %33 unwind label %20

18:                                               ; preds = %12
  %19 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  br label %22

20:                                               ; preds = %17
  %21 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  br label %31

22:                                               ; preds = %15, %18
  %23 = phi { ptr, i32 } [ %19, %18 ], [ %16, %15 ]
  call void @__cxa_free_exception(ptr %13) #11
  br label %31

24:                                               ; preds = %9
  tail call void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %2) #9
  br label %30

25:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #11
  call void @_ZNK11xercesc_2_78DOM_Node13getParentNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %2) #9
  invoke void @_ZN11xercesc_2_78DOM_Node11removeChildERKS0_(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %2) #9
          to label %26 unwind label %27

26:                                               ; preds = %25
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #10
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #11
  call void @_ZN11xercesc_2_78DOM_NodeC1EPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef null) #9
  br label %30

27:                                               ; preds = %25
  %28 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #11
  br label %31

29:                                               ; preds = %4
  tail call void @_ZN11xercesc_2_78DOM_NodeC1EPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef null) #9
  br label %30

30:                                               ; preds = %29, %26, %24, %8
  ret void

31:                                               ; preds = %20, %22, %27
  %32 = phi { ptr, i32 } [ %28, %27 ], [ %23, %22 ], [ %21, %20 ]
  resume { ptr, i32 } %32

33:                                               ; preds = %17
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
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
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  %21 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %1, i64 0, i32 3
  call void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %21) #9
  %22 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %1, i64 0, i32 4
  %23 = load i32, ptr %22, align 8, !tbaa !47
  %24 = add i32 %23, -1
  invoke void @_ZN11xercesc_2_79RangeImpl15getSelectedNodeENS_8DOM_NodeEi(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %5, ptr nonnull align 8 poison, ptr noundef nonnull %6, i32 noundef %24) #9
          to label %25 unwind label %34

25:                                               ; preds = %4
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #10
  %26 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %21) #9
          to label %27 unwind label %36

27:                                               ; preds = %25
  %28 = zext i1 %26 to i8
  %29 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeeqERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %2) #9
          to label %30 unwind label %36

30:                                               ; preds = %27
  br i1 %29, label %31, label %40

31:                                               ; preds = %30
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %5) #9
          to label %32 unwind label %36

32:                                               ; preds = %31
  invoke void @_ZN11xercesc_2_79RangeImpl12traverseNodeENS_8DOM_NodeEbbi(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull %7, i1 noundef zeroext %26, i1 noundef zeroext false, i32 noundef %3) #9
          to label %33 unwind label %38

33:                                               ; preds = %32
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #10
  br label %143

34:                                               ; preds = %4
  %35 = landingpad { ptr, i32 }
          cleanup
  br label %144

36:                                               ; preds = %31, %27, %25
  %37 = landingpad { ptr, i32 }
          cleanup
  br label %144

38:                                               ; preds = %32
  %39 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #10
  br label %144

40:                                               ; preds = %30
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #11
  invoke void @_ZNK11xercesc_2_78DOM_Node13getParentNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %5) #9
          to label %41 unwind label %62

41:                                               ; preds = %40
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #11
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %8) #9
          to label %42 unwind label %64

42:                                               ; preds = %41
  invoke void @_ZN11xercesc_2_79RangeImpl12traverseNodeENS_8DOM_NodeEbbi(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %9, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull %10, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef %3) #9
          to label %43 unwind label %66

43:                                               ; preds = %42
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #10
  %44 = icmp eq i32 %3, 3
  br label %45

45:                                               ; preds = %132, %43
  %46 = phi i8 [ %28, %43 ], [ %50, %132 ]
  %47 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef null) #9
          to label %48 unwind label %70

48:                                               ; preds = %45
  br i1 %47, label %49, label %135

49:                                               ; preds = %48, %88
  %50 = phi i8 [ 1, %88 ], [ %46, %48 ]
  %51 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef null) #9
          to label %52 unwind label %68

52:                                               ; preds = %49
  br i1 %51, label %53, label %97

53:                                               ; preds = %52
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #11
  invoke void @_ZNK11xercesc_2_78DOM_Node18getPreviousSiblingEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %11, ptr noundef nonnull align 8 dereferenceable(8) %5) #9
          to label %54 unwind label %74

54:                                               ; preds = %53
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #11
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %5) #9
          to label %55 unwind label %76

55:                                               ; preds = %54
  %56 = and i8 %50, 1
  %57 = icmp ne i8 %56, 0
  invoke void @_ZN11xercesc_2_79RangeImpl12traverseNodeENS_8DOM_NodeEbbi(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %12, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull %13, i1 noundef zeroext %57, i1 noundef zeroext false, i32 noundef %3) #9
          to label %58 unwind label %78

58:                                               ; preds = %55
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13) #10
  br i1 %44, label %86, label %59

59:                                               ; preds = %58
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #11
  invoke void @_ZNK11xercesc_2_78DOM_Node13getFirstChildEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %15, ptr noundef nonnull align 8 dereferenceable(8) %9) #9
          to label %60 unwind label %80

60:                                               ; preds = %59
  invoke void @_ZN11xercesc_2_78DOM_Node12insertBeforeERKS0_S2_(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %14, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %15) #9
          to label %61 unwind label %82

61:                                               ; preds = %60
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14) #10
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %15) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #11
  br label %86

62:                                               ; preds = %40
  %63 = landingpad { ptr, i32 }
          cleanup
  br label %141

64:                                               ; preds = %41
  %65 = landingpad { ptr, i32 }
          cleanup
  br label %139

66:                                               ; preds = %42
  %67 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #10
  br label %139

68:                                               ; preds = %49
  %69 = landingpad { ptr, i32 }
          cleanup
  br label %137

70:                                               ; preds = %97, %45
  %71 = landingpad { ptr, i32 }
          cleanup
  br label %137

72:                                               ; preds = %135, %100
  %73 = landingpad { ptr, i32 }
          cleanup
  br label %137

74:                                               ; preds = %53
  %75 = landingpad { ptr, i32 }
          cleanup
  br label %95

76:                                               ; preds = %54
  %77 = landingpad { ptr, i32 }
          cleanup
  br label %93

78:                                               ; preds = %55
  %79 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13) #10
  br label %93

80:                                               ; preds = %59
  %81 = landingpad { ptr, i32 }
          cleanup
  br label %84

82:                                               ; preds = %60
  %83 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %15) #10
  br label %84

84:                                               ; preds = %82, %80
  %85 = phi { ptr, i32 } [ %83, %82 ], [ %81, %80 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #11
  br label %91

86:                                               ; preds = %61, %58
  %87 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %11) #9
          to label %88 unwind label %89

88:                                               ; preds = %86
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #11
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #11
  br label %49, !llvm.loop !107

89:                                               ; preds = %86
  %90 = landingpad { ptr, i32 }
          cleanup
  br label %91

91:                                               ; preds = %89, %84
  %92 = phi { ptr, i32 } [ %90, %89 ], [ %85, %84 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12) #10
  br label %93

93:                                               ; preds = %91, %78, %76
  %94 = phi { ptr, i32 } [ %92, %91 ], [ %79, %78 ], [ %77, %76 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #11
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #10
  br label %95

95:                                               ; preds = %93, %74
  %96 = phi { ptr, i32 } [ %94, %93 ], [ %75, %74 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #11
  br label %137

97:                                               ; preds = %52
  %98 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeeqERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %2) #9
          to label %99 unwind label %70

99:                                               ; preds = %97
  br i1 %98, label %100, label %101

100:                                              ; preds = %99
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %9) #9
          to label %136 unwind label %72

101:                                              ; preds = %99
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #11
  invoke void @_ZNK11xercesc_2_78DOM_Node18getPreviousSiblingEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %16, ptr noundef nonnull align 8 dereferenceable(8) %8) #9
          to label %102 unwind label %112

102:                                              ; preds = %101
  %103 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %16) #9
          to label %104 unwind label %114

104:                                              ; preds = %102
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %16) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #11
  invoke void @_ZNK11xercesc_2_78DOM_Node13getParentNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %17, ptr noundef nonnull align 8 dereferenceable(8) %8) #9
          to label %105 unwind label %118

105:                                              ; preds = %104
  %106 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %17) #9
          to label %107 unwind label %120

107:                                              ; preds = %105
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %17) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %18) #11
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull align 8 dereferenceable(8) %8) #9
          to label %108 unwind label %124

108:                                              ; preds = %107
  invoke void @_ZN11xercesc_2_79RangeImpl12traverseNodeENS_8DOM_NodeEbbi(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %18, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull %19, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef %3) #9
          to label %109 unwind label %126

109:                                              ; preds = %108
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %19) #10
  br i1 %44, label %130, label %110

110:                                              ; preds = %109
  invoke void @_ZN11xercesc_2_78DOM_Node11appendChildERKS0_(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %20, ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(8) %9) #9
          to label %111 unwind label %128

111:                                              ; preds = %110
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %20) #10
  br label %130

112:                                              ; preds = %101
  %113 = landingpad { ptr, i32 }
          cleanup
  br label %116

114:                                              ; preds = %102
  %115 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %16) #10
  br label %116

116:                                              ; preds = %114, %112
  %117 = phi { ptr, i32 } [ %115, %114 ], [ %113, %112 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #11
  br label %137

118:                                              ; preds = %104
  %119 = landingpad { ptr, i32 }
          cleanup
  br label %122

120:                                              ; preds = %105
  %121 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %17) #10
  br label %122

122:                                              ; preds = %120, %118
  %123 = phi { ptr, i32 } [ %121, %120 ], [ %119, %118 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #11
  br label %137

124:                                              ; preds = %107
  %125 = landingpad { ptr, i32 }
          cleanup
  br label %133

126:                                              ; preds = %108
  %127 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %19) #10
  br label %133

128:                                              ; preds = %130, %110
  %129 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %18) #10
  br label %133

130:                                              ; preds = %111, %109
  %131 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %18) #9
          to label %132 unwind label %128

132:                                              ; preds = %130
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %18) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #11
  br label %45, !llvm.loop !108

133:                                              ; preds = %128, %126, %124
  %134 = phi { ptr, i32 } [ %129, %128 ], [ %127, %126 ], [ %125, %124 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #11
  br label %137

135:                                              ; preds = %48
  invoke void @_ZN11xercesc_2_78DOM_NodeC1EPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef null) #9
          to label %136 unwind label %72

136:                                              ; preds = %135, %100
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #11
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #11
  br label %143

137:                                              ; preds = %68, %72, %70, %133, %122, %116, %95
  %138 = phi { ptr, i32 } [ %96, %95 ], [ %134, %133 ], [ %123, %122 ], [ %117, %116 ], [ %69, %68 ], [ %71, %70 ], [ %73, %72 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #10
  br label %139

139:                                              ; preds = %137, %66, %64
  %140 = phi { ptr, i32 } [ %138, %137 ], [ %67, %66 ], [ %65, %64 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #11
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #10
  br label %141

141:                                              ; preds = %139, %62
  %142 = phi { ptr, i32 } [ %140, %139 ], [ %63, %62 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #11
  br label %144

143:                                              ; preds = %136, %33
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  ret void

144:                                              ; preds = %36, %38, %141, %34
  %145 = phi ptr [ %6, %34 ], [ %5, %141 ], [ %5, %38 ], [ %5, %36 ]
  %146 = phi { ptr, i32 } [ %35, %34 ], [ %142, %141 ], [ %39, %38 ], [ %37, %36 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %145) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  resume { ptr, i32 } %146
}

; Function Attrs: mustprogress noinline optsize uwtable
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
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  call void @_ZNK11xercesc_2_79RangeImpl17getStartContainerEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %6, ptr noundef nonnull align 8 dereferenceable(72) %1) #9
  %21 = call noundef i32 @_ZNK11xercesc_2_79RangeImpl14getStartOffsetEv(ptr noundef nonnull align 8 dereferenceable(72) %1) #9
  invoke void @_ZN11xercesc_2_79RangeImpl15getSelectedNodeENS_8DOM_NodeEi(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %5, ptr nonnull align 8 poison, ptr noundef nonnull %6, i32 noundef %21) #9
          to label %22 unwind label %32

22:                                               ; preds = %4
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #11
  invoke void @_ZNK11xercesc_2_79RangeImpl17getStartContainerEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %7, ptr noundef nonnull align 8 dereferenceable(72) %1) #9
          to label %23 unwind label %34

23:                                               ; preds = %22
  %24 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %7) #9
          to label %25 unwind label %36

25:                                               ; preds = %23
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #11
  %26 = zext i1 %24 to i8
  %27 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeeqERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %2) #9
          to label %28 unwind label %40

28:                                               ; preds = %25
  br i1 %27, label %29, label %44

29:                                               ; preds = %28
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %5) #9
          to label %30 unwind label %40

30:                                               ; preds = %29
  invoke void @_ZN11xercesc_2_79RangeImpl12traverseNodeENS_8DOM_NodeEbbi(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull %8, i1 noundef zeroext %24, i1 noundef zeroext true, i32 noundef %3) #9
          to label %31 unwind label %42

31:                                               ; preds = %30
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #10
  br label %138

32:                                               ; preds = %4
  %33 = landingpad { ptr, i32 }
          cleanup
  br label %139

34:                                               ; preds = %22
  %35 = landingpad { ptr, i32 }
          cleanup
  br label %38

36:                                               ; preds = %23
  %37 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #10
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi { ptr, i32 } [ %37, %36 ], [ %35, %34 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #11
  br label %139

40:                                               ; preds = %29, %25
  %41 = landingpad { ptr, i32 }
          cleanup
  br label %139

42:                                               ; preds = %30
  %43 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #10
  br label %139

44:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #11
  invoke void @_ZNK11xercesc_2_78DOM_Node13getParentNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %5) #9
          to label %45 unwind label %65

45:                                               ; preds = %44
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #11
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %9) #9
          to label %46 unwind label %67

46:                                               ; preds = %45
  invoke void @_ZN11xercesc_2_79RangeImpl12traverseNodeENS_8DOM_NodeEbbi(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %10, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull %11, i1 noundef zeroext false, i1 noundef zeroext true, i32 noundef %3) #9
          to label %47 unwind label %69

47:                                               ; preds = %46
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #10
  %48 = icmp eq i32 %3, 3
  br label %49

49:                                               ; preds = %127, %47
  %50 = phi i8 [ %26, %47 ], [ %54, %127 ]
  %51 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef null) #9
          to label %52 unwind label %73

52:                                               ; preds = %49
  br i1 %51, label %53, label %130

53:                                               ; preds = %52, %87
  %54 = phi i8 [ 1, %87 ], [ %50, %52 ]
  %55 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef null) #9
          to label %56 unwind label %71

56:                                               ; preds = %53
  br i1 %55, label %57, label %92

57:                                               ; preds = %56
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #11
  invoke void @_ZNK11xercesc_2_78DOM_Node14getNextSiblingEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %12, ptr noundef nonnull align 8 dereferenceable(8) %5) #9
          to label %58 unwind label %77

58:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #11
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %5) #9
          to label %59 unwind label %79

59:                                               ; preds = %58
  %60 = and i8 %54, 1
  %61 = icmp ne i8 %60, 0
  invoke void @_ZN11xercesc_2_79RangeImpl12traverseNodeENS_8DOM_NodeEbbi(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %13, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull %14, i1 noundef zeroext %61, i1 noundef zeroext true, i32 noundef %3) #9
          to label %62 unwind label %81

62:                                               ; preds = %59
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14) #10
  br i1 %48, label %85, label %63

63:                                               ; preds = %62
  invoke void @_ZN11xercesc_2_78DOM_Node11appendChildERKS0_(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %15, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %13) #9
          to label %64 unwind label %83

64:                                               ; preds = %63
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %15) #10
  br label %85

65:                                               ; preds = %44
  %66 = landingpad { ptr, i32 }
          cleanup
  br label %136

67:                                               ; preds = %45
  %68 = landingpad { ptr, i32 }
          cleanup
  br label %134

69:                                               ; preds = %46
  %70 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #10
  br label %134

71:                                               ; preds = %53
  %72 = landingpad { ptr, i32 }
          cleanup
  br label %132

73:                                               ; preds = %92, %49
  %74 = landingpad { ptr, i32 }
          cleanup
  br label %132

75:                                               ; preds = %130, %95
  %76 = landingpad { ptr, i32 }
          cleanup
  br label %132

77:                                               ; preds = %57
  %78 = landingpad { ptr, i32 }
          cleanup
  br label %90

79:                                               ; preds = %58
  %80 = landingpad { ptr, i32 }
          cleanup
  br label %88

81:                                               ; preds = %59
  %82 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14) #10
  br label %88

83:                                               ; preds = %85, %63
  %84 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13) #10
  br label %88

85:                                               ; preds = %64, %62
  %86 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %12) #9
          to label %87 unwind label %83

87:                                               ; preds = %85
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #11
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #11
  br label %53, !llvm.loop !109

88:                                               ; preds = %83, %81, %79
  %89 = phi { ptr, i32 } [ %84, %83 ], [ %82, %81 ], [ %80, %79 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #11
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12) #10
  br label %90

90:                                               ; preds = %88, %77
  %91 = phi { ptr, i32 } [ %89, %88 ], [ %78, %77 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #11
  br label %132

92:                                               ; preds = %56
  %93 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeeqERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %2) #9
          to label %94 unwind label %73

94:                                               ; preds = %92
  br i1 %93, label %95, label %96

95:                                               ; preds = %94
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %10) #9
          to label %131 unwind label %75

96:                                               ; preds = %94
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #11
  invoke void @_ZNK11xercesc_2_78DOM_Node14getNextSiblingEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %16, ptr noundef nonnull align 8 dereferenceable(8) %9) #9
          to label %97 unwind label %107

97:                                               ; preds = %96
  %98 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %16) #9
          to label %99 unwind label %109

99:                                               ; preds = %97
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %16) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #11
  invoke void @_ZNK11xercesc_2_78DOM_Node13getParentNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %17, ptr noundef nonnull align 8 dereferenceable(8) %9) #9
          to label %100 unwind label %113

100:                                              ; preds = %99
  %101 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %17) #9
          to label %102 unwind label %115

102:                                              ; preds = %100
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %17) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %18) #11
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull align 8 dereferenceable(8) %9) #9
          to label %103 unwind label %119

103:                                              ; preds = %102
  invoke void @_ZN11xercesc_2_79RangeImpl12traverseNodeENS_8DOM_NodeEbbi(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %18, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull %19, i1 noundef zeroext false, i1 noundef zeroext true, i32 noundef %3) #9
          to label %104 unwind label %121

104:                                              ; preds = %103
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %19) #10
  br i1 %48, label %125, label %105

105:                                              ; preds = %104
  invoke void @_ZN11xercesc_2_78DOM_Node11appendChildERKS0_(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %20, ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(8) %10) #9
          to label %106 unwind label %123

106:                                              ; preds = %105
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %20) #10
  br label %125

107:                                              ; preds = %96
  %108 = landingpad { ptr, i32 }
          cleanup
  br label %111

109:                                              ; preds = %97
  %110 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %16) #10
  br label %111

111:                                              ; preds = %109, %107
  %112 = phi { ptr, i32 } [ %110, %109 ], [ %108, %107 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #11
  br label %132

113:                                              ; preds = %99
  %114 = landingpad { ptr, i32 }
          cleanup
  br label %117

115:                                              ; preds = %100
  %116 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %17) #10
  br label %117

117:                                              ; preds = %115, %113
  %118 = phi { ptr, i32 } [ %116, %115 ], [ %114, %113 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #11
  br label %132

119:                                              ; preds = %102
  %120 = landingpad { ptr, i32 }
          cleanup
  br label %128

121:                                              ; preds = %103
  %122 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %19) #10
  br label %128

123:                                              ; preds = %125, %105
  %124 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %18) #10
  br label %128

125:                                              ; preds = %106, %104
  %126 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %18) #9
          to label %127 unwind label %123

127:                                              ; preds = %125
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %18) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #11
  br label %49, !llvm.loop !110

128:                                              ; preds = %123, %121, %119
  %129 = phi { ptr, i32 } [ %124, %123 ], [ %122, %121 ], [ %120, %119 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #11
  br label %132

130:                                              ; preds = %52
  invoke void @_ZN11xercesc_2_78DOM_NodeC1EPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef null) #9
          to label %131 unwind label %75

131:                                              ; preds = %130, %95
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #11
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #11
  br label %138

132:                                              ; preds = %71, %75, %73, %128, %117, %111, %90
  %133 = phi { ptr, i32 } [ %91, %90 ], [ %129, %128 ], [ %118, %117 ], [ %112, %111 ], [ %72, %71 ], [ %74, %73 ], [ %76, %75 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #10
  br label %134

134:                                              ; preds = %132, %69, %67
  %135 = phi { ptr, i32 } [ %133, %132 ], [ %70, %69 ], [ %68, %67 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #11
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #10
  br label %136

136:                                              ; preds = %134, %65
  %137 = phi { ptr, i32 } [ %135, %134 ], [ %66, %65 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #11
  br label %139

138:                                              ; preds = %131, %31
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  ret void

139:                                              ; preds = %38, %40, %42, %136, %32
  %140 = phi ptr [ %6, %32 ], [ %5, %136 ], [ %5, %42 ], [ %5, %40 ], [ %5, %38 ]
  %141 = phi { ptr, i32 } [ %33, %32 ], [ %137, %136 ], [ %43, %42 ], [ %41, %40 ], [ %39, %38 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %140) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  resume { ptr, i32 } %141
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79RangeImpl12traverseNodeENS_8DOM_NodeEbbi(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef %2, i1 noundef zeroext %3, i1 noundef zeroext %4, i32 noundef %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %7 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %8 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %9 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  br i1 %3, label %10, label %13

10:                                               ; preds = %6
  call void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %2) #9
  invoke void @_ZN11xercesc_2_79RangeImpl21traverseFullySelectedENS_8DOM_NodeEi(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr nonnull align 8 poison, ptr noundef nonnull %7, i32 noundef %5) #9
          to label %22 unwind label %11

11:                                               ; preds = %10
  %12 = landingpad { ptr, i32 }
          cleanup
  br label %24

13:                                               ; preds = %6
  %14 = tail call noundef signext i16 @_ZNK11xercesc_2_78DOM_Node11getNodeTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #9
  %15 = icmp eq i16 %14, 3
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  call void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %2) #9
  invoke void @_ZN11xercesc_2_79RangeImpl16traverseTextNodeENS_8DOM_NodeEbi(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull %8, i1 noundef zeroext %4, i32 noundef %5) #9
          to label %22 unwind label %17

17:                                               ; preds = %16
  %18 = landingpad { ptr, i32 }
          cleanup
  br label %24

19:                                               ; preds = %13
  call void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %2) #9
  invoke void @_ZN11xercesc_2_79RangeImpl25traversePartiallySelectedENS_8DOM_NodeEi(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr nonnull align 8 poison, ptr noundef nonnull %9, i32 noundef %5) #9
          to label %22 unwind label %20

20:                                               ; preds = %19
  %21 = landingpad { ptr, i32 }
          cleanup
  br label %24

22:                                               ; preds = %19, %16, %10
  %23 = phi ptr [ %7, %10 ], [ %8, %16 ], [ %9, %19 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %23) #10
  ret void

24:                                               ; preds = %20, %17, %11
  %25 = phi ptr [ %9, %20 ], [ %8, %17 ], [ %7, %11 ]
  %26 = phi { ptr, i32 } [ %21, %20 ], [ %18, %17 ], [ %12, %11 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %25) #10
  resume { ptr, i32 } %26
}

; Function Attrs: mustprogress noinline optsize uwtable
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
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #11
  call void @_ZNK11xercesc_2_78DOM_Node12getNodeValueEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %2) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #11
  invoke void @_ZN11xercesc_2_79DOMStringC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #9
          to label %15 unwind label %30

15:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #11
  invoke void @_ZN11xercesc_2_79DOMStringC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #9
          to label %16 unwind label %32

16:                                               ; preds = %15
  br i1 %3, label %17, label %50

17:                                               ; preds = %16
  %18 = call noundef i32 @_ZNK11xercesc_2_79RangeImpl14getStartOffsetEv(ptr noundef nonnull align 8 dereferenceable(72) %1) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #11
  %19 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %1, i64 0, i32 1
  invoke void @_ZNK11xercesc_2_78DOM_Node12getNodeValueEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %19) #9
          to label %20 unwind label %34

20:                                               ; preds = %17
  %21 = invoke noundef i32 @_ZNK11xercesc_2_79DOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #9
          to label %22 unwind label %36

22:                                               ; preds = %20
  %23 = sub i32 %21, %18
  invoke void @_ZNK11xercesc_2_79DOMString13substringDataEjj(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef %18, i32 noundef %23) #9
          to label %24 unwind label %36

24:                                               ; preds = %22
  %25 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %9) #9
          to label %26 unwind label %38

26:                                               ; preds = %24
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #10
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #11
  invoke void @_ZNK11xercesc_2_79DOMString13substringDataEjj(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %11, ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 0, i32 noundef %18) #9
          to label %27 unwind label %44

27:                                               ; preds = %26
  %28 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %11) #9
          to label %29 unwind label %46

29:                                               ; preds = %27
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #11
  br label %79

30:                                               ; preds = %5
  %31 = landingpad { ptr, i32 }
          cleanup
  br label %96

32:                                               ; preds = %15
  %33 = landingpad { ptr, i32 }
          cleanup
  br label %94

34:                                               ; preds = %17
  %35 = landingpad { ptr, i32 }
          cleanup
  br label %42

36:                                               ; preds = %22, %20
  %37 = landingpad { ptr, i32 }
          cleanup
  br label %40

38:                                               ; preds = %24
  %39 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #10
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi { ptr, i32 } [ %39, %38 ], [ %37, %36 ]
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #10
  br label %42

42:                                               ; preds = %40, %34
  %43 = phi { ptr, i32 } [ %41, %40 ], [ %35, %34 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #11
  br label %92

44:                                               ; preds = %26
  %45 = landingpad { ptr, i32 }
          cleanup
  br label %48

46:                                               ; preds = %27
  %47 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #10
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi { ptr, i32 } [ %47, %46 ], [ %45, %44 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #11
  br label %92

50:                                               ; preds = %16
  %51 = call noundef i32 @_ZNK11xercesc_2_79RangeImpl12getEndOffsetEv(ptr noundef nonnull align 8 dereferenceable(72) %1) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #11
  invoke void @_ZNK11xercesc_2_79DOMString13substringDataEjj(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %12, ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 0, i32 noundef %51) #9
          to label %52 unwind label %63

52:                                               ; preds = %50
  %53 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %12) #9
          to label %54 unwind label %65

54:                                               ; preds = %52
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #11
  %55 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %1, i64 0, i32 3
  invoke void @_ZNK11xercesc_2_78DOM_Node12getNodeValueEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %14, ptr noundef nonnull align 8 dereferenceable(8) %55) #9
          to label %56 unwind label %69

56:                                               ; preds = %54
  %57 = invoke noundef i32 @_ZNK11xercesc_2_79DOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(8) %14) #9
          to label %58 unwind label %71

58:                                               ; preds = %56
  %59 = sub i32 %57, %51
  invoke void @_ZNK11xercesc_2_79DOMString13substringDataEjj(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %13, ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef %51, i32 noundef %59) #9
          to label %60 unwind label %71

60:                                               ; preds = %58
  %61 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %13) #9
          to label %62 unwind label %73

62:                                               ; preds = %60
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13) #10
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #11
  br label %79

63:                                               ; preds = %50
  %64 = landingpad { ptr, i32 }
          cleanup
  br label %67

65:                                               ; preds = %52
  %66 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12) #10
  br label %67

67:                                               ; preds = %65, %63
  %68 = phi { ptr, i32 } [ %66, %65 ], [ %64, %63 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #11
  br label %92

69:                                               ; preds = %54
  %70 = landingpad { ptr, i32 }
          cleanup
  br label %77

71:                                               ; preds = %58, %56
  %72 = landingpad { ptr, i32 }
          cleanup
  br label %75

73:                                               ; preds = %60
  %74 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13) #10
  br label %75

75:                                               ; preds = %73, %71
  %76 = phi { ptr, i32 } [ %74, %73 ], [ %72, %71 ]
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14) #10
  br label %77

77:                                               ; preds = %75, %69
  %78 = phi { ptr, i32 } [ %76, %75 ], [ %70, %69 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #11
  br label %92

79:                                               ; preds = %62, %29
  %80 = icmp eq i32 %4, 2
  br i1 %80, label %87, label %81

81:                                               ; preds = %79
  invoke void @_ZN11xercesc_2_78DOM_Node12setNodeValueERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %8) #9
          to label %84 unwind label %82

82:                                               ; preds = %87, %86, %81
  %83 = landingpad { ptr, i32 }
          cleanup
  br label %92

84:                                               ; preds = %81
  %85 = icmp eq i32 %4, 3
  br i1 %85, label %86, label %87

86:                                               ; preds = %84
  invoke void @_ZN11xercesc_2_78DOM_NodeC1EPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef null) #9
          to label %91 unwind label %82

87:                                               ; preds = %79, %84
  invoke void @_ZNK11xercesc_2_78DOM_Node9cloneNodeEb(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %2, i1 noundef zeroext false) #9
          to label %88 unwind label %82

88:                                               ; preds = %87
  invoke void @_ZN11xercesc_2_78DOM_Node12setNodeValueERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %7) #9
          to label %91 unwind label %89

89:                                               ; preds = %88
  %90 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #10
  br label %92

91:                                               ; preds = %88, %86
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #11
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #11
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  ret void

92:                                               ; preds = %67, %77, %42, %48, %89, %82
  %93 = phi { ptr, i32 } [ %83, %82 ], [ %90, %89 ], [ %49, %48 ], [ %43, %42 ], [ %78, %77 ], [ %68, %67 ]
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #10
  br label %94

94:                                               ; preds = %92, %32
  %95 = phi { ptr, i32 } [ %93, %92 ], [ %33, %32 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #11
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #10
  br label %96

96:                                               ; preds = %94, %30
  %97 = phi { ptr, i32 } [ %95, %94 ], [ %31, %30 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #11
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  resume { ptr, i32 } %97
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79RangeImpl25traversePartiallySelectedENS_8DOM_NodeEi(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr nocapture nonnull readnone align 8 %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 !prof !34 {
  switch i32 %3, label %7 [
    i32 3, label %5
    i32 2, label %6
    i32 1, label %6
  ]

5:                                                ; preds = %4
  tail call void @_ZN11xercesc_2_78DOM_NodeC1EPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef null) #9
  br label %8

6:                                                ; preds = %4, %4
  tail call void @_ZNK11xercesc_2_78DOM_Node9cloneNodeEb(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %2, i1 noundef zeroext false) #9
  br label %8

7:                                                ; preds = %4
  tail call void @_ZN11xercesc_2_78DOM_NodeC1EPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef null) #9
  br label %8

8:                                                ; preds = %7, %6, %5
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78DOM_Node11removeChildERKS0_(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_Node") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79RangeImpl19recurseTreeAndCheckERNS_8DOM_NodeES2_(ptr nocapture noundef nonnull readnone align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %4 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %5 = alloca %"class.xercesc_2_7::DOMString", align 8
  %6 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %7 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  call void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %1) #9
  br label %8

8:                                                ; preds = %48, %3
  %9 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef null) #9
          to label %10 unwind label %15

10:                                               ; preds = %8
  br i1 %9, label %11, label %14

11:                                               ; preds = %10
  %12 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeneERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %2) #9
          to label %13 unwind label %15

13:                                               ; preds = %11
  br i1 %12, label %17, label %14

14:                                               ; preds = %10, %13
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  ret void

15:                                               ; preds = %38, %32, %11, %8
  %16 = landingpad { ptr, i32 }
          cleanup
  br label %55

17:                                               ; preds = %13
  %18 = load ptr, ptr %4, align 8, !tbaa !52
  %19 = call noundef zeroext i1 @_ZNK11xercesc_2_78NodeImpl10isReadOnlyEv(ptr noundef nonnull align 8 dereferenceable(26) %18) #9
  br i1 %19, label %20, label %32

20:                                               ; preds = %17
  %21 = call ptr @__cxa_allocate_exception(i64 24) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef 0) #9
          to label %22 unwind label %26

22:                                               ; preds = %20
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %21, i16 noundef signext 7, ptr noundef nonnull align 8 dereferenceable(8) %5) #9
          to label %25 unwind label %23

23:                                               ; preds = %22
  %24 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  br label %30

25:                                               ; preds = %22
  invoke void @__cxa_throw(ptr nonnull %21, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #12
          to label %57 unwind label %28

26:                                               ; preds = %20
  %27 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  br label %30

28:                                               ; preds = %25
  %29 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  br label %55

30:                                               ; preds = %23, %26
  %31 = phi { ptr, i32 } [ %27, %26 ], [ %24, %23 ]
  call void @__cxa_free_exception(ptr %21) #11
  br label %55

32:                                               ; preds = %17
  %33 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node13hasChildNodesEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #9
          to label %34 unwind label %15

34:                                               ; preds = %32
  br i1 %33, label %35, label %45

35:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #11
  invoke void @_ZNK11xercesc_2_78DOM_Node13getFirstChildEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %4) #9
          to label %36 unwind label %39

36:                                               ; preds = %35
  %37 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %6) #9
          to label %38 unwind label %41

38:                                               ; preds = %36
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  invoke void @_ZN11xercesc_2_79RangeImpl19recurseTreeAndCheckERNS_8DOM_NodeES2_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %2) #9
          to label %45 unwind label %15

39:                                               ; preds = %35
  %40 = landingpad { ptr, i32 }
          cleanup
  br label %43

41:                                               ; preds = %36
  %42 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #10
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi { ptr, i32 } [ %42, %41 ], [ %40, %39 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  br label %55

45:                                               ; preds = %34, %38
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #11
  invoke void @_ZNK11xercesc_2_78DOM_Node14getNextSiblingEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %4) #9
          to label %46 unwind label %49

46:                                               ; preds = %45
  %47 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %7) #9
          to label %48 unwind label %51

48:                                               ; preds = %46
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #11
  br label %8, !llvm.loop !111

49:                                               ; preds = %45
  %50 = landingpad { ptr, i32 }
          cleanup
  br label %53

51:                                               ; preds = %46
  %52 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #10
  br label %53

53:                                               ; preds = %51, %49
  %54 = phi { ptr, i32 } [ %52, %51 ], [ %50, %49 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #11
  br label %55

55:                                               ; preds = %28, %30, %53, %43, %15
  %56 = phi { ptr, i32 } [ %31, %30 ], [ %29, %28 ], [ %54, %53 ], [ %16, %15 ], [ %44, %43 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  resume { ptr, i32 } %56

57:                                               ; preds = %25
  unreachable
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node13hasChildNodesEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79RangeImpl11removeChildERNS_8DOM_NodeES2_(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %1, i64 0, i32 8
  %6 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %3) #9
  tail call void @_ZN11xercesc_2_78DOM_Node11removeChildERKS0_(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #9
  %7 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef null) #9
          to label %10 unwind label %8

8:                                                ; preds = %4
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #10
  resume { ptr, i32 } %9

10:                                               ; preds = %4
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79RangeImpl19receiveReplacedTextEPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %4 = icmp eq ptr %1, null
  br i1 %4, label %28, label %5

5:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  call void @_ZN11xercesc_2_78DOM_NodeC1EPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %1) #9
  %6 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 1
  %7 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeeqERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %6) #9
          to label %8 unwind label %15

8:                                                ; preds = %5
  br i1 %7, label %9, label %17

9:                                                ; preds = %8
  %10 = invoke noundef signext i16 @_ZNK11xercesc_2_78DOM_Node11getNodeTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #9
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
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  resume { ptr, i32 } %16

17:                                               ; preds = %13, %11, %8
  %18 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 3
  %19 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeeqERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %18) #9
          to label %20 unwind label %15

20:                                               ; preds = %17
  br i1 %19, label %21, label %27

21:                                               ; preds = %20
  %22 = invoke noundef signext i16 @_ZNK11xercesc_2_78DOM_Node11getNodeTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %18) #9
          to label %23 unwind label %15

23:                                               ; preds = %21
  %24 = icmp eq i16 %22, 3
  br i1 %24, label %25, label %27

25:                                               ; preds = %23
  %26 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 4
  store i32 0, ptr %26, align 8, !tbaa !47
  br label %27

27:                                               ; preds = %25, %23, %20
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  br label %28

28:                                               ; preds = %2, %27
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79RangeImpl25updateRangeForDeletedTextERNS_8DOM_NodeEji(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 !prof !34 {
  %5 = tail call noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeeqEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef null) #9
  br i1 %5, label %40, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 1
  %8 = tail call noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeeqERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %7) #9
  br i1 %8, label %9, label %23

9:                                                ; preds = %6
  %10 = tail call noundef signext i16 @_ZNK11xercesc_2_78DOM_Node11getNodeTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #9
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
  %25 = tail call noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeeqERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %24) #9
  br i1 %25, label %26, label %40

26:                                               ; preds = %23
  %27 = tail call noundef signext i16 @_ZNK11xercesc_2_78DOM_Node11getNodeTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %24) #9
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

; Function Attrs: mustprogress noinline optsize uwtable
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
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  call void @_ZN11xercesc_2_78DOM_NodeC1EPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %1) #9
  %12 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeeqERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %3) #9
          to label %13 unwind label %14

13:                                               ; preds = %10
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  br i1 %12, label %131, label %16

14:                                               ; preds = %10
  %15 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  br label %134

16:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  call void @_ZN11xercesc_2_78DOM_NodeC1EPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %1) #9
  %17 = load ptr, ptr %1, align 8, !tbaa !35
  %18 = getelementptr inbounds ptr, ptr %17, i64 27
  %19 = load ptr, ptr %18, align 8
  %20 = invoke noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(26) %1) #9
          to label %21 unwind label %34

21:                                               ; preds = %16
  %22 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !112
  %24 = icmp eq ptr %20, %23
  br i1 %24, label %25, label %38

25:                                               ; preds = %21
  %26 = invoke noundef zeroext i16 @_ZNK11xercesc_2_79RangeImpl7indexOfERKNS_8DOM_NodeES3_(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %22) #9
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
  %42 = invoke noundef ptr %41(ptr noundef nonnull align 8 dereferenceable(26) %1) #9
          to label %43 unwind label %34

43:                                               ; preds = %38
  %44 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !113
  %46 = icmp eq ptr %42, %45
  br i1 %46, label %47, label %58

47:                                               ; preds = %43
  %48 = invoke noundef zeroext i16 @_ZNK11xercesc_2_79RangeImpl7indexOfERKNS_8DOM_NodeES3_(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %44) #9
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
  %62 = invoke noundef ptr %61(ptr noundef nonnull align 8 dereferenceable(26) %1) #9
          to label %63 unwind label %34

63:                                               ; preds = %58
  %64 = load ptr, ptr %22, align 8, !tbaa !112
  %65 = icmp eq ptr %62, %64
  br i1 %65, label %66, label %74

66:                                               ; preds = %63
  %67 = load ptr, ptr %1, align 8, !tbaa !35
  %68 = getelementptr inbounds ptr, ptr %67, i64 27
  %69 = load ptr, ptr %68, align 8
  %70 = invoke noundef ptr %69(ptr noundef nonnull align 8 dereferenceable(26) %1) #9
          to label %71 unwind label %34

71:                                               ; preds = %66
  %72 = load ptr, ptr %44, align 8, !tbaa !113
  %73 = icmp eq ptr %70, %72
  br i1 %73, label %130, label %74

74:                                               ; preds = %71, %63
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  invoke void @_ZN11xercesc_2_78DOM_NodeC1EPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %1) #9
          to label %75 unwind label %90

75:                                               ; preds = %74
  %76 = invoke noundef zeroext i1 @_ZN11xercesc_2_79RangeImpl12isAncestorOfERKNS_8DOM_NodeES3_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %22) #9
          to label %77 unwind label %92

77:                                               ; preds = %75
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  br i1 %76, label %78, label %102

78:                                               ; preds = %77
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #11
  %79 = load ptr, ptr %1, align 8, !tbaa !35
  %80 = getelementptr inbounds ptr, ptr %79, i64 27
  %81 = load ptr, ptr %80, align 8
  %82 = invoke noundef ptr %81(ptr noundef nonnull align 8 dereferenceable(26) %1) #9
          to label %83 unwind label %96

83:                                               ; preds = %78
  invoke void @_ZN11xercesc_2_78DOM_NodeC1EPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %82) #9
          to label %84 unwind label %96

84:                                               ; preds = %83
  invoke void @_ZN11xercesc_2_79RangeImpl17setStartContainerERKNS_8DOM_NodeE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %6) #9
          to label %85 unwind label %98

85:                                               ; preds = %84
  %86 = invoke noundef zeroext i16 @_ZNK11xercesc_2_79RangeImpl7indexOfERKNS_8DOM_NodeES3_(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %6) #9
          to label %87 unwind label %98

87:                                               ; preds = %85
  %88 = zext i16 %86 to i32
  %89 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 2
  store i32 %88, ptr %89, align 8, !tbaa !38
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  br label %102

90:                                               ; preds = %74
  %91 = landingpad { ptr, i32 }
          cleanup
  br label %94

92:                                               ; preds = %75
  %93 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #10
  br label %94

94:                                               ; preds = %92, %90
  %95 = phi { ptr, i32 } [ %93, %92 ], [ %91, %90 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  br label %132

96:                                               ; preds = %83, %78
  %97 = landingpad { ptr, i32 }
          cleanup
  br label %100

98:                                               ; preds = %85, %84
  %99 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #10
  br label %100

100:                                              ; preds = %98, %96
  %101 = phi { ptr, i32 } [ %99, %98 ], [ %97, %96 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  br label %132

102:                                              ; preds = %87, %77
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #11
  invoke void @_ZN11xercesc_2_78DOM_NodeC1EPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %1) #9
          to label %103 unwind label %118

103:                                              ; preds = %102
  %104 = invoke noundef zeroext i1 @_ZN11xercesc_2_79RangeImpl12isAncestorOfERKNS_8DOM_NodeES3_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %44) #9
          to label %105 unwind label %120

105:                                              ; preds = %103
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #11
  br i1 %104, label %106, label %130

106:                                              ; preds = %105
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #11
  %107 = load ptr, ptr %1, align 8, !tbaa !35
  %108 = getelementptr inbounds ptr, ptr %107, i64 27
  %109 = load ptr, ptr %108, align 8
  %110 = invoke noundef ptr %109(ptr noundef nonnull align 8 dereferenceable(26) %1) #9
          to label %111 unwind label %124

111:                                              ; preds = %106
  invoke void @_ZN11xercesc_2_78DOM_NodeC1EPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %110) #9
          to label %112 unwind label %124

112:                                              ; preds = %111
  invoke void @_ZN11xercesc_2_79RangeImpl15setEndContainerERKNS_8DOM_NodeE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %8) #9
          to label %113 unwind label %126

113:                                              ; preds = %112
  %114 = invoke noundef zeroext i16 @_ZNK11xercesc_2_79RangeImpl7indexOfERKNS_8DOM_NodeES3_(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %8) #9
          to label %115 unwind label %126

115:                                              ; preds = %113
  %116 = zext i16 %114 to i32
  %117 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 4
  store i32 %116, ptr %117, align 8, !tbaa !47
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #11
  br label %130

118:                                              ; preds = %102
  %119 = landingpad { ptr, i32 }
          cleanup
  br label %122

120:                                              ; preds = %103
  %121 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #10
  br label %122

122:                                              ; preds = %120, %118
  %123 = phi { ptr, i32 } [ %121, %120 ], [ %119, %118 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #11
  br label %132

124:                                              ; preds = %111, %106
  %125 = landingpad { ptr, i32 }
          cleanup
  br label %128

126:                                              ; preds = %113, %112
  %127 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #10
  br label %128

128:                                              ; preds = %126, %124
  %129 = phi { ptr, i32 } [ %127, %126 ], [ %125, %124 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #11
  br label %132

130:                                              ; preds = %105, %115, %71
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  br label %131

131:                                              ; preds = %13, %2, %130
  ret void

132:                                              ; preds = %128, %122, %100, %94, %56, %36, %34
  %133 = phi { ptr, i32 } [ %129, %128 ], [ %123, %122 ], [ %101, %100 ], [ %95, %94 ], [ %35, %34 ], [ %57, %56 ], [ %37, %36 ]
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  br label %134

134:                                              ; preds = %132, %14
  %135 = phi { ptr, i32 } [ %133, %132 ], [ %15, %14 ]
  resume { ptr, i32 } %135
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79RangeImpl26updateRangeForInsertedNodeEPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %4 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %5 = icmp eq ptr %1, null
  br i1 %5, label %44, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %1, align 8, !tbaa !35
  %8 = getelementptr inbounds ptr, ptr %7, i64 27
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(26) %1) #9
  %11 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !112
  %13 = icmp eq ptr %10, %12
  br i1 %13, label %14, label %25

14:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  call void @_ZN11xercesc_2_78DOM_NodeC1EPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %1) #9
  %15 = invoke noundef zeroext i16 @_ZNK11xercesc_2_79RangeImpl7indexOfERKNS_8DOM_NodeES3_(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %11) #9
          to label %16 unwind label %23

16:                                               ; preds = %14
  %17 = zext i16 %15 to i32
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
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
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  br label %45

25:                                               ; preds = %16, %21, %6
  %26 = load ptr, ptr %1, align 8, !tbaa !35
  %27 = getelementptr inbounds ptr, ptr %26, i64 27
  %28 = load ptr, ptr %27, align 8
  %29 = call noundef ptr %28(ptr noundef nonnull align 8 dereferenceable(26) %1) #9
  %30 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !113
  %32 = icmp eq ptr %29, %31
  br i1 %32, label %33, label %44

33:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  call void @_ZN11xercesc_2_78DOM_NodeC1EPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %1) #9
  %34 = invoke noundef zeroext i16 @_ZNK11xercesc_2_79RangeImpl7indexOfERKNS_8DOM_NodeES3_(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %30) #9
          to label %35 unwind label %42

35:                                               ; preds = %33
  %36 = zext i16 %34 to i32
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
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
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  br label %45

44:                                               ; preds = %35, %40, %2, %25
  ret void

45:                                               ; preds = %42, %23
  %46 = phi { ptr, i32 } [ %43, %42 ], [ %24, %23 ]
  resume { ptr, i32 } %46
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79RangeImpl15updateSplitInfoEPNS_8TextImplES2_j(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %5 = alloca %"class.xercesc_2_7::DOM_Text", align 8
  %6 = alloca %"class.xercesc_2_7::DOM_Text", align 8
  %7 = icmp eq ptr %2, null
  br i1 %7, label %38, label %8

8:                                                ; preds = %4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  call void @_ZN11xercesc_2_78DOM_TextC1EPNS_8TextImplE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %1) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #11
  invoke void @_ZN11xercesc_2_78DOM_TextC1EPNS_8TextImplE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %2) #9
          to label %9 unwind label %20

9:                                                ; preds = %8
  %10 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 1
  %11 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeeqERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %5) #9
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
  %19 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %6) #9
          to label %24 unwind label %22

20:                                               ; preds = %8
  %21 = landingpad { ptr, i32 }
          cleanup
  br label %39

22:                                               ; preds = %32, %24, %17, %9
  %23 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_TextD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #10
  br label %39

24:                                               ; preds = %17, %13, %12
  %25 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 3
  %26 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_NodeeqERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef nonnull align 8 dereferenceable(8) %5) #9
          to label %27 unwind label %22

27:                                               ; preds = %24
  br i1 %26, label %28, label %37

28:                                               ; preds = %27
  %29 = getelementptr inbounds %"class.xercesc_2_7::RangeImpl", ptr %0, i64 0, i32 4
  %30 = load i32, ptr %29, align 8, !tbaa !47
  %31 = icmp ugt i32 %30, %3
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef nonnull align 8 dereferenceable(8) %6) #9
          to label %34 unwind label %22

34:                                               ; preds = %32
  %35 = load i32, ptr %29, align 8, !tbaa !47
  %36 = sub i32 %35, %3
  store i32 %36, ptr %29, align 8, !tbaa !47
  br label %37

37:                                               ; preds = %34, %28, %27
  call void @_ZN11xercesc_2_78DOM_TextD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  call void @_ZN11xercesc_2_78DOM_TextD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  br label %38

38:                                               ; preds = %4, %37
  ret void

39:                                               ; preds = %22, %20
  %40 = phi { ptr, i32 } [ %23, %22 ], [ %21, %20 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  call void @_ZN11xercesc_2_78DOM_TextD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  resume { ptr, i32 } %40
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78DOM_TextC1EPNS_8TextImplE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_714RefCountedImpl10referencedEv(ptr noundef nonnull align 8 dereferenceable(12)) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #9
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #9
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #10
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
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #10
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 !prof !34 {
  ret ptr @_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !114
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #9
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #9
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #10
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #0 comdat align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #9
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_8NodeImplEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 comdat align 2 !prof !34 {
  %5 = zext i1 %2 to i8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #9
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_715BaseRefVectorOfINS_8NodeImplEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 1
  store i8 %5, ptr %6, align 8, !tbaa !117
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  store i32 0, ptr %7, align 4, !tbaa !100
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 3
  store i32 %1, ptr %8, align 8, !tbaa !118
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  store ptr null, ptr %9, align 8, !tbaa !98
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 5
  store ptr %3, ptr %10, align 8, !tbaa !101
  %11 = zext i32 %1 to i64
  %12 = shl nuw nsw i64 %11, 3
  %13 = load ptr, ptr %3, align 8, !tbaa !35
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %12) #9
  store ptr %16, ptr %9, align 8, !tbaa !98
  %17 = icmp eq i32 %1, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %19, %4
  ret void

19:                                               ; preds = %4, %19
  %20 = phi i64 [ %23, %19 ], [ 0, %4 ]
  %21 = load ptr, ptr %9, align 8, !tbaa !98
  %22 = getelementptr inbounds ptr, ptr %21, i64 %20
  store ptr null, ptr %22, align 8, !tbaa !66
  %23 = add nuw nsw i64 %20, 1
  %24 = icmp eq i64 %23, %11
  br i1 %24, label %18, label %19, !llvm.loop !119
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_8NodeImplEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_8NodeImplEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !117, !range !50, !noundef !51
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %28, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !100
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %28, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %23
  %12 = phi i32 [ %7, %9 ], [ %24, %23 ]
  %13 = phi i64 [ 0, %9 ], [ %25, %23 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !98
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !66
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %11
  %19 = load ptr, ptr %16, align 8, !tbaa !35
  %20 = getelementptr inbounds ptr, ptr %19, i64 1
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(26) %16) #10
  %22 = load i32, ptr %6, align 4, !tbaa !100
  br label %23

23:                                               ; preds = %11, %18
  %24 = phi i32 [ %12, %11 ], [ %22, %18 ]
  %25 = add nuw nsw i64 %13, 1
  %26 = zext i32 %24 to i64
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %11, label %28, !llvm.loop !120

28:                                               ; preds = %23, %5, %1
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !101
  %31 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !98
  %33 = load ptr, ptr %30, align 8, !tbaa !35
  %34 = getelementptr inbounds ptr, ptr %33, i64 3
  %35 = load ptr, ptr %34, align 8
  invoke void %35(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef %32) #9
          to label %36 unwind label %37

36:                                               ; preds = %28
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_8NodeImplEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #10
  ret void

37:                                               ; preds = %28
  %38 = landingpad { ptr, i32 }
          catch ptr null
  %39 = extractvalue { ptr, i32 } %38, 0
  tail call void @__clang_call_terminate(ptr %39) #13
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_8NodeImplEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 comdat align 2 {
  tail call void @_ZN11xercesc_2_711RefVectorOfINS_8NodeImplEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #10
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_8NodeImplEE12setElementAtEPS1_j(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !100
  %6 = icmp ugt i32 %5, %2
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !101
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str, i32 noundef 67, i32 noundef 116, ptr noundef %10) #9
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #12
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #11
  resume { ptr, i32 } %13

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 1
  %16 = load i8, ptr %15, align 8, !tbaa !117, !range !50, !noundef !51
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = zext i32 %2 to i64
  br label %31

20:                                               ; preds = %14
  %21 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !98
  %23 = zext i32 %2 to i64
  %24 = getelementptr inbounds ptr, ptr %22, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !66
  %26 = icmp eq ptr %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %20
  %28 = load ptr, ptr %25, align 8, !tbaa !35
  %29 = getelementptr inbounds ptr, ptr %28, i64 1
  %30 = load ptr, ptr %29, align 8
  tail call void %30(ptr noundef nonnull align 8 dereferenceable(26) %25) #10
  br label %31

31:                                               ; preds = %18, %20, %27
  %32 = phi i64 [ %19, %18 ], [ %23, %20 ], [ %23, %27 ]
  %33 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %34 = load ptr, ptr %33, align 8, !tbaa !98
  %35 = getelementptr inbounds ptr, ptr %34, i64 %32
  store ptr %1, ptr %35, align 8, !tbaa !66
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_8NodeImplEE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 comdat align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !100
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  br label %9

8:                                                ; preds = %25, %1
  store i32 0, ptr %2, align 4, !tbaa !100
  ret void

9:                                                ; preds = %5, %25
  %10 = phi i32 [ %3, %5 ], [ %26, %25 ]
  %11 = phi i64 [ 0, %5 ], [ %29, %25 ]
  %12 = load i8, ptr %6, align 8, !tbaa !117, !range !50, !noundef !51
  %13 = icmp eq i8 %12, 0
  %14 = load ptr, ptr %7, align 8, !tbaa !98
  br i1 %13, label %25, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds ptr, ptr %14, i64 %11
  %17 = load ptr, ptr %16, align 8, !tbaa !66
  %18 = icmp eq ptr %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr %17, align 8, !tbaa !35
  %21 = getelementptr inbounds ptr, ptr %20, i64 1
  %22 = load ptr, ptr %21, align 8
  tail call void %22(ptr noundef nonnull align 8 dereferenceable(26) %17) #10
  %23 = load ptr, ptr %7, align 8, !tbaa !98
  %24 = load i32, ptr %2, align 4, !tbaa !100
  br label %25

25:                                               ; preds = %15, %19, %9
  %26 = phi i32 [ %10, %15 ], [ %24, %19 ], [ %10, %9 ]
  %27 = phi ptr [ %14, %15 ], [ %23, %19 ], [ %14, %9 ]
  %28 = getelementptr inbounds ptr, ptr %27, i64 %11
  store ptr null, ptr %28, align 8, !tbaa !66
  %29 = add nuw nsw i64 %11, 1
  %30 = zext i32 %26 to i64
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %9, label %8, !llvm.loop !121
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_8NodeImplEE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !100
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !101
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 144, i32 noundef 116, ptr noundef %9) #9
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #12
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #11
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 1
  %15 = load i8, ptr %14, align 8, !tbaa !117, !range !50, !noundef !51
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !98
  %20 = zext i32 %1 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !66
  %23 = icmp eq ptr %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %17
  %25 = load ptr, ptr %22, align 8, !tbaa !35
  %26 = getelementptr inbounds ptr, ptr %25, i64 1
  %27 = load ptr, ptr %26, align 8
  tail call void %27(ptr noundef nonnull align 8 dereferenceable(26) %22) #10
  %28 = load i32, ptr %3, align 4, !tbaa !100
  br label %29

29:                                               ; preds = %17, %24, %13
  %30 = phi i32 [ %4, %17 ], [ %28, %24 ], [ %4, %13 ]
  %31 = add i32 %30, -1
  %32 = icmp eq i32 %31, %1
  br i1 %32, label %41, label %33

33:                                               ; preds = %29
  %34 = icmp ugt i32 %31, %1
  br i1 %34, label %37, label %35

35:                                               ; preds = %33
  %36 = zext i32 %31 to i64
  br label %46

37:                                               ; preds = %33
  %38 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %39 = zext i32 %1 to i64
  %40 = zext i32 %31 to i64
  br label %51

41:                                               ; preds = %29
  %42 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %43 = load ptr, ptr %42, align 8, !tbaa !98
  %44 = zext i32 %1 to i64
  %45 = getelementptr inbounds ptr, ptr %43, i64 %44
  br label %59

46:                                               ; preds = %51, %35
  %47 = phi i64 [ %36, %35 ], [ %40, %51 ]
  %48 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !98
  %50 = getelementptr inbounds ptr, ptr %49, i64 %47
  br label %59

51:                                               ; preds = %37, %51
  %52 = phi i64 [ %39, %37 ], [ %54, %51 ]
  %53 = load ptr, ptr %38, align 8, !tbaa !98
  %54 = add nuw nsw i64 %52, 1
  %55 = getelementptr inbounds ptr, ptr %53, i64 %54
  %56 = load ptr, ptr %55, align 8, !tbaa !66
  %57 = getelementptr inbounds ptr, ptr %53, i64 %52
  store ptr %56, ptr %57, align 8, !tbaa !66
  %58 = icmp eq i64 %54, %40
  br i1 %58, label %46, label %51, !llvm.loop !122

59:                                               ; preds = %46, %41
  %60 = phi ptr [ %50, %46 ], [ %45, %41 ]
  store ptr null, ptr %60, align 8, !tbaa !66
  store i32 %31, ptr %3, align 4, !tbaa !100
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_8NodeImplEE17removeLastElementEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 comdat align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !100
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 4, !tbaa !100
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !117, !range !50, !noundef !51
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !98
  %13 = zext i32 %6 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !66
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %10
  %18 = load ptr, ptr %15, align 8, !tbaa !35
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(26) %15) #10
  br label %21

21:                                               ; preds = %10, %17, %1, %5
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_8NodeImplEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !117, !range !50, !noundef !51
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %28, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !100
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %28, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %23
  %12 = phi i32 [ %7, %9 ], [ %24, %23 ]
  %13 = phi i64 [ 0, %9 ], [ %25, %23 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !98
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !66
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %11
  %19 = load ptr, ptr %16, align 8, !tbaa !35
  %20 = getelementptr inbounds ptr, ptr %19, i64 1
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(26) %16) #10
  %22 = load i32, ptr %6, align 4, !tbaa !100
  br label %23

23:                                               ; preds = %11, %18
  %24 = phi i32 [ %12, %11 ], [ %22, %18 ]
  %25 = add nuw nsw i64 %13, 1
  %26 = zext i32 %24 to i64
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %11, label %28, !llvm.loop !123

28:                                               ; preds = %23, %5, %1
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !101
  %31 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !98
  %33 = load ptr, ptr %30, align 8, !tbaa !35
  %34 = getelementptr inbounds ptr, ptr %33, i64 3
  %35 = load ptr, ptr %34, align 8
  tail call void %35(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef %32) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #3 comdat align 2 !prof !124 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_8NodeImplEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 comdat align 2 !prof !34 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_8NodeImplEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 comdat align 2 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_8NodeImplEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #10
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #11
  tail call void @_ZSt9terminatev() #13
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_8NodeImplEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !100
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !118
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %52

9:                                                ; preds = %2
  %10 = lshr i32 %7, 1
  %11 = add i32 %10, %7
  %12 = tail call i32 @llvm.umax.i32(i32 %5, i32 %11)
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !101
  %15 = zext i32 %12 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = load ptr, ptr %14, align 8, !tbaa !35
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef %16) #9
  %21 = load i32, ptr %3, align 4, !tbaa !100
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %9
  %24 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %25 = zext i32 %21 to i64
  br label %37

26:                                               ; preds = %37, %9
  %27 = icmp ult i32 %21, %12
  br i1 %27, label %28, label %45

28:                                               ; preds = %26
  %29 = zext i32 %21 to i64
  %30 = shl nuw nsw i64 %29, 3
  %31 = getelementptr i8, ptr %20, i64 %30
  %32 = xor i32 %21, -1
  %33 = add i32 %12, %32
  %34 = zext i32 %33 to i64
  %35 = shl nuw nsw i64 %34, 3
  %36 = add nuw nsw i64 %35, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %31, i8 0, i64 %36, i1 false), !tbaa !66
  br label %45

37:                                               ; preds = %23, %37
  %38 = phi i64 [ 0, %23 ], [ %43, %37 ]
  %39 = load ptr, ptr %24, align 8, !tbaa !98
  %40 = getelementptr inbounds ptr, ptr %39, i64 %38
  %41 = load ptr, ptr %40, align 8, !tbaa !66
  %42 = getelementptr inbounds ptr, ptr %20, i64 %38
  store ptr %41, ptr %42, align 8, !tbaa !66
  %43 = add nuw nsw i64 %38, 1
  %44 = icmp eq i64 %43, %25
  br i1 %44, label %26, label %37, !llvm.loop !125

45:                                               ; preds = %28, %26
  %46 = load ptr, ptr %13, align 8, !tbaa !101
  %47 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %48 = load ptr, ptr %47, align 8, !tbaa !98
  %49 = load ptr, ptr %46, align 8, !tbaa !35
  %50 = getelementptr inbounds ptr, ptr %49, i64 3
  %51 = load ptr, ptr %50, align 8
  tail call void %51(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef %48) #9
  store ptr %20, ptr %47, align 8, !tbaa !98
  store i32 %12, ptr %6, align 8, !tbaa !118
  br label %52

52:                                               ; preds = %2, %45
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #7

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { optsize }
attributes #10 = { nounwind optsize }
attributes #11 = { nounwind }
attributes #12 = { noreturn }
attributes #13 = { noreturn nounwind }

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
!60 = distinct !{!60, !61}
!61 = !{!"llvm.loop.mustprogress"}
!62 = !{!63, !41, i64 12}
!63 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_9RangeImplEEE", !45, i64 8, !41, i64 12, !41, i64 16, !44, i64 24, !44, i64 32}
!64 = !{!63, !44, i64 32}
!65 = !{!63, !44, i64 24}
!66 = !{!44, !44, i64 0}
!67 = distinct !{!67, !61}
!68 = !{!41, !41, i64 0}
!69 = distinct !{!69, !61}
!70 = distinct !{!70, !61}
!71 = distinct !{!71, !61}
!72 = distinct !{!72, !61}
!73 = distinct !{!73, !61}
!74 = distinct !{!74, !61}
!75 = distinct !{!75, !61}
!76 = distinct !{!76, !61}
!77 = distinct !{!77, !61}
!78 = distinct !{!78, !61}
!79 = distinct !{!79, !61}
!80 = distinct !{!80, !61}
!81 = distinct !{!81, !61}
!82 = distinct !{!82, !61}
!83 = distinct !{!83, !61}
!84 = distinct !{!84, !61}
!85 = distinct !{!85, !61}
!86 = distinct !{!86, !61}
!87 = distinct !{!87, !61}
!88 = distinct !{!88, !61}
!89 = distinct !{!89, !61}
!90 = distinct !{!90, !61}
!91 = !{!57, !59, i64 24}
!92 = !{!59, !59, i64 0}
!93 = distinct !{!93, !61}
!94 = distinct !{!94, !61}
!95 = distinct !{!95, !61}
!96 = distinct !{!96, !61}
!97 = !{!54, !44, i64 160}
!98 = !{!99, !44, i64 24}
!99 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_8NodeImplEEE", !45, i64 8, !41, i64 12, !41, i64 16, !44, i64 24, !44, i64 32}
!100 = !{!99, !41, i64 12}
!101 = !{!99, !44, i64 32}
!102 = distinct !{!102, !61}
!103 = distinct !{!103, !61}
!104 = distinct !{!104, !61}
!105 = distinct !{!105, !61}
!106 = distinct !{!106, !61}
!107 = distinct !{!107, !61}
!108 = distinct !{!108, !61}
!109 = distinct !{!109, !61}
!110 = distinct !{!110, !61}
!111 = distinct !{!111, !61}
!112 = !{!39, !44, i64 16}
!113 = !{!39, !44, i64 32}
!114 = !{!115, !44, i64 40}
!115 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !116, i64 8, !44, i64 16, !41, i64 24, !44, i64 32, !44, i64 40}
!116 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !42, i64 0}
!117 = !{!99, !45, i64 8}
!118 = !{!99, !41, i64 16}
!119 = distinct !{!119, !61}
!120 = distinct !{!120, !61}
!121 = distinct !{!121, !61}
!122 = distinct !{!122, !61}
!123 = distinct !{!123, !61}
!124 = !{!"function_entry_count", i64 5836268}
!125 = distinct !{!125, !61}
