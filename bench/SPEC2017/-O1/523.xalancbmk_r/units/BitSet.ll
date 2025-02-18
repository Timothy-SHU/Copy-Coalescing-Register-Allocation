; ModuleID = 'BitSet.cpp'
source_filename = "BitSet.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::BitSet" = type <{ ptr, ptr, i32, [4 x i8] }>

$__clang_call_terminate = comdat any

@_ZN11xercesc_2_76BitSetC1EjPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, i32, ptr), ptr @_ZN11xercesc_2_76BitSetC2EjPNS_13MemoryManagerE
@_ZN11xercesc_2_76BitSetC1ERKS0_ = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_76BitSetC2ERKS0_
@_ZN11xercesc_2_76BitSetD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_76BitSetD2Ev

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_76BitSetC2EjPNS_13MemoryManagerE(ptr nocapture noundef nonnull align 8 dereferenceable(20) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 align 2 !prof !34 {
  store ptr %2, ptr %0, align 8, !tbaa !35
  %4 = getelementptr inbounds %"class.xercesc_2_7::BitSet", ptr %0, i64 0, i32 1
  store ptr null, ptr %4, align 8, !tbaa !41
  %5 = getelementptr inbounds %"class.xercesc_2_7::BitSet", ptr %0, i64 0, i32 2
  store i32 0, ptr %5, align 8, !tbaa !42
  tail call void @_ZN11xercesc_2_76BitSet14ensureCapacityEj(ptr noundef nonnull align 8 dereferenceable(20) %0, i32 noundef %1)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_76BitSet14ensureCapacityEj(ptr nocapture noundef nonnull align 8 dereferenceable(20) %0, i32 noundef %1) local_unnamed_addr #0 align 2 !prof !34 {
  %3 = lshr i32 %1, 5
  %4 = and i32 %1, 31
  %5 = icmp ne i32 %4, 0
  %6 = zext i1 %5 to i32
  %7 = add nuw nsw i32 %3, %6
  %8 = getelementptr inbounds %"class.xercesc_2_7::BitSet", ptr %0, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !42
  %10 = icmp ugt i32 %7, %9
  br i1 %10, label %11, label %54

11:                                               ; preds = %2
  %12 = load ptr, ptr %0, align 8, !tbaa !35
  %13 = shl nuw nsw i32 %7, 3
  %14 = zext nneg i32 %13 to i64
  %15 = load ptr, ptr %12, align 8, !tbaa !43
  %16 = getelementptr inbounds ptr, ptr %15, i64 2
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef %14)
  %19 = load i32, ptr %8, align 8, !tbaa !42
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %11
  %22 = getelementptr inbounds %"class.xercesc_2_7::BitSet", ptr %0, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !41
  %24 = zext i32 %19 to i64
  br label %40

25:                                               ; preds = %40
  %26 = trunc i64 %45 to i32
  br label %27

27:                                               ; preds = %25, %11
  %28 = phi i32 [ 0, %11 ], [ %26, %25 ]
  %29 = icmp ult i32 %28, %7
  br i1 %29, label %30, label %47

30:                                               ; preds = %27
  %31 = zext i32 %28 to i64
  %32 = shl nuw nsw i64 %31, 3
  %33 = getelementptr i8, ptr %18, i64 %32
  %34 = add nuw nsw i32 %3, %6
  %35 = xor i32 %28, -1
  %36 = add i32 %34, %35
  %37 = zext i32 %36 to i64
  %38 = shl nuw nsw i64 %37, 3
  %39 = add nuw nsw i64 %38, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %33, i8 0, i64 %39, i1 false), !tbaa !45
  br label %47

40:                                               ; preds = %21, %40
  %41 = phi i64 [ 0, %21 ], [ %45, %40 ]
  %42 = getelementptr inbounds i64, ptr %23, i64 %41
  %43 = load i64, ptr %42, align 8, !tbaa !45
  %44 = getelementptr inbounds i64, ptr %18, i64 %41
  store i64 %43, ptr %44, align 8, !tbaa !45
  %45 = add nuw nsw i64 %41, 1
  %46 = icmp eq i64 %45, %24
  br i1 %46, label %25, label %40, !llvm.loop !47

