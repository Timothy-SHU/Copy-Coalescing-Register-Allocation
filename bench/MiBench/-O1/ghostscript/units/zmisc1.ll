; ModuleID = 'zmisc1.c'
source_filename = "zmisc1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.op_def = type { ptr, ptr }
%struct.ref_stack_s = type { ptr, ptr, ptr, %struct.ref_s, i32, i32, %struct.ref_s, i32, i32, i32, i32, i32, %struct.ref_s, i32, i32, i32, ptr }
%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16 }
%union.v = type { i64 }
%struct.stream_template_s = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr }
%struct.stream_exE_state_s = type { ptr, ptr, ptr, i16 }
%struct.stream_exD_state_s = type { ptr, ptr, ptr, i16, ptr, i32, i32, i32, i64, i32 }
%struct.stream_s = type { ptr, ptr, ptr, %union.stream_cursor_s, ptr, i32, i32, i16, i8, i8, %struct.gs_string_s, i64, %struct.stream_procs, ptr, i32, i32, ptr, i16, i16, ptr, ptr, i32, ptr, i32, ptr }
%union.stream_cursor_s = type { %struct.stream_cursor_read_s }
%struct.stream_cursor_read_s = type { ptr, ptr, ptr }
%struct.gs_string_s = type { ptr, i32 }
%struct.stream_procs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@zmisc1_op_defs.op_defs_ = internal constant [6 x %struct.op_def] [%struct.op_def { ptr @.str, ptr @ztype1encrypt }, %struct.op_def { ptr @.str.1, ptr @ztype1decrypt }, %struct.op_def { ptr @.str.2, ptr null }, %struct.op_def { ptr @.str.3, ptr @zexE }, %struct.op_def { ptr @.str.4, ptr @zexD }, %struct.op_def zeroinitializer], align 16
@.str = private unnamed_addr constant [15 x i8] c"3.type1encrypt\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"3.type1decrypt\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"filterdict\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"2eexecEncode\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"2eexecDecode\00", align 1
@o_stack = external local_unnamed_addr global %struct.ref_stack_s, align 8
@s_exE_template = external constant %struct.stream_template_s, align 8
@s_exD_template = external constant %struct.stream_template_s, align 8
@.str.5 = private unnamed_addr constant [5 x i8] c"seed\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"lenIV\00", align 1
@s_PFBD_template = external constant %struct.stream_template_s, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @zmisc1_op_defs() local_unnamed_addr #0 {
  ret ptr @zmisc1_op_defs.op_defs_
}

; Function Attrs: nounwind uwtable
define internal i32 @ztype1encrypt(ptr noundef %0) #1 {
  %2 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #5
  %3 = getelementptr inbounds i8, ptr %0, i64 -31
  %4 = load i8, ptr %3, align 1, !tbaa !5
  %5 = icmp eq i8 %4, 11
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -2
  %8 = tail call i32 @check_type_failed(ptr noundef nonnull %7) #5
  br label %52

9:                                                ; preds = %1
  %10 = getelementptr %struct.ref_s, ptr %0, i64 -2, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !5
  %12 = trunc i64 %11 to i16
  store i16 %12, ptr %2, align 2, !tbaa !8
  %13 = icmp ult i64 %11, 65536
  br i1 %13, label %14, label %52

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %16 = load i16, ptr %15, align 8, !tbaa !10
  %17 = and i16 %16, 16160
  %18 = icmp eq i16 %17, 4640
  br i1 %18, label %25, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds i8, ptr %0, i64 -15
  %21 = load i8, ptr %20, align 1, !tbaa !5
  %22 = icmp eq i8 %21, 18
  br i1 %22, label %52, label %23

23:                                               ; preds = %19
  %24 = tail call i32 @check_type_failed(ptr noundef nonnull %15) #5
  br label %52

25:                                               ; preds = %14
  %26 = load i16, ptr %0, align 8, !tbaa !10
  %27 = and i16 %26, 16144
  %28 = icmp eq i16 %27, 4624
  br i1 %28, label %35, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds i8, ptr %0, i64 1
  %31 = load i8, ptr %30, align 1, !tbaa !5
  %32 = icmp eq i8 %31, 18
  br i1 %32, label %52, label %33

33:                                               ; preds = %29
  %34 = tail call i32 @check_type_failed(ptr noundef nonnull %0) #5
  br label %52

35:                                               ; preds = %25
  %36 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 0, i32 1
  %37 = load i16, ptr %36, align 2, !tbaa !13
  %38 = getelementptr inbounds %struct.tas_s, ptr %0, i64 0, i32 1
  %39 = load i16, ptr %38, align 2, !tbaa !13
  %40 = icmp ult i16 %39, %37
  br i1 %40, label %52, label %41

