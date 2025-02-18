; ModuleID = 'VecAttrListImpl.cpp'
source_filename = "VecAttrListImpl.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::VecAttrListImpl" = type { %"class.xercesc_2_7::AttributeList", i8, i32, ptr }
%"class.xercesc_2_7::AttributeList" = type { ptr }
%"class.xercesc_2_7::BaseRefVectorOf" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::XMLAttr" = type <{ i8, [3 x i8], i32, i32, [4 x i8], ptr, ptr, ptr, ptr, i8, [7 x i8] }>
%"class.xercesc_2_7::ArrayJanitor" = type { ptr, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }

$_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj = comdat any

$_ZN11xercesc_2_712ArrayJanitorItED2Ev = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv = comdat any

$__clang_call_terminate = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTSN11xercesc_2_713AttributeListE = comdat any

$_ZTIN11xercesc_2_713AttributeListE = comdat any

$_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

@_ZTVN11xercesc_2_715VecAttrListImplE = dso_local unnamed_addr constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_715VecAttrListImplE, ptr @_ZN11xercesc_2_715VecAttrListImplD2Ev, ptr @_ZN11xercesc_2_715VecAttrListImplD0Ev, ptr @_ZNK11xercesc_2_715VecAttrListImpl9getLengthEv, ptr @_ZNK11xercesc_2_715VecAttrListImpl7getNameEj, ptr @_ZNK11xercesc_2_715VecAttrListImpl7getTypeEj, ptr @_ZNK11xercesc_2_715VecAttrListImpl8getValueEj, ptr @_ZNK11xercesc_2_715VecAttrListImpl7getTypeEPKt, ptr @_ZNK11xercesc_2_715VecAttrListImpl8getValueEPKt, ptr @_ZNK11xercesc_2_715VecAttrListImpl8getValueEPKc] }, align 8
@_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE = external local_unnamed_addr global ptr, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_715VecAttrListImplE = dso_local constant [33 x i8] c"N11xercesc_2_715VecAttrListImplE\00", align 1
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTSN11xercesc_2_713AttributeListE = linkonce_odr dso_local constant [31 x i8] c"N11xercesc_2_713AttributeListE\00", comdat, align 1
@_ZTIN11xercesc_2_713AttributeListE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_713AttributeListE }, comdat, align 8
@_ZTIN11xercesc_2_715VecAttrListImplE = dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_715VecAttrListImplE, i32 0, i32 2, ptr @_ZTIN11xercesc_2_77XMemoryE, i64 2, ptr @_ZTIN11xercesc_2_713AttributeListE, i64 2 }, align 8
@.str = private unnamed_addr constant [33 x i8] c"./xercesc/util/BaseRefVectorOf.c\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant [48 x i8] c"N11xercesc_2_730ArrayIndexOutOfBoundsExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE = external constant [0 x i16], align 2

@_ZN11xercesc_2_715VecAttrListImplC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_715VecAttrListImplC2Ev
@_ZN11xercesc_2_715VecAttrListImplD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_715VecAttrListImplD2Ev

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xercesc_2_715VecAttrListImplC2Ev(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(24) %0) unnamed_addr #0 align 2 !prof !38 {
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xercesc_2_715VecAttrListImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !39
  %2 = getelementptr inbounds %"class.xercesc_2_7::VecAttrListImpl", ptr %0, i64 0, i32 1
  store i8 0, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %"class.xercesc_2_7::VecAttrListImpl", ptr %0, i64 0, i32 2
  store i32 0, ptr %3, align 4, !tbaa !49
  %4 = getelementptr inbounds %"class.xercesc_2_7::VecAttrListImpl", ptr %0, i64 0, i32 3
  store ptr null, ptr %4, align 8, !tbaa !50
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_715VecAttrListImplD2Ev(ptr nocapture noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 align 2 !prof !38 {
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xercesc_2_715VecAttrListImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !39
  %2 = getelementptr inbounds %"class.xercesc_2_7::VecAttrListImpl", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !42, !range !51, !noundef !52
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %13, label %5, !prof !53

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::VecAttrListImpl", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !50
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 8, !tbaa !39
  %11 = getelementptr inbounds ptr, ptr %10, i64 1
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(40) %7) #12
  br label %13

13:                                               ; preds = %5, %9, %1
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_715VecAttrListImplD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 align 2 !prof !54 {
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xercesc_2_715VecAttrListImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !39
  %2 = getelementptr inbounds %"class.xercesc_2_7::VecAttrListImpl", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !42, !range !51, !noundef !52
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::VecAttrListImpl", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !50
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 8, !tbaa !39
  %11 = getelementptr inbounds ptr, ptr %10, i64 1
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(40) %7) #12
  br label %13

13:                                               ; preds = %1, %5, %9
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_715VecAttrListImpl9getLengthEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0) unnamed_addr #3 align 2 !prof !55 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::VecAttrListImpl", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !49
  ret i32 %3
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_715VecAttrListImpl7getNameEj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, i32 noundef %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !56 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::VecAttrListImpl", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !49
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %6, label %26, !prof !57

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::VecAttrListImpl", ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !50
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %8, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !58
  %11 = icmp ugt i32 %10, %1
  br i1 %11, label %19, label %12, !prof !60