47:                                               ; preds = %30, %27
  %48 = load ptr, ptr %0, align 8, !tbaa !35
  %49 = getelementptr inbounds %"class.xercesc_2_7::BitSet", ptr %0, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !41
  %51 = load ptr, ptr %48, align 8, !tbaa !43
  %52 = getelementptr inbounds ptr, ptr %51, i64 3
  %53 = load ptr, ptr %52, align 8
  tail call void %53(ptr noundef nonnull align 8 dereferenceable(8) %48, ptr noundef %50)
  store ptr %18, ptr %49, align 8, !tbaa !41
  store i32 %7, ptr %8, align 8, !tbaa !42
  br label %54

54:                                               ; preds = %47, %2
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_76BitSetC2ERKS0_(ptr nocapture noundef nonnull align 8 dereferenceable(20) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(20) %1) unnamed_addr #0 align 2 !prof !34 {
  %3 = load ptr, ptr %1, align 8, !tbaa !35
  store ptr %3, ptr %0, align 8, !tbaa !35
  %4 = getelementptr inbounds %"class.xercesc_2_7::BitSet", ptr %0, i64 0, i32 1
  store ptr null, ptr %4, align 8, !tbaa !41
  %5 = getelementptr inbounds %"class.xercesc_2_7::BitSet", ptr %0, i64 0, i32 2
  %6 = getelementptr inbounds %"class.xercesc_2_7::BitSet", ptr %1, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !42
  store i32 %7, ptr %5, align 8, !tbaa !42
  %8 = zext i32 %7 to i64
  %9 = shl nuw nsw i64 %8, 3
  %10 = load ptr, ptr %3, align 8, !tbaa !43
  %11 = getelementptr inbounds ptr, ptr %10, i64 2
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %9)
  store ptr %13, ptr %4, align 8, !tbaa !41
  %14 = load i32, ptr %5, align 8, !tbaa !42
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %2
  %17 = getelementptr inbounds %"class.xercesc_2_7::BitSet", ptr %1, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !41
  %19 = zext i32 %14 to i64
  br label %21

20:                                               ; preds = %21, %2
  ret void

21:                                               ; preds = %16, %21
  %22 = phi i64 [ 0, %16 ], [ %26, %21 ]
  %23 = getelementptr inbounds i64, ptr %18, i64 %22
  %24 = load i64, ptr %23, align 8, !tbaa !45
  %25 = getelementptr inbounds i64, ptr %13, i64 %22
  store i64 %24, ptr %25, align 8, !tbaa !45
  %26 = add nuw nsw i64 %22, 1
  %27 = icmp eq i64 %26, %19
  br i1 %27, label %20, label %21, !llvm.loop !50
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_76BitSetD2Ev(ptr nocapture noundef nonnull readonly align 8 dereferenceable(20) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %2 = load ptr, ptr %0, align 8, !tbaa !35
  %3 = getelementptr inbounds %"class.xercesc_2_7::BitSet", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !41
  %5 = load ptr, ptr %2, align 8, !tbaa !43
  %6 = getelementptr inbounds ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  invoke void %7(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %4)
          to label %8 unwind label %9

8:                                                ; preds = %1
  ret void

9:                                                ; preds = %1
  %10 = landingpad { ptr, i32 }
          catch ptr null
  %11 = extractvalue { ptr, i32 } %10, 0
  tail call void @__clang_call_terminate(ptr %11) #7
  unreachable
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #2 comdat !prof !34 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #8
  tail call void @_ZSt9terminatev() #7
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_76BitSet6equalsERKS0_(ptr noundef nonnull readonly align 8 dereferenceable(20) %0, ptr noundef nonnull readonly align 8 dereferenceable(20) %1) local_unnamed_addr #3 align 2 !prof !34 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %33, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"class.xercesc_2_7::BitSet", ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !42
  %7 = getelementptr inbounds %"class.xercesc_2_7::BitSet", ptr %1, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !42
  %9 = icmp eq i32 %6, %8
  br i1 %9, label %10, label %33

10:                                               ; preds = %4
  %11 = icmp eq i32 %6, 0
  br i1 %11, label %33, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %"class.xercesc_2_7::BitSet", ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !41
  %15 = getelementptr inbounds %"class.xercesc_2_7::BitSet", ptr %1, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !41
  %17 = load i64, ptr %14, align 8, !tbaa !45
  %18 = load i64, ptr %16, align 8, !tbaa !45
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %33

20:                                               ; preds = %12, %24
  %21 = phi i32 [ %22, %24 ], [ 0, %12 ]
  %22 = add nuw i32 %21, 1
  %23 = icmp eq i32 %22, %6
  br i1 %23, label %31, label %24, !llvm.loop !51

24:                                               ; preds = %20
  %25 = zext i32 %22 to i64
  %26 = getelementptr inbounds i64, ptr %14, i64 %25
  %27 = load i64, ptr %26, align 8, !tbaa !45
  %28 = getelementptr inbounds i64, ptr %16, i64 %25
  %29 = load i64, ptr %28, align 8, !tbaa !45
  %30 = icmp eq i64 %27, %29
  br i1 %30, label %20, label %31, !llvm.loop !51

31:                                               ; preds = %24, %20
  %32 = icmp uge i32 %22, %6
  br label %33

33:                                               ; preds = %31, %12, %10, %4, %2
  %34 = phi i1 [ true, %2 ], [ false, %4 ], [ %11, %10 ], [ %11, %12 ], [ %32, %31 ]
  ret i1 %34
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_76BitSet3getEj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(20) %0, i32 noundef %1) local_unnamed_addr #3 align 2 !prof !34 {
  %3 = lshr i32 %1, 5
  %4 = getelementptr inbounds %"class.xercesc_2_7::BitSet", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !42
  %6 = icmp ugt i32 %3, %5
  br i1 %6, label %18, label %7

