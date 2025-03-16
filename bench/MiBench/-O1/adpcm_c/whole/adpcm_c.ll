; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.adpcm_state = type { i16, i8 }

@stepsizeTable = internal unnamed_addr constant [89 x i32] [i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 16, i32 17, i32 19, i32 21, i32 23, i32 25, i32 28, i32 31, i32 34, i32 37, i32 41, i32 45, i32 50, i32 55, i32 60, i32 66, i32 73, i32 80, i32 88, i32 97, i32 107, i32 118, i32 130, i32 143, i32 157, i32 173, i32 190, i32 209, i32 230, i32 253, i32 279, i32 307, i32 337, i32 371, i32 408, i32 449, i32 494, i32 544, i32 598, i32 658, i32 724, i32 796, i32 876, i32 963, i32 1060, i32 1166, i32 1282, i32 1411, i32 1552, i32 1707, i32 1878, i32 2066, i32 2272, i32 2499, i32 2749, i32 3024, i32 3327, i32 3660, i32 4026, i32 4428, i32 4871, i32 5358, i32 5894, i32 6484, i32 7132, i32 7845, i32 8630, i32 9493, i32 10442, i32 11487, i32 12635, i32 13899, i32 15289, i32 16818, i32 18500, i32 20350, i32 22385, i32 24623, i32 27086, i32 29794, i32 32767], align 16
@indexTable = internal unnamed_addr constant [16 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 2, i32 4, i32 6, i32 8, i32 -1, i32 -1, i32 -1, i32 -1, i32 2, i32 4, i32 6, i32 8], align 16
@.str = private unnamed_addr constant [15 x i8] c"CT_REPEAT_MAIN\00", align 1
@state = dso_local global %struct.adpcm_state zeroinitializer, align 4
@sbuf = dso_local global [1000 x i16] zeroinitializer, align 16
@.str.1 = private unnamed_addr constant [11 x i8] c"input file\00", align 1
@abuf = dso_local global [500 x i8] zeroinitializer, align 16

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @adpcm_coder(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2, ptr nocapture noundef %3) local_unnamed_addr #0 {
  %5 = load i16, ptr %3, align 2, !tbaa !7
  %6 = getelementptr inbounds %struct.adpcm_state, ptr %3, i64 0, i32 1
  %7 = load i8, ptr %6, align 2, !tbaa !12
  %8 = icmp sgt i32 %2, 0
  br i1 %8, label %9, label %87

9:                                                ; preds = %4
  %10 = sext i8 %7 to i32
  %11 = sext i16 %5 to i32
  %12 = sext i8 %7 to i64
  %13 = getelementptr inbounds [89 x i32], ptr @stepsizeTable, i64 0, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !13
  br label %15

15:                                               ; preds = %76, %9
  %16 = phi i32 [ %79, %76 ], [ 1, %9 ]
  %17 = phi i32 [ %78, %76 ], [ 0, %9 ]
  %18 = phi i32 [ %64, %76 ], [ %10, %9 ]
  %19 = phi i32 [ %56, %76 ], [ %11, %9 ]
  %20 = phi i32 [ %67, %76 ], [ %14, %9 ]
  %21 = phi i32 [ %80, %76 ], [ %2, %9 ]
  %22 = phi ptr [ %24, %76 ], [ %0, %9 ]
  %23 = phi ptr [ %77, %76 ], [ %1, %9 ]
  %24 = getelementptr inbounds i16, ptr %22, i64 1
  %25 = load i16, ptr %22, align 2, !tbaa !15
  %26 = sext i16 %25 to i32
  %27 = sub nsw i32 %26, %19
  %28 = icmp slt i32 %27, 0
  %29 = lshr i32 %27, 28
  %30 = and i32 %29, 8
  %31 = tail call i32 @llvm.abs.i32(i32 %27, i1 true)
  %32 = ashr i32 %20, 3
  %33 = icmp slt i32 %31, %20
  %34 = select i1 %33, i32 0, i32 4
  %35 = select i1 %33, i32 0, i32 %20
  %36 = sub nsw i32 %31, %35
  %37 = select i1 %33, i32 0, i32 %20
  %38 = add nsw i32 %37, %32
  %39 = ashr i32 %20, 1
  %40 = icmp slt i32 %36, %39
  %41 = or disjoint i32 %34, 2
  %42 = select i1 %40, i32 %34, i32 %41
  %43 = select i1 %40, i32 0, i32 %39
  %44 = sub nsw i32 %36, %43
  %45 = select i1 %40, i32 0, i32 %39
  %46 = add nsw i32 %38, %45
  %47 = ashr i32 %20, 2
  %48 = icmp sge i32 %44, %47
  %49 = zext i1 %48 to i32
  %50 = select i1 %48, i32 %47, i32 0
  %51 = add nsw i32 %46, %50
  %52 = sub i32 0, %51
  %53 = select i1 %28, i32 %52, i32 %51
  %54 = add i32 %53, %19
  %55 = tail call i32 @llvm.smax.i32(i32 %54, i32 -32768)
  %56 = tail call i32 @llvm.smin.i32(i32 %55, i32 32767)
  %57 = or disjoint i32 %42, %30
  %58 = or disjoint i32 %57, %49
  %59 = zext nneg i32 %58 to i64
  %60 = getelementptr inbounds [16 x i32], ptr @indexTable, i64 0, i64 %59
  %61 = load i32, ptr %60, align 4, !tbaa !13
  %62 = add nsw i32 %61, %18
  %63 = tail call i32 @llvm.smax.i32(i32 %62, i32 0)
  %64 = tail call i32 @llvm.umin.i32(i32 %63, i32 88)
  %65 = zext nneg i32 %64 to i64
  %66 = getelementptr inbounds [89 x i32], ptr @stepsizeTable, i64 0, i64 %65
  %67 = load i32, ptr %66, align 4, !tbaa !13
  %68 = icmp eq i32 %16, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %15
  %70 = shl nuw nsw i32 %58, 4
  %71 = and i32 %70, 240
  br label %76

