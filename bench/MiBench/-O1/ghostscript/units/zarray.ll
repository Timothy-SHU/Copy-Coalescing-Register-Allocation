; ModuleID = 'zarray.c'
source_filename = "zarray.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gs_dual_memory_s = type { ptr, %union.vm_spaces_s, i32, i32, ptr, i32, i32 }
%union.vm_spaces_s = type { [4 x ptr] }
%struct.op_def = type { ptr, ptr }
%struct.ref_stack_s = type { ptr, ptr, ptr, %struct.ref_s, i32, i32, %struct.ref_s, i32, i32, i32, i32, i32, %struct.ref_s, i32, i32, i32, ptr }
%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16 }
%union.v = type { i64 }

@gs_imemory = external local_unnamed_addr global %struct.gs_dual_memory_s, align 8
@.str = private unnamed_addr constant [6 x i8] c"array\00", align 1
@zarray_op_defs.op_defs_ = internal constant [4 x %struct.op_def] [%struct.op_def { ptr @.str.1, ptr @zaload }, %struct.op_def { ptr @.str.2, ptr @zarray }, %struct.op_def { ptr @.str.3, ptr @zastore }, %struct.op_def zeroinitializer], align 16
@.str.1 = private unnamed_addr constant [7 x i8] c"1aload\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"1array\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"1astore\00", align 1
@o_stack = external global %struct.ref_stack_s, align 8
@.str.4 = private unnamed_addr constant [7 x i8] c"astore\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @zarray(ptr noundef %0) #0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 1
  %3 = load i8, ptr %2, align 1, !tbaa !5
  %4 = icmp eq i8 %3, 11
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @check_type_failed(ptr noundef %0) #5
  br label %18

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !5
  %10 = icmp ugt i64 %9, 65535
  br i1 %10, label %18, label %11

11:                                               ; preds = %7
  %12 = trunc i64 %9 to i32
  %13 = load ptr, ptr @gs_imemory, align 8, !tbaa !8
  %14 = tail call i32 @gs_alloc_ref_array(ptr noundef %13, ptr noundef %0, i32 noundef 112, i32 noundef %12, ptr noundef nonnull @.str) #5
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %11
  %17 = load ptr, ptr %8, align 8, !tbaa !5
  tail call void @refset_null(ptr noundef %17, i32 noundef %12) #5
  br label %18

18:                                               ; preds = %11, %7, %16, %5
  %19 = phi i32 [ 0, %16 ], [ %6, %5 ], [ -15, %7 ], [ %14, %11 ]
  ret i32 %19
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @check_type_failed(ptr noundef) local_unnamed_addr #2

