; ModuleID = 'liblzma/lzma/lzma2_decoder.c'
source_filename = "liblzma/lzma/lzma2_decoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lzma_lz_decoder = type { ptr, ptr, ptr, ptr, ptr }
%struct.lzma_coder_s = type { i32, i32, %struct.lzma_lz_decoder, i64, i64, i8, i8, %struct.lzma_options_lzma }
%struct.lzma_options_lzma = type { i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.lzma_dict = type { ptr, i64, i64, i64, i64, i8 }

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @lzma_lzma2_decoder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !46 {
  %4 = tail call i32 @lzma_lz_decoder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @lzma2_decoder_init) #4
  ret i32 %4
}

; Function Attrs: optsize
declare i32 @lzma_lz_decoder_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @lzma2_decoder_init(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 !prof !46 !PGOFuncName !47 {
  %5 = load ptr, ptr %0, align 8, !tbaa !48
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %15, !prof !53

7:                                                ; preds = %4
  %8 = tail call ptr @lzma_alloc(i64 noundef 184, ptr noundef %1) #4
  store ptr %8, ptr %0, align 8, !tbaa !48
  %9 = icmp eq ptr %8, null
  br i1 %9, label %31, label %10, !prof !54

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.lzma_lz_decoder, ptr %0, i64 0, i32 1
  store ptr @lzma2_decode, ptr %11, align 8, !tbaa !55
  %12 = getelementptr inbounds %struct.lzma_lz_decoder, ptr %0, i64 0, i32 4
  store ptr @lzma2_decoder_end, ptr %12, align 8, !tbaa !56
  %13 = getelementptr inbounds %struct.lzma_coder_s, ptr %8, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %13, i8 0, i64 40, i1 false)
  %14 = load ptr, ptr %0, align 8, !tbaa !48
  br label %15

15:                                               ; preds = %10, %4
  %16 = phi ptr [ %14, %10 ], [ %5, %4 ]
  store i32 0, ptr %16, align 8, !tbaa !57
  %17 = getelementptr inbounds %struct.lzma_coder_s, ptr %16, i64 0, i32 5
  store i8 1, ptr %17, align 8, !tbaa !63
  %18 = getelementptr inbounds %struct.lzma_options_lzma, ptr %2, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !64
  %20 = icmp eq ptr %19, null
  br i1 %20, label %26, label %21, !prof !53

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.lzma_options_lzma, ptr %2, i64 0, i32 2
  %23 = load i32, ptr %22, align 8, !tbaa !65
  %24 = icmp eq i32 %23, 0
  %25 = zext i1 %24 to i8
  br label %26

26:                                               ; preds = %21, %15
  %27 = phi i8 [ 1, %15 ], [ %25, %21 ]
  %28 = getelementptr inbounds %struct.lzma_coder_s, ptr %16, i64 0, i32 6
  store i8 %27, ptr %28, align 1, !tbaa !66
  %29 = getelementptr inbounds %struct.lzma_coder_s, ptr %16, i64 0, i32 2
  %30 = tail call i32 @lzma_lzma_decoder_create(ptr noundef nonnull %29, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3) #4
  br label %31

31:                                               ; preds = %7, %26
  %32 = phi i32 [ %30, %26 ], [ 5, %7 ]
  ret i32 %32
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @lzma_lzma2_decoder_memusage(ptr noundef %0) local_unnamed_addr #0 !prof !46 {
  %2 = tail call i64 @lzma_lzma_decoder_memusage_nocheck(ptr noundef %0) #4
  %3 = add i64 %2, 184
  ret i64 %3
}

