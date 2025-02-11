; ModuleID = 'df-byte-scan.c'
source_filename = "df-byte-scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.df_base_ref = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.df_extract_ref = type { %struct.df_regular_ref, i32, i32, i32 }
%struct.df_regular_ref = type { %struct.df_base_ref, ptr }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }

@mode_size = external local_unnamed_addr global [87 x i8], align 16
@.str = private unnamed_addr constant [15 x i8] c"df-byte-scan.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@dump_file = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [43 x i8] c"    cpb extract regno=%d start=%d last=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"    cpb strict low part regno=%d start=%d last=%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"    cpb subreg regno=%d start=%d last=%d\0A\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @df_compute_accessed_bytes(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = tail call zeroext i8 @dbg_cnt(i32 noundef 9) #6
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %34, label %7

7:                                                ; preds = %4
  %8 = load i32, ptr %0, align 8
  %9 = and i32 %8, 65280
  %10 = icmp eq i32 %9, 0
  %11 = and i32 %8, 2097152
  %12 = icmp eq i32 %11, 0
  %13 = or i1 %10, %12
  br i1 %13, label %17, label %14

14:                                               ; preds = %7
  %15 = icmp sgt i32 %8, -1
  br i1 %15, label %16, label %34

16:                                               ; preds = %14
  store i32 0, ptr %2, align 4, !tbaa !6
  store i32 0, ptr %3, align 4, !tbaa !6
  br label %34

17:                                               ; preds = %7
  %18 = and i32 %8, 50331648
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %17
  %21 = tail call fastcc zeroext i8 @df_compute_accessed_bytes_extract(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #7, !range !10
  br label %34

22:                                               ; preds = %17
  %23 = and i32 %8, 67108864
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  tail call fastcc void @df_compute_accessed_bytes_strict_low_part(ptr noundef nonnull %0, ptr noundef %2, ptr noundef %3) #7
  br label %34

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !11
  %29 = load i32, ptr %28, align 8
  %30 = and i32 %29, 65535
  %31 = icmp eq i32 %30, 39
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = tail call fastcc zeroext i8 @df_compute_accessed_bytes_subreg(ptr noundef nonnull %0, ptr noundef %2, ptr noundef %3) #7, !range !10
  br label %34

34:                                               ; preds = %26, %14, %4, %32, %25, %20, %16
  %35 = phi i8 [ %21, %20 ], [ 0, %25 ], [ %33, %32 ], [ 0, %16 ], [ 1, %4 ], [ 1, %14 ], [ 1, %26 ]
  ret i8 %35
}

; Function Attrs: optsize
declare zeroext i8 @dbg_cnt(i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @df_compute_accessed_bytes_extract(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !11
  %7 = getelementptr inbounds %struct.df_extract_ref, ptr %0, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !11
  %9 = getelementptr inbounds %struct.df_extract_ref, ptr %0, i64 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !11
  %11 = icmp eq i32 %10, -1
  %12 = icmp eq i32 %8, -1
  %13 = select i1 %11, i1 true, i1 %12
  br i1 %13, label %81, label %14

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.df_extract_ref, ptr %0, i64 0, i32 3
  %16 = load i32, ptr %15, align 8, !tbaa !11
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %17
  %19 = load i8, ptr %18, align 1, !tbaa !11
  %20 = icmp ult i8 %19, 5
  br i1 %20, label %22, label %21

21:                                               ; preds = %14
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 79, ptr noundef nonnull @.str.1) #6
  br label %22

22:                                               ; preds = %14, %21
  %23 = load i32, ptr %6, align 8
  %24 = and i32 %23, 65535
  %25 = icmp eq i32 %24, 39
  br i1 %25, label %26, label %45

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !11
  %29 = load i32, ptr %28, align 8
  %30 = lshr i32 %29, 16
  %31 = and i32 %30, 255
  %32 = zext nneg i32 %31 to i64
  %33 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %32
  %34 = load i8, ptr %33, align 1, !tbaa !11
  %35 = icmp ugt i8 %19, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %26
  %37 = tail call i32 @subreg_lowpart_offset(i32 noundef %31, i32 noundef %16) #6
  %38 = shl i32 %37, 3
  %39 = sub i32 %8, %38
  br label %51

40:                                               ; preds = %26
  %41 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 1
  %42 = load i32, ptr %41, align 8, !tbaa !11
  %43 = shl i32 %42, 3
  %44 = add i32 %43, %8
  br label %51

45:                                               ; preds = %22
  %46 = lshr i32 %23, 16
  %47 = and i32 %46, 255
  %48 = zext nneg i32 %47 to i64
  %49 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %48
  %50 = load i8, ptr %49, align 1, !tbaa !11
  br label %51

51:                                               ; preds = %36, %40, %45
  %52 = phi i8 [ %34, %36 ], [ %34, %40 ], [ %50, %45 ]
  %53 = phi i32 [ %39, %36 ], [ %44, %40 ], [ %8, %45 ]
  %54 = zext i8 %52 to i32
  %55 = icmp eq i32 %1, 1
  br i1 %55, label %56, label %64

56:                                               ; preds = %51
  %57 = add nsw i32 %53, 7
  %58 = sdiv i32 %57, 8
  %59 = add nsw i32 %53, %10
  %60 = sdiv i32 %59, 8
  %61 = icmp slt i32 %58, %60
  %62 = select i1 %61, i32 %60, i32 0
  %63 = select i1 %61, i32 %58, i32 0
  br label %69

64:                                               ; preds = %51
  %65 = sdiv i32 %53, 8
  %66 = add i32 %10, 7
  %67 = add i32 %66, %53
  %68 = sdiv i32 %67, 8
  br label %69

69:                                               ; preds = %56, %64
  %70 = phi i32 [ %68, %64 ], [ %62, %56 ]
  %71 = phi i32 [ %65, %64 ], [ %63, %56 ]
  %72 = tail call i32 @llvm.smax.i32(i32 %71, i32 0)
  %73 = tail call i32 @llvm.smin.i32(i32 %70, i32 %54)
  %74 = load ptr, ptr @dump_file, align 8, !tbaa !12
  %75 = icmp eq ptr %74, null
  br i1 %75, label %80, label %76

76:                                               ; preds = %69
  %77 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 6
  %78 = load i32, ptr %77, align 8, !tbaa !11
  %79 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %74, ptr noundef nonnull @.str.2, i32 noundef %78, i32 noundef %72, i32 noundef %73) #7
  br label %80

80:                                               ; preds = %76, %69
  store i32 %72, ptr %2, align 4, !tbaa !6
  store i32 %73, ptr %3, align 4, !tbaa !6
  br label %81

81:                                               ; preds = %4, %80
  %82 = phi i8 [ 0, %80 ], [ 1, %4 ]
  ret i8 %82
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_compute_accessed_bytes_strict_low_part(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !11
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 65535
  %8 = icmp eq i32 %7, 37
  br i1 %8, label %9, label %20

9:                                                ; preds = %3
  %10 = load i32, ptr %0, align 8
  %11 = and i32 %10, 255
  %12 = icmp eq i32 %11, 2
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = icmp eq i32 %11, 3
  tail call void @llvm.assume(i1 %14)
  br label %15

15:                                               ; preds = %13, %9
  %16 = getelementptr inbounds %struct.df_regular_ref, ptr %0, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !11
  %18 = load ptr, ptr %17, align 8, !tbaa !12
  %19 = load i32, ptr %18, align 8
  br label %20

20:                                               ; preds = %15, %3
  %21 = phi i32 [ %19, %15 ], [ %6, %3 ]
  %22 = phi ptr [ %18, %15 ], [ %5, %3 ]
  %23 = lshr i32 %21, 16
  %24 = and i32 %23, 255
  %25 = zext nneg i32 %24 to i64
  %26 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %25
  %27 = load i8, ptr %26, align 1, !tbaa !11
  %28 = zext i8 %27 to i32
  %29 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !11
  %31 = load i32, ptr %30, align 8
  %32 = lshr i32 %31, 16
  %33 = and i32 %32, 255
  %34 = zext nneg i32 %33 to i64
  %35 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %34
  %36 = load i8, ptr %35, align 1, !tbaa !11
  %37 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1, i32 0, i32 0, i64 1
  %38 = load i32, ptr %37, align 8, !tbaa !11
  %39 = icmp ugt i8 %27, %36
  br i1 %39, label %40, label %41

40:                                               ; preds = %20
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 177, ptr noundef nonnull @.str.1) #6
  br label %41

41:                                               ; preds = %20, %40
  %42 = add nsw i32 %38, %28
  %43 = load ptr, ptr @dump_file, align 8, !tbaa !12
  %44 = icmp eq ptr %43, null
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 6
  %47 = load i32, ptr %46, align 8, !tbaa !11
  %48 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %43, ptr noundef nonnull @.str.3, i32 noundef %47, i32 noundef %38, i32 noundef %42) #7
  br label %49