41:                                               ; preds = %35
  %42 = zext i16 %37 to i32
  %43 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !5
  %45 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !5
  %47 = call i32 @gs_type1_encrypt(ptr noundef %44, ptr noundef %46, i32 noundef %42, ptr noundef nonnull %2) #5, !callees !14
  %48 = load i16, ptr %2, align 2, !tbaa !8
  %49 = zext i16 %48 to i64
  store i64 %49, ptr %10, align 8, !tbaa !5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !15
  store i16 %37, ptr %36, align 2, !tbaa !13
  %50 = load ptr, ptr @o_stack, align 8, !tbaa !22
  %51 = getelementptr inbounds %struct.ref_s, ptr %50, i64 -1
  store ptr %51, ptr @o_stack, align 8, !tbaa !22
  br label %52

52:                                               ; preds = %6, %9, %19, %23, %29, %33, %35, %41
  %53 = phi i32 [ 0, %41 ], [ %8, %6 ], [ -15, %9 ], [ %24, %23 ], [ -7, %19 ], [ %34, %33 ], [ -7, %29 ], [ -15, %35 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #5
  ret i32 %53
}

; Function Attrs: nounwind uwtable
define internal i32 @ztype1decrypt(ptr noundef %0) #1 {
  %2 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #5
  %3 = getelementptr inbounds i8, ptr %0, i64 -31
  %4 = load i8, ptr %3, align 1, !tbaa !5
  %5 = icmp eq i8 %4, 11
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -2
  %8 = tail call i32 @check_type_failed(ptr noundef nonnull %7) #5
  br label %52

9:                                                ; preds = %1
  %10 = getelementptr %struct.ref_s, ptr %0, i64 -2, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !5
  %12 = trunc i64 %11 to i16
  store i16 %12, ptr %2, align 2, !tbaa !8
  %13 = icmp ult i64 %11, 65536
  br i1 %13, label %14, label %52

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %16 = load i16, ptr %15, align 8, !tbaa !10
  %17 = and i16 %16, 16160
  %18 = icmp eq i16 %17, 4640
  br i1 %18, label %25, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds i8, ptr %0, i64 -15
  %21 = load i8, ptr %20, align 1, !tbaa !5
  %22 = icmp eq i8 %21, 18
  br i1 %22, label %52, label %23

23:                                               ; preds = %19
  %24 = tail call i32 @check_type_failed(ptr noundef nonnull %15) #5
  br label %52

25:                                               ; preds = %14
  %26 = load i16, ptr %0, align 8, !tbaa !10
  %27 = and i16 %26, 16144
  %28 = icmp eq i16 %27, 4624
  br i1 %28, label %35, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds i8, ptr %0, i64 1
  %31 = load i8, ptr %30, align 1, !tbaa !5
  %32 = icmp eq i8 %31, 18
  br i1 %32, label %52, label %33

33:                                               ; preds = %29
  %34 = tail call i32 @check_type_failed(ptr noundef nonnull %0) #5
  br label %52

35:                                               ; preds = %25
  %36 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 0, i32 1
  %37 = load i16, ptr %36, align 2, !tbaa !13
  %38 = getelementptr inbounds %struct.tas_s, ptr %0, i64 0, i32 1
  %39 = load i16, ptr %38, align 2, !tbaa !13
  %40 = icmp ult i16 %39, %37
  br i1 %40, label %52, label %41

41:                                               ; preds = %35
  %42 = zext i16 %37 to i32
  %43 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !5
  %45 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !5
  %47 = call i32 @gs_type1_decrypt(ptr noundef %44, ptr noundef %46, i32 noundef %42, ptr noundef nonnull %2) #5, !callees !14
  %48 = load i16, ptr %2, align 2, !tbaa !8
  %49 = zext i16 %48 to i64
  store i64 %49, ptr %10, align 8, !tbaa !5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !15
  store i16 %37, ptr %36, align 2, !tbaa !13
  %50 = load ptr, ptr @o_stack, align 8, !tbaa !22
  %51 = getelementptr inbounds %struct.ref_s, ptr %50, i64 -1
  store ptr %51, ptr @o_stack, align 8, !tbaa !22
  br label %52

52:                                               ; preds = %6, %9, %19, %23, %29, %33, %35, %41
  %53 = phi i32 [ 0, %41 ], [ %8, %6 ], [ -15, %9 ], [ %24, %23 ], [ -7, %19 ], [ %34, %33 ], [ -7, %29 ], [ -15, %35 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #5
  ret i32 %53
}

