; ModuleID = 'zfilter2.c'
source_filename = "zfilter2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ref_stack_s = type { ptr, ptr, ptr, %struct.ref_s, i32, i32, %struct.ref_s, i32, i32, i32, i32, i32, %struct.ref_s, i32, i32, i32, ptr }
%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16 }
%union.v = type { i64 }
%struct.stream_template_s = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr }
%struct.op_def = type { ptr, ptr }
%struct.stream_PDiff_state_s = type { ptr, ptr, ptr, i32, i32, i32, i32, i8, i32, i32, i8, i8, i8, i8 }
%struct.stream_PNGP_state_s = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i8, i32, ptr, i32, i64, [32 x i8] }
%struct.stream_CFE_state_s = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.stream_LZW_state_s = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %union._lzt, i32, i32, i32, i32, i32, i32, i32, i32 }
%union._lzt = type { ptr }

@.str = private unnamed_addr constant [10 x i8] c"Predictor\00", align 1
@o_stack = external local_unnamed_addr global %struct.ref_stack_s, align 8
@s_PDiffE_template = external constant %struct.stream_template_s, align 8
@s_PNGPE_template = external constant %struct.stream_template_s, align 8
@zfilter2_op_defs.op_defs_ = internal constant [4 x %struct.op_def] [%struct.op_def { ptr @.str.1, ptr null }, %struct.op_def { ptr @.str.2, ptr @zCFE }, %struct.op_def { ptr @.str.3, ptr @zLZWE }, %struct.op_def zeroinitializer], align 16
@.str.1 = private unnamed_addr constant [11 x i8] c"filterdict\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"2CCITTFaxEncode\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"1LZWEncode\00", align 1
@s_CFE_template = external constant %struct.stream_template_s, align 8
@s_LZWE_template = external constant %struct.stream_template_s, align 8

; Function Attrs: nounwind uwtable
define dso_local i32 @filter_write_predictor(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.stream_PDiff_state_s, align 8
  %7 = alloca %struct.stream_PNGP_state_s, align 8
  %8 = alloca %struct.ref_s, align 8
  %9 = alloca %struct.ref_s, align 8
  %10 = alloca %struct.ref_s, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #5
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #5
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %7) #5
  %11 = getelementptr inbounds i8, ptr %0, i64 1
  %12 = load i8, ptr %11, align 1, !tbaa !5
  %13 = icmp eq i8 %12, 2
  br i1 %13, label %14, label %27

14:                                               ; preds = %4
  %15 = call i32 @dict_int_param(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef 0, i32 noundef 15, i32 noundef 1, ptr noundef nonnull %5) #5
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %53, label %17

17:                                               ; preds = %14
  %18 = load i32, ptr %5, align 4, !tbaa !8
  switch i32 %18, label %53 [
    i32 0, label %19
    i32 1, label %24
    i32 2, label %20
    i32 10, label %22
    i32 11, label %22
    i32 12, label %22
    i32 13, label %22
    i32 14, label %22
    i32 15, label %22
  ]

19:                                               ; preds = %17
  store i32 1, ptr %5, align 4, !tbaa !8
  br label %24

20:                                               ; preds = %17
  %21 = call i32 @zpd_setup(ptr noundef %0, ptr noundef nonnull %6) #5
  br label %24

22:                                               ; preds = %17, %17, %17, %17, %17, %17
  %23 = call i32 @zpp_setup(ptr noundef %0, ptr noundef nonnull %7) #5
  br label %24

24:                                               ; preds = %22, %20, %19, %17
  %25 = phi i32 [ %23, %22 ], [ %21, %20 ], [ %15, %17 ], [ %15, %19 ]
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %53, label %28

27:                                               ; preds = %4
  store i32 1, ptr %5, align 4, !tbaa !8
  br label %28

28:                                               ; preds = %24, %27
  %29 = load i32, ptr %5, align 4, !tbaa !8
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = call i32 @filter_write(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 0) #5
  br label %53

33:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #5
  %34 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %34, i64 16, i1 false), !tbaa.struct !10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !10
  %35 = call i32 @filter_write(ptr noundef %0, i32 noundef 1, ptr noundef %2, ptr noundef %3, i32 noundef 0) #5
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %51, label %37

37:                                               ; preds = %33
  %38 = load ptr, ptr @o_stack, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %38, i64 16, i1 false), !tbaa.struct !10
  %39 = load i32, ptr %5, align 4, !tbaa !8
  %40 = icmp eq i32 %39, 2
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = call i32 @filter_read(ptr noundef %38, i32 noundef 0, ptr noundef nonnull @s_PDiffE_template, ptr noundef nonnull %6, i32 noundef 0) #5
  br label %45