declare i32 @gs_alloc_ref_array(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @refset_null(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @zarray_op_defs() local_unnamed_addr #3 {
  ret ptr @zarray_op_defs.op_defs_
}

; Function Attrs: nounwind uwtable
define internal i32 @zaload(ptr noundef %0) #0 {
  %2 = load i16, ptr %0, align 8, !tbaa.struct !12
  %3 = getelementptr inbounds i8, ptr %0, i64 2
  %4 = load i16, ptr %3, align 2, !tbaa.struct !20
  %5 = getelementptr inbounds i8, ptr %0, i64 4
  %6 = load i32, ptr %5, align 4, !tbaa.struct !21
  %7 = getelementptr inbounds i8, ptr %0, i64 8
  %8 = load ptr, ptr %7, align 8, !tbaa.struct !22
  %9 = zext i16 %2 to i32
  %10 = and i32 %9, 15360
  %11 = icmp eq i32 %10, 1024
  br i1 %11, label %14, label %12

12:                                               ; preds = %1
  %13 = tail call i32 @check_type_failed(ptr noundef nonnull %0) #5
  br label %75

14:                                               ; preds = %1
  %15 = and i32 %9, 32
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %75, label %17

17:                                               ; preds = %14
  %18 = zext i16 %4 to i64
  %19 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !23
  %20 = ptrtoint ptr %19 to i64
  %21 = ptrtoint ptr %0 to i64
  %22 = sub i64 %20, %21
  %23 = ashr exact i64 %22, 4
  %24 = icmp slt i64 %23, %18
  br i1 %24, label %25, label %47

25:                                               ; preds = %17
  %26 = zext i16 %4 to i32
  %27 = tail call i32 @ref_stack_push(ptr noundef nonnull @o_stack, i32 noundef %26) #5
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %75, label %29

29:                                               ; preds = %25
  %30 = icmp eq i16 %4, 0
  br i1 %30, label %42, label %31

31:                                               ; preds = %29, %31
  %32 = phi i64 [ %35, %31 ], [ %18, %29 ]
  %33 = phi ptr [ %39, %31 ], [ %8, %29 ]
  %34 = tail call ptr @ref_stack_index(ptr noundef nonnull @o_stack, i64 noundef %32) #5
  tail call void @packed_get(ptr noundef %33, ptr noundef %34) #5
  %35 = add nsw i64 %32, -1
  %36 = load i16, ptr %33, align 2, !tbaa !13
  %37 = icmp ugt i16 %36, 16383
  %38 = select i1 %37, i64 1, i64 8
  %39 = getelementptr inbounds i16, ptr %33, i64 %38
  %40 = and i64 %35, 4294967295
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %31, !llvm.loop !27

42:                                               ; preds = %31, %29
  %43 = load ptr, ptr @o_stack, align 8, !tbaa !29
  store i16 %2, ptr %43, align 8, !tbaa.struct !12
  %44 = getelementptr inbounds i8, ptr %43, i64 2
  store i16 %4, ptr %44, align 2, !tbaa.struct !20
  %45 = getelementptr inbounds i8, ptr %43, i64 4
  store i32 %6, ptr %45, align 4, !tbaa.struct !21
  %46 = getelementptr inbounds i8, ptr %43, i64 8
  store ptr %8, ptr %46, align 8, !tbaa.struct !22
  br label %75

47:                                               ; preds = %17
  %48 = and i16 %2, -256
  %49 = icmp eq i16 %48, 1024
  br i1 %49, label %52, label %50

50:                                               ; preds = %47
  %51 = icmp eq i16 %4, 0
  br i1 %51, label %65, label %54

52:                                               ; preds = %47
  %53 = shl nuw nsw i64 %18, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %0, ptr align 1 %8, i64 %53, i1 false)
  br label %65

54:                                               ; preds = %50, %54
  %55 = phi ptr [ %63, %54 ], [ %0, %50 ]
  %56 = phi ptr [ %61, %54 ], [ %8, %50 ]
  %57 = phi i16 [ %62, %54 ], [ 0, %50 ]
  tail call void @packed_get(ptr noundef %56, ptr noundef nonnull %55) #5
  %58 = load i16, ptr %56, align 2, !tbaa !13
  %59 = icmp ugt i16 %58, 16383
  %60 = select i1 %59, i64 1, i64 8
  %61 = getelementptr inbounds i16, ptr %56, i64 %60
  %62 = add nuw i16 %57, 1
  %63 = getelementptr inbounds %struct.ref_s, ptr %55, i64 1
  %64 = icmp eq i16 %62, %4
  br i1 %64, label %65, label %54, !llvm.loop !30

65:                                               ; preds = %54, %50, %52
  %66 = getelementptr inbounds %struct.ref_s, ptr %0, i64 %18
  %67 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !23
  %68 = icmp ugt ptr %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = zext i16 %4 to i32
  store i32 %70, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !31
  br label %75

