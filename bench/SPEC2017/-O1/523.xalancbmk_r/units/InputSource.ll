; ModuleID = 'InputSource.cpp'
source_filename = "InputSource.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::InputSource" = type <{ ptr, ptr, ptr, ptr, ptr, i8, [7 x i8] }>

$__clang_call_terminate = comdat any

$_ZNK11xercesc_2_711InputSource11getEncodingEv = comdat any

$_ZNK11xercesc_2_711InputSource11getPublicIdEv = comdat any

$_ZNK11xercesc_2_711InputSource11getSystemIdEv = comdat any

$_ZNK11xercesc_2_711InputSource28getIssueFatalErrorIfNotFoundEv = comdat any

$_ZN11xercesc_2_711InputSource28setIssueFatalErrorIfNotFoundEb = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

@_ZTVN11xercesc_2_711InputSourceE = dso_local unnamed_addr constant { [13 x ptr] } { [13 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_711InputSourceE, ptr @_ZN11xercesc_2_711InputSourceD2Ev, ptr @_ZN11xercesc_2_711InputSourceD0Ev, ptr @__cxa_pure_virtual, ptr @_ZNK11xercesc_2_711InputSource11getEncodingEv, ptr @_ZNK11xercesc_2_711InputSource11getPublicIdEv, ptr @_ZNK11xercesc_2_711InputSource11getSystemIdEv, ptr @_ZNK11xercesc_2_711InputSource28getIssueFatalErrorIfNotFoundEv, ptr @_ZN11xercesc_2_711InputSource11setEncodingEPKt, ptr @_ZN11xercesc_2_711InputSource11setPublicIdEPKt, ptr @_ZN11xercesc_2_711InputSource11setSystemIdEPKt, ptr @_ZN11xercesc_2_711InputSource28setIssueFatalErrorIfNotFoundEb] }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_711InputSourceE = dso_local constant [29 x i8] c"N11xercesc_2_711InputSourceE\00", align 1
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_711InputSourceE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_711InputSourceE, ptr @_ZTIN11xercesc_2_77XMemoryE }, align 8

@_ZN11xercesc_2_711InputSourceD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_711InputSourceD2Ev

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_711InputSourceD2Ev(ptr nocapture noundef nonnull align 8 dereferenceable(41) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  store ptr getelementptr inbounds ({ [13 x ptr] }, ptr @_ZTVN11xercesc_2_711InputSourceE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !38
  %2 = getelementptr inbounds %"class.xercesc_2_7::InputSource", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !41
  %4 = getelementptr inbounds %"class.xercesc_2_7::InputSource", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  %6 = load ptr, ptr %3, align 8, !tbaa !38
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5)
          to label %9 unwind label %24, !prof !47

9:                                                ; preds = %1
  %10 = load ptr, ptr %2, align 8, !tbaa !41
  %11 = getelementptr inbounds %"class.xercesc_2_7::InputSource", ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !48
  %13 = load ptr, ptr %10, align 8, !tbaa !38
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  invoke void %15(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef %12)
          to label %16 unwind label %24, !prof !47

16:                                               ; preds = %9
  %17 = load ptr, ptr %2, align 8, !tbaa !41
  %18 = getelementptr inbounds %"class.xercesc_2_7::InputSource", ptr %0, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !49
  %20 = load ptr, ptr %17, align 8, !tbaa !38
  %21 = getelementptr inbounds ptr, ptr %20, i64 3
  %22 = load ptr, ptr %21, align 8
  invoke void %22(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef %19)
          to label %23 unwind label %24, !prof !47

23:                                               ; preds = %16
  ret void

24:                                               ; preds = %16, %9, %1
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  tail call void @__clang_call_terminate(ptr %26) #10
  unreachable
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #1 comdat !prof !50 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #11
  tail call void @_ZSt9terminatev() #10
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define dso_local void @_ZN11xercesc_2_711InputSourceD0Ev(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #2 align 2 !prof !50 {
  tail call void @llvm.trap() #10
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #3

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_711InputSource11setEncodingEPKt(ptr nocapture noundef nonnull align 8 dereferenceable(41) %0, ptr noundef %1) unnamed_addr #4 align 2 !prof !50 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::InputSource", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !41
  %5 = getelementptr inbounds %"class.xercesc_2_7::InputSource", ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = load ptr, ptr %4, align 8, !tbaa !38
  %8 = getelementptr inbounds ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %6)
  %10 = load ptr, ptr %3, align 8, !tbaa !41
  %11 = icmp eq ptr %1, null
  br i1 %11, label %32, label %12

12:                                               ; preds = %2
  %13 = load i16, ptr %1, align 2, !tbaa !51
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %26, label %15

15:                                               ; preds = %12, %15
  %16 = phi ptr [ %17, %15 ], [ %1, %12 ]
  %17 = getelementptr inbounds i16, ptr %16, i64 1
  %18 = load i16, ptr %17, align 2, !tbaa !51
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %20, label %15, !llvm.loop !53

20:                                               ; preds = %15
  %21 = ptrtoint ptr %17 to i64
  %22 = ptrtoint ptr %1 to i64
  %23 = sub i64 %21, %22
  %24 = add i64 %23, 2
  %25 = and i64 %24, 8589934590
  br label %26

26:                                               ; preds = %20, %12
  %27 = phi i64 [ %25, %20 ], [ 2, %12 ]
  %28 = load ptr, ptr %10, align 8, !tbaa !38
  %29 = getelementptr inbounds ptr, ptr %28, i64 2
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef ptr %30(ptr noundef nonnull align 8 dereferenceable(8) %10, i64 noundef %27)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %31, ptr nonnull align 2 %1, i64 %27, i1 false)
  br label %32

