; ModuleID = 'src/qsort_large.c'
source_filename = "src/qsort_large.c"
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
  %4 = load double, ptr %3, align 8, !tbaa !5
  %5 = getelementptr inbounds %struct.my3DVertexStruct, ptr %1, i64 0, i32 3
  %6 = load double, ptr %5, align 8, !tbaa !5
  %7 = fcmp ogt double %4, %6
  %8 = fcmp une double %4, %6
  %9 = sext i1 %8 to i32
  %10 = select i1 %7, i32 1, i32 %9
  ret i32 %10
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 {
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
  %9 = load ptr, ptr @stderr, align 8, !tbaa !11
  %10 = tail call i64 @fwrite(ptr nonnull @.str, i64 26, i64 1, ptr %9) #10
  tail call void @exit(i32 noundef -1) #11
  unreachable

11:                                               ; preds = %2
  %12 = getelementptr inbounds ptr, ptr %1, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !11
  %14 = tail call noalias ptr @fopen(ptr noundef %13, ptr noundef nonnull @.str.1)
  %15 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %14, ptr noundef nonnull @.str.2, ptr noundef nonnull %4) #9
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %49

17:                                               ; preds = %11, %26
  %18 = phi i64 [ %43, %26 ], [ 0, %11 ]
  %19 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %14, ptr noundef nonnull @.str.2, ptr noundef nonnull %5) #9
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %46

21:                                               ; preds = %17
  %22 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %14, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #9
  %23 = icmp eq i32 %22, 1
  %24 = icmp ult i64 %18, 60000
  %25 = select i1 %23, i1 %24, i1 false
  br i1 %25, label %26, label %46

26:                                               ; preds = %21
  %27 = load i32, ptr %4, align 4, !tbaa !13
  %28 = getelementptr inbounds [60000 x %struct.my3DVertexStruct], ptr %3, i64 0, i64 %18
  store i32 %27, ptr %28, align 8, !tbaa !14
  %29 = load i32, ptr %5, align 4, !tbaa !13
  %30 = getelementptr inbounds [60000 x %struct.my3DVertexStruct], ptr %3, i64 0, i64 %18, i32 1
  store i32 %29, ptr %30, align 4, !tbaa !15
  %31 = load i32, ptr %6, align 4, !tbaa !13
  %32 = getelementptr inbounds [60000 x %struct.my3DVertexStruct], ptr %3, i64 0, i64 %18, i32 2
  store i32 %31, ptr %32, align 8, !tbaa !16
  %33 = sitofp i32 %27 to double
  %34 = fmul double %33, %33
  %35 = sitofp i32 %29 to double
  %36 = fmul double %35, %35
  %37 = fadd double %34, %36
  %38 = sitofp i32 %31 to double
  %39 = fmul double %38, %38
  %40 = fadd double %37, %39
  %41 = call double @sqrt(double noundef %40) #9
  %42 = getelementptr inbounds [60000 x %struct.my3DVertexStruct], ptr %3, i64 0, i64 %18, i32 3
  store double %41, ptr %42, align 8, !tbaa !5
  %43 = add nuw nsw i64 %18, 1
  %44 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %14, ptr noundef nonnull @.str.2, ptr noundef nonnull %4) #9
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %17, label %46, !llvm.loop !17

46:                                               ; preds = %26, %17, %21
  %47 = phi i64 [ %18, %21 ], [ %18, %17 ], [ %43, %26 ]
  %48 = trunc i64 %47 to i32
  br label %49

49:                                               ; preds = %46, %11
  %50 = phi i32 [ 0, %11 ], [ %48, %46 ]
  %51 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %50)
  %52 = zext nneg i32 %50 to i64
  call void @qsort(ptr noundef nonnull %3, i64 noundef %52, i64 noundef 24, ptr noundef nonnull @compare) #9
  %53 = icmp eq i32 %50, 0
  br i1 %53, label %67, label %54

54:                                               ; preds = %49
  %55 = zext i32 %50 to i64
  br label %56

56:                                               ; preds = %54, %56
  %57 = phi i64 [ 0, %54 ], [ %65, %56 ]
  %58 = getelementptr inbounds [60000 x %struct.my3DVertexStruct], ptr %3, i64 0, i64 %57
  %59 = load i32, ptr %58, align 8, !tbaa !14
  %60 = getelementptr inbounds [60000 x %struct.my3DVertexStruct], ptr %3, i64 0, i64 %57, i32 1
  %61 = load i32, ptr %60, align 4, !tbaa !15
  %62 = getelementptr inbounds [60000 x %struct.my3DVertexStruct], ptr %3, i64 0, i64 %57, i32 2
  %63 = load i32, ptr %62, align 8, !tbaa !16
  %64 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %59, i32 noundef %61, i32 noundef %63)
  %65 = add nuw nsw i64 %57, 1
  %66 = icmp eq i64 %65, %55
  br i1 %66, label %67, label %56, !llvm.loop !19

67:                                               ; preds = %56, %49
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 1440000, ptr nonnull %3) #9
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #4

declare i32 @__isoc99_fscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind }
attributes #9 = { nounwind }
attributes #10 = { cold }
attributes #11 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !10, i64 16}
!6 = !{!"my3DVertexStruct", !7, i64 0, !7, i64 4, !7, i64 8, !10, i64 16}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"double", !8, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!7, !7, i64 0}
!14 = !{!6, !7, i64 0}
!15 = !{!6, !7, i64 4}
!16 = !{!6, !7, i64 8}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.unroll.disable"}
!19 = distinct !{!19, !18}
