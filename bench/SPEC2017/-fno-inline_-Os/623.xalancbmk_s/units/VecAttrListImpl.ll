; ModuleID = 'VecAttrListImpl.cpp'
source_filename = "VecAttrListImpl.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::VecAttrListImpl" = type { %"class.xercesc_2_7::AttributeList", i8, i32, ptr }
%"class.xercesc_2_7::AttributeList" = type { ptr }
%"class.xercesc_2_7::ArrayJanitor" = type { ptr, ptr }
%"class.xercesc_2_7::BaseRefVectorOf" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }
%"class.xercesc_2_7::XMLAttr" = type <{ i8, [3 x i8], i32, i32, [4 x i8], ptr, ptr, ptr, ptr, i8, [7 x i8] }>

$_ZN11xercesc_2_77XMemoryC2Ev = comdat any

$_ZN11xercesc_2_713AttributeListC2Ev = comdat any

$_ZN11xercesc_2_713AttributeListD2Ev = comdat any

$_ZN11xercesc_2_713AttributeListD0Ev = comdat any

$_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_ = comdat any

$_ZNK11xercesc_2_77XMLAttr7getTypeEv = comdat any

$_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE16getMemoryManagerEv = comdat any

$_ZNK11xercesc_2_77XMLAttr8getValueEv = comdat any

$_ZN11xercesc_2_79XMLString6equalsEPKtS2_ = comdat any

$_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_712ArrayJanitorItED2Ev = comdat any

$_ZN11xercesc_2_712ArrayJanitorItE5resetEPt = comdat any

$__clang_call_terminate = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTSN11xercesc_2_713AttributeListE = comdat any

$_ZTIN11xercesc_2_713AttributeListE = comdat any

$_ZTVN11xercesc_2_713AttributeListE = comdat any

$_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTVN11xercesc_2_715VecAttrListImplE = dso_local unnamed_addr constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_715VecAttrListImplE, ptr @_ZN11xercesc_2_715VecAttrListImplD2Ev, ptr @_ZN11xercesc_2_715VecAttrListImplD0Ev, ptr @_ZNK11xercesc_2_715VecAttrListImpl9getLengthEv, ptr @_ZNK11xercesc_2_715VecAttrListImpl7getNameEj, ptr @_ZNK11xercesc_2_715VecAttrListImpl7getTypeEj, ptr @_ZNK11xercesc_2_715VecAttrListImpl8getValueEj, ptr @_ZNK11xercesc_2_715VecAttrListImpl7getTypeEPKt, ptr @_ZNK11xercesc_2_715VecAttrListImpl8getValueEPKt, ptr @_ZNK11xercesc_2_715VecAttrListImpl8getValueEPKc] }, align 8
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_715VecAttrListImplE = dso_local constant [33 x i8] c"N11xercesc_2_715VecAttrListImplE\00", align 1
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTSN11xercesc_2_713AttributeListE = linkonce_odr dso_local constant [31 x i8] c"N11xercesc_2_713AttributeListE\00", comdat, align 1
@_ZTIN11xercesc_2_713AttributeListE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_713AttributeListE }, comdat, align 8
@_ZTIN11xercesc_2_715VecAttrListImplE = dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_715VecAttrListImplE, i32 0, i32 2, ptr @_ZTIN11xercesc_2_77XMemoryE, i64 2, ptr @_ZTIN11xercesc_2_713AttributeListE, i64 2 }, align 8
@_ZTVN11xercesc_2_713AttributeListE = linkonce_odr dso_local unnamed_addr constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_713AttributeListE, ptr @_ZN11xercesc_2_713AttributeListD2Ev, ptr @_ZN11xercesc_2_713AttributeListD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@.str = private unnamed_addr constant [33 x i8] c"./xercesc/util/BaseRefVectorOf.c\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant [48 x i8] c"N11xercesc_2_730ArrayIndexOutOfBoundsExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE = external constant [0 x i16], align 2
@_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE = external local_unnamed_addr global ptr, align 8

