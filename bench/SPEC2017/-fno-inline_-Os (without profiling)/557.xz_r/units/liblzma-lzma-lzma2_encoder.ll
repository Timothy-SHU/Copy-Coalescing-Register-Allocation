; ModuleID = 'liblzma/lzma/lzma2_encoder.c'
source_filename = "liblzma/lzma/lzma2_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lzma_lz_encoder = type { ptr, ptr, ptr, ptr }
%struct.lzma_coder_s = type { i32, ptr, %struct.lzma_options_lzma, i8, i8, i8, i64, i64, i64, [65542 x i8] }
%struct.lzma_options_lzma = type { i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.lzma_lz_options = type { i64, i64, i64, i64, i64, i32, i32, ptr, i32 }
%struct.lzma_mf_s = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lzma_filter = type { i64, ptr }

@lzma_fastpos = external local_unnamed_addr constant [8192 x i8], align 16

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @lzma_lzma2_encoder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 @lzma_lz_encoder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @lzma2_encoder_init) #10
  ret i32 %4
}

; Function Attrs: optsize
declare i32 @lzma_lz_encoder_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @lzma2_encoder_init(ptr nocapture noundef %0, ptr noundef %1, ptr noundef readonly %2, ptr noundef %3) #0 {
  %5 = icmp eq ptr %2, null
  br i1 %5, label %46, label %6

6:                                                ; preds = %4
  %7 = load ptr, ptr %0, align 8, !tbaa !5
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %17

9:                                                ; preds = %6
  %10 = tail call ptr @lzma_alloc(i64 noundef 65704, ptr noundef %1) #10
  store ptr %10, ptr %0, align 8, !tbaa !5
  %11 = icmp eq ptr %10, null
  br i1 %11, label %46, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.lzma_lz_encoder, ptr %0, i64 0, i32 1
  store ptr @lzma2_encode, ptr %13, align 8, !tbaa !10
  %14 = getelementptr inbounds %struct.lzma_lz_encoder, ptr %0, i64 0, i32 2
  store ptr @lzma2_encoder_end, ptr %14, align 8, !tbaa !11
  %15 = getelementptr inbounds %struct.lzma_lz_encoder, ptr %0, i64 0, i32 3
  store ptr @lzma2_encoder_options_update, ptr %15, align 8, !tbaa !12
  %16 = getelementptr inbounds %struct.lzma_coder_s, ptr %10, i64 0, i32 1
  store ptr null, ptr %16, align 8, !tbaa !13
  br label %17

17:                                               ; preds = %12, %6
  %18 = phi ptr [ %10, %12 ], [ %7, %6 ]
  %19 = getelementptr inbounds %struct.lzma_coder_s, ptr %18, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %19, ptr noundef nonnull align 8 dereferenceable(112) %2, i64 112, i1 false), !tbaa.struct !19
  %20 = load ptr, ptr %0, align 8, !tbaa !5
  store i32 0, ptr %20, align 8, !tbaa !22
  %21 = getelementptr inbounds %struct.lzma_coder_s, ptr %20, i64 0, i32 3
  store i8 1, ptr %21, align 8, !tbaa !23
  %22 = getelementptr inbounds %struct.lzma_coder_s, ptr %20, i64 0, i32 4
  store i8 0, ptr %22, align 1, !tbaa !24
  %23 = getelementptr inbounds %struct.lzma_coder_s, ptr %20, i64 0, i32 2, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !25
  %25 = icmp eq ptr %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %17
  %27 = getelementptr inbounds %struct.lzma_coder_s, ptr %20, i64 0, i32 2, i32 2
  %28 = load i32, ptr %27, align 8, !tbaa !26
  %29 = icmp eq i32 %28, 0
  %30 = zext i1 %29 to i8
  br label %31