12:                                               ; preds = %6
  %13 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %8, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !61
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %13, ptr noundef nonnull @.str, i32 noundef 241, i32 noundef 116, ptr noundef %15)
          to label %16 unwind label %17

16:                                               ; preds = %12
  tail call void @__cxa_throw(ptr nonnull %13, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #13
  unreachable

17:                                               ; preds = %12
  %18 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %13) #12
  resume { ptr, i32 } %18

19:                                               ; preds = %6
  %20 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %8, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !62
  %22 = zext i32 %1 to i64
  %23 = getelementptr inbounds ptr, ptr %21, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !63
  %25 = tail call noundef ptr @_ZNK11xercesc_2_77XMLAttr8getQNameEv(ptr noundef nonnull align 8 dereferenceable(49) %24)
  br label %26

26:                                               ; preds = %2, %19
  %27 = phi ptr [ %25, %19 ], [ null, %2 ]
  ret ptr %27
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !64 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !58
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !60

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !61
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 241, i32 noundef 116, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #13
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #12
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !62
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !63
  ret ptr %18
}

declare noundef ptr @_ZNK11xercesc_2_77XMLAttr8getQNameEv(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_715VecAttrListImpl7getTypeEj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, i32 noundef %1) unnamed_addr #6 align 2 !prof !54 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::VecAttrListImpl", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !49
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %6, label %16

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::VecAttrListImpl", ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !50
  %9 = tail call noundef ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %8, i32 noundef %1)
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !65
  %12 = load ptr, ptr %7, align 8, !tbaa !50
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %12, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !61
  %15 = tail call noundef ptr @_ZN11xercesc_2_79XMLAttDef16getAttTypeStringENS0_8AttTypesEPNS_13MemoryManagerE(i32 noundef %11, ptr noundef %14)
  br label %16

16:                                               ; preds = %2, %6
  %17 = phi ptr [ %15, %6 ], [ null, %2 ]
  ret ptr %17
}

declare noundef ptr @_ZN11xercesc_2_79XMLAttDef16getAttTypeStringENS0_8AttTypesEPNS_13MemoryManagerE(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_715VecAttrListImpl8getValueEj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, i32 noundef %1) unnamed_addr #6 align 2 !prof !68 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::VecAttrListImpl", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !49
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %6, label %12, !prof !69

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::VecAttrListImpl", ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !50
  %9 = tail call noundef ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %8, i32 noundef %1)
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %9, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !70
  br label %12

12:                                               ; preds = %2, %6
  %13 = phi ptr [ %11, %6 ], [ null, %2 ]
  ret ptr %13
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_715VecAttrListImpl7getTypeEPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef readonly %1) unnamed_addr #6 align 2 !prof !54 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::VecAttrListImpl", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !49
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %56, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::VecAttrListImpl", ptr %0, i64 0, i32 3
  %8 = icmp eq ptr %1, null
  br label %13

