; ModuleID = 'zvmem2.c'
source_filename = "zvmem2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gs_dual_memory_s = type { ptr, %union.vm_spaces_s, i32, i32, ptr, i32, i32 }
%union.vm_spaces_s = type { [4 x ptr] }
%struct.op_def = type { ptr, ptr }
%struct.ref_stack_s = type { ptr, ptr, ptr, %struct.ref_s, i32, i32, %struct.ref_s, i32, i32, i32, i32, i32, %struct.ref_s, i32, i32, i32, ptr }
%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16 }
%union.v = type { i64 }
%struct.gs_memory_gc_status_s = type { i64, i64, ptr, i32, i32, i64 }

@gs_imemory = external global %struct.gs_dual_memory_s, align 8
@zvmem2_op_defs.op_defs_ = internal constant [7 x %struct.op_def] [%struct.op_def { ptr @.str, ptr @zcurrentglobal }, %struct.op_def { ptr @.str.1, ptr @zgcheck }, %struct.op_def { ptr @.str.2, ptr @zsetglobal }, %struct.op_def { ptr @.str.3, ptr null }, %struct.op_def { ptr @.str.4, ptr @zsetvmthreshold }, %struct.op_def { ptr @.str.5, ptr @zvmreclaim }, %struct.op_def zeroinitializer], align 16
@.str = private unnamed_addr constant [16 x i8] c"0.currentglobal\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"1.gcheck\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"1.setglobal\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"level2dict\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"1setvmthreshold\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"1vmreclaim\00", align 1
@o_stack = external local_unnamed_addr global %struct.ref_stack_s, align 8

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @set_vm_threshold(i64 noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.gs_memory_gc_status_s, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #7
  %3 = icmp slt i64 %0, -1
  br i1 %3, label %12, label %4

4:                                                ; preds = %1
  %5 = icmp eq i64 %0, -1
  %6 = tail call i64 @llvm.smax.i64(i64 %0, i64 1)
  %7 = select i1 %5, i64 250000, i64 %6
  %8 = load ptr, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 1, i32 0, i64 2), align 8, !tbaa !5
  call void @gs_memory_gc_status(ptr noundef %8, ptr noundef nonnull %2) #7
  store i64 %7, ptr %2, align 8, !tbaa !8
  %9 = load ptr, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 1, i32 0, i64 2), align 8, !tbaa !5
  call void @gs_memory_set_gc_status(ptr noundef %9, ptr noundef nonnull %2) #7
  %10 = load ptr, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 1, i32 0, i64 3), align 8, !tbaa !5
  call void @gs_memory_gc_status(ptr noundef %10, ptr noundef nonnull %2) #7
  store i64 %7, ptr %2, align 8, !tbaa !8
  %11 = load ptr, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 1, i32 0, i64 3), align 8, !tbaa !5
  call void @gs_memory_set_gc_status(ptr noundef %11, ptr noundef nonnull %2) #7
  br label %12

12:                                               ; preds = %1, %4
  %13 = phi i32 [ 0, %4 ], [ -15, %1 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #7
  ret i32 %13
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @gs_memory_gc_status(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @gs_memory_set_gc_status(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @set_vm_reclaim(i64 noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.gs_memory_gc_status_s, align 8
  %3 = add i64 %0, 2
  %4 = icmp ult i64 %3, 3
  br i1 %4, label %5, label %17

5:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #7
  %6 = load ptr, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 1, i32 0, i64 1), align 8, !tbaa !5
  call void @gs_memory_gc_status(ptr noundef %6, ptr noundef nonnull %2) #7
  %7 = icmp sgt i64 %0, -2
  %8 = zext i1 %7 to i32
  %9 = getelementptr inbounds %struct.gs_memory_gc_status_s, ptr %2, i64 0, i32 4
  store i32 %8, ptr %9, align 4, !tbaa !13
  %10 = load ptr, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 1, i32 0, i64 1), align 8, !tbaa !5
  call void @gs_memory_set_gc_status(ptr noundef %10, ptr noundef nonnull %2) #7
  %11 = load ptr, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 1, i32 0, i64 2), align 8, !tbaa !5
  call void @gs_memory_gc_status(ptr noundef %11, ptr noundef nonnull %2) #7
  store i32 %8, ptr %9, align 4, !tbaa !13
  %12 = load ptr, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 1, i32 0, i64 2), align 8, !tbaa !5
  call void @gs_memory_set_gc_status(ptr noundef %12, ptr noundef nonnull %2) #7
  %13 = load ptr, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 1, i32 0, i64 3), align 8, !tbaa !5
  call void @gs_memory_gc_status(ptr noundef %13, ptr noundef nonnull %2) #7
  %14 = icmp eq i64 %0, 0
  %15 = zext i1 %14 to i32
  store i32 %15, ptr %9, align 4, !tbaa !13
  %16 = load ptr, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 1, i32 0, i64 3), align 8, !tbaa !5
  call void @gs_memory_set_gc_status(ptr noundef %16, ptr noundef nonnull %2) #7
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #7
  br label %17