32:                                               ; preds = %2, %26
  %33 = phi ptr [ %31, %26 ], [ null, %2 ]
  store ptr %33, ptr %5, align 8, !tbaa !46
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_711InputSource11setPublicIdEPKt(ptr nocapture noundef nonnull align 8 dereferenceable(41) %0, ptr noundef %1) unnamed_addr #4 align 2 !prof !50 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::InputSource", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !41
  %5 = getelementptr inbounds %"class.xercesc_2_7::InputSource", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = load ptr, ptr %4, align 8, !tbaa !38
  %8 = getelementptr inbounds ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %6)
  %10 = load ptr, ptr %3, align 8, !tbaa !41
  %11 = icmp eq ptr %1, null
  br i1 %11, label %32, label %12

12:                                               ; preds = %2
  %13 = load i16, ptr %1, align 2, !tbaa !51
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %26, label %15

15:                                               ; preds = %12, %15
  %16 = phi ptr [ %17, %15 ], [ %1, %12 ]
  %17 = getelementptr inbounds i16, ptr %16, i64 1
  %18 = load i16, ptr %17, align 2, !tbaa !51
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %20, label %15, !llvm.loop !53

20:                                               ; preds = %15
  %21 = ptrtoint ptr %17 to i64
  %22 = ptrtoint ptr %1 to i64
  %23 = sub i64 %21, %22
  %24 = add i64 %23, 2
  %25 = and i64 %24, 8589934590
  br label %26

26:                                               ; preds = %20, %12
  %27 = phi i64 [ %25, %20 ], [ 2, %12 ]
  %28 = load ptr, ptr %10, align 8, !tbaa !38
  %29 = getelementptr inbounds ptr, ptr %28, i64 2
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef ptr %30(ptr noundef nonnull align 8 dereferenceable(8) %10, i64 noundef %27)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %31, ptr nonnull align 2 %1, i64 %27, i1 false)
  br label %32

32:                                               ; preds = %2, %26
  %33 = phi ptr [ %31, %26 ], [ null, %2 ]
  store ptr %33, ptr %5, align 8, !tbaa !48
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_711InputSource11setSystemIdEPKt(ptr nocapture noundef nonnull align 8 dereferenceable(41) %0, ptr noundef %1) unnamed_addr #4 align 2 !prof !56 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::InputSource", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !41
  %5 = getelementptr inbounds %"class.xercesc_2_7::InputSource", ptr %0, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !49
  %7 = load ptr, ptr %4, align 8, !tbaa !38
  %8 = getelementptr inbounds ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %6), !prof !57
  %10 = load ptr, ptr %3, align 8, !tbaa !41
  %11 = icmp eq ptr %1, null
  br i1 %11, label %32, label %12, !prof !58

12:                                               ; preds = %2
  %13 = load i16, ptr %1, align 2, !tbaa !51
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %26, label %15, !prof !58

15:                                               ; preds = %12, %15
  %16 = phi ptr [ %17, %15 ], [ %1, %12 ]
  %17 = getelementptr inbounds i16, ptr %16, i64 1
  %18 = load i16, ptr %17, align 2, !tbaa !51
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %20, label %15, !prof !59, !llvm.loop !53