9:                                                ; preds = %54
  %10 = add nuw i32 %15, 1
  %11 = load i32, ptr %3, align 4, !tbaa !49
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %13, label %56, !llvm.loop !71

13:                                               ; preds = %6, %9
  %14 = phi ptr [ undef, %6 ], [ %55, %9 ]
  %15 = phi i32 [ 0, %6 ], [ %10, %9 ]
  %16 = load ptr, ptr %7, align 8, !tbaa !50
  %17 = tail call noundef ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %16, i32 noundef %15)
  %18 = tail call noundef ptr @_ZNK11xercesc_2_77XMLAttr8getQNameEv(ptr noundef nonnull align 8 dereferenceable(49) %17)
  %19 = icmp eq ptr %18, null
  %20 = or i1 %8, %19
  br i1 %20, label %25, label %21

21:                                               ; preds = %13
  %22 = load i16, ptr %18, align 2, !tbaa !74
  %23 = load i16, ptr %1, align 2, !tbaa !74
  %24 = icmp eq i16 %22, %23
  br i1 %24, label %34, label %45

25:                                               ; preds = %13
  br i1 %19, label %29, label %26

26:                                               ; preds = %25
  %27 = load i16, ptr %18, align 2, !tbaa !74
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %29, label %45

29:                                               ; preds = %26, %25
  br i1 %8, label %33, label %30

30:                                               ; preds = %29
  %31 = load i16, ptr %1, align 2, !tbaa !74
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %30, %29
  br label %45

34:                                               ; preds = %21, %39
  %35 = phi i16 [ %42, %39 ], [ %22, %21 ]
  %36 = phi ptr [ %41, %39 ], [ %1, %21 ]
  %37 = phi ptr [ %40, %39 ], [ %18, %21 ]
  %38 = icmp eq i16 %35, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds i16, ptr %37, i64 1
  %41 = getelementptr inbounds i16, ptr %36, i64 1
  %42 = load i16, ptr %40, align 2, !tbaa !74
  %43 = load i16, ptr %41, align 2, !tbaa !74
  %44 = icmp eq i16 %42, %43
  br i1 %44, label %34, label %45, !llvm.loop !76

45:                                               ; preds = %34, %39, %21, %26, %30, %33
  %46 = phi i1 [ true, %33 ], [ false, %30 ], [ false, %26 ], [ false, %21 ], [ %38, %39 ], [ %38, %34 ]
  br i1 %46, label %47, label %54

47:                                               ; preds = %45
  %48 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %17, i64 0, i32 2
  %49 = load i32, ptr %48, align 4, !tbaa !65
  %50 = load ptr, ptr %7, align 8, !tbaa !50
  %51 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %50, i64 0, i32 5
  %52 = load ptr, ptr %51, align 8, !tbaa !61
  %53 = tail call noundef ptr @_ZN11xercesc_2_79XMLAttDef16getAttTypeStringENS0_8AttTypesEPNS_13MemoryManagerE(i32 noundef %49, ptr noundef %52)
  br label %54

54:                                               ; preds = %45, %47
  %55 = phi ptr [ %53, %47 ], [ %14, %45 ]
  br i1 %46, label %56, label %9

56:                                               ; preds = %54, %9, %2
  %57 = phi ptr [ null, %2 ], [ %55, %54 ], [ null, %9 ]
  ret ptr %57
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_715VecAttrListImpl8getValueEPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef readonly %1) unnamed_addr #6 align 2 !prof !54 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::VecAttrListImpl", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !49
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %52, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::VecAttrListImpl", ptr %0, i64 0, i32 3
  %8 = icmp eq ptr %1, null
  br label %13

9:                                                ; preds = %50
  %10 = add nuw i32 %15, 1
  %11 = load i32, ptr %3, align 4, !tbaa !49
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %13, label %52, !llvm.loop !77

13:                                               ; preds = %6, %9
  %14 = phi ptr [ undef, %6 ], [ %51, %9 ]
  %15 = phi i32 [ 0, %6 ], [ %10, %9 ]
  %16 = load ptr, ptr %7, align 8, !tbaa !50
  %17 = tail call noundef ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %16, i32 noundef %15)
  %18 = tail call noundef ptr @_ZNK11xercesc_2_77XMLAttr8getQNameEv(ptr noundef nonnull align 8 dereferenceable(49) %17)
  %19 = icmp eq ptr %18, null
  %20 = or i1 %8, %19
  br i1 %20, label %25, label %21