7:                                                ; preds = %2
  %8 = and i32 %1, 31
  %9 = getelementptr inbounds %"class.xercesc_2_7::BitSet", ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !41
  %11 = zext nneg i32 %3 to i64
  %12 = getelementptr inbounds i64, ptr %10, i64 %11
  %13 = load i64, ptr %12, align 8, !tbaa !45
  %14 = shl nuw i32 1, %8
  %15 = sext i32 %14 to i64
  %16 = and i64 %13, %15
  %17 = icmp ne i64 %16, 0
  br label %18

18:                                               ; preds = %7, %2
  %19 = phi i1 [ false, %2 ], [ %17, %7 ]
  ret i1 %19
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_76BitSet4sizeEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(20) %0) local_unnamed_addr #4 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BitSet", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !42
  %4 = shl i32 %3, 5
  ret i32 %4
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_76BitSet13allAreClearedEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(20) %0) local_unnamed_addr #3 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BitSet", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !42
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BitSet", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !41
  %8 = load i64, ptr %7, align 8, !tbaa !45
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %5, %14
  %11 = phi i32 [ %12, %14 ], [ 0, %5 ]
  %12 = add nuw i32 %11, 1
  %13 = icmp eq i32 %12, %3
  br i1 %13, label %19, label %14, !llvm.loop !52

14:                                               ; preds = %10
  %15 = zext i32 %12 to i64
  %16 = getelementptr inbounds i64, ptr %7, i64 %15
  %17 = load i64, ptr %16, align 8, !tbaa !45
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %10, label %19, !llvm.loop !52

19:                                               ; preds = %10, %14
  %20 = icmp uge i32 %12, %3
  br label %21

21:                                               ; preds = %19, %5, %1
  %22 = phi i1 [ %4, %1 ], [ %4, %5 ], [ %20, %19 ]
  ret i1 %22
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_76BitSet9allAreSetEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(20) %0) local_unnamed_addr #3 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BitSet", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !42
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BitSet", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !41
  %8 = load i64, ptr %7, align 8, !tbaa !45
  %9 = icmp eq i64 %8, 4294967295
  br i1 %9, label %10, label %21

10:                                               ; preds = %5, %14
  %11 = phi i32 [ %12, %14 ], [ 0, %5 ]
  %12 = add nuw i32 %11, 1
  %13 = icmp eq i32 %12, %3
  br i1 %13, label %19, label %14, !llvm.loop !53

14:                                               ; preds = %10
  %15 = zext i32 %12 to i64
  %16 = getelementptr inbounds i64, ptr %7, i64 %15
  %17 = load i64, ptr %16, align 8, !tbaa !45
  %18 = icmp eq i64 %17, 4294967295
  br i1 %18, label %10, label %19, !llvm.loop !53

19:                                               ; preds = %10, %14
  %20 = icmp uge i32 %12, %3
  br label %21