20:                                               ; preds = %15
  %21 = ptrtoint ptr %17 to i64
  %22 = ptrtoint ptr %1 to i64
  %23 = sub i64 %21, %22
  %24 = add i64 %23, 2
  %25 = and i64 %24, 8589934590
  br label %26

26:                                               ; preds = %20, %12
  %27 = phi i64 [ %25, %20 ], [ 2, %12 ]
  %28 = load ptr, ptr %10, align 8, !tbaa !38
  %29 = getelementptr inbounds ptr, ptr %28, i64 2
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef ptr %30(ptr noundef nonnull align 8 dereferenceable(8) %10, i64 noundef %27), !prof !60
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %31, ptr nonnull align 2 %1, i64 %27, i1 false), !prof !61
  br label %32

32:                                               ; preds = %2, %26
  %33 = phi ptr [ %31, %26 ], [ null, %2 ]
  store ptr %33, ptr %5, align 8, !tbaa !49
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xercesc_2_711InputSourceC2EPNS_13MemoryManagerE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(41) %0, ptr noundef %1) unnamed_addr #5 align 2 !prof !62 {
  store ptr getelementptr inbounds ({ [13 x ptr] }, ptr @_ZTVN11xercesc_2_711InputSourceE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !38
  %3 = getelementptr inbounds %"class.xercesc_2_7::InputSource", ptr %0, i64 0, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !41
  %4 = getelementptr inbounds %"class.xercesc_2_7::InputSource", ptr %0, i64 0, i32 2
  %5 = getelementptr inbounds %"class.xercesc_2_7::InputSource", ptr %0, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  store i8 1, ptr %5, align 8, !tbaa !63
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_711InputSourceC2EPKtPNS_13MemoryManagerE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(41) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #4 align 2 !prof !50 {
  store ptr getelementptr inbounds ({ [13 x ptr] }, ptr @_ZTVN11xercesc_2_711InputSourceE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !38
  %4 = getelementptr inbounds %"class.xercesc_2_7::InputSource", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !41
  %5 = getelementptr inbounds %"class.xercesc_2_7::InputSource", ptr %0, i64 0, i32 2
  %6 = getelementptr inbounds %"class.xercesc_2_7::InputSource", ptr %0, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  store i8 1, ptr %6, align 8, !tbaa !63
  %7 = icmp eq ptr %1, null
  br i1 %7, label %28, label %8

8:                                                ; preds = %3
  %9 = load i16, ptr %1, align 2, !tbaa !51
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %22, label %11

11:                                               ; preds = %8, %11
  %12 = phi ptr [ %13, %11 ], [ %1, %8 ]
  %13 = getelementptr inbounds i16, ptr %12, i64 1
  %14 = load i16, ptr %13, align 2, !tbaa !51
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %16, label %11, !llvm.loop !53

16:                                               ; preds = %11
  %17 = ptrtoint ptr %13 to i64
  %18 = ptrtoint ptr %1 to i64
  %19 = sub i64 %17, %18
  %20 = add i64 %19, 2
  %21 = and i64 %20, 8589934590
  br label %22

22:                                               ; preds = %16, %8
  %23 = phi i64 [ %21, %16 ], [ 2, %8 ]
  %24 = load ptr, ptr %2, align 8, !tbaa !38
  %25 = getelementptr inbounds ptr, ptr %24, i64 2
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %23)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %27, ptr nonnull align 2 %1, i64 %23, i1 false)
  br label %28