49:                                               ; preds = %45, %41
  store i32 %38, ptr %1, align 4, !tbaa !6
  store i32 %42, ptr %2, align 4, !tbaa !6
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @df_compute_accessed_bytes_subreg(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !11
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 65535
  %8 = icmp eq i32 %7, 37
  br i1 %8, label %9, label %20

9:                                                ; preds = %3
  %10 = load i32, ptr %0, align 8
  %11 = and i32 %10, 255
  %12 = icmp eq i32 %11, 2
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = icmp eq i32 %11, 3
  tail call void @llvm.assume(i1 %14)
  br label %15

15:                                               ; preds = %13, %9
  %16 = getelementptr inbounds %struct.df_regular_ref, ptr %0, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !11
  %18 = load ptr, ptr %17, align 8, !tbaa !12
  %19 = load i32, ptr %18, align 8
  br label %20

20:                                               ; preds = %15, %3
  %21 = phi i32 [ %19, %15 ], [ %6, %3 ]
  %22 = phi ptr [ %18, %15 ], [ %5, %3 ]
  %23 = lshr i32 %21, 16
  %24 = and i32 %23, 255
  %25 = zext nneg i32 %24 to i64
  %26 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %25
  %27 = load i8, ptr %26, align 1, !tbaa !11
  %28 = zext i8 %27 to i32
  %29 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !11
  %31 = load i32, ptr %30, align 8
  %32 = lshr i32 %31, 16
  %33 = and i32 %32, 255
  %34 = zext nneg i32 %33 to i64
  %35 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %34
  %36 = load i8, ptr %35, align 1, !tbaa !11
  %37 = icmp ult i8 %27, %36
  br i1 %37, label %38, label %65

38:                                               ; preds = %20
  %39 = load i32, ptr %0, align 8
  %40 = and i32 %39, 65280
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %38
  %43 = icmp ugt i8 %36, 4
  br i1 %43, label %44, label %65

44:                                               ; preds = %42
  %45 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1, i32 0, i32 0, i64 1
  %46 = load i32, ptr %45, align 8, !tbaa !11
  %47 = and i32 %46, -4
  %48 = add nuw nsw i32 %28, 3
  %49 = add i32 %48, %46
  %50 = and i32 %49, -4
  br label %55

51:                                               ; preds = %38
  %52 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1, i32 0, i32 0, i64 1
  %53 = load i32, ptr %52, align 8, !tbaa !11
  %54 = add nsw i32 %53, %28
  br label %55

55:                                               ; preds = %51, %44
  %56 = phi i32 [ %50, %44 ], [ %54, %51 ]
  %57 = phi i32 [ %47, %44 ], [ %53, %51 ]
  %58 = load ptr, ptr @dump_file, align 8, !tbaa !12
  %59 = icmp eq ptr %58, null
  br i1 %59, label %64, label %60

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 6
  %62 = load i32, ptr %61, align 8, !tbaa !11
  %63 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %58, ptr noundef nonnull @.str.4, i32 noundef %62, i32 noundef %57, i32 noundef %56) #7
  br label %64

64:                                               ; preds = %60, %55
  store i32 %57, ptr %1, align 4, !tbaa !6
  store i32 %56, ptr %2, align 4, !tbaa !6
  br label %65

65:                                               ; preds = %42, %20, %64
  %66 = phi i8 [ 0, %64 ], [ 1, %20 ], [ 1, %42 ]
  ret i8 %66
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @subreg_lowpart_offset(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{i8 0, i8 2}
!11 = !{!8, !8, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"any pointer", !8, i64 0}