; Function Attrs: optsize
declare i64 @lzma_lzma_decoder_memusage_nocheck(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @lzma_lzma2_props_decode(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, i64 noundef %3) local_unnamed_addr #0 !prof !46 {
  %5 = icmp eq i64 %3, 1
  br i1 %5, label %6, label %28, !prof !53

6:                                                ; preds = %4
  %7 = load i8, ptr %2, align 1, !tbaa !67
  %8 = icmp ugt i8 %7, 40
  br i1 %8, label %28, label %9, !prof !68

9:                                                ; preds = %6
  %10 = tail call ptr @lzma_alloc(i64 noundef 112, ptr noundef %1) #4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %28, label %12, !prof !54

12:                                               ; preds = %9
  %13 = load i8, ptr %2, align 1, !tbaa !67
  %14 = icmp eq i8 %13, 40
  br i1 %14, label %24, label %15, !prof !54

15:                                               ; preds = %12
  %16 = and i8 %13, 1
  %17 = or disjoint i8 %16, 2
  %18 = zext nneg i8 %17 to i32
  store i32 %18, ptr %10, align 8, !tbaa !69
  %19 = load i8, ptr %2, align 1, !tbaa !67
  %20 = lshr i8 %19, 1
  %21 = add nuw i8 %20, 11
  %22 = zext nneg i8 %21 to i32
  %23 = shl i32 %18, %22
  br label %24

24:                                               ; preds = %12, %15
  %25 = phi i32 [ %23, %15 ], [ -1, %12 ]
  store i32 %25, ptr %10, align 8, !tbaa !69
  %26 = getelementptr inbounds %struct.lzma_options_lzma, ptr %10, i64 0, i32 1
  store ptr null, ptr %26, align 8, !tbaa !64
  %27 = getelementptr inbounds %struct.lzma_options_lzma, ptr %10, i64 0, i32 2
  store i32 0, ptr %27, align 8, !tbaa !65
  store ptr %10, ptr %0, align 8, !tbaa !70
  br label %28

28:                                               ; preds = %24, %9, %6, %4
  %29 = phi i32 [ 8, %4 ], [ 8, %6 ], [ 0, %24 ], [ 5, %9 ]
  ret i32 %29
}