28:                                               ; preds = %3, %22
  %29 = phi ptr [ %27, %22 ], [ null, %3 ]
  %30 = getelementptr inbounds %"class.xercesc_2_7::InputSource", ptr %0, i64 0, i32 4
  store ptr %29, ptr %30, align 8, !tbaa !49
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_711InputSourceC2EPKtS2_PNS_13MemoryManagerE(ptr nocapture noundef nonnull align 8 dereferenceable(41) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #4 align 2 !prof !50 {
  store ptr getelementptr inbounds ({ [13 x ptr] }, ptr @_ZTVN11xercesc_2_711InputSourceE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !38
  %5 = getelementptr inbounds %"class.xercesc_2_7::InputSource", ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !41
  %6 = getelementptr inbounds %"class.xercesc_2_7::InputSource", ptr %0, i64 0, i32 2
  %7 = getelementptr inbounds %"class.xercesc_2_7::InputSource", ptr %0, i64 0, i32 3
  %8 = getelementptr inbounds %"class.xercesc_2_7::InputSource", ptr %0, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  store i8 1, ptr %8, align 8, !tbaa !63
  %9 = icmp eq ptr %2, null
  br i1 %9, label %30, label %10

10:                                               ; preds = %4
  %11 = load i16, ptr %2, align 2, !tbaa !51
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %24, label %13

13:                                               ; preds = %10, %13
  %14 = phi ptr [ %15, %13 ], [ %2, %10 ]
  %15 = getelementptr inbounds i16, ptr %14, i64 1
  %16 = load i16, ptr %15, align 2, !tbaa !51
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %13, !llvm.loop !53

18:                                               ; preds = %13
  %19 = ptrtoint ptr %15 to i64
  %20 = ptrtoint ptr %2 to i64
  %21 = sub i64 %19, %20
  %22 = add i64 %21, 2
  %23 = and i64 %22, 8589934590
  br label %24

24:                                               ; preds = %18, %10
  %25 = phi i64 [ %23, %18 ], [ 2, %10 ]
  %26 = load ptr, ptr %3, align 8, !tbaa !38
  %27 = getelementptr inbounds ptr, ptr %26, i64 2
  %28 = load ptr, ptr %27, align 8
  %29 = tail call noundef ptr %28(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %25)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %29, ptr nonnull align 2 %2, i64 %25, i1 false)
  br label %30

30:                                               ; preds = %4, %24
  %31 = phi ptr [ %29, %24 ], [ null, %4 ]
  store ptr %31, ptr %7, align 8, !tbaa !48
  %32 = load ptr, ptr %5, align 8, !tbaa !41
  %33 = icmp eq ptr %1, null
  br i1 %33, label %54, label %34

34:                                               ; preds = %30
  %35 = load i16, ptr %1, align 2, !tbaa !51
  %36 = icmp eq i16 %35, 0
  br i1 %36, label %48, label %37

37:                                               ; preds = %34, %37
  %38 = phi ptr [ %39, %37 ], [ %1, %34 ]
  %39 = getelementptr inbounds i16, ptr %38, i64 1
  %40 = load i16, ptr %39, align 2, !tbaa !51
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %42, label %37, !llvm.loop !53

42:                                               ; preds = %37
  %43 = ptrtoint ptr %39 to i64
  %44 = ptrtoint ptr %1 to i64
  %45 = sub i64 %43, %44
  %46 = add i64 %45, 2
  %47 = and i64 %46, 8589934590
  br label %48

48:                                               ; preds = %42, %34
  %49 = phi i64 [ %47, %42 ], [ 2, %34 ]
  %50 = load ptr, ptr %32, align 8, !tbaa !38
  %51 = getelementptr inbounds ptr, ptr %50, i64 2
  %52 = load ptr, ptr %51, align 8
  %53 = tail call noundef ptr %52(ptr noundef nonnull align 8 dereferenceable(8) %32, i64 noundef %49)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %53, ptr nonnull align 2 %1, i64 %49, i1 false)
  br label %54

54:                                               ; preds = %30, %48
  %55 = phi ptr [ %53, %48 ], [ null, %30 ]
  %56 = getelementptr inbounds %"class.xercesc_2_7::InputSource", ptr %0, i64 0, i32 4
  store ptr %55, ptr %56, align 8, !tbaa !49
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_711InputSourceC2EPKcPNS_13MemoryManagerE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(41) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #4 align 2 !prof !56 {
  store ptr getelementptr inbounds ({ [13 x ptr] }, ptr @_ZTVN11xercesc_2_711InputSourceE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !38
  %4 = getelementptr inbounds %"class.xercesc_2_7::InputSource", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !41
  %5 = getelementptr inbounds %"class.xercesc_2_7::InputSource", ptr %0, i64 0, i32 2
  %6 = getelementptr inbounds %"class.xercesc_2_7::InputSource", ptr %0, i64 0, i32 4
  %7 = getelementptr inbounds %"class.xercesc_2_7::InputSource", ptr %0, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  store i8 1, ptr %7, align 8, !tbaa !63
  %8 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKcPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %2)
  store ptr %8, ptr %6, align 8, !tbaa !49
  ret void
}