21:                                               ; preds = %13
  %22 = load i16, ptr %18, align 2, !tbaa !74
  %23 = load i16, ptr %1, align 2, !tbaa !74
  %24 = icmp eq i16 %22, %23
  br i1 %24, label %34, label %45

25:                                               ; preds = %13
  br i1 %19, label %29, label %26

26:                                               ; preds = %25
  %27 = load i16, ptr %18, align 2, !tbaa !74
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %29, label %45

29:                                               ; preds = %26, %25
  br i1 %8, label %33, label %30

30:                                               ; preds = %29
  %31 = load i16, ptr %1, align 2, !tbaa !74
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %30, %29
  br label %45

34:                                               ; preds = %21, %39
  %35 = phi i16 [ %42, %39 ], [ %22, %21 ]
  %36 = phi ptr [ %41, %39 ], [ %1, %21 ]
  %37 = phi ptr [ %40, %39 ], [ %18, %21 ]
  %38 = icmp eq i16 %35, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds i16, ptr %37, i64 1
  %41 = getelementptr inbounds i16, ptr %36, i64 1
  %42 = load i16, ptr %40, align 2, !tbaa !74
  %43 = load i16, ptr %41, align 2, !tbaa !74
  %44 = icmp eq i16 %42, %43
  br i1 %44, label %34, label %45, !llvm.loop !76

45:                                               ; preds = %34, %39, %21, %26, %30, %33
  %46 = phi i1 [ true, %33 ], [ false, %30 ], [ false, %26 ], [ false, %21 ], [ %38, %39 ], [ %38, %34 ]
  br i1 %46, label %47, label %50

47:                                               ; preds = %45
  %48 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %17, i64 0, i32 5
  %49 = load ptr, ptr %48, align 8, !tbaa !70
  br label %50

50:                                               ; preds = %45, %47
  %51 = phi ptr [ %49, %47 ], [ %14, %45 ]
  br i1 %46, label %52, label %9

52:                                               ; preds = %50, %9, %2
  %53 = phi ptr [ null, %2 ], [ %51, %50 ], [ null, %9 ]
  ret ptr %53
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_715VecAttrListImpl8getValueEPKc(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !54 {
  %3 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %4 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !63
  %5 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKcPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %4)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #12
  %6 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !63
  store ptr %5, ptr %3, align 8, !tbaa !78
  %7 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %3, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !80
  %8 = getelementptr inbounds %"class.xercesc_2_7::VecAttrListImpl", ptr %0, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !49
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %61, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %"class.xercesc_2_7::VecAttrListImpl", ptr %0, i64 0, i32 3
  %13 = icmp eq ptr %5, null
  br label %18

14:                                               ; preds = %59
  %15 = add nuw i32 %20, 1
  %16 = load i32, ptr %8, align 4, !tbaa !49
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %18, label %61, !llvm.loop !81

18:                                               ; preds = %11, %14
  %19 = phi ptr [ undef, %11 ], [ %60, %14 ]
  %20 = phi i32 [ 0, %11 ], [ %15, %14 ]
  %21 = load ptr, ptr %12, align 8, !tbaa !50
  %22 = invoke noundef ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %21, i32 noundef %20)
          to label %23 unwind label %57

23:                                               ; preds = %18
  %24 = invoke noundef ptr @_ZNK11xercesc_2_77XMLAttr8getQNameEv(ptr noundef nonnull align 8 dereferenceable(49) %22)
          to label %25 unwind label %57

25:                                               ; preds = %23
  %26 = icmp eq ptr %24, null
  %27 = or i1 %13, %26
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = load i16, ptr %24, align 2, !tbaa !74
  %30 = load i16, ptr %5, align 2, !tbaa !74
  %31 = icmp eq i16 %29, %30
  br i1 %31, label %41, label %52