@_ZN11xercesc_2_715VecAttrListImplC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_715VecAttrListImplC2Ev
@_ZN11xercesc_2_715VecAttrListImplD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_715VecAttrListImplD2Ev

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_715VecAttrListImplD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 align 2 {
  tail call void @_ZN11xercesc_2_715VecAttrListImplD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #9
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #9
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_715VecAttrListImpl9getLengthEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0) unnamed_addr #1 align 2 !prof !51 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::VecAttrListImpl", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !52
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_715VecAttrListImpl7getNameEj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, i32 noundef %1) unnamed_addr #2 align 2 !prof !60 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::VecAttrListImpl", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !52
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %6, label %11, !prof !61

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::VecAttrListImpl", ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !62
  %9 = tail call noundef ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %8, i32 noundef %1) #10
  %10 = tail call noundef ptr @_ZNK11xercesc_2_77XMLAttr8getQNameEv(ptr noundef nonnull align 8 dereferenceable(49) %9) #10
  br label %11

11:                                               ; preds = %2, %6
  %12 = phi ptr [ %10, %6 ], [ null, %2 ]
  ret ptr %12
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_715VecAttrListImpl7getTypeEj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, i32 noundef %1) unnamed_addr #2 align 2 !prof !63 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::VecAttrListImpl", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !52
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %6, label %14

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::VecAttrListImpl", ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !62
  %9 = tail call noundef ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %8, i32 noundef %1) #10
  %10 = tail call noundef i32 @_ZNK11xercesc_2_77XMLAttr7getTypeEv(ptr noundef nonnull align 8 dereferenceable(49) %9) #10
  %11 = load ptr, ptr %7, align 8, !tbaa !62
  %12 = tail call noundef ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(40) %11) #10
  %13 = tail call noundef ptr @_ZN11xercesc_2_79XMLAttDef16getAttTypeStringENS0_8AttTypesEPNS_13MemoryManagerE(i32 noundef %10, ptr noundef %12) #10
  br label %14

14:                                               ; preds = %2, %6
  %15 = phi ptr [ %13, %6 ], [ null, %2 ]
  ret ptr %15
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_715VecAttrListImpl8getValueEj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, i32 noundef %1) unnamed_addr #2 align 2 !prof !64 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::VecAttrListImpl", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !52
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %6, label %11, !prof !65

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::VecAttrListImpl", ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !62
  %9 = tail call noundef ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %8, i32 noundef %1) #10
  %10 = tail call noundef ptr @_ZNK11xercesc_2_77XMLAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(49) %9) #10
  br label %11

11:                                               ; preds = %2, %6
  %12 = phi ptr [ %10, %6 ], [ null, %2 ]
  ret ptr %12
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_715VecAttrListImpl7getTypeEPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !63 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::VecAttrListImpl", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !52
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %23, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::VecAttrListImpl", ptr %0, i64 0, i32 3
  br label %12

8:                                                ; preds = %12
  %9 = add nuw i32 %13, 1
  %10 = load i32, ptr %3, align 4, !tbaa !52
  %11 = icmp ult i32 %9, %10
  br i1 %11, label %12, label %23, !llvm.loop !66

12:                                               ; preds = %6, %8
  %13 = phi i32 [ 0, %6 ], [ %9, %8 ]
  %14 = load ptr, ptr %7, align 8, !tbaa !62
  %15 = tail call noundef ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %14, i32 noundef %13) #10
  %16 = tail call noundef ptr @_ZNK11xercesc_2_77XMLAttr8getQNameEv(ptr noundef nonnull align 8 dereferenceable(49) %15) #10
  %17 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %16, ptr noundef %1) #10
  br i1 %17, label %18, label %8

18:                                               ; preds = %12
  %19 = tail call noundef i32 @_ZNK11xercesc_2_77XMLAttr7getTypeEv(ptr noundef nonnull align 8 dereferenceable(49) %15) #10
  %20 = load ptr, ptr %7, align 8, !tbaa !62
  %21 = tail call noundef ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(40) %20) #10
  %22 = tail call noundef ptr @_ZN11xercesc_2_79XMLAttDef16getAttTypeStringENS0_8AttTypesEPNS_13MemoryManagerE(i32 noundef %19, ptr noundef %21) #10
  br label %23