; Function Attrs: nounwind uwtable
define internal i32 @zexE(ptr noundef %0) #1 {
  %2 = alloca %struct.stream_exE_state_s, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #5
  %3 = getelementptr inbounds i8, ptr %0, i64 1
  %4 = load i8, ptr %3, align 1, !tbaa !5
  %5 = icmp eq i8 %4, 2
  %6 = sext i1 %5 to i64
  %7 = getelementptr inbounds %struct.ref_s, ptr %0, i64 %6
  %8 = getelementptr inbounds i8, ptr %7, i64 1
  %9 = load i8, ptr %8, align 1, !tbaa !5
  %10 = icmp eq i8 %9, 11
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = tail call i32 @check_type_failed(ptr noundef %7) #5
  br label %21

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.stream_exE_state_s, ptr %2, i64 0, i32 3
  %15 = select i1 %5, i32 2, i32 1
  %16 = getelementptr inbounds %struct.ref_s, ptr %0, i64 %6, i32 1
  %17 = load i64, ptr %16, align 8, !tbaa !5
  %18 = trunc i64 %17 to i16
  store i16 %18, ptr %14, align 8, !tbaa !8
  %19 = icmp ult i64 %17, 65536
  %20 = select i1 %19, i32 %15, i32 -15
  br label %21

21:                                               ; preds = %11, %13
  %22 = phi i32 [ %12, %11 ], [ %20, %13 ]
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %21
  %25 = call i32 @filter_write(ptr noundef %0, i32 noundef %22, ptr noundef nonnull @s_exE_template, ptr noundef nonnull %2, i32 noundef 0) #5
  br label %26