71:                                               ; preds = %65
  store ptr %66, ptr @o_stack, align 8, !tbaa !29
  store i16 %2, ptr %66, align 8, !tbaa.struct !12
  %72 = getelementptr inbounds i8, ptr %66, i64 2
  store i16 %4, ptr %72, align 2, !tbaa.struct !20
  %73 = getelementptr inbounds i8, ptr %66, i64 4
  store i32 %6, ptr %73, align 4, !tbaa.struct !21
  %74 = getelementptr inbounds i8, ptr %66, i64 8
  store ptr %8, ptr %74, align 8, !tbaa.struct !22
  br label %75

75:                                               ; preds = %42, %25, %14, %71, %69, %12
  %76 = phi i32 [ -16, %69 ], [ 0, %71 ], [ %13, %12 ], [ -7, %14 ], [ 0, %42 ], [ %27, %25 ]
  ret i32 %76
}

; Function Attrs: nounwind uwtable
define internal i32 @zastore(ptr noundef %0) #0 {
  %2 = alloca %struct.ref_s, align 8
  %3 = load i16, ptr %0, align 8, !tbaa !32
  %4 = and i16 %3, 16144
  %5 = icmp eq i16 %4, 1040
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds i8, ptr %0, i64 1
  %8 = load i8, ptr %7, align 1, !tbaa !5
  %9 = icmp eq i8 %8, 4
  br i1 %9, label %46, label %10

10:                                               ; preds = %6
  %11 = tail call i32 @check_type_failed(ptr noundef nonnull %0) #5
  br label %46

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.tas_s, ptr %0, i64 0, i32 1
  %14 = load i16, ptr %13, align 2, !tbaa !33
  %15 = zext i16 %14 to i32
  %16 = zext i16 %14 to i64
  %17 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 1), align 8, !tbaa !34
  %18 = ptrtoint ptr %0 to i64
  %19 = ptrtoint ptr %17 to i64
  %20 = sub i64 %18, %19
  %21 = ashr exact i64 %20, 4
  %22 = icmp slt i64 %21, %16
  br i1 %22, label %23, label %34

23:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #5
  %24 = tail call i32 @ref_stack_count(ptr noundef nonnull @o_stack) #5
  %25 = icmp ugt i32 %24, %15
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !12
  %27 = call i32 @ref_stack_store(ptr noundef nonnull @o_stack, ptr noundef nonnull %2, i32 noundef %15, i32 noundef 1, i32 noundef 0, i32 noundef 1, ptr noundef nonnull @.str.4) #5
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %26
  call void @ref_stack_pop(ptr noundef nonnull @o_stack, i32 noundef %15) #5
  %30 = call ptr @ref_stack_index(ptr noundef nonnull @o_stack, i64 noundef 0) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %30, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !12
  br label %31

