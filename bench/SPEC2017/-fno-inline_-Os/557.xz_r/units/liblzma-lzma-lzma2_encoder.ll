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
define dso_local i32 @lzma_lzma2_encoder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !48 {
  %4 = tail call i32 @lzma_lz_encoder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @lzma2_encoder_init) #10
  ret i32 %4
}

; Function Attrs: optsize
declare i32 @lzma_lz_encoder_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @lzma2_encoder_init(ptr nocapture noundef %0, ptr noundef %1, ptr noundef readonly %2, ptr noundef %3) #0 !prof !48 !PGOFuncName !49 {
  %5 = icmp eq ptr %2, null
  br i1 %5, label %46, label %6, !prof !50

6:                                                ; preds = %4
  %7 = load ptr, ptr %0, align 8, !tbaa !51
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %17, !prof !56

9:                                                ; preds = %6
  %10 = tail call ptr @lzma_alloc(i64 noundef 65704, ptr noundef %1) #10
  store ptr %10, ptr %0, align 8, !tbaa !51
  %11 = icmp eq ptr %10, null
  br i1 %11, label %46, label %12, !prof !50

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.lzma_lz_encoder, ptr %0, i64 0, i32 1
  store ptr @lzma2_encode, ptr %13, align 8, !tbaa !57
  %14 = getelementptr inbounds %struct.lzma_lz_encoder, ptr %0, i64 0, i32 2
  store ptr @lzma2_encoder_end, ptr %14, align 8, !tbaa !58
  %15 = getelementptr inbounds %struct.lzma_lz_encoder, ptr %0, i64 0, i32 3
  store ptr @lzma2_encoder_options_update, ptr %15, align 8, !tbaa !59
  %16 = getelementptr inbounds %struct.lzma_coder_s, ptr %10, i64 0, i32 1
  store ptr null, ptr %16, align 8, !tbaa !60
  br label %17

17:                                               ; preds = %12, %6
  %18 = phi ptr [ %10, %12 ], [ %7, %6 ]
  %19 = getelementptr inbounds %struct.lzma_coder_s, ptr %18, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %19, ptr noundef nonnull align 8 dereferenceable(112) %2, i64 112, i1 false), !tbaa.struct !66
  %20 = load ptr, ptr %0, align 8, !tbaa !51
  store i32 0, ptr %20, align 8, !tbaa !69
  %21 = getelementptr inbounds %struct.lzma_coder_s, ptr %20, i64 0, i32 3
  store i8 1, ptr %21, align 8, !tbaa !70
  %22 = getelementptr inbounds %struct.lzma_coder_s, ptr %20, i64 0, i32 4
  store i8 0, ptr %22, align 1, !tbaa !71
  %23 = getelementptr inbounds %struct.lzma_coder_s, ptr %20, i64 0, i32 2, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !72
  %25 = icmp eq ptr %24, null
  br i1 %25, label %31, label %26, !prof !56

26:                                               ; preds = %17
  %27 = getelementptr inbounds %struct.lzma_coder_s, ptr %20, i64 0, i32 2, i32 2
  %28 = load i32, ptr %27, align 8, !tbaa !73
  %29 = icmp eq i32 %28, 0
  %30 = zext i1 %29 to i8
  br label %31

31:                                               ; preds = %26, %17
  %32 = phi i8 [ 1, %17 ], [ %30, %26 ]
  %33 = getelementptr inbounds %struct.lzma_coder_s, ptr %20, i64 0, i32 5
  store i8 %32, ptr %33, align 2, !tbaa !74
  %34 = getelementptr inbounds %struct.lzma_coder_s, ptr %20, i64 0, i32 1
  %35 = getelementptr inbounds %struct.lzma_coder_s, ptr %20, i64 0, i32 2
  %36 = tail call i32 @lzma_lzma_encoder_create(ptr noundef nonnull %34, ptr noundef %1, ptr noundef nonnull %35, ptr noundef %3) #10
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %31
  %39 = load i64, ptr %3, align 8, !tbaa !75
  %40 = getelementptr inbounds %struct.lzma_lz_options, ptr %3, i64 0, i32 1
  %41 = load i64, ptr %40, align 8, !tbaa !77
  %42 = add i64 %41, %39
  %43 = icmp ult i64 %42, 65536
  br i1 %43, label %44, label %46, !prof !50