; Function Attrs: optsize
declare ptr @lzma_alloc(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @lzma2_decode(ptr noundef %0, ptr noalias noundef %1, ptr noalias noundef %2, ptr noalias noundef %3, i64 noundef %4) #0 !prof !71 !PGOFuncName !72 {
  %6 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 4
  %7 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 6
  br label %9

9:                                                ; preds = %121, %5
  %10 = load i64, ptr %3, align 8, !tbaa !73
  %11 = icmp ult i64 %10, %4
  %12 = load i32, ptr %0, align 8, !tbaa !57
  br i1 %11, label %15, label %13, !prof !74

13:                                               ; preds = %9
  %14 = icmp eq i32 %12, 6
  br i1 %14, label %106, label %126, !prof !74

15:                                               ; preds = %9
  switch i32 %12, label %126 [
    i32 0, label %16
    i32 1, label %59
    i32 2, label %68
    i32 3, label %80
    i32 4, label %86
    i32 5, label %96
    i32 6, label %106
    i32 7, label %122
  ], !prof !75

16:                                               ; preds = %15
  %17 = getelementptr inbounds i8, ptr %2, i64 %10
  %18 = load i8, ptr %17, align 1, !tbaa !67
  %19 = zext i8 %18 to i64
  %20 = add nuw i64 %10, 1
  store i64 %20, ptr %3, align 8, !tbaa !73
  %21 = icmp eq i8 %18, 0
  br i1 %21, label %126, label %22, !prof !76

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 5
  %24 = icmp ugt i8 %18, -33
  %25 = icmp eq i8 %18, 1
  %26 = or i1 %24, %25
  br i1 %26, label %27, label %28, !prof !77

27:                                               ; preds = %22
  store i8 1, ptr %23, align 8, !tbaa !63
  store i8 1, ptr %8, align 1, !tbaa !66
  br label %31

28:                                               ; preds = %22
  %29 = load i8, ptr %8, align 1, !tbaa !66, !range !78, !noundef !79
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %126, !prof !80

31:                                               ; preds = %28, %27
  %32 = phi i8 [ 0, %28 ], [ 1, %27 ]
  %33 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1
  %34 = icmp slt i8 %18, 0
  br i1 %34, label %35, label %52, !prof !81

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3
  %37 = shl nuw nsw i64 %19, 16
  %38 = and i64 %37, 2031616
  store i64 %38, ptr %36, align 8, !tbaa !82
  store i32 1, ptr %0, align 8, !tbaa !57
  %39 = icmp ugt i8 %18, -65
  br i1 %39, label %40, label %41, !prof !83

40:                                               ; preds = %35
  store i8 0, ptr %23, align 8, !tbaa !63
  store i32 5, ptr %33, align 4, !tbaa !84
  br label %55

41:                                               ; preds = %35
  %42 = load i8, ptr %23, align 8, !tbaa !63, !range !78, !noundef !79
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %126, !prof !85

44:                                               ; preds = %41
  store i32 6, ptr %33, align 4, !tbaa !84
  %45 = icmp ugt i8 %18, -97
  br i1 %45, label %46, label %55, !prof !86

46:                                               ; preds = %44
  %47 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 7
  %48 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !87
  %50 = load ptr, ptr %7, align 8, !tbaa !88
  tail call void %49(ptr noundef %50, ptr noundef nonnull %47) #4
  %51 = load i8, ptr %8, align 1, !tbaa !66, !range !78
  br label %55

52:                                               ; preds = %31
  %53 = icmp ugt i8 %18, 2
  br i1 %53, label %126, label %54, !prof !89

54:                                               ; preds = %52
  store i32 3, ptr %0, align 8, !tbaa !57
  store i32 7, ptr %33, align 4, !tbaa !84
  br label %55

55:                                               ; preds = %40, %44, %46, %54
  %56 = phi i8 [ %32, %40 ], [ %32, %44 ], [ %51, %46 ], [ %32, %54 ]
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %121, label %58, !prof !90

58:                                               ; preds = %55
  store i8 0, ptr %8, align 1, !tbaa !66
  tail call fastcc void @dict_reset(ptr noundef %1) #5
  br label %126

59:                                               ; preds = %15
  %60 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3
  %61 = add nuw i64 %10, 1
  store i64 %61, ptr %3, align 8, !tbaa !73
  %62 = getelementptr inbounds i8, ptr %2, i64 %10
  %63 = load i8, ptr %62, align 1, !tbaa !67
  %64 = zext i8 %63 to i64
  %65 = shl nuw nsw i64 %64, 8
  %66 = load i64, ptr %60, align 8, !tbaa !82
  %67 = add i64 %65, %66
  store i64 %67, ptr %60, align 8, !tbaa !82
  store i32 2, ptr %0, align 8, !tbaa !57
  br label %121

68:                                               ; preds = %15
  %69 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3
  %70 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2, i32 3
  %71 = add nuw i64 %10, 1
  store i64 %71, ptr %3, align 8, !tbaa !73
  %72 = getelementptr inbounds i8, ptr %2, i64 %10
  %73 = load i8, ptr %72, align 1, !tbaa !67
  %74 = zext i8 %73 to i64
  %75 = add nuw nsw i64 %74, 1
  %76 = load i64, ptr %69, align 8, !tbaa !82
  %77 = add i64 %75, %76
  store i64 %77, ptr %69, align 8, !tbaa !82
  store i32 3, ptr %0, align 8, !tbaa !57
  %78 = load ptr, ptr %70, align 8, !tbaa !91
  %79 = load ptr, ptr %7, align 8, !tbaa !88
  tail call void %78(ptr noundef %79, i64 noundef %77) #4
  br label %121

80:                                               ; preds = %15
  %81 = add nuw i64 %10, 1
  store i64 %81, ptr %3, align 8, !tbaa !73
  %82 = getelementptr inbounds i8, ptr %2, i64 %10
  %83 = load i8, ptr %82, align 1, !tbaa !67
  %84 = zext i8 %83 to i64
  %85 = shl nuw nsw i64 %84, 8
  store i64 %85, ptr %6, align 8, !tbaa !92
  store i32 4, ptr %0, align 8, !tbaa !57
  br label %121

86:                                               ; preds = %15
  %87 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1
  %88 = add nuw i64 %10, 1
  store i64 %88, ptr %3, align 8, !tbaa !73
  %89 = getelementptr inbounds i8, ptr %2, i64 %10
  %90 = load i8, ptr %89, align 1, !tbaa !67
  %91 = zext i8 %90 to i64
  %92 = add nuw nsw i64 %91, 1
  %93 = load i64, ptr %6, align 8, !tbaa !92
  %94 = add i64 %92, %93
  store i64 %94, ptr %6, align 8, !tbaa !92
  %95 = load i32, ptr %87, align 4, !tbaa !84
  store i32 %95, ptr %0, align 8, !tbaa !57
  br label %121

96:                                               ; preds = %15
  %97 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 7
  %98 = add nuw i64 %10, 1
  store i64 %98, ptr %3, align 8, !tbaa !73
  %99 = getelementptr inbounds i8, ptr %2, i64 %10
  %100 = load i8, ptr %99, align 1, !tbaa !67
  %101 = tail call zeroext i1 @lzma_lzma_lclppb_decode(ptr noundef nonnull %97, i8 noundef zeroext %100) #4
  br i1 %101, label %126, label %102, !prof !54

102:                                              ; preds = %96
  %103 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2, i32 2
  %104 = load ptr, ptr %103, align 8, !tbaa !87
  %105 = load ptr, ptr %7, align 8, !tbaa !88
  tail call void %104(ptr noundef %105, ptr noundef nonnull %97) #4
  store i32 6, ptr %0, align 8, !tbaa !57
  br label %121

106:                                              ; preds = %13, %15
  %107 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2, i32 1
  %108 = load ptr, ptr %107, align 8, !tbaa !93
  %109 = load ptr, ptr %7, align 8, !tbaa !88
  %110 = tail call i32 %108(ptr noundef %109, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, i64 noundef %4) #4
  %111 = load i64, ptr %3, align 8, !tbaa !73
  %112 = sub i64 %111, %10
  %113 = load i64, ptr %6, align 8, !tbaa !92
  %114 = icmp ugt i64 %112, %113
  br i1 %114, label %126, label %115, !prof !94

115:                                              ; preds = %106
  %116 = sub i64 %113, %112
  store i64 %116, ptr %6, align 8, !tbaa !92
  %117 = icmp eq i32 %110, 1
  br i1 %117, label %118, label %126, !prof !95

118:                                              ; preds = %115
  %119 = icmp eq i64 %113, %112
  br i1 %119, label %120, label %126, !prof !96

120:                                              ; preds = %118
  store i32 0, ptr %0, align 8, !tbaa !57
  br label %121

121:                                              ; preds = %120, %55, %125, %102, %86, %80, %68, %59
  br label %9, !llvm.loop !97

122:                                              ; preds = %15
  tail call fastcc void @dict_write(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, i64 noundef %4, ptr noundef nonnull %6) #5
  %123 = load i64, ptr %6, align 8, !tbaa !92
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %125, label %126, !prof !99

125:                                              ; preds = %122
  store i32 0, ptr %0, align 8, !tbaa !57
  br label %121

126:                                              ; preds = %118, %115, %106, %52, %41, %28, %16, %13, %15, %122, %96, %58
  %127 = phi i32 [ 0, %58 ], [ 9, %106 ], [ %110, %115 ], [ 9, %118 ], [ 1, %16 ], [ 9, %28 ], [ 9, %41 ], [ 9, %52 ], [ 0, %13 ], [ 11, %15 ], [ 0, %122 ], [ 9, %96 ]
  ret i32 %127
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @lzma2_decoder_end(ptr noundef %0, ptr noundef %1) #0 !prof !46 !PGOFuncName !100 {
  %3 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !88
  tail call void @lzma_free(ptr noundef %4, ptr noundef %1) #4
  tail call void @lzma_free(ptr noundef %0, ptr noundef %1) #4
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: optsize
declare i32 @lzma_lzma_decoder_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @dict_reset(ptr nocapture noundef writeonly %0) unnamed_addr #3 !prof !46 !PGOFuncName !101 {
  %2 = getelementptr inbounds %struct.lzma_dict, ptr %0, i64 0, i32 5
  store i8 1, ptr %2, align 8, !tbaa !102
  ret void
}