23:                                               ; preds = %8, %2, %18
  %24 = phi ptr [ %22, %18 ], [ null, %2 ], [ null, %8 ]
  ret ptr %24
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_715VecAttrListImpl8getValueEPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !63 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::VecAttrListImpl", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !52
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %20, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::VecAttrListImpl", ptr %0, i64 0, i32 3
  br label %12

8:                                                ; preds = %12
  %9 = add nuw i32 %13, 1
  %10 = load i32, ptr %3, align 4, !tbaa !52
  %11 = icmp ult i32 %9, %10
  br i1 %11, label %12, label %20, !llvm.loop !68

12:                                               ; preds = %6, %8
  %13 = phi i32 [ 0, %6 ], [ %9, %8 ]
  %14 = load ptr, ptr %7, align 8, !tbaa !62
  %15 = tail call noundef ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %14, i32 noundef %13) #10
  %16 = tail call noundef ptr @_ZNK11xercesc_2_77XMLAttr8getQNameEv(ptr noundef nonnull align 8 dereferenceable(49) %15) #10
  %17 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %16, ptr noundef %1) #10
  br i1 %17, label %18, label %8

18:                                               ; preds = %12
  %19 = tail call noundef ptr @_ZNK11xercesc_2_77XMLAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(49) %15) #10
  br label %20

20:                                               ; preds = %8, %2, %18
  %21 = phi ptr [ %19, %18 ], [ null, %2 ], [ null, %8 ]
  ret ptr %21
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_715VecAttrListImpl8getValueEPKc(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !63 {
  %3 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %4 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !69
  %5 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKcPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %4) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #11
  %6 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !69
  call void @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %5, ptr noundef %6) #10
  %7 = getelementptr inbounds %"class.xercesc_2_7::VecAttrListImpl", ptr %0, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !52
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %28, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %"class.xercesc_2_7::VecAttrListImpl", ptr %0, i64 0, i32 3
  br label %16

12:                                               ; preds = %22
  %13 = add nuw i32 %17, 1
  %14 = load i32, ptr %7, align 4, !tbaa !52
  %15 = icmp ult i32 %13, %14
  br i1 %15, label %16, label %28, !llvm.loop !70

16:                                               ; preds = %10, %12
  %17 = phi i32 [ 0, %10 ], [ %13, %12 ]
  %18 = load ptr, ptr %11, align 8, !tbaa !62
  %19 = invoke noundef ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %18, i32 noundef %17) #10
          to label %20 unwind label %26

20:                                               ; preds = %16
  %21 = invoke noundef ptr @_ZNK11xercesc_2_77XMLAttr8getQNameEv(ptr noundef nonnull align 8 dereferenceable(49) %19) #10
          to label %22 unwind label %26

22:                                               ; preds = %20
  %23 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %21, ptr noundef %5) #10
  br i1 %23, label %24, label %12

24:                                               ; preds = %22
  %25 = call noundef ptr @_ZNK11xercesc_2_77XMLAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(49) %19) #10
  br label %28

26:                                               ; preds = %20, %16
  %27 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  resume { ptr, i32 } %27

28:                                               ; preds = %12, %2, %24
  %29 = phi ptr [ %25, %24 ], [ null, %2 ], [ null, %12 ]
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  ret ptr %29
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_715VecAttrListImplC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 align 2 !prof !71 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #10
  tail call void @_ZN11xercesc_2_713AttributeListC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #10
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xercesc_2_715VecAttrListImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !72
  %2 = getelementptr inbounds %"class.xercesc_2_7::VecAttrListImpl", ptr %0, i64 0, i32 1
  store i8 0, ptr %2, align 8, !tbaa !74
  %3 = getelementptr inbounds %"class.xercesc_2_7::VecAttrListImpl", ptr %0, i64 0, i32 2
  store i32 0, ptr %3, align 4, !tbaa !52
  %4 = getelementptr inbounds %"class.xercesc_2_7::VecAttrListImpl", ptr %0, i64 0, i32 3
  store ptr null, ptr %4, align 8, !tbaa !62
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #0 comdat align 2 !prof !75 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713AttributeListC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !prof !76 {
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xercesc_2_713AttributeListE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !72
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713AttributeListD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !prof !76 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713AttributeListD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
  tail call void @llvm.trap() #12
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_715VecAttrListImplD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 align 2 !prof !71 {
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xercesc_2_715VecAttrListImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !72
  %2 = getelementptr inbounds %"class.xercesc_2_7::VecAttrListImpl", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !74, !range !77, !noundef !78
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %13, label %5, !prof !79

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::VecAttrListImpl", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !62
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 8, !tbaa !72
  %11 = getelementptr inbounds ptr, ptr %10, i64 1
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(40) %7) #9
  br label %13

