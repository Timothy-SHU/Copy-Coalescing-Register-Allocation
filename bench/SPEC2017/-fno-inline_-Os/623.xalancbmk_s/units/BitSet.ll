; ModuleID = 'BitSet.cpp'
source_filename = "BitSet.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::BitSet" = type <{ ptr, ptr, i32, [4 x i8] }>

$_ZN11xercesc_2_77XMemoryC2Ev = comdat any

$__clang_call_terminate = comdat any

@_ZN11xercesc_2_76BitSetC1EjPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, i32, ptr), ptr @_ZN11xercesc_2_76BitSetC2EjPNS_13MemoryManagerE
@_ZN11xercesc_2_76BitSetC1ERKS0_ = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_76BitSetC2ERKS0_
@_ZN11xercesc_2_76BitSetD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_76BitSetD2Ev

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_76BitSetC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(20) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 align 2 !prof !35 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #7
  store ptr %2, ptr %0, align 8, !tbaa !36
  %4 = getelementptr inbounds %"class.xercesc_2_7::BitSet", ptr %0, i64 0, i32 1
  store ptr null, ptr %4, align 8, !tbaa !42
  %5 = getelementptr inbounds %"class.xercesc_2_7::BitSet", ptr %0, i64 0, i32 2
  store i32 0, ptr %5, align 8, !tbaa !43
  tail call void @_ZN11xercesc_2_76BitSet14ensureCapacityEj(ptr noundef nonnull align 8 dereferenceable(20) %0, i32 noundef %1) #7
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 !prof !44 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_76BitSet14ensureCapacityEj(ptr nocapture noundef nonnull align 8 dereferenceable(20) %0, i32 noundef %1) local_unnamed_addr #0 align 2 !prof !35 {
  %3 = lshr i32 %1, 5
  %4 = and i32 %1, 31
  %5 = icmp ne i32 %4, 0
  %6 = zext i1 %5 to i32
  %7 = add nuw nsw i32 %3, %6
  %8 = getelementptr inbounds %"class.xercesc_2_7::BitSet", ptr %0, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !43
  %10 = icmp ugt i32 %7, %9
  br i1 %10, label %11, label %50

11:                                               ; preds = %2
  %12 = load ptr, ptr %0, align 8, !tbaa !36
  %13 = shl nuw nsw i32 %7, 3
  %14 = zext nneg i32 %13 to i64
  %15 = load ptr, ptr %12, align 8, !tbaa !45
  %16 = getelementptr inbounds ptr, ptr %15, i64 2
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef %14) #7
  %19 = load i32, ptr %8, align 8, !tbaa !43
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %11
  %22 = getelementptr inbounds %"class.xercesc_2_7::BitSet", ptr %0, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !42
  %24 = zext i32 %19 to i64
  br label %36

25:                                               ; preds = %36, %11
  %26 = icmp ult i32 %19, %7
  br i1 %26, label %27, label %43

27:                                               ; preds = %25
  %28 = zext i32 %19 to i64
  %29 = shl nuw nsw i64 %28, 3
  %30 = getelementptr i8, ptr %18, i64 %29
  %31 = xor i32 %19, -1
  %32 = add i32 %7, %31
  %33 = zext i32 %32 to i64
  %34 = shl nuw nsw i64 %33, 3
  %35 = add nuw nsw i64 %34, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %30, i8 0, i64 %35, i1 false), !tbaa !47
  br label %43

36:                                               ; preds = %21, %36
  %37 = phi i64 [ 0, %21 ], [ %41, %36 ]
  %38 = getelementptr inbounds i64, ptr %23, i64 %37
  %39 = load i64, ptr %38, align 8, !tbaa !47
  %40 = getelementptr inbounds i64, ptr %18, i64 %37
  store i64 %39, ptr %40, align 8, !tbaa !47
  %41 = add nuw nsw i64 %37, 1
  %42 = icmp eq i64 %41, %24
  br i1 %42, label %25, label %36, !llvm.loop !49

43:                                               ; preds = %27, %25
  %44 = load ptr, ptr %0, align 8, !tbaa !36
  %45 = getelementptr inbounds %"class.xercesc_2_7::BitSet", ptr %0, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !42
  %47 = load ptr, ptr %44, align 8, !tbaa !45
  %48 = getelementptr inbounds ptr, ptr %47, i64 3
  %49 = load ptr, ptr %48, align 8
  tail call void %49(ptr noundef nonnull align 8 dereferenceable(8) %44, ptr noundef %46) #7
  store ptr %18, ptr %45, align 8, !tbaa !42
  store i32 %7, ptr %8, align 8, !tbaa !43
  br label %50