32:                                               ; preds = %25
  br i1 %26, label %36, label %33

33:                                               ; preds = %32
  %34 = load i16, ptr %24, align 2, !tbaa !74
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %36, label %52

36:                                               ; preds = %33, %32
  br i1 %13, label %40, label %37

37:                                               ; preds = %36
  %38 = load i16, ptr %5, align 2, !tbaa !74
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %37, %36
  br label %52

41:                                               ; preds = %28, %46
  %42 = phi i16 [ %49, %46 ], [ %29, %28 ]
  %43 = phi ptr [ %48, %46 ], [ %5, %28 ]
  %44 = phi ptr [ %47, %46 ], [ %24, %28 ]
  %45 = icmp eq i16 %42, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds i16, ptr %44, i64 1
  %48 = getelementptr inbounds i16, ptr %43, i64 1
  %49 = load i16, ptr %47, align 2, !tbaa !74
  %50 = load i16, ptr %48, align 2, !tbaa !74
  %51 = icmp eq i16 %49, %50
  br i1 %51, label %41, label %52, !llvm.loop !76

52:                                               ; preds = %41, %46, %28, %33, %37, %40
  %53 = phi i1 [ true, %40 ], [ false, %37 ], [ false, %33 ], [ false, %28 ], [ %45, %46 ], [ %45, %41 ]
  br i1 %53, label %54, label %59

54:                                               ; preds = %52
  %55 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %22, i64 0, i32 5
  %56 = load ptr, ptr %55, align 8, !tbaa !70
  br label %59

57:                                               ; preds = %23, %18
  %58 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #12
  resume { ptr, i32 } %58

59:                                               ; preds = %52, %54
  %60 = phi ptr [ %56, %54 ], [ %19, %52 ]
  br i1 %53, label %61, label %14

61:                                               ; preds = %59, %14, %2
  %62 = phi ptr [ null, %2 ], [ %60, %59 ], [ null, %14 ]
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #12
  ret ptr %62
}

declare noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKcPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !prof !82 {
  %2 = load ptr, ptr %0, align 8, !tbaa !78
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4, !prof !83

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !80
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8, !prof !84

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 8, !tbaa !39
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %2)
          to label %13 unwind label %14, !prof !85

12:                                               ; preds = %4
  tail call void @_ZdaPv(ptr noundef %2) #14
  br label %13

13:                                               ; preds = %8, %1, %12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void

