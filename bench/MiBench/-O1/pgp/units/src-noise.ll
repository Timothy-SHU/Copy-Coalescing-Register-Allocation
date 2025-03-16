; ModuleID = 'src/noise.c'
source_filename = "src/noise.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.timeval = type { i64, i64 }
%struct.tms = type { i64, i64, i64, i64 }

@noise.lastcounter = internal unnamed_addr global i64 0, align 8
@noise.ticksize = internal unnamed_addr global i32 0, align 4
@verbose = external local_unnamed_addr global i8, align 1
@pgpout = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [34 x i8] c"t = %u, clock frequency is %u Hz\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i64 @noise() local_unnamed_addr #0 {
  %1 = alloca [15 x i32], align 16
  %2 = alloca %struct.timeval, align 8
  %3 = alloca %struct.timeval, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.timeval, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.tms, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #8
  %9 = tail call i64 @clock() #8
  store i64 %9, ptr %5, align 8, !tbaa !5
  call void @randPoolAddBytes(ptr noundef nonnull %5, i32 noundef 8) #8
  %10 = call i64 @time(ptr noundef null) #8
  store i64 %10, ptr %4, align 8, !tbaa !5
  call void @randPoolAddBytes(ptr noundef nonnull %4, i32 noundef 8) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #8
  %11 = load i32, ptr @noise.ticksize, align 4, !tbaa !9
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %58

13:                                               ; preds = %0
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %1) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8
  %14 = call i32 (ptr, i32, ...) @mygettimeofday(ptr noundef nonnull %2, i32 noundef 0) #8
  %15 = getelementptr inbounds i8, ptr %2, i64 8
  %16 = load i64, ptr %15, align 8, !tbaa.struct !11
  %17 = getelementptr inbounds %struct.timeval, ptr %3, i64 0, i32 1
  br label %18

18:                                               ; preds = %42, %13
  %19 = phi i32 [ 0, %13 ], [ %39, %42 ]
  %20 = phi i32 [ 0, %13 ], [ %43, %42 ]
  %21 = phi i64 [ %16, %13 ], [ %23, %42 ]
  %22 = call i32 (ptr, i32, ...) @mygettimeofday(ptr noundef nonnull %3, i32 noundef 0) #8
  %23 = load i64, ptr %17, align 8
  %24 = add nsw i64 %21, 2
  %25 = icmp sgt i64 %23, %24
  br i1 %25, label %26, label %38

26:                                               ; preds = %18
  %27 = load i64, ptr %15, align 8, !tbaa !12
  %28 = sub i64 %23, %27
  %29 = load i64, ptr %3, align 8, !tbaa !14
  %30 = load i64, ptr %2, align 8, !tbaa !14
  %31 = sub nsw i64 %29, %30
  %32 = mul nsw i64 %31, 1000000
  %33 = add nsw i64 %28, %32
  %34 = trunc i64 %33 to i32
  %35 = add nsw i32 %19, 1
  %36 = sext i32 %19 to i64
  %37 = getelementptr inbounds [15 x i32], ptr %1, i64 0, i64 %36
  store i32 %34, ptr %37, align 4, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !15
  br label %38

38:                                               ; preds = %26, %18
  %39 = phi i32 [ %35, %26 ], [ %19, %18 ]
  %40 = phi i32 [ 0, %26 ], [ %20, %18 ]
  %41 = icmp sgt i32 %40, 10000
  br i1 %41, label %56, label %42

42:                                               ; preds = %38
  %43 = add nsw i32 %40, 1
  %44 = icmp slt i32 %39, 15
  br i1 %44, label %18, label %45, !llvm.loop !16

45:                                               ; preds = %42
  call void @qsort(ptr noundef nonnull %1, i64 noundef 15, i64 noundef 4, ptr noundef nonnull @noiseCompare) #8
  %46 = getelementptr inbounds [15 x i32], ptr %1, i64 0, i64 7
  %47 = load i32, ptr %46, align 4, !tbaa !9
  %48 = load i8, ptr @verbose, align 1, !tbaa !18
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %45
  %51 = load ptr, ptr @pgpout, align 8, !tbaa !19
  %52 = add i32 %47, 2000000
  %53 = shl i32 %47, 1
  %54 = udiv i32 %52, %53
  %55 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %51, ptr noundef nonnull @.str, i32 noundef %47, i32 noundef %54)
  br label %56

56:                                               ; preds = %38, %45, %50
  %57 = phi i32 [ %47, %50 ], [ %47, %45 ], [ 2, %38 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #8
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %1) #8
  store i32 %57, ptr @noise.ticksize, align 4, !tbaa !9
  br label %58

58:                                               ; preds = %56, %0
  %59 = call i32 (ptr, ptr, ...) @mygettimeofday(ptr noundef nonnull %6, ptr noundef null) #8
  call void @randPoolAddBytes(ptr noundef nonnull %6, i32 noundef 16) #8
  %60 = load i64, ptr %6, align 8, !tbaa !14
  %61 = mul nsw i64 %60, 1000000
  %62 = getelementptr inbounds %struct.timeval, ptr %6, i64 0, i32 1
  %63 = load i64, ptr %62, align 8, !tbaa !12
  %64 = add nsw i64 %61, %63
  %65 = load i64, ptr @noise.lastcounter, align 8, !tbaa !5
  %66 = sub i64 %64, %65
  store i64 %64, ptr @noise.lastcounter, align 8, !tbaa !5
  %67 = load i32, ptr @noise.ticksize, align 4, !tbaa !9
  %68 = zext i32 %67 to i64
  %69 = udiv i64 %66, %68
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #8
  %70 = call i64 @times(ptr noundef nonnull %8) #8
  store i64 %70, ptr %7, align 8, !tbaa !5
  call void @randPoolAddBytes(ptr noundef nonnull %8, i32 noundef 32) #8
  call void @randPoolAddBytes(ptr noundef nonnull %7, i32 noundef 8) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8
  ret i64 %69
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
declare i64 @clock() local_unnamed_addr #2

declare void @randPoolAddBytes(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #2

declare i32 @mygettimeofday(...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind
declare noundef i64 @times(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @noiseCompare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #7 {
  %3 = load i32, ptr %0, align 4, !tbaa !9
  %4 = load i32, ptr %1, align 4, !tbaa !9
  %5 = sub nsw i32 %3, %4
  ret i32 %5
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"long", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !7, i64 0}
!11 = !{i64 0, i64 8, !5}
!12 = !{!13, !6, i64 8}
!13 = !{!"timeval", !6, i64 0, !6, i64 8}
!14 = !{!13, !6, i64 0}
!15 = !{i64 0, i64 8, !5, i64 8, i64 8, !5}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.unroll.disable"}
!18 = !{!7, !7, i64 0}
!19 = !{!20, !20, i64 0}
!20 = !{!"any pointer", !7, i64 0}