; Function Attrs: optsize
declare zeroext i1 @lzma_lzma_lclppb_decode(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dict_write(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef %2, i64 noundef %3, ptr noalias nocapture noundef %4) unnamed_addr #0 !prof !104 !PGOFuncName !105 {
  %6 = load i64, ptr %2, align 8, !tbaa !73
  %7 = sub i64 %3, %6
  %8 = load i64, ptr %4, align 8, !tbaa !73
  %9 = icmp ugt i64 %7, %8
  %10 = add i64 %8, %6
  %11 = select i1 %9, i64 %10, i64 %3, !prof !106
  %12 = load ptr, ptr %0, align 8, !tbaa !107
  %13 = getelementptr inbounds %struct.lzma_dict, ptr %0, i64 0, i32 1
  %14 = getelementptr inbounds %struct.lzma_dict, ptr %0, i64 0, i32 3
  %15 = load i64, ptr %14, align 8, !tbaa !108
  %16 = tail call i64 @lzma_bufcpy(ptr noundef %1, ptr noundef nonnull %2, i64 noundef %11, ptr noundef %12, ptr noundef nonnull %13, i64 noundef %15) #4
  %17 = sub i64 %8, %16
  store i64 %17, ptr %4, align 8, !tbaa !73
  %18 = load i64, ptr %13, align 8, !tbaa !109
  %19 = getelementptr inbounds %struct.lzma_dict, ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !110
  %21 = icmp ugt i64 %18, %20
  br i1 %21, label %22, label %23, !prof !111

22:                                               ; preds = %5
  store i64 %18, ptr %19, align 8, !tbaa !110
  br label %23

23:                                               ; preds = %22, %5
  ret void
}