50:                                               ; preds = %43, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_76BitSetC2ERKS0_(ptr nocapture noundef nonnull align 8 dereferenceable(20) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(20) %1) unnamed_addr #0 align 2 !prof !35 {
  %3 = load ptr, ptr %1, align 8, !tbaa !36
  store ptr %3, ptr %0, align 8, !tbaa !36
  %4 = getelementptr inbounds %"class.xercesc_2_7::BitSet", ptr %0, i64 0, i32 1
  store ptr null, ptr %4, align 8, !tbaa !42
  %5 = getelementptr inbounds %"class.xercesc_2_7::BitSet", ptr %0, i64 0, i32 2
  %6 = getelementptr inbounds %"class.xercesc_2_7::BitSet", ptr %1, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !43
  store i32 %7, ptr %5, align 8, !tbaa !43
  %8 = zext i32 %7 to i64
  %9 = shl nuw nsw i64 %8, 3
  %10 = load ptr, ptr %3, align 8, !tbaa !45
  %11 = getelementptr inbounds ptr, ptr %10, i64 2
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %9) #7
  store ptr %13, ptr %4, align 8, !tbaa !42
  %14 = load i32, ptr %5, align 8, !tbaa !43
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %2
  %17 = getelementptr inbounds %"class.xercesc_2_7::BitSet", ptr %1, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !42
  %19 = zext i32 %14 to i64
  br label %21

20:                                               ; preds = %21, %2
  ret void

21:                                               ; preds = %16, %21
  %22 = phi i64 [ 0, %16 ], [ %26, %21 ]
  %23 = getelementptr inbounds i64, ptr %18, i64 %22
  %24 = load i64, ptr %23, align 8, !tbaa !47
  %25 = getelementptr inbounds i64, ptr %13, i64 %22
  store i64 %24, ptr %25, align 8, !tbaa !47
  %26 = add nuw nsw i64 %22, 1
  %27 = icmp eq i64 %26, %19
  br i1 %27, label %20, label %21, !llvm.loop !51
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_76BitSetD2Ev(ptr nocapture noundef nonnull readonly align 8 dereferenceable(20) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %2 = load ptr, ptr %0, align 8, !tbaa !36
  %3 = getelementptr inbounds %"class.xercesc_2_7::BitSet", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = load ptr, ptr %2, align 8, !tbaa !45
  %6 = getelementptr inbounds ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  invoke void %7(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %4) #7
          to label %8 unwind label %9

8:                                                ; preds = %1
  ret void

9:                                                ; preds = %1
  %10 = landingpad { ptr, i32 }
          catch ptr null
  %11 = extractvalue { ptr, i32 } %10, 0
  tail call void @__clang_call_terminate(ptr %11) #8
  unreachable
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #2 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #9
  tail call void @_ZSt9terminatev() #8
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_76BitSet6equalsERKS0_(ptr noundef nonnull readonly align 8 dereferenceable(20) %0, ptr noundef nonnull readonly align 8 dereferenceable(20) %1) local_unnamed_addr #3 align 2 !prof !35 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %29, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"class.xercesc_2_7::BitSet", ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !43
  %7 = getelementptr inbounds %"class.xercesc_2_7::BitSet", ptr %1, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !43
  %9 = icmp eq i32 %6, %8
  br i1 %9, label %10, label %29

10:                                               ; preds = %4
  %11 = icmp eq i32 %6, 0
  br i1 %11, label %29, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %"class.xercesc_2_7::BitSet", ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !42
  %15 = getelementptr inbounds %"class.xercesc_2_7::BitSet", ptr %1, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !42
  %17 = zext i32 %6 to i64
  br label %18

18:                                               ; preds = %18, %12
  %19 = phi i64 [ 0, %12 ], [ %26, %18 ]
  %20 = getelementptr inbounds i64, ptr %14, i64 %19
  %21 = load i64, ptr %20, align 8, !tbaa !47
  %22 = getelementptr inbounds i64, ptr %16, i64 %19
  %23 = load i64, ptr %22, align 8, !tbaa !47
  %24 = icmp eq i64 %21, %23
  %25 = xor i1 %24, true
  %26 = add nuw nsw i64 %19, 1
  %27 = icmp eq i64 %26, %17
  %28 = select i1 %25, i1 true, i1 %27
  br i1 %28, label %29, label %18, !llvm.loop !52

29:                                               ; preds = %18, %10, %4, %2
  %30 = phi i1 [ true, %2 ], [ false, %4 ], [ true, %10 ], [ %24, %18 ]
  ret i1 %30
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_76BitSet3getEj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(20) %0, i32 noundef %1) local_unnamed_addr #3 align 2 !prof !35 {
  %3 = lshr i32 %1, 5
  %4 = getelementptr inbounds %"class.xercesc_2_7::BitSet", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !43
  %6 = icmp ugt i32 %3, %5
  br i1 %6, label %18, label %7