44:                                               ; preds = %38
  %45 = sub i64 65536, %41
  store i64 %45, ptr %3, align 8, !tbaa !75
  br label %46

46:                                               ; preds = %31, %38, %44, %9, %4
  %47 = phi i32 [ %36, %31 ], [ 11, %4 ], [ 5, %9 ], [ 0, %44 ], [ 0, %38 ]
  ret i32 %47
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @lzma_lzma2_encoder_memusage(ptr noundef %0) local_unnamed_addr #0 !prof !78 {
  %2 = tail call i64 @lzma_lzma_encoder_memusage(ptr noundef %0) #10
  %3 = icmp eq i64 %2, -1
  %4 = add i64 %2, 65704
  %5 = select i1 %3, i64 -1, i64 %4
  ret i64 %5
}

; Function Attrs: optsize
declare i64 @lzma_lzma_encoder_memusage(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @lzma_lzma2_props_encode(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #2 !prof !48 {
  %3 = load i32, ptr %0, align 8, !tbaa !79
  %4 = icmp ugt i32 %3, 4096
  %5 = add i32 %3, -1
  %6 = select i1 %4, i32 %5, i32 4095, !prof !56
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
  br i1 %17, label %23, label %18, !prof !50

18:                                               ; preds = %2
  %19 = add nuw i32 %16, 1
  %20 = tail call fastcc i32 @get_pos_slot(i32 noundef %19) #11, !range !80
  %21 = trunc i32 %20 to i8
  %22 = add i8 %21, -24
  br label %23

23:                                               ; preds = %2, %18
  %24 = phi i8 [ %22, %18 ], [ 40, %2 ]
  store i8 %24, ptr %1, align 1, !tbaa !81
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @get_pos_slot(i32 noundef %0) unnamed_addr #3 !prof !48 !PGOFuncName !82 {
  %2 = icmp ult i32 %0, 8192
  br i1 %2, label %3, label %8, !prof !50

3:                                                ; preds = %1
  %4 = zext nneg i32 %0 to i64
  %5 = getelementptr inbounds [8192 x i8], ptr @lzma_fastpos, i64 0, i64 %4
  %6 = load i8, ptr %5, align 1, !tbaa !81
  %7 = zext i8 %6 to i32
  br label %24

8:                                                ; preds = %1
  %9 = icmp ult i32 %0, 33554432
  br i1 %9, label %10, label %17, !prof !56

10:                                               ; preds = %8
  %11 = lshr i32 %0, 12
  %12 = zext nneg i32 %11 to i64
  %13 = getelementptr inbounds [8192 x i8], ptr @lzma_fastpos, i64 0, i64 %12
  %14 = load i8, ptr %13, align 1, !tbaa !81
  %15 = zext i8 %14 to i32
  %16 = add nuw nsw i32 %15, 24
  br label %24

17:                                               ; preds = %8
  %18 = lshr i32 %0, 24
  %19 = zext nneg i32 %18 to i64
  %20 = getelementptr inbounds [8192 x i8], ptr @lzma_fastpos, i64 0, i64 %19
  %21 = load i8, ptr %20, align 1, !tbaa !81
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
define internal i32 @lzma2_encode(ptr noundef %0, ptr noalias noundef %1, ptr noalias noundef %2, ptr noalias noundef %3, i64 noundef %4) #0 !prof !83 !PGOFuncName !84 {
  %6 = load i64, ptr %3, align 8, !tbaa !85
  %7 = icmp ult i64 %6, %4
  br i1 %7, label %8, label %101, !prof !86

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 6
  %10 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 7
  %11 = load i32, ptr %0, align 8, !tbaa !69
  br label %12

12:                                               ; preds = %8, %97
  %13 = phi i32 [ %11, %8 ], [ %98, %97 ]
  %14 = phi i64 [ %6, %8 ], [ %99, %97 ]
  switch i32 %13, label %97 [
    i32 0, label %17
    i32 1, label %15
    i32 2, label %77
    i32 3, label %85
    i32 4, label %92
  ], !prof !87

15:                                               ; preds = %12
  %16 = load i64, ptr %9, align 8, !tbaa !88
  br label %41

17:                                               ; preds = %12
  %18 = tail call fastcc i32 @mf_unencoded(ptr noundef %1) #11
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %30, !prof !89

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.lzma_mf_s, ptr %1, i64 0, i32 20
  %22 = load i32, ptr %21, align 8, !tbaa !90
  %23 = icmp eq i32 %22, 3
  br i1 %23, label %24, label %27, !prof !56

24:                                               ; preds = %20
  %25 = add nuw i64 %14, 1
  store i64 %25, ptr %3, align 8, !tbaa !85
  %26 = getelementptr inbounds i8, ptr %2, i64 %14
  store i8 0, ptr %26, align 1, !tbaa !81
  br label %27

27:                                               ; preds = %24, %20
  %28 = icmp ne i32 %22, 0
  %29 = zext i1 %28 to i32
  br label %101

30:                                               ; preds = %17
  %31 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 4
  %32 = load i8, ptr %31, align 1, !tbaa !71, !range !92, !noundef !93
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %40, label %34, !prof !94

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1
  %36 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2
  %37 = load ptr, ptr %35, align 8, !tbaa !60
  %38 = tail call i32 @lzma_lzma_encoder_reset(ptr noundef %37, ptr noundef nonnull %36) #10
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %101

40:                                               ; preds = %34, %30
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  store i32 1, ptr %0, align 8, !tbaa !69
  br label %41

41:                                               ; preds = %15, %40
  %42 = phi i64 [ %16, %15 ], [ 0, %40 ]
  %43 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1
  %44 = getelementptr inbounds %struct.lzma_mf_s, ptr %1, i64 0, i32 19
  %45 = getelementptr inbounds %struct.lzma_mf_s, ptr %1, i64 0, i32 5
  %46 = getelementptr inbounds %struct.lzma_mf_s, ptr %1, i64 0, i32 6
  %47 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 9, i64 6
  %48 = trunc i64 %42 to i32
  %49 = sub i32 2097152, %48
  %50 = load i32, ptr %44, align 4, !tbaa !95
  %51 = icmp ult i32 %49, %50
  %52 = load i32, ptr %45, align 8, !tbaa !96
  %53 = load i32, ptr %46, align 4, !tbaa !97
  %54 = add i32 %49, %52
  %55 = add i32 %50, %53
  %56 = sub i32 %54, %55
  %57 = select i1 %51, i32 0, i32 %56, !prof !98
  %58 = load ptr, ptr %43, align 8, !tbaa !60
  %59 = tail call i32 @lzma_lzma_encode(ptr noundef %58, ptr noundef nonnull %1, ptr noundef nonnull %47, ptr noundef nonnull %10, i64 noundef 65536, i32 noundef %57) #10
  %60 = load i32, ptr %45, align 8, !tbaa !96
  %61 = load i32, ptr %46, align 4, !tbaa !97
  %62 = add i32 %53, %60
  %63 = add i32 %52, %61
  %64 = sub i32 %62, %63
  %65 = zext i32 %64 to i64
  %66 = load i64, ptr %9, align 8, !tbaa !88
  %67 = add i64 %66, %65
  store i64 %67, ptr %9, align 8, !tbaa !88
  %68 = icmp eq i32 %59, 1
  br i1 %68, label %69, label %101, !prof !99

69:                                               ; preds = %41
  %70 = load i64, ptr %10, align 8, !tbaa !100
  %71 = icmp ult i64 %70, %67
  br i1 %71, label %72, label %73, !prof !94

72:                                               ; preds = %69
  tail call fastcc void @lzma2_header_lzma(ptr noundef nonnull %0) #11
  store i32 2, ptr %0, align 8, !tbaa !69
  br label %77

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 4
  %75 = zext i32 %61 to i64
  %76 = add i64 %67, %75
  store i64 %76, ptr %9, align 8, !tbaa !88
  store i32 0, ptr %46, align 4, !tbaa !97
  tail call fastcc void @lzma2_header_uncompressed(ptr noundef nonnull %0) #11
  store i8 1, ptr %74, align 1, !tbaa !71
  br label %95

77:                                               ; preds = %72, %12
  %78 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 9
  %79 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 8
  %80 = load i64, ptr %10, align 8, !tbaa !100
  %81 = tail call i64 @lzma_bufcpy(ptr noundef nonnull %78, ptr noundef nonnull %79, i64 noundef %80, ptr noundef %2, ptr noundef nonnull %3, i64 noundef %4) #10
  %82 = load i64, ptr %79, align 8, !tbaa !101
  %83 = load i64, ptr %10, align 8, !tbaa !100
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %95, label %101, !prof !102

85:                                               ; preds = %12
  %86 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 9
  %87 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 8
  %88 = tail call i64 @lzma_bufcpy(ptr noundef nonnull %86, ptr noundef nonnull %87, i64 noundef 3, ptr noundef %2, ptr noundef nonnull %3, i64 noundef %4) #10
  %89 = load i64, ptr %87, align 8, !tbaa !101
  %90 = icmp eq i64 %89, 3
  br i1 %90, label %91, label %101, !prof !103

91:                                               ; preds = %85
  store i32 4, ptr %0, align 8, !tbaa !69
  br label %92

92:                                               ; preds = %12, %91
  tail call fastcc void @mf_read(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, i64 noundef %4, ptr noundef nonnull %9) #11
  %93 = load i64, ptr %9, align 8, !tbaa !88
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %101, !prof !104

95:                                               ; preds = %92, %77, %73
  %96 = phi i32 [ 3, %73 ], [ 0, %77 ], [ 0, %92 ]
  store i32 %96, ptr %0, align 8, !tbaa !69
  br label %97

97:                                               ; preds = %95, %12
  %98 = phi i32 [ %13, %12 ], [ %96, %95 ]
  %99 = load i64, ptr %3, align 8, !tbaa !85
  %100 = icmp ult i64 %99, %4
  br i1 %100, label %12, label %101, !prof !105, !llvm.loop !106

101:                                              ; preds = %34, %77, %85, %92, %97, %41, %5, %27
  %102 = phi i32 [ %29, %27 ], [ 0, %5 ], [ %38, %34 ], [ 0, %77 ], [ 0, %85 ], [ 0, %92 ], [ 0, %97 ], [ 0, %41 ]
  ret i32 %102
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @lzma2_encoder_end(ptr noundef %0, ptr noundef %1) #0 !prof !48 !PGOFuncName !108 {
  %3 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !60
  tail call void @lzma_free(ptr noundef %4, ptr noundef %1) #10
  tail call void @lzma_free(ptr noundef %0, ptr noundef %1) #10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal noundef i32 @lzma2_encoder_options_update(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #4 !prof !78 !PGOFuncName !109 {
  %3 = getelementptr inbounds %struct.lzma_filter, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !110
  %5 = icmp eq ptr %4, null
  br i1 %5, label %45, label %6

6:                                                ; preds = %2
  %7 = load i32, ptr %0, align 8, !tbaa !69
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %45

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2, i32 3
  %11 = load i32, ptr %10, align 4, !tbaa !112
  %12 = getelementptr inbounds %struct.lzma_options_lzma, ptr %4, i64 0, i32 3
  %13 = load i32, ptr %12, align 4, !tbaa !113
  %14 = icmp eq i32 %11, %13
  br i1 %14, label %15, label %27

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2, i32 4
  %17 = load i32, ptr %16, align 8, !tbaa !114
  %18 = getelementptr inbounds %struct.lzma_options_lzma, ptr %4, i64 0, i32 4
  %19 = load i32, ptr %18, align 8, !tbaa !115
  %20 = icmp eq i32 %17, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2, i32 5
  %23 = load i32, ptr %22, align 4, !tbaa !116
  %24 = getelementptr inbounds %struct.lzma_options_lzma, ptr %4, i64 0, i32 5
  %25 = load i32, ptr %24, align 4, !tbaa !117
  %26 = icmp eq i32 %23, %25
  br i1 %26, label %45, label %27

27:                                               ; preds = %21, %15, %9
  %28 = icmp ugt i32 %13, 4
  br i1 %28, label %45, label %29

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.lzma_options_lzma, ptr %4, i64 0, i32 4
  %31 = load i32, ptr %30, align 8, !tbaa !115
  %32 = icmp ugt i32 %31, 4
  %33 = add nuw nsw i32 %31, %13
  %34 = icmp ugt i32 %33, 4
  %35 = select i1 %32, i1 true, i1 %34
  br i1 %35, label %45, label %36

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.lzma_options_lzma, ptr %4, i64 0, i32 5
  %38 = load i32, ptr %37, align 4, !tbaa !117
  %39 = icmp ugt i32 %38, 4
  br i1 %39, label %45, label %40

40:                                               ; preds = %36
  store i32 %13, ptr %10, align 4, !tbaa !112
  %41 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2, i32 4
  store i32 %31, ptr %41, align 8, !tbaa !114
  %42 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2, i32 5
  store i32 %38, ptr %42, align 4, !tbaa !116
  %43 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3
  store i8 1, ptr %43, align 8, !tbaa !70
  %44 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 4
  store i8 1, ptr %44, align 1, !tbaa !71
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
define internal fastcc i32 @mf_unencoded(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !118 !PGOFuncName !119 {
  %2 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 4, !tbaa !120
  %4 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !96
  %6 = sub i32 %3, %5
  %7 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 6
  %8 = load i32, ptr %7, align 4, !tbaa !97
  %9 = add i32 %6, %8
  ret i32 %9
}

; Function Attrs: optsize
declare i32 @lzma_lzma_encoder_reset(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @lzma_lzma_encode(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @lzma2_header_uncompressed(ptr nocapture noundef %0) unnamed_addr #2 !prof !121 !PGOFuncName !122 {
  %2 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 5
  %3 = load i8, ptr %2, align 2, !tbaa !74, !range !92, !noundef !93
  %4 = icmp eq i8 %3, 0
  %5 = select i1 %4, i8 2, i8 1, !prof !103
  %6 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 9
  store i8 %5, ptr %6, align 8
  store i8 0, ptr %2, align 2, !tbaa !74
  %7 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 6
  %8 = load i64, ptr %7, align 8, !tbaa !88
  %9 = add i64 %8, 65535
  %10 = lshr i64 %9, 8
  %11 = trunc i64 %10 to i8
  %12 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 9, i64 1
  store i8 %11, ptr %12, align 1, !tbaa !81
  %13 = trunc i64 %8 to i8
  %14 = add i8 %13, -1
  %15 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 9, i64 2
  store i8 %14, ptr %15, align 2, !tbaa !81
  %16 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 8
  store i64 0, ptr %16, align 8, !tbaa !101
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @lzma2_header_lzma(ptr noundef %0) unnamed_addr #0 !prof !123 !PGOFuncName !124 {
  %2 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 8, !tbaa !70, !range !92, !noundef !93
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %12, label %5, !prof !125

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 5
  %7 = load i8, ptr %6, align 2, !tbaa !74, !range !92, !noundef !93
  %8 = icmp eq i8 %7, 0
  %9 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 9
  br i1 %8, label %11, label %10, !prof !50

10:                                               ; preds = %5
  store i8 -32, ptr %9, align 1, !tbaa !81
  br label %19

11:                                               ; preds = %5
  store i8 -64, ptr %9, align 1, !tbaa !81
  br label %19

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 4
  %14 = load i8, ptr %13, align 1, !tbaa !71, !range !92, !noundef !93
  %15 = icmp eq i8 %14, 0
  %16 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 9, i64 1
  br i1 %15, label %18, label %17, !prof !126

17:                                               ; preds = %12
  store i8 -96, ptr %16, align 1, !tbaa !81
  br label %19

18:                                               ; preds = %12
  store i8 -128, ptr %16, align 1, !tbaa !81
  br label %19

19:                                               ; preds = %17, %18, %10, %11
  %20 = phi i64 [ 0, %10 ], [ 0, %11 ], [ 1, %17 ], [ 1, %18 ]
  %21 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 8
  store i64 %20, ptr %21, align 8, !tbaa !101
  %22 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 6
  %23 = load i64, ptr %22, align 8, !tbaa !88
  %24 = add i64 %23, -1
  %25 = lshr i64 %24, 16
  %26 = add nuw nsw i64 %20, 1
  %27 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 9, i64 %20
  %28 = load i8, ptr %27, align 1, !tbaa !81
  %29 = trunc i64 %25 to i8
  %30 = add i8 %28, %29
  store i8 %30, ptr %27, align 1, !tbaa !81
  %31 = lshr i64 %24, 8
  %32 = trunc i64 %31 to i8
  %33 = or disjoint i64 %20, 2
  %34 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 9, i64 %26
  store i8 %32, ptr %34, align 1, !tbaa !81
  %35 = trunc i64 %24 to i8
  %36 = add nuw nsw i64 %20, 3
  %37 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 9, i64 %33
  store i8 %35, ptr %37, align 1, !tbaa !81
  %38 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 7
  %39 = load i64, ptr %38, align 8, !tbaa !100
  %40 = add i64 %39, -1
  %41 = lshr i64 %40, 8
  %42 = trunc i64 %41 to i8
  %43 = or disjoint i64 %20, 4
  %44 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 9, i64 %36
  store i8 %42, ptr %44, align 1, !tbaa !81
  %45 = trunc i64 %40 to i8
  %46 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 9, i64 %43
  store i8 %45, ptr %46, align 1, !tbaa !81
  br i1 %4, label %54, label %47, !prof !125

47:                                               ; preds = %19
  %48 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 9
  %49 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2
  %50 = getelementptr i8, ptr %48, i64 %20
  %51 = getelementptr i8, ptr %50, i64 5
  %52 = tail call zeroext i1 @lzma_lzma_lclppb_encode(ptr noundef nonnull %49, ptr noundef %51) #10
  %53 = load i64, ptr %38, align 8, !tbaa !100
  br label %54

54:                                               ; preds = %47, %19
  %55 = phi i64 [ %53, %47 ], [ %39, %19 ]
  store i8 0, ptr %2, align 8, !tbaa !70
  %56 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 4
  store i8 0, ptr %56, align 1, !tbaa !71
  %57 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 5
  store i8 0, ptr %57, align 2, !tbaa !74
  %58 = add i64 %55, 6
  store i64 %58, ptr %38, align 8, !tbaa !100
  ret void
}

; Function Attrs: optsize
declare i64 @lzma_bufcpy(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @mf_read(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef %2, i64 noundef %3, ptr nocapture noundef %4) unnamed_addr #7 !prof !127 !PGOFuncName !128 {
  %6 = load i64, ptr %2, align 8, !tbaa !85
  %7 = sub i64 %3, %6
  %8 = load i64, ptr %4, align 8, !tbaa !85
  %9 = tail call i64 @llvm.umin.i64(i64 %7, i64 %8)
  %10 = getelementptr inbounds i8, ptr %1, i64 %6
  %11 = load ptr, ptr %0, align 8, !tbaa !129
  %12 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 5
  %13 = load i32, ptr %12, align 8, !tbaa !96
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds i8, ptr %11, i64 %14
  %16 = sub i64 0, %8
  %17 = getelementptr inbounds i8, ptr %15, i64 %16
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %10, ptr align 1 %17, i64 %9, i1 false)
  %18 = load i64, ptr %2, align 8, !tbaa !85
  %19 = add i64 %18, %9
  store i64 %19, ptr %2, align 8, !tbaa !85
  %20 = load i64, ptr %4, align 8, !tbaa !85
  %21 = sub i64 %20, %9
  store i64 %21, ptr %4, align 8, !tbaa !85
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

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!47}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 42596457582}
!4 = !{!"MaxCount", i64 3509320374}
!5 = !{!"MaxInternalCount", i64 1880543368}
!6 = !{!"MaxFunctionCount", i64 3509320374}
!7 = !{!"NumCounts", i64 1899}
!8 = !{!"NumFunctions", i64 428}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 3509320374, i32 1}
!14 = !{i32 100000, i64 3323890816, i32 2}
!15 = !{i32 200000, i64 2354835913, i32 3}
!16 = !{i32 300000, i64 1717654358, i32 5}
!17 = !{i32 400000, i64 1697273389, i32 8}
!18 = !{i32 500000, i64 1349259993, i32 11}
!19 = !{i32 600000, i64 759326020, i32 16}
!20 = !{i32 700000, i64 575792475, i32 22}
!21 = !{i32 800000, i64 285720408, i32 36}
!22 = !{i32 900000, i64 154264530, i32 55}
!23 = !{i32 950000, i64 86561411, i32 73}
!24 = !{i32 990000, i64 20049460, i32 113}
!25 = !{i32 999000, i64 3293392, i32 158}
!26 = !{i32 999900, i64 80863, i32 231}
!27 = !{i32 999990, i64 33328, i32 274}
!28 = !{i32 999999, i64 3584, i32 298}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46}
!35 = !{ptr @lzma_lzma2_encoder_init, ptr @lzma_lz_encoder_init, i64 1}
!36 = !{ptr @lzma2_encoder_init, ptr @lzma_lzma_encoder_create, i64 1}
!37 = !{ptr @lzma_lzma2_props_encode, ptr @get_pos_slot, i64 1}
!38 = !{ptr @lzma2_encode, ptr @mf_unencoded, i64 662}
!39 = !{ptr @lzma2_encode, ptr @lzma_lzma_encoder_reset, i64 65}
!40 = !{ptr @lzma2_encode, ptr @lzma_lzma_encode, i64 32432}
!41 = !{ptr @lzma2_encode, ptr @lzma2_header_lzma, i64 595}
!42 = !{ptr @lzma2_encode, ptr @lzma2_header_uncompressed, i64 65}
!43 = !{ptr @lzma2_encode, ptr @lzma_bufcpy, i64 5123}
!44 = !{ptr @lzma2_encode, ptr @mf_read, i64 546}
!45 = !{ptr @lzma2_encoder_end, ptr @lzma_free, i64 2}
!46 = !{ptr @lzma2_header_lzma, ptr @lzma_lzma_lclppb_encode, i64 2}
!47 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!48 = !{!"function_entry_count", i64 1}
!49 = !{!"lzma2_encoder.c:lzma2_encoder_init"}
!50 = !{!"branch_weights", i32 1, i32 2}
!51 = !{!52, !53, i64 0}
!52 = !{!"", !53, i64 0, !53, i64 8, !53, i64 16, !53, i64 24}
!53 = !{!"any pointer", !54, i64 0}
!54 = !{!"omnipotent char", !55, i64 0}
!55 = !{!"Simple C/C++ TBAA"}
!56 = !{!"branch_weights", i32 2, i32 1}
!57 = !{!52, !53, i64 8}
!58 = !{!52, !53, i64 16}
!59 = !{!52, !53, i64 24}
!60 = !{!61, !53, i64 8}
!61 = !{!"lzma_coder_s", !62, i64 0, !53, i64 8, !63, i64 16, !64, i64 128, !64, i64 129, !64, i64 130, !65, i64 136, !65, i64 144, !65, i64 152, !54, i64 160}
!62 = !{!"int", !54, i64 0}
!63 = !{!"", !62, i64 0, !53, i64 8, !62, i64 16, !62, i64 20, !62, i64 24, !62, i64 28, !62, i64 32, !62, i64 36, !62, i64 40, !62, i64 44, !62, i64 48, !62, i64 52, !62, i64 56, !62, i64 60, !62, i64 64, !62, i64 68, !62, i64 72, !62, i64 76, !62, i64 80, !62, i64 84, !62, i64 88, !62, i64 92, !53, i64 96, !53, i64 104}
!64 = !{!"_Bool", !54, i64 0}
!65 = !{!"long", !54, i64 0}
!66 = !{i64 0, i64 4, !67, i64 8, i64 8, !68, i64 16, i64 4, !67, i64 20, i64 4, !67, i64 24, i64 4, !67, i64 28, i64 4, !67, i64 32, i64 4, !67, i64 36, i64 4, !67, i64 40, i64 4, !67, i64 44, i64 4, !67, i64 48, i64 4, !67, i64 52, i64 4, !67, i64 56, i64 4, !67, i64 60, i64 4, !67, i64 64, i64 4, !67, i64 68, i64 4, !67, i64 72, i64 4, !67, i64 76, i64 4, !67, i64 80, i64 4, !67, i64 84, i64 4, !67, i64 88, i64 4, !67, i64 92, i64 4, !67, i64 96, i64 8, !68, i64 104, i64 8, !68}
!67 = !{!62, !62, i64 0}
!68 = !{!53, !53, i64 0}
!69 = !{!61, !62, i64 0}
!70 = !{!61, !64, i64 128}
!71 = !{!61, !64, i64 129}
!72 = !{!61, !53, i64 24}
!73 = !{!61, !62, i64 32}
!74 = !{!61, !64, i64 130}
!75 = !{!76, !65, i64 0}
!76 = !{!"", !65, i64 0, !65, i64 8, !65, i64 16, !65, i64 24, !65, i64 32, !62, i64 40, !62, i64 44, !53, i64 48, !62, i64 56}
!77 = !{!76, !65, i64 8}
!78 = !{!"function_entry_count", i64 0}
!79 = !{!63, !62, i64 0}
!80 = !{i32 0, i32 304}
!81 = !{!54, !54, i64 0}
!82 = !{!"lzma2_encoder.c:get_pos_slot"}
!83 = !{!"function_entry_count", i64 37007}
!84 = !{!"lzma2_encoder.c:lzma2_encode"}
!85 = !{!65, !65, i64 0}
!86 = !{!"branch_weights", i32 127, i32 1}
!87 = !{!"branch_weights", i32 1, i32 667, i32 32026, i32 4498, i32 66, i32 485}
!88 = !{!61, !65, i64 136}
!89 = !{!"branch_weights", i32 2, i32 666}
!90 = !{!91, !62, i64 104}
!91 = !{!"lzma_mf_s", !53, i64 0, !62, i64 8, !62, i64 12, !62, i64 16, !62, i64 20, !62, i64 24, !62, i64 28, !62, i64 32, !62, i64 36, !62, i64 40, !53, i64 48, !53, i64 56, !53, i64 64, !53, i64 72, !62, i64 80, !62, i64 84, !62, i64 88, !62, i64 92, !62, i64 96, !62, i64 100, !62, i64 104, !62, i64 108, !62, i64 112}
!92 = !{i8 0, i8 2}
!93 = !{}
!94 = !{!"branch_weights", i32 601, i32 66}
!95 = !{!91, !62, i64 100}
!96 = !{!91, !62, i64 24}
!97 = !{!91, !62, i64 28}
!98 = !{!"branch_weights", i32 1, i32 32691}
!99 = !{!"branch_weights", i32 666, i32 32026}
!100 = !{!61, !65, i64 144}
!101 = !{!61, !65, i64 152}
!102 = !{!"branch_weights", i32 601, i32 4498}
!103 = !{!"branch_weights", i32 66, i32 1}
!104 = !{!"branch_weights", i32 66, i32 485}
!105 = !{!"branch_weights", i32 4830337, i32 127}
!106 = distinct !{!106, !107}
!107 = !{!"llvm.loop.mustprogress"}
!108 = !{!"lzma2_encoder.c:lzma2_encoder_end"}
!109 = !{!"lzma2_encoder.c:lzma2_encoder_options_update"}
!110 = !{!111, !53, i64 8}
!111 = !{!"", !65, i64 0, !53, i64 8}
!112 = !{!61, !62, i64 36}
!113 = !{!63, !62, i64 20}
!114 = !{!61, !62, i64 40}
!115 = !{!63, !62, i64 24}
!116 = !{!61, !62, i64 44}
!117 = !{!63, !62, i64 28}
!118 = !{!"function_entry_count", i64 666}
!119 = !{!"lzma2_encoder.c:mf_unencoded"}
!120 = !{!91, !62, i64 36}
!121 = !{!"function_entry_count", i64 65}
!122 = !{!"lzma2_encoder.c:lzma2_header_uncompressed"}
!123 = !{!"function_entry_count", i64 600}
!124 = !{!"lzma2_encoder.c:lzma2_header_lzma"}
!125 = !{!"branch_weights", i32 600, i32 2}
!126 = !{!"branch_weights", i32 590, i32 11}
!127 = !{!"function_entry_count", i64 549}
!128 = !{!"lzma2_encoder.c:mf_read"}
!129 = !{!91, !53, i64 0}