17:                                               ; preds = %1, %5
  %18 = phi i32 [ 0, %5 ], [ -15, %1 ]
  ret i32 %18
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @zvmem2_op_defs() local_unnamed_addr #3 {
  ret ptr @zvmem2_op_defs.op_defs_
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none) uwtable
define internal noundef i32 @zcurrentglobal(ptr noundef %0) #4 {
  %2 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1
  %3 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !14
  %4 = icmp ugt ptr %2, %3
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  store i32 1, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !19
  br label %11

6:                                                ; preds = %1
  store ptr %2, ptr @o_stack, align 8, !tbaa !20
  %7 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 2), align 8, !tbaa !21
  %8 = icmp ne i32 %7, 12
  %9 = zext i1 %8 to i16
  %10 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1, i32 1
  store i16 %9, ptr %10, align 8, !tbaa !5
  store i16 256, ptr %2, align 8, !tbaa !23
  br label %11

11:                                               ; preds = %6, %5
  %12 = phi i32 [ -16, %5 ], [ 0, %6 ]
  ret i32 %12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal noundef i32 @zgcheck(ptr noundef %0) #5 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 1), align 8, !tbaa !24
  %3 = icmp ugt ptr %2, %0
  br i1 %3, label %10, label %4

4:                                                ; preds = %1
  %5 = load i16, ptr %0, align 8, !tbaa !23
  %6 = and i16 %5, 12
  %7 = icmp ne i16 %6, 12
  %8 = zext i1 %7 to i16
  %9 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  store i16 %8, ptr %9, align 8, !tbaa !5
  store i16 256, ptr %0, align 8, !tbaa !23
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ 0, %4 ], [ -17, %1 ]
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define internal i32 @zsetglobal(ptr noundef %0) #0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 1
  %3 = load i8, ptr %2, align 1, !tbaa !5
  %4 = icmp eq i8 %3, 1
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @check_type_failed(ptr noundef %0) #7
  br label %14

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %9 = load i16, ptr %8, align 8, !tbaa !5
  %10 = icmp eq i16 %9, 0
  %11 = select i1 %10, i32 12, i32 8
  tail call void @ialloc_set_space(ptr noundef nonnull @gs_imemory, i32 noundef %11) #7
  %12 = load ptr, ptr @o_stack, align 8, !tbaa !20
  %13 = getelementptr inbounds %struct.ref_s, ptr %12, i64 -1
  store ptr %13, ptr @o_stack, align 8, !tbaa !20
  br label %14

14:                                               ; preds = %7, %5
  %15 = phi i32 [ 0, %7 ], [ %6, %5 ]
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define internal i32 @zsetvmthreshold(ptr noundef %0) #0 {
  %2 = alloca %struct.gs_memory_gc_status_s, align 8
  %3 = getelementptr inbounds i8, ptr %0, i64 1
  %4 = load i8, ptr %3, align 1, !tbaa !5
  %5 = icmp eq i8 %4, 11
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = tail call i32 @check_type_failed(ptr noundef %0) #7
  br label %25

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #7
  %11 = icmp sgt i64 %10, -2
  br i1 %11, label %12, label %20