21:                                               ; preds = %19, %5, %1
  %22 = phi i1 [ %4, %1 ], [ %4, %5 ], [ %20, %19 ]
  ret i1 %22
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xercesc_2_76BitSet8clearAllEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(20) %0) local_unnamed_addr #5 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BitSet", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !42
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BitSet", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !41
  %8 = zext i32 %3 to i64
  %9 = shl nuw nsw i64 %8, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %7, i8 0, i64 %9, i1 false), !tbaa !45
  br label %10

10:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_76BitSet5clearEj(ptr nocapture noundef nonnull align 8 dereferenceable(20) %0, i32 noundef %1) local_unnamed_addr #0 align 2 !prof !34 {
  %3 = add i32 %1, 1
  tail call void @_ZN11xercesc_2_76BitSet14ensureCapacityEj(ptr noundef nonnull align 8 dereferenceable(20) %0, i32 noundef %3)
  %4 = lshr i32 %1, 5
  %5 = and i32 %1, 31
  %6 = zext nneg i32 %5 to i64
  %7 = shl nuw nsw i64 1, %6
  %8 = xor i64 %7, -1
  %9 = getelementptr inbounds %"class.xercesc_2_7::BitSet", ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !41
  %11 = zext nneg i32 %4 to i64
  %12 = getelementptr inbounds i64, ptr %10, i64 %11
  %13 = load i64, ptr %12, align 8, !tbaa !45
  %14 = and i64 %13, %8
  store i64 %14, ptr %12, align 8, !tbaa !45
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_76BitSet3setEj(ptr nocapture noundef nonnull align 8 dereferenceable(20) %0, i32 noundef %1) local_unnamed_addr #0 align 2 !prof !34 {
  %3 = add i32 %1, 1
  tail call void @_ZN11xercesc_2_76BitSet14ensureCapacityEj(ptr noundef nonnull align 8 dereferenceable(20) %0, i32 noundef %3)
  %4 = lshr i32 %1, 5
  %5 = and i32 %1, 31
  %6 = zext nneg i32 %5 to i64
  %7 = shl nuw nsw i64 1, %6
  %8 = getelementptr inbounds %"class.xercesc_2_7::BitSet", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !41
  %10 = zext nneg i32 %4 to i64
  %11 = getelementptr inbounds i64, ptr %9, i64 %10
  %12 = load i64, ptr %11, align 8, !tbaa !45
  %13 = or i64 %12, %7
  store i64 %13, ptr %11, align 8, !tbaa !45
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_76BitSet7andWithERKS0_(ptr nocapture noundef nonnull align 8 dereferenceable(20) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(20) %1) local_unnamed_addr #0 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BitSet", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !42
  %5 = getelementptr inbounds %"class.xercesc_2_7::BitSet", ptr %1, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !42
  %7 = icmp ult i32 %4, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = shl i32 %6, 5
  tail call void @_ZN11xercesc_2_76BitSet14ensureCapacityEj(ptr noundef nonnull align 8 dereferenceable(20) %0, i32 noundef %9)
  br label %10

10:                                               ; preds = %8, %2
  %11 = load i32, ptr %5, align 8, !tbaa !42
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %"class.xercesc_2_7::BitSet", ptr %1, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !41
  %16 = getelementptr inbounds %"class.xercesc_2_7::BitSet", ptr %0, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !41
  %18 = zext i32 %11 to i64
  br label %20

19:                                               ; preds = %20, %10
  ret void

20:                                               ; preds = %13, %20
  %21 = phi i64 [ 0, %13 ], [ %27, %20 ]
  %22 = getelementptr inbounds i64, ptr %15, i64 %21
  %23 = load i64, ptr %22, align 8, !tbaa !45
  %24 = getelementptr inbounds i64, ptr %17, i64 %21
  %25 = load i64, ptr %24, align 8, !tbaa !45
  %26 = and i64 %25, %23
  store i64 %26, ptr %24, align 8, !tbaa !45
  %27 = add nuw nsw i64 %21, 1
  %28 = icmp eq i64 %27, %18
  br i1 %28, label %19, label %20, !llvm.loop !54
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_76BitSet6orWithERKS0_(ptr nocapture noundef nonnull align 8 dereferenceable(20) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(20) %1) local_unnamed_addr #0 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BitSet", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !42
  %5 = getelementptr inbounds %"class.xercesc_2_7::BitSet", ptr %1, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !42
  %7 = icmp ult i32 %4, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = shl i32 %6, 5
  tail call void @_ZN11xercesc_2_76BitSet14ensureCapacityEj(ptr noundef nonnull align 8 dereferenceable(20) %0, i32 noundef %9)
  br label %10