; Function Attrs: optsize
declare i64 @lzma_bufcpy(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @lzma_free(ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind optsize }
attributes #5 = { optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!45}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44}
!35 = !{ptr @lzma_lzma2_decoder_init, ptr @lzma_lz_decoder_init, i64 2}
!36 = !{ptr @lzma2_decoder_init, ptr @lzma_alloc, i64 2}
!37 = !{ptr @lzma2_decoder_init, ptr @lzma_lzma_decoder_create, i64 2}
!38 = !{ptr @lzma_lzma2_decoder_memusage, ptr @lzma_lzma_decoder_memusage_nocheck, i64 2}
!39 = !{ptr @lzma_lzma2_props_decode, ptr @lzma_alloc, i64 1}
!40 = !{ptr @lzma2_decode, ptr @dict_reset, i64 3}
!41 = !{ptr @lzma2_decode, ptr @lzma_lzma_lclppb_decode, i64 3}
!42 = !{ptr @lzma2_decode, ptr @dict_write, i64 1240}
!43 = !{ptr @lzma2_decoder_end, ptr @lzma_free, i64 4}
!44 = !{ptr @dict_write, ptr @lzma_bufcpy, i64 1239}
!45 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!46 = !{!"function_entry_count", i64 2}
!47 = !{!"lzma2_decoder.c:lzma2_decoder_init"}
!48 = !{!49, !50, i64 0}
!49 = !{!"", !50, i64 0, !50, i64 8, !50, i64 16, !50, i64 24, !50, i64 32}
!50 = !{!"any pointer", !51, i64 0}
!51 = !{!"omnipotent char", !52, i64 0}
!52 = !{!"Simple C/C++ TBAA"}
!53 = !{!"branch_weights", i32 3, i32 1}
!54 = !{!"branch_weights", i32 1, i32 3}
!55 = !{!49, !50, i64 8}
!56 = !{!49, !50, i64 32}
!57 = !{!58, !59, i64 0}
!58 = !{!"lzma_coder_s", !59, i64 0, !59, i64 4, !49, i64 8, !60, i64 48, !60, i64 56, !61, i64 64, !61, i64 65, !62, i64 72}
!59 = !{!"int", !51, i64 0}
!60 = !{!"long", !51, i64 0}
!61 = !{!"_Bool", !51, i64 0}
!62 = !{!"", !59, i64 0, !50, i64 8, !59, i64 16, !59, i64 20, !59, i64 24, !59, i64 28, !59, i64 32, !59, i64 36, !59, i64 40, !59, i64 44, !59, i64 48, !59, i64 52, !59, i64 56, !59, i64 60, !59, i64 64, !59, i64 68, !59, i64 72, !59, i64 76, !59, i64 80, !59, i64 84, !59, i64 88, !59, i64 92, !50, i64 96, !50, i64 104}
!63 = !{!58, !61, i64 64}
!64 = !{!62, !50, i64 8}
!65 = !{!62, !59, i64 16}
!66 = !{!58, !61, i64 65}
!67 = !{!51, !51, i64 0}
!68 = !{!"branch_weights", i32 7, i32 9}
!69 = !{!62, !59, i64 0}
!70 = !{!50, !50, i64 0}
!71 = !{!"function_entry_count", i64 44549}
!72 = !{!"lzma2_decoder.c:lzma2_decode"}
!73 = !{!60, !60, i64 0}
!74 = !{!"branch_weights", i32 49194, i32 1}
!75 = !{!"branch_weights", i32 43646, i32 35048665, i32 31556892, i32 31556892, i32 34961370, i32 34961370, i32 130941, i32 1925101400, i32 54122472}
!76 = !{!"branch_weights", i32 3, i32 801}
!77 = !{!"branch_weights", i32 3199, i32 638401}
!78 = !{i8 0, i8 2}
!79 = !{}
!80 = !{!"branch_weights", i32 799, i32 1}
!81 = !{!"branch_weights", i32 723, i32 79}
!82 = !{!58, !60, i64 48}
!83 = !{!"branch_weights", i32 3, i32 721}
!84 = !{!58, !59, i64 4}
!85 = !{!"branch_weights", i32 721, i32 1}
!86 = !{!"branch_weights", i32 13, i32 709}
!87 = !{!58, !50, i64 24}
!88 = !{!58, !50, i64 8}
!89 = !{!"branch_weights", i32 1, i32 79}
!90 = !{!"branch_weights", i32 799, i32 3}
!91 = !{!58, !50, i64 32}
!92 = !{!58, !60, i64 56}
!93 = !{!58, !50, i64 16}
!94 = !{!"branch_weights", i32 1, i32 44107}
!95 = !{!"branch_weights", i32 723, i32 43385}
!96 = !{!"branch_weights", i32 723, i32 1}
!97 = distinct !{!97, !98}
!98 = !{!"llvm.loop.mustprogress"}
!99 = !{!"branch_weights", i32 79, i32 1162}
!100 = !{!"lzma2_decoder.c:lzma2_decoder_end"}
!101 = !{!"lzma2_decoder.c:dict_reset"}
!102 = !{!103, !61, i64 40}
!103 = !{!"", !50, i64 0, !60, i64 8, !60, i64 16, !60, i64 24, !60, i64 32, !61, i64 40}
!104 = !{!"function_entry_count", i64 1239}
!105 = !{!"lzma2_decoder.c:dict_write"}
!106 = !{!"branch_weights", i32 127, i32 1114}
!107 = !{!103, !50, i64 0}
!108 = !{!103, !60, i64 24}
!109 = !{!103, !60, i64 8}
!110 = !{!103, !60, i64 16}
!111 = !{!"branch_weights", i32 415, i32 826}