72:                                               ; preds = %15
  %73 = or i32 %58, %17
  %74 = trunc i32 %73 to i8
  %75 = getelementptr inbounds i8, ptr %23, i64 1
  store i8 %74, ptr %23, align 1, !tbaa !16
  br label %76

76:                                               ; preds = %72, %69
  %77 = phi ptr [ %23, %69 ], [ %75, %72 ]
  %78 = phi i32 [ %71, %69 ], [ %17, %72 ]
  %79 = xor i32 %16, 1
  %80 = add nsw i32 %21, -1
  %81 = icmp sgt i32 %21, 1
  br i1 %81, label %15, label %82, !llvm.loop !17

82:                                               ; preds = %76
  %83 = icmp eq i32 %79, 0
  %84 = trunc i32 %78 to i8
  %85 = trunc i32 %56 to i16
  %86 = trunc i32 %64 to i8
  br label %87

87:                                               ; preds = %82, %4
  %88 = phi ptr [ %1, %4 ], [ %77, %82 ]
  %89 = phi i16 [ %5, %4 ], [ %85, %82 ]
  %90 = phi i8 [ %7, %4 ], [ %86, %82 ]
  %91 = phi i8 [ 0, %4 ], [ %84, %82 ]
  %92 = phi i1 [ false, %4 ], [ %83, %82 ]
  br i1 %92, label %93, label %94

93:                                               ; preds = %87
  store i8 %91, ptr %88, align 1, !tbaa !16
  br label %94

94:                                               ; preds = %93, %87
  store i16 %89, ptr %3, align 2, !tbaa !7
  store i8 %90, ptr %6, align 2, !tbaa !12
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @adpcm_decoder(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2, ptr nocapture noundef %3) local_unnamed_addr #0 {
  %5 = load i16, ptr %3, align 2, !tbaa !7
  %6 = getelementptr inbounds %struct.adpcm_state, ptr %3, i64 0, i32 1
  %7 = load i8, ptr %6, align 2, !tbaa !12
  %8 = icmp sgt i32 %2, 0
  br i1 %8, label %9, label %74

9:                                                ; preds = %4
  %10 = sext i8 %7 to i32
  %11 = sext i16 %5 to i32
  %12 = sext i8 %7 to i64
  %13 = getelementptr inbounds [89 x i32], ptr @stepsizeTable, i64 0, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !13
  br label %15

15:                                               ; preds = %30, %9
  %16 = phi i32 [ %35, %30 ], [ 0, %9 ]
  %17 = phi i32 [ %33, %30 ], [ 0, %9 ]
  %18 = phi i32 [ %41, %30 ], [ %10, %9 ]
  %19 = phi i32 [ %63, %30 ], [ %11, %9 ]
  %20 = phi i32 [ %66, %30 ], [ %14, %9 ]
  %21 = phi i32 [ %69, %30 ], [ %2, %9 ]
  %22 = phi ptr [ %68, %30 ], [ %1, %9 ]
  %23 = phi ptr [ %31, %30 ], [ %0, %9 ]
  %24 = icmp eq i32 %16, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %15
  %26 = getelementptr inbounds i8, ptr %23, i64 1
  %27 = load i8, ptr %23, align 1, !tbaa !16
  %28 = zext i8 %27 to i32
  %29 = lshr i32 %28, 4
  br label %30