31:                                               ; preds = %26, %17
  %32 = phi i8 [ 1, %17 ], [ %30, %26 ]
  %33 = getelementptr inbounds %struct.lzma_coder_s, ptr %20, i64 0, i32 5
  store i8 %32, ptr %33, align 2, !tbaa !27
  %34 = getelementptr inbounds %struct.lzma_coder_s, ptr %20, i64 0, i32 1
  %35 = getelementptr inbounds %struct.lzma_coder_s, ptr %20, i64 0, i32 2
  %36 = tail call i32 @lzma_lzma_encoder_create(ptr noundef nonnull %34, ptr noundef %1, ptr noundef nonnull %35, ptr noundef %3) #10
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %31
  %39 = load i64, ptr %3, align 8, !tbaa !28
  %40 = getelementptr inbounds %struct.lzma_lz_options, ptr %3, i64 0, i32 1
  %41 = load i64, ptr %40, align 8, !tbaa !30
  %42 = add i64 %41, %39
  %43 = icmp ult i64 %42, 65536
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = sub i64 65536, %41
  store i64 %45, ptr %3, align 8, !tbaa !28
  br label %46

46:                                               ; preds = %31, %38, %44, %9, %4
  %47 = phi i32 [ %36, %31 ], [ 11, %4 ], [ 5, %9 ], [ 0, %44 ], [ 0, %38 ]
  ret i32 %47
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @lzma_lzma2_encoder_memusage(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i64 @lzma_lzma_encoder_memusage(ptr noundef %0) #10
  %3 = icmp eq i64 %2, -1
  %4 = add i64 %2, 65704
  %5 = select i1 %3, i64 -1, i64 %4
  ret i64 %5
}