43:                                               ; preds = %37
  %44 = call i32 @filter_read(ptr noundef %38, i32 noundef 0, ptr noundef nonnull @s_PNGPE_template, ptr noundef nonnull %7, i32 noundef 0) #5
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i32 [ %42, %41 ], [ %44, %43 ]
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.ref_s, ptr %38, i64 1
  store ptr %49, ptr @o_stack, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %38, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %49, ptr noundef nonnull align 8 dereferenceable(16) %9, i64 16, i1 false), !tbaa.struct !10
  br label %51

50:                                               ; preds = %45
  call void @filter_mark_temp(ptr noundef nonnull %10, i32 noundef 2) #5
  br label %51

51:                                               ; preds = %33, %50, %48
  %52 = phi i32 [ %46, %48 ], [ %46, %50 ], [ %35, %33 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8)
  br label %53

53:                                               ; preds = %24, %17, %14, %51, %31
  %54 = phi i32 [ %32, %31 ], [ %52, %51 ], [ %15, %14 ], [ -15, %17 ], [ %25, %24 ]
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %7) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #5
  ret i32 %54
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @dict_int_param(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @zpd_setup(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @zpp_setup(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @filter_write(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

declare i32 @filter_read(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @filter_mark_temp(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @zfilter2_op_defs() local_unnamed_addr #4 {
  ret ptr @zfilter2_op_defs.op_defs_
}

; Function Attrs: nounwind uwtable
define internal i32 @zCFE(ptr noundef %0) #0 {
  %2 = alloca %struct.stream_CFE_state_s, align 8
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %2) #5
  %3 = getelementptr inbounds i8, ptr %0, i64 1
  %4 = load i8, ptr %3, align 1, !tbaa !5
  %5 = icmp eq i8 %4, 2
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = tail call i32 @check_type_failed(ptr noundef %0) #5
  br label %19

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !5
  %11 = load i16, ptr %10, align 8, !tbaa !23
  %12 = and i16 %11, 32
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %8
  %15 = call i32 @zcf_setup(ptr noundef %0, ptr noundef nonnull %2) #5
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %14
  %18 = call i32 @filter_write(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @s_CFE_template, ptr noundef nonnull %2, i32 noundef 0) #5
  br label %19

19:                                               ; preds = %14, %8, %17, %6
  %20 = phi i32 [ %18, %17 ], [ %7, %6 ], [ -7, %8 ], [ %15, %14 ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %2) #5
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define internal i32 @zLZWE(ptr noundef %0) #0 {
  %2 = alloca %struct.stream_LZW_state_s, align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %2) #5
  %3 = call i32 @zlz_setup(ptr noundef %0, ptr noundef nonnull %2) #5
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = call i32 @filter_write_predictor(ptr noundef %0, i32 noundef %3, ptr noundef nonnull @s_LZWE_template, ptr noundef nonnull %2)
  br label %7

7:                                                ; preds = %1, %5
  %8 = phi i32 [ %6, %5 ], [ %3, %1 ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %2) #5
  ret i32 %8
}

declare i32 @check_type_failed(ptr noundef) local_unnamed_addr #2

declare i32 @zcf_setup(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @zlz_setup(ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!9 = !{!"int", !6, i64 0}
!10 = !{i64 0, i64 2, !11, i64 2, i64 2, !11, i64 8, i64 8, !13, i64 8, i64 2, !11, i64 8, i64 4, !15, i64 8, i64 8, !13, i64 8, i64 8, !17, i64 8, i64 8, !17, i64 8, i64 8, !17, i64 8, i64 8, !17, i64 8, i64 8, !17, i64 8, i64 8, !17, i64 8, i64 8, !17, i64 8, i64 8, !17, i64 8, i64 8, !17, i64 8, i64 8, !17, i64 8, i64 8, !17, i64 8, i64 8, !17, i64 8, i64 8, !17}
!11 = !{!12, !12, i64 0}
!12 = !{!"short", !6, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"long", !6, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"float", !6, i64 0}
!17 = !{!18, !18, i64 0}
!18 = !{!"any pointer", !6, i64 0}
!19 = !{!20, !18, i64 0}
!20 = !{!"ref_stack_s", !18, i64 0, !18, i64 8, !18, i64 16, !21, i64 24, !9, i64 40, !9, i64 44, !21, i64 48, !9, i64 64, !9, i64 68, !9, i64 72, !9, i64 76, !9, i64 80, !21, i64 88, !9, i64 104, !9, i64 108, !9, i64 112, !18, i64 120}
!21 = !{!"ref_s", !22, i64 0, !6, i64 8}
!22 = !{!"tas_s", !12, i64 0, !12, i64 2}
!23 = !{!24, !12, i64 0}
!24 = !{!"dict_s", !21, i64 0, !21, i64 16, !21, i64 32, !21, i64 48}