30:                                               ; preds = %25, %15
  %31 = phi ptr [ %26, %25 ], [ %23, %15 ]
  %32 = phi i32 [ %29, %25 ], [ %17, %15 ]
  %33 = phi i32 [ %28, %25 ], [ %17, %15 ]
  %34 = and i32 %32, 15
  %35 = xor i32 %16, 1
  %36 = zext nneg i32 %34 to i64
  %37 = getelementptr inbounds [16 x i32], ptr @indexTable, i64 0, i64 %36
  %38 = load i32, ptr %37, align 4, !tbaa !13
  %39 = add nsw i32 %38, %18
  %40 = tail call i32 @llvm.smax.i32(i32 %39, i32 0)
  %41 = tail call i32 @llvm.umin.i32(i32 %40, i32 88)
  %42 = and i32 %32, 8
  %43 = ashr i32 %20, 3
  %44 = and i32 %32, 4
  %45 = icmp eq i32 %44, 0
  %46 = select i1 %45, i32 0, i32 %20
  %47 = add nsw i32 %46, %43
  %48 = and i32 %32, 2
  %49 = icmp eq i32 %48, 0
  %50 = ashr i32 %20, 1
  %51 = select i1 %49, i32 0, i32 %50
  %52 = add nsw i32 %47, %51
  %53 = and i32 %32, 1
  %54 = icmp eq i32 %53, 0
  %55 = ashr i32 %20, 2
  %56 = select i1 %54, i32 0, i32 %55
  %57 = add nsw i32 %52, %56
  %58 = icmp eq i32 %42, 0
  %59 = sub i32 0, %57
  %60 = select i1 %58, i32 %57, i32 %59
  %61 = add i32 %60, %19
  %62 = tail call i32 @llvm.smax.i32(i32 %61, i32 -32768)
  %63 = tail call i32 @llvm.smin.i32(i32 %62, i32 32767)
  %64 = zext nneg i32 %41 to i64
  %65 = getelementptr inbounds [89 x i32], ptr @stepsizeTable, i64 0, i64 %64
  %66 = load i32, ptr %65, align 4, !tbaa !13
  %67 = trunc i32 %63 to i16
  %68 = getelementptr inbounds i16, ptr %22, i64 1
  store i16 %67, ptr %22, align 2, !tbaa !15
  %69 = add nsw i32 %21, -1
  %70 = icmp sgt i32 %21, 1
  br i1 %70, label %15, label %71, !llvm.loop !19

71:                                               ; preds = %30
  %72 = trunc i32 %63 to i16
  %73 = trunc i32 %41 to i8
  br label %74

74:                                               ; preds = %71, %4
  %75 = phi i16 [ %5, %4 ], [ %72, %71 ]
  %76 = phi i8 [ %7, %4 ], [ %73, %71 ]
  store i16 %75, ptr %3, align 2, !tbaa !7
  store i8 %76, ptr %6, align 2, !tbaa !12
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
  %1 = tail call ptr @getenv(ptr noundef nonnull @.str) #8
  %2 = icmp eq ptr %1, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = tail call i64 @strtol(ptr nocapture noundef nonnull %1, ptr noundef null, i32 noundef 10) #8
  br label %5

5:                                                ; preds = %3, %0
  %6 = phi i64 [ %4, %3 ], [ 1, %0 ]
  %7 = icmp sgt i64 %6, 0
  br label %8

8:                                                ; preds = %22, %5
  %9 = load i32, ptr @state, align 4
  %10 = tail call i32 (i32, ptr, i32, ...) @read(i32 noundef 0, ptr noundef nonnull @sbuf, i32 noundef 2000) #8
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  tail call void @perror(ptr noundef nonnull @.str.1) #9
  tail call void @exit(i32 noundef 1) #10
  unreachable

13:                                               ; preds = %8
  %14 = icmp eq i32 %10, 0
  br i1 %14, label %25, label %15

15:                                               ; preds = %13
  br i1 %7, label %16, label %22

16:                                               ; preds = %15
  %17 = lshr i32 %10, 1
  br label %18

18:                                               ; preds = %18, %16
  %19 = phi i64 [ 0, %16 ], [ %20, %18 ]
  store i32 %9, ptr @state, align 4
  tail call void @adpcm_coder(ptr noundef nonnull @sbuf, ptr noundef nonnull @abuf, i32 noundef %17, ptr noundef nonnull @state) #8
  %20 = add nuw nsw i64 %19, 1
  %21 = icmp eq i64 %20, %6
  br i1 %21, label %22, label %18, !llvm.loop !20

22:                                               ; preds = %18, %15
  %23 = lshr i32 %10, 2
  %24 = tail call i32 (i32, ptr, i32, ...) @write(i32 noundef 1, ptr noundef nonnull @abuf, i32 noundef %23) #8
  br i1 %14, label %25, label %8

25:                                               ; preds = %22, %13
  ret i32 0
}

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #4

declare i32 @read(...) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare void @perror(ptr nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #7

declare i32 @write(...) local_unnamed_addr #5

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { cold }
attributes #10 = { noreturn nounwind }

!llvm.ident = !{!0, !0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6}

!0 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 1, !"ThinLTO", i32 0}
!6 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!7 = !{!8, !9, i64 0}
!8 = !{!"adpcm_state", !9, i64 0, !10, i64 2}
!9 = !{!"short", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!8, !10, i64 2}
!13 = !{!14, !14, i64 0}
!14 = !{!"int", !10, i64 0}
!15 = !{!9, !9, i64 0}
!16 = !{!10, !10, i64 0}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.unroll.disable"}
!19 = distinct !{!19, !18}
!20 = distinct !{!20, !18}