; Function Attrs: optsize
declare i64 @lzma_lzma_encoder_memusage(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @lzma_lzma2_props_encode(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #2 {
  %3 = load i32, ptr %0, align 8, !tbaa !31
  %4 = icmp ugt i32 %3, 4096
  %5 = add i32 %3, -1
  %6 = select i1 %4, i32 %5, i32 4095
  %7 = lshr i32 %6, 2
  %8 = or i32 %7, %6
  %9 = lshr i32 %8, 3
  %10 = or i32 %9, %8
  %11 = lshr i32 %10, 4
  %12 = or i32 %11, %10
  %13 = lshr i32 %12, 8
  %14 = or i32 %13, %12
  %15 = lshr i32 %14, 16
  %16 = or i32 %15, %14
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %23, label %18

18:                                               ; preds = %2
  %19 = add nuw i32 %16, 1
  %20 = tail call fastcc i32 @get_pos_slot(i32 noundef %19) #11, !range !32
  %21 = trunc i32 %20 to i8
  %22 = add i8 %21, -24
  br label %23

23:                                               ; preds = %2, %18
  %24 = phi i8 [ %22, %18 ], [ 40, %2 ]
  store i8 %24, ptr %1, align 1, !tbaa !33
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @get_pos_slot(i32 noundef %0) unnamed_addr #3 {
  %2 = icmp ult i32 %0, 8192
  br i1 %2, label %3, label %8

3:                                                ; preds = %1
  %4 = zext nneg i32 %0 to i64
  %5 = getelementptr inbounds [8192 x i8], ptr @lzma_fastpos, i64 0, i64 %4
  %6 = load i8, ptr %5, align 1, !tbaa !33
  %7 = zext i8 %6 to i32
  br label %24

8:                                                ; preds = %1
  %9 = icmp ult i32 %0, 33554432
  br i1 %9, label %10, label %17

10:                                               ; preds = %8
  %11 = lshr i32 %0, 12
  %12 = zext nneg i32 %11 to i64
  %13 = getelementptr inbounds [8192 x i8], ptr @lzma_fastpos, i64 0, i64 %12
  %14 = load i8, ptr %13, align 1, !tbaa !33
  %15 = zext i8 %14 to i32
  %16 = add nuw nsw i32 %15, 24
  br label %24

17:                                               ; preds = %8
  %18 = lshr i32 %0, 24
  %19 = zext nneg i32 %18 to i64
  %20 = getelementptr inbounds [8192 x i8], ptr @lzma_fastpos, i64 0, i64 %19
  %21 = load i8, ptr %20, align 1, !tbaa !33
  %22 = zext i8 %21 to i32
  %23 = add nuw nsw i32 %22, 48
  br label %24

24:                                               ; preds = %17, %10, %3
  %25 = phi i32 [ %7, %3 ], [ %16, %10 ], [ %23, %17 ]
  ret i32 %25
}

; Function Attrs: optsize
declare ptr @lzma_alloc(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @lzma2_encode(ptr noundef %0, ptr noalias noundef %1, ptr noalias noundef %2, ptr noalias noundef %3, i64 noundef %4) #0 {
  %6 = load i64, ptr %3, align 8, !tbaa !34
  %7 = icmp ult i64 %6, %4
  br i1 %7, label %8, label %97

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 9
  %10 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 8
  %11 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 6
  %12 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 4
  %13 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1
  %14 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2
  %15 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 7
  %16 = getelementptr inbounds %struct.lzma_mf_s, ptr %1, i64 0, i32 19
  %17 = getelementptr inbounds %struct.lzma_mf_s, ptr %1, i64 0, i32 5
  %18 = getelementptr inbounds %struct.lzma_mf_s, ptr %1, i64 0, i32 6
  %19 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 9, i64 6
  %20 = load i32, ptr %0, align 8, !tbaa !22
  br label %21

21:                                               ; preds = %8, %93
  %22 = phi i32 [ %20, %8 ], [ %94, %93 ]
  %23 = phi i64 [ %6, %8 ], [ %95, %93 ]
  switch i32 %22, label %93 [
    i32 0, label %26
    i32 1, label %24
    i32 2, label %77
    i32 3, label %83
    i32 4, label %88
  ]

24:                                               ; preds = %21
  %25 = load i64, ptr %11, align 8, !tbaa !35
  br label %47

26:                                               ; preds = %21
  %27 = tail call fastcc i32 @mf_unencoded(ptr noundef %1) #11
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.lzma_mf_s, ptr %1, i64 0, i32 20
  %31 = load i32, ptr %30, align 8, !tbaa !36
  %32 = icmp eq i32 %31, 3
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = add nuw i64 %23, 1
  store i64 %34, ptr %3, align 8, !tbaa !34
  %35 = getelementptr inbounds i8, ptr %2, i64 %23
  store i8 0, ptr %35, align 1, !tbaa !33
  br label %36

36:                                               ; preds = %33, %29
  %37 = icmp ne i32 %31, 0
  %38 = zext i1 %37 to i32
  br label %97

39:                                               ; preds = %26
  %40 = load i8, ptr %12, align 1, !tbaa !24, !range !38, !noundef !39
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %39
  %43 = load ptr, ptr %13, align 8, !tbaa !13
  %44 = tail call i32 @lzma_lzma_encoder_reset(ptr noundef %43, ptr noundef nonnull %14) #10
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %97

46:                                               ; preds = %42, %39
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  store i32 1, ptr %0, align 8, !tbaa !22
  br label %47

47:                                               ; preds = %24, %46
  %48 = phi i64 [ %25, %24 ], [ 0, %46 ]
  %49 = trunc i64 %48 to i32
  %50 = sub i32 2097152, %49
  %51 = load i32, ptr %16, align 4, !tbaa !40
  %52 = icmp ult i32 %50, %51
  %53 = load i32, ptr %17, align 8, !tbaa !41
  %54 = load i32, ptr %18, align 4, !tbaa !42
  %55 = add i32 %50, %53
  %56 = add i32 %51, %54
  %57 = sub i32 %55, %56
  %58 = select i1 %52, i32 0, i32 %57
  %59 = load ptr, ptr %13, align 8, !tbaa !13
  %60 = tail call i32 @lzma_lzma_encode(ptr noundef %59, ptr noundef nonnull %1, ptr noundef nonnull %19, ptr noundef nonnull %15, i64 noundef 65536, i32 noundef %58) #10
  %61 = load i32, ptr %17, align 8, !tbaa !41
  %62 = load i32, ptr %18, align 4, !tbaa !42
  %63 = add i32 %54, %61
  %64 = add i32 %53, %62
  %65 = sub i32 %63, %64
  %66 = zext i32 %65 to i64
  %67 = load i64, ptr %11, align 8, !tbaa !35
  %68 = add i64 %67, %66
  store i64 %68, ptr %11, align 8, !tbaa !35
  %69 = icmp eq i32 %60, 1
  br i1 %69, label %70, label %97

70:                                               ; preds = %47
  %71 = load i64, ptr %15, align 8, !tbaa !43
  %72 = icmp ult i64 %71, %68
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  tail call fastcc void @lzma2_header_lzma(ptr noundef nonnull %0) #11
  store i32 2, ptr %0, align 8, !tbaa !22
  br label %77

74:                                               ; preds = %70
  %75 = zext i32 %62 to i64
  %76 = add i64 %68, %75
  store i64 %76, ptr %11, align 8, !tbaa !35
  store i32 0, ptr %18, align 4, !tbaa !42
  tail call fastcc void @lzma2_header_uncompressed(ptr noundef nonnull %0) #11
  store i8 1, ptr %12, align 1, !tbaa !24
  br label %91

77:                                               ; preds = %73, %21
  %78 = load i64, ptr %15, align 8, !tbaa !43
  %79 = tail call i64 @lzma_bufcpy(ptr noundef nonnull %9, ptr noundef nonnull %10, i64 noundef %78, ptr noundef %2, ptr noundef nonnull %3, i64 noundef %4) #10
  %80 = load i64, ptr %10, align 8, !tbaa !44
  %81 = load i64, ptr %15, align 8, !tbaa !43
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %91, label %97

83:                                               ; preds = %21
  %84 = tail call i64 @lzma_bufcpy(ptr noundef nonnull %9, ptr noundef nonnull %10, i64 noundef 3, ptr noundef %2, ptr noundef nonnull %3, i64 noundef %4) #10
  %85 = load i64, ptr %10, align 8, !tbaa !44
  %86 = icmp eq i64 %85, 3
  br i1 %86, label %87, label %97

87:                                               ; preds = %83
  store i32 4, ptr %0, align 8, !tbaa !22
  br label %88

88:                                               ; preds = %21, %87
  tail call fastcc void @mf_read(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, i64 noundef %4, ptr noundef nonnull %11) #11
  %89 = load i64, ptr %11, align 8, !tbaa !35
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %88, %77, %74
  %92 = phi i32 [ 3, %74 ], [ 0, %77 ], [ 0, %88 ]
  store i32 %92, ptr %0, align 8, !tbaa !22
  br label %93

93:                                               ; preds = %91, %21
  %94 = phi i32 [ %22, %21 ], [ %92, %91 ]
  %95 = load i64, ptr %3, align 8, !tbaa !34
  %96 = icmp ult i64 %95, %4
  br i1 %96, label %21, label %97, !llvm.loop !45

97:                                               ; preds = %42, %77, %83, %88, %93, %47, %5, %36
  %98 = phi i32 [ %38, %36 ], [ 0, %5 ], [ %44, %42 ], [ 0, %77 ], [ 0, %83 ], [ 0, %88 ], [ 0, %93 ], [ 0, %47 ]
  ret i32 %98
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @lzma2_encoder_end(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !13
  tail call void @lzma_free(ptr noundef %4, ptr noundef %1) #10
  tail call void @lzma_free(ptr noundef %0, ptr noundef %1) #10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal noundef i32 @lzma2_encoder_options_update(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #4 {
  %3 = getelementptr inbounds %struct.lzma_filter, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = icmp eq ptr %4, null
  br i1 %5, label %45, label %6

6:                                                ; preds = %2
  %7 = load i32, ptr %0, align 8, !tbaa !22
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %45

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2, i32 3
  %11 = load i32, ptr %10, align 4, !tbaa !49
  %12 = getelementptr inbounds %struct.lzma_options_lzma, ptr %4, i64 0, i32 3
  %13 = load i32, ptr %12, align 4, !tbaa !50
  %14 = icmp eq i32 %11, %13
  br i1 %14, label %15, label %27

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2, i32 4
  %17 = load i32, ptr %16, align 8, !tbaa !51
  %18 = getelementptr inbounds %struct.lzma_options_lzma, ptr %4, i64 0, i32 4
  %19 = load i32, ptr %18, align 8, !tbaa !52
  %20 = icmp eq i32 %17, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2, i32 5
  %23 = load i32, ptr %22, align 4, !tbaa !53
  %24 = getelementptr inbounds %struct.lzma_options_lzma, ptr %4, i64 0, i32 5
  %25 = load i32, ptr %24, align 4, !tbaa !54
  %26 = icmp eq i32 %23, %25
  br i1 %26, label %45, label %27

27:                                               ; preds = %21, %15, %9
  %28 = icmp ugt i32 %13, 4
  br i1 %28, label %45, label %29

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.lzma_options_lzma, ptr %4, i64 0, i32 4
  %31 = load i32, ptr %30, align 8, !tbaa !52
  %32 = icmp ugt i32 %31, 4
  %33 = add nuw nsw i32 %31, %13
  %34 = icmp ugt i32 %33, 4
  %35 = select i1 %32, i1 true, i1 %34
  br i1 %35, label %45, label %36

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.lzma_options_lzma, ptr %4, i64 0, i32 5
  %38 = load i32, ptr %37, align 4, !tbaa !54
  %39 = icmp ugt i32 %38, 4
  br i1 %39, label %45, label %40

40:                                               ; preds = %36
  store i32 %13, ptr %10, align 4, !tbaa !49
  %41 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2, i32 4
  store i32 %31, ptr %41, align 8, !tbaa !51
  %42 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2, i32 5
  store i32 %38, ptr %42, align 4, !tbaa !53
  %43 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3
  store i8 1, ptr %43, align 8, !tbaa !23
  %44 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 4
  store i8 1, ptr %44, align 1, !tbaa !24
  br label %45

45:                                               ; preds = %36, %29, %27, %40, %21, %2, %6
  %46 = phi i32 [ 11, %6 ], [ 11, %2 ], [ 8, %36 ], [ 8, %29 ], [ 8, %27 ], [ 0, %40 ], [ 0, %21 ]
  ret i32 %46
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: optsize
declare i32 @lzma_lzma_encoder_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @mf_unencoded(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 4, !tbaa !55
  %4 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !41
  %6 = sub i32 %3, %5
  %7 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 6
  %8 = load i32, ptr %7, align 4, !tbaa !42
  %9 = add i32 %6, %8
  ret i32 %9
}

; Function Attrs: optsize
declare i32 @lzma_lzma_encoder_reset(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @lzma_lzma_encode(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @lzma2_header_uncompressed(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 5
  %3 = load i8, ptr %2, align 2, !tbaa !27, !range !38, !noundef !39
  %4 = icmp eq i8 %3, 0
  %5 = select i1 %4, i8 2, i8 1
  %6 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 9
  store i8 %5, ptr %6, align 8
  store i8 0, ptr %2, align 2, !tbaa !27
  %7 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 6
  %8 = load i64, ptr %7, align 8, !tbaa !35
  %9 = add i64 %8, 65535
  %10 = lshr i64 %9, 8
  %11 = trunc i64 %10 to i8
  %12 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 9, i64 1
  store i8 %11, ptr %12, align 1, !tbaa !33
  %13 = trunc i64 %8 to i8
  %14 = add i8 %13, -1
  %15 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 9, i64 2
  store i8 %14, ptr %15, align 2, !tbaa !33
  %16 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 8
  store i64 0, ptr %16, align 8, !tbaa !44
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @lzma2_header_lzma(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 8, !tbaa !23, !range !38, !noundef !39
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 5
  %7 = load i8, ptr %6, align 2, !tbaa !27, !range !38, !noundef !39
  %8 = icmp eq i8 %7, 0
  %9 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 9
  br i1 %8, label %11, label %10

10:                                               ; preds = %5
  store i8 -32, ptr %9, align 1, !tbaa !33
  br label %19

11:                                               ; preds = %5
  store i8 -64, ptr %9, align 1, !tbaa !33
  br label %19

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 4
  %14 = load i8, ptr %13, align 1, !tbaa !24, !range !38, !noundef !39
  %15 = icmp eq i8 %14, 0
  %16 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 9, i64 1
  br i1 %15, label %18, label %17

17:                                               ; preds = %12
  store i8 -96, ptr %16, align 1, !tbaa !33
  br label %19

18:                                               ; preds = %12
  store i8 -128, ptr %16, align 1, !tbaa !33
  br label %19

19:                                               ; preds = %17, %18, %10, %11
  %20 = phi i64 [ 0, %10 ], [ 0, %11 ], [ 1, %17 ], [ 1, %18 ]
  %21 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 8
  store i64 %20, ptr %21, align 8, !tbaa !44
  %22 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 6
  %23 = load i64, ptr %22, align 8, !tbaa !35
  %24 = add i64 %23, -1
  %25 = lshr i64 %24, 16
  %26 = add nuw nsw i64 %20, 1
  %27 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 9, i64 %20
  %28 = load i8, ptr %27, align 1, !tbaa !33
  %29 = trunc i64 %25 to i8
  %30 = add i8 %28, %29
  store i8 %30, ptr %27, align 1, !tbaa !33
  %31 = lshr i64 %24, 8
  %32 = trunc i64 %31 to i8
  %33 = or disjoint i64 %20, 2
  %34 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 9, i64 %26
  store i8 %32, ptr %34, align 1, !tbaa !33
  %35 = trunc i64 %24 to i8
  %36 = add nuw nsw i64 %20, 3
  %37 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 9, i64 %33
  store i8 %35, ptr %37, align 1, !tbaa !33
  %38 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 7
  %39 = load i64, ptr %38, align 8, !tbaa !43
  %40 = add i64 %39, -1
  %41 = lshr i64 %40, 8
  %42 = trunc i64 %41 to i8
  %43 = or disjoint i64 %20, 4
  %44 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 9, i64 %36
  store i8 %42, ptr %44, align 1, !tbaa !33
  %45 = trunc i64 %40 to i8
  %46 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 9, i64 %43
  store i8 %45, ptr %46, align 1, !tbaa !33
  br i1 %4, label %54, label %47

47:                                               ; preds = %19
  %48 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 9
  %49 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2
  %50 = getelementptr i8, ptr %48, i64 %20
  %51 = getelementptr i8, ptr %50, i64 5
  %52 = tail call zeroext i1 @lzma_lzma_lclppb_encode(ptr noundef nonnull %49, ptr noundef %51) #10
  %53 = load i64, ptr %38, align 8, !tbaa !43
  br label %54

54:                                               ; preds = %47, %19
  %55 = phi i64 [ %53, %47 ], [ %39, %19 ]
  store i8 0, ptr %2, align 8, !tbaa !23
  %56 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 4
  store i8 0, ptr %56, align 1, !tbaa !24
  %57 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 5
  store i8 0, ptr %57, align 2, !tbaa !27
  %58 = add i64 %55, 6
  store i64 %58, ptr %38, align 8, !tbaa !43
  ret void
}

; Function Attrs: optsize
declare i64 @lzma_bufcpy(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @mf_read(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef %2, i64 noundef %3, ptr nocapture noundef %4) unnamed_addr #7 {
  %6 = load i64, ptr %2, align 8, !tbaa !34
  %7 = sub i64 %3, %6
  %8 = load i64, ptr %4, align 8, !tbaa !34
  %9 = tail call i64 @llvm.umin.i64(i64 %7, i64 %8)
  %10 = getelementptr inbounds i8, ptr %1, i64 %6
  %11 = load ptr, ptr %0, align 8, !tbaa !56
  %12 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 5
  %13 = load i32, ptr %12, align 8, !tbaa !41
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds i8, ptr %11, i64 %14
  %16 = sub i64 0, %8
  %17 = getelementptr inbounds i8, ptr %15, i64 %16
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %10, ptr align 1 %17, i64 %9, i1 false)
  %18 = load i64, ptr %2, align 8, !tbaa !34
  %19 = add i64 %18, %9
  store i64 %19, ptr %2, align 8, !tbaa !34
  %20 = load i64, ptr %4, align 8, !tbaa !34
  %21 = sub i64 %20, %9
  store i64 %21, ptr %4, align 8, !tbaa !34
  ret void
}

; Function Attrs: optsize
declare zeroext i1 @lzma_lzma_lclppb_encode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @lzma_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { nounwind optsize }
attributes #11 = { optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!6, !7, i64 8}
!11 = !{!6, !7, i64 16}
!12 = !{!6, !7, i64 24}
!13 = !{!14, !7, i64 8}
!14 = !{!"lzma_coder_s", !15, i64 0, !7, i64 8, !16, i64 16, !17, i64 128, !17, i64 129, !17, i64 130, !18, i64 136, !18, i64 144, !18, i64 152, !8, i64 160}
!15 = !{!"int", !8, i64 0}
!16 = !{!"", !15, i64 0, !7, i64 8, !15, i64 16, !15, i64 20, !15, i64 24, !15, i64 28, !15, i64 32, !15, i64 36, !15, i64 40, !15, i64 44, !15, i64 48, !15, i64 52, !15, i64 56, !15, i64 60, !15, i64 64, !15, i64 68, !15, i64 72, !15, i64 76, !15, i64 80, !15, i64 84, !15, i64 88, !15, i64 92, !7, i64 96, !7, i64 104}
!17 = !{!"_Bool", !8, i64 0}
!18 = !{!"long", !8, i64 0}
!19 = !{i64 0, i64 4, !20, i64 8, i64 8, !21, i64 16, i64 4, !20, i64 20, i64 4, !20, i64 24, i64 4, !20, i64 28, i64 4, !20, i64 32, i64 4, !20, i64 36, i64 4, !20, i64 40, i64 4, !20, i64 44, i64 4, !20, i64 48, i64 4, !20, i64 52, i64 4, !20, i64 56, i64 4, !20, i64 60, i64 4, !20, i64 64, i64 4, !20, i64 68, i64 4, !20, i64 72, i64 4, !20, i64 76, i64 4, !20, i64 80, i64 4, !20, i64 84, i64 4, !20, i64 88, i64 4, !20, i64 92, i64 4, !20, i64 96, i64 8, !21, i64 104, i64 8, !21}
!20 = !{!15, !15, i64 0}
!21 = !{!7, !7, i64 0}
!22 = !{!14, !15, i64 0}
!23 = !{!14, !17, i64 128}
!24 = !{!14, !17, i64 129}
!25 = !{!14, !7, i64 24}
!26 = !{!14, !15, i64 32}
!27 = !{!14, !17, i64 130}
!28 = !{!29, !18, i64 0}
!29 = !{!"", !18, i64 0, !18, i64 8, !18, i64 16, !18, i64 24, !18, i64 32, !15, i64 40, !15, i64 44, !7, i64 48, !15, i64 56}
!30 = !{!29, !18, i64 8}
!31 = !{!16, !15, i64 0}
!32 = !{i32 0, i32 304}
!33 = !{!8, !8, i64 0}
!34 = !{!18, !18, i64 0}
!35 = !{!14, !18, i64 136}
!36 = !{!37, !15, i64 104}
!37 = !{!"lzma_mf_s", !7, i64 0, !15, i64 8, !15, i64 12, !15, i64 16, !15, i64 20, !15, i64 24, !15, i64 28, !15, i64 32, !15, i64 36, !15, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !15, i64 80, !15, i64 84, !15, i64 88, !15, i64 92, !15, i64 96, !15, i64 100, !15, i64 104, !15, i64 108, !15, i64 112}
!38 = !{i8 0, i8 2}
!39 = !{}
!40 = !{!37, !15, i64 100}
!41 = !{!37, !15, i64 24}
!42 = !{!37, !15, i64 28}
!43 = !{!14, !18, i64 144}
!44 = !{!14, !18, i64 152}
!45 = distinct !{!45, !46}
!46 = !{!"llvm.loop.mustprogress"}
!47 = !{!48, !7, i64 8}
!48 = !{!"", !18, i64 0, !7, i64 8}
!49 = !{!14, !15, i64 36}
!50 = !{!16, !15, i64 20}
!51 = !{!14, !15, i64 40}
!52 = !{!16, !15, i64 24}
!53 = !{!14, !15, i64 44}
!54 = !{!16, !15, i64 28}
!55 = !{!37, !15, i64 36}
!56 = !{!37, !7, i64 0}
