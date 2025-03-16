; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.my3DVertexStruct = type { i32, i32, i32, double }

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [27 x i8] c"Usage: qsort_large <file>\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [57 x i8] c"\0ASorting %d vectors based on distance from the origin.\0A\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"%d %d %d\0A\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @compare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.my3DVertexStruct, ptr %0, i64 0, i32 3
  %4 = load double, ptr %3, align 8, !tbaa !7
  %5 = getelementptr inbounds %struct.my3DVertexStruct, ptr %1, i64 0, i32 3
  %6 = load double, ptr %5, align 8, !tbaa !7
  %7 = fcmp ogt double %4, %6
  %8 = fcmp une double %4, %6
  %9 = sext i1 %8 to i32
  %10 = select i1 %7, i32 1, i32 %9
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #1 {
  %3 = alloca [60000 x %struct.my3DVertexStruct], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 1440000, ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  %7 = icmp slt i32 %0, 2
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load ptr, ptr @stderr, align 8, !tbaa !13
  %10 = tail call i64 @fwrite(ptr nonnull @.str, i64 26, i64 1, ptr %9) #10
  tail call void @exit(i32 noundef -1) #11
  unreachable

11:                                               ; preds = %2
  %12 = getelementptr inbounds ptr, ptr %1, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !13
  %14 = tail call noalias ptr @fopen(ptr noundef %13, ptr noundef nonnull @.str.1)
  br label %15

15:                                               ; preds = %28, %11
  %16 = phi i32 [ %46, %28 ], [ 0, %11 ]
  %17 = phi i64 [ %45, %28 ], [ 0, %11 ]
  %18 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %14, ptr noundef nonnull @.str.2, ptr noundef nonnull %4) #9
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %47

20:                                               ; preds = %15
  %21 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %14, ptr noundef nonnull @.str.2, ptr noundef nonnull %5) #9
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %47

23:                                               ; preds = %20
  %24 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %14, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #9
  %25 = icmp eq i32 %24, 1
  %26 = icmp ult i64 %17, 60000
  %27 = select i1 %25, i1 %26, i1 false
  br i1 %27, label %28, label %47

28:                                               ; preds = %23
  %29 = load i32, ptr %4, align 4, !tbaa !15
  %30 = getelementptr inbounds [60000 x %struct.my3DVertexStruct], ptr %3, i64 0, i64 %17
  store i32 %29, ptr %30, align 8, !tbaa !16
  %31 = load i32, ptr %5, align 4, !tbaa !15
  %32 = getelementptr inbounds [60000 x %struct.my3DVertexStruct], ptr %3, i64 0, i64 %17, i32 1
  store i32 %31, ptr %32, align 4, !tbaa !17
  %33 = load i32, ptr %6, align 4, !tbaa !15
  %34 = getelementptr inbounds [60000 x %struct.my3DVertexStruct], ptr %3, i64 0, i64 %17, i32 2
  store i32 %33, ptr %34, align 8, !tbaa !18
  %35 = sitofp i32 %29 to double
  %36 = fmul double %35, %35
  %37 = sitofp i32 %31 to double
  %38 = fmul double %37, %37
  %39 = fadd double %36, %38
  %40 = sitofp i32 %33 to double
  %41 = fmul double %40, %40
  %42 = fadd double %39, %41
  %43 = call double @sqrt(double noundef %42) #9
  %44 = getelementptr inbounds [60000 x %struct.my3DVertexStruct], ptr %3, i64 0, i64 %17, i32 3
  store double %43, ptr %44, align 8, !tbaa !7
  %45 = add nuw nsw i64 %17, 1
  %46 = add nuw nsw i32 %16, 1
  br label %15, !llvm.loop !19

47:                                               ; preds = %23, %20, %15
  %48 = trunc i64 %17 to i32
  %49 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %48)
  %50 = and i64 %17, 4294967295
  call void @qsort(ptr noundef nonnull %3, i64 noundef %50, i64 noundef 24, ptr noundef nonnull @compare) #9
  %51 = icmp eq i32 %48, 0
  br i1 %51, label %65, label %52

52:                                               ; preds = %47
  %53 = zext nneg i32 %16 to i64
  br label %54

54:                                               ; preds = %54, %52
  %55 = phi i64 [ 0, %52 ], [ %63, %54 ]
  %56 = getelementptr inbounds [60000 x %struct.my3DVertexStruct], ptr %3, i64 0, i64 %55
  %57 = load i32, ptr %56, align 8, !tbaa !16
  %58 = getelementptr inbounds [60000 x %struct.my3DVertexStruct], ptr %3, i64 0, i64 %55, i32 1
  %59 = load i32, ptr %58, align 4, !tbaa !17
  %60 = getelementptr inbounds [60000 x %struct.my3DVertexStruct], ptr %3, i64 0, i64 %55, i32 2
  %61 = load i32, ptr %60, align 8, !tbaa !18
  %62 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %57, i32 noundef %59, i32 noundef %61)
  %63 = add nuw nsw i64 %55, 1
  %64 = icmp eq i64 %63, %53
  br i1 %64, label %65, label %54, !llvm.loop !21

65:                                               ; preds = %54, %47
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 1440000, ptr nonnull %3) #9
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #5

declare i32 @__isoc99_fscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree nounwind }
attributes #4 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { cold }
attributes #11 = { noreturn nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6}

!0 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 1, !"ThinLTO", i32 0}
!6 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!7 = !{!8, !12, i64 16}
!8 = !{!"my3DVertexStruct", !9, i64 0, !9, i64 4, !9, i64 8, !12, i64 16}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!"double", !10, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"any pointer", !10, i64 0}
!15 = !{!9, !9, i64 0}
!16 = !{!8, !9, i64 0}
!17 = !{!8, !9, i64 4}
!18 = !{!8, !9, i64 8}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.unroll.disable"}
!21 = distinct !{!21, !20}