31:                                               ; preds = %26, %23, %29
  %32 = phi i32 [ undef, %29 ], [ -17, %23 ], [ %27, %26 ]
  %33 = phi i1 [ true, %29 ], [ false, %23 ], [ false, %26 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #5
  br i1 %33, label %45, label %46

34:                                               ; preds = %12
  %35 = sub nsw i64 0, %16
  %36 = getelementptr inbounds %struct.ref_s, ptr %0, i64 %35
  %37 = tail call i32 @refcpy_to_old(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull %36, i32 noundef %15, ptr noundef nonnull @.str.4) #5
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %34
  %40 = sub nsw i32 0, %15
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.ref_s, ptr %0, i64 %41
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %42, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !12
  %43 = load ptr, ptr @o_stack, align 8, !tbaa !29
  %44 = getelementptr inbounds %struct.ref_s, ptr %43, i64 %35
  store ptr %44, ptr @o_stack, align 8, !tbaa !29
  br label %45

45:                                               ; preds = %31, %39
  br label %46

46:                                               ; preds = %34, %10, %6, %31, %45
  %47 = phi i32 [ 0, %45 ], [ %32, %31 ], [ %11, %10 ], [ -7, %6 ], [ %37, %34 ]
  ret i32 %47
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare i32 @ref_stack_push(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @packed_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ref_stack_index(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @ref_stack_count(ptr noundef) local_unnamed_addr #2

declare i32 @ref_stack_store(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @ref_stack_pop(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @refcpy_to_old(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind }

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
!9 = !{!"gs_dual_memory_s", !10, i64 0, !6, i64 8, !11, i64 40, !11, i64 44, !10, i64 48, !11, i64 56, !11, i64 60}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"int", !6, i64 0}
!12 = !{i64 0, i64 2, !13, i64 2, i64 2, !13, i64 8, i64 8, !15, i64 8, i64 2, !13, i64 8, i64 4, !17, i64 8, i64 8, !15, i64 8, i64 8, !19, i64 8, i64 8, !19, i64 8, i64 8, !19, i64 8, i64 8, !19, i64 8, i64 8, !19, i64 8, i64 8, !19, i64 8, i64 8, !19, i64 8, i64 8, !19, i64 8, i64 8, !19, i64 8, i64 8, !19, i64 8, i64 8, !19, i64 8, i64 8, !19, i64 8, i64 8, !19}
!13 = !{!14, !14, i64 0}
!14 = !{!"short", !6, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"long", !6, i64 0}
!17 = !{!18, !18, i64 0}
!18 = !{!"float", !6, i64 0}
!19 = !{!10, !10, i64 0}
!20 = !{i64 0, i64 2, !13, i64 6, i64 8, !15, i64 6, i64 2, !13, i64 6, i64 4, !17, i64 6, i64 8, !15, i64 6, i64 8, !19, i64 6, i64 8, !19, i64 6, i64 8, !19, i64 6, i64 8, !19, i64 6, i64 8, !19, i64 6, i64 8, !19, i64 6, i64 8, !19, i64 6, i64 8, !19, i64 6, i64 8, !19, i64 6, i64 8, !19, i64 6, i64 8, !19, i64 6, i64 8, !19, i64 6, i64 8, !19}
!21 = !{i64 4, i64 8, !15, i64 4, i64 2, !13, i64 4, i64 4, !17, i64 4, i64 8, !15, i64 4, i64 8, !19, i64 4, i64 8, !19, i64 4, i64 8, !19, i64 4, i64 8, !19, i64 4, i64 8, !19, i64 4, i64 8, !19, i64 4, i64 8, !19, i64 4, i64 8, !19, i64 4, i64 8, !19, i64 4, i64 8, !19, i64 4, i64 8, !19, i64 4, i64 8, !19, i64 4, i64 8, !19}
!22 = !{i64 0, i64 8, !15, i64 0, i64 2, !13, i64 0, i64 4, !17, i64 0, i64 8, !15, i64 0, i64 8, !19, i64 0, i64 8, !19, i64 0, i64 8, !19, i64 0, i64 8, !19, i64 0, i64 8, !19, i64 0, i64 8, !19, i64 0, i64 8, !19, i64 0, i64 8, !19, i64 0, i64 8, !19, i64 0, i64 8, !19, i64 0, i64 8, !19, i64 0, i64 8, !19, i64 0, i64 8, !19}
!23 = !{!24, !10, i64 16}
!24 = !{!"ref_stack_s", !10, i64 0, !10, i64 8, !10, i64 16, !25, i64 24, !11, i64 40, !11, i64 44, !25, i64 48, !11, i64 64, !11, i64 68, !11, i64 72, !11, i64 76, !11, i64 80, !25, i64 88, !11, i64 104, !11, i64 108, !11, i64 112, !10, i64 120}
!25 = !{!"ref_s", !26, i64 0, !6, i64 8}
!26 = !{!"tas_s", !14, i64 0, !14, i64 2}
!27 = distinct !{!27, !28}
!28 = !{!"llvm.loop.unroll.disable"}
!29 = !{!24, !10, i64 0}
!30 = distinct !{!30, !28}
!31 = !{!24, !11, i64 64}
!32 = !{!25, !14, i64 0}
!33 = !{!25, !14, i64 2}
!34 = !{!24, !10, i64 8}