7:                                                ; preds = %2
  %8 = and i32 %1, 31
  %9 = getelementptr inbounds %"class.xercesc_2_7::BitSet", ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !42
  %11 = zext nneg i32 %3 to i64
  %12 = getelementptr inbounds i64, ptr %10, i64 %11
  %13 = load i64, ptr %12, align 8, !tbaa !47
  %14 = shl nuw i32 1, %8
  %15 = sext i32 %14 to i64
  %16 = and i64 %13, %15
  %17 = icmp ne i64 %16, 0
  br label %18

18:                                               ; preds = %7, %2
  %19 = phi i1 [ false, %2 ], [ %17, %7 ]
  ret i1 %19
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_76BitSet4sizeEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(20) %0) local_unnamed_addr #4 align 2 !prof !35 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BitSet", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !43
  %4 = shl i32 %3, 5
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_76BitSet13allAreClearedEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(20) %0) local_unnamed_addr #3 align 2 !prof !35 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BitSet", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !43
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BitSet", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !42
  %8 = zext i32 %3 to i64
  %9 = load i64, ptr %7, align 8, !tbaa !47
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %5, %15
  %12 = phi i64 [ %13, %15 ], [ 0, %5 ]
  %13 = add nuw nsw i64 %12, 1
  %14 = icmp eq i64 %13, %8
  br i1 %14, label %19, label %15, !llvm.loop !53

15:                                               ; preds = %11
  %16 = getelementptr inbounds i64, ptr %7, i64 %13
  %17 = load i64, ptr %16, align 8, !tbaa !47
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %11, label %19, !llvm.loop !53

19:                                               ; preds = %11, %15
  %20 = icmp uge i64 %13, %8
  br label %21

21:                                               ; preds = %19, %5, %1
  %22 = phi i1 [ true, %1 ], [ false, %5 ], [ %20, %19 ]
  ret i1 %22
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_76BitSet9allAreSetEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(20) %0) local_unnamed_addr #3 align 2 !prof !35 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BitSet", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !43
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BitSet", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !42
  %8 = zext i32 %3 to i64
  %9 = load i64, ptr %7, align 8, !tbaa !47
  %10 = icmp eq i64 %9, 4294967295
  br i1 %10, label %11, label %21

11:                                               ; preds = %5, %15
  %12 = phi i64 [ %13, %15 ], [ 0, %5 ]
  %13 = add nuw nsw i64 %12, 1
  %14 = icmp eq i64 %13, %8
  br i1 %14, label %19, label %15, !llvm.loop !54

15:                                               ; preds = %11
  %16 = getelementptr inbounds i64, ptr %7, i64 %13
  %17 = load i64, ptr %16, align 8, !tbaa !47
  %18 = icmp eq i64 %17, 4294967295
  br i1 %18, label %11, label %19, !llvm.loop !54

19:                                               ; preds = %11, %15
  %20 = icmp uge i64 %13, %8
  br label %21

21:                                               ; preds = %19, %5, %1
  %22 = phi i1 [ true, %1 ], [ false, %5 ], [ %20, %19 ]
  ret i1 %22
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xercesc_2_76BitSet8clearAllEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(20) %0) local_unnamed_addr #5 align 2 !prof !35 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BitSet", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !43
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BitSet", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !42
  %8 = zext i32 %3 to i64
  %9 = shl nuw nsw i64 %8, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %7, i8 0, i64 %9, i1 false), !tbaa !47
  br label %10

10:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_76BitSet5clearEj(ptr nocapture noundef nonnull align 8 dereferenceable(20) %0, i32 noundef %1) local_unnamed_addr #0 align 2 !prof !35 {
  %3 = add i32 %1, 1
  tail call void @_ZN11xercesc_2_76BitSet14ensureCapacityEj(ptr noundef nonnull align 8 dereferenceable(20) %0, i32 noundef %3) #7
  %4 = lshr i32 %1, 5
  %5 = and i32 %1, 31
  %6 = zext nneg i32 %5 to i64
  %7 = shl nuw nsw i64 1, %6
  %8 = xor i64 %7, -1
  %9 = getelementptr inbounds %"class.xercesc_2_7::BitSet", ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !42
  %11 = zext nneg i32 %4 to i64
  %12 = getelementptr inbounds i64, ptr %10, i64 %11
  %13 = load i64, ptr %12, align 8, !tbaa !47
  %14 = and i64 %13, %8
  store i64 %14, ptr %12, align 8, !tbaa !47
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_76BitSet3setEj(ptr nocapture noundef nonnull align 8 dereferenceable(20) %0, i32 noundef %1) local_unnamed_addr #0 align 2 !prof !35 {
  %3 = add i32 %1, 1
  tail call void @_ZN11xercesc_2_76BitSet14ensureCapacityEj(ptr noundef nonnull align 8 dereferenceable(20) %0, i32 noundef %3) #7
  %4 = lshr i32 %1, 5
  %5 = and i32 %1, 31
  %6 = zext nneg i32 %5 to i64
  %7 = shl nuw nsw i64 1, %6
  %8 = getelementptr inbounds %"class.xercesc_2_7::BitSet", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !42
  %10 = zext nneg i32 %4 to i64
  %11 = getelementptr inbounds i64, ptr %9, i64 %10
  %12 = load i64, ptr %11, align 8, !tbaa !47
  %13 = or i64 %12, %7
  store i64 %13, ptr %11, align 8, !tbaa !47
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_76BitSet7andWithERKS0_(ptr nocapture noundef nonnull align 8 dereferenceable(20) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(20) %1) local_unnamed_addr #0 align 2 !prof !35 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BitSet", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !43
  %5 = getelementptr inbounds %"class.xercesc_2_7::BitSet", ptr %1, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !43
  %7 = icmp ult i32 %4, %6
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = shl i32 %6, 5
  tail call void @_ZN11xercesc_2_76BitSet14ensureCapacityEj(ptr noundef nonnull align 8 dereferenceable(20) %0, i32 noundef %9) #7
  %10 = load i32, ptr %5, align 8, !tbaa !43
  br label %11

11:                                               ; preds = %8, %2
  %12 = phi i32 [ %10, %8 ], [ %6, %2 ]
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %"class.xercesc_2_7::BitSet", ptr %1, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !42
  %17 = getelementptr inbounds %"class.xercesc_2_7::BitSet", ptr %0, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !42
  %19 = zext i32 %12 to i64
  br label %21

20:                                               ; preds = %21, %11
  ret void

21:                                               ; preds = %14, %21
  %22 = phi i64 [ 0, %14 ], [ %28, %21 ]
  %23 = getelementptr inbounds i64, ptr %16, i64 %22
  %24 = load i64, ptr %23, align 8, !tbaa !47
  %25 = getelementptr inbounds i64, ptr %18, i64 %22
  %26 = load i64, ptr %25, align 8, !tbaa !47
  %27 = and i64 %26, %24
  store i64 %27, ptr %25, align 8, !tbaa !47
  %28 = add nuw nsw i64 %22, 1
  %29 = icmp eq i64 %28, %19
  br i1 %29, label %20, label %21, !llvm.loop !55
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_76BitSet6orWithERKS0_(ptr nocapture noundef nonnull align 8 dereferenceable(20) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(20) %1) local_unnamed_addr #0 align 2 !prof !35 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BitSet", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !43
  %5 = getelementptr inbounds %"class.xercesc_2_7::BitSet", ptr %1, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !43
  %7 = icmp ult i32 %4, %6
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = shl i32 %6, 5
  tail call void @_ZN11xercesc_2_76BitSet14ensureCapacityEj(ptr noundef nonnull align 8 dereferenceable(20) %0, i32 noundef %9) #7
  %10 = load i32, ptr %5, align 8, !tbaa !43
  br label %11

11:                                               ; preds = %8, %2
  %12 = phi i32 [ %10, %8 ], [ %6, %2 ]
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %"class.xercesc_2_7::BitSet", ptr %1, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !42
  %17 = getelementptr inbounds %"class.xercesc_2_7::BitSet", ptr %0, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !42
  %19 = zext i32 %12 to i64
  br label %21

20:                                               ; preds = %21, %11
  ret void