14:                                               ; preds = %8
  %15 = landingpad { ptr, i32 }
          catch ptr null
  %16 = extractvalue { ptr, i32 } %15, 0
  tail call void @__clang_call_terminate(ptr %16) #15
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_715VecAttrListImpl9setVectorEPKNS_11RefVectorOfINS_7XMLAttrEEEjb(ptr nocapture noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #1 align 2 !prof !86 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::VecAttrListImpl", ptr %0, i64 0, i32 1
  %6 = load i8, ptr %5, align 8, !tbaa !42, !range !51, !noundef !52
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %16, label %8, !prof !87

8:                                                ; preds = %4
  %9 = getelementptr inbounds %"class.xercesc_2_7::VecAttrListImpl", ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !50
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = load ptr, ptr %10, align 8, !tbaa !39
  %14 = getelementptr inbounds ptr, ptr %13, i64 1
  %15 = load ptr, ptr %14, align 8
  tail call void %15(ptr noundef nonnull align 8 dereferenceable(40) %10) #12
  br label %16

16:                                               ; preds = %8, %12, %4
  %17 = zext i1 %3 to i8
  store i8 %17, ptr %5, align 8, !tbaa !42
  %18 = getelementptr inbounds %"class.xercesc_2_7::VecAttrListImpl", ptr %0, i64 0, i32 2
  store i32 %2, ptr %18, align 4, !tbaa !49
  %19 = getelementptr inbounds %"class.xercesc_2_7::VecAttrListImpl", ptr %0, i64 0, i32 3
  store ptr %1, ptr %19, align 8, !tbaa !50
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !54 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !39
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #12
  resume { ptr, i32 } %8
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #2

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #5

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #5

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 !prof !54 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 !prof !54 {
  ret ptr @_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !54 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !88
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !39
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #12
  resume { ptr, i32 } %7
}

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #5

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #9 comdat !prof !54 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #12
  tail call void @_ZSt9terminatev() #15
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { nounwind }
attributes #13 = { noreturn }
attributes #14 = { builtin nounwind }
attributes #15 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!37}

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
!34 = distinct !{!35, !36}
!35 = !{ptr @_ZNK11xercesc_2_715VecAttrListImpl7getNameEj, ptr @_ZNK11xercesc_2_77XMLAttr8getQNameEv, i64 666}
!36 = !{ptr @_ZNK11xercesc_2_715VecAttrListImpl8getValueEj, ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj, i64 442}
!37 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!38 = !{!"function_entry_count", i64 1}
!39 = !{!40, !40, i64 0}
!40 = !{!"vtable pointer", !41, i64 0}
!41 = !{!"Simple C++ TBAA"}
!42 = !{!43, !45, i64 8}
!43 = !{!"_ZTSN11xercesc_2_715VecAttrListImplE", !44, i64 0, !45, i64 8, !47, i64 12, !48, i64 16}
!44 = !{!"_ZTSN11xercesc_2_713AttributeListE"}
!45 = !{!"bool", !46, i64 0}
!46 = !{!"omnipotent char", !41, i64 0}
!47 = !{!"int", !46, i64 0}
!48 = !{!"any pointer", !46, i64 0}
!49 = !{!43, !47, i64 12}
!50 = !{!43, !48, i64 16}
!51 = !{i8 0, i8 2}
!52 = !{}
!53 = !{!"branch_weights", i32 1, i32 0}
!54 = !{!"function_entry_count", i64 0}
!55 = !{!"function_entry_count", i64 1153}
!56 = !{!"function_entry_count", i64 666}
!57 = !{!"branch_weights", i32 666, i32 0}
!58 = !{!59, !47, i64 12}
!59 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEEE", !45, i64 8, !47, i64 12, !47, i64 16, !48, i64 24, !48, i64 32}
!60 = !{!"branch_weights", i32 1366334, i32 0}
!61 = !{!59, !48, i64 32}
!62 = !{!59, !48, i64 24}
!63 = !{!48, !48, i64 0}
!64 = !{!"function_entry_count", i64 1365668}
!65 = !{!66, !67, i64 4}
!66 = !{!"_ZTSN11xercesc_2_77XMLAttrE", !45, i64 0, !67, i64 4, !47, i64 8, !48, i64 16, !48, i64 24, !48, i64 32, !48, i64 40, !45, i64 48}
!67 = !{!"_ZTSN11xercesc_2_79XMLAttDef8AttTypesE", !46, i64 0}
!68 = !{!"function_entry_count", i64 442}
!69 = !{!"branch_weights", i32 442, i32 0}
!70 = !{!66, !48, i64 16}
!71 = distinct !{!71, !72, !73}
!72 = !{!"llvm.loop.mustprogress"}
!73 = !{!"llvm.loop.unroll.disable"}
!74 = !{!75, !75, i64 0}
!75 = !{!"short", !46, i64 0}
!76 = distinct !{!76, !72, !73}
!77 = distinct !{!77, !72, !73}
!78 = !{!79, !48, i64 0}
!79 = !{!"_ZTSN11xercesc_2_712ArrayJanitorItEE", !48, i64 0, !48, i64 8}
!80 = !{!79, !48, i64 8}
!81 = distinct !{!81, !72, !73}
!82 = !{!"function_entry_count", i64 243874}
!83 = !{!"branch_weights", i32 191815, i32 52059}
!84 = !{!"branch_weights", i32 0, i32 52059}
!85 = !{!"VP", i32 0, i64 52059, i64 -7405368087501025645, i64 52059}
!86 = !{!"function_entry_count", i64 390}
!87 = !{!"branch_weights", i32 390, i32 0}
!88 = !{!89, !48, i64 40}
!89 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !90, i64 8, !48, i64 16, !47, i64 24, !48, i64 32, !48, i64 40}
!90 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !46, i64 0}