13:                                               ; preds = %5, %9, %1
  tail call void @_ZN11xercesc_2_713AttributeListD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #9
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !80 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !81
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !83

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !84
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 241, i32 noundef 116, ptr noundef %9) #10
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #13
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #11
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !85
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !69
  ret ptr %18
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_77XMLAttr8getQNameEv(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #5

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !63 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #10
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !72
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #10
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #9
  resume { ptr, i32 } %8
}

declare i32 @__gxx_personality_v0(...)

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #4

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #9
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 !prof !63 {
  ret ptr @_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !63 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !86
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #10
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #10
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #9
  resume { ptr, i32 } %7
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #2 comdat align 2 !prof !63 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #10
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !72
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #5

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_79XMLAttDef16getAttTypeStringENS0_8AttTypesEPNS_13MemoryManagerE(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_77XMLAttr7getTypeEv(ptr noundef nonnull align 8 dereferenceable(49) %0) local_unnamed_addr #0 comdat align 2 !prof !89 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !90
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #0 comdat align 2 !prof !93 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !84
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_77XMLAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(49) %0) local_unnamed_addr #0 comdat align 2 !prof !94 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !95
  ret ptr %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !96 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %10, label %6, !prof !97

6:                                                ; preds = %2
  %7 = load i16, ptr %0, align 2, !tbaa !98
  %8 = load i16, ptr %1, align 2, !tbaa !98
  %9 = icmp eq i16 %7, %8
  br i1 %9, label %19, label %30, !prof !100

10:                                               ; preds = %2
  br i1 %3, label %14, label %11, !prof !101

11:                                               ; preds = %10
  %12 = load i16, ptr %0, align 2, !tbaa !98
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %30, !prof !102

14:                                               ; preds = %11, %10
  br i1 %4, label %18, label %15, !prof !103

15:                                               ; preds = %14
  %16 = load i16, ptr %1, align 2, !tbaa !98
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %30, !prof !104

18:                                               ; preds = %15, %14
  br label %30

19:                                               ; preds = %6, %24
  %20 = phi i16 [ %27, %24 ], [ %7, %6 ]
  %21 = phi ptr [ %26, %24 ], [ %1, %6 ]
  %22 = phi ptr [ %25, %24 ], [ %0, %6 ]
  %23 = icmp eq i16 %20, 0
  br i1 %23, label %30, label %24, !prof !105

24:                                               ; preds = %19
  %25 = getelementptr inbounds i16, ptr %22, i64 1
  %26 = getelementptr inbounds i16, ptr %21, i64 1
  %27 = load i16, ptr %25, align 2, !tbaa !98
  %28 = load i16, ptr %26, align 2, !tbaa !98
  %29 = icmp eq i16 %27, %28
  br i1 %29, label %19, label %30, !prof !106, !llvm.loop !107

30:                                               ; preds = %19, %24, %6, %11, %15, %18
  %31 = phi i1 [ true, %18 ], [ false, %15 ], [ false, %11 ], [ false, %6 ], [ %23, %24 ], [ %23, %19 ]
  ret i1 %31
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKcPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 !prof !108 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #10
  store ptr %1, ptr %0, align 8, !tbaa !109
  %4 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !111
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !112 {
  invoke void @_ZN11xercesc_2_712ArrayJanitorItE5resetEPt(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef null) #10
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #12
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorItE5resetEPt(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !112 {
  %3 = load ptr, ptr %0, align 8, !tbaa !109
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5, !prof !113

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !111
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9, !prof !114

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 8, !tbaa !72
  %11 = getelementptr inbounds ptr, ptr %10, i64 3
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %3) #10
  br label %14

13:                                               ; preds = %5
  tail call void @_ZdaPv(ptr noundef nonnull %3) #14
  br label %14

14:                                               ; preds = %9, %13, %2
  store ptr %1, ptr %0, align 8, !tbaa !109
  %15 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  store ptr null, ptr %15, align 8, !tbaa !111
  ret void
}

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #11
  tail call void @_ZSt9terminatev() #12
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_715VecAttrListImpl9setVectorEPKNS_11RefVectorOfINS_7XMLAttrEEEjb(ptr nocapture noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 align 2 !prof !115 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::VecAttrListImpl", ptr %0, i64 0, i32 1
  %6 = load i8, ptr %5, align 8, !tbaa !74, !range !77, !noundef !78
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %16, label %8, !prof !116

8:                                                ; preds = %4
  %9 = getelementptr inbounds %"class.xercesc_2_7::VecAttrListImpl", ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !62
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = load ptr, ptr %10, align 8, !tbaa !72
  %14 = getelementptr inbounds ptr, ptr %13, i64 1
  %15 = load ptr, ptr %14, align 8
  tail call void %15(ptr noundef nonnull align 8 dereferenceable(40) %10) #9
  br label %16

16:                                               ; preds = %8, %12, %4
  %17 = zext i1 %3 to i8
  store i8 %17, ptr %5, align 8, !tbaa !74
  %18 = getelementptr inbounds %"class.xercesc_2_7::VecAttrListImpl", ptr %0, i64 0, i32 2
  store i32 %2, ptr %18, align 4, !tbaa !52
  %19 = getelementptr inbounds %"class.xercesc_2_7::VecAttrListImpl", ptr %0, i64 0, i32 3
  store ptr %1, ptr %19, align 8, !tbaa !62
  ret void
}

attributes #0 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #4 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind optsize }
attributes #10 = { optsize }
attributes #11 = { nounwind }
attributes #12 = { noreturn nounwind }
attributes #13 = { noreturn }
attributes #14 = { builtin nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!50}

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
!34 = !{i32 5, !"CG Profile", !35}
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49}
!36 = !{ptr @_ZNK11xercesc_2_715VecAttrListImpl7getNameEj, ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj, i64 665}
!37 = !{ptr @_ZNK11xercesc_2_715VecAttrListImpl7getNameEj, ptr @_ZNK11xercesc_2_77XMLAttr8getQNameEv, i64 665}
!38 = !{ptr @_ZNK11xercesc_2_715VecAttrListImpl8getValueEj, ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj, i64 441}
!39 = !{ptr @_ZNK11xercesc_2_715VecAttrListImpl8getValueEj, ptr @_ZNK11xercesc_2_77XMLAttr8getValueEv, i64 441}
!40 = !{ptr @_ZN11xercesc_2_715VecAttrListImplC2Ev, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 1}
!41 = !{ptr @_ZN11xercesc_2_715VecAttrListImplC2Ev, ptr @_ZN11xercesc_2_713AttributeListC2Ev, i64 1}
!42 = !{ptr @_ZN11xercesc_2_715VecAttrListImplD2Ev, ptr @_ZN11xercesc_2_713AttributeListD2Ev, i64 1}
!43 = !{ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj, ptr @__cxa_allocate_exception, i64 1}
!44 = !{ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!45 = !{ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj, ptr @__cxa_throw, i64 1}
!46 = !{ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj, ptr @__cxa_free_exception, i64 1}
!47 = !{ptr @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 52059}
!48 = !{ptr @_ZN11xercesc_2_712ArrayJanitorItED2Ev, ptr @_ZN11xercesc_2_712ArrayJanitorItE5resetEPt, i64 243874}
!49 = !{ptr @_ZN11xercesc_2_712ArrayJanitorItE5resetEPt, ptr @_ZdaPv, i64 1}
!50 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!51 = !{!"function_entry_count", i64 1153}
!52 = !{!53, !58, i64 12}
!53 = !{!"_ZTSN11xercesc_2_715VecAttrListImplE", !54, i64 0, !55, i64 8, !58, i64 12, !59, i64 16}
!54 = !{!"_ZTSN11xercesc_2_713AttributeListE"}
!55 = !{!"bool", !56, i64 0}
!56 = !{!"omnipotent char", !57, i64 0}
!57 = !{!"Simple C++ TBAA"}
!58 = !{!"int", !56, i64 0}
!59 = !{!"any pointer", !56, i64 0}
!60 = !{!"function_entry_count", i64 666}
!61 = !{!"branch_weights", i32 667, i32 1}
!62 = !{!53, !59, i64 16}
!63 = !{!"function_entry_count", i64 0}
!64 = !{!"function_entry_count", i64 442}
!65 = !{!"branch_weights", i32 443, i32 1}
!66 = distinct !{!66, !67}
!67 = !{!"llvm.loop.mustprogress"}
!68 = distinct !{!68, !67}
!69 = !{!59, !59, i64 0}
!70 = distinct !{!70, !67}
!71 = !{!"function_entry_count", i64 1}
!72 = !{!73, !73, i64 0}
!73 = !{!"vtable pointer", !57, i64 0}
!74 = !{!53, !55, i64 8}
!75 = !{!"function_entry_count", i64 5836268}
!76 = !{!"function_entry_count", i64 9}
!77 = !{i8 0, i8 2}
!78 = !{}
!79 = !{!"branch_weights", i32 2, i32 1}
!80 = !{!"function_entry_count", i64 1366334}
!81 = !{!82, !58, i64 12}
!82 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEEE", !55, i64 8, !58, i64 12, !58, i64 16, !59, i64 24, !59, i64 32}
!83 = !{!"branch_weights", i32 1366335, i32 1}
!84 = !{!82, !59, i64 32}
!85 = !{!82, !59, i64 24}
!86 = !{!87, !59, i64 40}
!87 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !88, i64 8, !59, i64 16, !58, i64 24, !59, i64 32, !59, i64 40}
!88 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !56, i64 0}
!89 = !{!"function_entry_count", i64 201563}
!90 = !{!91, !92, i64 4}
!91 = !{!"_ZTSN11xercesc_2_77XMLAttrE", !55, i64 0, !92, i64 4, !58, i64 8, !59, i64 16, !59, i64 24, !59, i64 32, !59, i64 40, !55, i64 48}
!92 = !{!"_ZTSN11xercesc_2_79XMLAttDef8AttTypesE", !56, i64 0}
!93 = !{!"function_entry_count", i64 200913}
!94 = !{!"function_entry_count", i64 360600}
!95 = !{!91, !59, i64 16}
!96 = !{!"function_entry_count", i64 1231717351}
!97 = !{!"branch_weights", i32 621, i32 -1469098093}
!98 = !{!99, !99, i64 0}
!99 = !{!"short", !56, i64 0}
!100 = !{!"branch_weights", i32 408901017, i32 1}
!101 = !{!"branch_weights", i32 267, i32 4}
!102 = !{!"branch_weights", i32 1, i32 4}
!103 = !{!"branch_weights", i32 156, i32 112}
!104 = !{!"branch_weights", i32 1, i32 112}
!105 = !{!"branch_weights", i32 1671344, i32 -1427472158}
!106 = !{!"branch_weights", i32 -1834701832, i32 408901017}
!107 = distinct !{!107, !67}
!108 = !{!"function_entry_count", i64 52059}
!109 = !{!110, !59, i64 0}
!110 = !{!"_ZTSN11xercesc_2_712ArrayJanitorItEE", !59, i64 0, !59, i64 8}
!111 = !{!110, !59, i64 8}
!112 = !{!"function_entry_count", i64 243874}
!113 = !{!"branch_weights", i32 191816, i32 52060}
!114 = !{!"branch_weights", i32 1, i32 52060}
!115 = !{!"function_entry_count", i64 390}
!116 = !{!"branch_weights", i32 391, i32 1}