21:                                               ; preds = %14, %21
  %22 = phi i64 [ 0, %14 ], [ %28, %21 ]
  %23 = getelementptr inbounds i64, ptr %16, i64 %22
  %24 = load i64, ptr %23, align 8, !tbaa !47
  %25 = getelementptr inbounds i64, ptr %18, i64 %22
  %26 = load i64, ptr %25, align 8, !tbaa !47
  %27 = or i64 %26, %24
  store i64 %27, ptr %25, align 8, !tbaa !47
  %28 = add nuw nsw i64 %22, 1
  %29 = icmp eq i64 %28, %19
  br i1 %29, label %20, label %21, !llvm.loop !56
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_76BitSet7xorWithERKS0_(ptr nocapture noundef nonnull align 8 dereferenceable(20) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(20) %1) local_unnamed_addr #0 align 2 !prof !35 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BitSet", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !43
  %5 = getelementptr inbounds %"class.xercesc_2_7::BitSet", ptr %1, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !43
  %7 = icmp ult i32 %4, %6
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = shl i32 %6, 5
  tail call void @_ZN11xercesc_2_76BitSet14ensureCapacityEj(ptr noundef nonnull align 8 dereferenceable(20) %0, i32 noundef %9) #7
  %10 = load i32, ptr %5, align 8, !tbaa !43
  br label %11

11:                                               ; preds = %8, %2
  %12 = phi i32 [ %10, %8 ], [ %6, %2 ]
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %"class.xercesc_2_7::BitSet", ptr %1, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !42
  %17 = getelementptr inbounds %"class.xercesc_2_7::BitSet", ptr %0, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !42
  %19 = zext i32 %12 to i64
  br label %21

20:                                               ; preds = %21, %11
  ret void

21:                                               ; preds = %14, %21
  %22 = phi i64 [ 0, %14 ], [ %28, %21 ]
  %23 = getelementptr inbounds i64, ptr %16, i64 %22
  %24 = load i64, ptr %23, align 8, !tbaa !47
  %25 = getelementptr inbounds i64, ptr %18, i64 %22
  %26 = load i64, ptr %25, align 8, !tbaa !47
  %27 = xor i64 %26, %24
  store i64 %27, ptr %25, align 8, !tbaa !47
  %28 = add nuw nsw i64 %22, 1
  %29 = icmp eq i64 %28, %19
  br i1 %29, label %20, label %21, !llvm.loop !57
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_76BitSet4hashEj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(20) %0, i32 noundef %1) local_unnamed_addr #3 align 2 !prof !35 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BitSet", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !43
  %5 = shl i32 %4, 3
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"class.xercesc_2_7::BitSet", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !42
  %10 = load i8, ptr %9, align 1, !tbaa !58
  %11 = zext i8 %10 to i32
  br label %15

12:                                               ; preds = %15, %2
  %13 = phi i32 [ 0, %2 ], [ %19, %15 ]
  %14 = urem i32 %13, %1
  ret i32 %14

15:                                               ; preds = %7, %15
  %16 = phi i32 [ 0, %7 ], [ %20, %15 ]
  %17 = phi i32 [ 0, %7 ], [ %19, %15 ]
  %18 = shl i32 %17, 1
  %19 = xor i32 %18, %11
  %20 = add nuw i32 %16, 1
  %21 = icmp eq i32 %20, %5
  br i1 %21, label %12, label %15, !llvm.loop !59
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { optsize }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind }

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
!35 = !{!"function_entry_count", i64 0}
!36 = !{!37, !38, i64 0}
!37 = !{!"_ZTSN11xercesc_2_76BitSetE", !38, i64 0, !38, i64 8, !41, i64 16}
!38 = !{!"any pointer", !39, i64 0}
!39 = !{!"omnipotent char", !40, i64 0}
!40 = !{!"Simple C++ TBAA"}
!41 = !{!"int", !39, i64 0}
!42 = !{!37, !38, i64 8}
!43 = !{!37, !41, i64 16}
!44 = !{!"function_entry_count", i64 5836268}
!45 = !{!46, !46, i64 0}
!46 = !{!"vtable pointer", !40, i64 0}
!47 = !{!48, !48, i64 0}
!48 = !{!"long", !39, i64 0}
!49 = distinct !{!49, !50}
!50 = !{!"llvm.loop.mustprogress"}
!51 = distinct !{!51, !50}
!52 = distinct !{!52, !50}
!53 = distinct !{!53, !50}
!54 = distinct !{!54, !50}
!55 = distinct !{!55, !50}
!56 = distinct !{!56, !50}
!57 = distinct !{!57, !50}
!58 = !{!39, !39, i64 0}
!59 = distinct !{!59, !50}