26:                                               ; preds = %21, %24
  %27 = phi i32 [ %25, %24 ], [ %22, %21 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #5
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define internal i32 @zexD(ptr noundef %0) #1 {
  %2 = alloca %struct.stream_exD_state_s, align 8
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #5
  %4 = load ptr, ptr getelementptr inbounds (%struct.stream_template_s, ptr @s_exD_template, i64 0, i32 6), align 8, !tbaa !25
  call void %4(ptr noundef nonnull %2) #5
  %5 = getelementptr inbounds i8, ptr %0, i64 1
  %6 = load i8, ptr %5, align 1, !tbaa !5
  switch i8 %6, label %28 [
    i8 2, label %7
    i8 11, label %30
  ]

7:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #5
  %8 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !5
  %10 = load i16, ptr %9, align 8, !tbaa !27
  %11 = and i16 %10, 32
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %24, label %13

13:                                               ; preds = %7
  %14 = call i32 @dict_uint_param(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef 0, i32 noundef 65535, i32 noundef 65536, ptr noundef nonnull %3) #5
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.stream_exD_state_s, ptr %2, i64 0, i32 6
  %18 = call i32 @dict_int_param(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef 0, i32 noundef 2147483647, i32 noundef 4, ptr noundef nonnull %17) #5
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load i32, ptr %3, align 4, !tbaa !29
  %22 = trunc i32 %21 to i16
  %23 = getelementptr inbounds %struct.stream_exD_state_s, ptr %2, i64 0, i32 3
  store i16 %22, ptr %23, align 8, !tbaa !30
  br label %24

24:                                               ; preds = %13, %16, %7, %20
  %25 = phi i32 [ 1, %20 ], [ undef, %7 ], [ %14, %13 ], [ %18, %16 ]
  %26 = phi i1 [ true, %20 ], [ false, %7 ], [ false, %13 ], [ false, %16 ]
  %27 = phi i32 [ undef, %20 ], [ -7, %7 ], [ %14, %13 ], [ %18, %16 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #5
  br i1 %26, label %37, label %58

28:                                               ; preds = %1
  %29 = call i32 @check_type_failed(ptr noundef %0) #5
  br label %37

30:                                               ; preds = %1
  %31 = getelementptr inbounds %struct.stream_exD_state_s, ptr %2, i64 0, i32 3
  %32 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %33 = load i64, ptr %32, align 8, !tbaa !5
  %34 = trunc i64 %33 to i16
  store i16 %34, ptr %31, align 8, !tbaa !8
  %35 = icmp ult i64 %33, 65536
  %36 = select i1 %35, i32 1, i32 -15
  br label %37

37:                                               ; preds = %30, %28, %24
  %38 = phi i32 [ %25, %24 ], [ %29, %28 ], [ %36, %30 ]
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %58, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.stream_exD_state_s, ptr %2, i64 0, i32 4
  store ptr null, ptr %41, align 8, !tbaa !32
  %42 = getelementptr inbounds i8, ptr %0, i64 -15
  %43 = load i8, ptr %42, align 1, !tbaa !5
  %44 = icmp eq i8 %43, 3
  br i1 %44, label %45, label %55

45:                                               ; preds = %40
  %46 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !5
  %48 = getelementptr inbounds %struct.stream_s, ptr %47, i64 0, i32 16
  %49 = load ptr, ptr %48, align 8, !tbaa !33
  %50 = icmp eq ptr %49, null
  br i1 %50, label %55, label %51

51:                                               ; preds = %45
  %52 = load ptr, ptr %49, align 8, !tbaa !37
  %53 = icmp eq ptr %52, @s_PFBD_template
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  store ptr %49, ptr %41, align 8, !tbaa !32
  br label %55

55:                                               ; preds = %45, %51, %54, %40
  %56 = getelementptr inbounds %struct.stream_exD_state_s, ptr %2, i64 0, i32 5
  store i32 -1, ptr %56, align 8, !tbaa !39
  %57 = call i32 @filter_read(ptr noundef %0, i32 noundef %38, ptr noundef nonnull @s_exD_template, ptr noundef nonnull %2, i32 noundef 0) #5
  br label %58

58:                                               ; preds = %37, %24, %55
  %59 = phi i32 [ %57, %55 ], [ %27, %24 ], [ %38, %37 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #5
  ret i32 %59
}

declare i32 @gs_type1_encrypt(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare i32 @check_type_failed(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

declare i32 @gs_type1_decrypt(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @filter_write(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @dict_uint_param(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @dict_int_param(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @filter_read(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
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
!8 = !{!9, !9, i64 0}
!9 = !{!"short", !6, i64 0}
!10 = !{!11, !9, i64 0}
!11 = !{!"ref_s", !12, i64 0, !6, i64 8}
!12 = !{!"tas_s", !9, i64 0, !9, i64 2}
!13 = !{!11, !9, i64 2}
!14 = !{ptr @gs_type1_decrypt, ptr @gs_type1_encrypt}
!15 = !{i64 0, i64 2, !8, i64 2, i64 2, !8, i64 8, i64 8, !16, i64 8, i64 2, !8, i64 8, i64 4, !18, i64 8, i64 8, !16, i64 8, i64 8, !20, i64 8, i64 8, !20, i64 8, i64 8, !20, i64 8, i64 8, !20, i64 8, i64 8, !20, i64 8, i64 8, !20, i64 8, i64 8, !20, i64 8, i64 8, !20, i64 8, i64 8, !20, i64 8, i64 8, !20, i64 8, i64 8, !20, i64 8, i64 8, !20, i64 8, i64 8, !20}
!16 = !{!17, !17, i64 0}
!17 = !{!"long", !6, i64 0}
!18 = !{!19, !19, i64 0}
!19 = !{!"float", !6, i64 0}
!20 = !{!21, !21, i64 0}
!21 = !{!"any pointer", !6, i64 0}
!22 = !{!23, !21, i64 0}
!23 = !{!"ref_stack_s", !21, i64 0, !21, i64 8, !21, i64 16, !11, i64 24, !24, i64 40, !24, i64 44, !11, i64 48, !24, i64 64, !24, i64 68, !24, i64 72, !24, i64 76, !24, i64 80, !11, i64 88, !24, i64 104, !24, i64 108, !24, i64 112, !21, i64 120}
!24 = !{!"int", !6, i64 0}
!25 = !{!26, !21, i64 40}
!26 = !{!"stream_template_s", !21, i64 0, !21, i64 8, !21, i64 16, !24, i64 24, !24, i64 28, !21, i64 32, !21, i64 40, !21, i64 48}
!27 = !{!28, !9, i64 0}
!28 = !{!"dict_s", !11, i64 0, !11, i64 16, !11, i64 32, !11, i64 48}
!29 = !{!24, !24, i64 0}
!30 = !{!31, !9, i64 24}
!31 = !{!"stream_exD_state_s", !21, i64 0, !21, i64 8, !21, i64 16, !9, i64 24, !21, i64 32, !24, i64 40, !24, i64 44, !24, i64 48, !17, i64 56, !24, i64 64}
!32 = !{!31, !21, i64 32}
!33 = !{!34, !21, i64 168}
!34 = !{!"stream_s", !21, i64 0, !21, i64 8, !21, i64 16, !6, i64 24, !21, i64 48, !24, i64 56, !24, i64 60, !9, i64 64, !6, i64 66, !6, i64 67, !35, i64 72, !17, i64 88, !36, i64 96, !21, i64 152, !24, i64 160, !24, i64 164, !21, i64 168, !9, i64 176, !9, i64 178, !21, i64 184, !21, i64 192, !24, i64 200, !21, i64 208, !24, i64 216, !21, i64 224}
!35 = !{!"gs_string_s", !21, i64 0, !24, i64 8}
!36 = !{!"", !21, i64 0, !21, i64 8, !21, i64 16, !21, i64 24, !21, i64 32, !21, i64 40, !21, i64 48}
!37 = !{!38, !21, i64 0}
!38 = !{!"stream_state_s", !21, i64 0, !21, i64 8, !21, i64 16}
!39 = !{!31, !24, i64 40}