12:                                               ; preds = %8
  %13 = icmp eq i64 %10, -1
  %14 = tail call i64 @llvm.smax.i64(i64 %10, i64 1)
  %15 = select i1 %13, i64 250000, i64 %14
  %16 = load ptr, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 1, i32 0, i64 2), align 8, !tbaa !5
  call void @gs_memory_gc_status(ptr noundef %16, ptr noundef nonnull %2) #7
  store i64 %15, ptr %2, align 8, !tbaa !8
  %17 = load ptr, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 1, i32 0, i64 2), align 8, !tbaa !5
  call void @gs_memory_set_gc_status(ptr noundef %17, ptr noundef nonnull %2) #7
  %18 = load ptr, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 1, i32 0, i64 3), align 8, !tbaa !5
  call void @gs_memory_gc_status(ptr noundef %18, ptr noundef nonnull %2) #7
  store i64 %15, ptr %2, align 8, !tbaa !8
  %19 = load ptr, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 1, i32 0, i64 3), align 8, !tbaa !5
  call void @gs_memory_set_gc_status(ptr noundef %19, ptr noundef nonnull %2) #7
  br label %20

20:                                               ; preds = %8, %12
  %21 = phi i32 [ 0, %12 ], [ -15, %8 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #7
  br i1 %11, label %22, label %25

22:                                               ; preds = %20
  %23 = load ptr, ptr @o_stack, align 8, !tbaa !20
  %24 = getelementptr inbounds %struct.ref_s, ptr %23, i64 -1
  store ptr %24, ptr @o_stack, align 8, !tbaa !20
  br label %25

25:                                               ; preds = %20, %22, %6
  %26 = phi i32 [ %7, %6 ], [ %21, %22 ], [ %21, %20 ]
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define internal i32 @zvmreclaim(ptr noundef %0) #0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 1
  %3 = load i8, ptr %2, align 1, !tbaa !5
  %4 = icmp eq i8 %3, 11
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @check_type_failed(ptr noundef %0) #7
  br label %18

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !5
  %10 = add i64 %9, -1
  %11 = icmp ult i64 %10, 2
  br i1 %11, label %18, label %12

12:                                               ; preds = %7
  %13 = tail call i32 @set_vm_reclaim(i64 noundef %9), !range !25
  %14 = icmp sgt i32 %13, -1
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load ptr, ptr @o_stack, align 8, !tbaa !20
  %17 = getelementptr inbounds %struct.ref_s, ptr %16, i64 -1
  store ptr %17, ptr @o_stack, align 8, !tbaa !20
  br label %18

18:                                               ; preds = %7, %12, %15, %5
  %19 = phi i32 [ %6, %5 ], [ -105, %7 ], [ %13, %15 ], [ %13, %12 ]
  ret i32 %19
}

declare i32 @check_type_failed(ptr noundef) local_unnamed_addr #2

declare void @ialloc_set_space(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !10, i64 0}
!9 = !{!"gs_memory_gc_status_s", !10, i64 0, !10, i64 8, !11, i64 16, !12, i64 24, !12, i64 28, !10, i64 32}
!10 = !{!"long", !6, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"int", !6, i64 0}
!13 = !{!9, !12, i64 28}
!14 = !{!15, !11, i64 16}
!15 = !{!"ref_stack_s", !11, i64 0, !11, i64 8, !11, i64 16, !16, i64 24, !12, i64 40, !12, i64 44, !16, i64 48, !12, i64 64, !12, i64 68, !12, i64 72, !12, i64 76, !12, i64 80, !16, i64 88, !12, i64 104, !12, i64 108, !12, i64 112, !11, i64 120}
!16 = !{!"ref_s", !17, i64 0, !6, i64 8}
!17 = !{!"tas_s", !18, i64 0, !18, i64 2}
!18 = !{!"short", !6, i64 0}
!19 = !{!15, !12, i64 64}
!20 = !{!15, !11, i64 0}
!21 = !{!22, !12, i64 40}
!22 = !{!"gs_dual_memory_s", !11, i64 0, !6, i64 8, !12, i64 40, !12, i64 44, !11, i64 48, !12, i64 56, !12, i64 60}
!23 = !{!16, !18, i64 0}
!24 = !{!15, !11, i64 8}
!25 = !{i32 -15, i32 1}