10:                                               ; preds = %8, %2
  %11 = load i32, ptr %5, align 8, !tbaa !42
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %"class.xercesc_2_7::BitSet", ptr %1, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !41
  %16 = getelementptr inbounds %"class.xercesc_2_7::BitSet", ptr %0, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !41
  %18 = zext i32 %11 to i64
  br label %20

19:                                               ; preds = %20, %10
  ret void

20:                                               ; preds = %13, %20
  %21 = phi i64 [ 0, %13 ], [ %27, %20 ]
  %22 = getelementptr inbounds i64, ptr %15, i64 %21
  %23 = load i64, ptr %22, align 8, !tbaa !45
  %24 = getelementptr inbounds i64, ptr %17, i64 %21
  %25 = load i64, ptr %24, align 8, !tbaa !45
  %26 = or i64 %25, %23
  store i64 %26, ptr %24, align 8, !tbaa !45
  %27 = add nuw nsw i64 %21, 1
  %28 = icmp eq i64 %27, %18
  br i1 %28, label %19, label %20, !llvm.loop !55
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_76BitSet7xorWithERKS0_(ptr nocapture noundef nonnull align 8 dereferenceable(20) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(20) %1) local_unnamed_addr #0 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BitSet", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !42
  %5 = getelementptr inbounds %"class.xercesc_2_7::BitSet", ptr %1, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !42
  %7 = icmp ult i32 %4, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = shl i32 %6, 5
  tail call void @_ZN11xercesc_2_76BitSet14ensureCapacityEj(ptr noundef nonnull align 8 dereferenceable(20) %0, i32 noundef %9)
  br label %10

10:                                               ; preds = %8, %2
  %11 = load i32, ptr %5, align 8, !tbaa !42
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %"class.xercesc_2_7::BitSet", ptr %1, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !41
  %16 = getelementptr inbounds %"class.xercesc_2_7::BitSet", ptr %0, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !41
  %18 = zext i32 %11 to i64
  br label %20

19:                                               ; preds = %20, %10
  ret void

20:                                               ; preds = %13, %20
  %21 = phi i64 [ 0, %13 ], [ %27, %20 ]
  %22 = getelementptr inbounds i64, ptr %15, i64 %21
  %23 = load i64, ptr %22, align 8, !tbaa !45
  %24 = getelementptr inbounds i64, ptr %17, i64 %21
  %25 = load i64, ptr %24, align 8, !tbaa !45
  %26 = xor i64 %25, %23
  store i64 %26, ptr %24, align 8, !tbaa !45
  %27 = add nuw nsw i64 %21, 1
  %28 = icmp eq i64 %27, %18
  br i1 %28, label %19, label %20, !llvm.loop !56
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_76BitSet4hashEj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(20) %0, i32 noundef %1) local_unnamed_addr #3 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BitSet", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !42
  %5 = shl i32 %4, 3
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"class.xercesc_2_7::BitSet", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !41
  %10 = load i8, ptr %9, align 1, !tbaa !57
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
  br i1 %21, label %12, label %15, !llvm.loop !58
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind }

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
!35 = !{!36, !37, i64 0}
!36 = !{!"_ZTSN11xercesc_2_76BitSetE", !37, i64 0, !37, i64 8, !40, i64 16}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C++ TBAA"}
!40 = !{!"int", !38, i64 0}
!41 = !{!36, !37, i64 8}
!42 = !{!36, !40, i64 16}
!43 = !{!44, !44, i64 0}
!44 = !{!"vtable pointer", !39, i64 0}
!45 = !{!46, !46, i64 0}
!46 = !{!"long", !38, i64 0}
!47 = distinct !{!47, !48, !49}
!48 = !{!"llvm.loop.mustprogress"}
!49 = !{!"llvm.loop.unroll.disable"}
!50 = distinct !{!50, !48, !49}
!51 = distinct !{!51, !48, !49}
!52 = distinct !{!52, !48, !49}
!53 = distinct !{!53, !48, !49}
!54 = distinct !{!54, !48, !49}
!55 = distinct !{!55, !48, !49}
!56 = distinct !{!56, !48, !49}
!57 = !{!38, !38, i64 0}
!58 = distinct !{!58, !48, !49}