declare noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKcPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_711InputSourceC2EPKcS2_PNS_13MemoryManagerE(ptr nocapture noundef nonnull align 8 dereferenceable(41) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #4 align 2 !prof !50 {
  store ptr getelementptr inbounds ({ [13 x ptr] }, ptr @_ZTVN11xercesc_2_711InputSourceE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !38
  %5 = getelementptr inbounds %"class.xercesc_2_7::InputSource", ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !41
  %6 = getelementptr inbounds %"class.xercesc_2_7::InputSource", ptr %0, i64 0, i32 2
  %7 = getelementptr inbounds %"class.xercesc_2_7::InputSource", ptr %0, i64 0, i32 3
  %8 = getelementptr inbounds %"class.xercesc_2_7::InputSource", ptr %0, i64 0, i32 4
  %9 = getelementptr inbounds %"class.xercesc_2_7::InputSource", ptr %0, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  store i8 1, ptr %9, align 8, !tbaa !63
  %10 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKcPNS_13MemoryManagerE(ptr noundef %2, ptr noundef %3)
  store ptr %10, ptr %7, align 8, !tbaa !48
  %11 = load ptr, ptr %5, align 8, !tbaa !41
  %12 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKcPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %11)
  store ptr %12, ptr %8, align 8, !tbaa !49
  ret void
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_711InputSource11getEncodingEv(ptr noundef nonnull align 8 dereferenceable(41) %0) unnamed_addr #7 comdat align 2 !prof !62 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::InputSource", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  ret ptr %3
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_711InputSource11getPublicIdEv(ptr noundef nonnull align 8 dereferenceable(41) %0) unnamed_addr #7 comdat align 2 !prof !62 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::InputSource", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !48
  ret ptr %3
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_711InputSource11getSystemIdEv(ptr noundef nonnull align 8 dereferenceable(41) %0) unnamed_addr #7 comdat align 2 !prof !64 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::InputSource", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !49
  ret ptr %3
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_711InputSource28getIssueFatalErrorIfNotFoundEv(ptr noundef nonnull align 8 dereferenceable(41) %0) unnamed_addr #7 comdat align 2 !prof !65 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::InputSource", ptr %0, i64 0, i32 5
  %3 = load i8, ptr %2, align 8, !tbaa !63, !range !66, !noundef !67
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711InputSource28setIssueFatalErrorIfNotFoundEb(ptr noundef nonnull align 8 dereferenceable(41) %0, i1 noundef zeroext %1) unnamed_addr #7 comdat align 2 !prof !56 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::InputSource", ptr %0, i64 0, i32 5
  store i8 %3, ptr %4, align 8, !tbaa !63
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

attributes #0 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #4 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { noreturn nounwind }
attributes #11 = { nounwind }

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
!35 = !{ptr @_ZN11xercesc_2_711InputSourceC2EPKcPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79XMLString9transcodeEPKcPNS_13MemoryManagerE, i64 2}
!36 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!37 = !{!"function_entry_count", i64 5}
!38 = !{!39, !39, i64 0}
!39 = !{!"vtable pointer", !40, i64 0}
!40 = !{!"Simple C++ TBAA"}
!41 = !{!42, !43, i64 8}
!42 = !{!"_ZTSN11xercesc_2_711InputSourceE", !43, i64 8, !43, i64 16, !43, i64 24, !43, i64 32, !45, i64 40}
!43 = !{!"any pointer", !44, i64 0}
!44 = !{!"omnipotent char", !40, i64 0}
!45 = !{!"bool", !44, i64 0}
!46 = !{!42, !43, i64 16}
!47 = !{!"VP", i32 0, i64 5, i64 -7405368087501025645, i64 5}
!48 = !{!42, !43, i64 24}
!49 = !{!42, !43, i64 32}
!50 = !{!"function_entry_count", i64 0}
!51 = !{!52, !52, i64 0}
!52 = !{!"short", !44, i64 0}
!53 = distinct !{!53, !54, !55}
!54 = !{!"llvm.loop.mustprogress"}
!55 = !{!"llvm.loop.unroll.disable"}
!56 = !{!"function_entry_count", i64 2}
!57 = !{!"VP", i32 0, i64 2, i64 -7405368087501025645, i64 2}
!58 = !{!"branch_weights", i32 0, i32 2}
!59 = !{!"branch_weights", i32 2, i32 147}
!60 = !{!"VP", i32 0, i64 2, i64 8345045103670217670, i64 2}
!61 = !{!"VP", i32 1, i64 2, i64 17, i64 1, i64 257, i64 1}
!62 = !{!"function_entry_count", i64 3}
!63 = !{!42, !45, i64 40}
!64 = !{!"function_entry_count", i64 13}
!65 = !{!"function_entry_count", i64 1}
!66 = !{i8 0, i8 2}
!67 = !{}
